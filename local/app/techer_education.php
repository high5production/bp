<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class techer_education extends Model
{
    protected $table = "techer_educations";
    protected $fillable = [
        'teacher_id',
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
