@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('global.product.title_singular') }}
    </div>

    <div class="card-body">
        <form action="{{ route("admin.products.store") }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label>Kategori*</label>
                <select class="form-control">
                  <option value="1">Dikjar</option>
                  <option value="2">Pengabdian</option>
                  <option value="3">Penelitian</option>
                  <option value="4">Penunjang</option>
                </select>
              </div>
              <div class="form-group">
                <label>Tahun Ajaran*</label>
                <select class="form-control">
                    <option value="1">2020-2021</option>
                    <option value="2">2019-2020</option>
                    <option value="3">2018-2019</option>
                    <option value="4">2017-2018</option>
                </select>
            </div>
            <div class="form-group">
                <label>Semester*</label>
                <select class="form-control">
                    <option value="1">Ganjil Rencana</option>
                    <option value="2">Genap Rencana</option>
                    <option value="3">Ganjil Laporan</option>
                    <option value="4">Genap Laporan</option>
                </select>
              </div>
            <div class="form-group">
                <label for="exampleInputFile">File input*</label>
                <div class="input-group">
                  <div class="custom-file">
                    <input type="file" class="custom-file-input" id="exampleInputFile">
                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                  </div>
                  <div class="input-group-append">
                    <span class="input-group-text" id="">Upload</span>
                  </div>
                </div>
              </div>
            <div>
                <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
            </div>
        </form>
    </div>
</div>
@endsection
