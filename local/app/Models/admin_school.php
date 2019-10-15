<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_school extends Model
{
 
 protected $table =  "admin_schools";
 protected $fillable = [
   'school_name',
   'school_address',
   'school_house',
   'school_road',
   'school_nears_land',
   'school_area',
   'school_p_station',
   'school_p_city',
   'school_p_district',
   'school_p_country',
   'website',
   'status',
 ];

public function bitnbytes_s_country(){
   return $this->belongsTo('App\Models\admin_country', 'school_p_country');
}
public function bitnbytes_dis(){
   return $this->belongsTo('App\Models\admin_district', 'school_p_district');
}
public function bitnbytes_city(){
   return $this->belongsTo('App\Models\admin_city', 'school_p_city');
}
public function bitnbytes_p_station(){
	return $this->belongsTo('App\Models\police_station', 'school_p_station');
}
public function bitnbytes_area(){
   return $this->belongsTo('App\Models\admin_area', 'school_area');
}


}
