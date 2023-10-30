<form action="{{ route('contact_submit') }}" method="POST" class="col-lg-11" enctype="multipart/form-data" id="contact-form">
    @csrf
    <div class="row">
        <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12">
            <div class="mb-3">
                <input
                    type="text"
                    class="form-control client_name"
                    name="name"
                    placeholder="What is your name?*"
                    required
                />
            </div>
        </div>
        <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12">
            <div class="mb-3">
                <input
                    type="email"
                    class="form-control client_email"
                    name="email"
                    placeholder="What is your email?*"
                />
            </div>
        </div>
        <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12">
            <div class="mb-3">
                <input
                    type="text"
                    class="form-control client_phone"
                    name="phone"
                    placeholder="What is your phone number?*"
                    required
                />
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-8">
            <div class="mb-3">

                @php
                    $services = $Model('Post')::term('service');
//                                    dump($services);

                @endphp

                <select class="form-control client_service" name="service" required>
                    <option value="">Select Service</option>
                    @foreach ($services as $service)
                        <option value="{{ $service->id }}">{{ $service->name }}</option>
                    @endforeach
                </select>


            </div>
        </div>
        <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-8">
            <div class="mb-3 input-group increment">
                <input
                    type="file"
                    class="form-control myFile"
                    name="filenames[]" multiple
                    accept=".pdf,.doc,.docx,.ppt,.jpg,.jpeg,.png,.zip"
                />
                <div class="input-group-btn ms-1">
                    <button type="button" class="btn btn-success addButton">Add</button>
                </div>
            </div>

{{--            for multiple file upload--}}
            <div class="duplicate d-none">
                <div class="mb-3 input-group incrementField">
                    <input
                        type="file"
                        class="form-control myFile"
                        name="filenames[]" multiple
                        accept=".pdf,.doc,.docx"
                    />
                    <div class="input-group-btn ms-1">
                        <button type="button" class="btn btn-danger removeButton">Remove</button>
                    </div>
                </div>
            </div>
            {{--      for multiple file upload ends--}}


        </div>
    </div>
    <div class="row">
        <div class="col col-sm-12">
            <div class="mt-3 mb-3">
                    <textarea
                        class="form-control details"
                        name="details"
                        rows="3"
                        placeholder="Case Details"
                    ></textarea>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12">
            <div class="contact_accept">
                <input type="checkbox" name="accept" id="accept"/>
                <label for="accept"
                >I have read and accept the
                    <a href="#" class="text-decoration-none"
                    >Terms of Service & Privacy Policy</a
                    ></label
                >
            </div>
        </div>
        <div
            class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 d-flex justify-content-start justify-content-sm-end"
        >
            <div class="button">
                <button type="submit" class="btn btn-primary sendBtn">Send message</button>
            </div>
        </div>
    </div>
</form>
<div id="success-message" class="alert alert-success text-center" style="display: none;">
    <strong>Success!</strong> Your information has successfully submitted, We will contact you soon!
</div>


