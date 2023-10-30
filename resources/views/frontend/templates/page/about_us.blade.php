@extends('frontend.layouts.master')

@section('page-content')
    <!-- Hero going here-->
    <section id="" class="margin-top-bottom">
        <div class="container">
            <div class="hero-img d-flex justify-content-center align-items-center">
                <img src="{{$the::media($page->featured_image)}}" class="img-fluid" width="60%" alt="sadik-counsel-about-us">
            </div>
        </div>
    </section>
    <!--End Hero going here-->
    <div class="about_vline"></div>
    <div class="about_hline"></div>

    <!--About going here-->
    <section id="about-content" class="margin-top-bottom">
        <div class="container">
            <div class="row">
                <div class="col col-md-12">
                    <div class="about-content">
{{--                        <h1>{{$page->name}}</h1>--}}
                        <h1>{{$getLang() == 'en' ? $page->name : $Model('Post')::customField('page_title_bangla', $page->id)}}</h1>
{{--                        {!! $page->description !!}--}}
                        {!! $getLang() == 'en' ? $page->description : $Model('Post')::customField('page_description_bangla', $page->id) !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End About going here-->

@endsection
