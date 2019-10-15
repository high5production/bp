<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class teaching_place extends Model
{
   protected $table = "teaching_places";
   protected $fillable = [
            'user_id',
            'coaching_name',
            'coaching_establish_date',
            'other_subject',
            'house',
            'road_no',
            'Landmark',
            'post_office',
            'post_code',
            'map',
            'area',
            'p_station',
            'district',
            'country'
   ];

public function t_place_country(){
   return $this->belongsTo('App\Models\admin_country','country');
}
public function t_place_district(){
    return $this->belongsTo('App\Models\admin_district','district');
}
public function pstation(){
   return $this->belongsTo('App\Models\police_station','p_station');
}


}
