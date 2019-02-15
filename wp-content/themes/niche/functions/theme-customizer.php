<?php
function niche_theme_customizer( $wp_customize ) {

	$wp_customize->add_panel('general',array(
        'title' => __( 'General', 'niche' ),
        'description' => __('General options','niche'),
        'priority' => 20, 
    )
  );

	$wp_customize->get_section('title_tagline')->panel = 'general';
  	$wp_customize->get_section('header_image')->panel = 'general';
  	$wp_customize->get_section('title_tagline')->title = __('Header & Logo','niche');
  	$wp_customize->get_section('static_front_page')->panel = 'general';

    /* sections */
    $wp_customize->add_section( 'niche_basic_section' , array(
    'title'       => __( 'Basic Settings', 'niche' ),
    'priority'    => 30,
	'capability'     => 'edit_theme_options',
  'panel'=>'general',
	) );
        
	
	$wp_customize->add_panel( 'home_id', array(
		'capability'     => 'edit_theme_options',
		'theme_supports' => '',
		'title'          => __('Home Page Settings','niche'),
		'description'    => '',
		'priority'    => 30,
	) );
	$wp_customize->add_section( 'niche_silder_section' , array(
		'title'       => __( 'Slider Section', 'niche' ),
		'priority'    => 30,
		'panel'  => 'home_id',
		'capability'     => 'edit_theme_options',
	) );

	$wp_customize->add_section( 'niche_perfection_section' , array(
		'title'       => __( 'Our path to Perfection', 'niche' ),
		'priority'    => 30,
		'panel'  => 'home_id',
		'capability'     => 'edit_theme_options',
	) );
    $wp_customize->add_section( 'niche_blog_section' , array(
		'title'       => __( 'Blog Section', 'niche' ),
		'priority'    => 30,
		'panel'  => 'home_id',
		'capability'     => 'edit_theme_options',
	) );
	

	/* basic section */
	
	/*------Scroll Logo Option---------*/
$wp_customize->add_setting('header_fix', array(
      'default' => false, 
      'capability'     => 'edit_theme_options',
      'sanitize_callback' => 'sanitize_text_field',
));
$wp_customize->add_control('header_fix', array(
    'label'   => esc_html__('Stick Header On Scroll?','niche'),
    'section' => 'title_tagline',
    'type'    => 'checkbox',
    'priority' => 20
));
	
	// breadcrumbs
	$wp_customize->add_setting( 'niche_breadcrumbs_image_bg',array(
		'sanitize_callback' => 'esc_url_raw',
		'capability'     => 'edit_theme_options',
		)
	 );
    $wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'niche_breadcrumbs_image_bg', array(
    'label'    => __( 'Breadcrumbs Backgroung Image (Recommended Size : 1350px * 200px)', 'niche' ),
    'section'  => 'niche_basic_section',
    'settings' => 'niche_breadcrumbs_image_bg',
	) ) );
	
	

	// blog title
	$wp_customize->add_setting( 'niche_blogtitle', array(
            'default'        => ' ',
            'sanitize_callback' => 'sanitize_text_field',
			'capability'     => 'edit_theme_options',
        ) );
   $wp_customize->add_control( 'niche_blogtitle', array(
		'label'   => __('Blog Title','niche'),
		'section' => 'niche_basic_section',
		'type'    => 'text',
        ) );
     

	// Social Section

	 //All our sections, settings, and controls will be added here
  $wp_customize->add_section(
    'niche_social_icons_section',
    array(
      'title' => __('Social Accounts', 'niche'),
      'priority' => 120,
      'description' => __( 'In first input box, you need to add FONT AWESOME shortcode which you can find ' ,  'niche').'<a target="_blank" href="'.esc_url('https://fortawesome.github.io/Font-Awesome/icons/').'">'.__('here' ,  'niche').'</a>'.__(' and in second input box, you need to add your social media profile URL.', 'niche').'<br />'.__(' Enter the URL of your social accounts. Leave it empty to hide the icon.' ,  'niche'),
      'panel' => 'footer'
    )
  );
