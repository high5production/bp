<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use DB;
use App\teacher_profile;
use App\Models\teaching_class;
class adminTeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teacher_data = user::where('role',2)->get();
        return view('backend.teacher.admin_teacher',compact('teacher_data'));
    }

     public function admin_teacher_deactive($id){
        $enactive=teacher_profile::where('payment_status',1)->where('user_id',$id)->update([
          'payment_status' => 0,
        ]);
        
        return redirect()->back();
      }
      public function admin_teacher_active($id){
        $active=teacher_profile::where('payment_status',0)->where('user_id',$id)->update([
          'payment_status' => 1,
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
     $show = user::find($id);
     // class
     $classss = $show->bitnbits_teacher->teaching_class;
     $view_class = explode(',', $classss);

     // subject

     $admin_sub = $show->bitnbits_teacher->teaching_subject;
     $view_subject = explode(',', $admin_sub);
     

   
     return view('backend.teacher.view-profile', compact('show','view_class', 'view_subject'));
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        user::destroy($id);
        DB::table('teacher_profiles')->where('user_id', $id)->delete();
        DB::table('payments')->where('user_id', $id)->delete();
        return redirect()->back();

    }
}
