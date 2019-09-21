<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*************************************************************************
								FRONTEND ROUTE
*****************************************************************************/



Route::get('/', 'frontend\websiteController@index');
Route::get('/search_result', 'frontend\websiteController@search_result')->name('search_result');
Route::get('/teacher_profile', 'frontend\websiteController@teacher_profile')->name('teacher_profile');




Auth::routes();




/*************************************************************************
								BACKEND ROUTE
*****************************************************************************/


Route::get('/home','HomeController@index')->name('home');
Route::get('webbackend/{id}', 'backend\backendController@view_profile')->name('view_profile');
Route::resource('webbackend', 'backend\backendController');

/**------------- TEACHING CLASS ---------------**/
Route::get('active_status/{id}', 'backend\TeachingClassController@active_status')->name('active_status');
Route::get('deactive_status/{id}', 'backend\TeachingClassController@deactive_status')->name('deactive_status');
Route::resource('teaching_class', 'backend\TeachingClassController');


/**------------- ADMIN SUBJECT ---------------**/
Route::get('admin_subject_deactive/{id}', 'backend\adminSubjectController@admin_subject_deactive')->name('admin_subject_deactive');
Route::get('admin_subject_active/{id}', 'backend\adminSubjectController@admin_subject_active')->name('admin_subject_active');
Route::resource('admin_subject', 'backend\adminSubjectController');


/**------------- ADMIN BOARD ---------------**/
Route::get('admin_board_deactive/{id}', 'backend\adminBoardController@admin_board_deactive')->name('admin_board_deactive');
Route::get('admin_board_active/{id}', 'backend\adminBoardController@admin_board_active')->name('admin_board_active');
Route::resource('admin_board', 'backend\adminBoardController');


/**------------- ADMIN CCOUNTRY ---------------**/
Route::get('country_deactive/{id}', 'backend\countryController@country_deactive')->name('country_deactive');
Route::get('country_active/{id}', 'backend\countryController@country_active')->name('country_active');
Route::resource('country', 'backend\countryController');



/**------------- ADMIN DISTRICT ---------------**/
Route::get('admin_dis_deactive/{id}', 'backend\adminDistrictController@admin_dis_deactive')->name('admin_dis_deactive');
Route::get('admin_dis_active/{id}', 'backend\adminDistrictController@admin_dis_active')->name('admin_dis_active');
Route::resource('admin_dis', 'backend\adminDistrictController');


/**------------- Police Station ---------------**/
Route::get('police_station_deactive/{id}', 'backend\policeStationController@police_station_deactive')->name('police_station_deactive');
Route::get('police_station_active/{id}', 'backend\policeStationController@police_station_active')->name('police_station_active');
Route::resource('police_station', 'backend\policeStationController');






