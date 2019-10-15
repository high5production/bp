<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class admin_country extends Model
{
  protected $table = 'admin_countries';
  protected $fillable = ['country_name','country_code','status'];
}
