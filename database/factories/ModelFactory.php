<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\Post::class, function ($faker) {
2 return [
3 'title' => $faker->sentence(mt_rand(3, 10)),
4 'content' => join("\n\n", $faker->paragraphs(mt_rand(3, 6))),
5 'published_at' => $faker->dateTimeBetween('-1 month', '+3 days'),
6 ];
7 });
