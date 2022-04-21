<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\Controller;
use App\Models\Core\Ticket;
use App\Models\Core\Reward;
use App\Models\Core\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class TicketController extends Controller
{
    //
    public function __construct(Ticket $ticket, Setting $setting)
    {
        $this->Ticket = $ticket;
        $this->myVarSetting = new SiteSettingController($setting);
        $this->Setting = $setting;

    }

    public function display(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.ListingTickets"));
        $result = array();
        $message = array();
        $tickets = Ticket::orderBy('created_at', 'DESC')->get();

        $result['ticket'] = $tickets;
        //get function from other controller
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.ticket.index", $title)->with('result', $result)->with('ticket', $tickets);

    }
    public function updateStatus($id)
    {
        DB::table('tickets')->where('id',$id)->update(["status"=>'0']);
        return redirect('admin/ticket/display')->with('success', 'Successful!, Ticket Status Update!');

    }
    public function updateName($id,Request $request)
    {
        $title = array('pageTitle' => "Update Customer Name");
        $result = array();
        $message = array();
        //get function from other controller
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.ticket.updatename", $title)->with('result', $result)->with('ticket_id', $id);

    }
    public function saveName(Request $request)
    {
         $validatedData = $request->validate([
            'custom_name' => 'required'
        ]);

        $data = $request->all();
        DB::table('tickets')->where('id',$data['ticket_id'])->update(["custom_name"=>$data['custom_name']]);
        return redirect('admin/ticket/display')->with('success', 'Successful!, Name Updated!');

    }
    public function updateStatustwo($id)
    {
        DB::table('tickets')->where('id',$id)->update(["status"=>'1']);
        return redirect('admin/ticket/display')->with('success', 'Successful!, Ticket Status Update!');

    }

    public function filter(Request $request)
    {

        $result = array();
        $message = array();
        $title = array('pageTitle' => Lang::get("labels.EditSubCategories"));
        $name = $request->FilterBy;
        $param = $request->parameter;
        switch ($name) {
            case 'Code':$tickets = Ticket::sortable()->where('code', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'TicketType':$tickets = Ticket::sortable()->where('discount_type', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'TicketAmount':
            $tickets = Ticket::sortable()->where('amount', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            case 'Description':
            $tickets = Ticket::sortable()->where('description', 'LIKE', '%' . $param . '%')
            ->orderBy('created_at', 'DESC')
            ->paginate(7);

            break;
            default:

            break;
        }

        $result['ticket'] = $tickets;
        //get function from other controller
        $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.ticket.index", $title)->with('result', $result)->with('ticket', $tickets)->with('name', $name)->with('param', $param);
    }

    public function add(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.AddTicket"));
        $result = array();
        $message = array();
        $result['message'] = $message;
        // $emails = $this->Ticket->email();
        // $result['emails'] = $emails;
        $products = $this->Ticket->cutomers();
        $rewards = Reward::where('id','>',0)->get();
        $result['products'] = $products;
        $result['rewards'] = $rewards;
        // $categories = $this->Ticket->categories();
        // $result['categories'] = $categories;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.ticket.add", $title)->with('result', $result);
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

        $ticket_Data = Ticket::create($data);
         // die("sak"); 
        return redirect('admin/campaign/add')->with('success', 'Successful!, Ticket Created!');

    }

    public function edit(Request $request, $id)
    {
        $result = array();
        $message = array();
        $result['message'] = $message;
        //coupon
        $ticket = $this->Ticket->getcampaign($id);
        $result['campaign'] = $ticket;
        $products = $this->Ticket->getproduct();
        $result['products'] = $products;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.ticket.edit")->with('result', $result);
    }

    public function update(Request $request)
    {

        $coupans_id = $request->id;
        if (!empty($request->free_shipping)) {
            $free_shipping = $request->free_shipping;
        } else {
            $free_shipping = '0';
        }
        $code = $request->code;
        $description = $request->description;
        $discount_type = $request->discount_type;
        $amount = $request->amount;
        $date = str_replace('/', '-', $request->expiry_date);
        $expiry_date = date('Y-m-d', strtotime($date));
        if (!empty($request->individual_use)) {
            $individual_use = $request->individual_use;
        } else {
            $individual_use = '';
        }
        //include products
        if (!empty($request->product_ids)) {
            $product_ids = implode(',', $request->product_ids);
        } else {
            $product_ids = '';
        }
        if (!empty($request->exclude_product_ids)) {
            $exclude_product_ids = implode(',', $request->exclude_product_ids);
        } else {
            $exclude_product_ids = '';
        }
        $usage_limit = $request->usage_limit;
        $usage_limit_per_user = $request->usage_limit_per_user;
        if (!empty($request->product_categories)) {
            $product_categories = implode(',', $request->product_categories);
        } else {
            $product_categories = '';
        }
        if (!empty($request->excluded_product_categories)) {
            $excluded_product_categories = implode(',', $request->excluded_product_categories);
        } else {
            $excluded_product_categories = '';
        }
        if (!empty($request->email_restrictions)) {
            $email_restrictions = implode(',', $request->email_restrictions);
        } else {
            $email_restrictions = '';
        }
        $minimum_amount = $request->minimum_amount;
        $maximum_amount = $request->maximum_amount;
        $validator = Validator::make(
            array(
                'code' => $request->code,
            ),
            array(
                'code' => 'required',
            )
        );

        if ($request->usage_count !== null) {
            $usage_count = $request->usage_count;
        } else {
            $usage_count = 0;
        }
        if ($request->used_by !== null) {
            $used_by = $request->used_by;
        } else {
            $used_by = '';
        }
        if ($request->limit_usage_to_x_items !== null) {
            $limit_usage_to_x_items = $request->limit_usage_to_x_items;
        } else {
            $limit_usage_to_x_items = 0;
        }
        //check validation
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            //check campaign already exist
            $ticketInfo = $this->Ticket->getcode($code);
            if (count($ticketInfo) > 1) {
                return redirect()->back()->withErrors(Lang::get("labels.TicketAlreadyError"))->withInput();
            } else if (empty($code)) {
                return redirect()->back()->withErrors(Lang::get("labels.EnterTicket"))->withInput();
            } else {
                //insert record
                $ticket_id = $this->Ticket->campaignupdate($coupans_id, $code, $description, $discount_type, $amount, $individual_use,
                    $product_ids, $exclude_product_ids, $usage_limit, $usage_limit_per_user, $usage_count,
                    $limit_usage_to_x_items, $product_categories, $used_by, $excluded_product_categories,
                    $request, $email_restrictions, $minimum_amount, $maximum_amount, $expiry_date, $free_shipping);

                $message = Lang::get("labels.TicketUpdatedMessage");
                return redirect()->back()->withErrors([$message]);
            }

        }

    }

    public function delete(Request $request)
    {

        $deletecampaign = DB::table('ticket')->where('id', '=', $request->id)->delete();
        return redirect()->back()->withErrors("Deleted Sussecfully!");
    }

}
