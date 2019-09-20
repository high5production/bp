<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\admin_district;
use App\Models\admin_board;
class adminDistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    { 
        $get_board = admin_board::where('status',1)->get();
        $getdata =   admin_district::get();
        return view('backend.admin_district', compact('getdata','get_board'));
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

     public function admin_dis_deactive($id){
        $enactive=admin_district::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        return redirect()->back();
    }
      public function admin_dis_active($id){
          $active=admin_district::where('status',0)->where('id',$id)->update([
            'status' => 1,
          ]);
          return redirect()->back();
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
        admin_district::create($input);
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
        $show = admin_district::with('boardname')->find($id);
        return response()->json($show);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edit = admin_district::with('boardname')->find($id);
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
       $getdata = admin_district::find($id);
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
      admin_district::destroy($id);
    }
}
