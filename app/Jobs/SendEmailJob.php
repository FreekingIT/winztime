<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Mail\SendEmailTest;
use Mail;
use App\Models\Core\User;

class SendEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;


    protected $winner_campaign;
    protected $campaignList;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($winner_campaign, $campaignList)
    {
        $this->winner_campaign = $winner_campaign;
        $this->campaignList = $campaignList;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //  LIVE CODE
        $users = User::where('is_otp_verify', 1)->get();
        foreach ($users as $key => $value) {
            $email = new SendEmailTest($this->winner_campaign, $this->campaignList, @$value['first_name'] . ' ' . @$value['last_name']);
            Mail::to($value['email'])->send($email);
        }

        // DEV CODE
        // $email = new SendEmailTest($this->winner_campaign, $this->campaignList, 'Rohit Puri');
        // Mail::to('rohit.puri@digimantra.com')->send($email);
    }
}
