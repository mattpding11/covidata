<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsuariosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre');
            $table->string('apellido');
            $table->enum('tipoDocumento', ['CC', 'TI','CE']);
            $table->string('numDocumento');
            $table->integer('edad');
            $table->string('correo');
            $table->string('direccion');
            $table->string('celular');
            $table->enum('sexo', ['M', 'F']);
            $table->boolean('dolorCabeza')->default(false);
            $table->boolean('gripa')->default(false);
            $table->boolean('flema')->default(false);
            $table->boolean('resfriado')->default(false);
            $table->boolean('fiebre')->default(false);
            $table->boolean('dolorCuerpo')->default(false);
            $table->bigInteger('hospital_id')->unsigned();
            $table->timestamps();

            $table->foreign('hospital_id')->references('id')->on('hospitales');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usuarios');
    }
}