$TopHeaderSocialIcon = array();
  for($i=1;$i <= 6;$i++):  
    $TopHeaderSocialIcon[] =  array( 'slug'=>sprintf('TopHeaderSocialIcon%d',$i),   
      'default' => '',   
      'label' => esc_html__( 'Social Account ', 'niche') .$i,   
      'priority' => sprintf('%d',$i) );  
  endfor;
  foreach($TopHeaderSocialIcon as $TopHeaderSocialIcons){
    $wp_customize->add_setting(
      $TopHeaderSocialIcons['slug'],
      array( 
       'default' => $TopHeaderSocialIcons['default'],       
        'capability'     => 'edit_theme_options',
        'type' => 'theme_mod',
        'sanitize_callback' => 'sanitize_text_field',
      )
    );
    $wp_customize->add_control(
      $TopHeaderSocialIcons['slug'],
      array(
        'type'  => 'text',
        'section' => 'niche_social_icons_section',
        'input_attrs' => array( 'placeholder' => esc_attr__('Enter Icon','niche') ),
        'label'      =>   $TopHeaderSocialIcons['label'],
        'priority' => $TopHeaderSocialIcons['priority']
      )
    );
  }
  $TopHeaderSocialIconLink = array();
  for($i=1;$i <= 6;$i++):  
    $TopHeaderSocialIconLink[] =  array( 'slug'=>sprintf('TopHeaderSocialIconLink%d',$i),   
      'default' =>'',   
      'label' => esc_html__( 'Social Link ', 'niche' ) .$i,
      'priority' => sprintf('%d',$i) );  
  endfor;
  foreach($TopHeaderSocialIconLink as $TopHeaderSocialIconLinks){
    $wp_customize->add_setting(
      $TopHeaderSocialIconLinks['slug'],
      array(
        'default' => $TopHeaderSocialIconLinks['default'],
        'capability'     => 'edit_theme_options',
        'type' => 'theme_mod',
        'sanitize_callback' => 'esc_url_raw',
      )
    );
    $wp_customize->add_control(
      $TopHeaderSocialIconLinks['slug'],
      array(
        'type'  => 'text',
        'section' => 'niche_social_icons_section',
        'priority' => $TopHeaderSocialIconLinks['priority'],
        'input_attrs' => array( 'placeholder' => esc_html__('Enter URL','niche')),
      )
    );
  }

	 
   
 for($i=1;$i <= 5;$i++):  

    $wp_customize->add_setting(
        'niche_homepage_sliderimage'.$i.'_image',
        array(
            'default' => '',
            'capability'     => 'edit_theme_options',
            'sanitize_callback' => 'absint',
        )
    );
    $wp_customize->add_control( new WP_Customize_Cropped_Image_Control( $wp_customize, 'niche_homepage_sliderimage'.$i.'_image', array(
        'section'     => 'niche_silder_section',
        'label'       => __( 'Upload Slider Image ' ,'niche').$i,
        'flex_width'  => true,
        'flex_height' => true,
        'width'       => 1350,
        'height'      => 550,   
        'default-image' => '',
    ) ) );

    $wp_customize->add_setting( 'niche_homepage_sliderimage'.$i.'_title',
        array(
            'capability'     => 'edit_theme_options',
            'sanitize_callback' => 'sanitize_text_field',
            'priority' => 20, 
        )
    );
    $wp_customize->add_control( 'niche_homepage_sliderimage'.$i.'_title',
        array(
            'default' => esc_html__('Slider Title','niche') . $i,
            'section' => 'niche_silder_section',                
            'label'   => __('Enter Slider Title ','niche').$i,
            'type'    => 'text',
            'input_attrs' => array( 'placeholder' => esc_html__('Enter Slider Title','niche')),
        )
    ); 
    $wp_customize->add_setting( 'niche_homepage_sliderimage'.$i.'_content',
        array(
            'capability'     => 'edit_theme_options',
            'sanitize_callback' => 'sanitize_text_field',
            'priority' => 22, 
        )
    );
    $wp_customize->add_control( 'niche_homepage_sliderimage'.$i.'_content',
        array(
            'default' => esc_html__('Slider Content','niche') . $i,
            'section' => 'niche_silder_section',                
            'label'   => __('Enter Slider Content ','niche').$i,
            'type'    => 'textarea',
            'input_attrs' => array( 'placeholder' => esc_html__('Enter Slider Content','niche')),
        )
    );   
    $wp_customize->add_setting( 'niche_homepage_sliderimage'.$i.'_link',
        array(
            'default' => '',
            'capability'     => 'edit_theme_options',
            'sanitize_callback' => 'esc_url_raw',
            'priority' => 20, 
        )
    );
    $wp_customize->add_control( 'niche_homepage_sliderimage'.$i.'_link',
        array(
            'section' => 'niche_silder_section',                
            'label'   => __('Enter Slider Link ','niche').$i,
            'type'    => 'text',
            'input_attrs' => array( 'placeholder' => esc_html__('Enter Slider URL','niche')),
        )
    );
 endfor;

	
   //Our path to Perfection
	$wp_customize->add_setting( 'niche_perfectiontitle', array(
		'default'        => '',
		'sanitize_callback' => 'sanitize_text_field',
		'capability'     => 'edit_theme_options',
	) );
    $wp_customize->add_control( 'niche_perfectiontitle', array(
		'label'   => __('Perfection Title','niche'),
		'section' => 'niche_perfection_section',
		'type'    => 'text',
    ) );
	
	 $wp_customize->add_setting( 'niche_perfectioninfo', array(
		'default'        => '',
		'sanitize_callback' => 'wp_kses_post',
		'capability'     => 'edit_theme_options',
	) );
    $wp_customize->add_control( 'niche_perfectioninfo', array(
		'label'   => __('Perfection Info','niche'),
        'section' => 'niche_perfection_section',
        'type'    => 'textarea',
   ) );
   $wp_customize->add_setting( 'niche_perfection_image',array(
		'sanitize_callback' => 'esc_url_raw',
		'capability'     => 'edit_theme_options',
		)
	);
    $wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'niche_perfection_image', array(
			'label'    => __( 'Image (Recommended size 500 x 500)', 'niche' ),
			'section'  => 'niche_perfection_section',
			'settings' => 'niche_perfection_image',
		) 
	) );
   
	$wp_customize->add_setting( 'niche_perfection_image_bg',array(
		'sanitize_callback' => 'esc_url_raw',
		'capability'     => 'edit_theme_options',
		)
	);
    $wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'niche_perfection_image_bg', array(
			'label'    => __( 'Background Image (Recommended size 1280 x 853)', 'niche' ),
			'section'  => 'niche_perfection_section',
			'settings' => 'niche_perfection_image_bg',
		) 
	) );
       
        
     //Blog Section
	$wp_customize->add_setting( 'niche_blog-title', array(
		'default'        => '',
		'sanitize_callback' => 'sanitize_text_field',
		'capability'     => 'edit_theme_options',
	) );
    
    $wp_customize->add_control( 'niche_blog-title', array(
		'label'   => __('Blog Title','niche'),
        'section' => 'niche_blog_section',
        'type'    => 'text'
    ) );
		
	$wp_customize->add_setting( 'niche_bloginfo', array(
		'default'        => '',
		'sanitize_callback' => 'wp_kses_post',
		'capability'     => 'edit_theme_options',
	) );
    
    $wp_customize->add_control( 'niche_bloginfo', array(
		'label'   => __('Blog Info','niche'),
        'section' => 'niche_blog_section',
        'type'    => 'textarea',
    ) );      
	    
      
	 $wp_customize->add_setting( 'niche_blogcategory', array(
		'default'        => '',
		'sanitize_callback' => 'niche_sanitize_input_choice',
		'capability'     => 'edit_theme_options',
				
	) );
    
    $wp_customize->add_control( 'niche_blogcategory', array(
			'label'   => __('Select Category','niche'),
            'section' => 'niche_blog_section',
            'type'    => 'select',
            'choices' => niche_posts_category(),
        ) );               
         


   //Footer Section
