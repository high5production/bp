<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\admin_school;
use App\Models\admin_country;
use App\Models\admin_district;
use App\Models\admin_city;
use App\Models\police_station;
use App\Models\admin_area;
class adminSchoolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $getcountry =   admin_country::where('status',1)->get();
      $admin_district =  admin_district::where('status',1)->get();
      $school_p_city =  admin_city::where('status',1)->get();
      $school_p_station =  police_station::where('status',1)->get();
      $school_area =  admin_area::where('status',1)->get();
      $getdata = admin_school::get();
        return view('backend.school.index', compact(
            'getcountry',
            'admin_district',
            'school_p_city',
            'school_p_station',
            'school_area',
            'getdata'
        ));
    }




 public function admin_school_deactive($id){
        $enactive=admin_school::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        
        return redirect()->back();
      }
      public function admin_school_active($id){
          $active=admin_school::where('status',0)->where('id',$id)->update([
            'status' => 1,
          ]);
          return redirect()->back();
    }









    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {




       $states = DB::table("admin_countries")->get();
    


      $getcountry =   admin_country::where('status',1)->get();
      $admin_district =  admin_district::where('status',1)->get();
      $school_p_city =  admin_city::where('status',1)->get();
      $school_p_station =  police_station::where('status',1)->get();
      $school_area =  admin_area::where('status',1)->get();
        return view('backend.school.create', compact(
            'getcountry',
            'admin_district',
            'school_p_city',
            'school_p_station',
            'school_area',
            'states'
        ));
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
       admin_school::create($input);
       return redirect()->route('admin_school.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {






     $school_info = admin_school::find($id);
     $states = DB::table("admin_countries")->get();
    
      $getcountry =   admin_country::where('status',1)->get();
      $admin_district =  admin_district::where('status',1)->get();
      $school_p_city =  admin_city::where('status',1)->get();
      $school_p_station =  police_station::where('status',1)->get();
      $school_area =  admin_area::where('status',1)->get();
        return view('backend.school.show', compact(
            'getcountry',
            'admin_district',
            'school_p_city',
            'school_p_station',
            'school_area',
            'states',
            'school_info'
        ));









      $showdata = admin_school::find($id);
      return view('backend.school.show', compact($showdata));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

     $school_info = admin_school::find($id);
      $states = DB::table("admin_countries")->get();
    
      $getcountry =   admin_country::where('status',1)->get();
      $admin_district =  admin_district::where('status',1)->get();
      $school_p_city =  admin_city::where('status',1)->get();
      $school_p_station =  police_station::where('status',1)->get();
      $school_area =  admin_area::where('status',1)->get();
        return view('backend.school.edit', compact(
            'getcountry',
            'admin_district',
            'school_p_city',
            'school_p_station',
            'school_area',
            'states',
            'school_info'
        ));

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
        $update= admin_school::find($id);
        $input = $request->all();
         $update->fill($input)->save();
         return redirect()->route('admin_school.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        admin_school::destroy($id);
        return redirect()->back();
    }
}
