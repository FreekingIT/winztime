<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\Controller;
use App\Models\Core\Level;
use App\Models\Core\Reward;
use App\Models\Core\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class LevelController extends Controller
{
    //
    public function __construct(Level $level, Setting $setting)
    {
        $this->Level = $level;
        $this->myVarSetting = new SiteSettingController($setting);
        $this->Setting = $setting;

    }

    public function display(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.ListingLevels"));
        $result = array();
        $message = array();
        // $levels = Level::sortable()
        // ->orderBy('created_at', 'DESC')
        // ->paginate(7);
        $levels = Level::orderBy('created_at', 'DESC')->get();
        
        $result['level'] = $levels;
        //get function from other controller
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.level.index", $title)->with('result', $result)->with('level', $levels);

    }

    public function filter(Request $request)
    {

        $result = array();
        $message = array();
        $title = array('pageTitle' => Lang::get("labels.EditSubCategories"));
        $name = $request->FilterBy;
        $param = $request->parameter;
        switch ($name) {
            case 'Code':$levels = Level::sortable()->where('code', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'LevelType':$levels = Level::sortable()->where('discount_type', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'LevelAmount':
            $levels = Level::sortable()->where('amount', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'Description':
            $levels = Level::sortable()->where('description', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            default:

            break;
        }

        $result['level'] = $levels;
        //get function from other controller
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.level.index", $title)->with('result', $result)->with('level', $levels)->with('name', $name)->with('param', $param);
    }

    public function add(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.AddLevel"));
        $result = array();
        $message = array();
        $result['message'] = $message;
        // $emails = $this->Level->email();
        // $result['emails'] = $emails;
        $products = $this->Level->cutomers();
        $rewards = Reward::where('id','>',0)->get();
        $result['products'] = $products;
        $result['rewards'] = $rewards;
        // $categories = $this->Level->categories();
        // $result['categories'] = $categories;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.level.add", $title)->with('result', $result);
    }

    public function insert(Request $request)
    {
        $validatedData = $request->validate([
            'start_date' => 'required|date',
            'end_date' => 'date|after:start_date',
        ]);


        $data = $request->all();
        $date = str_replace('/', '-', $request->start_date);
        $data['start_date'] = date('Y-m-d', strtotime($date));

        $date = str_replace('/', '-', $request->end_date);
        $data['end_date'] = date('Y-m-d', strtotime($date));
        
        
        if (isset($data['_token'])) {
          unset($data['_token']);
        }
        $data['campaign_code'] = Str::random(); 
        $data['status'] = 1;
        // print_r($data);

        $level_Data = Level::create($data);
         // die("sak"); 
        return redirect('admin/campaign/add')->with('success', 'Successful!, Level Created!');

    }

    public function edit(Request $request, $id)
    {
        $result = array();
        $message = array();
        $result['message'] = $message;
        //coupon
        $level = $this->Level->getlevel($id);
        $result['level'] = $level;
        $products = $this->Level->getproduct();
        $result['products'] = $products;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.level.edit")->with('result', $result);
    }

    public function update(Request $request)
    {

        $level_id = $request->id;
        // if (!empty($request->free_shipping)) {
        //     $free_shipping = $request->free_shipping;
        // } else {
        //     $free_shipping = '0';
        // }
        // $code = $request->code;
        $name = $request->name;
        $start_count = $request->start_count;
        $end_count = $request->end_count;
        // $date = str_replace('/', '-', $request->expiry_date);
        // $expiry_date = date('Y-m-d', strtotime($date));
        // if (!empty($request->individual_use)) {
        //     $individual_use = $request->individual_use;
        // } else {
        //     $individual_use = '';
        // }
        // //include products
        // if (!empty($request->product_ids)) {
        //     $product_ids = implode(',', $request->product_ids);
        // } else {
        //     $product_ids = '';
        // }
        // if (!empty($request->exclude_product_ids)) {
        //     $exclude_product_ids = implode(',', $request->exclude_product_ids);
        // } else {
        //     $exclude_product_ids = '';
        // }
        // $usage_limit = $request->usage_limit;
        // $usage_limit_per_user = $request->usage_limit_per_user;
        // if (!empty($request->product_categories)) {
        //     $product_categories = implode(',', $request->product_categories);
        // } else {
        //     $product_categories = '';
        // }
        // if (!empty($request->excluded_product_categories)) {
        //     $excluded_product_categories = implode(',', $request->excluded_product_categories);
        // } else {
        //     $excluded_product_categories = '';
        // }
        // if (!empty($request->email_restrictions)) {
        //     $email_restrictions = implode(',', $request->email_restrictions);
        // } else {
        //     $email_restrictions = '';
        // }
        // $minimum_amount = $request->minimum_amount;
        // $maximum_amount = $request->maximum_amount;
        // $validator = Validator::make(
        //     array(
        //         'code' => $request->code,
        //     ),
        //     array(
        //         'code' => 'required',
        //     )
        // );

        // if ($request->usage_count !== null) {
        //     $usage_count = $request->usage_count;
        // } else {
        //     $usage_count = 0;
        // }
        // if ($request->used_by !== null) {
        //     $used_by = $request->used_by;
        // } else {
        //     $used_by = '';
        // }
        // if ($request->limit_usage_to_x_items !== null) {
        //     $limit_usage_to_x_items = $request->limit_usage_to_x_items;
        // } else {
        //     $limit_usage_to_x_items = 0;
        // }
        // //check validation
        // if ($validator->fails()) {
        //     return redirect()->back()->withErrors($validator)->withInput();
        // } else {
        //     //check campaign already exist
        //     $levelInfo = $this->Level->getcode($code);
        //     if (count($levelInfo) > 1) {
        //         return redirect()->back()->withErrors(Lang::get("labels.LevelAlreadyError"))->withInput();
        //     } else if (empty($code)) {
        //         return redirect()->back()->withErrors(Lang::get("labels.EnterLevel"))->withInput();
        //     } else {
                //insert record
                $level_id = $this->Level->levelupdate($level_id, $name, $start_count, $end_count);

                $message = Lang::get("Successful!, Level Updated!");
                return redirect()->back()->with('success', 'Updated Successfully!!');
        //     }

        // }

    }

    public function delete(Request $request)
    {
        // echo ($request);die;

        $deletelevel = DB::table('levels')->where('id', '=', $request->id)->delete();
        return redirect()->back()->withErrors("Deleted Sussecfully!");
    }

}
