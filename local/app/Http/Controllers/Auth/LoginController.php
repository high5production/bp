<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */
    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */


   protected function authenticated($request, $user){

        if(auth()->check() && auth()->user()->role == 1){
            //return redirect('/student_deshboard');
           // redirect()->intended();
        
        }
        elseif (auth()->check() && auth()->user()->role == 2){
            return redirect('/teacher_deshboard');

        }
         elseif (auth()->check() && auth()->user()->role == 3){
            return redirect('/guardian-deshboard');
        } 
       elseif (auth()->check() && auth()->user()->role == 4){
            return redirect('/admin-deshboard');
        }
        
        else{
            return redirect('/');
        }
       }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
