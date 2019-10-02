<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\admin_city;
use App\Models\admin_district;

class adminCityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct(){
        $this->middleware('Admin');
    }
    public function index()
    {
        $getdata = admin_city::get();
        $getdis = admin_district::where('status',1)->get();
        return view('backend.admin_city', compact('getdata','getdis'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function admin_city_deactive($id){
        $enactive=admin_city::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        return redirect()->back();
    }
      public function admin_city_active($id){
          $active=admin_city::where('status',0)->where('id',$id)->update([
            'status' => 1,
          ]);
          return redirect()->back();
      }



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
        admin_city::create($input);
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
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $edit = admin_city::with('dis_name')->find($id);
      return response()->json($edit);
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
       $getdata = admin_city::find($id);
       $input = $request->all();
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
        admin_city::destroy($id);
    }
}
