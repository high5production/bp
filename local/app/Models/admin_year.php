<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_year extends Model
{
    protected $table = "admin_years";
    protected $fillable = [
     'year',
     'status'
    ];
}
