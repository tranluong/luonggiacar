-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2020 at 06:13 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1-log
-- PHP Version: 7.1.33-14+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bedrock`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-28 10:10:49', '2020-04-28 10:10:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(3, 'siteurl', 'http://bedrock.local/wp', 'yes'),
(4, 'home', 'http://bedrock.local/wp', 'yes'),
(5, 'blogname', 'Research', 'yes'),
(6, 'blogdescription', 'Just another WordPress site', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'luong.tran@sutrixsolutions.com', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '1', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '0', 'yes'),
(24, 'posts_per_page', '10', 'yes'),
(25, 'date_format', 'F j, Y', 'yes'),
(26, 'time_format', 'g:i a', 'yes'),
(27, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=43&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:39:\"siteorigin-panels/siteorigin-panels.php\";}', 'yes'),
(36, 'category_base', '', 'yes'),
(37, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(38, 'comment_max_links', '2', 'yes'),
(39, 'gmt_offset', '0', 'yes'),
(40, 'default_email_category', '1', 'yes'),
(41, 'recently_edited', '', 'no'),
(42, 'template', 'luonggiacar', 'yes'),
(43, 'stylesheet', 'luonggiacar', 'yes'),
(44, 'comment_whitelist', '1', 'yes'),
(45, 'blacklist_keys', '', 'no'),
(46, 'comment_registration', '0', 'yes'),
(47, 'html_type', 'text/html', 'yes'),
(48, 'use_trackback', '0', 'yes'),
(49, 'default_role', 'subscriber', 'yes'),
(50, 'db_version', '47018', 'yes'),
(51, 'uploads_use_yearmonth_folders', '1', 'yes'),
(52, 'upload_path', '', 'yes'),
(53, 'blog_public', '1', 'yes'),
(54, 'default_link_category', '2', 'yes'),
(55, 'show_on_front', 'page', 'yes'),
(56, 'tag_base', '', 'yes'),
(57, 'show_avatars', '1', 'yes'),
(58, 'avatar_rating', 'G', 'yes'),
(59, 'upload_url_path', '', 'yes'),
(60, 'thumbnail_size_w', '150', 'yes'),
(61, 'thumbnail_size_h', '150', 'yes'),
(62, 'thumbnail_crop', '1', 'yes'),
(63, 'medium_size_w', '300', 'yes'),
(64, 'medium_size_h', '300', 'yes'),
(65, 'avatar_default', 'mystery', 'yes'),
(66, 'large_size_w', '1024', 'yes'),
(67, 'large_size_h', '1024', 'yes'),
(68, 'image_default_link_type', 'none', 'yes'),
(69, 'image_default_size', '', 'yes'),
(70, 'image_default_align', '', 'yes'),
(71, 'close_comments_for_old_posts', '0', 'yes'),
(72, 'close_comments_days_old', '14', 'yes'),
(73, 'thread_comments', '1', 'yes'),
(74, 'thread_comments_depth', '5', 'yes'),
(75, 'page_comments', '0', 'yes'),
(76, 'comments_per_page', '50', 'yes'),
(77, 'default_comments_page', 'newest', 'yes'),
(78, 'comment_order', 'asc', 'yes'),
(79, 'sticky_posts', 'a:0:{}', 'yes'),
(80, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(83, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(84, 'timezone_string', '', 'yes'),
(85, 'page_for_posts', '0', 'yes'),
(86, 'page_on_front', '43', 'yes'),
(87, 'default_post_format', '0', 'yes'),
(88, 'link_manager_enabled', '0', 'yes'),
(89, 'finished_splitting_shared_terms', '1', 'yes'),
(90, 'site_icon', '0', 'yes'),
(91, 'medium_large_size_w', '768', 'yes'),
(92, 'medium_large_size_h', '0', 'yes'),
(93, 'wp_page_for_privacy_policy', '3', 'yes'),
(94, 'show_comments_cookies_opt_in', '1', 'yes'),
(95, 'admin_email_lifespan', '1603620639', 'yes'),
(96, 'initial_db_version', '47018', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(98, 'fresh_site', '0', 'yes'),
(99, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:13:\"widget footer\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:8:\"search-3\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:12:\"categories-3\";i:7;s:14:\"recent-posts-3\";}s:16:\"about_page_child\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'bedrock_autoloader', 'a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}', 'no'),
(106, 'cron', 'a:7:{i:1591704651;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591740652;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591783850;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591783851;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1591783866;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591783868;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'nonce_key', 'LMapR_%1j{+]O!jGEs}jS4f|dm7PZX?`b=USr bc@V/&pa8mtKH[[E|{TE8uTB.K', 'no'),
(114, 'nonce_salt', 'p>4W,[0y]r7Zs .6 Vpx6* GM],tyTI%%.f*A0{*RskWaw2]HYuUy@V`,(8@N5.c', 'no'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.1-partial-0.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1591697551;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(121, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:6:\"mobile\";i:0;s:6:\"footer\";i:0;s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589447776;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-3\";}s:9:\"sidebar-2\";a:2:{i:0;s:12:\"categories-3\";i:1;s:14:\"recent-posts-3\";}}}}', 'yes'),
(122, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591696152;s:7:\"checked\";a:3:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:23:\"luongtran/luongtran.php\";s:3:\"1.0\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:6:\"2.11.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:6:\"2.11.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.11.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591697214;s:7:\"checked\";a:12:{s:11:\"luonggiacar\";s:3:\"1.0\";s:7:\"mytheme\";s:3:\"1.0\";s:12:\"twentyeleven\";s:3:\"3.4\";s:13:\"twentyfifteen\";s:3:\"2.6\";s:14:\"twentyfourteen\";s:3:\"2.8\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:13:\"twentysixteen\";s:3:\"2.1\";s:9:\"twentyten\";s:3:\"3.0\";s:14:\"twentythirteen\";s:3:\"3.0\";s:12:\"twentytwelve\";s:3:\"3.1\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_key', ']F[#0F#Hc R3Le*qsF0rjJ>O/VT[jowYl-Y*&,SfWJdAi-[];W>E!fAYCi-I<zZw', 'no'),
(125, 'auth_salt', 'gz}u5,6~KNM4nUx%s$}&]my`Ftk~F5d+9339zJ&;&w2EK01&xgL~Nd^,@|%}BB~Q', 'no'),
(126, 'logged_in_key', '`WYtO_9i9hw[T~S}0o(I}R*j<]xMX=L9C)om4Ud?h6dO4<]/AVbC;v^7,I4Yiiw8', 'no'),
(127, 'logged_in_salt', 'kV@8`1vwb+q2Ic 2#Eco{7k$+5P@>=,%Gz}QU4ZVCY0>QgE:L`rjFkEUr-Js0}JC', 'no'),
(135, 'can_compress_scripts', '0', 'no'),
(147, 'category_children', 'a:0:{}', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(164, 'template_root', '/themes', 'yes'),
(165, 'stylesheet_root', '/themes', 'yes'),
(166, 'current_theme', 'luonggiacar', 'yes'),
(167, 'theme_mods_mytheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1591086769;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:10:\"sidebar111\";a:6:{i:0;s:8:\"search-3\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";}s:10:\"sidebar222\";a:2:{i:0;s:12:\"categories-3\";i:1;s:14:\"recent-posts-3\";}s:14:\"sidebar_footer\";a:0:{}s:7:\"sidebar\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(182, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":6,\"critical\":2}', 'yes'),
(209, 'recently_activated', 'a:2:{s:30:\"advanced-custom-fields/acf.php\";i:1591180564;s:23:\"luongtran/luongtran.php\";i:1591094374;}', 'yes'),
(214, 'widget_luongtran_wigdet', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'theme_mods_luonggiacar', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1591086572;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:8:\"search-3\";i:1;s:12:\"categories-3\";i:2;s:14:\"recent-posts-3\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:10:\"archives-2\";i:7;s:12:\"categories-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(320, 'widget_about_wigdet', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(354, 'acf_version', '4.0.0', 'yes'),
(355, 'widget_about_wigdet-3_title', '', 'no'),
(356, '_widget_about_wigdet-3_title', 'field_5ed719a6a6552', 'no'),
(357, 'widget_about_wigdet-3_desc', '', 'no'),
(358, '_widget_about_wigdet-3_desc', 'field_5ed71a17a6553', 'no'),
(366, 'acf_next_field_id', '2', 'yes'),
(389, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(390, 'siteorigin_panels_initial_version', '2.11.0', 'no'),
(393, 'siteorigin_panels_active_version', '2.11.0', 'yes'),
(394, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(395, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(396, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(397, '_site_transient_timeout_available_translations', '1591706962', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(398, '_site_transient_available_translations', 'a:122:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 13:46:18\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 01:35:47\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.14\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.14/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.13\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.13/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 12:33:33\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-17 13:16:49\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-12 05:54:08\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-06-02 07:40:45\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-02 08:17:25\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-28 15:37:34\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-07 21:08:21\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-09 09:47:26\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-09 09:46:58\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-15 20:04:12\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-13 20:26:58\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-25 19:08:12\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 09:33:04\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-07 15:53:44\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-23 11:39:35\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 14:26:50\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-20 09:23:36\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-27 00:07:40\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 12:31:31\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 21:27:23\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-25 20:10:52\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-26 14:31:24\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-04 01:49:30\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-19 06:50:43\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-29 06:22:39\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-26 17:08:06\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 04:35:33\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-23 12:17:12\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-16 22:05:34\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-28 18:04:12\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-18 15:51:49\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-04 10:17:08\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-24 17:30:39\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.4/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-28 23:32:14\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-14 10:03:06\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-28 01:31:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-27 08:22:12\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-19 14:26:45\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.14\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.14/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-21 16:29:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.13\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.13/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 23:44:30\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-28 06:53:25\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 15:32:20\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-14 13:49:28\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-14 17:01:13\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 09:19:21\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-19 21:22:13\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-24 18:28:53\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-28 10:48:09\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-29 09:22:22\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-27 20:40:26\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-16 06:27:02\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-15 03:12:06\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.4/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-08 13:12:01\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 01:42:23\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-24 17:02:49\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2020-06-04 18:07:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-13 20:18:20\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-27 21:16:56\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.5\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.5/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.9\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.9/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-26 15:11:53\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 20:54:59\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(399, '_site_transient_timeout_theme_roots', '1591699013', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(400, '_site_transient_theme_roots', 'a:12:{s:11:\"luonggiacar\";s:7:\"/themes\";s:7:\"mytheme\";s:7:\"/themes\";s:12:\"twentyeleven\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:13:\"twentyfifteen\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:14:\"twentyfourteen\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:14:\"twentynineteen\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:15:\"twentyseventeen\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:13:\"twentysixteen\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:9:\"twentyten\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:14:\"twentythirteen\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:12:\"twentytwelve\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";s:12:\"twentytwenty\";s:46:\"/var/www/html/bedrock/web/wp/wp-content/themes\";}', 'no');

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
(4, 6, '_edit_lock', '1588069148:1'),
(6, 8, '_edit_lock', '1591090678:1'),
(7, 3, '_edit_lock', '1588069449:1'),
(8, 10, '_menu_item_type', 'post_type'),
(9, 10, '_menu_item_menu_item_parent', '0'),
(10, 10, '_menu_item_object_id', '8'),
(11, 10, '_menu_item_object', 'page'),
(12, 10, '_menu_item_target', ''),
(13, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 10, '_menu_item_xfn', ''),
(15, 10, '_menu_item_url', ''),
(17, 11, '_menu_item_type', 'post_type'),
(18, 11, '_menu_item_menu_item_parent', '0'),
(19, 11, '_menu_item_object_id', '6'),
(20, 11, '_menu_item_object', 'post'),
(21, 11, '_menu_item_target', ''),
(22, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 11, '_menu_item_xfn', ''),
(24, 11, '_menu_item_url', ''),
(26, 12, '_menu_item_type', 'post_type'),
(27, 12, '_menu_item_menu_item_parent', '0'),
(28, 12, '_menu_item_object_id', '2'),
(29, 12, '_menu_item_object', 'page'),
(30, 12, '_menu_item_target', ''),
(31, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 12, '_menu_item_xfn', ''),
(33, 12, '_menu_item_url', ''),
(35, 13, '_menu_item_type', 'taxonomy'),
(36, 13, '_menu_item_menu_item_parent', '0'),
(37, 13, '_menu_item_object_id', '2'),
(38, 13, '_menu_item_object', 'category'),
(39, 13, '_menu_item_target', ''),
(40, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 13, '_menu_item_xfn', ''),
(42, 13, '_menu_item_url', ''),
(44, 14, '_menu_item_type', 'post_type'),
(45, 14, '_menu_item_menu_item_parent', '13'),
(46, 14, '_menu_item_object_id', '6'),
(47, 14, '_menu_item_object', 'post'),
(48, 14, '_menu_item_target', ''),
(49, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 14, '_menu_item_xfn', ''),
(51, 14, '_menu_item_url', ''),
(53, 15, '_edit_lock', '1591158555:1'),
(55, 15, '_encloseme', '1'),
(56, 18, '_menu_item_type', 'post_type'),
(57, 18, '_menu_item_menu_item_parent', '13'),
(58, 18, '_menu_item_object_id', '15'),
(59, 18, '_menu_item_object', 'post'),
(60, 18, '_menu_item_target', ''),
(61, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 18, '_menu_item_xfn', ''),
(63, 18, '_menu_item_url', ''),
(64, 19, '_edit_lock', '1590745146:1'),
(65, 19, '_wp_trash_meta_status', 'draft'),
(66, 19, '_wp_trash_meta_time', '1590745294'),
(67, 19, '_wp_desired_post_slug', ''),
(70, 24, '_edit_last', '1'),
(71, 24, '_edit_lock', '1591158526:1'),
(72, 28, '_edit_lock', '1591158751:1'),
(73, 29, '_edit_lock', '1591158774:1'),
(74, 2, '_edit_lock', '1591158841:1'),
(75, 33, '_edit_lock', '1591610818:1'),
(76, 34, '_edit_lock', '1591700264:1'),
(77, 34, '_edit_last', '1'),
(78, 38, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:29:\"Dịch vụ của chúng tôi\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"bac6b3ff-8072-49fb-ac67-81915c202f4d\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-3810000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(79, 34, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:49:\"Chúng tôi mang đến cho bạn những gì ...\";s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-3410000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"bac6b3ff-8072-49fb-ac67-81915c202f4d\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(80, 39, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:29:\"Dịch vụ của chúng tôi\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"bac6b3ff-8072-49fb-ac67-81915c202f4d\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-3410000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(81, 40, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:49:\"Chúng tôi mang đến cho bạn những gì ...\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"bac6b3ff-8072-49fb-ac67-81915c202f4d\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-4010000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(82, 41, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:49:\"Chúng tôi mang đến cho bạn những gì ...\";s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-3410000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"bac6b3ff-8072-49fb-ac67-81915c202f4d\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(83, 15, '_wp_trash_meta_status', 'publish'),
(84, 15, '_wp_trash_meta_time', '1591697739'),
(85, 15, '_wp_desired_post_slug', 'du-lich-dao'),
(86, 6, '_wp_trash_meta_status', 'publish'),
(87, 6, '_wp_trash_meta_time', '1591697740'),
(88, 6, '_wp_desired_post_slug', 'du-lich-bien'),
(89, 1, '_wp_trash_meta_status', 'publish'),
(90, 1, '_wp_trash_meta_time', '1591697740'),
(91, 1, '_wp_desired_post_slug', 'hello-world'),
(92, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(93, 8, '_wp_trash_meta_status', 'publish'),
(94, 8, '_wp_trash_meta_time', '1591697753'),
(95, 8, '_wp_desired_post_slug', 'day-la-trang-dau-tien-cua-toi'),
(96, 43, '_edit_last', '1'),
(97, 43, '_edit_lock', '1591700838:1'),
(98, 44, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:29:\"Dịch vụ của chúng tôi\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"75c4200f-070e-47af-a751-352cae042720\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-4410000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(99, 43, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:49:\"Chúng tôi mang đến cho bạn những gì …\";s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-4310000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"75c4200f-070e-47af-a751-352cae042720\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(100, 45, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:29:\"Dịch vụ của chúng tôi\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"75c4200f-070e-47af-a751-352cae042720\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-4310000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(101, 47, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:49:\"Chúng tôi mang đến cho bạn những gì …\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"75c4200f-070e-47af-a751-352cae042720\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-4710000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(102, 48, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:5:{s:11:\"title_color\";s:11:\"Dịch vụ\";s:5:\"title\";s:49:\"Chúng tôi mang đến cho bạn những gì …\";s:22:\"so_sidebar_emulator_id\";s:20:\"about_wigdet-4310000\";s:11:\"option_name\";s:19:\"widget_about_wigdet\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:12:\"About_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"75c4200f-070e-47af-a751-352cae042720\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}');

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
(1, 1, '2020-04-28 10:10:49', '2020-04-28 10:10:49', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-06-09 10:15:40', '2020-06-09 10:15:40', '', 0, 'http://bedrock.local/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-28 10:10:49', '2020-04-28 10:10:49', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://bedrock.local/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-04-28 10:10:49', '2020-04-28 10:10:49', '', 0, 'http://bedrock.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-28 10:10:49', '2020-04-28 10:10:49', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://bedrock.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-04-28 10:10:49', '2020-04-28 10:10:49', '', 0, 'http://bedrock.local/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-04-28 10:20:19', '2020-04-28 10:20:19', '<!-- wp:paragraph -->\n<p>Bạn nên cẩn thận khi đi du lịch biển vào mùa dịch nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Du lịch biển', '', 'trash', 'open', 'open', '', 'du-lich-bien__trashed', '', '', '2020-06-09 10:15:40', '2020-06-09 10:15:40', '', 0, 'http://bedrock.local/?p=6', 0, 'post', '', 0),
(7, 1, '2020-04-28 10:20:19', '2020-04-28 10:20:19', '<!-- wp:paragraph -->\n<p>Bạn nên cẩn thận khi đi du lịch biển vào mùa dịch nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Du lịch biển', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-28 10:20:19', '2020-04-28 10:20:19', '', 6, 'http://bedrock.local/index.php/2020/04/28/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-04-28 10:25:02', '2020-04-28 10:25:02', '<!-- wp:paragraph -->\n<p>Trang policy của tôi</p>\n<!-- /wp:paragraph -->', 'Đây là trang đầu tiên của tôi', '', 'trash', 'closed', 'closed', '', 'day-la-trang-dau-tien-cua-toi__trashed', '', '', '2020-06-09 10:15:53', '2020-06-09 10:15:53', '', 0, 'http://bedrock.local/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-04-28 10:25:02', '2020-04-28 10:25:02', '<!-- wp:paragraph -->\n<p>Trang policy của tôi</p>\n<!-- /wp:paragraph -->', 'Đây là trang đầu tiên của tôi', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-04-28 10:25:02', '2020-04-28 10:25:02', '', 8, 'http://bedrock.local/index.php/2020/04/28/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-04-28 10:34:26', '2020-04-28 10:34:26', '', 'trang chủ', '', 'publish', 'closed', 'closed', '', '10', '', '', '2020-04-28 10:50:25', '2020-04-28 10:50:25', '', 0, 'http://bedrock.local/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2020-04-28 10:39:25', '2020-04-28 10:39:25', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2020-04-28 10:44:21', '2020-04-28 10:44:21', '', 0, 'http://bedrock.local/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2020-04-28 10:47:15', '2020-04-28 10:47:15', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2020-04-28 10:50:25', '2020-04-28 10:50:25', '', 0, 'http://bedrock.local/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2020-04-28 10:48:27', '2020-04-28 10:48:27', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2020-04-28 10:50:25', '2020-04-28 10:50:25', '', 0, 'http://bedrock.local/?p=13', 3, 'nav_menu_item', '', 0),
(14, 1, '2020-04-28 10:48:28', '2020-04-28 10:48:28', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2020-04-28 10:50:25', '2020-04-28 10:50:25', '', 0, 'http://bedrock.local/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2020-04-28 10:49:23', '2020-04-28 10:49:23', '<!-- wp:paragraph -->\n<p>nên dẫn người yêu khi đi du lich đảo</p>\n<!-- /wp:paragraph -->', 'Du lịch đảo', '', 'trash', 'open', 'open', '', 'du-lich-dao__trashed', '', '', '2020-06-09 10:15:39', '2020-06-09 10:15:39', '', 0, 'http://bedrock.local/?p=15', 0, 'post', '', 0),
(16, 1, '2020-04-28 10:49:23', '2020-04-28 10:49:23', '', 'Du lịch đảo', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-04-28 10:49:23', '2020-04-28 10:49:23', '', 15, 'http://bedrock.local/index.php/2020/04/28/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-04-28 10:49:49', '2020-04-28 10:49:49', '<!-- wp:paragraph -->\n<p>nên dẫn người yêu khi đi du lich đảo</p>\n<!-- /wp:paragraph -->', 'Du lịch đảo', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-04-28 10:49:49', '2020-04-28 10:49:49', '', 15, 'http://bedrock.local/index.php/2020/04/28/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-04-28 10:50:25', '2020-04-28 10:50:25', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-04-28 10:50:25', '2020-04-28 10:50:25', '', 0, 'http://bedrock.local/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2020-05-29 09:41:34', '2020-05-29 09:41:34', '<!-- wp:paragraph -->\n<p>fdgdfg</p>\n<!-- /wp:paragraph -->', 'ffff', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-05-29 09:41:34', '2020-05-29 09:41:34', '', 0, 'http://bedrock.local/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-05-29 09:41:01', '2020-05-29 09:41:01', '<!-- wp:paragraph -->\n<p>fdgdfg</p>\n<!-- /wp:paragraph -->', 'ffff', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-05-29 09:41:01', '2020-05-29 09:41:01', '', 19, 'http://bedrock.local/index.php/2020/05/29/19-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-06-03 03:34:06', '2020-06-03 03:34:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:6:\"widget\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"about_wigdet\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5ed719964976d', '', '', '2020-06-03 03:34:06', '2020-06-03 03:34:06', '', 0, 'http://bedrock.local/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2020-06-03 03:34:06', '2020-06-03 03:34:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5ed719a6a6552', '', '', '2020-06-03 03:34:06', '2020-06-03 03:34:06', '', 24, 'http://bedrock.local/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2020-06-03 03:34:06', '2020-06-03 03:34:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'desc', 'desc', 'publish', 'closed', 'closed', '', 'field_5ed71a17a6553', '', '', '2020-06-03 03:34:06', '2020-06-03 03:34:06', '', 24, 'http://bedrock.local/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2020-06-03 04:32:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-03 04:32:39', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?post_type=acf-field-group&p=27', 0, 'acf-field-group', '', 0),
(28, 1, '2020-06-03 04:34:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-03 04:34:24', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?page_id=28', 0, 'page', '', 0),
(29, 1, '2020-06-03 04:34:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-03 04:34:56', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-06-03 10:28:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-03 10:28:32', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?post_type=acf&p=30', 0, 'acf', '', 0),
(31, 1, '2020-06-03 10:30:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-03 10:30:56', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?post_type=acf&p=31', 0, 'acf', '', 0),
(32, 1, '2020-06-03 10:35:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-03 10:35:16', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?post_type=acf&p=32', 0, 'acf', '', 0),
(33, 1, '2020-06-08 10:08:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-08 10:08:44', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-06-08 10:13:50', '2020-06-08 10:13:50', '<div id=\"pl-34\"  class=\"panel-layout\" ><div id=\"pg-34-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-34-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-34-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;Ch\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho b\\u1ea1n nh\\u1eefng g\\u00ec ...&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-3410000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-34-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Dịch vụ', '', 'publish', 'closed', 'closed', '', 'dich-vu', '', '', '2020-06-09 10:08:07', '2020-06-09 10:08:07', '', 0, 'http://bedrock.local/?page_id=34', 0, 'page', '', 0),
(35, 1, '2020-06-08 10:13:50', '2020-06-08 10:13:50', '<!-- wp:paragraph -->\n<p>hhhhhh</p>\n<!-- /wp:paragraph -->', 'hhhh', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-06-08 10:13:50', '2020-06-08 10:13:50', '', 34, 'http://bedrock.local/index.php/2020/06/08/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-06-09 09:50:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-09 09:50:12', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?page_id=37', 0, 'page', '', 0),
(38, 1, '2020-06-09 09:59:13', '2020-06-09 09:59:13', '<div id=\"pl-34\"  class=\"panel-layout\" ><div id=\"pg-34-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-34-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-34-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;D\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-3810000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-34-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Dịch vụ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-06-09 09:59:13', '2020-06-09 09:59:13', '', 34, 'http://bedrock.local/34-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-06-09 09:59:13', '2020-06-09 09:59:13', '<div id=\"pl-34\"  class=\"panel-layout\" ><div id=\"pg-34-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-34-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-34-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;D\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-3410000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-34-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Dịch vụ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-06-09 09:59:13', '2020-06-09 09:59:13', '', 34, 'http://bedrock.local/34-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-06-09 10:08:06', '2020-06-09 10:08:06', '<div id=\"pl-34\"  class=\"panel-layout\" ><div id=\"pg-34-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-34-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-34-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;Ch\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho b\\u1ea1n nh\\u1eefng g\\u00ec ...&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-4010000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-34-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Dịch vụ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-06-09 10:08:06', '2020-06-09 10:08:06', '', 34, 'http://bedrock.local/34-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-06-09 10:08:07', '2020-06-09 10:08:07', '<div id=\"pl-34\"  class=\"panel-layout\" ><div id=\"pg-34-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-34-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-34-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;Ch\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho b\\u1ea1n nh\\u1eefng g\\u00ec ...&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-3410000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-34-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Dịch vụ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-06-09 10:08:07', '2020-06-09 10:08:07', '', 34, 'http://bedrock.local/34-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-06-09 10:15:40', '2020-06-09 10:15:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-09 10:15:40', '2020-06-09 10:15:40', '', 1, 'http://bedrock.local/1-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-06-09 10:51:29', '2020-06-09 10:51:29', '<div id=\"pl-43\"  class=\"panel-layout\" ><div id=\"pg-43-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-43-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-43-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;Ch\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho b\\u1ea1n nh\\u1eefng g\\u00ec \\u2026&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-4310000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-43-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-06-09 11:05:41', '2020-06-09 11:05:41', '', 0, 'http://bedrock.local/?page_id=43', 0, 'page', '', 0),
(44, 1, '2020-06-09 10:51:29', '2020-06-09 10:51:29', '<div id=\"pl-43\"  class=\"panel-layout\" ><div id=\"pg-43-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-43-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-43-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;D\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-4410000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-43-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-06-09 10:51:29', '2020-06-09 10:51:29', '', 43, 'http://bedrock.local/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-06-09 10:51:29', '2020-06-09 10:51:29', '<div id=\"pl-43\"  class=\"panel-layout\" ><div id=\"pg-43-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-43-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-43-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;D\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-4310000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-43-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-06-09 10:51:29', '2020-06-09 10:51:29', '', 43, 'http://bedrock.local/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-06-09 10:57:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-09 10:57:08', '0000-00-00 00:00:00', '', 0, 'http://bedrock.local/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-06-09 11:05:41', '2020-06-09 11:05:41', '<div id=\"pl-43\"  class=\"panel-layout\" ><div id=\"pg-43-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-43-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-43-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;Ch\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho b\\u1ea1n nh\\u1eefng g\\u00ec \\u2026&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-4710000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-43-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-06-09 11:05:41', '2020-06-09 11:05:41', '', 43, 'http://bedrock.local/43-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-06-09 11:05:41', '2020-06-09 11:05:41', '<div id=\"pl-43\"  class=\"panel-layout\" ><div id=\"pg-43-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-43-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-43-0-0-0\" class=\"so-panel widget widget_about_wigdet panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"About_Widget\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title_color&quot;:&quot;D\\u1ecbch v\\u1ee5&quot;,&quot;title&quot;:&quot;Ch\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho b\\u1ea1n nh\\u1eefng g\\u00ec \\u2026&quot;,&quot;so_sidebar_emulator_id&quot;:&quot;about_wigdet-4310000&quot;,&quot;option_name&quot;:&quot;widget_about_wigdet&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-43-0-0-0\\&quot; class=\\&quot;so-panel widget widget_about_wigdet panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-06-09 11:05:41', '2020-06-09 11:05:41', '', 43, 'http://bedrock.local/43-revision-v1/', 0, 'revision', '', 0);

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
(2, 'Cẩm nang du lịch', 'cam-nang-du-lich', 0),
(3, 'Trang chủ', 'trang-chu', 0),
(4, 'Cẩm nang', 'cam-nang', 0);

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
(6, 2, 0),
(10, 3, 0),
(11, 4, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 2, 0),
(18, 3, 0);

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
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 1);

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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"e5fc00a2b785284b312bff6e38fc89955db31ef053ad06ed497c9d576d4192c6\";a:4:{s:10:\"expiration\";i:1591779760;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1591606960;}s:64:\"c5dfd34a89c511e349a49b37e90976cbd071a30ae58cc7fd372005b97e678b81\";a:4:{s:10:\"expiration\";i:1591868280;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1591695480;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '23'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '3'),
(22, 1, 'enable_custom_fields', ''),
(23, 1, 'wp_user-settings', 'siteorigin_panels_setting_tab=welcome&editor=html'),
(24, 1, 'wp_user-settings-time', '1591696749'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

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
(1, 'admin', '$2y$10$6Q9U9rk1cs2cmbJupMy.Q.t6.CnbAXz2i40yrJ1j.CTYBvx.4m9fa', 'admin', 'luong.tran@sutrixsolutions.com', 'http://bedrock.local/wp', '2020-04-28 10:10:47', '', 0, 'admin');

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
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
