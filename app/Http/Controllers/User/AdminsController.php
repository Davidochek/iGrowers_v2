<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Admin;
use Illuminate\Support\Facades\Auth;


class AdminsController extends Controller
{

	function create(Request $request){
		//validate inputs
		$request->validate([
			'name' => 'required|',
			'email' => 'required|email|unique:admins,email',
			'phone' => 'required',
			'group' => 'required',
			'password'		 => 'required|min:5|max:30',
			'password_confirmation' => 'required|min:5|max:30|same:password',
		]);

		$admin = new Admin();
		$admin->name = $request->name;
		$admin->email = $request->email;
		$admin->phone = $request->phone;
		$admin->group = $request->group;
		$admin->password = \Hash::make($request->password);
		$save =$admin->save();

		if ($save) {
			return redirect()->back()->with('success', 'You are now registered successfully as a admin');	
		}else{
			return redirect()->back()->with('fail', 'Something went wrong, failed to register');
		}

	}

    function check(Request $request){
    	//validate form Inputs	
    	$request->validate([
    	'email'=>'required|email|exists:admins,email',
    	'password'=>'required|min:5|max:30',
    ],[
    	'email.exists' => ' This email does not exist in the users lists',
    ]);
    	$creds = $request->only('email', 'password');

    	if (Auth::guard('admin')->attempt($creds)) {
    		return redirect()->route('admins.home');	
    	}else{
    		return redirect()->route('admins.login')->with('fail', 'Incorrect Credentials');
    	}

    }

    function logout(){
    	Auth::guard('admin')->logout();
    	return redirect('/');
    }
}
