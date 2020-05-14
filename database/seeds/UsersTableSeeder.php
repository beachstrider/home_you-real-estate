<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'name'           => 'Pedro',
                'email'          => 'admin@admin.com',
                'password'       => bcrypt('password'),
                'remember_token' => Str::random(60),
                'role_id'        => 1,
            ],
            [
                'name'           => 'Zai',
                'email'          => 'markbanner445@gmail.com',
                'password'       => bcrypt('password'),
                'remember_token' => Str::random(60),
                'role_id'        => 2,
            ],
        ];

        DB::table('users')->insert($users);

    }
}
