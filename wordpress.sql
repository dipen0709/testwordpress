-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 15, 2019 at 01:25 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-11 08:04:31', '2019-01-11 08:04:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'admin', 'johnnyharpertesting@gmail.com', '', '172.19.0.1', '2019-01-11 11:59:57', '2019-01-11 11:59:57', 'khuhjk', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_marketo_leads_describe`
--

CREATE TABLE `wp_marketo_leads_describe` (
  `id` bigint(20) NOT NULL,
  `display_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `length` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rest_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rest_read_only` tinyint(1) NOT NULL,
  `rest_id` bigint(20) NOT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/public/wordpress', 'yes'),
(2, 'home', 'http://localhost/public/wordpress', 'yes'),
(3, 'blogname', 'Addweb', 'yes'),
(4, 'blogdescription', 'Let&#039;s talk solution', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'johnnyharpertesting@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:130:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"jm-ajax/([^/]*)/?\";s:29:\"index.php?jm-ajax=$matches[1]\";s:27:\"index.php/jm-ajax/([^/]*)/?\";s:29:\"index.php?jm-ajax=$matches[1]\";s:56:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:31:\"job/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"job/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"job/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"job/([^/]+)/embed/?$\";s:44:\"index.php?job_listing=$matches[1]&embed=true\";s:24:\"job/([^/]+)/trackback/?$\";s:38:\"index.php?job_listing=$matches[1]&tb=1\";s:32:\"job/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&paged=$matches[2]\";s:39:\"job/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&cpage=$matches[2]\";s:28:\"job/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?job_listing=$matches[1]&page=$matches[2]\";s:20:\"job/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"job/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"job/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:66:\"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:61:\"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:33:\"wpforms_log_type/([^/]+)/embed/?$\";s:49:\"index.php?wpforms_log_type=$matches[1]&embed=true\";s:45:\"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]\";s:27:\"wpforms_log_type/([^/]+)/?$\";s:38:\"index.php?wpforms_log_type=$matches[1]\";s:44:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:83:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:78:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"amn_wpforms-lite/([^/]+)/embed/?$\";s:49:\"index.php?amn_wpforms-lite=$matches[1]&embed=true\";s:37:\"amn_wpforms-lite/([^/]+)/trackback/?$\";s:43:\"index.php?amn_wpforms-lite=$matches[1]&tb=1\";s:45:\"amn_wpforms-lite/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&paged=$matches[2]\";s:52:\"amn_wpforms-lite/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&cpage=$matches[2]\";s:41:\"amn_wpforms-lite/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?amn_wpforms-lite=$matches[1]&page=$matches[2]\";s:33:\"amn_wpforms-lite/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"amn_wpforms-lite/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"amn_wpforms-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"amn_wpforms-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"amn_wpforms-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"amn_wpforms-lite/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:41:\"feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:36:\"(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:50:\"comments/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:45:\"comments/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:53:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:48:\"search/(.+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:78:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:73:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:65:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:60:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:52:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:47:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:97:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:92:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:86:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:81:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:86:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:49:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:44:\"(.?.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:19:\"akismet/akismet.php\";i:1;s:41:\"cf7-marketo-lite/marketo-lite-for-cf7.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:37:\"countdown-addweb/countdown-addweb.php\";i:4;s:45:\"custom-facebook-feed/custom-facebook-feed.php\";i:5;s:44:\"ultimate-marketo-forms/ult_marketo_forms.php\";i:6;s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";i:7;s:33:\"wp-job-manager/wp-job-manager.php\";i:8;s:24:\"wpforms-lite/wpforms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"/var/www/html/public/wordpress/wp-content/plugins/akismet/akismet.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'niche', 'yes'),
(41, 'stylesheet', 'niche', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"custom-facebook-feed/custom-facebook-feed.php\";s:13:\"cff_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '27', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:79:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"manage_job_listings\";b:1;s:16:\"edit_job_listing\";b:1;s:16:\"read_job_listing\";b:1;s:18:\"delete_job_listing\";b:1;s:17:\"edit_job_listings\";b:1;s:24:\"edit_others_job_listings\";b:1;s:20:\"publish_job_listings\";b:1;s:25:\"read_private_job_listings\";b:1;s:19:\"delete_job_listings\";b:1;s:27:\"delete_private_job_listings\";b:1;s:29:\"delete_published_job_listings\";b:1;s:26:\"delete_others_job_listings\";b:1;s:25:\"edit_private_job_listings\";b:1;s:27:\"edit_published_job_listings\";b:1;s:24:\"manage_job_listing_terms\";b:1;s:22:\"edit_job_listing_terms\";b:1;s:24:\"delete_job_listing_terms\";b:1;s:24:\"assign_job_listing_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"employer\";a:2:{s:4:\"name\";s:8:\"Employer\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', '3=LS(TmOlWdnyml#77dkO`|m+6&<?K` Uq}}dBf#,6)HqmA`q>l6@9ZMT&*zO(Z%', 'no'),
(109, 'nonce_salt', ']o,],g[7Qk,I9[2NI&0[;Zq!HzrB[VKy#FXlf<G3*E->.y9#5r8.MNZ?AlW9d7A4', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:10:{i:1550237153;a:1:{s:34:\"job_manager_check_for_expired_jobs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1550239471;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1550255153;a:1:{s:36:\"job_manager_clear_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1550261071;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1550262253;a:1:{s:12:\"cff_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1550298353;a:2:{s:31:\"job_manager_delete_old_previews\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"job_manager_email_daily_notices\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1550304342;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1550304662;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1551507955;a:1:{s:42:\"job_manager_usage_tracking_send_usage_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:36:\"job_manager_usage_tracking_two_weeks\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547194571;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"primary-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"secondary-sidebar\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:18:\"th-woo-widget-area\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1550217883;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(122, 'auth_key', '>yhflZ(:qJ`Z AO9bY@kGV7,qq+(G@]OzXpg(I4_{E2ZJ%/ov:b0.WqNe~G<avFb', 'no'),
(123, 'auth_salt', 'v--a%8+/5ZV{.!wX9C;n92m`B63NlI-Y*;@dVR/f/6dUNc9H5:tZ[G9.+gI`{g0M', 'no'),
(124, 'logged_in_key', '.e%?.Kxb9WAJVV@M*B@v~y/YzSV/*B ^ E,fzIW/#gKzmAFmUBazU(Heo}OI- lP', 'no'),
(125, 'logged_in_salt', '4`b:GOU3z!=;5c AGjoH~vO{ ;*a2m57o64yHPC*Uq!h@8Gh`4^4t1{z+p-yxr>n', 'no'),
(128, 'can_compress_scripts', '0', 'no'),
(146, 'theme_mods_oshi', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547201015;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"primary-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"secondary-sidebar\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:18:\"th-woo-widget-area\";a:0:{}}}}', 'yes'),
(150, 'recently_activated', 'a:2:{s:39:\"widget-countdown/wpdevart-countdown.php\";i:1550042400;s:47:\"krinacountdown-plugin/krinacountdown-plugin.php\";i:1549979194;}', 'yes'),
(154, 'current_theme', 'Niche', 'yes'),
(155, 'theme_switched', '', 'yes'),
(157, 'theme_switched_via_customizer', '', 'yes'),
(158, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(162, 'theme_mods_the-score', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(163, 'theme_mods_twentyseventeen', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:82:\"http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download.jpeg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:11;s:3:\"url\";s:82:\"http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download.jpeg\";s:13:\"thumbnail_url\";s:82:\"http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download.jpeg\";s:6:\"height\";i:1200;s:5:\"width\";i:2000;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547194678;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"primary-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"secondary-sidebar\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:18:\"th-woo-widget-area\";a:0:{}}}}', 'yes'),
(175, 'cff_rating_notice', 'dismissed', 'yes'),
(176, 'cff_style_settings', 'a:146:{s:19:\"cff_show_links_type\";b:1;s:19:\"cff_show_event_type\";b:1;s:19:\"cff_show_video_type\";b:1;s:20:\"cff_show_photos_type\";b:1;s:20:\"cff_show_status_type\";b:1;s:17:\"cff_preset_layout\";s:5:\"thumb\";s:13:\"cff_show_text\";b:1;s:13:\"cff_show_desc\";b:1;s:21:\"cff_show_shared_links\";b:1;s:13:\"cff_show_date\";b:1;s:14:\"cff_show_media\";b:1;s:19:\"cff_show_media_link\";b:1;s:20:\"cff_show_event_title\";b:1;s:22:\"cff_show_event_details\";b:1;s:13:\"cff_show_meta\";b:1;s:13:\"cff_show_link\";b:1;s:17:\"cff_show_like_box\";s:2:\"on\";s:17:\"cff_post_bg_color\";s:0:\"\";s:16:\"cff_post_rounded\";s:1:\"0\";s:16:\"cff_title_format\";s:1:\"p\";s:14:\"cff_title_size\";s:7:\"inherit\";s:16:\"cff_title_weight\";s:7:\"inherit\";s:15:\"cff_title_color\";s:0:\"\";s:23:\"cff_posttext_link_color\";s:0:\"\";s:13:\"cff_body_size\";s:2:\"12\";s:15:\"cff_body_weight\";s:7:\"inherit\";s:14:\"cff_body_color\";s:0:\"\";s:21:\"cff_link_title_format\";s:1:\"p\";s:19:\"cff_link_title_size\";s:7:\"inherit\";s:20:\"cff_link_title_color\";s:0:\"\";s:18:\"cff_link_url_color\";s:0:\"\";s:17:\"cff_link_bg_color\";s:0:\"\";s:21:\"cff_link_border_color\";s:0:\"\";s:20:\"cff_disable_link_box\";s:0:\"\";s:22:\"cff_event_title_format\";s:1:\"p\";s:20:\"cff_event_title_size\";s:7:\"inherit\";s:22:\"cff_event_title_weight\";s:7:\"inherit\";s:21:\"cff_event_title_color\";s:0:\"\";s:19:\"cff_event_date_size\";s:7:\"inherit\";s:21:\"cff_event_date_weight\";s:7:\"inherit\";s:20:\"cff_event_date_color\";s:0:\"\";s:23:\"cff_event_date_position\";s:5:\"below\";s:25:\"cff_event_date_formatting\";s:1:\"1\";s:21:\"cff_event_date_custom\";s:0:\"\";s:22:\"cff_event_details_size\";s:7:\"inherit\";s:24:\"cff_event_details_weight\";s:7:\"inherit\";s:23:\"cff_event_details_color\";s:0:\"\";s:20:\"cff_event_link_color\";s:0:\"\";s:17:\"cff_date_position\";s:6:\"author\";s:13:\"cff_date_size\";s:7:\"inherit\";s:15:\"cff_date_weight\";s:7:\"inherit\";s:14:\"cff_date_color\";s:0:\"\";s:19:\"cff_date_formatting\";s:1:\"1\";s:15:\"cff_date_custom\";s:0:\"\";s:15:\"cff_date_before\";s:0:\"\";s:14:\"cff_date_after\";s:0:\"\";s:12:\"cff_timezone\";s:15:\"America/Chicago\";s:13:\"cff_link_size\";s:7:\"inherit\";s:15:\"cff_link_weight\";s:7:\"inherit\";s:14:\"cff_link_color\";s:0:\"\";s:22:\"cff_facebook_link_text\";s:16:\"View on Facebook\";s:18:\"cff_view_link_text\";s:9:\"View Link\";s:20:\"cff_link_to_timeline\";b:0;s:14:\"cff_icon_style\";s:5:\"light\";s:19:\"cff_meta_text_color\";s:0:\"\";s:17:\"cff_meta_bg_color\";s:0:\"\";s:19:\"cff_nocomments_text\";s:15:\"No comments yet\";s:17:\"cff_hide_comments\";s:0:\"\";s:14:\"cff_feed_width\";s:4:\"100%\";s:19:\"cff_feed_width_resp\";s:0:\"\";s:15:\"cff_feed_height\";s:0:\"\";s:16:\"cff_feed_padding\";s:0:\"\";s:21:\"cff_like_box_position\";s:6:\"bottom\";s:20:\"cff_like_box_outside\";s:0:\"\";s:17:\"cff_likebox_width\";s:0:\"\";s:18:\"cff_likebox_height\";s:0:\"\";s:18:\"cff_like_box_faces\";s:0:\"\";s:19:\"cff_like_box_border\";s:0:\"\";s:18:\"cff_like_box_cover\";s:2:\"on\";s:25:\"cff_like_box_small_header\";s:0:\"\";s:21:\"cff_like_box_hide_cta\";s:0:\"\";s:12:\"cff_bg_color\";s:7:\"#dd3333\";s:20:\"cff_likebox_bg_color\";s:0:\"\";s:23:\"cff_like_box_text_color\";s:4:\"blue\";s:16:\"cff_video_height\";s:0:\"\";s:15:\"cff_show_author\";b:1;s:9:\"cff_class\";s:0:\"\";s:14:\"cff_open_links\";b:1;s:8:\"cff_cron\";s:5:\"unset\";s:18:\"cff_request_method\";s:4:\"auto\";s:18:\"cff_disable_styles\";b:0;s:16:\"cff_format_issue\";b:0;s:19:\"cff_restricted_page\";b:0;s:14:\"cff_custom_css\";s:0:\"\";s:13:\"cff_custom_js\";s:0:\"\";s:14:\"cff_title_link\";b:0;s:13:\"cff_post_tags\";b:1;s:17:\"cff_link_hashtags\";b:1;s:20:\"cff_event_title_link\";b:1;s:16:\"cff_video_action\";s:4:\"post\";s:10:\"cff_app_id\";s:0:\"\";s:15:\"cff_show_credit\";s:0:\"\";s:15:\"cff_font_source\";s:0:\"\";s:10:\"cff_minify\";b:0;s:13:\"cff_sep_color\";s:0:\"\";s:12:\"cff_sep_size\";s:1:\"1\";s:15:\"cff_show_header\";s:0:\"\";s:18:\"cff_header_outside\";s:0:\"\";s:15:\"cff_header_text\";s:14:\"Facebook Posts\";s:19:\"cff_header_bg_color\";s:1:\"#\";s:18:\"cff_header_padding\";s:0:\"\";s:20:\"cff_header_text_size\";s:7:\"inherit\";s:22:\"cff_header_text_weight\";s:7:\"inherit\";s:21:\"cff_header_text_color\";s:1:\"#\";s:15:\"cff_header_icon\";s:15:\"facebook-square\";s:21:\"cff_header_icon_color\";s:1:\"#\";s:20:\"cff_header_icon_size\";s:2:\"28\";s:15:\"cff_author_size\";s:7:\"inherit\";s:16:\"cff_author_color\";s:0:\"\";s:17:\"cff_see_more_text\";s:8:\"See More\";s:17:\"cff_see_less_text\";s:8:\"See Less\";s:23:\"cff_facebook_share_text\";s:5:\"Share\";s:22:\"cff_show_facebook_link\";b:1;s:23:\"cff_show_facebook_share\";b:1;s:25:\"cff_translate_photos_text\";s:6:\"photos\";s:24:\"cff_translate_photo_text\";s:5:\"Photo\";s:24:\"cff_translate_video_text\";s:5:\"Video\";s:29:\"cff_translate_learn_more_text\";s:10:\"Learn More\";s:27:\"cff_translate_shop_now_text\";s:8:\"Shop Now\";s:31:\"cff_translate_message_page_text\";s:12:\"Message Page\";s:20:\"cff_translate_second\";s:6:\"second\";s:21:\"cff_translate_seconds\";s:7:\"seconds\";s:20:\"cff_translate_minute\";s:6:\"minute\";s:21:\"cff_translate_minutes\";s:7:\"minutes\";s:18:\"cff_translate_hour\";s:4:\"hour\";s:19:\"cff_translate_hours\";s:5:\"hours\";s:17:\"cff_translate_day\";s:3:\"day\";s:18:\"cff_translate_days\";s:4:\"days\";s:18:\"cff_translate_week\";s:4:\"week\";s:19:\"cff_translate_weeks\";s:5:\"weeks\";s:19:\"cff_translate_month\";s:5:\"month\";s:20:\"cff_translate_months\";s:6:\"months\";s:18:\"cff_translate_year\";s:4:\"year\";s:19:\"cff_translate_years\";s:5:\"years\";s:17:\"cff_translate_ago\";s:3:\"ago\";s:20:\"cff_show_albums_type\";b:1;}', 'yes'),
(180, 'wpforms_preview_page', '18', 'yes'),
(181, 'wpforms_version', '1.5.0.4', 'yes'),
(182, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1547195309;}', 'yes'),
(185, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, '_amn_wpforms-lite_last_checked', '1550188800', 'yes'),
(187, 'wpforms_review', 'a:2:{s:4:\"time\";i:1548923370;s:9:\"dismissed\";b:1;}', 'yes'),
(195, 'theme_mods_niche', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:23;s:26:\"niche_breadcrumbs_image_bg\";s:85:\"http://localhost/public/wordpress/wp-content/uploads/2019/01/AddWeb-Solution-Logo.png\";}', 'yes'),
(196, 'widget_niche_contact_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'category_children', 'a:0:{}', 'yes'),
(205, 'cff_show_access_token', '1', 'yes'),
(206, 'cff_access_token', 'EAAS8LGISx9wBAI15sT7LL2CmuMFAjydiuLw9DENBZAyWO3GwLbzDV8ddT0uMYVWl3KRXNXI9NSRFY71a5DwkRVkMTo5JK4zfCowJE6ZBd794YGSjn5FIzU7RkDvVOFzmFZCm9pRb2lQKHf7aS5LL6Po24lEumPZABMb1b6EoSwZDZD', 'yes'),
(207, 'cff_page_id', 'johnnyharpertesting', 'yes'),
(208, 'cff_page_type', '', 'yes'),
(209, 'cff_num_show', '5', 'yes'),
(210, 'cff_post_limit', '', 'yes'),
(211, 'cff_show_others', 'me', 'yes'),
(212, 'cff_cache_time', '1', 'yes'),
(213, 'cff_cache_time_unit', 'hours', 'yes'),
(214, 'cff_locale', 'en_US', 'yes'),
(283, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:5:\"local\";s:8:\"username\";s:4:\"test\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(284, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'job_manager_permalinks', '{\"jobs_archive\":\"\"}', 'yes'),
(290, '_transient_jm_get_job_listing_type-transient-version', '1548915954', 'yes'),
(295, 'job_listing_type_children', 'a:0:{}', 'yes'),
(296, 'job_manager_installed_terms', '1', 'yes'),
(297, 'job_manager_admin_notices', '[]', 'no'),
(300, 'wp_job_manager_version', '1.32.1', 'yes'),
(301, 'widget_widget_recent_jobs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_widget_featured_jobs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'job_manager_date_format', 'relative', 'yes'),
(305, 'job_manager_google_maps_api_key', '', 'yes'),
(306, 'job_manager_delete_data_on_uninstall', '0', 'yes'),
(307, 'job_manager_usage_tracking_enabled', '0', 'yes'),
(308, 'job_manager_per_page', '10', 'yes'),
(309, 'job_manager_hide_filled_positions', '0', 'yes'),
(310, 'job_manager_hide_expired', '0', 'yes'),
(311, 'job_manager_hide_expired_content', '1', 'yes'),
(312, 'job_manager_enable_categories', '0', 'yes'),
(313, 'job_manager_enable_default_category_multiselect', '0', 'yes'),
(314, 'job_manager_category_filter_type', 'any', 'yes'),
(315, 'job_manager_enable_types', '1', 'yes'),
(316, 'job_manager_multi_job_type', '0', 'yes'),
(317, 'job_manager_user_requires_account', '1', 'yes'),
(318, 'job_manager_enable_registration', '1', 'yes'),
(319, 'job_manager_generate_username_from_email', '1', 'yes'),
(320, 'job_manager_use_standard_password_setup_email', '0', 'yes'),
(321, 'job_manager_registration_role', 'employer', 'yes'),
(322, 'job_manager_submission_requires_approval', '1', 'yes'),
(323, 'job_manager_user_can_edit_pending_submissions', '0', 'yes'),
(324, 'job_manager_user_edit_published_submissions', 'yes', 'yes'),
(325, 'job_manager_submission_duration', '30', 'yes'),
(326, 'job_manager_allowed_application_method', '', 'yes'),
(327, 'job_manager_recaptcha_label', 'Are you human?', 'yes'),
(328, 'job_manager_recaptcha_site_key', '', 'yes'),
(329, 'job_manager_recaptcha_secret_key', '', 'yes'),
(330, 'job_manager_enable_recaptcha_job_submission', '0', 'yes'),
(331, 'job_manager_submit_job_form_page_id', '65', 'yes'),
(332, 'job_manager_job_dashboard_page_id', '66', 'yes'),
(333, 'job_manager_jobs_page_id', '67', 'yes'),
(334, 'job_manager_email_admin_new_job', 'a:2:{s:7:\"enabled\";s:1:\"1\";s:10:\"plain_text\";s:1:\"0\";}', 'yes'),
(335, 'job_manager_email_admin_updated_job', 'a:2:{s:7:\"enabled\";s:1:\"1\";s:10:\"plain_text\";s:1:\"0\";}', 'yes'),
(336, 'job_manager_email_admin_expiring_job', 'a:3:{s:7:\"enabled\";s:1:\"0\";s:10:\"plain_text\";s:1:\"0\";s:18:\"notice_period_days\";s:1:\"1\";}', 'yes'),
(337, 'job_manager_email_employer_expiring_job', 'a:3:{s:7:\"enabled\";s:1:\"0\";s:10:\"plain_text\";s:1:\"0\";s:18:\"notice_period_days\";s:1:\"1\";}', 'yes'),
(341, '_transient_get_job_listings-transient-version', '1549625441', 'yes'),
(342, 'job_manager_usage_tracking_opt_in_hide', '1', 'yes'),
(356, 'zoom_api_version', '2', 'yes'),
(372, 'zoom_api_key', 'tG5IvmR5RLGACAc3L5gv8A', 'yes'),
(373, 'zoom_api_secret', 'qYFhkjrIJK0EBxZx3BqXCLLSmEdZLtizUXWS', 'yes'),
(393, 'ult_marketo_forms_db_version', '1.0.16', 'yes'),
(438, 'wpcf7', 'a:3:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1549019729;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:11:\"cf7_marketo\";N;}', 'yes'),
(448, '_site_transient_timeout_browser_1cd047219abc0254a9c99e30884ab8c5', '1550230255', 'no'),
(449, '_site_transient_browser_1cd047219abc0254a9c99e30884ab8c5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"70.0.3538.67\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(454, '_transient_jm_get_category-transient-version', '1550235545', 'yes'),
(460, 'widget_wpdevart_countdown', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(462, '_transient_jm_get_post_tag-transient-version', '1550228420', 'yes'),
(469, 'widget_wp_countdown', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(513, 'wedevs_basics', 'a:3:{s:8:\"position\";s:5:\"tleft\";s:5:\"color\";s:7:\"#5a1010\";s:10:\"multicheck\";a:2:{s:5:\"posts\";s:5:\"posts\";s:5:\"pages\";s:5:\"pages\";}}', 'yes'),
(514, 'wedevs_advanced', '', 'yes'),
(558, '_transient_timeout_wpforms_dash_widget_lite_entries_by_form', '1550275204', 'no'),
(559, '_transient_wpforms_dash_widget_lite_entries_by_form', 'a:1:{i:19;a:3:{s:7:\"form_id\";i:19;s:5:\"count\";i:1;s:5:\"title\";s:10:\"Contact us\";}}', 'no'),
(560, '_site_transient_timeout_available_translations', '1550221350', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(561, '_site_transient_available_translations', 'a:114:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 06:00:48\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-09 09:48:33\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-11 16:43:39\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 14:28:15\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-27 18:44:33\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-04 16:49:56\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 11:48:01\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-21 15:30:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-20 22:51:51\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.0.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-24 08:17:39\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 13:30:37\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 13:29:55\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.0.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-13 09:03:58\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 23:07:03\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 07:41:03\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-05 15:59:09\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 23:06:45\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-30 09:51:42\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 20:26:22\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 22:44:17\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-09 15:59:14\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 12:47:45\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-14 13:48:04\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-15 05:21:23\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-06 05:46:26\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-20 17:45:40\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 09:32:29\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2019-02-01 21:20:31\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 01:42:00\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-13 23:30:09\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-13 19:56:01\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 12:14:51\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-13 18:22:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 06:47:53\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2019-01-06 16:23:22\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 14:27:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 18:11:00\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-24 22:25:12\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 07:58:09\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.0.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-18 14:06:09\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-26 17:30:56\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 12:42:03\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-24 07:53:53\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-28 11:22:46\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-07 14:37:33\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-05 17:22:29\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 22:07:58\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 13:50:06\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-10 15:35:30\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 20:30:46\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 18:35:39\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-10 21:54:07\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 06:25:17\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 22:54:23\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-03 15:14:15\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2018-12-31 11:05:02\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.2/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 06:50:01\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-25 02:46:38\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 06:14:39\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2018-12-21 00:57:14\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(568, '_site_transient_timeout_theme_roots', '1550219685', 'no'),
(569, '_site_transient_theme_roots', 'a:7:{s:5:\"niche\";s:7:\"/themes\";s:12:\"oneline-lite\";s:7:\"/themes\";s:4:\"oshi\";s:7:\"/themes\";s:9:\"the-score\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(570, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1550217889;s:7:\"checked\";a:7:{s:5:\"niche\";s:5:\"2.0.0\";s:12:\"oneline-lite\";s:5:\"1.3.6\";s:4:\"oshi\";s:5:\"1.0.0\";s:9:\"the-score\";s:5:\"1.1.0\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:1:{s:9:\"the-score\";a:4:{s:5:\"theme\";s:9:\"the-score\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:39:\"https://wordpress.org/themes/the-score/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/the-score.1.2.1.zip\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(571, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1550217892;s:7:\"checked\";a:13:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:37:\"countdown-addweb/countdown-addweb.php\";s:5:\"1.0.0\";s:39:\"widget-countdown/wpdevart-countdown.php\";s:5:\"2.0.2\";s:45:\"custom-facebook-feed/custom-facebook-feed.php\";s:3:\"2.8\";s:9:\"hello.php\";s:5:\"1.7.1\";s:47:\"krinacountdown-plugin/krinacountdown-plugin.php\";s:5:\"1.0.0\";s:41:\"cf7-marketo-lite/marketo-lite-for-cf7.php\";s:3:\"1.5\";s:37:\"optinmonster/optin-monster-wp-api.php\";s:5:\"1.6.2\";s:44:\"ultimate-marketo-forms/ult_marketo_forms.php\";s:6:\"1.0.16\";s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";s:5:\"2.2.1\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.5.0.4\";s:33:\"wp-job-manager/wp-job-manager.php\";s:6:\"1.32.1\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:46:\"w.org/plugins/video-conferencing-with-zoom-api\";s:4:\"slug\";s:32:\"video-conferencing-with-zoom-api\";s:6:\"plugin\";s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";s:11:\"new_version\";s:5:\"2.2.2\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/video-conferencing-with-zoom-api/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/video-conferencing-with-zoom-api.2.2.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:85:\"https://ps.w.org/video-conferencing-with-zoom-api/assets/icon-128x128.png?rev=1508657\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/video-conferencing-with-zoom-api/assets/banner-772x250.png?rev=1367391\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:5:\"5.3.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"widget-countdown/wpdevart-countdown.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/widget-countdown\";s:4:\"slug\";s:16:\"widget-countdown\";s:6:\"plugin\";s:39:\"widget-countdown/wpdevart-countdown.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/widget-countdown/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/widget-countdown.2.0.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/widget-countdown/assets/icon-128x128.png?rev=1155844\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/widget-countdown/assets/banner-772x250.jpg?rev=1234513\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"custom-facebook-feed/custom-facebook-feed.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/custom-facebook-feed\";s:4:\"slug\";s:20:\"custom-facebook-feed\";s:6:\"plugin\";s:45:\"custom-facebook-feed/custom-facebook-feed.php\";s:11:\"new_version\";s:3:\"2.8\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/custom-facebook-feed/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/custom-facebook-feed.2.8.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/custom-facebook-feed/assets/icon-128x128.png?rev=1841570\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/custom-facebook-feed/assets/banner-772x250.png?rev=1805443\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"cf7-marketo-lite/marketo-lite-for-cf7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/cf7-marketo-lite\";s:4:\"slug\";s:16:\"cf7-marketo-lite\";s:6:\"plugin\";s:41:\"cf7-marketo-lite/marketo-lite-for-cf7.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/cf7-marketo-lite/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/cf7-marketo-lite.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:60:\"https://s.w.org/plugins/geopattern-icon/cf7-marketo-lite.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:37:\"optinmonster/optin-monster-wp-api.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/optinmonster\";s:4:\"slug\";s:12:\"optinmonster\";s:6:\"plugin\";s:37:\"optinmonster/optin-monster-wp-api.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/optinmonster/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/optinmonster.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/optinmonster/assets/icon-256x256.png?rev=1145864\";s:2:\"1x\";s:65:\"https://ps.w.org/optinmonster/assets/icon-128x128.png?rev=1145864\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/optinmonster/assets/banner-1544x500.png?rev=1145863\";s:2:\"1x\";s:67:\"https://ps.w.org/optinmonster/assets/banner-772x250.png?rev=1145863\";}s:11:\"banners_rtl\";a:0:{}}s:44:\"ultimate-marketo-forms/ult_marketo_forms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/ultimate-marketo-forms\";s:4:\"slug\";s:22:\"ultimate-marketo-forms\";s:6:\"plugin\";s:44:\"ultimate-marketo-forms/ult_marketo_forms.php\";s:11:\"new_version\";s:6:\"1.0.16\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/ultimate-marketo-forms/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/ultimate-marketo-forms.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/ultimate-marketo-forms/assets/icon-256x256.png?rev=1634636\";s:2:\"1x\";s:75:\"https://ps.w.org/ultimate-marketo-forms/assets/icon-128x128.png?rev=1634636\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/ultimate-marketo-forms/assets/banner-1544x500.png?rev=1634636\";s:2:\"1x\";s:77:\"https://ps.w.org/ultimate-marketo-forms/assets/banner-772x250.png?rev=1634636\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-job-manager/wp-job-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-job-manager\";s:4:\"slug\";s:14:\"wp-job-manager\";s:6:\"plugin\";s:33:\"wp-job-manager/wp-job-manager.php\";s:11:\"new_version\";s:6:\"1.32.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-job-manager/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-job-manager.1.32.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-job-manager/assets/icon-256x256.png?rev=1035478\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-job-manager/assets/icon-128x128.png?rev=1035478\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/wp-job-manager/assets/banner-772x250.png?rev=1035478\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(577, '_transient_timeout_jm_pending_job_listing_count_user_1', '1550836345', 'no'),
(578, '_transient_jm_pending_job_listing_count_user_1', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1547211394:1'),
(11, 10, '_wp_attached_file', '2019/01/download.jpeg'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:21:\"2019/01/download.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"download-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"download-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 11, '_wp_attached_file', '2019/01/cropped-download.jpeg'),
(14, 11, '_wp_attachment_context', 'custom-header'),
(15, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2019/01/cropped-download.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-download-300x180.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-download-768x461.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-download-1024x614.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:29:\"cropped-download-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:10;}'),
(16, 11, '_wp_attachment_custom_header_last_used_twentyseventeen', '1547194638'),
(17, 11, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(22, 2, '_edit_lock', '1550227353:1'),
(26, 23, '_wp_attached_file', '2019/01/cropped-download-1.jpeg'),
(27, 23, '_wp_attachment_context', 'custom-logo'),
(28, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2019/01/cropped-download-1.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-download-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 24, '_wp_attached_file', '2019/01/AddWeb-Solution-Logo.png'),
(30, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:32:\"2019/01/AddWeb-Solution-Logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"AddWeb-Solution-Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 25, '_wp_attached_file', '2019/01/cropped-AddWeb-Solution-Logo.png'),
(32, 25, '_wp_attachment_context', 'site-icon'),
(33, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:40:\"2019/01/cropped-AddWeb-Solution-Logo.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"niche-thumbnail-image\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-420x247.png\";s:5:\"width\";i:420;s:6:\"height\";i:247;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"niche-blog-thumbnail-image\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-512x390.png\";s:5:\"width\";i:512;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}s:31:\"niche-blog-thumbnail-image-home\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-512x298.png\";s:5:\"width\";i:512;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:40:\"cropped-AddWeb-Solution-Logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:38:\"cropped-AddWeb-Solution-Logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 27, '_wp_attached_file', '2019/01/cropped-download-2.jpeg'),
(38, 27, '_wp_attachment_context', 'site-icon'),
(39, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:31:\"2019/01/cropped-download-2.jpeg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"niche-thumbnail-image\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-420x247.jpeg\";s:5:\"width\";i:420;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"niche-blog-thumbnail-image\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-512x390.jpeg\";s:5:\"width\";i:512;s:6:\"height\";i:390;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"niche-blog-thumbnail-image-home\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-512x298.jpeg\";s:5:\"width\";i:512;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-270x270.jpeg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-192x192.jpeg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:31:\"cropped-download-2-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:29:\"cropped-download-2-32x32.jpeg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 30, '_wp_attached_file', '2019/01/cropped-download-3.jpeg'),
(45, 30, '_wp_attachment_context', 'custom-header'),
(46, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2019/01/cropped-download-3.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-download-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:10;}'),
(47, 30, '_wp_attachment_custom_header_last_used_niche', '1547207883'),
(48, 30, '_wp_attachment_is_custom_header', 'niche'),
(49, 1, '_edit_lock', '1547207871:1'),
(51, 32, '_edit_lock', '1547208284:1'),
(52, 19, 'wpforms_entries_count', '1'),
(53, 38, '_filled', '0'),
(54, 38, '_featured', '0'),
(55, 38, '_edit_lock', '1548918911:1'),
(56, 38, '_job_expires', '2019-03-02'),
(57, 38, '_edit_last', '1'),
(58, 38, '_job_location', 'india'),
(59, 38, '_application', 'johnnyharpertesting@gmail.com'),
(60, 38, '_company_name', 'tests'),
(61, 38, '_company_website', ''),
(62, 38, '_company_tagline', ''),
(63, 38, '_company_twitter', ''),
(64, 38, '_company_video', ''),
(65, 39, '_menu_item_type', 'custom'),
(66, 39, '_menu_item_menu_item_parent', '0'),
(67, 39, '_menu_item_object_id', '39'),
(68, 39, '_menu_item_object', 'custom'),
(69, 39, '_menu_item_target', ''),
(70, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 39, '_menu_item_xfn', ''),
(72, 39, '_menu_item_url', 'http://localhost/public/wordpress/'),
(73, 39, '_menu_item_orphaned', '1548916103'),
(74, 40, '_menu_item_type', 'post_type'),
(75, 40, '_menu_item_menu_item_parent', '0'),
(76, 40, '_menu_item_object_id', '2'),
(77, 40, '_menu_item_object', 'page'),
(78, 40, '_menu_item_target', ''),
(79, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 40, '_menu_item_xfn', ''),
(81, 40, '_menu_item_url', ''),
(82, 40, '_menu_item_orphaned', '1548916103'),
(83, 41, '_menu_item_type', 'post_type'),
(84, 41, '_menu_item_menu_item_parent', '0'),
(85, 41, '_menu_item_object_id', '32'),
(86, 41, '_menu_item_object', 'page'),
(87, 41, '_menu_item_target', ''),
(88, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 41, '_menu_item_xfn', ''),
(90, 41, '_menu_item_url', ''),
(91, 41, '_menu_item_orphaned', '1548916103'),
(92, 42, '_menu_item_type', 'post_type'),
(93, 42, '_menu_item_menu_item_parent', '0'),
(94, 42, '_menu_item_object_id', '5'),
(95, 42, '_menu_item_object', 'page'),
(96, 42, '_menu_item_target', ''),
(97, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 42, '_menu_item_xfn', ''),
(99, 42, '_menu_item_url', ''),
(100, 42, '_menu_item_orphaned', '1548916103'),
(101, 43, '_menu_item_type', 'custom'),
(102, 43, '_menu_item_menu_item_parent', '0'),
(103, 43, '_menu_item_object_id', '43'),
(104, 43, '_menu_item_object', 'custom'),
(105, 43, '_menu_item_target', ''),
(106, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 43, '_menu_item_xfn', ''),
(108, 43, '_menu_item_url', 'http://localhost/public/wordpress/'),
(109, 43, '_menu_item_orphaned', '1548916108'),
(110, 44, '_menu_item_type', 'post_type'),
(111, 44, '_menu_item_menu_item_parent', '0'),
(112, 44, '_menu_item_object_id', '2'),
(113, 44, '_menu_item_object', 'page'),
(114, 44, '_menu_item_target', ''),
(115, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 44, '_menu_item_xfn', ''),
(117, 44, '_menu_item_url', ''),
(118, 44, '_menu_item_orphaned', '1548916108'),
(119, 45, '_menu_item_type', 'post_type'),
(120, 45, '_menu_item_menu_item_parent', '0'),
(121, 45, '_menu_item_object_id', '32'),
(122, 45, '_menu_item_object', 'page'),
(123, 45, '_menu_item_target', ''),
(124, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 45, '_menu_item_xfn', ''),
(126, 45, '_menu_item_url', ''),
(127, 45, '_menu_item_orphaned', '1548916109'),
(128, 46, '_menu_item_type', 'post_type'),
(129, 46, '_menu_item_menu_item_parent', '0'),
(130, 46, '_menu_item_object_id', '5'),
(131, 46, '_menu_item_object', 'page'),
(132, 46, '_menu_item_target', ''),
(133, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 46, '_menu_item_xfn', ''),
(135, 46, '_menu_item_url', ''),
(136, 46, '_menu_item_orphaned', '1548916109'),
(137, 47, '_menu_item_type', 'custom'),
(138, 47, '_menu_item_menu_item_parent', '0'),
(139, 47, '_menu_item_object_id', '47'),
(140, 47, '_menu_item_object', 'custom'),
(141, 47, '_menu_item_target', ''),
(142, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 47, '_menu_item_xfn', ''),
(144, 47, '_menu_item_url', 'http://localhost/public/wordpress/'),
(145, 47, '_menu_item_orphaned', '1548916120'),
(146, 48, '_menu_item_type', 'post_type'),
(147, 48, '_menu_item_menu_item_parent', '0'),
(148, 48, '_menu_item_object_id', '2'),
(149, 48, '_menu_item_object', 'page'),
(150, 48, '_menu_item_target', ''),
(151, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 48, '_menu_item_xfn', ''),
(153, 48, '_menu_item_url', ''),
(154, 48, '_menu_item_orphaned', '1548916120'),
(155, 49, '_menu_item_type', 'post_type'),
(156, 49, '_menu_item_menu_item_parent', '0'),
(157, 49, '_menu_item_object_id', '32'),
(158, 49, '_menu_item_object', 'page'),
(159, 49, '_menu_item_target', ''),
(160, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 49, '_menu_item_xfn', ''),
(162, 49, '_menu_item_url', ''),
(163, 49, '_menu_item_orphaned', '1548916120'),
(164, 50, '_menu_item_type', 'post_type'),
(165, 50, '_menu_item_menu_item_parent', '0'),
(166, 50, '_menu_item_object_id', '5'),
(167, 50, '_menu_item_object', 'page'),
(168, 50, '_menu_item_target', ''),
(169, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 50, '_menu_item_xfn', ''),
(171, 50, '_menu_item_url', ''),
(172, 50, '_menu_item_orphaned', '1548916120'),
(173, 51, '_menu_item_type', 'custom'),
(174, 51, '_menu_item_menu_item_parent', '0'),
(175, 51, '_menu_item_object_id', '51'),
(176, 51, '_menu_item_object', 'custom'),
(177, 51, '_menu_item_target', ''),
(178, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 51, '_menu_item_xfn', ''),
(180, 51, '_menu_item_url', 'http://localhost/public/wordpress/'),
(181, 51, '_menu_item_orphaned', '1548916142'),
(182, 52, '_menu_item_type', 'post_type'),
(183, 52, '_menu_item_menu_item_parent', '0'),
(184, 52, '_menu_item_object_id', '2'),
(185, 52, '_menu_item_object', 'page'),
(186, 52, '_menu_item_target', ''),
(187, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 52, '_menu_item_xfn', ''),
(189, 52, '_menu_item_url', ''),
(190, 52, '_menu_item_orphaned', '1548916142'),
(191, 53, '_menu_item_type', 'post_type'),
(192, 53, '_menu_item_menu_item_parent', '0'),
(193, 53, '_menu_item_object_id', '32'),
(194, 53, '_menu_item_object', 'page'),
(195, 53, '_menu_item_target', ''),
(196, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 53, '_menu_item_xfn', ''),
(198, 53, '_menu_item_url', ''),
(199, 53, '_menu_item_orphaned', '1548916142'),
(200, 54, '_menu_item_type', 'post_type'),
(201, 54, '_menu_item_menu_item_parent', '0'),
(202, 54, '_menu_item_object_id', '5'),
(203, 54, '_menu_item_object', 'page'),
(204, 54, '_menu_item_target', ''),
(205, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 54, '_menu_item_xfn', ''),
(207, 54, '_menu_item_url', ''),
(208, 54, '_menu_item_orphaned', '1548916142'),
(209, 55, '_menu_item_type', 'custom'),
(210, 55, '_menu_item_menu_item_parent', '0'),
(211, 55, '_menu_item_object_id', '55'),
(212, 55, '_menu_item_object', 'custom'),
(213, 55, '_menu_item_target', ''),
(214, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 55, '_menu_item_xfn', ''),
(216, 55, '_menu_item_url', 'http://localhost/public/wordpress/'),
(217, 55, '_menu_item_orphaned', '1548916211'),
(218, 56, '_menu_item_type', 'post_type'),
(219, 56, '_menu_item_menu_item_parent', '0'),
(220, 56, '_menu_item_object_id', '2'),
(221, 56, '_menu_item_object', 'page'),
(222, 56, '_menu_item_target', ''),
(223, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 56, '_menu_item_xfn', ''),
(225, 56, '_menu_item_url', ''),
(226, 56, '_menu_item_orphaned', '1548916211'),
(227, 57, '_menu_item_type', 'post_type'),
(228, 57, '_menu_item_menu_item_parent', '0'),
(229, 57, '_menu_item_object_id', '32'),
(230, 57, '_menu_item_object', 'page'),
(231, 57, '_menu_item_target', ''),
(232, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 57, '_menu_item_xfn', ''),
(234, 57, '_menu_item_url', ''),
(235, 57, '_menu_item_orphaned', '1548916211'),
(236, 58, '_menu_item_type', 'post_type'),
(237, 58, '_menu_item_menu_item_parent', '0'),
(238, 58, '_menu_item_object_id', '5'),
(239, 58, '_menu_item_object', 'page'),
(240, 58, '_menu_item_target', ''),
(241, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(242, 58, '_menu_item_xfn', ''),
(243, 58, '_menu_item_url', ''),
(244, 58, '_menu_item_orphaned', '1548916211'),
(245, 59, '_menu_item_type', 'custom'),
(246, 59, '_menu_item_menu_item_parent', '0'),
(247, 59, '_menu_item_object_id', '59'),
(248, 59, '_menu_item_object', 'custom'),
(249, 59, '_menu_item_target', ''),
(250, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 59, '_menu_item_xfn', ''),
(252, 59, '_menu_item_url', 'http://localhost/public/wordpress/'),
(253, 59, '_menu_item_orphaned', '1548916228'),
(254, 60, '_menu_item_type', 'post_type'),
(255, 60, '_menu_item_menu_item_parent', '0'),
(256, 60, '_menu_item_object_id', '2'),
(257, 60, '_menu_item_object', 'page'),
(258, 60, '_menu_item_target', ''),
(259, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 60, '_menu_item_xfn', ''),
(261, 60, '_menu_item_url', ''),
(262, 60, '_menu_item_orphaned', '1548916229'),
(263, 61, '_menu_item_type', 'post_type'),
(264, 61, '_menu_item_menu_item_parent', '0'),
(265, 61, '_menu_item_object_id', '32'),
(266, 61, '_menu_item_object', 'page'),
(267, 61, '_menu_item_target', ''),
(268, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 61, '_menu_item_xfn', ''),
(270, 61, '_menu_item_url', ''),
(271, 61, '_menu_item_orphaned', '1548916229'),
(272, 62, '_menu_item_type', 'post_type'),
(273, 62, '_menu_item_menu_item_parent', '0'),
(274, 62, '_menu_item_object_id', '5'),
(275, 62, '_menu_item_object', 'page'),
(276, 62, '_menu_item_target', ''),
(277, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 62, '_menu_item_xfn', ''),
(279, 62, '_menu_item_url', ''),
(280, 62, '_menu_item_orphaned', '1548916229'),
(281, 63, '_edit_lock', '1548918916:1'),
(285, 69, '_menu_item_type', 'custom'),
(286, 69, '_menu_item_menu_item_parent', '0'),
(287, 69, '_menu_item_object_id', '69'),
(288, 69, '_menu_item_object', 'custom'),
(289, 69, '_menu_item_target', ''),
(290, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 69, '_menu_item_xfn', ''),
(292, 69, '_menu_item_url', 'http://localhost/public/wordpress/'),
(293, 69, '_menu_item_orphaned', '1548916607'),
(294, 70, '_menu_item_type', 'post_type'),
(295, 70, '_menu_item_menu_item_parent', '0'),
(296, 70, '_menu_item_object_id', '2'),
(297, 70, '_menu_item_object', 'page'),
(298, 70, '_menu_item_target', ''),
(299, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 70, '_menu_item_xfn', ''),
(301, 70, '_menu_item_url', ''),
(302, 70, '_menu_item_orphaned', '1548916607'),
(303, 71, '_menu_item_type', 'post_type'),
(304, 71, '_menu_item_menu_item_parent', '0'),
(305, 71, '_menu_item_object_id', '32'),
(306, 71, '_menu_item_object', 'page'),
(307, 71, '_menu_item_target', ''),
(308, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(309, 71, '_menu_item_xfn', ''),
(310, 71, '_menu_item_url', ''),
(311, 71, '_menu_item_orphaned', '1548916607'),
(312, 72, '_menu_item_type', 'post_type'),
(313, 72, '_menu_item_menu_item_parent', '0'),
(314, 72, '_menu_item_object_id', '5'),
(315, 72, '_menu_item_object', 'page'),
(316, 72, '_menu_item_target', ''),
(317, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(318, 72, '_menu_item_xfn', ''),
(319, 72, '_menu_item_url', ''),
(320, 72, '_menu_item_orphaned', '1548916607'),
(321, 73, '_menu_item_type', 'post_type'),
(322, 73, '_menu_item_menu_item_parent', '0'),
(323, 73, '_menu_item_object_id', '66'),
(324, 73, '_menu_item_object', 'page'),
(325, 73, '_menu_item_target', ''),
(326, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(327, 73, '_menu_item_xfn', ''),
(328, 73, '_menu_item_url', ''),
(329, 73, '_menu_item_orphaned', '1548916608'),
(330, 74, '_menu_item_type', 'post_type'),
(331, 74, '_menu_item_menu_item_parent', '0'),
(332, 74, '_menu_item_object_id', '63'),
(333, 74, '_menu_item_object', 'page'),
(334, 74, '_menu_item_target', ''),
(335, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(336, 74, '_menu_item_xfn', ''),
(337, 74, '_menu_item_url', ''),
(338, 74, '_menu_item_orphaned', '1548916608'),
(339, 75, '_menu_item_type', 'post_type'),
(340, 75, '_menu_item_menu_item_parent', '0'),
(341, 75, '_menu_item_object_id', '67'),
(342, 75, '_menu_item_object', 'page'),
(343, 75, '_menu_item_target', ''),
(344, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(345, 75, '_menu_item_xfn', ''),
(346, 75, '_menu_item_url', ''),
(347, 75, '_menu_item_orphaned', '1548916608'),
(348, 76, '_menu_item_type', 'post_type'),
(349, 76, '_menu_item_menu_item_parent', '0'),
(350, 76, '_menu_item_object_id', '65'),
(351, 76, '_menu_item_object', 'page'),
(352, 76, '_menu_item_target', ''),
(353, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(354, 76, '_menu_item_xfn', ''),
(355, 76, '_menu_item_url', ''),
(356, 76, '_menu_item_orphaned', '1548916608'),
(357, 67, '_edit_lock', '1548918911:1'),
(358, 63, '_wp_trash_meta_status', 'publish'),
(359, 63, '_wp_trash_meta_time', '1548916654'),
(360, 63, '_wp_desired_post_slug', 'jobs'),
(361, 78, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(362, 78, '_mail', 'a:8:{s:7:\"subject\";s:23:\"Addweb \"[your-subject]\"\";s:6:\"sender\";s:38:\"Addweb <johnnyharpertesting@gmail.com>\";s:4:\"body\";s:178:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Addweb (http://localhost/public/wordpress)\";s:9:\"recipient\";s:29:\"johnnyharpertesting@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(363, 78, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Addweb \"[your-subject]\"\";s:6:\"sender\";s:38:\"Addweb <johnnyharpertesting@gmail.com>\";s:4:\"body\";s:120:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Addweb (http://localhost/public/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:39:\"Reply-To: johnnyharpertesting@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(364, 78, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(365, 78, '_additional_settings', NULL),
(366, 78, '_locale', 'en_US'),
(367, 80, '_edit_lock', '1549633777:1'),
(372, 65, '_edit_lock', '1549628760:1'),
(373, 85, '_edit_lock', '1550233186:1'),
(374, 87, '_edit_lock', '1550226471:1'),
(375, 88, '_edit_lock', '1550226477:1'),
(376, 89, '_edit_lock', '1550226508:1'),
(377, 90, '_edit_lock', '1550226519:1'),
(378, 91, '_edit_lock', '1550226595:1'),
(379, 92, '_edit_lock', '1550226753:1'),
(380, 93, '_edit_lock', '1550227392:1'),
(381, 94, '_edit_lock', '1550227257:1'),
(382, 95, '_edit_lock', '1550228606:1'),
(383, 96, '_edit_lock', '1550228734:1'),
(384, 97, '_edit_lock', '1550229244:1'),
(385, 98, '_edit_lock', '1550228963:1'),
(386, 99, '_edit_lock', '1550229161:1'),
(387, 100, '_edit_lock', '1550229023:1'),
(388, 101, '_edit_lock', '1550229031:1'),
(389, 102, '_edit_lock', '1550229046:1'),
(390, 103, '_edit_lock', '1550229242:1'),
(391, 104, '_edit_lock', '1550229655:1'),
(392, 105, '_edit_lock', '1550229686:1'),
(393, 106, '_edit_lock', '1550229894:1'),
(394, 107, '_edit_lock', '1550229761:1'),
(395, 108, '_edit_lock', '1550230229:1'),
(396, 109, '_edit_lock', '1550231542:1'),
(397, 110, '_edit_lock', '1550231425:1'),
(398, 111, '_edit_lock', '1550232183:1'),
(399, 112, '_edit_lock', '1550232210:1'),
(400, 113, '_edit_lock', '1550232214:1'),
(401, 114, '_edit_lock', '1550232297:1'),
(402, 115, '_edit_lock', '1550233193:1'),
(403, 116, '_edit_lock', '1550233202:1'),
(404, 117, '_edit_lock', '1550233349:1'),
(405, 118, '_edit_lock', '1550233207:1'),
(406, 119, '_edit_lock', '1550233353:1'),
(407, 120, '_edit_lock', '1550233353:1'),
(408, 121, '_edit_lock', '1550233354:1'),
(409, 122, '_edit_lock', '1550233354:1'),
(410, 123, '_edit_lock', '1550233354:1'),
(411, 124, '_edit_lock', '1550233354:1'),
(412, 125, '_edit_lock', '1550233354:1'),
(413, 126, '_edit_lock', '1550233355:1'),
(414, 127, '_edit_lock', '1550233355:1'),
(415, 128, '_edit_lock', '1550233355:1'),
(416, 129, '_edit_lock', '1550233211:1'),
(417, 130, '_edit_lock', '1550233437:1'),
(418, 131, '_edit_lock', '1550233317:1'),
(419, 132, '_edit_lock', '1550233325:1'),
(420, 133, '_edit_lock', '1550233330:1'),
(421, 134, '_edit_lock', '1550233523:1'),
(422, 135, '_edit_lock', '1550233393:1'),
(423, 136, '_edit_lock', '1550233412:1'),
(424, 137, '_edit_lock', '1550233429:1'),
(425, 138, '_edit_lock', '1550233713:1'),
(426, 139, '_edit_lock', '1550233753:1'),
(427, 140, '_edit_lock', '1550235539:1'),
(428, 141, '_edit_lock', '1550236318:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-11 08:04:31', '2019-01-11 08:04:31', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-01-11 08:04:31', '2019-01-11 08:04:31', '', 0, 'http://localhost/public/wordpress/?p=1', 0, 'post', '', 2),
(2, 1, '2019-01-11 08:04:31', '2019-01-11 08:04:31', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/public/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-01-11 08:20:47', '2019-01-11 08:20:47', '', 0, 'http://localhost/public/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-11 08:04:31', '2019-01-11 08:04:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/public/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-11 08:04:31', '2019-01-11 08:04:31', '', 0, 'http://localhost/public/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-01-11 08:11:34', '2019-01-11 08:11:34', '<!-- wp:paragraph -->\n<p>Welcome to the site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'addweb', '', '', '2019-01-11 12:18:00', '2019-01-11 12:18:00', '', 0, 'http://localhost/public/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-01-11 08:11:30', '2019-01-11 08:11:30', '<!-- wp:paragraph -->\n<p>Let\'s talk solution</p>\n<!-- /wp:paragraph -->', 'Addweb', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-11 08:11:30', '2019-01-11 08:11:30', '', 5, 'http://localhost/public/wordpress/2019/01/11/5-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-01-11 08:17:06', '2019-01-11 08:17:06', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-01-11 08:17:06', '2019-01-11 08:17:06', '', 0, 'http://localhost/public/wordpress/wp-content/uploads/2019/01/download.jpeg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2019-01-11 08:17:15', '2019-01-11 08:17:15', '', 'cropped-download.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-download-jpeg', '', '', '2019-01-11 08:17:15', '2019-01-11 08:17:15', '', 0, 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download.jpeg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-01-11 08:18:43', '2019-01-11 08:18:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-11 08:18:43', '2019-01-11 08:18:43', '', 5, 'http://localhost/public/wordpress/2019/01/11/5-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-01-11 08:20:47', '2019-01-11 08:20:47', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/public/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-11 08:20:47', '2019-01-11 08:20:47', '', 2, 'http://localhost/public/wordpress/2019/01/11/2-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-01-11 08:28:29', '2019-01-11 08:28:29', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publicly accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2019-01-11 08:28:29', '2019-01-11 08:28:29', '', 0, 'http://localhost/public/wordpress/wpforms-preview/', 0, 'page', '', 0),
(19, 1, '2019-01-11 08:28:59', '2019-01-11 08:28:59', '{\"id\":\"19\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"Contact us\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Contact us\",\"sender_name\":\"{field_id=\\\"0\\\"}\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"2\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-01-11 08:29:36', '2019-01-11 08:29:36', '', 0, 'http://localhost/public/wordpress/?post_type=wpforms&#038;p=19', 0, 'wpforms', '', 0),
(22, 1, '2019-01-11 09:56:50', '2019-01-11 09:56:50', '<!-- wp:paragraph -->\n<p>2332rwefdffgrtg54</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>wetr34rt54g</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>weer34r34</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-11 09:56:50', '2019-01-11 09:56:50', '', 5, 'http://localhost/public/wordpress/2019/01/11/5-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-01-11 11:55:49', '2019-01-11 11:55:49', 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download-1.jpeg', 'cropped-download-1.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-download-1-jpeg', '', '', '2019-01-11 11:55:49', '2019-01-11 11:55:49', '', 0, 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-01-11 11:56:32', '2019-01-11 11:56:32', '', 'AddWeb-Solution-Logo', '', 'inherit', 'open', 'closed', '', 'addweb-solution-logo', '', '', '2019-01-11 11:56:32', '2019-01-11 11:56:32', '', 0, 'http://localhost/public/wordpress/wp-content/uploads/2019/01/AddWeb-Solution-Logo.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2019-01-11 11:56:38', '2019-01-11 11:56:38', 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-AddWeb-Solution-Logo.png', 'cropped-AddWeb-Solution-Logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-addweb-solution-logo-png', '', '', '2019-01-11 11:56:38', '2019-01-11 11:56:38', '', 0, 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-AddWeb-Solution-Logo.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-01-11 11:57:12', '2019-01-11 11:57:12', 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download-2.jpeg', 'cropped-download-2.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-download-2-jpeg', '', '', '2019-01-11 11:57:12', '2019-01-11 11:57:12', '', 0, 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-01-11 11:58:03', '2019-01-11 11:58:03', '', 'cropped-download-3.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-download-3-jpeg', '', '', '2019-01-11 11:58:03', '2019-01-11 11:58:03', '', 0, 'http://localhost/public/wordpress/wp-content/uploads/2019/01/cropped-download-3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-01-11 12:05:06', '2019-01-11 12:05:06', '<!-- wp:heading -->\n<h2>[wpforms id=\"19\" title=\"false\" description=\"false\"]</h2>\n<!-- /wp:heading -->', 'Contact us', '', 'publish', 'closed', 'closed', '', '32-2', '', '', '2019-01-11 12:06:24', '2019-01-11 12:06:24', '', 0, 'http://localhost/public/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2019-01-11 12:05:06', '2019-01-11 12:05:06', '<!-- wp:heading -->\n<h2>[wpforms id=\"19\" title=\"false\" description=\"false\"]</h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-01-11 12:05:06', '2019-01-11 12:05:06', '', 32, 'http://localhost/public/wordpress/2019/01/11/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-01-11 12:06:24', '2019-01-11 12:06:24', '<!-- wp:heading -->\n<h2>[wpforms id=\"19\" title=\"false\" description=\"false\"]</h2>\n<!-- /wp:heading -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-01-11 12:06:24', '2019-01-11 12:06:24', '', 32, 'http://localhost/public/wordpress/2019/01/11/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-01-11 12:14:59', '2019-01-11 12:14:59', '<!-- wp:paragraph -->\n<p>2332rwefdffgrtg54</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>wetr34rt54g</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[custom-facebook-feed]</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-11 12:14:59', '2019-01-11 12:14:59', '', 5, 'http://localhost/public/wordpress/2019/01/11/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-01-11 12:18:00', '2019-01-11 12:18:00', '<!-- wp:paragraph -->\n<p>Welcome to the site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-11 12:18:00', '2019-01-11 12:18:00', '', 5, 'http://localhost/public/wordpress/2019/01/11/5-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-01-31 06:27:41', '2019-01-31 06:27:41', 'test developer', 'Sr Developer', '', 'publish', 'closed', 'closed', '', 'sr-developer', '', '', '2019-01-31 06:27:41', '2019-01-31 06:27:41', '', 0, 'http://localhost/public/wordpress/?post_type=job_listing&#038;p=38', 0, 'job_listing', '', 0),
(39, 1, '2019-01-31 06:28:23', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2019-01-31 06:28:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-01-31 06:28:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-01-31 06:28:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2019-01-31 06:28:28', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-01-31 06:28:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-01-31 06:28:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2019-01-31 06:28:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2019-01-31 06:28:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2019-01-31 06:28:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2019-01-31 06:28:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2019-01-31 06:28:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:28:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2019-01-31 06:29:02', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:29:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2019-01-31 06:29:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:29:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2019-01-31 06:29:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:29:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2019-01-31 06:29:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:29:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2019-01-31 06:30:10', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2019-01-31 06:30:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2019-01-31 06:30:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2019-01-31 06:30:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2019-01-31 06:30:28', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2019-01-31 06:30:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2019-01-31 06:30:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2019-01-31 06:30:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:30:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2019-01-31 06:31:02', '2019-01-31 06:31:02', '', 'Jobs', '', 'trash', 'closed', 'closed', '', 'jobs__trashed', '', '', '2019-01-31 06:37:34', '2019-01-31 06:37:34', '', 0, 'http://localhost/public/wordpress/?page_id=63', 0, 'page', '', 0),
(64, 1, '2019-01-31 06:31:02', '2019-01-31 06:31:02', '', 'Jobs', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-01-31 06:31:02', '2019-01-31 06:31:02', '', 63, 'http://localhost/public/wordpress/2019/01/31/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-01-31 06:33:48', '2019-01-31 06:33:48', '[submit_job_form]', 'Post a Job', '', 'publish', 'closed', 'closed', '', 'post-a-job', '', '', '2019-01-31 06:33:48', '2019-01-31 06:33:48', '', 0, 'http://localhost/public/wordpress/post-a-job/', 0, 'page', '', 0),
(66, 1, '2019-01-31 06:33:48', '2019-01-31 06:33:48', '[job_dashboard]', 'Job Dashboard', '', 'publish', 'closed', 'closed', '', 'job-dashboard', '', '', '2019-01-31 06:33:48', '2019-01-31 06:33:48', '', 0, 'http://localhost/public/wordpress/job-dashboard/', 0, 'page', '', 0),
(67, 1, '2019-01-31 06:33:48', '2019-01-31 06:33:48', '[jobs]', 'Jobs', '', 'publish', 'closed', 'closed', '', 'jobs', '', '', '2019-01-31 06:37:44', '2019-01-31 06:37:44', '', 0, 'http://localhost/public/wordpress/jobs-2/', 0, 'page', '', 0),
(69, 1, '2019-01-31 06:36:47', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2019-01-31 06:36:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2019-01-31 06:36:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2019-01-31 06:36:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=72', 1, 'nav_menu_item', '', 0),
(73, 1, '2019-01-31 06:36:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=73', 1, 'nav_menu_item', '', 0),
(74, 1, '2019-01-31 06:36:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2019-01-31 06:36:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=75', 1, 'nav_menu_item', '', 0),
(76, 1, '2019-01-31 06:36:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-31 06:36:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2019-01-31 06:37:44', '2019-01-31 06:37:44', '[jobs]', 'Jobs', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2019-01-31 06:37:44', '2019-01-31 06:37:44', '', 67, 'http://localhost/public/wordpress/2019/01/31/67-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-02-01 11:15:29', '2019-02-01 11:15:29', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nAddweb \"[your-subject]\"\nAddweb <johnnyharpertesting@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Addweb (http://localhost/public/wordpress)\njohnnyharpertesting@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nAddweb \"[your-subject]\"\nAddweb <johnnyharpertesting@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Addweb (http://localhost/public/wordpress)\n[your-email]\nReply-To: johnnyharpertesting@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-02-01 11:15:29', '2019-02-01 11:15:29', '', 0, 'http://localhost/public/wordpress/?post_type=wpcf7_contact_form&p=78', 0, 'wpcf7_contact_form', '', 0),
(79, 1, '2019-02-08 11:30:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-08 11:30:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=79', 0, 'post', '', 0),
(80, 1, '2019-02-08 11:57:00', '2019-02-08 11:57:00', '<!-- wp:paragraph -->\n<p>fsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasda</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpdevart-countdown/countdown {\"countdown_start_date\":\"1549627035\",\"countdown_in_content_position\":\"left\"} -->\n[wpdevart_countdown text_for_day=\"Days\" text_for_hour=\"Hours\" text_for_minut=\"Minutes\" text_for_second=\"Seconds\" countdown_end_type=\"time\" end_date=\"\" start_time=\"1549627035\" end_time=\"0,1,1\" action_end_time=\"hide\" content_position=\"left\" top_ditance=\"10\" bottom_distance=\"10\" countdown_type=\"button\" font_color=\"#000000\" button_bg_color=\"#3DA8CC\" circle_size=\"130\" circle_border=\"5\" border_radius=\"8\" font_size=\"30\" countdown_font_famaly=\"monospace\" animation_type=\"\"][/wpdevart_countdown]\n<!-- /wp:wpdevart-countdown/countdown -->', 'test blog', '', 'publish', 'open', 'open', '', 'test-blog', '', '', '2019-02-08 11:58:33', '2019-02-08 11:58:33', '', 0, 'http://localhost/public/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2019-02-08 11:57:00', '2019-02-08 11:57:00', '<!-- wp:paragraph -->\n<p>fsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasda</p>\n<!-- /wp:paragraph -->', 'test blog', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-02-08 11:57:00', '2019-02-08 11:57:00', '', 80, 'http://localhost/public/wordpress/2019/02/08/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-02-08 13:49:29', '2019-02-08 13:49:29', '<!-- wp:paragraph -->\n<p>fsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasda</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpdevart-countdown/countdown {\"countdown_start_date\":\"1549627035\",\"countdown_in_content_position\":\"left\"} -->\n[wpdevart_countdown text_for_day=\"Days\" text_for_hour=\"Hours\" text_for_minut=\"Minutes\" text_for_second=\"Seconds\" countdown_end_type=\"time\" end_date=\"\" start_time=\"1549627035\" end_time=\"0,1,1\" action_end_time=\"hide\" content_position=\"left\" top_ditance=\"10\" bottom_distance=\"10\" countdown_type=\"button\" font_color=\"#000000\" button_bg_color=\"#3DA8CC\" circle_size=\"130\" circle_border=\"5\" border_radius=\"8\" font_size=\"30\" countdown_font_famaly=\"monospace\" animation_type=\"\"][/wpdevart_countdown]\n<!-- /wp:wpdevart-countdown/countdown -->\n\n<!-- wp:wp-countdown/countdown {\"countdown_start_date\":\"1549633162\"} -->\n[wp_countdown text_for_day=\"Days\" text_for_hour=\"Hours\" text_for_minut=\"Minutes\" text_for_second=\"Seconds\" countdown_end_type=\"time\" end_date=\"\" start_time=\"1549633162\" end_time=\"0,1,1\" action_end_time=\"hide\" content_position=\"center\" top_ditance=\"10\" bottom_distance=\"10\" countdown_type=\"button\" font_color=\"#000000\" button_bg_color=\"#3DA8CC\" circle_size=\"130\" circle_border=\"5\" border_radius=\"8\" font_size=\"30\" countdown_font_famaly=\"monospace\" animation_type=\"\"][/wp_countdown]\n<!-- /wp:wp-countdown/countdown -->', 'test blog', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2019-02-08 13:49:29', '2019-02-08 13:49:29', '', 80, 'http://localhost/public/wordpress/2019/02/08/80-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2019-02-08 11:58:33', '2019-02-08 11:58:33', '<!-- wp:paragraph -->\n<p>fsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasdafsasdfsdafasdfsadfsdfasda</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpdevart-countdown/countdown {\"countdown_start_date\":\"1549627035\",\"countdown_in_content_position\":\"left\"} -->\n[wpdevart_countdown text_for_day=\"Days\" text_for_hour=\"Hours\" text_for_minut=\"Minutes\" text_for_second=\"Seconds\" countdown_end_type=\"time\" end_date=\"\" start_time=\"1549627035\" end_time=\"0,1,1\" action_end_time=\"hide\" content_position=\"left\" top_ditance=\"10\" bottom_distance=\"10\" countdown_type=\"button\" font_color=\"#000000\" button_bg_color=\"#3DA8CC\" circle_size=\"130\" circle_border=\"5\" border_radius=\"8\" font_size=\"30\" countdown_font_famaly=\"monospace\" animation_type=\"\"][/wpdevart_countdown]\n<!-- /wp:wpdevart-countdown/countdown -->', 'test blog', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-02-08 11:58:33', '2019-02-08 11:58:33', '', 80, 'http://localhost/public/wordpress/2019/02/08/80-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-02-08 12:26:26', '2019-02-08 12:26:26', '<p>[submit_job_form]</p>\n\n<!-- wp:wpdevart-countdown/countdown {\"countdown_start_date\":\"1549627379\"} -->\n[wpdevart_countdown text_for_day=\"Days\" text_for_hour=\"Hours\" text_for_minut=\"Minutes\" text_for_second=\"Seconds\" countdown_end_type=\"time\" end_date=\"\" start_time=\"1549627379\" end_time=\"0,1,1\" action_end_time=\"hide\" content_position=\"center\" top_ditance=\"10\" bottom_distance=\"10\" countdown_type=\"button\" font_color=\"#000000\" button_bg_color=\"#3DA8CC\" circle_size=\"130\" circle_border=\"5\" border_radius=\"8\" font_size=\"30\" countdown_font_famaly=\"monospace\" animation_type=\"\"][/wpdevart_countdown]\n<!-- /wp:wpdevart-countdown/countdown -->', 'Post a Job', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2019-02-08 12:26:26', '2019-02-08 12:26:26', '', 65, 'http://localhost/public/wordpress/2019/02/08/65-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2019-02-15 11:00:20', '0000-00-00 00:00:00', '', 'test post', '', 'draft', 'open', 'open', '', '', '', '', '2019-02-15 11:00:20', '2019-02-15 11:00:20', '', 0, 'http://localhost/public/wordpress/?p=85', 0, 'post', '', 0),
(86, 1, '2019-02-15 10:15:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:15:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=86', 0, 'page', '', 0),
(87, 1, '2019-02-15 10:16:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:16:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=87', 0, 'page', '', 0),
(88, 1, '2019-02-15 10:27:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:27:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=88', 0, 'page', '', 0),
(89, 1, '2019-02-15 10:28:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:28:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=89', 0, 'page', '', 0),
(90, 1, '2019-02-15 10:28:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:28:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=90', 0, 'page', '', 0),
(91, 1, '2019-02-15 10:28:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:28:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=91', 0, 'page', '', 0),
(92, 1, '2019-02-15 10:29:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:29:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 1, '2019-02-15 10:33:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:33:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=93', 0, 'page', '', 0),
(94, 1, '2019-02-15 10:43:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-15 10:43:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?page_id=94', 0, 'page', '', 0),
(95, 1, '2019-02-15 11:02:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:02:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=95', 0, 'post', '', 0),
(96, 1, '2019-02-15 11:03:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:03:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=96', 0, 'post', '', 0),
(97, 1, '2019-02-15 11:05:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:05:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=97', 0, 'post', '', 0),
(98, 1, '2019-02-15 11:11:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:11:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=98', 0, 'post', '', 0),
(99, 1, '2019-02-15 11:11:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:11:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=99', 0, 'post', '', 0),
(100, 1, '2019-02-15 11:12:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:12:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=100', 0, 'post', '', 0),
(101, 1, '2019-02-15 11:12:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:12:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=101', 0, 'post', '', 0),
(102, 1, '2019-02-15 11:12:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:12:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=102', 0, 'post', '', 0),
(103, 1, '2019-02-15 11:13:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:13:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=103', 0, 'post', '', 0),
(104, 1, '2019-02-15 11:14:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:14:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=104', 0, 'post', '', 0),
(105, 1, '2019-02-15 11:21:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:21:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=105', 0, 'post', '', 0),
(106, 1, '2019-02-15 11:21:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:21:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=106', 0, 'post', '', 0),
(107, 1, '2019-02-15 11:24:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:24:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=107', 0, 'post', '', 0),
(108, 1, '2019-02-15 11:25:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:25:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=108', 0, 'post', '', 0),
(109, 1, '2019-02-15 11:30:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:30:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=109', 0, 'post', '', 0),
(110, 1, '2019-02-15 11:52:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:52:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=110', 0, 'post', '', 0),
(111, 1, '2019-02-15 11:52:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 11:52:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=111', 0, 'post', '', 0),
(112, 1, '2019-02-15 12:03:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:03:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=112', 0, 'post', '', 0),
(113, 1, '2019-02-15 12:03:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:03:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=113', 0, 'post', '', 0),
(114, 1, '2019-02-15 12:04:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:04:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=114', 0, 'post', '', 0),
(115, 1, '2019-02-15 12:22:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=115', 0, 'post', '', 0),
(116, 1, '2019-02-15 12:22:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=116', 0, 'post', '', 0),
(117, 1, '2019-02-15 12:22:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=117', 0, 'post', '', 0),
(118, 1, '2019-02-15 12:22:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=118', 0, 'post', '', 0),
(119, 1, '2019-02-15 12:22:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2019-02-15 12:22:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=120', 0, 'post', '', 0),
(121, 1, '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=121', 0, 'post', '', 0),
(122, 1, '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=122', 0, 'post', '', 0),
(123, 1, '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=124', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=125', 0, 'post', '', 0),
(126, 1, '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=126', 0, 'post', '', 0),
(127, 1, '2019-02-15 12:22:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=127', 0, 'post', '', 0),
(128, 1, '2019-02-15 12:22:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=128', 0, 'post', '', 0),
(129, 1, '2019-02-15 12:22:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=129', 0, 'post', '', 0),
(130, 1, '2019-02-15 12:22:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:22:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=130', 0, 'post', '', 0),
(131, 1, '2019-02-15 12:24:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:24:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=131', 0, 'post', '', 0),
(132, 1, '2019-02-15 12:24:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:24:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=132', 0, 'post', '', 0),
(133, 1, '2019-02-15 12:24:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:24:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=133', 0, 'post', '', 0),
(134, 1, '2019-02-15 12:24:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:24:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=134', 0, 'post', '', 0),
(135, 1, '2019-02-15 12:25:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:25:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=135', 0, 'post', '', 0),
(136, 1, '2019-02-15 12:25:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:25:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=136', 0, 'post', '', 0),
(137, 1, '2019-02-15 12:25:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:25:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=137', 0, 'post', '', 0),
(138, 1, '2019-02-15 12:26:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:26:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=138', 0, 'post', '', 0),
(139, 1, '2019-02-15 12:28:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:28:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=139', 0, 'post', '', 0),
(140, 1, '2019-02-15 12:29:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:29:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=140', 0, 'post', '', 0),
(141, 1, '2019-02-15 12:59:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-15 12:59:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/public/wordpress/?p=141', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'employment_type', 'FULL_TIME'),
(2, 3, 'employment_type', 'PART_TIME'),
(3, 4, 'employment_type', 'TEMPORARY'),
(4, 5, 'employment_type', 'CONTRACTOR'),
(5, 6, 'employment_type', 'INTERN');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Full Time', 'full-time', 0),
(3, 'Part Time', 'part-time', 0),
(4, 'Temporary', 'temporary', 0),
(5, 'Freelance', 'freelance', 0),
(6, 'Internship', 'internship', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(80, 1, 0),
(85, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'job_listing_type', '', 0, 0),
(3, 3, 'job_listing_type', '', 0, 0),
(4, 4, 'job_listing_type', '', 0, 0),
(5, 5, 'job_listing_type', '', 0, 0),
(6, 6, 'job_listing_type', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ult_marketo_forms`
--

CREATE TABLE `wp_ult_marketo_forms` (
  `id` int(11) NOT NULL,
  `form_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_options` longtext COLLATE utf8mb4_unicode_520_ci,
  `ty_options` longtext COLLATE utf8mb4_unicode_520_ci,
  `style_id` int(11) DEFAULT '0',
  `host_link` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `js_options` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ult_marketo_forms_styles`
--

CREATE TABLE `wp_ult_marketo_forms_styles` (
  `id` int(11) NOT NULL,
  `style_name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `style` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ult_marketo_forms_styles`
--

INSERT INTO `wp_ult_marketo_forms_styles` (`id`, `style_name`, `style`) VALUES
(-1, 'Clean Style', '/* Override Layout */\r\n\r\n.umfwrap .mktoForm,\r\n.umfwrap .mktoForm * {\r\n	box-sizing: border-box;\r\n	padding:0px;\r\n}\r\n\r\n.umfwrap .mktoForm .mktoRequiredField .mktoAsterix,\r\n.umfwrap .mktoForm .mktoAsterix,\r\n.umfwrap .mktoForm .mktoClear,\r\n.umfwrap .mktoForm .mktoGutter,\r\n.umfwrap .mktoForm .mktoOffset,\r\n.umfwrap .mktoForm .mktoFormRow.hidden {\r\n	display: none;\r\n}\r\n\r\n.umfwrap .mktoHasWidth {\r\n	width: 100% !important;\r\n}\r\n\r\n.umfwrap .mktoButtonRow,\r\n.umfwrap .mktoForm,\r\n.umfwrap .mktoFormCol,\r\n.umfwrap .mktoField\r\n.umfwrap .mktoFieldWrap {\r\n	width: 100%;\r\n}\r\n\r\n.umfwrap .mktoForm .mktoFieldWrap {\r\n	float: none;\r\n}\r\n\r\n.umfwrap .mktoFormCol {\r\n	margin-bottom: 1em !important;\r\n}\r\n\r\n/* Two Column Rows */\r\n.umfwrap .mktoForm .mktoFormRow {\r\n	display: flex;\r\n}\r\n\r\n.umfwrap .mktoFormCol:nth-child(2){\r\n	margin-left: 10px;\r\n}\r\n\r\n.umfwrap .mktoFormCol:nth-last-child(3) {\r\n	margin-right: 10px;\r\n}\r\n\r\n/* Label */\r\n\r\n.umfwrap .mktoForm label {\r\n	font-family: Helvetica, Arial, sans-serif;\r\n	margin-bottom: 5px;\r\n	padding-top: 0;\r\n	font-size: 1em;\r\n}\r\n\r\n/* Inputs */\r\n\r\n.umfwrap .mktoForm input,\r\n.umfwrap .mktoForm input[type=text],\r\n.umfwrap .mktoForm input[type=url],\r\n.umfwrap .mktoForm input[type=email],\r\n.umfwrap .mktoForm input[type=tel],\r\n.umfwrap .mktoForm input[type=number],\r\n.umfwrap .mktoForm input[type=date],\r\n.umfwrap .mktoForm textarea.mktoField,\r\n.umfwrap .mktoForm select.mktoField {\r\n	font-family: Helvetica, Arial, sans-serif;\r\n	font-size: 1em;\r\n	height: auto;\r\n	padding: 8px 8px;\r\n	color: #333;\r\n	background-color: white;\r\n	border: 1px solid #ccc;\r\n}\r\n\r\n.umfwrap .mktoForm select.mktoField {\r\n	height: 33px;\r\n}\r\n\r\n\r\n/* Submit Button */\r\n\r\n.umfwrap .mktoForm .mktoButtonRow .mktoButtonWrap {\r\n	margin-left: 0px !important;\r\n}\r\n\r\n.umfwrap .mktoForm .mktoButtonRow .mktoButtonWrap button.mktoButton {\r\n	font-family: Helvetica, Arial, sans-serif;\r\n	background-image: none;\r\n	color: #fff;\r\n	background-color: #0A95B7;\r\n	font-size: 1em;\r\n	border: none;\r\n	padding: 11px 24px 9px 24px;\r\n	text-transform: uppercase;\r\n}\r\n.umfwrap .mktoForm .mktoButtonRow .mktoButtonWrap button.mktoButton:hover {\r\n	background-color: #16819e;\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '79'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.19.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1548914093'),
(22, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:18:\"dashboard_activity\";}'),
(23, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(24, 1, 'default_password_nag', ''),
(25, 1, 'session_tokens', 'a:3:{s:64:\"cb336679400451b49e918f9a857f3ee66fd5f3f4e0b7db81ef93daae86f069be\";a:4:{s:10:\"expiration\";i:1550127207;s:2:\"ip\";s:10:\"172.19.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36\";s:5:\"login\";i:1549954407;}s:64:\"754d3b02580559416d0de86f172977af088057a5d32e9c52d32cbb41c0d12f98\";a:4:{s:10:\"expiration\";i:1550206083;s:2:\"ip\";s:10:\"172.19.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36\";s:5:\"login\";i:1550033283;}s:64:\"3e0e5472d108d25a2c31d0d306fb953a9a39fbe995d38fcc20415a2998e5b0fc\";a:4:{s:10:\"expiration\";i:1550297435;s:2:\"ip\";s:10:\"172.19.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36\";s:5:\"login\";i:1550124635;}}'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(28, 2, 'nickname', 'johnny'),
(29, 2, 'first_name', 'johnny'),
(30, 2, 'last_name', 'johnny'),
(31, 2, 'description', ''),
(32, 2, 'rich_editing', 'true'),
(33, 2, 'syntax_highlighting', 'true'),
(34, 2, 'comment_shortcuts', 'false'),
(35, 2, 'admin_color', 'fresh'),
(36, 2, 'use_ssl', '0'),
(37, 2, 'show_admin_bar_front', 'true'),
(38, 2, 'locale', ''),
(39, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(40, 2, 'wp_user_level', '0'),
(41, 2, 'dismissed_wp_pointers', 'wp496_privacy');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BuWIAEo1sjhcLbdXU/I1vt1/Br8HaQ/', 'admin', 'johnnyharpertesting@gmail.com', '', '2019-01-11 08:04:30', '', 0, 'admin'),
(2, 'johnny', '$P$BnlwbF.0IpiCf.ynnA1eh/TQw7kw9F1', 'johnny', 'johnnyharpertesting4@gmail.com', '', '2019-01-31 09:48:55', '', 0, 'johnny johnny');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_marketo_leads_describe`
--
ALTER TABLE `wp_marketo_leads_describe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rest_name` (`rest_name`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_ult_marketo_forms`
--
ALTER TABLE `wp_ult_marketo_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ult_marketo_forms_styles`
--
ALTER TABLE `wp_ult_marketo_forms_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_marketo_leads_describe`
--
ALTER TABLE `wp_marketo_leads_describe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_ult_marketo_forms`
--
ALTER TABLE `wp_ult_marketo_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ult_marketo_forms_styles`
--
ALTER TABLE `wp_ult_marketo_forms_styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
