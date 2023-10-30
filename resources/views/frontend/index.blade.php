@extends('frontend.layouts.master')

@section('site-title')
{{ $the::settings('site_name') .' | '. $the::settings('site_description')}}
@endsection


@section('page-content')


{{--@include('frontend.homepage.slider')--}}

{{--@include('frontend.homepage.shop')--}}
{{--@include('frontend.homepage.questionarie-block')--}}
{{--@include('frontend.homepage.categories')--}}
{{--@include('frontend.homepage.faq')--}}


@include('frontend.homepage.hero_section')
@include('frontend.homepage.body_content')
@include('frontend.homepage.featured-service')


@endsection
