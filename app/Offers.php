<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offers extends Model
{
    public $table = 'offers';

    protected $dates = [
        'created_at',
        'updated_at'
    ];

    protected $fillable = [
        'title',
        'content'
    ];
}
