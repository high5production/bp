<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class student_profile extends Model
{
    protected $table = "student_profiles";
    protected $fillable = [
     
            'user_id',
            'student_id',
            'student_name',
            'class_grade_level',
            'group',
            'subject_passing',
            'contact_no',
            'email',
            'address',
            'area',
            'district',
            'country',
            'father_name',
            'father_contact_no',
            'father_email',
            'father_address',
            'Profession',
            'father_nid',
            'father_area',
            'father_district',
            'f_country',
            'mother_name',
            'mother_contact_no',
            'mother_email',
            'mother_address',
            'mother_rofession',
            'mother_nid',
            'mother_area',
            'mother_district',
            'mother_country'

    ];
}
