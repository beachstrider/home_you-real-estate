<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Property;
use App\Country;
use Auth;
use App\SearchDistrict;
use App\SearchTownship;
use App\SearchParish;
use App\SearchType;
use App\SearchState;
use App\SearchBusiness;

class HomeController extends Controller
{
    public function index()
    {
        $districts = SearchDistrict::all();
        $townships = SearchTownship::all();
        $parishs = SearchParish::all();
        $types = SearchType::all();
        $states = SearchState::all();
        $businesses = SearchBusiness::all();
        $featureds = Property::where('featured', 1)->limit(6)->get();
        $favourities = null;
        
        if(Auth::check()){
            $favourities = Auth::user()->favourities()->get();
        }

        return view('home', ['featureds'=>$featureds, 'favourities'=>$favourities, 'districts'=>$districts, 'townships'=>$townships,'parishs'=>$parishs, 'types'=>$types, 'states'=>$states, 'businesses'=>$businesses]);
    }
}

