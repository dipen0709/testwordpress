<?php
/*
 * Set up the content width value based on the theme's design.
 */
if (!function_exists('niche_setup')) :
    function niche_setup() {
        global $content_width;
        if (!isset($content_width)) {
            $content_width = 870;
        }
        // Make niche theme available for translation.
        load_theme_textdomain('niche', get_template_directory() . '/languages');

        // This theme styles the visual editor to resemble the theme style.
        add_editor_style(array('css/editor-style.css', niche_font_url()));

        // Add RSS feed links to <head> for posts and comments.
        add_theme_support('automatic-feed-links');

        // register menu 
        register_nav_menus(array(
            'primary' => __('Top Header Menu', 'niche'),
        ));

        // Featured image support
        add_theme_support('post-thumbnails');
        add_image_size('niche-thumbnail-image', 420, 247, true);
        add_image_size('niche-blog-thumbnail-image', 770, 390, true);
        add_image_size('niche-blog-thumbnail-image-home', 569, 298, true);
        add_image_size('niche-slider-image-home', 1350, 550, true);

        // Switch default core markup for search form, comment form, and commen, to output valid HTML5.
        add_theme_support('html5', array(
            'search-form', 'comment-form', 'comment-list',
        ));

        add_theme_support('custom-background', apply_filters('niche_custom_background_args', array(
            'default-color' => 'f5f5f5',
        )));

        // Add support for featured content.
        add_theme_support('featured-content', array(
            'featured_content_filter' => 'niche_get_featured_posts',
            'max_posts' => 6,
        ));
        add_theme_support( 'custom-logo', array(
            'height'      => 220,
            'width'       => 120,
            'flex-height' => true,
            'flex-width'  => true,
            'priority'    => 11,
            'header-text' => array( 'site-title', 'site-description' ), 
        ) );
        // This theme uses its own gallery styles.
        add_filter('use_default_gallery_style', '__return_false');

        /* slug setup */
        add_theme_support('title-tag');
    }
endif; // niche_setup
add_action('after_setup_theme', 'niche_setup');

function niche_nav_wrap() 
{
    $wrap  = '<ul id="%1$s" class="%2$s">%3$s';

    $wrap .= '<li class="menu-search-bar">';
    $wrap .= '<a id="search-label" href="javascript:void(0)">';
    $wrap .= '<i class="fa fa-search"></i>';
    $wrap .= '</a>'; 
    $wrap .= '<div class="search-bar">';           
    $wrap .= '<form method="get" action="'. home_url() .'">';
    $wrap .= '<input type="text" value="'. get_search_query() .'" class="search-text-box" name="s" id="s"  placeholder="'. __("Search here","niche") .'">';  
    $wrap .= '</form>';
    $wrap .= '</div>';
    $wrap .= '</li>';

    $wrap .= '</ul>';

    return $wrap;
}
/**
 * Register OpenSans Google font for niche.
 */
function niche_font_url() {
    $niche_font_url = '';
    /*
     * Translators: If there are characters in your language that are not supported
     * by OpenSans, translate this to 'off'. Do not translate into your own language.
     */
    if ('off' !== _x('on', 'OpenSans font: on or off', 'niche')) {
        $niche_font_url = add_query_arg('family', urlencode('OpenSans:300,400,700,900,300italic,400italic,700italic'), "//fonts.googleapis.com/css?family=Open+Sans");
    }
    return $niche_font_url;
}

/* Set size of characher in excerpt */
function niche_excerpt_length($length) {
    return 60;
}
add_filter('excerpt_length', 'niche_excerpt_length', 999);

/* readmore button if more content */
function niche_excerpt_more() {    
	
	return '&hellip;<div class="theme-button"><a href="'. esc_url( get_permalink() ) . '" class="transparent-btn">Read more ></a></div>';
}
add_filter("excerpt_more", "niche_excerpt_more");

add_action( 'admin_menu', 'niche_admin_menu');
function niche_admin_menu( ) {
    add_theme_page( __('Pro Feature','niche'), __('Niche Pro','niche'), 'manage_options', 'niche-buynow', 'niche_buy_now', 300 );   
}
function niche_buy_now(){ ?>
<div class="niche_pro_version">
  <a href="<?php echo esc_url('https://fasterthemes.com/wordpress-themes/niche/'); ?>" target="_blank">
    <img src ="<?php echo esc_url(get_template_directory_uri().'/images/niche-pro-features.png') ?>" width="70%" height="auto" />
  </a>
</div>
<?php
}


/* * * Enqueue css and js files ** */
require get_template_directory() . '/functions/enqueue-files.php';

require get_template_directory() . '/functions/theme-default-setup.php';

require get_template_directory() . '/functions/breadcrumbs.php';

require get_template_directory() . '/functions/custom-header.php';

/*** Customizer ***/
require get_template_directory() . '/functions/theme-customizer.php';

/*** Custom Widgets ***/
require get_template_directory() . '/functions/custom-widgets.php';