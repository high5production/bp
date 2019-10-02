<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class police_station extends Model
{
    protected $table = "police_stations";
    protected $fillable = ['police_station','city_id','status'];

    public function city(){
    	return $this->belongsTo('App\Models\admin_city','city_id');
    }
}
