<?php

namespace App\Http\Controllers;

use App\ContactMessage;
use Illuminate\Http\Request;

class ContactMessagesController extends Controller
{
    public function index()
    {
        //
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

        $contactmessage = new ContactMessage;
        
        $contactmessage->name = $request->name;
        $contactmessage->phone = $request->phone;
        $contactmessage->email = $request->email;
        $contactmessage->message = $request->message;

        $contactmessage->save();

        return "ok";
    }

    public function show(ContactMessage $contactMessage)
    {
        //
    }

    public function edit(ContactMessage $contactMessage)
    {
        //
    }

    public function update(Request $request, ContactMessage $contactMessage)
    {
        //
    }

    public function destroy(ContactMessage $contactMessage)
    {
        //
    }
}
