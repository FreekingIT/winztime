<?php

namespace App\Models\Web;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\Models\Web\Products;
use App\Models\Core\User;
use App\Models\Web\Product_image;
use App\Models\Web\Products_description;
use App\Models\Web\Campaign;
use Lang;
use Session;

class Customers_basket extends Model
{
    protected $table = 'customers_basket';
    
    protected $fillable = [
        'customers_basket_id',
        'customers_id',
        'products_id',
        'customers_basket_quantity',
        'final_price',
        'customers_basket_date_added',
        'is_order',
        'session_id',
        'created_at'
    ];


    public function products()
    {
        return $this->belongsTo(Products::class , 'products_id', 'products_id');
    }


    public function products_image()
    {
        return $this->belongsTo(Product_image::class , 'products_id', 'products_id');
    }

    public function products_description()
    {
        return $this->belongsTo(Products_description::class , 'products_id', 'products_id');
    }

    public function camping_data()
    {
        return $this->belongsTo(Campaign::class , 'campaign_id', 'id');
    }

  public function userDetail()
    {
        return $this->belongsTo(User::class , 'customers_id', 'id');
    }


}