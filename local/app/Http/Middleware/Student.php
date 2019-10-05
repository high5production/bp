<?php

namespace App\Http\Middleware;

use Closure;

class Student
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
     public function handle($request, Closure $next)
    {
        
     if(auth()->check() && auth()->user()->role == 1)
        {
          
         }
         else
         {
              return redirect('/login');
         }
        return $next($request);
    }
}
