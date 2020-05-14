<?php

namespace App\Http\Controllers;

use App\AskForRating;
use Illuminate\Http\Request;

class AskForRatingsController extends Controller
{
    public function index()
    {
        return view('askforrating');
    }

    public function create()
    {
        
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'message' => 'required',
        ]);

        $askforrating = new AskForRating;
        
        $askforrating->name = $request->name;
        $askforrating->phone = $request->phone;
        $askforrating->email = $request->email;
        $askforrating->message = $request->message;

        $askforrating->save();

        return redirect('/askforrating')->with('status', true);
    }

    public function show(AskForRating $askForRating)
    {
        //
    }

    public function edit(AskForRating $askForRating)
    {
        //
    }

    public function update(Request $request, AskForRating $askForRating)
    {
        //
    }

    public function destroy(AskForRating $askForRating)
    {
        //
    }
}
