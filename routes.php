<?php


Route::get('/', function()
{
	return View::make('index');
});

Route::post('/', 'AccountController@login');

Route::get('/1212/admin',function(){

	return View::make('admin_main');
});

Route::get('/single', function()
{
	return View::make('oneproduct');
});