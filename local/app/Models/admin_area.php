<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_area extends Model
{
    protected $table = "admin_areas";
    protected $fillable = ['area_name','police_station_id','status'];

    public function police_station(){
    	return $this->belongsTo('App\Models\police_station','police_station_id');
    }
}
