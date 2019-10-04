<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class teacher_notice extends Model
{
    protected $table = "teacher_notices";
    protected $fillable = [
      'user_id',
      'n_title',
      'n_des'

    ];
}
