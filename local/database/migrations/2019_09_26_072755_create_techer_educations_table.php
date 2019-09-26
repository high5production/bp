<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTecherEducationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('techer_educations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('teacher_id');
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
        Schema::dropIfExists('techer_educations');
    }
}
