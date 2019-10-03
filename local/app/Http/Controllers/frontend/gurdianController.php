<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\guardian_profile;
use App\Models\admin_country;
use App\Models\admin_district;
use App\Models\admin_city;
use App\Models\police_station;
use App\Models\admin_area;

use Auth;
class gurdianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function __construct(){
        $this->middleware('Gueardian');
    }

    public function guardian_deshboard(){
      $profile_id = Auth::user()->id;
      $g_country = admin_country::where('status',1)->get();
      $g_district = admin_district::where('status',1)->get();
      $g_city = admin_city::where('status',1)->get();
      $gp_station = police_station::where('status',1)->get();
      $allarea = admin_area::where('status',1)->get();
      $g_profile = guardian_profile::where('user_id',$profile_id)->first();
      return view('frontend/guardian_profile', compact(
        'allarea',
        'profile_id',
        'g_profile',
        'g_country',
        'g_district',
        'g_city',
        'gp_station'


    ));
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
        $getdata = guardian_profile::where('user_id', $id)->first();
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
