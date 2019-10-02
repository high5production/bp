<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_city extends Model
{
    protected $table = "admin_cities";
    protected $fillable = ['city_name','district_id','status'];


  public function dis_name(){
    	return $this->belongsTo('App\Models\admin_district','district_id');
    }

}
