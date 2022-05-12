-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2021 at 08:45 AM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koselikhabar`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp.koselikhabar.com', 'yes'),
(2, 'home', 'http://wp.koselikhabar.com', 'yes'),
(3, 'blogname', 'Koseli khabar', 'yes'),
(4, 'blogdescription', 'News Koseli khabar', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nepalesebros@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:135:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"video/?$\";s:26:\"index.php?post_type=videos\";s:38:\"video/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=videos&feed=$matches[1]\";s:33:\"video/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=videos&feed=$matches[1]\";s:25:\"video/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=videos&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"advanced_ads/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"advanced_ads/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"advanced_ads/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"advanced_ads/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"advanced_ads/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"advanced_ads/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"advanced_ads/([^/]+)/embed/?$\";s:60:\"index.php?post_type=advanced_ads&name=$matches[1]&embed=true\";s:33:\"advanced_ads/([^/]+)/trackback/?$\";s:54:\"index.php?post_type=advanced_ads&name=$matches[1]&tb=1\";s:41:\"advanced_ads/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?post_type=advanced_ads&name=$matches[1]&paged=$matches[2]\";s:48:\"advanced_ads/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?post_type=advanced_ads&name=$matches[1]&cpage=$matches[2]\";s:37:\"advanced_ads/([^/]+)(?:/([0-9]+))?/?$\";s:66:\"index.php?post_type=advanced_ads&name=$matches[1]&page=$matches[2]\";s:29:\"advanced_ads/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"advanced_ads/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"advanced_ads/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"advanced_ads/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"advanced_ads/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"advanced_ads/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"video/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"video/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"video/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"video/([^/]+)/embed/?$\";s:39:\"index.php?videos=$matches[1]&embed=true\";s:26:\"video/([^/]+)/trackback/?$\";s:33:\"index.php?videos=$matches[1]&tb=1\";s:46:\"video/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?videos=$matches[1]&feed=$matches[2]\";s:41:\"video/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?videos=$matches[1]&feed=$matches[2]\";s:34:\"video/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&paged=$matches[2]\";s:41:\"video/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&cpage=$matches[2]\";s:30:\"video/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?videos=$matches[1]&page=$matches[2]\";s:22:\"video/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"video/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"video/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$\";s:75:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:69:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1\";s:64:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:52:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]\";s:48:\"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]\";s:36:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:29:\"advanced-ads/advanced-ads.php\";i:1;s:39:\"awesomely_popular/awesomely_popular.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:47:\"nepali-date-utilities/nepali-date-utilities.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:83:\"/home/http://wp.koselikhabar.com/wp-content/themes/koselikhabar-v1/single.php\";i:2;s:82:\"/home/http://wp.koselikhabar.com/wp-content/themes/koselikhabar-v1/style.css\";i:3;s:83:\"/home/http://wp.koselikhabar.com/wp-content/themes/koselikhabar-v1/footer.php\";i:4;s:108:\"/home/http://wp.koselikhabar.com/wp-content/themes/koselikhabar-v1/template-part/content-desh-news.php\";i:5;s:107:\"/home/http://wp.koselikhabar.com/wp-content/themes/koselikhabar-v1/template-part/content-sulsuley.php\";}', 'no'),
(40, 'template', 'koselikhabar-v1', 'yes'),
(41, 'stylesheet', 'koselikhabar-v1', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:29:\"advanced-ads/advanced-ads.php\";a:2:{i:0;s:19:\"Advanced_Ads_Plugin\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '6', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1621586749', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:27:\"advanced_ads_manage_options\";b:1;s:26:\"advanced_ads_see_interface\";b:1;s:21:\"advanced_ads_edit_ads\";b:1;s:30:\"advanced_ads_manage_placements\";b:1;s:22:\"advanced_ads_place_ads\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1613889960;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613897158;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613897160;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613897170;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613897173;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613983559;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1613857924;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608127611;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(143, 'finished_updating_comment_type', '1', 'yes'),
(144, 'current_theme', 'Koseli khabar v1', 'yes'),
(145, 'theme_mods_koselikhabar', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:14:\"themeslug_logo\";s:62:\"http://wp.koselikhabar.com/wp-content/uploads/2020/11/logo.png\";s:7:\"fb_link\";s:35:\"https://www.facebook.com/koselikhabar/\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608127600;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(149, 'recovery_mode_email_last_sent', '1608292392', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(158, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":11,\"critical\":0}', 'yes'),
(174, 'theme_mods_koselikhabar-v1', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:14:\"themeslug_logo\";s:71:\"http://wp.koselikhabar.com/wp-content/uploads/2020/12/mainlogo.png\";s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:11:\"footer-menu\";i:36;}s:12:\"contact_mail\";s:24:\"aayurtshrestha@gmail.com\";}', 'yes'),
(176, 'theme_mods_eggnews', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:10;s:21:\"eggnews_ticker_option\";s:7:\"disable\";s:21:\"eggnews_sticky_option\";s:6:\"enable\";s:24:\"eggnews_google_ad_option\";s:7:\"disable\";s:18:\"site_layout_option\";s:16:\"fullwidth_layout\";s:16:\"header_textcolor\";s:6:\"dd7d33\";s:19:\"eggnews_theme_color\";s:7:\"#f75e40\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1607779341;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:20:\"eggnews_left_sidebar\";a:0:{}s:23:\"eggnews_header_ads_area\";a:0:{}s:24:\"eggnews_home_slider_area\";a:0:{}s:25:\"eggnews_home_content_area\";a:0:{}s:20:\"eggnews_home_sidebar\";a:0:{}s:18:\"eggnews_footer_one\";a:0:{}s:18:\"eggnews_footer_two\";a:0:{}s:20:\"eggnews_footer_three\";a:0:{}s:19:\"eggnews_footer_four\";a:0:{}}}}', 'yes'),
(177, 'widget_eggnews_featured_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'widget_eggnews_post_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'widget_eggnews_block_grid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'widget_eggnews_block_column', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(181, 'widget_eggnews_block_layout', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'widget_eggnews_posts_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'widget_eggnews_block_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(184, 'widget_eggnews_breaking_news', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(185, 'eggnews_admin_notice_welcome', '1', 'yes'),
(258, 'theme_mods_koselikhabar-old', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608204307;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(286, 'recently_activated', 'a:0:{}', 'yes'),
(287, 'widget_ndu_today_date_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'ndu_date_format', 'y m d', 'yes'),
(289, 'ndu_today_date_format', 'd m y  l', 'yes'),
(290, 'ndu_date_format_for_home', '0', 'yes'),
(291, 'ndu_convert_post_date', '1', 'yes'),
(333, 'advanced-ads-ad-health-notices', 'a:1:{s:6:\"ignore\";a:0:{}}', 'yes'),
(334, 'widget_advads_ad_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(335, 'advanced-ads-internal', 'a:2:{s:7:\"version\";s:6:\"1.22.2\";s:9:\"installed\";i:1608367128;}', 'yes'),
(336, 'GADSENSE_OPT_NAME', 'a:2:{s:10:\"adsense-id\";s:0:\"\";s:14:\"limit-per-page\";b:0;}', 'yes'),
(337, 'advanced-ads-notices', 'a:3:{s:5:\"queue\";a:2:{i:0;s:8:\"nl_intro\";i:1;s:6:\"review\";}s:6:\"closed\";a:2:{s:15:\"license_invalid\";i:1608367158;s:14:\"nl_free_addons\";i:1608369545;}s:6:\"paused\";a:0:{}}', 'yes'),
(345, 'advads-ad-groups', 'a:9:{i:3;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";s:1:\"1\";s:7:\"options\";a:0:{}}i:4;a:3:{s:4:\"type\";s:7:\"ordered\";s:8:\"ad_count\";s:1:\"3\";s:7:\"options\";a:0:{}}i:5;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";i:1;s:7:\"options\";a:0:{}}i:6;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";i:1;s:7:\"options\";a:0:{}}i:7;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";s:1:\"1\";s:7:\"options\";a:0:{}}i:8;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";s:1:\"4\";s:7:\"options\";a:0:{}}i:33;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";s:1:\"4\";s:7:\"options\";a:0:{}}i:34;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";s:1:\"4\";s:7:\"options\";a:0:{}}i:35;a:3:{s:4:\"type\";s:7:\"default\";s:8:\"ad_count\";s:1:\"4\";s:7:\"options\";a:0:{}}}', 'yes'),
(346, 'advads-ad-weights', 'a:8:{i:3;a:2:{i:72;i:10;i:69;i:10;}i:4;a:3:{i:80;i:10;i:81;i:9;i:82;i:8;}i:6;a:1:{i:90;i:10;}i:7;a:2:{i:74;i:10;i:69;i:10;}i:8;a:2:{i:101;i:10;i:100;i:10;}i:34;a:1:{i:153;i:10;}i:33;a:2:{i:153;i:10;i:151;i:10;}i:35;a:1:{i:151;i:10;}}', 'yes'),
(354, 'advads-ads-placements', 'a:5:{s:14:\"before-content\";a:3:{s:4:\"type\";s:8:\"post_top\";s:4:\"name\";s:14:\"Before Content\";s:4:\"item\";s:5:\"ad_89\";}s:7:\"content\";a:5:{s:4:\"type\";s:12:\"post_content\";s:4:\"name\";s:7:\"Content\";s:4:\"item\";s:5:\"ad_84\";s:7:\"options\";a:3:{s:8:\"position\";s:5:\"after\";s:5:\"index\";i:2;s:3:\"tag\";s:1:\"p\";}s:3:\"key\";s:7:\"content\";}s:9:\"content_2\";a:4:{s:4:\"type\";s:12:\"post_content\";s:4:\"name\";s:9:\"Content 2\";s:4:\"item\";s:5:\"ad_79\";s:7:\"options\";a:3:{s:8:\"position\";s:5:\"after\";s:5:\"index\";i:2;s:3:\"tag\";s:1:\"p\";}}s:16:\"manual-placement\";a:3:{s:4:\"type\";s:7:\"default\";s:4:\"name\";s:16:\"Manual Placement\";s:4:\"item\";s:5:\"ad_92\";}s:18:\"manual-placement_2\";a:3:{s:4:\"type\";s:7:\"default\";s:4:\"name\";s:18:\"Manual Placement 2\";s:4:\"item\";s:5:\"ad_94\";}}', 'yes'),
(730, 'category_children', 'a:2:{i:9;a:7:{i:0;i:10;i:1;i:11;i:2;i:12;i:3;i:13;i:4;i:14;i:5;i:15;i:6;i:16;}i:22;a:6:{i:0;i:23;i:1;i:24;i:2;i:25;i:3;i:26;i:4;i:27;i:5;i:28;}}', 'yes'),
(872, 'advanced_ads_groups_children', 'a:0:{}', 'yes'),
(1512, '_site_transient_timeout_php_check_f7e083f23bf266211f41ff4954b2db95', '1613984086', 'no'),
(1513, '_site_transient_php_check_f7e083f23bf266211f41ff4954b2db95', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1622, '_site_transient_timeout_theme_roots', '1613859725', 'no'),
(1623, '_site_transient_theme_roots', 'a:5:{s:13:\"koselikhabar-old\";s:7:\"/themes\";s:12:\"koselikhabar-v1\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1624, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613857926;s:7:\"checked\";a:5:{s:13:\"koselikhabar-old\";s:3:\"1.0\";s:12:\"koselikhabar-v1\";s:4:\"1.01\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1625, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613857926;s:7:\"checked\";a:6:{s:29:\"advanced-ads/advanced-ads.php\";s:6:\"1.22.2\";s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:39:\"awesomely_popular/awesomely_popular.php\";s:3:\"1.0\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"nepali-date-utilities/nepali-date-utilities.php\";s:6:\"1.0.10\";}s:8:\"response\";a:2:{s:29:\"advanced-ads/advanced-ads.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/advanced-ads\";s:4:\"slug\";s:12:\"advanced-ads\";s:6:\"plugin\";s:29:\"advanced-ads/advanced-ads.php\";s:11:\"new_version\";s:6:\"1.23.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/advanced-ads/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/advanced-ads.1.23.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/advanced-ads/assets/icon-256x256.gif?rev=2293174\";s:2:\"1x\";s:65:\"https://ps.w.org/advanced-ads/assets/icon-128x128.gif?rev=2293174\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/advanced-ads/assets/banner-1544x500.jpg?rev=2352935\";s:2:\"1x\";s:67:\"https://ps.w.org/advanced-ads/assets/banner-772x250.jpg?rev=2352935\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"nepali-date-utilities/nepali-date-utilities.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/nepali-date-utilities\";s:4:\"slug\";s:21:\"nepali-date-utilities\";s:6:\"plugin\";s:47:\"nepali-date-utilities/nepali-date-utilities.php\";s:11:\"new_version\";s:6:\"1.0.10\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/nepali-date-utilities/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/nepali-date-utilities.1.0.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/nepali-date-utilities/assets/icon-256x256.png?rev=1973906\";s:2:\"1x\";s:74:\"https://ps.w.org/nepali-date-utilities/assets/icon-256x256.png?rev=1973906\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_attached_file', '2020/11/fav-icon.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:20:\"2020/11/fav-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 10, '_wp_attached_file', '2020/11/logo.png'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:262;s:6:\"height\";i:70;s:4:\"file\";s:16:\"2020/11/logo.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-250x67.png\";s:5:\"width\";i:250;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:15:\"logo-120x32.png\";s:5:\"width\";i:120;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 22, '_wp_attached_file', '2020/12/mainlogo.png'),
(56, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:187;s:6:\"height\";i:97;s:4:\"file\";s:20:\"2020/12/mainlogo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"mainlogo-150x97.png\";s:5:\"width\";i:150;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:19:\"mainlogo-120x62.png\";s:5:\"width\";i:120;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 27, '_menu_item_type', 'custom'),
(66, 27, '_menu_item_menu_item_parent', '0'),
(67, 27, '_menu_item_object_id', '27'),
(68, 27, '_menu_item_object', 'custom'),
(69, 27, '_menu_item_target', ''),
(70, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 27, '_menu_item_xfn', ''),
(72, 27, '_menu_item_url', 'http://wp.koselikhabar.com'),
(78, 46, '_wp_attached_file', '2020/12/flex.jpg'),
(79, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2020/12/flex.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"flex-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"flex-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"flex-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"flex-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"flex-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:16:\"flex-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(80, 46, '_wp_attachment_image_alt', 'Flex'),
(81, 45, '_edit_last', '1'),
(82, 45, '_thumbnail_id', '46'),
(84, 45, '_edit_lock', '1608295003:1'),
(85, 47, '_edit_last', '1'),
(86, 47, '_youtubelink', 'https://www.youtube.com/embed/fgCioGrfsyA'),
(87, 47, '_edit_lock', '1608375886:1'),
(88, 48, '_edit_last', '1'),
(89, 48, '_edit_lock', '1609685499:1'),
(90, 49, '_wp_attached_file', '2020/12/Madhav-Kumar-Nepal.jpg'),
(91, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:564;s:4:\"file\";s:30:\"2020/12/Madhav-Kumar-Nepal.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Madhav-Kumar-Nepal-250x157.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Madhav-Kumar-Nepal-700x439.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Madhav-Kumar-Nepal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Madhav-Kumar-Nepal-768x481.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:481;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:29:\"Madhav-Kumar-Nepal-120x75.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:30:\"Madhav-Kumar-Nepal-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 48, '_thumbnail_id', '49'),
(93, 50, '_edit_last', '1'),
(94, 50, '_edit_lock', '1609685468:1'),
(95, 51, '_wp_attached_file', '2020/12/Congress-samsadiya-dal.jpg'),
(96, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:890;s:6:\"height\";i:546;s:4:\"file\";s:34:\"2020/12/Congress-samsadiya-dal.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Congress-samsadiya-dal-250x153.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Congress-samsadiya-dal-700x429.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:429;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Congress-samsadiya-dal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Congress-samsadiya-dal-768x471.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:33:\"Congress-samsadiya-dal-120x74.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:34:\"Congress-samsadiya-dal-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 50, '_thumbnail_id', '51'),
(98, 53, '_wp_attached_file', '2020/12/jhalanath-khanal.jpg'),
(99, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:890;s:6:\"height\";i:540;s:4:\"file\";s:28:\"2020/12/jhalanath-khanal.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"jhalanath-khanal-250x152.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"jhalanath-khanal-700x425.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"jhalanath-khanal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"jhalanath-khanal-768x466.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:27:\"jhalanath-khanal-120x73.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:73;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:28:\"jhalanath-khanal-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 52, '_edit_last', '1'),
(101, 52, '_thumbnail_id', '53'),
(102, 52, '_edit_lock', '1609685435:1'),
(103, 55, '_wp_attached_file', '2020/12/yogesh-bhattrai.jpg'),
(104, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1230;s:6:\"height\";i:820;s:4:\"file\";s:27:\"2020/12/yogesh-bhattrai.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"yogesh-bhattrai-250x167.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"yogesh-bhattrai-700x467.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"yogesh-bhattrai-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"yogesh-bhattrai-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:26:\"yogesh-bhattrai-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:27:\"yogesh-bhattrai-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"yogesh-bhattrai-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1577714717\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"90\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 54, '_edit_last', '1'),
(106, 54, '_thumbnail_id', '55'),
(107, 54, '_edit_lock', '1609685407:1'),
(108, 57, '_wp_attached_file', '2020/12/Corona-Test-3.jpg'),
(109, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:550;s:4:\"file\";s:25:\"2020/12/Corona-Test-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Corona-Test-3-250x153.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Corona-Test-3-700x428.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:428;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Corona-Test-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Corona-Test-3-768x469.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:469;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"Corona-Test-3-120x73.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:73;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"Corona-Test-3-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 56, '_edit_last', '1'),
(111, 56, '_thumbnail_id', '57'),
(112, 56, '_edit_lock', '1609685374:1'),
(113, 58, '_edit_last', '1'),
(114, 58, '_edit_lock', '1608364596:1'),
(115, 59, '_wp_attached_file', '2020/12/Paras-Khadka.jpg'),
(116, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:890;s:6:\"height\";i:577;s:4:\"file\";s:24:\"2020/12/Paras-Khadka.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Paras-Khadka-250x162.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Paras-Khadka-700x454.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:454;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Paras-Khadka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Paras-Khadka-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"Paras-Khadka-120x78.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:24:\"Paras-Khadka-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 58, '_thumbnail_id', '59'),
(119, 61, '_wp_attached_file', '2020/12/flim-store500.jpg'),
(120, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1230;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2020/12/flim-store500.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"flim-store500-250x102.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"flim-store500-700x285.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"flim-store500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"flim-store500-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"flim-store500-120x49.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:49;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"flim-store500-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"flim-store500-1200x488.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(121, 60, '_edit_last', '1'),
(122, 60, '_thumbnail_id', '61'),
(124, 60, '_edit_lock', '1608364656:1'),
(125, 63, '_wp_attached_file', '2020/12/Accident.jpg'),
(126, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:456;s:4:\"file\";s:20:\"2020/12/Accident.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Accident-250x141.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Accident-700x394.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Accident-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Accident-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:19:\"Accident-120x68.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:20:\"Accident-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 62, '_edit_last', '1'),
(128, 62, '_thumbnail_id', '63'),
(130, 62, '_edit_lock', '1608364704:1'),
(131, 65, '_wp_attached_file', '2020/12/Mahalaxmi-Sugers-Pvt-Ltd.jpg'),
(132, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1230;s:6:\"height\";i:427;s:4:\"file\";s:36:\"2020/12/Mahalaxmi-Sugers-Pvt-Ltd.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Mahalaxmi-Sugers-Pvt-Ltd-250x87.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"Mahalaxmi-Sugers-Pvt-Ltd-700x243.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Mahalaxmi-Sugers-Pvt-Ltd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"Mahalaxmi-Sugers-Pvt-Ltd-768x267.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:35:\"Mahalaxmi-Sugers-Pvt-Ltd-120x42.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:42;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:36:\"Mahalaxmi-Sugers-Pvt-Ltd-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:37:\"Mahalaxmi-Sugers-Pvt-Ltd-1200x417.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 64, '_edit_last', '1'),
(134, 64, '_thumbnail_id', '65'),
(136, 64, '_edit_lock', '1608383210:1'),
(140, 70, '_wp_attached_file', '2020/12/89-800x100-1.jpg'),
(141, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2020/12/89-800x100-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"89-800x100-1-250x31.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"89-800x100-1-700x88.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"89-800x100-1-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"89-800x100-1-768x96.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"89-800x100-1-120x15.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:15;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:24:\"89-800x100-1-700x100.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(142, 69, '_edit_last', '1'),
(143, 69, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"70\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:0:\"\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:27:\"http://wp.koselikhabar.com/\";s:5:\"width\";i:800;s:6:\"height\";i:100;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(144, 69, '_edit_lock', '1608372401:1'),
(154, 73, '_wp_attached_file', '2020/12/39-800x100-1.jpg'),
(155, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2020/12/39-800x100-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"39-800x100-1-250x31.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"39-800x100-1-700x88.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"39-800x100-1-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"39-800x100-1-768x96.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"39-800x100-1-120x15.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:15;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:24:\"39-800x100-1-700x100.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(156, 72, '_edit_last', '1'),
(157, 72, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"73\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:0:\"\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:5:\"width\";i:800;s:6:\"height\";i:100;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(158, 72, '_edit_lock', '1608375586:1'),
(159, 75, '_wp_attached_file', '2020/12/1230X100-min_1-OK.gif'),
(160, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1230;s:6:\"height\";i:100;s:4:\"file\";s:29:\"2020/12/1230X100-min_1-OK.gif\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"1230X100-min_1-OK-250x20.gif\";s:5:\"width\";i:250;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"1230X100-min_1-OK-700x57.gif\";s:5:\"width\";i:700;s:6:\"height\";i:57;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"1230X100-min_1-OK-150x100.gif\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"1230X100-min_1-OK-768x62.gif\";s:5:\"width\";i:768;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"small\";a:4:{s:4:\"file\";s:28:\"1230X100-min_1-OK-120x10.gif\";s:5:\"width\";i:120;s:6:\"height\";i:10;s:9:\"mime-type\";s:9:\"image/gif\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:29:\"1230X100-min_1-OK-700x100.gif\";s:5:\"width\";i:700;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"1230X100-min_1-OK-1200x98.gif\";s:5:\"width\";i:1200;s:6:\"height\";i:98;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 74, '_edit_last', '1'),
(162, 74, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"75\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:0:\"\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:1230;s:6:\"height\";i:100;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(163, 74, '_edit_lock', '1608372916:1'),
(164, 77, '_wp_attached_file', '2020/12/dwtss1.gif'),
(165, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2020/12/dwtss1.gif\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"dwtss1-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"dwtss1-120x120.gif\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/gif\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:18:\"dwtss1-250x200.gif\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 78, '_wp_attached_file', '2020/12/250X250-min.gif'),
(167, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2020/12/250X250-min.gif\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"250X250-min-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"250X250-min-120x120.gif\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/gif\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:23:\"250X250-min-250x200.gif\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 79, '_edit_last', '1'),
(172, 79, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"group_id\";s:1:\"4\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:20:\"between_post_ad_list\";}s:4:\"type\";s:5:\"group\";s:3:\"url\";i:0;s:5:\"width\";i:0;s:6:\"height\";i:0;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(173, 79, '_edit_lock', '1608372537:1'),
(174, 80, '_edit_last', '1'),
(175, 80, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"77\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:7:\"post_ad\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(176, 80, '_edit_lock', '1608370376:1'),
(180, 81, '_edit_last', '1'),
(181, 81, '_edit_lock', '1608370406:1'),
(182, 81, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"78\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:1:\"0\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"0\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:7:\"post_ad\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(183, 83, '_wp_attached_file', '2020/12/2_11.gif'),
(184, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:16:\"2020/12/2_11.gif\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"2_11-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"2_11-120x120.gif\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/gif\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:16:\"2_11-250x200.gif\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 82, '_edit_last', '1'),
(186, 82, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"83\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"0\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:7:\"post_ad\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(187, 82, '_edit_lock', '1608373663:1'),
(199, 89, '_edit_last', '1'),
(200, 89, '_edit_lock', '1608371694:1'),
(201, 89, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"group_id\";s:1:\"6\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:21:\"single_news_detail_ad\";}s:4:\"type\";s:5:\"group\";s:3:\"url\";i:0;s:5:\"width\";i:0;s:6:\"height\";i:0;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(202, 91, '_wp_attached_file', '2020/12/1074-800x100-1.jpg'),
(203, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2020/12/1074-800x100-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"1074-800x100-1-250x31.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"1074-800x100-1-700x88.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"1074-800x100-1-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"1074-800x100-1-768x96.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"1074-800x100-1-120x15.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:15;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:26:\"1074-800x100-1-700x100.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(204, 90, '_edit_last', '1'),
(205, 90, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"91\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:0:\"\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:800;s:6:\"height\";i:100;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(206, 90, '_edit_lock', '1608371979:1'),
(215, 94, '_edit_last', '1'),
(216, 94, '_edit_lock', '1608372756:1'),
(217, 94, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"group_id\";s:1:\"7\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:15:\"below-header-ad\";}s:4:\"type\";s:5:\"group\";s:3:\"url\";i:0;s:5:\"width\";i:0;s:6:\"height\";i:0;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(221, 73, '_edit_lock', '1608373704:1'),
(228, 98, '_wp_attached_file', '2020/12/483-200x100-1.jpg'),
(229, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:100;s:4:\"file\";s:25:\"2020/12/483-200x100-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"483-200x100-1-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"483-200x100-1-120x60.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(248, 100, '_edit_last', '1'),
(249, 100, '_edit_lock', '1608376769:1'),
(250, 100, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"98\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:8:\"ad_lists\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:200;s:6:\"height\";i:100;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(251, 101, '_edit_last', '1'),
(252, 101, '_edit_lock', '1608377009:1'),
(253, 101, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:2:\"59\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:8:\"ad_lists\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(256, 103, '_edit_last', '1'),
(257, 103, '_edit_lock', '1608562318:1'),
(258, 103, '_youtubelink', 'https://www.youtube.com/embed/6RnDbBPvsnU'),
(259, 103, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(260, 104, '_wp_attached_file', '2020/12/aakash-and-samikchya.jpg'),
(261, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:428;s:4:\"file\";s:32:\"2020/12/aakash-and-samikchya.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"aakash-and-samikchya-250x119.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"aakash-and-samikchya-700x333.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"aakash-and-samikchya-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"aakash-and-samikchya-768x365.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:31:\"aakash-and-samikchya-120x57.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:57;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:32:\"aakash-and-samikchya-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(262, 105, '_wp_attached_file', '2020/12/ma-jun.jpg'),
(263, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:446;s:4:\"file\";s:18:\"2020/12/ma-jun.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"ma-jun-250x124.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"ma-jun-700x347.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ma-jun-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"ma-jun-768x381.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:381;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:17:\"ma-jun-120x59.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:59;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:18:\"ma-jun-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(264, 103, '_thumbnail_id', '104'),
(265, 106, '_edit_last', '1'),
(266, 106, '_edit_lock', '1608714359:1'),
(267, 106, '_thumbnail_id', '116'),
(268, 106, '_youtubelink', 'https://www.youtube.com/embed/xGF2KCOOnk8'),
(269, 106, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(270, 107, '_edit_last', '1'),
(271, 107, '_edit_lock', '1608562486:1'),
(272, 108, '_wp_attached_file', '2020/12/NOC.gif'),
(273, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2020/12/NOC.gif\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"NOC-250x167.gif\";s:5:\"width\";i:250;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"NOC-700x467.gif\";s:5:\"width\";i:700;s:6:\"height\";i:467;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"NOC-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"NOC-768x512.gif\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"small\";a:4:{s:4:\"file\";s:14:\"NOC-120x80.gif\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/gif\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:15:\"NOC-700x200.gif\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 109, '_wp_attached_file', '2020/12/Cricket-Association-of-Nepal-CAN.jpg'),
(275, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:44:\"2020/12/Cricket-Association-of-Nepal-CAN.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Cricket-Association-of-Nepal-CAN-250x167.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Cricket-Association-of-Nepal-CAN-700x467.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Cricket-Association-of-Nepal-CAN-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Cricket-Association-of-Nepal-CAN-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:43:\"Cricket-Association-of-Nepal-CAN-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:44:\"Cricket-Association-of-Nepal-CAN-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 107, '_thumbnail_id', '108'),
(278, 107, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(279, 110, '_edit_last', '1'),
(280, 110, '_edit_lock', '1608562572:1'),
(281, 110, '_thumbnail_id', '109'),
(283, 110, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(322, 116, '_wp_attached_file', '2020/12/ma-jun-1.jpg'),
(323, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:446;s:4:\"file\";s:20:\"2020/12/ma-jun-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ma-jun-1-250x124.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"ma-jun-1-700x347.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ma-jun-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"ma-jun-1-768x381.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:381;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:19:\"ma-jun-1-120x59.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:59;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:20:\"ma-jun-1-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(325, 120, '_edit_last', '1'),
(326, 120, '_edit_lock', '1609944127:1'),
(327, 120, '_thumbnail_id', '57'),
(330, 120, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(332, 122, '_edit_last', '1'),
(333, 122, '_edit_lock', '1609685415:1'),
(334, 122, '_thumbnail_id', '55'),
(337, 122, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(339, 125, '_edit_last', '1'),
(340, 125, '_thumbnail_id', '53'),
(343, 125, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(345, 125, '_edit_lock', '1609685441:1'),
(346, 127, '_edit_last', '1'),
(347, 127, '_edit_lock', '1609685470:1'),
(348, 127, '_thumbnail_id', '51'),
(351, 127, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(353, 129, '_edit_last', '1'),
(354, 129, '_edit_lock', '1609685513:1'),
(355, 129, '_thumbnail_id', '49'),
(358, 129, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(360, 132, '_edit_last', '1'),
(361, 132, '_edit_lock', '1609944303:1'),
(362, 133, '_wp_attached_file', '2021/01/tulsi-plant-1564795386-1564896914.jpg'),
(363, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:506;s:4:\"file\";s:45:\"2021/01/tulsi-plant-1564795386-1564896914.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"tulsi-plant-1564795386-1564896914-250x141.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"tulsi-plant-1564795386-1564896914-700x394.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"tulsi-plant-1564795386-1564896914-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"tulsi-plant-1564795386-1564896914-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"tulsi-plant-1564795386-1564896914-120x67.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:45:\"tulsi-plant-1564795386-1564896914-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(364, 132, '_thumbnail_id', '133'),
(367, 132, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(369, 136, '_wp_attached_file', '2021/01/1_aSLIDE_rsz_shutterstock_32.jpg'),
(370, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:584;s:4:\"file\";s:40:\"2021/01/1_aSLIDE_rsz_shutterstock_32.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"1_aSLIDE_rsz_shutterstock_32-250x162.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"1_aSLIDE_rsz_shutterstock_32-700x454.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:454;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"1_aSLIDE_rsz_shutterstock_32-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"1_aSLIDE_rsz_shutterstock_32-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:39:\"1_aSLIDE_rsz_shutterstock_32-120x78.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:40:\"1_aSLIDE_rsz_shutterstock_32-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(371, 135, '_edit_last', '1'),
(372, 135, '_thumbnail_id', '136'),
(375, 135, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(377, 135, '_edit_lock', '1609686165:1'),
(381, 138, '_menu_item_type', 'taxonomy'),
(382, 138, '_menu_item_menu_item_parent', '0'),
(383, 138, '_menu_item_object_id', '19'),
(384, 138, '_menu_item_object', 'category'),
(385, 138, '_menu_item_target', ''),
(386, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 138, '_menu_item_xfn', ''),
(388, 138, '_menu_item_url', ''),
(390, 139, '_edit_last', '1'),
(391, 139, '_edit_lock', '1609686280:1'),
(392, 139, '_thumbnail_id', '109'),
(395, 139, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(397, 141, '_menu_item_type', 'taxonomy'),
(398, 141, '_menu_item_menu_item_parent', '0'),
(399, 141, '_menu_item_object_id', '20'),
(400, 141, '_menu_item_object', 'category'),
(401, 141, '_menu_item_target', ''),
(402, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(403, 141, '_menu_item_xfn', ''),
(404, 141, '_menu_item_url', ''),
(410, 144, '_wp_attached_file', '2021/01/pooja-paul-barsha-puspa.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(411, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:35:\"2021/01/pooja-paul-barsha-puspa.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"pooja-paul-barsha-puspa-250x167.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"pooja-paul-barsha-puspa-700x467.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"pooja-paul-barsha-puspa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"pooja-paul-barsha-puspa-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:34:\"pooja-paul-barsha-puspa-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:35:\"pooja-paul-barsha-puspa-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1517252951\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"2500\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(412, 143, '_edit_last', '1'),
(413, 143, '_thumbnail_id', '144'),
(416, 143, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(418, 143, '_edit_lock', '1609944279:1'),
(419, 146, '_menu_item_type', 'taxonomy'),
(420, 146, '_menu_item_menu_item_parent', '0'),
(421, 146, '_menu_item_object_id', '21'),
(422, 146, '_menu_item_object', 'category'),
(423, 146, '_menu_item_target', ''),
(424, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(425, 146, '_menu_item_xfn', ''),
(426, 146, '_menu_item_url', ''),
(428, 129, 'awepop_views', '8'),
(429, 132, 'awepop_views', '5'),
(430, 125, 'awepop_views', '9'),
(431, 135, 'awepop_views', '5'),
(436, 150, '_edit_last', '1'),
(437, 150, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"group_id\";s:2:\"33\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:0:\"\";}s:4:\"type\";s:5:\"group\";s:3:\"url\";i:0;s:5:\"width\";i:0;s:6:\"height\";i:0;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(438, 150, '_edit_lock', '1609943579:1'),
(439, 151, '_edit_lock', '1609944076:1'),
(440, 151, '_edit_last', '1'),
(441, 151, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:3:\"133\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:18:\"home_page_side_ads\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:900;s:6:\"height\";i:506;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(442, 152, '_edit_lock', '1609943695:1'),
(443, 152, '_edit_last', '1'),
(444, 152, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"group_id\";s:2:\"34\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:0:\"\";}s:4:\"type\";s:5:\"group\";s:3:\"url\";i:0;s:5:\"width\";i:0;s:6:\"height\";i:0;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(445, 153, '_edit_lock', '1609944374:1'),
(446, 153, '_edit_last', '1'),
(447, 153, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"image_id\";s:3:\"133\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:18:\"home_page_side_ads\";}s:4:\"type\";s:5:\"image\";s:3:\"url\";s:0:\"\";s:5:\"width\";i:900;s:6:\"height\";i:506;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(448, 154, '_edit_lock', '1609943923:1'),
(449, 154, '_edit_last', '1'),
(450, 154, 'advanced_ads_ad_options', 'a:10:{s:7:\"visitor\";a:0:{}s:8:\"visitors\";a:0:{}s:6:\"output\";a:5:{s:8:\"group_id\";s:2:\"35\";s:8:\"position\";s:0:\"\";s:6:\"margin\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:10:\"wrapper-id\";s:0:\"\";s:13:\"wrapper-class\";s:0:\"\";}s:4:\"type\";s:5:\"group\";s:3:\"url\";i:0;s:5:\"width\";i:0;s:6:\"height\";i:0;s:10:\"conditions\";a:0:{}s:11:\"expiry_date\";i:0;s:11:\"description\";s:0:\"\";}'),
(466, 156, '_menu_item_type', 'custom'),
(467, 156, '_menu_item_menu_item_parent', '0'),
(468, 156, '_menu_item_object_id', '156'),
(469, 156, '_menu_item_object', 'custom'),
(470, 156, '_menu_item_target', ''),
(471, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(472, 156, '_menu_item_xfn', ''),
(473, 156, '_menu_item_url', '#'),
(475, 157, '_edit_lock', '1609946520:1'),
(476, 157, '_edit_last', '1'),
(477, 157, '_thumbnail_id', '144'),
(480, 157, '_advads_ad_settings', 'a:1:{s:11:\"disable_ads\";i:0;}'),
(482, 159, '_menu_item_type', 'taxonomy'),
(483, 159, '_menu_item_menu_item_parent', '156'),
(484, 159, '_menu_item_object_id', '25'),
(485, 159, '_menu_item_object', 'category'),
(486, 159, '_menu_item_target', ''),
(487, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(488, 159, '_menu_item_xfn', ''),
(489, 159, '_menu_item_url', ''),
(506, 164, '_menu_item_type', 'custom'),
(507, 164, '_menu_item_menu_item_parent', '0'),
(508, 164, '_menu_item_object_id', '164'),
(509, 164, '_menu_item_object', 'custom'),
(510, 164, '_menu_item_target', ''),
(511, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(512, 164, '_menu_item_xfn', ''),
(513, 164, '_menu_item_url', 'http://wp.koselikhabar.com'),
(515, 165, '_menu_item_type', 'taxonomy'),
(516, 165, '_menu_item_menu_item_parent', '0'),
(517, 165, '_menu_item_object_id', '21'),
(518, 165, '_menu_item_object', 'category'),
(519, 165, '_menu_item_target', ''),
(520, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(521, 165, '_menu_item_xfn', ''),
(522, 165, '_menu_item_url', ''),
(524, 143, 'awepop_views', '8'),
(525, 157, 'awepop_views', '3'),
(526, 120, 'awepop_views', '3'),
(527, 127, 'awepop_views', '8'),
(528, 122, 'awepop_views', '7'),
(529, 47, 'awepop_views', '1'),
(530, 139, 'awepop_views', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2020-11-22 08:45:57', '2020-11-22 08:45:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp.koselikhabar.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-11-22 08:45:57', '2020-11-22 08:45:57', '', 0, 'http://wp.koselikhabar.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-11-22 08:45:57', '2020-11-22 08:45:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://wp.koselikhabar.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-11-22 08:45:57', '2020-11-22 08:45:57', '', 0, 'http://wp.koselikhabar.com/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-11-22 08:55:20', '2020-11-22 08:55:20', '', 'fav-icon', '', 'inherit', 'open', 'closed', '', 'fav-icon', '', '', '2020-11-22 08:55:20', '2020-11-22 08:55:20', '', 0, 'http://wp.koselikhabar.com/wp-content/uploads/2020/11/fav-icon.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-11-22 09:13:47', '2020-11-22 09:13:47', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-11-22 09:13:47', '2020-11-22 09:13:47', '', 0, 'http://wp.koselikhabar.com/wp-content/uploads/2020/11/logo.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2020-12-17 11:42:06', '2020-12-17 11:42:06', '', 'mainlogo', '', 'inherit', 'open', 'closed', '', 'mainlogo', '', '', '2020-12-17 11:42:06', '2020-12-17 11:42:06', '', 0, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/mainlogo.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2020-12-17 12:35:38', '2020-12-17 12:35:38', '', 'होमपेज', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-01-06 15:12:28', '2021-01-06 15:12:28', '', 0, 'http://wp.koselikhabar.com/?p=27', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-12-18 12:38:09', '2020-12-18 12:38:09', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता माधवकुमार नेपालले अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीको प्रवृत्ति नै अरुलाई धोका दिने र अपमान गर्ने रहेको बताएका छन् ।\r\n\r\nशुक्रबार पेरिसडाडाँमा प्रदेश १ का आफू निकट नेताहरुको भेलामा नेपालले ओलीको बोलीको विश्वास नै नहुने बताए ।\r\n\r\nपहिले आफूलाई अपमान गर्ने काम गरेको ओलीले पछि कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्डलाई पनि त्यसै गरेको नेपालको भनाइ थियो । ‘पार्टीका पूर्वप्रमुख र पूर्वप्रधानमन्त्री भइसकेका नेताहरुलाई धोका दिने, अपमान गर्ने प्रवृत्ति अझै पनि रोकिएको छैन । सहमति गरेर उठ्यो, भोलिपल्टै होइन भन्नु नै केपी ओलीको योग्यता बनेको छ’, नेपालको भनाइ थियो ।\r\n\r\nसबै नेताहरुलाई पालैपालो धोका दिने, झुटो आश्वासन दिने भएकैले पार्टीभित्र नयाँ समीकरण बनेको उनले बताए । ‘अहिले कस्तो अवस्था बन्यो भने धोका पाउने र अपमानित हुनेहरु एक भएको जस्तो देखिएको छ’, नेपालले भने ।\r\n\r\nतर, पार्टीलाई कुनै हालतमा विभाजन हुन नदिने उनको भनाइ थियो । ‘त्यसका लागि हामी माथि लड्छौं । तपाईंहरु तल लड्नु होला’, नेपालले आग्रह गरे । अहिले पूर्वएमाले र पूर्वमाओवादी भन्ने कुरा उठाएर विभाजन गर्ने नियत देखिएकाले यसविरुद्ध लाग्न पनि नेपालको आग्रह थियो ।\r\n\r\nनेकपाभित्रको आन्तरिक कलह चर्किदै जाँदा दुई पक्षको गुट भेला बढेको छ । शुक्रबार पेरिसडाडाँमा प्रचण्ड र नेपाल पक्षका प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्ध केन्द्रीय सदस्यहरुको भेला पेरिसडाडाँमा राखिएको थियो ।', 'शोक प्रस्ताव पारित गरेपछि नेकपा बैठक स्थगित हुने', '', 'publish', 'open', 'closed', '', '%e0%a4%b6%e0%a5%8b%e0%a4%95-%e0%a4%aa%e0%a5%8d%e0%a4%b0%e0%a4%b8%e0%a5%8d%e0%a4%a4%e0%a4%be%e0%a4%b5-%e0%a4%aa%e0%a4%be%e0%a4%b0%e0%a4%bf%e0%a4%a4-%e0%a4%97%e0%a4%b0%e0%a5%87%e0%a4%aa%e0%a4%9b', '', '', '2020-12-18 12:38:09', '2020-12-18 12:38:09', '', 0, 'http://wp.koselikhabar.com/?post_type=deshnews&#038;p=45', 0, 'deshnews', '', 0),
(46, 1, '2020-12-18 12:36:57', '2020-12-18 12:36:57', '', 'flex', '', 'inherit', 'open', 'closed', '', 'flex', '', '', '2020-12-18 12:37:08', '2020-12-18 12:37:08', '', 45, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/flex.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-12-18 12:39:21', '2020-12-18 12:39:21', '', 'Latest Video', '', 'publish', 'open', 'closed', '', 'latest-video', '', '', '2020-12-18 12:48:35', '2020-12-18 12:48:35', '', 0, 'http://wp.koselikhabar.com/?post_type=videos&#038;p=47', 0, 'videos', '', 0),
(48, 1, '2020-12-18 12:52:08', '2020-12-18 12:52:08', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता माधवकुमार नेपालले अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीको प्रवृत्ति नै अरुलाई धोका दिने र अपमान गर्ने रहेको बताएका छन् ।\r\n\r\nशुक्रबार पेरिसडाडाँमा प्रदेश १ का आफू निकट नेताहरुको भेलामा नेपालले ओलीको बोलीको विश्वास नै नहुने बताए ।\r\n\r\nपहिले आफूलाई अपमान गर्ने काम गरेको ओलीले पछि कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्डलाई पनि त्यसै गरेको नेपालको भनाइ थियो । ‘पार्टीका पूर्वप्रमुख र पूर्वप्रधानमन्त्री भइसकेका नेताहरुलाई धोका दिने, अपमान गर्ने प्रवृत्ति अझै पनि रोकिएको छैन । सहमति गरेर उठ्यो, भोलिपल्टै होइन भन्नु नै केपी ओलीको योग्यता बनेको छ’, नेपालको भनाइ थियो ।\r\n\r\nसबै नेताहरुलाई पालैपालो धोका दिने, झुटो आश्वासन दिने भएकैले पार्टीभित्र नयाँ समीकरण बनेको उनले बताए । ‘अहिले कस्तो अवस्था बन्यो भने धोका पाउने र अपमानित हुनेहरु एक भएको जस्तो देखिएको छ’, नेपालले भने ।\r\n\r\nतर, पार्टीलाई कुनै हालतमा विभाजन हुन नदिने उनको भनाइ थियो । ‘त्यसका लागि हामी माथि लड्छौं । तपाईंहरु तल लड्नु होला’, नेपालले आग्रह गरे । अहिले पूर्वएमाले र पूर्वमाओवादी भन्ने कुरा उठाएर विभाजन गर्ने नियत देखिएकाले यसविरुद्ध लाग्न पनि नेपालको आग्रह थियो ।\r\n\r\nनेकपाभित्रको आन्तरिक कलह चर्किदै जाँदा दुई पक्षको गुट भेला बढेको छ । शुक्रबार पेरिसडाडाँमा प्रचण्ड र नेपाल पक्षका प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्ध केन्द्रीय सदस्यहरुको भेला पेरिसडाडाँमा राखिएको थियो ।', 'ओलीबाट अपमानित हुनेहरु मिल्ने अवस्था बन्यो : माधव नेपाल', '', 'publish', 'open', 'closed', '', '%e0%a4%93%e0%a4%b2%e0%a5%80%e0%a4%ac%e0%a4%be%e0%a4%9f-%e0%a4%85%e0%a4%aa%e0%a4%ae%e0%a4%be%e0%a4%a8%e0%a4%bf%e0%a4%a4-%e0%a4%b9%e0%a5%81%e0%a4%a8%e0%a5%87%e0%a4%b9%e0%a4%b0%e0%a5%81-%e0%a4%ae', '', '', '2020-12-18 12:52:08', '2020-12-18 12:52:08', '', 0, 'http://wp.koselikhabar.com/?post_type=desh_news&#038;p=48', 0, 'desh_news', '', 0),
(49, 1, '2020-12-18 12:51:58', '2020-12-18 12:51:58', '', 'Madhav-Kumar-Nepal', '', 'inherit', 'open', 'closed', '', 'madhav-kumar-nepal', '', '', '2020-12-18 12:51:58', '2020-12-18 12:51:58', '', 48, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/Madhav-Kumar-Nepal.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-12-18 12:53:29', '2020-12-18 12:53:29', '३ पुस, काठमाडौं । प्रमुख विपक्षी नेपाली कांग्रेसले सरकारको निगरानीका लागि गठन गरेको ‘छाँया सरकार’माथि पार्टीभित्रै प्रश्न उठेको छ ।\r\n\r\n‘सरकार भन्दा छाँया सरकार अझ लाचार’ भएको भन्दै नेताहरुले नेतृत्वसमक्ष छाँया सरकार हेरफेरको माग राखेका छन् ।\r\n\r\n&nbsp;\r\n\r\nसंघीय संसदको हिउँदे अधिवेशनको पूर्वसन्ध्यामा कांग्रेसले शुक्रबार बोलाएको संसदीय दल कार्यसमितिको बैठकमा केही सांसदहरुले छाँया सरकारकै आलोचना गरे ।\r\n\r\n‘देशमा प्रतिपक्षी पनि छ र ?’ भन्दै आम नागरिकले प्रश्न गर्न थालेको उल्लेख सांसद दिव्यमणि राजभण्डारीले छाँया सरकार हेरफेर गर्नुपर्ने बताए । उनको मागमा अन्य सांसदहरुले पनि समर्थन जनाए ।\r\n\r\nबैठकपछि नेता राजभण्डारीले अनलाइनखबरसंग भने, ‘बैठकमा छाँया सरकारको कुरा उठ्यो । त्यसपछि मैले छाँया सरकारमा हुनेहरु जिम्मेवार हुनुपर्यो । काम गर्न सक्नुपर्‍यो । काम गर्न नसके छोड्नुपर्‍यो भनेको हुँ ।’\r\n\r\nकांग्रेसले एउटा मन्त्रालय तीन जनासम्म सांसदलाई जिम्मा दिएर ६ जेठ ०७६ मा २५ सदस्यीय छाँया सरकार घोषणा गरेको थियो । तर, छाँया मन्त्रीहरुले हालसम्म के गरे, प्रगति के छ भनेर पार्टीमा समिक्षा हुन नसकेको नेता राजभण्डारीले बताए । उनको प्रश्न छ, ‘छाँया मन्त्री भएर संसदमा कम जाने, विदेश घुमेर बस्ने, अनि अरु माथि मात्रै प्रश्न उठाएर हुन्छ ?’\r\n\r\nकांग्रेस नेता प्रकाशमान सिंहले ‘कुन कुन छाँया मन्त्रीले के के गर्नुभयो त्यो सेयर गर्नुपर्‍यो र आवश्यक परे जिम्मेवारी हेरफर गर्नुपर्‍यो  ।’\r\n\r\nबैठकमा सहभागी नेताहरुका अनुसार छाँया सरकारको काम कारबाहीमाथि प्रश्न उठेपछि कांग्रेस संसदीय दलका प्रमुख सचेतक बालकृष्ण खाँडले छाँया मन्त्रीहरुको कामको समीक्षा हुने बताएका छन् ।\r\n\r\n‘छलफल गर्दै गरौं, छाँया मन्त्रीको रिपोर्ट नै मागेर छलफल गर्न पनि सकिन्छ’ खाँडको भनाइ उद्धृत गर्दै एक नेताले भने ।\r\n\r\nसभापति शेरबहादुर देउवा छाँया सरकारको काम कारबाहीमाथि उठेको प्रश्नबारे मौन रहेको नेताहरुले बताएका छन् । ‘खाँडजीले जवाफ दिएपछि सभापति चुप रहनुभयो । यो बेला पार्टीभित्रकै कुरा गर्ने बेला होइन भन्ने उहाँको आशय रहेको मैले बुझेको छु’ ती नेताले भने ।\r\n\r\nकांग्रेसद्वारा गठित छाँया सरकारमा गृह मन्त्रालय दिलेन्द्रप्रसाद बडू, अर्थ मिनेन्द्र रिजाल, रक्षा भीमसेनदास प्रधान, परराष्ट्र नारायण खड्का, ऊर्जा ज्ञानेन्द्रबहादुर खड्का, शहरी विकास उमाकान्त चौधरी, उद्योग मीन विश्वकर्मा, खेलकुद किशोर सिंह राठौर, शिक्षा गगन थापा, खानेपानी सुजाता परियार, स्वास्थ्य पार्वती डिसी चौधरी, पर्यटन मन्त्रालयको जिम्मा देवेन्द्र कँडेलले पाएका थिए ।\r\n\r\nयसैगरी, छाँया सरकारको श्रम, रोजगार तथा सामाजिक सुरक्षाको डिला संग्रौला, सञ्चार तथा सूचना प्रविधिमा बहादुरसिंह लामा, भूमिसुधार लक्ष्मी परियार, संघीय मामिला तथा सामान्य प्रशासन अतहर कमाल मुसलमान, कृषिको पद्मनारायण चौधरी, महिला, बालबालिका तथा ज्येष्ठ नागरिक उमा रेग्मी, वन तथा वातावरण राजेन्द्र केसी, कानुन तथा संसदीय मामिला राधेश्याम अधिकारी, भौतिक पूर्वाधार तथा यातायात मन्त्रालयको जिम्मा सञ्जयकुमार गौतमले पाएका थिए ।\r\n\r\nउनीहरुलाई सरकारका सम्बन्धित मन्त्रालयका मन्त्रीले गरिरहेका काम कस्ता छन् भन्ने सुक्ष्म अध्ययन र विश्लेषण गरी गलत काम गरे सच्याउन खबरदारी गर्ने जिम्मेवारी दिइएको छ ।\r\n\r\n<strong>छाँया सरकारले अवसर गुमायो</strong>\r\n\r\nपाटन संयुक्त क्याम्पसका राजनीतिक शास्त्रका उपप्रध्यापक विष्णु दाहाल कांग्रेसको छाँया सरकार कामविहीन, भूमिकाविहीन भएको बताउँछन् ।\r\n\r\n‘सरकारका गलत कामको खबरदारी गरेर सच्याउने भन्दा सरकार गलत गरिरहोस्, सरकार अर्कमण्य होस्, कामै नगरोस् र त्यसका आधारमा नेकपाको जनमत जाला र आफू सरकारमा आउँला भन्ने कांग्रेसको नीति देखिन्छ । त्यसको प्रभाव छाँया सरकारमा परेको हो’ उनले भने ।\r\n\r\nसरकारको काम कुन रफ्तारमा छ त्यसमा प्रतिस्पर्धा गर्नेगरी आफूलाई विकास गर्ने अभ्यास विभिन्न देशमा आफूले पाएको उल्लेख गर्दै उनले नेपालमा त्यसको ठीक उल्टो अभ्यास भएको बताए ।\r\n\r\n‘छाँया सरकारलाई पनि अवसर थियो, डाटामा जान सकेको भए, सरकारले यहाँ गलत गर्यो, हुनुपर्ने यस्तो थियो भनेर भन्न सकेको भए’ दाहाल भन्छन्, ‘जस्तो सरकार उस्तै छाँया सरकार भयो ।’', 'कांग्रेसभित्र उठ्यो छाँया सरकार हेरफेरको माग', '', 'publish', 'open', 'closed', '', '%e0%a4%95%e0%a4%be%e0%a4%82%e0%a4%97%e0%a5%8d%e0%a4%b0%e0%a5%87%e0%a4%b8%e0%a4%ad%e0%a4%bf%e0%a4%a4%e0%a5%8d%e0%a4%b0-%e0%a4%89%e0%a4%a0%e0%a5%8d%e0%a4%af%e0%a5%8b-%e0%a4%9b%e0%a4%be%e0%a4%81%e0%a4%af', '', '', '2020-12-18 12:53:29', '2020-12-18 12:53:29', '', 0, 'http://wp.koselikhabar.com/?post_type=desh_news&#038;p=50', 0, 'desh_news', '', 0),
(51, 1, '2020-12-18 12:53:22', '2020-12-18 12:53:22', '', 'Congress-samsadiya-dal', '', 'inherit', 'open', 'closed', '', 'congress-samsadiya-dal', '', '', '2020-12-18 12:53:22', '2020-12-18 12:53:22', '', 50, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/Congress-samsadiya-dal.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2020-12-18 12:54:09', '2020-12-18 12:54:09', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता झलनाथ खनालले पार्टी विधि र पद्दतिमा चले आफ्नो जित हुने बताएका छन् । पेरिसडाडाँमा शुक्रबार आयोजित कार्यक्रममा नेता खनालले पार्टी एकीकरण भएबाटै विधि र पद्दतिमा चल्न छोडेको बताए ।\r\n\r\n‘पार्टी एकता ऐतिहासिक काम थियो । हामी उत्साहित र खुशी भयौं । तर, एकतालाई व्यक्तिगत लाभका नाममा दुरुपयोग गर्ने प्रयत्न भयो’, खनालले भने । उनले पार्टी एकता एकीकरणको सुरुबाटै अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीले मनपरी गर्न थालेको बताए । बदमासी र मनपरीकै कारण अहिले पार्टीमा संकट देखिएको खनालको भनाइ थियो ।\r\n\r\nअहिले व्यक्तिगत लाभका लागि राज्यसत्ताको चरम दुरुपयोग भएको उनले बताए । ओली पार्टी र सरकार दुवैतर्फ असफल भएकाले नयाँनयाँ संकट आउने गरेको खनालले टिप्पणी गरे । उनले अहिले पार्टीमा पदका लागि नभएर विधि र पद्दतिका लागि बहस भइरहेको बताए ।\r\n\r\n‘कतिपयले पद पाउनु असन्तुष्टि भन्ने टिप्पणी गरेको सुन्छु । तर, त्यस्तो होइन । नेकपा विधि र पद्दतिमा हिडेँ हाम्रो जित हुनेछ’, खनालको भनाइ थियो । पेरिसडाडाँमा कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्ड र वरिष्ठ नेता माधवकुमार नेपाल निकट प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्धि केन्द्रीय सदस्यहरु सहभागी थिए । भेलालाई प्रचण्ड, नेपाल र खनालले सम्बोधन गरेका थिए ।', 'पार्टी विधि र पद्दतिले चले हाम्रो जित : झलनाथ खनाल', '', 'publish', 'open', 'closed', '', '%e0%a4%aa%e0%a4%be%e0%a4%b0%e0%a5%8d%e0%a4%9f%e0%a5%80-%e0%a4%b5%e0%a4%bf%e0%a4%a7%e0%a4%bf-%e0%a4%b0-%e0%a4%aa%e0%a4%a6%e0%a5%8d%e0%a4%a6%e0%a4%a4%e0%a4%bf%e0%a4%b2%e0%a5%87-%e0%a4%9a%e0%a4%b2', '', '', '2020-12-18 12:54:09', '2020-12-18 12:54:09', '', 0, 'http://wp.koselikhabar.com/?post_type=desh_news&#038;p=52', 0, 'desh_news', '', 0),
(53, 1, '2020-12-18 12:54:04', '2020-12-18 12:54:04', '', 'jhalanath-khanal', '', 'inherit', 'open', 'closed', '', 'jhalanath-khanal', '', '', '2020-12-18 12:54:04', '2020-12-18 12:54:04', '', 52, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/jhalanath-khanal.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-12-18 12:54:50', '2020-12-18 12:54:50', '३ पुस, काठमाडौं । संस्कृति पर्यटन तथा नागरिक उड्ययनमन्त्री योगेश भट्टराईले सन् २०२१ लाई आन्तरिक पर्यटन भ्रमण वर्षका रुपमा जोड दिने बताएका छन् । सोही कारण दुई दिन सार्वजनिक बिदाको अवधारणा ल्याइएको उनले उल्लेख गरे ।\r\n\r\nनिजामती कर्मचारीहरुको आधिकारिक ट्रेड युनियन केन्द्रीय कार्यसमितिले शुक्रबार आयोजना गरेको ‘पर्यटनमा कोभिड-१९ को प्रभाव र भावी कार्यदिशा’ विषयक गोष्ठीलाई सम्बोधन गर्दै मन्त्री भट्टराईले औपचारिक घोषणा नभए पनि सन् २०२१ नेपालका लागि आन्तरिक भ्रमण वर्ष भएको उल्लेख गरे ।\r\n\r\nआन्तरिक पर्यटनमा टेवा दिन मन्त्रालयले सातामा दुई दिन सार्वजनिक बिदाको अवधारणा ल्याएको उनको भनाइ छ । नेपालको अर्थतन्त्रमा वार्षिक ८० अर्ब रुपैयाँ विदेशी मुद्रा आर्जनमा योगदान गर्दै आएको पर्यटन क्षेत्रमा कोभिड-१९ को महामारीको सबैभन्दा ठूलो मार परेको भन्दै उनले तत्काल ठूलो मात्रामा पर्यटक नआउने अवस्थामा आन्तरिक घुमफिरलाई प्रवर्द्धन गर्न खोजिएको बताए ।\r\n\r\n‘अब बल्ल कोरोना भाइरसविरुद्धको खोप प्रयोगमा आउन सुरु भएको छ, खोप सुरु भए पनि अझै एक वर्ष ठूलो मात्रामा विदेशी पर्यटक आइहाल्ने अवस्था छैन,’ उनले भने, ‘यो समयमा नेपालको पर्यटन बजारलाई मर्न नदिन आन्तरिक पर्यटन प्रवर्द्धन गर्नुपर्छ ।’\r\n\r\nदुई दिने बिदाको अवधारणामा विज्ञहरुसँग अझै छलफल र परामर्श जारी रहेको उनले बताए । यो निर्णय भइसकेको विषय नभएको र छलफल जारी रहेको उनको भनाइ छ । सबै पक्षको राय लिएर मात्र सरकारले निर्णय गर्ने उनको भनाइ छ । तर, कुनै पनि अवधारणा हिजो असफल भयो भनेकै आधारमा आज पनि असफल हुन्छ भन्ने नसोच्न समेत उनले आग्रह गरे । ‘हिजो असफल भयो होला तर त्यहि कुरा समय र परिस्थिति बदलिदै जाँदा सफल पनि हुन्छ,’ उनले भने ।\r\n\r\nमहामारीका कारण एक वर्ष सम्म वन्दावन्दीको अवस्थामा रहँदा मानिसमा उकुस-मुकुस भएकाले अर्को वर्ष नेपालमा पर्यटनको बाँध फुट्न सक्ने उनको अपेक्षा छ ।\r\n\r\nकोभिड १९ को महामारीका सन्दर्भमा सरकारले केहि गरेन भनेर बाहिर सरकारको आलोचना हुने गरेको सन्दर्भ उल्लेख गर्दै मन्त्री भट्टराईले कुनै पनि देशको साधन, स्रोत कति थियो र त्यसको परिचालन कति भयो भन्ने कोणबाट परिणाम खोज्नु पर्ने बताए ।', '२०२१ लाई आन्तरिक भ्रमण वर्ष मनाउन २ दिन बिदाको अवधारणा : पर्यटनमन्त्री', '', 'publish', 'open', 'closed', '', '%e0%a5%a8%e0%a5%a6%e0%a5%a8%e0%a5%a7-%e0%a4%b2%e0%a4%be%e0%a4%88-%e0%a4%86%e0%a4%a8%e0%a5%8d%e0%a4%a4%e0%a4%b0%e0%a4%bf%e0%a4%95-%e0%a4%ad%e0%a5%8d%e0%a4%b0%e0%a4%ae%e0%a4%a3-%e0%a4%b5%e0%a4%b0', '', '', '2020-12-18 12:54:50', '2020-12-18 12:54:50', '', 0, 'http://wp.koselikhabar.com/?post_type=desh_news&#038;p=54', 0, 'desh_news', '', 0),
(55, 1, '2020-12-18 12:54:45', '2020-12-18 12:54:45', '', 'yogesh-bhattrai', '', 'inherit', 'open', 'closed', '', 'yogesh-bhattrai', '', '', '2020-12-18 12:54:45', '2020-12-18 12:54:45', '', 54, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/yogesh-bhattrai.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-12-18 12:55:28', '2020-12-18 12:55:28', '३ पुस, काठमाडौं । पछिल्लो २४ घण्टामा नेपालमा ७८२ जनामा कोरोना भाइरस संक्रमण पुष्टि भएको छ ।\r\n\r\nस्वास्थ्य तथा जनसंख्या मन्त्रालयका अनुसार ५७०६ जनाको परीक्षणमा ४७७ जना पुरुष र ३०५ जना महिलामा कोरोना भाइरस संक्रमण पुष्टि भएको हो ।\r\n\r\nयोसँगै नेपालमा कोरोना भाइरस संक्रमितको कुल संख्या २ लाख ५२ हजार ४७४ पुगेको छ छ । पछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणमुक्त हुनेको संख्या १०२९ रहेको छ ।\r\n\r\nहालसम्म संक्रमणमुक्त हुनेको संख्या २ लाख ४१ हजार ३९२ रहेको छ । हाल नेपालमा कोरोना भाइरसको सक्रिय संक्रमितको संख्या ९३१७ रहेको छ ।\r\n\r\nपछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणका कारण १६ जनाको मृत्यु भएको मन्त्रालयले जनाएको छ । हालसम्म मृत्यु हुनेको संख्या १७६५ रहेको छ ।', '५७०६ जनाको परीक्षणमा ७८२ जनामा कोरोना संक्रमण पुष्टि', '', 'publish', 'open', 'closed', '', '%e0%a5%ab%e0%a5%ad%e0%a5%a6%e0%a5%ac-%e0%a4%9c%e0%a4%a8%e0%a4%be%e0%a4%95%e0%a5%8b-%e0%a4%aa%e0%a4%b0%e0%a5%80%e0%a4%95%e0%a5%8d%e0%a4%b7%e0%a4%a3%e0%a4%ae%e0%a4%be-%e0%a5%ad%e0%a5%ae%e0%a5%a8', '', '', '2020-12-19 07:12:04', '2020-12-19 07:12:04', '', 0, 'http://wp.koselikhabar.com/?post_type=desh_news&#038;p=56', 0, 'desh_news', '', 0),
(57, 1, '2020-12-18 12:55:24', '2020-12-18 12:55:24', '', 'Corona-Test-3', '', 'inherit', 'open', 'closed', '', 'corona-test-3', '', '', '2020-12-18 12:55:24', '2020-12-18 12:55:24', '', 56, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/Corona-Test-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-12-19 07:58:49', '2020-12-19 07:58:49', '४ पुस, काठमाडौं । नेपाली राष्ट्रिय क्रिकेट टिमका अलराउण्डर पारस खड्काले टी-२० लिगमा टीम अबुधाबीको नयाँ भूमिकाबाट आफू उत्साहित भएको जनाएका छन् ।\r\n\r\nटीम अबुधाबीले शुक्रबार अलराउण्डर पारसलाई नयाँ सिजनको लागि इमर्जिङ ट्यालेन्ट मेन्टरको भूमिकामा नियुक्त गरेको हो ।\r\n\r\nनयाँ भूमिका पाएपछि पारसले शनिबार बिहान ट्वीट गर्दै यसबाट आफू उत्साहित रहेको र नेपाली क्रिकेटलाई अन्तर्राष्ट्रिय स्तरमा विकास गर्न मद्दत गर्ने बताएका छन् । ‘टीम अबुधाबीसँगको नयाँ भूमिकालाई लिएर उत्साहित छु । आशा छ, क्रिकेटिङ टाईअपबाट अन्तर्राष्ट्रिय लेभलमा नेपाली क्रिकेट विकास गर्न सकिन्छ । र टीम अबुधाबी मार्फत हाम्रा क्रिकेटरका लागि अवसर प्राप्त गर्न सकिनेछ ।’\r\n\r\nअब हुने टी-१० लिगका लागि नेपाली टिमका पूर्व कप्तान समेत रहेका पारसले मेन्टरको भूमिका खेल्नेछन् । उनी टिमको कोचिङ स्टाफको रुपमा रहने अबुधाबीले जनाएको छ । गत सिजन पारसले टीम अबुधाबीका लागि खेलेका थिए ।\r\n\r\nपारसले पहिलो पटक टिम अबुधाबी मार्फत नै विदेशी लिगमा सहभागिता जनाएका हुन् ।\r\n\r\nचौथो संस्करणको टी-१० लिग युएईमा आगामी वर्ष जनवरी २६ देखि फेब्रुअरी ६ सम्म हुनेछ । अबुधाबीले अहिलेसम्म रोहन मुस्ताफा, लुक राइट, अभिस्का फर्नान्डो र हाएडेन वाल्स जुनियरलाई टिममा रिटेन गरेको छ । यस्तै क्रिस मोरिसलाई सिधै अनुबन्ध गरेको छ ।\r\n\r\n&nbsp;', 'टीम अबुधाबीको नयाँ भूमिकाबाट उत्साहित छु : पारस खड्का', '', 'publish', 'open', 'closed', '', '%e0%a4%9f%e0%a5%80%e0%a4%ae-%e0%a4%85%e0%a4%ac%e0%a5%81%e0%a4%a7%e0%a4%be%e0%a4%ac%e0%a5%80%e0%a4%95%e0%a5%8b-%e0%a4%a8%e0%a4%af%e0%a4%be%e0%a4%81-%e0%a4%ad%e0%a5%82%e0%a4%ae%e0%a4%bf%e0%a4%95', '', '', '2020-12-19 07:58:49', '2020-12-19 07:58:49', '', 0, 'http://wp.koselikhabar.com/?post_type=samachar&#038;p=58', 0, 'samachar', '', 0),
(59, 1, '2020-12-19 07:58:44', '2020-12-19 07:58:44', '', 'Paras-Khadka', '', 'inherit', 'open', 'closed', '', 'paras-khadka', '', '', '2020-12-19 07:58:44', '2020-12-19 07:58:44', '', 58, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/Paras-Khadka.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-12-19 07:59:49', '2020-12-19 07:59:49', 'सिनेमामा मौलिकता कसरी आउँछ ? हाम्रो अनेकन सांस्कृतिक पृष्ठभूमिलाई पटकथामा भन्न सकिन्छ कि सकिदैन ? त्यो विविधतालाई, त्यो बहुरुपतालाई एउटै कथ्य संरचनामा ढाल्न सकिन्छ कि सकिदैन ?\r\n\r\nजस्तो थाङ्काको कुरा गरौं । एउटा सिंगो थाङ्कामा बुद्धको जीवन-चक्र समेटिएको हुन्छ । यसलाई दर्शाउने थुप्रै चित्र हुन्छ । तर, क्यानभास एउटै हुन्छ । ठ्याक्कै यसरी कथा भन्न सकिन्छ कि सकिदैन ? चलचित्र एउटै होस् तर त्यसभित्र बहुरुपता समेटियोस् ।\r\n\r\n&nbsp;\r\n\r\nअहिले मैले बनाउन लागेको सिनेमा पनि यस्तै हो । एउटा सडकलाई लिएर बाबु-छोराबीच सम्बन्धको कथामा सिनेमा बनाउने तयारी गरिरहेको छु । यो सिनेमाको कथा भनेको एउटा सडकले बाबु छोराको सम्बन्धमा पार्ने प्रभाव हो । ती दुई पात्रको सम्बन्धलाई सडकको माध्यामबाट कसरी भन्न सकिएला भनेर खोज गरिहेका छौं । सडकको पनि धेरै रुप हुन्छन् । त्यो रुप बाबु छोराको सम्बन्धको आयामसँग मिल्छ वा मिल्दैन ?\r\n\r\nहरेक कुरालाई अभिव्यक्त गर्ने हाम्रो आफ्नै शैली छ । गीत गाउँदा हामी फरक तरिकाले गाउँछौं । जस्तो हाम्रो लोक दोहोरी गीत अन्यत्र कतै मिल्दैन । अरु गीत सामान्यतः तीन, चार मिनेटको हुन्छ । तर, लोक दोहोरी आधा घण्टा, एक घण्टा, एक दिन होइन, दुई/तीन दिनसम्म पनि तन्किएर जान्छ । यस्तो अन्यत्र कुनै संगीत छैन ।\r\n\r\nअभिव्यक्तिको यस्तो मौलिक तरिकालाई हामीले सिनेमामा ल्याउन सक्छौं कि सक्दैनौ ?\r\n\r\nभारतले जुन प्रकारको सिनेमा बनाएको छ, हुन त भारतको पनि सिनेमाको थुप्रै अवधारणा छ । तर, अहिले चलनचल्तीमा रहेको बलिउडको जुन अवधारणा छ, त्यसलाई अलि मिहिन रुपमा विश्लेषण गर्ने हो भने, गीत राख्ने, फाइट राख्ने सबै कहाँदेखि आएको छ भने उनीहरुको जुन नौटंकी परम्परा छ त्यसबाट ल्याइएको हो । त्यसमा गीत पनि गाइरहेका हुन्छ, अभिनय गरिरहेको हुन्छ, स्टन्ट देखाइरहेको हुन्छ । अहिले वैश्विक रुपमा उनीहरु के भन्छ भने, बलिउड हाम्रो पहिचान हो । अर्थात यही शैली उनीहरुको आफ्नोपन हो । पहिचान हो ।\r\n<div class=\"ok18-quote3\">एउटा हिन्दु विश्वास पद्धति भएको चरित्र र अर्को प्रकृति पूजक किरात पात्रको आइडिया त फरक हुन्छ । सोच्ने तरिका फरक हुन्छ । त्यसले चरित्र चित्रणमा नै फरक पार्ने भयो । अब यस कुरालाई हामीले सिनेमा मार्फत कसरी अभिव्यक्त गर्छौं ?</div>\r\nहुन त विगतमा हलिउडले पनि बलिउडमै जसरी गीत राख्ने गर्थ्यौं । तर, पछि संगीत आफैंमा एक अलग कला हो भनेर त्यसलाई सिनेमाबाट निकालिदिए । सिनेमाको कथा भन्ने फरक तरिका अपनाए ।\r\n\r\nअहिले विश्वभर नै के भइरहेको छ भने, आफ्नो सिनेमालाई कसरी मौलिक बनाउने ? कसरी मौलिक कथा भन्ने ? मौलिकसँगै अर्को पक्ष पनि छ निजत्व । त्यो चाहिँ निर्देशकको पहिचान कसरी ल्याउने ? यो चाहिँ आफैंमा लामो प्रक्रिया हो ।\r\n\r\nमौलिक सिनेमा बनाउने कुरामा मेरो अध्ययनले के पायो भने, यो चाहिँ हाम्रो विश्वास पद्धतिसँग जोडिने रहेछ । जस्तो कि, पश्चिमाहरुको विश्वास पद्धति के हो भने हरेक कुरा सुन्दर हुन्छ । सुन्दरको उनीहरुको मान्यता के भने, पूर्ण रुपमा बान्की मिलेर, परिपक्व, चिटिक्क । निश्चित ठाउँमा निश्चित चिजहरुको उपस्थिति हुनुपर्छ । सन्तुलन यस्तो हुनुपर्छ । उनीहरुले आफ्नो सिनेमामा यस्तै खोज्छन् । फ्रेमिङ गर्दा सबै कुरा चिरिच्याट्ट मिलेको देखाउँछन् ।\r\n\r\nजापानीहरुको विश्वास पद्धति फरक छ । उनीहरु यसको ठीक विपरीत छन् । बिग्रेको, भत्केको कुरा उनीहरुको लागि सौन्दर्य हो । उनीहरुको सिनेमामा यही कुरा प्रतिविम्बित हुन्छ ।\r\n\r\nअर्को कुरा, चिया संस्कृति । जापानीको पनि आफ्नै चिया संस्कृति छ, जापानीहरुको पनि छ । चिनियाँहरुको चिया संस्कृतिमा चियाको भाँडो, कपहरु एकदमै सन्तुलित, सबै मिलेको, चम्किलो हुन्छ । जापानीहरुको यस्तो हुँदैन । उनीहरुको कुच्चिएको, टुक्रिएकोे हुन्छ । सारमा भनौं, उनीहरुको विश्वास पद्धति के भने, जीवन भनेको परिपूर्ण हुँदैन । अब उनीहरुको सिनेमा हेर्ने हो भने यही दर्शन कुनै न कुनै रुपमा उजागर हुन्छ ।\r\n\r\nतर, हामीले यसतर्फ अध्ययन गरेनौं ।\r\n\r\nसंगीतमै पनि उनीहरुको आफ्नोपन देखिन्छ । जस्तो एक निश्चित समयपछि गीत पनि रोकिने हुने । ग्याप हुन्छ । फेरि गीत निरन्तर हुन्छ । फेरि ग्याप । यस किसिमको जुन ग्याप हुन्छ, शून्यता हुन्छ त्यो उनीहरुको नाटकमा पनि हुन्छ । विश्वास पद्धतिसँग जोडिएका यी आइडियालाई उनीहरुले आधुनिक संरचनाहरुमा पनि साथमै ल्याएर आए ।\r\n\r\nहामी यति गहिरिएर कुनैपनि कुरालाई अध्ययन/विश्लेषण गर्दैनौं । मेरो भनाइको अर्थ के भने हाम्रा आफ्नै ढाँचा एवं शैलीका मठ-मन्दिर छन् । यसलाई निर्माण गर्ने आफ्नै निश्चित तौर-तरिका छन् । तौर तरिका मात्र होइन, त्यसको पछाडि निश्चित विचारहरु छन् । दर्शन छन् । त्यो चिन्तन, त्यो दर्शन सिनेमामा किन आउँदैन ?\r\n<div class=\"ok18-quote2\">हाम्रा आफ्नै ढाँचा एवं शैलीका मठ-मन्दिर छन् । यसलाई निर्माण गर्ने आफ्नै निश्चित तौर-तरिका छन् । तौर तरिका मात्र होइन, त्यसको पछाडि निश्चित विचारहरु छन् । दर्शन छन् । त्यो चिन्तन, त्यो दर्शन सिनेमामा किन आउँदैन ?</div>\r\nयस्ता विश्वास पद्धतिलाई सिनेमालाई विभिन्न रुपमा झल्काउन सकिन्छ । फिल्म धेरै कलाहरुको समिश्रण हो । यसमा  फोटोग्राफी हुन्छ, लेखन हुन्छ, सम्पादन हुन्छ, अभिनय हुन्छ, म्युजिक हुन्छ, सिनेम्याटोग्राफी हुन्छ, संवाद हुन्छ, पहिरन हुन्छ । जस्तो मेरो सिनेमामा राई पात्र छन् भने म राईको कुन इमोसनको कुरा गर्दैछु, त्यो इमोसनलाई उनीहरुको रिदमले कसरी अभिनय गर्छ, त्यो कुरालाई मैले आफ्नो सिनेमामा ल्याउन सक्छु । अनि क्यामेरामा गर्न सकिने के भने, उनीहरुले हेर्दा कसरी हेर्छन् । कलरको पर्सेप्सन के हो ?\r\n\r\nराईमा पनि धेरै वर्गहरु हुन्छन् । धनी राई होला, मध्यम बर्गीय राई होलान्, विपन्न राई होलान्, आधुनिक राई होला, परम्पारगत राई होला । उनीहरुको कलरको आइडिया के हो ? कलरलाई उनीहरुले कसरी प्रस्तुत गर्छन् । उनीहरुको यो आइडियालाई पहिरनमा ल्याउन सकिन्छ ।  कुनै राईले निलो लुगा लगाउँछ भने त्यो उनको मनोविज्ञानसँग सम्बन्धित हुन्छ । अर्को कुरा के भने, यस माध्यामबाट हामी दर्शकमा कस्तो मुड सिर्जना गर्न चाहन्छौं ? उनीहरुको मनोभाव कस्तो पैदा गर्न चाहन्छौं भन्ने पनि हो ।\r\n\r\nएउटा त क्यारेक्टरको इमोसनको कुरा हुनसक्छ । जस्तो एकदमै उकुसमुकुस छ भने क्यामेरा चाहिँ साँघुरो बनाउने हो कि । एकदमै एक्लोपन देखाउने हो भने क्यामेरालाई विस्तृत वा फराकिलो बनाउने हो कि । अब त्यो उकुसमुकुस वा संकुचन र त्यो एक्लोपना एउटा राईले महसुस गर्दा कसरी गर्छ ? त्यो चाहिँ फेरि क्यामेरा वर्कमा ल्याउनुपर्‍यो ।\r\n\r\n<strong>अब कथामा भन्दा कसरी भन्ने ?</strong>\r\n\r\nहिन्दुले भन्दा किरातले सोच्ने फरक तरिका छन् । अर्थात उसको सोच्ने तरिका नै फरक हुन्छ । जस्तो हिन्दुले नर्क र स्वर्गको कल्पना गर्छ भने किरातले त्यस्तो कल्पना गर्दैन । भन्नुको अर्थ उनीहरुबीच सोच्ने तरिकामै फरक छ नि । अब यही कुरालाई कसरी लेखनमा ल्याउने त ?\r\n\r\nएउटा हिन्दु विश्वास पद्धति भएको चरित्र र अर्को प्रकृति पूजक किरात पात्रको आइडिया त फरक हुन्छ । सोच्ने तरिका फरक  हुन्छ । त्यसले चरित्र चित्रणमा नै फरक पार्ने भयो । अब यस कुरालाई हामीले सिनेमा मार्फत कसरी अभिव्यक्त गर्छौं ?\r\n\r\nहामीले त यही खोज पनि गरिरहेका छैनौं, जबकी विश्व सिनेमा धेरै पर पुगिसकेको छ । विश्व सिनेमामा त निजत्वको कुरा छ । जस्तो निर्देशकको आफ्नोपन त्यसमा झल्कनुपर्छ भन्ने मान्यता हो यो । कुनैपनि सिनेमा हेर्नसाथ यो फलानो निर्देशकको हो भनेर पहिचान गर्ने कुरा के हो त ? हरेक व्यक्तिको अभिव्यक्त गर्ने तरिका र शैली पनि फरक हुन्छ । उनीहरु त्यहाँ पुगिसके ।\r\n\r\nअर्को अभ्यास चाहिँ के भइरहेको छ भने सिनेमालाई फोटोग्राफीबाट कसरी मुक्त गर्ने, कसरी नाटकबाट मुक्त गर्ने, उपन्यासबाट कसरी मुक्त गर्ने, गीत संगीतबाट कसरी मुक्त गर्ने भन्ने खोज र यो माध्यामलाई आफैंमा कसरी विकास गर्ने भन्ने खोज भइरहेको छ । यो अरुसँग निर्भर नभई आफैंमा एक स्वतन्त्र कला हो । यो अलग्गै आइडिया हो । अलग्गै आइडिया मात्र होइन, अलग्गै कला पनि हो । यसलाई यी-यी कुराबाट मुक्त गरेर अलग्गै निर्माण गर्नुपर्छ भनेर लागिरहेका छन् ।\r\n\r\nसिनेमाले उपन्यासले जस्तो मनोलग देखाउन सक्दैन । सिनेमासँग त्यो क्षमता नै छैन । तर, सिनेमासँग के क्षमता छ भने त्यसले एउटा वस्तु देखाएर त्यसबाट मल्टिपल आइडियाहरु कसरी प्रक्षेपण हुन्छ भन्ने देखाउँछ । यो उपन्यास वा लेखनले नसक्ने कुरा हो । एउटा तस्वीरले हजार शब्द बोल्छ भनेजस्तै ।\r\n\r\nअब यो सबैकुराबाट मुक्त गरेर फिल्म आफैंमा एक अलग कला हो भनेर कसरी यसको क्षमतालाई खोज्ने काम भइरहेको छ । यो संसारभर भइरहेको अहिलेको प्रयास हो ।\r\n\r\n<em><strong>(शिव मुखियासँगको कुराकानीमा आधारित)</strong></em>', 'हाम्रो विश्वास पद्धतिले कसरी सिनेमालाई मौलिक बनाउँछ ?', '', 'publish', 'open', 'closed', '', '%e0%a4%b9%e0%a4%be%e0%a4%ae%e0%a5%8d%e0%a4%b0%e0%a5%8b-%e0%a4%b5%e0%a4%bf%e0%a4%b6%e0%a5%8d%e0%a4%b5%e0%a4%be%e0%a4%b8-%e0%a4%aa%e0%a4%a6%e0%a5%8d%e0%a4%a7%e0%a4%a4%e0%a4%bf%e0%a4%b2%e0%a5%87', '', '', '2020-12-19 07:59:49', '2020-12-19 07:59:49', '', 0, 'http://wp.koselikhabar.com/?post_type=samachar&#038;p=60', 0, 'samachar', '', 0),
(61, 1, '2020-12-19 07:59:44', '2020-12-19 07:59:44', '', 'flim-store500', '', 'inherit', 'open', 'closed', '', 'flim-store500', '', '', '2020-12-19 07:59:44', '2020-12-19 07:59:44', '', 60, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/flim-store500.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-12-19 08:00:38', '2020-12-19 08:00:38', '४ पुस, काठमाडौं । शनिबार बिहान सिंहदरबारको पूर्वी गेट अगाडि कारले साइकललाई ठक्कर दिँदा एकजना घाइते भएका छन् । घाइते हुनेमा घट्टकुलो बस्ने ४५ वर्षीय टंकनाथ सुवेदी छन् ।\r\n\r\nनागरिक दैनिकका वितरक सुवेदी पत्रिका बाँड्न हिँडेका बेला बा १० च ७५७६ नम्बरको कारले ठक्कर दिएको काठमाडौं प्रहरीका डीएसपी प्रतिक विष्टले बताए । नजिकै रहेको प्रहरीको मोबाइल टोलीले कार र चालकलाई तत्कालै नियन्त्रणमा लिएको थियो ।\r\n<div class=\"col colspan3 main__read--content ok18-single-post-content-wrap\">\r\n\r\nहाल घाइते सुवेदीको नर्भिक अस्पतालमा उपचार भइरहेको विष्टले बताए । प्रारम्भिक सोधपुछमा चालकले साइकल अर्कोतिर जाला भन्ने सोचे पनि नगएकाले दुर्घटना भएको दाबी गरेका छन् । यद्यपि, दुर्घटनाको थप कारणबारे प्रहरीले अनुसन्धान गरिरहेको छ ।\r\n\r\n</div>\r\n<div class=\"col colspan3\">\r\n<div class=\"left_add\">\r\n<div class=\"okam-ad-position-wrap single-after-content okam-device-desktop\" data-alias=\"single-after-content\" data-device-type=\"desktop\"></div>\r\n</div>\r\n</div>\r\n&nbsp;', 'सिंहदरबारको पूर्वी गेट अगाडि कारले साइकललाई ठक्कर दियो', '', 'publish', 'open', 'closed', '', '%e0%a4%b8%e0%a4%bf%e0%a4%82%e0%a4%b9%e0%a4%a6%e0%a4%b0%e0%a4%ac%e0%a4%be%e0%a4%b0%e0%a4%95%e0%a5%8b-%e0%a4%aa%e0%a5%82%e0%a4%b0%e0%a5%8d%e0%a4%b5%e0%a5%80-%e0%a4%97%e0%a5%87%e0%a4%9f-%e0%a4%85', '', '', '2020-12-19 08:00:38', '2020-12-19 08:00:38', '', 0, 'http://wp.koselikhabar.com/?post_type=samachar&#038;p=62', 0, 'samachar', '', 0),
(63, 1, '2020-12-19 08:00:33', '2020-12-19 08:00:33', '', 'Accident', '', 'inherit', 'open', 'closed', '', 'accident', '', '', '2020-12-19 08:00:33', '2020-12-19 08:00:33', '', 62, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/Accident.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-12-19 08:01:23', '2020-12-19 08:01:23', '४ पुस, बुटवल । कांग्रेस नेता विरेन्द्रकुमार कनौडियाको स्वामित्वको महालक्ष्मी सुगर्स प्रालिले उखु किसानलाई बक्यौता तिर्न बाँकी नरहेको जनाएको छ । बरु उल्टै किसानबाट चार करोड लिन बाँकी रहेको उसको दाबी छ ।\r\n\r\nमहालक्ष्मी सुगर्स प्रालिले प्रेस विज्ञप्ति जारी गर्दै उखु किसानलाई तिर्नुपर्ने बक्यौता रकम नरहेको जानकारी उद्योग वाणिज्य तथा आपूर्ति मन्त्रालयलाई दुई महिना अगाडि नै गराइसकेका उल्लेख गरेको छ ।\r\n<div class=\"okam-ad-position-wrap single-inbetween-stories okam-device-mobile-desktop\" data-alias=\"single-inbetween-stories\" data-device-type=\"mobile-desktop\">\r\n\r\nसरकारले प्रतिक्वीन्टल २५ रुपैयाँका दरले दिनुपर्ने अनुदान रकम प्रालिले नपाएको अवस्थामा काठमाडौंमा चलिरहेको उखु किसानको आन्दोलनलाई लिएर प्रालिले पनि किसानलाई रकम नतिरेको प्रचार सरासर गलत भएको दावी गरेको छ ।\r\n\r\nप्रालिका सहायक प्रबन्धक दीपक न्यौपानेको हस्ताक्षरमा जारी विज्ञप्तिमा कपिलवस्तुमा किसानलाई बिउ, मल उपलब्ध गराएवापतको चार करोड रुपैयाँको तमसुक प्रालिसँग सुरक्षित रहेको उल्लेख छ । उक्त चार करोड रुपैयाँ असुल उपरका लागि पहल गरिदिन अपील गर्दै अन्यथा कानूनी उपचारमा जाने विज्ञप्तिमा उल्लेख छ ।\r\n\r\nलुम्बिनी प्रदेश सभामा प्रमुख विपक्षी दलका नेता कनौडियाको चिनी मिल कपिलवस्तुबाट सर्लाही स्थानान्तरण गरिएको छ ।\r\n\r\n</div>', 'कांग्रेस नेता कनौडियाको चिनी मिल भन्छ- उखु किसानबाट चार करोड लिन छ', '', 'publish', 'open', 'closed', '', '%e0%a4%95%e0%a4%be%e0%a4%82%e0%a4%97%e0%a5%8d%e0%a4%b0%e0%a5%87%e0%a4%b8-%e0%a4%a8%e0%a5%87%e0%a4%a4%e0%a4%be-%e0%a4%95%e0%a4%a8%e0%a5%8c%e0%a4%a1%e0%a4%bf%e0%a4%af%e0%a4%be%e0%a4%95%e0%a5%8b', '', '', '2020-12-19 08:01:23', '2020-12-19 08:01:23', '', 0, 'http://wp.koselikhabar.com/?post_type=samachar&#038;p=64', 0, 'samachar', '', 0),
(65, 1, '2020-12-19 08:01:18', '2020-12-19 08:01:18', '', 'Mahalaxmi-Sugers-Pvt-Ltd', '', 'inherit', 'open', 'closed', '', 'mahalaxmi-sugers-pvt-ltd', '', '', '2020-12-19 08:01:18', '2020-12-19 08:01:18', '', 64, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/Mahalaxmi-Sugers-Pvt-Ltd.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-12-19 08:51:22', '2020-12-19 08:51:22', '', 'Ad created on December 19, 2020 8:51 am', '', 'publish', 'closed', 'closed', '', 'ad-created-on-december-19-2020-851-am', '', '', '2020-12-19 10:06:40', '2020-12-19 10:06:40', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=69', 0, 'advanced_ads', '', 0),
(70, 1, '2020-12-19 08:50:55', '2020-12-19 08:50:55', '', '89-800x100', '', 'inherit', 'open', 'closed', '', '89-800x100', '', '', '2020-12-19 08:50:55', '2020-12-19 08:50:55', '', 69, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/89-800x100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-12-19 09:02:35', '2020-12-19 09:02:35', '', 'Ad created on December 19, 2020 9:02 am', '', 'publish', 'closed', 'closed', '', 'ad-created-on-december-19-2020-902-am', '', '', '2020-12-19 10:13:26', '2020-12-19 10:13:26', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=72', 0, 'advanced_ads', '', 0),
(73, 1, '2020-12-19 09:02:13', '2020-12-19 09:02:13', '', '39-800x100', '', 'inherit', 'open', 'closed', '', '39-800x100', '', '', '2020-12-19 09:02:13', '2020-12-19 09:02:13', '', 72, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/39-800x100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-12-19 09:16:07', '2020-12-19 09:16:07', '', 'Ad created on December 19, 2020 9:16 am', '', 'publish', 'closed', 'closed', '', 'ad-created-on-december-19-2020-916-am', '', '', '2020-12-19 10:15:15', '2020-12-19 10:15:15', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=74', 0, 'advanced_ads', '', 0),
(75, 1, '2020-12-19 09:15:57', '2020-12-19 09:15:57', '', '1230X100-min_1-OK', '', 'inherit', 'open', 'closed', '', '1230x100-min_1-ok', '', '', '2020-12-19 09:15:57', '2020-12-19 09:15:57', '', 74, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/1230X100-min_1-OK.gif', 0, 'attachment', 'image/gif', 0),
(77, 1, '2020-12-19 09:19:53', '2020-12-19 09:19:53', '', 'dwtss1', '', 'inherit', 'open', 'closed', '', 'dwtss1', '', '', '2020-12-19 09:19:53', '2020-12-19 09:19:53', '', 0, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/dwtss1.gif', 0, 'attachment', 'image/gif', 0),
(78, 1, '2020-12-19 09:19:53', '2020-12-19 09:19:53', '', '250X250-min', '', 'inherit', 'open', 'closed', '', '250x250-min', '', '', '2020-12-19 09:19:53', '2020-12-19 09:19:53', '', 0, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/250X250-min.gif', 0, 'attachment', 'image/gif', 0),
(79, 1, '2020-12-19 09:21:32', '2020-12-19 09:21:32', '', 'Ad created on December 19, 2020 9:21 am', '', 'publish', 'closed', 'closed', '', 'ad-created-on-december-19-2020-921-am', '', '', '2020-12-19 09:45:13', '2020-12-19 09:45:13', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=79', 0, 'advanced_ads', '', 0),
(80, 1, '2020-12-19 09:22:44', '2020-12-19 09:22:44', '', 'IME', '', 'publish', 'closed', 'closed', '', 'ad-created-on-december-19-2020-922-am', '', '', '2020-12-19 09:35:15', '2020-12-19 09:35:15', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=80', 0, 'advanced_ads', '', 0),
(81, 1, '2020-12-19 09:25:39', '2020-12-19 09:25:39', '', 'Yamaha', '', 'publish', 'closed', 'closed', '', 'yamaha', '', '', '2020-12-19 09:35:49', '2020-12-19 09:35:49', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=81', 0, 'advanced_ads', '', 0),
(82, 1, '2020-12-19 09:29:49', '2020-12-19 09:29:49', '', '2_11', '', 'publish', 'closed', 'closed', '', 'ad-created-on-december-19-2020-929-am', '', '', '2020-12-19 09:35:59', '2020-12-19 09:35:59', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=82', 0, 'advanced_ads', '', 0),
(83, 1, '2020-12-19 09:29:39', '2020-12-19 09:29:39', '', '2_11', '', 'inherit', 'open', 'closed', '', '2_11', '', '', '2020-12-19 09:29:39', '2020-12-19 09:29:39', '', 82, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/2_11.gif', 0, 'attachment', 'image/gif', 0),
(89, 1, '2020-12-19 09:56:13', '2020-12-19 09:56:13', '', 'Top of post content', '', 'publish', 'closed', 'closed', '', 'top-of-post-content', '', '', '2020-12-19 09:57:14', '2020-12-19 09:57:14', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=89', 0, 'advanced_ads', '', 0),
(90, 1, '2020-12-19 09:58:01', '2020-12-19 09:58:01', '', 'top of content1', '', 'publish', 'closed', 'closed', '', 'ad-created-on-december-19-2020-958-am', '', '', '2020-12-19 09:58:20', '2020-12-19 09:58:20', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=90', 0, 'advanced_ads', '', 0),
(91, 1, '2020-12-19 09:57:53', '2020-12-19 09:57:53', '', '1074-800x100', '', 'inherit', 'open', 'closed', '', '1074-800x100', '', '', '2020-12-19 09:57:53', '2020-12-19 09:57:53', '', 90, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/1074-800x100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-12-19 10:12:28', '2020-12-19 10:12:28', '', 'Top single post ads', '', 'publish', 'closed', 'closed', '', 'top-single-post-ads', '', '', '2020-12-19 10:14:31', '2020-12-19 10:14:31', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=94', 0, 'advanced_ads', '', 0),
(98, 1, '2020-12-19 11:15:47', '2020-12-19 11:15:47', '', '483-200x100', '', 'inherit', 'open', 'closed', '', '483-200x100', '', '', '2020-12-19 11:15:47', '2020-12-19 11:15:47', '', 0, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/483-200x100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2020-12-19 11:21:12', '2020-12-19 11:21:12', '', 'side bar', '', 'publish', 'closed', 'closed', '', 'side-bar', '', '', '2020-12-19 11:21:22', '2020-12-19 11:21:22', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=100', 0, 'advanced_ads', '', 0),
(101, 1, '2020-12-19 11:22:27', '2020-12-19 11:22:27', '', 'side post ad 2', '', 'publish', 'closed', 'closed', '', 'side-post-ad-2', '', '', '2020-12-19 11:23:39', '2020-12-19 11:23:39', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=101', 0, 'advanced_ads', '', 0),
(103, 1, '2020-12-21 14:53:13', '2020-12-21 14:53:13', 'गायिका अञ्जु पन्तको स्वरमा समावेश ‘मैले रुँदा रुँदा आँसु पुछ्थ्यौं’ बोलको गीत सार्वजनिक भएको छ । हिराकाजी थापाको शब्दमा समावेश गीतमा नागेन्द्र श्रेष्ठको संगीत छ ।\r\n\r\nयो गीतको भिडियोमा आकाश श्रेष्ठ, समिक्षा पोखरेल, आलिसा बास्तोला लगायतका कलाकारको अभिनय छ । आफ्नी प्रेमिकाले धोका दिदा प्रेमीको जीवनमा आइपर्ने घटनाक्रमलाई यो भिडियोमा प्रस्तुत गरिएको छ ।\r\n\r\nगौरव गिरीको कोरियोग्राफी रहेको भिडियोमा उत्तम हुमागाँइको छायांकन, अनिल रानाको सम्पादन छ । भिडियोलाई हिराकाजीले नै निर्देशन गरेका हुन् ।\r\n\r\n&nbsp;', 'आकाश र समिक्षाको ‘मैले रुँदा’', '', 'publish', 'open', 'closed', '', '%e0%a4%86%e0%a4%95%e0%a4%be%e0%a4%b6-%e0%a4%b0-%e0%a4%b8%e0%a4%ae%e0%a4%bf%e0%a4%95%e0%a5%8d%e0%a4%b7%e0%a4%be%e0%a4%95%e0%a5%8b-%e0%a4%ae%e0%a5%88%e0%a4%b2%e0%a5%87-%e0%a4%b0%e0%a5%81', '', '', '2020-12-21 14:54:07', '2020-12-21 14:54:07', '', 0, 'http://wp.koselikhabar.com/?post_type=entertainment&#038;p=103', 0, 'entertainment', '', 0),
(104, 1, '2020-12-21 14:53:59', '2020-12-21 14:53:59', '', 'aakash-and-samikchya', '', 'inherit', 'open', 'closed', '', 'aakash-and-samikchya', '', '', '2020-12-21 14:53:59', '2020-12-21 14:53:59', '', 103, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/aakash-and-samikchya.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-12-21 14:54:01', '2020-12-21 14:54:01', '', 'ma-jun', '', 'inherit', 'open', 'closed', '', 'ma-jun', '', '', '2020-12-21 14:54:01', '2020-12-21 14:54:01', '', 103, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/ma-jun.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2020-12-21 14:54:54', '2020-12-21 14:54:54', 'गायिका प्रविशा अधिकारी र गायक सुरेश लामाको स्वरमा ‘म जुन बनिदिन्छु’ बोलको गीत सार्वजनिक भएको छ । यो गीतमा रंजित गजमेरको संगीत, गोपाल लोहारको शब्द छ ।\r\n\r\nयो गीतको भिडियोमा इन्जमम अली खान र जानकी थापालाई फिचरिङ गरिएको छ । रोहिया महर्जनको कोरियोग्राफी रहेको भिडियोमा दिर्घ गुरुङको छायांकन, विकास दाहालको सम्पादन छ । भिडियोमा श्याम लामा र काजी लिम्बुको निर्देशन छ ।', 'प्रविशा र सुरेशको ‘म जुन बनिदिन्छु’', '', 'publish', 'open', 'closed', '', '%e0%a4%aa%e0%a5%8d%e0%a4%b0%e0%a4%b5%e0%a4%bf%e0%a4%b6%e0%a4%be-%e0%a4%b0-%e0%a4%b8%e0%a5%81%e0%a4%b0%e0%a5%87%e0%a4%b6%e0%a4%95%e0%a5%8b-%e0%a4%ae-%e0%a4%9c%e0%a5%81%e0%a4%a8-%e0%a4%ac', '', '', '2020-12-23 09:07:29', '2020-12-23 09:07:29', '', 0, 'http://wp.koselikhabar.com/?post_type=entertainment&#038;p=106', 0, 'entertainment', '', 0),
(107, 1, '2020-12-21 14:57:06', '2020-12-21 14:57:06', '५ पुस, काठमाडौं । नेपाली खेलकुदको इतिहासमा बारेमा बिरलै लेखिएका छन् र लेखिएका विषयहरु पनि भेट्न कठिन छ । नेपाल खेलकुद कसरी सुरु भयो कुन खेलको इतिहास कस्तो छ भन्ने भेट्न मुस्किल छ ।\r\n\r\nयसै सन्दर्भमा अब नेपाली खेलुकदको डिभिजन अर्काइभ राखिने भएको छ ।\r\n\r\nनेपाल ओलम्पिक कमिटी एनओसी र नेपाल ओलम्पिक संग्राहलयको सहकरायमा नेपाली खेलकुदको डिजिटल अभिलेख प्रोजेक्ट २०२०-२०२१ सुरु भएको छ । आइतबार एनओसीले एक कार्यक्रमका बीच यसबारे सार्वजनिक गरेको हो ।\r\n\r\nयस प्रोजकेटले नेपाली खेलकुदमा दुरगामी प्रभाव रहने एनओसीको विश्वास छ ।\r\n\r\nएनओसीको अनुरोधमा अन्तर्राष्ट्रिय ओलम्पिक कमिटी अन्तर्गतको आईओसी ओलम्पिक सोलिडारिटी कार्यक्रम अन्तर्गत यो काम हुन लागेको हो । यसका लागि सोलिडारिटी कार्यक्रमले आर्थिक अनुदान प्रदान गरेको एनओसीले जनाएको छ ।\r\n\r\nयस कार्यक्रमका लागि नेपाल ओलम्पिक कमिटी र ओलम्पिक संग्राहलयबीच यसै वर्षको मार्चमा औपचारिक सम्झौता भएको थियो र अगष्टबाट काम समेत सुरु भइसकेको पनि एनओसीले जनाएको छ ।\r\n\r\n‘नेपाली खेलकुदको इतिहासमा यस्तो काम यति वृहतरूपमा पहिलो पल्ट हुन लागेको छ र यो नेपाली खेलकुदको इतिहास अभिलेखिकृत गरेर नयाँ पुस्ताका लागि हस्तानतरण गर्ने प्रयसा हुनेछ ।\r\n\r\n‘नेपाली खेलकुदको इतिहास अहिलेसम्म व्यवस्थित ढंगले समेट्ने प्रयास हुन नसकेको स्थितिमा यो प्राजेक्टले त्यसलाई परिपूर्ति गर्ने प्रयास हुनेछ,’ एनओसीले प्रेस विज्ञप्तिमा उल्लेख गरेको छ ।\r\n\r\nओलम्पिक संग्राहलयले नेपाली खेलकुदको सुरुआती अवस्थादेखि हालसम्मको खेलकुद गतिविधि, सहभागिता र उपलब्धिबारे अभिलेख राख्दै आएको छ । ती अभिलेखलाई अब ‘डिभिटल आर्काभ’ मा सुरक्षित गर्ने प्रयास हुने एनओसे जनाएको छ । यस्तै नेपालका खेलाडी र खेल संघबारे जानकारी संकलन गरिनेछ ।\r\n\r\n‘नेपालमा विभिन्न खेलको सुरुआत कसरी भयो, खेलकुद ऐनसंग सम्बन्धित दस्ताबेज, नेपाल ओलम्पिक कमिटी स्वंयको इतिहास, अन्तर्राष्ट्रिय प्रतियोगितामा नेपालको अहिलेसम्मको प्रदर्शनसँगै नेपाली खेलकुदसँग सम्बन्धित तस्वीर र भिडियोको संकलनको प्रयास पनि गरिनेछ । यसका लागि ओलम्पिकसंग आवद्ध खेललाई बढी प्राथमिकता दिइनेछ,’ विज्ञप्तिमा भनिएको छ ।\r\n\r\nयस कार्यक्रमको सफलताले नेपाली खेलकुदको इतिहासले ‘डिभिटल आर्काभ’का रूपमा एक निश्चित आकार लिनेछ र यो सबै नेपाली खेलकुदप्रति जिज्ञासुका लागि उपलब्ध हुने पनि एनओसीले जनाएको छ ।', 'अब नेपाली खेलकुदको डिजिटल अर्काइभ राखिने', '', 'publish', 'open', 'closed', '', '%e0%a4%85%e0%a4%ac-%e0%a4%a8%e0%a5%87%e0%a4%aa%e0%a4%be%e0%a4%b2%e0%a5%80-%e0%a4%96%e0%a5%87%e0%a4%b2%e0%a4%95%e0%a5%81%e0%a4%a6%e0%a4%95%e0%a5%8b-%e0%a4%a1%e0%a4%bf%e0%a4%9c%e0%a4%bf%e0%a4%9f', '', '', '2020-12-21 14:57:06', '2020-12-21 14:57:06', '', 0, 'http://wp.koselikhabar.com/?post_type=sports&#038;p=107', 0, 'sports', '', 0),
(108, 1, '2020-12-21 14:56:47', '2020-12-21 14:56:47', '', 'NOC', '', 'inherit', 'open', 'closed', '', 'noc', '', '', '2020-12-21 14:56:47', '2020-12-21 14:56:47', '', 107, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/NOC.gif', 0, 'attachment', 'image/gif', 0),
(109, 1, '2020-12-21 14:56:49', '2020-12-21 14:56:49', '', 'Cricket-Association-of-Nepal-CAN', '', 'inherit', 'open', 'closed', '', 'cricket-association-of-nepal-can', '', '', '2020-12-21 14:56:49', '2020-12-21 14:56:49', '', 107, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/Cricket-Association-of-Nepal-CAN.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 1, '2020-12-21 14:57:52', '2020-12-21 14:57:52', '५ पुस, काठमाडौं । आईसीसी विश्वकप लिग २ अन्तर्त ट्राई नेशन्स सिरिज खेल्नुअघि सिरिज गराउने तयारीमा नेपाल क्रिकेट संघ क्यान लागेको छ ।\r\n\r\nनेपालले आगामी वर्ष मार्चमा ओमानमा विश्वकप लिग २ अन्तर्गत सिरिज खेल्दैछ । जसमा नेपालसहित ओमान र अमेरिका छन् । लिग २ मा नेपालले खेल्न लागेको यो दोस्रो सिरिज हो ।\r\n\r\nयसअघि घरेलस मैदानमा फेब्रुअरीमा नेपालले यही दुई टिमसँग सिरिज खेलेको थियो । जसमा नेपालले अमेरिकालाई दुवै खेलमा हराएको थियो भने ओमानसंग दुवै खेलमा पराजित भएको थियो ।\r\n\r\n२०२० मै हुनुपर्ने सिरिजहरु कोभिडका कारण स्थगित भएपछि आईसीसीले नयाँतालिका सार्वजनिक गरेको हो । २०२० मै नेपालले अर्को एक सिरिज पनि खेल्नेछ । लिग २ अन्तर्गत मार्च १९ देखि २८ सम्म ओमानको अल अमरितमा नेपालले सिरिज खेल्नेछ । यस्तै जुलाईमा स्कटल्याण्ड र नामिबिया सम्मिलित सिरिज खेल्न नेपाल स्कटल्याण्ड जानेछ ।\r\n\r\nओमानमा गएर सिरिज खेल्नुअघि नेपाल क्रिकेट संघले तयारीस्वरुप एउटा सिरिज खेलाउने तयारी गरिरहेको क्यान अध्यक्ष चतुरबहादुर चन्दले बताए । ‘मार्चमा हुने सिरिजको तयारीका लागि एउटा सिरिज आयोजना गर्ने योजना हो । कम्तीमा हामीभन्दा बलियो कुनै ए टिम नै भए पनि बोलाए खेलाउने प्रयासका लागि लागिरहेका छौँ,’ क्यान अध्यक्ष चतुर बहादुर चन्दले अनलाइनखबुरसँग भने ।\r\n\r\n‘ओडीआई नेशन वा आफ्नै लेभलको टिमलाई ल्याएर ट्राई सिरिज वा दिपक्षिय सिरिज गर्ने प्रयास हो त्यो नभए पनि हामीभन्दा बलियो ए टिम ल्याउन प्रयास हुनेछ । त्यो भयो भने हाम्रो खेलाडीले पनि सिक्ने अवसर पाउनेछन् ।’\r\n\r\nकोभिडका कारण नेपालको घरेलु प्रतियोगिताहरु पनि प्रभावित बनेको छ । क्यानले गत मंसिर ११ गतेदेखि आधिकारिकरुपमा राष्ट्रिय टिमका खेलाडीलाई क्याम्पमा बोलाएर प्रशिक्षण सुरु गरेको थियो । तर चितवनमा मंसिर २७ देखि ३० सम्म भएको गौतम वुद्ध कपका लागि क्याम्पबाट खेलाडीहरु रिलिज गरेको थियो । अहिले खेलाडीहरु रेस्टमा छन् ।\r\n\r\nअब पीएम कप राष्ट्रिय प्रतियोगिता खेलेपछि मात्र खेलाडीहरु क्याम्पमा प्रशिक्षण गर्ने सम्भावना रहेको छ । क्यानले यसअघि यही पुष ११ बाट महिला र पुरुषको पीएमकप गराउने तयारी गरेको थियो । तर अब पहिला मिहलाको प्रतियोगिता गराएर अनी पुरुषको प्रतियोगिता गराउने क्यान अध्यक्ष चन्दले बताए ।\r\n\r\nक्यानले केही दिनअघि मात्रै अष्ट्रेलियन डेभ ह्वाटमोरलाई मुख्य प्रशिक्षकसमेत नियुक्त गरेको छ । उनको सम्झौता २०२१ जनवरी १ देखि लागू हुनेछ र उनी जनवरी पहिलो साताभित्रमा नेपाल आइसक्ने क्यानले जनाएको छ ।', 'विश्वकप लिग २ अघि सिरिज खेलाउने क्यानको तयारी', '', 'publish', 'open', 'closed', '', '%e0%a4%b5%e0%a4%bf%e0%a4%b6%e0%a5%8d%e0%a4%b5%e0%a4%95%e0%a4%aa-%e0%a4%b2%e0%a4%bf%e0%a4%97-%e0%a5%a8-%e0%a4%85%e0%a4%98%e0%a4%bf-%e0%a4%b8%e0%a4%bf%e0%a4%b0%e0%a4%bf%e0%a4%9c-%e0%a4%96%e0%a5%87', '', '', '2020-12-21 14:57:52', '2020-12-21 14:57:52', '', 0, 'http://wp.koselikhabar.com/?post_type=sports&#038;p=110', 0, 'sports', '', 0),
(116, 1, '2020-12-23 09:07:21', '2020-12-23 09:07:21', '', 'ma-jun', '', 'inherit', 'open', 'closed', '', 'ma-jun-2', '', '', '2020-12-23 09:07:21', '2020-12-23 09:07:21', '', 106, 'http://wp.koselikhabar.com/wp-content/uploads/2020/12/ma-jun-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2021-01-03 14:50:46', '2021-01-03 14:50:46', '३ पुस, काठमाडौं । पछिल्लो २४ घण्टामा नेपालमा ७८२ जनामा कोरोना भाइरस संक्रमण पुष्टि भएको छ ।\n\nस्वास्थ्य तथा जनसंख्या मन्त्रालयका अनुसार ५७०६ जनाको परीक्षणमा ४७७ जना पुरुष र ३०५ जना महिलामा कोरोना भाइरस संक्रमण पुष्टि भएको हो ।\n\nयोसँगै नेपालमा कोरोना भाइरस संक्रमितको कुल संख्या २ लाख ५२ हजार ४७४ पुगेको छ छ । पछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणमुक्त हुनेको संख्या १०२९ रहेको छ ।\n\nहालसम्म संक्रमणमुक्त हुनेको संख्या २ लाख ४१ हजार ३९२ रहेको छ । हाल नेपालमा कोरोना भाइरसको सक्रिय संक्रमितको संख्या ९३१७ रहेको छ ।\n\nपछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणका कारण १६ जनाको मृत्यु भएको मन्त्रालयले जनाएको छ । हालसम्म मृत्यु हुनेको संख्या १७६५ रहेको छ ।', '५७०६ जनाको परीक्षणमा ७८२ जनामा कोरोना संक्रमण पुष्टि', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2021-01-03 14:50:46', '2021-01-03 14:50:46', '', 56, 'http://wp.koselikhabar.com/2021/01/03/56-autosave-v1/', 0, 'revision', '', 0),
(120, 1, '2021-01-03 14:51:51', '2021-01-03 14:51:51', '३ पुस, काठमाडौं । पछिल्लो २४ घण्टामा नेपालमा ७८२ जनामा कोरोना भाइरस संक्रमण पुष्टि भएको छ ।\r\n\r\nस्वास्थ्य तथा जनसंख्या मन्त्रालयका अनुसार ५७०६ जनाको परीक्षणमा ४७७ जना पुरुष र ३०५ जना महिलामा कोरोना भाइरस संक्रमण पुष्टि भएको हो ।\r\n\r\nयोसँगै नेपालमा कोरोना भाइरस संक्रमितको कुल संख्या २ लाख ५२ हजार ४७४ पुगेको छ छ । पछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणमुक्त हुनेको संख्या १०२९ रहेको छ ।\r\n\r\nहालसम्म संक्रमणमुक्त हुनेको संख्या २ लाख ४१ हजार ३९२ रहेको छ । हाल नेपालमा कोरोना भाइरसको सक्रिय संक्रमितको संख्या ९३१७ रहेको छ ।\r\n\r\nपछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणका कारण १६ जनाको मृत्यु भएको मन्त्रालयले जनाएको छ । हालसम्म मृत्यु हुनेको संख्या १७६५ रहेको छ ।', '५७०६ जनाको परीक्षणमा ७८२ जनामा कोरोना संक्रमण पुष्टि', '', 'publish', 'open', 'open', '', '%e0%a5%ab%e0%a5%ad%e0%a5%a6%e0%a5%ac-%e0%a4%9c%e0%a4%a8%e0%a4%be%e0%a4%95%e0%a5%8b-%e0%a4%aa%e0%a4%b0%e0%a5%80%e0%a4%95%e0%a5%8d%e0%a4%b7%e0%a4%a3%e0%a4%ae%e0%a4%be-%e0%a5%ad%e0%a5%ae%e0%a5%a8', '', '', '2021-01-06 14:42:07', '2021-01-06 14:42:07', '', 0, 'http://wp.koselikhabar.com/?p=120', 0, 'post', '', 0),
(121, 1, '2021-01-03 14:51:51', '2021-01-03 14:51:51', '३ पुस, काठमाडौं । पछिल्लो २४ घण्टामा नेपालमा ७८२ जनामा कोरोना भाइरस संक्रमण पुष्टि भएको छ ।\r\n\r\nस्वास्थ्य तथा जनसंख्या मन्त्रालयका अनुसार ५७०६ जनाको परीक्षणमा ४७७ जना पुरुष र ३०५ जना महिलामा कोरोना भाइरस संक्रमण पुष्टि भएको हो ।\r\n\r\nयोसँगै नेपालमा कोरोना भाइरस संक्रमितको कुल संख्या २ लाख ५२ हजार ४७४ पुगेको छ छ । पछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणमुक्त हुनेको संख्या १०२९ रहेको छ ।\r\n\r\nहालसम्म संक्रमणमुक्त हुनेको संख्या २ लाख ४१ हजार ३९२ रहेको छ । हाल नेपालमा कोरोना भाइरसको सक्रिय संक्रमितको संख्या ९३१७ रहेको छ ।\r\n\r\nपछिल्लो २४ घण्टामा कोरोना भाइरस संक्रमणका कारण १६ जनाको मृत्यु भएको मन्त्रालयले जनाएको छ । हालसम्म मृत्यु हुनेको संख्या १७६५ रहेको छ ।', '५७०६ जनाको परीक्षणमा ७८२ जनामा कोरोना संक्रमण पुष्टि', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2021-01-03 14:51:51', '2021-01-03 14:51:51', '', 120, 'http://wp.koselikhabar.com/2021/01/03/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2021-01-03 14:52:29', '2021-01-03 14:52:29', '३ पुस, काठमाडौं । संस्कृति पर्यटन तथा नागरिक उड्ययनमन्त्री योगेश भट्टराईले सन् २०२१ लाई आन्तरिक पर्यटन भ्रमण वर्षका रुपमा जोड दिने बताएका छन् । सोही कारण दुई दिन सार्वजनिक बिदाको अवधारणा ल्याइएको उनले उल्लेख गरे ।\r\n\r\nनिजामती कर्मचारीहरुको आधिकारिक ट्रेड युनियन केन्द्रीय कार्यसमितिले शुक्रबार आयोजना गरेको ‘पर्यटनमा कोभिड-१९ को प्रभाव र भावी कार्यदिशा’ विषयक गोष्ठीलाई सम्बोधन गर्दै मन्त्री भट्टराईले औपचारिक घोषणा नभए पनि सन् २०२१ नेपालका लागि आन्तरिक भ्रमण वर्ष भएको उल्लेख गरे ।\r\n\r\nआन्तरिक पर्यटनमा टेवा दिन मन्त्रालयले सातामा दुई दिन सार्वजनिक बिदाको अवधारणा ल्याएको उनको भनाइ छ । नेपालको अर्थतन्त्रमा वार्षिक ८० अर्ब रुपैयाँ विदेशी मुद्रा आर्जनमा योगदान गर्दै आएको पर्यटन क्षेत्रमा कोभिड-१९ को महामारीको सबैभन्दा ठूलो मार परेको भन्दै उनले तत्काल ठूलो मात्रामा पर्यटक नआउने अवस्थामा आन्तरिक घुमफिरलाई प्रवर्द्धन गर्न खोजिएको बताए ।\r\n\r\n‘अब बल्ल कोरोना भाइरसविरुद्धको खोप प्रयोगमा आउन सुरु भएको छ, खोप सुरु भए पनि अझै एक वर्ष ठूलो मात्रामा विदेशी पर्यटक आइहाल्ने अवस्था छैन,’ उनले भने, ‘यो समयमा नेपालको पर्यटन बजारलाई मर्न नदिन आन्तरिक पर्यटन प्रवर्द्धन गर्नुपर्छ ।’\r\n\r\nदुई दिने बिदाको अवधारणामा विज्ञहरुसँग अझै छलफल र परामर्श जारी रहेको उनले बताए । यो निर्णय भइसकेको विषय नभएको र छलफल जारी रहेको उनको भनाइ छ । सबै पक्षको राय लिएर मात्र सरकारले निर्णय गर्ने उनको भनाइ छ । तर, कुनै पनि अवधारणा हिजो असफल भयो भनेकै आधारमा आज पनि असफल हुन्छ भन्ने नसोच्न समेत उनले आग्रह गरे । ‘हिजो असफल भयो होला तर त्यहि कुरा समय र परिस्थिति बदलिदै जाँदा सफल पनि हुन्छ,’ उनले भने ।\r\n\r\nमहामारीका कारण एक वर्ष सम्म वन्दावन्दीको अवस्थामा रहँदा मानिसमा उकुस-मुकुस भएकाले अर्को वर्ष नेपालमा पर्यटनको बाँध फुट्न सक्ने उनको अपेक्षा छ ।\r\n\r\nकोभिड १९ को महामारीका सन्दर्भमा सरकारले केहि गरेन भनेर बाहिर सरकारको आलोचना हुने गरेको सन्दर्भ उल्लेख गर्दै मन्त्री भट्टराईले कुनै पनि देशको साधन, स्रोत कति थियो र त्यसको परिचालन कति भयो भन्ने कोणबाट परिणाम खोज्नु पर्ने बताए ।', '२०२१ लाई आन्तरिक भ्रमण वर्ष मनाउन २ दिन बिदाको अवधारणा : पर्यटनमन्त्री', '', 'publish', 'open', 'open', '', '%e0%a5%a8%e0%a5%a6%e0%a5%a8%e0%a5%a7-%e0%a4%b2%e0%a4%be%e0%a4%88-%e0%a4%86%e0%a4%a8%e0%a5%8d%e0%a4%a4%e0%a4%b0%e0%a4%bf%e0%a4%95-%e0%a4%ad%e0%a5%8d%e0%a4%b0%e0%a4%ae%e0%a4%a3-%e0%a4%b5%e0%a4%b0', '', '', '2021-01-03 14:52:29', '2021-01-03 14:52:29', '', 0, 'http://wp.koselikhabar.com/?p=122', 0, 'post', '', 0),
(123, 1, '2021-01-03 14:52:29', '2021-01-03 14:52:29', '३ पुस, काठमाडौं । संस्कृति पर्यटन तथा नागरिक उड्ययनमन्त्री योगेश भट्टराईले सन् २०२१ लाई आन्तरिक पर्यटन भ्रमण वर्षका रुपमा जोड दिने बताएका छन् । सोही कारण दुई दिन सार्वजनिक बिदाको अवधारणा ल्याइएको उनले उल्लेख गरे ।\r\n\r\nनिजामती कर्मचारीहरुको आधिकारिक ट्रेड युनियन केन्द्रीय कार्यसमितिले शुक्रबार आयोजना गरेको ‘पर्यटनमा कोभिड-१९ को प्रभाव र भावी कार्यदिशा’ विषयक गोष्ठीलाई सम्बोधन गर्दै मन्त्री भट्टराईले औपचारिक घोषणा नभए पनि सन् २०२१ नेपालका लागि आन्तरिक भ्रमण वर्ष भएको उल्लेख गरे ।\r\n\r\nआन्तरिक पर्यटनमा टेवा दिन मन्त्रालयले सातामा दुई दिन सार्वजनिक बिदाको अवधारणा ल्याएको उनको भनाइ छ । नेपालको अर्थतन्त्रमा वार्षिक ८० अर्ब रुपैयाँ विदेशी मुद्रा आर्जनमा योगदान गर्दै आएको पर्यटन क्षेत्रमा कोभिड-१९ को महामारीको सबैभन्दा ठूलो मार परेको भन्दै उनले तत्काल ठूलो मात्रामा पर्यटक नआउने अवस्थामा आन्तरिक घुमफिरलाई प्रवर्द्धन गर्न खोजिएको बताए ।\r\n\r\n‘अब बल्ल कोरोना भाइरसविरुद्धको खोप प्रयोगमा आउन सुरु भएको छ, खोप सुरु भए पनि अझै एक वर्ष ठूलो मात्रामा विदेशी पर्यटक आइहाल्ने अवस्था छैन,’ उनले भने, ‘यो समयमा नेपालको पर्यटन बजारलाई मर्न नदिन आन्तरिक पर्यटन प्रवर्द्धन गर्नुपर्छ ।’\r\n\r\nदुई दिने बिदाको अवधारणामा विज्ञहरुसँग अझै छलफल र परामर्श जारी रहेको उनले बताए । यो निर्णय भइसकेको विषय नभएको र छलफल जारी रहेको उनको भनाइ छ । सबै पक्षको राय लिएर मात्र सरकारले निर्णय गर्ने उनको भनाइ छ । तर, कुनै पनि अवधारणा हिजो असफल भयो भनेकै आधारमा आज पनि असफल हुन्छ भन्ने नसोच्न समेत उनले आग्रह गरे । ‘हिजो असफल भयो होला तर त्यहि कुरा समय र परिस्थिति बदलिदै जाँदा सफल पनि हुन्छ,’ उनले भने ।\r\n\r\nमहामारीका कारण एक वर्ष सम्म वन्दावन्दीको अवस्थामा रहँदा मानिसमा उकुस-मुकुस भएकाले अर्को वर्ष नेपालमा पर्यटनको बाँध फुट्न सक्ने उनको अपेक्षा छ ।\r\n\r\nकोभिड १९ को महामारीका सन्दर्भमा सरकारले केहि गरेन भनेर बाहिर सरकारको आलोचना हुने गरेको सन्दर्भ उल्लेख गर्दै मन्त्री भट्टराईले कुनै पनि देशको साधन, स्रोत कति थियो र त्यसको परिचालन कति भयो भन्ने कोणबाट परिणाम खोज्नु पर्ने बताए ।', '२०२१ लाई आन्तरिक भ्रमण वर्ष मनाउन २ दिन बिदाको अवधारणा : पर्यटनमन्त्री', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-01-03 14:52:29', '2021-01-03 14:52:29', '', 122, 'http://wp.koselikhabar.com/2021/01/03/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2021-01-03 14:52:36', '2021-01-03 14:52:36', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता झलनाथ खनालले पार्टी विधि र पद्दतिमा चले आफ्नो जित हुने बताएका छन् । पेरिसडाडाँमा शुक्रबार आयोजित कार्यक्रममा नेता खनालले पार्टी एकीकरण भएबाटै विधि र पद्दतिमा चल्न छोडेको बताए ।\n\n‘पार्टी एकता ऐतिहासिक काम थियो । हामी उत्साहित र खुशी भयौं । तर, एकतालाई व्यक्तिगत लाभका नाममा दुरुपयोग गर्ने प्रयत्न भयो’, खनालले भने । उनले पार्टी एकता एकीकरणको सुरुबाटै अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीले मनपरी गर्न थालेको बताए । बदमासी र मनपरीकै कारण अहिले पार्टीमा संकट देखिएको खनालको भनाइ थियो ।\n\nअहिले व्यक्तिगत लाभका लागि राज्यसत्ताको चरम दुरुपयोग भएको उनले बताए । ओली पार्टी र सरकार दुवैतर्फ असफल भएकाले नयाँनयाँ संकट आउने गरेको खनालले टिप्पणी गरे । उनले अहिले पार्टीमा पदका लागि नभएर विधि र पद्दतिका लागि बहस भइरहेको बताए ।\n\n‘कतिपयले पद पाउनु असन्तुष्टि भन्ने टिप्पणी गरेको सुन्छु । तर, त्यस्तो होइन । नेकपा विधि र पद्दतिमा हिडेँ हाम्रो जित हुनेछ’, खनालको भनाइ थियो । पेरिसडाडाँमा कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्ड र वरिष्ठ नेता माधवकुमार नेपाल निकट प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्धि केन्द्रीय सदस्यहरु सहभागी थिए । भेलालाई प्रचण्ड, नेपाल र खनालले सम्बोधन गरेका थिए ।', 'पार्टी विधि र पद्दतिले चले हाम्रो जित : झलनाथ खनाल', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2021-01-03 14:52:36', '2021-01-03 14:52:36', '', 52, 'http://wp.koselikhabar.com/2021/01/03/52-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2021-01-03 14:52:57', '2021-01-03 14:52:57', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता झलनाथ खनालले पार्टी विधि र पद्दतिमा चले आफ्नो जित हुने बताएका छन् । पेरिसडाडाँमा शुक्रबार आयोजित कार्यक्रममा नेता खनालले पार्टी एकीकरण भएबाटै विधि र पद्दतिमा चल्न छोडेको बताए ।\r\n\r\n‘पार्टी एकता ऐतिहासिक काम थियो । हामी उत्साहित र खुशी भयौं । तर, एकतालाई व्यक्तिगत लाभका नाममा दुरुपयोग गर्ने प्रयत्न भयो’, खनालले भने । उनले पार्टी एकता एकीकरणको सुरुबाटै अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीले मनपरी गर्न थालेको बताए । बदमासी र मनपरीकै कारण अहिले पार्टीमा संकट देखिएको खनालको भनाइ थियो ।\r\n\r\nअहिले व्यक्तिगत लाभका लागि राज्यसत्ताको चरम दुरुपयोग भएको उनले बताए । ओली पार्टी र सरकार दुवैतर्फ असफल भएकाले नयाँनयाँ संकट आउने गरेको खनालले टिप्पणी गरे । उनले अहिले पार्टीमा पदका लागि नभएर विधि र पद्दतिका लागि बहस भइरहेको बताए ।\r\n\r\n‘कतिपयले पद पाउनु असन्तुष्टि भन्ने टिप्पणी गरेको सुन्छु । तर, त्यस्तो होइन । नेकपा विधि र पद्दतिमा हिडेँ हाम्रो जित हुनेछ’, खनालको भनाइ थियो । पेरिसडाडाँमा कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्ड र वरिष्ठ नेता माधवकुमार नेपाल निकट प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्धि केन्द्रीय सदस्यहरु सहभागी थिए । भेलालाई प्रचण्ड, नेपाल र खनालले सम्बोधन गरेका थिए ।', 'पार्टी विधि र पद्दतिले चले हाम्रो जित : झलनाथ खनाल', '', 'publish', 'open', 'open', '', '%e0%a4%aa%e0%a4%be%e0%a4%b0%e0%a5%8d%e0%a4%9f%e0%a5%80-%e0%a4%b5%e0%a4%bf%e0%a4%a7%e0%a4%bf-%e0%a4%b0-%e0%a4%aa%e0%a4%a6%e0%a5%8d%e0%a4%a6%e0%a4%a4%e0%a4%bf%e0%a4%b2%e0%a5%87-%e0%a4%9a%e0%a4%b2', '', '', '2021-01-03 14:52:57', '2021-01-03 14:52:57', '', 0, 'http://wp.koselikhabar.com/?p=125', 0, 'post', '', 0),
(126, 1, '2021-01-03 14:52:57', '2021-01-03 14:52:57', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता झलनाथ खनालले पार्टी विधि र पद्दतिमा चले आफ्नो जित हुने बताएका छन् । पेरिसडाडाँमा शुक्रबार आयोजित कार्यक्रममा नेता खनालले पार्टी एकीकरण भएबाटै विधि र पद्दतिमा चल्न छोडेको बताए ।\r\n\r\n‘पार्टी एकता ऐतिहासिक काम थियो । हामी उत्साहित र खुशी भयौं । तर, एकतालाई व्यक्तिगत लाभका नाममा दुरुपयोग गर्ने प्रयत्न भयो’, खनालले भने । उनले पार्टी एकता एकीकरणको सुरुबाटै अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीले मनपरी गर्न थालेको बताए । बदमासी र मनपरीकै कारण अहिले पार्टीमा संकट देखिएको खनालको भनाइ थियो ।\r\n\r\nअहिले व्यक्तिगत लाभका लागि राज्यसत्ताको चरम दुरुपयोग भएको उनले बताए । ओली पार्टी र सरकार दुवैतर्फ असफल भएकाले नयाँनयाँ संकट आउने गरेको खनालले टिप्पणी गरे । उनले अहिले पार्टीमा पदका लागि नभएर विधि र पद्दतिका लागि बहस भइरहेको बताए ।\r\n\r\n‘कतिपयले पद पाउनु असन्तुष्टि भन्ने टिप्पणी गरेको सुन्छु । तर, त्यस्तो होइन । नेकपा विधि र पद्दतिमा हिडेँ हाम्रो जित हुनेछ’, खनालको भनाइ थियो । पेरिसडाडाँमा कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्ड र वरिष्ठ नेता माधवकुमार नेपाल निकट प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्धि केन्द्रीय सदस्यहरु सहभागी थिए । भेलालाई प्रचण्ड, नेपाल र खनालले सम्बोधन गरेका थिए ।', 'पार्टी विधि र पद्दतिले चले हाम्रो जित : झलनाथ खनाल', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2021-01-03 14:52:57', '2021-01-03 14:52:57', '', 125, 'http://wp.koselikhabar.com/2021/01/03/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2021-01-03 14:53:25', '2021-01-03 14:53:25', '३ पुस, काठमाडौं । प्रमुख विपक्षी नेपाली कांग्रेसले सरकारको निगरानीका लागि गठन गरेको ‘छाँया सरकार’माथि पार्टीभित्रै प्रश्न उठेको छ ।\r\n\r\n‘सरकार भन्दा छाँया सरकार अझ लाचार’ भएको भन्दै नेताहरुले नेतृत्वसमक्ष छाँया सरकार हेरफेरको माग राखेका छन् ।\r\n\r\n&nbsp;\r\n\r\nसंघीय संसदको हिउँदे अधिवेशनको पूर्वसन्ध्यामा कांग्रेसले शुक्रबार बोलाएको संसदीय दल कार्यसमितिको बैठकमा केही सांसदहरुले छाँया सरकारकै आलोचना गरे ।\r\n\r\n‘देशमा प्रतिपक्षी पनि छ र ?’ भन्दै आम नागरिकले प्रश्न गर्न थालेको उल्लेख सांसद दिव्यमणि राजभण्डारीले छाँया सरकार हेरफेर गर्नुपर्ने बताए । उनको मागमा अन्य सांसदहरुले पनि समर्थन जनाए ।\r\n\r\nबैठकपछि नेता राजभण्डारीले अनलाइनखबरसंग भने, ‘बैठकमा छाँया सरकारको कुरा उठ्यो । त्यसपछि मैले छाँया सरकारमा हुनेहरु जिम्मेवार हुनुपर्यो । काम गर्न सक्नुपर्‍यो । काम गर्न नसके छोड्नुपर्‍यो भनेको हुँ ।’\r\n\r\nकांग्रेसले एउटा मन्त्रालय तीन जनासम्म सांसदलाई जिम्मा दिएर ६ जेठ ०७६ मा २५ सदस्यीय छाँया सरकार घोषणा गरेको थियो । तर, छाँया मन्त्रीहरुले हालसम्म के गरे, प्रगति के छ भनेर पार्टीमा समिक्षा हुन नसकेको नेता राजभण्डारीले बताए । उनको प्रश्न छ, ‘छाँया मन्त्री भएर संसदमा कम जाने, विदेश घुमेर बस्ने, अनि अरु माथि मात्रै प्रश्न उठाएर हुन्छ ?’\r\n\r\nकांग्रेस नेता प्रकाशमान सिंहले ‘कुन कुन छाँया मन्त्रीले के के गर्नुभयो त्यो सेयर गर्नुपर्‍यो र आवश्यक परे जिम्मेवारी हेरफर गर्नुपर्‍यो  ।’\r\n\r\nबैठकमा सहभागी नेताहरुका अनुसार छाँया सरकारको काम कारबाहीमाथि प्रश्न उठेपछि कांग्रेस संसदीय दलका प्रमुख सचेतक बालकृष्ण खाँडले छाँया मन्त्रीहरुको कामको समीक्षा हुने बताएका छन् ।\r\n\r\n‘छलफल गर्दै गरौं, छाँया मन्त्रीको रिपोर्ट नै मागेर छलफल गर्न पनि सकिन्छ’ खाँडको भनाइ उद्धृत गर्दै एक नेताले भने ।\r\n\r\nसभापति शेरबहादुर देउवा छाँया सरकारको काम कारबाहीमाथि उठेको प्रश्नबारे मौन रहेको नेताहरुले बताएका छन् । ‘खाँडजीले जवाफ दिएपछि सभापति चुप रहनुभयो । यो बेला पार्टीभित्रकै कुरा गर्ने बेला होइन भन्ने उहाँको आशय रहेको मैले बुझेको छु’ ती नेताले भने ।\r\n\r\nकांग्रेसद्वारा गठित छाँया सरकारमा गृह मन्त्रालय दिलेन्द्रप्रसाद बडू, अर्थ मिनेन्द्र रिजाल, रक्षा भीमसेनदास प्रधान, परराष्ट्र नारायण खड्का, ऊर्जा ज्ञानेन्द्रबहादुर खड्का, शहरी विकास उमाकान्त चौधरी, उद्योग मीन विश्वकर्मा, खेलकुद किशोर सिंह राठौर, शिक्षा गगन थापा, खानेपानी सुजाता परियार, स्वास्थ्य पार्वती डिसी चौधरी, पर्यटन मन्त्रालयको जिम्मा देवेन्द्र कँडेलले पाएका थिए ।\r\n\r\nयसैगरी, छाँया सरकारको श्रम, रोजगार तथा सामाजिक सुरक्षाको डिला संग्रौला, सञ्चार तथा सूचना प्रविधिमा बहादुरसिंह लामा, भूमिसुधार लक्ष्मी परियार, संघीय मामिला तथा सामान्य प्रशासन अतहर कमाल मुसलमान, कृषिको पद्मनारायण चौधरी, महिला, बालबालिका तथा ज्येष्ठ नागरिक उमा रेग्मी, वन तथा वातावरण राजेन्द्र केसी, कानुन तथा संसदीय मामिला राधेश्याम अधिकारी, भौतिक पूर्वाधार तथा यातायात मन्त्रालयको जिम्मा सञ्जयकुमार गौतमले पाएका थिए ।\r\n\r\nउनीहरुलाई सरकारका सम्बन्धित मन्त्रालयका मन्त्रीले गरिरहेका काम कस्ता छन् भन्ने सुक्ष्म अध्ययन र विश्लेषण गरी गलत काम गरे सच्याउन खबरदारी गर्ने जिम्मेवारी दिइएको छ ।\r\n\r\n<strong>छाँया सरकारले अवसर गुमायो</strong>\r\n\r\nपाटन संयुक्त क्याम्पसका राजनीतिक शास्त्रका उपप्रध्यापक विष्णु दाहाल कांग्रेसको छाँया सरकार कामविहीन, भूमिकाविहीन भएको बताउँछन् ।\r\n\r\n‘सरकारका गलत कामको खबरदारी गरेर सच्याउने भन्दा सरकार गलत गरिरहोस्, सरकार अर्कमण्य होस्, कामै नगरोस् र त्यसका आधारमा नेकपाको जनमत जाला र आफू सरकारमा आउँला भन्ने कांग्रेसको नीति देखिन्छ । त्यसको प्रभाव छाँया सरकारमा परेको हो’ उनले भने ।\r\n\r\nसरकारको काम कुन रफ्तारमा छ त्यसमा प्रतिस्पर्धा गर्नेगरी आफूलाई विकास गर्ने अभ्यास विभिन्न देशमा आफूले पाएको उल्लेख गर्दै उनले नेपालमा त्यसको ठीक उल्टो अभ्यास भएको बताए ।\r\n\r\n‘छाँया सरकारलाई पनि अवसर थियो, डाटामा जान सकेको भए, सरकारले यहाँ गलत गर्यो, हुनुपर्ने यस्तो थियो भनेर भन्न सकेको भए’ दाहाल भन्छन्, ‘जस्तो सरकार उस्तै छाँया सरकार भयो ।’', 'कांग्रेसभित्र उठ्यो छाँया सरकार हेरफेरको माग', '', 'publish', 'open', 'open', '', '%e0%a4%95%e0%a4%be%e0%a4%82%e0%a4%97%e0%a5%8d%e0%a4%b0%e0%a5%87%e0%a4%b8%e0%a4%ad%e0%a4%bf%e0%a4%a4%e0%a5%8d%e0%a4%b0-%e0%a4%89%e0%a4%a0%e0%a5%8d%e0%a4%af%e0%a5%8b-%e0%a4%9b%e0%a4%be%e0%a4%81%e0%a4%af', '', '', '2021-01-03 14:53:25', '2021-01-03 14:53:25', '', 0, 'http://wp.koselikhabar.com/?p=127', 0, 'post', '', 0),
(128, 1, '2021-01-03 14:53:25', '2021-01-03 14:53:25', '३ पुस, काठमाडौं । प्रमुख विपक्षी नेपाली कांग्रेसले सरकारको निगरानीका लागि गठन गरेको ‘छाँया सरकार’माथि पार्टीभित्रै प्रश्न उठेको छ ।\r\n\r\n‘सरकार भन्दा छाँया सरकार अझ लाचार’ भएको भन्दै नेताहरुले नेतृत्वसमक्ष छाँया सरकार हेरफेरको माग राखेका छन् ।\r\n\r\n&nbsp;\r\n\r\nसंघीय संसदको हिउँदे अधिवेशनको पूर्वसन्ध्यामा कांग्रेसले शुक्रबार बोलाएको संसदीय दल कार्यसमितिको बैठकमा केही सांसदहरुले छाँया सरकारकै आलोचना गरे ।\r\n\r\n‘देशमा प्रतिपक्षी पनि छ र ?’ भन्दै आम नागरिकले प्रश्न गर्न थालेको उल्लेख सांसद दिव्यमणि राजभण्डारीले छाँया सरकार हेरफेर गर्नुपर्ने बताए । उनको मागमा अन्य सांसदहरुले पनि समर्थन जनाए ।\r\n\r\nबैठकपछि नेता राजभण्डारीले अनलाइनखबरसंग भने, ‘बैठकमा छाँया सरकारको कुरा उठ्यो । त्यसपछि मैले छाँया सरकारमा हुनेहरु जिम्मेवार हुनुपर्यो । काम गर्न सक्नुपर्‍यो । काम गर्न नसके छोड्नुपर्‍यो भनेको हुँ ।’\r\n\r\nकांग्रेसले एउटा मन्त्रालय तीन जनासम्म सांसदलाई जिम्मा दिएर ६ जेठ ०७६ मा २५ सदस्यीय छाँया सरकार घोषणा गरेको थियो । तर, छाँया मन्त्रीहरुले हालसम्म के गरे, प्रगति के छ भनेर पार्टीमा समिक्षा हुन नसकेको नेता राजभण्डारीले बताए । उनको प्रश्न छ, ‘छाँया मन्त्री भएर संसदमा कम जाने, विदेश घुमेर बस्ने, अनि अरु माथि मात्रै प्रश्न उठाएर हुन्छ ?’\r\n\r\nकांग्रेस नेता प्रकाशमान सिंहले ‘कुन कुन छाँया मन्त्रीले के के गर्नुभयो त्यो सेयर गर्नुपर्‍यो र आवश्यक परे जिम्मेवारी हेरफर गर्नुपर्‍यो  ।’\r\n\r\nबैठकमा सहभागी नेताहरुका अनुसार छाँया सरकारको काम कारबाहीमाथि प्रश्न उठेपछि कांग्रेस संसदीय दलका प्रमुख सचेतक बालकृष्ण खाँडले छाँया मन्त्रीहरुको कामको समीक्षा हुने बताएका छन् ।\r\n\r\n‘छलफल गर्दै गरौं, छाँया मन्त्रीको रिपोर्ट नै मागेर छलफल गर्न पनि सकिन्छ’ खाँडको भनाइ उद्धृत गर्दै एक नेताले भने ।\r\n\r\nसभापति शेरबहादुर देउवा छाँया सरकारको काम कारबाहीमाथि उठेको प्रश्नबारे मौन रहेको नेताहरुले बताएका छन् । ‘खाँडजीले जवाफ दिएपछि सभापति चुप रहनुभयो । यो बेला पार्टीभित्रकै कुरा गर्ने बेला होइन भन्ने उहाँको आशय रहेको मैले बुझेको छु’ ती नेताले भने ।\r\n\r\nकांग्रेसद्वारा गठित छाँया सरकारमा गृह मन्त्रालय दिलेन्द्रप्रसाद बडू, अर्थ मिनेन्द्र रिजाल, रक्षा भीमसेनदास प्रधान, परराष्ट्र नारायण खड्का, ऊर्जा ज्ञानेन्द्रबहादुर खड्का, शहरी विकास उमाकान्त चौधरी, उद्योग मीन विश्वकर्मा, खेलकुद किशोर सिंह राठौर, शिक्षा गगन थापा, खानेपानी सुजाता परियार, स्वास्थ्य पार्वती डिसी चौधरी, पर्यटन मन्त्रालयको जिम्मा देवेन्द्र कँडेलले पाएका थिए ।\r\n\r\nयसैगरी, छाँया सरकारको श्रम, रोजगार तथा सामाजिक सुरक्षाको डिला संग्रौला, सञ्चार तथा सूचना प्रविधिमा बहादुरसिंह लामा, भूमिसुधार लक्ष्मी परियार, संघीय मामिला तथा सामान्य प्रशासन अतहर कमाल मुसलमान, कृषिको पद्मनारायण चौधरी, महिला, बालबालिका तथा ज्येष्ठ नागरिक उमा रेग्मी, वन तथा वातावरण राजेन्द्र केसी, कानुन तथा संसदीय मामिला राधेश्याम अधिकारी, भौतिक पूर्वाधार तथा यातायात मन्त्रालयको जिम्मा सञ्जयकुमार गौतमले पाएका थिए ।\r\n\r\nउनीहरुलाई सरकारका सम्बन्धित मन्त्रालयका मन्त्रीले गरिरहेका काम कस्ता छन् भन्ने सुक्ष्म अध्ययन र विश्लेषण गरी गलत काम गरे सच्याउन खबरदारी गर्ने जिम्मेवारी दिइएको छ ।\r\n\r\n<strong>छाँया सरकारले अवसर गुमायो</strong>\r\n\r\nपाटन संयुक्त क्याम्पसका राजनीतिक शास्त्रका उपप्रध्यापक विष्णु दाहाल कांग्रेसको छाँया सरकार कामविहीन, भूमिकाविहीन भएको बताउँछन् ।\r\n\r\n‘सरकारका गलत कामको खबरदारी गरेर सच्याउने भन्दा सरकार गलत गरिरहोस्, सरकार अर्कमण्य होस्, कामै नगरोस् र त्यसका आधारमा नेकपाको जनमत जाला र आफू सरकारमा आउँला भन्ने कांग्रेसको नीति देखिन्छ । त्यसको प्रभाव छाँया सरकारमा परेको हो’ उनले भने ।\r\n\r\nसरकारको काम कुन रफ्तारमा छ त्यसमा प्रतिस्पर्धा गर्नेगरी आफूलाई विकास गर्ने अभ्यास विभिन्न देशमा आफूले पाएको उल्लेख गर्दै उनले नेपालमा त्यसको ठीक उल्टो अभ्यास भएको बताए ।\r\n\r\n‘छाँया सरकारलाई पनि अवसर थियो, डाटामा जान सकेको भए, सरकारले यहाँ गलत गर्यो, हुनुपर्ने यस्तो थियो भनेर भन्न सकेको भए’ दाहाल भन्छन्, ‘जस्तो सरकार उस्तै छाँया सरकार भयो ।’', 'कांग्रेसभित्र उठ्यो छाँया सरकार हेरफेरको माग', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2021-01-03 14:53:25', '2021-01-03 14:53:25', '', 127, 'http://wp.koselikhabar.com/2021/01/03/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2021-01-03 14:53:59', '2021-01-03 14:53:59', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता माधवकुमार नेपालले अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीको प्रवृत्ति नै अरुलाई धोका दिने र अपमान गर्ने रहेको बताएका छन् ।\r\n\r\nशुक्रबार पेरिसडाडाँमा प्रदेश १ का आफू निकट नेताहरुको भेलामा नेपालले ओलीको बोलीको विश्वास नै नहुने बताए ।\r\n\r\nपहिले आफूलाई अपमान गर्ने काम गरेको ओलीले पछि कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्डलाई पनि त्यसै गरेको नेपालको भनाइ थियो । ‘पार्टीका पूर्वप्रमुख र पूर्वप्रधानमन्त्री भइसकेका नेताहरुलाई धोका दिने, अपमान गर्ने प्रवृत्ति अझै पनि रोकिएको छैन । सहमति गरेर उठ्यो, भोलिपल्टै होइन भन्नु नै केपी ओलीको योग्यता बनेको छ’, नेपालको भनाइ थियो ।\r\n\r\nसबै नेताहरुलाई पालैपालो धोका दिने, झुटो आश्वासन दिने भएकैले पार्टीभित्र नयाँ समीकरण बनेको उनले बताए । ‘अहिले कस्तो अवस्था बन्यो भने धोका पाउने र अपमानित हुनेहरु एक भएको जस्तो देखिएको छ’, नेपालले भने ।\r\n\r\nतर, पार्टीलाई कुनै हालतमा विभाजन हुन नदिने उनको भनाइ थियो । ‘त्यसका लागि हामी माथि लड्छौं । तपाईंहरु तल लड्नु होला’, नेपालले आग्रह गरे । अहिले पूर्वएमाले र पूर्वमाओवादी भन्ने कुरा उठाएर विभाजन गर्ने नियत देखिएकाले यसविरुद्ध लाग्न पनि नेपालको आग्रह थियो ।\r\n\r\nनेकपाभित्रको आन्तरिक कलह चर्किदै जाँदा दुई पक्षको गुट भेला बढेको छ । शुक्रबार पेरिसडाडाँमा प्रचण्ड र नेपाल पक्षका प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्ध केन्द्रीय सदस्यहरुको भेला पेरिसडाडाँमा राखिएको थियो ।', 'ओलीबाट अपमानित हुनेहरु मिल्ने अवस्था बन्यो : माधव नेपाल', '', 'publish', 'open', 'open', '', '%e0%a4%93%e0%a4%b2%e0%a5%80%e0%a4%ac%e0%a4%be%e0%a4%9f-%e0%a4%85%e0%a4%aa%e0%a4%ae%e0%a4%be%e0%a4%a8%e0%a4%bf%e0%a4%a4-%e0%a4%b9%e0%a5%81%e0%a4%a8%e0%a5%87%e0%a4%b9%e0%a4%b0%e0%a5%81-%e0%a4%ae', '', '', '2021-01-03 14:53:59', '2021-01-03 14:53:59', '', 0, 'http://wp.koselikhabar.com/?p=129', 0, 'post', '', 0),
(130, 1, '2021-01-03 14:53:39', '2021-01-03 14:53:39', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता माधवकुमार नेपालले अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीको प्रवृत्ति नै अरुलाई धोका दिने र अपमान गर्ने रहेको बताएका छन् ।\n\nशुक्रबार पेरिसडाडाँमा प्रदेश १ का आफू निकट नेताहरुको भेलामा नेपालले ओलीको बोलीको विश्वास नै नहुने बताए ।\n\nपहिले आफूलाई अपमान गर्ने काम गरेको ओलीले पछि कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्डलाई पनि त्यसै गरेको नेपालको भनाइ थियो । ‘पार्टीका पूर्वप्रमुख र पूर्वप्रधानमन्त्री भइसकेका नेताहरुलाई धोका दिने, अपमान गर्ने प्रवृत्ति अझै पनि रोकिएको छैन । सहमति गरेर उठ्यो, भोलिपल्टै होइन भन्नु नै केपी ओलीको योग्यता बनेको छ’, नेपालको भनाइ थियो ।\n\nसबै नेताहरुलाई पालैपालो धोका दिने, झुटो आश्वासन दिने भएकैले पार्टीभित्र नयाँ समीकरण बनेको उनले बताए । ‘अहिले कस्तो अवस्था बन्यो भने धोका पाउने र अपमानित हुनेहरु एक भएको जस्तो देखिएको छ’, नेपालले भने ।\n\nतर, पार्टीलाई कुनै हालतमा विभाजन हुन नदिने उनको भनाइ थियो । ‘त्यसका लागि हामी माथि लड्छौं । तपाईंहरु तल लड्नु होला’, नेपालले आग्रह गरे । अहिले पूर्वएमाले र पूर्वमाओवादी भन्ने कुरा उठाएर विभाजन गर्ने नियत देखिएकाले यसविरुद्ध लाग्न पनि नेपालको आग्रह थियो ।\n\nनेकपाभित्रको आन्तरिक कलह चर्किदै जाँदा दुई पक्षको गुट भेला बढेको छ । शुक्रबार पेरिसडाडाँमा प्रचण्ड र नेपाल पक्षका प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्ध केन्द्रीय सदस्यहरुको भेला पेरिसडाडाँमा राखिएको थियो ।', 'ओलीबाट अपमानित हुनेहरु मिल्ने अवस्था बन्यो : माधव नेपाल', '', 'inherit', 'closed', 'closed', '', '48-autosave-v1', '', '', '2021-01-03 14:53:39', '2021-01-03 14:53:39', '', 48, 'http://wp.koselikhabar.com/2021/01/03/48-autosave-v1/', 0, 'revision', '', 0),
(131, 1, '2021-01-03 14:53:59', '2021-01-03 14:53:59', '३ पुस, काठमाडौं । सत्तारुढ नेपाल कम्युनिष्ट पार्टी (नेकपा) का वरिष्ठ नेता माधवकुमार नेपालले अध्यक्ष एवम् प्रधानमन्त्री केपी शर्मा ओलीको प्रवृत्ति नै अरुलाई धोका दिने र अपमान गर्ने रहेको बताएका छन् ।\r\n\r\nशुक्रबार पेरिसडाडाँमा प्रदेश १ का आफू निकट नेताहरुको भेलामा नेपालले ओलीको बोलीको विश्वास नै नहुने बताए ।\r\n\r\nपहिले आफूलाई अपमान गर्ने काम गरेको ओलीले पछि कार्यकारी अध्यक्ष पुष्पकमल दाहाल प्रचण्डलाई पनि त्यसै गरेको नेपालको भनाइ थियो । ‘पार्टीका पूर्वप्रमुख र पूर्वप्रधानमन्त्री भइसकेका नेताहरुलाई धोका दिने, अपमान गर्ने प्रवृत्ति अझै पनि रोकिएको छैन । सहमति गरेर उठ्यो, भोलिपल्टै होइन भन्नु नै केपी ओलीको योग्यता बनेको छ’, नेपालको भनाइ थियो ।\r\n\r\nसबै नेताहरुलाई पालैपालो धोका दिने, झुटो आश्वासन दिने भएकैले पार्टीभित्र नयाँ समीकरण बनेको उनले बताए । ‘अहिले कस्तो अवस्था बन्यो भने धोका पाउने र अपमानित हुनेहरु एक भएको जस्तो देखिएको छ’, नेपालले भने ।\r\n\r\nतर, पार्टीलाई कुनै हालतमा विभाजन हुन नदिने उनको भनाइ थियो । ‘त्यसका लागि हामी माथि लड्छौं । तपाईंहरु तल लड्नु होला’, नेपालले आग्रह गरे । अहिले पूर्वएमाले र पूर्वमाओवादी भन्ने कुरा उठाएर विभाजन गर्ने नियत देखिएकाले यसविरुद्ध लाग्न पनि नेपालको आग्रह थियो ।\r\n\r\nनेकपाभित्रको आन्तरिक कलह चर्किदै जाँदा दुई पक्षको गुट भेला बढेको छ । शुक्रबार पेरिसडाडाँमा प्रचण्ड र नेपाल पक्षका प्रदेश १ का जिल्ला अध्यक्ष, सचिव र राजधानी उपत्यकामा उपलब्ध केन्द्रीय सदस्यहरुको भेला पेरिसडाडाँमा राखिएको थियो ।', 'ओलीबाट अपमानित हुनेहरु मिल्ने अवस्था बन्यो : माधव नेपाल', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2021-01-03 14:53:59', '2021-01-03 14:53:59', '', 129, 'http://wp.koselikhabar.com/2021/01/03/129-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2021-01-03 15:02:11', '2021-01-03 15:02:11', 'तुलसी औषधिय गुणले भरिपूर्ण बनस्पति । धेरैको घर आँगनमा त तुलसी रोपिएकै हुन्छ । आर्युवेदमा यसको खास महत्व छ । त्यसैले तुलसीलाई पूज्ने गर्छौ, जो मानव स्वास्थ्यका लागि अति लाभदायक मानिन्छ ।\r\n\r\nतुलसी जाडो याममा निकै उपयोगी हुन्छ । किनभने जाडोमा रुँघा, ज्वरो, निमोनिया, ब्रोन्काइटिस, गलाको समस्या, फोक्सोको समस्या हुनेगर्छ । यस्तो अवस्थामा तुलसीले औषधीको काम गर्छ ।\r\n\r\n<strong>दिनहुँ तुलसी सेवन गर्ने निरोगी</strong>\r\n\r\nभनिन्छ, विधिपूर्वक नियमित रुपमा तुलसी सेवन गर्ने व्यक्तिलाई रोगको संक्रमण हुँदैन । तुलसी सेवन गरिरहँदा अनेकौ रोगबाट सुरक्षित भइन्छ । यद्यपी त्यसका लागि विधि भने थाहा हुनुपर्छ ।\r\n\r\nबिहान खाली पेटमा चार-पाँच तुलसीको पात सेवन गर्नुपर्छ । यो पातलाई दुई चम्चा पानीसँग वा पिसेर सेवन गर्न सकिन्छ । त्यसो त चार-पाँच वटा पात चपाए पनि फाइदा गर्छ ।\r\n\r\n१.  तुलसीको प्रयोगले छातीमा चिसो लाग्न पाउँदैन । यदि चिसो लागेको छ भने पनि कफ निकाल्छ । छातीको दुखाई पनि कम गर्छ । स्वास प्रणालीको झिल्लीमा स्वास्थ्यप्रद प्रभाव पार्न तुलसीमा अद्भूत क्षमता हुन्छ ।\r\n\r\n२. तुलसीको प्रयोगले ज्वरोको समस्या पनि हुँदैन । निमोनिया वा मलेरियाको ज्वरोमा तुलसी र मरिचको तीन दाना एक चम्चामा पानीमा घोलेर केहि दिन पिउनुपर्छ ।\r\n\r\n<strong>तुलसीको चिया</strong>\r\n\r\nअदुवा, मरिच र तुलसीको मिश्रणको चिया पिउनुपर्छ, स्वास्थ्यमा निकै फाइदा गर्छ । तुलसीको चिया बनाउनका लागि पात चाहिन्छ । त्यसलाई सुकाएर चूर्ण बनाउनुपर्छ । त्यसमा राम्ररी पिसेको मरिचको चाहिन्छ । सुख्खा अदुवाको धुलो मिसाउनुपर्छ । अब यो मिश्रणलाई तातो पानीमा उमाल्नुपर्छ । राम्ररी उम्लिएपछि पाँच मिनेटजति ढक्कनले छोप्नुपर्छ । त्यसमा एक सय ग्राम जति शख्खर हालेर सेवन गर्नुपर्छ । यसले चिसो लागेको, टाउको दुखेको, नाक बन्द भएको, पिनास, श्वास नली बन्द भएको समस्यामा ठीक गर्छ ।\r\n\r\n<strong>तुलसी र दुधको मिश्रण</strong>\r\n\r\nतुलसीलाई दुधसँग पनि मिसाएर सेवन गर्न सकिन्छ । यसरी तुलसी र दुधको मिश्रण बनाउँदा त्यसले थप लाभ गर्छ । खासगरी यस्तो मिश्रण खाली पेटमा सेवन गर्नुपर्छ ।\r\n\r\n<strong>१. सास सम्बन्धी रोगमा फाइदा</strong>\r\n\r\nयदि कसैलाई दम वा श्वासप्रश्वास सम्बन्धी समस्या छ भने दुध र तुलसी सेवन गर्नुपर्छ । बिहान खाली पेटमा नियमित दुध र तुलसी सेवन गर्दा फाइदा मिल्छ ।\r\n\r\n<strong>२. टाउको दुखाईमा</strong>\r\n\r\nटाउको दुख्ने समस्या छ भने पनि तुलसीको पात र दुधको मिश्रण उपयोगी हुन्छ । यसले हरेक उमेरका व्यक्तिलाई ठिक गर्छ । माइग्रेन जस्तो समस्यामा पनि यो लाभदायक हुन्छ ।\r\n\r\n<strong>३. मुटुलाई स्वस्थ्य राख्ने</strong>\r\n\r\nजसलाई मुटुसम्बन्धी समस्या छ, उनीहरुले बिहान खाली पेटमा दुध र तुलसी सेवन गर्नुपर्छ ।\r\n\r\n<strong>४. तनाव हटाउँछ</strong>\r\n\r\nयस किसिमको पेयले स्नायु प्रणालीलाई आनन्दित तुल्याउँछ । त्यसले तनावको स्तर कम गर्छ । डिप्रेसन वा चिन्ताको अवस्थामा तुलसी र दुधको मिश्रण सेवन गर्नुपर्छ ।', 'जाडोमा तुलसी सेवन कति लाभदायक ?', '', 'publish', 'open', 'open', '', '%e0%a4%9c%e0%a4%be%e0%a4%a1%e0%a5%8b%e0%a4%ae%e0%a4%be-%e0%a4%a4%e0%a5%81%e0%a4%b2%e0%a4%b8%e0%a5%80-%e0%a4%b8%e0%a5%87%e0%a4%b5%e0%a4%a8-%e0%a4%95%e0%a4%a4%e0%a4%bf-%e0%a4%b2%e0%a4%be%e0%a4%ad', '', '', '2021-01-06 14:45:03', '2021-01-06 14:45:03', '', 0, 'http://wp.koselikhabar.com/?p=132', 0, 'post', '', 0),
(133, 1, '2021-01-03 15:02:04', '2021-01-03 15:02:04', '', 'tulsi-plant-1564795386-1564896914', '', 'inherit', 'open', 'closed', '', 'tulsi-plant-1564795386-1564896914', '', '', '2021-01-03 15:02:04', '2021-01-03 15:02:04', '', 132, 'http://wp.koselikhabar.com/wp-content/uploads/2021/01/tulsi-plant-1564795386-1564896914.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2021-01-03 15:02:11', '2021-01-03 15:02:11', 'तुलसी औषधिय गुणले भरिपूर्ण बनस्पति । धेरैको घर आँगनमा त तुलसी रोपिएकै हुन्छ । आर्युवेदमा यसको खास महत्व छ । त्यसैले तुलसीलाई पूज्ने गर्छौ, जो मानव स्वास्थ्यका लागि अति लाभदायक मानिन्छ ।\r\n\r\nतुलसी जाडो याममा निकै उपयोगी हुन्छ । किनभने जाडोमा रुँघा, ज्वरो, निमोनिया, ब्रोन्काइटिस, गलाको समस्या, फोक्सोको समस्या हुनेगर्छ । यस्तो अवस्थामा तुलसीले औषधीको काम गर्छ ।\r\n\r\n<strong>दिनहुँ तुलसी सेवन गर्ने निरोगी</strong>\r\n\r\nभनिन्छ, विधिपूर्वक नियमित रुपमा तुलसी सेवन गर्ने व्यक्तिलाई रोगको संक्रमण हुँदैन । तुलसी सेवन गरिरहँदा अनेकौ रोगबाट सुरक्षित भइन्छ । यद्यपी त्यसका लागि विधि भने थाहा हुनुपर्छ ।\r\n\r\nबिहान खाली पेटमा चार-पाँच तुलसीको पात सेवन गर्नुपर्छ । यो पातलाई दुई चम्चा पानीसँग वा पिसेर सेवन गर्न सकिन्छ । त्यसो त चार-पाँच वटा पात चपाए पनि फाइदा गर्छ ।\r\n\r\n१.  तुलसीको प्रयोगले छातीमा चिसो लाग्न पाउँदैन । यदि चिसो लागेको छ भने पनि कफ निकाल्छ । छातीको दुखाई पनि कम गर्छ । स्वास प्रणालीको झिल्लीमा स्वास्थ्यप्रद प्रभाव पार्न तुलसीमा अद्भूत क्षमता हुन्छ ।\r\n\r\n२. तुलसीको प्रयोगले ज्वरोको समस्या पनि हुँदैन । निमोनिया वा मलेरियाको ज्वरोमा तुलसी र मरिचको तीन दाना एक चम्चामा पानीमा घोलेर केहि दिन पिउनुपर्छ ।\r\n\r\n<strong>तुलसीको चिया</strong>\r\n\r\nअदुवा, मरिच र तुलसीको मिश्रणको चिया पिउनुपर्छ, स्वास्थ्यमा निकै फाइदा गर्छ । तुलसीको चिया बनाउनका लागि पात चाहिन्छ । त्यसलाई सुकाएर चूर्ण बनाउनुपर्छ । त्यसमा राम्ररी पिसेको मरिचको चाहिन्छ । सुख्खा अदुवाको धुलो मिसाउनुपर्छ । अब यो मिश्रणलाई तातो पानीमा उमाल्नुपर्छ । राम्ररी उम्लिएपछि पाँच मिनेटजति ढक्कनले छोप्नुपर्छ । त्यसमा एक सय ग्राम जति शख्खर हालेर सेवन गर्नुपर्छ । यसले चिसो लागेको, टाउको दुखेको, नाक बन्द भएको, पिनास, श्वास नली बन्द भएको समस्यामा ठीक गर्छ ।\r\n\r\n<strong>तुलसी र दुधको मिश्रण</strong>\r\n\r\nतुलसीलाई दुधसँग पनि मिसाएर सेवन गर्न सकिन्छ । यसरी तुलसी र दुधको मिश्रण बनाउँदा त्यसले थप लाभ गर्छ । खासगरी यस्तो मिश्रण खाली पेटमा सेवन गर्नुपर्छ ।\r\n\r\n<strong>१. सास सम्बन्धी रोगमा फाइदा</strong>\r\n\r\nयदि कसैलाई दम वा श्वासप्रश्वास सम्बन्धी समस्या छ भने दुध र तुलसी सेवन गर्नुपर्छ । बिहान खाली पेटमा नियमित दुध र तुलसी सेवन गर्दा फाइदा मिल्छ ।\r\n\r\n<strong>२. टाउको दुखाईमा</strong>\r\n\r\nटाउको दुख्ने समस्या छ भने पनि तुलसीको पात र दुधको मिश्रण उपयोगी हुन्छ । यसले हरेक उमेरका व्यक्तिलाई ठिक गर्छ । माइग्रेन जस्तो समस्यामा पनि यो लाभदायक हुन्छ ।\r\n\r\n<strong>३. मुटुलाई स्वस्थ्य राख्ने</strong>\r\n\r\nजसलाई मुटुसम्बन्धी समस्या छ, उनीहरुले बिहान खाली पेटमा दुध र तुलसी सेवन गर्नुपर्छ ।\r\n\r\n<strong>४. तनाव हटाउँछ</strong>\r\n\r\nयस किसिमको पेयले स्नायु प्रणालीलाई आनन्दित तुल्याउँछ । त्यसले तनावको स्तर कम गर्छ । डिप्रेसन वा चिन्ताको अवस्थामा तुलसी र दुधको मिश्रण सेवन गर्नुपर्छ ।', 'जाडोमा तुलसी सेवन कति लाभदायक ?', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2021-01-03 15:02:11', '2021-01-03 15:02:11', '', 132, 'http://wp.koselikhabar.com/2021/01/03/132-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2021-01-03 15:04:01', '2021-01-03 15:04:01', 'पाठेघरको मुखको क्यान्सर क्रमस विस्तारै विस्तारै बढ्ने भएकाले कतिपयले यसको सुरुवाती लक्षण थाहा पाउँदैनन् । जब समस्या गंभिर बन्छ, तबमात्र यो क्यान्सर फैलिएको थाहा हुन्छ ।\r\n\r\nयदि सुरुवाती चरणमै यसको लक्षण थाहा भयो भने उपचार संभव र सहज हुन्छ । त्यसैले शरीरमा देखिने केही यस्ता संकेतपछि सर्तक हुनुपर्छ ।\r\n\r\n<strong>असामान्य रक्तस्राव</strong>\r\n\r\nसामान्यत पाठेघरको मुखको क्यान्सर ३५ देखि ४० बर्षको उमेरपछि हुनेगर्छ । यद्यपि यसको संकेतबाट रोग पहिचान गर्न सकिन्छ । यदि शारीरिक सम्बन्ध र रजनोवृत्तिपछि पनि धेरै रक्तश्राव भयो, प्रजनन अंगमा दुखाई महसुष भयो भने यो पाठेघरको मुखको क्यान्सरको लक्षण हो । यस्तो स्थितीमा तपाईंले तुरुन्तै चिकित्सकको परामर्श लिन आवश्यक छ ।\r\n\r\n<strong>वाइट डिस्चार्ज हुनु</strong>\r\n\r\nअक्सर महिलाले वाइट डिस्चार्ज जस्ता समस्यालाई आम समस्या मानेर नजरअन्दाज गर्छन्, जो पछि गएर निकै खतरनाक सावित हुनसक्छ । यस्तो समस्यालाई नजरअन्दाज गर्नुहुँदैन किनभने यो पाठेघरको मुखको क्यान्सरको लक्षण पनि हुनसक्छ ।\r\n\r\n<strong>कोखको पीडा</strong>\r\n\r\nमासिक धर्ममा सामान्यत महिलाको कोखमा दुखाई अनुभव हुँदैन । तर, अचानक हल्का वा तिब्र दुखाई महसुष हुन थालेमा त्यो पाठेघरको मुखको क्यान्सरको लक्षण हुनसक्छ । यस्तो स्थितीमा तपाईंले तुरुन्तै चिकित्सकलाई भेट्नुपर्छ ।\r\n\r\n<strong>पिसाबमा पीडा</strong>\r\n\r\nयदि पाठेघरको लक्षणलाई नजर अन्दाज गरियो भने यो क्यान्सर यतिसम्म बढ्न पुग्छ कि त्यसले पिसाबको थैलीसम्म पुग्न सक्छ । यसले गर्दा पिसाब फेर्दा कठिनाई हुन्छ । यस्तो स्थितीमा पनि तपाईंले तुरुन्तै चिकित्सकलाई भेट्नुपर्छ ।\r\n\r\n<strong>गुप्ताङमा जलन</strong>\r\n\r\nमासिक स्रावका क्रमममा वा सम्बन्ध बनाइरहेको बेला रक्तश्राव हुनु वा अचानक गर्भाशयमा जलन हुनु पनि पाठेघरको मुखको क्यान्सरको लक्षण हो । यस्तो लक्षणलाई नजरअन्दाज नगरौं ।', 'सर्भाइकल क्यान्सरका सुरुवाती लक्षण', '', 'publish', 'open', 'open', '', '%e0%a4%b8%e0%a4%b0%e0%a5%8d%e0%a4%ad%e0%a4%be%e0%a4%87%e0%a4%95%e0%a4%b2-%e0%a4%95%e0%a5%8d%e0%a4%af%e0%a4%be%e0%a4%a8%e0%a5%8d%e0%a4%b8%e0%a4%b0%e0%a4%95%e0%a4%be-%e0%a4%b8%e0%a5%81%e0%a4%b0%e0%a5%81', '', '', '2021-01-03 15:04:20', '2021-01-03 15:04:20', '', 0, 'http://wp.koselikhabar.com/?p=135', 0, 'post', '', 0),
(136, 1, '2021-01-03 15:03:53', '2021-01-03 15:03:53', '', '1_aSLIDE_rsz_shutterstock_32', '', 'inherit', 'open', 'closed', '', '1_aslide_rsz_shutterstock_32', '', '', '2021-01-03 15:03:53', '2021-01-03 15:03:53', '', 135, 'http://wp.koselikhabar.com/wp-content/uploads/2021/01/1_aSLIDE_rsz_shutterstock_32.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2021-01-03 15:04:01', '2021-01-03 15:04:01', 'पाठेघरको मुखको क्यान्सर क्रमस विस्तारै विस्तारै बढ्ने भएकाले कतिपयले यसको सुरुवाती लक्षण थाहा पाउँदैनन् । जब समस्या गंभिर बन्छ, तबमात्र यो क्यान्सर फैलिएको थाहा हुन्छ ।\r\n\r\nयदि सुरुवाती चरणमै यसको लक्षण थाहा भयो भने उपचार संभव र सहज हुन्छ । त्यसैले शरीरमा देखिने केही यस्ता संकेतपछि सर्तक हुनुपर्छ ।\r\n\r\n<strong>असामान्य रक्तस्राव</strong>\r\n\r\nसामान्यत पाठेघरको मुखको क्यान्सर ३५ देखि ४० बर्षको उमेरपछि हुनेगर्छ । यद्यपि यसको संकेतबाट रोग पहिचान गर्न सकिन्छ । यदि शारीरिक सम्बन्ध र रजनोवृत्तिपछि पनि धेरै रक्तश्राव भयो, प्रजनन अंगमा दुखाई महसुष भयो भने यो पाठेघरको मुखको क्यान्सरको लक्षण हो । यस्तो स्थितीमा तपाईंले तुरुन्तै चिकित्सकको परामर्श लिन आवश्यक छ ।\r\n\r\n<strong>वाइट डिस्चार्ज हुनु</strong>\r\n\r\nअक्सर महिलाले वाइट डिस्चार्ज जस्ता समस्यालाई आम समस्या मानेर नजरअन्दाज गर्छन्, जो पछि गएर निकै खतरनाक सावित हुनसक्छ । यस्तो समस्यालाई नजरअन्दाज गर्नुहुँदैन किनभने यो पाठेघरको मुखको क्यान्सरको लक्षण पनि हुनसक्छ ।\r\n\r\n<strong>कोखको पीडा</strong>\r\n\r\nमासिक धर्ममा सामान्यत महिलाको कोखमा दुखाई अनुभव हुँदैन । तर, अचानक हल्का वा तिब्र दुखाई महसुष हुन थालेमा त्यो पाठेघरको मुखको क्यान्सरको लक्षण हुनसक्छ । यस्तो स्थितीमा तपाईंले तुरुन्तै चिकित्सकलाई भेट्नुपर्छ ।\r\n\r\n<strong>पिसाबमा पीडा</strong>\r\n\r\nयदि पाठेघरको लक्षणलाई नजर अन्दाज गरियो भने यो क्यान्सर यतिसम्म बढ्न पुग्छ कि त्यसले पिसाबको थैलीसम्म पुग्न सक्छ । यसले गर्दा पिसाब फेर्दा कठिनाई हुन्छ । यस्तो स्थितीमा पनि तपाईंले तुरुन्तै चिकित्सकलाई भेट्नुपर्छ ।\r\n\r\n<strong>गुप्ताङमा जलन</strong>\r\n\r\nमासिक स्रावका क्रमममा वा सम्बन्ध बनाइरहेको बेला रक्तश्राव हुनु वा अचानक गर्भाशयमा जलन हुनु पनि पाठेघरको मुखको क्यान्सरको लक्षण हो । यस्तो लक्षणलाई नजरअन्दाज नगरौं ।', 'सर्भाइकल क्यान्सरका सुरुवाती लक्षण', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2021-01-03 15:04:01', '2021-01-03 15:04:01', '', 135, 'http://wp.koselikhabar.com/2021/01/03/135-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2021-01-03 15:05:21', '2021-01-03 15:05:21', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2021-01-06 15:12:28', '2021-01-06 15:12:28', '', 0, 'http://wp.koselikhabar.com/?p=138', 4, 'nav_menu_item', '', 0),
(139, 1, '2021-01-03 15:06:42', '2021-01-03 15:06:42', '१९ पुस , काठमाडौं । नेपाल क्रिकेट संघ क्यानले संघका वर्तमान तथा पूर्व सदस्यहरुले लिएको पेस्की फर्छयौट गर्ने समयसिमा तोकेको छ ।\r\n\r\nक्यानको लेखापरीक्षण प्रतिवेदनमा लामो समयदेखि देखिएको पेस्की फर्छ्यौट यही पुस २४ गतेसम्म पेस्की फर्छ्यौट गर्न निर्देशन दिएको हो ।\r\n\r\nक्यानको सिटी अफिस नक्सालले शनिबार विज्ञप्ति जारी गर्दै पेस्की फर्छ्यौट गर्न आग्रह गरेको हो ।\r\n\r\nक्यानमा वर्षौदेखि धरै सदस्को पेस्की रहेको छ ।\r\n\r\nत्यसैले क्यानले पेस्की लिएकाहरुलाई एक साताभित्र पेस्की फर्च्योट गर्नका लागि सूचना जारी गरेको हो ।', 'पुस २४ सम्म पेस्की फर्छ्यौट गर्न क्यानको निर्देशन', '', 'publish', 'open', 'open', '', '%e0%a4%aa%e0%a5%81%e0%a4%b8-%e0%a5%a8%e0%a5%aa-%e0%a4%b8%e0%a4%ae%e0%a5%8d%e0%a4%ae-%e0%a4%aa%e0%a5%87%e0%a4%b8%e0%a5%8d%e0%a4%95%e0%a5%80-%e0%a4%ab%e0%a4%b0%e0%a5%8d%e0%a4%9b%e0%a5%8d%e0%a4%af', '', '', '2021-01-03 15:06:42', '2021-01-03 15:06:42', '', 0, 'http://wp.koselikhabar.com/?p=139', 0, 'post', '', 0),
(140, 1, '2021-01-03 15:06:42', '2021-01-03 15:06:42', '१९ पुस , काठमाडौं । नेपाल क्रिकेट संघ क्यानले संघका वर्तमान तथा पूर्व सदस्यहरुले लिएको पेस्की फर्छयौट गर्ने समयसिमा तोकेको छ ।\r\n\r\nक्यानको लेखापरीक्षण प्रतिवेदनमा लामो समयदेखि देखिएको पेस्की फर्छ्यौट यही पुस २४ गतेसम्म पेस्की फर्छ्यौट गर्न निर्देशन दिएको हो ।\r\n\r\nक्यानको सिटी अफिस नक्सालले शनिबार विज्ञप्ति जारी गर्दै पेस्की फर्छ्यौट गर्न आग्रह गरेको हो ।\r\n\r\nक्यानमा वर्षौदेखि धरै सदस्को पेस्की रहेको छ ।\r\n\r\nत्यसैले क्यानले पेस्की लिएकाहरुलाई एक साताभित्र पेस्की फर्च्योट गर्नका लागि सूचना जारी गरेको हो ।', 'पुस २४ सम्म पेस्की फर्छ्यौट गर्न क्यानको निर्देशन', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2021-01-03 15:06:42', '2021-01-03 15:06:42', '', 139, 'http://wp.koselikhabar.com/2021/01/03/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2021-01-03 15:07:26', '2021-01-03 15:07:26', '', 'खेलकुद', '', 'publish', 'closed', 'closed', '', '%e0%a4%96%e0%a5%87%e0%a4%b2%e0%a4%95%e0%a5%81%e0%a4%a6-2', '', '', '2021-01-06 15:12:28', '2021-01-06 15:12:28', '', 0, 'http://wp.koselikhabar.com/?p=141', 3, 'nav_menu_item', '', 0),
(143, 1, '2021-01-03 15:12:10', '2021-01-03 15:12:10', 'लकडाउन हटेसँगै अब भने विस्तारै नेपाली चलचित्र लयमा फर्किन थालेको छ । हलहरु खुलेका छन् भने चलचित्रको छायांकन पनि धमाधम भैरहेको छ । लकडाउन अगाडि नै छायांकन सुरु गरिएतापनि कोरोनाका कारण रोकिएको चलचित्र ‘मनसँग मन’को एक गीतको छायांकन काठमाण्डौमा गरिएको छ ।\r\n\r\nबालाजुको चलचित्र विकास कम्पनीको परिसरमा सेट लगाएर चलचित्रमा समावेश ‘मेरो त भाग्य’ बोलको गीतको छायांकन गरिएको हो । यो गीतमा डेभिड शंकर र भावना राइको स्वर, दिपक शर्माको संगीत तथा विपिन किरणको शब्द छ ।\r\n\r\nयो गीतको भिडियोमा चलचित्रका मुख्य कलाकार पुष्प खड्का, वर्षा सिवाकोटी, वुद्दि तामाङलाई फिचरिङ गरिएको छ । यस्तै, यो गीतमा नायक पल शाह र नायिका पूजा शर्माको साथमा हाँस्य कलाकार रविन्द्र झा अतिथीको रुपमा देखिदैछन् ।\r\n\r\nकैलाश राइको निर्देशनमा तयार भएको चलचित्रमा सौरभ लामाको छायांकन, अरुण तामाङको लगानी छ । चलचित्रमा अर्जुन जीसीको सम्पादन, सन्तोष खवासको एक्सन निर्देशन छ ।', '‘मनसँग मन’मा पल, पूजा, पुष्प र वर्षाको छमछमी(फोटो फिचरसहित)', '', 'publish', 'open', 'open', '', '%e0%a4%ae%e0%a4%a8%e0%a4%b8%e0%a4%81%e0%a4%97-%e0%a4%ae%e0%a4%a8%e0%a4%ae%e0%a4%be-%e0%a4%aa%e0%a4%b2-%e0%a4%aa%e0%a5%82%e0%a4%9c%e0%a4%be-%e0%a4%aa%e0%a5%81%e0%a4%b7%e0%a5%8d', '', '', '2021-01-06 14:44:39', '2021-01-06 14:44:39', '', 0, 'http://wp.koselikhabar.com/?p=143', 0, 'post', '', 0),
(144, 1, '2021-01-03 15:12:04', '2021-01-03 15:12:04', '', 'pooja-paul-barsha-puspa', '', 'inherit', 'open', 'closed', '', 'pooja-paul-barsha-puspa', '', '', '2021-01-03 15:12:04', '2021-01-03 15:12:04', '', 143, 'http://wp.koselikhabar.com/wp-content/uploads/2021/01/pooja-paul-barsha-puspa.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2021-01-03 15:12:10', '2021-01-03 15:12:10', 'लकडाउन हटेसँगै अब भने विस्तारै नेपाली चलचित्र लयमा फर्किन थालेको छ । हलहरु खुलेका छन् भने चलचित्रको छायांकन पनि धमाधम भैरहेको छ । लकडाउन अगाडि नै छायांकन सुरु गरिएतापनि कोरोनाका कारण रोकिएको चलचित्र ‘मनसँग मन’को एक गीतको छायांकन काठमाण्डौमा गरिएको छ ।\r\n\r\nबालाजुको चलचित्र विकास कम्पनीको परिसरमा सेट लगाएर चलचित्रमा समावेश ‘मेरो त भाग्य’ बोलको गीतको छायांकन गरिएको हो । यो गीतमा डेभिड शंकर र भावना राइको स्वर, दिपक शर्माको संगीत तथा विपिन किरणको शब्द छ ।\r\n\r\nयो गीतको भिडियोमा चलचित्रका मुख्य कलाकार पुष्प खड्का, वर्षा सिवाकोटी, वुद्दि तामाङलाई फिचरिङ गरिएको छ । यस्तै, यो गीतमा नायक पल शाह र नायिका पूजा शर्माको साथमा हाँस्य कलाकार रविन्द्र झा अतिथीको रुपमा देखिदैछन् ।\r\n\r\nकैलाश राइको निर्देशनमा तयार भएको चलचित्रमा सौरभ लामाको छायांकन, अरुण तामाङको लगानी छ । चलचित्रमा अर्जुन जीसीको सम्पादन, सन्तोष खवासको एक्सन निर्देशन छ ।', '‘मनसँग मन’मा पल, पूजा, पुष्प र वर्षाको छमछमी(फोटो फिचरसहित)', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2021-01-03 15:12:10', '2021-01-03 15:12:10', '', 143, 'http://wp.koselikhabar.com/2021/01/03/143-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2021-01-03 15:12:36', '2021-01-03 15:12:36', '', 'मनोरन्जन', '', 'publish', 'closed', 'closed', '', '%e0%a4%ae%e0%a4%a8%e0%a5%8b%e0%a4%b0%e0%a4%a8%e0%a5%8d%e0%a4%9c%e0%a4%a8-2', '', '', '2021-01-06 15:12:28', '2021-01-06 15:12:28', '', 0, 'http://wp.koselikhabar.com/?p=146', 2, 'nav_menu_item', '', 0),
(150, 1, '2021-01-06 14:34:39', '2021-01-06 14:34:39', '', 'Ad created on January 6, 2021 2:34 pm', '', 'publish', 'closed', 'closed', '', 'ad-created-on-january-6-2021-234-pm', '', '', '2021-01-06 14:35:14', '2021-01-06 14:35:14', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=150', 0, 'advanced_ads', '', 0),
(151, 1, '2021-01-06 14:36:08', '2021-01-06 14:36:08', '', 'AD Bataworan', '', 'publish', 'closed', 'closed', '', 'ad-bataworan', '', '', '2021-01-06 14:41:16', '2021-01-06 14:41:16', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=151', 0, 'advanced_ads', '', 0),
(152, 1, '2021-01-06 14:37:10', '2021-01-06 14:37:10', '', 'Jiwan saili', '', 'publish', 'closed', 'closed', '', 'jiwan-saili', '', '', '2021-01-06 14:37:15', '2021-01-06 14:37:15', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=152', 0, 'advanced_ads', '', 0),
(153, 1, '2021-01-06 14:37:35', '2021-01-06 14:37:35', '', 'jiwan saili ad', '', 'publish', 'closed', 'closed', '', 'jiwan-saili-ad', '', '', '2021-01-06 14:46:14', '2021-01-06 14:46:14', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=153', 0, 'advanced_ads', '', 0),
(154, 1, '2021-01-06 14:40:52', '2021-01-06 14:40:52', '', 'Sulsuley ads', '', 'publish', 'closed', 'closed', '', 'sulsuley-ads', '', '', '2021-01-06 14:41:02', '2021-01-06 14:41:02', '', 0, 'http://wp.koselikhabar.com/?post_type=advanced_ads&#038;p=154', 0, 'advanced_ads', '', 0),
(156, 1, '2021-01-06 15:09:12', '2021-01-06 15:09:12', '', 'Muncha', '', 'publish', 'closed', 'closed', '', 'muncha', '', '', '2021-01-06 15:12:28', '2021-01-06 15:12:28', '', 0, 'http://wp.koselikhabar.com/?p=156', 5, 'nav_menu_item', '', 0),
(157, 1, '2021-01-06 15:10:12', '2021-01-06 15:10:12', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Muncha Test', '', 'publish', 'open', 'open', '', 'muncha-test', '', '', '2021-01-06 15:10:12', '2021-01-06 15:10:12', '', 0, 'http://wp.koselikhabar.com/?p=157', 0, 'post', '', 0),
(158, 1, '2021-01-06 15:10:12', '2021-01-06 15:10:12', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Muncha Test', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2021-01-06 15:10:12', '2021-01-06 15:10:12', '', 157, 'http://wp.koselikhabar.com/2021/01/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2021-01-06 15:10:35', '2021-01-06 15:10:35', ' ', '', '', 'publish', 'closed', 'closed', '', '159', '', '', '2021-01-06 15:12:28', '2021-01-06 15:12:28', '', 22, 'http://wp.koselikhabar.com/?p=159', 6, 'nav_menu_item', '', 0),
(164, 1, '2021-01-06 15:26:03', '2021-01-06 15:26:03', '', 'होमपेज', '', 'publish', 'closed', 'closed', '', '%e0%a4%b9%e0%a5%8b%e0%a4%ae%e0%a4%aa%e0%a5%87%e0%a4%9c', '', '', '2021-01-06 15:26:48', '2021-01-06 15:26:48', '', 0, 'http://wp.koselikhabar.com/?p=164', 1, 'nav_menu_item', '', 0),
(165, 1, '2021-01-06 15:26:48', '2021-01-06 15:26:48', '', 'मनोरन्जन', '', 'publish', 'closed', 'closed', '', '%e0%a4%ae%e0%a4%a8%e0%a5%8b%e0%a4%b0%e0%a4%a8%e0%a5%8d%e0%a4%9c%e0%a4%a8', '', '', '2021-01-06 15:26:48', '2021-01-06 15:26:48', '', 0, 'http://wp.koselikhabar.com/?p=165', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Top Header', 'top-header', 0),
(4, 'Between Post', 'between-post', 0),
(6, 'Top of post content', 'top-of-post-content', 0),
(7, 'top single post', 'top-single-post', 0),
(8, 'single post right ads', 'single-post-right-ads', 0),
(9, 'Desh', 'desh', 0),
(10, '१', '%e0%a5%a7', 0),
(11, '२', '%e0%a5%a8', 0),
(12, '३', '%e0%a5%a9', 0),
(13, '४', '%e0%a5%aa', 0),
(14, '५', '%e0%a5%ab', 0),
(15, '६', '%e0%a5%ac', 0),
(16, '७', '%e0%a5%ad', 0),
(17, 'Bataworan', 'bataworan', 0),
(18, 'Itihas', 'itihas', 0),
(19, 'Jiban Sailli', 'jiban-sailli', 0),
(20, 'Khelkud', 'khelkud', 0),
(21, 'Manoranjan', 'manoranjan', 0),
(22, 'Muncha', 'muncha', 0),
(23, 'Ranga Mucha', 'ranga-mucha', 0),
(24, 'Prasasan Muncha', 'prasasan-muncha', 0),
(25, 'Artha Muncha', 'artha-muncha', 0),
(26, 'Bishwo Munch', 'bishwo-munch', 0),
(27, 'Bichar Muncha', 'bichar-muncha', 0),
(28, 'Swasthya Munch', 'swasthya-munch', 0),
(29, 'Koseli khabar Special', 'koseli-khabar-special', 0),
(30, 'Sambhad', 'sambhad', 0),
(31, 'Sulsuley', 'sulsuley', 0),
(32, 'Surkasya', 'surkasya', 0),
(33, 'Bataworan', 'bataworan', 0),
(34, 'Jivan Saili', 'jivan-saili', 0),
(35, 'Sulsuley', 'sulsuley', 0),
(36, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(27, 2, 0),
(69, 3, 0),
(69, 7, 0),
(72, 3, 0),
(74, 7, 0),
(80, 4, 0),
(81, 4, 0),
(82, 4, 0),
(90, 6, 0),
(100, 8, 0),
(101, 8, 0),
(120, 10, 0),
(122, 10, 0),
(122, 11, 0),
(125, 10, 0),
(125, 12, 0),
(127, 10, 0),
(127, 13, 0),
(129, 10, 0),
(129, 14, 0),
(132, 17, 0),
(132, 19, 0),
(135, 19, 0),
(138, 2, 0),
(139, 20, 0),
(141, 2, 0),
(143, 21, 0),
(143, 31, 0),
(146, 2, 0),
(151, 33, 0),
(151, 35, 0),
(153, 33, 0),
(153, 34, 0),
(156, 2, 0),
(157, 25, 0),
(159, 2, 0),
(164, 36, 0),
(165, 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'advanced_ads_groups', 'Ad on top of the page', 0, 2),
(4, 4, 'advanced_ads_groups', '', 0, 3),
(6, 6, 'advanced_ads_groups', '', 0, 1),
(7, 7, 'advanced_ads_groups', '', 0, 2),
(8, 8, 'advanced_ads_groups', '', 0, 2),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', '', 9, 5),
(11, 11, 'category', '', 9, 1),
(12, 12, 'category', '', 9, 1),
(13, 13, 'category', '', 9, 1),
(14, 14, 'category', '', 9, 1),
(15, 15, 'category', '', 9, 0),
(16, 16, 'category', '', 9, 0),
(17, 17, 'category', '', 0, 1),
(18, 18, 'category', '', 0, 0),
(19, 19, 'category', '', 0, 2),
(20, 20, 'category', '', 0, 1),
(21, 21, 'category', '', 0, 1),
(22, 22, 'category', '', 0, 0),
(23, 23, 'category', '', 22, 0),
(24, 24, 'category', '', 22, 0),
(25, 25, 'category', '', 22, 1),
(26, 26, 'category', '', 22, 0),
(27, 27, 'category', '', 22, 0),
(28, 28, 'category', '', 22, 0),
(29, 29, 'category', '', 0, 0),
(30, 30, 'category', '', 0, 0),
(31, 31, 'category', '', 0, 1),
(32, 32, 'category', '', 0, 0),
(33, 33, 'advanced_ads_groups', '', 0, 2),
(34, 34, 'advanced_ads_groups', '', 0, 1),
(35, 35, 'advanced_ads_groups', '', 0, 1),
(36, 36, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Koseli khabar'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:7:{s:64:\"e66d6fb6c56cb4f2e9311ccb0881796294a9c035c38f47b5341f2f45ed8e05be\";a:4:{s:10:\"expiration\";i:1610946348;s:2:\"ip\";s:12:\"43.245.86.54\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609736748;}s:64:\"b6db5b4da915eed03f310d17b4ac07e057e53d56ab5101169bae1c851081db0f\";a:4:{s:10:\"expiration\";i:1610116159;s:2:\"ip\";s:12:\"27.34.16.222\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609943359;}s:64:\"5581293989281f36b191ec9a94354ca4951058b56947cc04310b9eb7bf60a57a\";a:4:{s:10:\"expiration\";i:1610117884;s:2:\"ip\";s:12:\"27.34.16.222\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609945084;}s:64:\"330e76efc104ddcdc96d1f8efa79119a5954689db6b5f364a74df138497a5c1b\";a:4:{s:10:\"expiration\";i:1610118196;s:2:\"ip\";s:12:\"27.34.16.222\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609945396;}s:64:\"bc3454383d889b1b6490217d94ae41c53cecb53b2eede456f0f259de6d304cb4\";a:4:{s:10:\"expiration\";i:1610118413;s:2:\"ip\";s:12:\"27.34.16.222\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609945613;}s:64:\"0e61a39c13d0015d94dfeea031d1d56d3e2604259d65df40b9b0f39ab15af9bc\";a:4:{s:10:\"expiration\";i:1610167131;s:2:\"ip\";s:13:\"202.79.47.208\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66\";s:5:\"login\";i:1609994331;}s:64:\"d8730c0a017efa8ea5680ab7810602e4918c651b0329fa9937653044b7cde9e5\";a:4:{s:10:\"expiration\";i:1611204116;s:2:\"ip\";s:14:\"110.44.124.171\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609994516;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '117'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(19, 1, 'wp_user-settings-time', '1606035883'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '36'),
(23, 1, 'advanced-ads-admin-settings', 'a:1:{s:17:\"placement-orderby\";s:4:\"type\";}'),
(24, 1, 'advanced-ads-hide-wizard', 'false'),
(25, 1, 'advanced-ads-subscribed', '1'),
(26, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"110.44.124.0\";}'),
(27, 2, 'nickname', 'koselikhabar'),
(28, 2, 'first_name', 'koselikhabar'),
(29, 2, 'last_name', ''),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(39, 2, 'wp_user_level', '7'),
(40, 2, 'dismissed_wp_pointers', ''),
(42, 2, 'wp_dashboard_quick_press_last_post_id', '147'),
(43, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"49.244.94.0\";}'),
(44, 2, 'session_tokens', 'a:4:{s:64:\"a71966ec672f2c60481274e40ee00cffe61dd90b0b1c6b56746433d58aa57494\";a:4:{s:10:\"expiration\";i:1610121130;s:2:\"ip\";s:12:\"27.34.16.222\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609948330;}s:64:\"5ea51a58d32e513dc74242a138a5ff02d37b8462dfc158f3ab7b046ce457e5a7\";a:4:{s:10:\"expiration\";i:1610121201;s:2:\"ip\";s:12:\"27.34.16.222\";s:2:\"ua\";s:118:\"Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.110 Mobile Safari/537.36\";s:5:\"login\";i:1609948401;}s:64:\"271867e666e2f7f2262bd05931a95d5547c04bc44722ab1394596398a7246873\";a:4:{s:10:\"expiration\";i:1610122723;s:2:\"ip\";s:13:\"49.244.94.145\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609949923;}s:64:\"1a297f1915e46b06edf575e2afd188fb277b6832bb323c33e37ce4677931df83\";a:4:{s:10:\"expiration\";i:1610122733;s:2:\"ip\";s:13:\"49.244.94.145\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609949933;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@admin.com', '$P$BUlCHWiuMcRj5Y9weh0ZmcWMlxmFMJ.', 'adminadmin-com', 'nepalesebros@gmail.com', 'http://wp.koselikhabar.com', '2020-11-22 08:45:55', '', 0, 'Koselikhabar'),
(2, 'koselikhabar', '$P$Btd3V7IsAWWPcfDtWQzAb8iwXVJbc0.', 'koselikhabar', 'aayurtshrestha@gmail.com', '', '2021-01-04 13:09:33', '', 0, 'koselikhabar');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1632;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
