<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Auth;

class Property extends Model
{
    static function search($request){
        $matched_properties = DB::table('properties');

        if($request->price_min != ''){
            $matched_properties = $matched_properties->where('cost', '>=', $request->price_min);
        }

        if($request->price_max != ''){
            $matched_properties = $matched_properties->where('cost', '<=', $request->price_max);
        }

        if($request->bedroom != ''){
            $matched_properties = $matched_properties->where('bedroom', '>=', $request->bedroom);
        }

        if($request->wc != ''){
            $matched_properties = $matched_properties->where('wc', '>=', $request->wc);
        }

        if($request->keyword != ''){
            if(Schema::hasColumn('properties', $request->keyword)){
                $rk = $request->keyword;
                $matched_properties = $matched_properties->where(function($q) use($rk){
                    $q->where($rk, '>=', 1);
                    $q->Orwhere('description', 'like', '%'.$rk.'%');
                });
            }else{
                $matched_properties = $matched_properties->where('description', 'like', '%'.$request->keyword.'%');
            }
        }

        if($request->district != ''){
            $matched_properties = $matched_properties->where('district', $request->district);
        }

        if($request->township != ''){
            $matched_properties = $matched_properties->where('township', $request->township);
        }

        if($request->parish != ''){
            $matched_properties = $matched_properties->where('parish', $request->parish);
        }

        if($request->type != ''){
            $matched_properties = $matched_properties->where('type', $request->type);
        }

        if($request->state != ''){
            $matched_properties = $matched_properties->where('state', 'like', '%'.$request->state.'%');
        }

        if($request->business != ''){
            $matched_properties = $matched_properties->where('business', 'like', '%'.$request->business.'%');
        }

        return $matched_properties;
    }
}
