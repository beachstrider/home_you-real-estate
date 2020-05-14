<?php

Route::get('/', 'HomeController@index')->name('home');

Route::get('/properties/search', 'PropertiesController@search');

Route::resource('/properties', 'PropertiesController');
Route::resource('/sellrequest', 'SellRequestsController');
Route::resource('/askforrating', 'AskForRatingsController');
Route::resource('/contact', 'ContactMessagesController');

Route::get('/favourities', 'PropertiesController@myFavourities')->middleware('verified');

Route::get('/favourite/{favourite}', 'PropertiesController@favourite')->name('favourite');
Route::get('/unfavourite/{favourite}', 'PropertiesController@unfavourite')->name('unfavourite');

Route::get('/properties/{property}/print', 'PropertiesController@print');

Route::get('/properties/orderby/{by}/{direct}', 'PropertiesController@orderBy');

Route::resource('/blogs', 'BlogsController');

Route::view('/aboutus', 'aboutus');
Route::view('/privacypolicy', 'privacypolicy');
Route::view('/termsandconditions', 'termsandconditions');

Route::group(['prefix' => 'admin'], function () {
    Route::get('search-options/1/edit', function(){
        return "ok";
    });

    Voyager::routes();

    Route::post('blogImageUpload', 'AdminBlogsController@imageUpload');
});

Auth::routes(['verify'=>true]);

Route::get('lang/{locale}', function ($locale) {
    App::setLocale($locale);
    session()->put('locale', $locale);
    return redirect()->back();
});



