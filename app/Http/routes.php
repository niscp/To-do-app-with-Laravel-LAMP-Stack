<?php

 get('/', function () {
 return redirect('/members');
 });

 
 get('admin', function () {
 return redirect('/members');
 });
 
 get('/auth/login', 'Auth\AuthController@getLogin');
 post('/auth/login', 'Auth\AuthController@postLogin');
 get('/auth/logout', 'Auth\AuthController@getLogout');
 Route::get('members','MemberController@index');
 
 Route::get('more/{id}','MemberController@show');
 Route::get('new','MemberController@create');
 Route::post('data','MemberController@store');
 Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');
 
 Route::controllers([
  'auth' => 'Auth\AuthController',
  'password' => 'Auth\PasswordController',
]);
 
 
 
 
 
 
 $router->group([
  'middleware' => 'auth',
 ], function () {
 resource('edit', 'MemberController@edit');
 resource('delete', 'MemberController@destroy');
 resource('save-updates/{id}', 'MemberController@update');
 });
