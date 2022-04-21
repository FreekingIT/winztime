<!-- <div class="container-fuild">
  <nav aria-label="breadcrumb">
      <div class="container">
          <ol class="breadcrumb">
            @if(!empty($result['category_name']) and !empty($result['sub_category_name']))
            <li class="breadcrumb-item"><a href="{{ URL::to('/')}}">@lang('website.Home')</a></li>
            <li  class="breadcrumb-item"><a href="{{ URL::to('/shop')}}">@lang('website.Shop')</a></li>
           <li  class="breadcrumb-item"><a href="{{ URL::to('/shop?category='.$result['category_slug'])}}">{{$result['category_name']}}</a></li>
           <li  class="breadcrumb-item active">{{$result['sub_category_name']}}</li>
           @elseif(!empty($result['category_name']) and empty($result['sub_category_name']))
           <li class="breadcrumb-item active">{{$result['category_name']}}</li>
           @else
           <li class="breadcrumb-item"><a href="{{ URL::to('/')}}">@lang('website.Home')</a></li>
           <li class="breadcrumb-item active">@lang('website.Shop')</li>
           @endif
          </ol>
      </div>
    </nav>
</div> -->
<section class="about-sec">
    <div class="container">
      <div class="row">
        <h2>Winztime Products</h2>
      @if($result['products']['success']==1)    
      <?php $i= 0; ?>                    
        @foreach($result['products']['product_data'] as $key=>$products) 
        <?php  
        if ($products->products_id == 45) {
          continue;
        }
        $i++;
        ?>  
          @include('web.common.product')
        @endforeach      
      @else
      <br>
      <h3>@lang('website.No Record Found!')</h3>
      @endif
    </div>
</div>
  <!-- <div class="container">
  <div class="pagination justify-content-between ">
    <input id="record_limit" type="hidden" value="{{$result['limit']}}">
    <input id="total_record" type="hidden" value="{{$result['products']['total_record']}}">
    <label for="staticEmail" class="col-form-label"> @lang('website.Showing')&nbsp;<span class="showing_record">{{$result['limit']}}</span>&nbsp;@lang('website.of')&nbsp;<span class="showing_total_record">{{$result['products']['total_record']}}</span> &nbsp;@lang('website.results')</label>
    
      <div class=" justify-content-end col-6">
          <input type="hidden" value="1" name="page_number" id="page_number">
      <?php
          if(!empty(app('request')->input('limit'))){
              $record = app('request')->input('limit');
          }else{
              $record = '15';
          }
      ?>
          <button class="btn btn-dark" type="button" id="load_products"
          @if(count($result['products']['product_data']) < $record )
              style="display:none"
          @endif
          >@lang('website.Load More')</button>
      </div>
  </div>
  </div> -->
</form>

  <div id="loadersss"></div>
</section>
<script type="text/javascript">
  jQuery(document).on('click', '.modal_show_products', function(e){
   jQuery("#products-detail").html('');
   jQuery("#loadersss").show();
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
       jQuery("#loadersss").hide();
       jQuery('#myModal').modal('show');


     },
   });
  });
 });
        
    

  


</script>
<style type="text/css">
#loadersss {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  background: rgba(0,0,0,0.75) url(images/loading2.gif) no-repeat center center;
  z-index: 10000;
}
</style>


