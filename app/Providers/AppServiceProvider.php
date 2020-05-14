<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use TCG\Voyager\Facades\Voyager;
use App\FormFields\CountryFormField;
use \App\Actions\SetToFeatured;

class AppServiceProvider extends ServiceProvider
{
    public function register()
    {
        Schema::defaultStringLength(191);
        Voyager::addFormField(CountryFormField::class);
        Voyager::addAction(SetToFeatured::class);
    }

    public function boot()
    {
        
    }
}
