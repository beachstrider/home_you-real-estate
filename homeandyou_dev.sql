-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 07:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeandyou_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `askforratings`
--

CREATE TABLE `askforratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `askforratings`
--

INSERT INTO `askforratings` (`id`, `name`, `phone`, `email`, `message`, `signed`, `checked`, `created_at`, `updated_at`) VALUES
(1, 'Jason', '645615651', 'jasonjlskdfjlsdfj@lsdkjf.com', 'l;sdjflsdjfksdfasdfwef', 0, 0, '2019-10-16 18:05:34', '2019-10-16 18:06:29'),
(2, 'lsdflkj', '54651615', 'jsldfjkl@lskdjfsldf.com', 'lsdjflskdjflweifjowldfsd', 0, 0, '2019-10-16 18:06:25', '2019-10-16 18:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `subtitle`, `banner`, `thumbnail`, `content`, `created_at`, `updated_at`) VALUES
(14, 'New Blog', 'New Blog Sub Title', 'blogs/banners/THEtwV6EyEU0bxC0ptqrbQkXzmV6q5Wy9TA3GH2Z.png', 'blogs/thumbnails/MkPW5fLLYDseqSdzHhXuQzgzjdSzjIQhDXXLEdv2.png', '<h3><img style=\"width: 50%; float: right;\" src=\"/storage/blogs/content/XCP4A3f599gnRCeUGbLlqcMVDomLjcc2Bzquy2lD.png\" class=\"note-float-right\">This is the test blog.</h3><h3>AAAAAAAAAAAAAAAAAAAAAAAAAAAA</h3><p>BBBBBBBBBBBBBBBBBBB</p><h1>CCCCCCCCCCCCCCCCCCCCCj</h1><p><br></p><p><br></p><p><img style=\"width: 100%;\" src=\"/storage/blogs/content/kM56VS4idbdNvyvqTjpaunJnIt2nSux8xJ7G3Fe6.png\"><br></p>', '2019-09-27 13:04:26', '2019-10-12 15:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `contactmessages`
--

CREATE TABLE `contactmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactmessages`
--

INSERT INTO `contactmessages` (`id`, `name`, `phone`, `email`, `message`, `signed`, `checked`, `created_at`, `updated_at`) VALUES
(1, 'Jason', '1654164561', 'jason@gmail.com', 'I am J.', 0, 0, '2019-10-04 03:04:50', '2019-10-04 03:04:53'),
(2, 'Jason', '1656516516', 'jason@gmail.com', 'alsdkjflsdf', 0, 0, '2019-10-16 18:04:57', '2019-10-16 18:05:02'),
(3, 'lakjflkwjelfjsl', '31651651615', 'laksjdflwjef@sdfjsldf', 'alsdjkflsdfasdfwef', 0, 0, '2019-10-16 18:06:13', '2019-10-16 18:06:29'),
(4, 'jlasjdlfasjld', '16161131312', 'sjdlfjasld@lskdjf.com', 'lsdkjflsjdflwekfsdf', 0, 0, '2019-10-16 18:07:19', '2019-10-16 18:07:25'),
(5, 'jlasjdlfasjld', '16161131312', 'sjdlfjasld@lskdjf.com', 'lsdkjflsjdflwekfsdf', 0, 0, '2019-10-16 18:19:34', '2019-10-16 18:25:55'),
(6, 'jlasjdlfasjld', '16161131312', 'sjdlfjasld@lskdjf.com', 'lsdkjflsjdflwekfsdf', 0, 0, '2019-10-16 18:20:45', '2019-10-16 18:25:55'),
(7, 'laksdjfl', '16516156', 'jalsdjf@sldfj.com', 'skldfjlskdfwefsdf', 0, 0, '2019-10-16 18:21:06', '2019-10-16 18:25:55'),
(8, 'laksdjfl', '72454537', 'jalsdjf@sldfj.com', 'skldfjlskdfwefsdf', 0, 0, '2019-10-16 18:25:51', '2019-10-16 18:25:55'),
(9, 'laksdjfl', '72454537', 'jalsdjf@sldfj.com', 'skldfjlskdfwefsdf', 0, 0, '2019-10-16 18:26:27', '2019-10-16 18:27:27'),
(10, 'laksdjfl', '72454537', 'jalsdjf@sldfj.com', 'skldfjlskdfwefsdf', 0, 0, '2019-10-16 18:27:32', '2019-10-16 18:28:47'),
(11, 'laksdjfl', '72454537', 'jalsdjf@sldfj.com', 'skldfjlskdfwefsdf', 0, 0, '2019-10-16 18:28:41', '2019-10-16 18:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea, Democratic People\'s Republic of', 850),
(116, 'KR', 'Korea, Republic of', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 6),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 2),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 13),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 10),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'cost', 'number', 'Cost', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'area', 'number', 'Area', 0, 0, 1, 1, 1, 1, '{}', 6),
(28, 4, 'territory', 'number', 'Territory', 1, 0, 1, 1, 1, 1, '{}', 7),
(30, 4, 'bedroom', 'number', 'Bedroom', 0, 0, 1, 1, 1, 1, '{}', 9),
(31, 4, 'room', 'number', 'Room', 1, 0, 1, 1, 1, 1, '{}', 10),
(32, 4, 'wc', 'number', 'Wc', 0, 0, 1, 1, 1, 1, '{}', 11),
(33, 4, 'garage', 'number', 'Garage', 0, 0, 1, 1, 1, 1, '{}', 12),
(34, 4, 'pool', 'number', 'Pool', 0, 0, 1, 1, 1, 1, '{}', 13),
(35, 4, 'description', 'text_area', 'Description', 1, 0, 1, 1, 1, 1, '{}', 14),
(36, 4, 'images', 'multiple_images', 'Images', 1, 0, 1, 1, 1, 1, '{}', 15),
(37, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(38, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(39, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(40, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(41, 5, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 3),
(42, 5, 'banner', 'image', 'Banner', 1, 0, 1, 1, 1, 1, '{}', 4),
(43, 5, 'thumbnail', 'image', 'Thumbnail', 1, 0, 1, 1, 1, 1, '{}', 5),
(44, 5, 'content', 'text_area', 'Content', 1, 0, 1, 1, 1, 1, '{}', 6),
(45, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(46, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(47, 4, 'beach', 'checkbox', 'Beach', 1, 0, 1, 1, 1, 1, '{}', 8),
(48, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(50, 6, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 3),
(51, 6, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(52, 6, 'message', 'text_area', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(53, 6, 'created_at', 'timestamp', 'Received At', 0, 1, 1, 1, 0, 1, '{}', 6),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(55, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(57, 7, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(59, 7, 'message', 'text_area', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(60, 7, 'created_at', 'timestamp', 'Received At', 0, 1, 1, 1, 0, 1, '{}', 6),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(67, 4, 'district', 'text', 'District', 1, 1, 1, 1, 1, 1, '{}', 3),
(69, 4, 'parish', 'text', 'Parish', 1, 1, 1, 1, 1, 1, '{}', 5),
(70, 4, 'state', 'text', 'State', 1, 0, 1, 1, 1, 1, '{}', 7),
(71, 4, 'business', 'text', 'Business', 1, 1, 1, 1, 1, 1, '{}', 8),
(72, 4, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 21),
(73, 6, 'checked', 'text', 'Checked', 1, 0, 0, 0, 0, 0, '{}', 6),
(74, 7, 'checked', 'text', 'Checked', 1, 0, 0, 0, 0, 0, '{}', 6),
(75, 6, 'signed', 'checkbox', 'Signed', 1, 1, 1, 1, 1, 1, '{}', 6),
(76, 7, 'signed', 'checkbox', 'Signed', 0, 1, 1, 1, 1, 1, '{}', 6),
(77, 4, 'township', 'text', 'Township', 1, 1, 1, 1, 1, 1, '{}', 4),
(78, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(80, 9, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 3),
(81, 9, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(82, 9, 'message', 'text_area', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(83, 9, 'signed', 'checkbox', 'Signed', 1, 1, 1, 1, 1, 1, '{}', 6),
(84, 9, 'checked', 'text', 'Checked', 1, 0, 0, 0, 0, 0, '{}', 7),
(85, 9, 'created_at', 'timestamp', 'Received At', 0, 1, 1, 1, 0, 1, '{}', 8),
(86, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(100, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(101, 16, 'option', 'text', 'Option', 1, 1, 1, 1, 1, 1, '{}', 2),
(102, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(103, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(104, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 19, 'option', 'text', 'Option', 1, 1, 1, 1, 1, 1, '{}', 2),
(106, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(107, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(108, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 21, 'option', 'text', 'Option', 1, 1, 1, 1, 1, 1, '{}', 2),
(110, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(111, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(112, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 7),
(113, 4, 'reference', 'text', 'Reference', 1, 1, 1, 1, 1, 1, '{}', 3),
(114, 16, 'display_en', 'text', 'Display En', 1, 1, 1, 1, 1, 1, '{}', 3),
(115, 16, 'display_pt', 'text', 'Display Pt', 1, 1, 1, 1, 1, 1, '{}', 4),
(116, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 18, 'option', 'text', 'Option', 1, 1, 1, 1, 1, 1, '{}', 2),
(118, 18, 'display_en', 'text', 'Display En', 1, 1, 1, 1, 1, 1, '{}', 3),
(119, 18, 'display_pt', 'text', 'Display Pt', 1, 1, 1, 1, 1, 1, '{}', 4),
(120, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(121, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(122, 19, 'display_en', 'text', 'Display En', 1, 1, 1, 1, 1, 1, '{}', 3),
(123, 19, 'display_pt', 'text', 'Display Pt', 1, 1, 1, 1, 1, 1, '{}', 4),
(124, 21, 'display_en', 'text', 'Display En', 1, 1, 1, 1, 1, 1, '{}', 3),
(125, 21, 'display_pt', 'text', 'Display Pt', 1, 1, 1, 1, 1, 1, '{}', 4),
(126, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(127, 22, 'option', 'text', 'Option', 1, 1, 1, 1, 1, 1, '{}', 2),
(128, 22, 'display_en', 'text', 'Display En', 1, 1, 1, 1, 1, 1, '{}', 3),
(129, 22, 'display_pt', 'text', 'Display Pt', 1, 1, 1, 1, 1, 1, '{}', 4),
(130, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(131, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(132, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 23, 'option', 'text', 'Option', 1, 1, 1, 1, 1, 1, '{}', 2),
(134, 23, 'display_en', 'text', 'Display En', 1, 1, 1, 1, 1, 1, '{}', 3),
(135, 23, 'display_pt', 'text', 'Display Pt', 1, 1, 1, 1, 1, 1, '{}', 4),
(136, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(137, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-09-27 12:52:16', '2019-10-12 15:15:33'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-09-27 12:52:16', '2019-09-27 12:52:16'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-09-27 12:52:16', '2019-09-27 12:52:16'),
(4, 'properties', 'properties', 'Property', 'Properties', 'voyager-documentation', 'App\\Property', NULL, 'App\\Http\\Controllers\\AdminPropertiesController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-27 12:59:11', '2019-10-16 17:08:16'),
(5, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-edit', 'App\\Blog', NULL, 'App\\Http\\Controllers\\AdminBlogsController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-09-27 13:02:37', '2019-09-27 13:02:37'),
(6, 'contactmessages', 'contactmessages', 'Contact Messages', 'Contact Messages', 'voyager-mail', 'App\\ContactMessage', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-09-30 04:31:49', '2019-10-03 05:48:30'),
(7, 'sellrequests', 'sellrequests', 'Sell Request', 'Sell Requests', 'voyager-cup', 'App\\SellRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-09-30 04:38:35', '2019-10-03 05:48:45'),
(9, 'askforratings', 'askforratings', 'Ask For Ratings', 'Ask For Ratings', 'voyager-heart', 'App\\AskForRating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-03 10:59:34', '2019-10-03 11:03:19'),
(16, 'search_districts', 'search-districts', 'Search District', 'Search Districts', NULL, 'App\\SearchDistrict', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"option\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-04 02:27:08', '2019-10-16 17:43:24'),
(18, 'search_parishs', 'search-parishs', 'Search Parish', 'Search Parishes', NULL, 'App\\SearchParish', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"option\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-04 02:38:28', '2019-10-16 17:53:38'),
(19, 'search_townships', 'search-townships', 'Search Township', 'Search Townships', NULL, 'App\\SearchTownship', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"option\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-04 02:40:16', '2019-10-16 17:43:46'),
(21, 'search_types', 'search-types', 'Search Type', 'Search Types', NULL, 'App\\SearchType', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"option\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-04 02:40:56', '2019-10-16 17:43:59'),
(22, 'search_states', 'search-states', 'Search State', 'Search States', NULL, 'App\\SearchState', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-17 07:13:23', '2019-10-17 07:13:23'),
(23, 'search_business', 'search-business', 'Search Business', 'Search Businesses', NULL, 'App\\SearchBusiness', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-17 07:13:54', '2019-10-17 07:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-09-27 12:52:17', '2019-09-27 12:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-09-27 12:52:17', '2019-10-03 04:12:16', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2019-09-27 12:52:17', '2019-10-04 02:31:24', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2019-09-27 12:52:17', '2019-10-03 04:12:16', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2019-09-27 12:52:17', '2019-10-03 03:35:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2019-09-27 12:52:17', '2019-10-04 02:31:24', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-09-27 12:52:17', '2019-09-27 13:06:40', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-09-27 12:52:17', '2019-09-27 13:06:40', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-09-27 12:52:17', '2019-09-27 13:06:40', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-09-27 12:52:17', '2019-09-27 13:06:40', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2019-09-27 12:52:17', '2019-10-04 02:31:24', 'voyager.settings.index', NULL),
(11, 1, 'Properties', '', '_self', 'voyager-documentation', NULL, NULL, 4, '2019-09-27 12:59:11', '2019-10-03 03:35:57', 'voyager.properties.index', NULL),
(12, 1, 'Blogs', '', '_self', 'voyager-edit', NULL, NULL, 5, '2019-09-27 13:02:37', '2019-10-03 03:35:57', 'voyager.blogs.index', NULL),
(13, 1, 'Contact Messages', '', '_self', 'voyager-mail', '#000000', NULL, 7, '2019-09-30 04:31:49', '2019-10-03 03:35:57', 'voyager.contactmessages.index', 'null'),
(14, 1, 'Sell Requests', '', '_self', 'voyager-cup', '#000000', NULL, 6, '2019-09-30 04:38:35', '2019-10-03 03:35:57', 'voyager.sellrequests.index', 'null'),
(16, 1, 'Ask For Ratings', '', '_self', 'voyager-heart', NULL, NULL, 8, '2019-10-03 10:59:35', '2019-10-03 11:01:34', 'voyager.askforratings.index', NULL),
(22, 1, 'Districts', '', '_self', NULL, '#000000', 23, 1, '2019-10-04 02:27:08', '2019-10-04 02:42:07', 'voyager.search-districts.index', 'null'),
(23, 1, 'Search Options', '', '_self', 'voyager-list', '#000000', NULL, 9, '2019-10-04 02:30:49', '2019-10-04 02:31:24', NULL, ''),
(24, 1, 'Parishes', '', '_self', NULL, '#000000', 23, 3, '2019-10-04 02:38:28', '2019-10-04 02:42:26', 'voyager.search-parishs.index', 'null'),
(25, 1, 'Townships', '', '_self', NULL, '#000000', 23, 2, '2019-10-04 02:40:16', '2019-10-04 02:42:17', 'voyager.search-townships.index', 'null'),
(26, 1, 'Types', '', '_self', NULL, '#000000', 23, 4, '2019-10-04 02:40:56', '2019-10-04 02:42:32', 'voyager.search-types.index', 'null'),
(27, 1, 'States', '', '_self', NULL, '#000000', 23, 5, '2019-10-17 07:13:23', '2019-10-17 07:14:51', 'voyager.search-states.index', 'null'),
(28, 1, 'Businesses', '', '_self', NULL, '#000000', 23, 6, '2019-10-17 07:13:54', '2019-10-17 07:14:58', 'voyager.search-business.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_09_21_193236_create_blogs_table', 1),
(26, '2019_09_27_150843_create_countries_table', 1),
(29, '2019_10_02_044730_create_sociallinks_table', 3),
(34, '2019_09_30_131447_create_contactmessages_table', 6),
(35, '2019_09_30_131500_create_sellrequests_table', 6),
(36, '2019_09_21_193252_create_properties_table', 7),
(37, '2019_09_24_071428_create_favourite_user_table', 7),
(38, '2019_10_02_133016_create_featured_table', 7),
(39, '2019_10_03_203655_create_askforratings_table', 8),
(40, '2019_10_03_211821_create_search_options_table', 9),
(46, '2019_10_17_030336_add_column_reference_properties', 13),
(47, '2019_10_04_121036_create_search_districts_table', 14),
(48, '2019_10_04_123316_create_search_townships_table', 14),
(49, '2019_10_04_123419_create_search_types_table', 14),
(50, '2019_10_04_123453_create_search_parishs_table', 14),
(51, '2019_10_17_171107_create_search_states_table', 15),
(52, '2019_10_17_171201_create_search_business_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(2, 'browse_bread', NULL, '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(3, 'browse_database', NULL, '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(4, 'browse_media', NULL, '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(5, 'browse_compass', NULL, '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(6, 'browse_menus', 'menus', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(7, 'read_menus', 'menus', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(8, 'edit_menus', 'menus', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(9, 'add_menus', 'menus', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(10, 'delete_menus', 'menus', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(11, 'browse_roles', 'roles', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(12, 'read_roles', 'roles', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(13, 'edit_roles', 'roles', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(14, 'add_roles', 'roles', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(15, 'delete_roles', 'roles', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(16, 'browse_users', 'users', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(17, 'read_users', 'users', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(18, 'edit_users', 'users', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(19, 'add_users', 'users', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(20, 'delete_users', 'users', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(21, 'browse_settings', 'settings', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(22, 'read_settings', 'settings', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(23, 'edit_settings', 'settings', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(24, 'add_settings', 'settings', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(25, 'delete_settings', 'settings', '2019-09-27 12:52:18', '2019-09-27 12:52:18'),
(26, 'browse_properties', 'properties', '2019-09-27 12:59:11', '2019-09-27 12:59:11'),
(27, 'read_properties', 'properties', '2019-09-27 12:59:11', '2019-09-27 12:59:11'),
(28, 'edit_properties', 'properties', '2019-09-27 12:59:11', '2019-09-27 12:59:11'),
(29, 'add_properties', 'properties', '2019-09-27 12:59:11', '2019-09-27 12:59:11'),
(30, 'delete_properties', 'properties', '2019-09-27 12:59:11', '2019-09-27 12:59:11'),
(31, 'browse_blogs', 'blogs', '2019-09-27 13:02:37', '2019-09-27 13:02:37'),
(32, 'read_blogs', 'blogs', '2019-09-27 13:02:37', '2019-09-27 13:02:37'),
(33, 'edit_blogs', 'blogs', '2019-09-27 13:02:37', '2019-09-27 13:02:37'),
(34, 'add_blogs', 'blogs', '2019-09-27 13:02:37', '2019-09-27 13:02:37'),
(35, 'delete_blogs', 'blogs', '2019-09-27 13:02:37', '2019-09-27 13:02:37'),
(36, 'browse_contactmessages', 'contactmessages', '2019-09-30 04:31:49', '2019-09-30 04:31:49'),
(37, 'read_contactmessages', 'contactmessages', '2019-09-30 04:31:49', '2019-09-30 04:31:49'),
(38, 'edit_contactmessages', 'contactmessages', '2019-09-30 04:31:49', '2019-09-30 04:31:49'),
(39, 'add_contactmessages', 'contactmessages', '2019-09-30 04:31:49', '2019-09-30 04:31:49'),
(40, 'delete_contactmessages', 'contactmessages', '2019-09-30 04:31:49', '2019-09-30 04:31:49'),
(41, 'browse_sellrequests', 'sellrequests', '2019-09-30 04:38:35', '2019-09-30 04:38:35'),
(42, 'read_sellrequests', 'sellrequests', '2019-09-30 04:38:35', '2019-09-30 04:38:35'),
(43, 'edit_sellrequests', 'sellrequests', '2019-09-30 04:38:35', '2019-09-30 04:38:35'),
(44, 'add_sellrequests', 'sellrequests', '2019-09-30 04:38:35', '2019-09-30 04:38:35'),
(45, 'delete_sellrequests', 'sellrequests', '2019-09-30 04:38:35', '2019-09-30 04:38:35'),
(46, 'browse_sociallinks', 'sociallinks', '2019-10-01 18:58:27', '2019-10-01 18:58:27'),
(47, 'read_sociallinks', 'sociallinks', '2019-10-01 18:58:27', '2019-10-01 18:58:27'),
(48, 'edit_sociallinks', 'sociallinks', '2019-10-01 18:58:27', '2019-10-01 18:58:27'),
(49, 'add_sociallinks', 'sociallinks', '2019-10-01 18:58:27', '2019-10-01 18:58:27'),
(50, 'delete_sociallinks', 'sociallinks', '2019-10-01 18:58:27', '2019-10-01 18:58:27'),
(51, 'browse_askforratings', 'askforratings', '2019-10-03 10:59:34', '2019-10-03 10:59:34'),
(52, 'read_askforratings', 'askforratings', '2019-10-03 10:59:35', '2019-10-03 10:59:35'),
(53, 'edit_askforratings', 'askforratings', '2019-10-03 10:59:35', '2019-10-03 10:59:35'),
(54, 'add_askforratings', 'askforratings', '2019-10-03 10:59:35', '2019-10-03 10:59:35'),
(55, 'delete_askforratings', 'askforratings', '2019-10-03 10:59:35', '2019-10-03 10:59:35'),
(66, 'browse_search_districts', 'search_districts', '2019-10-04 02:27:08', '2019-10-04 02:27:08'),
(67, 'read_search_districts', 'search_districts', '2019-10-04 02:27:08', '2019-10-04 02:27:08'),
(68, 'edit_search_districts', 'search_districts', '2019-10-04 02:27:08', '2019-10-04 02:27:08'),
(69, 'add_search_districts', 'search_districts', '2019-10-04 02:27:08', '2019-10-04 02:27:08'),
(70, 'delete_search_districts', 'search_districts', '2019-10-04 02:27:08', '2019-10-04 02:27:08'),
(71, 'browse_search_parishs', 'search_parishs', '2019-10-04 02:38:28', '2019-10-04 02:38:28'),
(72, 'read_search_parishs', 'search_parishs', '2019-10-04 02:38:28', '2019-10-04 02:38:28'),
(73, 'edit_search_parishs', 'search_parishs', '2019-10-04 02:38:28', '2019-10-04 02:38:28'),
(74, 'add_search_parishs', 'search_parishs', '2019-10-04 02:38:28', '2019-10-04 02:38:28'),
(75, 'delete_search_parishs', 'search_parishs', '2019-10-04 02:38:28', '2019-10-04 02:38:28'),
(76, 'browse_search_townships', 'search_townships', '2019-10-04 02:40:16', '2019-10-04 02:40:16'),
(77, 'read_search_townships', 'search_townships', '2019-10-04 02:40:16', '2019-10-04 02:40:16'),
(78, 'edit_search_townships', 'search_townships', '2019-10-04 02:40:16', '2019-10-04 02:40:16'),
(79, 'add_search_townships', 'search_townships', '2019-10-04 02:40:16', '2019-10-04 02:40:16'),
(80, 'delete_search_townships', 'search_townships', '2019-10-04 02:40:16', '2019-10-04 02:40:16'),
(81, 'browse_search_types', 'search_types', '2019-10-04 02:40:56', '2019-10-04 02:40:56'),
(82, 'read_search_types', 'search_types', '2019-10-04 02:40:56', '2019-10-04 02:40:56'),
(83, 'edit_search_types', 'search_types', '2019-10-04 02:40:56', '2019-10-04 02:40:56'),
(84, 'add_search_types', 'search_types', '2019-10-04 02:40:56', '2019-10-04 02:40:56'),
(85, 'delete_search_types', 'search_types', '2019-10-04 02:40:56', '2019-10-04 02:40:56'),
(86, 'browse_search_states', 'search_states', '2019-10-17 07:13:23', '2019-10-17 07:13:23'),
(87, 'read_search_states', 'search_states', '2019-10-17 07:13:23', '2019-10-17 07:13:23'),
(88, 'edit_search_states', 'search_states', '2019-10-17 07:13:23', '2019-10-17 07:13:23'),
(89, 'add_search_states', 'search_states', '2019-10-17 07:13:23', '2019-10-17 07:13:23'),
(90, 'delete_search_states', 'search_states', '2019-10-17 07:13:23', '2019-10-17 07:13:23'),
(91, 'browse_search_business', 'search_business', '2019-10-17 07:13:54', '2019-10-17 07:13:54'),
(92, 'read_search_business', 'search_business', '2019-10-17 07:13:54', '2019-10-17 07:13:54'),
(93, 'edit_search_business', 'search_business', '2019-10-17 07:13:54', '2019-10-17 07:13:54'),
(94, 'add_search_business', 'search_business', '2019-10-17 07:13:54', '2019-10-17 07:13:54'),
(95, 'delete_search_business', 'search_business', '2019-10-17 07:13:54', '2019-10-17 07:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `township` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parish` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(50) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(50) DEFAULT NULL,
  `territory` int(50) NOT NULL,
  `beach` tinyint(1) NOT NULL,
  `bedroom` int(50) DEFAULT NULL,
  `room` int(50) NOT NULL,
  `wc` int(50) DEFAULT NULL,
  `garage` int(50) DEFAULT NULL,
  `pool` int(50) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `reference`, `district`, `township`, `parish`, `type`, `state`, `business`, `cost`, `address`, `area`, `territory`, `beach`, `bedroom`, `room`, `wc`, `garage`, `pool`, `description`, `images`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Alqueva', '', '', '', '', 'Moradia', 'business', '', 370000, 'xxx', 300, 600, 1, 6, 15, 4, 2, 1, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house1.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-01 07:19:42', '2019-10-03 07:19:42'),
