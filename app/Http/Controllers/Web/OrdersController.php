<?php
namespace App\Http\Controllers\Web;

//use Mail;
//validator is builtin class in laravel
use App\Http\Controllers\Web\CartController;
//for password encryption or hash protected
use App\Http\Controllers\Web\ShippingAddressController;

//for authenitcate login data
use App\Models\Web\Cart;
use App\Models\Web\Currency;

//for requesting a value
use App\Models\Web\Index;
use App\Models\Web\Languages;
use App\Models\Web\Order;
use App\Models\Web\Products;
use App\Models\Web\Shipping;
use App\Models\Web\Address;
use App\Models\Web\DeliveryInstruction;
use App\Models\Web\Country;

use App\Models\Web\Card;
//for Carbon a value
use Auth;
use DB;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Lang;
use Session;

//email

class OrdersController extends Controller
{

    public function __construct(
        Index $index,
        Languages $languages,
        Products $products,
        Currency $currency,
        Cart $cart,
        Shipping $shipping,
        Order $order
    ) {
        $this->index = $index;
        $this->languages = $languages;
        $this->products = $products;
        $this->currencies = $currency;
        $this->cart = $cart;
        $this->shipping = $shipping;
        $this->order = $order;
        $this->theme = new ThemeController();
    }

    //test stripe
    public function stripeForm(Request $request)
    {
        $title = array('pageTitle' => Lang::get('website.Checkout'));
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        return view("stripeForm", $title)->with('result', $result);
    }

    public function guest_checkout()
    {

        session(['guest_checkout' => 1]);
        return redirect('/checkout');
    }
    //checkout
    
