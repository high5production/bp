<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class teacher_profile extends Model
{
    protected $table = "teacher_profiles";
    protected $fillable = [
          
            'teacher_id',
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


public function get_present_school(){
   return $this->belongsTo('App\Models\admin_school', 'present_school');
}
public function get_last_school(){
   return $this->belongsTo('App\Models\admin_school', 'last_school');
}



public function teacher_country(){
   return $this->belongsTo('App\Models\admin_country','country');
}
public function teacher_district(){
    return $this->belongsTo('App\Models\admin_district','district');
}
public function teacher_police_station(){
   return $this->belongsTo('App\Models\police_station','police_station');
}









}
