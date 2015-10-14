<?php

 use Illuminate\Database\Seeder;
 use Illuminate\Database\Eloquent\Model;
 use App\Member;
 use App\MemberTableSeeder;

 class DatabaseSeeder extends Seeder
 {
 /**
 * Run the database seeds.
 */
 public function run()
 {
	 Model::unguard();
	 Member::truncate();
     $this->call('MemberTableSeeder');
     Model::reguard();

 }

 }


 