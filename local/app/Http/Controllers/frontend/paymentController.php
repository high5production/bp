<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\payment;
use Auth;
use Session;
use Image;
class paymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(){
        return $this->middleware('Teacher');
    }
    public function index()
    {
       $loginid = Auth::user()->id;
       $getdata = payment::orderBy('id','DESC')->where('user_id', $loginid)->get();
        return view('frontend.payment.transaction-history', compact('getdata'));
    }


   // bikash payment

    public function bikash(){
        return view('frontend.payment.bikash');
    }

    public function bikash_payment(Request $request){
      $input = $request->all();
      $request->validate([
            'bikash_tran_no' => 'required|unique:Payments',
      ],[
         
       'bikash_tran_no.unique' => 'This transaction number already submited',
      ]
     );

      $payment = payment::create($input);
       if($payment){
        Session::flash('status', 'payment sucess');
       }else{
        Session::flash('error', 'something went wrong');
       }

       return redirect()->back();

    }
    // bank payment
    public function bank(){
      return view('frontend.payment.bank');
    }

    public function bank_payment(Request $request){
      $input = $request->all();
  
       if($request->hasFile('slip_image')){
           $image=$request->file('slip_image');
           $imageName='slip_image'.'_'.time().'.'.$image->getClientOriginalExtension();
           Image::make($image)->save(base_path('public/contents/upload/teacher/payment/'.$imageName));
            $input['slip_image']=$imageName;
        }

      $bankpay = payment::create($input);
       if($bankpay){
        Session::flash('status', 'Thanks for payment');
       }else{
        Session::flash('error', 'something went wrong');
       }

      return redirect()->back();


    } 

    // cash payment
    public function handcash(){
     return view('frontend.payment.handcash');
    }

    public function cash_payment(Request $request){
      $input = $request->all();
      $cashpay = payment::create($input);
      if($cashpay){
        Session::flash('status', 'payment sucess');
       }else{
        Session::flash('error', 'something went wrong');
       }
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
