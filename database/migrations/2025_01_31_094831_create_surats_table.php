<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('surats', function (Blueprint $table) {
            $table->id();
            $table->foreignId('warga_id')->nullable()->constrained()->onDelete('cascade');
            $table->string('jenis_surat', 30);
            $table->string('no_kk', 16);
            $table->string('nik', 16);
            $table->string('rt', 2);
            $table->string('nama_warga', 60);
            $table->string('pengajuan_by', 60)->nullable();
            $table->string('konfirmasi_by', 60)->nullable();
            $table->string('cetak_by', 60)->nullable();
            $table->enum('status', ['Diajukan', 'Dikonfirmasi', 'Selesai']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('surats');
    }
};
