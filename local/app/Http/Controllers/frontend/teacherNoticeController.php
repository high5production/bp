<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\teacher_notice;
use Auth;
class teacherNoticeController extends Controller
{
    public function __construct(){
        $this->middleware('Teacher');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $profile_id = Auth::user()->id;
      $allnotice = teacher_notice::where('user_id', $profile_id)->orderBy('id', 'DESC')->get();
      return view('frontend.teacher_notice', compact('allnotice'));
    }




    public function t_notice_deactive($id){
        $enactive=teacher_notice::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        return redirect()->back();
     }
      public function t_notice_active($id){
          $active=teacher_notice::where('status',0)->where('id',$id)->update([
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
       teacher_notice::create($input);
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
        $show=teacher_notice::find($id);
       return response()->json($show);
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
        $getdata = teacher_notice::find($id);
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
        teacher_notice::destroy($id);
        return redirect()->back();
    }
}
