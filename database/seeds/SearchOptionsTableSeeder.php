<?php

use Illuminate\Database\Seeder;

class SearchOptionsTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('search_options')->truncate();

        $search_options = [
            [
                'name' => 'district',
                'options' => '',
            ],
            [
                'name' => 'township',
                'options' => '',
            ],
            [
                'name' => 'parish',
                'options' => '',
            ],
            [
                'name' => 'type',
                'options' => '',
            ],
        ];

        DB::table('search_options')->insert($search_options);
    }
}
