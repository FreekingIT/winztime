<?php

namespace App\Http\Controllers\Common;

use App\Jobs\SendEmailJob;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Models\Core\Campaign;
use Carbon\Carbon;
use Validator;
use Mail;
use DB;

class WinnerController extends Controller
{
    public function sendWinnerListMail(Request $request)
    {
        $id = $request->id;
        // $id = array('56');
        $winner_campaign = Campaign::with('getReward')->whereIn('id', $id)->get();
        $campaignList = Campaign::with('getReward', 'getProducts.ProductDescription')->where('status', '1')->whereRaw('campaigns.start_date <= CURDATE()')->take(3)->latest()->get();
        SendEmailJob::dispatch($winner_campaign, $campaignList);
        // return view('mail.winnerList',compact('winner_campaign','campaignList'));
        return 'done';
    }

    public function sendWinnerListMail1(Request $request)
    {
        $id = $request->id;
        $id = array('56');
        $winner_campaign = Campaign::with('getReward')->whereIn('id', $id)->get();
        $campaignList = Campaign::with('getReward', 'getProducts.ProductDescription')->where('status', '1')->whereRaw('campaigns.start_date <= CURDATE()')->take(3)->latest()->get();
        Mail::send('mail.winnerList', ['winner_campaign' => $winner_campaign, 'campaignList' => $campaignList,'name' => 'Test Name'], function ($m) {
            $m->to('harpreet.kaur@digimantra.com')->subject("Lucky Draw Winner Announcement");
        });
        return 'done';
    }
}
