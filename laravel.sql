-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 03:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '2020-11-19 04:21:29', '2020-11-19 04:21:29'),
(2, 'Web Development', '2020-11-19 04:21:44', '2020-11-19 04:21:44'),
(3, 'Laravel', '2020-11-19 04:21:54', '2020-11-19 04:21:54'),
(5, 'LAMP Stack', '2020-11-19 06:27:41', '2020-11-19 06:27:41'),
(6, 'Linux', '2020-11-19 06:27:48', '2020-11-19 06:27:48'),
(7, 'DevOps', '2020-11-19 06:27:56', '2020-11-19 06:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `short_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Afghanistan', 'af', NULL, NULL, NULL),
(2, 'Albania', 'al', NULL, NULL, NULL),
(3, 'Algeria', 'dz', NULL, NULL, NULL),
(4, 'American Samoa', 'as', NULL, NULL, NULL),
(5, 'Andorra', 'ad', NULL, NULL, NULL),
(6, 'Angola', 'ao', NULL, NULL, NULL),
(7, 'Anguilla', 'ai', NULL, NULL, NULL),
(8, 'Antarctica', 'aq', NULL, NULL, NULL),
(9, 'Antigua and Barbuda', 'ag', NULL, NULL, NULL),
(10, 'Argentina', 'ar', NULL, NULL, NULL),
(11, 'Armenia', 'am', NULL, NULL, NULL),
(12, 'Aruba', 'aw', NULL, NULL, NULL),
(13, 'Australia', 'au', NULL, NULL, NULL),
(14, 'Austria', 'at', NULL, NULL, NULL),
(15, 'Azerbaijan', 'az', NULL, NULL, NULL),
(16, 'Bahamas', 'bs', NULL, NULL, NULL),
(17, 'Bahrain', 'bh', NULL, NULL, NULL),
(18, 'Bangladesh', 'bd', NULL, NULL, NULL),
(19, 'Barbados', 'bb', NULL, NULL, NULL),
(20, 'Belarus', 'by', NULL, NULL, NULL),
(21, 'Belgium', 'be', NULL, NULL, NULL),
(22, 'Belize', 'bz', NULL, NULL, NULL),
(23, 'Benin', 'bj', NULL, NULL, NULL),
(24, 'Bermuda', 'bm', NULL, NULL, NULL),
(25, 'Bhutan', 'bt', NULL, NULL, NULL),
(26, 'Bolivia', 'bo', NULL, NULL, NULL),
(27, 'Bosnia and Herzegovina', 'ba', NULL, NULL, NULL),
(28, 'Botswana', 'bw', NULL, NULL, NULL),
(29, 'Brazil', 'br', NULL, NULL, NULL),
(30, 'British Indian Ocean Territory', 'io', NULL, NULL, NULL),
(31, 'British Virgin Islands', 'vg', NULL, NULL, NULL),
(32, 'Brunei', 'bn', NULL, NULL, NULL),
(33, 'Bulgaria', 'bg', NULL, NULL, NULL),
(34, 'Burkina Faso', 'bf', NULL, NULL, NULL),
(35, 'Burundi', 'bi', NULL, NULL, NULL),
(36, 'Cambodia', 'kh', NULL, NULL, NULL),
(37, 'Cameroon', 'cm', NULL, NULL, NULL),
(38, 'Canada', 'ca', NULL, NULL, NULL),
(39, 'Cape Verde', 'cv', NULL, NULL, NULL),
(40, 'Cayman Islands', 'ky', NULL, NULL, NULL),
(41, 'Central African Republic', 'cf', NULL, NULL, NULL),
(42, 'Chad', 'td', NULL, NULL, NULL),
(43, 'Chile', 'cl', NULL, NULL, NULL),
(44, 'China', 'cn', NULL, NULL, NULL),
(45, 'Christmas Island', 'cx', NULL, NULL, NULL),
(46, 'Cocos Islands', 'cc', NULL, NULL, NULL),
(47, 'Colombia', 'co', NULL, NULL, NULL),
(48, 'Comoros', 'km', NULL, NULL, NULL),
(49, 'Cook Islands', 'ck', NULL, NULL, NULL),
(50, 'Costa Rica', 'cr', NULL, NULL, NULL),
(51, 'Croatia', 'hr', NULL, NULL, NULL),
(52, 'Cuba', 'cu', NULL, NULL, NULL),
(53, 'Curacao', 'cw', NULL, NULL, NULL),
(54, 'Cyprus', 'cy', NULL, NULL, NULL),
(55, 'Czech Republic', 'cz', NULL, NULL, NULL),
(56, 'Democratic Republic of the Congo', 'cd', NULL, NULL, NULL),
(57, 'Denmark', 'dk', NULL, NULL, NULL),
(58, 'Djibouti', 'dj', NULL, NULL, NULL),
(59, 'Dominica', 'dm', NULL, NULL, NULL),
(60, 'Dominican Republic', 'do', NULL, NULL, NULL),
(61, 'East Timor', 'tl', NULL, NULL, NULL),
(62, 'Ecuador', 'ec', NULL, NULL, NULL),
(63, 'Egypt', 'eg', NULL, NULL, NULL),
(64, 'El Salvador', 'sv', NULL, NULL, NULL),
(65, 'Equatorial Guinea', 'gq', NULL, NULL, NULL),
(66, 'Eritrea', 'er', NULL, NULL, NULL),
(67, 'Estonia', 'ee', NULL, NULL, NULL),
(68, 'Ethiopia', 'et', NULL, NULL, NULL),
(69, 'Falkland Islands', 'fk', NULL, NULL, NULL),
(70, 'Faroe Islands', 'fo', NULL, NULL, NULL),
(71, 'Fiji', 'fj', NULL, NULL, NULL),
(72, 'Finland', 'fi', NULL, NULL, NULL),
(73, 'France', 'fr', NULL, NULL, NULL),
(74, 'French Polynesia', 'pf', NULL, NULL, NULL),
(75, 'Gabon', 'ga', NULL, NULL, NULL),
(76, 'Gambia', 'gm', NULL, NULL, NULL),
(77, 'Georgia', 'ge', NULL, NULL, NULL),
(78, 'Germany', 'de', NULL, NULL, NULL),
(79, 'Ghana', 'gh', NULL, NULL, NULL),
(80, 'Gibraltar', 'gi', NULL, NULL, NULL),
(81, 'Greece', 'gr', NULL, NULL, NULL),
(82, 'Greenland', 'gl', NULL, NULL, NULL),
(83, 'Grenada', 'gd', NULL, NULL, NULL),
(84, 'Guam', 'gu', NULL, NULL, NULL),
(85, 'Guatemala', 'gt', NULL, NULL, NULL),
(86, 'Guernsey', 'gg', NULL, NULL, NULL),
(87, 'Guinea', 'gn', NULL, NULL, NULL),
(88, 'Guinea-Bissau', 'gw', NULL, NULL, NULL),
(89, 'Guyana', 'gy', NULL, NULL, NULL),
(90, 'Haiti', 'ht', NULL, NULL, NULL),
(91, 'Honduras', 'hn', NULL, NULL, NULL),
(92, 'Hong Kong', 'hk', NULL, NULL, NULL),
(93, 'Hungary', 'hu', NULL, NULL, NULL),
(94, 'Iceland', 'is', NULL, NULL, NULL),
(95, 'India', 'in', NULL, NULL, NULL),
(96, 'Indonesia', 'id', NULL, NULL, NULL),
(97, 'Iran', 'ir', NULL, NULL, NULL),
(98, 'Iraq', 'iq', NULL, NULL, NULL),
(99, 'Ireland', 'ie', NULL, NULL, NULL),
(100, 'Isle of Man', 'im', NULL, NULL, NULL),
(101, 'Israel', 'il', NULL, NULL, NULL),
(102, 'Italy', 'it', NULL, NULL, NULL),
(103, 'Ivory Coast', 'ci', NULL, NULL, NULL),
(104, 'Jamaica', 'jm', NULL, NULL, NULL),
(105, 'Japan', 'jp', NULL, NULL, NULL),
(106, 'Jersey', 'je', NULL, NULL, NULL),
(107, 'Jordan', 'jo', NULL, NULL, NULL),
(108, 'Kazakhstan', 'kz', NULL, NULL, NULL),
(109, 'Kenya', 'ke', NULL, NULL, NULL),
(110, 'Kiribati', 'ki', NULL, NULL, NULL),
(111, 'Kosovo', 'xk', NULL, NULL, NULL),
(112, 'Kuwait', 'kw', NULL, NULL, NULL),
(113, 'Kyrgyzstan', 'kg', NULL, NULL, NULL),
(114, 'Laos', 'la', NULL, NULL, NULL),
(115, 'Latvia', 'lv', NULL, NULL, NULL),
(116, 'Lebanon', 'lb', NULL, NULL, NULL),
(117, 'Lesotho', 'ls', NULL, NULL, NULL),
(118, 'Liberia', 'lr', NULL, NULL, NULL),
(119, 'Libya', 'ly', NULL, NULL, NULL),
(120, 'Liechtenstein', 'li', NULL, NULL, NULL),
(121, 'Lithuania', 'lt', NULL, NULL, NULL),
(122, 'Luxembourg', 'lu', NULL, NULL, NULL),
(123, 'Macau', 'mo', NULL, NULL, NULL),
(124, 'Macedonia', 'mk', NULL, NULL, NULL),
(125, 'Madagascar', 'mg', NULL, NULL, NULL),
(126, 'Malawi', 'mw', NULL, NULL, NULL),
(127, 'Malaysia', 'my', NULL, NULL, NULL),
(128, 'Maldives', 'mv', NULL, NULL, NULL),
(129, 'Mali', 'ml', NULL, NULL, NULL),
(130, 'Malta', 'mt', NULL, NULL, NULL),
(131, 'Marshall Islands', 'mh', NULL, NULL, NULL),
(132, 'Mauritania', 'mr', NULL, NULL, NULL),
(133, 'Mauritius', 'mu', NULL, NULL, NULL),
(134, 'Mayotte', 'yt', NULL, NULL, NULL),
(135, 'Mexico', 'mx', NULL, NULL, NULL),
(136, 'Micronesia', 'fm', NULL, NULL, NULL),
(137, 'Moldova', 'md', NULL, NULL, NULL),
(138, 'Monaco', 'mc', NULL, NULL, NULL),
(139, 'Mongolia', 'mn', NULL, NULL, NULL),
(140, 'Montenegro', 'me', NULL, NULL, NULL),
(141, 'Montserrat', 'ms', NULL, NULL, NULL),
(142, 'Morocco', 'ma', NULL, NULL, NULL),
(143, 'Mozambique', 'mz', NULL, NULL, NULL),
(144, 'Myanmar', 'mm', NULL, NULL, NULL),
(145, 'Namibia', 'na', NULL, NULL, NULL),
(146, 'Nauru', 'nr', NULL, NULL, NULL),
(147, 'Nepal', 'np', NULL, NULL, NULL),
(148, 'Netherlands', 'nl', NULL, NULL, NULL),
(149, 'Netherlands Antilles', 'an', NULL, NULL, NULL),
(150, 'New Caledonia', 'nc', NULL, NULL, NULL),
(151, 'New Zealand', 'nz', NULL, NULL, NULL),
(152, 'Nicaragua', 'ni', NULL, NULL, NULL),
(153, 'Niger', 'ne', NULL, NULL, NULL),
(154, 'Nigeria', 'ng', NULL, NULL, NULL),
(155, 'Niue', 'nu', NULL, NULL, NULL),
(156, 'North Korea', 'kp', NULL, NULL, NULL),
(157, 'Northern Mariana Islands', 'mp', NULL, NULL, NULL),
(158, 'Norway', 'no', NULL, NULL, NULL),
(159, 'Oman', 'om', NULL, NULL, NULL),
(160, 'Pakistan', 'pk', NULL, NULL, NULL),
(161, 'Palau', 'pw', NULL, NULL, NULL),
(162, 'Palestine', 'ps', NULL, NULL, NULL),
(163, 'Panama', 'pa', NULL, NULL, NULL),
(164, 'Papua New Guinea', 'pg', NULL, NULL, NULL),
(165, 'Paraguay', 'py', NULL, NULL, NULL),
(166, 'Peru', 'pe', NULL, NULL, NULL),
(167, 'Philippines', 'ph', NULL, NULL, NULL),
(168, 'Pitcairn', 'pn', NULL, NULL, NULL),
(169, 'Poland', 'pl', NULL, NULL, NULL),
(170, 'Portugal', 'pt', NULL, NULL, NULL),
(171, 'Puerto Rico', 'pr', NULL, NULL, NULL),
(172, 'Qatar', 'qa', NULL, NULL, NULL),
(173, 'Republic of the Congo', 'cg', NULL, NULL, NULL),
(174, 'Reunion', 're', NULL, NULL, NULL),
(175, 'Romania', 'ro', NULL, NULL, NULL),
(176, 'Russia', 'ru', NULL, NULL, NULL),
(177, 'Rwanda', 'rw', NULL, NULL, NULL),
(178, 'Saint Barthelemy', 'bl', NULL, NULL, NULL),
(179, 'Saint Helena', 'sh', NULL, NULL, NULL),
(180, 'Saint Kitts and Nevis', 'kn', NULL, NULL, NULL),
(181, 'Saint Lucia', 'lc', NULL, NULL, NULL),
(182, 'Saint Martin', 'mf', NULL, NULL, NULL),
(183, 'Saint Pierre and Miquelon', 'pm', NULL, NULL, NULL),
(184, 'Saint Vincent and the Grenadines', 'vc', NULL, NULL, NULL),
(185, 'Samoa', 'ws', NULL, NULL, NULL),
(186, 'San Marino', 'sm', NULL, NULL, NULL),
(187, 'Sao Tome and Principe', 'st', NULL, NULL, NULL),
(188, 'Saudi Arabia', 'sa', NULL, NULL, NULL),
(189, 'Senegal', 'sn', NULL, NULL, NULL),
(190, 'Serbia', 'rs', NULL, NULL, NULL),
(191, 'Seychelles', 'sc', NULL, NULL, NULL),
(192, 'Sierra Leone', 'sl', NULL, NULL, NULL),
(193, 'Singapore', 'sg', NULL, NULL, NULL),
(194, 'Sint Maarten', 'sx', NULL, NULL, NULL),
(195, 'Slovakia', 'sk', NULL, NULL, NULL),
(196, 'Slovenia', 'si', NULL, NULL, NULL),
(197, 'Solomon Islands', 'sb', NULL, NULL, NULL),
(198, 'Somalia', 'so', NULL, NULL, NULL),
(199, 'South Africa', 'za', NULL, NULL, NULL),
(200, 'South Korea', 'kr', NULL, NULL, NULL),
(201, 'South Sudan', 'ss', NULL, NULL, NULL),
(202, 'Spain', 'es', NULL, NULL, NULL),
(203, 'Sri Lanka', 'lk', NULL, NULL, NULL),
(204, 'Sudan', 'sd', NULL, NULL, NULL),
(205, 'Suriname', 'sr', NULL, NULL, NULL),
(206, 'Svalbard and Jan Mayen', 'sj', NULL, NULL, NULL),
(207, 'Swaziland', 'sz', NULL, NULL, NULL),
(208, 'Sweden', 'se', NULL, NULL, NULL),
(209, 'Switzerland', 'ch', NULL, NULL, NULL),
(210, 'Syria', 'sy', NULL, NULL, NULL),
(211, 'Taiwan', 'tw', NULL, NULL, NULL),
(212, 'Tajikistan', 'tj', NULL, NULL, NULL),
(213, 'Tanzania', 'tz', NULL, NULL, NULL),
(214, 'Thailand', 'th', NULL, NULL, NULL),
(215, 'Togo', 'tg', NULL, NULL, NULL),
(216, 'Tokelau', 'tk', NULL, NULL, NULL),
(217, 'Tonga', 'to', NULL, NULL, NULL),
(218, 'Trinidad and Tobago', 'tt', NULL, NULL, NULL),
(219, 'Tunisia', 'tn', NULL, NULL, NULL),
(220, 'Turkey', 'tr', NULL, NULL, NULL),
(221, 'Turkmenistan', 'tm', NULL, NULL, NULL),
(222, 'Turks and Caicos Islands', 'tc', NULL, NULL, NULL),
(223, 'Tuvalu', 'tv', NULL, NULL, NULL),
(224, 'U.S. Virgin Islands', 'vi', NULL, NULL, NULL),
(225, 'Uganda', 'ug', NULL, NULL, NULL),
(226, 'Ukraine', 'ua', NULL, NULL, NULL),
(227, 'United Arab Emirates', 'ae', NULL, NULL, NULL),
(228, 'United Kingdom', 'gb', NULL, NULL, NULL),
(229, 'United States', 'us', NULL, NULL, NULL),
(230, 'Uruguay', 'uy', NULL, NULL, NULL),
(231, 'Uzbekistan', 'uz', NULL, NULL, NULL),
(232, 'Vanuatu', 'vu', NULL, NULL, NULL),
(233, 'Vatican', 'va', NULL, NULL, NULL),
(234, 'Venezuela', 've', NULL, NULL, NULL),
(235, 'Vietnam', 'vn', NULL, NULL, NULL),
(236, 'Wallis and Futuna', 'wf', NULL, NULL, NULL),
(237, 'Western Sahara', 'eh', NULL, NULL, NULL),
(238, 'Yemen', 'ye', NULL, NULL, NULL),
(239, 'Zambia', 'zm', NULL, NULL, NULL),
(240, 'Zimbabwe', 'zw', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_06_04_000001_create_permissions_table', 1),
(8, '2020_06_04_000002_create_roles_table', 1),
(9, '2020_06_04_000003_create_users_table', 1),
(10, '2020_06_04_000004_create_countries_table', 1),
(11, '2020_06_04_000005_create_cities_table', 1),
(12, '2020_06_04_000006_create_trips_table', 1),
(13, '2020_06_04_000007_create_permission_role_pivot_table', 1),
(14, '2020_06_04_000008_create_role_user_pivot_table', 1),
(15, '2020_06_04_000009_add_relationship_fields_to_cities_table', 1),
(16, '2020_06_04_000010_add_relationship_fields_to_trips_table', 1),
(17, '2020_11_19_052447_create_categories_table', 2),
(18, '2020_11_19_060032_create_posts_table', 2),
(19, '2020_11_19_123337_create_offers_table', 3),
(20, '2020_11_19_124912_create_sponsers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Soccer Jerseys for kingsmen secret service', 'lorem ipusm dollar sit mi ni va matata lorem ipusm dollar sit mi ni va matata lorem ipusm dollar sit mi ni va matata ', '2020-11-19 08:10:41', '2020-11-19 08:10:41'),
(3, '5 New Features In PHP 7 That You Should Have A Look At', 'asdkjfalsdkf\r\nasdlfkasd]\r\nasdfklnasd;lf', '2020-11-19 08:12:06', '2020-11-19 08:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'country_create', NULL, NULL, NULL),
(18, 'country_edit', NULL, NULL, NULL),
(19, 'country_show', NULL, NULL, NULL),
(20, 'country_delete', NULL, NULL, NULL),
(21, 'country_access', NULL, NULL, NULL),
(22, 'city_create', NULL, NULL, NULL),
(23, 'city_edit', NULL, NULL, NULL),
(24, 'city_show', NULL, NULL, NULL),
(25, 'city_delete', NULL, NULL, NULL),
(26, 'city_access', NULL, NULL, NULL),
(27, 'trip_create', NULL, NULL, NULL),
(28, 'trip_edit', NULL, NULL, NULL),
(29, 'trip_show', NULL, NULL, NULL),
(30, 'trip_delete', NULL, NULL, NULL),
(31, 'trip_access', NULL, NULL, NULL),
(32, 'profile_password_edit', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, '5 New Features In PHP 7 That You Should Have A Look At', '1. Speed Improvement\r\nThe developers for the PHP 7 has done a pretty commendable job here. Now your PHP codebase uses less memory and gives you even more performance than before. After itâ€™s release, internet was overloaded with benchmarks which were really promising. It is almost a 2x increase inserver response times with PHP 7. For further details on benchmarks click here.\r\n\r\n2. Implementation of Type Declarations\r\nThe type declaration is used to specify the type of variable. PHP sets this automatically and because of which, PHP is a weakly typed language. PHP does not need you to declare the data type. Because of which, you could do radical things with the variables, like adding Float into String without resulting in an error. Type declaration helps you get the expected results. Making sure that only certain procedures can occur. Which makes the code understandable.\r\n\r\nIn the previous PHP versions, we could use type hinting method. This method specifies the type of an argument declaration in a function. But the issue with this method was that you can only use it with a function declaration. Which limits to only two types, a class name, and an array.\r\n\r\nScalar Type Declaration\r\n\r\nPHP 7 has now added Scalar type declaration for int, float, string, and boolean. Adding scalar type declaration and enabling strict requirements ensures that more correct and well-documented PHP programs can be written. It also helps you in gaining more control over your code and make the code easier to read.\r\n\r\nBy default, on PHP 7, these declarations are non-strict. Which means that the type forging is possible. As if you pass a string starting with a number into a float type function, it grabs the number from in the start and skips everything else. Passing a float into a function that requires an int, that float will become int.\r\n\r\nNon-Strict Example\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\nfunction getSum(float $a, float $b) {\r\n   return $a + $b;\r\n}\r\n \r\ngetSum(6, \"7 week\");\r\n//Here int(6) changed to float(6.0) and string â€œ7 weekâ€ changed to float(7.0)\r\n//with a â€œNotice: A non well formed numeric value encounteredâ€\r\n \r\n//returns float(13)\r\ngetSum(1.1, \"2.2\");\r\n \r\n//Here string \"2.2\" is changed to float(2.2) without any notice\r\n//returns float(3.3)\r\n \r\ngetSum(3.1, 2);\r\n// changes int(2) to float(2.0)\r\n// returns int(5.1)\r\nHere the getSum function receives 2 floats and adds them together returning the sum. When you use a non-strict type declaration in PHP 7. It will reforge these arguments to match the type specified in the function. Which means whatever the argument we pass, PHP will convert it to float.\r\n\r\nStrict Example\r\n\r\nPHP 7 additionally gives us the opportunity to strict the declaration type. It is achieved by adding â€œstrict_types=1â€ on the very first line of the file. This ensures that any calls made to the functions specified must strictly adhere to the specified types. Strict is determined in the file in which the call to a function is made and not the file in which the function is defined.\r\n\r\nWhile using a strict type-declaration, if a mismatch occurs, a â€œFatal Errorâ€ occurs and we know that something is not functioning as desired. This helps in not causing random and confusing diagnose issues. Let\'s just cut the talk and take a look at an example with strict types turned on.\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\ndeclare(strict_types=1);\r\nfunction getSum(float $a, float $b) {\r\n    return $a + $b;\r\n}\r\n \r\ngetSum(3, \"2 week\");\r\n// Fatal error: Uncaught TypeError: Argument 2 passed to getSum() must be of the type float, string given\r\n \r\ngetSum(1.8,  \"4.5\");\r\n// Fatal error: Uncaught TypeError: Argument 2 passed to getSum() must be of the type float, string given\r\n \r\ngetSum(3.1, 2);\r\n// int(2) change to float(2.0)\r\n//returns float(5.1)\r\nSetting â€œdeclare strict_typeâ€ to â€œ1â€, the first two calls that pass a string produces a Fatal error: â€œUncaught TypeError: Argument 2 passed to getSum() must be of the type float, string givenâ€. With only the exception in the third call, in which if you pass an integer for an argument instead of a float value, PHP will perform â€œwideningâ€, which includes adding .0 at the end of the integer value. This returns (5.1).\r\n\r\nReturn Type Declarations\r\n\r\nThe third type of declaration that PHP 7 supports are a Return Type Declaration. It supports all similar type arguments as a return. Take look at the example of how to specify a return type declaration.\r\n\r\n?\r\n1\r\n2\r\n3\r\nfunction getSum(float $a, float $b) : float {\r\n \r\n}\r\nAdding a return type ensures that only an expected value type returns. For the previous two examples if we set the return type float it will work the same. As the values being returned are already float. So we will be doing an example for int. return types.\r\n\r\nNon-Strict Integer Example\r\n\r\nWithout the strict type declaration on, if we specify the return type as int for the previous examples, it will work the same. With just the difference being, that return will be forged to an integer. Which means it will truncate the float value and only returns the integer.\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\nfunction getSum(float $a, float $b) : int {\r\n    return $a + $b;\r\n}\r\n \r\ngetSum(6, \"7 week\");\r\n// changes int(6) to float(6.0) & string(â€œ7 weekâ€) to float(7.0)\r\n// returns int(13);\r\n \r\ngetSum(1.1, \"2.2\");\r\n// changes string \"2.2\" to float(2.2)\r\n// returns int(3.3)\r\n \r\ngetSum(3.1, 2);\r\n// changes int(2) to float(2.0)\r\n// returns int(5.1)\r\nStrict Integer Example\r\n\r\nIf we turn strict types on, weâ€™ll get a Fatal error: Uncaught TypeError: Return value of getSum() must be of the type integer, float returned. For this case weâ€™ll be casting our return value as an int. which then returns the truncated value.\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\ndeclare(strict_types=1);\r\n \r\nfunction getSum(float $a, float $b) : int {\r\n    // return $a + $b;\r\n    // The above statement shows Fatal error: Uncaught TypeError: Return value of getSum() must be of the type integer, float returned\r\n    return (int)($a + $b); // truncate float like non-strict\r\n}\r\n \r\ngetSum(3.1, 2); // changes int(2) to float(2.0) and returns int(5.1)\r\nBenefits\r\n\r\nThese new implementations of Type Declaration certainly help in making the code easier to read. With PHP 7 you get a versatile type declaration methods which makes your life easier. You can even see at the start of the function, what is required and what will be returned.\r\n\r\n3. Implementation of Error Handling\r\nThe next new feature we will be discussing are the new Error Handling techniques implemented in PHP 7. Handling fatal errors was a nightmare in previous versions of PHP. If a fatal error occurs it just simply stops the script rather than invoking the error handler. On a production server, this returns a blank white screen to your users, which in the end causes your credibility to drop.\r\n\r\nBut PHP 7 allows an exception to be thrown when an error occurs, rather than stopping the whole script. This doesnâ€™t mean that Fatal errors are gone from PHP 7. They still exist i.e., an uncaught exception will still be a fatal error in PHP 7. One more thing to highlight here is that other types of errors like warnings and notices are unchanged in PHP 7. And exceptions are only thrown by fatal and recoverable errors only.\r\n\r\nHowever, Error and Exception both in PHP 7 implements the new throwable class. This means both work almost the same way. Letâ€™s see the new hierarchy to understand more.\r\n\r\n-> Exception implements Throwable\r\n    -> â€¦\r\n-> Error implements Throwable\r\n    -> TypeError\r\n    -> ParseError\r\n    -> ArithmeticError\r\n        -> DivisionByZeroError\r\n    -> AssertionError\r\n\r\n                \r\nUnder Error, PHP 7 now have some more specific errors. Which includes ParseError, TypeError, ArithmeticErrors and an AssertionError. Practically all errors that were fatal in PHP 5, now throw instances of Error in PHP 7, which in term help you to improve your code legibility.\r\n\r\n4. New Operators\r\nPHP 7 also brings us some new operators. Letâ€™s just cut the talk and directly go through all the new operators.\r\n\r\nSpaceship Operator\r\n\r\nThe first one in our list is the Spaceship Operator, also known as the Combined Comparison Operator. It is put together using three of the previous operators, namely, â€œ<â€, â€œ=â€ and â€œ>â€. It looks something like this:\r\n\r\n?\r\n1\r\n<=>\r\nWhat this operator is useful for is that it will compare the value on the left to the value on the right and returns 3 different values. See the example below for further understanding.\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n$compareResult = $a <=> $b\r\n \r\nif $a < $b it returns â€œ-1â€ to the variable â€œcompareResultâ€\r\n \r\nif $a = $b it returns â€œ0â€ to the variable â€œcompareResultâ€\r\n \r\nif $a > $b it returns â€œ1â€ to the variable â€œcompareResultâ€\r\nA very useful operator. The most common use of this operator will be in sorting.\r\n\r\nNull Coalesce Operator\r\n\r\nAnother new operator in PHP 7 is the Null Coalesce Operator. If it is not null it returns the left operand, otherwise, it returns the right operand. The thing worth mentioning here is that it wonâ€™t pop any notice if the left operand is a null variable.\r\n\r\n?\r\n1\r\n$user = $userName ??  \"v3ron\";\r\nIn the above example, if the variable userName is not null, it will push that value to the variable â€œuserâ€, or else â€œv3ronâ€ will be assigned to the variable â€œuserâ€.\r\n\r\nBefore PHP 7, something like this would be written as:\r\n\r\n?\r\n1\r\n$user = isset($userName) ? $userName : â€œv3ronâ€;\r\nAnd yes, these can be stacked which makes it much likely to be used. It will check each item from left to right until it finds one that is not null, it will use that value. For example:\r\n\r\n5. CSPRNG Functions\r\nThe CSPRNG abbreviated as â€œCryptographically Secure Pseudo-Random Number Generatorâ€ is an easy to use API. It provides an easy and reliable way to generate secure random integers and bytes for use within cryptographic contexts. It can be used especially for generating random passwords or password salt.\r\n\r\n2 new functions have been introduced in PHP 7 to use namely, â€œrandom_intâ€ and â€œrandom_bytesâ€. Letâ€™s analyze a bit more to see what these two brings to the table for the developers.\r\n\r\nRandom Bytes\r\n\r\nWith random_bytes, you only supply a single argument that is the length of the random string which it will return in bytes. Take a look at the example for a better understanding.\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\n5\r\n$randomByte = random_bytes(10); // 10 is the length in bytes\r\n \r\nvar_dump(bin2hex($randomByte));\r\n \r\n// output for the above code is: string(20) \"5f655db3ae43c256937b\"\r\nThese are bytes, not integers. For a random number or integer, you should use the random_int function.\r\n\r\nRandom Integers\r\n\r\nThis function generates secure random integers. When using random_int you supply two arguments, that are min and max. Which tells the minimum and maximum numbers for the random integer.\r\n\r\nFor example:\r\n\r\n?\r\n1\r\nrandom_int(2,10);\r\nThe above code returns a random number between 2 and 10, including those two as well.\r\n\r\n6. Conclusion\r\nSo much for all the new features. There are some features that have been removed in PHP 7, you can check them out by going to the deprecated features section in PHP 7.\r\n\r\nVersions released before 5.5 are not compatible any longer. Now it is for you to decide whether to upgrade to PHP 7 for super fast speeds and update all your code accordingly. Or stay with the previous version of PHP.', NULL, '2020-11-19 05:37:58', '2020-11-19 05:44:17'),
(3, 1, 'Types of caching in a PHP web application', 'OpCode Cache\r\nWhen running a PHP script. The interpreter will parse the script into a series of operation codes, commonly known as \"opcodes\".\r\n\r\nBy caching the opcode in memory, we can gain significant performance improvement. This is known as opCode cache.\r\n\r\nThere is a list of well-know opCode cache engines and they are:\r\n\r\nZend OpCache\r\nAPC User Cache\r\nAlternative PHP Cache\r\nXcache\r\nBy default, PHP ships with Zend OpCache.\r\n\r\nApplication Cache\r\nWhen building an application, we can utilize some cache strategies to avoid slow response:\r\n\r\nStore data that is not changed often in a cache.\r\nStore time-consuming computed data in a cache.\r\nAbove are known as application cache.\r\n\r\nWhen implementing the application cache, we have a lot of options in where to store the cache values. Following solutions are typically used to store the cache values:\r\n\r\nRedis\r\nMemcached\r\nDatabase\r\nFile system\r\nHTTP Cache\r\nMost of our PHP applications are built for the web and accessed by a browser. The browser interacts with our application via HTTP protocol.\r\n\r\nBy utilizing the HTTP cache headers, a browser stores the response locally in its cache, this saves it from requesting the same data again via the network. This is known as HTTP cache.\r\n\r\nCommonly used HTTP Cache headers are:\r\n\r\nCache-control\r\nPragma\r\nExpires\r\nEtag\r\nLast-Modified\r\nProxy Cache\r\nOpCode cache, application cache, and HTTP cache are great to help with application speed improvement. However, all the requests still go through the webserver. When the concurrency of the application is high, the web server may have a difficult time handling the requests.\r\n\r\nBy placing a proxy server in front of the webserver, we can not only significantly reduce the web server\'s load, but also we can improve the speed greatly because proxy server stores the cached response inside its memory.\r\n\r\nThe strategy above is known as a proxy cache.\r\n\r\nWell-known proxy cache servers are:\r\n\r\nNginx\r\nSquid\r\nVarnish', NULL, '2020-11-19 05:45:13', '2020-11-19 05:45:13'),
(4, 2, 'Setup CakePHP 3 in a subdirectory using Nginx', 'Serving static files\r\nStatic files are served directly from the webroot folder, so the Nginx configuration blocks looks like something below:\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\nlocation ~* /demo/(.*)\\.(css|js|ico|gif|png|jpg|jpeg|ttf|woff)$ {\r\n    root /var/www/your-website.com/public/demo/webroot/;\r\n    try_files /$1.$2 =404;\r\n}\r\nServing PHP content\r\nOther requests will be directed to index.php file which leads to the CakePHP\'s router:\r\n\r\n?\r\n1\r\n2\r\n3\r\n4\r\nlocation /demo {\r\n    root /var/www/your-website.com/public/demo/webroot;\r\n      try_files $uri $uri/ /demo/webroot/index.php$is_args$args;\r\n}\r\nThe End', NULL, '2020-11-19 05:45:48', '2020-11-19 05:45:48'),
(5, 2, '14 Best Web Development IDE in 2020 [CSS, HTML, JavaScript]', 'Editing HTML and CSS code can be done without any specific tools. In fact, if you have a simple text editor, you are good to go. However, just because you can do something doesn’t mean it is the best way to do it – and that applies to web development as well. If you use proper tools for your work, not only will you make things easier for yourself, but you will also step it up on the quality level. We noticed that at TMS while working to create wpDataTables and the Amelia WordPress Booking Plugin. With that in mind, we are well aware that not everybody can or want to spend lots of money on the best HTML editor. Luckily, they don’t have to. Today, you can easily find a great and free IDE and develop apps with ease. Whether you need a JavaScript IDE, an HTML IDE, or any other web development IDE, they are all out there and many of them are open-source. So let’s dig a bit deeper and find the best IDE for web development.\r\nWhat is the Difference between IDE and Text Editor?\r\nWeb development IDE does all the things simple text editors do plus a number of more advanced stuff that you can’t do with text editors. For instance, while an editor such as Sublime or Atom can be used as an HTML CSS JavaScript editor, they only allow you to write code. Of course, they come with a bunch of convenient features such as syntax highlighting, customizable interfaces, and extensive navigation tools, you will need additional features to make a functional app. For example, you will need a debugger and a compiler. However, with the best IDEs, you won’t have to worry about that. They often come with additional tools for automating, testing, and visualizing the development process. Basically, they equip you with everything you need to turn code into a functioning app or program. If an advanced text editor is enough for your tasks, you may check out this comparison of the best 13 editors to pick one that would work best for you. So what is the best IDE for you? We will help you choose the best free IDE that will be your new favorite HTML CSS editor or free JavaScript editor.\r\n1. Visual Studio Code\r\nVisual Studio Code IDE\r\nVisual Studio Code is possibly the best JavaScript ide for Windows, Mac, and Linux. Not only does it support JavaScript, but it also supports Node.js, TypeScript, and it comes with a whole ecosystem of extensions for other languages including C++, C#, Python, PHP etc. It provides great syntax highlighting and auto-complete with IntelliSense based on variable types, function definitions, and imported modules. It also allows you to debug code by launching or attaching to your running apps debug with breakpoints, call stacks, and an interactive console. You can effortlessly integrate a JavaScript UI library into Visual Studio Code. All in all, this IDE for JavaScript is definitely one to check out. An important note – it is free to use. To get the most productivity out of the Visual Studio Code, we recommend this quick 1-hour online course, which will guide you through adding custom hotkeys, creating templates and boilerplates to increase coding speed, integrating with GitHub to be able to work on Git repositories without leaving VS Code.\r\n2. RJ TextEd\r\nRJ TextEd IDE\r\nRJ TextEd is high on our list fighting for the spot of the best IDE for JavaScript. It is a full featured text and source editor with Unicode support and all in all, a great IDE for web development. It supports not only JavaScript, but also PHP, ASP, HTML, and CSS. Some of the most important features of this web development IDE include but are not limited to:\r\nAuto-completion.\r\nCode folding\r\nColumn mode\r\nMulti-edit and multi-select\r\nDocument map\r\nAnnotation bar\r\nAdvanced sorting\r\nHandles both ASCII and binary files\r\nCSS and HTML wizards\r\nHighlighting of colors in CSS/SASS/LESS\r\nAn advanced color hint that can convert between color formats\r\nDockable panels\r\nFTP and SFTP client with synchronization\r\nFile explorer, text clips, code explorer, project manager\r\nConvert between code pages, Unicode formats and text formats\r\nUnicode and ANSI code page detection\r\nOpen/Save UTF-8 encoded files without a signature (BOM)\r\nUnicode file paths and file names\r\nHTML validation, format, and repair\r\nTools available like syntax editor, color picker, charmap', NULL, '2020-11-19 06:29:15', '2020-11-19 06:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sponsers`
--

CREATE TABLE `sponsers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsers`
--

INSERT INTO `sponsers` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(6, '1605796746.jpeg', 'https://www.youtube.com/watch?v=slRUJnbakK4', '2020-11-19 09:39:06', '2020-11-19 09:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city_from_id` int(10) UNSIGNED NOT NULL,
  `city_to_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$XH232IuTQCcPEkbswdv4UeGvuvnj26M1HLKkXtN4Dgx5gyI1WCIMi', NULL, NULL, NULL, NULL),
(2, 'Malik', 'malikmudassar@gmail.com', '2020-11-18 16:07:18', '$2y$10$XH232IuTQCcPEkbswdv4UeGvuvnj26M1HLKkXtN4Dgx5gyI1WCIMi', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_fk_1586974` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_1586949` (`role_id`),
  ADD KEY `permission_id_fk_1586949` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_1586958` (`user_id`),
  ADD KEY `role_id_fk_1586958` (`role_id`);

--
-- Indexes for table `sponsers`
--
ALTER TABLE `sponsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_from_fk_1587040` (`city_from_id`),
  ADD KEY `city_to_fk_1587042` (`city_to_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sponsers`
--
ALTER TABLE `sponsers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `country_fk_1586974` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_1586949` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_1586949` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_1586958` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_1586958` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `city_from_fk_1587040` FOREIGN KEY (`city_from_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `city_to_fk_1587042` FOREIGN KEY (`city_to_id`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