(2, 'Porto-Covo', '', '', '', '', 'Moradia', 'business', '', 445000, 'xxx', 300, 600, 1, 4, 10, 2, NULL, 1, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house2.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(3, 'Chiado', '', '', '', '', 'Moradia', 'business', '', 270000, 'xxx', 260, 520, 0, 3, 9, 4, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house3.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 1, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(4, 'Porto - Foz', '', '', '', '', 'Moradia', 'business', '', 270000, 'xxx', 260, 520, 0, 5, 9, 1, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house4.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(5, 'Alfama', '2345678', 'KKK', 'AAA', 'PPP', 'Moradia', 'business', 'BB', 550000, 'xxx', 360, 720, 0, 5, 10, 3, NULL, NULL, 'This house is the mordanest vila in the north scortland..', '[\"properties\\\\September2019\\\\house5.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 1, '2019-10-03 07:19:00', '2019-10-16 17:13:57'),
(6, 'Quinta do Lago', '', '', '', '', 'Apartamento', 'business', '', 445000, 'xxx', 280, 560, 0, 4, 11, 4, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house6.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(7, 'Alqueva1', '', '', '', '', 'Moradia', 'business', '', 225000, 'xxx', 300, 600, 0, 6, 14, 4, 2, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house7.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(8, 'Porto-Covo1', '', '', '', '', 'Moradia', 'business', '', 370000, 'xxx', 260, 520, 0, 3, 13, 3, NULL, 3, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house8.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 1, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(9, 'Chiado1', '', '', '', '', 'Moradia', 'business', '', 370000, 'xxx', 260, 520, 0, 4, 7, 1, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house9.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(10, 'Porto-Covo', '', '', 'abc', '', 'Moradia', 'business', '', 445000, 'xxx', 300, 600, 1, 4, 10, 2, NULL, 1, 'There is the one yellow pool.', '[\"properties\\\\September2019\\\\house1.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(11, 'Chiado', '', '', '', '', 'Apartamento', 'business', '', 270000, 'xxx', 260, 520, 0, 3, 9, 4, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house2.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(12, 'Porto - Foz', '', '', '', '', 'Apartamento', 'business', '', 270000, 'xxx', 260, 520, 0, 5, 9, 1, NULL, NULL, 'Sed ut pool unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house3.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 1, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(13, 'Alfama', '', '', '', '', 'Moradia', 'business', '', 550000, 'xxx', 360, 720, 0, 5, 10, 3, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house4.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(14, 'Quinta do Lago', '', '', '', '', 'Moradia', 'business', '', 445000, 'xxx', 280, 560, 0, 4, 11, 4, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house5.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 1, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(15, 'Alqueva1', '', '', '', '', 'Moradia', 'business', '', 225000, 'xxx', 300, 600, 0, 6, 14, 4, 2, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house6.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(16, 'Porto-Covo1', '', '', '', '', 'Apartamento', 'business', '', 370000, 'xxx', 260, 520, 0, 3, 13, 3, NULL, 3, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house7.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 1, '2019-10-03 07:19:42', '2019-10-03 07:19:42'),
(17, 'Chiado1', '', '', '', '', 'Moradia', 'business', '', 370000, 'xxx', 260, 520, 0, 4, 7, 1, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia comagni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Qui in ea voluptate velit esse quam nihil molestiae consequatur, dolorem eum fugiat quo voluptas nulla pariatur.', '[\"properties\\\\September2019\\\\house8.png\",\"properties\\\\September2019\\\\temhouse1.png\",\"properties\\\\September2019\\\\temhouse2.png\",\"properties\\\\September2019\\\\temhouse3.png\",\"properties\\\\September2019\\\\temhouse4.png\"]', 0, '2019-10-04 07:19:42', '2019-10-03 07:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-09-27 12:52:17', '2019-09-27 12:52:17'),
(2, 'user', 'Normal User', '2019-09-27 12:52:17', '2019-09-27 12:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `search_business`
--

CREATE TABLE `search_business` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_districts`
--

CREATE TABLE `search_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_options`
--

CREATE TABLE `search_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_options`
--

INSERT INTO `search_options` (`id`, `name`, `options`, `created_at`, `updated_at`) VALUES
(1, 'District', '', NULL, NULL),
(2, 'Township', '', NULL, NULL),
(3, 'Parish', '', NULL, NULL),
(4, 'Type', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_parishs`
--

CREATE TABLE `search_parishs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_parishs`
--

INSERT INTO `search_parishs` (`id`, `option`, `display_en`, `display_pt`, `created_at`, `updated_at`) VALUES
(1, 'KKKaaa', 'KKe', 'KKp', '2019-10-16 17:54:46', '2019-10-16 17:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `search_states`
--

CREATE TABLE `search_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_townships`
--

CREATE TABLE `search_townships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_types`
--

CREATE TABLE `search_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_pt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_types`
--

INSERT INTO `search_types` (`id`, `option`, `display_en`, `display_pt`, `created_at`, `updated_at`) VALUES
(1, 'apartamento', 'Apartment', 'Apartamento', '2019-10-16 17:44:34', '2019-10-16 17:45:24'),
(2, 'moradia', 'House', 'Moradia', '2019-10-16 17:44:52', '2019-10-16 17:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `sellrequests`
--

CREATE TABLE `sellrequests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed` tinyint(1) DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellrequests`
--

INSERT INTO `sellrequests` (`id`, `name`, `phone`, `email`, `message`, `signed`, `checked`, `created_at`, `updated_at`) VALUES
(1, 'jlasjdflkwjl', '354651631', 'jlkasjdkl@sldjfls.com', 'lskdjflskdfjlwejfsdf', 0, 0, '2019-10-16 18:07:01', '2019-10-16 18:07:06'),
(2, 'jlaksdjfl', '16416131', 'sdfjlk@sldkfjsd.com', 'sldkfjlskdfjwoekfsdf', 0, 0, '2019-10-16 18:29:17', '2019-10-16 18:29:23'),
(3, 'asdfadsf', '564a6513a2sdfasdfwe', 'asdfwef@sfsdf', 'asdfadf', 0, 0, '2019-10-16 18:30:00', '2019-10-16 18:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'HOME & YOU', '', 'text', 1, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2019\\a9YYYqMxDc6QAjWPcNub.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Home & You', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Home & You Backend !', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(15, 'site.description_en', 'Site Description(EN)', 'We are a 100% Portuguese real estate agency, based in the heart of Lisbon. As commercials with several years of real estate experience we find a gap in customer service.\r\n\r\nWe then decided to exchange the multinationals for HOME & YOU, a smaller, less formatted agency that is able to provide personal and personalized customer service.\r\n\r\nWe have a team motivated for your needs whether they are selling, buying or renting real estate, land or properties. Come and meet us. Our goal is to tell you:', NULL, 'text_area', 10, 'Site'),
(16, 'site.description_pt', 'Site Description(PT)', 'Somos uma agência imobiliária 100% portuguesa, sediada no coração de Lisboa. Enquanto comerciais com vários anos de experiência no mercado imobiliário encontramos uma lacuna no que diz respeito ao apoio ao cliente.\r\n\r\nDecidimos então trocar as multinacionais pela HOME&YOU, uma agência mais pequena, menos formatada e capaz de prestar um serviço ao cliente pessoal e personalizado.\r\n\r\nTemos uma equipa motivada para as suas necessidades sejam elas venda, compra ou aluguer de imóveis, terrenos ou propriedades. Venha-nos conhecer. O nosso objetivo é dizer-lhe:', NULL, 'text_area', 11, 'Site'),
(17, 'site.text_en_whoweare', 'Site Text(EN)_Who we are', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi est sit amet facilisis magna etiam tempor orci eu. Mattis rhoncus urna neque viverra justo nec. Quis varius quam quisque id diam. ddfVestibulum lectus mauris ultrices erowdhhs in. Consequat mauris nunc congue nisi vitae suscipit tellus. Risus quis varius quam quisque id diam vel quam elementum. Mauris cursus mattis molesffadfinehie a iaculis at erat pelleddfntesque adipiscing. Quis ipsum suspendisse ultrices gravida dictum fusce ut.', NULL, 'text_area', 12, 'Site'),
(18, 'site.text_pt_whoweare', 'Site Text(PT)_Who we are', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi est sit amet facilisis magna etiam tempor orci eu. Mattis rhoncus urna neque viverra justo nec. Quis varius quam quisque id diam. ddfVestibulum lectus mauris ultrices erowdhhs in. Consequat mauris nunc congue nisi vitae suscipit tellus. Risus quis varius quam quisque id diam vel quam elementum. Mauris cursus mattis molesffadfinehie a iaculis at erat pelleddfntesque adipiscing. Quis ipsum suspendisse ultrices gravida dictum fusce ut.', NULL, 'text_area', 13, 'Site'),
(19, 'site.text_en_privacypolicy', 'Site Text(EN)_Privacy Policy', 'Here is Privacy Policy.\r\nEtc etc..', NULL, 'text_area', 14, 'Site'),
(20, 'site.text_pt_privacypolicy', 'Site Text(PT)_Privacy Policy', 'Aqui está a Política de Privacidade.\r\nEtc etc..', NULL, 'text_area', 15, 'Site'),
(21, 'site.text_en_termsandconditions', 'Site Text(EN)_Terms & Conditions', 'Here is terms and conditions..\r\nEtc etc..', NULL, 'text_area', 16, 'Site'),
(22, 'site.text_pt_termsandconditions', 'Site Text(PT)_Terms & Conditions', 'Aqui estão os termos e condições.\r\nEtc etc..', NULL, 'text_area', 17, 'Site'),
(23, 'site.link_newsletter', 'Site SocialLink(Newsletter)', 'https://confirmsubscription.com/h/j/7EC6779A3185B91D', NULL, 'text', 6, 'Site'),
(24, 'site.link_facebook', 'Site SocialLink(Facebook)', 'https://facebook.com', NULL, 'text', 8, 'Site'),
(25, 'site.link_twitter', 'Site SocialLink(Twitter)', 'https://twitter.com', NULL, 'text', 9, 'Site'),
(26, 'site.link_instagram', 'Site SocialLink(Instagram)', 'https://instagram.com', NULL, 'text', 7, 'Site'),
(29, 'search.destrict', 'Show District', '1', NULL, 'checkbox', 18, 'Search'),
(30, 'search.township', 'Show Township', '1', NULL, 'checkbox', 19, 'Search'),
(31, 'search.parish', 'Show Parish', '1', NULL, 'checkbox', 20, 'Search'),
(32, 'search.type', 'Show Type', '1', NULL, 'checkbox', 21, 'Search'),
(33, 'search.state', 'Show State', '1', NULL, 'checkbox', 22, 'Search'),
(34, 'search.business', 'Show Business', '1', NULL, 'checkbox', 23, 'Search'),
(35, 'search.price', 'Show Price Range', '1', NULL, 'checkbox', 24, 'Search'),
(36, 'search.bedroom', 'Show Bedrooms', '1', NULL, 'checkbox', 25, 'Search'),
(37, 'search.wc', 'Show WC', '1', NULL, 'checkbox', 26, 'Search'),
(38, 'search.keyword', 'Show Keywords', '1', NULL, 'checkbox', 27, 'Search'),
(39, 'site.normal_role', 'Site Normal User\'s Role', 'user', NULL, 'text', 38, 'Site'),
(42, 'slider.image1', 'Slider Image1', 'settings\\October2019\\aAn8bmf7TvW0d4Zv9yQf.jpg', NULL, 'image', 30, 'Slider'),
(43, 'slider.image2', 'Slider Image2', 'settings\\October2019\\vNJpEaGOK1Jd73kdpBOU.jpg', NULL, 'image', 31, 'Slider'),
(44, 'slider.image3', 'Slider Image3', 'settings\\October2019\\Xta4jl6MgcjRxWfUWLrj.jpg', NULL, 'image', 32, 'Slider'),
(45, 'slider.image4', 'Slider Image4', 'settings\\October2019\\h5YLiF7peHP3p1Js1oRZ.jpg', NULL, 'image', 33, 'Slider'),
(48, 'slider.image5', 'Slider Image5', 'settings\\October2019\\xSdS1jSqyYaK8AUm0XRb.jpg', NULL, 'image', 34, 'Slider'),
(49, 'site.text_en_sellrequest', 'Site Text(EN)_Sell Request', 'EFEFEFEFEWe are being contacted daily by new customers looking to buy real estate. Please contact us using the form below and the message will be sent to the agent best prepared to sell your property.', NULL, 'text_area', 28, 'Site'),
(50, 'site.text_pt_sellrequest', 'Site Text(PT)_Sell Request', 'PRPRPRPRPREstamos diariamente a ser contactados por novos clientes que procuram comprar imoveis. Por favor, contacte-nos atraves do formulario seguinte e a mensagem sera enviada para o agente melhor preparado para vender o seu imovel.', NULL, 'text_area', 35, 'Site'),
(51, 'site.text_en_askforrating', 'Site Text(EN)_Ask For Rating', 'EEEEEEEWe are being contacted daily by new customers looking to buy real estate. Please contact us using the form below and the message will be sent to the agent best prepared to sell your property.', NULL, 'text_area', 36, 'Site'),
(52, 'site.text_pt_askforrating', 'Site Text(PT)_Ask For Rating', 'PPPPPPPPPPEstamos diariamente a ser contactados por novos clientes que procuram comprar imoveis. Por favor, contacte-nos atraves do formulario seguinte e a mensagem sera enviada para o agente melhor preparado para vender o seu imovel.', NULL, 'text_area', 37, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pedro', 'admin@admin.com', 'users/default.png', '2019-10-15 15:11:11', '$2y$10$aOitveqmt.J9L.gsw6cszORd2s39y7.ei.MADlp4IxKTI5Ge9Xhvm', 'RsDOsdjETPD3xUghtoDcPS5T4j299PmnqIGchMINCqQBHsbRPNmqq4CLyH8v', NULL, NULL, NULL),
(2, 2, 'Zai', 'markbanner445@gmail.com', 'users/default.png', '2019-10-02 11:06:26', '$2y$10$LhNFJ4bkTMCgy9C4yWyNz.hcxSd8TTR4CSYgogiGvaQire9YGLzI2', 'zj6Mg2o5nc855aLHcrKZLQHkj1h0ocCJd3ZBPsm4tIL7hNSUwNduStJS6m1I', NULL, NULL, NULL),
(10, 2, 'AAA', 'aaa@aaa.com', 'users/default.png', NULL, '$2y$10$591Cpdc64wm0N5M25QZf5Oqd1qCQwhiT697Sprai3gxWj4pH63O0G', NULL, NULL, '2019-10-12 15:42:16', '2019-10-12 15:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`user_id`, `property_id`) VALUES
(2, 2),
(2, 3),
(2, 5),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(10, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `askforratings`
--
ALTER TABLE `askforratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactmessages`
--
ALTER TABLE `contactmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_property_id_index` (`property_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `search_business`
--
ALTER TABLE `search_business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_districts`
--
ALTER TABLE `search_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_options`
--
ALTER TABLE `search_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_parishs`
--
ALTER TABLE `search_parishs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_states`
--
ALTER TABLE `search_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_townships`
--
ALTER TABLE `search_townships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_types`
--
ALTER TABLE `search_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellrequests`
--
ALTER TABLE `sellrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`user_id`,`property_id`),
  ADD KEY `user_favourite_user_id_index` (`user_id`),
  ADD KEY `user_favourite_property_id_index` (`property_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `askforratings`
--
ALTER TABLE `askforratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contactmessages`
--
ALTER TABLE `contactmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `search_business`
--
ALTER TABLE `search_business`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_districts`
--
ALTER TABLE `search_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_options`
--
ALTER TABLE `search_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `search_parishs`
--
ALTER TABLE `search_parishs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search_states`
--
ALTER TABLE `search_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_townships`
--
ALTER TABLE `search_townships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_types`
--
ALTER TABLE `search_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sellrequests`
--
ALTER TABLE `sellrequests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `featured`
--
ALTER TABLE `featured`
  ADD CONSTRAINT `featured_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_favourite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
