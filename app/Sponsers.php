<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sponsers extends Model
{
    public $table = 'sponsers';

    protected $dates = [
        'created_at',
        'updated_at'
    ];

    protected $fillable = [
        'url',
        'name'
    ];
}
