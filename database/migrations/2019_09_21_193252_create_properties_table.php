<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropertiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('properties', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('district');
            $table->string('township');
            $table->string('parish');
            $table->string('type');
            $table->string('state');
            $table->string('business');
            $table->integer('cost');
            $table->string('address');
            $table->integer('area')->nullable();
            $table->integer('territory');
            $table->boolean('beach');
            $table->integer('bedroom')->nullable();
            $table->integer('room');
            $table->integer('wc')->nullable();
            $table->integer('garage')->nullable();
            $table->integer('pool')->nullable();
            $table->text('description');
            $table->text('images');
            $table->boolean('featured')->default(false);
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
        Schema::dropIfExists('properties');
    }
}
