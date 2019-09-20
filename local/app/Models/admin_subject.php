<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_subject extends Model
{
    protected $table = 'admin_subjects';
	protected $fillable = ['subject_name','board_id','class_id','status'];




 public function boardname(){
     return $this->belongsTo('App\Models\admin_board','board_id');
   }


}

