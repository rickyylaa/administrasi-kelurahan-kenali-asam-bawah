@extends('layouts.app')
@section('title', 'ASAM BAWAH - USER')

@section('content')
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Konfirmasi Surat</h4>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="javascript:void(0)">Lainnya</a>
                    </li>
                    <li class="breadcrumb-item active">
                        <a href="javascript:void(0)">Konfirmasi Surat</a>
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
                                        <th>Nomor Kartu Keluarga</th>
                                        <th>Nomor Induk Kependudukan</th>
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
                                                @if ($data->status == 'Diajukan')
                                                    <span>
                                                        <a href="javascript:;" class="mr-4" onclick="confirmSurat('{{ $data->id }}')" data-placement="top" title="Konfrimasi">
                                                            <i class="fa fa-check color-muted"></i>
                                                        </a>
                                                    </span>
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
        function confirmSurat(id) {
            Swal.fire({
                title: 'Apakah anda akan konfirmasi surat ini?',
                icon: 'info',
                showCancelButton: true,
            }).then((result) => {
                if (result.isConfirmed) {
                    fetch(`/konfirmasi/surat/${id}`, {
                        method: 'Post',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        }
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            Swal.fire('Berhasil!', 'Surat berhasil dikonfirmasi.', 'success')
                            .then(() => {
                                location.reload();
                            });
                        } else {
                            Swal.fire('Gagal!', 'Terjadi kesalahan saat mengkonfirmasi surat.', 'error');
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
