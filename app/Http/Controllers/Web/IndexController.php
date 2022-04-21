<?php

namespace App\Http\Controllers\Web;

use App\Models\Web\Currency;
use App\Models\Web\Index;
use App\Models\Web\Languages;
use App\Models\Web\News;
use App\Models\Web\Order;
use App\Models\Web\Products;
use App\Models\web\Campaign;
use Auth;
use Carbon;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Mail;
use Lang;
use View;
use DB;
use Cookie;

class IndexController extends Controller
{

    public function __construct(
        Index $index,
        News $news,
        Languages $languages,
        Products $products,
        Currency $currency,
        Order $order
    ) {
        $this->index = $index;
        $this->order = $order;
        $this->news = $news;
        $this->languages = $languages;
        $this->products = $products;
        $this->currencies = $currency;
        $this->theme = new ThemeController();
    }

    public function index()
    {
        $title = array('pageTitle' => Lang::get("website.Home"));
        $final_theme = $this->theme->theme();
        /*********************************************************************/
        /**                   GENERAL CONTENT TO DISPLAY                    **/
        /*********************************************************************/
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        $title = array('pageTitle' => Lang::get("website.Home"));
        /********************************************************************/


        /**  SET LIMIT OF PRODUCTS  **/
        if (!empty($request->limit)) {
            $limit = $request->limit;
        } else {
            $limit = 12;
        }

        /**  MINIMUM PRICE **/
        if (!empty($request->min_price)) {
            $min_price = $request->min_price;
        } else {
            $min_price = '';
        }

        /**  MAXIMUM PRICE  **/
        if (!empty($request->max_price)) {
            $max_price = $request->max_price;
        } else {
            $max_price = '';
        }
        /*************************************************************************/
        /*********************************************************************/
        /**                     FETCH NEWEST PRODUCTS                       **/
        /*********************************************************************/

        $data = array('page_number' => '0', 'type' => '', 'limit' => 10, 'min_price' => $min_price, 'max_price' => $max_price);
        $newest_products = $this->products->products($data);

        $result['products'] = $newest_products;
        /*********************************************************************/
        /**                     Compare Counts                              **/
        /*********************************************************************/

        /*********************************************************************/

        /***************************************************************/
        /**   CART ARRAY RECORDS TO CHECK WETHER OR NOT DISPLAYED--   **/
        /**  --PRODUCT HAS BEEN ALREADY ADDE TO CART OR NOT           **/
        /***************************************************************/
        $cart = '';
        $result['cartArray'] = $this->products->cartIdArray($cart);
        /**************************************************************/

        //special products
        $data = array('page_number' => '0', 'type' => 'special', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $special_products = $this->products->products($data);
        $result['special'] = $special_products;
        //Flash sale

        $data = array('page_number' => '0', 'type' => 'flashsale', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $flash_sale = $this->products->products($data);
        $result['flash_sale'] = $flash_sale;
        // //top seller
        $data = array('page_number' => '0', 'type' => 'topseller', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $top_seller = $this->products->products($data);
        $result['top_seller'] = $top_seller;

        //most liked
        $data = array('page_number' => '0', 'type' => 'mostliked', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $most_liked = $this->products->products($data);
        $result['most_liked'] = $most_liked;

        //is feature
        $data = array('page_number' => '0', 'type' => 'is_feature', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $featured = $this->products->products($data);
        $result['featured'] = $featured;

        $data = array('page_number' => '0', 'type' => '', 'limit' => '15', 'is_feature' => 1);
        $news = $this->news->getAllNews($data);
        $result['news'] = $news;
        $campaigns_sold = DB::table('campaigns')


            ->Join('products', 'campaigns.product_id', '=', 'products.products_id')
            ->leftJoin('image_categories', 'image_categories.image_id', '=', 'products.products_image')

            ->select('campaigns.id as campaigns_id', 'campaigns.title as campaigns_title', 'campaigns.end_date', 'campaigns.reward_id', 'products.products_id', 'products.products_price', 'products.products_image', 'no_of_orders', 'no_customers', 'products.products_image as products_featured_img', 'image_categories.path', 'campaigns.campaign_type', 'campaigns.start_date')

            ->orderBy('campaigns.id', 'desc')
            ->groupBy('campaigns.id')
            ->where('campaigns.status', '0')
            ->get();
        $abc = 0;


        foreach ($campaigns_sold as $date1) {
            $campaigns_sold_id = $date1->campaigns_id;
            $campaigns = DB::table('campaigns')
                ->select('campaigns.id as campaigns_id', 'campaigns.title as campaigns_title', 'campaigns.end_date', 'campaigns.reward_id', 'products.products_id', 'products.products_price', 'products.products_slug', 'no_of_orders', 'no_customers', 'campaigns.status', 'image_categories.path', 'campaigns.campaign_type', 'campaigns.start_date')
                ->Join('products', 'campaigns.product_id', '=', 'products.products_id')
                ->leftJoin('image_categories', 'image_categories.image_id', '=', 'products.products_image')
                ->where('campaigns.id', '=', $campaigns_sold_id)
                ->where('campaigns.status', 0)
                ->first();
            $result['campaigns_sold'][$abc] = $campaigns;
            $product_id = $date1->products_id;


            $products_description = DB::table('products_description')
                ->select('products_description.products_name', 'products_description.products_description')
                ->where('products_id', '=', $product_id)
                ->first();

            $product_price = DB::table('products')
                ->select('products.products_price')
                ->where('products_id', '=', $product_id)->first();

            $result['product_price'][$abc] = $product_price;
            $result['products_description'][$abc] = $products_description;
            $products_img_id = DB::table('products_images')
                ->select('image')
                ->where('products_id', '=', $product_id)
                ->first();
            $img_id = $products_img_id->image;
            $products_img = DB::table('images')
                ->select('name')
                ->where('id', '=', $img_id)
                ->first();
            $products_path = DB::table('image_categories')
                ->select('path')
                ->where('image_id', '=', $img_id)
                ->where('image_type', '=', 'ACTUAL')
                ->first();
            $products_featured_img = DB::table('image_categories')
                ->select('path')
                ->where('image_id', '=', $date1->products_featured_img)
                ->where('image_type', '=', 'ACTUAL')
                ->first();
            $result['products_featured_img'][$abc] = $products_featured_img;
            $result['products_img'][$abc] = $products_img;
            $result['products_img_path'][$abc] = $products_path;
            $reward_id = $date1->reward_id;

            //6 2 3 4


            $rewards = DB::table('rewards')
                ->select('rewards.title as reward_title', 'rewards.reward_image', 'rewards.reward_description')
                ->where('id', '=', $reward_id)
                ->first();
            $result['sold_rewards'][$abc] = $rewards;
            $abc++;
        }



        //end sold out
        $campaigns = DB::table('campaigns')
            ->select('campaigns.id as campaigns_id', 'campaigns.title as campaigns_title', 'campaigns.end_date', 'campaigns.reward_id', 'products.products_id', 'products.products_price', 'no_of_orders', 'no_customers', 'products.products_image as products_featured_img', 'campaigns.campaign_type', 'campaigns.start_date', 'campaigns.is_banner_active')
            ->Join('products', 'campaigns.product_id', '=', 'products.products_id')
            ->orderBy('campaigns.id', 'desc')
            ->where('status', '1')->whereRaw('campaigns.start_date <= CURDATE()')
            ->get();
        $abc = 0;

        foreach ($campaigns as $date1) {
            $campaigns_id = $date1->campaigns_id;
            $campaigns = DB::table('campaigns')
                ->select('campaigns.id as campaigns_id', 'campaigns.show_date as show_date', 'campaigns.title as campaigns_title', 'campaigns.end_date', 'campaigns.reward_id', 'products.products_id', 'products.products_price', 'products.products_slug', 'no_of_orders', 'no_customers', 'campaigns.campaign_type', 'campaigns.start_date', 'campaigns.is_banner_active')
                ->Join('products', 'campaigns.product_id', '=', 'products.products_id')
                ->where('campaigns.id', '=', $campaigns_id)
                ->first();
            $result['campaigns'][$abc] = $campaigns;
            $product_id = $date1->products_id;

            //  $sumofCamOrders = DB::table('orders')
            // ->where('campaign_id', '=', $product_id)->count();
            // $total_order = DB::table('orders_products')->where('campaign_id',$campaigns_id)->distinct('orders_id')->count();
            $total_order = DB::table('tickets')->where('campaign_id', $campaigns_id)->where('type', 'O')->count();
            if ($total_order == $campaigns->no_of_orders) {
                DB::table('campaigns')->where('id', $campaigns_id)->update(['status' => 0]);
            }
            $products_description = DB::table('products_description')
                ->select('products_description.products_name', 'products_description.products_description')
                ->where('products_id', '=', $product_id)
                ->first();

            $product_price = DB::table('products')
                ->select('products.products_price')
                ->where('products_id', '=', $product_id)->first();

            $result['product_price'][$abc] = $product_price;
            $result['products_description'][$abc] = $products_description;
            $products_img_id = DB::table('products_images')
                ->select('image')
                ->where('products_id', '=', $product_id)
                ->first();
            $img_id = $products_img_id->image;
            $products_img = DB::table('images')
                ->select('name')
                ->where('id', '=', $img_id)
                ->first();
            $products_path = DB::table('image_categories')
                ->select('path')
                ->where('image_id', '=', $img_id)
                ->where('image_type', '=', 'ACTUAL')
                ->first();
            $products_featured_img = DB::table('image_categories')
                ->select('path')
                ->where('image_id', '=', $date1->products_featured_img)
                ->where('image_type', '=', 'ACTUAL')
                ->first();
            $result['products_featured_img'][$abc] = $products_featured_img;
            $result['products_img'][$abc] = $products_img;
            $result['products_img_path'][$abc] = $products_path;
            $reward_id = $date1->reward_id;
            $rewards = DB::table('rewards')
                ->select('rewards.title as reward_title', 'rewards.reward_image', 'rewards.reward_description')
                ->where('id', '=', $reward_id)
                ->first();
            $result['rewards'][$abc] = $rewards;
            $result['total_order'][$abc] = $total_order;
            $abc++;
        }


        $currentDate = Carbon\Carbon::now();
        $currentDate = $currentDate->toDateTimeString();

        $slides = $this->index->slides($currentDate);
        $result['slides'] = $slides;
        $result['winners'] = $this->index->winners();
        //liked products
        $result['liked_products'] = $this->products->likedProducts();

        $orders = $this->order->getOrders();
        if (count($orders) > 0) {
            $allOrders = $orders;
        } else {
            $allOrders = $this->order->allOrders();
        }

        $temp_i = array();
        foreach ($allOrders as $orders_data) {
            $mostOrdered = $this->order->mostOrders($orders_data);
            foreach ($mostOrdered as $mostOrderedData) {
                $temp_i[] = $mostOrderedData->products_id;
            }
        }
        $detail = array();
        $temp_i = array_unique($temp_i);
        foreach ($temp_i as $temp_data) {
            $data = array('page_number' => '0', 'type' => 'topseller', 'products_id' => $temp_data, 'limit' => 7, 'min_price' => '', 'max_price' => '');
            $single_product = $this->products->products($data);
            if (!empty($single_product['product_data'][0])) {
                $detail[] = $single_product['product_data'][0];
            }
        }

        $result['weeklySoldProducts'] = array('success' => '1', 'product_data' => $detail, 'message' => "Returned all products.", 'total_record' => count($detail));

        session(['paymentResponseData' => '']);

        session(['paymentResponse' => '']);
        session(['payment_json', '']);
        // echo "<pre>";
        // print_r($result['campaigns_sold']);
        // die();
        return view("web.index", ['title' => $title, 'final_theme' => $final_theme])->with(['result' => $result]);
    }
    public function CampaignsDetail(request $request, $mycampaignsid)
    {
        $title = array('pageTitle' => Lang::get("website.Home"));
        $final_theme = $this->theme->theme();
        /*********************************************************************/
        /**                   GENERAL CONTENT TO DISPLAY                    **/
        /*********************************************************************/
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        $title = array('pageTitle' => Lang::get("website.Home"));
        /********************************************************************/


        /**  SET LIMIT OF PRODUCTS  **/
        if (!empty($request->limit)) {
            $limit = $request->limit;
        } else {
            $limit = 12;
        }

        /**  MINIMUM PRICE **/
        if (!empty($request->min_price)) {
            $min_price = $request->min_price;
        } else {
            $min_price = '';
        }

        /**  MAXIMUM PRICE  **/
        if (!empty($request->max_price)) {
            $max_price = $request->max_price;
        } else {
            $max_price = '';
        }
        /*************************************************************************/
        /*********************************************************************/
        /**                     FETCH NEWEST PRODUCTS                       **/
        /*********************************************************************/

        $data = array('page_number' => '0', 'type' => '', 'limit' => 10, 'min_price' => $min_price, 'max_price' => $max_price);
        $newest_products = $this->products->products($data);
        $result['products'] = $newest_products;
        /*********************************************************************/
        /**                     Compare Counts                              **/
        /*********************************************************************/

        /*********************************************************************/

        /***************************************************************/
        /**   CART ARRAY RECORDS TO CHECK WETHER OR NOT DISPLAYED--   **/
        /**  --PRODUCT HAS BEEN ALREADY ADDE TO CART OR NOT           **/
        /***************************************************************/
        $cart = '';
        $result['cartArray'] = $this->products->cartIdArray($cart);
        /**************************************************************/

        //special products
        $data = array('page_number' => '0', 'type' => 'special', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $special_products = $this->products->products($data);
        $result['special'] = $special_products;
        //Flash sale

        $data = array('page_number' => '0', 'type' => 'flashsale', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $flash_sale = $this->products->products($data);
        $result['flash_sale'] = $flash_sale;
        // //top seller
        $data = array('page_number' => '0', 'type' => 'topseller', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $top_seller = $this->products->products($data);
        $result['top_seller'] = $top_seller;

        //most liked
        $data = array('page_number' => '0', 'type' => 'mostliked', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $most_liked = $this->products->products($data);
        $result['most_liked'] = $most_liked;

        //is feature
        $data = array('page_number' => '0', 'type' => 'is_feature', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $featured = $this->products->products($data);
        $result['featured'] = $featured;

        $data = array('page_number' => '0', 'type' => '', 'limit' => '15', 'is_feature' => 1);
        $news = $this->news->getAllNews($data);
        $result['news'] = $news;
        //current time
        // ->select('campaigns.id','campaigns.title','products.products_id','products.products_price','products_description.products_name','images.name as products_img')
        // ->Join('products','campaigns.product_id','=','products.products_id')
        // ->orderBy('campaigns.id','asc')
        // ->take(3)
        //   ->get();
        //->Join('products_description','products.products_id','=','products_description.products_id')
        //->Join('products_images','campaigns.product_id','=','products_images.products_id')
        //->Join('images','products_images.image','=','images.id')
        //->Join('rewards','campaigns.reward_id','=','rewards.id')
        $campaigns = DB::table('campaigns')
            ->select('campaigns.id as campaigns_id', 'campaigns.title as campaigns_title', 'campaigns.end_date', 'campaigns.reward_id', 'products.products_id', 'products.products_price', 'no_of_orders', 'products.products_image as products_featured_img', 'campaigns.campaign_type', 'campaigns.start_date')
            ->Join('products', 'campaigns.product_id', '=', 'products.products_id')
            ->orderBy('campaigns.id', 'asc')
            ->get();
        $abc = 0;

        foreach ($campaigns as $date1) {

            $campaigns_id = $date1->campaigns_id;
            $campaigns = DB::table('campaigns')
                ->select('campaigns.id as campaigns_id', 'campaigns.title as campaigns_title', 'campaigns.end_date', 'campaigns.reward_id', 'products.products_id', 'products.products_price', 'products.products_slug', 'no_of_orders', 'campaigns.campaign_type', 'campaigns.start_date')
                ->Join('products', 'campaigns.product_id', '=', 'products.products_id')
                ->where('campaigns.id', '=', $campaigns_id)
                ->first();
            $result['campaigns'][$abc] = $campaigns;
            $product_id = $date1->products_id;

            //  $sumofCamOrders = DB::table('orders')
            // ->where('campaign_id', '=', $product_id)->count();
            // $total_order = DB::table('orders_products')->where('campaign_id',$campaigns_id)->distinct('orders_id')->count();
            $total_order = DB::table('tickets')->where('campaign_id', $campaigns_id)->where('type', 'O')->count();
            $products_description = DB::table('products_description')
                ->select('products_description.products_name', 'products_description.products_description')
                ->where('products_id', '=', $product_id)
                ->first();

            $product_price = DB::table('products')
                ->select('products.products_price')
                ->where('products_id', '=', $product_id)->first();

            $result['product_price'][$abc] = $product_price;
            $result['products_description'][$abc] = $products_description;
            $products_img_id = DB::table('products_images')
                ->select('image')
                ->where('products_id', '=', $product_id)
                ->first();
            $img_id = $products_img_id->image;
            $products_img = DB::table('images')
                ->select('name')
                ->where('id', '=', $img_id)
                ->first();
            $products_path = DB::table('image_categories')
                ->select('path')
                ->where('image_id', '=', $img_id)
                ->where('image_type', '=', 'ACTUAL')
                ->first();
            $products_featured_img = DB::table('image_categories')
                ->select('path')
                ->where('image_id', '=', $date1->products_featured_img)
                ->where('image_type', '=', 'ACTUAL')
                ->first();
            $result['products_featured_img'][$abc] = $products_featured_img;
            $result['products_img'][$abc] = $products_img;
            $result['products_img_path'][$abc] = $products_path;
            $reward_id = $date1->reward_id;
            $rewards = DB::table('rewards')
                ->select('rewards.title as reward_title', 'rewards.reward_image', 'rewards.reward_description')
                ->where('id', '=', $reward_id)
                ->first();
            $result['rewards'][$abc] = $rewards;
            $result['total_order'][$abc] = $total_order;
            $abc++;
        }

        $currentDate = Carbon\Carbon::now();
        $currentDate = $currentDate->toDateTimeString();

        $slides = $this->index->slides($currentDate);
        $result['slides'] = $slides;
        //liked products
        $result['liked_products'] = $this->products->likedProducts();

        $orders = $this->order->getOrders();
        if (count($orders) > 0) {
            $allOrders = $orders;
        } else {
            $allOrders = $this->order->allOrders();
        }

        $temp_i = array();
        foreach ($allOrders as $orders_data) {
            $mostOrdered = $this->order->mostOrders($orders_data);
            foreach ($mostOrdered as $mostOrderedData) {
                $temp_i[] = $mostOrderedData->products_id;
            }
        }
        $detail = array();
        $temp_i = array_unique($temp_i);
        foreach ($temp_i as $temp_data) {
            $data = array('page_number' => '0', 'type' => 'topseller', 'products_id' => $temp_data, 'limit' => 7, 'min_price' => '', 'max_price' => '');
            $single_product = $this->products->products($data);
            if (!empty($single_product['product_data'][0])) {
                $detail[] = $single_product['product_data'][0];
            }
        }

        $result['weeklySoldProducts'] = array('success' => '1', 'product_data' => $detail, 'message' => "Returned all products.", 'total_record' => count($detail));

        session(['paymentResponseData' => '']);

        session(['paymentResponse' => '']);
        session(['payment_json', '']);
        return view("web.campaigns_detail", ['title' => $title, 'final_theme' => $final_theme])->with(['result' => $result])->with('mycampaignsid', $mycampaignsid);
    }
    public function maintance()
    {
        return view('errors.maintance');
    }

    public function error()
    {
        return view('errors.general_error', ['msg' => $msg]);
    }

    public function logout()
    {
        Auth::guard('customer')->logout();
        return redirect()->back();
    }
    public function test()
    {
        $productcategories = $this->products->productCategories1();
        echo print_r($productcategories);
    }

    private function setHeader($header_id)
    {
        $count = $this->order->countCompare();
        $languages = $this->languages->languages();
        $currencies = $this->currencies->getter();
        $productcategories = $this->products->productCategories();
        $title = array('pageTitle' => Lang::get("website.Home"));
        $result = array();
        $result['commonContent'] = $this->index->commonContent();

        if ($header_id == 1) {

            $header = (string) View::make('web.headers.headerOne', ['count' => $count, 'currencies' => $currencies, 'languages' => $languages, 'productcategories' => $productcategories, 'result' => $result])->render();
        } elseif ($header_id == 2) {
            $header = (string) View::make('web.headers.headerTwo');
        } elseif ($header_id == 3) {
            $header = (string) View::make('web.headers.headerThree')->render();
        } elseif ($header_id == 4) {
            $header = (string) View::make('web.headers.headerFour')->render();
        } elseif ($header_id == 5) {
            $header = (string) View::make('web.headers.headerFive')->render();
        } elseif ($header_id == 6) {
            $header = (string) View::make('web.headers.headerSix')->render();
        } elseif ($header_id == 7) {
            $header = (string) View::make('web.headers.headerSeven')->render();
        } elseif ($header_id == 8) {
            $header = (string) View::make('web.headers.headerEight')->render();
        } elseif ($header_id == 9) {
            $header = (string) View::make('web.headers.headerNine')->render();
        } else {
            $header = (string) View::make('web.headers.headerTen')->render();
        }
        return $header;
    }

    private function setBanner($banner_id)
    {
        if ($banner_id == 1) {
            $banner = (string) View::make('web.banners.banner1')->render();
        } elseif ($banner_id == 2) {
            $banner = (string) View::make('web.banners.banner2')->render();
        } elseif ($banner_id == 3) {
            $banner = (string) View::make('web.banners.banner3')->render();
        } elseif ($banner_id == 4) {
            $banner = (string) View::make('web.banners.banner4')->render();
        } elseif ($banner_id == 5) {
            $banner = (string) View::make('web.banners.banner5')->render();
        } elseif ($banner_id == 6) {
            $banner = (string) View::make('web.banners.banner6')->render();
        } elseif ($banner_id == 7) {
            $banner = (string) View::make('web.banners.banner7')->render();
        } elseif ($banner_id == 8) {
            $banner = (string) View::make('web.banners.banner8')->render();
        } elseif ($banner_id == 9) {
            $banner = (string) View::make('web.banners.banner9')->render();
        } elseif ($banner_id == 10) {
            $banner = (string) View::make('web.banners.banner10')->render();
        } elseif ($banner_id == 11) {
            $banner = (string) View::make('web.banners.banner11')->render();
        } elseif ($banner_id == 12) {
            $banner = (string) View::make('web.banners.banner12')->render();
        } elseif ($banner_id == 13) {
            $banner = (string) View::make('web.banners.banner13')->render();
        } elseif ($banner_id == 14) {
            $banner = (string) View::make('web.banners.banner14')->render();
        } elseif ($banner_id == 15) {
            $banner = (string) View::make('web.banners.banner15')->render();
        } elseif ($banner_id == 16) {
            $banner = (string) View::make('web.banners.banner16')->render();
        } elseif ($banner_id == 17) {
            $banner = (string) View::make('web.banners.banner17')->render();
        } elseif ($banner_id == 18) {
            $banner = (string) View::make('web.banners.banner18')->render();
        } elseif ($banner_id == 19) {
            $banner = (string) View::make('web.banners.banner19')->render();
        } else {
            $banner = (string) View::make('web.banners.banner20')->render();
        }
        return $banner;
    }

    private function setFooter($footer_id)
    {
        if ($footer_id == 1) {
            $footer = (string) View::make('web.footers.footer1')->render();
        } elseif ($footer_id == 2) {
            $footer = (string) View::make('web.footers.footer2')->render();
        } elseif ($footer_id == 3) {
            $footer = (string) View::make('web.footers.footer3')->render();
        } elseif ($footer_id == 4) {
            $footer = (string) View::make('web.footers.footer4')->render();
        } elseif ($footer_id == 5) {
            $footer = (string) View::make('web.footers.footer5')->render();
        } elseif ($footer_id == 6) {
            $footer = (string) View::make('web.footers.footer6')->render();
        } elseif ($footer_id == 7) {
            $footer = (string) View::make('web.footers.footer7')->render();
        } elseif ($footer_id == 8) {
            $footer = (string) View::make('web.footers.footer8')->render();
        } elseif ($footer_id == 9) {
            $footer = (string) View::make('web.footers.footer9')->render();
        } else {
            $footer = (string) View::make('web.footers.footer10')->render();
        }
        return $footer;
    }
    //page
    public function page(Request $request)
    {
        $name = '';
        if (!empty($request->name)) {

            $name = strtolower($request->name);
            return redirect('page/' . $name);
        }

        $pages = $this->order->getPages($request);
        if (count($pages) > 0) {
            $title = array('pageTitle' => $pages[0]->name);
            $final_theme = $this->theme->theme();
            $result['commonContent'] = $this->index->commonContent();
            $result['pages'] = $pages;
            return view("web.page", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        } else {
            return redirect()->intended('/');
        }
    }
    public function page_slug($slug, Request $request)
    {

        $pages = $this->order->getPages_slug($slug);
        if (count($pages) > 0) {
            $title = array('pageTitle' => $pages[0]->name);
            $final_theme = $this->theme->theme();
            $result['commonContent'] = $this->index->commonContent();

            $result['pages'] = $pages;
            return view("web.page", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        } else {
            return redirect()->intended('/');
        }
    }
    //myContactUs
    public function contactus(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Contact Us"));
        $result = array();
        $final_theme = $this->theme->theme();
        $result['commonContent'] = $this->index->commonContent();

        return view("web.contact-us", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }
    //processContactUs
    public function processContactUs(Request $request)
    {
        $validatedData = $request->validate([
            'name' => ['required'],
            'email' => ['required'],
            'message' => ['required'],
        ]);
        $name = $request->name;
        $email = $request->email;
        $subject = $request->subject;
        $message = $request->message;
        $from = "noreply@winztime.com";
        $result['commonContent'] = $this->index->commonContent();

        $data = array('name' => $name, 'email' => $email, 'subject' => $subject, 'message' => $message, 'adminEmail' => $result['commonContent']['setting'][3]->value);

        // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
        // echo $data['adminEmail'];
        //  mail($data['adminEmail'], "subject", "message");
        Mail::send('/mail/contactUs', ['data' => $data], function ($m) use ($data) {
            $m->to($data['adminEmail'])->subject(Lang::get("website.contact us title"))->getSwiftMessage()
                ->getHeaders()
                ->addTextHeader('x-mailgun-native-send', 'true');
        });
        // Mail::send('/mail/contactUs', ['data' => $data], function ($m) use ($data) {
        //     $m->to("shahrooz.devronix@gmail.com")->subject(Lang::get("website.contact us title"))->getSwiftMessage()
        //         ->getHeaders()
        //         ->addTextHeader('x-mailgun-native-send', 'true');
        // });

        return redirect()->back()->with('success', Lang::get("website.contact us message"));
    }

    //setcookie
    public function setcookie(Request $request)
    {
        Cookie::queue('cookies_data', 1, 4000);
        return json_encode(array('accept' => 'yes'));
    }

    //newsletter
    public function newsletter(Request $request)
    {
        if (!empty(auth()->guard('customer')->user()->id)) {
            $customers_id = auth()->guard('customer')->user()->id;
            $existUser = DB::table('customers')
                ->leftJoin('users', 'customers.customers_id', '=', 'users.id')
                ->where('customers.fb_id', '=', $customers_id)
                ->first();


            if ($existUser) {
                DB::table('customers')->where('user_id', '=', $customers_id)->update([
                    'customers_newsletter' => 1,
                ]);
            } else {
                DB::table('customers')->insertGetId([
                    'user_id' => $customers_id,
                    'customers_newsletter' => 1,
                ]);
            }
        }
        session(['newsletter' => 1]);

        return 'subscribed';
    }


    public function subscribeMail(Request $request)
    {
        $settings = $this->index->commonContent();
        if (!empty($settings['setting'][122]->value) and !empty($settings['setting'][122]->value)) {
            $email = $request->email;

            $list_id = $settings['setting'][123]->value;
            $api_key = $settings['setting'][122]->value;

            $data_center = substr($api_key, strpos($api_key, '-') + 1);

            $url = 'https://' . $data_center . '.api.mailchimp.com/3.0/lists/' . $list_id . '/members';

            $json = json_encode([
                'email_address' => $email,
                'status'        => 'subscribed', //pass 'subscribed' or 'pending'
            ]);

            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_USERPWD, 'user:' . $api_key);
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 10);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
            $result = curl_exec($ch);
            $status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);

            if ($status_code == 200) {
                //subscribed
                print '1';
            } elseif ($status_code == 400) {
                print '2';
            } else {
                print '0';
            }
        } else {
            print '0';
        }
    }

    //setsession
    public function setSession(Request $request)
    {
        session(['device_id' => $request->device_id]);
    }

    public function network(Request $request)
    {
        // echo $request->value;
        // $value = $request->session()->get('key');
        // echo($value)die('aa');
        $customers_email = auth()->guard('customer')->user()->email;
        $customers_first = auth()->guard('customer')->user()->first_name;
        $customers_last = auth()->guard('customer')->user()->last_name;
        // $existUser = DB::table('customers')
        //               ->leftJoin('users','customers.customers_id','=','users.id')
        //               ->where('customer.id', '=', $customers_id)
        //               ->first();
        // print_r($customers_last);die('aaa');
        $apikey = env('NGENIUS_API');     // enter your API key here
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, env('NGENIUS_URL') . "/identity/auth/access-token");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            "accept: application/vnd.ni-identity.v1+json",
            "authorization: Basic " . $apikey,
            "content-type: application/vnd.ni-identity.v1+json"
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, 1);
        // curl_setopt($ch, CURLOPT_POSTFIELDS,  "{\"realmName\":\"ni\"}"); 
        $output = json_decode(curl_exec($ch));
        // print_r($output);die();
        $access_token = $output->access_token;
        // echo $access_token;

        $val = floatval($request->value);
        $address = $request->address;
        $city = $request->city;

        // echo($address);die('aa');
        // echo round($val);
        $postData = array(
            "action" => "SALE",
            "amount" => array(
                "currencyCode" => "AED",
                "value" => $val * 100
            ),
            "merchantAttributes" => array(
                "redirectUrl" => url('/') . "/checkout",
                "skipConfirmationPage" => true
            ),
            "emailAddress" => $customers_email,
            "billingAddress" => array(
                "firstName" => $customers_first,
                "lastName" => $customers_last,
                "address1" => $address,
                "city" => $city,
                "countryCode" => "UAE"
            )
        );



        $outlet = env('NGENIUS_OUTLET');
        $token = $access_token;
        // echo($token);
        $json = json_encode($postData);
        // print_r($json);die();
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, env('NGENIUS_URL') . "/transactions/outlets/" . $outlet . "/orders");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            "Authorization: Bearer " . $token,
            "Content-Type: application/vnd.ni-payment.v2+json",
            "Accept: application/vnd.ni-payment.v2+json"
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $json);

        $output = json_decode(curl_exec($ch));
        // print_r($output);die();
        // $order_reference = $output->reference; 
        $order_paypage_url = $output->_links->payment->href;
        // echo $order_paypage_url;
        curl_close($ch);
        // return redirect($order_paypage_url);
        return $order_paypage_url;
        // header("Location: " .$output->_links->payment->href);
        // echo "working";
    }

    public function network_get(Request $request)
    {
        // echo $request->value;

        $apikey = env('NGENIUS_API');     // enter 
        // enter your API key here
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, env('NGENIUS_URL') . "/identity/auth/access-token");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            "accept: application/vnd.ni-identity.v1+json",
            "authorization: Basic " . $apikey,
            "content-type: application/vnd.ni-identity.v1+json"
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, 1);
        // curl_setopt($ch, CURLOPT_POSTFIELDS,  "{\"realmName\":\"ni\"}"); 
        $output = json_decode(curl_exec($ch));
        $access_token = $output->access_token;
        // echo $access_token;

        $ref = $request->ref;
        // $outlet = "53dfbb33-b5d2-41c2-ba48-0beb2bf40af7";
        $outlet = env('NGENIUS_OUTLET');
        $token = $access_token;
        // echo($token);
        // $json = json_encode($postData);
        // print_r($json);
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL,  env('NGENIUS_URL') . "/transactions/outlets/" . $outlet . "/orders/" . $ref . "");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            "Authorization: Bearer " . $token,
            "Content-Type: application/vnd.ni-payment.v2+json",
            "Accept: application/vnd.ni-payment.v2+json"
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        // curl_setopt($ch, CURLOPT_POST, 1); 
        // curl_setopt($ch, CURLOPT_POSTFIELDS, $json); 

        $output = json_decode(curl_exec($ch));
        curl_close($ch);
        // return redirect($order_paypage_url);
        return json_encode($output->_embedded->payment);
        // header("Location: " .$output->_links->payment->href);
        // echo "working";
    }
}