$wp_customize->add_panel(
    'footer',
    array(
        'title' => __( 'Footer', 'niche' ),
        'description' => __('Footer options','niche'),
        'priority' => 105, 
    )
);
$wp_customize->add_section( 'footerWidgetArea' , array(
    'title'       => __( 'Footer Widget Area', 'niche' ),
    'priority'    => 135,
    'capability'     => 'edit_theme_options',
    'panel' => 'footer'
) );

$wp_customize->add_section( 'footerCopyright' , array(
    'title'       => __( 'Footer Copyright Area', 'niche' ),
    'priority'    => 135,
    'capability'     => 'edit_theme_options',
    'panel' => 'footer'
) );
$wp_customize->add_setting(
  'hideFooterWidgetBar',
  array(
      'default' => '1',
      'capability'     => 'edit_theme_options',
      'sanitize_callback' => 'niche_sanitize_input_choice',
      'priority' => 20, 
  )
);
$wp_customize->add_control(
  'hideFooterWidgetBar',
  array(
    'section' => 'footerWidgetArea',                
    'label'   => __('Hide Widget Area','niche'),
    'type'    => 'select',
    'choices' => array(
        "1"   => esc_html__( "Show", 'niche' ),
        "2"   => esc_html__( "Hide", 'niche' ),
    ),
  )
);
$wp_customize->add_setting(
  'footerWidgetStyle',
  array(
      'default' => '2',
      'capability'     => 'edit_theme_options',
      'sanitize_callback' => 'niche_sanitize_input_choice',
      'priority' => 20, 
  )
);
$wp_customize->add_control(
  'footerWidgetStyle',
  array(
      'section' => 'footerWidgetArea',                
      'label'   => __('Select Widget Area','niche'),
      'type'    => 'select',
      'choices'        => array(
          "1"   => esc_html__( "2 column", 'niche' ),
          "2"   => esc_html__( "3 column", 'niche' ),
          "3"   => esc_html__( "4 column", 'niche' )
      ),
  )
);
$wp_customize->add_setting(
    'copyright_text',
    array(
        'capability'     => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
        'priority' => 20, 
    )
);
$wp_customize->add_control(
    'copyright_text',
    array(
        'section' => 'footerCopyright',                
        'label'   => __('Enter Copyright Text','niche'),
        'type'    => 'textarea',
    )
);
// Text Panel Starts Here 
            
}
add_action( 'customize_register', 'niche_theme_customizer' );

