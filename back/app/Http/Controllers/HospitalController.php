<?php

namespace App\Http\Controllers;
use App\Hospitales;

use Illuminate\Http\Request;

class HospitalController extends Controller
{
    public function traerHospitales(){
        return response()->json(\App\Hospitales::all()); 
    }

    public function agregarHospital(Request $request){
    
        \Session::flush();
        $hospitales = new Hospitales();
        $hospitales->nombre = $request->nombre;
        $hospitales->direccion = $request->direccion;
        $hospitales->imagen = ($request->imagen == null) ? "" :$request->imagen;
        $hospitales->telefono = $request->telefono;
        $hospitales->cantidadCamas = $request->cantidadCamas;
        $hospitales->camasLibres = $request->camasLibres;
        $hospitales->cantidadDoctores = $request->cantidadDoctores;
        $hospitales->doctoresLibres = $request->doctoresLibres;
        $hospitales->lng = $request->lng;
        $hospitales->lat = $request->lat;
        if($hospitales->save())
        return response()->json('OK',201);
        else
        return response()->json('Error');
    }


}
