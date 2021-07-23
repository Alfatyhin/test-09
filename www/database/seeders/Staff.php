<?php

namespace Database\Seeders;

use App\Models\StaffDepartaments;
use Illuminate\Database\Seeder;

class Staff extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Staff::factory(100)->create()
            ->each(function ($u) {
            $staffId = $u->id;
            $departaments = $u->departaments;
            $departaments = json_decode($departaments, true);
            foreach ($departaments as $depId) {
                $staffDeps = new StaffDepartaments();
                $staffDeps->staff_id = $staffId;
                $staffDeps->departament_id = $depId;
                $staffDeps->save();
            }
        });
    }
}
