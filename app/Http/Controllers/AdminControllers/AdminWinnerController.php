<?php
namespace App\Http\Controllers\AdminControllers;

use App;
use App\Http\Controllers\Controller;
use App\Models\Core\Categories;
use App\Models\Core\Images;
//for password encryption or hash protected
use App\Models\Core\Languages;
use App\Models\Core\Products;
use App\Models\Core\Setting;
use App\Models\Core\HomeWinners;
use DB;
use Illuminate\Http\Request;

//for authenitcate login data
use Lang;

//for requesting a value

class AdminWinnerController extends Controller
{

    public function __construct(Setting $setting)
    {
        $this->Setting = $setting;
    }

    //listingTaxClass
    public function homewinner(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.ListingWinners"));

        $result = array();
        $message = array();

        

        $banner = DB::table('home_winners')
            ->leftJoin('languages', 'languages.languages_id', '=', 'home_winners.languages_id')
            ->leftJoin('image_categories', 'home_winners.winner_image', '=', 'image_categories.image_id')
            ->select('home_winners.*', 'image_categories.path', 'languages.name as language_name');
            
        

            
            $banner->orderBy('home_winners.id', 'ASC')
         ->groupBy('home_winners.id');

        $banners = $banner->paginate(20);

        $result['message'] = $message;
        $result['sliders'] = $banners;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.settings.web.winners.index", $title)->with('result', $result);
    }

    //addTaxClass
    public function addhomewinner(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.AddWinnerImage"));

        $result = array();
        $message = array();

        //get function from other controller
        $myVar = new Categories();
        $categories = $myVar->getter(1);

        $images = new Images();
        $allimage = $images->getimages();

        $myVar = new Products();
        $products = $myVar->getter();

        //get function from other controller
        $myVar = new Languages();
        $result['languages'] = $myVar->getter();
        

        $result['message'] = $message;

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.settings.web.winners.add", $title)->with(['result' => $result, 'allimage' => $allimage]);
    }

    //addNewZone
    public function addNewHomeWinner(Request $request)
    {

        $images = new Images();
        $allimage = $images->getimages();

        //get function from other controller
        $myVar = new Languages();
        $result['languages'] = $myVar->getter();
        if ($request->image_id) {
            $uploadImage = $request->image_id;
        } else {
            $uploadImage = '';
        }

       HomeWinners::create([
            'winner_title' => $request->winner_title,
            'winner_prize' =>  $request->winner_prize,
                 'winner_image' =>  $request->image_id,
             'status' => $request->status,
            'languages_id' => $request->languages_id]);


        $message = Lang::get("labels.WinnerAddedMessage");
        return redirect()->back()->withErrors([$message]);
    }

    //editTaxClass
    public function editwinner(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.EditSliderImage"));
        $result = array();
        $result['message'] = array();

        $banners = HomeWinners::
            leftJoin('image_categories', 'home_winners.winner_image', '=', 'image_categories.image_id')
            ->select('home_winners.*', 'image_categories.path')
            ->where('home_winners.id', $request->id)
            ->groupBy('home_winners.id')
            ->first();
        $result['sliders'] = $banners;

        //get function from other controller
        $myVar = new Categories();
        $categories = $myVar->getter(1);

        $images = new Images();
        $allimage = $images->getimages();

        //get function from other controller
        $myVar = new Products();
        $products = $myVar->getter();

        //get function from other controller
        $myVar = new Languages();
        $result['languages'] = $myVar->getter();

        $result['categories'] = $categories;
        $result['products'] = $products;
        $result['commonContent'] = $this->Setting->commonContent();

        return view('admin.settings.web.winners.edit', $title)->with(['result' => $result, 'allimage' => $allimage]);
    }

    public function updateWinner(Request $request)
    {
        $myVar = new Languages();
        $languages = $myVar->getter();
        $expiryDate = str_replace('/', '-', $request->expires_date);
        $expiryDateFormate = date('Y-m-d H:i:s', strtotime($expiryDate));
        $type = $request->type;
        if ($request->image_id) {
            $uploadImage = $request->image_id;
            $countryUpdate =HomeWinners::where('id', $request->id)->update([
                'winner_title' => $request->winner_title,
                'winner_image' => $uploadImage,
                'status' => $request->status,
                'languages_id' => $request->languages_id,
                 'winner_prize' => $request->winner_prize
            ]);
        } else {
            $countryUpdate = HomeWinners::where('id', $request->id)->update([
               'winner_title' => $request->winner_title,
               'status' => $request->status,
               'languages_id' => $request->languages_id,
               'winner_prize' => $request->winner_prize
           ]);
        }

        $message = Lang::get("labels.WinnerUpdatedMessage");
        return redirect()->back()->withErrors([$message]);
    }

    //deleteCountry
    public function deleteWinner(Request $request)
    {
        HomeWinners::where('id', $request->id)->delete();
        return redirect()->back()->withErrors([Lang::get("labels.WinnerDeletedMessage")]);
    }
}
