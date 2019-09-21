<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class police_station extends Model
{
    protected $table = "police_stations";
    protected $fillable = ['police_station','district_id','status'];

    public function dis_name(){
    	return $this->belongsTo('App\Models\admin_district','district_id');
    }
}
