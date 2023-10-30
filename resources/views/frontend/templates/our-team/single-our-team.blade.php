<div class="container mt-5 mb-5 mb-sm-0">
    <div class="row">
        <div class="col-md-4">
            <img src="{{$the::media($page->featured_image)}}" alt="Profile Image" class="img-fluid rounded-circle">
        </div>

        <?php
        $getTeamLocalce = new \App\Helpers\locale();
        ?>

        <div class="col-md-8">
{{--            <h1>{{$page->name}}</h1>--}}
            <h1>{{$getLang() == 'en' ? $page->name : $Model('Post')::customField('team_title_bangla', $page->id)}}</h1>
{{--            <div><strong>Designation: </strong>{{ $getLang() == 'en' ? $Model('Post')::customField('designation', $page->id) : $Model('Post')::customField('designation_bangla', $page->id) }}</div>--}}



            <div><strong>{{ $getTeamLocalce->team('designation', $getLang()) }}: </strong>{{ $getLang() == 'en' ? $Model('Post')::customField('designation', $page->id) : $Model('Post')::customField('designation_bangla', $page->id) }}</div>

            <div><strong>{{$getTeamLocalce->team('degrees', $getLang())}}: </strong>{{ $getLang() == 'en' ? $Model('Post')::customField('degrees', $page->id) : $Model('Post')::customField('degree_bangla', $page->id) }}</div>

            <div><strong>{{$getTeamLocalce->team('chamber_location', $getLang())}}: </strong>{{ $getLang() == 'en' ? $Model('Post')::customField('chamber_location', $page->id) : $Model('Post')::customField('chamber_location_bangla', $page->id) }}</div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-md-12">
            <h2>{{$getTeamLocalce->team('about_me', $getLang())}}</h2>
{{--            <p>{!! $page->description  !!}</p>--}}
            <p>{!! $getLang() == 'en' ? $page->description : $Model('Post')::customField('team_description_bangla', $page->id)  !!}</p>
        </div>
    </div>
</div>
{{--@dump($page)--}}
