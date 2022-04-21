@extends('web.layout')
@section('content')

<!-- checkout Content -->
<section class="checkout-area">

@if(session::get('paytm') == 'success')
@php Session(['paytm' => 'sasa']); @endphp
<script>
jQuery(document).ready(function() {
 // executes when HTML-Document is loaded and DOM is ready
 jQuery("#update_cart_form").submit();
});

</script>
@endif

<!-- <div class="container-fuild"> -->
  <!-- <nav aria-label="breadcrumb"> -->
      <!-- <div class="container"> -->
         <!--  <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ URL::to('/')}}">@lang('website.Home')</a></li>
            <li class="breadcrumb-item"><a href="javascript:void(0)">@lang('website.Checkout')</a></li>
            <li class="breadcrumb-item">
              <a href="javascript:void(0)">
                @if(session('step')==0)
                      @lang('website.Shipping Address')
                    @elseif(session('step')==1)
                      @lang('website.Billing Address')
                    @elseif(session('step')==2)
                      @lang('website.Shipping Methods')
                    @elseif(session('step')==3)
                      @lang('website.Order Detail')
                    @endif
              </a>
            </li>
          </ol> -->
      <!-- </div> -->
    <!-- </nav> -->
<!-- </div>  -->

  <!-- Modal -->
  <!-- <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p>Do you want to <b>Donate</b> this product.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="checkedDonation()">Yes</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
        </div>
      </div>
      
    </div>
  </div> -->
