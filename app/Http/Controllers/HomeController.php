<?php

namespace App\Http\Controllers;

use App\Posts;
use App\Categories;
use App\Offers;
use App\Sponsers;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function site()
    {
        $posts=Posts::all();
        $categories=Categories::all();
        $offers=Offers::all();
        $sponsers=Sponsers::all();
        return view('welcome', compact('posts','categories', 'offers', 'sponsers'));
    }
}
