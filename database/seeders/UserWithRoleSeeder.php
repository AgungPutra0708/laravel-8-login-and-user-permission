<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserWithRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = new User;
        $admin->email = 'admin@gmail.com';
        $admin->email_verified_at = date('Y-m-d H:i:s');
        $admin->password = Hash::make('admin');
        $admin->role = 'admin';
        $admin->save();

        $admin = new User;
        $admin->email = 'manager@gmail.com';
        $admin->email_verified_at = date('Y-m-d H:i:s');
        $admin->password = Hash::make('manager');
        $admin->role = 'manager';
        $admin->save();
    }
}
