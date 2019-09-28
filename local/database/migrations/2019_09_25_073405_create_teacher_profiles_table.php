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
            $table->string('type')->nullable();
            $table->string('photo')->default('noimage.jpg');
            $table->string('name')->nullable();
            $table->string('init_name')->nullable();
            $table->string('birth_date')->nullable();
            $table->string('gender')->nullable();
            $table->string('address')->nullable();
            $table->string('area')->nullable();
            $table->string('city')->nullable();
            $table->string('police_station')->nullable();
            $table->string('district')->nullable();
            $table->string('country')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('website')->nullable();
            $table->string('facebook')->nullable();
            $table->string('twitter')->nullable();
            $table->string('other_link')->nullable();
            $table->string('teaching_level')->nullable();
            $table->string('teaching_class')->nullable();
            $table->string('teaching_subject')->nullable();
            $table->string('teaching_since')->nullable();
            $table->string('present_school')->nullable();
            $table->date('present_joining_date')->nullable();
            $table->string('present_position')->nullable();
            $table->string('last_school')->nullable();
            $table->date('last_joning_date')->nullable();
            $table->string('last_position')->nullable();
            $table->integer('total_student')->nullable();
            $table->string('routine')->nullable();
            $table->string('office_contact_number')->nullable();
            $table->integer('teacher_education')->nullable();
            $table->integer('teaching_place')->nullable();
            $table->date('coaching_establish_date')->nullable();
            $table->mediumText('other_subject')->nullable();
            $table->longText('about')->nullable();
            $table->integer('traning')->nullable();
            
            $table->string('master_degree_ins')->nullable();
            $table->string('master_degree_major')->nullable();
            $table->string('master_degree_yar')->nullable();
            $table->string('bachelor_degree_ins')->nullable();
            $table->string('bachelor_degree_major')->nullable();
            $table->string('bachelor_degree_year')->nullable();
            $table->string('alavel_or_hsc_ins')->nullable();
            $table->string('alavel_or_hsc_major')->nullable();
            $table->string('alavel_or_hsc_year')->nullable();
            $table->string('olavel_or_ssc_ins')->nullable();
            $table->string('olavel_or_ssc_major')->nullable();
            $table->string('olavel_or_ssc_year')->nullable();
            $table->integer('payment_status')->default('0');

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
