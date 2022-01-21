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

            if ($request->routeIs('superusers.*')) {
                return route('superusers.login');
            }

            if ($request->routeIs('sproviders.*')) {
                return route('sproviders.login');
            }
            return route('login');
        }
    }
}
