@extends('web.layout')
@section('content')

<section class="banner">
  <div class="container">
    
    <ul class="cycle-slideshow" data-cycle-slides="> li" data-cycle-fx='fade' data-cycle-pause-on-hover="true" data-cycle-speed='1500' data-cycle-timeout='2000' data-cycle-log="false" data-cycle-prev=".prev" data-cycle-next=".next" data-cycle-pager=".cycle-pager"  data-cycle-swipe="true">
      @foreach($result['slides'] as $key=>$slides_data)
      <li>
        <figure>
          <img src="{{asset('/').$slides_data->path}}" alt="{{$slides_data->alt_tag}}" class="lazyload">
          <figcaption class="wow slideInLeft">
            <div class="row">
              <div class="col-md-5">
              </div>
              <div class="col-md-6">
              </div>
            </div>
          </figcaption>
        </figure>
      </li>
      @endforeach
    </ul>
    <a href="javascript:;" class="prev prevNxt lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
    <a href="javascript:;" class="next prevNxt lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
    <div class="cycle-pager"></div>
  </div>
</section>

<section class="main-section home-section-two">
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <figure class="wow fadeIn sec2Wrp">
          <img src="{{asset('web/assets/images/sec2ImgBg.webp')}}" class="lazyload" alt="Winztime z points background">
          <figcaption>
            <h3>
              Z points <br> What are Z points?
            <br>Our loyal members....
          </h3>
            <a href="{{url('/page/z-points')}}" class="btn"><span>Read More</span></a>
            <div class="winztime-ball">
              <img src="{{asset('web/assets/images/ball-winztime.png')}}" class="lazyload" alt="Buy Winztime stress ball">
            </div>
          </figcaption>
        </figure>
      </div>
      <div class="col-sm-6">
        <figure class="wow fadeIn sec2Wrp2">
          <img src="{{asset('web/assets/images/sec2ImgBg2.webp')}}" class="lazyload" alt="Winztime background">
          <figcaption>
            <img src="{{asset('web/assets/images/mascot.PNG')}}" class="mascotImg lazyload" width="180px"  alt="Gym accessories UAE">
            <h3>Follow us on<span>Social Media</span></h3>
            <ul class="" style="display: inline-flex;min-width: 120px;">
              <li style="margin: auto;"><a href="{{$result['commonContent']['setting'][53]->value}}"><i class="fab fa-instagram"></i></a></li>
              <li style="margin: auto;"><a href="{{$result['commonContent']['setting'][50]->value}}"><i class="fab fa-facebook-f"></i></a></li>
              <li style="margin: auto;"><a href="{{$result['commonContent']['setting'][127]->value}}"><i class="fab fa-youtube"></i></a></li><!-- replace this with snapchat -->
              <li style="margin: auto;"><a href="{{$result['commonContent']['setting'][51]->value}}"><i class="fab fa-whatsapp"></i></a></li>
              
            </ul>
          </figcaption>
        </figure>
      </div>
    </div>
  </div>
</section>

