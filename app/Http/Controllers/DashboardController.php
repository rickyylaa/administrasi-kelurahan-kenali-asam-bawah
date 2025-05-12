<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Warga;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $warga = Warga::all()->count();
        $petugas = User::where('role', 'Petugas')->get()->count();

        $data = Warga::groupBy('rt')
                    ->selectRaw('rt, COUNT(*) as total_warga')
                    ->pluck('total_warga', 'rt')
                    ->toArray();
        $dataAsString = implode(',', $data);
        $keysAsString = implode(',', array_keys($data));

        return view('dashboard', compact('warga', 'petugas', 'dataAsString','keysAsString'));
    }
}
