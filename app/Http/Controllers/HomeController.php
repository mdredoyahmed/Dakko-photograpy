<?php

namespace App\Http\Controllers;

use App\Models\Hire;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Str;
use Hash;

class HomeController extends Controller
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
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(Auth::user()->role_id == 2){
            $hires = Hire::where('user_id', Auth::id())->get();
        }elseif(Auth::user()->role_id==3){
            $hires = Hire::where('photographer_id', Auth::id())->get();
        }else{
            $hires = null;
        }
        
        return view('dashboard.index', compact('hires'));
    }

    public function profile(){
        $user = Auth::user();
        return view('dashboard.profile', compact('user'));
    }


    public function password_reset()
    {
        return view('dashboard.password');
    }

    public function change_password(Request $request)
    {
        $this->validate($request,[
            'old_password'=>'required',
            'password'=>'required|confirmed',
          ]);
    
          $hashedpassword=Auth::user()->password;
            if (Hash::check($request->old_password,$hashedpassword)) {
                if(!Hash::check($request->password,$hashedpassword)){
                  $user=User::find(Auth::id());
                  $user->password=Hash::make($request->password);
                  $user->save();
                  Auth::logout();
                  return redirect()->route('login');
                }
                else {
                  return redirect()->route('/');
                }
            }else {
    
              return redirect()->route('/');
            }
    }
}
