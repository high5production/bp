<?php

namespace App\Http\Controllers\frontend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\teacher_profile;
use App\teacher_traning;
use App\teaching_place;
use App\Models\admin_subject;
use App\Models\admin_country;
use App\Models\admin_district;
use App\Models\admin_city;
use App\Models\police_station;
use App\Models\admin_area;
use App\Models\admin_board;
class websiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()

    {
        $district = admin_district::where('status',1)->get();
        $police_station = police_station::where('status',1)->get();
        $areas = admin_area::where('status',1)->get();
        $boards = admin_board::where('status',1)->get();
        $subjects = admin_subject::where('status',1)->get();
        return view('frontend.index', compact(
            'district',
            'police_station',
            'areas',
            'boards',
            'subjects'
        ));
    }



  public function mycountry()
    {
        $states = DB::table("admin_countries")->get();
        return view('test', compact('states'));
    }

  public function mydistrict($id)
    {
        $district = DB::table("admin_districts")
                    ->where("country_id",$id)
                    ->pluck("district_name","id");

        return json_encode($district);
    }
  public function mycity($id)
    {
        $cities =   admin_city::where("district_id",$id)
                    ->pluck("city_name","id");
        return json_encode($cities);
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

    public function enroll_student_list(){
        return view('frontend.student_list');
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