    public function cardpayment()
    {
        return view("web.cardpaymenttest");
    }
    public function checkout(Request $request)
    {
        $title = array('pageTitle' => Lang::get('website.Checkout'));
        $final_theme = $this->theme->theme();
        $result = array();

        //cart data
        $result['cart'] = $this->cart->myCart($result);
        session(['banktransfer'=> '']);

        if (count($result['cart']) == 0) {
            return redirect("/");
        } else {

            //apply coupon
            if (!empty(session('coupon')) and count(session('coupon')) > 0) {
                $session_coupon_data = session('coupon');
                session(['coupon' => array()]);
                $response = array();
                if (!empty($session_coupon_data)) {
                    foreach ($session_coupon_data as $key => $session_coupon) {
                        $response = $this->cart->common_apply_coupon($session_coupon->code);
                    }
                }
            }

            $result['commonContent'] = $this->index->commonContent();

            $address = array();

            if (empty(session('step'))) {
                session(['step' => '0']);
            }

            if(auth()->guard('customer')->check()){

                $all_addresses = $this->shipping->getShippingAddress(array());
                
                if (!empty($all_addresses) and count($all_addresses)>0) {
                    foreach($all_addresses as $default_address){
                        if($default_address->default_address==1){                        
                            $default_address->delivery_phone = auth()->guard('customer')->user()->phone;
                            $address = $default_address;
                        }
                    }
                }
                $result['address'] = Address::with('Country')->where('user_id',auth()->guard('customer')->user()->id)->orderBy('default_address','desc')->get();  
                 $result['card_option'] = Card::where("user_id",auth()->guard('customer')->user()->id)->orderBy('id','desc')->get();
            }
            
            if (empty(session('shipping_address'))) {
                session(['shipping_address' => $address]);
            }

            //shipping counties
            if (!empty(session('shipping_address')->countries_id)) {
                $countries_id = session('shipping_address')->countries_id;
            } else {
                $countries_id = '';
            }




            $result['countries'] = $this->shipping->countries();
            $result['zones'] = $this->shipping->zones($countries_id);

            //get tax
            if (!empty(session('shipping_address')->zone_id)) {
                $tax_zone_id = session('shipping_address')->zone_id;
                $tax = $this->calculateTax($tax_zone_id);
                session(['tax_rate' => $tax]);
            } else {
                session(['tax_rate' => '0']);
            }
            //shipping methods
            $result['shipping_methods'] = $this->shipping_methods();

            //payment methods
            $result['payment_methods'] = $this->getPaymentMethods();           

            //price
            $price = 0;
            if (count($result['cart']) > 0) {

                foreach ($result['cart'] as $products) {
                    $req = array();
                    $attr = array();
                    $req['products_id'] = $products->products_id;
                    if (isset($products->attributes)) {
                        foreach ($products->attributes as $key => $value) {
                            $attr[$key] = $value->products_attributes_id;
                        }
                        $req['attributes'] = $attr;
                    }
                    $check = $this->products->getquantity($req);
                    if ($products->customers_basket_quantity > $check['stock']) {
                        session(['out_of_stock' => 1]);
                        session(['out_of_stock_product' => $products->products_id]);
                        return redirect('viewcart');
                    }

                    $price += $products->final_price * $products->customers_basket_quantity;
                }
                session(['products_price' => $price]);
            }
            // VAT FUnctionality
            // $tax = 5 / 100 * $price;
            // session(['tax_rate' => round($tax)]);
            //breaintree token
            $token = $this->generateBraintreeTokenWeb();
            session(['braintree_token' => $token]);            

            return view("web.checkout", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        }

    }
    public function addDeliveryIns(Request $request){
        $data = $request->all();
        unset($data['_token']);
        $data['user_id'] = auth()->guard('customer')->user()->id;
        DeliveryInstruction::where('address_id',$data['address_id'])->delete();
        $total = DeliveryInstruction::create($data);   
        $message = "Instructions has been added successfully! ";
        return redirect()->back()->with('success_card', $message);
    }
    //checkout
    public function checkout_shipping_new_address(Request $request)
    {
        $data = $request->all();
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        if (session('step') == '0') {
            session(['step' => '3']);
        }
        $address_data = Address::where('id',$data['selectedOption'])->get();
       


        foreach ($address_data as $key => $address_value) {
            //billing addre

             if(!empty($address_value->DialCode)){
            $deleivery_phone='+'.$address_value->DialCode;
        }else{
            $deleivery_phone="";
        }

            $billing_data['billing_firstname'] = $address_value->first_name;
            $billing_data['billing_lastname'] = $address_value->last_name;
            $billing_data['billing_street'] = $address_value->address;
            $billing_data['billing_building'] = $address_value->buildingno;

            $billing_data['billing_countries_id'] =$address_value->countries_id;
            
            $billing_data['billing_city'] = $address_value->city;

            $billing_data['billing_zip'] = $address_value->zipcode;

            $billing_data['billing_phone'] = $address_value->delivery_phone;
            $billing_data['selectedOption'] = $data['selectedOption'];

            $billing_data['billing_company'] = "test";
            $billing_data['billing_zone_id'] = 1;
            $billing_data['same_billing_address'] = 1;

            $shipping_data['firstname'] = $address_value->first_name;
            
            $shipping_data['lastname'] = $address_value->last_name;
            
            $shipping_data['street'] = $address_value->address;
            
            $shipping_data['building'] = $address_value->buildingno;
            
            $shipping_data['countries_id'] =  $address_value->countries_id;

            $shipping_data['city'] = $address_value->city;
            if(!empty($address_value->city_text)){
                  $shipping_data['city'] = $address_value->city_text;
            }
          
            
            $shipping_data['zipcode'] = $address_value->zipcode;
            $shipping_data['DialCode'] = $deleivery_phone;
            $shipping_data['billing_phone'] = $address_value->delivery_phone;
            
            $shipping_data['company'] = "test";
            $shipping_data['postcode'] = $address_value->zipcode;
            $shipping_data['zone_id'] = 1;
        }
        
            $billing_address = (object) $billing_data;
            $billing_address->same_billing_address = 1;
            session(['billing_address' => $billing_address]);
        
        $address = (object) $shipping_data;
        session(['shipping_address' => $address]);
       
        return redirect()->back();
    }
    public function editLocation(Request $request)
    {
        $address = Address::with('Country')->where('user_id',auth()->guard('customer')->user()->id)->where('id',$request->id)->first();

      $countries=  $this->shipping->countries();
 $countries_string ="";
      if(!empty($countries)){

            foreach ($countries as $single_country) { 
                if($single_country->countries_id == $address->countries_id){ 
                    $countries_string .= '<option value="'.$single_country->countries_id.'" selected="selected" data-country="'.$single_country->countries_iso_code_2.'">'.$single_country->countries_name.'</option>'; 
                }else{
                    $countries_string .= '<option value="'.$single_country->countries_id.'" data-country="'.$single_country->countries_iso_code_2.'">'.$single_country->countries_name.'</option>'; 
                }
            


        }


      }
        $cities = array('Abu Dhabi','Dubai','Sharjah','Ajman','Um Al Quwain','Ras Al Khaimah','Fujairah');
        $img_url=url('/').'/web/assets/images/uaeIcon2.png';
        $citi_string = "";
         $citydropdown=0;
        $addresstype_string = "";
        $default_address_string = "";
        foreach ($cities as $city) { 
            if($city == $address->city){ 

                $citydropdown=1;
                $citi_string .= '<option value="'.$city.'" selected="selected">'.$city.'</option>'; 
            }else{
                $citi_string .= '<option value="'.$city.'">'.$city.'</option>'; 
            }
        }
        if("Home" == $address->addresstype){ 
                $addresstype_string .= '<li class="first"><input type="radio" selected checked  name="addresstype" value="Home">Home (7am-10pm, all days)</li><li class="last"><input type="radio" name="addresstype" value="Office">Office (7am-6pm, weekdays)</li>'; 
            }else{
                $addresstype_string .= '<li class="first"><input type="radio" name="addresstype" value="Home">Home (7am-10pm, all days)</li><li class="last"><input type="radio" name="addresstype" selected checked  value="Office">Office (7am-6pm, weekdays)</li>'; 
            }    
        if($address->default_address == 1){$default_address_string .= '<input type="checkbox" name="default_address" value="1" >'; }else{$default_address_string .= '<input type="checkbox" name="default_address" value="1" >'; }    
        return '<div class="modal-dialog modal-lg">
  <div class="modal-content">
    <div class="modal-header">
      <h4 class="modal-title">Edit address</h4>
      <button type="button" class="close" onclick="closebtn()" id="ediClos" data-dismiss="modal" aria-label="Close">
        <svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg>
      </button>
    </div>
    <div class="modal-body contact-section">

      <form class="contctForm edit-contact-form-validate" enctype="multipart/form-data" action="'.url('/').'/update-AAddress" method="post">
          
        <input type="hidden" name="_token" id="csrf-token" value="'.csrf_token().'">
       
        <input type="hidden" name="address_id" id="address_id" value="'.$address->id.'">

        <div class="form-row">
          <div class="form-group">
            <label for=""> First Name</label>
            <input type="text" class="form-control edit-contact-field-validate" name="first_name" aria-describedby="NameHelp1" placeholder="John" onkeypress="return /^[ A-Za-z-_@./#${}<>,?=;|\!%*()&+-]*$/.test(event.key)" value="'.$address->first_name.'">
            <span class="help-block error-content" hidden="">Please enter your first name</span>
          </div>
          <div class="form-group">
            <label for=""> Last Name</label>
            <input type="text" class="form-control edit-contact-field-validate" id="lastname" value="'.$address->last_name.'" name="last_name" aria-describedby="NameHelp1" placeholder="Doe" onkeypress="return /[a-z]/i.test(event.key)">
            <span class="help-block error-content" hidden="" >Please enter your last name</span>
          </div>
          <div class="form-group">
            <label for="">Street Name</label>
            <input type="text" class="form-control edit-contact-field-validate" value="'.$address->address.'"  name="address" id="address" placeholder="Omar Ibn Al Khattab Street">
            <span class="help-block error-content" hidden="">Please enter your street name</span>
          </div>
          <div class="form-group ">
            <label for="">Building Name, Floor, Apartment or Villa #</label>
            <input type="text" class="form-control edit-contact-field-validate" name="buildingno" value="'.$address->buildingno.'" id="buildingno" placeholder="Princess Tower, 5th floor, Apt 5023">
            <span class="help-block error-content" hidden="">Please enter your building no</span>
          </div>
          <div class="form-group">
            <label for=""> Country</label>
            <div class="input-group select-control">
               <select name="countries_id" class="form-control countrieseditselect edit-contact-field-validate"> <option value="">Select Country</option>'.$countries_string.'
               </select>
            </div>
            <span class="help-block error-content" hidden="">Please select your country.</span>
          </div> <div class="form-group citytext '.(($citydropdown == "1") ? "d-none" : "").'">
       <label for="">City</label>
            <input name="city_text" type="text" class="form-control  '.(($citydropdown == "1") ? "" : "edit-contact-field-validate").'" value="'.((!empty($address->city) && ($address->countries_id!=231) ) ? $address->city : "").'">
            <input type="hidden" name="DialCode" class="DialCode" value="'.(($address->DialCode) ? $address->DialCode : "").'">

</div>
          <div class="form-group citydropdown '.(($citydropdown == "1") ? "" : "d-none").'">
            <label for=""> City</label>
            <select name="city" id="check_ship_city" class="form-control '.(($citydropdown == "1") ? "edit-contact-field-validate" : "").'">

              <option value="">Select City</option>'.$citi_string.'
            </select>
          </div>
         
          <div class="form-group" >
            <input type="tel" class="form-control edit-contact-field-validate phone" name="delivery_phone" value="'.$address->delivery_phone.'">
              </div>
              <span id="valid-msg" class="hide">✓ Valid</span>
                <span id="error-msg" class="hide"></span>
          </div>
          <div class="form-group  col-12">
            <h4>Add Delivery Instructions:</h4>
            <ul>
              '.$addresstype_string.'
            </ul>
            <label class="switch">
              '.$default_address_string.'
              <span class="slider"></span>
            </label>
            <p class="newAdSw">Make this my default address</p>
          </div>
        <div class="form-row">
          <div class="form-group">
            <button type="button" onclick="editcontactfieldvalidate();" class="btn btn-secondary"><span>Save Address</span></button>
          </div>
        </div>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
 var input2 = document.querySelector(".phone"),
    errorMsg = document.querySelector("#error-msg"),
    validMsg = document.querySelector("#valid-msg");
    var errorMap = ["Invalid number", "Invalid country code", "Too short", "Too long", "Invalid number"];
    var iti = window.intlTelInput(input2, {
      utilsScript: "{{asset(web/assets/js/utils.js)}}",
       initialCountry: "'.(isset($address->Country->countries_iso_code_2) ? $address->Country->countries_iso_code_2:'').'",
        geoIpLookup: function(callback) {
          $.get("https://ipinfo.io", function() {}, "jsonp").always(function(resp) {
            var countryCode = (resp && resp.country) ? resp.country : "us";
            callback(countryCode);
          });
        }
    });
    var reset = function() {
      input2.classList.remove("error");
      errorMsg.innerHTML = "";
      errorMsg.classList.add("hide");
      validMsg.classList.add("hide");
    };
    input2.addEventListener("blur", function() {
      reset();
       var countryData = iti.getSelectedCountryData();
        $(".DialCode").val(countryData.dialCode);
      if (input2.value.trim()) {
        if (iti.isValidNumber()) {
          validMsg.classList.remove("hide");
        } else {
          input2.classList.add("error");
          var errorCode = iti.getValidationError();
          errorMsg.innerHTML = errorMap[errorCode];
          errorMsg.classList.remove("hide");
          jQuery(".phone").val("");
        }
      }
    });
      // on keyup / change flag: reset
      input2.addEventListener("change", reset);
      input2.addEventListener("keyup", reset);

      var  countrieseditselect = document.querySelector(".countrieseditselect");
      countrieseditselect.addEventListener("change", function() {
var country_iso=$(this).find(":selected").attr("data-country")
  iti.setCountry(country_iso);
  getCityedit(this)
});
</script>';

    }    
    public function getDeliveryInstruction(Request $request){
        $data = $request->all();
        $delIns_Data = DeliveryInstruction::where('address_id',$data['location_id'])->get();
        $address_Data = Address::where("id",$data['location_id'])->get();
        if (isset($delIns_Data[0]->description)) {
            // <address>
            //             <b>'.$address_Data[0]->first_name.' '.$address_Data[0]->last_name.'</b>, 
            //             '.$address_Data[0]->address.',
            //             '.$address_Data[0]->buildingno.',
            //             '.$address_Data[0]->city.',
            //             United Arab Emirates,
            //             Phone: <span dir="ltr"> +'.$address_Data[0]->delivery_phone.'</span>
            //         </address>
            $delivery_html = '
                    <strong>Help us find your Address</strong>
              
              <div class="form-group">
              <p>
                Provide us details such as building description, a nearby landmark, or other navigation instructions.
              </p>
              <input type="hidden" name="address_id" value="'.$data['location_id'].'">
              <textarea class="form-control description_ins edit-contact-field-validate"  name="description" row="3" required="required" placeholder="Write your text here...">'.$delIns_Data[0]->description.'</textarea>
              </div>';

        } else {
            $delivery_html = '
              <div class="form-group">
              <strong>Help us find your Address</strong>
              <p>
                Provide us details such as building description, a nearby landmark, or other navigation instructions.
              </p>
              <input type="hidden" name="address_id" value="'.$data['location_id'].'">
              <textarea class="form-control description_ins edit-contact-field-validate" name="description" rows="3" required="required" placeholder="Write your text here..."></textarea>
              </div>';
        }
        
        

        echo $delivery_html;
    }
    public function editAddress($id)
    {
        $address_Data = Address::where('id',$id)->get();
        return view("web.edit-address")->with('address_Data', $address_Data);

    }

    public function checkout_shipping_address(Request $request)
    {

        $title = array('pageTitle' => Lang::get('website.Checkout'));
        $result = array();
        $result['commonContent'] = $this->index->commonContent();

        if (session('step') == '0') {
            session(['step' => '2']);
        }
        dd($request->all());
        foreach ($request->all() as $key => $value) {
            $shipping_data[$key] = $value;

            //billing address
            if ($key == 'firstname') {
                $billing_data['billing_firstname'] = $value;
            } else if ($key == 'lastname') {
                $billing_data['billing_lastname'] = $value;
            } else if ($key == 'company') {
                $billing_data['billing_company'] = $value;
            } else if ($key == 'street') {
                $billing_data['billing_street'] = $value;
            } else if ($key == 'countries_id') {
                $billing_data['billing_countries_id'] = $value;
            } else if ($key == 'zone_id') {
                $billing_data['billing_zone_id'] = 1;
            } else if ($key == 'city') {
                $billing_data['billing_city'] = $value;
            } else if ($key == 'postcode') {
                $billing_data['billing_zip'] = $value;
            } else if ($key == 'delivery_phone') {
                $billing_data['billing_phone'] = $value;
            }
        }
        // $data = $request->all();
        // unset($data['_token']);
        // $data['user_id'] = 9;
        //  $total = Address::create($data);   
        if (empty(session('billing_address')) or session('billing_address')->same_billing_address == 1) {
            $billing_address = (object) $billing_data;
            $billing_address->same_billing_address = 1;
            session(['billing_address' => $billing_address]);
        }

        $address = (object) $shipping_data;
        session(['shipping_address' => $address]);

        return redirect()->back();
    }

    //checkout_billing_address
    public function checkout_billing_address(Request $request)
    {
        if (session('step') == '1') {
            session(['step' => '2']);
        }

        if (empty($request->same_billing_address)) {

            foreach ($request->all() as $key => $value) {
                $billing_data[$key] = $value;
            }

            $billing_address = (object) $billing_data;
            $billing_address->same_billing_address = 0;
            session(['billing_address' => $billing_address]);
        } else {

            $billing_address = session('billing_address');
            $billing_address->same_billing_address = 1;
            session(['billing_address' => $billing_address]);
        }

        return redirect()->back();
    }

    //checkout_payment_method
    public function checkout_payment_method(Request $request)
    {

        if (session('step') == '2') {
            session(['step' => '3']);
        }
        $result['commonContent'] = $this->index->commonContent();

        $shipping_detail = array();
        foreach ($request->all() as $key => $value) {
            if ($key == 'shipping_price') {
                if(!empty($result['commonContent']['setting'][82]->value) and $result['commonContent']['setting'][82]->value <= session('total_price')){
                    $shipping_detail['shipping_price'] = 0;
                }else{
                   
                    $shipping_detail['shipping_price'] = $value;
                }
            } else {
                $shipping_detail[$key] = $value;
            }

        }
        $data = $request->all();
        $shipping_detail['selectedCardOption'] = $data['selectedCardOption'];
        $option_id = $data['selectedCardOption'];
        $shipping_detail['selectedCardOptionCvv'] = $data["cvvNum_".$option_id];
        session(['shipping_detail' => (object) $shipping_detail]);

        return redirect()->back();

    }

    //order_detail
    public function paymentComponent(Request $request)
    {
        session(['payment_method' => $request->payment_method]);
    }

    //generate token
    public function generateBraintreeTokenWeb()
    {

        $payments_setting = $this->order->payments_setting_for_brain_tree();
        if ($payments_setting['merchant_id']->status == 1) {
            //braintree transaction get nonce
            $is_transaction = '0'; # For payment through braintree

            if ($payments_setting['merchant_id']->environment == '0') {
                $braintree_environment = 'sandbox';
            } else {
                $environment = 'production';
            }
            //for token please check braintree.php file
            require_once app_path('braintree/index.php');          

            $braintree_merchant_id = $payments_setting['merchant_id']->value;
            $braintree_public_key = $payments_setting['public_key']->value;
            $braintree_private_key = $payments_setting['private_key']->value;


        } else {
            $clientToken = '';
        }
        return $clientToken;

        

    }

    //place_order
    public function place_order(Request $request)
    {
        session(['payment_method' => $request->payment_method]);
        // echo();die();
        $payment_status = $this->order->place_order($request);
        // dd($payment_status);die();
        // echo "<pre>";
        // print_r($payment_status);
        // die("sa");
         // return view('mail.orderEmail', ['ordersData' => $payment_status]);
        // echo "<pre>";print_r($payment_status);exit;
        if ($payment_status['payment_status'] == 'success') {
            $message = Lang::get("website.Payment has been processed successfully");
            $order_id=$payment_status['orders_id'];

            // return view('mail.orderEmail', ['ordersData' => $order_id]);
            return redirect('/thankyou/'.$order_id);
        } else {
            return redirect()->back()->with('error', Lang::get("website.Error while placing order"));
        }
    }

    //thankyou
    public function thankyou(Request $request,$order_id)
    {
        $tickets=DB::table('tickets')
        ->where('tickets.orders_id',$order_id)
        ->where('tickets.customers_id',auth()->guard('customer')->user()->id)
        ->groupBy('products_id')
        ->orderBy('id', 'DESC')
        ->get();

        $tickets_count=count($tickets);
        // echo "<pre>";print_r($tickets);exit;
        $title = array('pageTitle' => Lang::get('website.Thank You'));
        $bankdetail = array();
        if(!empty(session('banktransfer')) and session('banktransfer') == 'yes'){
            $payments_setting = $this->order->payments_setting_for_directbank();    
        // echo "<pre>";print_r($payments_setting);exit;
            

            $bankdetail = array(
                'account_name' => $payments_setting['account_name']->value,
                'account_number' => $payments_setting['account_number']->value,
                'payment_method' => $payments_setting['account_name']->payment_method,
                'bank_name' => $payments_setting['bank_name']->value,
                'short_code' => $payments_setting['short_code']->value,
                'iban' => $payments_setting['iban']->value,
                'swift' => $payments_setting['swift']->value,
            );
        }
        
        $final_theme = $this->theme->theme();
        $result = $this->order->orders($request);
        return view("web.thankyou", ['title' => $title, 'final_theme' => $final_theme, 'bankdetail'=>$bankdetail])->with('result', $result)->with('tickets',$tickets)->with('tickets_count',$tickets_count);
    }
    public function thankyou2(Request $request)
    {
        $title = array('pageTitle' => Lang::get('website.Thank You'));
        $bankdetail = array();
        if(!empty(session('banktransfer')) and session('banktransfer') == 'yes'){
            $payments_setting = $this->order->payments_setting_for_directbank();    
            

            $bankdetail = array(
                'account_name' => $payments_setting['account_name']->value,
                'account_number' => $payments_setting['account_number']->value,
                'payment_method' => $payments_setting['account_name']->payment_method,
                'bank_name' => $payments_setting['bank_name']->value,
                'short_code' => $payments_setting['short_code']->value,
                'iban' => $payments_setting['iban']->value,
                'swift' => $payments_setting['swift']->value,
            );
        }
        
        $final_theme = $this->theme->theme();
        $result = $this->order->orders($request);
        return view("web.thankyou2", ['title' => $title, 'final_theme' => $final_theme, 'bankdetail'=>$bankdetail])->with('result', $result);
    }
    //orders
    public function orders(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.My Orders"));
        $final_theme = $this->theme->theme();
        $result = $this->order->orders($request);       
        return view("web.orders", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }

    //viewMyOrder
    public function viewOrder(Request $request, $id)
    {

        $title = array('pageTitle' => Lang::get("website.View Order"));
        $final_theme = $this->theme->theme();
        $result = $this->order->viewOrder($request, $id);
        if ($result['res'] = "view-order") {
            return view("web.view-order", $title)->with(['result' => $result, 'final_theme' => $final_theme]);
        } else {
            return redirect('orders');
        }
    }

    //calculate tax
    public function calculateTax($tax_zone_id)
    {

        $tax = $this->order->calculateTax($tax_zone_id);
        return $tax;

    }

    //shipping methods
    public function shipping_methods()
    {

        $result = array();
        if (!empty(session('shipping_address'))) {
            $countries_id = session('shipping_address')->countries_id;
            $toPostalCode = session('shipping_address')->street;
            $toCity = session('shipping_address')->city;
            $toAddress = 'gh';
            $countries = $this->order->getCountries($countries_id);
            $toCountry = isset($countries[0]->countries_iso_code_2) ? $countries[0]->countries_iso_code_2 : '';
            $zone_id = 1;
            if ($zone_id != -1 and !empty($zone_id)) {
                $zones = $this->order->getZones(1);
                $toState = $zones[0]->zone_code;
            }
        } else {
            $countries_id = '';
            $toPostalCode = '';
            $toCity = '';
            $toAddress = '';
            $toCountry = '';
            $zone_id = '';
        }

        //product weight
        $cart = $this->cart->myCart($result);

        $index = '0';
        $total_weight = '0';

        foreach ($cart as $products_data) {
            if ($products_data->unit == 'Gram') {
                $productsWeight = $products_data->weight / 453.59237;
            } else if ($products_data->unit == 'Kilogram') {
                $productsWeight = $products_data->weight / 0.45359237;
            } else {
                $productsWeight = $products_data->weight;
            }

            $total_weight += $productsWeight;
        }

        $products_weight = $total_weight;

        //website path
        //$websiteURL =  "http://" . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
        $websiteURL = "https://" . $_SERVER['SERVER_NAME'] . '/';
        $replaceURL = str_replace('getRate', '', $websiteURL);
        $requiredURL = $replaceURL . 'app/ups/ups.php';

        //default shipping method
        $shippings = $this->order->getShippingMethods();
        $result = array();
        $mainIndex = 0;
        foreach ($shippings as $shipping_methods) {

            $shippings_detail = $this->order->getShippingDetail($shipping_methods);

            //ups shipping rate
            if ($shipping_methods->methods_type_link == 'upsShipping' and $shipping_methods->status == '1') {

                $result2 = array();
                $is_transaction = '0';

                $ups_shipping = $this->order->getUpsShipping();

                //shipp from and all credentials
                $accessKey = $ups_shipping[0]->access_key;
                $userId = $ups_shipping[0]->user_name;
                $password = $ups_shipping[0]->password;

                //ship from address
                $fromAddress = $ups_shipping[0]->address_line_1;
                $fromPostalCode = $ups_shipping[0]->post_code;
                $fromCity = $ups_shipping[0]->city;
                $fromState = $ups_shipping[0]->state;
                $fromCountry = $ups_shipping[0]->country;

                //production or test mode
                if ($ups_shipping[0]->shippingEnvironment == 1) { #production mode
                    $useIntegration = true;
                } else {
                    $useIntegration = false; #test mode
                }

                $serviceData = explode(',', $ups_shipping[0]->serviceType);

                $index = 0;
                foreach ($serviceData as $value) {
                    if ($value == "US_01") {
                        $name = Lang::get('website.Next Day Air');
                        $serviceTtype = "1DA";
                    } else if ($value == "US_02") {
                        $name = Lang::get('website.2nd Day Air');
                        $serviceTtype = "2DA";
                    } else if ($value == "US_03") {
                        $name = Lang::get('website.Ground');
                        $serviceTtype = "GND";
                    } else if ($value == "US_12") {
                        $name = Lang::get('website.3 Day Select');
                        $serviceTtype = "3DS";
                    } else if ($value == "US_13") {
                        $name = Lang::get('website.Next Day Air Saver');
                        $serviceTtype = "1DP";
                    } else if ($value == "US_14") {
                        $name = Lang::get('website.Next Day Air Early A.M.');
                        $serviceTtype = "1DM";
                    } else if ($value == "US_59") {
                        $name = Lang::get('website.2nd Day Air A.M.');
                        $serviceTtype = "2DM";
                    } else if ($value == "IN_07") {
                        $name = Lang::get('website.Worldwide Express');
                        $serviceTtype = "UPSWWE";
                    } else if ($value == "IN_08") {
                        $name = Lang::get('website.Worldwide Expedited');
                        $serviceTtype = "UPSWWX";
                    } else if ($value == "IN_11") {
                        $name = Lang::get('website.Standard');
                        $serviceTtype = "UPSSTD";
                    } else if ($value == "IN_54") {
                        $name = Lang::get('website.Worldwide Express Plus');
                        $serviceTtype = "UPSWWEXPP";
                    }

                    $some_data = array(
                        'access_key' => $accessKey, # UPS License Number
                        'user_name' => $userId, # UPS Username
                        'password' => $password, # UPS Password
                        'pickUpType' => '03', # Drop Off Location
                        'shipToPostalCode' => $toPostalCode, # Destination  Postal Code
                        'shipToCountryCode' => $toCountry, # Destination  Country
                        'shipFromPostalCode' => $fromPostalCode, # Origin Postal Code
                        'shipFromCountryCode' => $fromCountry, # Origin Country
                        'residentialIndicator' => 'IN', # Residence Shipping and for commercial shipping "COM"
                        'cServiceCodes' => $serviceTtype, # Sipping rate for UPS Ground
                        'packagingType' => '02',
                        'packageWeight' => $productsWeight,
                    );

                    $curl = curl_init();
                    // You can also set the URL you want to communicate with by doing this:
                    // $curl = curl_init('http://localhost/echoservice');

                    // We POST the data
                    curl_setopt($curl, CURLOPT_POST, 1);
                    // Set the url path we want to call
                    curl_setopt($curl, CURLOPT_URL, $requiredURL);
                    // Make it so the data coming back is put into a string
                    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
                    // Insert the data
                    curl_setopt($curl, CURLOPT_POSTFIELDS, $some_data);

                    // You can also bunch the above commands into an array if you choose using: curl_setopt_array

                    // Send the request
                    $rate = curl_exec($curl);
                    // Free up the resources $curl is using
                    curl_close($curl);

                    if (is_numeric($rate)) {
                        $success = array('success' => '1', 'message' => "Rate is returned.", 'name' => $shippings_detail[0]->name, 'is_default' => $shipping_methods->isDefault);
                        $result2[$index] = array('name' => $name, 'rate' => $rate, 'currencyCode' => 'USD', 'shipping_method' => 'upsShipping');
                        $index++;
                    } else {
                        $success = array('success' => '0', 'message' => "Selected regions are not supported for UPS shipping", 'name' => $shippings_detail[0]->name);
                    }
                    $success['services'] = $result2;
                }
                $result[$mainIndex] = $success;
                $mainIndex++;

            } else if ($shipping_methods->methods_type_link == 'flateRate' and $shipping_methods->status == '1') {
                $ups_shipping = $this->order->getUpsShippingRate();
                $data2 = array('name' => $shippings_detail[0]->name, 'rate' => $ups_shipping[0]->flate_rate, 'currencyCode' => $ups_shipping[0]->currency, 'shipping_method' => 'flateRate');
                if (count($ups_shipping) > 0) {
                    $success = array('success' => '1', 'message' => "Rate is returned.", 'name' => $shippings_detail[0]->name, 'is_default' => $shipping_methods->isDefault);
                    $success['services'][0] = $data2;
                    $result[$mainIndex] = $success;
                    $mainIndex++;
                }

            } else if ($shipping_methods->methods_type_link == 'localPickup' and $shipping_methods->status == '1') {

                $data2 = array('name' => $shippings_detail[0]->name, 'rate' => '0', 'currencyCode' => 'USD', 'shipping_method' => 'localPickup');
                $success = array('success' => '1', 'message' => "Rate is returned.", 'name' => $shippings_detail[0]->name, 'is_default' => $shipping_methods->isDefault);
                $success['services'][0] = $data2;
                $result[$mainIndex] = $success;
                $mainIndex++;

            } else if ($shipping_methods->methods_type_link == 'freeShipping' and $shipping_methods->status == '1') {

                $data2 = array('name' => $shippings_detail[0]->name, 'rate' => '0', 'currencyCode' => 'USD', 'shipping_method' => 'freeShipping');
                $success = array('success' => '1', 'message' => "Rate is returned.", 'name' => $shippings_detail[0]->name, 'is_default' => $shipping_methods->isDefault);
                $success['services'][0] = $data2;
                $result[$mainIndex] = $success;
                $mainIndex++;
            } else if ($shipping_methods->methods_type_link == 'shippingByWeight' and $shipping_methods->status == '1') {

                //cart data
                $carts = $this->cart->myCart('');

                $weight = 0;
                foreach ($carts as $cart) {
                    $weight += $cart->weight * $cart->customers_basket_quantity;
                }

                //check price by weight
                $priceByWeight = $this->order->priceByWeight($weight);

                if (!empty($priceByWeight) and count($priceByWeight) > 0) {
                    $price = $priceByWeight[0]->weight_price;
                } else {
                    $price = 0;
                }

                $data2 = array('name' => $shippings_detail[0]->name, 'rate' => $price, 'currencyCode' => 'USD', 'shipping_method' => 'Shipping By Weight');
                $success = array('success' => '1', 'message' => "Rate is returned.", 'name' => $shippings_detail[0]->name, 'is_default' => $shipping_methods->isDefault);
                $success['services'][0] = $data2;
                $result[$mainIndex] = $success;
                $mainIndex++;
            }
        }

        return $result;
    }

    //get default payment method
    public function getPaymentMethods()
    {

        /**   BRAIN TREE **/
        //////////////////////
        $result = array();
        $payments_setting = $this->order->payments_setting_for_brain_tree();
        if ($payments_setting['merchant_id']->environment == '0') {
            $braintree_enviroment = 'Test';
        } else {
            $braintree_enviroment = 'Live';
        }

        $braintree = array(
            'environment' => $braintree_enviroment,
            'name' => $payments_setting['merchant_id']->name,
            'public_key' => $payments_setting['public_key']->value,
            'active' => $payments_setting['merchant_id']->status,
            'payment_method' => $payments_setting['merchant_id']->payment_method,
            'payment_currency' => Session::get('currency_code'),
        );
        /**  END BRAIN TREE **/
        //////////////////////

        /**   STRIPE**/
        //////////////////////

        $payments_setting = $this->order->payments_setting_for_stripe();
        if ($payments_setting['publishable_key']->environment == '0') {
            $stripe_enviroment = 'Test';
        } else {
            $stripe_enviroment = 'Live';
        }

        $stripe = array(
            'environment' => $stripe_enviroment,
            'name' => $payments_setting['publishable_key']->name,
            'public_key' => $payments_setting['publishable_key']->value,
            'active' => $payments_setting['publishable_key']->status,
            'payment_currency' => Session::get('currency_code'),
            'payment_method' => $payments_setting['publishable_key']->payment_method,
        );

        /**   END STRIPE**/
        //////////////////////

        /**   CASH ON DELIVERY**/
        //////////////////////

        $payments_setting = $this->order->payments_setting_for_cod();

        $cod = array(
            'environment' => 'Live',
            'name' => $payments_setting->name,
            'public_key' => '',
            'active' => $payments_setting->status,
            'payment_currency' => Session::get('currency_code'),
            'payment_method' => $payments_setting->payment_method,
        );

        /**   END CASH ON DELIVERY**/
        /*************************/

        /**   PAYPAL**/
        /*************************/
        $payments_setting = $this->order->payments_setting_for_paypal();

        if ($payments_setting['id']->environment == '0') {
            $paypal_enviroment = 'Test';
        } else {
            $paypal_enviroment = 'Live';
        }

        $paypal = array(
            'environment' => $paypal_enviroment,
            'name' => $payments_setting['id']->name,
            'public_key' => $payments_setting['id']->value,
            'active' => $payments_setting['id']->status,
            'payment_method' => $payments_setting['id']->payment_method,
            'payment_currency' => Session::get('currency_code'),

        );

        /**   END PAYPAL**/
        /*************************/

        /**   INSTAMOJO**/
        /*************************/
        $payments_setting = $this->order->payments_setting_for_instamojo();
        if ($payments_setting['auth_token']->environment == '0') {
            $instamojo_enviroment = 'Test';
        } else {
            $instamojo_enviroment = 'Live';
        }

        $instamojo = array(
            'environment' => $instamojo_enviroment,
            'name' => $payments_setting['auth_token']->name,
            'public_key' => $payments_setting['api_key']->value,
            'active' => $payments_setting['api_key']->status,
            'payment_currency' => Session::get('currency_code'),
            'payment_method' => $payments_setting['api_key']->payment_method,
        );

        /**   END INSTAMOJO**/
        /*************************/

        /**   END HYPERPAY**/
        /*************************/
        $payments_setting = $this->order->payments_setting_for_hyperpay();
        //dd($payments_setting);
        if ($payments_setting['userid']->environment == '0') {
            $hyperpay_enviroment = 'Test';
        } else {
            $hyperpay_enviroment = 'Live';
        }

        $hyperpay = array(
            'environment' => $hyperpay_enviroment,
            'name' => $payments_setting['userid']->name,
            'public_key' => $payments_setting['userid']->value,
            'active' => $payments_setting['userid']->status,
            'payment_currency' => Session::get('currency_code'),
            'payment_method' => $payments_setting['userid']->payment_method,
        );
        /**   END HYPERPAY**/
        /*************************/

        $payments_setting = $this->order->payments_setting_for_razorpay();
        
        if ($payments_setting['RAZORPAY_SECRET']->environment == '0') {
            $razorpay_enviroment = 'Test';
        } else {
            $razorpay_enviroment = 'Live';
        }

        $razorpay = array(
            'environment' => $razorpay_enviroment,
            'public_key' => $payments_setting['RAZORPAY_KEY']->value,
            'name' => $payments_setting['RAZORPAY_KEY']->name,
            'RAZORPAY_KEY' => $payments_setting['RAZORPAY_KEY']->value,
            'RAZORPAY_SECRET' => $payments_setting['RAZORPAY_SECRET']->value,
            'active' => $payments_setting['RAZORPAY_SECRET']->status,
            'payment_currency' => Session::get('currency_code'),
            'payment_method' => $payments_setting['RAZORPAY_SECRET']->payment_method,
        );

        $payments_setting = $this->order->payments_setting_for_paytm();
        

        if ($payments_setting['paytm_mid']->environment == '0') {
            $paytm_enviroment = 'Test';
        } else {
            $paytm_enviroment = 'Live';
        }

        $paytm = array(
            'environment' => $paytm_enviroment,
            'payment_currency' => Session::get('currency_code'),
            'public_key' => '',
            'name' => $payments_setting['paytm_mid']->name,
            'active' => $payments_setting['paytm_mid']->status,
            'payment_method' => $payments_setting['paytm_mid']->payment_method,
        );

        $payments_setting = $this->order->payments_setting_for_directbank();     

        if ($payments_setting['account_name']->environment == '0') {
            $enviroment = 'Live';
        } else {
            $enviroment = 'Live';
        }

        $banktransfer = array(
            'environment' => $enviroment,
            'payment_currency' => Session::get('currency_code'),
            'public_key' => '',
            'name' => $payments_setting['account_name']->name,
            'descriptions' => $payments_setting['account_name']->sub_name_1,
            'active' => $payments_setting['account_name']->status,
            'payment_method' => $payments_setting['account_name']->payment_method,
        );

        $payments_setting = $this->order->payments_setting_for_paystack();   
        if ($payments_setting['secret_key']->environment == '0') {
            $enviroment = 'Test';
        } else {
            $enviroment = 'Live';
        }

        $paystack = array(
            'environment' => $enviroment,
            'payment_currency' => Session::get('currency_code'),
            'public_key' => $payments_setting['secret_key']->value,
            'name' => $payments_setting['secret_key']->name,
            'active' => $payments_setting['secret_key']->status,
            'payment_method' => $payments_setting['secret_key']->payment_method,
        );

        $payments_setting = $this->order->payments_setting_for_midtrans();  

        if ($payments_setting['merchant_id']->environment == '0') {
            $enviroment = 'Test';
        } else {
            $enviroment = 'Live';
        }

        $midtrans = array(
            'environment' => $enviroment,
            'payment_currency' => Session::get('currency_code'),
            'public_key' => $payments_setting['server_key']->value,
            'name' => $payments_setting['merchant_id']->name,
            'active' => $payments_setting['merchant_id']->status,
            'payment_method' => $payments_setting['merchant_id']->payment_method,
        );        

        

        $result[0] = $braintree;
        $result[1] = $stripe;
        $result[2] = $cod;
        $result[3] = $paypal;
        $result[4] = $instamojo;
        $result[5] = $hyperpay;
        $result[6] = $razorpay;
        $result[7] = $paytm;
        $result[8] = $banktransfer;
        $result[9] = $paystack;
        $result[10] = $midtrans;
        return $result;
    }

    public function commentsOrder(Request $request)
    {
        session(['order_comments' => $request->comments]);
    }

    public function payIinstamojo(Request $request)
    {
        $commonContent = $this->index->commonContent();

        if (empty($commonContent['setting'][18]->value)) {
            $siteName = Lang::get('website.Empty Site Name');
        } else {
            $siteName = $commonContent['setting'][18]->value;
        }

        //payment methods
        $payments_setting = $this->order->payments_setting_for_instamojo();
        $instamojo_api_key = $payments_setting['api_key']->value;
        $instamojo_auth_token = $payments_setting['auth_token']->value;

        $websiteURL = "http://" . $_SERVER['SERVER_NAME'] . '/';
        $fullname = $request->fullname;
        $email_id = $request->email_id;
        $phone_number = $request->phone_number;
        $amount = $request->amount;

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://www.instamojo.com/api/1.1/payment-requests/');
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER,
            array("X-Api-Key:" . $instamojo_api_key,
                "X-Auth-Token:" . $instamojo_auth_token));
        $payload = array(
            'purpose' => $siteName . ' Payment',
            'amount' => $amount,
            'phone' => $phone_number,
            'buyer_name' => $fullname,
            'send_email' => true,
            'send_sms' => true,
            'email' => $email_id,
            'allow_repeated_payments' => false,
        );
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($payload));
        $response = curl_exec($ch);
        curl_close($ch);

        session(['instamojo_info' => $response]);

        print_r($response);

    }

