@extends('layouts.base.app')
@section('title', ' Edit Profil Petugas')

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
    <a class="breadcrumb-item" href="{{ base_url('PetugasController/indexProfil') }}">Profil</a>
    <span class="breadcrumb-item active">Edit Profil</span>
</nav>
<div class="block">
    <div class="block-header block-header-default bg-primary">
        <h3 class="block-title">Edit Profil</h3>
    </div>
    <div class="block-content">
        <form class="js-validation-signup px-30" method="POST" enctype="multipart/form-data" action="{{ base_url('PetugasController/editProfil') }}" aria-label="">
            <div class="form-group row">
                @if($petugas->foto)
                    <img src="{{ base_url('img/profil/').$petugas->foto }}" alt="" class="img-fluid rounded mx-auto d-bloc" style="width: 400px;">
                @else
                    <img src="{{ base_url('img/profil/user.jpeg') }}" alt="" class="img-fluid rounded mx-auto d-bloc" style="width: 400px;">
                @endif
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input value="{{ $petugas->nama }}" type="text" class="form-control" id="nama" name="nama" readonly>
                        <label for="nama">Nama</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: Hikmawan</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input value="{{ $petugas->email }}" type="text" class="form-control" id="email" name="email" readonly>
                        <label for="email">Email</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: hikmawan@gmail.com</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input value="{{ $petugas->telp }}" type="text" class="form-control" id="telp" name="telp">
                        <label for="telp">Nomer Telepon</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: 085850000000</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-material form-material-primary floating input-group">
                        <input value="{{ $petugas->alamat }}" type="text" class="form-control" id="alamat" name="alamat">
                        <label for="alamat">Alamat</label>
                        <div class="input-group-append">
                            <span class="input-group-text">Contoh: Desa Rejeni RT 12 RW 06 Krembung-Sidoarjo</span>
                        </div>
                    </div>
                </div>
            </div>

            <hr/><div class="row mb-2">
                <div class="col-3"></div>
                    <a class="col-3 btn btn-danger" href="{{ base_url('PetugasController/indexProfil') }}">Cancel</a>&nbsp
                    <button type="submit" class="col-3 btn bg-earth text-white">Submit</button>
                <div class="col-3"></div>
            </div>
        </form>
    </div>
</div>
@endsection