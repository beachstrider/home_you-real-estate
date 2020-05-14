<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class SetToFeatured extends AbstractAction
{
    public function getTitle()
    {
        return 'SetToFeatured';
    }

    public function getIcon()
    {
        return 'voyager-check';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-success pull-right',
        ];
    }

    public function getDefaultRoute()
    {
        return route('admin.setToFeatured');
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'featured';
    }
}