    //hyperpaytoken
    public function hyperpay(Request $request)
    {
        $title = array('pageTitle' => Lang::get('website.Checkout'));
        $result = array();
        $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $replaceURL = str_replace('/hyperpay', '/hyperpay/checkpayment', $actual_link);

        $amount = number_format((float) session('total_price') + 0, 2, '.', '');
        $payments_setting = $this->order->payments_setting_for_hyperpay();
        //check envinment
        if ($payments_setting['userid']->environment == '0') {
            $env_url = "https://test.oppwa.com/v1/checkouts";
            $order_url = "test";
        } else {
            $env_url = "https://oppwa.com/v1/checkouts";
            $order_url = "live";
        }

        if(Auth::guard('customer')->check()){
            $email = auth()->guard('customer')->user()->email;
        }else{
            $email = session('shipping_address')->email;          
        }

        $url = $env_url;
        $data = "authentication.userId=" . $payments_setting['userid']->value .
        "&authentication.password=" . $payments_setting['password']->value .
        "&authentication.entityId=" . $payments_setting['entityid']->value .
        "&amount=" . $amount .
        "&currency=SAR" .
        "&paymentType=DB" .
        "&customer.email=" . $email .
        "&testMode=EXTERNAL" .
        "&merchantTransactionId=" . uniqid();

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // this should be set to true in production
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $responseData = curl_exec($ch);
        if (curl_errno($ch)) {
            return curl_error($ch);
        }
        curl_close($ch);

        $data = json_decode($responseData);

        if ($data->result->code == '000.200.100') {
            $result['token'] = $data->id;
            $result['webURL'] = $replaceURL;
            $result['order_url'] = $order_url;

            return view("web.hyperpay", $title)->with('result', $result);
        } else {
            return redirect()->back()->with('error', $data->result->description);
        }
    }

