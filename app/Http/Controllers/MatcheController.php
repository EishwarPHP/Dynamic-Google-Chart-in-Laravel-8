<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Preference;
use Illuminate\Support\Facades\DB;

class MatcheController extends Controller
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
        $usrid=Auth::user()->id;
        $gender=Auth::user()->gender;

        $prp = DB::table('preferences')->where('userid', '=', $usrid)->get();

        $decode=json_decode($prp);


        foreach($decode as $pres)

        // return $pres->pre_income;

        $users = DB::table('users')
        ->where('gender', '!=', $gender)
        ->Where('income', '=', $pres->pre_income)
        ->Where('occupation', '=', $pres->pre_occupation)
        ->Where('family_type', '=', $pres->pre_family_type)
        ->Where('manglik', '=', $pres->pre_manglik)
        ->paginate(5);

                    // return $users;
        return view('matches-new', compact('users', $users));
    }

    public function setPreference()
    {
        $usr=Auth::user()->id;

        $users = DB::table('preferences')->where('userid', '=', $usr)->get();
        // $users=count($users);
        // return $users;
        return view('matche-preference', compact('users'));
    }

    public function sendPreference(Request $request)
    {

        $users = DB::table('preferences')->where('userid', '=', $request->userid)->count();

        // return $users ;
        if($users>0){
            $userid=$request->input('userid');
            $pre_income=$request->input('pre_income');
            $pre_occupation=$request->input('pre_occupation');
            $pre_family_type=$request->input('pre_family_type');
            $pre_manglik=$request->input('pre_manglik');

            DB::table('preferences')
            ->where('userid', $userid)
            ->update([
            'pre_income' => $pre_income,
            'pre_occupation' => $pre_occupation,
            'pre_family_type' => $pre_family_type,
            'pre_manglik' => $pre_manglik
        ]);

            return redirect('matche-preference')->with('alert', 'Your Partner Preference Updated successfully!');
        }else{

            $input = $request->all();
            Preference::create($input);
            return redirect('matche-preference')->with('alert', 'Your Partner Preference created successfully!');

    }
    }



    // public function viewedme()
    // {
    //     return view('matches-who-viewed-me');
    // }
    // public function viewednot()
    // {
    //     return view('matches-viewed-not-contacted');
    // }
    // public function premium()
    // {
    //     return view('matches-premium');
    // }
    // public function shortlisted()
    // {
    //     return view('matches-shortlisted');
    // }
}
