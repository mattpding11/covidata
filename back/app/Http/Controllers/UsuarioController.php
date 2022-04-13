<?php

namespace App\Http\Controllers;
use App\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{

    public function traerUsuarios(){
        $usuario = Usuario::all();
        return response()->json($usuario,200);
    }

    public function agregarUsuario(Request $request){
        
        \Session::flush();
        $usuario = new Usuario();
        $usuario->nombre = $request->firstName;
        $usuario->apellido = $request->lastName;
        $usuario->tipoDocumento = $request->documentType;
        $usuario->numDocumento = $request->document;
        $usuario->edad = $request->age;
        $usuario->correo = $request->email;
        $usuario->direccion = $request->address;
        $usuario->celular = $request->cellphoneNumber;
        $usuario->sexo = $request->gender;
        $usuario->dolorCabeza = $request->headache;
        $usuario->gripa = $request->flu;
        $usuario->flema = $request->phlegm;
        $usuario->resfriado = $request->cold;
        $usuario->fiebre = $request->fever;
        $usuario->dolorCuerpo = $request->bodyPain;
        $usuario->hospital_id = $request->hospitalId;

        $usuario->save();

        if($usuario->save())
        return response()->json('OK',201);
        else
        return response()->json('Error');
    }
}
