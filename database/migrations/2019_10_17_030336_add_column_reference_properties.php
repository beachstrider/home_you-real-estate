<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnReferenceProperties extends Migration
{
    public function up()
    {
        Schema::table('properties', function(Blueprint $table){
            $table->string('reference')->default('123')->after('name');
        });
    }

    public function down()
    {
        //
    }
}
