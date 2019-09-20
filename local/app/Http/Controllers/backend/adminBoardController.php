<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\admin_board;
use App\Models\admin_subject;
use Session;
class adminBoardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $getdata= admin_board::get();
        return view('backend.admin_board', compact('getdata'));
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


  
    public function admin_board_deactive($id){
        $enactive=admin_board::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        return redirect()->back();
      }
    public function admin_board_active($id){
          $active=admin_board::where('status',0)->where('id',$id)->update([
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
        $insert= admin_board::create($input);
        if($insert){
          Session::flash('status', 'New board has been added');
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
        $show= admin_board::find($id);
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
        $edit = admin_board::find($id);
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
        $getdata = admin_board::find($id);
        $input= $request->all();
        $updated=$getdata->fill($input)->save();
        if($updated){
          Session::flash('status', 'New board has been updated');
          return redirect()->back();
        }else{
          Session::flash('error', 'Something Went Wrong');
          return redirect()->back();
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        admin_board::destroy($id);
        return redirect()->back();
    }
       
}
