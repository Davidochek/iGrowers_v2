<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Sprovider;
use Illuminate\Support\Facades\Auth;


class SprovidersController extends Controller
{
    function create(Request $request){
		//validate inputs
		$request->validate([
			'name' => 'required|',
			'email' => 'required|email|unique:sproviders,email',
			'phone' => 'required',
			'password'		 => 'required|min:5|max:30',
			'password_confirmation' => 'required|min:5|max:30|same:password',
		]);

		$provider = new Sprovider();
		$provider->name = $request->name;
		$provider->email = $request->email;
		$provider->phone = $request->phone;
		$provider->location = $request->location;
		$provider->password = \Hash::make($request->password);
		$save =$provider->save();

		if ($save) {
			return redirect()->back()->with('success', 'You are now registered successfully as a service provider');	
		}else{
			return redirect()->back()->with('fail', 'Something went wrong, failed to register');
		}

	}

    function check(Request $request){
    	//validate form Inputs	
    	$request->validate([
    	'email'=>'required|email|exists:sproviders,email',
    	'password'=>'required|min:5|max:30',
    ],[
    	'email.exists' => ' This email does not exist in the users lists',
    ]);
    	$creds = $request->only('email', 'password');

    	if (Auth::guard('sprovider')->attempt($creds)) {
    		return redirect()->route('sproviders.home');	
    	}else{
    		return redirect()->route('sproviders.login')->with('fail', 'Incorrect Credentials');
    	}

    }

    function logout(){
    	Auth::guard('sprovider')->logout();
    	return redirect('/');
    }}
