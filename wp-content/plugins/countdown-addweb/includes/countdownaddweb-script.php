<?php

//Add script

class countdownaddweb_script{
    
    function __construct($params){
        add_action('wp_enqueue_scripts', 'wpse_load_plugin_css' );
    }

   function wpse_load_plugin_css() {e; 
    $plugin_url = plugin_dir_url( __FILE__ );

    wp_enqueue_style( 'foundation-datepicker',$plugin_url.'/css/foundation-datepicker.min.css');
    wp_enqueue_script( 'foundation-datepicker',$plugin_url.'/js/foundation-datepicker.min.js');
}

}
