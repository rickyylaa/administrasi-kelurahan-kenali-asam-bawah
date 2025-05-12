@extends('layouts.app')
@section('title', 'ASAM BAWAH - USER')

@section('content')
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Data User</h4>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="javascript:void(0)">Data</a>
                    </li>
                    <li class="breadcrumb-item active">
                        <a href="javascript:void(0)">User</a>
                    </li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    @if (auth()->user()->role === 'Kasi')
                        <div class="card-header justify-content-end">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tambah">Tambah</button>
                            <div class="modal fade" id="tambah">
                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Tambah User</h5>
                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form method="POST" action="{{ route('storeUser') }}">
                                                @csrf
                                                <div class="form-row">
                                                    <div class="form-group col-12">
                                                        <label for="name">
                                                            <strong class="text-dark">Nama</strong>
                                                        </label>
                                                        <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" placeholder="Masukan Nama User" required>
                                                        @error('name')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="username">
                                                            <strong class="text-dark">Username</strong>
                                                        </label>
                                                        <input type="text" name="username" id="username" class="form-control @error('username') is-invalid @enderror" placeholder="Masukan Username User" required>
                                                        @error('username')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="email">
                                                            <strong class="text-dark">Email</strong>
                                                        </label>
                                                        <input type="email" name="email" id="email" class="form-control @error('email') is-invalid @enderror" placeholder="Masukan Email User" required>
                                                        @error('email')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-12">
                                                        <label for="password">
                                                            <strong class="text-dark">Password</strong>
                                                        </label>
                                                        <input type="password" name="password" id="password" class="form-control" placeholder="Masukan Password User" required>
                                                        @error('password')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="rt">
                                                            <strong class="text-dark">RT</strong>
                                                        </label>
                                                        <input type="integer" name="rt" id="rt" class="form-control @error('rt') is-invalid @enderror" placeholder="Masukan RT User" required>
                                                        @error('rt')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="role">
                                                            <strong class="text-dark">Role</strong>
                                                        </label>
                                                        <select name="role" id="role" class="form-control @error('role') is-invalid @enderror" required>
                                                            <option value="Lurah">Lurah</option>
                                                            <option value="Kasi">Kasi</option>
                                                            <option value="Staff">Staff</option>
                                                            <option value="Petugas">Petugas</option>
                                                        </select>
                                                        @error('role')
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
                                        <th>Nama</th>
                                        <th>Username</th>
                                        <th>Email</th>
                                        <th>RT</th>
                                        <th>Role</th>
                                        @if (auth()->user()->role === 'Kasi')
                                            <th>Aksi</th>
                                        @endif
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($dataUser as $key => $data)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ ucwords($data->name) }}</td>
                                            <td>{{ $data->username }}</td>
                                            <td>{{ $data->email }}</td>
                                            <td>{{ $data->rt }}</td>
                                            <td>{{ $data->role }}</td>
                                            @if (auth()->user()->role === 'Kasi')
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
                                                                    <h5 class="modal-title">Edit User</h5>
                                                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form method="POST" action="{{ route('updateUser', $data->id) }}">
                                                                        @csrf @method('PUT')
                                                                        <div class="form-row">
                                                                            <div class="form-group col-12">
                                                                                <label for="name">
                                                                                    <strong class="text-dark">Nama</strong>
                                                                                </label>
                                                                                <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name', $data->name) }}" placeholder="Masukan Nama User" required>
                                                                                @error('name')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label for="username">
                                                                                    <strong class="text-dark">Username</strong>
                                                                                </label>
                                                                                <input type="text" name="username" id="username" class="form-control @error('username') is-invalid @enderror" value="{{ old('username', $data->username) }}" placeholder="Masukan Username User" required>
                                                                                @error('username')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label for="email">
                                                                                    <strong class="text-dark">Email</strong>
                                                                                </label>
                                                                                <input type="email" name="email" id="email" class="form-control @error('email') is-invalid @enderror" value="{{ old('email', $data->email) }}" placeholder="Masukan Email User" required>
                                                                                @error('email')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-12">
                                                                                <label for="password">
                                                                                    <strong class="text-dark">Password</strong>
                                                                                </label>
                                                                                <input type="password" name="password" id="password" class="form-control" placeholder="Masukan Password User">
                                                                                @error('password')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label for="rt">
                                                                                    <strong class="text-dark">Rukun Tetangga (RT)</strong>
                                                                                </label>
                                                                                <input type="integer" name="rt" id="rt" class="form-control @error('rt') is-invalid @enderror" value="{{ old('rt    ', $data->rt    ) }}" placeholder="Masukan RT User" required>
                                                                                @error('rt')
                                                                                    <span class="invalid-feedback" role="alert">
                                                                                        <strong>{{ $message }}</strong>
                                                                                    </span>
                                                                                @enderror
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label for="role">
                                                                                    <strong class="text-dark">Role</strong>
                                                                                </label>
                                                                                <select name="role" id="role" class="form-control @error('role') is-invalid @enderror" required>
                                                                                    <option value="Lurah" {{ $data->role === 'Lurah' ? 'selected' : '' }}>Lurah</option>
                                                                                    <option value="Kasi" {{ $data->role === 'Kasi' ? 'selected' : '' }}>Kasi</option>
                                                                                    <option value="Staff" {{ $data->role === 'Staff' ? 'selected' : '' }}>Staff</option>
                                                                                    <option value="Petugas" {{ $data->role === 'Petugas' ? 'selected' : '' }}>Petugas</option>
                                                                                </select>
                                                                                @error('role')
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
                            {{ $dataUser->links('pagination::bootstrap-5') }}
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
                    fetch(`/user/${id}`, {
                        method: 'DELETE',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        }
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            Swal.fire('Berhasil!', 'User berhasil dihapus.', 'success')
                            .then(() => {
                                location.reload();
                            });
                        } else {
                            Swal.fire('Gagal!', 'Terjadi kesalahan saat menghapus user.', 'error');
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
