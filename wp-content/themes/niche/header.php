<?php
/**
 * The Header template for our theme
 */
$niche_options = get_option('niche_theme_options');
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo( 'charset' ); ?>"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="profile" href="http://gmpg.org/xfn/11">
        <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">             
        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>
        <header class="<?php if(true){ echo 'transparent'; } else {echo 'no-transparent';} ?>">
            <nav id="header" class="navbar main-nav fixed-header" style="position: absolute; top: auto;">
                <div class="container less-padding">
                    <div class="header-logo">
                        <?php if(has_custom_logo()){
                        the_custom_logo();
                    }  if(display_header_text()) { ?>
                            <a href="<?php echo esc_url(home_url('/')); ?>">
									<h3 class="site-title logo-box"><?php bloginfo( 'name' ); ?></h3>
									<span class="site-description"><?php bloginfo( 'description' ); ?></span>
                            </a>
                        <?php }  ?>                        
                    </div>
                    <div class=" header-menu header-navigation">
                        <div id="mainmenu" classold=="collapse navbar-collapse">
                        <?php
                            $niche_defaults = array(
                                'theme_location'  => 'primary',                            
                                'container'       => 'ul',                            
                                'echo'            => true,
                                'menu_class'      => 'navbar-nav',
                                'depth'           => 0,
                            );                               
                            wp_nav_menu($niche_defaults);
                         ?>
                        </div><!-- /.nav-collapse -->                                                 
                    </div>                    
                </div>
            </nav>
        </header>
        <?php if (get_header_image()) { ?>
                <div class="custom-header-img">
                    <a href="<?php echo esc_url(home_url('/')); ?>" rel="home">
                        <img src="<?php header_image(); ?>" width="<?php echo esc_attr(get_custom_header()->width); ?>" height="<?php echo esc_attr(get_custom_header()->height); ?>" alt="<?php the_title_attribute(); ?>">
                    </a>
                </div>
<?php }