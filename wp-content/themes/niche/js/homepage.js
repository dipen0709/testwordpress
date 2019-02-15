jQuery(document).ready(function () {
    jQuery("#our-blog-gallery").owlCarousel({
        autoPlay: 3000, //Set AutoPlay to 3 seconds
        items: 2,
        itemsDesktop: [1199, 2],
        itemsDesktopSmall: [979, 1],
        navigation: false,
        responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:2,
            nav:false
        },
        1000:{
            items:2,
            nav:true,
            loop:false
        }
    }
    });
    var owl = jQuery("#our-blog-gallery");
	owl.owlCarousel();
	// Custom Navigation Events
    jQuery(".next").click(function () {
        owl.trigger('owl.next');
    });
    jQuery(".prev").click(function () {
        owl.trigger('owl.prev');
    });
});
