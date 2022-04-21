<?php
namespace App\Http\Controllers\Web;
//use Mail;
//validator is builtin class in laravel
use App\Models\Web\Cart;
use App\Models\Web\Index;
use App\Models\Core\User;
//for password encryption or hash protected
use App\Models\Web\Products;
use App\Models\Web\Customers_basket;
//for authenitcate login data
use Carbon\Carbon;
//for requesting a value
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Models\Core\Campaign;

//for Carbon a value
use Lang;
use Session;
use Mail;
use DB;
class CartController extends Controller
{

    public function __construct(
        Index $index,
        Products $products,
        Cart $cart
    ) {
        $this->index = $index;
        $this->products = $products;
        $this->cart = $cart;
        $this->theme = new ThemeController();

    }


    public function cart_notification(Request $request)
    {
     if($request->key == env('APP_NEW_KEY')){
      $customers = Customers_basket::with('userDetail')->where('is_order',0)->where('created_at', '<=', Carbon::now()->subDay())->groupBy('customers_id')->get();
      
      if(!empty(  $customers )){
         
        foreach ($customers as $key => $value) {
           
            if($value->customers_id>0){
                $userDetail=$value->userDetail;
                
                $customerDeatil = Customers_basket::where(['is_order' => 0, 'customers_id' => $value->customers_id])->with('products')->with('products_image')->with('products_description')->with('camping_data')->where('created_at', '<=', Carbon::now()->subDay())->get();

                Mail::send('/mail/CartRemainder', ['cusData' => $customerDeatil], function($m) use ($userDetail) {
                    $m->to( $userDetail['email'] ?? '')->subject("Your Cart awaits. Complete your purchase before the campaign ends")->getSwiftMessage()
   // $m->to( 'harpreet.kaur@digimantra.com')->subject("Your Cart awaits. Complete your purchase before the campaign ends")->getSwiftMessage()
                    ->getHeaders()

                    ->addTextHeader('x-mailgun-native-send', 'true');

                });
            }


        }

    }
}
else{
    echo"Forbidden 404";
}

}

public function RemoveCustomerBasket(Request $request)
{
   if($request->key == env('APP_NEW_KEY')){
    $result=Customers_basket::whereRaw(' campaign_id=0 OR  campaign_id IN(SELECT id FROM campaigns WHERE status=0)' )->delete();   
    return $result;
}
else{
    echo"Forbidden 404";
}
}

