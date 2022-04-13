<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => ['cors']], function () {
    Route::post('/agregarHospital','HospitalController@agregarHospital');
    Route::get('/traerHospitales','HospitalController@traerHospitales');

    Route::post('/usuario','UsuarioController@agregarUsuario');
    Route::get('/usuario','UsuarioController@traerUsuarios');
});

