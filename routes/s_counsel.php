<?php

//use App\Http\Controllers\Admin\s_counsel\SadikCounselController;
//use Illuminate\Support\Facades\Route;


Route::get('client-info-table', 's_counsel\SadikCounselController@index')->name('client_information');
Route::get('client-detail-info/{id}', 's_counsel\SadikCounselController@clientDetails')->name('clientDetails');
