
{{--{{$page->id}}--}}


<section class="py-5">
    <div class="container">
{{--        <h1 class="text-center h1">{{$page->name}}</h1>--}}
        <h1 class="text-center h1">{{$getLang() == 'en' ? $page->name : $Model('Post')::customField('service_title_bangla', $page->id)}}</h1>
        <p class="pt-5 service-paragraph">
{{--            {!! $page->description  !!}--}}
            {!! $getLang() == 'en' ? $page->description : $Model('Post')::customField('service_description_bangla', $page->id)  !!}

        </p>
    </div>
</section>
