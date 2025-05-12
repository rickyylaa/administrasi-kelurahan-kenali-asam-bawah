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
        Schema::create('wargas', function (Blueprint $table) {
            $table->id();
            $table->string('rt', 2);
            $table->string('no_kk', 16);
            $table->string('nik', 16);
            $table->string('nama_lengkap', 100);
            $table->enum('jenis_kelamin' ,['Laki-laki', 'Perempuan']);
            $table->string('tempat_lahir', 100);
            $table->date('tanggal_lahir');
            $table->enum('agama', ['Islam', 'Protestan', 'Hindu', 'Budha', 'Katolik', 'Konghucu']);
            $table->string('pendidikan', 100);
            $table->string('pekerjaan', 100);
            $table->string('status_kawin', 100);
            $table->string('status_keluarga', 100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('wargas');
    }
};
