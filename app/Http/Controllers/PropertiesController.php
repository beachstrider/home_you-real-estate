<?php

namespace App\Http\Controllers;

use App\Property;
use App\Favourite;
use App\UserFavourite;
use App\SearchDistrict;
use App\SearchTownship;
use App\SearchParish;
use App\SearchType;
use App\SearchState;
use App\SearchBusiness;
use Illuminate\Http\Request;
use Auth;

class PropertiesController extends Controller
{
    public function index()
    {
        $properties = Property::paginate(9);
        $favourities = null;
        $districts = SearchDistrict::all();
        $townships = SearchTownship::all();
        $parishs = SearchParish::all();
        $types = SearchType::all();
        $states = SearchState::all();
        $businesses = SearchBusiness::all();

        if(Auth::check('verifie')){
            $favourities = Auth::user()->favourities()->get();
        }

        return view('properties.index',['properties'=>$properties, 'favourities'=>$favourities, 'orderby'=>'', 'districts'=>$districts, 'townships'=>$townships,'parishs'=>$parishs, 'types'=>$types, 'states'=>$states, 'businesses'=>$businesses]);

    }

    public function orderBy($by, $direct){
        $properties = Property::orderBy($by, $direct)->paginate(9);
        $orderby = $by."/".$direct;

        $favourities = null;
        $districts = SearchDistrict::all();
        $townships = SearchTownship::all();
        $parishs = SearchParish::all();
        $types = SearchType::all();
        $states = SearchState::all();
        $businesses = SearchBusiness::all();
        
        if(Auth::check()){
            $favourities = Auth::user()->favourities()->get();
        }

        return view('properties.index',['properties'=>$properties, 'favourities'=>$favourities, 'orderby'=>$orderby, 'districts'=>$districts, 'townships'=>$townships,'parishs'=>$parishs, 'types'=>$types, 'states'=>$states, 'businesses'=>$businesses]);
    }

    public function search(Request $request){
        $are_all_null = true;

        foreach($request->all() as $item){
            if(($item != null)&&($item != "")){
                $are_all_null = false;
            }
        }

        if($are_all_null == true){
            return redirect("/properties");
        }

        $properties = Property::search($request)->paginate(9);
        $favourities = null;
        $districts = SearchDistrict::all();
        $townships = SearchTownship::all();
        $parishs = SearchParish::all();
        $types = SearchType::all();
        $states = SearchState::all();
        $businesses = SearchBusiness::all();
        
        if(Auth::check()){
            $favourities = Auth::user()->favourities()->get();
        }

        session()->flashInput($request->input());
        $properties->appends($request->all());

        return view('properties.index',['properties'=>$properties, 'favourities'=>$favourities, 'orderby'=>'', 'districts'=>$districts, 'townships'=>$townships,'parishs'=>$parishs, 'types'=>$types, 'states'=>$states, 'businesses'=>$businesses]);
    }

    public function show(Property $property)
    {
        $relateds = Property::where('cost', '>=', $property->cost)->where('id', '!=', $property->id)->orderBy('cost')->limit(3)->get();

        $favourities = null;
        
        if(Auth::check()){
            $favourities = Auth::user()->favourities()->get();
        }

        return view('properties.show', ['property'=>$property, 'relateds'=>$relateds, 'favourities'=>$favourities]);
    }

    public function edit(Property $property)
    {
        //
    }

    public function update(Request $request, Property $property)
    {
        //
    }

    public function destroy(Property $property)
    {
        //
    }

    public function myFavourities(){

        $properties = Auth::user()->favourities()->paginate(9);

        return view('properties.favourities',['properties'=>$properties,]);
    }

    public function favourite(Favourite $favourite){
        $user = Auth::user();
        $res = $user->favourities()->toggle($favourite);

        return response()->json(['status'=>true, 'res'=>$res]);
    }

    public function unfavourite(Favourite $favourite){
        $user = Auth::user();
        $res = $user->favourities()->toggle($favourite);

        return redirect('/favourities');
    }

    public function print(Property $property){
        if(Auth::check() && Auth::user()->hasRole('admin')){
            return view('properties.print', ['property'=>$property]);
        }

        abort(404);
    }

}
