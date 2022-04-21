@extends('web.layout')

@section('content')

<section class="product-details-sec">

    <div class="container">

      @foreach($result['campaigns'] as $key => $row)

      @if($row->campaigns_id == $mycampaignsid)

      <form name="attributes" id="add-Product-form_{{$row->campaigns_id}}" method="post" >

        <input type="hidden" name="products_id" value="{{$row->products_id}}"products_id="{{$row->products_id}}" id="product_id">

        <input type="hidden" name="products_price" id="products_price" value="{{$row->products_price}}">

        <input type="hidden" name="checkout" id="checkout_url" value="false">

        <?php 

        $datacheck = $row->no_of_orders-$result['total_order'][$key];

        ?>
        <meta property="og:image:width" content="300" />
        <meta property="og:image:height" content="300" />
        <meta property="og:url" content="http://www.nytimes.com/2015/02/19/arts/international/when-great-minds-dont-think-alike.html" />
        <meta property="og:type" content="article" />
        <meta property="og:title" content="When Great Minds Don’t Think Alike" />
        <meta property="og:description" content="How much does culture influence creative thinking?" />
        <meta property="og:image" content="{{asset($result['products_featured_img'][$key]->path)}}" />
        <div class="row">

          <div class="col-lg-9">

            <div id="product-detail-box">

            

              <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-4">

                  <div class="product-detail-box-pic">

                    <img src="{{asset($result['products_featured_img'][$key]->path)}}" class="img-fluid">

                    <h5>Buy A</h5>

                    <h6>{{$result['products_description'][$key]->products_name}}</h6>

                  </div>

                </div>

                <div class="col-lg-4 col-sm-4">

      
@if($row->campaign_type=="regular")
                    <div class="progressbar">
                <input type="hidden" id="totalcamp" value="{{$row->no_of_orders}}">

                <div class="second circle" data-percent="{{$result['total_order'][$key]}}" data-total="{{$row->no_of_orders}}" data-type="{{$row->campaign_type}}">
                  <img src="{{asset('web/assets/images/progressIcon.webp')}}">
                </div>
             

                    </div>
                    @else
                    @php
$now = time(); // or your date as well
$your_date = strtotime($row->end_date);
if($your_date>=$now){
$datediff = $your_date - $now ;
}else{
  $datediff =  $now- $your_date ;
}

$days=round($datediff / (60 * 60 * 24));

$start_date = strtotime($row->start_date);
$datediffstart = $your_date - $start_date ;
$days_start=round($datediffstart / (60 * 60 * 24));
@endphp



<div class="progressbar">
                <input type="hidden" id="totalcamp" value="{{$days_start}}">

                <div class="second circle" data-percent="{{$days}}" data-total="{{$days_start}}" data-display="{{$days}}" data-type="{{$row->campaign_type}}">
                  <img src="{{asset('web/assets/images/progressIcon.webp')}}">
                </div>
             

                    </div>
                    @endif
                  </div>

                <div class="col-lg-4 col-sm-4">

                  <div class="product-detail-box-pic">

                    <img src="{{asset('images/'.$result['rewards'][$key]->reward_image)}}" class="img-fluid">

                    <h5>Get a chance to Win</h5>

                    <h6><?php echo htmlspecialchars_decode($result['rewards'][$key]->reward_title);?></h6>

                  </div>

                </div>