<section class="main-section home-section-three">
  <div class="container">   
  
    <h2>Active Campaigns </h2>
    <a href="javascript:;" class="prev3 prevNxt3 lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
    <a href="javascript:;" class="next3 prevNxt3 lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
    <ul class="cycle-slideshow" data-cycle-fx='carousel' data-cycle-slides="> li" data-cycle-carousel-visible="4" data-cycle-speed='1200' data-cycle-timeout='0' data-cycle-prev=".prev3" data-cycle-next=".next3"  data-cycle-pause-on-hover="true" data-cycle-carousel-fluid="true"  data-cycle-swipe="true">
      @if(!isset($result['campaigns']))
      No Campaign is Active
      @else
      @foreach($result['campaigns'] as $key => $row)
      <li>
        <div class="sec3Wrp customhhieght">
          <div class="earlybird">
              <?php 
                $datacheck = $row->no_customers-$result['total_order'][$key];
                ?>
                @if($datacheck > 0 )
                <div class="flashSale">
                  <p title="Z-Power is here"><i class="fa fa-bolt"></i></p>
                </div>
                @endif
            </div>
          <div class="soldWrp">
        @if($row->campaign_type=="regular")
            <div class="progressbar ">
              <input type="hidden" id="totalcamp" value="{{$row->no_of_orders}}">
            
              <div class="second circle" data-percent="{{$result['total_order'][$key]}}" data-total="{{$row->no_of_orders}}" data-type="{{$row->campaign_type}}">
                <p><span></span>out of <strong>{{$row->no_of_orders}}</strong></p>
                <img src="{{asset('web/assets/images/progressIcon.webp')}}" class="lazyload">
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
             <div class="progressbar ">
              <input type="hidden" id="totalcamp" value="{{$row->no_of_orders}}">
       
              <div class="second circle" data-percent="{{$days}}" data-total="{{$days_start}}" data-display="{{$days}}" data-type="{{$row->campaign_type}}">
                <p><span>  </span> <strong>Days</strong></p>
                <img src="{{asset('web/assets/images/progressIcon.webp')}}" class="lazyload">
              </div>
            </div>
            @endif
          </div>
          <figure>
            <img src="{{asset('images/'.$result['rewards'][$key]->reward_image)}}" class="lazyload" alt="{{$result['rewards'][$key]->reward_title ?? ''}}">
          </figure>
          <h3><span>Buy A {{$result['products_description'][$key]->products_name}}</span> {{Session::get('symbol_left')}} {{$row->products_price}} {{Session::get('symbol_right')}}</h3>
          <a href="{{asset('campaigns/detail/'.$row->campaigns_id)}}" class="btn cartBtn" ><span>Prize Details</span></a>
          <a href="javascript:;" class="btn cartBtn cartBtn2" onclick="addToCart('{{$row->products_id}}','{{$row->products_price}}','{{$row->campaigns_id}}')"><span>Add to Cart</span></a>
          <h4 class="reward_title"><span>Get a chance to <em>Win</em></span><?php echo htmlspecialchars_decode($result['rewards'][$key]->reward_title);?></h4>
          
           @if(isset($row->show_date))

          @if($row->show_date == 1)
          <h3><small>Max Draw Date:<span> {{ date('d/m/Y', strtotime($row->end_date)) }}</span></small></h3>
          <h3><small>or when the campaign is sold out. Whichever is earlier. </small></h3>
          @endif
              @endif
                 @if($row->is_banner_active=="1")
       <div class="thumbnail thumbnail-banner" >
          
          <img src="{{asset('web/assets/images/National_day_banner.png')}}" alt="National Day Cash prize">
        </div>
        @endif
        </div>

      </li>
      @endforeach
      @endif

    </ul>
  </div>
</section>

