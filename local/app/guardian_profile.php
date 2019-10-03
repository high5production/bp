<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class guardian_profile extends Model
{
    protected $table = "guardian_profiles";
    protected $fillable = [
		'user_id',
		'guardian_id',
		'g1_name',
		'g1_phone',
		'g1_relation',
		'g1_email',
		'g1_address',
		'codepopular',
		'g1_nid',
		'g1_area',
		'g1_ps_id',
		'g1_city',
		'g1_district',
		'g1_country',
		'g2_name',
		'g_number',
		'g2_relation',
		'g2_email',
		'g2_address',
		'g2_profession',
		'g2_nid',
		'g2_area',
		'g2_ps_id',
		'g2_city',
		'g2_district',
		'g2_country',
		'name',
		'class_grade_lebel',
		'group',
		'subject',
		'phone',
		'email',
		'address',
		'area',
		'ps_id',
		'city',
		'district',
		'country',
		's_photo'

    ];
}
