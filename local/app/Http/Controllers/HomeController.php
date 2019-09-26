<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Models\admin_subject;
use App\Models\admin_board;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
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
}
