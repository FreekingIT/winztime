<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Core\User;
//for password encryption or hash protected
use App\Models\Web\Products;
use App\Models\Web\Customers_basket;
use Mail;

class DailyQuote extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'quote:daily';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Your cart is saved and offer is only for a limited time';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
          $cus = Customers_basket::where('is_order',0)->groupBy('customers_id')->get();
        $emails = [];
        foreach ($cus as $key => $value) {
        $userDetail = User::select('email')->where('id',$value->customers_id)->get();
        //   echo"<pre>";
        // print_r($value->customers_id);
        $cusDeatil = Customers_basket::where(['is_order' => 0, 'customers_id' => $value->customers_id])->with('products')->with('products_image')->with('products_description')->with('camping_data')->get();
        // dd($cusDeatil);
        foreach ($userDetail as $keys => $values) {
            $emails[] = $values->email;
          
        }
      

        }
        // dd($emails);
        // die();
       Mail::send('/mail/CartRemainder', ['userData' => $emails,'cusData' => $cusDeatil], function($m) use ($emails) {
            // dd($values);
        // $m->to( $emails)->subject("One time Password for verification")->getSwiftMessage()
        $m->to( 'shivam.dhingra@digimantra.com')->subject("Your Cart awaits. Complete your purchase before the draw opens")->getSwiftMessage()

                ->getHeaders()

                ->addTextHeader('x-mailgun-native-send', 'true');

            });
       
    }
}
