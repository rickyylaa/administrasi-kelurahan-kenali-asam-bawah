@extends('layouts.app')
@section('title', 'ASAM BAWAH - WARGA')

@section('content')
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Data Warga</h4>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="javascript:void(0)">Data</a>
                    </li>
                    <li class="breadcrumb-item active">
                        <a href="javascript:void(0)">Warga</a>
                    </li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    @if (auth()->user()->role === 'Kasi' || auth()->user()->role === 'Petugas')
                        <div class="card-header justify-content-end">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tambah">Tambah</button>
                            <div class="modal fade" id="tambah">
                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Tambah Warga</h5>
                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form method="POST" action="{{ route('storeWarga') }}">
                                                @csrf
                                                <div class="form-row">
                                                    <div class="form-group col-4">
                                                        <label for="no_kk">
                                                            <strong class="text-dark">Nomor Kartu Keluarga</strong>
                                                        </label>
                                                        <input type="number" name="no_kk" id="no_kk" class="form-control @error('no_kk') is-invalid @enderror" placeholder="Masukan Nomor Kartu Keluarga" required>
                                                        @error('no_kk')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-4">
                                                        <label for="nik">
                                                            <strong class="text-dark">Nomor Induk Kependudukan</strong>
                                                        </label>
                                                        <input type="number" name="nik" id="nik" class="form-control @error('nik') is-invalid @enderror" placeholder="Masukan Nomor Kartu Kependudukan" required>
                                                        @error('nik')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-4">
                                                        <label for="rt">
                                                            <strong class="text-dark">Rukun Tetanga (RT)</strong>
                                                        </label>
                                                        <input type="number" name="rt" id="rt" class="form-control @error('rt') is-invalid @enderror" placeholder="Masukan Rukun Tetangga Warga" required>
                                                        @error('rt')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-6">
                                                        <label for="nama_lengkap">
                                                            <strong class="text-dark">Nama</strong>
                                                        </label>
                                                        <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control @error('nama_lengkap') is-invalid @enderror" placeholder="Masukan Nama Lengkap Warga" required>
                                                        @error('nama_lengkap')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-6">
                                                        <label for="jenis_kelamin">
                                                            <strong class="text-dark">Jenis Kelamin</strong>
                                                        </label>
                                                        <select name="jenis_kelamin" id="jenis_kelamin" class="form-control @error('jenis_kelamin') is-invalid @enderror" required>
                                                            <option value="Laki-Laki">Laki-Laki</option>
                                                            <option value="Perempuan">Perempuan</option>
                                                        </select>
                                                        @error('jenis_kelamin')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-4">
                                                        <label for="tempat_lahir">
                                                            <strong class="text-dark">Tempat Lahir</strong>
                                                        </label>
                                                        <input type="text" name="tempat_lahir" id="tempat_lahir" class="form-control @error('tempat_lahir') is-invalid @enderror" placeholder="Masukan Tempat Lahir Warga" required>
                                                        @error('tempat_lahir')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-4">
                                                        <label for="tanggal_lahir">
                                                            <strong class="text-dark">Tanggal Lahir</strong>
                                                        </label>
                                                        <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="form-control @error('tanggal_lahir') is-invalid @enderror" placeholder="Masukan Tanggal Lahir Warga" required>
                                                        @error('tanggal_lahir')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-4">
                                                        <label for="agama">
                                                            <strong class="text-dark">Agama</strong>
                                                        </label>
                                                        <select name="agama" id="agama" class="form-control @error('agama') is-invalid @enderror" required>
                                                            <option value="islam">Islam</option>
                                                            <option value="kristen">Kristen</option>
                                                            <option value="katolik">Katolik</option>
                                                            <option value="hindu">Hindu</option>
                                                            <option value="budha">Budha</option>
                                                            <option value="konghucu">Konghucu</option>
                                                        </select>
                                                        @error('agama')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-6">
                                                        <label for="pendidikan">
                                                            <strong class="text-dark">Pendidikan Terakhir</strong>
                                                        </label>
                                                        <input type="text" name="pendidikan" id="pendidikan" class="form-control @error('pendidikan') is-invalid @enderror" placeholder="Masukan Pendidikan Warga" required>
                                                        @error('pendidikan')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-6">
                                                        <label for="pekerjaan">
                                                            <strong class="text-dark">Pekerjaan</strong>
                                                        </label>
                                                        <select name="pekerjaan" id="pekerjaan" class="form-control @error('pekerjaan') is-invalid @enderror" required>
                                                            <option value="">Pilih Satu</option>
                                                            <option value="Belum / Tidak Bekerja">Belum / Tidak Bekerja</option>
                                                            <option value="Mengurus Rumah Tangga">Mengurus Rumah Tangga</option>
                                                            <option value="Pelajar / Mahasiswa">Pelajar / Mahasiswa</option>
                                                            <option value="Pensiunan">Pensiunan</option>
                                                            <option value="Pegawai Negeri Sipil (PNS)">Pegawai Negeri Sipil (PNS)</option>
                                                            <option value="Tentara Nasional Indonesia (TNI)">Tentara Nasional Indonesia (TNI)</option>
                                                            <option value="Kepolisian RI (POLRI)">Kepolisian RI (POLRI)</option>
                                                            <option value="Perdagangan">Perdagangan</option>
                                                            <option value="Petani / Pekebun">Petani / Pekebun</option>
                                                            <option value="Peternak">Peternak</option>
                                                            <option value="Nelayan">Nelayan</option>
                                                            <option value="Industri">Industri</option>
                                                            <option value="Konstruksi">Konstruksi</option>
                                                            <option value="Transportasi">Transportasi</option>
                                                            <option value="Karyawan Swasta">Karyawan Swasta</option>
                                                            <option value="Karyawan BUMN">Karyawan BUMN</option>
                                                            <option value="Karyawan Honorer">Karyawan Honorer</option>
                                                            <option value="Buruh Harian Lepas">Buruh Harian Lepas</option>
                                                            <option value="Buruh Tani / Perkebunan">Buruh Tani / Perkebunan</option>
                                                            <option value="Buruh Nelayan / Perikanan">Buruh Nelayan / Perikanan</option>
                                                            <option value="Pembantu Rumah Tangga">Pembantu Rumah Tangga</option>
                                                            <option value="Tukang Cukur">Tukang Cukur</option>
                                                            <option value="Tukang Listrik">Tukang Listrik</option>
                                                            <option value="Tukang Batu">Tukang Batu</option>
                                                            <option value="Tukang Kayu">Tukang Kayu</option>
                                                            <option value="Tukang Sol Sepatu">Tukang Sol Sepatu</option>
                                                            <option value="Tukang Las / Pandai Besi">Tukang Las / Pandai Besi</option>
                                                            <option value="Tukang Jahit">Tukang Jahit</option>
                                                            <option value="Tukang Gigi">Tukang Gigi</option>
                                                            <option value="Penata Rias">Penata Rias</option>
                                                            <option value="Penata Busana">Penata Busana</option>
                                                            <option value="Penata Rambut">Penata Rambut</option>
                                                            <option value="Mekanik">Mekanik</option>
                                                            <option value="Seniman">Seniman</option>
                                                            <option value="Tabib">Tabib</option>
                                                            <option value="Paraji">Paraji</option>
                                                            <option value="Perancang Busana">Perancang Busana</option>
                                                            <option value="Penterjemah">Penterjemah</option>
                                                            <option value="Imam Masjid">Imam Masjid</option>
                                                            <option value="Pendeta">Pendeta</option>
                                                            <option value="Pastor">Pastor</option>
                                                            <option value="Wartawan">Wartawan</option>
                                                            <option value="Ustad / Mubaligh">Ustad / Mubaligh</option>
                                                            <option value="Juru Masak">Juru Masak</option>
                                                            <option value="Promotor Acara">Promotor Acara</option>
                                                            <option value="Anggota DPR RI">Anggota DPR RI</option>
                                                            <option value="Anggota DPD">Anggota DPD</option>
                                                            <option value="Anggota BPK">Anggota BPK</option>
                                                            <option value="Presiden">Presiden</option>
                                                            <option value="Wakil Presiden">Wakil Presiden</option>
                                                            <option value="Anggota Makamah Konstitusi">Anggota Makamah Konstitusi</option>
                                                            <option value="Anggota Kabinet / Kementrian">Anggota Kabinet / Kementrian</option>
                                                            <option value="Duta Besar">Duta Besar</option>
                                                            <option value="Gubernur">Gubernur</option>
                                                            <option value="Wakil Gubernur">Wakil Gubernur</option>
                                                            <option value="Bupati">Bupati</option>
                                                            <option value="Wakil Bupati">Wakil Bupati</option>
                                                            <option value="Walikota">Walikota</option>
                                                            <option value="Wakil Walikota">Wakil Walikota</option>
                                                            <option value="Anggota DPRD Prop">Anggota DPRD Prop</option>
                                                            <option value="Anggota DPRD Kab/Kota">Anggota DPRD Kab/Kota</option>
                                                            <option value="Dosen">Dosen</option>
                                                            <option value="Guru">Guru</option>
                                                            <option value="Pilot">Pilot</option>
                                                            <option value="Pengacara">Pengacara</option>
                                                            <option value="Notaris">Notaris</option>
                                                            <option value="Arsitek">Arsitek</option>
                                                            <option value="Akuntan">Akuntan</option>
                                                            <option value="Konsultan">Konsultan</option>
                                                            <option value="Dokter">Dokter</option>
                                                            <option value="Bidan">Bidan</option>
                                                            <option value="Perawat">Perawat</option>
                                                            <option value="Apoteker">Apoteker</option>
                                                            <option value="Psikiater / Psikolog">Psikiater / Psikolog</option>
                                                            <option value="Penyiar Televisi">Penyiar Televisi</option>
                                                            <option value="Penyiar Radio">Penyiar Radio</option>
                                                            <option value="Pelaut">Pelaut</option>
                                                            <option value="Peneliti">Peneliti</option>
                                                            <option value="Sopir">Sopir</option>
                                                            <option value="Pialang">Pialang</option>
                                                            <option value="Paranormal">Paranormal</option>
                                                            <option value="Pedagang">Pedagang</option>
                                                            <option value="Perangkat Desa">Perangkat Desa</option>
                                                            <option value="Kepala Desa">Kepala Desa</option>
                                                            <option value="Biarawati">Biarawati</option>
                                                            <option value="Wiraswasta">Wiraswasta</option>
                                                        </select>
                                                        @error('pekerjaan')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-6">
                                                        <label for="status_kawin">
                                                            <strong class="text-dark">Status Perkawinan</strong>
                                                        </label>
                                                        <select name="status_kawin" id="status_kawin" class="form-control @error('status_kawin') is-invalid @enderror" required>
                                                            <option value="">Pilih Satu</option>
                                                            <option value="Belum Kawin">Belum Kawin</option>
                                                            <option value="Kawin Tercatat">Kawin Tercatat</option>
                                                            <option value="Kawin Belum Tercatat">Kawin Belum Tercatat</option>
                                                            <option value="Cerai Hidup">Cerai Hidup</option>
                                                            <option value="Cerai Mati">Cerai Mati</option>
                                                        </select>
                                                        @error('status_kawin')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-6">
                                                        <label for="status_keluarga">
                                                            <strong class="text-dark">Status Dalam Keluarga</strong>
                                                        </label>
                                                        <select name="status_keluarga" id="status_keluarga" class="form-control @error('status_keluarga') is-invalid @enderror" required>
                                                            <option value="Kepala Keluarga">Kepala Keluarga</option>
                                                            <option value="Istri">Istri</option>
                                                            <option value="Anak">Anak</option>
                                                            <option value="Menantu">Menantu</option>
                                                            <option value="Cucu">Cucu</option>
                                                            <option value="Keponakan">Keponakan</option>
                                                            <option value="Orang Tua">Orang Tua</option>
                                                            <option value="Mertua">Mertua</option>
                                                        </select>
                                                        @error('status_keluarga')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="d-flex justify-content-center border-top mt-3">
                                                    <button type="submit" class="btn btn-primary w-50 mt-3">Tambah</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table student-data-table m-t-20 text-dark">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nomor Kartu Keluarga</th>
                                        <th>Nomor Induk Kependudukan</th>
                                        <th>Nama Lengkap</th>
                                        <th>Detail</th>
                                        @if (auth()->user()->role === 'Kasi' || auth()->user()->role === 'Petugas')
                                            <th>Aksi</th>
                                        @endif
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($dataWarga as $key => $data)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ ucwords($data->no_kk) }}</td>
                                            <td>{{ $data->nik }}</td>
                                            <td>{{ $data->nama_lengkap }}</td>
                                            <td>
                                                <span>
                                                    <a href="javascript:void()" data-toggle="modal" data-target="#detail" data-toggle="tooltip" data-placement="top" title="Detail">
                                                        <i class="fa fa-eye color-muted"></i>
                                                    </a>
                                                    <div class="modal fade" id="detail">
                                                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title">Detail Warga</h5>
                                                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Nomor KK</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->no_kk }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">NIK</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->nik }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">RT</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->rt }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Nama</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->nama_lengkap }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Jenis Kelamin</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->jenis_kelamin }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Tempat Lahir</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->tempat_lahir }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Tanggal Lahir</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->tanggal_lahir }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Agama</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->agama }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Pendidikan</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->pendidikan }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Pekerjaan</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->pekerjaan }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Status Kawin</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->status_kawin }}</b></dd>
                                                                    </dl>
                                                                    <dl class="row list-data" style="margin-bottom: 2px;">
                                                                        <dt class="col-md-2">Status Keluarga</dt>
                                                                        <dd class="col-sm-9"> : <b>{{ $data->status_keluarga }}</b></dd>
                                                                    </dl>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </td>
                                            @if (auth()->user()->role === 'Kasi' || auth()->user()->role === 'Petugas')
                                                <td>
                                                    <span>
                                                        <a href="javascript:;" class="mr-4" data-toggle="modal" data-target="#edit-{{ $data->id }}" data-placement="top" title="Edit">
                                                            <i class="fa fa-pencil color-muted"></i>
                                                        </a>
                                                        <a href="javascript:;" class="mr-4" onclick="confirmDelete('{{ $data->id }}')" data-placement="top" title="Hapus">
                                                            <i class="fa fa-trash color-danger"></i>
                                                        </a>
                                                    </span>
                                                    <div class="modal fade" id="edit-{{ $data->id }}">
                                                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title">Edit Warga</h5>
                                                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form method="POST" action="{{ route('updateWarga', $data->id) }}">
                                                                        @csrf @method('PUT')
                                                                        <div class="form-row">
                                                                            <div class="form-group col-4">
                                                                                <label for="no_kk">
                                                                                    <strong class="text-dark">Nomor Kartu Keluarga</strong>
                                                                                </label>
                                                                                <input type="number" name="no_kk" id="no_kk" class="form-control @error('no_kk') is-invalid @enderror" value="{{ old('no_kk', $data->no_kk) }}" placeholder="Masukan Nomor Kartu Keluarga" required>
                                                                                @error('no_kk')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-4">
                                                                                <label for="nik">
                                                                                    <strong class="text-dark">Nomor Induk Kependudukan</strong>
                                                                                </label>
                                                                                <input type="number" name="nik" id="nik" class="form-control @error('nik') is-invalid @enderror" value="{{ old('nik', $data->nik) }}" placeholder="Masukan Nomor Kartu Kependudukan" required>
                                                                                @error('nik')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-4">
                                                                                <label for="rt">
                                                                                    <strong class="text-dark">Rukun Tetanga (RT)</strong>
                                                                                </label>
                                                                                <input type="number" name="rt" id="rt" class="form-control @error('rt') is-invalid @enderror" value="{{ old('rt', $data->rt) }}" placeholder="Masukan Rukun Tetangga Warga" required>
                                                                                @error('rt')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-6">
                                                                                <label for="nama_lengkap">
                                                                                    <strong class="text-dark">Nama</strong>
                                                                                </label>
                                                                                <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control @error('nama_lengkap') is-invalid @enderror" value="{{ old('nama_lengkap', $data->nama_lengkap) }}" placeholder="Masukan Nama Lengkap Warga" required>
                                                                                @error('nama_lengkap')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-6">
                                                                                <label for="jenis_kelamin">
                                                                                    <strong class="text-dark">Jenis Kelamin</strong>
                                                                                </label>
                                                                                <select name="jenis_kelamin" id="jenis_kelamin" class="form-control @error('jenis_kelamin') is-invalid @enderror" required>
                                                                                    <option value="Laki-Laki" {{ $data->jenis_kelamin === 'Laki-Laki' ? 'selected' : '' }}>Laki-Laki</option>
                                                                                    <option value="Perempuan" {{ $data->jenis_kelamin === 'Perempuan' ? 'selected' : '' }}>Perempuan</option>
                                                                                </select>
                                                                                @error('jenis_kelamin')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-4">
                                                                                <label for="tempat_lahir">
                                                                                    <strong class="text-dark">Tempat Lahir</strong>
                                                                                </label>
                                                                                <input type="text" name="tempat_lahir" id="tempat_lahir" class="form-control @error('tempat_lahir') is-invalid @enderror" value="{{ old('tempat_lahir', $data->tempat_lahir) }}" placeholder="Masukan Tempat Lahir Warga" required>
                                                                                @error('tempat_lahir')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-4">
                                                                                <label for="tanggal_lahir">
                                                                                    <strong class="text-dark">Tanggal Lahir</strong>
                                                                                </label>
                                                                                <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="form-control @error('tanggal_lahir') is-invalid @enderror" value="{{ old('tanggal_lahir', $data->tanggal_lahir) }}" placeholder="Masukan Tanggal Lahir Warga" required>
                                                                                @error('tanggal_lahir')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-4">
                                                                                <label for="agama">
                                                                                    <strong class="text-dark">Agama</strong>
                                                                                </label>
                                                                                <select name="agama" id="agama" class="form-control @error('agama') is-invalid @enderror" required>
                                                                                    <option value="Islam" {{ $data->agama === 'Islam' ? 'selected' : '' }}>Islam</option>
                                                                                    <option value="Kristen" {{ $data->agama === 'Kristen' ? 'selected' : '' }}>Kristen</option>
                                                                                    <option value="Katolik" {{ $data->agama === 'Katolik' ? 'selected' : '' }}>Katolik</option>
                                                                                    <option value="Hindu" {{ $data->agama === 'Hindu' ? 'selected' : '' }}>Hindu</option>
                                                                                    <option value="Budha" {{ $data->agama === 'Budha' ? 'selected' : '' }}>Budha</option>
                                                                                    <option value="Konghucu" {{ $data->agama === 'Konghucu' ? 'selected' : '' }}>Konghucu</option>
                                                                                </select>
                                                                                @error('agama')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-6">
                                                                                <label for="pendidikan">
                                                                                    <strong class="text-dark">Pendidikan Terakhir</strong>
                                                                                </label>
                                                                                <input type="text" name="pendidikan" id="pendidikan" class="form-control @error('pendidikan') is-invalid @enderror" value="{{ old('pendidikan', $data->pendidikan) }}" placeholder="Masukan Pendidikan Warga" required>
                                                                                @error('pendidikan')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-6">
                                                                                <label for="pekerjaan">
                                                                                    <strong class="text-dark">Pekerjaan</strong>
                                                                                </label>
                                                                                <select name="pekerjaan" id="pekerjaan" class="form-control @error('pekerjaan') is-invalid @enderror" required>
                                                                                    <option value="">Pilih Satu</option>
                                                                                    <option value="Belum / Tidak Bekerja" {{ $data->pekerjaan === 'Belum / Tidak Bekerja' ? 'selected' : '' }}>Belum / Tidak Bekerja</option>
                                                                                    <option value="Mengurus Rumah Tangga" {{ $data->pekerjaan === 'Mengurus Rumah Tangga' ? 'selected' : '' }}>Mengurus Rumah Tangga</option>
                                                                                    <option value="Pelajar / Mahasiswa" {{ $data->pekerjaan === 'Pelajar / Mahasiswa' ? 'selected' : '' }}>Pelajar / Mahasiswa</option>
                                                                                    <option value="Pensiunan" {{ $data->pekerjaan === 'Pensiunan' ? 'selected' : '' }}>Pensiunan</option>
                                                                                    <option value="Pegawai Negeri Sipil (PNS)" {{ $data->pekerjaan === 'Pegawai Negeri Sipil' ? 'selected' : '' }}>Pegawai Negeri Sipil (PNS)</option>
                                                                                    <option value="Tentara Nasional Indonesia (TNI)" {{ $data->pekerjaan === 'Tentara Nasional Indonesia' ? 'selected' : '' }}>Tentara Nasional Indonesia (TNI)</option>
                                                                                    <option value="Kepolisian RI (POLRI)" {{ $data->pekerjaan === 'Kepolisian RI (POLRI)' ? 'selected' : '' }}>Kepolisian RI (POLRI)</option>
                                                                                    <option value="Perdagangan" {{ $data->pekerjaan === 'Perdagangan' ? 'selected' : '' }}>Perdagangan</option>
                                                                                    <option value="Petani / Pekebun" {{ $data->pekerjaan === 'Petani / Pekebun' ? 'selected' : '' }}>Petani / Pekebun</option>
                                                                                    <option value="Peternak" {{ $data->pekerjaan === 'Peternak' ? 'selected' : '' }}>Peternak</option>
                                                                                    <option value="Nelayan" {{ $data->pekerjaan === 'Nelayan' ? 'selected' : '' }}>Nelayan</option>
                                                                                    <option value="Industri" {{ $data->pekerjaan === 'Industri' ? 'selected' : '' }}>Industri</option>
                                                                                    <option value="Konstruksi" {{ $data->pekerjaan === 'Konstruksi' ? 'selected' : '' }}>Konstruksi</option>
                                                                                    <option value="Transportasi" {{ $data->pekerjaan === 'Transportasi' ? 'selected' : '' }}>Transportasi</option>
                                                                                    <option value="Karyawan Swasta" {{ $data->pekerjaan === 'Karyawan Swasta' ? 'selected' : '' }}>Karyawan Swasta</option>
                                                                                    <option value="Karyawan BUMN" {{ $data->pekerjaan === 'Karyawan BUMN' ? 'selected' : '' }}>Karyawan BUMN</option>
                                                                                    <option value="Karyawan Honorer" {{ $data->pekerjaan === 'Karyawan Honorer' ? 'selected' : '' }}>Karyawan Honorer</option>
                                                                                    <option value="Buruh Harian Lepas" {{ $data->pekerjaan === 'Buruh Harian Lepas' ? 'selected' : '' }}>Buruh Harian Lepas</option>
                                                                                    <option value="Buruh Tani / Perkebunan" {{ $data->pekerjaan === 'Buruh Tani / Perkebunan' ? 'selected' : '' }}>Buruh Tani / Perkebunan</option>
                                                                                    <option value="Buruh Nelayan / Perikanan" {{ $data->pekerjaan === 'Buruh Nelayan / Perikanan' ? 'selected' : '' }}>Buruh Nelayan / Perikanan</option>
                                                                                    <option value="Pembantu Rumah Tangga" {{ $data->pekerjaan === 'Pembantu Rumah Tangga' ? 'selected' : '' }}>Pembantu Rumah Tangga</option>
                                                                                    <option value="Tukang Cukur" {{ $data->pekerjaan === 'Tukang Cukur' ? 'selected' : '' }}>Tukang Cukur</option>
                                                                                    <option value="Tukang Listrik" {{ $data->pekerjaan === 'Tukang Listrik' ? 'selected' : '' }}>Tukang Listrik</option>
                                                                                    <option value="Tukang Batu" {{ $data->pekerjaan === 'Tukang Batu' ? 'selected' : '' }}>Tukang Batu</option>
                                                                                    <option value="Tukang Kayu" {{ $data->pekerjaan === 'Tukang Kayu' ? 'selected' : '' }}>Tukang Kayu</option>
                                                                                    <option value="Tukang Sol Sepatu" {{ $data->pekerjaan === 'Tukang Sol Sepatu' ? 'selected' : '' }}>Tukang Sol Sepatu</option>
                                                                                    <option value="Tukang Las / Pandai Besi" {{ $data->pekerjaan === 'Tukang Las / Pandai Besi' ? 'selected' : '' }}>Tukang Las / Pandai Besi</option>
                                                                                    <option value="Tukang Jahit" {{ $data->pekerjaan === 'Tukang Jahit' ? 'selected' : '' }}>Tukang Jahit</option>
                                                                                    <option value="Tukang Gigi" {{ $data->pekerjaan === 'Tukang Gigi' ? 'selected' : '' }}>Tukang Gigi</option>
                                                                                    <option value="Penata Rias" {{ $data->pekerjaan === 'Penata Rias' ? 'selected' : '' }}>Penata Rias</option>
                                                                                    <option value="Penata Busana" {{ $data->pekerjaan === 'Penata Busana' ? 'selected' : '' }}>Penata Busana</option>
                                                                                    <option value="Penata Rambut" {{ $data->pekerjaan === 'Penata Rambut' ? 'selected' : '' }}>Penata Rambut</option>
                                                                                    <option value="Mekanik" {{ $data->pekerjaan === 'Mekanik' ? 'selected' : '' }}>Mekanik</option>
                                                                                    <option value="Seniman" {{ $data->pekerjaan === 'Seniman' ? 'selected' : '' }}>Seniman</option>
                                                                                    <option value="Tabib" {{ $data->pekerjaan === 'Tabib' ? 'selected' : '' }}>Tabib</option>
                                                                                    <option value="Paraji" {{ $data->pekerjaan === 'Paraji' ? 'selected' : '' }}>Paraji</option>
                                                                                    <option value="Perancang Busana" {{ $data->pekerjaan === 'Perancang Busana' ? 'selected' : '' }}>Perancang Busana</option>
                                                                                    <option value="Penterjemah" {{ $data->pekerjaan === 'Penterjemah' ? 'selected' : '' }}>Penterjemah</option>
                                                                                    <option value="Imam Masjid" {{ $data->pekerjaan === 'Imam Masjid' ? 'selected' : '' }}>Imam Masjid</option>
                                                                                    <option value="Pendeta" {{ $data->pekerjaan === 'Pendeta' ? 'selected' : '' }}>Pendeta</option>
                                                                                    <option value="Pastor" {{ $data->pekerjaan === 'Pastor' ? 'selected' : '' }}>Pastor</option>
                                                                                    <option value="Wartawan" {{ $data->pekerjaan === 'Wartawan' ? 'selected' : '' }}>Wartawan</option>
                                                                                    <option value="Ustad / Mubaligh" {{ $data->pekerjaan === 'Ustad / Mubaligh' ? 'selected' : '' }}>Ustad / Mubaligh</option>
                                                                                    <option value="Juru Masak" {{ $data->pekerjaan === 'Juru Masak' ? 'selected' : '' }}>Juru Masak</option>
                                                                                    <option value="Promotor Acara" {{ $data->pekerjaan === 'Promotor Acara' ? 'selected' : '' }}>Promotor Acara</option>
                                                                                    <option value="Anggota DPR RI" {{ $data->pekerjaan === 'Anggota DPR RI' ? 'selected' : '' }}>Anggota DPR RI</option>
                                                                                    <option value="Anggota DPD" {{ $data->pekerjaan === 'Anggota DPD' ? 'selected' : '' }}>Anggota DPD</option>
                                                                                    <option value="Anggota BPK" {{ $data->pekerjaan === 'Anggota BPK' ? 'selected' : '' }}>Anggota BPK</option>
                                                                                    <option value="Presiden" {{ $data->pekerjaan === 'Presiden' ? 'selected' : '' }}>Presiden</option>
                                                                                    <option value="Wakil Presiden" {{ $data->pekerjaan === 'Wakil Presiden' ? 'selected' : '' }}>Wakil Presiden</option>
                                                                                    <option value="Anggota Makamah Konstitusi" {{ $data->pekerjaan === 'Anggota Makamah Konstitusi' ? 'selected' : '' }}>Anggota Makamah Konstitusi</option>
                                                                                    <option value="Anggota Kabinet / Kementrian" {{ $data->pekerjaan === 'Anggota Kabinet / Kementrian' ? 'selected' : '' }}>Anggota Kabinet / Kementrian</option>
                                                                                    <option value="Duta Besar" {{ $data->pekerjaan === 'Duta Besar' ? 'selected' : '' }}>Duta Besar</option>
                                                                                    <option value="Gubernur" {{ $data->pekerjaan === 'Gubernur' ? 'selected' : '' }}>Gubernur</option>
                                                                                    <option value="Wakil Gubernur" {{ $data->pekerjaan === 'Wakil Gubernur' ? 'selected' : '' }}>Wakil Gubernur</option>
                                                                                    <option value="Bupati" {{ $data->pekerjaan === 'Bupati' ? 'selected' : '' }}>Bupati</option>
                                                                                    <option value="Wakil Bupati" {{ $data->pekerjaan === 'Wakil Bupati' ? 'selected' : '' }}>Wakil Bupati</option>
                                                                                    <option value="Walikota" {{ $data->pekerjaan === 'Walikota' ? 'selected' : '' }}>Walikota</option>
                                                                                    <option value="Wakil Walikota" {{ $data->pekerjaan === 'Wakil Walikota' ? 'selected' : '' }}>Wakil Walikota</option>
                                                                                    <option value="Anggota DPRD Prop" {{ $data->pekerjaan === 'Anggota DPRD Prop' ? 'selected' : '' }}>Anggota DPRD Prop</option>
                                                                                    <option value="Anggota DPRD Kab/Kota" {{ $data->pekerjaan === 'Anggota DPRD Kab/Kota' ? 'selected' : '' }}>Anggota DPRD Kab/Kota</option>
                                                                                    <option value="Dosen" {{ $data->pekerjaan === 'Dosen' ? 'selected' : '' }}>Dosen</option>
                                                                                    <option value="Guru" {{ $data->pekerjaan === 'Guru' ? 'selected' : '' }}>Guru</option>
                                                                                    <option value="Pilot" {{ $data->pekerjaan === 'Pilot' ? 'selected' : '' }}>Pilot</option>
                                                                                    <option value="Pengacara" {{ $data->pekerjaan === 'Pengacara' ? 'selected' : '' }}>Pengacara</option>
                                                                                    <option value="Notaris" {{ $data->pekerjaan === 'Notaris' ? 'selected' : '' }}>Notaris</option>
                                                                                    <option value="Arsitek" {{ $data->pekerjaan === 'Arsitek' ? 'selected' : '' }}>Arsitek</option>
                                                                                    <option value="Akuntan" {{ $data->pekerjaan === 'Akuntan' ? 'selected' : '' }}>Akuntan</option>
                                                                                    <option value="Konsultan" {{ $data->pekerjaan === 'Konsultan' ? 'selected' : '' }}>Konsultan</option>
                                                                                    <option value="Dokter" {{ $data->pekerjaan === 'Dokter' ? 'selected' : '' }}>Dokter</option>
                                                                                    <option value="Bidan" {{ $data->pekerjaan === 'Bidan' ? 'selected' : '' }}>Bidan</option>
                                                                                    <option value="Perawat" {{ $data->pekerjaan === 'Perawat' ? 'selected' : '' }}>Perawat</option>
                                                                                    <option value="Apoteker" {{ $data->pekerjaan === 'Apoteker' ? 'selected' : '' }}>Apoteker</option>
                                                                                    <option value="Psikiater / Psikolog" {{ $data->pekerjaan === 'Psikiater / Psikolog' ? 'selected' : '' }}>Psikiater / Psikolog</option>
                                                                                    <option value="Penyiar Televisi" {{ $data->pekerjaan === 'Penyiar Televisi' ? 'selected' : '' }}>Penyiar Televisi</option>
                                                                                    <option value="Penyiar Radio" {{ $data->pekerjaan === 'Penyiar Radio' ? 'selected' : '' }}>Penyiar Radio</option>
                                                                                    <option value="Pelaut" {{ $data->pekerjaan === 'Pelaut' ? 'selected' : '' }}>Pelaut</option>
                                                                                    <option value="Peneliti" {{ $data->pekerjaan === 'Peneliti' ? 'selected' : '' }}>Peneliti</option>
                                                                                    <option value="Sopir" {{ $data->pekerjaan === 'Sopir' ? 'selected' : '' }}>Sopir</option>
                                                                                    <option value="Pialang" {{ $data->pekerjaan === 'Pialang' ? 'selected' : '' }}>Pialang</option>
                                                                                    <option value="Paranormal" {{ $data->pekerjaan === 'Paranormal' ? 'selected' : '' }}>Paranormal</option>
                                                                                    <option value="Pedagang" {{ $data->pekerjaan === 'Pedagang' ? 'selected' : '' }}>Pedagang</option>
                                                                                    <option value="Perangkat Desa" {{ $data->pekerjaan === 'Perangkat Desa' ? 'selected' : '' }}>Perangkat Desa</option>
                                                                                    <option value="Kepala Desa" {{ $data->pekerjaan === 'Kepala Desa' ? 'selected' : '' }}>Kepala Desa</option>
                                                                                    <option value="Biarawati" {{ $data->pekerjaan === 'Biarawati' ? 'selected' : '' }}>Biarawati</option>
                                                                                    <option value="Wiraswasta" {{ $data->pekerjaan === 'Wiraswasta' ? 'selected' : '' }}>Wiraswasta</option>
                                                                                </select>
                                                                                @error('pekerjaan')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-6">
                                                                                <label for="status_kawin">
                                                                                    <strong class="text-dark">Status Perkawinan</strong>
                                                                                </label>
                                                                                <select name="status_kawin" id="status_kawin" class="form-control @error('status_kawin') is-invalid @enderror" required>
                                                                                    <option value="">Pilih Satu</option>
                                                                                    <option value="Belum Kawin" {{ $data->status_kawin === 'Belum Kawin' ? 'selected' : '' }}>Belum Kawin</option>
                                                                                    <option value="Kawin Tercatat" {{ $data->status_kawin === 'Kawin Tercatat' ? 'selected' : '' }}>Kawin Tercatat</option>
                                                                                    <option value="Kawin Belum Tercatat" {{ $data->status_kawin === 'Kawin Belum Tercatat' ? 'selected' : '' }}>Kawin Belum Tercatat</option>
                                                                                    <option value="Cerai Hidup" {{ $data->status_kawin === 'Cerai Hidup' ? 'selected' : '' }}>Cerai Hidup</option>
                                                                                    <option value="Cerai Mati" {{ $data->status_kawin === 'Cerai Mati' ? 'selected' : '' }}>Cerai Mati</option>
                                                                                </select>
                                                                                @error('status_kawin')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-6">
                                                                                <label for="status_keluarga">
                                                                                    <strong class="text-dark">Status Dalam Keluarga</strong>
                                                                                </label>
                                                                                <select name="status_keluarga" id="status_keluarga" class="form-control @error('status_keluarga') is-invalid @enderror" required>
                                                                                    <option value="Kepala Keluarga" {{ $data->status_kawin === 'Kepala Keluarga' ? 'selected' : '' }}>Kepala Keluarga</option>
                                                                                    <option value="Istri" {{ $data->status_kawin === 'Istri' ? 'selected' : '' }}>Istri</option>
                                                                                    <option value="Anak" {{ $data->status_kawin === 'Anak' ? 'selected' : '' }}>Anak</option>
                                                                                    <option value="Menantu" {{ $data->status_kawin === 'Menantu' ? 'selected' : '' }}>Menantu</option>
                                                                                    <option value="Cucu" {{ $data->status_kawin === 'Cucu' ? 'selected' : '' }}>Cucu</option>
                                                                                    <option value="Keponakan" {{ $data->status_kawin === 'Keponakan' ? 'selected' : '' }}>Keponakan</option>
                                                                                    <option value="Orang Tua" {{ $data->status_kawin === 'Orang Tua' ? 'selected' : '' }}>Orang Tua</option>
                                                                                    <option value="Mertua" {{ $data->status_kawin === 'Mertua' ? 'selected' : '' }}>Mertua</option>
                                                                                </select>
                                                                                @error('status_keluarga')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                        </div>
                                                                        <div class="d-flex justify-content-center border-top mt-3">
                                                                            <button type="submit" class="btn btn-primary w-50 mt-3">Edit</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            @endif
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="px-2 pb-0 pt-2">
                            {{ $dataWarga->links('pagination::bootstrap-5') }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('css')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
@endsection

@section('js')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
@endsection

@section('script')
    <script>
        function confirmDelete(id) {
            Swal.fire({
                title: 'Apakah Anda yakin?',
                text: "Anda tidak akan dapat memulihkan data ini!",
                icon: 'warning',
                showCancelButton: true,
            }).then((result) => {
                if (result.isConfirmed) {
                    fetch(`/warga/${id}`, {
                        method: 'DELETE',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        }
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            Swal.fire('Berhasil!', 'Warga berhasil dihapus.', 'success')
                            .then(() => {
                                location.reload();
                            });
                        } else {
                            Swal.fire('Gagal!', 'Terjadi kesalahan saat menghapus warga.', 'error');
                        }
                    })
                    .catch(error => {
                        Swal.fire('Gagal!', 'Terjadi kesalahan jaringan.', 'error');
                    });
                }
            });
        }
    </script>
@endsection
