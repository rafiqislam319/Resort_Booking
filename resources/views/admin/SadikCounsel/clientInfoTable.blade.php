@extends('admin.layouts.master')

@section('site-title')

@endsection

@section('page-content')
    <div class="card">
        <div class="card-header card-info">
            <h3 class="card-title panel-title float-left">  </h3>
        </div>
        <div class="card-body table-responsive p-0">
            <table class="table table-head-fixed table-hover table-sm">
                <thead>
                <tr>
                    <th>S/N</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @php($i = 1)
                @foreach($clientDetails as $key =>  $clientDetail)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$clientDetail->name}}</td>
                        <td>{{$clientDetail->email}}</td>
                        <td>{{$clientDetail->phone}}</td>

                        <td class="align-middle">
                            <a href="{{ route('admin_clientDetails', ['id' => $clientDetail->id]) }}" class="badge alert-success"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                @endforeach

                </tbody>

            </table>

        </div>
        <div class="card-footer clearfix">
{{--            //following is for pagination--}}
            {{ $clientDetails->links() }}
        </div>

    </div>

@endsection

