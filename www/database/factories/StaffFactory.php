<?php

namespace Database\Factories;

use App\Models\Staff;
use Illuminate\Database\Eloquent\Factories\Factory;

class StaffFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Staff::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $xd = rand(1, 2);
        $departamentArray[1] = 1;
        $departamentArray[] = 2;
        $departamentArray[] = 3;

        $randKey = array_rand($departamentArray, $xd);
        if ($xd > 1) {
            foreach ($randKey as $key) {
                $newArray[] = $departamentArray[$key];
            }
        } else {
            $newArray[] = $randKey;
        }


        return [
            'first_name' => $this->faker->name(),
            'last_name' => $this->faker->lastName(),
            'salary' => rand(1000, 10000),
            'gender' => rand(1,2),
            'departaments' => json_encode($newArray),
        ];
    }
}