    //myCart
    public function viewcart(Request $request)
    {

        $title = array('pageTitle' => Lang::get("website.View Cart"));
        $result = array();
        $data = array();
        $result['commonContent'] = $this->index->commonContent();
        $final_theme = $this->theme->theme();
        
        $result['cart'] = $this->cart->myCart($data);
        // echo "<pre>";
        // print_r($result);
        // die("Developer working");
        //apply coupon
        if (session('coupon')) {
            $session_coupon_data = session('coupon');
            session(['coupon' => array()]);
            $response = array();
            if (!empty($session_coupon_data)) {
                foreach ($session_coupon_data as $key => $session_coupon) {
                    $response = $this->cart->common_apply_coupon($session_coupon->code);
                }
            }
        }
        // return $result['cart'];
        return view("web.carts.viewcart", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }

    //eidtCart
    public function editcart(Request $request, $id, $slug)
    {

        $title = array('pageTitle' => Lang::get('website.Product Detail'));
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        $final_theme = $this->theme->theme();
        //min_price
        if (!empty($request->min_price)) {
            $min_price = $request->min_price;
        } else {
            $min_price = '';
        }

        //max_price
        if (!empty($request->max_price)) {
            $max_price = $request->max_price;
        } else {
            $max_price = '';
        }

        if (!empty($request->limit)) {
            $limit = $request->limit;
        } else {
            $limit = 15;
        }

        $products = $this->products->getProductsBySlug($slug);

        //category
        $category = $this->products->getCategoryByParent($products[0]->products_id);

        if (!empty($category)) {
            $category_slug = $category[0]->categories_slug;
            $category_name = $category[0]->categories_name;
        } else {
            $category_slug = '';
            $category_name = '';
        }
        $sub_category = $this->products->getSubCategoryByParent($products[0]->products_id);

        if (!empty($sub_category) and count($sub_category) > 0) {
            $sub_category_name = $sub_category[0]->categories_name;
            $sub_category_slug = $sub_category[0]->categories_slug;
        } else {
            $sub_category_name = '';
            $sub_category_slug = '';
        }

        $result['category_name'] = $category_name;
        $result['category_slug'] = $category_slug;
        $result['sub_category_name'] = $sub_category_name;
        $result['sub_category_slug'] = $sub_category_slug;

        $isFlash = $this->products->getFlashSale($products[0]->products_id);

        if (!empty($isFlash) and count($isFlash) > 0) {
            $type = "flashsale";
        } else {
            $type = "";
        }

        $data = array('page_number' => '0', 'type' => $type, 'products_id' => $products[0]->products_id, 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $detail = $this->products->products($data);
        $result['detail'] = $detail;

        $i = 0;
        foreach ($result['detail']['product_data'][0]->categories as $postCategory) {
            if ($i == 0) {
                $postCategoryId = $postCategory->categories_id;
                $i++;
            }
        }

        $data = array('page_number' => '0', 'type' => '', 'categories_id' => $postCategoryId, 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $simliar_products = $this->products->products($data);
        $result['simliar_products'] = $simliar_products;

        $cart = '';
        $result['cartArray'] = $this->products->cartIdArray($cart);

        //liked products
        $result['liked_products'] = $this->products->likedProducts();

        $data = array('page_number' => '0', 'type' => 'topseller', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $top_seller = $this->products->products($data);
        $result['top_seller'] = $top_seller;

        $result['cart'] = $this->cart->myCart($id);

        return view("web.detail", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);

    }

    //deleteCart
    public function deleteCart(Request $request)
    {

        $check = $this->cart->deleteCart($request);
        //apply coupon
        if (!empty(session('coupon')) and count(session('coupon')) > 0) {
            $session_coupon_data = session('coupon');
            session(['coupon' => array()]);
            if (count($session_coupon_data) == '2') {
                $response = array();
                if (!empty($session_coupon_data)) {
                    foreach ($session_coupon_data as $key => $session_coupon) {
                        $response = $this->cart->common_apply_coupon($session_coupon->code);
                    }
                }
            }
        }
        $link = url("/");
        if (!empty($request->type) and $request->type == 'header cart') {
            $result['commonContent'] = $this->index->commonContent();
            if (empty($check)) {
                $message = Lang::get("website.Cart item has been deleted successfully");
                return redirect($link)->with('message', $message);

            } else {
                $message = Lang::get("website.Cart item has been deleted successfully");
                $final_theme = $this->index->finalTheme();
                return view("web.headers.cartButtons.cartButton".$final_theme->header)->with('result', $result);
            }
        } else {
            if (empty($check)) {
                $message = Lang::get("website.Cart item has been deleted successfully");
                 
                return redirect($link)->with('message', $message);

            } else {
                $message = Lang::get("website.Cart item has been deleted successfully");
                return redirect()->back()->with('message', $message);
            }
        }
    }

    //getCart
    public function cartIdArray($request)
    {
        $this->cart->cartIdArray($request);
    }

    //updatesinglecart
    public function updatesinglecart(Request $request)
    {
        $this->cart->updatesinglecart($request);
        $final_theme = $this->index->finalTheme();
        return view("web.headers.cartButtons.cartButton".$final_theme->header)->with('result', $result);
    }

    //addToCart
    public function addToCart(Request $request)
    {
        $result = $this->cart->addToCart($request);
        // dd($result);
        if (!empty($result['status']) && $result['status'] == 'exceed') {
            return $result;
        }
        
        $final_theme = $this->index->finalTheme();
        return view("web.headers.cartButtons.cartButton".$final_theme->header)->with('result', $result);
    }

    //addToCartFixed
    public function addToCartFixed(Request $request)
    {
        $result['commonContent'] = $this->index->commonContent();        
        return view("web.headers.cartButtons.cartButtonFixed")->with('result', $result);
    }

    public function addToCartResponsive(Request $request)
    {
        $result['commonContent'] = $this->index->commonContent();        
        return view("web.headers.cartButtons.cartButton")->with('result', $result);
    }   

    //updateCart
    public function updateCartAjax(Request $request)
    {

        if (empty(session('customers_id'))) {
            $customers_id = '';
        } else {
            $customers_id = session('customers_id');
        }
        $session_id = Session::getId();
        
        foreach ($request->cart as $key => $customers_basket_id) {
            // print_r($customers_basket_id['value']);
            // echo "string";
            // print_r($request->quantity[$key]['value']);
            echo $this->cart->updateRecord($customers_basket_id['value'], $customers_id, $session_id, $request->quantity[$key]['value']);
        }
        $result['commonContent'] = $this->index->commonContent();  
        $result['cart'] = $this->cart->myCart(array());
        return view("web.carts.cartAjax")->with('result', $result);

    }
    public function updateCheckoutCartAjax(Request $request)
    {
        if (empty(session('customers_id'))) {
            $customers_id = '';
        } else {
            $customers_id = session('customers_id');
        }
        $session_id = Session::getId();
        foreach ($request->cart as $key => $customers_basket_id) {
            // print_r($customers_basket_id['value']);
            // echo "string";
            // print_r($request->quantity[$key]['value']);
            echo $this->cart->updateRecord($customers_basket_id['value'], $customers_id, $session_id, $request->quantity[$key]['value']);
        }
        $result['cart'] = $this->cart->myCart(array());
        return view("web.carts.checkoutAjax")->with('result', $result);

    }
    public function updateCart(Request $request)
    {
         
        if (empty(session('customers_id'))) {
            $customers_id = '';
        } else {
            $customers_id = session('customers_id');
        }
        $session_id = Session::getId();

        foreach ($request->cart as $key => $customers_basket_id) {
            $this->cart->updateRecord($customers_basket_id, $customers_id, $session_id, $request->quantity[$key]);
        }

        $message = Lang::get("website.Cart has been updated successfully");
        return redirect()->back()->with('message', $message);

    }

    //apply_coupon
    public function apply_coupon(Request $request)
    {

        $result = array();
        $coupon_code = $request->coupon_code;

        $carts = $this->cart->myCart(array());
        if (count($carts) > 0) {
            $response = $this->cart->common_apply_coupon($coupon_code);
        } else {
            $response = array('success' => '0', 'message' => Lang::get("website.Coupon can not be apllied to empty cart"));
        }
        print_r(json_encode($response));
    }

    //removeCoupon
    public function removeCoupon(Request $request)
    {
        $coupons_id = $request->id;

        $session_coupon_data = session('coupon');
        session(['coupon' => array()]);
        session(['coupon_discount' => 0]);
        $response = array();
        if (!empty($session_coupon_data)) {
            foreach ($session_coupon_data as $key => $session_coupon) {
                if ($session_coupon->coupans_id != $coupons_id) {
                    $response = $this->cart->common_apply_coupon($session_coupon->code);
                }
            }
        }

        $message = Lang::get("website.Coupon has been removed successfully");
        return redirect()->back()->with('message', $message);

    }

}
