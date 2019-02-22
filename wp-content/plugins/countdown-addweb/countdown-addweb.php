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

// table generating code
function custom_plugin_tables() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'timer';
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');

    if (count($wpdb->get_var('SHOW TABLES LIKE "'.$table_name.'"')) == 0) {

        $sql_query_to_create_table = "CREATE TABLE `wp_timer` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `post_id` int(11) DEFAULT NULL,
            `time_spent` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
            `user_id` int(11) DEFAULT NULL,
            `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY (`id`)
           ) ENGINE=InnoDB DEFAULT CHARSET=latin1"; /// sql query to create table

        dbDelta($sql_query_to_create_table);
    }
}

register_activation_hook(__FILE__, 'custom_plugin_tables');

function deactivate_table() {

    global $wpdb;
    $table_name = $wpdb->prefix . 'timer';
    $wpdb->query("DROP table IF Exists $table_name");
}

register_deactivation_hook(__FILE__, "deactivate_table");

require_once (plugin_dir_path(__FILE__) . 'admin/class.settings-api.php');
require_once (plugin_dir_path(__FILE__) . 'admin/settings.php');

function gethtml() {
    require_once (plugin_dir_path(__FILE__) . 'includes/timer.php');
}

$a = get_option('wedevs_basics');

if (get_post_type() == 'post') {
    if (array_key_exists("post", $a['multicheck'])) {
        add_action('admin_head-post-new.php', 'gethtml');
        add_action('admin_head-post.php', 'gethtml');
    }
} else if (get_post_type() == 'page') {
    if (array_key_exists("page", $a['multicheck'])) {
        add_action('admin_head-post-new.php', 'gethtml');
        add_action('admin_head-post.php', 'gethtml');
    }
}

/**
 * Register meta boxes.
 */
function hcf_register_meta_boxes() {
    add_meta_box('hcf-1',' ', 'hcf_display_callback', 'post');
    add_meta_box('hcf-1', ' ', 'hcf_display_callback', 'page');
}

add_action('add_meta_boxes', 'hcf_register_meta_boxes');

function hcf_display_callback($post) {
    require_once (plugin_dir_path(__FILE__) . 'includes/timer.php');
}

function on_all_status_transitions( $new_status, $old_status, $post ) {        
    
    if ( $new_status == $old_status ) {
         global $wpdb;
    
        $dirname = dirname(__FILE__);
        $root = false !== mb_strpos( $dirname, 'wp-content' ) ? mb_substr( $dirname, 0, mb_strpos( $dirname, 'wp-content' ) ) : $dirname;
        require_once( $root . "wp-config.php" );

        $timespent = $_POST['countdown_timer_hidden'];
        $userid = get_current_user_id();
        $postid = get_the_ID();
        $table_name = $wpdb->prefix . 'timer';

        $count_query = "select count(*) from $table_name where post_id = ".$postid."";
        $num = $wpdb->get_var($count_query);       

        if($num == 0){
            if(isset($timespent)){
                $wpdb->insert( 
                    $table_name, 
                    array(                 
                        'user_id'    => $userid,
                        'post_id' => $postid,
                        'time_spent'   => $timespent,
                        'created_at'      => date('Y-m-d H:i:s')
                    )
                );
                $record_id = $wpdb->insert_id;
            }
        }
    }
}
add_action(  'transition_post_status',  'on_all_status_transitions', 10, 3 );

global $plugin_page;

if (isset($_POST['download_csv'])) {
    
    global $wpdb;

    $sql = "SELECT * FROM {$wpdb->prefix}timer";

    $rows = $wpdb->get_results($sql, 'ARRAY_A');
//    print'<pre>';
//    print_r($rows); die;
    
    if ($rows) {        
        
        $csv_fields = array();
        $csv_fields[] = "Post ID";
        $csv_fields[] = 'Post Title';
        $csv_fields[] = 'Author';
        $csv_fields[] = 'Modified by';
        $csv_fields[] = 'Time Spent';
        $csv_fields[] = 'Modified Date';

        $output_filename = 'Timer Report' .'.csv';
        $output_handle = @fopen('php://output', 'w');

        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Content-Description: File Transfer');
        header('Content-type: text/csv');
        header('Content-Disposition: attachment; filename=' . $output_filename);
        header('Expires: 0');
        header('Pragma: public');

        $first = true;
       // Parse results to csv format
        $results = array();
        $i=0;
        
        if ($first) {
           $titles = array();                              
            foreach ($csv_fields as $key => $val) {
                $titles[] = $val;
            }                                
            fputcsv($output_handle, $titles);
            $first = false;
        }
        
        foreach ($rows as $row) {
         
            $postdata = get_post($row['post_id']);
            $userdata = WP_User::get_data_by( 'ID', $postdata->post_author );            
            
            $results[$i][] = $postdata->ID;
            $results[$i][] = $postdata->post_title;
            $results[$i][] = $userdata->user_nicename;
            $results[$i][] = $userdata->user_nicename;
            $results[$i][] = $row['time_spent'];
            $results[$i][] = $postdata->post_modified;

            $i++;
        }
        
        foreach($results as $result)
        {
            fputcsv($output_handle, $result);
        }
        fclose($output_handle);
        die();
    }
}

new WeDevs_Settings_API_Test();