@if($row->campaign_type=="regular")
                <h1>{{$result['total_order'][$key]}} sold <span>out of {{$row->no_of_orders}}</span></h1>
                @else

    <h1>Ends in  <span>{{$days}} days</span></h1>

    @endif
              </div>
              <img src="{{asset('web/assets/images/time-pic.png')}}" class="img-fluid time-icon swing-3">
            </div>

            <h2>Buy a {{$result['products_description'][$key]->products_name}} Get a chance to win <?php echo htmlspecialchars_decode($result['rewards'][$key]->reward_title);?></h2>

           <!--  <h3>Prize Details</h3>

            <p>{!!$result['rewards'][$key]->reward_description!!}</p> -->

         
          </div>

          <div class="col-lg-3">

            <div class="pro-price">

              <div class="row">

                <div class="col-lg-6 col-sm-6 col-6">

                  <h4>Price</h4>

                </div>

                <div class="col-lg-6 col-sm-6 col-6">

                  <h5>{{Session::get('symbol_left')}} {{$row->products_price}} {{Session::get('symbol_right')}}</h5>

                </div>

              </div>

            </div>

            <a href="javascript:;" class="btn" id="continue-shop-btn2" onclick="addToCart('{{$row->products_id}}','{{$row->products_price}}','{{$row->campaigns_id}}')"><span>Add to Cart</span></a>

          

             @if(!empty(auth()->guard('customer')->user()->id))

                @if(App\Models\Web\Customer::checkWhishlist($row->products_id) == true)

                  <a href="javascript:;" class="btn wishlist active" products_id="{{$row->products_id}}" id="continue-shop-btn"><span>In wish list</span></a>

                @else

                  <a href="javascript:;" class="btn wishlist" products_id="{{$row->products_id}}" id="continue-shop-btn"><span>Add to wish list</span></a>

                @endif 

              @else

               <a href="javascript:;" class="wishlist btn" products_id="{{$row->products_id}}" id="continue-shop-btn"><span>Add to wish list</span></a>

            @endif

            <!-- <a href="javascript:;" class="btn" id="continue-shop-btn"><span>Share Campaign</span></a> -->

             <ul class="socialshare">
             <li class="subPopBtn"><a href="javascript:;" id="continue-shop-btn" class="btn"><span>Share Campaign</span></a>

                    <ul class="subPop a2a_kit">

                      <li><a class="a2a_button_facebook " title="hello" data-share="facebook"target="_blank"><i class="fab fa-facebook-f"></i>Share on Facebook</a></li>

                      <li><a href="http://twitter.com/share?text={{$result['products_description'][$key]->products_name}}&url=https://winztime.com/campaigns/detail/{{$row->campaigns_id}}" title="hello" data-share="facebook"target="_blank"><i class="fab fa-twitter-square"></i>Share on Twitter</a></li>

                      <li><a class="a2a_button_linkedin"><i class="fab fa-linkedin-in"></i>Share on Linkedin</a></li>

                      <li><a href="https://api.whatsapp.com/send/?phone=971552801120&text&app_absent=0"><i class="fab fa-whatsapp"></i>Share on Whatsapp</a></li>

                      <!-- <li><a href="javascript:;"><i class="fab fa-instagram"></i>Share on Instagram</a></li> -->

                      <li><a href="mailto:?Subject=Please check out this exciting campaign!&amp;Body=Check out this exciting campaign! https://winztime.com/campaigns/detail/{{$row->campaigns_id}}"><i class="far fa-envelope"></i>Share on E-mail</a></li>

                    </ul>

                  </li>
                </ul>

            </div>
            <script async src="https://static.addtoany.com/menu/page.js"></script>
            <div class="col-lg-12">

              <div class="product-details-box2">

                <div class="row">

                  <div class="col-lg-9 col-md-8 col-sm-8">

                    <div class="pro-details-txt">

                      <h4>Prize details</h4>

                      <p>{!!$result['rewards'][$key]->reward_description!!}</p>

                    </div>

                  </div>

                  <div class="col-lg-3 col-md-4 col-sm-4">

                  <div class="pro-details-pic">

                    <img src="{{asset('images/'.$result['rewards'][$key]->reward_image)}}" class="img-fluid">

                  </div>

                  </div>

                  

                </div>

              </div>

            </div>

            <div class="col-lg-12">

              <div class="product-details-box2">

                <div class="row">

                  <div class="col-lg-3 col-md-4 col-sm-4">

                  <div class="pro-details-pic">

                    <img src="{{asset($result['products_featured_img'][$key]->path)}}" class="img-fluid">

                    <h5>{{$result['products_description'][$key]->products_name}}</h5>

                    <h6>{{Session::get('symbol_left')}} {{$row->products_price}} {{Session::get('symbol_right')}}</h6>

                  </div>

                  </div>

                  <div class="col-lg-9 col-md-8 col-sm-8">

                    <div class="pro-details-txt">

                      <h4>Product details</h4>

                      <p>{!!$result['products_description'][$key]->products_description!!} </p>

                    </div>

                  </div>

                </div>

              </div>

            </div>

        </div>

      </form>

      @endif

      @endforeach

    </div>

  </section>

  <script type="text/javascript">

    jQuery(document).on('click', '.wishlist', function(e){

    var products_id = jQuery(this).attr('products_id');

    var selector = jQuery(this);

    var user_count = jQuery('#wishlist-count').html();

    jQuery.ajax({

    beforeSend: function (xhr) { // Add this line

        xhr.setRequestHeader('X-CSRF-Token', jQuery('[name="_csrfToken"]').val());

    },

      url: '{{ URL::to("/likeMyProduct")}}',

      type: "POST",

      data: {"products_id":products_id,"_token": "{{ csrf_token() }}"},



      success: function (res) {

        var obj = JSON.parse(res);

        var message = obj.message;

        console.log(obj.success);

        if(obj.success==0){

        }else if(obj.success==2){

          jQuery(selector).addClass('active');

          // jQuery('.wishlist.active > img').attr('src','{{url('/')}}/web/assets/images/sec3Icon-red.png');

          jQuery(selector).children('span').html("In Wish list");

          // jQuery('.total_wishlist').html(obj.total_wishlist);

          

        }else if(obj.success==1){

          // jQuery('.heart').attr('src','https://winztime.com/web/assets/images/sec3Icon.png');

          jQuery(selector).removeClass('active');

          // jQuery('.wishlist > img').attr('src','{{url('/')}}/web/assets/images/sec3Icon.png');

          jQuery(selector).children('span').html("Add to Wish list");

          // jQuery('.total_wishlist').html(obj.total_wishlist);

        }

        

        notificationWishlist(message);





      },

    });



    }); 

  </script>

@include('web.common.scripts.addToCompare')

@include('web.common.scripts.Like')

@endsection

