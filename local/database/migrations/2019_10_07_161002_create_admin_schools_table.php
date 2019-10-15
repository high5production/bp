<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdminSchoolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admin_schools', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('school_name');
            $table->string('school_address');
            $table->string('school_house');
            $table->string('school_road');
            $table->string('school_nears_land');
            $table->integer('school_area')->nullable();
            $table->integer('school_p_station')->nullable();
            $table->integer('school_p_city')->nullable();
            $table->integer('school_p_district');
            $table->integer('school_p_country');
            $table->string('website')->nullable();
            $table->integer('status')->default('1');
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
        Schema::dropIfExists('admin_schools');
    }
}
