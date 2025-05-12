<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function formLogin()
    {
        if (Auth::check()) {
            return $this->redirectToDashboard();
        }

        return view('welcome');
    }

    public function storeLogin(Request $request)
    {
        $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
        ]);

        $credentials = $request->only('username', 'password');

        $field = filter_var($request->username, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';

        if (Auth::attempt([$field => $credentials['username'], 'password' => $credentials['password']])) {
            return $this->redirectToDashboard();
        }

        sweetalert()->error('Username dan Password Salah!');
        return back();
    }

    public function logout(Request $request)
    {
        Auth::logout();
        return redirect('/');
    }

    protected function redirectToDashboard()
    {
        $user = Auth::user();

        if ($user->role == 'Petugas') {
            return redirect()->route('dashboard');
        } elseif ($user->role == 'Kasi') {
            return redirect()->route('dashboard');
        } elseif ($user->role == 'Staff') {
            return redirect()->route('dashboard');
        } elseif ($user->role == 'Lurah') {
            return redirect()->route('dashboard');
        }
    }
}
