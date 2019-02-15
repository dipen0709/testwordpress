<?php

/*
 * niche Enqueue css and js files
 */

function niche_enqueue() {
    
    wp_enqueue_style('google-font-opensans','//fonts.googleapis.com/css?family=Open+Sans', array());
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.css', array());
    wp_enqueue_style('font-awesome', get_template_directory_uri() . '/css/font-awesome.css', array());
    wp_enqueue_style('niche-theme-default', get_template_directory_uri() . '/css/theme-default.css', array());
   

    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.js', array('jquery'));
	    wp_enqueue_script('niche-default', get_template_directory_uri() . '/js/default.js', array('jquery'));
	    	
    if (is_singular())
        wp_enqueue_script("comment-reply");
    
    if(is_page_template('page-template/front-page.php')){
        wp_enqueue_script('owl-carousel', get_template_directory_uri() . '/js/owl.carousel.js', array('jquery'));
        wp_enqueue_script('niche-homepage', get_template_directory_uri() . '/js/homepage.js', array('jquery'));
    }    
    niche_custom_css() ;
}

add_action('wp_enqueue_scripts', 'niche_enqueue');
