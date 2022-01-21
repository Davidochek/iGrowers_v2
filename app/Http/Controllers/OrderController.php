<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function create_orders(Request $request) {
       $request->validate([
        'bid' => 'required',
        'sname' => 'required',
        'spid' => 'required',
        'fname' => 'required',
        'fphone' => 'required',
        'flocation' => 'required',
        'date' => 'required',
    ]);

       $input = $request->all();

    	Order::create($input);
    	return response()->json('data');

    // return redirect()->route('superusers.register_service')
    // ->with('success','Service created successfully.');

}}
