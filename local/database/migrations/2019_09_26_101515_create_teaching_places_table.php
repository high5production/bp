<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeachingPlacesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teaching_places', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id');
            $table->string('coaching_name');
            $table->date('coaching_establish_date')->nullable();
            $table->mediumText('other_subject')->nullable();
            $table->string('house');
            $table->string('road_no');
            $table->string('Landmark');
            $table->string('post_office');
            $table->string('post_code');
            $table->longText('map');
            $table->longText('area');
            $table->string('p_station');
            $table->string('district');
            $table->string('country');
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
        Schema::dropIfExists('teaching_places');
    }
}
