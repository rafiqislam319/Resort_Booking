<?php
Route::group([
    'prefix'=> '/',
    'namespace'=> 'App\Http\Controllers\Frontend',
    'as' => '',
], function(){
    Route::post('/contact/', 'ContactController@contactSubmit')->name('contact_submit');

    Route::get('selected/language/{lang}', 'HomeController@selectedLanguage')->name('selected_language');
});