@if(count($result['winners']) > 0 )
<section class="main-section home-section-four">
  <div class="container">
    <div class="sec4MainWrap">
      <div class="sec4-svg">
        <h2>Winztime Winners</h2>
        <p>All our winners are announced in this section.</p>
        <a href="javascript:;" class="prev4 prevNxt4 lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
        <a href="javascript:;" class="next4 prevNxt4 lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
        <ul class="cycle-slideshow" data-cycle-fx='carousel' data-cycle-slides="> li" data-cycle-carousel-visible="4" data-cycle-speed='1200' data-cycle-timeout='0' data-cycle-prev=".prev4" data-cycle-next=".next4"  data-cycle-pause-on-hover="true" data-cycle-carousel-fluid="true"  data-cycle-swipe="true">
          @foreach($result['winners'] as $single_winner)
           <li>
            <div class="sec4Wrp wow fadeIn" data-wow-duration="500" data-wow-delay="200ms">
              <h3><em>Congratulations</em></h3>
              <figure>
                <img src="{{asset($single_winner->path)}}" class="lazyload" alt="{{$single_winner->alt_tag}}">
              </figure>
               <figcaption>
                <p><strong>{{$single_winner->winner_title}}</strong><span>On winning</span></p>
              <h4>{{$single_winner->winner_prize}}</h4>
              </figcaption>
            </div>
          </li>
          @endforeach
       
          
        </ul>
      </div>
    </div>
  </section>
  @endif
  <section class="main-section home-section-six wow fadeInRight">
      <div class="container">
        <div class="sec6MainWrap">
          <div class="header-section">
            <h2>Sold Out</h2>
            <p>All our sold out campaigns along with their corresponding draw dates are listed here.</p>
          </div>
          <a href="javascript:;" class="prev7 prevNxt7"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
          <a href="javascript:;" class="next7 prevNxt7"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
          <ul class="cycle-slideshow" data-cycle-fx='carousel' data-cycle-slides="> li" data-cycle-carousel-visible="4" data-cycle-speed='1200' data-cycle-timeout='0' data-cycle-prev=".prev7" data-cycle-next=".next7"  data-cycle-pause-on-hover="true" data-cycle-carousel-fluid="true">

            @if(!isset($result['campaigns_sold']))
            No Campaign is Active
            @else
            @foreach($result['campaigns_sold'] as $key => $row)
            <li>
              <div class="sec6Wrp wow fadeIn" data-wow-duration="500" data-wow-delay="200ms">
                <h3>SOLD OUT</h3>
                   @if(isset($result['sold_rewards']))
                <figure>
                  <img src="{{asset('images/'.$result['sold_rewards'][$key]->reward_image)}}" id="{{$row->reward_id}}" alt="{{$result['sold_rewards'][$key]->reward_title}}">
                </figure>
                @endif
                <h4 class="sold_campaigns_title">{{$row->campaigns_title}}<span>Draw held on</span></h4>
                <p>{{ date('d F,Y', strtotime($row->end_date)) }}</p>
              </div>
            </li>
            @endforeach
            @endif
          </ul>
        </div>
      </div>
    </section>
  <section class="main-section home-section-five">
    <div class="container">
      <h2>Winztime Products</h2>
      <div class="sec5MainWrp">
        <a href="javascript:;" class="prev5 prevNxt5 lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
        <a href="javascript:;" class="next5 prevNxt5 lazyload"><img src="{{asset('web/assets/images/arrowRght.webp')}}" alt="Arrow Right"></a>
        <ul class="cycle-slideshow" data-cycle-fx='carousel' data-cycle-slides="> li" data-cycle-carousel-visible="5" data-cycle-speed='1200' data-cycle-timeout='0' data-cycle-prev=".prev5" data-cycle-next=".next5"  data-cycle-pause-on-hover="true" data-cycle-carousel-fluid="true" data-cycle-swipe="true">

          <?php $i= 0; 
?>
          @foreach($result['products']["product_data"] as $product)
          <?php  

              if ($product->products_id == 45) {
                continue;
              }
              $i++;
              ?>  
          <li>
            <div class="sec5Wrp">
              <a href="javascript:;" class="productWrap swipe-to-top modal_show_products" products_id="{{$product->products_id}}" data-toggle="modal" data-target="#myModal">
              <figure>
                <img src="{{asset($product->image_path)}}" class="lazyload" alt="{{$product->alt_tag}}">
              </figure>
                            
              <p>{{$product->products_name}}</p>
              <h4>AED {{$product->products_price}}</h4>
            </a>
            </div>
          </li>
          @endforeach
        </ul>
      </div>
    </div>
  </section>

    <section class="main-section home-section-seven ">
      <!-- <script src="https://apps.elfsight.com/p/platform.js" defer="defer"></script> -->
      <script type="text/javascript" src="{{asset('web/assets/js/instagram-feed.js')}}" defer="defer"></script>
      <div class="container">
<div class="elfsight-app-2b99b809-2a83-4457-9bf9-e9da6a5f7ceb"></div>
</div>
 </section>
  <!--  <section class="main-section home-section-eight wow fadeInRight pt-0 webwinztime">
    <div class=" container eightclass">
  <div class=" raffle ">
    <div class="gifts ">
    <div class="row ">
    <h2 >Raffle Draw in Dubai </h2>
   

    <p>Winztime UAE has active campaigns which give you an opportunity to enter the raffle draw in UAE. This draw comes with luxury gifts and prizes. It only takes a few minutes to participate in our raffle draw, all you have to do is purchase any item from the campaign then get amazing prizes.</p>
  </div>
   </div>
  </div>
