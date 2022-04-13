<?php

use Illuminate\Database\Seeder;

class HospitalSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('hospitales')->insert(
            [
                'nombre'=>"Pablo tobon",
                'direccion'=>"call 55",
                'telefono'=>"31231232",
                'cantidadCamas'=>100,
                'camasLibres'=>50,
                'cantidadDoctores'=>53,
                'doctoresLibres'=>23,
                'imagen'=>"https://www.hptu.org.co/internacional/images/gestioncalidad.png",
                'lat'=>21.213,
                'lng'=>98.22
            ]);
    }
}
