<?php



namespace App\Http\Controllers\AdminControllers;



use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\Common\WinnerController;
use App\Http\Controllers\Controller;

use App\Models\Core\Campaign;

use App\Models\Core\Reward;

use App\Models\Core\Setting;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\Lang;

use Illuminate\Support\Facades\Validator;

use Illuminate\Support\Str;



class CampaignController extends Controller

{

    //

    public function __construct(Campaign $campaign, Setting $setting)

    {

        $this->Campaign = $campaign;

        $this->myVarSetting = new SiteSettingController($setting);

        $this->Setting = $setting;
    }



    public function display(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.ListingCampaigns"));

        $result = array();

        $message = array();

        $campaigns = Campaign::sortable()

            ->orderBy('created_at', 'DESC')

            ->paginate(7);

        $result['campaigns'] = $campaigns;

        //get function from other controller

        $result['currency'] = $this->myVarSetting->getSetting();

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.campaigns.index", $title)->with('result', $result)->with('campaigns', $campaigns);
    }



    public function filter(Request $request)

    {



        $result = array();

        $message = array();

        $title = array('pageTitle' => Lang::get("labels.EditSubCategories"));

        $name = $request->FilterBy;

        $param = $request->parameter;

        switch ($name) {

            case 'Code':
                $campaigns = Campaign::sortable()->where('code', 'LIKE', '%' . $param . '%')

                    ->orderBy('created_at', 'DESC')

                    ->paginate(7);



                break;

            case 'CampaignType':
                $campaigns = Campaign::sortable()->where('discount_type', 'LIKE', '%' . $param . '%')

                    ->orderBy('created_at', 'DESC')

                    ->paginate(7);



                break;

            case 'CampaignAmount':

                $campaigns = Campaign::sortable()->where('amount', 'LIKE', '%' . $param . '%')

                    ->orderBy('created_at', 'DESC')

                    ->paginate(7);



                break;

            case 'Description':

                $campaigns = Campaign::sortable()->where('description', 'LIKE', '%' . $param . '%')

                    ->orderBy('created_at', 'DESC')

                    ->paginate(7);



                break;

            default:



                break;
        }



        $result['campaigns'] = $campaigns;

        //get function from other controller

        $result['currency'] = $this->myVarSetting->getSetting();

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.campaigns.index", $title)->with('result', $result)->with('campaigns', $campaigns)->with('name', $name)->with('param', $param);
    }



    public function add(Request $request)

    {



        $title = array('pageTitle' => Lang::get("labels.AddCampaign"));

        $result = array();

        $message = array();

        $result['message'] = $message;

        $products = $this->Campaign->cutomers();

        $rewards = Reward::where('id', '>', 0)->get();

        $result['products'] = $products;

        $result['rewards'] = $rewards;

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.campaigns.add", $title)->with('result', $result);
    }



    public function insert(Request $request)

    {

        $validatedData = $request->validate([

            'start_date' => 'required',

            'end_date' => 'required',

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

        // die("sak");

        $campaign_Data = Campaign::create($data);

        // die("sak"); 

        return redirect('admin/campaign/add')->with('success', 'Successful!, Campaign Created!');
    }



    public function edit(Request $request, $id)

    {

        $result = array();

        $message = array();

        $result['message'] = $message;

        //coupon

        $campaign = $this->Campaign->getcampaign($id);

        $result['campaign'] = $campaign;

        $products = $this->Campaign->getproduct();

        $rewards = Reward::where('id', '>', 0)->get();

        $result['products'] = $products;

        $result['rewards'] = $rewards;

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.campaigns.edit")->with('result', $result);
    }

    public function print(Request $request, $id)

    {

        $result = array();

        $message = array();

        $result['message'] = $message;

        //coupon

        $campaign = $this->Campaign->getcampaigntickets($id);

        $result['campaign'] = $campaign;



        // $products = $this->Campaign->getproduct();

        // $rewards = Reward::where('id','>',0)->get();

        // $result['products'] = $products;

        // $result['rewards'] = $rewards;

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.campaigns.print")->with('result', $result);
    }

    public function pickwinner(Request $request, $id)

    {

        $result = array();

        $message = array();

        $result['message'] = $message;

        //coupon

        $users = DB::table('users')->join('orders', 'users.id', '=', 'orders.customers_id')->join('orders_products', 'orders.orders_id', '=', 'orders_products.orders_id')->where('orders_products.campaign_id', '=', $id)->groupBy("orders.customers_id")->get();

        $result['users'] = $users;

        $result['campaign_id'] = $id;

        $result['commonContent'] = $this->Setting->commonContent();

        return view("admin.campaigns.pickwinners")->with('result', $result);
    }



    public function selectedwinner(Request $request, $campaign_id, $customer_id)

    {

        $result = array();

        $message = array();

        $result['message'] = $message;

        $winners = DB::table('winners')->insert([

            'campaigns_id' =>  $campaign_id,

            'customers_id' => $customer_id

        ]);

        DB::table('campaigns')->where('id', $campaign_id)->update(['status' => 0]);



        return  redirect('admin/campaign/display')->with('success', "Winner selected!");
    }



    public function update(Request $request)

    {

        $validatedData = $request->validate([

            'start_date' => 'required',
            'end_date' => 'required'

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


        $data['status'] = ($request->status == "Active" ? '1' : '0');

        $data['is_banner_active'] = ($request->has("is_banner_active") ? '1' : '0');

        $campaign_Data = Campaign::where('id', $data['id'])->update($data);



        return redirect('admin/campaign/edit/' . $data['id'])->with('success', 'Successful!, Campaign Updated!');
    }



    public function delete(Request $request)

    {



        $deletecampaign = DB::table('campaigns')->where('id', '=', $request->id)->delete();

        return redirect()->back()->withErrors("Deleted Sussecfully!");
    }

    public function changecamstatus(Request $request)
    {

        $status = DB::table('campaigns')->where('id', '=', $request->id)->update(['status' => 0]);
        return redirect()->back()->withErrors("Campaign set to in-active!");
    }

    public function addPickWinner(Request $request)
    {
        $input = $request->all();
        $rules = array('winner_name' => 'required', 'winner_coupon_no' => 'required','camp_id' => 'required|exists:campaigns,id');
        $validator = Validator::make($input, $rules);
        if ($validator->fails()) {
            return response(['error'=>$validator->getMessageBag()->first()]);
        }
        Campaign::where('id',$input['camp_id'])->update([
            'winner_name' => $input['winner_name'],
            'winner_coupon_no' => $input['winner_coupon_no'],
            'status' => 0
        ]);
        return response(['success'=> 'Winner added successfulluy!']);
    }

    public function winnerEmail()
    {
        $result = array();
        $message = array();
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        $campaigns = Campaign::with('getReward','winnerList', 'winnerList.getUser')->whereRaw('campaigns.end_date <= CURDATE()')->orderBy('end_date','DESC')->take(5)->get();
        return view("admin.campaigns.winnerList",compact('result','campaigns'));
        
    }

    public function sendWinnerListMail(Request $request)
    {
        $WinnerController = new WinnerController();
        return $WinnerController->sendWinnerListMail($request);
        
   
    }
}
