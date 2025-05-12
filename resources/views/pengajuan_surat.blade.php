@extends('layouts.app')
@section('title', 'ASAM BAWAH - PENGAJUAN SURAT')

@section('content')
<div class="container-fluid">
    <div class="row page-titles mx-0">
        <div class="col-sm-6 p-md-0">
            <div class="welcome-text">
                <h4>Pengajuan Surat</h4>
            </div>
        </div>
        <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Lainnya</a>
                </li>
                <li class="breadcrumb-item active">
                    <a href="javascript:void(0)">Pengajuan Surat</a>
                </li>
            </ol>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="basic-form">
                        <form method="GET" action="{{ route('pengajuanSurat') }}">
                            <div class="form-group col-md-12">
                                <label for="no_kk">
                                    <strong class="text-dark">Nomor Kartu Keluarga / Nomor Induk Kependudukan</strong>
                                </label>
                                <div class="input-group mb-3">
                                    <input type="text" name="no_kk" id="no_kk" class="form-control" placeholder="Masukan Nomor Kartu Keluarga atau Nomor Induk Kependudukan" value="{{ request('no_kk') }}">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="submit">Cari</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        @if(isset($dataWarga) && $dataWarga->count() > 0)
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table student-data-table m-t-20 text-dark">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nomor Kartu Kelurga</th>
                                        <th>Nomor Induk Kependudukan</th>
                                        <th>Nama</th>
                                        <th>RT</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($dataWarga as $key => $data)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $data->no_kk }}</td>
                                            <td>{{ $data->nik }}</td>
                                            <td>{{ $data->nama_lengkap }}</td>
                                            <td>{{ $data->rt }}</td>
                                            <td>
                                                @if ($data->surat->isNotEmpty())
                                                    @php
                                                        $status = $data->surat->first()->status;
                                                    @endphp
                                                    @if ($status == 'Dicetak')
                                                        <span class="badge badge-primary">Oke</span>
                                                    @else
                                                        <span class="badge badge-primary">{{ $status }}</span>
                                                    @endif
                                                @else
                                                    <span class="badge badge-primary">Oke</span>
                                                @endif
                                            </td>
                                            <td>
                                                <span>
                                                    <a href="javascript:;" class="mr-4" data-toggle="modal" data-target="#pengajuan-{{ $data->id }}" data-placement="top" title="Pengajuan">
                                                        <i class="fa fa-send color-muted"></i>
                                                    </a>
                                                </span>
                                                <div class="modal fade" id="pengajuan-{{ $data->id }}">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Pengajuan Surat</h5>
                                                                <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form method="POST" action="{{ route('pengajuanSuratStore', $data->id) }}">
                                                                    @csrf <input type="hidden" name="warga_id" value="{{ $data->id }}">
                                                                    <div class="form-row">
                                                                        <div class="form-group col-12">
                                                                            <label for="jenis_surat">
                                                                                <strong class="text-dark">Jenis Surat</strong>
                                                                            </label>
                                                                            <select name="jenis_surat" id="jenis_surat" class="form-control" required>
                                                                                <option value="Surat Keterangan Tidak Mampu">SURAT KETERANGAN TIDAK MAMPU</option>
                                                                                <option value="Surat Keterangan Domisili">SURAT KETERANGAN DOMISILI</option>
                                                                                <option value="Surat Keterangan Kematian">SURAT KETERANGAN KEMATIAN</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="d-flex justify-content-center border-top mt-3">
                                                                        <button type="submit" class="btn btn-primary w-50 mt-3">Ajukan</button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
</div>
@endsection
