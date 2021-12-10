<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (! $request->expectsJson()) {

            if ($request->routeIs('buyers.*')) {
                return route('buyers.login');
            }

            if ($request->routeIs('admins.*')) {
                return route('admins.login');
            }
            return route('login');
        }
    }
}
