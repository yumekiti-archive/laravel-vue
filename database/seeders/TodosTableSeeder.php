<?php

namespace Database\Seeders;

use App\Task;
use Illuminate\Database\Seeder;

class TodosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for ($i = 1; $i <= 10; $i) {
            Task::create([
                'title' => 'title' . $i,
                'detail' => 'detail' . $i,
            ]);
        }
    }
}
