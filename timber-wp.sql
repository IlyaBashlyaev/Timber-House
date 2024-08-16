-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 16, 2024 at 09:46 AM
-- Server version: 8.0.35
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timber-wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-30 11:20:45', '2021-12-30 08:20:45', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://timber.local:8890', 'yes'),
(2, 'home', 'https://timber.local:8890', 'yes'),
(3, 'blogname', 'Timber House', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'i.bashlyaev@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:45:\"wf-magnific-lightbox/wf-magnific-lightbox.php\";i:2;s:23:\"wp-dark-mode/plugin.php\";i:3;s:29:\"wp-downgrade/wp-downgrade.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'timber', 'yes'),
(41, 'stylesheet', 'timber', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '2', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1739284381', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1723738847;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1723753247;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1723796447;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1723796468;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1723796469;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640852930;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(152, 'current_theme', 'Timber', 'yes'),
(153, 'theme_mods_timber', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(160, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'recently_activated', 'a:0:{}', 'yes'),
(170, 'acf_version', '5.11.4', 'yes'),
(190, 'wf-magnific-lightbox-copyright', 'a:1:{s:2:\"ru\";a:1:{s:15:\"copyrightPrefix\";s:0:\"\";}}', 'yes'),
(191, 'wf-magnific-lightbox-gallery', 'a:2:{s:19:\"presetMediaFilelink\";b:1;s:18:\"forceMediaFilelink\";b:1;}', 'yes'),
(211, 'wp_dark_mode_install_time', '1640876617', 'yes'),
(217, 'wp_dark_mode_general', '', 'yes'),
(218, 'wp_dark_mode_advanced', '', 'yes'),
(219, 'wp_dark_mode_color', '', 'yes'),
(220, 'wp_dark_mode_switch', '', 'yes'),
(221, 'wp_dark_mode_includes_excludes', '', 'yes'),
(222, 'wp_dark_mode_triggers', '', 'yes'),
(223, 'wp_dark_mode_performance', '', 'yes'),
(224, 'wp_dark_mode_accessibility', '', 'yes'),
(225, 'wp_dark_mode_wc', '', 'yes'),
(226, 'wp_dark_mode_image_settings', '', 'yes'),
(227, 'wp_dark_mode_video_settings', '', 'yes'),
(228, 'wp_dark_mode_custom_css', '', 'yes'),
(229, 'wp_dark_mode_animation', '', 'yes'),
(230, 'wp_dark_mode_analytics_reporting', '', 'yes'),
(231, 'wp-dark-mode_allow_tracking', 'no', 'yes'),
(232, 'wp-dark-mode_tracking_notice', 'hide', 'yes'),
(233, 'wp-dark-mode_tracking_skipped', 'yes', 'yes'),
(239, 'category_children', 'a:0:{}', 'yes'),
(256, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":6,\"critical\":1}', 'yes'),
(331, 'wp_dark_mode_notices', 'a:0:{}', 'yes'),
(344, 'db_upgraded', '', 'yes'),
(351, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"i.bashlyaev@gmail.com\";s:7:\"version\";s:3:\"5.9\";s:9:\"timestamp\";i:1643467394;}', 'no'),
(382, 'wp_dark_mode_version', '2.2.6', 'yes'),
(383, 'wp_dark_mode_review_notice_interval', 'off', 'yes'),
(388, 'wp_dark_mode_affiliate_notice_interval', 'off', 'yes'),
(399, 'wpdg_specific_version_name', '5.8.3', 'yes'),
(400, 'wpdg_download_url', '', 'yes'),
(401, 'wpdg_edit_download_url', '', 'yes'),
(404, 'core_updater.lock', '1643478206', 'no'),
(405, 'recovery_mode_email_last_sent', '1643478227', 'yes'),
(407, 'can_compress_scripts', '1', 'no'),
(429, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.8.3\";s:12:\"last_checked\";i:1723736016;}', 'no'),
(430, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1723732288;s:7:\"checked\";a:1:{s:6:\"timber\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(431, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1723732268;s:8:\"response\";a:2:{s:23:\"wp-dark-mode/plugin.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/wp-dark-mode\";s:4:\"slug\";s:12:\"wp-dark-mode\";s:6:\"plugin\";s:23:\"wp-dark-mode/plugin.php\";s:11:\"new_version\";s:5:\"5.0.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-dark-mode/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-dark-mode.5.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-dark-mode/assets/icon-256x256.gif?rev=2872214\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-dark-mode/assets/icon-256x256.gif?rev=2872214\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-dark-mode/assets/banner-1544x500.gif?rev=2872214\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-dark-mode/assets/banner-772x250.gif?rev=2872214\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.5.4\";s:12:\"requires_php\";s:3:\"5.6\";s:16:\"requires_plugins\";a:0:{}}s:29:\"wp-downgrade/wp-downgrade.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/wp-downgrade\";s:4:\"slug\";s:12:\"wp-downgrade\";s:6:\"plugin\";s:29:\"wp-downgrade/wp-downgrade.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-downgrade/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-downgrade.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-downgrade/assets/icon-256x256.png?rev=1412844\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-downgrade/assets/icon-128x128.png?rev=1412844\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";s:6:\"tested\";s:5:\"6.2.5\";s:12:\"requires_php\";b:0;s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3096880\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3096880\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.5.4\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:45:\"wf-magnific-lightbox/wf-magnific-lightbox.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/wf-magnific-lightbox\";s:4:\"slug\";s:20:\"wf-magnific-lightbox\";s:6:\"plugin\";s:45:\"wf-magnific-lightbox/wf-magnific-lightbox.php\";s:11:\"new_version\";s:6:\"0.9.13\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/wf-magnific-lightbox/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/wf-magnific-lightbox.0.9.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wf-magnific-lightbox/assets/icon-256x256.png?rev=1334275\";s:2:\"1x\";s:73:\"https://ps.w.org/wf-magnific-lightbox/assets/icon-128x128.png?rev=1334275\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/wf-magnific-lightbox/assets/banner-772x250.png?rev=1334275\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:45:\"wf-magnific-lightbox/wf-magnific-lightbox.php\";s:6:\"0.9.13\";s:23:\"wp-dark-mode/plugin.php\";s:5:\"2.2.6\";s:29:\"wp-downgrade/wp-downgrade.php\";s:5:\"1.2.2\";}}', 'no'),
(435, '_site_transient_timeout_theme_roots', '1723734088', 'no'),
(436, '_site_transient_theme_roots', 'a:1:{s:6:\"timber\";s:7:\"/themes\";}', 'no'),
(438, 'new_admin_email', 'i.bashlyaev@gmail.com', 'yes'),
(439, '_transient_timeout_settings_errors', '1723736052', 'no'),
(440, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:38:\"Настройки сохранены.\";s:4:\"type\";s:7:\"success\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(8, 2, '_edit_lock', '1643484578:1'),
(9, 2, '_edit_last', '1'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1643483505:1'),
(12, 2, 'header__name', 'TIMBER HOUSE'),
(13, 2, '_header__name', 'field_61cd8e210311d'),
(14, 2, 'phone', '+380967280203'),
(15, 2, '_phone', 'field_61cd8e710311e'),
(16, 2, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(17, 2, '_header__title', 'field_61cd8e9c0311f'),
(18, 18, 'header__name', '12'),
(19, 18, '_header__name', 'field_61cd8e210311d'),
(20, 18, 'phone', '2'),
(21, 18, '_phone', 'field_61cd8e710311e'),
(22, 18, 'header__title', '1'),
(23, 18, '_header__title', 'field_61cd8e9c0311f'),
(24, 19, 'header__name', 'TIMBER HOUSE'),
(25, 19, '_header__name', 'field_61cd8e210311d'),
(26, 19, 'phone', '+380967280203'),
(27, 19, '_phone', 'field_61cd8e710311e'),
(28, 19, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(29, 19, '_header__title', 'field_61cd8e9c0311f'),
(30, 22, '_wp_attached_file', '2021/12/sale.png'),
(31, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:252;s:6:\"height\";i:251;s:4:\"file\";s:16:\"2021/12/sale.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"sale-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 23, '_wp_attached_file', '2021/12/bg.jpg'),
(33, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:14:\"2021/12/bg.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:15:\"bg-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 2, 'header__sale', '22'),
(35, 2, '_header__sale', 'field_61cd9224b99b0'),
(36, 2, 'top__bg', '23'),
(37, 2, '_top__bg', 'field_61cd936cb99b1'),
(38, 19, 'header__sale', ''),
(39, 19, '_header__sale', 'field_61cd9224b99b0'),
(40, 19, 'top__bg', ''),
(41, 19, '_top__bg', 'field_61cd936cb99b1'),
(42, 24, 'header__name', 'TIMBER HOUSE'),
(43, 24, '_header__name', 'field_61cd8e210311d'),
(44, 24, 'phone', '+380967280203'),
(45, 24, '_phone', 'field_61cd8e710311e'),
(46, 24, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(47, 24, '_header__title', 'field_61cd8e9c0311f'),
(48, 24, 'header__sale', '22'),
(49, 24, '_header__sale', 'field_61cd9224b99b0'),
(50, 24, 'top__bg', '23'),
(51, 24, '_top__bg', 'field_61cd936cb99b1'),
(52, 2, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(53, 2, '_main__title', 'field_61cd999344c7f'),
(54, 2, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(55, 2, '_main__text', 'field_61cd99d144c80'),
(56, 27, 'header__name', 'TIMBER HOUSE'),
(57, 27, '_header__name', 'field_61cd8e210311d'),
(58, 27, 'phone', '+380967280203'),
(59, 27, '_phone', 'field_61cd8e710311e'),
(60, 27, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(61, 27, '_header__title', 'field_61cd8e9c0311f'),
(62, 27, 'header__sale', '22'),
(63, 27, '_header__sale', 'field_61cd9224b99b0'),
(64, 27, 'top__bg', '23'),
(65, 27, '_top__bg', 'field_61cd936cb99b1'),
(66, 27, 'main__title', 'Строительство домов и бань из строганного и профилированного бруса'),
(67, 27, '_main__title', 'field_61cd999344c7f'),
(68, 27, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ гарантируем качество и надежность всех построенных нами объектов ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА'),
(69, 27, '_main__text', 'field_61cd99d144c80'),
(70, 28, 'header__name', 'TIMBER HOUSE'),
(71, 28, '_header__name', 'field_61cd8e210311d'),
(72, 28, 'phone', '+380967280203'),
(73, 28, '_phone', 'field_61cd8e710311e'),
(74, 28, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(75, 28, '_header__title', 'field_61cd8e9c0311f'),
(76, 28, 'header__sale', '22'),
(77, 28, '_header__sale', 'field_61cd9224b99b0'),
(78, 28, 'top__bg', '23'),
(79, 28, '_top__bg', 'field_61cd936cb99b1'),
(80, 28, 'main__title', 'Строительство домов и бань из строганного и профилированного бруса'),
(81, 28, '_main__title', 'field_61cd999344c7f'),
(82, 28, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ гарантируем качество и надежность всех построенных нами объектов ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА'),
(83, 28, '_main__text', 'field_61cd99d144c80'),
(84, 29, 'header__name', 'TIMBER HOUSE'),
(85, 29, '_header__name', 'field_61cd8e210311d'),
(86, 29, 'phone', '+380967280203'),
(87, 29, '_phone', 'field_61cd8e710311e'),
(88, 29, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(89, 29, '_header__title', 'field_61cd8e9c0311f'),
(90, 29, 'header__sale', '22'),
(91, 29, '_header__sale', 'field_61cd9224b99b0'),
(92, 29, 'top__bg', '23'),
(93, 29, '_top__bg', 'field_61cd936cb99b1'),
(94, 29, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(95, 29, '_main__title', 'field_61cd999344c7f'),
(96, 29, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\n&nbsp;\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n&nbsp;\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(97, 29, '_main__text', 'field_61cd99d144c80'),
(98, 30, 'header__name', 'TIMBER HOUSE'),
(99, 30, '_header__name', 'field_61cd8e210311d'),
(100, 30, 'phone', '+380967280203'),
(101, 30, '_phone', 'field_61cd8e710311e'),
(102, 30, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(103, 30, '_header__title', 'field_61cd8e9c0311f'),
(104, 30, 'header__sale', '22'),
(105, 30, '_header__sale', 'field_61cd9224b99b0'),
(106, 30, 'top__bg', '23'),
(107, 30, '_top__bg', 'field_61cd936cb99b1'),
(108, 30, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(109, 30, '_main__title', 'field_61cd999344c7f'),
(110, 30, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(111, 30, '_main__text', 'field_61cd99d144c80'),
(112, 31, '_wp_attached_file', '2021/12/item-1.jpg'),
(113, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 32, 'header__name', 'TIMBER HOUSE'),
(115, 32, '_header__name', 'field_61cd8e210311d'),
(116, 32, 'phone', '+380967280203'),
(117, 32, '_phone', 'field_61cd8e710311e'),
(118, 32, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(119, 32, '_header__title', 'field_61cd8e9c0311f'),
(120, 32, 'header__sale', '22'),
(121, 32, '_header__sale', 'field_61cd9224b99b0'),
(122, 32, 'top__bg', '23'),
(123, 32, '_top__bg', 'field_61cd936cb99b1'),
(124, 32, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(125, 32, '_main__title', 'field_61cd999344c7f'),
(126, 32, 'main__text', '[gallery columns=\"4\" size=\"full\" ids=\"31\" link=\"file\"]\r\n\r\nЗа 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(127, 32, '_main__text', 'field_61cd99d144c80'),
(130, 35, '_wp_attached_file', '2021/12/item-2.jpg'),
(131, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 36, '_wp_attached_file', '2021/12/item-3.jpg'),
(133, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 37, '_wp_attached_file', '2021/12/item-4.jpg'),
(135, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 38, '_wp_attached_file', '2021/12/item-5.jpg'),
(137, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 39, '_wp_attached_file', '2021/12/item-6.jpg'),
(139, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-6.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 40, '_wp_attached_file', '2021/12/item-7.jpg'),
(141, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-7.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 41, '_wp_attached_file', '2021/12/item-8.jpg'),
(143, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-8.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 42, '_wp_attached_file', '2021/12/item-9.jpg'),
(145, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2021/12/item-9.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 43, '_wp_attached_file', '2021/12/item-10.jpg'),
(147, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:19:\"2021/12/item-10.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"item-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 44, '_wp_attached_file', '2021/12/item-11.jpg'),
(149, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:19:\"2021/12/item-11.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"item-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 45, '_wp_attached_file', '2021/12/item-12.jpg'),
(151, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:19:\"2021/12/item-12.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"item-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 46, '_wp_attached_file', '2021/12/item-13.jpg'),
(153, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:19:\"2021/12/item-13.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"item-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 47, '_wp_attached_file', '2021/12/item-14.jpg'),
(155, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:19:\"2021/12/item-14.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"item-14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 48, '_wp_attached_file', '2021/12/item-15.jpg'),
(157, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:19:\"2021/12/item-15.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"item-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 49, '_wp_attached_file', '2021/12/item-16.jpg'),
(159, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:19:\"2021/12/item-16.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"item-16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 2, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(161, 2, '_photo', 'field_61cdafe621965'),
(162, 50, 'header__name', 'TIMBER HOUSE'),
(163, 50, '_header__name', 'field_61cd8e210311d'),
(164, 50, 'phone', '+380967280203'),
(165, 50, '_phone', 'field_61cd8e710311e'),
(166, 50, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(167, 50, '_header__title', 'field_61cd8e9c0311f'),
(168, 50, 'header__sale', '22'),
(169, 50, '_header__sale', 'field_61cd9224b99b0'),
(170, 50, 'top__bg', '23'),
(171, 50, '_top__bg', 'field_61cd936cb99b1'),
(172, 50, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(173, 50, '_main__title', 'field_61cd999344c7f'),
(174, 50, 'main__text', '[gallery columns=\"4\" size=\"full\" ids=\"31\" link=\"file\"]\r\n\r\nЗа 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(175, 50, '_main__text', 'field_61cd99d144c80'),
(176, 50, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(177, 50, '_photo', 'field_61cdafe621965'),
(178, 51, 'header__name', 'TIMBER HOUSE'),
(179, 51, '_header__name', 'field_61cd8e210311d'),
(180, 51, 'phone', '+380967280203'),
(181, 51, '_phone', 'field_61cd8e710311e'),
(182, 51, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(183, 51, '_header__title', 'field_61cd8e9c0311f'),
(184, 51, 'header__sale', '22'),
(185, 51, '_header__sale', 'field_61cd9224b99b0'),
(186, 51, 'top__bg', '23'),
(187, 51, '_top__bg', 'field_61cd936cb99b1'),
(188, 51, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(189, 51, '_main__title', 'field_61cd999344c7f'),
(190, 51, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(191, 51, '_main__text', 'field_61cd99d144c80'),
(192, 51, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(193, 51, '_photo', 'field_61cdafe621965'),
(194, 2, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(195, 2, '_gallery_title', 'field_61cdafe621965'),
(196, 2, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(197, 2, '_gallery__text', 'field_61cdbe3643f41'),
(198, 2, 'email', 'ibashlyaev@gmail.com'),
(199, 2, '_email', 'field_61cdbf379734d'),
(200, 55, 'header__name', 'TIMBER HOUSE'),
(201, 55, '_header__name', 'field_61cd8e210311d'),
(202, 55, 'phone', '+380967280203'),
(203, 55, '_phone', 'field_61cd8e710311e'),
(204, 55, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(205, 55, '_header__title', 'field_61cd8e9c0311f'),
(206, 55, 'header__sale', '22'),
(207, 55, '_header__sale', 'field_61cd9224b99b0'),
(208, 55, 'top__bg', '23'),
(209, 55, '_top__bg', 'field_61cd936cb99b1'),
(210, 55, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(211, 55, '_main__title', 'field_61cd999344c7f'),
(212, 55, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(213, 55, '_main__text', 'field_61cd99d144c80'),
(214, 55, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(215, 55, '_photo', 'field_61cdafe621965'),
(216, 55, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(217, 55, '_gallery_title', 'field_61cdafe621965'),
(218, 55, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(219, 55, '_gallery__text', 'field_61cdbe3643f41'),
(220, 55, 'email', 'ibashlyaev@gmail.com'),
(221, 55, '_email', 'field_61cdbf379734d'),
(222, 2, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(223, 2, '_gallery__title', 'field_61cdafe621965'),
(224, 56, 'header__name', 'TIMBER HOUSE'),
(225, 56, '_header__name', 'field_61cd8e210311d'),
(226, 56, 'phone', '+380967280203'),
(227, 56, '_phone', 'field_61cd8e710311e'),
(228, 56, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(229, 56, '_header__title', 'field_61cd8e9c0311f'),
(230, 56, 'header__sale', '22'),
(231, 56, '_header__sale', 'field_61cd9224b99b0'),
(232, 56, 'top__bg', '23'),
(233, 56, '_top__bg', 'field_61cd936cb99b1'),
(234, 56, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(235, 56, '_main__title', 'field_61cd999344c7f'),
(236, 56, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(237, 56, '_main__text', 'field_61cd99d144c80'),
(238, 56, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(239, 56, '_photo', 'field_61cdafe621965'),
(240, 56, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(241, 56, '_gallery_title', 'field_61cdafe621965'),
(242, 56, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(243, 56, '_gallery__text', 'field_61cdbe3643f41'),
(244, 56, 'email', 'ibashlyaev@gmail.com'),
(245, 56, '_email', 'field_61cdbf379734d'),
(246, 56, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(247, 56, '_gallery__title', 'field_61cdafe621965'),
(248, 2, 'gallery', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(249, 2, '_gallery', 'field_61cdc3e8a051e'),
(250, 58, 'header__name', 'TIMBER HOUSE'),
(251, 58, '_header__name', 'field_61cd8e210311d'),
(252, 58, 'phone', '+380967280203'),
(253, 58, '_phone', 'field_61cd8e710311e'),
(254, 58, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(255, 58, '_header__title', 'field_61cd8e9c0311f'),
(256, 58, 'header__sale', '22'),
(257, 58, '_header__sale', 'field_61cd9224b99b0'),
(258, 58, 'top__bg', '23'),
(259, 58, '_top__bg', 'field_61cd936cb99b1'),
(260, 58, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(261, 58, '_main__title', 'field_61cd999344c7f'),
(262, 58, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(263, 58, '_main__text', 'field_61cd99d144c80'),
(264, 58, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(265, 58, '_photo', 'field_61cdafe621965'),
(266, 58, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(267, 58, '_gallery_title', 'field_61cdafe621965'),
(268, 58, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(269, 58, '_gallery__text', 'field_61cdbe3643f41'),
(270, 58, 'email', 'ibashlyaev@gmail.com'),
(271, 58, '_email', 'field_61cdbf379734d'),
(272, 58, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(273, 58, '_gallery__title', 'field_61cdafe621965'),
(274, 58, 'gallery', '[gallery columns=\"4\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(275, 58, '_gallery', 'field_61cdc3e8a051e'),
(276, 59, 'header__name', 'TIMBER HOUSE'),
(277, 59, '_header__name', 'field_61cd8e210311d'),
(278, 59, 'phone', '+380967280203'),
(279, 59, '_phone', 'field_61cd8e710311e'),
(280, 59, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(281, 59, '_header__title', 'field_61cd8e9c0311f'),
(282, 59, 'header__sale', '22'),
(283, 59, '_header__sale', 'field_61cd9224b99b0'),
(284, 59, 'top__bg', '23'),
(285, 59, '_top__bg', 'field_61cd936cb99b1'),
(286, 59, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(287, 59, '_main__title', 'field_61cd999344c7f'),
(288, 59, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(289, 59, '_main__text', 'field_61cd99d144c80'),
(290, 59, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(291, 59, '_photo', 'field_61cdafe621965'),
(292, 59, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(293, 59, '_gallery_title', 'field_61cdafe621965'),
(294, 59, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(295, 59, '_gallery__text', 'field_61cdbe3643f41'),
(296, 59, 'email', 'ibashlyaev@gmail.com'),
(297, 59, '_email', 'field_61cdbf379734d'),
(298, 59, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(299, 59, '_gallery__title', 'field_61cdafe621965'),
(300, 59, 'gallery', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(301, 59, '_gallery', 'field_61cdc3e8a051e'),
(302, 62, '_wp_attached_file', '2021/12/project-1.jpg'),
(303, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:21:\"2021/12/project-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"project-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"project-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"project-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 2, 'download__link', '62'),
(305, 2, '_download__link', 'field_61cdcfae77fe4'),
(306, 63, 'header__name', 'TIMBER HOUSE'),
(307, 63, '_header__name', 'field_61cd8e210311d'),
(308, 63, 'phone', '+380967280203'),
(309, 63, '_phone', 'field_61cd8e710311e'),
(310, 63, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(311, 63, '_header__title', 'field_61cd8e9c0311f'),
(312, 63, 'header__sale', '22'),
(313, 63, '_header__sale', 'field_61cd9224b99b0'),
(314, 63, 'top__bg', '23'),
(315, 63, '_top__bg', 'field_61cd936cb99b1'),
(316, 63, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(317, 63, '_main__title', 'field_61cd999344c7f'),
(318, 63, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(319, 63, '_main__text', 'field_61cd99d144c80'),
(320, 63, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(321, 63, '_photo', 'field_61cdafe621965'),
(322, 63, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(323, 63, '_gallery_title', 'field_61cdafe621965'),
(324, 63, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(325, 63, '_gallery__text', 'field_61cdbe3643f41'),
(326, 63, 'email', 'ibashlyaev@gmail.com'),
(327, 63, '_email', 'field_61cdbf379734d'),
(328, 63, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(329, 63, '_gallery__title', 'field_61cdafe621965'),
(330, 63, 'gallery', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(331, 63, '_gallery', 'field_61cdc3e8a051e'),
(332, 63, 'download__link', '62'),
(333, 63, '_download__link', 'field_61cdcfae77fe4'),
(334, 2, 'project_item', 'a:3:{i:0;s:1:\"1\";i:1;s:2:\"75\";i:2;s:2:\"77\";}'),
(335, 2, '_project_item', 'field_61cdd838ee1d0'),
(336, 66, 'header__name', 'TIMBER HOUSE'),
(337, 66, '_header__name', 'field_61cd8e210311d'),
(338, 66, 'phone', '+380967280203'),
(339, 66, '_phone', 'field_61cd8e710311e'),
(340, 66, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(341, 66, '_header__title', 'field_61cd8e9c0311f'),
(342, 66, 'header__sale', '22'),
(343, 66, '_header__sale', 'field_61cd9224b99b0'),
(344, 66, 'top__bg', '23'),
(345, 66, '_top__bg', 'field_61cd936cb99b1'),
(346, 66, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(347, 66, '_main__title', 'field_61cd999344c7f'),
(348, 66, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(349, 66, '_main__text', 'field_61cd99d144c80'),
(350, 66, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(351, 66, '_photo', 'field_61cdafe621965'),
(352, 66, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(353, 66, '_gallery_title', 'field_61cdafe621965'),
(354, 66, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(355, 66, '_gallery__text', 'field_61cdbe3643f41'),
(356, 66, 'email', 'ibashlyaev@gmail.com'),
(357, 66, '_email', 'field_61cdbf379734d'),
(358, 66, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(359, 66, '_gallery__title', 'field_61cdafe621965'),
(360, 66, 'gallery', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(361, 66, '_gallery', 'field_61cdc3e8a051e'),
(362, 66, 'download__link', '62'),
(363, 66, '_download__link', 'field_61cdcfae77fe4'),
(364, 66, 'project_item', 'a:1:{i:0;s:1:\"1\";}'),
(365, 66, '_project_item', 'field_61cdd5a8a0c42'),
(366, 2, 'проект', 'a:1:{i:0;s:1:\"1\";}'),
(367, 2, '_проект', 'field_61cdd838ee1d0'),
(368, 69, 'header__name', 'TIMBER HOUSE'),
(369, 69, '_header__name', 'field_61cd8e210311d'),
(370, 69, 'phone', '+380967280203'),
(371, 69, '_phone', 'field_61cd8e710311e'),
(372, 69, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(373, 69, '_header__title', 'field_61cd8e9c0311f'),
(374, 69, 'header__sale', '22'),
(375, 69, '_header__sale', 'field_61cd9224b99b0'),
(376, 69, 'top__bg', '23'),
(377, 69, '_top__bg', 'field_61cd936cb99b1'),
(378, 69, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(379, 69, '_main__title', 'field_61cd999344c7f'),
(380, 69, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(381, 69, '_main__text', 'field_61cd99d144c80'),
(382, 69, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(383, 69, '_photo', 'field_61cdafe621965'),
(384, 69, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(385, 69, '_gallery_title', 'field_61cdafe621965'),
(386, 69, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(387, 69, '_gallery__text', 'field_61cdbe3643f41'),
(388, 69, 'email', 'ibashlyaev@gmail.com'),
(389, 69, '_email', 'field_61cdbf379734d'),
(390, 69, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(391, 69, '_gallery__title', 'field_61cdafe621965'),
(392, 69, 'gallery', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(393, 69, '_gallery', 'field_61cdc3e8a051e'),
(394, 69, 'download__link', '62'),
(395, 69, '_download__link', 'field_61cdcfae77fe4'),
(396, 69, 'project_item', 'a:1:{i:0;s:1:\"1\";}'),
(397, 69, '_project_item', 'field_61cdd838ee1d0'),
(398, 69, 'проект', 'a:1:{i:0;s:1:\"1\";}'),
(399, 69, '_проект', 'field_61cdd838ee1d0'),
(400, 1, '_edit_lock', '1643484605:1'),
(403, 1, '_edit_last', '1'),
(410, 75, '_edit_lock', '1641209038:1'),
(416, 77, '_edit_lock', '1641209037:1'),
(421, 80, '_edit_last', '1'),
(422, 80, '_edit_lock', '1643484620:1'),
(423, 82, 'header__name', 'TIMBER HOUSE'),
(424, 82, '_header__name', 'field_61cd8e210311d'),
(425, 82, 'phone', '+380967280203'),
(426, 82, '_phone', 'field_61cd8e710311e'),
(427, 82, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(428, 82, '_header__title', 'field_61cd8e9c0311f'),
(429, 82, 'header__sale', '22'),
(430, 82, '_header__sale', 'field_61cd9224b99b0'),
(431, 82, 'top__bg', '23'),
(432, 82, '_top__bg', 'field_61cd936cb99b1'),
(433, 82, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(434, 82, '_main__title', 'field_61cd999344c7f'),
(435, 82, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(436, 82, '_main__text', 'field_61cd99d144c80'),
(437, 82, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(438, 82, '_photo', 'field_61cdafe621965'),
(439, 82, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(440, 82, '_gallery_title', 'field_61cdafe621965'),
(441, 82, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(442, 82, '_gallery__text', 'field_61cdbe3643f41'),
(443, 82, 'email', 'ibashlyaev@gmail.com'),
(444, 82, '_email', 'field_61cdbf379734d'),
(445, 82, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(446, 82, '_gallery__title', 'field_61cdafe621965'),
(447, 82, 'gallery', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(448, 82, '_gallery', 'field_61cdc3e8a051e'),
(449, 82, 'download__link', '62'),
(450, 82, '_download__link', 'field_61cdcfae77fe4'),
(451, 82, 'project_item', 'a:3:{i:0;s:1:\"1\";i:1;s:2:\"75\";i:2;s:2:\"77\";}'),
(452, 82, '_project_item', 'field_61cdd838ee1d0'),
(453, 82, 'проект', 'a:1:{i:0;s:1:\"1\";}'),
(454, 82, '_проект', 'field_61cdd838ee1d0'),
(457, 1, 'название_проекта', 'ДОМ №1'),
(458, 1, '_название_проекта', 'field_61d2bc9a2d89c'),
(459, 83, 'название_проекта', 'ДОМ №1'),
(460, 83, '_название_проекта', 'field_61d2bc9a2d89c'),
(463, 75, '_edit_last', '1'),
(464, 75, 'название_проекта', 'ДОМ №2'),
(465, 75, '_название_проекта', 'field_61d2bc9a2d89c'),
(466, 84, 'название_проекта', 'ДОМ №2'),
(467, 84, '_название_проекта', 'field_61d2bc9a2d89c'),
(470, 77, '_edit_last', '1'),
(471, 77, 'название_проекта', 'ДОМ №3'),
(472, 77, '_название_проекта', 'field_61d2bc9a2d89c'),
(473, 85, 'название_проекта', 'ДОМ №3'),
(474, 85, '_название_проекта', 'field_61d2bc9a2d89c'),
(477, 1, 'project__name', 'ДОМ №1'),
(478, 1, '_project__name', 'field_61d2bc9a2d89c'),
(479, 86, 'название_проекта', 'ДОМ №1'),
(480, 86, '_название_проекта', 'field_61d2bc9a2d89c'),
(481, 86, 'project__name', 'ДОМ №!'),
(482, 86, '_project__name', 'field_61d2bc9a2d89c'),
(485, 87, 'название_проекта', 'ДОМ №1'),
(486, 87, '_название_проекта', 'field_61d2bc9a2d89c'),
(487, 87, 'project__name', 'ДОМ №1'),
(488, 87, '_project__name', 'field_61d2bc9a2d89c'),
(491, 75, 'project__name', 'ДОМ №2'),
(492, 75, '_project__name', 'field_61d2bc9a2d89c'),
(493, 88, 'название_проекта', 'ДОМ №2'),
(494, 88, '_название_проекта', 'field_61d2bc9a2d89c'),
(495, 88, 'project__name', 'ДОМ №2'),
(496, 88, '_project__name', 'field_61d2bc9a2d89c'),
(499, 77, 'project__name', 'ДОМ №3'),
(500, 77, '_project__name', 'field_61d2bc9a2d89c'),
(501, 89, 'название_проекта', 'ДОМ №3'),
(502, 89, '_название_проекта', 'field_61d2bc9a2d89c'),
(503, 89, 'project__name', 'ДОМ №3'),
(504, 89, '_project__name', 'field_61d2bc9a2d89c'),
(505, 2, 'project__title', 'ПРОЕКТЫ ДОМОВ ИЗ БРУСА'),
(506, 2, '_project__title', 'field_61d2ca9e7e8ab'),
(507, 91, 'header__name', 'TIMBER HOUSE'),
(508, 91, '_header__name', 'field_61cd8e210311d'),
(509, 91, 'phone', '+380967280203'),
(510, 91, '_phone', 'field_61cd8e710311e'),
(511, 91, 'header__title', 'ДОМА ИЗ БРУСА ПОД КЛЮЧ'),
(512, 91, '_header__title', 'field_61cd8e9c0311f'),
(513, 91, 'header__sale', '22'),
(514, 91, '_header__sale', 'field_61cd9224b99b0'),
(515, 91, 'top__bg', '23'),
(516, 91, '_top__bg', 'field_61cd936cb99b1'),
(517, 91, 'main__title', 'Строительство домов и бань из\r\nстроганного и профилированного бруса'),
(518, 91, '_main__title', 'field_61cd999344c7f'),
(519, 91, 'main__text', 'За 10 лет мы возвели больше 250 домов и бань из бруса\r\n\r\nИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\n\r\nгарантируем качество и надежность всех построенных нами объектов\r\n\r\n<strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong>'),
(520, 91, '_main__text', 'field_61cd99d144c80'),
(521, 91, 'photo', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(522, 91, '_photo', 'field_61cdafe621965'),
(523, 91, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(524, 91, '_gallery_title', 'field_61cdafe621965'),
(525, 91, 'gallery__text', 'некоторые фотографии построенных нами домов и бань из бруса'),
(526, 91, '_gallery__text', 'field_61cdbe3643f41'),
(527, 91, 'email', 'ibashlyaev@gmail.com'),
(528, 91, '_email', 'field_61cdbf379734d'),
(529, 91, 'gallery__title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(530, 91, '_gallery__title', 'field_61cdafe621965'),
(531, 91, 'gallery', '[gallery columns=\"4\" size=\"full\" ids=\"31,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49\" link=\"file\"]'),
(532, 91, '_gallery', 'field_61cdc3e8a051e'),
(533, 91, 'download__link', '62'),
(534, 91, '_download__link', 'field_61cdcfae77fe4'),
(535, 91, 'project_item', 'a:3:{i:0;s:1:\"1\";i:1;s:2:\"75\";i:2;s:2:\"77\";}'),
(536, 91, '_project_item', 'field_61cdd838ee1d0'),
(537, 91, 'проект', 'a:1:{i:0;s:1:\"1\";}'),
(538, 91, '_проект', 'field_61cdd838ee1d0'),
(539, 91, 'project__title', 'ПРОЕКТЫ ДОМОВ ИЗ БРУСА'),
(540, 91, '_project__title', 'field_61d2ca9e7e8ab'),
(547, 1, 'project__size', 'Размер дома: 6 x 6'),
(548, 1, '_project__size', 'field_61d2cbccc42d9'),
(549, 94, 'название_проекта', 'ДОМ №1'),
(550, 94, '_название_проекта', 'field_61d2bc9a2d89c'),
(551, 94, 'project__name', 'ДОМ №1'),
(552, 94, '_project__name', 'field_61d2bc9a2d89c'),
(553, 94, 'project__size', 'Размер дома: 6 x 6'),
(554, 94, '_project__size', 'field_61d2cbccc42d9'),
(557, 75, 'project__size', 'Размер дома: 6 x 6'),
(558, 75, '_project__size', 'field_61d2cbccc42d9'),
(559, 96, 'название_проекта', 'ДОМ №2'),
(560, 96, '_название_проекта', 'field_61d2bc9a2d89c'),
(561, 96, 'project__name', 'ДОМ №2'),
(562, 96, '_project__name', 'field_61d2bc9a2d89c'),
(563, 96, 'project__size', 'Размер дома: 6 x 6'),
(564, 96, '_project__size', 'field_61d2cbccc42d9'),
(567, 77, 'project__size', 'Размер дома: 6 x 6'),
(568, 77, '_project__size', 'field_61d2cbccc42d9'),
(569, 97, 'название_проекта', 'ДОМ №3'),
(570, 97, '_название_проекта', 'field_61d2bc9a2d89c'),
(571, 97, 'project__name', 'ДОМ №3'),
(572, 97, '_project__name', 'field_61d2bc9a2d89c'),
(573, 97, 'project__size', 'Размер дома: 6 x 6'),
(574, 97, '_project__size', 'field_61d2cbccc42d9'),
(577, 1, 'project__area', 'Общая площадь дома: 54 кв. м'),
(578, 1, '_project__area', 'field_61d2cf5ec93ea'),
(579, 99, 'название_проекта', 'ДОМ №1'),
(580, 99, '_название_проекта', 'field_61d2bc9a2d89c'),
(581, 99, 'project__name', 'ДОМ №1'),
(582, 99, '_project__name', 'field_61d2bc9a2d89c'),
(583, 99, 'project__size', 'Размер дома: 6 x 6'),
(584, 99, '_project__size', 'field_61d2cbccc42d9'),
(585, 99, 'project__area', 'Общая площадь дома: 54 кв. м'),
(586, 99, '_project__area', 'field_61d2cf5ec93ea'),
(589, 75, 'project__area', 'Общая площадь дома: 54 кв. м'),
(590, 75, '_project__area', 'field_61d2cf5ec93ea'),
(591, 100, 'название_проекта', 'ДОМ №2'),
(592, 100, '_название_проекта', 'field_61d2bc9a2d89c'),
(593, 100, 'project__name', 'ДОМ №2'),
(594, 100, '_project__name', 'field_61d2bc9a2d89c'),
(595, 100, 'project__size', 'Размер дома: 6 x 6'),
(596, 100, '_project__size', 'field_61d2cbccc42d9'),
(597, 100, 'project__area', 'Общая площадь дома: 54 кв. м'),
(598, 100, '_project__area', 'field_61d2cf5ec93ea'),
(601, 77, 'project__area', 'Общая площадь дома: 54 кв. м'),
(602, 77, '_project__area', 'field_61d2cf5ec93ea'),
(603, 101, 'название_проекта', 'ДОМ №3'),
(604, 101, '_название_проекта', 'field_61d2bc9a2d89c'),
(605, 101, 'project__name', 'ДОМ №3'),
(606, 101, '_project__name', 'field_61d2bc9a2d89c'),
(607, 101, 'project__size', 'Размер дома: 6 x 6'),
(608, 101, '_project__size', 'field_61d2cbccc42d9'),
(609, 101, 'project__area', 'Общая площадь дома: 54 кв. м'),
(610, 101, '_project__area', 'field_61d2cf5ec93ea'),
(613, 1, 'project__price', 'Стоимость - 402 000 рублей'),
(614, 1, '_project__price', 'field_61d2cfab3830f'),
(615, 103, 'название_проекта', 'ДОМ №1'),
(616, 103, '_название_проекта', 'field_61d2bc9a2d89c'),
(617, 103, 'project__name', 'ДОМ №1'),
(618, 103, '_project__name', 'field_61d2bc9a2d89c'),
(619, 103, 'project__size', 'Размер дома: 6 x 6'),
(620, 103, '_project__size', 'field_61d2cbccc42d9'),
(621, 103, 'project__area', 'Общая площадь дома: 54 кв. м'),
(622, 103, '_project__area', 'field_61d2cf5ec93ea'),
(623, 103, 'project__price', 'Стоимость - 402 000 рублей'),
(624, 103, '_project__price', 'field_61d2cfab3830f'),
(627, 75, 'project__price', 'Стоимость - 402 000 рублей'),
(628, 75, '_project__price', 'field_61d2cfab3830f'),
(629, 104, 'название_проекта', 'ДОМ №2'),
(630, 104, '_название_проекта', 'field_61d2bc9a2d89c'),
(631, 104, 'project__name', 'ДОМ №2'),
(632, 104, '_project__name', 'field_61d2bc9a2d89c'),
(633, 104, 'project__size', 'Размер дома: 6 x 6'),
(634, 104, '_project__size', 'field_61d2cbccc42d9'),
(635, 104, 'project__area', 'Общая площадь дома: 54 кв. м'),
(636, 104, '_project__area', 'field_61d2cf5ec93ea'),
(637, 104, 'project__price', 'Стоимость - 402 000 рублей'),
(638, 104, '_project__price', 'field_61d2cfab3830f'),
(641, 77, 'project__price', 'Стоимость - 402 000 рублей'),
(642, 77, '_project__price', 'field_61d2cfab3830f'),
(643, 105, 'название_проекта', 'ДОМ №3'),
(644, 105, '_название_проекта', 'field_61d2bc9a2d89c'),
(645, 105, 'project__name', 'ДОМ №3'),
(646, 105, '_project__name', 'field_61d2bc9a2d89c'),
(647, 105, 'project__size', 'Размер дома: 6 x 6'),
(648, 105, '_project__size', 'field_61d2cbccc42d9'),
(649, 105, 'project__area', 'Общая площадь дома: 54 кв. м'),
(650, 105, '_project__area', 'field_61d2cf5ec93ea'),
(651, 105, 'project__price', 'Стоимость - 402 000 рублей'),
(652, 105, '_project__price', 'field_61d2cfab3830f'),
(653, 108, '_wp_attached_file', '2021/12/project-2.jpg'),
(654, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:991;s:6:\"height\";i:543;s:4:\"file\";s:21:\"2021/12/project-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"project-2-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"project-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"project-2-768x421.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:421;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657, 1, 'project__images-item-1', '62'),
(658, 1, '_project__images-item-1', 'field_61d2d68d7a435'),
(659, 1, 'project__images-item-2', '108'),
(660, 1, '_project__images-item-2', 'field_61d2d6dc7a436'),
(661, 109, 'название_проекта', 'ДОМ №1'),
(662, 109, '_название_проекта', 'field_61d2bc9a2d89c'),
(663, 109, 'project__name', 'ДОМ №1'),
(664, 109, '_project__name', 'field_61d2bc9a2d89c'),
(665, 109, 'project__size', 'Размер дома: 6 x 6'),
(666, 109, '_project__size', 'field_61d2cbccc42d9'),
(667, 109, 'project__area', 'Общая площадь дома: 54 кв. м'),
(668, 109, '_project__area', 'field_61d2cf5ec93ea'),
(669, 109, 'project__price', 'Стоимость - 402 000 рублей'),
(670, 109, '_project__price', 'field_61d2cfab3830f'),
(671, 109, 'project__images-item-1', '62'),
(672, 109, '_project__images-item-1', 'field_61d2d68d7a435'),
(673, 109, 'project__images-item-2', '108'),
(674, 109, '_project__images-item-2', 'field_61d2d6dc7a436'),
(677, 75, 'project__images-item-1', '62'),
(678, 75, '_project__images-item-1', 'field_61d2d68d7a435'),
(679, 75, 'project__images-item-2', '108'),
(680, 75, '_project__images-item-2', 'field_61d2d6dc7a436'),
(681, 110, 'название_проекта', 'ДОМ №2'),
(682, 110, '_название_проекта', 'field_61d2bc9a2d89c'),
(683, 110, 'project__name', 'ДОМ №2'),
(684, 110, '_project__name', 'field_61d2bc9a2d89c'),
(685, 110, 'project__size', 'Размер дома: 6 x 6'),
(686, 110, '_project__size', 'field_61d2cbccc42d9'),
(687, 110, 'project__area', 'Общая площадь дома: 54 кв. м'),
(688, 110, '_project__area', 'field_61d2cf5ec93ea'),
(689, 110, 'project__price', 'Стоимость - 402 000 рублей'),
(690, 110, '_project__price', 'field_61d2cfab3830f'),
(691, 110, 'project__images-item-1', '62'),
(692, 110, '_project__images-item-1', 'field_61d2d68d7a435'),
(693, 110, 'project__images-item-2', '108'),
(694, 110, '_project__images-item-2', 'field_61d2d6dc7a436'),
(697, 77, 'project__images-item-1', '62'),
(698, 77, '_project__images-item-1', 'field_61d2d68d7a435'),
(699, 77, 'project__images-item-2', '108'),
(700, 77, '_project__images-item-2', 'field_61d2d6dc7a436'),
(701, 111, 'название_проекта', 'ДОМ №3'),
(702, 111, '_название_проекта', 'field_61d2bc9a2d89c'),
(703, 111, 'project__name', 'ДОМ №3'),
(704, 111, '_project__name', 'field_61d2bc9a2d89c'),
(705, 111, 'project__size', 'Размер дома: 6 x 6'),
(706, 111, '_project__size', 'field_61d2cbccc42d9'),
(707, 111, 'project__area', 'Общая площадь дома: 54 кв. м'),
(708, 111, '_project__area', 'field_61d2cf5ec93ea'),
(709, 111, 'project__price', 'Стоимость - 402 000 рублей'),
(710, 111, '_project__price', 'field_61d2cfab3830f'),
(711, 111, 'project__images-item-1', '62'),
(712, 111, '_project__images-item-1', 'field_61d2d68d7a435'),
(713, 111, 'project__images-item-2', '108'),
(714, 111, '_project__images-item-2', 'field_61d2d6dc7a436');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-30 11:20:45', '2021-12-30 08:20:45', '', 'ДОМ №1', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2022-01-03 14:02:33', '2022-01-03 11:02:33', '', 0, 'http://timber-house.com/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-30 11:20:45', '2021-12-30 08:20:45', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2022-01-03 14:08:07', '2022-01-03 11:08:07', '', 0, 'http://timber-house.com/?page_id=2', 0, 'page', '', 0),
(7, 1, '2021-12-30 13:19:28', '2021-12-30 10:19:28', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://timber-house.com/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 13:19:28', '2021-12-30 10:19:28', '', 2, 'http://timber-house.com/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-12-30 13:42:22', '2021-12-30 10:42:22', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Главная страница', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', 'publish', 'closed', 'closed', '', 'group_61cd883db79d3', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 0, 'http://timber-house.com/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2021-12-30 13:42:22', '2021-12-30 10:42:22', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Первый экран', 'Вк', 'publish', 'closed', 'closed', '', 'field_61cd8c8921d11', '', '', '2021-12-30 13:42:22', '2021-12-30 10:42:22', '', 8, 'http://timber-house.com/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2021-12-30 13:42:22', '2021-12-30 10:42:22', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Основной текст', 'основной_текст', 'publish', 'closed', 'closed', '', 'field_61cd8cbf21d12', '', '', '2021-12-30 14:12:01', '2021-12-30 11:12:01', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=10', 6, 'acf-field', '', 0),
(11, 1, '2021-12-30 13:42:22', '2021-12-30 10:42:22', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Фото работ', 'фото_работ', 'publish', 'closed', 'closed', '', 'field_61cd8ce721d13', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=11', 14, 'acf-field', '', 0),
(13, 1, '2021-12-30 13:45:15', '2021-12-30 10:45:15', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 13:45:15', '2021-12-30 10:45:15', '', 2, 'http://timber-house.com/?p=13', 0, 'revision', '', 0),
(15, 1, '2021-12-30 13:49:59', '2021-12-30 10:49:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Напишите название компании\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Главное название', 'header__name', 'publish', 'closed', 'closed', '', 'field_61cd8e210311d', '', '', '2021-12-30 13:54:21', '2021-12-30 10:54:21', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=15', 1, 'acf-field', '', 0),
(16, 1, '2021-12-30 13:49:59', '2021-12-30 10:49:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Введите номер телефона\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_61cd8e710311e', '', '', '2021-12-30 13:54:21', '2021-12-30 10:54:21', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=16', 2, 'acf-field', '', 0),
(17, 1, '2021-12-30 13:49:59', '2021-12-30 10:49:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:64:\"Введите текст под номером телефона\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Главный текст', 'header__title', 'publish', 'closed', 'closed', '', 'field_61cd8e9c0311f', '', '', '2021-12-30 13:54:21', '2021-12-30 10:54:21', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=17', 3, 'acf-field', '', 0),
(18, 1, '2021-12-30 13:55:24', '2021-12-30 10:55:24', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 13:55:24', '2021-12-30 10:55:24', '', 2, 'http://timber-house.com/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-12-30 13:59:58', '2021-12-30 10:59:58', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 13:59:58', '2021-12-30 10:59:58', '', 2, 'http://timber-house.com/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-12-30 14:10:31', '2021-12-30 11:10:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Акция - подарок', 'header__sale', 'publish', 'closed', 'closed', '', 'field_61cd9224b99b0', '', '', '2021-12-30 14:12:01', '2021-12-30 11:12:01', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=20', 4, 'acf-field', '', 0),
(21, 1, '2021-12-30 14:10:31', '2021-12-30 11:10:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фоновое изображение', 'top__bg', 'publish', 'closed', 'closed', '', 'field_61cd936cb99b1', '', '', '2021-12-30 14:12:01', '2021-12-30 11:12:01', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=21', 5, 'acf-field', '', 0),
(22, 1, '2021-12-30 14:13:12', '2021-12-30 11:13:12', '', 'sale', '', 'inherit', 'open', 'closed', '', 'sale', '', '', '2021-12-30 14:13:12', '2021-12-30 11:13:12', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/sale.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-12-30 14:13:35', '2021-12-30 11:13:35', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2021-12-30 14:13:35', '2021-12-30 11:13:35', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-12-30 14:34:18', '2021-12-30 11:34:18', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 14:34:18', '2021-12-30 11:34:18', '', 2, 'http://timber-house.com/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-12-30 14:37:54', '2021-12-30 11:37:54', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Заглавие', 'main__title', 'publish', 'closed', 'closed', '', 'field_61cd999344c7f', '', '', '2021-12-30 15:48:42', '2021-12-30 12:48:42', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=25', 7, 'acf-field', '', 0),
(26, 1, '2021-12-30 14:37:54', '2021-12-30 11:37:54', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Основной текст', 'main__text', 'publish', 'closed', 'closed', '', 'field_61cd99d144c80', '', '', '2021-12-30 14:38:13', '2021-12-30 11:38:13', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=26', 8, 'acf-field', '', 0),
(27, 1, '2021-12-30 14:50:13', '2021-12-30 11:50:13', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 14:50:13', '2021-12-30 11:50:13', '', 2, 'http://timber-house.com/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-12-30 14:50:30', '2021-12-30 11:50:30', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 14:50:30', '2021-12-30 11:50:30', '', 2, 'http://timber-house.com/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-12-30 15:42:19', '2021-12-30 12:42:19', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 15:42:19', '2021-12-30 12:42:19', '', 2, 'http://timber-house.com/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-12-30 15:45:13', '2021-12-30 12:45:13', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 15:45:13', '2021-12-30 12:45:13', '', 2, 'http://timber-house.com/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-12-30 16:08:42', '2021-12-30 13:08:42', '', 'item-1', '', 'inherit', 'open', 'closed', '', 'item-1', '', '', '2021-12-30 16:08:42', '2021-12-30 13:08:42', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2021-12-30 16:09:24', '2021-12-30 13:09:24', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 16:09:24', '2021-12-30 13:09:24', '', 2, 'http://timber-house.com/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-12-30 16:12:37', '2021-12-30 13:12:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заглавие галереи', 'gallery__title', 'publish', 'closed', 'closed', '', 'field_61cdafe621965', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=33', 15, 'acf-field', '', 0),
(35, 1, '2021-12-30 16:46:54', '2021-12-30 13:46:54', '', 'item-2', '', 'inherit', 'open', 'closed', '', 'item-2', '', '', '2021-12-30 16:46:54', '2021-12-30 13:46:54', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2021-12-30 16:46:56', '2021-12-30 13:46:56', '', 'item-3', '', 'inherit', 'open', 'closed', '', 'item-3', '', '', '2021-12-30 16:46:56', '2021-12-30 13:46:56', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2021-12-30 16:46:59', '2021-12-30 13:46:59', '', 'item-4', '', 'inherit', 'open', 'closed', '', 'item-4', '', '', '2021-12-30 16:46:59', '2021-12-30 13:46:59', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-12-30 16:47:01', '2021-12-30 13:47:01', '', 'item-5', '', 'inherit', 'open', 'closed', '', 'item-5', '', '', '2021-12-30 16:47:01', '2021-12-30 13:47:01', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-12-30 16:47:04', '2021-12-30 13:47:04', '', 'item-6', '', 'inherit', 'open', 'closed', '', 'item-6', '', '', '2021-12-30 16:47:04', '2021-12-30 13:47:04', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-12-30 16:47:06', '2021-12-30 13:47:06', '', 'item-7', '', 'inherit', 'open', 'closed', '', 'item-7', '', '', '2021-12-30 16:47:06', '2021-12-30 13:47:06', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-12-30 16:47:09', '2021-12-30 13:47:09', '', 'item-8', '', 'inherit', 'open', 'closed', '', 'item-8', '', '', '2021-12-30 16:47:09', '2021-12-30 13:47:09', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-12-30 16:47:12', '2021-12-30 13:47:12', '', 'item-9', '', 'inherit', 'open', 'closed', '', 'item-9', '', '', '2021-12-30 16:47:12', '2021-12-30 13:47:12', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-12-30 16:47:14', '2021-12-30 13:47:14', '', 'item-10', '', 'inherit', 'open', 'closed', '', 'item-10', '', '', '2021-12-30 16:47:14', '2021-12-30 13:47:14', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-12-30 16:47:17', '2021-12-30 13:47:17', '', 'item-11', '', 'inherit', 'open', 'closed', '', 'item-11', '', '', '2021-12-30 16:47:17', '2021-12-30 13:47:17', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-12-30 16:47:19', '2021-12-30 13:47:19', '', 'item-12', '', 'inherit', 'open', 'closed', '', 'item-12', '', '', '2021-12-30 16:47:19', '2021-12-30 13:47:19', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-12-30 16:47:22', '2021-12-30 13:47:22', '', 'item-13', '', 'inherit', 'open', 'closed', '', 'item-13', '', '', '2021-12-30 16:47:22', '2021-12-30 13:47:22', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-12-30 16:47:24', '2021-12-30 13:47:24', '', 'item-14', '', 'inherit', 'open', 'closed', '', 'item-14', '', '', '2021-12-30 16:47:24', '2021-12-30 13:47:24', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-12-30 16:47:27', '2021-12-30 13:47:27', '', 'item-15', '', 'inherit', 'open', 'closed', '', 'item-15', '', '', '2021-12-30 16:47:27', '2021-12-30 13:47:27', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-12-30 16:47:29', '2021-12-30 13:47:29', '', 'item-16', '', 'inherit', 'open', 'closed', '', 'item-16', '', '', '2021-12-30 16:47:29', '2021-12-30 13:47:29', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/item-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-12-30 16:52:26', '2021-12-30 13:52:26', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 16:52:26', '2021-12-30 13:52:26', '', 2, 'http://timber-house.com/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-12-30 16:54:50', '2021-12-30 13:54:50', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 16:54:50', '2021-12-30 13:54:50', '', 2, 'http://timber-house.com/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-12-30 17:12:49', '2021-12-30 14:12:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст галереи', 'gallery__text', 'publish', 'closed', 'closed', '', 'field_61cdbe3643f41', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=52', 16, 'acf-field', '', 0),
(53, 1, '2021-12-30 17:17:03', '2021-12-30 14:17:03', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Контакты', 'контактный_email', 'publish', 'closed', 'closed', '', 'field_61cdbf0f9734c', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=53', 18, 'acf-field', '', 0),
(54, 1, '2021-12-30 17:17:03', '2021-12-30 14:17:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"Введите email\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_61cdbf379734d', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=54', 19, 'acf-field', '', 0),
(55, 1, '2021-12-30 17:27:45', '2021-12-30 14:27:45', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 17:27:45', '2021-12-30 14:27:45', '', 2, 'http://timber-house.com/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-12-30 17:35:16', '2021-12-30 14:35:16', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 17:35:16', '2021-12-30 14:35:16', '', 2, 'http://timber-house.com/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-12-30 17:40:02', '2021-12-30 14:40:02', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Галерея', 'gallery', 'publish', 'closed', 'closed', '', 'field_61cdc3e8a051e', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=57', 17, 'acf-field', '', 0),
(58, 1, '2021-12-30 17:41:52', '2021-12-30 14:41:52', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 17:41:52', '2021-12-30 14:41:52', '', 2, 'http://timber-house.com/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-12-30 17:42:44', '2021-12-30 14:42:44', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 17:42:44', '2021-12-30 14:42:44', '', 2, 'http://timber-house.com/?p=59', 0, 'revision', '', 0),
(60, 1, '2021-12-30 18:28:59', '2021-12-30 15:28:59', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Каталог', 'каталог', 'publish', 'closed', 'closed', '', 'field_61cdcf9677fe3', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=60', 12, 'acf-field', '', 0),
(61, 1, '2021-12-30 18:28:59', '2021-12-30 15:28:59', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Выберите файл каталога', 'download__link', 'publish', 'closed', 'closed', '', 'field_61cdcfae77fe4', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=61', 13, 'acf-field', '', 0),
(62, 1, '2021-12-30 18:45:25', '2021-12-30 15:45:25', '', 'project-1', '', 'inherit', 'open', 'closed', '', 'project-1', '', '', '2021-12-30 18:45:25', '2021-12-30 15:45:25', '', 2, 'http://timber-house.com/wp-content/uploads/2021/12/project-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-12-30 18:48:56', '2021-12-30 15:48:56', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 18:48:56', '2021-12-30 15:48:56', '', 2, 'http://timber-house.com/?p=63', 0, 'revision', '', 0),
(66, 1, '2021-12-30 18:58:33', '2021-12-30 15:58:33', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 18:58:33', '2021-12-30 15:58:33', '', 2, 'http://timber-house.com/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-12-30 19:04:03', '2021-12-30 16:04:03', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Проекты домов', 'проекты_домов', 'publish', 'closed', 'closed', '', 'field_61cdd821ee1cf', '', '', '2021-12-30 19:04:36', '2021-12-30 16:04:36', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=67', 9, 'acf-field', '', 0),
(68, 1, '2021-12-30 19:04:03', '2021-12-30 16:04:03', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:29:\"Выберите запись\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:1;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Проект', 'project_item', 'publish', 'closed', 'closed', '', 'field_61cdd838ee1d0', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=68', 11, 'acf-field', '', 0),
(69, 1, '2021-12-30 19:08:19', '2021-12-30 16:08:19', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-30 19:08:19', '2021-12-30 16:08:19', '', 2, 'http://timber-house.com/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-12-30 19:19:39', '2021-12-30 16:19:39', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-12-30 19:19:39', '2021-12-30 16:19:39', '', 1, 'http://timber-house.com/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-12-30 19:21:31', '2021-12-30 16:21:31', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-12-30 19:21:31', '2021-12-30 16:21:31', '', 1, 'http://timber-house.com/?p=71', 0, 'revision', '', 0),
(75, 1, '2021-12-30 19:29:12', '2021-12-30 16:29:12', '', 'ДОМ №2', '', 'publish', 'open', 'open', '', '%d0%b4%d0%be%d0%bc-%e2%84%962-2', '', '', '2022-01-03 14:02:57', '2022-01-03 11:02:57', '', 0, 'http://timber-house.com/?p=75', 0, 'post', '', 0),
(76, 1, '2021-12-30 19:29:12', '2021-12-30 16:29:12', '', 'ДОМ №2', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2021-12-30 19:29:12', '2021-12-30 16:29:12', '', 75, 'http://timber-house.com/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-12-30 19:29:50', '2021-12-30 16:29:50', '', 'ДОМ №3', '', 'publish', 'open', 'open', '', '%d0%b4%d0%be%d0%bc-%e2%84%963', '', '', '2022-01-03 14:03:22', '2022-01-03 11:03:22', '', 0, 'http://timber-house.com/?p=77', 0, 'post', '', 0),
(78, 1, '2021-12-30 19:29:50', '2021-12-30 16:29:50', '', 'ДОМ №3', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2021-12-30 19:29:50', '2021-12-30 16:29:50', '', 77, 'http://timber-house.com/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-01-03 12:03:55', '2022-01-03 09:03:55', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 12:03:55', '2022-01-03 09:03:55', '', 1, 'http://timber-house.com/?p=79', 0, 'revision', '', 0),
(80, 1, '2022-01-03 12:06:59', '2022-01-03 09:06:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Записи', '%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d0%b8', 'publish', 'closed', 'closed', '', 'group_61d2bc89b18f7', '', '', '2022-01-03 14:00:01', '2022-01-03 11:00:01', '', 0, 'http://timber-house.com/?post_type=acf-field-group&#038;p=80', 0, 'acf-field-group', '', 0),
(81, 1, '2022-01-03 12:06:59', '2022-01-03 09:06:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Название проекта', 'project__name', 'publish', 'closed', 'closed', '', 'field_61d2bc9a2d89c', '', '', '2022-01-03 12:45:55', '2022-01-03 09:45:55', '', 80, 'http://timber-house.com/?post_type=acf-field&#038;p=81', 0, 'acf-field', '', 0),
(82, 1, '2022-01-03 12:07:19', '2022-01-03 09:07:19', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-01-03 12:07:19', '2022-01-03 09:07:19', '', 2, 'http://timber-house.com/?p=82', 0, 'revision', '', 0),
(83, 1, '2022-01-03 12:19:00', '2022-01-03 09:19:00', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 12:19:00', '2022-01-03 09:19:00', '', 1, 'http://timber-house.com/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-01-03 12:19:30', '2022-01-03 09:19:30', '', 'ДОМ №2', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-01-03 12:19:30', '2022-01-03 09:19:30', '', 75, 'http://timber-house.com/?p=84', 0, 'revision', '', 0),
(85, 1, '2022-01-03 12:19:58', '2022-01-03 09:19:58', '', 'ДОМ №3', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-01-03 12:19:58', '2022-01-03 09:19:58', '', 77, 'http://timber-house.com/?p=85', 0, 'revision', '', 0),
(86, 1, '2022-01-03 12:52:28', '2022-01-03 09:52:28', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 12:52:28', '2022-01-03 09:52:28', '', 1, 'http://timber-house.com/?p=86', 0, 'revision', '', 0),
(87, 1, '2022-01-03 12:52:46', '2022-01-03 09:52:46', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 12:52:46', '2022-01-03 09:52:46', '', 1, 'http://timber-house.com/?p=87', 0, 'revision', '', 0),
(88, 1, '2022-01-03 12:53:12', '2022-01-03 09:53:12', '', 'ДОМ №2', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-01-03 12:53:12', '2022-01-03 09:53:12', '', 75, 'http://timber-house.com/?p=88', 0, 'revision', '', 0),
(89, 1, '2022-01-03 12:55:14', '2022-01-03 09:55:14', '', 'ДОМ №3', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-01-03 12:55:14', '2022-01-03 09:55:14', '', 77, 'http://timber-house.com/?p=89', 0, 'revision', '', 0),
(90, 1, '2022-01-03 13:06:42', '2022-01-03 10:06:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заглавие', 'project__title', 'publish', 'closed', 'closed', '', 'field_61d2ca9e7e8ab', '', '', '2022-01-03 13:07:07', '2022-01-03 10:07:07', '', 8, 'http://timber-house.com/?post_type=acf-field&#038;p=90', 10, 'acf-field', '', 0),
(91, 1, '2022-01-03 13:08:02', '2022-01-03 10:08:02', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-01-03 13:08:02', '2022-01-03 10:08:02', '', 2, 'http://timber-house.com/?p=91', 0, 'revision', '', 0),
(92, 1, '2022-01-03 13:12:30', '2022-01-03 10:12:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:22:\"Размер дома:\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Размер дома', 'project__size', 'publish', 'closed', 'closed', '', 'field_61d2cbccc42d9', '', '', '2022-01-03 13:13:13', '2022-01-03 10:13:13', '', 80, 'http://timber-house.com/?post_type=acf-field&#038;p=92', 1, 'acf-field', '', 0),
(94, 1, '2022-01-03 13:20:42', '2022-01-03 10:20:42', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 13:20:42', '2022-01-03 10:20:42', '', 1, 'http://timber-house.com/?p=94', 0, 'revision', '', 0),
(96, 1, '2022-01-03 13:23:19', '2022-01-03 10:23:19', '', 'ДОМ №2', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-01-03 13:23:19', '2022-01-03 10:23:19', '', 75, 'http://timber-house.com/?p=96', 0, 'revision', '', 0),
(97, 1, '2022-01-03 13:23:34', '2022-01-03 10:23:34', '', 'ДОМ №3', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-01-03 13:23:34', '2022-01-03 10:23:34', '', 77, 'http://timber-house.com/?p=97', 0, 'revision', '', 0),
(98, 1, '2022-01-03 13:27:47', '2022-01-03 10:27:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:35:\"Общая площадь дома:\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Площадь', 'project__area', 'publish', 'closed', 'closed', '', 'field_61d2cf5ec93ea', '', '', '2022-01-03 13:27:47', '2022-01-03 10:27:47', '', 80, 'http://timber-house.com/?post_type=acf-field&p=98', 2, 'acf-field', '', 0),
(99, 1, '2022-01-03 13:28:27', '2022-01-03 10:28:27', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 13:28:27', '2022-01-03 10:28:27', '', 1, 'http://timber-house.com/?p=99', 0, 'revision', '', 0),
(100, 1, '2022-01-03 13:28:35', '2022-01-03 10:28:35', '', 'ДОМ №2', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-01-03 13:28:35', '2022-01-03 10:28:35', '', 75, 'http://timber-house.com/?p=100', 0, 'revision', '', 0),
(101, 1, '2022-01-03 13:28:48', '2022-01-03 10:28:48', '', 'ДОМ №3', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-01-03 13:28:48', '2022-01-03 10:28:48', '', 77, 'http://timber-house.com/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-01-03 13:29:55', '2022-01-03 10:29:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:20:\"Стоимость -\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Стоимость', 'project__price', 'publish', 'closed', 'closed', '', 'field_61d2cfab3830f', '', '', '2022-01-03 13:29:55', '2022-01-03 10:29:55', '', 80, 'http://timber-house.com/?post_type=acf-field&p=102', 3, 'acf-field', '', 0),
(103, 1, '2022-01-03 13:32:00', '2022-01-03 10:32:00', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 13:32:00', '2022-01-03 10:32:00', '', 1, 'http://timber-house.com/?p=103', 0, 'revision', '', 0),
(104, 1, '2022-01-03 13:32:11', '2022-01-03 10:32:11', '', 'ДОМ №2', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-01-03 13:32:11', '2022-01-03 10:32:11', '', 75, 'http://timber-house.com/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-01-03 13:32:18', '2022-01-03 10:32:18', '', 'ДОМ №3', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-01-03 13:32:18', '2022-01-03 10:32:18', '', 77, 'http://timber-house.com/?p=105', 0, 'revision', '', 0),
(106, 1, '2022-01-03 14:00:01', '2022-01-03 11:00:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото дома', 'project__images-item-1', 'publish', 'closed', 'closed', '', 'field_61d2d68d7a435', '', '', '2022-01-03 14:00:01', '2022-01-03 11:00:01', '', 80, 'http://timber-house.com/?post_type=acf-field&p=106', 4, 'acf-field', '', 0),
(107, 1, '2022-01-03 14:00:01', '2022-01-03 11:00:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение схемы', 'project__images-item-2', 'publish', 'closed', 'closed', '', 'field_61d2d6dc7a436', '', '', '2022-01-03 14:00:01', '2022-01-03 11:00:01', '', 80, 'http://timber-house.com/?post_type=acf-field&p=107', 5, 'acf-field', '', 0),
(108, 1, '2022-01-03 14:02:18', '2022-01-03 11:02:18', '', 'project-2', '', 'inherit', 'open', 'closed', '', 'project-2', '', '', '2022-01-03 14:02:18', '2022-01-03 11:02:18', '', 1, 'http://timber-house.com/wp-content/uploads/2021/12/project-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2022-01-03 14:02:33', '2022-01-03 11:02:33', '', 'ДОМ №1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-01-03 14:02:33', '2022-01-03 11:02:33', '', 1, 'http://timber-house.com/?p=109', 0, 'revision', '', 0),
(110, 1, '2022-01-03 14:02:57', '2022-01-03 11:02:57', '', 'ДОМ №2', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-01-03 14:02:57', '2022-01-03 11:02:57', '', 75, 'http://timber-house.com/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-01-03 14:03:22', '2022-01-03 11:03:22', '', 'ДОМ №3', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-01-03 14:03:22', '2022-01-03 11:03:22', '', 77, 'http://timber-house.com/?p=111', 0, 'revision', '', 0),
(112, 1, '2022-01-03 14:08:07', '2022-01-03 11:08:07', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-01-03 14:08:07', '2022-01-03 11:08:07', '', 2, 'http://timber-house.com/?p=112', 0, 'revision', '', 0),
(114, 1, '2024-08-15 17:33:20', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-08-15 17:33:20', '0000-00-00 00:00:00', '', 0, 'http://timber-house.com/?p=114', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(75, 1, 0),
(77, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Ilya'),
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
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a2b0e7e839155c0a3993f82b5a7caa2171583fb1ad69f179643ae52db61fa701\";a:4:{s:10:\"expiration\";i:1723905174;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36\";s:5:\"login\";i:1723732374;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '114'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:0:{}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&ampampmfold=o'),
(22, 1, 'wp_user-settings-time', '1641200034'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:0:{}'),
(25, 1, 'closedpostboxes_dashboard', 'a:6:{i:0;s:12:\"wp_dark_mode\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Ilya', '$P$BFdg36Va8imUTx.DYVtHBlQiSOEDmw/', 'ilya', 'i.bashlyaev@gmail.com', 'http://timber-house.com', '2021-12-30 08:20:45', '', 0, 'Ilya');

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
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=715;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
