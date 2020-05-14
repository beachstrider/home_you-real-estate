<?php

namespace App\FormFields;

use TCG\Voyager\FormFields\AbstractHandler;
use App\Country;

class CountryFormField extends AbstractHandler
{
    protected $codename = 'country';

    public function createContent($row, $dataType, $dataTypeContent, $options)
    {
        $countries = Country::all();

        return view('vendor.voyager.formfields.country', [
            'row' => $row,
            'options' => $options,
            'dataType' => $dataType,
            'dataTypeContent' => $dataTypeContent,
            'countries' => $countries,
        ]);
    }
}