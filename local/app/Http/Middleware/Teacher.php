<?php

namespace App\Http\Middleware;

use Closure;

class Teacher
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
        
     if(auth()->check() && auth()->user()->role == 2)
        {
          
         }
         else
         {
              return redirect('/');
         }
        return $next($request);
    }
}
