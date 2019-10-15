<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Auth;
use Session;
use App\Models\admin_country;
use App\Models\admin_district;
use App\Models\police_station;
use App\Models\teaching_class;
use App\Models\admin_subject;
use App\Models\admin_year;
use App\Models\admin_school;
use App\techer_education;
use App\teacher_profile;
use App\teaching_place;
use App\teacher_traning;
use App\student_enroll;

use Image;

class teacherController extends Controller
{
   
     public function __construct(){
        $this->middleware('Teacher');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function teacher_deshboard(){
      $profile_id = Auth::user()->id;
      $yaear = admin_year::where('status', 1)->get();
      $teacher_info = teacher_profile::where('user_id',$profile_id)->first();
      $allcountry = admin_country::where('status',1)->get();
      $getdis = admin_district::where('status',1)->get();
      $allclass = teaching_class::where('status',1)->get();
      $allsubjects = admin_subject::where('status',1)->get();
      $get_police_station = police_station::where('status',1)->get();
      $teaching_places = teaching_place::where('user_id', $profile_id)->get();
      $admin_school = admin_school::where('status', 1)->get();
      $teacher_tranings = teacher_traning::where('user_id', $profile_id)->get();
      return view('frontend.teacher_panel',compact(
        'allcountry',
        'getdis',
        'get_police_station',
        'allclass',
        'teacher_info',
        'teaching_places',
        'allsubjects',
        'teacher_tranings',
        'admin_school',
        'profile_id',
        'yaear'

      ));
    }
   public function teacher_subscription(){
      return view('frontend.subscription');
   }
   public function teacher_class(){
      return view('frontend.teacher_class');
   }





   public function pending_student($id){
        $enactive=student_enroll::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        return redirect()->back();
    }
      public function approved_student($id){
          $active=student_enroll::where('status',0)->where('id',$id)->update([
            'status' => 1,
          ]);
          return redirect()->back();
      }



    public function student_enroll_list(){
          $profile_id = Auth::user()->id;
          $all_enroll_student = student_enroll::where('teacher_id', $profile_id)->get();
          return view('frontend.student_list', compact('all_enroll_student'));
    }

    public function student_indivisual_sms(Request $request){
      
    $myArr = [
     "from" => "BB Teacher",
     "to" => $request->input('phone'),
     "text" => $request->input('sms-message'),
 
  ];
   $data_json = json_encode($myArr);
    $authorization = base64_encode('tariqkhan:Tkhan@123');
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json','Accept: application/json',"Authorization: Basic $authorization"));
    //curl_setopt($ch, CURLINFO_HEADER_OUT, true);
    curl_setopt($ch, CURLOPT_URL, 'http://api.bulksms.icombd.com/restapi/sms/1/text');
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS,$data_json);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $send = $response  = curl_exec($ch);
    //var_dump(curl_getinfo($ch));
    //var_dump($response);
    if($send){
      Session::flash('status', 'Message Has been Send');
    }else{
      Session::flash('error', 'Something Went Wrong Please try again');
    }
    curl_close($ch);

    return redirect()->back();














          
      }


    public function index()
    {
       
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
        $input = $request->all();
        techer_education::create($input);
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
       $show = admin_teacher::find($id);
       
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
        $getdata = teacher_profile::where('user_id', $id)->first();

        $input =  $request->all();

        // update phone and email
    
    


         // multiselect array to string convert for class
        $getclass = $request->input('teaching_class');
        $classimplode = implode(',', (array)$getclass);
        $input['teaching_class'] = $classimplode;  

        // multiselect array to string convert for subject
        $getsub = $request->input('teaching_subject');
        $subim = implode(',', (array)$getsub);
        $input['teaching_subject'] = $subim;

      $this->validate($request,[
           'routine' =>  'mimes:jpeg,jpg,png,gif,pdf|max:10000',
      ]);



    if(!empty($_FILES['photo']['name'])){
    // Routine Upload
      if($request->hasFile('photo')){
        $image=$request->file('photo');
        $imageName='photo'.'_'.time().'.'.$image->getClientOriginalExtension();
        Image::make($image)->save(base_path('public/contents/upload/teacher/profile/'.$imageName));
         $input['photo']=$imageName;
            if (file_exists(public_path().'/contents/upload/teacher/profile/'.$getdata->photo)) {
                unlink(public_path().'/contents/upload/teacher/profile/'.$getdata->photo);
                  $updateslider=$getdata->fill($input)->save();
            }
     }

      $getdata->fill($input)->save();

 }elseif(!empty($_FILES['routine']['name'])){
    // Routine Upload
      if($request->hasFile('routine')){
        $image=$request->file('routine');
        $imageName='routine'.'_'.time().'.'.$image->getClientOriginalExtension();
        Image::make($image)->save(base_path('public/contents/upload/teacher/routine/'.$imageName));
         $input['routine']=$imageName;
            if (file_exists(public_path().'/contents/upload/teacher/routine/'.$getdata->routine)) {
                unlink(public_path().'/contents/upload/teacher/routine/'.$getdata->routine);
                  $updateslider=$getdata->fill($input)->save();
            }
     }

      $getdata->fill($input)->save();

 }

 else{
       $getdata->fill($input)->save();
 }
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
        //
    }
}
