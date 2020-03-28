@extends('layouts.base.app')
@section('title', ' Tambah User Petugas')

@section('sidebar')
    @include('layouts.base.sidebar')
@endsection

@section('header')
    @include('layouts.base.header')
@endsection

@section('content')
<div class="col-12 mb-2 mt-2">
    @if($this->session->flashdata('message')) 
        @if($this->session->flashdata('message')['type'] == 'error')
        <div class="alert alert-danger">
            {{ implode('\n', $this->session->flashdata('message')['message']) }}
        </div>
        @else
        <div class="alert alert-success">
            {{ implode('\n', $this->session->flashdata('message')['message']) }}
        </div>
        @endif
    @endif
</div>

<nav class="breadcrumb bg-white push">
    <a class="breadcrumb-item" href="{{ base_url('/') }}">Dashboard</a>
    <a class="breadcrumb-item" href="{{ base_url('AdminController/userPetugas') }}">Data Petugas Kasir</a>
    <span class="breadcrumb-item active">Tambah Petugas Kasir</span>
</nav>
<div class="block">
    <div class="block-header block-header-default bg-primary">
        <h3 class="block-title">Tambah Petugas Kasir</h3>
    </div>
    <div class="block-content">
        <form class="js-validation-bootstrap px-30" method="POST" enctype="multipart/form-data" action="{{ base_url('AdminController/tambahUser') }}" aria-label="">
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input type="text" class="form-control" id="nama" name="nama">
                        <label for="username">Nama</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: hikmawan</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input type="text" class="form-control" id="telp" name="telp">
                        <label for="username">Telepon</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: 081252043183</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input type="text" class="form-control" id="alamat" name="alamat">
                        <label for="username">Alamat</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: Jl. Ahmad Yani Magelang</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input type="text" class="form-control" id="email" name="email">
                        <label for="username">Email</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: andhikay24@gmail.com</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input type="password" class="form-control" id="password" name="password">
                        <label for="password">Password</label>
                        <div class="input-group-append">
                            <span class="input-group-text"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input type="password" class="form-control" id="repassword" name="repassword">
                        <label for="repassword">Ketik Ulang Password</label>
                        <div class="input-group-append">
                            <span class="input-group-text"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input type="file" class="form-control" id="foto" name="foto">
                        <label for="repassword">Upload Foto</label>
                    </div>
                </div>
            </div>
            <hr/><div class="row mb-2">
                <div class="col-3"></div>
                    <a class="col-3 btn btn-danger" href="{{ base_url('AdminController/userPetugas') }}">Cancel</a>&nbsp
                    <button type="submit" class="col-3 btn bg-earth text-white">Submit</button>
                <div class="col-3"></div>
            </div>
        </form>
    </div>
</div>
@endsection