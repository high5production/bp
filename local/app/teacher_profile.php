<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class teacher_profile extends Model
{
    protected $table = "teacher_profiles";
    protected $fillable = [
          
            'user_id',
            'type',
            'photo',
            'name',
            'init_name',
            'birth_date',
            'gender',
            'address',
            'area',
            'city',
            'police_station',
            'district',
            'country',
            'phone',
            'email',
            'website',
            'facebook',
            'twitter',
            'other_link',
            'teaching_level',
            'teaching_class',
            'teaching_subject',
            'teaching_since',
            'present_school',
            'present_joining_date',
            'present_position',
            'last_school',
            'last_joning_date',
            'last_position',
            'total_student',
            'routine',
            'office_contact_number',
            'teacher_education',
            'teaching_place',
            'coaching_establish_date',
            'other_subject',
            'about',
            'traning',
             'master_degree_ins',
	        'master_degree_major',
	        'master_degree_yar',
	        'bachelor_degree_ins',
	        'bachelor_degree_major',
	        'bachelor_degree_year',
	        'alavel_or_hsc_ins',
	        'alavel_or_hsc_major',
	        'alavel_or_hsc_year',
	        'olavel_or_ssc_ins',
	        'olavel_or_ssc_major',
	        'olavel_or_ssc_year'

    ];
}
