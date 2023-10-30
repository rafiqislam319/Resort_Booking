
<!-- Scripts going here    -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h555rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://rawgit.com/kottenator/jquery-circle-progress/1.2.2/dist/circle-progress.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>




{{--following jquery code has writen for Home page progress bar animation--}}
<script type="text/javascript">
    $(document).ready(function ($) {

        function enTobnCoonvert(enValue){
            let en = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
            let bn = ['১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '০'];
            let enValueSplit = enValue.split('');
            let convert = enValueSplit.map(function(item){
                let getEnIndex = en.indexOf(item);
                return bn[getEnIndex];
            })
            return convert.join('');
        }

        function animateElements() {
            $('.progressbar').each(function () {
                var elementPos = $(this).offset().top;
                var topOfWindow = $(window).scrollTop();
                var percent = $(this).find('.circle').attr('data-percent');
                var animate = $(this).data('animate');
                if (elementPos < topOfWindow + $(window).height() - 30 && !animate) {
                    $(this).data('animate', true);
                    $(this).find('.circle').circleProgress({
                        // startAngle: -Math.PI / 2,
                        value: percent / 100,
                        size : 200,
                        thickness: 5,
                        fill: {
                            color: '#82A93C'
                        }
                    }).on('circle-animation-progress', function (event, progress, stepValue) {
                        // $(this).find('strong').text((stepValue*100).toFixed(0) + "%");
                        // $(this).find('strong').text((stepValue*100).toFixed(0) + "+");
                        let getDigit = (stepValue*100).toFixed(0);
                        let getSelectedVerson = $('.lang_select.active').attr('data-id');
                            getDigit = getSelectedVerson == 'en' ? getDigit : enTobnCoonvert(getDigit);
                            $(this).find('strong').text(getDigit + "+");

                    }).stop();
                }
            });
        }



        animateElements();
        $(window).scroll(animateElements);


        //ensure to click on checkbox before form submit
        let tosCheck = $('.contact_accept input#accept');
        let contactStoreBtn = $('button.sendBtn');

        contactStoreBtn.attr('disabled',true);

        tosCheck.on('change', () => {
            let checked = $('input#accept').is(':checked')

            if(checked){
                contactStoreBtn.attr('disabled',false);
            }else {
                contactStoreBtn.attr('disabled',true);
            }
        })



       //ajax part for submit form
        $('#contact-form').submit(function(event) {
            event.preventDefault();

            var form = $(this)//$('form#contact-form');


            // var name = $('#contact-form .client_name').val();
            // var email = $('.client_email').val();
            // var phone = $('.client_phone').val();
            // var service = $('.client_service').val();
            // var details = $('.details').val();


            var formData = new FormData(form[0]);
            // console.log(name);

            $.ajax({
                url: form.attr('action'),
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                dataType: 'json',
                success: function(response) {
                    form.hide();
                    $('#success-message').show();
                },
            });
        });



        //for multiple atachment
        $('.addButton').click(function(){
            var htmlData = $('.duplicate').html()
            $('.increment').after(htmlData)
        })
        //remove duplicate field
        $('body').on('click', '.removeButton', function (){
            $(this).parents('.incrementField').remove()
        })

        //for validation
            $("#contact-form").validate();



    });


    //carusal
    var myCarousel = document.querySelector('.myCarousel')
    var carousel = new bootstrap.Carousel(myCarousel, {
        interval: 2000,
        wrap: false
    })

</script>
