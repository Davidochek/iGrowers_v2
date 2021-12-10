<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Buyer;
use Illuminate\Support\Facades\Auth;


class BuyersController extends Controller
{

	function create(Request $request){
		//validate inputs
		$request->validate([
			'name' => 'required|',
			'email' => 'required|email|unique:buyers,email',
			'phone' => 'required',
			'location' => 'required',
			'password'		 => 'required|min:5|max:30',
			'password_confirmation' => 'required|min:5|max:30|same:password',
		]);

		$buyer = new Buyer();
		$buyer->name = $request->name;
		$buyer->email = $request->email;
		$buyer->phone = $request->phone;
		$buyer->location = $request->location;
		$buyer->password = \Hash::make($request->password);
		$save =$buyer->save();

		if ($save) {
			return redirect()->back()->with('success', 'You are now registered successfully as a buyer');	
		}else{
			return redirect()->back()->with('fail', 'Something went wrong, failed to register');
		}

	}

    function check(Request $request){
    	//validate form Inputs	
    	$request->validate([
    	'email'=>'required|email|exists:buyers,email',
    	'password'=>'required|min:5|max:30',
    ],[
    	'email.exists' => ' This email does not exist in the users lists',
    ]);
    	$creds = $request->only('email', 'password');

    	if (Auth::guard('buyer')->attempt($creds)) {
    		return redirect()->route('buyers.home');	
    	}else{
    		return redirect()->route('buyers.login')->with('fail', 'Incorrect Credentials');
    	}

    }

    function logout(){
    	Auth::guard('buyer')->logout();
    	return redirect('/');
    }
}
