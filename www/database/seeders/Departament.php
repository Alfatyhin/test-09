<?php

namespace Database\Seeders;

use App\Models\Departaments;
use App\Models\StaffDepartaments;
use Illuminate\Database\Seeder;

class Departament extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $departaments[1] = 'Отдел закупок';
        $departaments[] = 'Отдел продаж';
        $departaments[] = 'PR-отдел';

        foreach ($departaments as $k => $name) {

            $count = StaffDepartaments::where('departament_id', $k)->count();

            $model = new Departaments();
            $model->name = $name;
            $model->staff_count = $count;
            $model->save();
        }
    }
}