function niche_posts_category(){
  $args = array('parent' => 0);
  $categories = get_categories($args);
  $category = array();
  $i = 0;
  $category[''] = 'All';
  foreach($categories as $categorys){
      if($i==0){
          $default = $categorys->slug;
          $i++;
      }
      $category[$categorys->term_id] = $categorys->name;
  }
  return $category;
}

function niche_sanitize_input_choice( $input, $setting ) {

  // Ensure input is a slug.
  $input = sanitize_key( $input );

  // Get list of choices from the control associated with the setting.
  $choices = $setting->manager->get_control( $setting->id )->choices;

  // If the input is a valid key, return it; otherwise, return the default.
  return ( array_key_exists( $input, $choices ) ? $input : $setting->default );
}

function niche_custom_css()
{
	wp_enqueue_style('niche-style', get_stylesheet_uri(), array());
	$custom_css ='';
	$niche_perfection_image_bg=get_theme_mod('niche_perfection_image_bg');
	$niche_breadcrumbs_image_bg=get_theme_mod('niche_breadcrumbs_image_bg');

	if (!empty($niche_perfection_image_bg) ){
		$niche_perfection_image_bg = esc_url(get_theme_mod('niche_perfection_image_bg'));
		$custom_css .=".path-section { background-image :url('".$niche_perfection_image_bg."');
		background-position: center;}";

	}
	if (!empty($niche_breadcrumbs_image_bg) ){
		$niche_breadcrumbs_image_bg = esc_url(get_theme_mod('niche_breadcrumbs_image_bg'));
		$custom_css .=" .page-banner { background-image :url('".$niche_breadcrumbs_image_bg."');
		background-position: center;} ";
	}

   if(get_theme_mod('header_fix',0)){ 
      $custom_css.= ".navbar.fixed-header { position :fixed; } 
      .main-nav.fixed-header.fixed {
        background: #212121;
    }";
    } 

	wp_add_inline_style('niche-style',$custom_css);

  $header_fix = get_theme_mod('header_fix',0);
  $script_js = '';  

  if($header_fix == 1){
        $script_js .= "jQuery(window).scroll(function () {
            if(jQuery(document).scrollTop() > 0){
                jQuery('.navbar').addClass('on-scroll');
                jQuery('.fixed-header').addClass('fixed').css({'position': 'fixed','top': 'auto'});
            }
            else{
                jQuery('.navbar').removeClass('on-scroll');
                jQuery('.fixed-header').removeClass('fixed').css({'position': 'absolute','top': 'auto'});        
            }
        });
       ";
     }
     wp_add_inline_script( 'niche-default', $script_js );	
}