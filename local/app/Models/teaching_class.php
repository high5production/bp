<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class teaching_class extends Model
{
    protected $table ='teaching_classes';
    protected $fillable =['class_name','status'];
}
