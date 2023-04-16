<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;

class RegisterController extends Controller
{
    public function index(){
        return view('register.index',[
            'title' =>'Register',
            'acive' => 'register'
        ]);
    }

    public function store(Request $request){
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'username' => ['required','min:3','max:7','unique:users'],
            'email' => 'required|email:dns|unique:users',
            'password' =>['required','max:8']

        ]);

        // $validatedData['password'] = bcrypt($validatedData['password']);
        $validatedData['password'] = Hash::make($validatedData['password']);

        User::create($validatedData);

        

        // $request->session()->flush('success','Registrasi Berhasil!!!');

        return redirect('/login');
    }
}
