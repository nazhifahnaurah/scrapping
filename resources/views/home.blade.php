@extends('layouts.admin')
@section('content')
<div class="content">
    <div class="row">
        <div class="col-lg-12">
            <div class="links">
                <?php
                use Carbon\Carbon;
                $now=Carbon::now();
                ?>
                <h2><a href="{{route('admin.scrappings.start',[$now->format('y_m_d_h_i_s')])}}">Scrap Now!</a></h2>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent

@endsection
