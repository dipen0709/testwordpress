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
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');

    if (count($wpdb->get_var('SHOW TABLES LIKE "wp_timer"')) == 0) {

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
    $wpdb->query("DROP table IF Exists wp_timer");
}

register_deactivation_hook(__FILE__, "deactivate_table");

class countdownaddweb_main {

    function __construct() {
        require_once (plugin_dir_path(__FILE__) . 'admin/class.settings-api.php');
        require_once (plugin_dir_path(__FILE__) . 'admin/settings.php');
        new WeDevs_Settings_API_Test();
        $this->callactions();
//        $this->custom_plugin_tables();
//        register_activation_hook(__FILE__, 'custom_plugin_tables');
//        register_deactivation_hook(__FILE__,"deactivate_table");
    }

    function gethtml() {
        $a = get_option('wedevs_basics');

        if (get_post_type() == 'post') {
            if (array_key_exists("post", $a['multicheck'])) {
                require_once (plugin_dir_path(__FILE__) . 'includes/timer.php');
            }
        } else if (get_post_type() == 'page') {
            if (array_key_exists("page", $a['multicheck'])) {
                require_once (plugin_dir_path(__FILE__) . 'includes/timer.php');
            }
        } else {
            echo '';
        }
    }

    function callactions() {

        add_action('admin_head-post-new.php', array($this, 'gethtml'));
        add_action('admin_head-post.php', array($this, 'gethtml'));
    }

}

new countdownaddweb_main();
