<?php

namespace App\Http\Controllers\backend;
use App\Models\teaching_class;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;

class TeachingClassController extends Controller
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
        $getdata= teaching_class::get();
        return view('backend.teaching-class', compact('getdata'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
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
        $datainsert= teaching_class::create($input);
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
        $show = teaching_class::find($id);
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
         $edit=teaching_class::find($id);
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

      $update= teaching_class::find($id);
      $input = $request->all();
      $update->fill($input)->save();
      return redirect()->back();
     
    }

 

     public function deactive_status($id){
        $enactive=teaching_class::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        
        return redirect()->back();
      }
      public function active_status($id){
          $active=teaching_class::where('status',0)->where('id',$id)->update([
            'status' => 1,
          ]);
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
      teaching_class::destroy($id);
    }
}
