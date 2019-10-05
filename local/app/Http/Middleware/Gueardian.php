<?php

namespace App\Http\Middleware;

use Closure;

class Gueardian
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
        
     if(auth()->check() && auth()->user()->role == 3)
        {
          
         }
         else
         {
              return redirect('/login');
         }
        return $next($request);
    }
}
