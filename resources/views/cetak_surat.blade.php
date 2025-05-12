@extends('layouts.app')
@section('title', 'ASAM BAWAH - USER')

@section('content')
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Cetak Surat</h4>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="javascript:void(0)">Lainnya</a>
                    </li>
                    <li class="breadcrumb-item active">
                        <a href="javascript:void(0)">Cetak Surat</a>
                    </li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table student-data-table m-t-20 text-dark">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nomor Induk Keluarga</th>
                                        <th>Nomor Kartu Kependudukan</th>
                                        <th>Nama Warga</th>
                                        <th>RT</th>
                                        <th>Pengajuan By</th>
                                        <th>Jenis Surat</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($dataSurat as $key => $data)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $data->no_kk }}</td>
                                            <td>{{ $data->nik }}</td>
                                            <td>{{ $data->nama_warga }}</td>
                                            <td>{{ $data->rt }}</td>
                                            <td>{{ $data->pengajuan_by }}</td>
                                            <td>{{ $data->jenis_surat }}</td>
                                            <td>
                                                <span class="badge badge-primary">{{ $data->status }}</span>
                                            </td>
                                            <td>
                                                @if ($data->status == 'Dikonfirmasi')
                                                    <div class="d-flex">
                                                        <a href="{{ route('cetakSuratPDF', ['nik' => $data->nik]) }}" target="_blank" class="btn btn-primary btn-sm" style="margin-right: 4px">
                                                            Cetak
                                                        </a>
                                                        <a href="javascript:;" class="btn btn-success text-white btn-sm" onclick="selesai('{{ $data->id }}')">
                                                            Selesai
                                                        </a>
                                                    </div>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
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
        function selesai(id) {
            Swal.fire({
                title: 'Apakah Anda yakin?',
                text: "Anda tidak akan dapat memulihkan data ini!",
                icon: 'warning',
                showCancelButton: true,
            }).then((result) => {
                if (result.isConfirmed) {
                    fetch(`/cetak/surat/${id}`, {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        }
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            Swal.fire('Berhasil!', 'Surat berhasil diselesaikan!.', 'success')
                            .then(() => {
                                location.reload();
                            });
                        } else {
                            Swal.fire('Gagal!', 'Terjadi kesalahan saat memperbarui data.', 'error');
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