</div>
</section> -->
<section class="main-section wow fadeInRight pt-0 mobilewinztime">

    <div class=" container postionSet">
<div class="imgsetraffle">
        <img src="{{asset('web/assets/images/raffled.png')}}" class="imgsetraffleone">
    <img src="{{asset('web/assets/images/raffle-newwinztime.png')}}" class="imgsetraffletwo">

      </div>
  <div class=" mobilewinztimeview">
    <div class="mobilewinztimebox ">
   
    <h2 >Raffle Draw in Dubai </h2>
   

    <p class="mobilewinztext">Winztime UAE has active campaigns which give you an opportunity to enter the raffle draw in UAE. This draw comes with luxury gifts and prizes. It only takes a few minutes to participate in our raffle draw, all you have to do is purchase any item from the campaign then get amazing prizes.</p>

   </div>
  </div>
</div>
</section>
 <script type="text/javascript">
          jQuery(document).on('click', '.modal_show_products', function(e){
            jQuery("#products-detail").html("");
            var parent = jQuery(this);

            var products_id = jQuery(this).attr('products_id');
            var message ;
            jQuery(function ($) {
            jQuery.ajax({
            url: '{{ URL::to("/modal_show_products")}}',
              headers: {'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')},

              type: "POST",
              data: '&products_id='+products_id,
              success: function (res) {
                jQuery("#products-detail").html(res);
                jQuery('#myModal').modal('show');

              },
            });
           });
          });
        </script>
   
        <style>
        a.nav-link.active::after {
          background: #ff0 !important;
        }
        a.nav-link.active {
          color: #ff0 !important;
        }
.thumbnail-banner{
 position: absolute;
 bottom: 17px;
 width: 100%;
 height: 63px;
 left: 0;
}
 .reward_title{
white-space: initial;
}
.sold_campaigns_title{
white-space: initial;
}


.sec3Wrp small {
    white-space: break-spaces;
}
.customhhieght{
  height: 500px;
}
.sec6Wrp {
  height: 321px;
}
p.mobilewinztext {
    font-size: 15px;
    line-height: 21px;
    padding: 0 40px;
    text-align: center;
    margin-top: 0px;
    padding: 0px 102px;
}
.mobilewinztimeview {
    margin: 0 auto;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    max-width: 1000px;
}
.container.postionSet {
    position: relative;
        text-align: center;
}
img.imgsetraffletwo {
    display: none;
}
@media screen and (min-device-width: 601px) and (max-device-width: 767px) {

p.mobilewinztext {
    font-size: 10px;
    line-height: 15px;
    padding: 0 40px;
    text-align: center;
    margin-top: -12px;
    padding: 0px 102px;
}
} 
@media screen and (min-device-width: 320px) and (max-device-width: 600px) { 
p.mobilewinztext {
    font-size: 13px;
    padding: 0 40px;
    text-align: center;
}
.mobilewinztime h2 {
    font-size: 14px;
    height: 50px;
}
img.imgsetraffleone {
    display: none;
}
img.imgsetraffletwo {
    display: block;
}



}

@media screen and (min-device-width: 320px) and (max-device-width: 360px) { 
p.mobilewinztext {
    font-size: 10px;
    line-height: 16px;
}
.home-section-six .sec6Wrp {   
    width: 256px;
    font-size: 8px;
}

.home-section-six .sec6MainWrap{
 padding: 10px 0px 15px 7px;
}

.home-section-six .sec6Wrp h4,.home-section-six .sec6Wrp p {  
     font-size: 10px;
}

.mobilewinztime h2 {
    font-size: 13px;

}}
</style>
    @include('web.common.scripts.addToCompare')
    @include('web.common.scripts.Like')
    @endsection
