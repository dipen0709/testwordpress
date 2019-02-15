<?php

/*
  Plugin Name: countdown-addweb Plugin
  Plugin URI: http://localhost/public/wordpress/plugin
  Description: This is my first plugin
  Version: 1.0.0
  Author: Krina
  Author URI: http://localhost/public/wordpress/
  Text Domain: countdown-addweb
 */

//class countdownaddweb_main {
//
//    function __construct() {
//
//        require_once(plugin_dir_path(__FILE__) . 'includes/countdownaddweb-script.php');
//        
//        require_once (plugin_dir_path(__FILE__) . 'admin/class.settings-api.php');
//        require_once (plugin_dir_path(__FILE__) . 'admin/settings.php');
//        new WeDevs_Settings_API_Test();
//    }
//}
//
//$countdownaddweb_main = new countdownaddweb_main();


    //echo plugin_dir_path(__FILE__) . 'admin/settings.php'; die;

require_once (plugin_dir_path(__FILE__) . 'admin/class.settings-api.php');
require_once (plugin_dir_path(__FILE__) . 'admin/settings.php');

//$settings = get_settings();
//print'<pre>';
//print_r($settings);

$a = get_option( 'wedevs_basics' );
//print'<pre>';
//print_r($a);
// find the value you want to un-serialize, then, put as below

//$arr = $a;
//
//$profile_arr = unserialize($a);
//
//print_r($profile_arr);
//die;

//die;

function gethtml(){
    $html='';  
    $html.='
    <script>
var status = 0;
var time = 0;
timer();

function timer() {
    setTimeout(function () {
        time++;
        var hr = Math.floor(time / 100 / 60 / 60);
        var min = Math.floor(time / 100 / 60);
        var sec = Math.floor(time / 100);
        var mSec = time % 100;
        if (hr < 10) {
            hr = "0" + hr;
        }
        if (min < 10) {
            min = "0" + min;
        }
        if (sec >= 60) {
            sec = sec % 60;
        }
        if (sec < 10) {
            sec = "0" + sec;
        }
        var html = "<h1>"+ hr + ":" + min + ":" + sec + ":" + mSec +"</h1>";
        $(html).appendAfter("#editor");         
        timer();
    }, 10);
}
    </script>'; 
    
//    document.getElementById("test").innerHTML = "<h1>"+ hr + ":" + min + ":" + sec + ":" + mSec +"</h1>";
//    jQuery("#editor").appendhr + ":" + min + ":" + sec + ":" + mSec;
    //        document.getElementById("editor").innerHTML = hr + ":" + min + ":" + sec + ":" + mSec;
    return $html;
}

function theme_slug_filter_the_content( $content ) {    
        $html = gethtml();
        $custom_content = 'YOUR CONTENT GOES HERE: ';
        $custom_content .= $html;
        echo $custom_content;       
}
//add_filter( 'in_admin_footer', 'theme_slug_filter_the_content' );
//add_action( 'in_admin_footer', 'theme_slug_filter_the_content' );
//add_action( 'admin_head-post.php', 'theme_slug_filter_the_content' );
add_action('admin_head-post-new.php',  'theme_slug_filter_the_content' );
//add_action( 'admin_head-edit.php', 'theme_slug_filter_the_content' );


new WeDevs_Settings_API_Test();
