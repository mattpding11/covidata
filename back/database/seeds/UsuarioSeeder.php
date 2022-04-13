<?php

use Illuminate\Database\Seeder;

use App\Usuario;

class UsuarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('usuarios')->insert(
            [
                'nombre'=>"Frailejon",
                'apellido'=>"Hernesto perez",
                'tipoDocumento'=>"CC",
                'numDocumento'=>"102020123",
                'edad'=>"21",
                'correo'=>"perez@gmail.com",
                'direccion'=>"cll 43 #22",
                'celular'=>"312332245",
                'sexo'=>"M",
                'dolorCabeza'=>true,
                'gripa'=>false,
                'flema'=>true,
                'resfriado'=>false,
                'fiebre'=>false,
                'dolorCuerpo'=>false,
                'hospital_id'=>1
            ]);
    }
}
