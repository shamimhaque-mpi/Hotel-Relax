;(function($) {

    "use strict";

    

    

    var navbar=$('.header_menu, .middle_menu_area, .header_white_menu');

    var nav_offset_top = $('.header_menu, .middle_menu_area, .header_white_menu').offset().top + 710;

    /*-------------------------------------------------------------------------------

	  Navbar 

	-------------------------------------------------------------------------------*/



	navbar.affix({

	  offset: {

	    top: nav_offset_top,

	  }

	});





	navbar.on('affix.bs.affix', function() {

		if (!navbar.hasClass('affix')){

			navbar.addClass('animated slideInDown');

		}

	});



	navbar.on('affixed-top.bs.affix', function() {

	  	navbar.removeClass('animated slideInDown');

	  	

	});

    

    /*------- search form js -------*/

    $('.search_dropdown a').on('click', function(){

        if( $(this).parent().hasClass('open') ){

            $(this).parent().removeClass('open')

        }

        else{

            $(this).parent().addClass('open')

            $('.offcanvas_closer').addClass('show')

        }

        return false

    });

    /*----------------------------------------------------*/

    /*  Main Slider js

    /*----------------------------------------------------*/

    function main_slider(){

        if ( $('#main_slider').length ){

            $("#main_slider").revolution({

                sliderType:"standard",

                sliderLayout:"auto",

                delay:4000,

                disableProgressBar:"on",

                navigation: {

                    onHoverStop: 'off',

                    touch:{

                        touchenabled:"on"

                    },

                    arrows: {

                        style:"zeus",

                        enable:true,

                        hide_onmobile:true,

                        hide_under:767,

                        hide_onleave:true,

                        hide_delay:200,

                        hide_delay_mobile:1200,

                        tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',

                        left: {

                            h_align: "left",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        },

                        right: {

                            h_align: "right",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        }

                    },

                },

                responsiveLevels:[4096,1199,992,767,480],

                gridwidth:[1170,1000,750,700,300],

                gridheight:[760,760,760,600,500],

                lazyType:"smart",

                fallbacks: {

                    simplifyAll:"off",

                    nextSlideOnWindowFocus:"off",

                    disableFocusListener:false,

                }

            })

        }

    }

    main_slider();

    

    /*----------------------------------------------------*/

    /*  Main Slider js

    /*----------------------------------------------------*/

    function main_slider3(){

        if ( $('#main_slider3').length ){

            $("#main_slider3").revolution({

                sliderType:"fullwidth",

                sliderLayout:"auto",

                delay:4000,

                disableProgressBar:"on",

                navigation: {

                    onHoverStop: 'off',

                    touch:{

                        touchenabled:"on"

                    },

                    arrows: {

                        style:"zeus",

                        enable:true,

                        hide_onmobile:true,

                        hide_under:767,

                        hide_onleave:true,

                        hide_delay:200,

                        hide_delay_mobile:1200,

                        tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',

                        left: {

                            h_align: "left",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        },

                        right: {

                            h_align: "right",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        }

                    },

                },

                responsiveLevels:[4096,1199,992,767,480],

                gridwidth:[1170,1000,750,700,300],

                gridheight:[655,655,760,600,500],

                lazyType:"smart",

                fallbacks: {

                    simplifyAll:"off",

                    nextSlideOnWindowFocus:"off",

                    disableFocusListener:false,

                }

            })

        }

    }

    main_slider3();

    

    /*----------------------------------------------------*/

    /*  Main Slider js

    /*----------------------------------------------------*/

    function main_slider4(){

        if ( $('#main_slider4').length ){

            $("#main_slider4").revolution({

                sliderType:"fullwidth",

                sliderLayout:"auto",

                delay:4000,

                disableProgressBar:"on",

                navigation: {

                    onHoverStop: 'off',

                    touch:{

                        touchenabled:"on"

                    },

                    arrows: {

                        style:"zeus",

                        enable:true,

                        hide_onmobile:true,

                        hide_under:767,

                        hide_onleave:true,

                        hide_delay:200,

                        hide_delay_mobile:1200,

                        tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',

                        left: {

                            h_align: "left",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        },

                        right: {

                            h_align: "right",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        }

                    },

                },

                responsiveLevels:[4096,1199,992,767,480],

                gridwidth:[1170,1000,750,700,300],

                gridheight:[680,680,760,600,500],

                lazyType:"smart",

                fallbacks: {

                    simplifyAll:"off",

                    nextSlideOnWindowFocus:"off",

                    disableFocusListener:false,

                }

            })

        }

    }

    main_slider4();

    

    /*----------------------------------------------------*/

    /*  Main Slider js

    /*----------------------------------------------------*/

    function main_slider5(){

        if ( $('#main_slider5').length ){

            $("#main_slider5").revolution({

                sliderType:"fullwidth",

                sliderLayout:"auto",

                delay:5000,

                disableProgressBar:"on",

                navigation: {

                    onHoverStop: 'off',

                    touch:{

                        touchenabled:"on"

                    },

                    arrows: {

                        style:"zeus",

                        enable:true,

                        hide_onmobile:true,

                        hide_under:767,

                        hide_onleave:true,

                        hide_delay:200,

                        hide_delay_mobile:1200,

                        tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',

                        left: {

                            h_align: "left",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        },

                        right: {

                            h_align: "right",

                            v_align: "center",

                            h_offset: 50,

                            v_offset: 0

                        }

                    },

                },

                responsiveLevels:[4096,1199,992,767,480],

                gridwidth:[1170,1000,750,700,300],

                gridheight:[630,630,760,600,500],

                lazyType:"smart",

                fallbacks: {

                    simplifyAll:"off",

                    nextSlideOnWindowFocus:"off",

                    disableFocusListener:false,

                }

            })

        }

    }

    main_slider5(); 

})(jQuery)