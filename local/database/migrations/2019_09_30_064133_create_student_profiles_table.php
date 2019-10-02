<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentProfilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_profiles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id');
            $table->integer('student_id');
            $table->string('student_name')->nullable();
            $table->string('class_grade_level')->nullable();
            $table->string('group')->nullable();
            $table->string('subject_passing')->nullable();
            $table->string('contact_no')->nullable();
            $table->string('email')->nullable();
            $table->longText('address')->nullable();
            $table->string('area')->nullable();
            $table->integer('district')->nullable();
            $table->integer('country')->nullable();
            // father info
            $table->string('father_name')->nullable();
            $table->string('father_contact_no')->nullable();
            $table->string('father_email')->nullable();
            $table->longText('father_address')->nullable();
            $table->string('Profession')->nullable();
            $table->string('father_nid')->nullable();
            $table->string('father_area')->nullable();
            $table->integer('father_district')->nullable();
            $table->integer('f_country')->nullable();
            // mother info
           $table->string('mother_name')->nullable();
            $table->string('mother_contact_no')->nullable();
            $table->string('mother_email')->nullable();
            $table->longText('mother_address')->nullable();
            $table->string('mother_rofession')->nullable();
            $table->string('mother_nid')->nullable();
            $table->string('mother_area')->nullable();
            $table->string('mother_district')->nullable();
            $table->string('mother_country')->nullable();

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
        Schema::dropIfExists('student_profiles');
    }
}
