<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class student_enroll extends Model
{
    protected $table = "student_enrolls";
    protected $fillable = ['student_id','teacher_id','subject','message','status'];




public function get_enroll_student(){
	return $this->belongsTo('App\student_profile', 'student_id', 'user_id');
}

public function enroll_student_phone(){
	return $this->belongsTo('App\user', 'student_id', 'id');
}

}
