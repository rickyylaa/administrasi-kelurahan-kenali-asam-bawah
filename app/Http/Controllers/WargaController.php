<?php

namespace App\Http\Controllers;

use App\Models\Warga;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WargaController extends Controller
{
    public function index()
    {
        if (Auth::user()->role === 'Petugas') {
            $rtPetugas = Auth::user()->rt;
            $dataWarga = Warga::where('rt', $rtPetugas)->orderBy('id', 'ASC')->paginate(10);
        } else {
            $dataWarga = Warga::orderBy('id', 'ASC')->paginate(10);
        }
        return view('warga', compact('dataWarga'));
    }

    public function storewarga(Request $request)
    {
        $request->validate([
            'no_kk' => 'required|numeric',
            'nik' => 'required|numeric',
            'rt' => 'required|numeric',
            'nama_lengkap' => 'required',
            'jenis_kelamin' => 'required',
            'tempat_lahir' => 'required',
            'tanggal_lahir' => 'required',
            'agama' => 'required',
            'pendidikan' => 'required',
            'pekerjaan' => 'required',
            'status_kawin' => 'required',
            'status_keluarga' => 'required',
        ]);

        try {
            Warga::create([
                'no_kk' => $request->no_kk,
                'nik' => $request->nik,
                'rt' => $request->rt,
                'nama_lengkap' => $request->nama_lengkap,
                'jenis_kelamin' => $request->jenis_kelamin,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'agama' => $request->agama,
                'pendidikan' => $request->pendidikan,
                'pekerjaan' => $request->pekerjaan,
                'status_kawin' => $request->status_kawin,
                'status_keluarga' => $request->status_keluarga,
            ]);

            toastr()->closeButton()->success('Warga berhasil ditambah!');
            return back();
        } catch (\Exception $e) {
            sweetalert()->error($e->getMessage());
            return back();
        }
    }

    public function updateWarga(Request $request, $id)
    {
        $request->validate([
            'no_kk' => 'required|numeric',
            'nik' => 'required|numeric',
            'rt' => 'required|numeric',
            'nama_lengkap' => 'required',
            'jenis_kelamin' => 'required',
            'tempat_lahir' => 'required',
            'tanggal_lahir' => 'required',
            'agama' => 'required',
            'pendidikan' => 'required',
            'pekerjaan' => 'required',
            'status_kawin' => 'required',
            'status_keluarga' => 'required',
        ]);

        try {
            $warga = Warga::findOrFail($id);

            $warga->update([
                'no_kk' => $request->no_kk,
                'nik' => $request->nik,
                'rt' => $request->rt,
                'nama_lengkap' => $request->nama_lengkap,
                'jenis_kelamin' => $request->jenis_kelamin,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'agama' => $request->agama,
                'pendidikan' => $request->pendidikan,
                'pekerjaan' => $request->pekerjaan,
                'status_kawin' => $request->status_kawin,
                'status_keluarga' => $request->status_keluarga,
            ]);

            toastr()->closeButton()->success('Warga berhasil diperbarui!');
            return back();
        } catch (\Exception $e) {
            sweetalert()->error($e->getMessage());
            return back();
        }
    }

    public function deleteWarga($id)
    {
        try {
            $warga = Warga::findOrFail($id);
            $warga->delete();

            return response()->json(['success' => true]);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()]);
        }
    }
}
