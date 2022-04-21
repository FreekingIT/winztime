<?php
namespace App\Http\Controllers\Web;

use App\Http\Controllers\Web\AlertController;
use App\Models\Web\Cart;
use App\Models\Web\Currency;
use App\Models\Web\Customer;
use App\Models\Web\Index;
use App\Models\Web\Languages;
use App\Models\Web\Products;
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
use Hash;
use Illuminate\Support\Facades\Crypt;

class ReferController extends Controller
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

	public function saveReferal(Request $request){
		$referedID = $request->referalID;
		
	}
	public function index()
    {
    	$title = array('pageTitle' => Lang::get("website.Profile"));
        $result['commonContent'] = $this->index->commonContent();
        $final_theme = $this->theme->theme();
    	$user = Auth::guard('customer')->user()->id;
    	$encrypted = Crypt::encryptString($user);
        return view('web.refer-a-friend', ['user' => $user,'result' => $result, 'title' => $title, 'final_theme' => $final_theme]);

	}
}