<?php

namespace App\Models\Web;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Lang;
use Session;

class Campaign extends Model
{
    protected $table = 'campaigns';

    /**
     * Get the product that owns the Campaign.
     */
    public function Product()
    {
        return $this->hasOne(Products::class,'products_id','product_id');
    }

    /**
     * Get the product description that owns the Campaign.
     */
    public function ProductDescription()
    {
        return $this->hasOne(Products_description::class,'products_id','product_id');
    }


    /**
     * Get the Reward Details that owns the Campaign.
     */
    public function Reward()
    {
        return $this->hasOne('App\Models\Core\Reward','id','reward_id');
    }
}
