<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\teacher_profile;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
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

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone' => ['required', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $user= User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'role' => $data['role'],
            'phone' => $data['phone'],
            'password' => Hash::make($data['password']),
        ]);
 
     if($user->role == 2){
       teacher_profile::insert([
          'user_id'=> $user->id,
       ]);
     }
         return $user;
     
    }
}
