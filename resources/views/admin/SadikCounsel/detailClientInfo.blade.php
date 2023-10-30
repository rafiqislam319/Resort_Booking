{{--@extends('admin.layouts.master')--}}

{{--@section('site-title')--}}

{{--@endsection--}}

{{--@section('page-content')--}}
{{--    <div class="card">--}}
{{--        <div class="card-header card-info">--}}
{{--            <h3 class="card-title panel-title float-left">  </h3>--}}
{{--        </div>--}}
{{--        <div class="card-body table-responsive p-0">--}}
{{--            <table class="table table-head-fixed table-hover table-sm">--}}
{{--                <thead>--}}
{{--                <tr>--}}
{{--                    <th>S/N</th>--}}
{{--                    <th>Service</th>--}}
{{--                    <th>Details</th>--}}
{{--                    <th>Files</th>--}}
{{--                </tr>--}}
{{--                </thead>--}}
{{--                <tbody>--}}
{{--                @foreach($details as $detail)--}}
{{--                    <tr>--}}
{{--                        <td>#</td>--}}
{{--                        <td>{{ $Model('Post')::firstWhere('id', $detail->service)->name ?? NULL }}</td>--}}
{{--                        <td>{{ $detail->details }}</td>--}}
{{--                        <td>--}}
{{--                            @foreach ($detail->files as $file)--}}
{{--                                <a target="_blank" href="{{asset('/public/files/'.$file->filenames)}}">--}}
{{--                                    {{ $file->filenames }}--}}
{{--                                </a>--}}
{{--                            @endforeach--}}
{{--                        </td>--}}
{{--                    </tr>--}}
{{--                @endforeach--}}


{{--                </tbody>--}}
{{--            </table>--}}
{{--        </div>--}}
{{--        <div class="card-footer clearfix">--}}
{{--        </div>--}}

{{--    </div>--}}

{{--@endsection--}}






@extends('admin.layouts.master')

@section('site-title')
    Client Details Information
@endsection

@section('page-content')

    <div class="row">


        <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    {{ $Model('Post')::firstWhere('id', $details->service)->name ?? NULL }}
                </div>
                <div class="card-body">
                    <div class="row">
                        @foreach($details->files as $file)
                        <div class="product-images col-md-2 col-3" style="background: #f2f2f2;">
                            <a href="{{asset('/public/uploads/images/').'/'}}">
                                    <div class="document danger">
                                        <div class="document-body" style="cursor: auto">

                                                @if ($file->file_type)
                                                    @switch($file->file_type)
                                                        @case('pdf')
                                                            <i class="fa fa-file-pdf text-danger">
                                                                </i>
                                                        @break

                                                            @case('docx')
                                                                <i class="fa fa-file-word text-primary"></i>
                                                                @break
                                                        @case('doc')
                                                            <i class="fa fa-file-word text-primary"></i>
                                                            @break

                                                            @case('jpg')
                                                                <i class="fa fa-file-image text-success"></i>
                                                                @break
                                                        @case('jpeg')
                                                            <i class="fa fa-file-image text-success"></i>
                                                            @break
                                                        @case('png')
                                                            <i class="fa fa-file-image text-success"></i>
                                                            @break
                                                        @case('JPEG')
                                                            <i class="fa fa-file-image text-success"></i>
                                                            @break
                                                        @endswitch
                                                    @endif



                                            </div>
                                        </div>
                                        <span class="p-3">
{{--                                           {{$file->filenames }}--}}
                                            <a target="_blank" href="{{asset('/public/files/'.$file->filenames)}}">
                                                {{ $file->filenames }}
                                            </a>
                                        </span>

                                </a>
                            </div>
                            @endforeach
                                <span class="p-3">
                                    Description: {{$details->details }}
                                </span>

                        </div>
                    </div>
                    <div class="card-footer">

                    </div>
                </div>
            </div>
        </div>
        <?php echo \App\CustomClass\MediaManager::mediaScript();?>
    @endsection

    @section('cusjs')
        <!-- Ekko Lightbox -->
        <link rel="stylesheet" href="{{asset('public/admin/plugins/ekko-lightbox/ekko-lightbox.css')}}">
        <!-- Ekko Lightbox -->
        <script src="{{asset('public/admin/plugins/ekko-lightbox/ekko-lightbox.min.js')}}"></script>
        <style>
            img.media{
                width: 200px;
                height: 200px;
                margin: 0 auto;
                object-fit: cover;

            }
        </style>
        <script>
            $(function () {
                $(document).on('click', '[data-toggle="lightbox"]', function(event) {
                    event.preventDefault();
                    $(this).ekkoLightbox({
                        alwaysShowClose: true,
                        size: "lg",
                    });
                });
            })
        </script>


        <style>
            .file-area  label {
                font-weight: 500;
                display: block;
                margin: 4px 0;
                text-transform: uppercase;
                font-size: 13px;
                overflow: hidden;
            }
            .file-area .file-dummy {
                width: 100%;
                padding: 30px;
                background: rgba(255, 255, 255, 0.2);
                border: 2px dashed rgba(255, 255, 255, 0.2);
                text-align: center;
                transition: background 0.3s ease-in-out;
            }

            .file-area input[type=file] {
                position: absolute;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                opacity: 0;
                cursor: pointer;
            }

            .file-area .file-dummy .success {
                display: none;
            }
            .file-area input[type=file]:valid + .file-dummy .default {
                display: none;
            }

            .file-area input[type=file]:valid + .file-dummy .success {
                display: inline-block;
            }

            .file-area input[type=file]:valid + .file-dummy {
                border-color: rgba(0, 255, 0, 0.4);
                background-color: rgba(0, 255, 0, 0.3);
            }




        </style>




        <style>
            .document {
                background-color: #fff;
                border-radius: 3px;
                border: 1px solid #dce2e9;
            }

            .document .document-body {
                height: 130px;
                text-align: center;
                border-radius: 3px 3px 0 0;
                background-color: #fdfdfe;
            }

            .document .document-body i {
                font-size: 45px;
                line-height: 120px;
            }

            .document .document-body img {
                width: 100%;
                height: 100%;
            }

            .document .document-footer {
                border-top: 1px solid #ebf1f5;
                height: 46px;;
                padding: 5px 12px;
                border-radius: 0 0 2px 2px;
                position: relative;
            }

            .document .document-footer .document-name {
                display: block;
                margin-bottom: 0;
                font-size: 15px;
                font-weight: 600;
                width: 100%;
                line-height: normal;
                overflow-x: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                color: #fff;
            }

            .document .document-footer .document-description {
                display: block;
                margin-top: -1px;
                font-size: 11px;
                font-weight: 600;
                color: #fff;
                width: 100%;
                line-height: normal;
                overflow-x: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
            .document .file-download {
                font-size: 32px;
                color: #fff;
                position: absolute;
                right: 10px;
            }
            .document.danger .document-footer {
                background-color: #b52828;
            }
        </style>

    @endsection


