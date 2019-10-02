<?php

namespace App\Http\Controllers\frontend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\admin_subject;
use App\teacher_profile;
use App\teacher_traning;
use App\teaching_place;
class websiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('frontend.index');
    }



// pages

    public function search_result(){
        $all_t_profile = teacher_profile::where('payment_status',1)->get();
        return view('frontend.search-result',compact('all_t_profile'));
    }

    public function teacher_profile($id){
        $view_profile = teacher_profile::find($id);
        $view_t_traning = teacher_traning::where('user_id',$view_profile->user_id)->get();
        $teaching_place = teaching_place::where('user_id',$view_profile->user_id)->get();
        return view('frontend.teacher_profile',compact('view_profile','view_t_traning','teaching_place'));
    }


   public function student_profile(){
    echo "hello";
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
        //
    }
}
