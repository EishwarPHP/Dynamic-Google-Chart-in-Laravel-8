<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class UnitFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            INSERT INTO `units`(`id`, `day`, `sales_unit`, `expense`) VALUES 
(NULL,'Monday',1000,400), (NULL,'Tuesday',1120,300),(NULL,'Wednesday',1350,420),
(NULL,'Thursday',950,210),(NULL,'Friday',1600,560),(NULL,'Saturday',700,110),(NULL,'Sunday',730,120);
        ];
    }
}