    //checkpayment
    public function checkpayment(Request $request)
    {
        $title = array('pageTitle' => Lang::get('website.Checkout'));
        $result = array();

        $payments_setting = $this->order->payments_setting_for_hyperpay();
        //check envinment
        if ($payments_setting['userid']->environment == '0') {
            $env_url = "https://test.oppwa.com";
        } else {
            $env_url = "https://oppwa.com";
        }

        $url = $env_url . $request->resourcePath;
        $url .= "?authentication.userId=" . $payments_setting['userid']->value;
        $url .= "&authentication.password=" . $payments_setting['password']->value;
        $url .= "&authentication.entityId=" . $payments_setting['entityid']->value;

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // this should be set to true in production
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $responseData = curl_exec($ch);
        if (curl_errno($ch)) {
            return curl_error($ch);
        }
        curl_close($ch);

        $data = json_decode($responseData);

        if (preg_match('/^(000\.000\.|000\.100\.1|000\.[36])/', $data->result->code)) {
            $transaction_id = $data->ndc;
            session(['paymentResponseData' => $data]);
            session(['paymentResponse' => 'success']);
            return redirect('/checkout');
        } else {
            session(['paymentResponseData' => $data->result->description]);
            session(['paymentResponse' => 'error']);
            return redirect('/checkout');
        }

    }

