-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 13 2018 г., 09:53
-- Версия сервера: 10.1.35-MariaDB
-- Версия PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tajem`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-08 17:29:30', '2018-10-08 14:29:30', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/tajem', 'yes'),
(2, 'home', 'http://localhost/tajem', 'yes'),
(3, 'blogname', 'tajem', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ahrrhy@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '12', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '12', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:226:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"mc4wp-form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"mc4wp-form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"mc4wp-form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mc4wp-form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mc4wp-form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"mc4wp-form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"mc4wp-form/([^/]+)/embed/?$\";s:43:\"index.php?mc4wp-form=$matches[1]&embed=true\";s:31:\"mc4wp-form/([^/]+)/trackback/?$\";s:37:\"index.php?mc4wp-form=$matches[1]&tb=1\";s:39:\"mc4wp-form/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?mc4wp-form=$matches[1]&paged=$matches[2]\";s:46:\"mc4wp-form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?mc4wp-form=$matches[1]&cpage=$matches[2]\";s:35:\"mc4wp-form/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?mc4wp-form=$matches[1]&page=$matches[2]\";s:27:\"mc4wp-form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"mc4wp-form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"mc4wp-form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mc4wp-form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mc4wp-form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"mc4wp-form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"header_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"header_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"header_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"header_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"header_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"header_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"header_slider/([^/]+)/embed/?$\";s:46:\"index.php?header_slider=$matches[1]&embed=true\";s:34:\"header_slider/([^/]+)/trackback/?$\";s:40:\"index.php?header_slider=$matches[1]&tb=1\";s:42:\"header_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?header_slider=$matches[1]&paged=$matches[2]\";s:49:\"header_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?header_slider=$matches[1]&cpage=$matches[2]\";s:38:\"header_slider/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?header_slider=$matches[1]&page=$matches[2]\";s:30:\"header_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"header_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"header_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"header_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"header_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"header_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"expertise/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"expertise/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"expertise/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"expertise/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"expertise/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"expertise/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"expertise/([^/]+)/embed/?$\";s:42:\"index.php?expertise=$matches[1]&embed=true\";s:30:\"expertise/([^/]+)/trackback/?$\";s:36:\"index.php?expertise=$matches[1]&tb=1\";s:38:\"expertise/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?expertise=$matches[1]&paged=$matches[2]\";s:45:\"expertise/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?expertise=$matches[1]&cpage=$matches[2]\";s:34:\"expertise/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?expertise=$matches[1]&page=$matches[2]\";s:26:\"expertise/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"expertise/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"expertise/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"expertise/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"expertise/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"expertise/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"employees/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"employees/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"employees/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"employees/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"employees/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"employees/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"employees/([^/]+)/embed/?$\";s:42:\"index.php?employees=$matches[1]&embed=true\";s:30:\"employees/([^/]+)/trackback/?$\";s:36:\"index.php?employees=$matches[1]&tb=1\";s:38:\"employees/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?employees=$matches[1]&paged=$matches[2]\";s:45:\"employees/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?employees=$matches[1]&cpage=$matches[2]\";s:34:\"employees/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?employees=$matches[1]&page=$matches[2]\";s:26:\"employees/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"employees/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"employees/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"employees/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"employees/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"employees/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"partners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"partners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"partners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"partners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"partners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"partners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"partners/([^/]+)/embed/?$\";s:41:\"index.php?partners=$matches[1]&embed=true\";s:29:\"partners/([^/]+)/trackback/?$\";s:35:\"index.php?partners=$matches[1]&tb=1\";s:37:\"partners/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&paged=$matches[2]\";s:44:\"partners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&cpage=$matches[2]\";s:33:\"partners/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?partners=$matches[1]&page=$matches[2]\";s:25:\"partners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"partners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"partners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"partners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"partners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"partners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"page_sections/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"page_sections/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"page_sections/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"page_sections/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"page_sections/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"page_sections/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"page_sections/([^/]+)/embed/?$\";s:46:\"index.php?page_sections=$matches[1]&embed=true\";s:34:\"page_sections/([^/]+)/trackback/?$\";s:40:\"index.php?page_sections=$matches[1]&tb=1\";s:42:\"page_sections/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?page_sections=$matches[1]&paged=$matches[2]\";s:49:\"page_sections/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?page_sections=$matches[1]&cpage=$matches[2]\";s:38:\"page_sections/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?page_sections=$matches[1]&page=$matches[2]\";s:30:\"page_sections/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"page_sections/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"page_sections/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"page_sections/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"page_sections/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"page_sections/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tajem', 'yes'),
(41, 'stylesheet', 'tajem', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '196', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '49', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', '', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', '=~ly>gXgJK! -6]ca<3$G30q&/yJ?7,RE#=yN?s>!2Ez2hZY%~>(MkuQ~oWp.#D~', 'no'),
(110, 'nonce_salt', 'UY} o~@b;bsls2LI0Na9hHd[=nCQzL</Zu_F>;:|CX9kaXR*A78)zE8S%So&L{2`', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'cron', 'a:6:{i:1539412204;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1539440970;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1539440988;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539455250;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539478980;a:1:{s:29:\"mc4wp_refresh_mailchimp_lists\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539009300;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(128, 'auth_key', 'QGw/?h@(Y$CX0(n}pCV<i]~m/nU>av7?^MOu0D#qC^)WU&r*ylth[/hB6abp%D2_', 'no'),
(129, 'auth_salt', '<ek!DAl9~un]|` }H0?{Cl$i_&3;!0*G#qyV8M*USewfpOs77rpE9>>({?5jh1%M', 'no'),
(130, 'logged_in_key', 'bt!mJ=F?#WchNT03V:iO2,knKA/z}guQ%>a}qZNb5.gSd*43c**5V~?]MFBCLu|n', 'no'),
(131, 'logged_in_salt', '3o#%HAuTD;31D7ZX5aXe`q%<N|Est1NAtVR<D0n_~A$$dV^2s7o~[N<ZBZ4B Q>&', 'no'),
(132, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1539613789', 'no'),
(133, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'new_admin_email', 'ahrrhy@gmail.com', 'yes'),
(156, 'current_theme', 'tajem', 'yes'),
(157, 'theme_mods_tajem', 'a:26:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:64;s:24:\"fourth_screen_background\";s:77:\"http://localhost/tajem/wp-content/uploads/2018/10/team-section-background.jpg\";s:23:\"sixth_screen_background\";s:77:\"http://localhost/tajem/wp-content/uploads/2018/10/testimonials-background.png\";s:16:\"header_textcolor\";s:6:\"000000\";s:17:\"footer_background\";s:71:\"http://localhost/tajem/wp-content/uploads/2018/10/footer-background.png\";s:16:\"footer_site_info\";s:157:\"lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh elit. Duis sed odio sit amet auctror a ornare odio non mauris vitae erat in elit\";s:33:\"footer_site_address_section_title\";s:10:\"OUR STUDIO\";s:35:\"footer_site_address_section_address\";s:93:\"Ruko cucruk, Jl. Radio luar dalem jos No.12 - 13, Kalideres - Jakarta Barat 11480 - Indonesia\";s:39:\"footer_site_address_section_phone_label\";s:18:\"(+62) 21-2224 3333\";s:33:\"footer_site_address_section_phone\";s:13:\"+622122243333\";s:40:\"footer_site_address_section_address_icon\";s:66:\"http://localhost/tajem/wp-content/uploads/2018/10/pointer-icon.png\";s:38:\"footer_site_address_section_phone_icon\";s:64:\"http://localhost/tajem/wp-content/uploads/2018/10/phone-icon.png\";s:32:\"footer_site_social_section_title\";s:13:\"STAY IN TOUCH\";s:36:\"footer_site_social_section_mailchimp\";s:21:\"[mc4wp_form id=\"205\"]\";s:41:\"footer_site_social_section_mailchimp_icon\";s:62:\"http://localhost/tajem/wp-content/uploads/2018/10/paper122.png\";s:8:\"facebook\";s:24:\"https://www.facebook.com\";s:11:\"google-plus\";s:24:\"https://plus.google.com/\";s:8:\"dribbble\";s:24:\"https://www.dribbble.com\";s:9:\"instagram\";s:25:\"https://www.instagram.com\";s:7:\"twitter\";s:23:\"https://www.twitter.com\";s:7:\"youtube\";s:23:\"https://www.youtube.com\";s:11:\"video_thumb\";s:66:\"http://localhost/tajem/wp-content/uploads/2018/10/player_thumb.png\";s:13:\"video_caption\";s:15:\"WATCH OUR STORY\";}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(162, 'recently_activated', 'a:1:{s:19:\"akismet/akismet.php\";i:1539022866;}', 'yes'),
(172, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1539403907;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(174, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1539403909;s:7:\"checked\";a:4:{s:5:\"tajem\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(175, 'acf_version', '5.7.7', 'yes'),
(176, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1539033669;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(178, 'widget_mc4wp_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'mc4wp_version', '4.2.5', 'yes'),
(180, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(204, 'category_children', 'a:0:{}', 'yes'),
(220, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(268, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1539403907;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/mailchimp-for-wp\";s:4:\"slug\";s:16:\"mailchimp-for-wp\";s:6:\"plugin\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:11:\"new_version\";s:5:\"4.2.5\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/mailchimp-for-wp/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/mailchimp-for-wp.4.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-256x256.png?rev=1224577\";s:2:\"1x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-128x128.png?rev=1224577\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/mailchimp-for-wp/assets/banner-772x250.png?rev=1184706\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(313, 'mc4wp', 'a:4:{s:7:\"api_key\";s:37:\"641731ab490442e1c6253675884cdae3-us14\";s:20:\"allow_usage_tracking\";i:0;s:15:\"debug_log_level\";s:7:\"warning\";s:18:\"first_activated_on\";i:1539348769;}', 'yes'),
(316, 'mc4wp_mailchimp_list_ids', 'a:3:{i:0;s:10:\"0255e60f27\";i:1;s:10:\"7f84efa085\";i:2;s:10:\"80d468cebd\";}', 'no'),
(317, 'mc4wp_mailchimp_list_80d468cebd', 'O:20:\"MC4WP_MailChimp_List\":7:{s:2:\"id\";s:10:\"80d468cebd\";s:6:\"web_id\";i:152619;s:4:\"name\";s:10:\"testworkgh\";s:16:\"subscriber_count\";i:0;s:12:\"merge_fields\";a:1:{i:0;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:13:\"Email Address\";s:10:\"field_type\";s:5:\"email\";s:3:\"tag\";s:5:\"EMAIL\";s:8:\"required\";b:1;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}}s:19:\"interest_categories\";a:0:{}s:17:\"campaign_defaults\";O:8:\"stdClass\":2:{s:9:\"from_name\";s:10:\"testworkgh\";s:10:\"from_email\";s:16:\"ahrrhy@gmail.com\";}}', 'no'),
(318, 'mc4wp_mailchimp_list_0255e60f27', 'O:20:\"MC4WP_MailChimp_List\":7:{s:2:\"id\";s:10:\"0255e60f27\";s:6:\"web_id\";i:119267;s:4:\"name\";s:12:\"consult plus\";s:16:\"subscriber_count\";i:0;s:12:\"merge_fields\";a:3:{i:0;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:13:\"Email Address\";s:10:\"field_type\";s:5:\"email\";s:3:\"tag\";s:5:\"EMAIL\";s:8:\"required\";b:1;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}i:1;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:10:\"First Name\";s:10:\"field_type\";s:4:\"text\";s:3:\"tag\";s:5:\"FNAME\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}i:2;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:9:\"Last Name\";s:10:\"field_type\";s:4:\"text\";s:3:\"tag\";s:5:\"LNAME\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}}s:19:\"interest_categories\";a:0:{}s:17:\"campaign_defaults\";O:8:\"stdClass\":2:{s:9:\"from_name\";s:6:\"ahrrhy\";s:10:\"from_email\";s:16:\"ahrrhy@gmail.com\";}}', 'no'),
(319, 'mc4wp_mailchimp_list_7f84efa085', 'O:20:\"MC4WP_MailChimp_List\":7:{s:2:\"id\";s:10:\"7f84efa085\";s:6:\"web_id\";i:106967;s:4:\"name\";s:5:\"skkov\";s:16:\"subscriber_count\";i:0;s:12:\"merge_fields\";a:2:{i:0;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:13:\"Email Address\";s:10:\"field_type\";s:5:\"email\";s:3:\"tag\";s:5:\"EMAIL\";s:8:\"required\";b:1;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}i:1;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:8:\"Untitled\";s:10:\"field_type\";s:4:\"text\";s:3:\"tag\";s:7:\"MMERGE1\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}}s:19:\"interest_categories\";a:0:{}s:17:\"campaign_defaults\";O:8:\"stdClass\":2:{s:9:\"from_name\";s:6:\"dealer\";s:10:\"from_email\";s:24:\"support.skokov@gmail.com\";}}', 'no'),
(320, 'mc4wp_default_form_id', '205', 'yes'),
(321, 'mc4wp_form_stylesheets', 'a:0:{}', 'yes'),
(323, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1539363683', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(324, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4511;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3056;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2593;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2451;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1885;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1682;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1675;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1462;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1408;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1404;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1404;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1336;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1285;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1251;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1116;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1077;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1049;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1040;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:930;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:895;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:836;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:819;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:809;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:737;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:709;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:699;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:690;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:686;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:668;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:663;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:661;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:650;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:645;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:620;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:620;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:607;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:601;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:600;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:573;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:556;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:548;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:544;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:533;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:527;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:524;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:518;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:516;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:512;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:506;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:499;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:492;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:490;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:483;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:482;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:460;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:455;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:452;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:446;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:437;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:426;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:423;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:422;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:419;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:411;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:392;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:380;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:375;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:372;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:368;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:367;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:366;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:362;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:354;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:352;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:349;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:349;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:344;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:340;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:339;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:337;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:332;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:314;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:311;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:301;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:301;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:294;}}', 'no'),
(332, '_site_transient_timeout_available_translations', '1539371198', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(333, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-22 00:11:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-13 19:50:59\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-26 07:51:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 13:08:41\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-08 18:04:52\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 08:22:12\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 14:26:14\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 14:25:22\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-08 10:19:50\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 22:06:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 22:06:02\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-24 23:51:26\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 08:47:41\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 13:34:08\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 16:09:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-28 16:07:01\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-30 10:41:34\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 15:16:30\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-10 17:20:09\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-04 08:05:41\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 07:24:22\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 19:03:27\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-02 11:16:28\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-20 00:15:02\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 09:43:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-08 11:53:09\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 06:05:40\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-24 04:57:34\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-25 00:05:58\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 16:42:45\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-25 08:51:48\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 11:11:49\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 10:13:23\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 10:11:08\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 11:10:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 05:15:17\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 11:50:07\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-26 15:06:48\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 06:33:48\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-30 20:13:53\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-26 12:03:12\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 07:46:08\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 08:13:44\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-08 19:05:26\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 07:42:01\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-06 08:37:04\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 06:46:15\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 13:50:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(338, '_site_transient_timeout_theme_roots', '1539405708', 'no'),
(341, '_site_transient_theme_roots', 'a:4:{s:5:\"tajem\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<ul>\n<li>\n    [text* your-name placeholder \"name\"]\n</li>\n<li>\n    [email* your-email placeholder \"email\"]\n</li>\n<li>\n    [text your-subject placeholder \"subject\"]\n</li>\n<li>\n    [textarea your-message placeholder \"your message\"]\n</li>\n<li>\n[submit \"Send\"]\n</li>\n</ul>'),
(4, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"tajem \"[your-subject]\"\";s:6:\"sender\";s:30:\"[your-name] <ahrrhy@gmail.com>\";s:9:\"recipient\";s:16:\"ahrrhy@gmail.com\";s:4:\"body\";s:166:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on tajem (http://localhost/tajem)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"tajem \"[your-subject]\"\";s:6:\"sender\";s:24:\"tajem <ahrrhy@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:108:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on tajem (http://localhost/tajem)\";s:18:\"additional_headers\";s:26:\"Reply-To: ahrrhy@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 5, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'en_US'),
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1539403909:1'),
(11, 8, '_edit_last', '1'),
(12, 8, '_edit_lock', '1539023171:1'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1539023193:1'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1539023207:1'),
(17, 14, '_edit_last', '1'),
(18, 14, '_edit_lock', '1539023223:1'),
(19, 16, '_edit_last', '1'),
(20, 16, '_edit_lock', '1539023241:1'),
(21, 18, '_edit_last', '1'),
(22, 18, '_edit_lock', '1539023255:1'),
(23, 20, '_edit_last', '1'),
(24, 20, '_edit_lock', '1539023279:1'),
(25, 22, '_edit_last', '1'),
(26, 22, '_edit_lock', '1539342683:1'),
(27, 24, '_edit_last', '1'),
(28, 24, '_edit_lock', '1539025763:1'),
(29, 27, '_menu_item_type', 'custom'),
(30, 27, '_menu_item_menu_item_parent', '0'),
(31, 27, '_menu_item_object_id', '27'),
(32, 27, '_menu_item_object', 'custom'),
(33, 27, '_menu_item_target', ''),
(34, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 27, '_menu_item_xfn', ''),
(36, 27, '_menu_item_url', '//localhost:3000/tajem/'),
(37, 27, '_menu_item_orphaned', '1539112428'),
(65, 31, '_menu_item_type', 'post_type'),
(66, 31, '_menu_item_menu_item_parent', '0'),
(67, 31, '_menu_item_object_id', '20'),
(68, 31, '_menu_item_object', 'page'),
(69, 31, '_menu_item_target', ''),
(70, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 31, '_menu_item_xfn', ''),
(72, 31, '_menu_item_url', ''),
(73, 31, '_menu_item_orphaned', '1539112428'),
(92, 34, '_menu_item_type', 'post_type'),
(93, 34, '_menu_item_menu_item_parent', '0'),
(94, 34, '_menu_item_object_id', '24'),
(95, 34, '_menu_item_object', 'page'),
(96, 34, '_menu_item_target', ''),
(97, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 34, '_menu_item_xfn', ''),
(99, 34, '_menu_item_url', ''),
(100, 34, '_menu_item_orphaned', '1539112428'),
(110, 36, '_menu_item_type', 'post_type'),
(111, 36, '_menu_item_menu_item_parent', '0'),
(112, 36, '_menu_item_object_id', '22'),
(113, 36, '_menu_item_object', 'page'),
(114, 36, '_menu_item_target', ''),
(115, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 36, '_menu_item_xfn', ''),
(117, 36, '_menu_item_url', ''),
(118, 36, '_menu_item_orphaned', '1539112428'),
(128, 38, '_menu_item_type', 'post_type'),
(129, 38, '_menu_item_menu_item_parent', '0'),
(130, 38, '_menu_item_object_id', '2'),
(131, 38, '_menu_item_object', 'page'),
(132, 38, '_menu_item_target', ''),
(133, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 38, '_menu_item_xfn', ''),
(135, 38, '_menu_item_url', ''),
(136, 38, '_menu_item_orphaned', '1539112428'),
(137, 39, '_edit_last', '1'),
(138, 39, '_edit_lock', '1539292950:1'),
(139, 40, '_edit_last', '1'),
(140, 40, '_edit_lock', '1539292936:1'),
(141, 41, '_edit_last', '1'),
(142, 41, '_edit_lock', '1539297521:1'),
(143, 42, '_edit_last', '1'),
(144, 42, '_edit_lock', '1539292930:1'),
(145, 43, '_edit_last', '1'),
(146, 43, '_edit_lock', '1539292927:1'),
(147, 44, '_edit_last', '1'),
(148, 44, '_edit_lock', '1539292923:1'),
(149, 8, '_wp_trash_meta_status', 'publish'),
(150, 8, '_wp_trash_meta_time', '1539116604'),
(151, 8, '_wp_desired_post_slug', 'about'),
(152, 18, '_wp_trash_meta_status', 'publish'),
(153, 18, '_wp_trash_meta_time', '1539116607'),
(154, 18, '_wp_desired_post_slug', 'contact'),
(155, 10, '_wp_trash_meta_status', 'publish'),
(156, 10, '_wp_trash_meta_time', '1539116609'),
(157, 10, '_wp_desired_post_slug', 'expertise'),
(158, 20, '_wp_trash_meta_status', 'publish'),
(159, 20, '_wp_trash_meta_time', '1539116612'),
(160, 20, '_wp_desired_post_slug', 'help'),
(161, 16, '_wp_trash_meta_status', 'publish'),
(162, 16, '_wp_trash_meta_time', '1539116614'),
(163, 16, '_wp_desired_post_slug', 'people-say'),
(164, 24, '_wp_trash_meta_status', 'publish'),
(165, 24, '_wp_trash_meta_time', '1539116616'),
(166, 24, '_wp_desired_post_slug', 'privacy'),
(167, 12, '_wp_trash_meta_status', 'publish'),
(168, 12, '_wp_trash_meta_time', '1539116618'),
(169, 12, '_wp_desired_post_slug', 'teams'),
(170, 3, '_wp_trash_meta_status', 'draft'),
(171, 3, '_wp_trash_meta_time', '1539116627'),
(172, 3, '_wp_desired_post_slug', 'privacy-policy'),
(173, 2, '_wp_trash_meta_status', 'publish'),
(174, 2, '_wp_trash_meta_time', '1539116629'),
(175, 2, '_wp_desired_post_slug', 'sample-page'),
(176, 14, '_wp_trash_meta_status', 'publish'),
(177, 14, '_wp_trash_meta_time', '1539116633'),
(178, 14, '_wp_desired_post_slug', 'works'),
(179, 47, '_edit_last', '1'),
(180, 47, '_edit_lock', '1539348624:1'),
(181, 49, '_edit_last', '1'),
(182, 49, '_edit_lock', '1539342683:1'),
(183, 51, '_menu_item_type', 'post_type'),
(184, 51, '_menu_item_menu_item_parent', '0'),
(185, 51, '_menu_item_object_id', '44'),
(186, 51, '_menu_item_object', 'page_sections'),
(187, 51, '_menu_item_target', ''),
(188, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 51, '_menu_item_xfn', ''),
(190, 51, '_menu_item_url', ''),
(191, 51, '_menu_item_orphaned', '1539116966'),
(192, 52, '_menu_item_type', 'post_type'),
(193, 52, '_menu_item_menu_item_parent', '0'),
(194, 52, '_menu_item_object_id', '43'),
(195, 52, '_menu_item_object', 'page_sections'),
(196, 52, '_menu_item_target', ''),
(197, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 52, '_menu_item_xfn', ''),
(199, 52, '_menu_item_url', ''),
(200, 52, '_menu_item_orphaned', '1539116966'),
(201, 53, '_menu_item_type', 'post_type'),
(202, 53, '_menu_item_menu_item_parent', '0'),
(203, 53, '_menu_item_object_id', '42'),
(204, 53, '_menu_item_object', 'page_sections'),
(205, 53, '_menu_item_target', ''),
(206, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 53, '_menu_item_xfn', ''),
(208, 53, '_menu_item_url', ''),
(209, 53, '_menu_item_orphaned', '1539116966'),
(210, 54, '_menu_item_type', 'post_type'),
(211, 54, '_menu_item_menu_item_parent', '0'),
(212, 54, '_menu_item_object_id', '41'),
(213, 54, '_menu_item_object', 'page_sections'),
(214, 54, '_menu_item_target', ''),
(215, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 54, '_menu_item_xfn', ''),
(217, 54, '_menu_item_url', ''),
(218, 54, '_menu_item_orphaned', '1539116966'),
(219, 55, '_menu_item_type', 'post_type'),
(220, 55, '_menu_item_menu_item_parent', '0'),
(221, 55, '_menu_item_object_id', '40'),
(222, 55, '_menu_item_object', 'page_sections'),
(223, 55, '_menu_item_target', ''),
(224, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 55, '_menu_item_xfn', ''),
(226, 55, '_menu_item_url', ''),
(227, 55, '_menu_item_orphaned', '1539116966'),
(228, 56, '_menu_item_type', 'post_type'),
(229, 56, '_menu_item_menu_item_parent', '0'),
(230, 56, '_menu_item_object_id', '39'),
(231, 56, '_menu_item_object', 'page_sections'),
(232, 56, '_menu_item_target', ''),
(233, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(234, 56, '_menu_item_xfn', ''),
(235, 56, '_menu_item_url', ''),
(236, 56, '_menu_item_orphaned', '1539116966'),
(237, 57, '_menu_item_type', 'custom'),
(238, 57, '_menu_item_menu_item_parent', '0'),
(239, 57, '_menu_item_object_id', '57'),
(240, 57, '_menu_item_object', 'custom'),
(241, 57, '_menu_item_target', ''),
(242, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 57, '_menu_item_xfn', ''),
(244, 57, '_menu_item_url', '#about'),
(246, 58, '_menu_item_type', 'custom'),
(247, 58, '_menu_item_menu_item_parent', '0'),
(248, 58, '_menu_item_object_id', '58'),
(249, 58, '_menu_item_object', 'custom'),
(250, 58, '_menu_item_target', ''),
(251, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 58, '_menu_item_xfn', ''),
(253, 58, '_menu_item_url', '#expertise'),
(255, 59, '_menu_item_type', 'custom'),
(256, 59, '_menu_item_menu_item_parent', '0'),
(257, 59, '_menu_item_object_id', '59'),
(258, 59, '_menu_item_object', 'custom'),
(259, 59, '_menu_item_target', ''),
(260, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 59, '_menu_item_xfn', ''),
(262, 59, '_menu_item_url', '#teams'),
(264, 60, '_menu_item_type', 'custom'),
(265, 60, '_menu_item_menu_item_parent', '0'),
(266, 60, '_menu_item_object_id', '60'),
(267, 60, '_menu_item_object', 'custom'),
(268, 60, '_menu_item_target', ''),
(269, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 60, '_menu_item_xfn', ''),
(271, 60, '_menu_item_url', '#works'),
(273, 61, '_menu_item_type', 'custom'),
(274, 61, '_menu_item_menu_item_parent', '0'),
(275, 61, '_menu_item_object_id', '61'),
(276, 61, '_menu_item_object', 'custom'),
(277, 61, '_menu_item_target', ''),
(278, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 61, '_menu_item_xfn', ''),
(280, 61, '_menu_item_url', '#people-say'),
(282, 62, '_menu_item_type', 'custom'),
(283, 62, '_menu_item_menu_item_parent', '0'),
(284, 62, '_menu_item_object_id', '62'),
(285, 62, '_menu_item_object', 'custom'),
(286, 62, '_menu_item_target', ''),
(287, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 62, '_menu_item_xfn', ''),
(289, 62, '_menu_item_url', '#contact'),
(291, 63, '_wp_attached_file', '2018/10/logo.png'),
(292, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:44;s:6:\"height\";i:50;s:4:\"file\";s:16:\"2018/10/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(293, 64, '_wp_attached_file', '2018/10/cropped-logo.png'),
(294, 64, '_wp_attachment_context', 'custom-logo'),
(295, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:44;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2018/10/cropped-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 65, '_wp_trash_meta_status', 'publish'),
(297, 65, '_wp_trash_meta_time', '1539119305'),
(298, 67, '_edit_last', '1'),
(299, 67, '_edit_lock', '1539191332:1'),
(300, 68, '_wp_attached_file', '2018/10/first-slide.jpg'),
(301, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:670;s:4:\"file\";s:23:\"2018/10/first-slide.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"first-slide-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"first-slide-300x126.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"first-slide-768x322.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"first-slide-1024x429.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:429;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 68, '_wp_attachment_image_alt', 'fourth-slide'),
(303, 67, '_thumbnail_id', '68'),
(304, 69, '_edit_last', '1'),
(305, 69, '_edit_lock', '1539191333:1'),
(306, 69, '_thumbnail_id', '68'),
(307, 70, '_edit_last', '1'),
(308, 70, '_edit_lock', '1539191334:1'),
(309, 70, '_thumbnail_id', '68'),
(310, 71, '_edit_last', '1'),
(311, 71, '_edit_lock', '1539191334:1'),
(312, 71, '_thumbnail_id', '68'),
(313, 1, '_edit_lock', '1539201965:1'),
(314, 75, '_edit_last', '1'),
(315, 75, '_edit_lock', '1539248142:1'),
(316, 39, 'video_story', ''),
(317, 39, '_video_story', 'field_5bbe630a120dc'),
(318, 77, '_wp_attached_file', '2018/10/logo-huge.png'),
(319, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:229;s:4:\"file\";s:21:\"2018/10/logo-huge.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-huge-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(320, 77, '_wp_attachment_image_alt', 'logo-huge'),
(321, 39, '_thumbnail_id', '77'),
(322, 39, 'post_link', 'http://localhost/tajem/page_sections/about/'),
(323, 39, '_post_link', 'field_5bbefaf42561a'),
(324, 39, '_oembed_adecbc9d3c5f503643cb6906dc503789', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/pOmu0LtcI6Y?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(325, 39, '_oembed_time_adecbc9d3c5f503643cb6906dc503789', '1539247409'),
(326, 6, '_oembed_adecbc9d3c5f503643cb6906dc503789', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/pOmu0LtcI6Y?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(327, 6, '_oembed_time_adecbc9d3c5f503643cb6906dc503789', '1539248296'),
(328, 6, '_oembed_fdef8e2190bd058db57b0e701471227f', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/pOmu0LtcI6Y?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(329, 6, '_oembed_time_fdef8e2190bd058db57b0e701471227f', '1539248342'),
(330, 81, '_edit_last', '1'),
(331, 81, '_edit_lock', '1539300566:1'),
(332, 6, 'show_expertise_section', '1'),
(333, 6, '_show_expertise_section', 'field_5bbf1df3d0fb9'),
(334, 6, 'expertise_section_title', 'Expertise'),
(335, 6, '_expertise_section_title', 'field_5bbfdcd8fb150'),
(336, 6, 'expertise_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(337, 6, '_expertise_section_description', 'field_5bbfdd04fb151'),
(338, 80, 'show_expertise_section', '1'),
(339, 80, '_show_expertise_section', 'field_5bbf1df3d0fb9'),
(340, 80, 'expertise_section_title', 'Expertise'),
(341, 80, '_expertise_section_title', 'field_5bbfdcd8fb150'),
(342, 80, 'expertise_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(343, 80, '_expertise_section_description', 'field_5bbfdd04fb151'),
(344, 86, '_edit_last', '1'),
(345, 86, '_edit_lock', '1539259936:1'),
(346, 87, '_wp_attached_file', '2018/10/webdesign-expertise.png'),
(347, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:49;s:6:\"height\";i:50;s:4:\"file\";s:31:\"2018/10/webdesign-expertise.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 87, '_wp_attachment_image_alt', 'webdesign-expertise'),
(349, 86, '_thumbnail_id', '87'),
(350, 88, '_edit_last', '1'),
(351, 88, '_edit_lock', '1539259968:1'),
(352, 89, '_wp_attached_file', '2018/10/branding-expertise.png'),
(353, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:42;s:4:\"file\";s:30:\"2018/10/branding-expertise.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 89, '_wp_attachment_image_alt', 'branding-expertise'),
(355, 88, '_thumbnail_id', '89'),
(356, 90, '_edit_last', '1'),
(357, 90, '_edit_lock', '1539260003:1'),
(358, 91, '_wp_attached_file', '2018/10/mobile-app-expertise.png'),
(359, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:50;s:4:\"file\";s:32:\"2018/10/mobile-app-expertise.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 91, '_wp_attachment_image_alt', 'mobile-app-expertise'),
(361, 90, '_thumbnail_id', '91'),
(362, 93, '_wp_attached_file', '2018/10/search-expeertise.png'),
(363, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:29:\"2018/10/search-expeertise.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 93, '_wp_attachment_image_alt', 'search-expeertise'),
(365, 92, '_edit_last', '1'),
(366, 92, '_thumbnail_id', '93'),
(367, 92, '_edit_lock', '1539260067:1'),
(368, 94, '_edit_last', '1'),
(369, 94, '_edit_lock', '1539260096:1'),
(370, 95, '_wp_attached_file', '2018/10/game-expertise.png'),
(371, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:41;s:6:\"height\";i:50;s:4:\"file\";s:26:\"2018/10/game-expertise.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 95, '_wp_attachment_image_alt', 'game-expertise'),
(373, 94, '_thumbnail_id', '95'),
(374, 96, '_edit_last', '1'),
(375, 96, '_edit_lock', '1539260130:1'),
(376, 97, '_wp_attached_file', '2018/10/love-expertise.png'),
(377, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:46;s:4:\"file\";s:26:\"2018/10/love-expertise.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(378, 97, '_wp_attachment_image_alt', 'love-expertise'),
(379, 96, '_thumbnail_id', '97'),
(383, 99, '_wp_trash_meta_status', 'publish'),
(384, 99, '_wp_trash_meta_time', '1539292083'),
(385, 100, '_wp_attached_file', '2018/10/team-section-background.jpg'),
(386, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:712;s:4:\"file\";s:35:\"2018/10/team-section-background.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"team-section-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"team-section-background-300x134.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"team-section-background-768x342.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:342;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"team-section-background-1024x456.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 101, '_wp_trash_meta_status', 'publish'),
(388, 101, '_wp_trash_meta_time', '1539292554'),
(389, 103, '_edit_last', '1'),
(390, 103, '_edit_lock', '1539330728:1'),
(391, 75, '_wp_trash_meta_status', 'publish'),
(392, 75, '_wp_trash_meta_time', '1539293006'),
(393, 75, '_wp_desired_post_slug', 'group_5bbe62b06a334'),
(394, 107, '_edit_last', '1'),
(395, 107, '_edit_lock', '1539297972:1'),
(396, 109, '_edit_last', '1'),
(397, 109, '_edit_lock', '1539293053:1'),
(398, 110, '_wp_attached_file', '2018/10/employee.png'),
(399, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:229;s:4:\"file\";s:20:\"2018/10/employee.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"employee-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(400, 110, '_wp_attachment_image_alt', 'employee'),
(401, 109, '_thumbnail_id', '110'),
(402, 111, '_edit_last', '1'),
(403, 111, '_edit_lock', '1539293092:1'),
(404, 111, '_thumbnail_id', '110'),
(405, 112, '_edit_last', '1'),
(406, 112, '_thumbnail_id', '110'),
(407, 112, '_edit_lock', '1539293116:1'),
(408, 113, '_edit_last', '1'),
(409, 113, '_edit_lock', '1539293628:1'),
(410, 113, '_thumbnail_id', '110'),
(411, 6, 'employees_section_title', 'MEET OUR AMAZING TEAM'),
(412, 6, '_employees_section_title', 'field_5bbfbe5b5fe11'),
(413, 6, 'employees_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(414, 6, '_employees_section_description', 'field_5bbfbec15fe12'),
(415, 80, 'employees_section_title', 'MEET OUR AMAZING TEAM'),
(416, 80, '_employees_section_title', 'field_5bbfbe5b5fe11'),
(417, 80, 'employees_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(418, 80, '_employees_section_description', 'field_5bbfbec15fe12'),
(419, 6, 'hiring_request_text', 'Become part of our dream team, let’s join us !'),
(420, 6, '_hiring_request_text', 'field_5bbfd189e38d4'),
(421, 6, 'hiring_page_link', 'http://localhost/tajem/we-are-hiring/'),
(422, 6, '_hiring_page_link', 'field_5bbfd231e38d5'),
(423, 6, 'hiring_link_text', 'We are hiring'),
(424, 6, '_hiring_link_text', 'field_5bbfd2ffe38d6'),
(425, 80, 'hiring_request_text', 'Become part of our dream team, let’s join us !'),
(426, 80, '_hiring_request_text', 'field_5bbfd189e38d4'),
(427, 80, 'hiring_page_link', 'http://localhost/tajem/we-are-hiring/'),
(428, 80, '_hiring_page_link', 'field_5bbfd231e38d5'),
(429, 80, 'hiring_link_text', 'We are hiring'),
(430, 80, '_hiring_link_text', 'field_5bbfd2ffe38d6'),
(431, 118, '_edit_last', '1'),
(432, 118, '_edit_lock', '1539300009:1'),
(433, 119, '_wp_attached_file', '2018/10/item1.png'),
(434, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(435, 119, '_wp_attachment_image_alt', 'item1'),
(436, 118, '_thumbnail_id', '119'),
(437, 120, '_edit_last', '1'),
(438, 120, '_edit_lock', '1539300026:1'),
(439, 121, '_wp_attached_file', '2018/10/item2.png'),
(440, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(441, 121, '_wp_attachment_image_alt', 'item2'),
(442, 120, '_thumbnail_id', '121'),
(443, 122, '_edit_last', '1'),
(444, 122, '_edit_lock', '1539300050:1'),
(445, 123, '_wp_attached_file', '2018/10/item3.png'),
(446, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(447, 123, '_wp_attachment_image_alt', 'item3'),
(448, 122, '_thumbnail_id', '123'),
(449, 124, '_edit_last', '1'),
(450, 124, '_edit_lock', '1539300090:1'),
(451, 125, '_wp_attached_file', '2018/10/item4.png'),
(452, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 125, '_wp_attachment_image_alt', 'item4'),
(454, 124, '_thumbnail_id', '125'),
(455, 126, '_edit_last', '1'),
(456, 126, '_edit_lock', '1539300115:1'),
(457, 127, '_wp_attached_file', '2018/10/item5.png'),
(458, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item5.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(459, 127, '_wp_attachment_image_alt', 'item5'),
(460, 126, '_thumbnail_id', '127'),
(461, 128, '_edit_last', '1'),
(462, 128, '_edit_lock', '1539300134:1'),
(463, 129, '_wp_attached_file', '2018/10/item6.png'),
(464, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(465, 129, '_wp_attachment_image_alt', 'item6'),
(466, 128, '_thumbnail_id', '129'),
(467, 130, '_edit_last', '1'),
(468, 130, '_edit_lock', '1539300153:1'),
(469, 131, '_wp_attached_file', '2018/10/item7.png'),
(470, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item7.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(471, 131, '_wp_attachment_image_alt', 'item7'),
(472, 130, '_thumbnail_id', '131'),
(473, 132, '_edit_last', '1'),
(474, 132, '_edit_lock', '1539300181:1'),
(475, 133, '_wp_attached_file', '2018/10/item8.png'),
(476, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item8.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(477, 133, '_wp_attachment_image_alt', 'item8'),
(478, 132, '_thumbnail_id', '133'),
(479, 134, '_edit_last', '1'),
(480, 134, '_edit_lock', '1539300201:1'),
(481, 135, '_wp_attached_file', '2018/10/item9.png'),
(482, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2018/10/item9.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(483, 135, '_wp_attachment_image_alt', 'item9'),
(484, 134, '_thumbnail_id', '135'),
(485, 136, '_edit_last', '1'),
(486, 136, '_edit_lock', '1539300220:1'),
(487, 137, '_wp_attached_file', '2018/10/item10.png'),
(488, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:18:\"2018/10/item10.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(489, 137, '_wp_attachment_image_alt', 'item10'),
(490, 136, '_thumbnail_id', '137'),
(491, 138, '_edit_last', '1'),
(492, 138, '_edit_lock', '1539300241:1'),
(493, 139, '_wp_attached_file', '2018/10/item11.png'),
(494, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:18:\"2018/10/item11.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(495, 139, '_wp_attachment_image_alt', 'item11'),
(496, 138, '_thumbnail_id', '139'),
(497, 140, '_edit_last', '1'),
(498, 140, '_edit_lock', '1539300295:1'),
(499, 141, '_wp_attached_file', '2018/10/item12.png'),
(500, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:200;s:4:\"file\";s:18:\"2018/10/item12.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"item12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(501, 141, '_wp_attachment_image_alt', 'item12'),
(502, 140, '_thumbnail_id', '141'),
(503, 142, '_edit_lock', '1539300361:1'),
(504, 142, '_wp_trash_meta_status', 'publish'),
(505, 142, '_wp_trash_meta_time', '1539300510'),
(506, 142, '_wp_desired_post_slug', 'group_5bbfdc8137237'),
(507, 143, '_wp_trash_meta_status', 'publish'),
(508, 143, '_wp_trash_meta_time', '1539300510'),
(509, 143, '_wp_desired_post_slug', 'field_5bbfdc813dc61'),
(510, 144, '_wp_trash_meta_status', 'publish'),
(511, 144, '_wp_trash_meta_time', '1539300510'),
(512, 144, '_wp_desired_post_slug', 'field_5bbfdc813e011'),
(513, 145, '_wp_trash_meta_status', 'publish'),
(514, 145, '_wp_trash_meta_time', '1539300510'),
(515, 145, '_wp_desired_post_slug', 'field_5bbfdc813e413'),
(516, 81, '_wp_trash_meta_status', 'publish'),
(517, 81, '_wp_trash_meta_time', '1539300718'),
(518, 81, '_wp_desired_post_slug', 'group_5bbf1d81e10e9'),
(519, 82, '_wp_trash_meta_status', 'publish'),
(520, 82, '_wp_trash_meta_time', '1539300718'),
(521, 82, '_wp_desired_post_slug', 'field_5bbf1d84d0fb7'),
(522, 84, '_wp_trash_meta_status', 'publish'),
(523, 84, '_wp_trash_meta_time', '1539300718'),
(524, 84, '_wp_desired_post_slug', 'field_5bbf1e54d0fba'),
(525, 85, '_wp_trash_meta_status', 'publish'),
(526, 85, '_wp_trash_meta_time', '1539300718'),
(527, 85, '_wp_desired_post_slug', 'field_5bbf1e87d0fbb'),
(528, 6, 'work_section_title', 'OUR WORKS'),
(529, 6, '_work_section_title', 'field_5bbfddd255e77'),
(530, 6, 'dribble_link_url', 'https://dribbble.com/'),
(531, 6, '_dribble_link_url', 'field_5bbfde2155e78'),
(532, 6, 'dribbble_link_text', 'See All Project in dribbble'),
(533, 6, '_dribbble_link_text', 'field_5bbfde6d55e79'),
(534, 6, 'load_works_button_text', 'load more'),
(535, 6, '_load_works_button_text', 'field_5bbfdebd55e7a'),
(536, 154, 'show_expertise_section', '1'),
(537, 154, '_show_expertise_section', 'field_5bbf1df3d0fb9'),
(538, 154, 'expertise_section_title', 'Expertise'),
(539, 154, '_expertise_section_title', 'field_5bbfdcd8fb150'),
(540, 154, 'expertise_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(541, 154, '_expertise_section_description', 'field_5bbfdd04fb151'),
(542, 154, 'employees_section_title', 'MEET OUR AMAZING TEAM'),
(543, 154, '_employees_section_title', 'field_5bbfbe5b5fe11'),
(544, 154, 'employees_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(545, 154, '_employees_section_description', 'field_5bbfbec15fe12'),
(546, 154, 'hiring_request_text', 'Become part of our dream team, let’s join us !'),
(547, 154, '_hiring_request_text', 'field_5bbfd189e38d4'),
(548, 154, 'hiring_page_link', 'http://localhost/tajem/we-are-hiring/'),
(549, 154, '_hiring_page_link', 'field_5bbfd231e38d5'),
(550, 154, 'hiring_link_text', 'We are hiring'),
(551, 154, '_hiring_link_text', 'field_5bbfd2ffe38d6'),
(552, 154, 'work_section_title', 'OUR WORKS'),
(553, 154, '_work_section_title', 'field_5bbfddd255e77'),
(554, 154, 'dribble_link_url', 'https://dribbble.com/'),
(555, 154, '_dribble_link_url', 'field_5bbfde2155e78'),
(556, 154, 'dribbble_link_text', 'See All Project in dribbble'),
(557, 154, '_dribbble_link_text', 'field_5bbfde6d55e79'),
(558, 154, 'load_works_button_text', 'load more'),
(559, 154, '_load_works_button_text', 'field_5bbfdebd55e7a'),
(560, 6, 'works_section_title', 'OUR WORKS'),
(561, 6, '_works_section_title', 'field_5bbfddd255e77'),
(562, 154, 'works_section_title', ''),
(563, 154, '_works_section_title', 'field_5bbfddd255e77'),
(564, 155, 'show_expertise_section', '1'),
(565, 155, '_show_expertise_section', 'field_5bbf1df3d0fb9'),
(566, 155, 'expertise_section_title', 'Expertise'),
(567, 155, '_expertise_section_title', 'field_5bbfdcd8fb150'),
(568, 155, 'expertise_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(569, 155, '_expertise_section_description', 'field_5bbfdd04fb151'),
(570, 155, 'employees_section_title', 'MEET OUR AMAZING TEAM'),
(571, 155, '_employees_section_title', 'field_5bbfbe5b5fe11'),
(572, 155, 'employees_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(573, 155, '_employees_section_description', 'field_5bbfbec15fe12'),
(574, 155, 'hiring_request_text', 'Become part of our dream team, let’s join us !'),
(575, 155, '_hiring_request_text', 'field_5bbfd189e38d4'),
(576, 155, 'hiring_page_link', 'http://localhost/tajem/we-are-hiring/'),
(577, 155, '_hiring_page_link', 'field_5bbfd231e38d5'),
(578, 155, 'hiring_link_text', 'We are hiring'),
(579, 155, '_hiring_link_text', 'field_5bbfd2ffe38d6'),
(580, 155, 'work_section_title', 'OUR WORKS'),
(581, 155, '_work_section_title', 'field_5bbfddd255e77'),
(582, 155, 'dribble_link_url', 'https://dribbble.com/'),
(583, 155, '_dribble_link_url', 'field_5bbfde2155e78'),
(584, 155, 'dribbble_link_text', 'See All Project in dribbble'),
(585, 155, '_dribbble_link_text', 'field_5bbfde6d55e79'),
(586, 155, 'load_works_button_text', 'load more'),
(587, 155, '_load_works_button_text', 'field_5bbfdebd55e7a'),
(588, 155, 'works_section_title', 'OUR WORKS'),
(589, 155, '_works_section_title', 'field_5bbfddd255e77'),
(590, 156, '_edit_last', '1'),
(591, 156, '_edit_lock', '1539305210:1'),
(592, 157, '_wp_attached_file', '2018/10/customer1.png'),
(593, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"file\";s:21:\"2018/10/customer1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(594, 157, '_wp_attachment_image_alt', 'customer1'),
(595, 156, '_thumbnail_id', '157'),
(596, 158, '_edit_last', '1'),
(597, 158, '_edit_lock', '1539328576:1'),
(598, 156, 'customer_position', 'CEO TENGKUREP'),
(599, 156, '_customer_position', 'field_5bbfed2b4aaf5'),
(600, 160, '_edit_last', '1'),
(601, 160, '_edit_lock', '1539305190:1'),
(602, 161, '_wp_attached_file', '2018/10/customer2.png'),
(603, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"file\";s:21:\"2018/10/customer2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(604, 161, '_wp_attachment_image_alt', 'customer2'),
(605, 160, '_thumbnail_id', '161'),
(606, 160, 'customer_position', 'CEO TENGKUREP'),
(607, 160, '_customer_position', 'field_5bbfed2b4aaf5'),
(608, 162, '_edit_last', '1'),
(609, 162, '_edit_lock', '1539305196:1'),
(610, 163, '_wp_attached_file', '2018/10/customer3.png'),
(611, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"file\";s:21:\"2018/10/customer3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(612, 163, '_wp_attachment_image_alt', 'customer3'),
(613, 162, '_thumbnail_id', '163'),
(614, 162, 'customer_position', 'CEO TENGKUREP'),
(615, 162, '_customer_position', 'field_5bbfed2b4aaf5'),
(616, 164, '_edit_last', '1'),
(617, 164, '_edit_lock', '1539305201:1'),
(618, 165, '_wp_attached_file', '2018/10/customer4.png'),
(619, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"file\";s:21:\"2018/10/customer4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(620, 165, '_wp_attachment_image_alt', 'customer4'),
(621, 164, '_thumbnail_id', '165'),
(622, 164, 'customer_position', 'CEO TENGKUREP'),
(623, 164, '_customer_position', 'field_5bbfed2b4aaf5'),
(624, 166, '_edit_last', '1'),
(625, 166, '_edit_lock', '1539305177:1'),
(626, 167, '_wp_attached_file', '2018/10/customer5.png'),
(627, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"file\";s:21:\"2018/10/customer5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(628, 167, '_wp_attachment_image_alt', 'customer5'),
(629, 166, '_thumbnail_id', '167'),
(630, 166, 'customer_position', 'CEO TENGKUREP'),
(631, 166, '_customer_position', 'field_5bbfed2b4aaf5'),
(632, 168, '_wp_attached_file', '2018/10/testimonials-background.png'),
(633, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:500;s:4:\"file\";s:35:\"2018/10/testimonials-background.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"testimonials-background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"testimonials-background-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"testimonials-background-768x240.png\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"testimonials-background-1024x320.png\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(634, 168, '_wp_attachment_image_alt', 'testimonials-background'),
(635, 169, '_wp_trash_meta_status', 'publish'),
(636, 169, '_wp_trash_meta_time', '1539305670'),
(637, 170, '_menu_item_type', 'custom'),
(638, 170, '_menu_item_menu_item_parent', '0'),
(639, 170, '_menu_item_object_id', '170'),
(640, 170, '_menu_item_object', 'custom'),
(641, 170, '_menu_item_target', ''),
(642, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(643, 170, '_menu_item_xfn', ''),
(644, 170, '_menu_item_url', '#page-top'),
(646, 6, 'contact_form_title', 'GIVE US A GOOD NEWS'),
(647, 6, '_contact_form_title', 'field_5bc0126e430bc'),
(648, 6, 'clients_title', 'OUR HAPPY CLIENT'),
(649, 6, '_clients_title', 'field_5bc012a2430bd'),
(650, 155, 'contact_form_title', 'GIVE US A GOOD NEWS'),
(651, 155, '_contact_form_title', 'field_5bc0126e430bc'),
(652, 155, 'clients_title', 'OUR HAPPY CLIENT'),
(653, 155, '_clients_title', 'field_5bc012a2430bd'),
(654, 6, 'contact_form_shortcode', '[contact-form-7 id=\"5\" title=\"Contact form 1\"]'),
(655, 6, '_contact_form_shortcode', 'field_5bc0132bc1011'),
(656, 155, 'contact_form_shortcode', ''),
(657, 155, '_contact_form_shortcode', 'field_5bc0132bc1011'),
(658, 175, 'show_expertise_section', '1'),
(659, 175, '_show_expertise_section', 'field_5bbf1df3d0fb9'),
(660, 175, 'expertise_section_title', 'Expertise'),
(661, 175, '_expertise_section_title', 'field_5bbfdcd8fb150'),
(662, 175, 'expertise_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(663, 175, '_expertise_section_description', 'field_5bbfdd04fb151'),
(664, 175, 'employees_section_title', 'MEET OUR AMAZING TEAM'),
(665, 175, '_employees_section_title', 'field_5bbfbe5b5fe11'),
(666, 175, 'employees_section_description', 'Lorem ipsum dolor sit amet proin gravida nibh vel velit'),
(667, 175, '_employees_section_description', 'field_5bbfbec15fe12'),
(668, 175, 'hiring_request_text', 'Become part of our dream team, let’s join us !'),
(669, 175, '_hiring_request_text', 'field_5bbfd189e38d4'),
(670, 175, 'hiring_page_link', 'http://localhost/tajem/we-are-hiring/'),
(671, 175, '_hiring_page_link', 'field_5bbfd231e38d5'),
(672, 175, 'hiring_link_text', 'We are hiring'),
(673, 175, '_hiring_link_text', 'field_5bbfd2ffe38d6'),
(674, 175, 'work_section_title', 'OUR WORKS'),
(675, 175, '_work_section_title', 'field_5bbfddd255e77'),
(676, 175, 'dribble_link_url', 'https://dribbble.com/'),
(677, 175, '_dribble_link_url', 'field_5bbfde2155e78'),
(678, 175, 'dribbble_link_text', 'See All Project in dribbble'),
(679, 175, '_dribbble_link_text', 'field_5bbfde6d55e79'),
(680, 175, 'load_works_button_text', 'load more'),
(681, 175, '_load_works_button_text', 'field_5bbfdebd55e7a'),
(682, 175, 'works_section_title', 'OUR WORKS'),
(683, 175, '_works_section_title', 'field_5bbfddd255e77'),
(684, 175, 'contact_form_title', 'GIVE US A GOOD NEWS'),
(685, 175, '_contact_form_title', 'field_5bc0126e430bc'),
(686, 175, 'clients_title', 'OUR HAPPY CLIENT'),
(687, 175, '_clients_title', 'field_5bc012a2430bd'),
(688, 175, 'contact_form_shortcode', '[contact-form-7 id=\"5\" title=\"Contact form 1\"]'),
(689, 175, '_contact_form_shortcode', 'field_5bc0132bc1011'),
(690, 176, '_edit_last', '1'),
(691, 176, '_edit_lock', '1539330768:1'),
(692, 177, '_wp_attached_file', '2018/10/Zara_Logo.svg_.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(693, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:22;s:4:\"file\";s:26:\"2018/10/Zara_Logo.svg_.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Zara_Logo.svg_-150x22.png\";s:5:\"width\";i:150;s:6:\"height\";i:22;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 177, '_wp_attachment_image_alt', 'Zara_Logo.svg'),
(695, 176, '_thumbnail_id', '177'),
(696, 178, '_edit_last', '1'),
(697, 178, '_edit_lock', '1539330799:1'),
(698, 179, '_wp_attached_file', '2018/10/Logo_of_Mango_new.svg_.png'),
(699, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:138;s:6:\"height\";i:22;s:4:\"file\";s:34:\"2018/10/Logo_of_Mango_new.svg_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(700, 179, '_wp_attachment_image_alt', 'Logo_of_Mango_(new).svg'),
(701, 178, '_thumbnail_id', '179'),
(702, 180, '_edit_last', '1'),
(703, 180, '_edit_lock', '1539330839:1'),
(704, 181, '_wp_attached_file', '2018/10/Barneys_New_York_Logo.svg_.png'),
(705, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:154;s:6:\"height\";i:41;s:4:\"file\";s:38:\"2018/10/Barneys_New_York_Logo.svg_.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Barneys_New_York_Logo.svg_-150x41.png\";s:5:\"width\";i:150;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(706, 181, '_wp_attachment_image_alt', 'Barneys_New_York_Logo.svg'),
(707, 180, '_thumbnail_id', '181'),
(708, 182, '_edit_last', '1'),
(709, 182, '_edit_lock', '1539330873:1'),
(710, 183, '_wp_attached_file', '2018/10/1280px-Gucci_Logo.svg_.png'),
(711, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:21;s:4:\"file\";s:34:\"2018/10/1280px-Gucci_Logo.svg_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(712, 183, '_wp_attachment_image_alt', '1280px-Gucci_Logo.svg'),
(713, 182, '_thumbnail_id', '183'),
(714, 184, '_edit_last', '1'),
(715, 184, '_edit_lock', '1539330925:1'),
(716, 185, '_wp_attached_file', '2018/10/Calvin_klein_logo.svg_.png'),
(717, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:151;s:6:\"height\";i:24;s:4:\"file\";s:34:\"2018/10/Calvin_klein_logo.svg_.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Calvin_klein_logo.svg_-150x24.png\";s:5:\"width\";i:150;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 185, '_wp_attachment_image_alt', 'Calvin_klein_logo.svg'),
(719, 184, '_thumbnail_id', '185'),
(720, 186, '_edit_last', '1'),
(721, 186, '_edit_lock', '1539330945:1'),
(722, 187, '_wp_attached_file', '2018/10/1280px-Logo_NIKE.svg_.png'),
(723, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:95;s:6:\"height\";i:34;s:4:\"file\";s:33:\"2018/10/1280px-Logo_NIKE.svg_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(724, 187, '_wp_attachment_image_alt', '1280px-Logo_NIKE.svg'),
(725, 186, '_thumbnail_id', '187'),
(726, 188, '_edit_last', '1'),
(727, 188, '_edit_lock', '1539330972:1'),
(728, 189, '_wp_attached_file', '2018/10/Converse_logo.svg_.png'),
(729, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:113;s:6:\"height\";i:69;s:4:\"file\";s:30:\"2018/10/Converse_logo.svg_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(730, 189, '_wp_attachment_image_alt', 'Converse_logo.svg'),
(731, 188, '_thumbnail_id', '189'),
(732, 190, '_edit_last', '1'),
(733, 190, '_edit_lock', '1539331029:1'),
(734, 191, '_wp_attached_file', '2018/10/Puma_Logo.svg_.png'),
(735, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:114;s:6:\"height\";i:56;s:4:\"file\";s:26:\"2018/10/Puma_Logo.svg_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(736, 191, '_wp_attachment_image_alt', 'Puma_Logo.svg'),
(737, 190, '_thumbnail_id', '191'),
(738, 192, '_edit_last', '1'),
(739, 192, '_edit_lock', '1539331060:1'),
(740, 193, '_wp_attached_file', '2018/10/1280px-Levis_logo.svg_.png'),
(741, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:109;s:6:\"height\";i:53;s:4:\"file\";s:34:\"2018/10/1280px-Levis_logo.svg_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(742, 193, '_wp_attachment_image_alt', '1280px-Levi\'s_logo.svg'),
(743, 192, '_thumbnail_id', '193'),
(744, 194, '_edit_last', '1'),
(745, 194, '_edit_lock', '1539340326:1'),
(746, 195, '_wp_attached_file', '2018/10/Billabong.svg_.png'),
(747, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:70;s:4:\"file\";s:26:\"2018/10/Billabong.svg_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(748, 195, '_wp_attachment_image_alt', 'Billabong.svg'),
(749, 194, '_thumbnail_id', '195'),
(750, 196, '_wp_attached_file', '2018/10/cropped-logo-1.png'),
(751, 196, '_wp_attachment_context', 'site-icon'),
(752, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2018/10/cropped-logo-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(753, 197, '_edit_lock', '1539336413:1'),
(754, 197, '_wp_trash_meta_status', 'publish'),
(755, 197, '_wp_trash_meta_time', '1539336417'),
(756, 198, '_wp_attached_file', '2018/10/footer-background.png'),
(757, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:29:\"2018/10/footer-background.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"footer-background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"footer-background-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"footer-background-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"footer-background-1024x256.png\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(758, 198, '_wp_attachment_image_alt', 'footer-background'),
(759, 199, '_wp_trash_meta_status', 'publish'),
(760, 199, '_wp_trash_meta_time', '1539337452'),
(761, 200, '_wp_trash_meta_status', 'publish'),
(762, 200, '_wp_trash_meta_time', '1539339428'),
(763, 201, '_edit_lock', '1539342874:1'),
(764, 201, '_wp_trash_meta_status', 'publish'),
(765, 201, '_wp_trash_meta_time', '1539342899'),
(766, 202, '_wp_attached_file', '2018/10/pointer-icon.png'),
(767, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:14;s:6:\"height\";i:19;s:4:\"file\";s:24:\"2018/10/pointer-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(768, 203, '_wp_attached_file', '2018/10/phone-icon.png'),
(769, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:17;s:6:\"height\";i:17;s:4:\"file\";s:22:\"2018/10/phone-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(770, 204, '_wp_trash_meta_status', 'publish'),
(771, 204, '_wp_trash_meta_time', '1539346798'),
(772, 205, '_mc4wp_settings', 'a:8:{s:5:\"lists\";a:1:{i:0;s:10:\"80d468cebd\";}s:15:\"required_fields\";s:5:\"EMAIL\";s:12:\"double_optin\";s:1:\"1\";s:15:\"update_existing\";s:1:\"0\";s:17:\"replace_interests\";s:1:\"1\";s:18:\"hide_after_success\";s:1:\"0\";s:8:\"redirect\";s:0:\"\";s:3:\"css\";s:1:\"0\";}'),
(773, 205, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(774, 205, 'text_invalid_email', 'Please provide a valid email address.'),
(775, 205, 'text_required_field_missing', 'Please fill in the required fields.'),
(776, 205, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(777, 205, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(778, 205, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(779, 205, 'text_not_subscribed', 'Given email address is not subscribed.'),
(780, 205, 'text_no_lists_selected', 'Please select at least one list.'),
(781, 205, 'text_updated', 'Thank you, your records have been updated!'),
(782, 206, '_edit_lock', '1539349429:1'),
(783, 206, '_wp_trash_meta_status', 'publish'),
(784, 206, '_wp_trash_meta_time', '1539349434'),
(785, 207, '_wp_attached_file', '2018/10/paper122.png'),
(786, 207, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:25;s:6:\"height\";i:25;s:4:\"file\";s:20:\"2018/10/paper122.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(787, 208, '_wp_trash_meta_status', 'publish'),
(788, 208, '_wp_trash_meta_time', '1539352503'),
(789, 209, '_edit_lock', '1539355505:1'),
(790, 209, '_wp_trash_meta_status', 'publish'),
(791, 209, '_wp_trash_meta_time', '1539355523'),
(792, 210, '_wp_attached_file', '2018/10/player_thumb.png'),
(793, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:550;s:4:\"file\";s:24:\"2018/10/player_thumb.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"player_thumb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"player_thumb-300x103.png\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"player_thumb-768x264.png\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"player_thumb-1024x352.png\";s:5:\"width\";i:1024;s:6:\"height\";i:352;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(794, 211, '_wp_trash_meta_status', 'publish'),
(795, 211, '_wp_trash_meta_time', '1539370032'),
(796, 212, '_wp_trash_meta_status', 'publish'),
(797, 212, '_wp_trash_meta_time', '1539404477');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-08 17:29:30', '2018-10-08 14:29:30', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-10-08 17:29:30', '2018-10-08 14:29:30', '', 0, 'http://localhost/tajem/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-08 17:29:30', '2018-10-08 14:29:30', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://localhost/tajem/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-10-09 23:23:49', '2018-10-09 20:23:49', '', 0, 'http://localhost/tajem/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-08 17:29:30', '2018-10-08 14:29:30', '<h2>Кто мы</h2><p>Наш адрес сайта: http://localhost/tajem.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-10-09 23:23:47', '2018-10-09 20:23:47', '', 0, 'http://localhost/tajem/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-10-08 17:29:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 17:29:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=4', 0, 'post', '', 0),
(5, 1, '2018-10-08 21:21:09', '2018-10-08 18:21:09', '<ul>\r\n<li>\r\n    [text* your-name placeholder \"name\"]\r\n</li>\r\n<li>\r\n    [email* your-email placeholder \"email\"]\r\n</li>\r\n<li>\r\n    [text your-subject placeholder \"subject\"]\r\n</li>\r\n<li>\r\n    [textarea your-message placeholder \"your message\"]\r\n</li>\r\n<li>\r\n[submit \"Send\"]\r\n</li>\r\n</ul>\n1\ntajem \"[your-subject]\"\n[your-name] <ahrrhy@gmail.com>\nahrrhy@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on tajem (http://localhost/tajem)\nReply-To: [your-email]\n\n\n\n\ntajem \"[your-subject]\"\ntajem <ahrrhy@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on tajem (http://localhost/tajem)\nReply-To: ahrrhy@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-10-12 10:32:29', '2018-10-12 07:32:29', '', 0, 'http://localhost/tajem/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2018-10-08 21:27:49', '2018-10-08 18:27:49', 'https://www.youtube.com/watch?time_continue=2&amp;amp;v=pOmu0LtcI6Y', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-12 06:23:44', '2018-10-12 03:23:44', '', 0, 'http://localhost/tajem/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-10-08 21:27:49', '2018-10-08 18:27:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-10-08 21:27:49', '2018-10-08 18:27:49', '', 6, 'http://localhost/tajem/2018/10/08/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-10-08 21:28:19', '2018-10-08 18:28:19', '', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed', '', '', '2018-10-09 23:23:24', '2018-10-09 20:23:24', '', 0, 'http://localhost/tajem/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-10-08 21:28:19', '2018-10-08 18:28:19', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-08 21:28:19', '2018-10-08 18:28:19', '', 8, 'http://localhost/tajem/2018/10/08/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-10-08 21:28:44', '2018-10-08 18:28:44', '', 'Expertise', '', 'trash', 'closed', 'closed', '', 'expertise__trashed', '', '', '2018-10-09 23:23:29', '2018-10-09 20:23:29', '', 0, 'http://localhost/tajem/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-10-08 21:28:44', '2018-10-08 18:28:44', '', 'Expertise', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-10-08 21:28:44', '2018-10-08 18:28:44', '', 10, 'http://localhost/tajem/2018/10/08/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-10-08 21:29:06', '2018-10-08 18:29:06', '', 'Teams', '', 'trash', 'closed', 'closed', '', 'teams__trashed', '', '', '2018-10-09 23:23:38', '2018-10-09 20:23:38', '', 0, 'http://localhost/tajem/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-10-08 21:29:06', '2018-10-08 18:29:06', '', 'Teams', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-10-08 21:29:06', '2018-10-08 18:29:06', '', 12, 'http://localhost/tajem/2018/10/08/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-10-08 21:29:17', '2018-10-08 18:29:17', '', 'Works', '', 'trash', 'closed', 'closed', '', 'works__trashed', '', '', '2018-10-09 23:23:53', '2018-10-09 20:23:53', '', 0, 'http://localhost/tajem/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-10-08 21:29:17', '2018-10-08 18:29:17', '', 'Works', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-10-08 21:29:17', '2018-10-08 18:29:17', '', 14, 'http://localhost/tajem/2018/10/08/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-10-08 21:29:40', '2018-10-08 18:29:40', '', 'People Say', '', 'trash', 'closed', 'closed', '', 'people-say__trashed', '', '', '2018-10-09 23:23:34', '2018-10-09 20:23:34', '', 0, 'http://localhost/tajem/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-10-08 21:29:40', '2018-10-08 18:29:40', '', 'People Say', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-10-08 21:29:40', '2018-10-08 18:29:40', '', 16, 'http://localhost/tajem/2018/10/08/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-10-08 21:29:51', '2018-10-08 18:29:51', '', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2018-10-09 23:23:27', '2018-10-09 20:23:27', '', 0, 'http://localhost/tajem/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-10-08 21:29:51', '2018-10-08 18:29:51', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-10-08 21:29:51', '2018-10-08 18:29:51', '', 18, 'http://localhost/tajem/2018/10/08/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-10-08 21:30:10', '2018-10-08 18:30:10', '', 'Help', '', 'trash', 'closed', 'closed', '', 'help__trashed', '', '', '2018-10-09 23:23:32', '2018-10-09 20:23:32', '', 0, 'http://localhost/tajem/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-10-08 21:30:10', '2018-10-08 18:30:10', '', 'Help', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-08 21:30:10', '2018-10-08 18:30:10', '', 20, 'http://localhost/tajem/2018/10/08/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-10-08 21:30:48', '2018-10-08 18:30:48', '', 'Terms & Condition', '', 'publish', 'closed', 'closed', '', 'terms-condition', '', '', '2018-10-08 21:30:48', '2018-10-08 18:30:48', '', 0, 'http://localhost/tajem/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-10-08 21:30:48', '2018-10-08 18:30:48', '', 'Terms & Condition', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-10-08 21:30:48', '2018-10-08 18:30:48', '', 22, 'http://localhost/tajem/2018/10/08/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-10-08 21:31:08', '2018-10-08 18:31:08', '', 'Privacy', '', 'trash', 'closed', 'closed', '', 'privacy__trashed', '', '', '2018-10-09 23:23:36', '2018-10-09 20:23:36', '', 0, 'http://localhost/tajem/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-10-08 21:31:08', '2018-10-08 18:31:08', '', 'Privacy', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-10-08 21:31:08', '2018-10-08 18:31:08', '', 24, 'http://localhost/tajem/2018/10/08/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-10-08 22:15:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-08 22:15:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?post_type=header_slider&p=26', 0, 'header_slider', '', 0),
(27, 1, '2018-10-09 22:13:48', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 22:13:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=27', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-10-09 22:13:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 22:13:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=31', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-10-09 22:13:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 22:13:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=34', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-10-09 22:13:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 22:13:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=36', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-10-09 22:13:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 22:13:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-10-09 22:47:11', '2018-10-09 19:47:11', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\nMorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'our story', '<p>This is Photoshop\'s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus</p>\r\n<p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-10-11 12:52:56', '2018-10-11 09:52:56', '', 0, 'http://localhost/tajem/?post_type=page_sections&#038;p=39', 0, 'page_sections', '', 0),
(40, 1, '2018-10-09 22:47:30', '2018-10-09 19:47:30', '', 'expertise', '', 'publish', 'closed', 'closed', '', 'expertise', '', '', '2018-10-09 22:47:30', '2018-10-09 19:47:30', '', 0, 'http://localhost/tajem/?post_type=page_sections&#038;p=40', 0, 'page_sections', '', 0),
(41, 1, '2018-10-09 22:47:39', '2018-10-09 19:47:39', '', 'teams', '\r\n', 'publish', 'closed', 'closed', '', 'teams', '', '', '2018-10-12 01:40:28', '2018-10-11 22:40:28', '', 0, 'http://localhost/tajem/?post_type=page_sections&#038;p=41', 0, 'page_sections', '', 0),
(42, 1, '2018-10-09 22:47:47', '2018-10-09 19:47:47', '', 'works', '', 'publish', 'closed', 'closed', '', 'works', '', '', '2018-10-09 22:47:47', '2018-10-09 19:47:47', '', 0, 'http://localhost/tajem/?post_type=page_sections&#038;p=42', 0, 'page_sections', '', 0),
(43, 1, '2018-10-09 22:47:59', '2018-10-09 19:47:59', '', 'people say', '', 'publish', 'closed', 'closed', '', 'people-say', '', '', '2018-10-09 22:47:59', '2018-10-09 19:47:59', '', 0, 'http://localhost/tajem/?post_type=page_sections&#038;p=43', 0, 'page_sections', '', 0),
(44, 1, '2018-10-09 22:48:08', '2018-10-09 19:48:08', '', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-10-09 22:48:08', '2018-10-09 19:48:08', '', 0, 'http://localhost/tajem/?post_type=page_sections&#038;p=44', 0, 'page_sections', '', 0),
(45, 1, '2018-10-09 23:23:47', '2018-10-09 20:23:47', '<h2>Кто мы</h2><p>Наш адрес сайта: http://localhost/tajem.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-09 23:23:47', '2018-10-09 20:23:47', '', 3, 'http://localhost/tajem/2018/10/09/3-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-10-09 23:23:49', '2018-10-09 20:23:49', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://localhost/tajem/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-09 23:23:49', '2018-10-09 20:23:49', '', 2, 'http://localhost/tajem/2018/10/09/2-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-10-09 23:24:16', '2018-10-09 20:24:16', '', 'Help', '', 'publish', 'closed', 'closed', '', 'help', '', '', '2018-10-09 23:24:16', '2018-10-09 20:24:16', '', 0, 'http://localhost/tajem/?page_id=47', 0, 'page', '', 0),
(48, 1, '2018-10-09 23:24:16', '2018-10-09 20:24:16', '', 'Help', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-10-09 23:24:16', '2018-10-09 20:24:16', '', 47, 'http://localhost/tajem/2018/10/09/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-10-09 23:24:27', '2018-10-09 20:24:27', '', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2018-10-09 23:24:27', '2018-10-09 20:24:27', '', 0, 'http://localhost/tajem/?page_id=49', 0, 'page', '', 0),
(50, 1, '2018-10-09 23:24:27', '2018-10-09 20:24:27', '', 'Privacy', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-10-09 23:24:27', '2018-10-09 20:24:27', '', 49, 'http://localhost/tajem/2018/10/09/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-10-09 23:29:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 23:29:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2018-10-09 23:29:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 23:29:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2018-10-09 23:29:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 23:29:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2018-10-09 23:29:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 23:29:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2018-10-09 23:29:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 23:29:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2018-10-09 23:29:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-09 23:29:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2018-10-09 23:32:52', '2018-10-09 20:32:52', '', 'about', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-10-12 06:00:43', '2018-10-12 03:00:43', '', 0, 'http://localhost/tajem/?p=57', 2, 'nav_menu_item', '', 0),
(58, 1, '2018-10-09 23:32:52', '2018-10-09 20:32:52', '', 'expertise', '', 'publish', 'closed', 'closed', '', 'expertise', '', '', '2018-10-12 06:00:43', '2018-10-12 03:00:43', '', 0, 'http://localhost/tajem/?p=58', 3, 'nav_menu_item', '', 0),
(59, 1, '2018-10-09 23:32:52', '2018-10-09 20:32:52', '', 'teams', '', 'publish', 'closed', 'closed', '', 'teams', '', '', '2018-10-12 06:00:43', '2018-10-12 03:00:43', '', 0, 'http://localhost/tajem/?p=59', 4, 'nav_menu_item', '', 0),
(60, 1, '2018-10-09 23:34:29', '2018-10-09 20:34:29', '', 'works', '', 'publish', 'closed', 'closed', '', 'works', '', '', '2018-10-12 06:00:43', '2018-10-12 03:00:43', '', 0, 'http://localhost/tajem/?p=60', 5, 'nav_menu_item', '', 0),
(61, 1, '2018-10-09 23:34:29', '2018-10-09 20:34:29', '', 'people say', '', 'publish', 'closed', 'closed', '', 'people-say', '', '', '2018-10-12 06:00:43', '2018-10-12 03:00:43', '', 0, 'http://localhost/tajem/?p=61', 6, 'nav_menu_item', '', 0),
(62, 1, '2018-10-09 23:34:29', '2018-10-09 20:34:29', '', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-10-12 06:00:43', '2018-10-12 03:00:43', '', 0, 'http://localhost/tajem/?p=62', 7, 'nav_menu_item', '', 0),
(63, 1, '2018-10-10 00:08:09', '2018-10-09 21:08:09', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-10-10 00:08:09', '2018-10-09 21:08:09', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/logo.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2018-10-10 00:08:20', '2018-10-09 21:08:20', 'http://localhost/tajem/wp-content/uploads/2018/10/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2018-10-10 00:08:20', '2018-10-09 21:08:20', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2018-10-10 00:08:25', '2018-10-09 21:08:25', '{\n    \"tajem::custom_logo\": {\n        \"value\": 64,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-09 21:08:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3658521-c69c-421c-816e-8773608fb1d3', '', '', '2018-10-10 00:08:25', '2018-10-09 21:08:25', '', 0, 'http://localhost/tajem/2018/10/10/d3658521-c69c-421c-816e-8773608fb1d3/', 0, 'customize_changeset', '', 0),
(66, 1, '2018-10-10 16:19:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-10 16:19:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?post_type=header_slider&p=66', 0, 'header_slider', '', 0),
(67, 1, '2018-10-10 16:29:58', '2018-10-10 13:29:58', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.', 'We Are Awesome Creative Agency', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.', 'publish', 'closed', 'closed', '', 'we-are-awesome-creative-agency', '', '', '2018-10-10 20:10:27', '2018-10-10 17:10:27', '', 0, 'http://localhost/tajem/?post_type=header_slider&#038;p=67', 0, 'header_slider', '', 0),
(68, 1, '2018-10-10 16:29:46', '2018-10-10 13:29:46', '', 'fourth-slide', '', 'inherit', 'open', 'closed', '', 'first-slide', '', '', '2018-10-10 16:32:00', '2018-10-10 13:32:00', '', 67, 'http://localhost/tajem/wp-content/uploads/2018/10/first-slide.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-10-10 16:30:52', '2018-10-10 13:30:52', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.', 'Second Header Slide', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.', 'publish', 'closed', 'closed', '', 'second-header-slide', '', '', '2018-10-10 20:11:10', '2018-10-10 17:11:10', '', 0, 'http://localhost/tajem/?post_type=header_slider&#038;p=69', 0, 'header_slider', '', 0),
(70, 1, '2018-10-10 16:31:32', '2018-10-10 13:31:32', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.', 'Third Header Slide', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.', 'publish', 'closed', 'closed', '', 'third-header-slide', '', '', '2018-10-10 20:11:06', '2018-10-10 17:11:06', '', 0, 'http://localhost/tajem/?post_type=header_slider&#038;p=70', 0, 'header_slider', '', 0),
(71, 1, '2018-10-10 16:41:39', '2018-10-10 13:41:39', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.', 'Fourth Header Slide', '', 'publish', 'closed', 'closed', '', 'fourth-header-slide', '', '', '2018-10-10 20:11:02', '2018-10-10 17:11:02', '', 0, 'http://localhost/tajem/?post_type=header_slider&#038;p=71', 0, 'header_slider', '', 0),
(72, 1, '2018-10-11 11:58:17', '2018-10-11 08:58:17', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\nMorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'our story', '<p>This is Photoshop\'s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus</p>\n<p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2018-10-11 11:58:17', '2018-10-11 08:58:17', '', 39, 'http://localhost/tajem/2018/10/10/39-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2018-10-10 22:47:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-10 22:47:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?post_type=acf-field-group&p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2018-10-10 23:00:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-10 23:00:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?post_type=employees&p=74', 0, 'employees', '', 0),
(75, 1, '2018-10-10 23:39:27', '2018-10-10 20:39:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"39\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Our Story', 'our-story', 'trash', 'closed', 'closed', '', 'group_5bbe62b06a334__trashed', '', '', '2018-10-12 00:23:26', '2018-10-11 21:23:26', '', 0, 'http://localhost/tajem/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(77, 1, '2018-10-10 23:57:45', '2018-10-10 20:57:45', '', 'logo-huge', '', 'inherit', 'open', 'closed', '', 'logo-huge', '', '', '2018-10-10 23:58:01', '2018-10-10 20:58:01', '', 39, 'http://localhost/tajem/wp-content/uploads/2018/10/logo-huge.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2018-10-11 11:58:20', '2018-10-11 08:58:20', 'https://www.youtube.com/watch?time_continue=2&amp;v=pOmu0LtcI6Y', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-10-11 11:58:20', '2018-10-11 08:58:20', '', 6, 'http://localhost/tajem/2018/10/11/6-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-10-11 11:59:13', '2018-10-11 08:59:13', 'https://www.youtube.com/watch?time_continue=2&amp;amp;v=pOmu0LtcI6Y', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-10-11 11:59:13', '2018-10-11 08:59:13', '', 6, 'http://localhost/tajem/2018/10/11/6-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-10-11 12:59:25', '2018-10-11 09:59:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Expertise section', 'expertise-section', 'trash', 'closed', 'closed', '', 'group_5bbf1d81e10e9__trashed', '', '', '2018-10-12 02:31:58', '2018-10-11 23:31:58', '', 0, 'http://localhost/tajem/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2018-10-11 12:59:25', '2018-10-11 09:59:25', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Expertise section', 'ex', 'trash', 'closed', 'closed', '', 'field_5bbf1d84d0fb7__trashed', '', '', '2018-10-12 02:31:58', '2018-10-11 23:31:58', '', 81, 'http://localhost/tajem/?post_type=acf-field&#038;p=82', 0, 'acf-field', '', 0),
(84, 1, '2018-10-11 12:59:25', '2018-10-11 09:59:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Enter Expertise section title\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"Expertise\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Expertise section title', 'expertise_section_title', 'trash', 'closed', 'closed', '', 'field_5bbf1e54d0fba__trashed', '', '', '2018-10-12 02:31:58', '2018-10-11 23:31:58', '', 81, 'http://localhost/tajem/?post_type=acf-field&#038;p=84', 1, 'acf-field', '', 0),
(85, 1, '2018-10-11 12:59:25', '2018-10-11 09:59:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:57:\"Enter Expertise section description. Some short sentence.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:55:\"Lorem ipsum dolor sit amet proin gravida nibh vel velit\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Expertise section description', 'expertise_section_description', 'trash', 'closed', 'closed', '', 'field_5bbf1e87d0fbb__trashed', '', '', '2018-10-12 02:31:58', '2018-10-11 23:31:58', '', 81, 'http://localhost/tajem/?post_type=acf-field&#038;p=85', 2, 'acf-field', '', 0),
(86, 1, '2018-10-11 15:14:36', '2018-10-11 12:14:36', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet Aenean.', 'WEB DESIGN & DEVELOPMENT', '', 'publish', 'closed', 'closed', '', 'web-design-development', '', '', '2018-10-11 15:14:36', '2018-10-11 12:14:36', '', 0, 'http://localhost/tajem/?post_type=expertise&#038;p=86', 0, 'expertise', '', 0),
(87, 1, '2018-10-11 15:14:24', '2018-10-11 12:14:24', '', 'webdesign-expertise', '', 'inherit', 'open', 'closed', '', 'webdesign-expertise', '', '', '2018-10-11 15:14:30', '2018-10-11 12:14:30', '', 86, 'http://localhost/tajem/wp-content/uploads/2018/10/webdesign-expertise.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2018-10-11 15:15:07', '2018-10-11 12:15:07', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet Aenean.', 'BRANDING IDENTITY', '', 'publish', 'closed', 'closed', '', 'branding-identity', '', '', '2018-10-11 15:15:07', '2018-10-11 12:15:07', '', 0, 'http://localhost/tajem/?post_type=expertise&#038;p=88', 0, 'expertise', '', 0),
(89, 1, '2018-10-11 15:15:00', '2018-10-11 12:15:00', '', 'branding-expertise', '', 'inherit', 'open', 'closed', '', 'branding-expertise', '', '', '2018-10-11 15:15:04', '2018-10-11 12:15:04', '', 88, 'http://localhost/tajem/wp-content/uploads/2018/10/branding-expertise.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2018-10-11 15:15:41', '2018-10-11 12:15:41', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet Aenean.', 'MOBILE APP', '', 'publish', 'closed', 'closed', '', 'mobile-app', '', '', '2018-10-11 15:15:41', '2018-10-11 12:15:41', '', 0, 'http://localhost/tajem/?post_type=expertise&#038;p=90', 0, 'expertise', '', 0),
(91, 1, '2018-10-11 15:15:28', '2018-10-11 12:15:28', '', 'mobile-app-expertise', '', 'inherit', 'open', 'closed', '', 'mobile-app-expertise', '', '', '2018-10-11 15:15:36', '2018-10-11 12:15:36', '', 90, 'http://localhost/tajem/wp-content/uploads/2018/10/mobile-app-expertise.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2018-10-11 15:16:41', '2018-10-11 12:16:41', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet Aenean.', 'SEARCH ENGINE OPTIMIZATION', '', 'publish', 'closed', 'closed', '', 'search-engine-optimization', '', '', '2018-10-11 15:16:41', '2018-10-11 12:16:41', '', 0, 'http://localhost/tajem/?post_type=expertise&#038;p=92', 0, 'expertise', '', 0),
(93, 1, '2018-10-11 15:16:07', '2018-10-11 12:16:07', '', 'search-expeertise', '', 'inherit', 'open', 'closed', '', 'search-expeertise', '', '', '2018-10-11 15:16:12', '2018-10-11 12:16:12', '', 92, 'http://localhost/tajem/wp-content/uploads/2018/10/search-expeertise.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2018-10-11 15:17:14', '2018-10-11 12:17:14', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet Aenean.', 'GAME DEVELOPMENT', '', 'publish', 'closed', 'closed', '', 'game-development', '', '', '2018-10-11 15:17:14', '2018-10-11 12:17:14', '', 0, 'http://localhost/tajem/?post_type=expertise&#038;p=94', 0, 'expertise', '', 0),
(95, 1, '2018-10-11 15:17:08', '2018-10-11 12:17:08', '', 'game-expertise', '', 'inherit', 'open', 'closed', '', 'game-expertise', '', '', '2018-10-11 15:17:12', '2018-10-11 12:17:12', '', 94, 'http://localhost/tajem/wp-content/uploads/2018/10/game-expertise.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2018-10-11 15:17:52', '2018-10-11 12:17:52', 'This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet Aenean.', 'MADE WITH LOVE', '', 'publish', 'closed', 'closed', '', 'made-with-love', '', '', '2018-10-11 15:17:52', '2018-10-11 12:17:52', '', 0, 'http://localhost/tajem/?post_type=expertise&#038;p=96', 0, 'expertise', '', 0),
(97, 1, '2018-10-11 15:17:47', '2018-10-11 12:17:47', '', 'love-expertise', '', 'inherit', 'open', 'closed', '', 'love-expertise', '', '', '2018-10-11 15:17:50', '2018-10-11 12:17:50', '', 96, 'http://localhost/tajem/wp-content/uploads/2018/10/love-expertise.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2018-10-12 00:08:03', '2018-10-11 21:08:03', '{\n    \"tajem::fourth_screen_background\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/team-section-background.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-11 21:08:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb7221f8-ddb3-420f-9350-849dfb271f31', '', '', '2018-10-12 00:08:03', '2018-10-11 21:08:03', '', 0, 'http://localhost/tajem/2018/10/12/bb7221f8-ddb3-420f-9350-849dfb271f31/', 0, 'customize_changeset', '', 0),
(100, 1, '2018-10-12 00:15:47', '2018-10-11 21:15:47', '', 'team-section-background', '', 'inherit', 'open', 'closed', '', 'team-section-background', '', '', '2018-10-12 00:15:47', '2018-10-11 21:15:47', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/team-section-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-10-12 00:15:54', '2018-10-11 21:15:54', '{\n    \"tajem::fourth_screen_background\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/team-section-background.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-11 21:15:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9be37878-3c39-451b-9127-1fba6070ae91', '', '', '2018-10-12 00:15:54', '2018-10-11 21:15:54', '', 0, 'http://localhost/tajem/2018/10/12/9be37878-3c39-451b-9127-1fba6070ae91/', 0, 'customize_changeset', '', 0),
(102, 1, '2018-10-12 00:18:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-12 00:18:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/tajem/?post_type=employees&p=102', 0, 'employees', '', 0),
(103, 1, '2018-10-12 00:23:15', '2018-10-11 21:23:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Front Page', 'front-page', 'publish', 'closed', 'closed', '', 'group_5bbfbe3b0edab', '', '', '2018-10-12 06:23:12', '2018-10-12 03:23:12', '', 0, 'http://localhost/tajem/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2018-10-12 00:23:15', '2018-10-11 21:23:15', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Employees section', 'employees_section', 'publish', 'closed', 'closed', '', 'field_5bbfbe495fe10', '', '', '2018-10-12 00:23:15', '2018-10-11 21:23:15', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2018-10-12 00:23:15', '2018-10-11 21:23:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Enter Employees section title\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:21:\"MEET OUR AMAZING TEAM\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Employees section title', 'employees_section_title', 'publish', 'closed', 'closed', '', 'field_5bbfbe5b5fe11', '', '', '2018-10-12 00:23:15', '2018-10-11 21:23:15', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=105', 1, 'acf-field', '', 0),
(106, 1, '2018-10-12 00:23:15', '2018-10-11 21:23:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:57:\"Enter Employees section description. Some short sentence.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:55:\"Lorem ipsum dolor sit amet proin gravida nibh vel velit\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Employees section description', 'employees_section_description', 'publish', 'closed', 'closed', '', 'field_5bbfbec15fe12', '', '', '2018-10-12 00:23:15', '2018-10-11 21:23:15', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=106', 2, 'acf-field', '', 0),
(107, 1, '2018-10-12 00:24:04', '2018-10-11 21:24:04', '', 'We Are Hiring', '', 'publish', 'closed', 'closed', '', 'we-are-hiring', '', '', '2018-10-12 00:24:04', '2018-10-11 21:24:04', '', 0, 'http://localhost/tajem/?page_id=107', 0, 'page', '', 0),
(108, 1, '2018-10-12 00:24:04', '2018-10-11 21:24:04', '', 'We Are Hiring', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-10-12 00:24:04', '2018-10-11 21:24:04', '', 107, 'http://localhost/tajem/2018/10/12/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-10-12 00:26:35', '2018-10-11 21:26:35', 'CEO &amp; FOUNDER', 'SEMF UCUK', '', 'publish', 'closed', 'closed', '', 'semf-ucuk', '', '', '2018-10-12 00:26:35', '2018-10-11 21:26:35', '', 0, 'http://localhost/tajem/?post_type=employees&#038;p=109', 0, 'employees', '', 0),
(110, 1, '2018-10-12 00:26:12', '2018-10-11 21:26:12', '', 'employee', '', 'inherit', 'open', 'closed', '', 'employee', '', '', '2018-10-12 00:26:21', '2018-10-11 21:26:21', '', 109, 'http://localhost/tajem/wp-content/uploads/2018/10/employee.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-10-12 00:27:00', '2018-10-11 21:27:00', 'ENGINEERING', 'DIK ADALIN', '', 'publish', 'closed', 'closed', '', 'dik-adalin', '', '', '2018-10-12 00:27:14', '2018-10-11 21:27:14', '', 0, 'http://localhost/tajem/?post_type=employees&#038;p=111', 0, 'employees', '', 0),
(112, 1, '2018-10-12 00:27:35', '2018-10-11 21:27:35', 'DESIGNER', 'JENG KOL', '', 'publish', 'closed', 'closed', '', 'jeng-kol', '', '', '2018-10-12 00:27:35', '2018-10-11 21:27:35', '', 0, 'http://localhost/tajem/?post_type=employees&#038;p=112', 0, 'employees', '', 0),
(113, 1, '2018-10-12 00:28:51', '2018-10-11 21:28:51', 'MARKETING', 'PET ROMAK', '', 'publish', 'closed', 'closed', '', 'pet-romak', '', '', '2018-10-12 00:28:51', '2018-10-11 21:28:51', '', 0, 'http://localhost/tajem/?post_type=employees&#038;p=113', 0, 'employees', '', 0),
(114, 1, '2018-10-12 00:30:56', '2018-10-11 21:30:56', '&nbsp;\n\n<a href=\"http://localhost/tajem/we-are-hiring/\" target=\"_blank\" rel=\"noopener\">We Are Hiring</a>', 'teams', '\n\n', 'inherit', 'closed', 'closed', '', '41-autosave-v1', '', '', '2018-10-12 00:30:56', '2018-10-11 21:30:56', '', 41, 'http://localhost/tajem/2018/10/12/41-autosave-v1/', 0, 'revision', '', 0),
(115, 1, '2018-10-12 01:48:30', '2018-10-11 22:48:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Add text before link to hiring page\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:48:\"Become part of our dream team, let’s join us !\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hiring request text', 'hiring_request_text', 'publish', 'closed', 'closed', '', 'field_5bbfd189e38d4', '', '', '2018-10-12 01:48:30', '2018-10-11 22:48:30', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=115', 3, 'acf-field', '', 0),
(116, 1, '2018-10-12 01:48:30', '2018-10-11 22:48:30', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:23:\"Add link to hiring page\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:37:\"http://localhost/tajem/we-are-hiring/\";s:11:\"placeholder\";s:0:\"\";}', 'Hiring page link', 'hiring_page_link', 'publish', 'closed', 'closed', '', 'field_5bbfd231e38d5', '', '', '2018-10-12 01:48:30', '2018-10-11 22:48:30', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=116', 4, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(117, 1, '2018-10-12 01:48:30', '2018-10-11 22:48:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:24:\"Add text for hiring link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:13:\"We are hiring\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hiring link text', 'hiring_link_text', 'publish', 'closed', 'closed', '', 'field_5bbfd2ffe38d6', '', '', '2018-10-12 01:48:30', '2018-10-11 22:48:30', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=117', 5, 'acf-field', '', 0),
(118, 1, '2018-10-12 02:22:26', '2018-10-11 23:22:26', '', 'item 1', '', 'publish', 'closed', 'closed', '', 'item-1', '', '', '2018-10-12 02:22:26', '2018-10-11 23:22:26', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=118', 0, 'portfolio', '', 0),
(119, 1, '2018-10-12 02:22:14', '2018-10-11 23:22:14', '', 'item1', '', 'inherit', 'open', 'closed', '', 'item1', '', '', '2018-10-12 02:22:18', '2018-10-11 23:22:18', '', 118, 'http://localhost/tajem/wp-content/uploads/2018/10/item1.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2018-10-12 02:22:49', '2018-10-11 23:22:49', '', 'item 2', '', 'publish', 'closed', 'closed', '', 'item-2', '', '', '2018-10-12 02:22:49', '2018-10-11 23:22:49', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=120', 0, 'portfolio', '', 0),
(121, 1, '2018-10-12 02:22:43', '2018-10-11 23:22:43', '', 'item2', '', 'inherit', 'open', 'closed', '', 'item2', '', '', '2018-10-12 02:22:47', '2018-10-11 23:22:47', '', 120, 'http://localhost/tajem/wp-content/uploads/2018/10/item2.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2018-10-12 02:23:10', '2018-10-11 23:23:10', '', 'item 3', '', 'publish', 'closed', 'closed', '', 'item-3', '', '', '2018-10-12 02:23:10', '2018-10-11 23:23:10', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=122', 0, 'portfolio', '', 0),
(123, 1, '2018-10-12 02:23:03', '2018-10-11 23:23:03', '', 'item3', '', 'inherit', 'open', 'closed', '', 'item3', '', '', '2018-10-12 02:23:07', '2018-10-11 23:23:07', '', 122, 'http://localhost/tajem/wp-content/uploads/2018/10/item3.png', 0, 'attachment', 'image/png', 0),
(124, 1, '2018-10-12 02:23:52', '2018-10-11 23:23:52', '', 'item 4', '', 'publish', 'closed', 'closed', '', 'item-4', '', '', '2018-10-12 02:23:52', '2018-10-11 23:23:52', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=124', 0, 'portfolio', '', 0),
(125, 1, '2018-10-12 02:23:39', '2018-10-11 23:23:39', '', 'item4', '', 'inherit', 'open', 'closed', '', 'item4', '', '', '2018-10-12 02:23:49', '2018-10-11 23:23:49', '', 124, 'http://localhost/tajem/wp-content/uploads/2018/10/item4.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2018-10-12 02:24:18', '2018-10-11 23:24:18', '', 'item 5', '', 'publish', 'closed', 'closed', '', 'item-5', '', '', '2018-10-12 02:24:18', '2018-10-11 23:24:18', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=126', 0, 'portfolio', '', 0),
(127, 1, '2018-10-12 02:24:07', '2018-10-11 23:24:07', '', 'item5', '', 'inherit', 'open', 'closed', '', 'item5', '', '', '2018-10-12 02:24:11', '2018-10-11 23:24:11', '', 126, 'http://localhost/tajem/wp-content/uploads/2018/10/item5.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2018-10-12 02:24:37', '2018-10-11 23:24:37', '', 'item 6', '', 'publish', 'closed', 'closed', '', 'item-6', '', '', '2018-10-12 02:24:37', '2018-10-11 23:24:37', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=128', 0, 'portfolio', '', 0),
(129, 1, '2018-10-12 02:24:31', '2018-10-11 23:24:31', '', 'item6', '', 'inherit', 'open', 'closed', '', 'item6', '', '', '2018-10-12 02:24:35', '2018-10-11 23:24:35', '', 128, 'http://localhost/tajem/wp-content/uploads/2018/10/item6.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2018-10-12 02:24:54', '2018-10-11 23:24:54', '', 'item 7', '', 'publish', 'closed', 'closed', '', 'item-7', '', '', '2018-10-12 02:24:54', '2018-10-11 23:24:54', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=130', 0, 'portfolio', '', 0),
(131, 1, '2018-10-12 02:24:49', '2018-10-11 23:24:49', '', 'item7', '', 'inherit', 'open', 'closed', '', 'item7', '', '', '2018-10-12 02:24:52', '2018-10-11 23:24:52', '', 130, 'http://localhost/tajem/wp-content/uploads/2018/10/item7.png', 0, 'attachment', 'image/png', 0),
(132, 1, '2018-10-12 02:25:23', '2018-10-11 23:25:23', '', 'item 8', '', 'publish', 'closed', 'closed', '', 'item-8', '', '', '2018-10-12 02:25:23', '2018-10-11 23:25:23', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=132', 0, 'portfolio', '', 0),
(133, 1, '2018-10-12 02:25:09', '2018-10-11 23:25:09', '', 'item8', '', 'inherit', 'open', 'closed', '', 'item8', '', '', '2018-10-12 02:25:21', '2018-10-11 23:25:21', '', 132, 'http://localhost/tajem/wp-content/uploads/2018/10/item8.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2018-10-12 02:25:41', '2018-10-11 23:25:41', '', 'item 9', '', 'publish', 'closed', 'closed', '', 'item-9', '', '', '2018-10-12 02:25:41', '2018-10-11 23:25:41', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=134', 0, 'portfolio', '', 0),
(135, 1, '2018-10-12 02:25:36', '2018-10-11 23:25:36', '', 'item9', '', 'inherit', 'open', 'closed', '', 'item9', '', '', '2018-10-12 02:25:39', '2018-10-11 23:25:39', '', 134, 'http://localhost/tajem/wp-content/uploads/2018/10/item9.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2018-10-12 02:26:02', '2018-10-11 23:26:02', '', 'item 10', '', 'publish', 'closed', 'closed', '', 'item-10', '', '', '2018-10-12 02:26:02', '2018-10-11 23:26:02', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=136', 0, 'portfolio', '', 0),
(137, 1, '2018-10-12 02:25:56', '2018-10-11 23:25:56', '', 'item10', '', 'inherit', 'open', 'closed', '', 'item10', '', '', '2018-10-12 02:26:00', '2018-10-11 23:26:00', '', 136, 'http://localhost/tajem/wp-content/uploads/2018/10/item10.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2018-10-12 02:26:23', '2018-10-11 23:26:23', '', 'item 11', '', 'publish', 'closed', 'closed', '', 'item-11', '', '', '2018-10-12 02:26:23', '2018-10-11 23:26:23', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=138', 0, 'portfolio', '', 0),
(139, 1, '2018-10-12 02:26:15', '2018-10-11 23:26:15', '', 'item11', '', 'inherit', 'open', 'closed', '', 'item11', '', '', '2018-10-12 02:26:19', '2018-10-11 23:26:19', '', 138, 'http://localhost/tajem/wp-content/uploads/2018/10/item11.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2018-10-12 02:26:47', '2018-10-11 23:26:47', '', 'item 12', '', 'publish', 'closed', 'closed', '', 'item-12', '', '', '2018-10-12 02:26:47', '2018-10-11 23:26:47', '', 0, 'http://localhost/tajem/?post_type=portfolio&#038;p=140', 0, 'portfolio', '', 0),
(141, 1, '2018-10-12 02:26:39', '2018-10-11 23:26:39', '', 'item12', '', 'inherit', 'open', 'closed', '', 'item12', '', '', '2018-10-12 02:26:42', '2018-10-11 23:26:42', '', 140, 'http://localhost/tajem/wp-content/uploads/2018/10/item12.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2018-10-12 02:28:01', '2018-10-11 23:28:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Expertise section (copy)', 'expertise-section-copy', 'trash', 'closed', 'closed', '', 'group_5bbfdc8137237__trashed', '', '', '2018-10-12 02:28:30', '2018-10-11 23:28:30', '', 0, 'http://localhost/tajem/?post_type=acf-field-group&#038;p=142', 0, 'acf-field-group', '', 0),
(143, 1, '2018-10-12 02:28:01', '2018-10-11 23:28:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Expertise section', '', 'trash', 'closed', 'closed', '', 'field_5bbfdc813dc61__trashed', '', '', '2018-10-12 02:28:30', '2018-10-11 23:28:30', '', 142, 'http://localhost/tajem/?post_type=acf-field&#038;p=143', 0, 'acf-field', '', 0),
(144, 1, '2018-10-12 02:28:01', '2018-10-11 23:28:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Enter Expertise section title\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"Expertise\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Expertise section title', 'expertise_section_title', 'trash', 'closed', 'closed', '', 'field_5bbfdc813e011__trashed', '', '', '2018-10-12 02:28:30', '2018-10-11 23:28:30', '', 142, 'http://localhost/tajem/?post_type=acf-field&#038;p=144', 1, 'acf-field', '', 0),
(145, 1, '2018-10-12 02:28:01', '2018-10-11 23:28:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:57:\"Enter Expertise section description. Some short sentence.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:55:\"Lorem ipsum dolor sit amet proin gravida nibh vel velit\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Expertise section description', 'expertise_section_description', 'trash', 'closed', 'closed', '', 'field_5bbfdc813e413__trashed', '', '', '2018-10-12 02:28:30', '2018-10-11 23:28:30', '', 142, 'http://localhost/tajem/?post_type=acf-field&#038;p=145', 2, 'acf-field', '', 0),
(146, 1, '2018-10-12 02:30:51', '2018-10-11 23:30:51', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Expertise section', 'expertise_section', 'publish', 'closed', 'closed', '', 'field_5bbfdcbefb14f', '', '', '2018-10-12 02:30:51', '2018-10-11 23:30:51', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=146', 6, 'acf-field', '', 0),
(147, 1, '2018-10-12 02:30:51', '2018-10-11 23:30:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Enter Expertise section title\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"Expertise\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Expertise section title', 'expertise_section_title', 'publish', 'closed', 'closed', '', 'field_5bbfdcd8fb150', '', '', '2018-10-12 02:30:51', '2018-10-11 23:30:51', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=147', 7, 'acf-field', '', 0),
(148, 1, '2018-10-12 02:30:51', '2018-10-11 23:30:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:57:\"Enter Expertise section description. Some short sentence.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:55:\"Lorem ipsum dolor sit amet proin gravida nibh vel velit\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Expertise section description', 'expertise_section_description', 'publish', 'closed', 'closed', '', 'field_5bbfdd04fb151', '', '', '2018-10-12 02:30:51', '2018-10-11 23:30:51', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=148', 8, 'acf-field', '', 0),
(149, 1, '2018-10-12 02:39:10', '2018-10-11 23:39:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Works section', 'our_works_section', 'publish', 'closed', 'closed', '', 'field_5bbfddb655e76', '', '', '2018-10-12 02:39:10', '2018-10-11 23:39:10', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=149', 9, 'acf-field', '', 0),
(150, 1, '2018-10-12 02:39:10', '2018-10-11 23:39:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"Enter Works section title\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"OUR WORKS\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Works section title', 'works_section_title', 'publish', 'closed', 'closed', '', 'field_5bbfddd255e77', '', '', '2018-10-12 02:41:35', '2018-10-11 23:41:35', '', 103, 'http://localhost/tajem/?post_type=acf-field&#038;p=150', 10, 'acf-field', '', 0),
(151, 1, '2018-10-12 02:39:10', '2018-10-11 23:39:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"Input link to your dribble account\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:21:\"https://dribbble.com/\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dribble link url', 'dribble_link_url', 'publish', 'closed', 'closed', '', 'field_5bbfde2155e78', '', '', '2018-10-12 02:39:10', '2018-10-11 23:39:10', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=151', 11, 'acf-field', '', 0),
(152, 1, '2018-10-12 02:39:10', '2018-10-11 23:39:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"Input text for dribble link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:27:\"See All Project in dribbble\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dribbble link text', 'dribbble_link_text', 'publish', 'closed', 'closed', '', 'field_5bbfde6d55e79', '', '', '2018-10-12 02:39:10', '2018-10-11 23:39:10', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=152', 12, 'acf-field', '', 0),
(153, 1, '2018-10-12 02:39:10', '2018-10-11 23:39:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"load more\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Load works button text', 'load_works_button_text', 'publish', 'closed', 'closed', '', 'field_5bbfdebd55e7a', '', '', '2018-10-12 02:39:10', '2018-10-11 23:39:10', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=153', 13, 'acf-field', '', 0),
(154, 1, '2018-10-12 02:39:46', '2018-10-11 23:39:46', 'https://www.youtube.com/watch?time_continue=2&amp;amp;v=pOmu0LtcI6Y', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-10-12 02:39:46', '2018-10-11 23:39:46', '', 6, 'http://localhost/tajem/2018/10/12/6-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2018-10-12 02:42:45', '2018-10-11 23:42:45', 'https://www.youtube.com/watch?time_continue=2&amp;amp;v=pOmu0LtcI6Y', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-10-12 02:42:45', '2018-10-11 23:42:45', '', 6, 'http://localhost/tajem/2018/10/12/6-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-10-12 03:38:41', '2018-10-12 00:38:41', '<blockquote>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.</blockquote>', 'customer 1', '', 'publish', 'closed', 'closed', '', 'customer-1', '', '', '2018-10-12 03:49:13', '2018-10-12 00:49:13', '', 0, 'http://localhost/tajem/?post_type=testimonials&#038;p=156', 0, 'testimonials', '', 0),
(157, 1, '2018-10-12 03:38:31', '2018-10-12 00:38:31', '', 'customer1', '', 'inherit', 'open', 'closed', '', 'customer1', '', '', '2018-10-12 03:38:36', '2018-10-12 00:38:36', '', 156, 'http://localhost/tajem/wp-content/uploads/2018/10/customer1.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2018-10-12 03:40:28', '2018-10-12 00:40:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testimonials', 'testimonials', 'publish', 'closed', 'closed', '', 'group_5bbfed19b7b2d', '', '', '2018-10-12 03:40:28', '2018-10-12 00:40:28', '', 0, 'http://localhost/tajem/?post_type=acf-field-group&#038;p=158', 0, 'acf-field-group', '', 0),
(159, 1, '2018-10-12 03:40:28', '2018-10-12 00:40:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:26:\"Add your customer position\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:13:\"CEO TENGKUREP\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Customer position', 'customer_position', 'publish', 'closed', 'closed', '', 'field_5bbfed2b4aaf5', '', '', '2018-10-12 03:40:28', '2018-10-12 00:40:28', '', 158, 'http://localhost/tajem/?post_type=acf-field&p=159', 0, 'acf-field', '', 0),
(160, 1, '2018-10-12 03:41:24', '2018-10-12 00:41:24', '<blockquote>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.</blockquote>', 'customer 2', '', 'publish', 'closed', 'closed', '', 'customer-2', '', '', '2018-10-12 03:48:53', '2018-10-12 00:48:53', '', 0, 'http://localhost/tajem/?post_type=testimonials&#038;p=160', 0, 'testimonials', '', 0),
(161, 1, '2018-10-12 03:41:16', '2018-10-12 00:41:16', '', 'customer2', '', 'inherit', 'open', 'closed', '', 'customer2', '', '', '2018-10-12 03:41:20', '2018-10-12 00:41:20', '', 160, 'http://localhost/tajem/wp-content/uploads/2018/10/customer2.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2018-10-12 03:42:01', '2018-10-12 00:42:01', '<blockquote>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.</blockquote>', 'JANE GALADRIEL', '', 'publish', 'closed', 'closed', '', 'jane-galadriel', '', '', '2018-10-12 03:48:59', '2018-10-12 00:48:59', '', 0, 'http://localhost/tajem/?post_type=testimonials&#038;p=162', 0, 'testimonials', '', 0),
(163, 1, '2018-10-12 03:41:48', '2018-10-12 00:41:48', '', 'customer3', '', 'inherit', 'open', 'closed', '', 'customer3', '', '', '2018-10-12 03:41:53', '2018-10-12 00:41:53', '', 162, 'http://localhost/tajem/wp-content/uploads/2018/10/customer3.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2018-10-12 03:42:39', '2018-10-12 00:42:39', '<blockquote>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.</blockquote>', 'customer 4', '', 'publish', 'closed', 'closed', '', 'customer-4', '', '', '2018-10-12 03:49:05', '2018-10-12 00:49:05', '', 0, 'http://localhost/tajem/?post_type=testimonials&#038;p=164', 0, 'testimonials', '', 0),
(165, 1, '2018-10-12 03:42:27', '2018-10-12 00:42:27', '', 'customer4', '', 'inherit', 'open', 'closed', '', 'customer4', '', '', '2018-10-12 03:42:31', '2018-10-12 00:42:31', '', 164, 'http://localhost/tajem/wp-content/uploads/2018/10/customer4.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2018-10-12 03:43:06', '2018-10-12 00:43:06', '<blockquote>This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.</blockquote>', 'customer 5', '', 'publish', 'closed', 'closed', '', 'customer-5', '', '', '2018-10-12 03:48:19', '2018-10-12 00:48:19', '', 0, 'http://localhost/tajem/?post_type=testimonials&#038;p=166', 0, 'testimonials', '', 0),
(167, 1, '2018-10-12 03:43:00', '2018-10-12 00:43:00', '', 'customer5', '', 'inherit', 'open', 'closed', '', 'customer5', '', '', '2018-10-12 03:43:04', '2018-10-12 00:43:04', '', 166, 'http://localhost/tajem/wp-content/uploads/2018/10/customer5.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2018-10-12 03:54:21', '2018-10-12 00:54:21', '', 'testimonials-background', '', 'inherit', 'open', 'closed', '', 'testimonials-background', '', '', '2018-10-12 03:54:27', '2018-10-12 00:54:27', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/testimonials-background.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2018-10-12 03:54:30', '2018-10-12 00:54:30', '{\n    \"tajem::sixth_screen_background\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/testimonials-background.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 00:54:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7c8b4e10-208d-4b57-a289-a1d671b804af', '', '', '2018-10-12 03:54:30', '2018-10-12 00:54:30', '', 0, 'http://localhost/tajem/2018/10/12/7c8b4e10-208d-4b57-a289-a1d671b804af/', 0, 'customize_changeset', '', 0),
(170, 1, '2018-10-12 05:59:43', '2018-10-12 02:59:43', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-12 06:00:43', '2018-10-12 03:00:43', '', 0, 'http://localhost/tajem/?p=170', 1, 'nav_menu_item', '', 0),
(171, 1, '2018-10-12 06:19:58', '2018-10-12 03:19:58', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Contact section', 'contact_section', 'publish', 'closed', 'closed', '', 'field_5bc01256430bb', '', '', '2018-10-12 06:19:58', '2018-10-12 03:19:58', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=171', 14, 'acf-field', '', 0),
(172, 1, '2018-10-12 06:19:58', '2018-10-12 03:19:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Input title for your contact form\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:19:\"GIVE US A GOOD NEWS\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contact form title', 'contact_form_title', 'publish', 'closed', 'closed', '', 'field_5bc0126e430bc', '', '', '2018-10-12 06:19:58', '2018-10-12 03:19:58', '', 103, 'http://localhost/tajem/?post_type=acf-field&p=172', 15, 'acf-field', '', 0),
(173, 1, '2018-10-12 06:19:58', '2018-10-12 03:19:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"Input title for clients section\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:16:\"OUR HAPPY CLIENT\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Clients title', 'clients_title', 'publish', 'closed', 'closed', '', 'field_5bc012a2430bd', '', '', '2018-10-12 06:23:12', '2018-10-12 03:23:12', '', 103, 'http://localhost/tajem/?post_type=acf-field&#038;p=173', 17, 'acf-field', '', 0),
(174, 1, '2018-10-12 06:22:59', '2018-10-12 03:22:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:55:\"Input here shortcode generated by contact form 7 plugin\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contact form shortcode', 'contact_form_shortcode', 'publish', 'closed', 'closed', '', 'field_5bc0132bc1011', '', '', '2018-10-12 06:23:12', '2018-10-12 03:23:12', '', 103, 'http://localhost/tajem/?post_type=acf-field&#038;p=174', 16, 'acf-field', '', 0),
(175, 1, '2018-10-12 06:23:44', '2018-10-12 03:23:44', 'https://www.youtube.com/watch?time_continue=2&amp;amp;v=pOmu0LtcI6Y', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-10-12 06:23:44', '2018-10-12 03:23:44', '', 6, 'http://localhost/tajem/2018/10/12/6-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2018-10-12 10:55:08', '2018-10-12 07:55:08', '', 'Zara', '', 'publish', 'closed', 'closed', '', 'zara', '', '', '2018-10-12 10:55:08', '2018-10-12 07:55:08', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=176', 0, 'customers', '', 0),
(177, 1, '2018-10-12 10:54:52', '2018-10-12 07:54:52', '', 'Zara_Logo.svg', '', 'inherit', 'open', 'closed', '', 'zara_logo-svg', '', '', '2018-10-12 10:55:02', '2018-10-12 07:55:02', '', 176, 'http://localhost/tajem/wp-content/uploads/2018/10/Zara_Logo.svg_.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2018-10-12 10:55:40', '2018-10-12 07:55:40', '', 'Mango', '', 'publish', 'closed', 'closed', '', 'mango', '', '', '2018-10-12 10:55:40', '2018-10-12 07:55:40', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=178', 0, 'customers', '', 0),
(179, 1, '2018-10-12 10:55:30', '2018-10-12 07:55:30', '', 'Logo_of_Mango_(new).svg', '', 'inherit', 'open', 'closed', '', 'logo_of_mango_new-svg', '', '', '2018-10-12 10:55:35', '2018-10-12 07:55:35', '', 178, 'http://localhost/tajem/wp-content/uploads/2018/10/Logo_of_Mango_new.svg_.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2018-10-12 10:56:19', '2018-10-12 07:56:19', '', 'Barneys Newyork', '', 'publish', 'closed', 'closed', '', 'barneys-newyork', '', '', '2018-10-12 10:56:19', '2018-10-12 07:56:19', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=180', 0, 'customers', '', 0),
(181, 1, '2018-10-12 10:56:09', '2018-10-12 07:56:09', '', 'Barneys_New_York_Logo.svg', '', 'inherit', 'open', 'closed', '', 'barneys_new_york_logo-svg', '', '', '2018-10-12 10:56:15', '2018-10-12 07:56:15', '', 180, 'http://localhost/tajem/wp-content/uploads/2018/10/Barneys_New_York_Logo.svg_.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2018-10-12 10:56:52', '2018-10-12 07:56:52', '', 'Gucci', '', 'publish', 'closed', 'closed', '', 'gucci', '', '', '2018-10-12 10:56:52', '2018-10-12 07:56:52', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=182', 0, 'customers', '', 0),
(183, 1, '2018-10-12 10:56:45', '2018-10-12 07:56:45', '', '1280px-Gucci_Logo.svg', '', 'inherit', 'open', 'closed', '', '1280px-gucci_logo-svg', '', '', '2018-10-12 10:56:50', '2018-10-12 07:56:50', '', 182, 'http://localhost/tajem/wp-content/uploads/2018/10/1280px-Gucci_Logo.svg_.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2018-10-12 10:57:40', '2018-10-12 07:57:40', '', 'Calvin Klein', '', 'publish', 'closed', 'closed', '', 'calvin-klein', '', '', '2018-10-12 10:57:40', '2018-10-12 07:57:40', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=184', 0, 'customers', '', 0),
(185, 1, '2018-10-12 10:57:30', '2018-10-12 07:57:30', '', 'Calvin_klein_logo.svg', '', 'inherit', 'open', 'closed', '', 'calvin_klein_logo-svg', '', '', '2018-10-12 10:57:36', '2018-10-12 07:57:36', '', 184, 'http://localhost/tajem/wp-content/uploads/2018/10/Calvin_klein_logo.svg_.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2018-10-12 10:58:06', '2018-10-12 07:58:06', '', 'Nike', '', 'publish', 'closed', 'closed', '', 'nike', '', '', '2018-10-12 10:58:06', '2018-10-12 07:58:06', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=186', 0, 'customers', '', 0),
(187, 1, '2018-10-12 10:57:59', '2018-10-12 07:57:59', '', '1280px-Logo_NIKE.svg', '', 'inherit', 'open', 'closed', '', '1280px-logo_nike-svg', '', '', '2018-10-12 10:58:04', '2018-10-12 07:58:04', '', 186, 'http://localhost/tajem/wp-content/uploads/2018/10/1280px-Logo_NIKE.svg_.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2018-10-12 10:58:31', '2018-10-12 07:58:31', '', 'Converse', '', 'publish', 'closed', 'closed', '', 'converse', '', '', '2018-10-12 10:58:31', '2018-10-12 07:58:31', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=188', 0, 'customers', '', 0),
(189, 1, '2018-10-12 10:58:25', '2018-10-12 07:58:25', '', 'Converse_logo.svg', '', 'inherit', 'open', 'closed', '', 'converse_logo-svg', '', '', '2018-10-12 10:58:29', '2018-10-12 07:58:29', '', 188, 'http://localhost/tajem/wp-content/uploads/2018/10/Converse_logo.svg_.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2018-10-12 10:59:27', '2018-10-12 07:59:27', '', 'Puma', '', 'publish', 'closed', 'closed', '', 'puma', '', '', '2018-10-12 10:59:27', '2018-10-12 07:59:27', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=190', 0, 'customers', '', 0),
(191, 1, '2018-10-12 10:59:22', '2018-10-12 07:59:22', '', 'Puma_Logo.svg', '', 'inherit', 'open', 'closed', '', 'puma_logo-svg', '', '', '2018-10-12 10:59:26', '2018-10-12 07:59:26', '', 190, 'http://localhost/tajem/wp-content/uploads/2018/10/Puma_Logo.svg_.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2018-10-12 11:00:01', '2018-10-12 08:00:01', '', 'Levi\'s', '', 'publish', 'closed', 'closed', '', 'levis', '', '', '2018-10-12 11:00:01', '2018-10-12 08:00:01', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=192', 0, 'customers', '', 0),
(193, 1, '2018-10-12 10:59:49', '2018-10-12 07:59:49', '', '1280px-Levi\'s_logo.svg', '', 'inherit', 'open', 'closed', '', '1280px-levis_logo-svg', '', '', '2018-10-12 10:59:53', '2018-10-12 07:59:53', '', 192, 'http://localhost/tajem/wp-content/uploads/2018/10/1280px-Levis_logo.svg_.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2018-10-12 11:00:32', '2018-10-12 08:00:32', '', 'Billa Bong', '', 'publish', 'closed', 'closed', '', 'billa-bong', '', '', '2018-10-12 11:00:32', '2018-10-12 08:00:32', '', 0, 'http://localhost/tajem/?post_type=customers&#038;p=194', 0, 'customers', '', 0),
(195, 1, '2018-10-12 11:00:26', '2018-10-12 08:00:26', '', 'Billabong.svg', '', 'inherit', 'open', 'closed', '', 'billabong-svg', '', '', '2018-10-12 11:00:30', '2018-10-12 08:00:30', '', 194, 'http://localhost/tajem/wp-content/uploads/2018/10/Billabong.svg_.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2018-10-12 12:26:40', '2018-10-12 09:26:40', 'http://localhost/tajem/wp-content/uploads/2018/10/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2018-10-12 12:26:40', '2018-10-12 09:26:40', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2018-10-12 12:26:57', '2018-10-12 09:26:57', '{\n    \"site_icon\": {\n        \"value\": 196,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 09:26:53\"\n    },\n    \"tajem::header_textcolor\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 09:26:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a31b1c69-b49c-4d8c-b3d5-616f3f47a9b7', '', '', '2018-10-12 12:26:57', '2018-10-12 09:26:57', '', 0, 'http://localhost/tajem/?p=197', 0, 'customize_changeset', '', 0),
(198, 1, '2018-10-12 12:44:02', '2018-10-12 09:44:02', '', 'footer-background', '', 'inherit', 'open', 'closed', '', 'footer-background', '', '', '2018-10-12 12:44:08', '2018-10-12 09:44:08', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/footer-background.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2018-10-12 12:44:12', '2018-10-12 09:44:12', '{\n    \"tajem::footer_background\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/footer-background.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 09:44:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e8afce82-0605-4a4f-ba47-e7516be85337', '', '', '2018-10-12 12:44:12', '2018-10-12 09:44:12', '', 0, 'http://localhost/tajem/2018/10/12/e8afce82-0605-4a4f-ba47-e7516be85337/', 0, 'customize_changeset', '', 0),
(200, 1, '2018-10-12 13:17:08', '2018-10-12 10:17:08', '{\n    \"tajem::footer_site_info\": {\n        \"value\": \"lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh elit. Duis sed odio sit amet auctror a ornare odio non mauris vitae erat in elit\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 10:17:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '241fb7f1-6ee8-4ffb-bf98-b1769946f6ae', '', '', '2018-10-12 13:17:08', '2018-10-12 10:17:08', '', 0, 'http://localhost/tajem/2018/10/12/241fb7f1-6ee8-4ffb-bf98-b1769946f6ae/', 0, 'customize_changeset', '', 0),
(201, 1, '2018-10-12 14:14:59', '2018-10-12 11:14:59', '{\n    \"tajem::footer_site_address_section_title\": {\n        \"value\": \"OUR STUDIO\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 11:14:26\"\n    },\n    \"tajem::footer_site_address_section_address\": {\n        \"value\": \"Ruko cucruk, Jl. Radio luar dalem jos No.12 - 13, Kalideres - Jakarta Barat 11480 - Indonesia\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 11:14:34\"\n    },\n    \"tajem::footer_site_address_section_phone_label\": {\n        \"value\": \"(+62) 21-2224 3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 11:14:59\"\n    },\n    \"tajem::footer_site_address_section_phone\": {\n        \"value\": \"+622122243333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 11:14:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7a53f293-a546-4301-8727-95b6e774005d', '', '', '2018-10-12 14:14:59', '2018-10-12 11:14:59', '', 0, 'http://localhost/tajem/?p=201', 0, 'customize_changeset', '', 0),
(202, 1, '2018-10-12 15:18:53', '2018-10-12 12:18:53', '', 'pointer-icon', '', 'inherit', 'open', 'closed', '', 'pointer-icon', '', '', '2018-10-12 15:18:53', '2018-10-12 12:18:53', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/pointer-icon.png', 0, 'attachment', 'image/png', 0),
(203, 1, '2018-10-12 15:19:49', '2018-10-12 12:19:49', '', 'phone-icon', '', 'inherit', 'open', 'closed', '', 'phone-icon', '', '', '2018-10-12 15:19:49', '2018-10-12 12:19:49', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/phone-icon.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2018-10-12 15:19:58', '2018-10-12 12:19:58', '{\n    \"tajem::footer_site_address_section_address_icon\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/pointer-icon.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 12:19:58\"\n    },\n    \"tajem::footer_site_address_section_phone_icon\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/phone-icon.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 12:19:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a03b281a-9097-47e3-9ea6-d91a8db3ac5a', '', '', '2018-10-12 15:19:58', '2018-10-12 12:19:58', '', 0, 'http://localhost/tajem/2018/10/12/a03b281a-9097-47e3-9ea6-d91a8db3ac5a/', 0, 'customize_changeset', '', 0),
(205, 1, '2018-10-12 18:24:18', '2018-10-12 15:24:18', '<div class=\"mailchimp\">\r\n<p>\r\n  <input type=\"email\" name=\"EMAIL\" placeholder=\"Subscribe our newsletter\" required />\r\n</p>\r\n  <p>\r\n	<input type=\"submit\" value=\"ajjj\"/>\r\n  </p>\r\n</div>\r\n', '', '', 'publish', 'closed', 'closed', '', '205', '', '', '2018-10-12 18:24:18', '2018-10-12 15:24:18', '', 0, 'http://localhost/tajem/mc4wp-form/205/', 0, 'mc4wp-form', '', 0),
(206, 1, '2018-10-12 16:03:54', '2018-10-12 13:03:54', '{\n    \"tajem::footer_site_social_section_title\": {\n        \"value\": \"STAY IN TOUCH\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 13:03:49\"\n    },\n    \"tajem::footer_site_social_section_mailchimp\": {\n        \"value\": \"[mc4wp_form id=\\\"205\\\"]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 13:03:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b4c95b0-e932-4dc7-a77b-18aa6f78aba9', '', '', '2018-10-12 16:03:54', '2018-10-12 13:03:54', '', 0, 'http://localhost/tajem/?p=206', 0, 'customize_changeset', '', 0),
(207, 1, '2018-10-12 16:54:55', '2018-10-12 13:54:55', '', 'paper122', '', 'inherit', 'open', 'closed', '', 'paper122', '', '', '2018-10-12 16:54:55', '2018-10-12 13:54:55', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/paper122.png', 0, 'attachment', 'image/png', 0),
(208, 1, '2018-10-12 16:55:03', '2018-10-12 13:55:03', '{\n    \"tajem::footer_site_social_section_mailchimp_icon\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/paper122.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 13:55:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'afe3f4e7-b44f-41cb-83a3-90a6587c58a8', '', '', '2018-10-12 16:55:03', '2018-10-12 13:55:03', '', 0, 'http://localhost/tajem/2018/10/12/afe3f4e7-b44f-41cb-83a3-90a6587c58a8/', 0, 'customize_changeset', '', 0),
(209, 1, '2018-10-12 17:45:23', '2018-10-12 14:45:23', '{\n    \"tajem::facebook\": {\n        \"value\": \"https://www.facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 14:42:23\"\n    },\n    \"tajem::google-plus\": {\n        \"value\": \"https://plus.google.com/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 14:45:05\"\n    },\n    \"tajem::dribbble\": {\n        \"value\": \"https://www.dribbble.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 14:44:10\"\n    },\n    \"tajem::instagram\": {\n        \"value\": \"https://www.instagram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 14:44:10\"\n    },\n    \"tajem::twitter\": {\n        \"value\": \"https://www.twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 14:45:05\"\n    },\n    \"tajem::youtube\": {\n        \"value\": \"https://www.youtube.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 14:45:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3eff6d4f-411d-4ea4-b603-e740fb4bc92b', '', '', '2018-10-12 17:45:23', '2018-10-12 14:45:23', '', 0, 'http://localhost/tajem/?p=209', 0, 'customize_changeset', '', 0),
(210, 1, '2018-10-12 21:47:02', '2018-10-12 18:47:02', '', 'player_thumb', '', 'inherit', 'open', 'closed', '', 'player_thumb', '', '', '2018-10-12 21:47:02', '2018-10-12 18:47:02', '', 0, 'http://localhost/tajem/wp-content/uploads/2018/10/player_thumb.png', 0, 'attachment', 'image/png', 0),
(211, 1, '2018-10-12 21:47:12', '2018-10-12 18:47:12', '{\n    \"tajem::video_thumb\": {\n        \"value\": \"http://localhost/tajem/wp-content/uploads/2018/10/player_thumb.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-12 18:47:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ddb1f2d1-b136-4c90-8b08-be07e5f814cb', '', '', '2018-10-12 21:47:12', '2018-10-12 18:47:12', '', 0, 'http://localhost/tajem/2018/10/12/ddb1f2d1-b136-4c90-8b08-be07e5f814cb/', 0, 'customize_changeset', '', 0),
(212, 1, '2018-10-13 07:21:17', '2018-10-13 04:21:17', '{\n    \"tajem::video_caption\": {\n        \"value\": \"WATCH OUR STORY\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-13 04:21:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ce2abc61-9f0e-4ef3-b0a0-e167133ef6b1', '', '', '2018-10-13 07:21:17', '2018-10-13 04:21:17', '', 0, 'http://localhost/tajem/2018/10/13/ce2abc61-9f0e-4ef3-b0a0-e167133ef6b1/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(62, 2, 0),
(170, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_page', 'a:2:{i:0;s:23:\"acf-group_5bbfbe3b0edab\";i:1;s:23:\"acf-group_5bbf1d81e10e9\";}'),
(19, 1, 'metaboxhidden_page', 'a:2:{i:0;s:16:\"commentstatusdiv\";i:1;s:9:\"authordiv\";}'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:\"link-target\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:27:\"add-post-type-header_slider\";i:1;s:23:\"add-post-type-expertise\";i:2;s:23:\"add-post-type-employees\";i:3;s:23:\"add-post-type-portfolio\";i:4;s:26:\"add-post-type-testimonials\";i:5;s:22:\"add-post-type-partners\";i:6;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&editor_expand=on&hidetb=1'),
(25, 1, 'wp_user-settings-time', '1539305316'),
(26, 1, 'closedpostboxes_header_slider', 'a:0:{}'),
(27, 1, 'metaboxhidden_header_slider', 'a:1:{i:0;s:9:\"authordiv\";}'),
(28, 1, 'closedpostboxes_page_sections', 'a:0:{}'),
(29, 1, 'metaboxhidden_page_sections', 'a:2:{i:0;s:13:\"trackbacksdiv\";i:1;s:9:\"authordiv\";}'),
(30, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:1:{i:0;s:18:\"acf-fg-description\";}'),
(31, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}'),
(32, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(33, 1, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(34, 1, 'session_tokens', 'a:1:{s:64:\"14efad3ec4a1ed3e671200c69a6959b46c2d9fe37790f9a7887b7a78bc3e58e2\";a:4:{s:10:\"expiration\";i:1539542544;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539369744;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B67tJUsnnegMZ211qonLr.JX.fAVFb1', 'admin', 'ahrrhy@gmail.com', '', '2018-10-08 14:29:29', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
