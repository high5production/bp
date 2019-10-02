<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\student_profile;
use App\Models\admin_country;
use App\Models\admin_district;
use Auth;
class studentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
  
    public function __construct(){
        $this->middleware('Student');
    }

    public function student_deshboard(){
      $profile_id = Auth::user()->id;
      $allcountry = admin_country::where('status',1)->get();
      $getdis = admin_district::where('status',1)->get();
      $student_info = student_profile::where('user_id',$profile_id)->first();
       return view('frontend.student_panel', compact(
          'profile_id',
          'student_info',
          'allcountry',
          'getdis'

       ));
    }
    public function student_notice(){
        return view('frontend.student_notice');
    }
    public function student_class(){
        return view('frontend.student_class');
    }
    public function index()
    {
        //
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
        $save =  student_profile::create($input);
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
        //
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
      
        $getdata = student_profile::where('user_id', $id)->first();
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
