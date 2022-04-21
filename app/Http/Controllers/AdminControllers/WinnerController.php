<?php



namespace App\Http\Controllers\AdminControllers;



use App\Http\Controllers\AdminControllers\SiteSettingController;

use App\Http\Controllers\Controller;

use App\Models\Core\Winner;

use App\Models\Core\Setting;

use Illuminate\Http\Request;

use App\Models\Core\Images;

use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\Lang;

use Illuminate\Support\Facades\Storage;

use Illuminate\Support\Facades\Validator;

use Illuminate\Support\Str;



class WinnerController extends Controller

{

    //

    public function __construct(Winner $winner, Setting $setting,Images $images)

    {

        $this->Winner = $winner;

        $this->myVarSetting = new SiteSettingController($setting);

        $this->Setting = $setting;

        $this->images = $images;



    }



    public function display(Request $request)

    {



        $title = array('pageTitle' => Lang::get("labels.ListingWinners"));

        $result = array();

        $message = array();

        $winners = Winner::join('users', 'users.id', '=', 'winners.customers_id')->sortable()

        ->orderBy('winners.created_at', 'DESC')

        ->paginate(7);

        $result['winners'] = $winners;
        // dd($result['winners']);
        //get function from other controller

        $result['currency'] = $this->myVarSetting->getSetting();

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.winners.index", $title)->with('result', $result)->with('winners', $winners);



    }



    public function filter(Request $request)

    {



        $result = array();

        $message = array();

        $title = array('pageTitle' => Lang::get("labels.EditSubCategories"));

        $name = $request->FilterBy;

        $param = $request->parameter;

        switch ($name) {

            case 'Code':$winners = Winner::sortable()->where('code', 'LIKE', '%' . $param . '%')

            ->orderBy('created_at', 'DESC')

            ->paginate(7);



            break;

            case 'WinnerType':$winners = Winner::sortable()->where('discount_type', 'LIKE', '%' . $param . '%')

            ->orderBy('created_at', 'DESC')

            ->paginate(7);



            break;

            case 'WinnerAmount':

            $winners = Winner::sortable()->where('amount', 'LIKE', '%' . $param . '%')

            ->orderBy('created_at', 'DESC')

            ->paginate(7);



            break;

            case 'Description':

            $winners = Winner::sortable()->where('description', 'LIKE', '%' . $param . '%')

            ->orderBy('created_at', 'DESC')

            ->paginate(7);



            break;

            default:



            break;

        }



        $result['winners'] = $winners;

        //get function from other controller

        $result['currency'] = $this->myVarSetting->getSetting();

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.winners.index", $title)->with('result', $result)->with('winners', $winners)->with('name', $name)->with('param', $param);

    }



    public function add(Request $request)

    {



        $allimage = $this->images->getimages();

        $title = array('pageTitle' => Lang::get("labels.AddWinner"));

        $result = array();

        $message = array();

        $result['message'] = $message;

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.winners.add", $title)->with('result', $result)->with('allimage', $allimage);

    }



    public function insert(Request $request)

    {

        $validatedData = $request->validate([

            'image' => 'required',

            

        ]);

        $data = $request->all();

        if($request->hasFile('image'))

        {



            $extension = $request->image->extension();

            $nam = rand(10,100);

            // $request->image->storeAs('/', $nam.".".$extension);

            $imageName = $nam.".".$extension;

            $request->image->move(public_path('images'), $imageName);

            $url = $nam.".".$extension;

            $data['winner_image'] = $url;

        }



        $winner_Data = Winner::create($data);

         

        return redirect('admin/winner/add')->with('success', 'Successful!, Winner Created!');



    }



    public function edit(Request $request, $id)

    {

        $result = array();

        $message = array();

        $result['message'] = $message;

        //coupon

        $winner = $this->Winner->getwinner($id);

        $result['winner'] = $winner;

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.winners.edit")->with('result', $result);

    }



    public function update(Request $request)

    {



        $data = $request->all();

        if($request->hasFile('image') && $request->image != '')

        {

            $extension = $request->image->extension();

            $nam = rand(10,100);

            // $request->image->storeAs('/', $nam.".".$extension);

            $imageName = $nam.".".$extension;

            $request->image->move(public_path('images'), $imageName);

            $url = $nam.".".$extension;

            $data['image'] = $url;

        }else{

           $data['image']=$request->oldimg; 

        }

        $winner_id = $data['winner_id'];

        $winner_Data = Winner::where('id',$winner_id)->update(["title"=>$data['title'],"winner_image"=>$data['image']]);



        return redirect()->back()->with('success', 'Updated Successfully!!');



    }



    public function delete(Request $request)

    {

        $deletewinner = DB::table('winners')->where('id', '=', $request->id)->delete();

        return redirect()->back()->withErrors("Deleted Sussecfully!");

    }



}

