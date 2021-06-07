

"use strict"; // Start of use strict





// 1. gallery fancybox activator 

function GalleryFancyboxActivator() {

    var galleryFcb = $('.fancybox');

    if (galleryFcb.length) {

        galleryFcb.fancybox({

            openEffect: 'elastic',

            closeEffect: 'elastic',

            helpers: {

                media: {}

            }

        });

    }

}





// 2. gallery

function fleetGallery() {

    if ($('.mixit-gallery').length) {

        $('.mixit-gallery').mixItUp();

    };

}



//LightBox / Fancybox

if ($('.lightbox-image').length) {

    $('.lightbox-image').fancybox({

        openEffect: 'fade',

        closeEffect: 'fade',

        helpers: {

            media: {}

        }

    });

}



// 3. Responsive Video

function respnsiveVideo() {

    if ($('.responsive-video-box').length) {

        $('.responsive-video-box').fitVids();

    }

}



// 4. Video Fancybox

function videoFancybox() {

    if ($("a.video-fancybox").length) {

        $("a.video-fancybox").click(function () {

            $.fancybox({

                'padding': 0,

                'autoScale': false,

                'transitionIn': 'none',

                'transitionOut': 'none',

                'title': this.title,

                'width': 680,

                'height': 495,

                'href': this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),

                'type': 'swf',

                openEffect: 'elastic',

                closeEffect: 'elastic',

                helpers: {

                    media: {}

                },

                'swf': {

                    'wmode': 'transparent',

                    'allowfullscreen': 'true'

                }

            });



            return false;

        });

    };

}





// Scroll to top

function scrollToTop() {

    if ($('.scroll-top').length) {



        //Check to see if the window is top if not then display button

        $(window).scroll(function () {

            if ($(this).scrollTop() > 200) {

                $('.scroll-top').fadeIn();

            } else {

                $('.scroll-top').fadeOut();

            }

        });



        //Click event to scroll to top

        $('.scroll-top').click(function () {

            $('html, body').animate({ scrollTop: 0 }, 1500);

            return false;

        });

    }

}





function galleryMasonaryLayout() {

    if ($('.masonary-layout').length) {

        $('.masonary-layout').isotope({

            layoutMode: 'masonry'

        });

    }



    if ($('.post-filter').length) {

        $('.post-filter li').children('span').click(function () {

            var Self = $(this);

            var selector = Self.parent().attr('data-filter');

            $('.post-filter li').children('span').parent().removeClass('active');

            Self.parent().addClass('active');





            $('.filter-layout').isotope({

                filter: selector,

                animationOptions: {

                    duration: 500,

                    easing: 'linear',

                    queue: false

                }

            });

            return false;

        });

    }



    if ($('.post-filter.has-dynamic-filter-counter').length) {

        // var allItem = $('.single-filter-item').length;



        var activeFilterItem = $('.post-filter.has-dynamic-filter-counter').find('li');



        activeFilterItem.each(function () {

            var filterElement = $(this).data('filter');

            console.log(filterElement);

            var count = $('.gallery-content').find(filterElement).length;



            $(this).children('span').append('<span class="count"><b>' + count + '</b></span>');

        });

    };

}







// instance of fuction while Document ready event	

jQuery(document).ready(function () {

    (function ($) {



        fleetGallery();

        GalleryFancyboxActivator();

        respnsiveVideo();

        videoFancybox();

        scrollToTop();



    })(jQuery);

});



// instance of fuction while Window Load event

jQuery(window).load(function () {

    (function ($) {



        galleryMasonaryLayout();

    })(jQuery);

});




(function ($) {
    'use strict';
    $('.owl-carouselss').owlCarousel({
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            320: {
                items: 2
            },
            520: {
                items: 3
            },
            768: {
                items: 4
            },
            1000: {
                items: 6
            }
        }
    })

    if ($('.owl_carouselss_prev').length) {
        var prev = $('.owl_carouselss_prev');
        prev.on('click', function () {
            $('.owl-carouselss').trigger('prev.owl.carousel');
        });
    }

    if ($('.owl_carouselss_next').length) {
        var next = $('.owl_carouselss_next');
        next.on('click', function () {
            $('.owl-carouselss').trigger('next.owl.carousel');
        });
    }

})(jQuery);

(function ($) {
    'use strict';
    $('.owl-carousels').owlCarousel({
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            320: {
                items: 2
            },
            520: {
                items: 3
            },
            768: {
                items: 4
            },
            1000: {
                items: 6
            }
        }
    })

    if ($('.owl_carousels_prev').length) {
        var prev = $('.owl_carousels_prev');
        prev.on('click', function () {
            $('.owl-carousels').trigger('prev.owl.carousel');
        });
    }

    if ($('.owl_carousels_next').length) {
        var next = $('.owl_carousels_next');
        next.on('click', function () {
            $('.owl-carousels').trigger('next.owl.carousel');
        });
    }

})(jQuery); 

(function ($) {
    'use strict';
    $('.owl_carousel_m').owlCarousel({
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            320: {
                items: 2
            },
            520: {
                items: 3
            },
            768: {
                items: 4
            },
            1000: {
                items: 6
            }
        }
    })

    if ($('.owl_carousel_m_prev').length) {
        var prev = $('.owl_carousel_m_prev');
        prev.on('click', function () {
            $('.owl_carousel_m').trigger('prev.owl.carousel');
        });
    }

    if ($('.owl_carousel_m_next').length) {
        var next = $('.owl_carousel_m_next');
        next.on('click', function () {
            $('.owl_carousel_m').trigger('next.owl.carousel');
        });
    }

})(jQuery); 
