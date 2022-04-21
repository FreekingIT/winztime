
<!-- <div class="col-md-6 wow fadeIn">
  <a href="javascript:;" class="productWrap swipe-to-top modal_show_products" products_id ="{{$products->products_id}}" data-toggle="tooltip" data-placement="bottom">
    <figure>
      <img src="{{asset('').$products->image_path}}" alt="{{$products->products_name}}">
    </figure>
    <figcaption>
      <h4>{{$products->products_name}}</h4>
      <p><?php
        $descriptions = strip_tags($products->products_description);
        echo str_limit(stripslashes($descriptions), 80,'...');
        ?></p>
       
    </figcaption>
  </a>
</div> -->
<div class="col-lg-4 col-md-4 col-sm-6 col-6">
          <div class="products-box">
            <a href="javascript:;" class="productWrap swipe-to-top modal_show_products" products_id="{{$products->products_id}}">
            <img src="{{asset('').$products->image_path}}" class="img-fluid">
            <h3>{{$products->products_name}}</h3>
            <p>AED {{$products->products_price}}</p>
          </a>
          </div>
        </div>
        