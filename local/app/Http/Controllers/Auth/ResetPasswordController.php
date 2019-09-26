<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ResetsPasswords;

class ResetPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset requests
    | and uses a simple trait to include this behavior. You're free to
    | explore this trait and override any methods you wish to tweak.
    |
    */

    use ResetsPasswords;

    /**
     * Where to redirect users after resetting their password.
     *
     * @var string
     */
     protected function authenticated($request, $user){

        if(auth()->check() && auth()->user()->role == 1){
            return redirect('/student_deshboard');
        
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
        $this->middleware('guest');
    }
}
