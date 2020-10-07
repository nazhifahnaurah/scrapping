@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('global.product.title_singular') }}
    </div>

    <div class="card-body">
        <form action="{{ route("admin.scrappings.store") }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group {{ $errors->has('kategori') ? 'has-error' : '' }}">
                <label for="kategori">Kategori*</label>
                <select class="form-control {{ $errors->has('kategori') ? 'is-invalid' : '' }}" name="kategori" id="kategori" required>
                    <option value disabled {{ old('kategori', null) === null ? 'selected' : '' }}>Silahkan Pilih</option>
                    @foreach(App\Result::KATEGORI_SELECT as $key => $label)
                        <option value="{{ $key }}" {{ old('kategori', '') === (string) $key ? 'selected' : '' }}>{{ $label }}</option>
                    @endforeach
                </select>
                @if($errors->has('kategori'))
                    <p class="help-block">
                        {{ $errors->first('kategori') }}
                    </p>
                @endif
            </div>
            <div class="form-group {{ $errors->has('ta') ? 'has-error' : '' }}">
                <label for="ta">Tahun Akademik*</label>
                <select class="form-control {{ $errors->has('ta') ? 'is-invalid' : '' }}" name="ta" id="ta" required>
                    <option value disabled {{ old('ta', null) === null ? 'selected' : '' }}>Silahkan Pilih</option>
                    @foreach(App\Result::TA_SELECT as $key => $label)
                        <option value="{{ $key }}" {{ old('ta', '') === (string) $key ? 'selected' : '' }}>{{ $label }}</option>
                    @endforeach
                </select>
                @if($errors->has('ta'))
                    <p class="help-block">
                        {{ $errors->first('ta') }}
                    </p>
                @endif
            </div>
            <div class="form-group {{ $errors->has('semester') ? 'has-error' : '' }}">
                <label for="semester">Semester*</label>
                <select class="form-control {{ $errors->has('semester') ? 'is-invalid' : '' }}" name="semester" id="semester" required>
                    <option value disabled {{ old('semester', null) === null ? 'selected' : '' }}>Silahkan Pilih</option>
                    @foreach(App\Result::SEMESTER_SELECT as $key => $label)
                        <option value="{{ $key }}" {{ old('semester', '') === (string) $key ? 'selected' : '' }}>{{ $label }}</option>
                    @endforeach
                </select>
                @if($errors->has('semester'))
                    <p class="help-block">
                        {{ $errors->first('semester') }}
                    </p>
                @endif
            </div>
              <div class="form-group">
                    <div class="custom-file">
                    <input name="file" id="file-upload" onclick="ganti(this)" type="file" class="custom-file-input @error('file') is-invalid @enderror" aria-describedby="inputGroupFile01" lang="in">
                    <label class="custom-file-label" for="file">Pilih foto</label>
                    </div>
                    @error('file')
                    <span class="invalid-feedback invalid-upload" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
            </div>
            <div>
                <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    function ganti(input){
    $("#file-upload").on("change", function(){
      // Name of file and placeholder
      var file = this.files[0].name;
      var dflt = $(this).attr("placeholder");
      if($(this).val()!=""){
        $(this).next().text(file);
        var reader = new FileReader();

    reader.onload = function (e) {
        $('#blah').attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
      } else {
        $(this).next().text(dflt);
      }
    });
    }
        </script>
@endsection
