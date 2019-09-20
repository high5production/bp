<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_district extends Model
{
   protected $table= "admin_districts";
   protected $fillable =['district_name','board_id', 'status'];

 public function boardname(){
     return $this->belongsTo('App\Models\admin_board','board_id');
   }
   
}
