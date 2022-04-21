  @extends('web.layout')
@section('content')
<section class="">
  <!-- Profile Content -->
  <section class="profile-content main-section">
    <div class="container">
     <div class="heading">
      <h2>
       Personal Details
     </h2>
   </div>
   <div class="row">

     <!--  <div class="col-12 media-main">
       
     </div> -->

       <!-- <div class="col-12 col-lg-3">
           <div class="heading">
               <h2>
                   @lang('website.My Account')
               </h2>
               <hr >
             </div>

           <ul class="list-group">
               <li class="list-group-item">
                   <a class="nav-link" href="{{ URL::to('/profile')}}">
                       <i class="fas fa-user"></i>
                     @lang('website.Profile')
                   </a>
               </li>
               <li class="list-group-item">
                   <a class="nav-link" href="{{ URL::to('/wishlist')}}">
                       <i class="fas fa-heart"></i>
                    @lang('website.Wishlist')
                   </a>
               </li>
               <li class="list-group-item">
                   <a class="nav-link" href="{{ URL::to('/orders')}}">
                       <i class="fas fa-shopping-cart"></i>
                     @lang('website.Orders')
                   </a>
               </li>
               <li class="list-group-item">
                   <a class="nav-link" href="{{ URL::to('/shipping-address')}}">
                       <i class="fas fa-map-marker-alt"></i>
                    @lang('website.Shipping Address')
                   </a>
               </li>
                <li class="list-group-item">
                   <a class="nav-link" href="{{ URL::to('/refer-a-friend')}}">
                       <i class="fas fa-share-alt"></i>
                    Refer a friend
                   </a>
               </li>
               <li class="list-group-item">
                   <a class="nav-link" href="{{ URL::to('/logout')}}">
                       <i class="fas fa-power-off"></i>
                     @lang('website.Logout')
                   </a>
               </li>
               <li class="list-group-item">
                   <a class="nav-link" href="{{ URL::to('/change-password')}}">
                       <i class="fas fa-unlock-alt"></i>
                     @lang('website.Change Password')
                   </a>
               </li>
             </ul>
           </div> -->

           <div class="col-12 col-lg-8 ">
             <div class="contFormWrp">
               <div class="media">
                <div class="media-body">
                  <div class="row">
                    <div class="col-12 col-sm-8 col-md-12">
                      <h4>{{auth()->guard('customer')->user()->first_name}} {{auth()->guard('customer')->user()->last_name}}
                        <!-- <small>{{auth()->guard('customer')->user()->email}} </small></h4> -->
                      </div>
                    </div>
                  </div>

                </div>
                <div class="">

                 <!-- <hr > -->
               </div>
               <form name="updateMyProfile" class="align-items-center profile-form-validate" enctype="multipart/form-data" action="{{ URL::to('updateMyProfile')}}" method="post">
                 @csrf
                 @if( count($errors) > 0)
                 @foreach($errors->all() as $error)
                 <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                  <span class="sr-only">@lang('website.Error'):</span>
                  {{ $error }}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                @endforeach
                @endif
                @if(Session::has('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                  <span class="sr-only">@lang('website.Error'):</span>
                  {{ session()->get('error') }}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                @endif

                @if(Session::has('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                  <span class="sr-only">@lang('website.Error'):</span>
                  {!! session('loginError') !!}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                @endif
                <div class="row">
                 <div class="col-sm-6">
                  <div class="form-group">
                   <label for="inputName" class="col-form-label">@lang('website.First Name')</label>
                   <input type="text" name="customers_firstname" class="form-control profile-field-validate" onkeypress="return /^[ A-Za-z-_@./#${}<>,?=;'|\!%*()&+-]*$/
.test(event.key)" id="inputName" value="{{ auth()->guard('customer')->user()->first_name }}" placeholder="John">
                 </div>
                 </div>
                 <div class="col-sm-6">
                  <div class="form-group">
                   <label for="lastName" class="col-form-label">@lang('website.Last Name')</label>
                   <input type="text" name="customers_lastname" placeholder="Dow" onkeypress="return /^[ A-Za-z-_@./#${}<>,?=;'|\!%*()&+-]*$/
.test(event.key)" class="form-control profile-field-validate" id="lastName" value="{{ auth()->guard('customer')->user()->last_name }}">
                 </div>
                 </div>
               </div>
               <div class="row">

            <div class="col-sm-6">
              <div class="form-group">
              <label for="customers_status" class="col-form-label">Gender</label>
              <select class="form-control" name="gender" id="exampleSelectGender1">
                @if(auth()->guard('customer')->user()->gender == 0 && auth()->guard('customer')->user()->gender != Null)
                 <option value="" ></option>
                <option value="0" selected="selected">Male</option>
                <option value="1" >Female</option>
                @elseif (auth()->guard('customer')->user()->gender == 1)
                 <option value="" ></option>
                <option value="0" >Male</option>
                <option value="1" selected="selected">Female</option>
                @else
                <option value="" selected="selected"></option>
                <option value="0" >Male</option>
                <option value="1">Female</option>
                @endif
              </select>
            </div>
            </div>

            <div class="col-sm-6">
              <div class="form-group">
             <label for="customers_status" class="col-form-label">Status</label>
             <select class="form-control" id="marry_status" name="marry_status"> 
                @if(auth()->guard('customer')->user()->marry_status == 0 && auth()->guard('customer')->user()->marry_status != Null)
                 <option value=""></option>
                <option value="0" selected="selected">Single</option>
                <option value="1">Married</option>
                @elseif (auth()->guard('customer')->user()->marry_status == 1)
                 <option value=""></option>
                <option value="0">Single</option>
                <option value="1" selected="selected">Married</option>
                @else
                <option value="" selected="selected"></option>
                <option value="0">Single</option>
                <option value="1">Married</option>
                @endif
             </select>
           </div>
           </div>

         </div>
               <div class="row">
                 <div class="col-sm-6">
                  <div class="form-group">
                   <label for="Nationality" class="col-form-label">Nationality</label>
                   <select class="form-control" name="nationality">
                    <option value=""></option>
                    @foreach($result['countries'] as $country)
                      @if($country == auth()->guard('customer')->user()->nationality) <option value="{{$country}}" selected="selected">{{$country}}</option> @else <option value="{{$country}}">{{$country}}</option> @endif
                      
                    @endforeach
                  </select>
                </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                 <label for="Country of Residence" class="col-form-label">Country of Residence</label>
                 <select class="form-control" name="country_res">
                    <option value=""></option>
                    @foreach($result['countries'] as $country)
                      @if($country == auth()->guard('customer')->user()->country_res) <option value="{{$country}}" selected="selected">{{$country}}</option> @else <option value="{{$country}}">{{$country}}</option> @endif
                      
                    @endforeach
                </select>
              </div>
              </div>
            </div>
            <div class="row">
              <style type="text/css">
                /* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
              </style>
              <?php 
              $str1 = substr(auth()->guard('customer')->user()->phone, 4); 
          
              ?>
             <div class="col-sm-6">
              <div class="form-group">
               <label for="phone" class="col-form-label">Mobile Number</label>
               <div>
                <input class="form-control"  name="phone" value="{{ auth()->guard('customer')->user()->phone }}"  pattern="^(?:\+971|00971|0)?(?:50|51|52|55|56|2|3|4|6|7|9)\d{7}$"  type="tel" required="required"/>
                <span  class="focus-border">
                  <i></i>
                </span>
                <span id="valid-msg" class="hide">✓ Valid</span>
                <span id="error-msg" class="hide"></span>
              </div>
              <!-- <div class="flagNumImg">
                <input class="form-control profile-field-validate profile-number-validate new-number-validate" type="number" 
                pattern="^(?:\+971|00971|0)?(?:50|51|52|55|56|2|3|4|6|7|9)\d{7}$" onblur="checkPhone();"  name="customers_telephone" id="phone" 
                value="{{ $str1 }}" placeholder="" />
                <span class="numValImg"><img src="{{asset('web/assets/images/uaeIcon2.png')}}"><small>+971</small></span>
                <input type="hidden" name="countryCodeUAE" value="+971">
              </div> -->
             </div>
           </div>

             <div class="col-sm-6">
              <div class="form-group">
               <label for="customers_telephone" class="col-form-label">Email</label>
               <input name="email" type="email" value="{{ auth()->guard('customer')->user()->email }}" readonly="readonly" class="form-control">
             </div>
           </div>


             <!-- <div class="col-sm-6">
              <div class="form-group">
               <label for="customers_telephone" class="col-form-label">Date Of Birth</label>
               <input readonly name="dob" type="text" data-provide="datepicker" class="form-control"  data-date-format="dd/mm/yyyy" placeholder="@lang('website.Date of Birth')" value="{{ auth()->guard('customer')->user()->dob }}" aria-label="date-picker" aria-describedby="date-picker-addon1">
             </div>
           </div> -->
           <div class="col-sm-12 ">
            <div class="form-group">
              <?php $dob=auth()->guard('customer')->user()->dob;
              if(!empty($dob)){
                $explode=explode("/",$dob);
                $month_db= $explode[0];
                $day_db= $explode[1];
                $year_db= $explode[2];
              }else{
               $month_db="";
               $day_db="";
               $year_db="";
             }


             function daysInMonth($year, $month) {
              if(!empty($year) &&  !empty($month)){
                return date("t", mktime (0,0,0,$month,1,$year));
              }else{
                return 0;
              }

            }
             ?>

              <label  class="col-form-label">Date Of Birth*</label>
              <div class="row">
               <div class="col-sm-4">
                <div class="form-group">
                <select  id="month" name="month" class="form-control profile-field-validate" onchange="getDays(this)" required="required">
                  <option value="">Month</option>
                  <?php 
                  for ($m=1; $m<=12; $m++) {
                   $month = date('F', mktime(0,0,0,$m, 1, date('Y')));
                   $month_option=$m;
                   if($m<10){
                    $month_option="0".$m;
                    
                  }
                  if($month_option==$month_db){
                   echo '<option value="'.$month_option.'" selected>'.$month.'</option>';
                 }else{
                  echo '<option value="'.$month_option.'">'.$month.'</option>';
                }
              }
                 ?>
               </select>
             </div>
             </div>

             <div class="col-sm-4">
                           <div class="form-group">
              <select id="day" name="day" class="form-control profile-field-validate" required="required">
                <option value="">Day</option>
             <?php 
             $days_in_month= daysInMonth($year_db, $month_db);
             if($days_in_month){

              for($is=1;$is<=$days_in_month;$is++){
               $day_value=$is;
               if($is<10){
                $day_value="0".$is;
              }
              if($day_value==$day_db){
                echo "<option value='".$day_value."' selected>".$is."</option>";
              }else{
                echo "<option value='".$day_value."'>".$is."</option>";
              }
            }
          }





             ?>
              </select>
            </div>
            </div>

            <div class="col-sm-4">
                           <div class="form-group">
              <select id ="year" name="year"  class="form-control profile-field-validate"  required="required">
                <option value="">Year</option>
                <?php  
                $years = range(date("Y"), 1910);
                foreach($years as $single_year){
                  if($single_year==$year_db){
                    echo '<option value="'.$single_year.'" selected>'.$single_year.'</option>';

                 }else{
                   echo '<option value="'.$single_year.'">'.$single_year.'</option>';
                 }
               }
                  
                
                ?>


              </select>
            </div>
            </div>
          </div>
        </div>  


      </div>

           </div>
           
                 <!-- <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">@lang('website.Gender')</label>
                  <div class="from-group  select-control col-sm-4 ">
                      <select class="form-control " name="gender" required id="exampleSelectGender1">
                        <option value="0" @if(auth()->guard('customer')->user()->gender == 0) selected @endif>@lang('website.Male')</option>
                        <option value="1"  @if(auth()->guard('customer')->user()->gender == 1) selected @endif>@lang('website.Female')</option>
                      </select> 
                  </div>
                  <label for="inputPassword" class="col-sm-2 col-form-label">@lang('website.DOB')</label>
                  <div class=" col-sm-4">
                      <div class="input-group date">
                        <input readonly name="customers_dob" type="text" data-provide="datepicker" class="form-control" placeholder="@lang('website.Date of Birth')" value="{{ auth()->guard('customer')->user()->dob }}" aria-label="date-picker" aria-describedby="date-picker-addon1">
                          
                          <div class="input-group-prepend">
                              <span class="input-group-text" id="date-picker-addon1"><i class="fas fa-calendar-alt"></i></span>
                            </div>
                        </div>
                  </div>
                </div> -->   
                <div class="row">             
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right"><button type="button" onclick="profilefieldvalidate();" class="btn luciBtn"><span>Save</span></button></div></div>
                </form>

                <!-- ............the end..... -->
              </div>
            </div>
            <div class="col-lg-4">
              <div class="lPoint-sidebar">
                <ul>
                  <li class="first"><a href="profile" title="">Personal Details</a></li>
                  <li><a href="levels" title="">Levels</a></li>
                  <li><a href="wishlist" title="">Wish List</a></li>
                  <li><a href="active-coupons" title="">Active Coupons</a></li>
                  <li><a href="my-zpoints" title="">Z-Points</a></li>
                  <li><a href="address-book" title="">Address Book</a></li>
                  <li class="referFrnd"><a href="refer-a-friend" title="">Invite A Friend To Earn</a></li>
                  <li><a href="change-password" title="">Change Password</a></li>
                  <li class="last"><a href="logout" title="">Logout</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </section>
  <script type="text/javascript">
        function getDays(current){
    var html="<option value=''>Day</option>";
     
    var dt = new Date();
    var month = current.value;
    var year = dt.getFullYear();

// this line does the magic (in collab with the lines above)
var daysInMonth = new Date(year, month, 0).getDate();
for(var i=1;i<=daysInMonth;i++){
  if(i<10){
      html+='<option value="0'+i+'">0'+i+'</option>';
  }else{
     html+='<option value="'+i+'">'+i+'</option>';
  }

 
}

 $("#day").html(html);
}
    $(document).ready(function(){
    var input = document.querySelector("#phone"),
    errorMsg = document.querySelector("#error-msg"),
    validMsg = document.querySelector("#valid-msg");
    var errorMap = ["Invalid number", "Invalid country code", "Too short", "Too long", "Invalid number"];
    var iti = window.intlTelInput(input, {
      initialCountry: "auto",
      nationalMode: "true",
      utilsScript: "{{asset('web/assets/js/utils.js')}}"
    });
    var extension = iti.getExtension();
    var reset = function() {
      input.classList.remove("error");
      errorMsg.innerHTML = "";
      errorMsg.classList.add("hide");
      validMsg.classList.add("hide");
    };
    input.addEventListener('blur', function() {
      reset();
      if (input.value.trim()) {
        if (iti.isValidNumber()) {
          validMsg.classList.remove("hide");
        } else {
          input.classList.add("error");
          var errorCode = iti.getValidationError();
          errorMsg.innerHTML = errorMap[errorCode];
          errorMsg.classList.remove("hide");
          $('#phone').val("");
        }
      }
    });
      // on keyup / change flag: reset
      input.addEventListener('change', reset);
      input.addEventListener('keyup', reset);
  });

  
</script>
  @endsection
