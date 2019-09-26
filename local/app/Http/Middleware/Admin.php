<?php

namespace App\Http\Middleware;
use Auth;
use Closure;

class Admin
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
        
     if(auth()->check() && auth()->user()->role == 4)
        {
          
         }
         else
         {
              return redirect('/');
         }
        return $next($request);
    }
    
    
}
