<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\payment;

class adminPaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct(){
        return $this->middleware('Admin');
    }
    public function index()
    {
        $getdata = payment::orderBy('id', 'DESC')->get();
         return view('backend.payment.payment_history', compact('getdata'));
    }




     public function payment_deactive($id){
        $enactive=payment::where('status',1)->where('id',$id)->update([
          'status' => 0,
        ]);
        return redirect()->back();
     }
      public function payment_active($id){
          $active=payment::where('status',0)->where('id',$id)->update([
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
        $show = payment::find($id);
        return view('backend.payment.view_payment', compact('show'));
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
      // Data delete code
      $deletedata=payment::findOrFail($id);
      $deletedata->delete();
       if($deletedata){
         if (file_exists(public_path().'/contents/upload/teacher/payment/'.$deletedata->slip_image)) {
             unlink(public_path().'/contents/upload/teacher/payment/'.$deletedata->slip_image);
        }
        
      }

    }


}
