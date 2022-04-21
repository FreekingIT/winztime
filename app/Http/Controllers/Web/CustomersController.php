<?php
namespace App\Http\Controllers\Web;

use App\Http\Controllers\Web\AlertController;
use App\Models\Web\Cart;
use App\Models\Web\Currency;
use App\Models\Web\Customer;
use App\Models\Web\Card;
use App\Models\Web\Index;
use App\Models\Web\Languages;
use App\Models\Web\Products;
use App\Models\Web\Shipping;
use App\User;
use Auth;
use DB;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Redirect;
use Lang;

use Session;
use Socialite;
use Validator;
use App\Models\Web\Address;
use Hash;
use Carbon\Carbon;

class CustomersController extends Controller
{

    public function __construct(
        Index $index,
        Languages $languages,
        Products $products,
        Currency $currency,
        Customer $customer,
     
        Cart $cart
    ) {
        $this->index = $index;
        $this->languages = $languages;
        $this->products = $products;
        $this->currencies = $currency;
        $this->customer = $customer;
        $this->cart = $cart;
        $this->theme = new ThemeController();
    }

    public function signup(Request $request)
    {
        $final_theme = $this->theme->theme();
        if (auth()->guard('customer')->check()) {
            return redirect('/');
        } else {
            $title = array('pageTitle' => Lang::get("website.Sign Up"));
            $result = array();
            $result['commonContent'] = $this->index->commonContent();
            return view("login", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        }
    }
     public function ForgotPasswordDefaut(Request $request)
    {
       $final_theme = $this->theme->theme();
    $result = array();
       $title = array('pageTitle' => Lang::get("website.Sign Up"));
            $result['commonContent'] = $this->index->commonContent();
    return view('auth.passwords.email', ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
}

public function showResetForm(Request $request, $token = null)
    {
        $final_theme = $this->theme->theme();
    $result = array();
       $title = array('pageTitle' => Lang::get("website.Sign Up"));
            $result['commonContent'] = $this->index->commonContent();
        return view('auth.passwords.reset', ['title' => $title, 'final_theme' => $final_theme])->with(
            ['token' => $token, 'email' => $request->email,'result'=> $result]);
      
    }


 public function OTP(Request $request)
    {
        $redirect=0;
        $final_theme = $this->theme->theme();
        if (auth()->guard('customer')->check()) {
            $customer = auth()->guard('customer')->user(); 
            if($customer->is_otp_verify==1){
                $redirect=1;  
            }
        
        } 
        $otp_email= Session::get('otp_email');
        if(!isset($otp_email)){
             return redirect('/login');
        }
       
        if($redirect==1){
            return redirect('/');
        }else{


            $title = array('pageTitle' => Lang::get("website.OTP"));
            $result = array();
            $result['commonContent'] = $this->index->commonContent();
            return view("auth.logins.otp", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        }
        
    }
    public function login(Request $request)
    {
        $result = array();
        if (auth()->guard('customer')->check()) {
            $customerInfo = array("email" => $request->email, "password" => $request->password);
            auth()->attempt($customerInfo);
            return redirect('/');
        } else {
            $result['cart'] = $this->cart->myCart($result);

            if (count($result['cart']) != 0) {
                $result['checkout_button'] = 1;
            } else {
                $result['checkout_button'] = 0;

            }
            $previous_url = Session::get('_previous.url');

            $ref = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';
            $ref = rtrim($ref, '/');

            session(['previous' => $previous_url]);

            $title = array('pageTitle' => Lang::get("website.Login"));
            $final_theme = $this->theme->theme();

            $result['commonContent'] = $this->index->commonContent();
            return view("auth.login", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        }

    }

    public function processLogin(Request $request)
    {
    

        $old_session = Session::getId();

        $result = array();

        //check authentication of email and password
        $customerInfo = array("email" => $request->email, "password" => $request->password);
        if (auth()->guard('customer')->attempt($customerInfo)) {
            $customer = auth()->guard('customer')->user();
            if ($customer->role_id != 2) {
                $record = DB::table('settings')->where('id', 94)->first();
                if ($record->value == 'Maintenance' && $customer->role_id == 1) {
                  auth()->attempt($customerInfo);
                } else {
                    Auth::guard('customer')->logout();
                    return redirect('login')->with('loginError', Lang::get("website.You Are Not Allowed With These Credentials!"));
                }
            }
            $result = $this->customer->processLogin($request, $old_session);
            Session::put('otp_email', $request->email);    


            if (!empty(session('previous'))) {
               if (strpos(session('previous'), 'reset') !== false) {
                 return Redirect::to('/');
               }else{
                  return Redirect::to(session('previous'));
               }

              
            } else {
                
                Session::forget('guest_checkout');
                return redirect()->intended('/')->with('result', $result);
            }
        } else {
            return redirect('login')->with('loginError', Lang::get("website.Email or password is incorrect"));
        }
        //}
    }

    public function addToCompare(Request $request)
    {
        $cartResponse = $this->customer->addToCompare($request);
        return $cartResponse;
    }

    public function DeleteCompare($id)
    {
        $Response = $this->customer->DeleteCompare($id);
        return redirect()->back()->with($Response);
    }

    public function Compare()
    {
        $result = array();
        $final_theme = $this->theme->theme();
        $result['commonContent'] = $this->index->commonContent();
        $compare = $this->customer->Compare();
        $results = array();
        foreach ($compare as $com) {
            $data = array('products_id' => $com->product_ids, 'page_number' => '0', 'type' => 'compare', 'limit' => '15', 'min_price' => '', 'max_price' => '');
            $newest_products = $this->products->products($data);
            array_push($results, $newest_products);
        }
        $result['products'] = $results;
        return view('web.compare', ['result' => $result, 'final_theme' => $final_theme]);
    }

    public function profile()
    {
        $title = array('pageTitle' => Lang::get("website.Profile"));
        $result['commonContent'] = $this->index->commonContent();
        $final_theme = $this->theme->theme();
        $result['countries'] = array('Afghanistan','Albania','Algeria','American Samoa','Andorra','Angola','Anguilla','Antigua & Barbuda','Argentina','Armenia','Aruba','Australia','Austria','Azerbaijan','Bahamas',
'Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bermuda','Bhutan','Bolivia','Bonaire','Bosnia & Herzegovina','Botswana','Brazil','British Indian Ocean Ter','Brunei','Bulgaria','Burkina Faso','Burundi','Cambodia','Cameroon','Canada','Canary Islands','Cape Verde','Cayman Islands','Central African Republic','Chad','Channel Islands','Chile','China','Christmas Island','Cocos Island','Colombia','Comoros','Congo','Cook Islands','Costa Rica','Cote DIvoire','Croatia','Cuba','Curacao','Cyprus','Czech Republic','Denmark','Djibouti','Dominica','Dominican Republic','East Timor','Ecuador','Egypt','El Salvador','Equatorial Guinea','Eritrea','Estonia','Ethiopia','Falkland Islands','Faroe Islands','Fiji','Finland','France','French Guiana','French Polynesia','French Southern Ter','Gabon','Gambia','Georgia','Germany','Ghana','Gibraltar','Great Britain','Greece','Greenland','Grenada','Guadeloupe','Guam','Guatemala','Guinea','Guyana','Haiti','Hawaii','Honduras','Hong Kong','Hungary','Iceland','Indonesia','India','Iran','Iraq','Ireland','Isle of Man','Israel','Italy','Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','Korea North','Korea South','Kuwait','Kyrgyzstan','Laos','Latvia','Lebanon','Lesotho','Liberia','Libya','Liechtenstein','Lithuania','Luxembourg','Macau','Macedonia','Madagascar','Malaysia','Malawi','Maldives','Mali','Malta','Marshall Islands','Martinique','Mauritania','Mauritius','Mayotte','Mexico','Midway Islands','Moldova','Monaco','Mongolia','Montserrat','Morocco','Mozambique','Myanmar','Nambia','Nauru','Nepal','Netherland Antilles','Netherlands (Holland, Europe)','Nevis','New Caledonia','New Zealand','Nicaragua','Niger','Nigeria','Niue','Norfolk Island','Norway','Oman','Pakistan','Palau Island','Palestine','Panama','Papua New Guinea','Paraguay','Peru','Philippines','Pitcairn Island','Poland','Portugal','Puerto Rico','Qatar','Republic of Montenegro','Republic of Serbia','Reunion','Romania','Russia','Rwanda','St Barthelemy','St Eustatius','St Helena','St Kitts-Nevis','St Lucia','St Maarten','St Pierre & Miquelon','St Vincent & Grenadines','Saipan','Samoa','Samoa American','San Marino','Sao Tome & Principe','Saudi Arabia','Senegal','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia','South Africa','Spain','Sri Lanka','Sudan','Suriname','Swaziland','Sweden','Switzerland','Syria','Tahiti','Taiwan','Tajikistan','Tanzania','Thailand','Togo','Tokelau','Tonga','Trinidad & Tobago','Tunisia','Turkey','Turkmenistan','Turks & Caicos Is','Tuvalu','Uganda','United Kingdom','Ukraine','United Arab Emirates','United States of America','Uruguay','Uzbekistan','Vanuatu','Vatican City State','Venezuela','Vietnam','Virgin Islands (Brit)','Virgin Islands (USA)','Wake Island','Wallis & Futana Is','Yemen','Zaire','Zambia','Zimbabwe',);
        return view('web.profile', ['result' => $result, 'title' => $title, 'final_theme' => $final_theme]);
    }
    public function deleteAddress($id){
        $data =Address::find($id);
        if ($data->default_address == 1) {
             $udata = Address::where('user_id',$data->user_id)->first();
             Address::where('user_id',$udata->user_id)->update(['default_address'=>1]);
        }
        $address_Data = Address::where('id',$id)->delete();
        return redirect()->back();
    }
    public function editAddress($id)
    {
        $title = array('pageTitle' => Lang::get("website.Profile"));
        $result['commonContent'] = $this->index->commonContent();
        $address_Data = Address::where('id',$id)->get();
        $final_theme = $this->theme->theme();
        return view("web.edit-address", ['result' => $result, 'title' => $title, 'final_theme' => $final_theme])->with('address_Data', $address_Data);

    }
    public function updateAddress(Request $request)
    {
    	die("sak");
        $data = $request->all();
        $user_id = auth()->guard('customer')->user()->id; 
        unset($data['_token']);
       
        if (isset($data["default_address"])) {
            if ($data["default_address"] == 1) {
                Address::where("user_id",$user_id)->update(['default_address'=>0]);
            }
        }
        $address_id = $data['address_id'];
         unset($data['address_id']);
         unset($data['country_name']);
         if ($data['addresstype'] == 'Home') {
            $data["addresstype_home"] = 1;
         } else {
            $data["addresstype_office"] = 1;
         }
         unset($data['addresstype']);
         
            $updatedAddress = Address::where('id',$address_id   )->update($data);
            $message = "Address has been updated successfully!";
            return redirect()->to('/addAddress')->with('success', $message);
    }
    public function addCardOption(Request $request)
    {
        $validator = Validator::make(
            array(
                'cardnumber' => $request->cardnumber,
                'cardholder' => $request->cardholder,
                'expirydate' => $request->expirydate,
                // 'securitycode' => $request->securitycode,

            ),
             array(
                'cardnumber' => 'required ',
                'cardholder' => 'required',
                'expirydate' => 'required ',
                // 'securitycode' => 'required',
            )
        );
         if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
        $data = $request->all(); 
        $data['user_id'] = auth()->guard('customer')->user()->id;   
        unset($data['_token']);
        $inserted = Card::create($data);
        $message = "Card has been added successfully! ";
        return redirect()->back()->with('success_card', $message);
        }
    }
    public function updateMyProfile(Request $request)
    {

        $message = $this->customer->updateMyProfile($request);
        return redirect()->back()->with('success', $message);

    }

    public function changePassword()
    {
        $title = array('pageTitle' => Lang::get("website.Change Password"));
        $result['commonContent'] = $this->index->commonContent();
        $final_theme = $this->theme->theme();
        return view('web.changepassword', ['result' => $result, 'title' => $title, 'final_theme' => $final_theme]);
    }

    public function updateMyPassword(Request $request)
    {
        $password = Auth::guard('customer')->user()->password;
        if (Hash::check($request->current_password, $password)) {
            $message = $this->customer->updateMyPassword($request);
            return redirect()->back()->with('success', $message);
        }else{
            return redirect()->back()->with('error', lang::get("website.Current password is invalid"));
        }
    }

    public function logout(REQUEST $request)
    {
        Auth::guard('customer')->logout();
        session()->flush();
        $request->session()->forget('customers_id');
        $request->session()->regenerate();
        return redirect()->intended('/');
    }

    public function socialLogin($social)
    {
        return Socialite::driver($social)->stateless()->redirect();
    }

    public function handleSocialLoginCallback(Request $request,$social)
    {
         if (!$request->has('code') || $request->has('denied')) {
            return redirect('login')->with('loginError', Lang::get("website.DeniedAceess"));
        }
        $result = $this->customer->handleSocialLoginCallback($social);
        if (!empty($result)) {
            return redirect()->intended('/')->with('result', $result);
        }
    }

    public function createRandomPassword()
    {
        $pass = substr(md5(uniqid(mt_rand(), true)), 0, 8);
        return $pass;
    }

    public function likeMyProduct(Request $request)
    {
        $cartResponse = $this->customer->likeMyProduct($request);
        return $cartResponse;
    }

    public function deleteCard(Request $request, $id)
    {
       if (!empty(auth()->guard('customer')->user()->id)) {
            Card::where('id',$id)->delete();
            $message = "Card is deleted!";
            return redirect()->back()->with('success', $message);
        } else {
            return redirect('login')->with('loginError', 'Please login to delete card!');
        } 
    }
    public function unlikeMyProduct(Request $request, $id)
    {

        if (!empty(auth()->guard('customer')->user()->id)) {
            print_r($this->customer->unlikeMyProduct($id));
            $message = Lang::get("website.Product is unliked");
            
            return redirect('wishlist')->with('success', $message);
        } else {
            return redirect('login')->with('loginError', 'Please login to like product!');
        }

    }

    
    public function paymentOptions(Request $request)
    {   $title = array('pageTitle' => Lang::get("website.Wishlist"));
        $final_theme = $this->theme->theme();
        $result['commonContent'] = $this->index->commonContent();
        $result['card'] = Card::where('user_id',auth()->guard('customer')->user()->id)->orderBy('created_at','desc')->get();
        return view("web.payment-options", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }
    public function activecoupon(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Wishlist"));       
        $final_theme = $this->theme->theme();
        $result['tickets'] = $this->customer->activeCoupons(auth()->guard('customer')->user()->id);
        $result['commonContent'] = $this->index->commonContent();
        return view("web.activecoupon", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }

    public function wishlist(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Wishlist"));
        $final_theme = $this->theme->theme();
        $result = $this->customer->wishlist($request);
        return view("web.wishlist", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }
    public function lpoint(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Wishlist"));
        $final_theme = $this->theme->theme();
        $result = $this->customer->wishlist($request);

        $lpointsorder=DB::Table('lpoints')
        ->where('customers_id',auth()->guard('customer')->user()->id)
        ->where('type',1)
        ->sum('lpoints_points');
        // print_r($lpointsorder);exit;
        
        $result['lpointsorder_count']=$lpointsorder;

        $lpointsreffrel=DB::Table('lpoints')
        ->where('customers_id',auth()->guard('customer')->user()->id)
        ->where('type',2)
        ->sum('lpoints_points');

        $result['spentlpoints']=DB::Table('orders')
        ->where('customers_id',auth()->guard('customer')->user()->id)
        ->sum('spent_lpoints');

        $result['lpointsreffrel_count']=$lpointsreffrel;
        $result['commonContent'] = $this->index->commonContent();
        return view("web.lpoints.my-lpoints", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }
    public function getAddressBook(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Wishlist"));
        $final_theme = $this->theme->theme();
        $result = $this->customer->wishlist($request);
        $obj= new Shipping;
        $result['countries'] = $obj->countries();
        $result['address'] = Address::where('user_id',auth()->guard('customer')->user()->id)->orderBy('default_address')->get();
        return view("web.address-book", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }
    public function level(Request $request)
    {   
        $title = array('pageTitle' => Lang::get("website.Wishlist"));
        $final_theme = $this->theme->theme();
        $result['commonContent'] = $this->index->commonContent();
        if (auth()->guard('customer')->user()->redeem_points < 2000) {
            $result['current'] = DB::Table('levels')->where('id',1)->get();
            $result['rest'] = DB::Table('levels')->where('id','>',1)->get();
        }elseif (auth()->guard('customer')->user()->redeem_points > 2000 && auth()->guard('customer')->user()->redeem_points < 4000) {
            $result['current'] = DB::Table('levels')->where('id',2)->get();
            $result['rest'] = DB::Table('levels')->where('id','>',2)->get();

        }else{ 
            $result['current'] = DB::Table('levels')->where('id',3)->get();
            $result['rest'] = DB::Table('levels')->where('id','>',3)->get();
        }
        
        return view("web.level.level", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }

    public function loadMoreWishlist(Request $request)
    {

        $limit = $request->limit;

        $data = array('page_number' => $request->page_number, 'type' => 'wishlist', 'limit' => $limit, 'categories_id' => '', 'search' => '', 'min_price' => '', 'max_price' => '');
        $products = $this->products->products($data);
        $result['products'] = $products;

        $cart = '';
        $myVar = new CartController();
        $result['cartArray'] = $this->products->cartIdArray($cart);
        $result['limit'] = $limit;
        return view("web.wishlistproducts")->with('result', $result);

    }

    public function forgotPassword()
    {
        if (auth()->guard('customer')->check()) {
            return redirect('/');
        } else {

            $title = array('pageTitle' => Lang::get("website.Forgot Password"));
            $final_theme = $this->theme->theme();
            $result = array();
            $result['commonContent'] = $this->index->commonContent();
            return view("web.forgotpassword", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        }
    }

    public function processPassword(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Forgot Password"));

        $password = $this->createRandomPassword();

        $email = $request->email;
        $postData = array();

        //check email exist
        $existUser = $this->customer->ExistUser($email);
        if (count($existUser) > 0) {
            $this->customer->UpdateExistUser($email, $password);
            $existUser[0]->password = $password;

            $myVar = new AlertController();
            $alertSetting = $myVar->forgotPasswordAlert($existUser);

            return redirect('login')->with('success', Lang::get("website.Password has been sent to your email address"));
        } else {
            return redirect('forgotPassword')->with('error', Lang::get("website.Email address does not exist"));
        }

    }

    public function recoverPassword()
    {
        $title = array('pageTitle' => Lang::get("website.Forgot Password"));
        $final_theme = $this->theme->theme();
        return view("web.recoverPassword", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }

    public function subscribeNotification(Request $request)
    {

        $setting = $this->index->commonContent();

        /* Desktop */
        $type = 3;

        session(['device_id' => $request->device_id]);

        if (auth()->guard('customer')->check()) {

            $device_data = array(
                'device_id' => $request->device_id,
                'device_type' => $type,
                'created_at' => time(),
                'updated_at' => time(),
                'ram' => '',
                'status' => '1',
                'processor' => '',
                'device_os' => '',
                'location' => '',
                'device_model' => '',
                'user_id' => auth()->guard('customers')->user()->id,
                'manufacturer' => '',
            );

        } else {

            $device_data = array(
                'device_id' => $request->device_id,
                'device_type' => $type,
                'created_at' => time(),
                'updated_at' => time(),
                'ram' => '',
                'status' => '1',
                'processor' => '',
                'device_os' => '',
                'location' => '',
                'device_model' => '',
                'manufacturer' => '',
            );

        }
        $this->customer->updateDevice($request, $device_data);
        print 'success';
    }

    public function signupProcess(Request $request)
    {

    

        $firstName = $request->firstName;
        $lastName = $request->lastName;
        $phone = $request->phone;
        $email = $request->email;
        $gender = $request->gender;
        $password = $request->password;
        $date = date('y-md h:i:s');
        //        //validation start
        $validator = Validator::make(
            array(
                'firstName' => $request->firstNamenew,
                'lastName' => $request->lastName,
                'email' => $request->email,
                'gender' => $request->gender,
                'phone' => $request->phone,
                'password' => $request->password,
                'day' => $request->day,
                'month' => $request->month,
                'year' => $request->year,
                'password' => $request->password,
                're_password' => $request->re_password,

            ), array(
                'firstName' => 'required',
                'lastName' => 'required',
                'day' => 'required',
                'month' => 'required',
                'year' => 'required',
                'email' => 'required | email',
                'phone' => 'required',
                'password' => 'required',
                're_password' => 'required | same:password',
            )
        );
        if ($validator->fails()) {
            return redirect('login')->withErrors($validator)->withInput();
        } else {
            $res = $this->customer->signupProcess($request);
            //eheck email already exit
            if ($res['email'] == "true") {
               
                return redirect('/login')->withInput($request->input())->with('error', Lang::get("website.Email already exist"));
            } else {
                if ($res['insert'] == "true") {
                    if ($res['auth'] == "true") {
                      //  $result = $res['result'];
                        return redirect('otp')->with('success', Lang::get("website.User successfully registered"));
                        //Session::forget('guest_checkout');
                       // return redirect()->intended('/')->with('result', $result);
                    } else {
                        return redirect('login')->with('loginError', Lang::get("website.Email or password is incorrect"));
                    }
                } else {
                    return redirect('/login')->with('error', Lang::get("website.something is wrong"));
                }
            }

        }
    }
    public function Checkotp(Request $request){
     $result = array();
     $old_session = Session::getId();
     $result['commonContent'] = $this->index->commonContent();
     if($request->has('otp_code')){
        $otp_code = $request->otp_code;
      //check OTP exist
$otp_email= Session::get('otp_email');
        $existUser = $this->customer->ExistOtp($otp_code,$otp_email);
        if (!empty($existUser)) {
            $res=$this->customer->loginManually($existUser);

            if ($res['auth'] == "true") {
               User::where('id',$existUser->id)->update(['status'=>1,'is_otp_verify'=>1,'otp_code'=>0]);
               $result = $res['result'];
               Session::forget('otp_email');
               Session::forget('guest_checkout');
               return redirect()->intended('/')->with('result', $result);
           }
       }
       else{
         return redirect('otp')->with('loginError', Lang::get("website.OTPinvalid"));
     }
 }
}
public function ResendOtpMail(Request $request)
{
 if (auth()->guard('customer')->check()) {
     $customer= auth()->guard('customer')->user();
    $customer_id= $customer->id;
 }
 else{
    if($request->has('email')){
     $customer=   $this->customer->ExistUser($request->email);
      $customer_id= $customer[0]->id;
 }

}
if(!isset($customer)){
 return response()->json(array('error' => true, 'message' => 'website.something is wrong'), 200);
}

       $myVar = new AlertController();
       $six_digit_random_number = random_int(100000, 999999);
       User::where('id',$customer_id)->update(['otp_code'=>$six_digit_random_number]);
       $alertSetting = $myVar->checkapiresponse($customer_id,$six_digit_random_number);
        return response()->json(array('error' => false, 'message' => 'A new verification code has been sent to your email address.'), 200);
   }
   

}