    //changeresponsestatus
    public function changeresponsestatus(Request $request)
    {
        session(['paymentResponseData' => '']);
        session(['paymentResponse' => '']);
    }
    public function updateAAddress(Request $request)
    {
     
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

        if($request->has('city_text') && !empty($request->city_text)){
            $data['city']=$request->city_text;
        }
          unset($data['city_text']);

          if(!empty($request->DialCode)){
            $pos = strpos($request->DialCode,'+');
            if ($pos === false) {
              $data['DialCode']='+'.$request->DialCode;
          }else{
           $data['DialCode']=$request->DialCode;
       }
   }
    
         $updatedAddress = Address::where('id',$address_id)->update($data);
         $message = "Address has been updated successfully!";
         return redirect()->to('/address-book')->with('success', $message);
    }
    //updatestatus
    public function updatestatus(Request $request)
    {
        if (!empty($request->orders_id)) {
            $date_added = date('Y-m-d h:i:s');
            $comments = '';
            $ordersCheck = $this->order->ordersCheck($request);

            if (count($ordersCheck) > 0) {
                $orders_history_id = $this->order->InsertOrdersCheck($request, $date_added, $comments);
                return redirect()->back()->with('message', Lang::get("labels.OrderStatusChangedMessage"));
            } else {
                return redirect()->back()->with('error', Lang::get("labels.OrderStatusChangedMessage"));
            }
        } else {
            return redirect()->back()->with('error', Lang::get("labels.OrderStatusChangedMessage"));
        }
    }

