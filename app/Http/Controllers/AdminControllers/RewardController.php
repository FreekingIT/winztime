<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\Controller;
use App\Models\Core\Reward;
use App\Models\Core\Setting;
use Illuminate\Http\Request;
use App\Models\Core\Images;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class RewardController extends Controller
{
    //
    public function __construct(Reward $reward, Setting $setting,Images $images)
    {
        $this->Reward = $reward;
        $this->myVarSetting = new SiteSettingController($setting);
        $this->Setting = $setting;
        $this->images = $images;

    }

    public function display(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.ListingRewards"));
        $result = array();
        $message = array();
        $rewards = Reward::sortable()
        ->orderBy('created_at', 'DESC')
        ->paginate(7);
        $result['rewards'] = $rewards;
        //get function from other controller
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.rewards.index", $title)->with('result', $result)->with('rewards', $rewards);

    }

    public function filter(Request $request)
    {

        $result = array();
        $message = array();
        $title = array('pageTitle' => Lang::get("labels.EditSubCategories"));
        $name = $request->FilterBy;
        $param = $request->parameter;
        switch ($name) {
            case 'Code':$rewards = Reward::sortable()->where('code', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'RewardType':$rewards = Reward::sortable()->where('discount_type', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'RewardAmount':
            $rewards = Reward::sortable()->where('amount', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'Description':
            $rewards = Reward::sortable()->where('description', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            default:

            break;
        }

        $result['rewards'] = $rewards;
        //get function from other controller
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.rewards.index", $title)->with('result', $result)->with('rewards', $rewards)->with('name', $name)->with('param', $param);
    }

    public function add(Request $request)
    {

        $allimage = $this->images->getimages();
        $title = array('pageTitle' => Lang::get("labels.AddReward"));
        $result = array();
        $message = array();
        $result['message'] = $message;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.rewards.add", $title)->with('result', $result)->with('allimage', $allimage);
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
            $data['reward_image'] = $url;
        }

        $reward_Data = Reward::create($data);
         
        return redirect('admin/reward/add')->with('success', 'Successful!, Reward Created!');

    }

    public function edit(Request $request, $id)
    {
        $result = array();
        $message = array();
        $result['message'] = $message;
        //coupon
        $reward = $this->Reward->getreward($id);
        $result['reward'] = $reward;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.rewards.edit")->with('result', $result);
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
        $reward_id = $data['reward_id'];
        $reward_Data = Reward::where('id',$reward_id)->update(["title"=>$data['title'],"reward_image"=>$data['image']]);

        return redirect()->back()->with('success', 'Updated Successfully!!');

    }

    public function delete(Request $request)
    {
        $deletereward = DB::table('rewards')->where('id', '=', $request->id)->delete();
        return redirect()->back()->withErrors("Deleted Sussecfully!");
    }

}
