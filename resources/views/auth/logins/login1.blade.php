<script type="text/javascript" src="{{asset('web/assets/js/intlTelInput.min.js')}}" defer></script>
<script type="text/javascript" src="{{asset('web/assets/js/utils.js')}}" defer></script>
<section id="login-sec">

  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6">
        <div class="row justify-content-center">
          <div class="col-12 col-sm-12 col-md-6 justify-content-center">
            @if(Session::has('loginError'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
              <span class="">@lang('website.Error'):</span>
              {!! session('loginError') !!}
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            @endif
            @if(Session::has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
              <span class="sr-only">@lang('website.Success'):</span>
              {!! session('success') !!}

              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            @endif
            @if(Session::has('status'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
              <span class="sr-only">@lang('website.Success'):</span>
              {!! session('status') !!}

              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            @endif
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
              {!! session('error') !!}
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            @endif
            @if( count($errors) > 0 || Session::has('error'))
            <script type="text/javascript">
              $(document).ready(function() {
                $("#accordion-1").attr('style', 'display:none;');
              });
            </script>
            @endif
          </div>
        </div>
        <div class="accordion">
          <div class="quest-section">
            <a class="quest-title active1" href="#accordion-1">Please Login</a>
            <div id="accordion-1" class="quest-content">
              <form enctype="multipart/form-data" class="login-form-validate" action="{{ URL::to('/process-login')}}" method="post">
                {{csrf_field()}}
                <div class="col-12 input-effect">
                  <input class="effect-21" type="email" name="email" id="email" placeholder="" required="required">
                  <label>Email</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                </div>
                <div class="col-12 input-effect">
                  <input class="effect-21 login-field-validate" name="password" id="password1" type="password" placeholder="" required="required">
                  <label>Password</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                  <!-- <a href="javascript:;" class="ct-pass" toggle="#password"></a> -->
                  <a href="javascript:;" toggle="#password1" class="field-icon toggle-password5 showHideIcon"><i class="fas fa-eye"></i></a>
                </div>
                <div class="row ct-form-row">
                  <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                    <a href="{{ URL::to('/password/reset')}}">Forgot Password</a>
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                    <!-- onclick="loginfieldvalidate();" -->
                    <input type="submit" id="login-btn" value="Login">
                  </div>
                </div>
                <div class="col-12 col-sm-12 text-left mt-4">

                  @if($result['commonContent']['setting'][61]->value==1)
                  <a href="login/google" type="button" class="btn btn-google"><span><i class="fab fa-google-plus-g"></i>&nbsp; @lang('website.Google') </span></a>
                  @endif
                  @if($result['commonContent']['setting'][2]->value==1)
                  <a href="login/facebook" type="button" class="btn btn-facebook"><span><i class="fab fa-facebook-f"></i>&nbsp;@lang('website.Facebook')</span></a>
                  @endif
                </div>
              </form>
            </div>
          </div>
          <div class="quest-section">
            <a class="quest-title @if( count($errors) > 0) active @endif @if(Session::has('error')) active @endif" href="#accordion-2">New here? Register now</a>
            <div id="accordion-2" class="quest-content @if( count($errors) > 0 || Session::has('error')) open @endif" @if( count($errors)> 0 || Session::has('error')) style="display:block;" @endif>
              <form name="signup" enctype="multipart/form-data" action="{{ URL::to('/signupProcess')}}" method="post" id="reg-form">
                {{csrf_field()}}
                <div class="col-12 input-effect">
                  <input class="effect-21" type="text" placeholder="" name="firstNamenew" value="{{ old('firstNamenew') }}" required="required" />
                  <label>First Name</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                </div>
                <div class="col-12 input-effect">
                  <input class="effect-21" name="lastName" type="text" placeholder="" value="{{ old('lastName') }}" required="required" />
                  <label>Last Name</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                </div>
                <div class="co-lg-12 clearfix" id="reg-radio">
                  <label class="ct-container">Male
                    <input type="radio" name="gender" value="0" required="required" {{ old('gender') == "0" ? 'checked' : '' }} />
                    <span class="checkmark"></span>
                  </label>
                  <label class="ct-container">Female
                    <input type="radio" name="gender" value="1" required="required" {{ old('gender') == "1" ? 'checked' : '' }} />
                    <span class="checkmark"></span>
                  </label>
                </div>
                <div class="col-12 input-effect">
                  <input class="effect-21" name="email" type="email" placeholder="" value="{{ old('email') }}" required="required" />
                  <label>Email</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                </div>
                <div class="col-12 input-effect ">
                  <?php function daysInMonth($year, $month)
                  {
                    if (!empty($year) &&  !empty($month)) {
                      return date("t", mktime(0, 0, 0, $month, 1, $year));
                    } else {
                      return 0;
                    }
                  }
                  ?>

                  <label>Date Of Birth*</label>
                  <div class="row">
                    <div class="col-4 ">
                      <select id="month" name="month" class="effect-21" onchange="getDays(this)" required="required">
                        <option value="">Month</option>
                        <?php
                        for ($m = 1; $m <= 12; $m++) {
                          $month = date('F', mktime(0, 0, 0, $m, 1, date('Y')));
                          if ($m < 10) {

                            echo '<option value="0' . $m . '" ' . (($m == old("month")) ? 'selected="selected"' : "") . '>' . $month . '</option>';
                          } else {
                            echo '<option value="' . $m . '" ' . (($m == old("month")) ? 'selected="selected"' : "") . '>' . $month . '</option>';
                          }
                        }
                        ?>
                      </select>
                    </div>

                    <div class="col-4">
                      <select id="day" name="day" class="effect-21" required="required">
                        <option value="">Day</option>
                        <?php
                        $days_in_month = daysInMonth(date("Y"), date("m"));
                        if ($days_in_month) {

                          for ($is = 1; $is <= $days_in_month; $is++) {
                            $day_value = $is;
                            if ($is < 10) {
                              $day_value = "0" . $is;
                            }

                            echo '<option value="0' . $day_value . '" ' . (($is == old("day")) ? 'selected="selected"' : "") . '>' . $is . '</option>';
                          }
                        }





                        ?>
                      </select>
                    </div>

                    <div class="col-4">
                      <select id="year" name="year" class="effect-21" required="required">
                        <option value="">Year</option>
                        <?php
                        $years = range(date("Y"), 1910);
                        foreach ($years as $single_year) {


                          echo '<option value="0' . $single_year . '" ' . (($single_year == old("year")) ? 'selected="selected"' : "") . '>' . $single_year . '</option>';
                        }
                        ?>


                      </select>
                    </div>
                  </div>


                  <span class="focus-border">
                    <i></i>
                  </span>
                </div>
                <div class="col-12 input-effect">
                  <input class="effect-21 regPass" type="password" placeholder="" name="password" id="password " required="required" />
                  <label>Password</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                  <a href="javascript:;" toggle=".regPass" class="field-icon toggle-password5 showHideIcon"><i class="fas fa-eye"></i></a>
                </div>
                <div class="col-12 input-effect">
                  <input class="effect-21" type="password" placeholder="" id="re_password" name="re_password" required="required" />
                  <label>Confirm Password</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                  <a href="javascript:;" toggle="#re_password" class="field-icon  toggle-password6 showHideIcon"><i class="fas fa-eye"></i></a>
                </div>
                <div class="col-12 input-effect">
                  <input class="effect-21 countrycode" id="phone" name="phone" value="{{ old('phone') }}" type="tel" required="required" />
                  <span class="focus-border">
                    <i></i>
                  </span>
                  <span id="valid-msg" class="hide">✓ Valid</span>
                  <span id="error-msg" class="hide"></span>
                </div>
                <!-- <div class="mobile-fld">
                <div class="row">
                  <div class="col-lg-3 col-4">
                    <span>Country Code</span>
                    <select>
                      <option>+971</option>
                    </select>
                    <i></i>
                  </div>
                  <div class="col-lg-9 col-8">

                    <div class="col-12 input-effect form-group">
                      <input class="effect-21 signup-field-validate signup-number-validate new-number-validate" name="phone" onblur="checkPhone();" type="number" pattern="^(?:\+971|00971|0)?(?:50|51|52|55|56|2|3|4|6|7|9)\d{7}$" id="inlineFormInputGroup" >
                      <label>Mobile Phone</label>
                      <span class="focus-border">
                        <i></i>
                      </span>
                      <input type="hidden" name="countryCodeUAE" value="+971">
                    </div>
                  </div>
                </div>
              </div> -->
                <div class="col-12 input-effect">
                  <input class="effect-21" type="text" placeholder="" name="invitationcode" id="invitationcode">
                  <label>Invitation Code(Optional)</label>
                  <span class="focus-border">
                    <i></i>
                  </span>
                </div>
                <div class="ct-form-row">
                  <div class="col-lg-12">
                    <!-- onclick="signupfieldvalidate();"  -->

                    <input type="submit" id="register-btn" value="Register">
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div id="loader"></div>
      </div>
    </div>
  </div>
</section>
<script type="text/javascript">
  function getDays(current) {
    var html = "<option value=''>Day</option>";

    var dt = new Date();
    var month = current.value;
    var year = dt.getFullYear();

    // this line does the magic (in collab with the lines above)
    var daysInMonth = new Date(year, month, 0).getDate();
    for (var i = 1; i <= daysInMonth; i++) {
      if (i < 10) {
        html += '<option value="0' + i + '">0' + i + '</option>';
      } else {
        html += '<option value="' + i + '">' + i + '</option>';
      }


    }

    $("#day").html(html);
  }
  $(document).ready(function() {
    var input = document.querySelector("#phone"),
      errorMsg = document.querySelector("#error-msg"),
      validMsg = document.querySelector("#valid-msg");
    var errorMap = ["Invalid number", "Invalid country code", "Too short", "Too long", "Invalid number"];
    var iti = window.intlTelInput(input, {
      utilsScript: "{{asset('web/assets/js/utils.js')}}",
      initialCountry: "auto",
      geoIpLookup: function(callback) {
        $.get('https://ipinfo.io', function() {}, "jsonp").always(function(resp) {
          var countryCode = (resp && resp.country) ? resp.country : "us";
          callback(countryCode);
        });
      }
    });
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

  var spinner = $('#loader');
  $(function() {
    $('#reg-form').submit(function(e) {
      spinner.show();

    });
  });

  $(document).ready(function() {
    $(this).scrollTop(0);
  });
</script>
<style type="text/css">
  #loader {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 100%;
    background: rgba(0, 0, 0, 0.75) url(images/loading2.gif) no-repeat center center;
    z-index: 10000;
  }
</style>