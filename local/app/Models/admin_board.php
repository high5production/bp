<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class admin_board extends Model
{
    protected $table = "admin_boards";
    protected $fillable = ['board_name', 'board_color','status'];




}
