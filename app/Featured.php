<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\support\Facades\DB;

class Featured extends Model
{
    protected $table = 'featured';

    public static function properties(){
        $properties = DB::select();
    }
}
