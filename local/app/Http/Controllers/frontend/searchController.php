<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\teacher_profile;

class searchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
      $sresult = $_GET['search'];
      $all_t_profile = teacher_profile::query()->
      where('payment_status',1)->
      where('name','LIKE','%'.$sresult.'%')->
      orWhere('address','LIKE','%'.$sresult.'%')->
     get();


      if (count ( $all_t_profile ) > 0){
          return view('frontend.search-result',compact('all_t_profile','sresult'));
      }else{
        return view('frontend.search-result',compact('all_t_profile','sresult'));
      }
     }



     public function search_by_subject($subject_name){
         $sresult = $subject_name;
       
         $all_t_profile = teacher_profile::where('payment_status',1)->
          where('teaching_subject','LIKE','%'.$sresult.'%')
          ->get();
      

      if (count ( $all_t_profile ) > 0){
          return view('frontend.search-by-subject',compact('all_t_profile','sresult'));
      }else{
        return view('frontend.search-by-subject',compact('all_t_profile','sresult'));
      }

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