<section class="pro-content main-section">

  <!-- <div class="container"> -->
    <div class="page-heading-title">
      <h2> @lang('website.Checkout') </h2>

      </div>
  <!-- </div> -->
 <!-- checkout Content -->
 <section class="checkout-area">
 <!-- <div class="container"> -->
   <div class="row">
     
     <div class="col-12 col-xl-8 checkout-left">
        <div class="contFormWrp">
          <input type="hidden" id="hyperpayresponse" value="@if(!empty(session('paymentResponse'))) @if(session('paymentResponse')=='success') {{session('paymentResponse')}} @else {{session('paymentResponse')}}  @endif @endif">
       
        <div class="alert alert-danger alert-dismissible" id="paymentError" role="alert" style="display:none;">
           <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
           @if(!empty(session('paymentResponse')) and session('paymentResponse')=='error') {{session('paymentResponseData') }} @endif
       </div>
         <div class="">
           <div class="checkout-module">
             <ul class="nav nav-pills mb-3 checkoutd-nav d-none d-lg-flex" id="pills-tab" role="tablist">
                 <li class="nav-item">
                   <a class="nav-link @if(session('step')==0) active @elseif(session('step')>0)  @endif" id="pills-shipping-tab" data-toggle="pill" href="#pills-shipping" role="tab" aria-controls="pills-shipping" aria-selected="true">
                    <span class="d-flex d-lg-none">1</span>
                    <span class="d-none d-lg-flex">Shipping</span></a>
                 </li>
                 <!-- <li class="nav-item">
                   <a class="nav-link @if(session('step')==1) active @elseif(session('step')>1) @endif" @if(session('step')>=1) id="pills-billing-tab" data-toggle="pill" href="#pills-billing" role="tab" aria-controls="pills-billing" aria-selected="false"  @endif >@lang('website.Billing Address')</a>
                 </li> -->
                 <li class="nav-item">
                   <a class="nav-link @if(session('step')==2) active @elseif(session('step')>2)  @endif" @if(session('step')>=2) id="pills-method-tab" data-toggle="pill" href="#pills-method" role="tab" aria-controls="pills-method" aria-selected="false" @endif> Payment Methods</a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link @if(session('step')==3) active @elseif(session('step')>3) @endif"  @if(session('step')>=3) id="pills-order-tab" data-toggle="pill" href="#pills-order" role="tab" aria-controls="pills-order" aria-selected="false"@endif>@lang('website.Order Detail')</a>
                   </li>
               </ul>
               <ul class="nav nav-pills mb-3 checkoutd-nav d-flex d-lg-none" id="pills-tab" role="tablist">
                 <li class="nav-item">
                   <a class="nav-link @if(session('step')==0) active @elseif(session('step')>0) active-check @endif" id="pills-shipping-tab" data-toggle="pill" href="#pills-shipping" role="tab" aria-controls="pills-shipping" aria-selected="true">1</a>
                 </li>
                 <li class="nav-item second">
                   <a class="nav-link @if(session('step')==1) active @elseif(session('step')>1) active-check @endif" @if(session('step')>=1) id="pills-billing-tab" data-toggle="pill" href="#pills-billing" role="tab" aria-controls="pills-billing" aria-selected="false"  @endif >2</a>
                 </li>
                 <li class="nav-item third">
                   <a class="nav-link @if(session('step')==2) active @elseif(session('step')>2) active-check @endif" @if(session('step')>=2) id="pills-method-tab" data-toggle="pill" href="#pills-method" role="tab" aria-controls="pills-method" aria-selected="false" @endif>3</a>
                 </li>
                 <li class="nav-item fourth">
                   <a class="nav-link @if(session('step')==3) active @elseif(session('step')>3) active-check @endif"  @if(session('step')>=3) id="pills-order-tab" data-toggle="pill" href="#pills-order" role="tab" aria-controls="pills-order" aria-selected="false"@endif>4</a>
                   </li>
               </ul>
               <div class="tab-content" id="pills-tabContent">
                 <div class="tab-pane fade @if(session('step') == 0) show active @endif" id="pills-shipping" role="tabpanel" aria-labelledby="pills-shipping-tab">
                   <form name="signup" enctype="multipart/form-data" class="form-validate"  action="{{ URL::to('/checkout_shipping_address')}}" method="post">
                     <input type="hidden" required name="_token" id="csrf-token" value="{{ Session::token() }}" />
                     <input type="hidden"  name="zone_id" id="zone_id" value="-1" />

                     <div class="form-row">
                      <div class="form-group">
                        <label for=""> @lang('website.First Name')</label>
                        <input type="text"  required class="form-control field-validate" name="firstname" value="@if(!empty(session('shipping_address'))){{session('shipping_address')->firstname}}@endif" aria-describedby="NameHelp1" placeholder="Enter Your Name" >
                        <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your first name')</span>
                      </div>
                      <div class="form-group">
                        <label for=""> @lang('website.Last Name')</label>
                        <input type="text" required class="form-control field-validate" id="lastname" name="lastname" value="@if(!empty(session('shipping_address'))){{session('shipping_address')->lastname}}@endif" aria-describedby="NameHelp1" placeholder="Enter Your Last Name">
                        <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your last name')</span>
                      </div>
                      
                      <?php if(Session::get('guest_checkout') == 1){ ?>
                      <div class="form-group">
                        <label for=""> @lang('website.Email')</label>
                        <input type="text" required class="form-control field-validate" id="email" name="email" value="@if(!empty(session('shipping_address'))){{session('shipping_address')->email}}@endif" aria-describedby="NameHelp1" placeholder="Enter Your Email">
                        <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your email')</span>
                      </div>
                      <?php } ?>
                      <input type="hidden" required class="form-control field-validate" id="company" aria-describedby="companyHelp" placeholder="Enter Your Company Name" name="company" value="TEST TEST">
                        
                      

                      <div class="form-group">
                        <label for=""> @lang('website.Address')</label>
                        <textarea required class="form-control field-validate" name="street" id="street" aria-describedby="addressHelp" placeholder="@lang('website.Please enter your address')" value="@if(!empty(session('shipping_address'))) {{session('shipping_address')->street}}@endif"></textarea>
                        <small>Will be saved in Address-Book</small>
                        <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your address')</span>

                      </div>
                      <div class="form-group">
                        <label for=""> @lang('website.Country')</label>
                        <div class="input-group select-control">
                            <select required class="form-control field-validate" id="entry_country_id" onChange="getZones();" name="countries_id" aria-describedby="countryHelp">
                              <option value="" selected>@lang('website.Select Country')</option>
                              <option value="221" selected="selected">United Arab Emirates</option>
                              <!-- @if(!empty($result['countries']))
                                @foreach($result['countries'] as $countries)
                                    <option value="{{$countries->countries_id}}" @if(!empty(session('shipping_address'))) @if(session('shipping_address')->countries_id == $countries->countries_id) selected @endif @endif >{{$countries->countries_name}}</option>
                                @endforeach
                              @endif -->
                              </select>
                        </div>
                        <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please select your country')</span>
                      </div>
                       
                        <div class="form-group">
                          <label for=""> @lang('website.City')</label>
                          <select name="city" id="check_ship_city" class="form-control field-validate" required="required">
                            <option value="">Select City</option>
                            <option value="Abu Dhabi">Abu Dhabi</option>
                             <option value="Ajman">Ajman</option>
                             <option value="Dubai">Dubai</option>
                             <option value="Fujairah">Fujairah</option>
                            <option value="Sharjah">Sharjah</option>
                            <option value="Ras Al Khaimah">Ras Al Khaimah</option>
                            <option value="Um Al Quwain">Umm Al Quwain</option>
                          </select>
                           <!--  <input required type="text" class="form-control field-validate" id="city" name="city" value="@if(!empty(session('shipping_address'))){{session('shipping_address')->city}}@endif" placeholder="Enter Your City"> -->
                            <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your city')</span>
                        </div>
                          <input required type="hidden" class="form-control" id="postcode" aria-describedby="zpcodeHelp" placeholder="@lang('website.Enter Your Zip / Postal Code')" name="postcode" value="123123">
                        <div class="form-group">
                          <label for=""> @lang('website.Phone')</label>
                          <input required type="text" class="form-control" id="delivery_phone" aria-describedby="numberHelp" placeholder="@lang('website.Enter Your Phone Number')" name="delivery_phone" value="@if(!empty(session('shipping_address'))){{session('shipping_address')->delivery_phone}}@endif">
                          <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your valid phone number')</span>
                        </div>
                                                
                      </div>
                      <div class="form-row">
                        <div class="form-group">
                          <a href="javascript:;" class="btn btn-secondary">Add your address</a>
                        </div>
                      </div>
                      <div class="form-row">
                        <div class="form-group">
                          <button type="submit"  class="btn btn-secondary">@lang('website.Continue')</button>
                        </div>
                      </div>
                   </form>
                 </div>
                 <div class="tab-pane fade @if(session('step') == 1) show active @endif"  id="pills-billing" role="tabpanel" aria-labelledby="pills-billing-tab">
                     <form name="signup" id="checkout_billing_address" enctype="multipart/form-data" action="{{ URL::to('/checkout_billing_address')}}" method="post">
                       <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />

                       <div class="form-row checkBoxSwitch">
                         <div class="form-group">
                           <div class="form-check">
                             <label class="switch switchChk">
                               <input class="form-check-input" type="checkbox" id="same_billing_address" value="1" name="same_billing_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) checked @endif @else checked  @endif >
                               <span class="slider"></span>
                             </label><label> @lang('website.Same shipping and billing address')</label>
                             <small id="checkboxHelp" class="form-text text-muted"></small>
                           </div>
                         </div>
                       </div>
                       <div class="form-row">
                         <div class="form-group">
                            <label for=""> @lang('website.First Name')</label>
                             <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_firstname" name="billing_firstname" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_firstname}}@endif" aria-describedby="NameHelp1" placeholder="Enter Your Name">
                             <span class="help-block error-content" hidden>@lang('website.Please enter your first name')</span>
                           </div>
                           <div class="form-group">
                            <label for=""> @lang('website.Last Name')</label>
                             <input type="text" class="form-control same_address" id="exampleInputName2" aria-describedby="NameHelp2" placeholder="Enter Your Name" @if(!empty(session('billing_address'))>0) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_lastname" name="billing_lastname" value="@if(!empty(session('billing_address'))>0){{session('billing_address')->billing_lastname}}@endif">
                             <span class="help-block error-content" hidden>@lang('website.Please enter your last name')</span>
                           </div>

                          
                             <input type="hidden" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_company" name="billing_company" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_company}}@endif" id="exampleInputCompany1" aria-describedby="companyHelp">

                           <div class="form-group">
                            <label for=""> @lang('website.Address')</label>
                             <input type="text" class="form-control same_address" id="exampleInputAddress1" aria-describedby="addressHelp" placeholder="Enter Your Address" @if(!empty(session('22'))>0) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_street" name="billing_street" value="@if(!empty(session('billing_address'))>0){{session('billing_address')->billing_street}}@endif">
                             <span class="help-block error-content" hidden>@lang('website.Please enter your address')</span>
                           </div>
                           <div class="form-group">
                            <label for=""> @lang('website.Country')</label>
                             <div class="input-group select-control">
                                 <select required class="form-control same_address_select" id="billing_countries_id" aria-describedby="countryHelp" onChange="getBillingZones();" name="billing_countries_id" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) disabled @endif @else disabled @endif>
                                   <option value=""  >@lang('website.Select Country')</option>
                                   @if(!empty($result['countries']))
                                     @foreach($result['countries'] as $countries)
                                         <option value="{{$countries->countries_id}}" @if(!empty(session('billing_address'))) @if(session('billing_address')->billing_countries_id == $countries->countries_id) selected @endif @endif >{{$countries->countries_name}}</option>
                                     @endforeach
                                   @endif
                                   </select>
                             </div>
                             <span class="help-block error-content" hidden>@lang('website.Please select your country')</span>
                           </div>
                           <input type="hidden"  name="billing_zone_id" id="billing_zone_id" value="-1" />

                           <!-- <div class="form-group">
                            <label for=""> @lang('website.State')</label>
                             <div class="input-group select-control">
                                 <select required class="form-control same_address_select" name="billing_zone_id" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) disabled @endif @else disabled @endif id="billing_zone_id" aria-describedby="stateHelp">
                                   <option value="" >@lang('website.Select State')</option>
                                   @if(!empty($result['zones']))
                                     @foreach($result['zones'] as $key=>$zones)
                                         <option value="{{$zones->zone_id}}" @if(!empty(session('billing_address'))) @if(session('billing_address')->billing_zone_id == $zones->zone_id) selected @endif @endif >{{$zones->zone_name}}</option>
                                     @endforeach
                                   @endif
                                     <option value="-1" @if(!empty(session('billing_address'))) @if(session('billing_address')->billing_zone_id == 'Other') selected @endif @endif>@lang('website.Other')</option>
                                   </select>
                             </div>
                             <span class="help-block error-content" hidden>@lang('website.Please select your state')</span>
                           </div> -->
                           <div class="form-group">
                            <label for=""> @lang('website.City')</label>
                               <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_city" name="billing_city" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_city}}@endif" placeholder="Enter Your City">
                               <span class="help-block error-content" hidden>@lang('website.Please enter your city')</span>
                           </div>
                             
                               <input type="hidden" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_zip" name="billing_zip" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_zip}}@endif" aria-describedby="zpcodeHelp" placeholder="Enter Your Zip / Postal Code">
                            
                             <div class="form-group">
                              <label for=""> @lang('website.Phone')</label>
                               <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_phone" name="billing_phone" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_phone}}@endif" aria-describedby="numberHelp" placeholder="Enter Your Phone Number">
                               <span class="help-block error-content" hidden>@lang('website.Please enter your valid phone number')</span>
                             </div>
                            </div>
                             <div class="form-row">
                              <div class="form-group">
                               <button type="submit"  class="btn btn-secondary"><span>@lang('website.Continue')</span></button>
                              </div>
                             </div>
                       </form>
                 </div>
                 <div class="tab-pane fade  @if(session('step') == 2) show active @endif" id="pills-method" role="tabpanel" aria-labelledby="pills-method-tab">

                             <div class="col-12 col-sm-12 ">
                                <div class="row"> <p>@lang('website.Please select a prefered shipping method to use on this order')</p><hr></div>
                             </div>

                             <form name="shipping_mehtods" method="post" id="shipping_mehtods_form" enctype="multipart/form-data" action="{{ URL::to('/checkout_payment_method')}}">
                              <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                                @if(!empty($result['shipping_methods'])>0)
                                    <input type="hidden" name="mehtod_name" id="mehtod_name">
                                    <input type="hidden" name="shipping_price" id="shipping_price">

                                     @foreach($result['shipping_methods'] as $shipping_methods)
                                        <div class="heading">
                                            <h2>{{$shipping_methods['name']}}</h2>
                                            <hr>
                                        </div>
                                        <div class="form-check">

                                            <div class="form-row">
                                                @if($shipping_methods['success']==1)
                                                <ul class="list"style="list-style:none; padding: 0px;">
                                                    @foreach($shipping_methods['services'] as $services)
                                                     <?php
                                                         if($services['shipping_method']=='upsShipping')
                                                            $method_name=$shipping_methods['name'].'('.$services['name'].')';
                                                         else{
                                                            $method_name=$services['name'];
                                                            }
                                                        ?>
                                                        <li>
                                                        <input class="shipping_data" id="{{$method_name}}" type="radio" name="shipping_method" value="{{$services['shipping_method']}}" shipping_price="{{$services['rate']}}"  method_name="{{$method_name}}" @if(!empty(session('shipping_detail')) and !empty(session('shipping_detail')) > 0)
                                                        @if(session('shipping_detail')->mehtod_name == $method_name) checked @endif
                                                        @elseif($shipping_methods['is_default']==1) checked @endif
                                                        @if($shipping_methods['is_default']==1) checked @endif
                                                        >
                                                       
                                                        
                                                         <label for="{{$method_name}}">{{$services['name']}}({{Session::get('symbol_left')}} {{$services['rate']* session('currency_value')}}{{Session::get('symbol_right')}})</label>
                                                         <small>2 to 3 days shipping</small>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                                @else
                                                    <ul class="list"style="list-style:none; padding: 0px;">
                                                        <li>@lang('website.Your location does not support this') {{$shipping_methods['name']}}.</li>
                                                    </ul>
                                                @endif
                                            </div>
                                            <hr>
                                        </div>
                                    @endforeach
                                @endif
                                <div class="alert alert-danger alert-dismissible error_shipping" role="alert" style="display:none;">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    @lang('website.Please select your shipping method')
                                </div>

                                <div class="row">
                                  <div class="col-12 col-sm-12">
                                  <button type="submit"class="btn btn-secondary">@lang('website.Continue')</button>
                                  </div>
                                </div>
                              </form>

                 </div>
                 <div class="tab-pane fade @if(session('step') == 3) show active @endif" id="pills-order" role="tabpanel" aria-labelledby="pills-method-order">
                               <?php
                                   $price = 0;
                                   $customers_basket_quantity_order_summary = 0;
                               ?>
                               <form method='POST' id="update_cart_form" action='{{ URL::to('/updateCart')}}' >
                    <table class="table top-table">

                      <?php
                      $price = 0;
                      $customers_basket_quantity_order_summary = 0;
                      ?>
                      @foreach( $result['cart'] as $products) 
                      <?php
                      $price+= $products->final_price * $products->customers_basket_quantity;
                      ?>
                      <tbody  @if(session::get('out_of_stock') == 1 and session::get('out_of_stock_product') == $products->products_id)style="  box-shadow: 0 20px 50px rgba(0,0,0,.5); border:2px solid #FF9999;"@endif>

                        <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                        <input type="hidden" name="cart[]" value="{{$products->customers_basket_id}}">
                        <?php
                          if(!empty($products->discount_price)){
                            $discount_price = $products->discount_price * session('currency_value');
                          }
                          if(!empty($products->final_price)){
                            $flash_price = $products->final_price * session('currency_value');
                          }
                          $orignal_price = $products->price * session('currency_value');

                          if(!empty($products->discount_price)){

                            if(($orignal_price+0)>0){
                              $discounted_price = $orignal_price-$discount_price;
                              $discount_percentage = $discounted_price/$orignal_price*100;
                            }else{
                             $discount_percentage = 0;
                             $discounted_price = 0;
                           }
                         }
                         ?>
                        <tr class="d-flex">
                          <td class="item-price col-12 col-md-4" >
                          <h3>Buy</h3>
                          <figure class="prodCrtImg">
                            <img class="img-fluid" src="{{asset('').$products->image_path}}" alt="{{$products->products_name}}"/>
                            </figure>
                             <div class="item-detail productDescWrp">
                              <!-- <sub>Unit Price</sub>
                              <h4>
                                @if(!empty($products->final_price))
                               {{Session::get('symbol_left')}} {{$flash_price+0}} {{Session::get('symbol_right')}}
                               @elseif(!empty($products->discount_price))
                               {{Session::get('symbol_left')}} {{$discount_price+0}} {{Session::get('symbol_right')}}
                               <span> {{Session::get('symbol_left')}} {{$orignal_price+0}}{{Session::get('symbol_right')}}</span>
                               @else
                               {{Session::get('symbol_left')}} {{$orignal_price+0}}{{Session::get('symbol_right')}}
                               @endif
                               </h4> -->
                                <!-- <sup>Product</sup> -->
                              <h4>
                                <!-- {{$products->products_name}} -->
                                {!!str_limit($products->products_name,20,'')!!}
                              </h4>
                              <!-- <div class="item-controls">
                                <a href="{{ URL::to('/deleteCart?id='.$products->customers_basket_id)}}"  class="btn" >
                                  <span class="fas fa-times"></span>
                                  Delete
                                </a>
                              </div> -->                          
                            </div>
                          </td>
                          <!-- <td class="col-12 col-md-3" >

                           
                          </td> -->
                          
                           <td class="col-12 col-md-2 item-detail-left">
                             
                            <div class="item-detail priceCrtWrp">
                              
                              <h4>
                               <strong> @if(!empty($products->final_price))
                                {{Session::get('symbol_left')}} {{$flash_price+0}} {{Session::get('symbol_right')}}
                                @elseif(!empty($products->discount_price))
                                {{Session::get('symbol_left')}} {{$discount_price+0}} {{Session::get('symbol_right')}}
                                <span> {{Session::get('symbol_left')}} {{$orignal_price+0}}{{Session::get('symbol_right')}}</span>
                                @else
                                {{Session::get('symbol_left')}} {{$orignal_price+0}}{{Session::get('symbol_right')}}
                                @endif</strong>
                              </h4>
                            </div> 

                          </td>
                          
                         <td class="item-price col-12 col-md-5">
                         <h3>Win</h3>
                           <figure class="prodCrtImg"> <img src="{{asset('images/'.$products->reward[0]->reward_image)}}"></figure>
                           <div class="item-detail">
                            <!-- <sup>Reward</sup> -->
                            <h4>{!!str_limit($products->reward[0]->reward_description,20,'')!!}</h4>  
                          </div>  
                         
                          <!-- <span class="cart_price_{{$products->customers_basket_id}}">
                            {{Session::get('symbol_left')}} {{$products->final_price * $products->customers_basket_quantity * session('currency_value')}} {{Session::get('symbol_right')}}
                          </span> -->
                        </td>
                        <!-- <td class="col-12 col-md-3"> 
                          
                        </td> -->
                        <td class="align-middle item-total col-12 col-md-1 Qty" align="left">
                          <div class="input-group item-quantity">                         
                            <input name="quantity[]" type="text" readonly value="{{$products->customers_basket_quantity}}" class="form-control qty" min="{{$products->min_order}}" max="{{$products->max_order}}">
                            <span class="input-group-btn ">
                              <button type="button" value="quantity" class="quantity-right-plus btn qtypluscart" data-type="plus" data-field="">                                  
                                <span class="fas fa-plus"></span>
                              </button>
                              <button type="button" value="quantity" class="quantity-left-minus btn qtyminuscart" data-type="minus" data-field="">
                                <span class="fas fa-minus"></span>
                              </button>            
                            </span>
                          </div>
                          <sup><a href="{{ URL::to('/deleteCart?id='.$products->customers_basket_id)}}"  class="deleteCartItem" >
                                <strong>Delete</strong>
                              </a></sup>
                        </td>
                      </tr>
                      <tr class="d-flex alter totalPriceWrp">
                      <td class="align-middle col-12 col-md-6"><p><strong class="donationEach">2 </strong><small>COUPONS per product</small></p></td>

                      <td class="align-middle col-12 col-md-6 text-right"><p><small>Item Total:</small><strong> AED {{$products->customers_basket_quantity*$orignal_price}}</strong></p></td>
                      </tr>
                      <!-- <tr class="totalPrice"><td><p><small>Item Total:</small> AED {{$products->customers_basket_quantity*$orignal_price}}</p></td></tr> -->
                    </tbody>
                    <?php $customers_basket_quantity_order_summary += $products->customers_basket_quantity; ?>
                    <!-- <p>Item Total: AED {{$products->customers_basket_quantity*$orignal_price}}</p> -->
                    @endforeach
                  </table>
                </form>
