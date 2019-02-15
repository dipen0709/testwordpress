<?php

/* 
 * @package krinacountdown-plugin
 */
/*
Plugin Name: Krinacountdown Plugin
Plugin URI: http://localhost/public/wordpress/plugin
Description: This is my first plugin
Version: 1.0.0 
Author: Krina 
Author URI: http://localhost/public/wordpress/
Text Domain: krinacountdown-plugin 
 */

class wp_countdown_main{
	// required variables
	
	private $wp_countdown_plugin_url;
	
	private $wp_countdown_plugin_path;
	
	private $wp_countdown_version;

	/*###################### Construct function ##################*/	
	
	function __construct(){
		
		$this->wp_countdown_plugin_url  = trailingslashit( plugins_url('', __FILE__ ) );
		$this->wp_countdown_plugin_path = trailingslashit( plugin_dir_path( __FILE__ ) );
		//
		define("wp_countdown_support_url","https://wordpress.org/support/plugin/widget-countdown");
		
		if(!class_exists('wp_countdown_setting'))
			require_once($this->wp_countdown_plugin_path.'includes/library.php');
		
		$this->call_base_filters();
		$this->create_admin_menu();	
		$this->wp_countdown_front_end();
		
	}

	/*###################### Create admin menu function ##################*/
	
	public function create_admin_menu(){
		
		require_once($this->wp_countdown_plugin_path.'includes/admin_menu.php');
		
		$wp_countdown_admin_menu = new wp_countdown_admin_menu(array('menu_name' => 'Countdown'));
		
		add_action('admin_menu', array($wp_countdown_admin_menu,'create_menu'));
		
	}

	/*###################### Countdown front end function ##################*/
	
	public function wp_countdown_front_end(){
		
		require_once($this->wp_countdown_plugin_path.'includes/front_end.php');
		require_once($this->wp_countdown_plugin_path.'includes/widget.php');

		$wp_countdown_front_end = new wp_countdown_front_end(array('menu_name' => 'countdown'));
		
	}

    /*############ Register required scripts function ##################*/
	
	public function registr_requeried_scripts(){
		wp_register_script('countdown-front-end',$this->wp_countdown_plugin_url.'includes/javascript/front_end_js.js');
		wp_register_style('countdown_css',$this->wp_countdown_plugin_url.'includes/style/style.css');
		wp_register_style('animated',$this->wp_countdown_plugin_url.'includes/style/effects.css');
		
		// datepicker
		wp_register_script('foundation-datepicker',$this->wp_countdown_plugin_url.'includes/javascript/foundation-datepicker.min.js');
		wp_register_style('foundation-datepicker',$this->wp_countdown_plugin_url.'includes/style/foundation-datepicker.min.css');	
		
		// gutenberg		
		wp_register_script('wp_countdown_gutenberg_js',$this->wp_countdown_plugin_url.'includes/gutenberg/block.js',array( 'wp-element', 'wp-blocks', 'wp-i18n',  'wp-editor', 'underscore' ));
		wp_register_style('wp_countdown_gutenberg_css',$this->wp_countdown_plugin_url.'includes/gutenberg/style.css');
		
	}

	/*###################### Call base filters function ##################*/	
	
	public function call_base_filters(){
		add_action( 'init',  array($this,'registr_requeried_scripts') );
		add_action( 'admin_head',  array($this,'include_requeried_scripts') );
		//for_upgrade
		add_filter( 'plugin_action_links_' . plugin_basename(__FILE__), array($this,'plugin_activate_sublink') );
	}
	
	/*###################### Activate sublink function ##################*/	
	
	public function plugin_activate_sublink($links){
		$plugin_submenu_added_link=array();		
		$added_link = array(
		'<a target="_blank" style="color: rgba(10, 154, 62, 1); font-weight: bold; font-size: 13px;" href="http://wp.com/wordpress-countdown-plugin">Upgrade to Pro</a>',
		);
		$plugin_submenu_added_link=array_merge( $plugin_submenu_added_link, $added_link );
		$plugin_submenu_added_link=array_merge( $plugin_submenu_added_link, $links );
		return $plugin_submenu_added_link;
	}
	
    /*###################### Requeried scripts function ##################*/
	
  	public function include_requeried_scripts(){
		wp_enqueue_script('wp-color-picker');
		wp_enqueue_style( 'wp-color-picker' );
		// datepicker
		wp_enqueue_script('foundation-datepicker');
		wp_enqueue_style('foundation-datepicker');
	}

}
$wp_countdown_main = new wp_countdown_main();

?>