    //paystack

    public function paystackTransaction(REQUEST $request){

      $result = array();
        //Set other parameters as keys in the $postdata array
        //"reference" => '7PVGX8MEk85tgeEpVDtDD'

      if(Auth::guard('customer')->check()){
        $email = auth()->guard('customer')->user()->email;
    }else{
        $email = session('shipping_address')->email;          
    }
    $payments_setting = $this->order->payments_setting_for_paystack();
    $amount = number_format((float) session('total_price') + 0, 2) ;
    $amount = $amount * 100;
        // dd($amount);
    $postdata =  array('email' => $email, 'amount' => $amount, "reference" => uniqid());
    $url = "https://api.paystack.co/transaction/initialize";

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL,$url);
    curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS,json_encode($postdata));  //Post Fields
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		$headers = [
          'Authorization: Bearer '.$payments_setting['secret_key']->value,
          'Content-Type: application/json',

      ];
      curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

      $response = curl_exec ($ch);

      if ($response === false) {
        throw new \Exception('CURL Error: ' . curl_error($ch), curl_errno($ch));
    }

    curl_close ($ch);

		// if ($response) {
		// 	$result = json_decode($response, true);
        // }


    print_r($response);
}

public function authorizepaystackTransaction(REQUEST $request){

  $result = array();
        //The parameter after verify/ is the transaction reference to be verified
  $url = 'https://api.paystack.co/transaction/verify/'.$request->reference;
  $payments_setting = $this->order->payments_setting_for_paystack();
  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL, $url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt(
    $ch, CURLOPT_HTTPHEADER, [
        'Authorization: Bearer '.$payments_setting['secret_key']->value]
    );
  $request = curl_exec($ch);
  curl_close($ch);

  if ($request) {
    $result = json_decode($request, true);
    $message = $result['message'];
           // dd($result);

    if($result){
            //message    
        session(['paymentResponseData'=> $message]);

        if(!empty($result['data']) and count($result['data'])>0){
                //something came in
            if($result['data']['status'] == 'success'){
                // the transaction was successful, you can deliver value
                /* 
                @ also remember that if this was a card transaction, you can store the 
                @ card authorization to enable you charge the customer subsequently. 
                @ The card authorization is in: 
                @ $result['data']['authorization']['authorization_code'];
                @ PS: Store the authorization with this email address used for this transaction. 
                @ The authorization will only work with this particular email.
                @ If the user changes his email on your system, it will be unusable
                */
                //echo "Transaction was successful";

                session(['paymentResponse'=>'success']);
                session(['payment_json'=> $result]);

            }else{
                session(['paymentResponse'=>'error']);
                // the transaction was not successful, do not deliver value'
                // print_r($result);  //uncomment this line to inspect the result, to check why it failed.
                //echo "Transaction was not successful: Last gateway response was: ".$result['data']['gateway_response'];
            }
        }else{
            session(['paymentResponse'=>'error']);
        }

    }else{
            //print_r($result);
        session(['paymentResponse'=>'error']);
        $message = "Opps! Something went wrong please check merchant account seeting.";
        session(['paymentResponseData'=> $message]);
    }
}else{
            //var_dump($request);
    session(['paymentResponse'=>'error']);
    $message = "Opps! Something went wrong please check merchant account seeting.";
    session(['paymentResponseData'=> $message]);
}



return redirect('checkout');
}



}
