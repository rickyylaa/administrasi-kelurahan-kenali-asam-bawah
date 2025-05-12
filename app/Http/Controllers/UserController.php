<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function index()
    {
        $userId = Auth::id();
        $dataUser = User::where('id', '!=', $userId)->orderBy('id', 'ASC')->paginate(10);

        return view('user', compact('dataUser'));
    }

    public function storeUser(Request $request)
    {
        $request->validate([
            'name' => 'required|max:50',
            'username' => 'required|max:50|unique:users,username',
            'email' => 'required|email|max:50|unique:users,email',
            'password' => 'required|min:8',
            'rt' => 'required|max:2',
            'role' => 'required|in:Petugas,Kasi,Staff,Lurah',
        ]);

        try {
            User::create([
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'password' => bcrypt($request->password),
                'rt' => $request->rt,
                'role' => $request->role,
            ]);

            toastr()->closeButton()->success('User berhasil ditambah!');
            return back();
        } catch (\Exception $e) {
            sweetalert()->error($e->getMessage());
            return back();
        }
    }

    public function updateUser(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|max:50',
            'username' => 'required|max:50|unique:users,username,' . $id,
            'email' => 'required|email|max:50|unique:users,email,' . $id,
            'password' => 'nullable|min:8|',
            'rt' => 'required|max:2',
            'role' => 'required|in:Petugas,Kasi,Staff,Lurah',
        ]);

        try {
            $user = User::findOrFail($id);

            if ($request->filled('password')) {
                $user->password = bcrypt($request->password);
            }

            $user->update([
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'rt' => $request->rt,
                'role' => $request->role,
            ]);

            toastr()->closeButton()->success('User berhasil diperbarui!');
            return back();
        } catch (\Exception $e) {
            sweetalert()->error($e->getMessage());
            return back();
        }
    }

    public function deleteUser($id)
    {
        try {
            $user = User::findOrFail($id);
            $user->delete();

            return response()->json(['success' => true]);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()]);
        }
    }
}
