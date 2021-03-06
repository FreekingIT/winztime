@include('web.headers.fixedHeader')
<?php $qunatity=0; ?>
@foreach($result['commonContent']['cart'] as $cart_data)
  <?php $qunatity += $cart_data->customers_basket_quantity; ?>
@endforeach
<!-- //header style One -->
<header id="headerOne" class="header-area header-nine header-desktop d-none d-lg-block d-xl-block">
  <div class="header-mini bg-top-bar">
    <div class="container">
      <div class="row">
        <div class="col-12 col-md-4">
            <div class="navbar-lang">
              @if(count($languages) > 1)
              <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" >
                    {{	session('language_name')}}
                  </button>
                  <div class="dropdown-menu" >
                    @foreach($languages as $language)
                    <a onclick="myFunction1({{$language->languages_id}})" class="dropdown-item" href="#">                      
                      {{$language->name}}
                    </a>                   
                    @endforeach                   
                  </div>
              </div> 
              @include('web.common.scripts.changeLanguage')
              @endif
              @if(count($currencies) > 1)
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" >
                    {{session('currency_code')}}
                  </button>
                  <div class="dropdown-menu">
                    @foreach($currencies as $currency)
                    <a onclick="myFunction2({{$currency->id}})" class="dropdown-item" href="#">                      
                      <span>{{$currency->code}}</span>
                    </a>
                    @endforeach
                  </div>
                </div>
                @include('web.common.scripts.changeCurrency')
              @endif
            </div>
        </div>
        <div class="col-12 col-md-8">
          <ul class="link-list">
            <li class="">
              <div class="link-item">
                <div class="avatar">
                  
                  <?php
                    if(auth()->guard('customer')->check()){
                      if(auth()->guard('customer')->user()->avatar == null){ ?>
                      <img class="img-fluid" src="{{asset('web/images/miscellaneous/avatar.jpg')}}">
                    <?php }else{ ?>
                      <img class="img-fluid" src="{{auth()->guard('customer')->user()->avatar}}">
                    <?php
                          }
                        }
                  ?>

                </div>
                <span><?php if(auth()->guard('customer')->check()){ ?>@lang('website.Welcome') {{auth()->guard('customer')->user()->first_name}} &nbsp;! <?php }?> </span>
              </div>
            </li>

            <?php if(auth()->guard('customer')->check()){ ?>
            <li class="link-item"> <a href="{{url('profile')}}" >@lang('website.Profile')</a> </li>
            <li class="link-item"> <a href="{{url('wishlist')}}" >@lang('website.Wishlist') <span class="total_wishlist"> ({{$result['commonContent']['total_wishlist']}})</span></a> </li>
            <li class="link-item"> <a href="{{url('compare')}}" >@lang('website.Compare')&nbsp;(<span id="compare">{{$count}}</span>)</a> </li>
            <li class="link-item"> <a href="{{url('orders')}}" >@lang('website.Orders')</a> </li>
            <li class="link-item"> <a href="{{url('shipping-address')}}" >@lang('website.Shipping Address')</a> </li>
            <li class="link-item"> <a href="{{url('logout')}}">@lang('website.Logout')</a> </li>
            <?php }else{ ?>
              <li class="link-item"> <a href="{{ URL::to('/login')}}"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;@lang('website.Login/Register')</a> </li>

            <?php } ?>
          </ul> 
            
        </div>
      </div>
    </div> 
  </div>
    <div class="header-navbar logo-nav bg-menu-bar">
      <div class="container">
        <nav id="navbar_1_2" class="navbar navbar-expand-lg  bg-nav-bar">
          <a href="{{ URL::to('/')}}" class="logo" data-toggle="tooltip" data-placement="bottom" title="@lang('website.logo')">
            @if($result['commonContent']['settings']['sitename_logo']=='name')
            <?=stripslashes($result['commonContent']['settings']['website_name'])?>
            @endif
        
            @if($result['commonContent']['settings']['sitename_logo']=='logo')
            <img class="img-fluid" src="{{asset('').$result['commonContent']['settings']['website_logo']}}" alt="<?=stripslashes($result['commonContent']['settings']['website_name'])?>">
            @endif
            </a>
          <div class=" navbar-collapse">
              <ul class="navbar-nav ">
                {!! $result['commonContent']["menusRecursive"] !!}
                  
                <li class="nav-item ">
                  <a class="btn btn-secondary" href="{{url('shop?type=special')}}">@lang('website.SPECIAL DEALS')</a>
                </li> 

              </ul>
            </div>
          
        </nav>
      </div>
    </div>
    <div class="header-maxi bg-header-bar">
      <div class="container">
        <div class="row align-items-center">      
          <div class="col-12 col-lg-6">  
            <form class="form-inline" action="{{ URL::to('/shop')}}" method="get">   
              <div class="search-field-module">   
                  <input type="hidden" name="category" class="category-value" value="">
                  @include('web.common.HeaderCategories')
                <button class="btn btn-secondary swipe-to-top dropdown-toggle header-selection" type="button" id="headerOneCartButton"  
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" 
                  data-toggle="tooltip" data-placement="bottom" title="@lang("website.Choose Any Category")"> 
                  @lang("website.Choose Any Category")
                </button> 
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="headerOneCartButton">   
                    @php    productCategories(); @endphp                                                                 
                </div>
                <div class="search-field-wrap">
                    <input  type="search" name="search" placeholder="@lang('website.Search entire store here')..." data-toggle="tooltip" data-placement="bottom" title="@lang('website.Search Products')" value="{{ app('request')->input('search') }}">
                    <button class="btn btn-secondary swipe-to-top" data-toggle="tooltip" 
                    data-placement="bottom" title="@lang('website.Search Products')">
                    <i class="fa fa-search"></i></button>
                </div>
              </div>
            </form>
          </div>
          <div class="col-12 col-lg-4">
            <ul class="top-right-list">
              <li class="phone-header">
                  <a href="#">
                      <i class="fas fa-phone"></i>
                      <span class="block">
                        <span class="title">@lang('website.Call Us Now')</span>                    
                        <span class="items" dir="ltr">{{$result['commonContent']['setting'][11]->value}}</span>
                      </span>                   
                  </a>
                </li>
                <li class="cart-header dropdown head-cart-content">
                  @include('web.headers.cartButtons.cartButton1') 
                </li>
          </ul>
          </div>
        </div>
      </div>
    </div> 
    
</header>





