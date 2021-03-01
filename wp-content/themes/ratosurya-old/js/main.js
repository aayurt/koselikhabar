$(document).ready(function() {
	//scrollTo top function
	// hide #back-top first
	$(".scrollToTop").hide();

	// fade in #back-top
	$(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 100) {
				$('.scrollToTop').fadeIn();
			} else {
				$('.scrollToTop').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('.scrollToTop').click(function() {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});



	$('.navbar .dropdown').hover(function() {
			$(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();

		}, function() {
			$(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideUp();

		});

		$('.navbar .dropdown > a').click(function(){
			location.href = this.href;
		});



	//add class on image

	$("img").addClass("img-responsive");


    //owl-carousel

    $('.owl-carousel').owlCarousel({
        navText : ["<i class='fa fa-angle-right'></i>","<i class='fa fa-angle-left'></i>"],
        rtl:true,
        loop:true,
        margin:10,
        nav:true,
        autoplay: true,
        autoplayTimeout: 5000,
        responsive:{
            0:{
                items:3
            },
            600:{
                items:5
            },
            1000:{
                items:10
            }
        }
    })


});
