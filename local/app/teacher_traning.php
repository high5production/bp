<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class teacher_traning extends Model
{
   protected $table = "teacher_tranings";
   protected $fillable = [
            'user_id',
            'traning_date',
            'qualification',
            'traning_on',
            'traning_duration',
            'given_by',
            'organization',
            'trainer_name',
            't_venue'

   ];



}
