<?php

namespace App\Http\Controllers;

use App\Models\Surat;
use App\Models\Warga;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use App\Service\TwilioWhatsAppService;
use Barryvdh\DomPDF\Facade\PDF as PDF;

class SuratController extends Controller
{
    public function pengajuanSurat(Request $request)
    {
        $noKk = $request->input('no_kk');

        if ($noKk) {
            $dataWarga = Warga::where('no_kk', 'like', '%' . $noKk . '%')->with('surat')->paginate(10);
        } else {
            $dataWarga = collect();
        }

        return view('pengajuan_surat', compact('dataWarga'));
    }

    public function pengajuanSuratStore(Request $request)
    {
        $request->validate([
            'warga_id' => 'required|exists:wargas,id',
            'jenis_surat' => 'required|string'
        ]);

        try {
            $warga = Warga::findOrFail($request->warga_id);

            $surat = Surat::create([
                'warga_id' => $warga->id,
                'jenis_surat' => $request->jenis_surat,
                'nik' => $warga->nik,
                'no_kk' => $warga->no_kk,
                'rt' => $warga->rt,
                'nama_warga' => $warga->nama_lengkap,
                'pengajuan_by' => Auth::user()->name,
                'status' => 'Diajukan',
            ]);

            $message = "Halo, surat dengan jenis '{$request->jenis_surat}' telah berhasil diajukan. Menunggu konfirmasi.";
            $this->sendMessage('085173350069', $message);

            toastr()->closeButton()->success('Surat berhasil diajukan!');
            return back();
        } catch (\Exception $e) {
            sweetalert()->error($e->getMessage());
            return back();
        }
    }

    public function konfirmasiSurat()
    {
        $dataSurat = Surat::orderBy('id', 'DESC')->paginate(10);
        return view('konfirmasi_surat', compact('dataSurat'));
    }

    public function konfirmasiSuratStore($id)
    {
        try {
            $dataSurat = Surat::findOrFail($id);
            $dataSurat->update(['pengajuan_by' => Auth::user()->name, 'status' => 'Dikonfirmasi']);

            $message = "Halo, surat dengan jenis '{$dataSurat->jenis_surat}' telah berhasil dikonfirmasi. Silakan cek statusnya.";
            $this->sendMessage('085173350069', $message);

            return response()->json(['success' => true, 'message' => 'Surat berhasil dikonfirmasi!']);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function cetakSurat()
    {
        $dataSurat = Surat::orderBy('id', 'DESC')->paginate(10);
        return view('cetak_surat', compact('dataSurat'));
    }

    public function cetakSuratPDF($nik)
    {
        $dataSurat = Surat::where('nik', $nik)->firstOrFail();
        $slugJenisSurat = Str::slug($dataSurat->jenis_surat);

        $view = match ($dataSurat->jenis_surat) {
            'Surat Keterangan Tidak Mampu' => 'surat/sktm',
            'Surat Keterangan Domisili' => 'surat/skd',
            'Surat Keterangan Kematian' => 'surat/skk'
        };

        $pdf = PDF::loadView($view, compact('dataSurat'))->setPaper('A4', 'portrait');
        return $pdf->stream("surat_{$slugJenisSurat}_{$nik}.pdf");
    }

    public function suratSelesaiStore($id)
    {
        try {
            $dataSurat = Surat::findOrFail($id);
            $dataSurat->update(['cetak_by' => Auth::user()->name, 'status' => 'Selesai']);

            return response()->json(['success' => true, 'message' => 'Surat berhasil diselesaikan!']);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    private function sendMessage($phone, $message)
    {
        $token = "muEBR8i9pbYRP237genw";
        $curl = curl_init();

        $postData = json_encode([
            'target' => $phone,
            'message' => $message,
            'countryCode' => '62'
        ]);

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.fonnte.com/send',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $postData,
            CURLOPT_HTTPHEADER => array(
                "Authorization: $token",
                "Content-Type: application/json"
            ),
        ));

        $response = curl_exec($curl);

        if ($response === false) {
            throw new \Exception(curl_error($curl));
        }

        curl_close($curl);
    }
}
