@extends('frontend.layouts.master')

@section('page-content')
    <!-- Hero going here-->
    <section id="" class="margin-top-bottom">
        <div class="container">
            <div class="hero-img d-flex justify-content-center align-items-center">
                <img src="{{$the::media($page->featured_image)}}" class="img-fluid" width="60%" alt="sadik-counsel-faq-image">
            </div>
        </div>
    </section>

    <?php
    $getFAQLocale = new \App\Helpers\locale();
    ?>

    <!--About going here-->
    <section id="about-content" class="margin-top-bottom my-5">
        <div class="container">
            <div class="row">
                <div class="col col-md-12">
                    <div class="accordion" id="accordionExample">

{{--                        <h1 class="text-center py-5">Frequently Asked Questions</h1>--}}
                        <h1 class="text-center py-5">{{$getFAQLocale->faq('faq_content', $getLang())}}</h1>

                        @php
                            $faqs = $Model('Post')::term('faqs');
                            // dump($faqs);
                        @endphp

                        @foreach($faqs as $faq)
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="heading{{ $faq->id }}">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{ $faq->id }}" aria-expanded="false" aria-controls="collapse{{ $faq->id }}">
{{--                                        <span>{{ $faq->name }}</span>--}}
                                        <span>{{ $getLang() == 'en' ? $faq->name : $Model('Post')::customField('faq_subtitle_bangla', $faq->id) }}</span>
                                    </button>
                                </h2>
                                <div id="collapse{{ $faq->id }}" class="accordion-collapse collapse" aria-labelledby="heading{{ $faq->id }}" data-bs-parent="#accordionExample">
{{--                                    <div class="accordion-body">--}}
{{--                                        {{ $faq->description }}--}}
{{--                                    </div>--}}
                                    <div class="accordion-body">
                                        {{ $getLang() == 'en' ? $faq->description : $Model('Post')::customField('faq_description_bangla', $faq->id) }}
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </section>

    <style>

    </style>
    <!--End About going here-->

@endsection
