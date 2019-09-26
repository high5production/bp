<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\admin_country;
use App\Models\admin_district;
use App\Models\police_station;
use App\Models\teaching_class;
use App\Models\admin_subject;
use App\techer_education;
use App\teacher_profile;
use App\teaching_place;




class teacherController extends Controller
{
   
     public function __construct(){
        $this->middleware('Teacher');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function teacher_deshboard(){
      $teacher_info = teacher_profile::first();
      $allcountry = admin_country::where('status',1)->get();
      $getdis = admin_district::where('status',1)->get();
      $allclass = teaching_class::where('status',1)->get();
      $allsubjects = admin_subject::where('status',1)->get();
      $get_police_station = police_station::where('status',1)->get();
      $teaching_places = teaching_place::get();
      return view('frontend.teacher_panel',compact(
        'allcountry',
        'getdis',
        'get_police_station',
        'allclass',
        'teacher_info',
        'teaching_places',
        'allsubjects'

      ));
    }
   public function teacher_subscription(){
      return view('frontend.subscription');
   }
   public function teacher_class(){
      return view('frontend.teacher_class');
   }
    public function teacher_notice(){
      return view('frontend.teacher_notice');
   }


    public function index()
    {
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        techer_education::create($input);
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $show = admin_teacher::find($id);
       
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $getdata = teacher_profile::first();
        $input =  $request->all();

        $getdata->fill($input)->save();
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
