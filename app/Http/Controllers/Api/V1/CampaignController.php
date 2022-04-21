<?php

namespace App\Http\Controllers\Api\V1;
//use App\Traits\RespondsWithHttpStatus;
use App\traits\RespondsWithHttpStatus;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Web\AlertController;
use App\Repository\ICampaignRepository;
use App\User;
use Exception;
use DB;
use JWTAuth;
use JWTFactory;
use App\Models\Web\Customer;
use Tymon\JWTAuth\Exceptions\JWTException;

class CampaignController extends Controller
{
    use RespondsWithHttpStatus;

    public $campaign;

    public function __construct(ICampaignRepository $campaign)
    {
        $this->campaign = $campaign;
    }


    // Campaign List
    public function getActiveCampaigns(Request $request)
    {
        $Activecampaigns =   $this->campaign->getActiveCampaigns();
        $response['message'] = 'Active Campaigns';
        $response['status'] = true;
        $response['code'] = 200;
        $response['data'] = $Activecampaigns;
        return $this->respose($response);
    }

    // Campaign List
    public function GetCampaignDetails(Request $request)
    {
        $collection = $request->all();
        $validator = Validator::make($request->all(), [
            'campaign_id' => 'required|exists:campaigns,id',

        ]);
        if ($validator->fails()) {
            $response['message'] = $validator->messages()->first();
            $response['status'] = false;
            $response['code'] = 400;
        } else {
            $message = 'Record Found';
            $response['data'] = $this->campaign->getCampaignById($request->campaign_id);
            $response['message'] = $message;
            $response['status'] = true;
            $response['code'] = 200;
        }
        return $this->respose($response);
    }
}
