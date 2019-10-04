<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Auth;
use App\Models\admin_country;
use App\Models\admin_district;
use App\Models\police_station;
use App\Models\teaching_class;
use App\Models\admin_subject;
use App\techer_education;
use App\teacher_profile;
use App\teaching_place;
use App\teacher_traning;
use Image;

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
      $profile_id = Auth::user()->id;
      $teacher_info = teacher_profile::where('user_id',$profile_id)->first();
      $allcountry = admin_country::where('status',1)->get();
      $getdis = admin_district::where('status',1)->get();
      $allclass = teaching_class::where('status',1)->get();
      $allsubjects = admin_subject::where('status',1)->get();
      $get_police_station = police_station::where('status',1)->get();
      $teaching_places = teaching_place::where('user_id', $profile_id)->get();
      $teacher_tranings = teacher_traning::where('user_id', $profile_id)->get();
      return view('frontend.teacher_panel',compact(
        'allcountry',
        'getdis',
        'get_police_station',
        'allclass',
        'teacher_info',
        'teaching_places',
        'allsubjects',
        'teacher_tranings',
        'profile_id'

      ));
    }
   public function teacher_subscription(){
      return view('frontend.subscription');
   }
   public function teacher_class(){
      return view('frontend.teacher_class');
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
        $getdata = teacher_profile::where('user_id', $id)->first();

        $input =  $request->all();

      $this->validate($request,[
           'routine' =>  'mimes:jpeg,jpg,png,gif,pdf|max:10000',
      ]);



    if(!empty($_FILES['photo']['name'])){
    // Routine Upload
      if($request->hasFile('photo')){
        $image=$request->file('photo');
        $imageName='photo'.'_'.time().'.'.$image->getClientOriginalExtension();
        Image::make($image)->save(base_path('public/contents/upload/teacher/profile/'.$imageName));
         $input['photo']=$imageName;
            if (file_exists(public_path().'/contents/upload/teacher/profile/'.$getdata->photo)) {
                unlink(public_path().'/contents/upload/teacher/profile/'.$getdata->photo);
                  $updateslider=$getdata->fill($input)->save();
            }
     }

      $getdata->fill($input)->save();

 }elseif(!empty($_FILES['routine']['name'])){
    // Routine Upload
      if($request->hasFile('routine')){
        $image=$request->file('routine');
        $imageName='routine'.'_'.time().'.'.$image->getClientOriginalExtension();
        Image::make($image)->save(base_path('public/contents/upload/teacher/routine/'.$imageName));
         $input['routine']=$imageName;
            if (file_exists(public_path().'/contents/upload/teacher/routine/'.$getdata->routine)) {
                unlink(public_path().'/contents/upload/teacher/routine/'.$getdata->routine);
                  $updateslider=$getdata->fill($input)->save();
            }
     }

      $getdata->fill($input)->save();

 }

 else{
       $getdata->fill($input)->save();
 }
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
