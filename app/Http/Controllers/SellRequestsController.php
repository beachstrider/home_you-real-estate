<?php

namespace App\Http\Controllers;

use App\SellRequest;
use Illuminate\Http\Request;

class SellRequestsController extends Controller
{
    public function index()
    {
        return view('sellreq');
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'message' => 'required',
        ]);

        $sellrequest = new SellRequest;
        
        $sellrequest->name = $request->name;
        $sellrequest->phone = $request->phone;
        $sellrequest->email = $request->email;
        $sellrequest->message = $request->message;

        $sellrequest->save();

        return redirect('/sellrequest')->with('status', true);
    }

    public function show(SellRequest $sellRequest)
    {
        //
    }

    public function edit(SellRequest $sellRequest)
    {
        //
    }

    public function update(Request $request, SellRequest $sellRequest)
    {
        //
    }

    public function destroy(SellRequest $sellRequest)
    {
        //
    }
}