<?php
                                                      if(!empty(session('coupon_discount'))){
                                                        $coupon_amount = session('currency_value') * session('coupon_discount');  
                                                      }else{
                                                        $coupon_amount = 0;
                                                      }

                                                      if(!empty(session('tax_rate'))){
                                                        $tax_rate = session('currency_value') * session('tax_rate');  
                                                      }else{
                                                        $tax_rate = 0;
                                                      }

                                                       if(!empty(session('shipping_detail')) and !empty(session('shipping_detail'))>0){
                                                           $shipping_price = session('shipping_detail')->shipping_price;
                                                           $shipping_name = session('shipping_detail')->mehtod_name;
                                                       }else{
                                                           $shipping_price = 0;
                                                           $shipping_name = '';
                                                       }

                                                      // dd($price,$tax_rate,$shipping_price);
                                                       $tax_rate = number_format((float)$tax_rate, 2, '.', '');
                                                       $coupon_discount = number_format((float)$coupon_amount, 2, '.', '');
                                                       $total_price = ($price+$tax_rate+($shipping_price*session('currency_value')))-$coupon_discount;
                                                       session(['total_price'=>($total_price)]);

                                                    ?>
                               <div class="col-12 col-sm-12">
                                    <div class="row">
                                        <div class="heading">
                                            <h4>@lang('website.orderNotesandSummary')</h4>
                                            
                                          </div>
                                      
                                      <div class="form-group" style="width:100%; padding:0;">
                                        <label for="exampleFormControlTextarea1">@lang('website.Please write notes of your order')</label>
                                          <textarea name="comments" id="exampleFormControlTextarea1"  class="form-control" id="order_comments" rows="3">@if(!empty(session('order_comments'))){{session('order_comments')}}@endif</textarea>
                                        </div>
                                    </div>
                                      
                                </div>

                                   <div class="col-12 col-sm-12 mb-3">
                                       <div class="row">
                                         <div class="heading">
                                           <h2>@lang('website.Payment Methods')</h2>
                                           <hr>
                                         </div>

                                         <div class="alert alert-danger error_payment" style="display:none" role="alert">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            @lang('website.Please select your payment method')
                                         </div>

                                         
                                         <form name="shipping_mehtods" method="post" id="payment_mehtods_form" enctype="multipart/form-data" action="{{ URL::to('/order_detail')}}">
                                          <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                                      
                                         <div class="form-group" style="width:100%; padding:0;">
                                          <label for="exampleFormControlTextarea1" style="width:100%; margin-bottom:30px;">@lang('website.Please select a prefered payment method to use on this order')</label>
                                          
                                          @foreach($result['payment_methods'] as $payment_methods)
                                          
                                            @if($payment_methods['active']==1)
                                                <input id="payment_currency" type="hidden" onClick="paymentMethods();" name="payment_currency" value="{{$payment_methods['payment_currency']}}">
                                              @if($payment_methods['payment_method']=='braintree')

                                                  <input id="{{$payment_methods['payment_method']}}_public_key" type="hidden" name="public_key" value="{{$payment_methods['public_key']}}">
                                                  <input id="{{$payment_methods['payment_method']}}_environment" type="hidden" name="{{$payment_methods['payment_method']}}_environment" value="{{$payment_methods['environment']}}">
                                          
                                          
                                                <div class="form-check form-check-inline">
                                                    <input id="{{$payment_methods['payment_method']}}_label" type="radio" onClick="paymentMethods();" name="payment_method" class="form-check-input payment_method" value="{{$payment_methods['payment_method']}}" @if(!empty(session('payment_method'))) @if(session('payment_method')==$payment_methods['payment_method']) checked @endif @endif>
                                                    <label class="form-check-label" for="{{$payment_methods['payment_method']}}_label"><img src="{{asset('web/images/miscellaneous').'/'.$payment_methods['payment_method'].'.png'}}" alt="{{$payment_methods['name']}}"></label>
                                                </div>
                                              @else
                                              
                                                  <input id="{{$payment_methods['payment_method']}}_public_key" type="hidden" name="public_key" value="{{$payment_methods['public_key']}}">
                                                  <input id="{{$payment_methods['payment_method']}}_environment" type="hidden" name="{{$payment_methods['payment_method']}}_environment" value="{{$payment_methods['environment']}}">
                                                
                                                  
                                                  <div class="form-check form-check-inline">
                                                    <input onClick="paymentMethods();" id="{{$payment_methods['payment_method']}}_label" type="radio" name="payment_method" class="form-check-input payment_method" value="{{$payment_methods['payment_method']}}" @if(!empty(session('payment_method'))) @if(session('payment_method')==$payment_methods['payment_method']) checked @endif @endif>
                                                    <label class="form-check-label" for="{{$payment_methods['payment_method']}}_label">
                                                      @if(file_exists( 'web/images/miscellaneous/'.$payment_methods['payment_method'].'.png'))
                                                        <img width="100px" src="{{asset('web/images/miscellaneous/').'/'.$payment_methods['payment_method'].'.png'}}" alt="{{$payment_methods['name']}}">
                                                      @else
                                                      {{$payment_methods['name']}}
                                                      @endif
                                                    </label>
                                                  </div>
                                              @endif  
                                            @endif

                                          @endforeach 
                                                                                 
                                        </div>
                                         </form>
                                          
                                           <div class="button">
                                            @foreach($result['payment_methods'] as $payment_methods)
                                          
                                              @if($payment_methods['active']==1 and $payment_methods['payment_method']=='banktransfer')
                                              <div class="alert alert-info alert-dismissible" id="payment_description" role="alert" style="display: none">
                                              <span>{{$payment_methods['descriptions']}}</span>
                                              </div>
                                              @endif

                                            @endforeach

                                                <!--- paypal -->
                                                <div id="paypal_button" class="payment_btns" style="display: none"></div>

                                                <button id="braintree_button" style="display: none" class="btn btn-dark payment_btns" data-toggle="modal" data-target="#braintreeModel" >@lang('website.Order Now')</button>

                                                <button id="stripe_button" class="btn btn-dark payment_btns" style="display: none" data-toggle="modal" data-target="#stripeModel" >@lang('website.Order Now')</button>

                                                <button id="cash_on_delivery_button" class="btn btn-dark payment_btns" style="display: none">@lang('website.Order Now')</button>
                                                <button id="razor_pay_button" class="razorpay-payment-button btn btn-dark payment_btns"  style="display: none"  type="button">@lang('website.Order Now')</button>
                                                <a href="{{ URL::to('/store_paytm')}}" id="pay_tm_button" class="btn btn-dark payment_btns"  style="display: none"  type="button">@lang('website.Order Now')</a>

                                                <button id="instamojo_button" class="btn btn-dark payment_btns" style="display: none" data-toggle="modal" data-target="#instamojoModel">@lang('website.Order Now')</button>

                                                <a href="{{ URL::to('/checkout/hyperpay')}}" id="hyperpay_button" class="btn btn-dark payment_btns" style="display: none">@lang('website.Order Now')</a>
                                                <button id="banktransfer_button" class="btn btn-dark payment_btns" style="display: none">@lang('website.Order Now')</button>
                                                <button id="paystack_button" class="btn btn-dark payment_btns" style="display: none">@lang('website.Order Now')</button>

                                                <button id="midtrans_button" class="btn btn-dark payment_btns" style="display: none">@lang('website.Order Now')</button>
                                                <input type="hidden" id="midtransToken" value="">
                                                {{-- payment error content show --}}
                                                <div class="alert alert-danger alert-dismissible" id="payment_error" role="alert" style="display: none">
                                                  <span class="sr-only">@lang('website.Error'):</span>
                                                    <span id="payment_error-error-text"></span>
                                                </div>

                                              </div>
                                       </div>
                                       <!-- The braintree Modal -->
                                       <div class="modal fade" id="braintreeModel">
                                         <div class="modal-dialog">
                                           <div class="modal-content">
                                               <form id="checkout" method="post" action="{{ URL::to('/place_order')}}">
                                                 <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                                                   <!-- Modal Header -->
                                                   <div class="modal-header">
                                                       <h4 class="modal-title">@lang('website.BrainTree Payment')</h4>
                                                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                   </div>
                                                   <div class="modal-body">
                                                         <div id="payment-form"></div>
                                                   </div>
                                                   <div class="modal-footer">
                                                       <button type="submit" class="btn btn-dark">@lang('website.Pay') {{Session::get('symbol_left')}} {{number_format((float)$total_price+0, 2, '.', '')}}{{Session::get('symbol_right')}}</button>
                                                   </div>
                                               </form>
                                           </div>
                                          </div>
                                       </div>

                                       <!-- The instamojo Modal -->
                                       <div class="modal fade" id="instamojoModel">
                                         <div class="modal-dialog">
                                           <div class="modal-content">
                                               <form id="instamojo_form" method="post" action="">
                                                 <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                                                 <input type="hidden" name="amount" value="{{number_format((float)$total_price+0, 2, '.', '')}}">
                                                   <!-- Modal Header -->
                                                   <div class="modal-header">
                                                       <h4 class="modal-title">@lang('website.Instamojo Payment')</h4>
                                                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                   </div>
                                                  <div class="modal-body">
                                                    <div class="from-group mb-3">
                                    									<div class="col-12"> <label for="inlineFormInputGroup">@lang('website.Full Name')</label></div>
                                    									<div class="input-group col-12">
                                    										<input type="text" name="firstName" id="firstName" placeholder="@lang('website.Full Name')" class="form-control">
                                    										<span class="help-block error-content" hidden>@lang('website.Please enter your full name')</span>
                                    								 </div>
                                    								</div>
                                                    <div class="from-group mb-3">
                                    									<div class="col-12"> <label for="inlineFormInputGroup">@lang('website.Email')</label></div>
                                    									<div class="input-group col-12">
                                    										<input type="text" name="email_id" id="email_id" placeholder="@lang('website.Email')" class="form-control">
                                    										<span class="help-block error-content" hidden>@lang('website.Please enter your email address')</span>
                                    								 </div>
                                    								</div>
                                                    <div class="from-group mb-3">
                                    									<div class="col-12"> <label for="inlineFormInputGroup">@lang('website.Phone Number')</label></div>
                                    									<div class="input-group col-12">
                                    										<input type="text" name="phone_number" id="insta_phone_number" placeholder="@lang('website.Phone Number')" class="form-control">
                                    										<span class="help-block error-content" hidden>@lang('website.Please enter your valid phone number')</span>
                                    								 </div>
                                    								</div>                                                       

                                                       <div class="alert alert-danger alert-dismissible" id="insta_mojo_error" role="alert" style="display: none">
                                                            <span class="sr-only">@lang('website.Error'):</span>
                                                            <span id="instamojo-error-text"></span>
                                                        </div>
                                                   </div>
                                                   <div class="modal-footer">
                                                       <button type="button" id="pay_instamojo" class="btn btn-dark">@lang('website.Pay') {{$web_setting[19]->value}}{{number_format((float)$total_price+0, 2, '.', '')}}</button>
                                                   </div>
                                               </form>
                                           </div>
                                          </div>
                                       </div>

                                       <!-- The stripe Modal -->
                                       <div class="modal fade" id="stripeModel">
                                           <div class="modal-dialog">
                                               <div class="modal-content">

                                               <main>
                                               <div class="container-lg">
                                                   <div class="cell example example2">
                                                       <form>
                                                         <div class="row">
                                                           <div class="field">
                                                             <div id="example2-card-number" class="input empty"></div>
                                                             <label for="example2-card-number" data-tid="elements_examples.form.card_number_label">@lang('website.Card number')</label>
                                                             <div class="baseline"></div>
                                                           </div>
                                                         </div>
                                                         <div class="row">
                                                           <div class="field half-width">
                                                             <div id="example2-card-expiry" class="input empty"></div>
                                                             <label for="example2-card-expiry" data-tid="elements_examples.form.card_expiry_label">@lang('website.Expiration')</label>
                                                             <div class="baseline"></div>
                                                           </div>
                                                           <div class="field half-width">
                                                             <div id="example2-card-cvc" class="input empty"></div>
                                                             <label for="example2-card-cvc" data-tid="elements_examples.form.card_cvc_label">@lang('website.CVC')</label>
                                                             <div class="baseline"></div>
                                                           </div>
                                                         </div>
                                                       <button type="submit" class="btn btn-dark" data-tid="elements_examples.form.pay_button">@lang('website.Pay') {{$web_setting[19]->value}}{{number_format((float)$total_price+0, 2, '.', '')}}</button>

                                                         <div class="error" role="alert"><svg xmlns="https://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17">
                                                             <path class="base" fill="#000" d="M8.5,17 C3.80557963,17 0,13.1944204 0,8.5 C0,3.80557963 3.80557963,0 8.5,0 C13.1944204,0 17,3.80557963 17,8.5 C17,13.1944204 13.1944204,17 8.5,17 Z"></path>
                                                             <path class="glyph" fill="#FFF" d="M8.5,7.29791847 L6.12604076,4.92395924 C5.79409512,4.59201359 5.25590488,4.59201359 4.92395924,4.92395924 C4.59201359,5.25590488 4.59201359,5.79409512 4.92395924,6.12604076 L7.29791847,8.5 L4.92395924,10.8739592 C4.59201359,11.2059049 4.59201359,11.7440951 4.92395924,12.0760408 C5.25590488,12.4079864 5.79409512,12.4079864 6.12604076,12.0760408 L8.5,9.70208153 L10.8739592,12.0760408 C11.2059049,12.4079864 11.7440951,12.4079864 12.0760408,12.0760408 C12.4079864,11.7440951 12.4079864,11.2059049 12.0760408,10.8739592 L9.70208153,8.5 L12.0760408,6.12604076 C12.4079864,5.79409512 12.4079864,5.25590488 12.0760408,4.92395924 C11.7440951,4.59201359 11.2059049,4.59201359 10.8739592,4.92395924 L8.5,7.29791847 L8.5,7.29791847 Z"></path>
                                                           </svg>
                                                           <span class="message"></span></div>
                                                       </form>
                                                                   <div class="success">
                                                                     <div class="icon">
                                                                       <svg width="84px" height="84px" viewBox="0 0 84 84" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink">
                                                                         <circle class="border" cx="42" cy="42" r="40" stroke-linecap="round" stroke-width="4" stroke="#000" fill="none"></circle>
                                                                         <path class="checkmark" stroke-linecap="round" stroke-linejoin="round" d="M23.375 42.5488281 36.8840688 56.0578969 64.891932 28.0500338" stroke-width="4" stroke="#000" fill="none"></path>
                                                                       </svg>
                                                                     </div>
                                                                     <h3 class="title" data-tid="elements_examples.success.title">@lang('website.Payment successful')</h3>
                                                                     <p class="message"><span data-tid="elements_examples.success.message">@lang('website.Thanks You Your payment has been processed successfully')</span></p>
                                                                   </div>

                                                               </div>
                                                           </div>
                                                       </main>
                                                   </div>
                                             </div>
                                         </div>

                                   </div>

                 </div>
               </div>
         </div>
         </div>
         </div>
     </div>
     
     <div class="col-12 col-xl-4 checkout-right cart-page-one cart-area">
      <table class="table right-table">
        <thead>
          <tr>
            <th scope="col" colspan="2" align="center">@lang('website.Order Summary')</th>                    
          </tr>
        </thead>
        <tbody>
                 <!-- <tr>
                      <th scope="row">@lang('website.SubTotal')</th>
                      <td align="right">
                        @php

                        if(!empty(session('coupon_discount'))){
                        $coupon_amount = session('currency_value') * session('coupon_discount');  
                      }else{
                      $coupon_amount = 0;
                    }

                    @endphp
                    {{Session::get('symbol_left')}} {{session('currency_value') * $price+0}}{{Session::get('symbol_right')}}
                  </td>
                </tr> -->
                <tr>
                  <th scope="row">Total Product</th>
                  <td align="right">{{$customers_basket_quantity_order_summary}}</td>
                </tr>
                <tr>
                  <th scope="row">Total Coupons</th>
                  <td align="right" id="totalcoupons">{{$customers_basket_quantity_order_summary*2}}</td>
                  <input type="hidden" id="totalCouponChecker" value="added">
                </tr>
                <tr>
                  <th scope="row">Donate to receive an <br>additional entry! <sub>I agree to donate all purchased products to charity as per the "Draw Terms & Conditions"</sub></th>
                  <td align="right"><label class="switch">
                    <input type="checkbox" name="donation" onclick="donationTicket()"  checked>
                    <span class="slider"></span>
                    </label></td>
                  <!-- <td align="right"><input type="checkbox" name="donation"></td> -->
                </tr>
                <tr>
                  <td scope="row">
                              <sub> You will earn
                              <strong class="cart-ipoint js-earned-points">{{round((10 / 100)*(session('currency_value') * $price))}}</strong>
                              <strong> lPoints</strong> 
                              from this purchase</sub>
                          </td>
                </tr>
                <!-- <tr>
                  <th scope="row">@lang('website.Discount(Coupon)')</th>
                  <td align="right">{{Session::get('symbol_left')}} {{number_format((float)$coupon_amount, 2, '.', '')+0}}{{Session::get('symbol_right')}}</td>
                </tr> -->
                <tr class="item-price">
                  <th scope="row"><strong>@lang('website.Total')</strong></th>
                  <td align="right" ><strong>{{Session::get('symbol_left')}} {{session('currency_value') * $price+0-number_format((float)$coupon_amount, 2, '.', '')}} {{Session::get('symbol_right')}}</strong></td>
                </tr>
              </tbody>
        
      </table>

       </div>
   </div>
 <!-- </div> -->
