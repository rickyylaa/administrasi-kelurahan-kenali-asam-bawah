<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SuratController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\WargaController;
use App\Http\Controllers\DashboardController;

Route::get('/', [LoginController::class, 'formLogin'])->name('formLogin')->middleware('guest');
Route::post('/', [LoginController::class, 'storeLogin'])->name('storeLogin')->middleware('guest');

Route::get('/login', [LoginController::class, 'formLogin'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'storeLogin'])->name('login')->middleware('guest');

Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/user', [UserController::class, 'index'])->name('user');
    Route::post('/user', [UserController::class, 'storeUser'])->name('storeUser');
    Route::put('/user/{id}', [UserController::class, 'updateUser'])->name('updateUser');
    Route::delete('/user/{id}', [UserController::class, 'deleteUser'])->name('deleteUser');

    Route::get('/warga', [WargaController::class, 'index'])->name('warga');
    Route::post('/warga', [WargaController::class, 'storeWarga'])->name('storeWarga');
    Route::put('/warga/{id}', [WargaController::class, 'updateWarga'])->name('updateWarga');
    Route::delete('/warga/{id}', [WargaController::class, 'deleteWarga'])->name('deleteWarga');

    Route::get('/pengajuan/surat', [SuratController::class, 'pengajuanSurat'])->name('pengajuanSurat');
    Route::post('/pengajuan/surat/{id}', [SuratController::class, 'pengajuanSuratStore'])->name('pengajuanSuratStore');

    Route::get('/konfirmasi/surat', [SuratController::class, 'konfirmasiSurat'])->name('konfirmasiSurat');
    Route::post('/konfirmasi/surat/{id}', [SuratController::class, 'konfirmasiSuratStore'])->name('konfirmasiSuratStore');

    Route::get('/cetak/surat/', [SuratController::class, 'cetakSurat'])->name('cetakSurat');
    Route::get('/cetak/surat/{nik}', [SuratController::class, 'cetakSuratPDF'])->name('cetakSuratPDF');
    Route::post('/cetak/surat/{id}', [SuratController::class, 'suratSelesaiStore'])->name('suratSelesaiStore');
});
