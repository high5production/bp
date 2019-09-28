<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class teaching_place extends Model
{
   protected $table = "teaching_places";
   protected $fillable = [

            'user_id',
            'coaching_name',
            'house',
            'Landmark',
            'post_office',
            'post_code',
            'map',
            'area',
            'district',
            'country'


   ];
}
