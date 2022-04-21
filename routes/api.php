<?php

Route::group(['namespace' => 'Api\V1', 'prefix' => 'customer'], function () {
    Route::post('register', 'RegisterController@saveUser');
    Route::post('login', 'RegisterController@login');
    Route::post('verify_account', 'RegisterController@VerifyAccount');
    Route::post('social_login', 'RegisterController@Sociallogin');
    Route::get('active_campaigns', 'CampaignController@getActiveCampaigns');
    Route::get('campaign_details', 'CampaignController@GetCampaignDetails');


});
