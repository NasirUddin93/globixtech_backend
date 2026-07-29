<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    public function run(): void
    {
        // Create Admin Account
        User::updateOrCreate(
            ['email' => 'admin@gmail.com'],
            [
                'name'    => 'System Admin',
                'password' => Hash::make('admin123'),
                'type'    => 'admin',
                'phone'   => '+8801700000000',
                'address' => 'Dhaka, Bangladesh',
            ]
        );

        // Run seeders
        $this->call([
            ContactSubmissionSeeder::class,
        ]);
    }
}
