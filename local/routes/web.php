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
Route::get('/teacher_profile{id}', 'frontend\websiteController@teacher_profile')->name('teacher_profile');



/**------------- STUDENT PANEL ---------------**/
Route::get('student-notice', 'frontend\studentController@student_notice')->name('student_notice');
Route::get('student-class', 'frontend\studentController@student_class')->name('student_class');
Route::get('student_deshboard', 'frontend\studentController@student_deshboard')->name('student_deshboard');
Route::resource('student', 'frontend\studentController');




/**------------- GUARDIAN PANEL ---------------**/
route::get('/guardian-deshboard', 'frontend\gurdianController@guardian_deshboard')->name('guardian_deshboard');
route::resource('/guardian', 'frontend\gurdianController');



/**------------- TEACHER PANEL ---------------**/


 // teacher choaching
Route::post('coaching_place', 'frontend\teachingPlaceController@coaching_place')->name('coaching_place');
Route::post('coaching_place_update/{id}', 'frontend\teachingPlaceController@update')->name('coaching_place_update');
Route::get('coaching_delete/{id}', 'frontend\teachingPlaceController@destroy')->name('coaching_destroy');

 // teacher traning
Route::post('t_traning', 'frontend\teacherTraningController@store')->name('t_traning');
Route::post('t_traning_update/{id}', 'frontend\teacherTraningController@update')->name('t_traning_update');
Route::get('t_traning_delete/{id}', 'frontend\teacherTraningController@destroy')->name('t_traning_destroy');



Route::get('teacher-notice', 'frontend\teacherController@teacher_notice')->name('teacher_notice');
Route::get('teacher-class', 'frontend\teacherController@teacher_class')->name('teacher_class');
Route::get('teacher-subscription', 'frontend\teacherController@teacher_subscription')->name('teacher_subscription');
Route::get('teacher_deshboard', 'frontend\teacherController@teacher_deshboard')->name('teacher_deshboard');
Route::resource('teacher','frontend\teacherController');

Auth::routes();

Route::get('/home','HomeController@index')->name('home');


/*************************************************************************
								BACKEND ROUTE
*****************************************************************************/


Route::get('/admin-deshboard','backend\backendController@index')->name('admin_deshboard');
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

/**------------- ADMIN STUDENT ---------------**/
Route::get('admin_student_deactive/{id}', 'backend\adminStudentController@admin_student_deactive')->name('admin_student_deactive');
Route::get('admin_student_active/{id}', 'backend\adminStudentController@admin_student_active')->name('admin_student_active');
Route::resource('admin_student', 'backend\adminStudentController');

/**------------- ADMIN TEACHER ---------------**/
Route::get('admin_teacher_deactive/{id}', 'backend\adminTeacherController@admin_teacher_deactive')->name('admin_teacher_deactive');
Route::get('admin_teacher_active/{id}', 'backend\adminTeacherController@admin_teacher_active')->name('admin_teacher_active');
Route::resource('admin_teacher', 'backend\adminTeacherController');


/**------------- ADMIN GUEARDIAN ---------------**/
Route::get('admin_guardina_deactive/{id}', 'backend\adminGuardianController@admin_guardian_deactive')->name('admin_guardian_deactive');
Route::get('admin_guardian_active/{id}', 'backend\adminGuardianController@admin_guardian_active')->name('admin_teacher_active');
Route::resource('admin_guardian', 'backend\adminGuardianController');


/**------------- ADMIN CCOUNTRY ---------------**/
Route::get('country_deactive/{id}', 'backend\countryController@country_deactive')->name('country_deactive');
Route::get('country_active/{id}', 'backend\countryController@country_active')->name('country_active');
Route::resource('country', 'backend\countryController');



/**------------- ADMIN DISTRICT ---------------**/
Route::get('admin_dis_deactive/{id}', 'backend\adminDistrictController@admin_dis_deactive')->name('admin_dis_deactive');
Route::get('admin_dis_active/{id}', 'backend\adminDistrictController@admin_dis_active')->name('admin_dis_active');
Route::resource('admin_dis', 'backend\adminDistrictController');


/**------------- POLICE STATION ---------------**/
Route::get('police_station_deactive/{id}', 'backend\policeStationController@police_station_deactive')->name('police_station_deactive');
Route::get('police_station_active/{id}', 'backend\policeStationController@police_station_active')->name('police_station_active');
Route::resource('police_station', 'backend\policeStationController');






