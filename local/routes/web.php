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


  // TEACHER SEARCH ROUTE
Route::any('serach','frontend\searchController@index')->name('search');
Route::any('search-by-subject/{subject_name}','frontend\searchController@search_by_subject')->name('search_by_subject');

// website country, dis, city, area_deactive

Route::get('mycountry', 'frontend\websiteController@mycountry');
Route::get('mydistrict/{id}','frontend\websiteController@mydistrict')->name('mydistrict');
Route::get('mycity/{id}','frontend\websiteController@mycity')->name('mycity');
Route::get('my_police_statoin/{id}','frontend\websiteController@my_police_statoin')->name('my_police_statoin');

Route::get('myarea/{id}','frontend\websiteController@myarea')->name('myarea');


Route::group(['middleware' => 'auth'],function(){
   
   Route::post('student_enroll', 'frontend\enrollController@student_enroll')->name('student_enroll');
});





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
// teacher notice

Route::get('t_notice_deactive/{id}', 'frontend\teacherNoticeController@t_notice_deactive')->name('t_notice_deactive');
Route::get('t_notice_active/{id}', 'frontend\teacherNoticeController@t_notice_active')->name('t_notice_active');
Route::resource('/teacher-notice', 'frontend\teacherNoticeController');

 // teacher coaching
Route::post('coaching_place', 'frontend\teachingPlaceController@coaching_place')->name('coaching_place');
Route::post('coaching_place_update/{id}', 'frontend\teachingPlaceController@update')->name('coaching_place_update');
Route::get('coaching_delete/{id}', 'frontend\teachingPlaceController@destroy')->name('coaching_destroy');

 // teacher traning
Route::post('t_traning', 'frontend\teacherTraningController@store')->name('t_traning');
Route::post('t_traning_update/{id}', 'frontend\teacherTraningController@update')->name('t_traning_update');
Route::get('t_traning_delete/{id}', 'frontend\teacherTraningController@destroy')->name('t_traning_destroy');




Route::get('teacher-class', 'frontend\teacherController@teacher_class')->name('teacher_class');
Route::get('teacher-subscription', 'frontend\teacherController@teacher_subscription')->name('teacher_subscription');
Route::get('teacher_deshboard', 'frontend\teacherController@teacher_deshboard')->name('teacher_deshboard');

Route::get('pending_student/{id}', 'frontend\teacherController@pending_student')->name('pending_student');
Route::get('approved_student/{id}', 'frontend\teacherController@approved_student')->name('approved_student');

// student indivisual sms
Route::post('student_indivisual_sms', 'frontend\teacherController@student_indivisual_sms')->name('student_indivisual_sms');
Route::get('student_enroll_list', 'frontend\teacherController@student_enroll_list')->name('student_enroll_list');
Route::resource('teacher','frontend\teacherController');



// teacher payment route

Route::get('bikash', 'frontend\paymentController@bikash')->name('bikash');
Route::post('bikash-payment', 'frontend\paymentController@bikash_payment')->name('bikash_payment');

Route::get('bank', 'frontend\paymentController@bank')->name('bank');
Route::post('bank-payment', 'frontend\paymentController@bank_payment')->name('bank_payment');

Route::get('handcash', 'frontend\paymentController@handcash')->name('handcash');
Route::post('cash_payment', 'frontend\paymentController@cash_payment')->name('cash_payment');


Route::resource('payment', 'frontend\paymentController');






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



/**------------- ADMIN SCHOOL ---------------**/
Route::get('admin_school_deactive/{id}', 'backend\adminSchoolController@admin_school_deactive')->name('admin_school_deactive');
Route::get('admin_school_active/{id}', 'backend\adminSchoolController@admin_school_active')->name('admin_school_active');
Route::resource('admin_school', 'backend\adminSchoolController');




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
Route::get('admin_guardian_active/{id}', 'backend\adminGuardianController@admin_guardian_active')->name('admin_guardian_active');
Route::resource('admin_guardian', 'backend\adminGuardianController');


/**------------- ADMIN CCOUNTRY ---------------**/
Route::get('country_deactive/{id}', 'backend\countryController@country_deactive')->name('country_deactive');
Route::get('country_active/{id}', 'backend\countryController@country_active')->name('country_active');
Route::resource('country', 'backend\countryController');



/**------------- ADMIN DISTRICT ---------------**/
Route::get('admin_dis_deactive/{id}', 'backend\adminDistrictController@admin_dis_deactive')->name('admin_dis_deactive');
Route::get('admin_dis_active/{id}', 'backend\adminDistrictController@admin_dis_active')->name('admin_dis_active');
Route::resource('admin_dis', 'backend\adminDistrictController');

/**------------- ADMIN CITY ---------------**/
Route::get('admin_city_deactive/{id}', 'backend\adminCityController@admin_city_deactive')->name('admin_city_deactive');
Route::get('admin_city_active/{id}', 'backend\adminCityController@admin_city_active')->name('admin_city_active');
Route::resource('admin_city', 'backend\adminCityController');


/**------------- POLICE STATION ---------------**/
Route::get('police_station_deactive/{id}', 'backend\policeStationController@police_station_deactive')->name('police_station_deactive');
Route::get('police_station_active/{id}', 'backend\policeStationController@police_station_active')->name('police_station_active');
Route::resource('police_station', 'backend\policeStationController');


/**-------------  AREA ---------------**/
Route::get('area_deactive/{id}', 'backend\adminAreaController@area_deactive')->name('area_deactive');
Route::get('area_active/{id}', 'backend\adminAreaController@area_active')->name('area_active');
Route::resource('admin_area', 'backend\adminAreaController');

/**-------------  YEAR ---------------**/
Route::get('year_deactive/{id}', 'backend\adminYearController@year_deactive')->name('year_deactive');
Route::get('year_active/{id}', 'backend\adminYearController@year_active')->name('year_active');
Route::resource('admin_year', 'backend\adminYearController');



/** ---------- ADMIN PAYMENT --------------**/


Route::get('payment_deactive/{id}', 'backend\adminPaymentController@payment_deactive')->name('payment_deactive');
Route::get('payment_active/{id}', 'backend\adminPaymentController@payment_active')->name('payment_active');

Route::resource('admin_payment', 'backend\adminPaymentController');