</section>
</section>

<script>

jQuery(document).on('click', '#cash_on_delivery_button, #banktransfer_button', function(e){
	jQuery("#update_cart_form").submit();
});
</script>
<script>
    $('#rzp-footer-form').submit(function (e) {
        var button = $(this).find('button');
        var parent = $(this);
        button.attr('disabled', 'true').html('Please Wait...');
        $.ajax({
            method: 'get',
            url: this.action,
            data: $(this).serialize(),
            complete: function (r) {
                jQuery("#update_cart_form").submit();
                console.log(r);
            }
        })
        return false;
    })
</script>

<script>
    function padStart(str) {
        return ('0' + str).slice(-2)
    }

    function demoSuccessHandler(transaction) {
        // You can write success code here. If you want to store some data in database.
        jQuery("#paymentDetail").removeAttr('style');
        jQuery('#paymentID').text(transaction.razorpay_payment_id);
        var paymentDate = new Date();
        jQuery('#paymentDate').text(
                padStart(paymentDate.getDate()) + '.' + padStart(paymentDate.getMonth() + 1) + '.' + paymentDate.getFullYear() + ' ' + padStart(paymentDate.getHours()) + ':' + padStart(paymentDate.getMinutes())
                );

        jQuery.ajax({
            method: 'post',
            url: "{!!route('dopayment')!!}",
            data: {
                "_token": "{{ csrf_token() }}",
                "razorpay_payment_id": transaction.razorpay_payment_id
            },
            complete: function (r) {
                jQuery("#update_cart_form").submit();
                console.log(r);
            }
        })
    }
