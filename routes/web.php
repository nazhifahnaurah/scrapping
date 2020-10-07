<?php

Route::redirect('/', '/login');

Route::redirect('/home', '/admin');

Auth::routes(['register' => false]);

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin', 'middleware' => ['auth']], function () {
    Route::get('/', 'HomeController@index')->name('home');

    Route::delete('permissions/destroy', 'PermissionsController@massDestroy')->name('permissions.massDestroy');

    Route::resource('permissions', 'PermissionsController');

    Route::delete('roles/destroy', 'RolesController@massDestroy')->name('roles.massDestroy');

    Route::resource('roles', 'RolesController');

    Route::delete('users/destroy', 'UsersController@massDestroy')->name('users.massDestroy');

    Route::resource('users', 'UsersController');

    Route::delete('products/destroy', 'ProductsController@massDestroy')->name('products.massDestroy');
    Route::delete('scrappings/destroy', 'ScrappingController@massDestroy')->name('scrappings.massDestroy');

    Route::resource('products', 'ProductsController');
    Route::resource('scrappings', 'ScrappingController');

    Route::post('/scrapping/bulk_update', 'ScrappingController@bulk_update')->name('scrappings.bulk_update');
    Route::get('/scrapping/process', 'ScrappingController@process');
    Route::get('/scrapping', 'ScrappingController@index');
    Route::get('/scrapping_url', 'ScrappingController@url')->name('scrapping.url');
    Route::get('/scrapping/start/{id}', 'ScrappingController@scrapping_start')->name('scrappings.start');
    Route::get('/scrapping/result/{id}', 'ScrappingController@scrapping_result')->name('scrappings.result');
    Route::post('/scrapping/result/update', 'ScrappingController@scrapping_result_update')->name('scrappings.result_update');
});
