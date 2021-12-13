<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Date;
use App\Http\Models\User;
use phpDocumentor\Reflection\Types\Integer as TypesInteger;

// use Ramsey\Uuid\Type\Integer as TypeInteger;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        for ($i=1; $i <=10 ; $i++) {

            // Convert to timetamps
            $min = strtotime('1990-01-01');
            $max = strtotime('2000-01-01');
            // Generate random number using above bounds
            $val = rand($min, $max);
            // Convert back to desired date format
            $string= date('Y-m-d', $val);

            DB::table('users')->insert([
                'name' => 'Firstname '.Str::random(2),
                'dob' => $string,
                'gender' => 'Female',
                'occupation' => 'Private Job',
                'user_type' => 'User',
                'income' => mt_rand(1,9).' Lac',
                'family_type' => 'Joint family',
                'manglik' => 'No',
                'email' => 'User'.Str::random(3).'@gmail.com',
                'password' => Hash::make('password'),
            ]);
        }

    }
}
