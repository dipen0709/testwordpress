<?php

/**
 * @author Krina
 */
if ( !class_exists('WeDevs_Settings_API_Test' ) ):
class WeDevs_Settings_API_Test {

    private $settings_api;

    function __construct() {
        $this->settings_api = new WeDevs_Settings_API;

        add_action( 'admin_init', array($this, 'admin_init') );
        add_action( 'admin_menu', array($this, 'admin_menu') );
    }

    function admin_init() {

        //set the settings
        $this->settings_api->set_sections( $this->get_settings_sections() );
        $this->settings_api->set_fields( $this->get_settings_fields() );

        //initialize settings
        $this->settings_api->admin_init();
    }

    function admin_menu() {
        add_options_page( 'Countdown Addweb Settings', 'Countdown Addweb Settings', 'delete_posts', 'settings_api_test', array($this, 'plugin_page') );
    }

    function get_settings_sections() {
        $sections = array(
            array(
                'id'    => 'wedevs_basics',
                'title' => __( 'Basic Settings', 'wedevs' )
            ),
        );
        return $sections;
    }

    /**
     * Returns all the settings fields
     *
     * @return array settings fields
     */
    function get_settings_fields() {
        $settings_fields = array(
            'wedevs_basics' => array(
                
                array(
                    'name'        => 'html',
                    'desc'        => __( '<strong><a href="">ClickHere</a></strong> To generate the countdown timer report and download it.', 'wedevs' ),
                    'type'        => 'html'
                ),                
                array(
                    'name'    => 'position',
                    'label'   => __( 'A Dropdown', 'wedevs' ),
                    'desc'    => __( 'Dropdown description', 'wedevs' ),
                    'type'    => 'select',
                    'default' => 'tleft',
                    'options' => array(
                        'tleft' => 'Top left',
                        'tright'  => 'Top Right',
                        'bleft'  => 'Bottom Left',
                        'bright'  => 'Bottom Right'
                    )
                ),
                array(
                    'name'    => 'color',
                    'label'   => __( 'Color Picker', 'wedevs' ),
                    'desc'    => __( 'Color Picker', 'wedevs' ),
                    'type'    => 'color',
                    'default' => '#ff0000'
                ),   
                array(
                    'name'    => 'multicheck',
                    'label'   => __( 'Multile checkbox', 'wedevs' ),
                    'desc'    => __( 'Multi checkbox description', 'wedevs' ),
                    'type'    => 'multicheck',
//                    'default' => array('one' => 'one', 'four' => 'four'),
                    'default' => '',
                    'options' => array(
                        'posts'   => 'All Posts',
                        'pages'   => 'All Pages',                        
                    )
                ),            
            )
        );

        return $settings_fields;
    }

    function plugin_page() {
        echo '<div class="wrap">';

        $this->settings_api->show_navigation();
        $this->settings_api->show_forms();

        echo '</div>';
    }

    /**
     * Get all the pages
     *
     * @return array page names with key value pairs
     */
    function get_pages() {
        $pages = get_pages();
        $pages_options = array();
        if ( $pages ) {
            foreach ($pages as $page) {
                $pages_options[$page->ID] = $page->post_title;
            }
        }

        return $pages_options;
    }

}
endif;