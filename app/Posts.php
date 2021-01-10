<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
    public $table = 'posts';

    protected $dates = [
        'created_at',
        'updated_at'
    ];

    protected $fillable = [
        'category',
        'title',
        'content'
    ];
}
