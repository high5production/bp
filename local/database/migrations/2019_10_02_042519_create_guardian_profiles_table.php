<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGuardianProfilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('guardian_profiles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id');
            $table->integer('guardian_id');
            $table->string('g1_name')->nullable();
            $table->string('g1_phone')->nullable();
            $table->string('g1_relation')->nullable();
            $table->string('g1_email')->nullable();
            $table->string('g1_address')->nullable();
            $table->string('codepopular')->nullable();
            $table->string('g1_nid')->nullable();
            $table->integer('g1_area')->nullable();
            $table->integer('g1_ps_id')->nullable();
            $table->integer('g1_city')->nullable();
            $table->integer('g1_district')->nullable();
            $table->integer('g1_country')->nullable();
            $table->string('g2_name')->nullable();
            $table->string('g_number')->nullable();
            $table->string('g2_relation')->nullable();
            $table->string('g2_email')->nullable();
            $table->string('g2_address')->nullable();
            $table->string('g2_nid')->nullable();
            $table->integer('g2_area')->nullable();
            $table->integer('g2_ps_id')->nullable();
            $table->integer('g2_city')->nullable();
            $table->integer('g2_district')->nullable();
            $table->integer('g2_country')->nullable();
            $table->string('name')->nullable();
            $table->string('class_grade_lebel')->nullable();
            $table->string('group')->nullable();
            $table->string('subject')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('address')->nullable();
            $table->integer('area')->nullable();
            $table->integer('ps_id')->nullable();
            $table->integer('city')->nullable();
            $table->integer('district')->nullable();
            $table->integer('country')->nullable();
            $table->integer('s_photo')->nullable();
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
        Schema::dropIfExists('guardian_profiles');
    }
}
