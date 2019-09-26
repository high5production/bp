<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeacherProfilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teacher_profiles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id');
            $table->string('type');
            $table->string('photo');
            $table->string('name');
            $table->string('init_name');
            $table->string('birth_date');
            $table->string('gender');
            $table->string('address');
            $table->string('area');
            $table->string('city');
            $table->string('police_station');
            $table->string('district');
            $table->string('country');
            $table->string('phone');
            $table->string('email');
            $table->string('website');
            $table->string('facebook');
            $table->string('twitter');
            $table->string('other_link');
            $table->string('teaching_level');
            $table->string('teaching_class');
            $table->string('teaching_subject');
            $table->string('teaching_since');
            $table->string('present_school');
            $table->date('present_joining_date');
            $table->string('present_position');
            $table->string('last_school');
            $table->date('last_joning_date');
            $table->string('last_position');
            $table->integer('total_student');
            $table->string('routine');
            $table->string('office_contact_number');
            $table->integer('teacher_education');
            $table->integer('teaching_place');
            $table->date('coaching_establish_date');
            $table->mediumText('other_subject');
            $table->longText('about');
            $table->integer('traning');
            
            $table->string('master_degree_ins');
            $table->string('master_degree_major');
            $table->string('master_degree_yar');
            $table->string('bachelor_degree_ins');
            $table->string('bachelor_degree_major');
            $table->string('bachelor_degree_year');
            $table->string('alavel_or_hsc_ins');
            $table->string('alavel_or_hsc_major');
            $table->string('alavel_or_hsc_year');
            $table->string('olavel_or_ssc_ins');
            $table->string('olavel_or_ssc_major');
            $table->string('olavel_or_ssc_year');

            $table->timestamps();
        });

     




    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teacher_profiles');
    }
}
