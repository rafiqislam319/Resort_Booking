-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2023 at 12:06 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Primary', '2021-12-28 15:08:30', '2021-12-28 15:17:52'),
(2, 'Footer Menu', '2023-03-18 03:05:25', '2023-03-18 03:05:25'),
(3, 'Help and Support', '2023-04-02 04:18:55', '2023-04-02 04:18:55'),
(4, 'Mobile Primary Menu', '2021-12-28 15:08:30', '2021-12-28 15:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu_items`
--

CREATE TABLE `admin_menu_items` (
  `id` bigint UNSIGNED NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '0',
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` bigint UNSIGNED NOT NULL,
  `depth` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu_items`
--

INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent`, `sort`, `class`, `menu`, `depth`, `created_at`, `updated_at`) VALUES
(1, '<img width=\"200\" src=\"http://localhost/s_council/public/frontend/assets/img/logo.svg\" //>', '/', 0, 2, NULL, 1, 0, '2021-12-28 15:08:58', '2023-08-24 00:58:33'),
(3, 'Services', '/page/services', 0, 1, NULL, 1, 0, '2023-03-06 21:32:16', '2023-08-17 01:39:29'),
(4, 'About Us', '/page/about-us-2', 0, 0, NULL, 1, 0, '2023-03-06 21:57:55', '2023-08-17 01:39:29'),
(5, 'Blogs', '/page/blogs', 0, 3, NULL, 1, 0, '2023-03-18 02:44:02', '2023-08-17 01:09:28'),
(6, 'All mattresses', '#', 0, 0, NULL, 2, 0, '2023-03-18 03:05:41', '2023-03-18 03:05:54'),
(7, 'About us', '/page/about-us', 0, 1, NULL, 2, 0, '2023-03-18 03:05:53', '2023-03-18 03:06:14'),
(8, 'Contact us', '/page/conatct-us', 0, 2, NULL, 2, 0, '2023-03-18 03:06:13', '2023-03-18 03:06:14'),
(10, 'Our Team', '/page/our-team', 0, 4, NULL, 1, 0, '2023-03-18 03:57:05', '2023-08-17 01:10:06'),
(12, 'About us', '#', 0, 0, NULL, 3, 0, '2023-04-02 04:19:16', '2023-04-02 04:19:37'),
(13, 'Private and Policy', '#', 0, 1, NULL, 3, 0, '2023-04-02 04:19:37', '2023-04-02 04:19:42'),
(14, 'Contact us', '#', 0, 2, NULL, 3, 0, '2023-04-02 04:19:42', '2023-04-02 04:19:44'),
(16, 'http://localhost/s_council/public/frontend/assets/img/logo.svg', '/', 0, 0, NULL, 4, 0, '2021-12-28 15:08:58', '2023-08-23 05:32:37'),
(17, 'Services', '/page/services', 0, 2, NULL, 4, 0, '2023-03-06 21:32:16', '2023-08-23 22:42:05'),
(18, 'Blogs', '/page/blogs', 0, 3, NULL, 4, 0, '2023-03-18 02:44:02', '2023-08-17 01:09:28'),
(20, 'Our Team', '/page/our-team', 0, 4, NULL, 4, 0, '2023-03-18 03:57:05', '2023-08-17 01:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `taxonomy_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_status` enum('publish','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `parent_id`, `taxonomy_type`, `is_status`, `created_at`, `updated_at`) VALUES
(1, 'Ielts', 'ielts', NULL, NULL, NULL, 'course_category', NULL, '2021-12-27 18:06:10', '2021-12-27 18:06:10'),
(2, 'Homepage slider', 'homepage-slider', NULL, NULL, NULL, 'slider_category', NULL, '2022-01-08 16:29:30', '2022-01-08 16:29:30'),
(11, 'Pro comfort Basic', 'pro-comfort', 'Firm, medium-firm, that stimulates and soothes.', '23', 15, 'product-category', 'publish', '2023-03-06 15:52:36', '2023-03-19 00:38:32'),
(12, 'Essential comfort', 'essential-comfort', 'Firm, medium-firm, that stimulates and soothes.', '10', NULL, 'product-category', 'publish', '2023-03-06 15:52:48', '2023-04-05 13:33:32'),
(13, 'Ortho comfort', 'ortho-comfort', NULL, NULL, NULL, 'product-category', NULL, '2023-03-06 15:52:55', '2023-03-06 15:52:55'),
(14, 'Hotel comfort', 'hotel-comfort', 'Firm, medium-firm, that stimulates and soothes.', '12', NULL, 'product-category', NULL, '2023-03-06 15:53:01', '2023-03-06 16:03:54'),
(15, 'Luxury comfort', 'luxury-comfort', 'Firm, medium-firm, that stimulates and soothes.', '25', NULL, 'product-category', 'publish', '2023-03-06 15:53:07', '2023-03-19 00:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int NOT NULL,
  `division_id` int NOT NULL,
  `name` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` decimal(10,7) NOT NULL,
  `lon` decimal(10,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059),
(5, 8, 'Jamalpur', 'জামালপুর', 24.9375330, 89.9377750),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.4449370, 90.7765750),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.1641020, 90.1896805),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 23.8644000, 90.0047000),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 23.5422000, 90.5305000),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 24.7471000, 90.4203000),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.6336600, 90.4964820),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.9322330, 90.7154100),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.8709550, 90.7278870),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 23.2423000, 90.4348000),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966),
(17, 3, 'Tangail', 'টাঙ্গাইল', 24.2513000, 89.9167000),
(18, 5, 'Bogura', 'বগুড়া', 24.8465228, 89.3777550),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 25.0968000, 89.0227000),
(20, 5, 'Naogaon', 'নওগাঁ', 24.7936000, 88.9318000),
(21, 5, 'Natore', 'নাটোর', 24.4205560, 89.0002820),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.5965034, 88.2775122),
(23, 5, 'Pabna', 'পাবনা', 23.9985240, 89.2336450),
(24, 5, 'Rajshahi', 'রাজশাহী', 24.3745000, 88.6042000),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.3287510, 89.5280880),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.8054450, 89.6361740),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 25.9923000, 89.2847000),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.9317940, 88.8560060),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411000, 88.5541606),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.2444620),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834),
(34, 1, 'Barguna', 'বরগুনা', 22.0953000, 90.1121000),
(35, 1, 'Barishal', 'বরিশাল', 22.7010000, 90.3535000),
(36, 1, 'Bhola', 'ভোলা', 22.6859230, 90.6481790),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 22.6406000, 90.1987000),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712),
(39, 1, 'Pirojpur', 'পিরোজপুর', 22.5841000, 89.9720000),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912),
(43, 2, 'Chattogram', 'চট্টগ্রাম', 22.3351090, 91.8340730),
(44, 2, 'Cumilla', 'কুমিল্লা', 23.4682747, 91.1788135),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 21.4272000, 92.0058000),
(46, 2, 'Feni', 'ফেনী', 23.0159000, 91.3976000),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.1192850, 91.9846630),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.9424770, 90.8411840),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.8695630, 91.0993980),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 22.7324000, 92.2985000),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.3749450, 91.4155300),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.4829340, 91.7774170),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.6515680, 89.7859380),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.8418410),
(57, 4, 'Jashore', 'যশোর', 23.1664300, 89.2081126),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213),
(59, 4, 'Khulna', 'খুলনা', 22.8157740, 89.5686790),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.9012580, 89.1204820),
(61, 4, 'Magura', 'মাগুরা', 23.4873370, 89.4199560),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.7622130, 88.6318210),
(63, 4, 'Narail', 'নড়াইল', 23.1725340, 89.5126720),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 22.7185000, 89.0705000);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` decimal(9,6) NOT NULL,
  `lon` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `lat`, `lon`) VALUES
(1, 'Barishal', 'বরিশাল', 22.701002, 90.353451),
(2, 'Chattogram', 'চট্টগ্রাম', 22.356851, 91.783182),
(3, 'Dhaka', 'ঢাকা', 23.810332, 90.412518),
(4, 'Khulna', 'খুলনা', 22.845641, 89.540328),
(5, 'Rajshahi', 'রাজশাহী', 24.363589, 88.624135),
(6, 'Rangpur', 'রংপুর', 25.743892, 89.275227),
(7, 'Sylhet', 'সিলেট', 24.894929, 91.868706),
(8, 'Mymensingh', 'ময়মনসিংহ', 24.747149, 90.420273);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_type` enum('Text','Textarea','Select','Richeditor','Number','Checkbox','Gallery','Media') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_group` enum('General','Homepage','Header Section','Footer Section') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_order` int DEFAULT NULL,
  `meta_placeholder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `meta_title`, `meta_name`, `meta_value`, `meta_type`, `meta_group`, `meta_order`, `meta_placeholder`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Website Name', 'site_name', 'Sadik & Counsel', 'Text', 'General', NULL, NULL, NULL, '2021-12-27 17:33:28', '2023-08-22 05:41:20'),
(2, 'About website', 'site_description', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, sequi officia nesciunt nulla corrupti ipsa aliquam exercitationem doloremque. Sint quo voluptatum nulla ea aspernatur provident quis dolorem incidunt iure nihil!', 'Textarea', 'General', NULL, NULL, NULL, '2021-12-27 17:33:29', '2023-08-22 05:41:47'),
(3, 'Favicon', 'site_faviconimg_id', NULL, 'Media', 'General', NULL, NULL, NULL, '2021-12-27 17:33:29', '2023-08-22 05:41:20'),
(4, 'Logo', 'site_logoimg_id', NULL, 'Media', 'Header Section', NULL, NULL, NULL, '2021-12-27 17:33:29', '2023-08-22 05:55:08'),
(5, 'Footer Content', 'footer_content', 'West Kafrul, Begum Rokeya Shoroni, Koborsthan Lane, <br>\r\n            Taltola, Agargaon, Dhaka-1207.<br>', 'Richeditor', 'Footer Section', NULL, NULL, NULL, '2021-12-27 17:33:29', '2023-08-22 06:24:09'),
(10, 'Phone', 'company_phone', '16227', 'Text', 'General', NULL, NULL, NULL, '2021-12-27 17:33:29', '2023-03-18 03:05:04'),
(11, 'Email', 'company_email', 'info@mail.com', 'Text', 'General', NULL, NULL, NULL, '2021-12-27 17:33:29', '2023-03-18 03:05:04'),
(14, 'Header Menu Name', 'header_menu_name', 'Primary', 'Text', 'Header Section', NULL, NULL, NULL, NULL, '2021-12-28 15:22:50'),
(15, 'Homepage Faq Image', 'home_faq_image', '52', 'Media', 'Homepage', NULL, NULL, '', '2021-12-27 17:33:29', '2023-08-26 06:07:09'),
(22, 'Homepage Category Section 1 Title', 'home_category_section_one_title', 'Best consultant TAX, VAT, Family service in Bangladesh.', 'Text', 'Homepage', NULL, NULL, '', '2021-12-27 17:33:29', '2023-08-22 06:14:50'),
(29, 'Mobile Menu Name', 'mobile_menu_name', 'Mobile Primary Menu', 'Text', 'Header Section', NULL, NULL, NULL, NULL, '2021-12-28 15:22:50'),
(38, 'Home page Title', 'home_page_title', 'Over 30 years experience we<br> know how difficult this is on your<br> family.', 'Richeditor', 'Homepage', NULL, NULL, '', '2021-12-27 17:33:29', '2023-08-22 05:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_directory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `user_id`, `original_name`, `filename`, `file_type`, `file_size`, `file_extension`, `file_directory`, `created_at`, `updated_at`) VALUES
(37, 1, 'about-us.svg', 'about-us-1692260667.svg', 'image/svg+xml', '425707', 'svg', '/public/uploads/images/', '2023-08-17 02:24:27', '2023-08-17 02:24:27'),
(38, 1, 'about-us.svg', 'about-us-1692260684.svg', 'image/svg+xml', '425707', 'svg', '/public/uploads/images/', '2023-08-17 02:24:44', '2023-08-17 02:24:44'),
(39, 1, 'service.svg', 'service-1692261603.svg', 'image/svg+xml', '376349', 'svg', '/public/uploads/images/', '2023-08-17 02:40:03', '2023-08-17 02:40:03'),
(40, 1, 'team-sadik-counsel.svg', 'team-sadik-counsel-1692261717.svg', 'image/svg+xml', '278178', 'svg', '/public/uploads/images/', '2023-08-17 02:41:57', '2023-08-17 02:41:57'),
(41, 1, '1.png', '1-1692272166.png', 'image/png', '109785', 'png', '/public/uploads/images/', '2023-08-17 05:36:06', '2023-08-17 05:36:06'),
(42, 1, 'chat1.jpeg', 'chat1-1692277467.jpeg', 'image/jpeg', '90103', 'jpeg', '/public/uploads/images/', '2023-08-17 07:04:27', '2023-08-17 07:04:27'),
(43, 1, 'web-development1.png', 'web-development1-1692277609.png', 'image/png', '158619', 'png', '/public/uploads/images/', '2023-08-17 07:06:49', '2023-08-17 07:06:49'),
(46, 1, 'vector.jpg', 'vector-1692512457.jpg', 'image/jpeg', '48143', 'jpg', '/public/uploads/images/', '2023-08-20 00:20:57', '2023-08-20 00:20:57'),
(47, 1, 'avatar-2.22ed88d.png', 'avatar-222ed88d-1692528317.png', 'image/png', '98405', 'png', '/public/uploads/images/', '2023-08-20 04:45:17', '2023-08-20 04:45:17'),
(48, 1, 'FjU2lkcWYAgNG6d.jpg', 'fju2lkcwyagng6d-1692528330.jpg', 'image/jpeg', '23029', 'jpg', '/public/uploads/images/', '2023-08-20 04:45:30', '2023-08-20 04:45:30'),
(49, 1, 'pexels-pixabay-220453.jpg', 'pexels-pixabay-220453-1692528336.jpg', 'image/jpeg', '23950', 'jpg', '/public/uploads/images/', '2023-08-20 04:45:36', '2023-08-20 04:45:36'),
(50, 1, 'L2hPMnB1ZXFlS1BrQ0xmVDAxTWJOZz09.jpg', 'l2hpmnb1zxfls1brq0xmvdaxtwjozz09-1692528558.jpg', 'image/jpeg', '20507', 'jpg', '/public/uploads/images/', '2023-08-20 04:49:18', '2023-08-20 04:49:18'),
(52, 1, 'handshake-sadik.png', 'handshake-sadik-1693051613.png', 'image/png', '121237', 'png', '/public/uploads/images/', '2023-08-26 06:06:53', '2023-08-26 06:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_11_073824_create_menus_wp_table', 1),
(4, '2017_08_11_074006_create_menu_items_wp_table', 1),
(5, '2021_01_30_151530_create_medias_table', 1),
(6, '2021_02_08_225954_create_terms_table', 1),
(7, '2021_02_08_230957_create_posts_table', 1),
(8, '2021_02_09_195757_create_term_taxonomy_table', 1),
(9, '2021_02_09_203137_create_categories_table', 1),
(10, '2021_02_10_101053_create_frontend_settings', 1),
(11, '2021_07_14_054017_create_roles_table', 1),
(12, '2021_07_14_054544_create_role_users_table', 1),
(13, '2021_07_14_061139_create_route_groups_table', 1),
(14, '2021_07_14_061140_create_route_lists_table', 1),
(15, '2021_07_14_061655_create_route_list_roles_table', 1),
(18, '2021_12_24_235004_create_posts_field_table', 2),
(19, '2021_12_24_235502_create_posts_meta_table', 2),
(20, '2022_01_07_020302_create_post_custom_fields_table', 3),
(21, '2021_01_30_145239_create_product_categories_table', 4),
(22, '2021_01_30_150031_create_products_table', 4),
(23, '2021_02_17_222859_create_product_attributes_table', 4),
(24, '2021_02_17_223045_create_product_attribute_values_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_status` enum('publish','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'publish',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `sub_title`, `order_by`, `slug`, `description`, `featured_image`, `term_type`, `category_id`, `meta_title`, `meta_description`, `meta_keyword`, `meta_author`, `template`, `is_status`, `author`, `created_at`, `updated_at`) VALUES
(4, 'Slider 1', NULL, NULL, 'slider-1', 'Washable', '33', 'slider', '', NULL, NULL, NULL, NULL, NULL, 'publish', '1', '2022-01-08 16:34:02', '2023-04-07 09:48:04'),
(47, 'Services', NULL, NULL, 'services', NULL, '39', 'page', '', NULL, NULL, NULL, NULL, 'services', 'publish', '1', '2023-08-16 23:57:37', '2023-08-17 02:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `posts_field`
--

CREATE TABLE `posts_field` (
  `id` bigint UNSIGNED NOT NULL,
  `term_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_taxonomy_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_type` enum('text','textarea','richtext','select','single_image','multiple_image','checkbox','radio','colorpicker','addmore') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Title:field_type#value1,value2|',
  `field_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_value` varbinary(255) DEFAULT NULL,
  `join_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_for` enum('Post','Category') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_field`
--

INSERT INTO `posts_field` (`id`, `term_type`, `term_taxonomy_type`, `field_type`, `field_type_value`, `field_title`, `field_name`, `field_value`, `join_table`, `join_column`, `note`, `field_for`, `created_at`, `updated_at`) VALUES
(39, 'resort', NULL, 'text', '', 'Resort Location', 'resort_location', NULL, NULL, NULL, NULL, 'Post', NULL, NULL),
(40, 'resort', NULL, 'richtext', '', 'Resort Detail Info', 'resort_detail_info', NULL, NULL, NULL, NULL, 'Post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_meta`
--

CREATE TABLE `posts_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `meta_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_custom_fields`
--

CREATE TABLE `post_custom_fields` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `field_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `field_for` enum('Post','Category') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `specification` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` int DEFAULT NULL,
  `sale_price` int DEFAULT NULL,
  `purchase_price` int DEFAULT NULL,
  `attribute` json DEFAULT NULL,
  `refundable` int NOT NULL DEFAULT '0',
  `shipping_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_stock` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stock` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibilty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `attributes_id` bigint UNSIGNED DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `visibility` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Global','General','Custom') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `code`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super_admin', 'Global', '2021-12-27 17:33:29', '2021-12-27 17:33:29'),
(2, 'User', 'user', 'General', '2021-12-27 17:33:29', '2021-12-27 17:33:29'),
(3, 'Instructor', 'instructor', 'General', '2021-12-27 17:33:29', '2021-12-27 17:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-12-27 17:33:29', '2021-12-27 17:33:29'),
(2, 3, 3, '2021-12-29 17:35:59', '2021-12-29 17:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `route_groups`
--

CREATE TABLE `route_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_lists`
--

CREATE TABLE `route_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `route_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_parameter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_group` bigint UNSIGNED DEFAULT NULL,
  `route_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_order` int DEFAULT NULL,
  `route_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_menu_id` int DEFAULT NULL,
  `dashboard_position` set('Left','Right','Top','Bottom') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_for` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_show_as` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_list_roles`
--

CREATE TABLE `route_list_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `route_id` bigint UNSIGNED NOT NULL,
  `show_as` enum('All','User','Permission') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_field` set('title','slug','description','featured-image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('publish','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`, `slug`, `default_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Post', 'post', 'title,slug,description,featured-image', NULL, '2021-12-27 17:33:29', '2021-12-27 17:33:29'),
(2, 'Page', 'page', 'title,slug,description,featured-image', 'publish', '2021-12-27 17:33:29', '2021-12-27 17:33:29'),
(3, 'Slider', 'slider', 'title,slug,description,featured-image', 'publish', '2021-12-27 17:33:29', '2021-12-27 17:33:29'),
(13, 'Resort', 'resort', 'title,slug,description,featured-image', 'publish', '2023-08-17 11:30:04', '2023-08-17 11:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `term_taxonomy`
--

CREATE TABLE `term_taxonomy` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('publish','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_taxonomy`
--

INSERT INTO `term_taxonomy` (`id`, `name`, `slug`, `type`, `term_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Categories', 'post_category', NULL, 'post', NULL, '2021-12-27 17:33:29', '2021-12-27 17:33:29'),
(2, 'Categories', 'slider_category', NULL, 'slider', NULL, '2021-12-27 17:33:29', '2021-12-27 17:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` enum('Male','Female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `phone`, `avatar`, `address`, `postcode`, `thana`, `district`, `birthdate`, `gender`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr Super Admin', 'Mr Super', 'Admin', 'admin@system.com', NULL, '00000000000', NULL, 'N/A', 'N/A', 'N/A', '1', '2021-12-08', NULL, '$2y$10$tWhlq1ma.y/f3Ui30qy8cONc5hCG/6GlaSsWxSowMoc7bZdklk0wC', 'doXZA3tkGoKgNHbzQL4PIw83HhycdOEmNUlbz2ckXU2lQeMFkWH82NX2ape3', '2021-12-27 17:33:29', '2022-01-07 17:17:59'),
(3, 'Noushad Nipun', 'Noushad', 'Nipun', 'nipunnoushad8@gmail.com', NULL, '01823633792', NULL, '74, East Tejturi Bazar, Tejgoan', '1215', 'Dhaka', NULL, '2022-01-01', NULL, '$2y$10$9zer8D8yLLB0oc3rVJ/VYOkIBKESpSclt613s5IlXe.8cPpz452MW', NULL, '2021-12-29 17:35:59', '2021-12-31 16:21:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_items_menu_foreign` (`menu`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontend_settings_meta_name_unique` (`meta_name`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_term_type_foreign` (`term_type`);

--
-- Indexes for table `posts_field`
--
ALTER TABLE `posts_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_field_field_name_unique` (`field_name`),
  ADD KEY `posts_field_term_type_foreign` (`term_type`),
  ADD KEY `posts_field_term_taxonomy_type_foreign` (`term_taxonomy_type`);

--
-- Indexes for table `posts_meta`
--
ALTER TABLE `posts_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_meta_post_id_foreign` (`post_id`),
  ADD KEY `posts_meta_category_id_foreign` (`category_id`),
  ADD KEY `posts_meta_meta_name_foreign` (`meta_name`);

--
-- Indexes for table `post_custom_fields`
--
ALTER TABLE `post_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_custom_fields_post_id_foreign` (`post_id`),
  ADD KEY `post_custom_fields_category_id_foreign` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_values_attributes_id_foreign` (`attributes_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_code_unique` (`code`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`),
  ADD KEY `role_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `route_groups`
--
ALTER TABLE `route_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `route_groups_code_unique` (`code`);

--
-- Indexes for table `route_lists`
--
ALTER TABLE `route_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `route_lists_route_name_unique` (`route_name`),
  ADD KEY `route_lists_route_group_foreign` (`route_group`);

--
-- Indexes for table `route_list_roles`
--
ALTER TABLE `route_list_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_list_roles_role_id_foreign` (`role_id`),
  ADD KEY `route_list_roles_route_id_foreign` (`route_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `terms_slug_unique` (`slug`);

--
-- Indexes for table `term_taxonomy`
--
ALTER TABLE `term_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `term_taxonomy_slug_unique` (`slug`),
  ADD KEY `term_taxonomy_term_type_foreign` (`term_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `posts_field`
--
ALTER TABLE `posts_field`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `posts_meta`
--
ALTER TABLE `posts_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `post_custom_fields`
--
ALTER TABLE `post_custom_fields`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `route_groups`
--
ALTER TABLE `route_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_lists`
--
ALTER TABLE `route_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_list_roles`
--
ALTER TABLE `route_list_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `term_taxonomy`
--
ALTER TABLE `term_taxonomy`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD CONSTRAINT `admin_menu_items_menu_foreign` FOREIGN KEY (`menu`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_term_type_foreign` FOREIGN KEY (`term_type`) REFERENCES `terms` (`slug`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `posts_field`
--
ALTER TABLE `posts_field`
  ADD CONSTRAINT `posts_field_term_taxonomy_type_foreign` FOREIGN KEY (`term_taxonomy_type`) REFERENCES `term_taxonomy` (`slug`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `posts_field_term_type_foreign` FOREIGN KEY (`term_type`) REFERENCES `terms` (`slug`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `posts_meta`
--
ALTER TABLE `posts_meta`
  ADD CONSTRAINT `posts_meta_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `posts_meta_meta_name_foreign` FOREIGN KEY (`meta_name`) REFERENCES `posts_field` (`field_name`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `posts_meta_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `post_custom_fields`
--
ALTER TABLE `post_custom_fields`
  ADD CONSTRAINT `post_custom_fields_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `post_custom_fields_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attributes_id_foreign` FOREIGN KEY (`attributes_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `route_lists`
--
ALTER TABLE `route_lists`
  ADD CONSTRAINT `route_lists_route_group_foreign` FOREIGN KEY (`route_group`) REFERENCES `route_groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `route_list_roles`
--
ALTER TABLE `route_list_roles`
  ADD CONSTRAINT `route_list_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `route_list_roles_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `route_lists` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `term_taxonomy`
--
ALTER TABLE `term_taxonomy`
  ADD CONSTRAINT `term_taxonomy_term_type_foreign` FOREIGN KEY (`term_type`) REFERENCES `terms` (`slug`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
