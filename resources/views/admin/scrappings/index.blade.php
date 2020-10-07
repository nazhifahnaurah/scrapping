@extends('layouts.admin')
@section('content')
@can('scrapping_create')
    <div style="margin-bottom: 10px;" class="row">
        <div class="col-lg-12">
            <a class="btn btn-success" href="{{ route("admin.scrappings.create") }}">
                {{ trans('global.add') }} {{ trans('global.scrapping.title_singular') }}
            </a>
        </div>
    </div>
@endcan
<div class="card">
    <div class="card-header">
        {{ trans('global.scrapping.title_singular') }} {{ trans('global.list') }}
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class=" table table-bordered table-striped table-hover datatable">
                <thead>
                    <tr>
                        <th width="10">

                        </th>
                        <th>
                            Kategori
                        </th>
                        <th>
                            Tahun Ajaran
                        </th>
                        <th>
                            Semester
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($scrappings as $key => $scrapping)
                        <tr data-entry-id="{{ $scrapping->id }}">
                            <td>

                            </td>
                            <td>
                                {{ $scrapping->kategori ?? '' }}
                            </td>
                            <td>
                                {{ $scrapping->ta ?? '' }}
                            </td>
                            <td>
                                {{ $scrapping->semester ?? '' }}
                            </td>
                            <td>
                            <a href="{{asset("file/input/".$scrapping->file)}}">{{ $scrapping->file ?? '' }}</a>
                                {{-- {{ $scrapping->file ?? '' }} --}}
                            </td>
                            <td>
                                @can('scrapping_show')
                                    <a class="btn btn-xs btn-primary" href="{{ route('admin.scrappings.show', $scrapping->id) }}">
                                        {{ trans('global.view') }}
                                    </a>
                                @endcan
                                @can('scrapping_edit')
                                    <a class="btn btn-xs btn-info" href="{{ route('admin.scrappings.edit', $scrapping->id) }}">
                                        {{ trans('global.edit') }}
                                    </a>
                                @endcan
                                @can('scrapping_delete')
                                    <form action="{{ route('admin.scrappings.destroy', $scrapping->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}">
                                    </form>
                                @endcan
                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('admin.scrappings.massDestroy') }}",
    className: 'btn-danger',
    action: function (e, dt, node, config) {
      var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
          return $(entry).data('entry-id')
      });

      if (ids.length === 0) {
        alert('{{ trans('global.datatables.zero_selected') }}')

        return
      }

      if (confirm('{{ trans('global.areYouSure') }}')) {
        $.ajax({
          headers: {'x-csrf-token': _token},
          method: 'POST',
          url: config.url,
          data: { ids: ids, _method: 'DELETE' }})
          .done(function () { location.reload() })
      }
    }
  }
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
@can('scrapping_delete')
  dtButtons.push(deleteButton)
@endcan

  $('.datatable:not(.ajaxTable)').DataTable({ buttons: dtButtons })
})

</script>
@endsection
