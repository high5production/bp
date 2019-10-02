<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_district extends Model
{
   protected $table= "admin_districts";
   protected $fillable =['district_name','country_id', 'status'];

 public function country_name(){
     return $this->belongsTo('App\Models\admin_country','country_id');
   }
   
}
