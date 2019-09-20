<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\admin_subject;
use App\Models\admin_board;
use Session;

class adminSubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
	   $get_board= admin_board::where('status',1)->get();
       $getdata= admin_subject::get();
       return view('backend.admin_subject', compact('getdata','get_board'));
	
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
        $input=$request->all();
        $datainsert= admin_subject::create($input);
        if($datainsert){
          Session::flash('status', 'Data has been Added');
          return redirect()->back();
        }else{
            Session::flash('error', 'Something Went Wrong');
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $show=admin_subject::with('boardname')->find($id);
	   return response()->json($show);
    }
	
	
	
	
	    public function admin_subject_deactive($id){
        $enactive=admin_subject::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        
        return redirect()->back();
      }
      public function admin_subject_active($id){
          $active=admin_subject::where('status',0)->where('id',$id)->update([
            'status' => 1,
          ]);
          return redirect()->back();
    }
	
	
	
	
	
	
	
	
	

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $edit=admin_subject::find($id);
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
          $update= admin_subject::find($id);
		  $input = $request->all();
		  $update->fill($input)->save();
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
        admin_subject::destroy($id);
    }
}
