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
        $total_user=User::count();
        $total_subject=admin_subject::count();
        $admin_board=admin_board::count();
        return view('backend.index',compact('total_user','total_subject','admin_board'));
    }
}
