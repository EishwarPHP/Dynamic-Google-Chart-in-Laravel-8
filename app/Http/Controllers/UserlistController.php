<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Preference;
use Illuminate\Support\Facades\DB;

class UserlistController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable*/
    public function index()
    {

        $users = DB::table('users')
        ->where('user_type', '!=', 'Admin')
        ->paginate(5);

                    // return $users;
        return view('userlist', compact('users', $users));
    }

    public function chartos()
    {

        $charts = DB::table('users')->get();

                    // return $charts;
        return view('chart', ['charts' => $charts]);
    }

}