</script>
<?php

if(!empty($result['payment_methods'][6]) and $result['payment_methods'][6]['active'] == 1){

$rezorpay_key =  $result['payment_methods'][6]['RAZORPAY_KEY'];

if(!empty($result['commonContent']['setting'][79]->value)){
  $name = $result['commonContent']['setting'][79]->value;
}else{
  $name = Lang::get('website.Ecommerce');
}

$logo = $result['commonContent']['setting'][15]->value;
 ?>
<script>
    var options = {
        key: "{{ $rezorpay_key }}",
        amount: '<?php echo (float) round($total_price, 2)*100;?>',
        name: '{{$name}}',
        image: '{{$logo}}',
        handler: demoSuccessHandler
    }
</script>
<script>
    window.r = new Razorpay(options);
    document.getElementById('razor_pay_button').onclick = function () {
        r.open()
    }
</script>

<?php
}

foreach($result['payment_methods'] as $payment_methods){
  if($payment_methods['active']==1 and $payment_methods['payment_method']=='midtrans'){
    if($payment_methods['environment'] == 'Live'){
      print '<script src="https://app.midtrans.com/snap/snap.js" data-client-key="'.$payment_methods['public_key'].'"></script>';
    }else{
      print '<script src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="'.$payment_methods['public_key'].'"></script>';

    }
  }
}
                                          
                                            

?>

<script>
 
jQuery( document ).ready( function () {
  var midtrans_environment = jQuery('#midtrans_environment').val();
  if(midtrans_environment !== undefined){
    midtrans_environment = midtrans_environment;
  }else{
    midtrans_environment = ';'
  }
});

</script>


<script type="text/javascript">
  document.getElementById('midtrans_button').onclick = function(){
    var tokken = jQuery('#midtransToken').val();
      // SnapToken acquired from previous step
      snap.pay(tokken, {
          // Optional
          onSuccess: function(result){
           // alert('onSuccess');
              // /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
              paymentSuccess(JSON.stringify(result, null, 2));
          },
          // Optional
          onPending: function(result){
           // alert('onPending');
              /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
          },
          // Optional
          onError: function(result){
            jQuery('#payment_error').show();
            var response = JSON.stringify(result, null, 2);
           // alert('error');
              /* You may add your own js here, this is just example */ document.getElementById('payment_error-error-text').innerHTML += result.status_message;
          }
      });
  };
</script>

@endsection
