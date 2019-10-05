-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 03:43 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bp_teacher`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_areas`
--

CREATE TABLE `admin_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `police_station_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_areas`
--

INSERT INTO `admin_areas` (`id`, `area_name`, `police_station_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhanmondi Road 1', 24, 1, '2019-10-02 08:44:18', '2019-10-05 00:08:11'),
(2, 'Dhanmondi Road 2', 24, 1, '2019-10-02 08:44:29', '2019-10-02 08:44:29'),
(3, 'Dhanmondi Road 2A', 24, 1, '2019-10-02 08:44:42', '2019-10-02 08:44:42'),
(4, 'Dhanmondi Road 3', 24, 1, '2019-10-02 08:45:02', '2019-10-02 08:45:02'),
(5, 'Dhanmondi Road 3A', 24, 1, '2019-10-02 08:45:19', '2019-10-02 08:45:19'),
(6, 'Dhanmondi Road 4', 24, 1, '2019-10-02 08:45:48', '2019-10-02 08:45:48'),
(7, 'Dhanmondi Road 4A', 24, 1, '2019-10-02 08:46:02', '2019-10-02 08:46:02'),
(8, 'Dhanmondi Road 5', 24, 1, '2019-10-02 08:49:10', '2019-10-02 08:49:10'),
(9, 'Dhanmondi Road 5A', 24, 1, '2019-10-02 09:07:32', '2019-10-02 09:07:32'),
(10, 'Dhanmondi Road 6', 24, 1, '2019-10-02 09:07:55', '2019-10-02 09:07:55'),
(11, 'Dhanmondi Road 6A', 24, 1, '2019-10-02 09:08:11', '2019-10-02 09:08:11'),
(12, 'Dhanmondi Road 7', 24, 1, '2019-10-02 09:08:40', '2019-10-02 09:08:40'),
(13, 'Dhanmondi Road 7A', 24, 1, '2019-10-02 09:08:57', '2019-10-02 09:08:57'),
(14, 'Dhanmondi Road 8', 24, 1, '2019-10-02 09:10:00', '2019-10-02 09:10:00'),
(15, 'Dhanmondi Road 8A', 24, 1, '2019-10-02 09:10:16', '2019-10-02 09:10:16'),
(16, 'Dhanmondi Road 9', 24, 1, '2019-10-02 09:10:39', '2019-10-02 09:10:39'),
(17, 'Dhanmondi Road 9A', 24, 1, '2019-10-02 09:10:55', '2019-10-02 09:10:55'),
(18, 'Dhanmondi Road 10', 24, 1, '2019-10-02 09:11:08', '2019-10-02 09:11:08'),
(19, 'Dhanmondi Road 10', 24, 1, '2019-10-02 09:11:44', '2019-10-02 09:11:44'),
(20, 'Dhanmondi Road 10A', 24, 1, '2019-10-02 09:12:00', '2019-10-02 09:12:00'),
(21, 'Dhanmondi Road 11', 24, 1, '2019-10-02 09:12:11', '2019-10-02 09:12:11'),
(22, 'Dhanmondi Road 11A', 24, 1, '2019-10-02 09:12:26', '2019-10-02 09:12:26'),
(23, 'Dhanmondi Road 12', 24, 1, '2019-10-02 09:12:41', '2019-10-02 09:12:41'),
(24, 'Dhanmondi Road 12A', 24, 1, '2019-10-02 09:13:00', '2019-10-02 09:13:14'),
(25, 'Dhanmondi Road 13', 24, 1, '2019-10-02 09:13:29', '2019-10-02 09:13:29'),
(26, 'Dhanmondi Road 13A', 24, 1, '2019-10-02 09:13:41', '2019-10-02 09:13:41'),
(27, 'Dhanmondi Road 14', 24, 1, '2019-10-02 09:15:32', '2019-10-02 09:15:32'),
(28, 'Dhanmondi Road 14A', 24, 1, '2019-10-02 09:15:43', '2019-10-02 09:15:43'),
(29, 'Dhanmondi Road 15', 24, 1, '2019-10-02 09:16:02', '2019-10-02 09:16:02'),
(30, 'Dhanmondi Road 15A', 24, 1, '2019-10-02 09:16:11', '2019-10-02 09:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_boards`
--

CREATE TABLE `admin_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `board_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_boards`
--

INSERT INTO `admin_boards` (`id`, `board_name`, `board_color`, `status`, `created_at`, `updated_at`) VALUES
(8, 'International Baccalaureate', '#89baeb', 1, '2019-09-20 16:44:05', '2019-10-03 05:16:35'),
(9, 'CIE Cambridge Assessment International Education', '#ff8000', 1, '2019-09-24 06:22:12', '2019-10-03 05:15:46'),
(10, 'Perason Edexcel', '#1f81a0', 1, '2019-09-24 06:38:09', '2019-10-03 05:16:54'),
(11, 'General Education', '#9678c7', 1, '2019-09-24 06:22:01', '2019-10-03 05:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_cities`
--

CREATE TABLE `admin_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_cities`
--

INSERT INTO `admin_cities` (`id`, `city_name`, `district_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '10', 1, '2019-10-02 08:31:57', '2019-10-02 08:31:57'),
(2, 'Narayangonj', '10', 1, '2019-10-02 08:32:19', '2019-10-02 08:32:19'),
(3, 'Gazipur', '10', 1, '2019-10-02 08:32:37', '2019-10-02 08:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_countries`
--

CREATE TABLE `admin_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_countries`
--

INSERT INTO `admin_countries` (`id`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 1, '2019-09-20 21:08:59', '2019-10-02 08:21:52'),
(3, 'Bhutan', 1, '2019-09-25 06:39:44', '2019-10-02 08:23:47'),
(4, 'India', 1, '2019-09-25 06:39:50', '2019-10-02 08:24:04'),
(6, 'Indonesia', 1, '2019-09-25 06:40:02', '2019-10-02 08:26:09'),
(8, 'Malaysia', 1, '2019-09-25 06:40:15', '2019-10-02 08:26:21'),
(10, 'Myanmar', 1, '2019-09-25 06:40:44', '2019-10-02 08:26:32'),
(15, 'Nepal', 1, '2019-10-02 08:22:52', '2019-10-02 08:27:14'),
(17, 'Singapore', 1, '2019-10-02 08:26:51', '2019-10-02 08:27:23'),
(18, 'Thailand', 1, '2019-10-02 08:27:31', '2019-10-02 08:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_districts`
--

CREATE TABLE `admin_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_districts`
--

INSERT INTO `admin_districts` (`id`, `district_name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Dhaka', 1, '1', '2019-10-02 08:29:37', '2019-10-02 08:29:37'),
(11, 'Chottogram', 1, '1', '2019-10-02 08:30:00', '2019-10-02 08:30:00'),
(12, 'Sylhet', 1, '1', '2019-10-02 08:30:14', '2019-10-02 08:30:14'),
(13, 'Khulna', 1, '1', '2019-10-02 08:30:40', '2019-10-02 08:30:40'),
(14, 'Rajshahi', 1, '1', '2019-10-02 08:30:52', '2019-10-02 08:30:52'),
(15, 'Rongpur', 1, '1', '2019-10-02 08:31:08', '2019-10-02 08:31:08'),
(16, 'Dinajpur', 1, '1', '2019-10-02 08:31:24', '2019-10-02 08:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `admin_subjects`
--

CREATE TABLE `admin_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_subjects`
--

INSERT INTO `admin_subjects` (`id`, `subject_name`, `board_id`, `class_id`, `status`, `created_at`, `updated_at`) VALUES
(15, 'IGCSE Economics 4EC1', '10', NULL, 1, '2019-09-24 06:20:11', '2019-10-01 03:52:54'),
(16, 'IGCSE English as a Second Language (ESL)', '10', NULL, 1, '2019-09-24 06:20:21', '2019-10-01 03:42:17'),
(17, 'IGCSE Urdu 4UR0', '10', NULL, 1, '2019-09-24 06:20:28', '2019-10-01 04:28:53'),
(18, 'IGCSE Arabic 4AA1', '10', NULL, 1, '2019-09-24 06:20:45', '2019-10-01 04:29:10'),
(19, 'IGCSE Art and Design 4FA1', '10', NULL, 1, '2019-09-24 06:20:51', '2019-10-01 04:29:24'),
(20, 'IGCSE Bangla 4BA0/01', '10', NULL, 1, '2019-09-24 06:22:26', '2019-10-01 03:42:28'),
(21, 'IGCSE Accounting 4AC1/01', '10', NULL, 1, '2019-09-24 06:22:44', '2019-10-01 00:46:17'),
(22, 'IGCSE Bangladesh Studies 4BN0/01', '10', NULL, 1, '2019-09-24 06:23:01', '2019-10-01 00:47:36'),
(23, 'IGCSE Biology 4BI1/1B 4SD0/1B', '10', NULL, 1, '2019-10-01 00:49:19', '2019-10-01 03:42:37'),
(24, 'IAL Applied ICT WIT03', '10', NULL, 1, '2019-10-01 03:26:58', '2019-10-01 03:26:58'),
(25, 'IGCSE Business Studies 4BS0/01', '10', NULL, 1, '2019-10-01 03:41:52', '2019-10-01 03:41:52'),
(26, 'IGCSE Chemistry 4CH1', '10', NULL, 1, '2019-10-01 03:45:23', '2019-10-01 03:45:23'),
(27, 'IGCSE Chinese 4CN1', '10', NULL, 1, '2019-10-01 03:46:48', '2019-10-01 03:46:48'),
(28, 'IGCSE Classical Arabic 4CA0', '10', NULL, 1, '2019-10-01 03:49:55', '2019-10-01 03:49:55'),
(29, 'IGCSE Commerce 4CM1', '10', NULL, 1, '2019-10-01 03:50:51', '2019-10-01 03:50:51'),
(30, 'IGCSE Computer Science 4CP0', '10', NULL, 1, '2019-10-01 03:51:51', '2019-10-01 03:51:51'),
(31, 'IGCSE English as a Second Language 4ES1', '10', NULL, 1, '2019-10-01 03:53:42', '2019-10-01 03:53:42'),
(32, 'IGCSE English Language A 4EA1', '10', NULL, 1, '2019-10-01 03:54:35', '2019-10-01 03:54:35'),
(33, 'IGCSE English Language B 4EB1', '10', NULL, 1, '2019-10-01 03:55:46', '2019-10-01 03:55:46'),
(34, 'IGCSE English Literature 4ET1', '10', NULL, 1, '2019-10-01 03:56:34', '2019-10-01 03:56:34'),
(35, 'IGCSE French 4FR0', '10', NULL, 1, '2019-10-01 03:57:51', '2019-10-01 03:57:51'),
(36, 'IGCSE Further Pure Mathematics 4PM1', '10', NULL, 1, '2019-10-01 03:59:45', '2019-10-01 03:59:45'),
(37, 'IGCSE Geography 4GE1', '10', NULL, 1, '2019-10-01 04:02:52', '2019-10-01 04:02:52'),
(38, 'IGCSE German 4GN1', '10', NULL, 1, '2019-10-01 04:04:12', '2019-10-01 04:04:12'),
(39, 'IGCSE Global Citizenship 4GL1', '10', NULL, 1, '2019-10-01 04:07:04', '2019-10-01 04:07:04'),
(40, 'IGCSE Greek (First Language) 4GK1', '10', NULL, 1, '2019-10-01 04:08:24', '2019-10-01 04:08:24'),
(41, 'IGCSE Gujrati 4GU0', '10', NULL, 1, '2019-10-01 04:09:20', '2019-10-01 04:09:20'),
(42, 'IGCSE Hindi 4HN0', '10', NULL, 1, '2019-10-01 04:10:45', '2019-10-01 04:10:45'),
(43, 'IGCSE History 4HI1', '10', NULL, 1, '2019-10-01 04:11:16', '2019-10-01 04:11:16'),
(44, 'IGCSE Human Biology 4HB1', '10', NULL, 1, '2019-10-01 04:11:46', '2019-10-01 04:11:46'),
(45, 'IGCSE Information and Communication Technology (ICT) 4IT1', '10', NULL, 1, '2019-10-01 04:13:14', '2019-10-01 04:13:14'),
(46, 'IGCSE Islamic Studies 4IS1', '10', NULL, 1, '2019-10-01 04:13:59', '2019-10-01 04:13:59'),
(47, 'IGCSE Islamiyat 4IS0', '10', NULL, 1, '2019-10-01 04:14:45', '2019-10-01 04:14:45'),
(48, 'IGCSE Mathematics A 4MA1', '10', NULL, 1, '2019-10-01 04:16:17', '2019-10-01 04:16:17'),
(49, 'IGCSE Mathematics B 4MB1', '10', NULL, 1, '2019-10-01 04:17:06', '2019-10-01 04:17:06'),
(50, 'IGCSE Modern Greek 4MG0', '10', NULL, 1, '2019-10-01 04:17:42', '2019-10-01 04:17:42'),
(51, 'IGCSE Pakistan Studies 4PA1', '10', NULL, 1, '2019-10-01 04:18:27', '2019-10-01 04:18:27'),
(52, 'IGCSE Physics 4PH1', '10', NULL, 1, '2019-10-01 04:19:31', '2019-10-01 04:19:31'),
(53, 'IGCSE Religious Studies 4RS1', '10', NULL, 1, '2019-10-01 04:20:18', '2019-10-01 04:20:18'),
(54, 'IGCSE Sinhala 4SI0', '10', NULL, 1, '2019-10-01 04:22:44', '2019-10-01 04:22:44'),
(55, 'IGCSE Spanish 4SP1', '10', NULL, 1, '2019-10-01 04:23:35', '2019-10-01 04:23:35'),
(56, 'IGCSE Swahili 4SW1', '10', NULL, 1, '2019-10-01 04:24:24', '2019-10-01 04:24:24'),
(57, 'IGCSE Tamil 4TA0', '10', NULL, 1, '2019-10-01 04:25:10', '2019-10-01 04:25:10'),
(58, 'IGCSE Turkish 4TU0', '10', NULL, 1, '2019-10-01 04:25:56', '2019-10-01 04:25:56'),
(59, 'IGCSE Urdu 4UR0', '10', NULL, 1, '2019-10-01 04:26:48', '2019-10-01 04:26:48'),
(60, 'IAL Accounting WAC11', '10', NULL, 1, '2019-10-01 04:34:20', '2019-10-01 04:36:46'),
(61, 'IAL Applied ICT WIT03', '10', NULL, 1, '2019-10-01 04:35:04', '2019-10-01 04:37:27'),
(62, 'IAL Arabic WAA01', '10', NULL, 1, '2019-10-01 04:36:35', '2019-10-01 04:36:35'),
(63, 'IAL Biology WBI11', '10', NULL, 1, '2019-10-01 04:38:32', '2019-10-01 04:38:32'),
(64, 'IGCSE Business WBS11', '10', NULL, 1, '2019-10-01 04:39:36', '2019-10-01 04:39:36'),
(65, 'IAL Business Studies WBS01', '10', NULL, 1, '2019-10-01 04:40:28', '2019-10-01 04:40:28'),
(66, 'IAL Chemistry WCH11', '10', NULL, 1, '2019-10-01 04:41:11', '2019-10-01 04:41:11'),
(67, 'IAL Economics WEC11', '10', NULL, 1, '2019-10-01 04:41:47', '2019-10-01 04:41:47'),
(68, 'IAL English Language WEN02', '10', NULL, 1, '2019-10-01 04:42:29', '2019-10-01 04:42:29'),
(69, 'IAL English Literature WET02', '10', NULL, 1, '2019-10-01 04:43:15', '2019-10-01 04:43:15'),
(70, 'IAL French WFR02', '10', NULL, 1, '2019-10-01 04:43:54', '2019-10-01 04:43:54'),
(71, 'IAL Geography WGE01', '10', NULL, 1, '2019-10-01 04:45:25', '2019-10-01 04:45:25'),
(72, 'IAL German GN02', '10', NULL, 1, '2019-10-01 04:46:00', '2019-10-01 04:46:00'),
(73, 'IAL Greek WGK01', '10', NULL, 1, '2019-10-01 04:46:39', '2019-10-01 04:46:39'),
(74, 'IAL History HI01', '10', NULL, 1, '2019-10-01 04:47:32', '2019-10-01 04:47:32'),
(75, 'IAL Information Technology WIT11', '10', NULL, 1, '2019-10-01 04:48:07', '2019-10-01 04:48:07'),
(76, 'IAL Law YLA1', '10', NULL, 1, '2019-10-01 04:50:22', '2019-10-01 04:50:22'),
(77, 'IAL Mathematics WMA11', '10', NULL, 1, '2019-10-01 04:51:39', '2019-10-01 04:51:39'),
(78, 'IAL Phychology WPS01', '10', NULL, 1, '2019-10-01 04:56:08', '2019-10-01 04:56:08'),
(79, 'IGCSE Physics WPH11', '10', NULL, 1, '2019-10-01 04:56:45', '2019-10-01 04:56:45'),
(80, 'IAL Spanish WSP02', '10', NULL, 1, '2019-10-01 04:57:48', '2019-10-01 04:57:48'),
(81, 'CIE Accounting 7707', '9', NULL, 1, '2019-10-01 04:59:29', '2019-10-01 04:59:29'),
(82, 'CIE Agriculture 5038', '9', NULL, 1, '2019-10-01 05:00:03', '2019-10-01 05:00:03'),
(83, 'CIE Arabic 3180', '9', NULL, 1, '2019-10-01 05:01:11', '2019-10-01 05:01:11'),
(84, 'CIE Art & Design (BD, MV, MU, PK) - 6090', '9', NULL, 1, '2019-10-01 05:01:42', '2019-10-01 05:01:42'),
(85, 'CIE Bangladesh Studies 7094', '9', NULL, 1, '2019-10-01 05:02:27', '2019-10-01 05:02:27'),
(86, 'CIE Bengali 3204', '9', NULL, 1, '2019-10-01 05:03:00', '2019-10-01 05:03:00'),
(87, 'CIE Biology 5090', '9', NULL, 1, '2019-10-01 05:03:25', '2019-10-01 05:03:25'),
(88, 'CIE Business Studies 7115', '9', NULL, 1, '2019-10-01 05:03:49', '2019-10-01 05:03:49'),
(89, 'CIE CDT: Design and Communication 7048', '9', NULL, 1, '2019-10-01 05:05:10', '2019-10-01 05:05:10'),
(90, 'CIE Chemistry 5070', '9', NULL, 1, '2019-10-01 05:06:42', '2019-10-01 05:10:45'),
(91, 'CIE Commerce 7100', '9', NULL, 1, '2019-10-01 05:08:05', '2019-10-01 05:08:05'),
(92, 'CIE Commercial Studies 7101', '9', NULL, 1, '2019-10-01 05:10:24', '2019-10-01 05:10:24'),
(93, 'CIE Computer Science 2210', '9', NULL, 1, '2019-10-01 05:11:38', '2019-10-01 05:11:38'),
(94, 'CIE Design & Technology 6043', '9', NULL, 1, '2019-10-01 05:12:23', '2019-10-01 05:12:23'),
(95, 'CIE Economics 2281', '9', NULL, 1, '2019-10-01 05:13:19', '2019-10-01 05:13:19'),
(96, 'CIE English Language 1123', '9', NULL, 1, '2019-10-01 05:14:09', '2019-10-01 05:14:09'),
(97, 'CIE Environmental Management 5014', '9', NULL, 1, '2019-10-01 05:14:55', '2019-10-01 05:14:55'),
(98, 'CIE Fashion and Textiles 6130', '9', NULL, 1, '2019-10-01 05:15:31', '2019-10-01 05:15:31'),
(99, 'CIE Food & Nutrition 6065', '9', NULL, 1, '2019-10-01 05:16:09', '2019-10-01 05:16:09'),
(100, 'CIE French 3015', '9', NULL, 1, '2019-10-01 05:16:50', '2019-10-01 05:16:50'),
(101, 'CIE Geography 2217', '9', NULL, 1, '2019-10-01 05:17:32', '2019-10-01 05:17:32'),
(102, 'CIE German 3025', '9', NULL, 1, '2019-10-01 05:18:12', '2019-10-01 05:18:12'),
(103, 'CIE Global Perspectives 2069 New', '9', NULL, 1, '2019-10-01 05:18:50', '2019-10-01 05:18:50'),
(104, 'CIE Hinduism 2055', '9', NULL, 1, '2019-10-01 05:19:37', '2019-10-01 05:19:37'),
(105, 'CIE History 2147 New', '9', NULL, 1, '2019-10-01 05:20:05', '2019-10-01 05:20:05'),
(106, 'CIE History (Modern World Affairs) 2134', '9', NULL, 1, '2019-10-01 05:20:36', '2019-10-01 05:20:36'),
(107, 'CIE Islamic Studies 2068', '9', NULL, 1, '2019-10-01 05:21:10', '2019-10-01 05:21:10'),
(108, 'CIE Islamiyat 2058', '9', NULL, 1, '2019-10-01 05:21:39', '2019-10-01 05:21:39'),
(109, 'CIE Literature in English 2010', '9', NULL, 1, '2019-10-01 05:27:34', '2019-10-01 05:27:34'),
(110, 'CIE Marine Science 5180 New', '9', NULL, 1, '2019-10-01 05:28:05', '2019-10-01 05:28:05'),
(111, 'CIE Mathematics Additional - 4037', '9', NULL, 1, '2019-10-01 05:29:03', '2019-10-01 05:29:03'),
(112, 'CIE Mathematics D 4024', '9', NULL, 1, '2019-10-01 05:29:58', '2019-10-01 05:29:58'),
(113, 'CIE Nepali - 3202', '9', NULL, 1, '2019-10-01 05:30:30', '2019-10-01 05:30:30'),
(114, 'CIE Pakistan Studies 2059', '9', NULL, 1, '2019-10-01 05:31:08', '2019-10-01 05:31:08'),
(115, 'CIE Physics 5054', '9', NULL, 1, '2019-10-01 05:31:39', '2019-10-01 05:31:39'),
(116, 'CIE Principles of Accounts 7110', '9', NULL, 1, '2019-10-01 05:32:47', '2019-10-01 05:32:47'),
(117, 'CIE  Religious Studies 2048', '9', NULL, 1, '2019-10-01 05:33:25', '2019-10-01 05:33:25'),
(119, 'CIE  Science  Combined 5129', '9', NULL, 1, '2019-10-01 05:35:24', '2019-10-01 05:35:24'),
(120, 'CIE Setswana 3158', '9', NULL, 1, '2019-10-01 05:36:08', '2019-10-01 05:36:08'),
(121, 'CIE Sinhala 3205', '9', NULL, 1, '2019-10-01 05:36:43', '2019-10-01 05:36:43'),
(122, 'CIE Sociology 2251', '9', NULL, 1, '2019-10-01 05:37:16', '2019-10-01 05:37:16'),
(123, 'CIE Statistics 4040', '9', NULL, 1, '2019-10-01 05:37:47', '2019-10-01 05:37:47'),
(124, 'CIE  Swahili 3162', '9', NULL, 1, '2019-10-01 05:38:46', '2019-10-01 05:38:46'),
(125, 'CIE Tamil 3226', '9', NULL, 1, '2019-10-01 05:39:18', '2019-10-01 05:39:18'),
(126, 'CIE Travel & Tourism 7096', '9', NULL, 1, '2019-10-01 05:39:50', '2019-10-01 05:39:50'),
(127, 'CIE Urdu - First Language 3247', '9', NULL, 1, '2019-10-01 05:40:51', '2019-10-01 05:40:51'),
(128, 'CIE Urdu - Second Language 3248', '9', NULL, 1, '2019-10-01 05:41:22', '2019-10-01 05:41:22'),
(129, 'CIE IGCSE Accounting 0452', '9', NULL, 1, '2019-10-01 05:42:31', '2019-10-01 05:42:31'),
(130, 'CIE IGCSE Accounting (9-1) 0985', '9', NULL, 1, '2019-10-01 05:44:03', '2019-10-01 05:44:03'),
(131, 'CIE IGCSE Afrikaans - First Language 0512', '9', NULL, 1, '2019-10-01 05:44:33', '2019-10-01 05:44:33'),
(132, 'CIE IGCSE Afrikaans - Second Language 0548', '9', NULL, 1, '2019-10-01 05:45:11', '2019-10-01 05:45:11'),
(133, 'CIE IGCSE Agriculture 0600', '9', NULL, 1, '2019-10-01 05:45:35', '2019-10-01 05:45:35'),
(134, 'CIE IGCSE Arabic - First Language 0508', '9', NULL, 1, '2019-10-01 05:46:07', '2019-10-01 05:46:07'),
(135, 'CIE IGCSE Arabic - First Language (9-1) 7184', '9', NULL, 1, '2019-10-01 05:46:37', '2019-10-01 05:46:37'),
(136, 'CIE IGCSE Arabic - Foreign Language 0544', '9', NULL, 1, '2019-10-01 05:47:07', '2019-10-01 05:47:07'),
(137, 'CIE IGCSE Art & Design 0400', '9', NULL, 1, '2019-10-01 05:47:45', '2019-10-01 05:47:45'),
(138, 'CIE IGCSE Art & Design (9-1) 0989', '9', NULL, 1, '2019-10-01 05:48:11', '2019-10-01 05:48:11'),
(139, 'CIE IGCSE Bahasa Indonesia 0538', '9', NULL, 1, '2019-10-01 05:49:10', '2019-10-01 05:52:18'),
(140, 'CIE IGCSE Bangladesh Studies 0449', '9', NULL, 1, '2019-10-01 05:50:10', '2019-10-01 05:50:10'),
(141, 'CIE IGCSE Biology 0610', '9', NULL, 1, '2019-10-01 05:51:01', '2019-10-01 05:51:01'),
(142, 'CIE IGCSE Biology (9-1) 0970', '9', NULL, 1, '2019-10-01 05:51:57', '2019-10-01 05:51:57'),
(143, 'CIE IGCSE Business Studies 0450', '9', NULL, 1, '2019-10-01 05:53:04', '2019-10-01 05:53:04'),
(144, 'CIE IGCSE Business Studies (9-1) 0986', '9', NULL, 1, '2019-10-01 05:53:55', '2019-10-01 05:53:55'),
(145, 'CIE IGCSE Chemistry 0620', '9', NULL, 1, '2019-10-01 05:54:42', '2019-10-01 05:57:53'),
(146, 'CIE IGCSE Chemistry (9-1) 0971', '9', NULL, 1, '2019-10-01 05:55:25', '2019-10-01 06:03:38'),
(147, 'CIE IGCSE Child Development 0637', '9', NULL, 1, '2019-10-01 05:56:42', '2019-10-01 06:03:26'),
(148, 'CIE IGCSE Chinese - First Language 0509', '9', NULL, 1, '2019-10-01 05:58:51', '2019-10-01 05:58:51'),
(149, 'CIE IGCSE Chinese - Second Language 0523', '9', NULL, 1, '2019-10-01 05:59:49', '2019-10-01 05:59:49'),
(150, 'CIE IGCSE Chinese (Mandarin) Foreign Language (0547)', '9', NULL, 1, '2019-10-01 06:00:33', '2019-10-01 06:00:33'),
(151, 'CIE IGCSE Computer Science 0478', '9', NULL, 1, '2019-10-01 06:01:16', '2019-10-01 06:01:16'),
(152, 'CIE IGCSE Computer Science (9-1) 0984', '9', NULL, 1, '2019-10-01 06:02:05', '2019-10-01 06:02:05'),
(153, 'CIE IGCSE Chemistry (9-1) 0971', '9', NULL, 1, '2019-10-01 06:02:54', '2019-10-01 06:02:54'),
(154, 'CIE IGCSE Design & Technology 0445', '9', NULL, 1, '2019-10-01 06:04:26', '2019-10-01 06:04:26'),
(155, 'CIE IGCSE Design & Technology (9-1) 0979', '9', NULL, 1, '2019-10-01 06:04:58', '2019-10-01 06:04:58'),
(156, 'CIE IGCSE Development Studies 0453', '9', NULL, 1, '2019-10-01 06:07:11', '2019-10-01 06:07:11'),
(157, 'CIE IGCSE Drama 0411', '9', NULL, 1, '2019-10-01 06:07:47', '2019-10-01 06:07:47'),
(158, 'CIE IGCSE Drama (9-1) 0994', '9', NULL, 1, '2019-10-01 06:08:12', '2019-10-01 06:08:12'),
(159, 'CIE IGCSE Dutch - First Language 0503', '9', NULL, 1, '2019-10-01 06:08:34', '2019-10-01 06:08:34'),
(160, 'CIE IGCSE Dutch - Foreign Language 0515', '9', NULL, 1, '2019-10-01 06:08:56', '2019-10-01 06:08:56'),
(161, 'CIE IGCSE Economics 0455', '9', NULL, 1, '2019-10-01 06:09:25', '2019-10-01 06:09:25'),
(162, 'CIE IGCSE Economics (9-1) 0987', '9', NULL, 1, '2019-10-01 06:09:53', '2019-10-01 06:09:53'),
(163, 'CIE IGCSE English - First Language 0500', '9', NULL, 1, '2019-10-01 06:10:17', '2019-10-01 06:10:17'),
(164, 'CIE IGCSE English - First Language (9-1) 0990', '9', NULL, 1, '2019-10-01 06:10:40', '2019-10-01 06:10:40'),
(165, 'CIE IGCSE English - First Language (9–1) (UK only) 0627', '9', NULL, 1, '2019-10-01 06:11:09', '2019-10-01 06:11:09'),
(166, 'CIE IGCSE English - First Language (US) 0524', '9', NULL, 1, '2019-10-01 06:11:32', '2019-10-01 06:11:32'),
(167, 'CIE IGCSE English - Literature (9-1) (UK only) – 0477', '9', NULL, 1, '2019-10-01 06:11:55', '2019-10-01 06:11:55'),
(168, 'CIE IGCSE English – Literature (English) 0486', '9', NULL, 1, '2019-10-01 06:12:17', '2019-10-01 06:12:17'),
(169, 'CIE IGCSE English – Literature (US) 0427', '9', NULL, 1, '2019-10-01 06:12:39', '2019-10-01 06:12:39'),
(170, 'CIE IGCSE English – Literature in English 0475', '9', NULL, 1, '2019-10-01 06:13:04', '2019-10-01 06:13:04'),
(171, 'CIE IGCSE English – Literature in English (9-1) 0992', '9', NULL, 1, '2019-10-01 06:13:32', '2019-10-01 06:13:32'),
(172, 'CIE IGCSE English as a Second Language (Count-in speaking) 0511', '9', NULL, 1, '2019-10-01 06:13:56', '2019-10-01 06:13:56'),
(173, 'CIE IGCSE English as a Second Language (Count-in Speaking) (9-1) 0991', '9', NULL, 1, '2019-10-01 06:14:30', '2019-10-01 06:14:30'),
(174, 'CIE IGCSE English as a Second Language (Speaking endorsement) 0510', '9', NULL, 1, '2019-10-01 06:14:56', '2019-10-01 06:14:56'),
(175, 'CIE IGCSE English Second Language (Speaking Endorsement) (9-1) 0993', '9', NULL, 1, '2019-10-01 06:15:18', '2019-10-01 06:15:18'),
(176, 'CIE IGCSE Enterprise 0454', '9', NULL, 1, '2019-10-01 06:15:38', '2019-10-01 06:15:38'),
(177, 'CIE IGCSE Environmental Management 0680', '9', NULL, 1, '2019-10-01 06:16:04', '2019-10-01 06:16:04'),
(178, 'CIE IGCSE Food & Nutrition 0648', '9', NULL, 1, '2019-10-01 06:16:25', '2019-10-01 06:16:25'),
(179, 'CIE IGCSE French - First Language 0501', '9', NULL, 1, '2019-10-01 06:16:44', '2019-10-01 06:16:44'),
(180, 'CIE IGCSE French - Foreign Language 0520', '9', NULL, 1, '2019-10-01 06:17:08', '2019-10-01 06:17:08'),
(181, 'CIE IGCSE French (9-1) 7156', '9', NULL, 1, '2019-10-01 06:17:29', '2019-10-01 06:17:29'),
(182, 'CIE IGCSE Geography 0460', '9', NULL, 1, '2019-10-01 06:17:48', '2019-10-01 06:17:48'),
(183, 'CIE IGCSE Geography (9-1) 0976', '9', NULL, 1, '2019-10-01 06:18:12', '2019-10-01 06:18:12'),
(184, 'CIE IGCSE German - First Language 0505', '9', NULL, 1, '2019-10-01 06:18:34', '2019-10-01 06:18:34'),
(185, 'CIE IGCSE German - Foreign Language 0525', '9', NULL, 1, '2019-10-01 06:18:51', '2019-10-01 06:18:51'),
(186, 'CIE IGCSE German (9-1) 7159', '9', NULL, 1, '2019-10-01 06:19:12', '2019-10-01 06:19:12'),
(187, 'CIE IGCSE Global Perspectives 0457', '9', NULL, 1, '2019-10-01 06:19:30', '2019-10-01 06:19:30'),
(188, 'CIE IGCSE Greek - Foreign Language 0543', '9', NULL, 1, '2019-10-01 06:19:53', '2019-10-01 06:19:53'),
(189, 'CIE IGCSE Hindi as a Second Language 0549', '9', NULL, 1, '2019-10-01 06:20:17', '2019-10-01 06:20:17'),
(190, 'CIE IGCSE History 0470', '9', NULL, 1, '2019-10-01 06:20:36', '2019-10-01 06:20:36'),
(191, 'CIE IGCSE History - American (US) 0409', '9', NULL, 1, '2019-10-01 06:20:54', '2019-10-01 06:20:54'),
(192, 'CIE IGCSE History (9-1) 0977', '9', NULL, 1, '2019-10-01 06:21:19', '2019-10-01 06:21:19'),
(193, 'CIE IGCSE India Studies 0447', '9', NULL, 1, '2019-10-01 06:21:41', '2019-10-01 06:21:41'),
(194, 'CIE IGCSE Indonesian - Foreign Language 0545', '9', NULL, 1, '2019-10-01 06:22:03', '2019-10-01 06:22:03'),
(195, 'CIE IGCSE Information & Communication Technology 0417', '9', NULL, 1, '2019-10-01 06:22:25', '2019-10-01 06:22:25'),
(196, 'CIE IGCSE Information & Communication Technology (9-1) 0983', '9', NULL, 1, '2019-10-01 06:22:49', '2019-10-01 06:22:49'),
(197, 'CIE IGCSE IsiZulu as a Second Language 0531', '9', NULL, 1, '2019-10-01 06:23:11', '2019-10-01 06:23:11'),
(198, 'CIE IGCSE Islamiyat 0493', '9', NULL, 1, '2019-10-01 06:23:30', '2019-10-01 06:23:30'),
(199, 'CIE IGCSE Italian - Foreign Language 0535', '9', NULL, 1, '2019-10-01 06:23:50', '2019-10-01 06:23:50'),
(200, 'CIE IGCSE Italian (9-1) 7164', '9', NULL, 1, '2019-10-01 06:24:11', '2019-10-01 06:24:11'),
(201, 'CIE IGCSE Japanese - Foreign Language 0519', '9', NULL, 1, '2019-10-01 06:24:31', '2019-10-01 06:24:31'),
(202, 'CIE IGCSE Kazakh as a Second Language 0532', '9', NULL, 1, '2019-10-01 06:24:57', '2019-10-01 06:24:57'),
(203, 'CIE IGCSE Korean (First Language) 0521', '9', NULL, 1, '2019-10-01 06:25:18', '2019-10-01 06:25:18'),
(204, 'CIE IGCSE Latin 0480', '9', NULL, 1, '2019-10-01 06:25:37', '2019-10-01 06:25:37'),
(205, 'CIE IGCSE Malay - First Language 0696', '9', NULL, 1, '2019-10-01 06:26:03', '2019-10-01 06:26:03'),
(206, 'CIE IGCSE Malay - Foreign Language 0546', '9', NULL, 1, '2019-10-01 06:27:44', '2019-10-01 06:27:44'),
(207, 'CIE IGCSE Marine Science (Maldives only) 0697', '9', NULL, 1, '2019-10-01 06:28:04', '2019-10-01 06:28:04'),
(208, 'CIE IGCSE Mathematics 0580', '9', NULL, 1, '2019-10-01 06:28:30', '2019-10-01 06:28:30'),
(209, 'CIE IGCSE Mathematics - Additional 0606', '9', NULL, 1, '2019-10-01 06:28:50', '2019-10-01 06:28:50'),
(210, 'CIE IGCSE Mathematics - Additional (US) 0459', '9', NULL, 1, '2019-10-01 06:29:11', '2019-10-01 06:29:11'),
(211, 'CIE IGCSE Mathematics - International 0607', '9', NULL, 1, '2019-10-01 06:29:30', '2019-10-01 06:29:30'),
(212, 'CIE IGCSE Mathematics (9-1) 0980', '9', NULL, 1, '2019-10-01 06:29:57', '2019-10-01 06:29:57'),
(213, 'CIE IGCSE Mathematics (9-1) (UK only) 0626', '9', NULL, 1, '2019-10-01 06:30:21', '2019-10-01 06:30:21'),
(214, 'CIE IGCSE Mathematics (US) 0444', '9', NULL, 1, '2019-10-01 06:30:43', '2019-10-01 06:30:43'),
(215, 'CIE IGCSE Music 0410', '9', NULL, 1, '2019-10-01 06:31:11', '2019-10-01 06:31:11'),
(216, 'CIE IGCSE Music (9-1) 0978', '9', NULL, 1, '2019-10-01 06:31:32', '2019-10-01 06:31:32'),
(217, 'CIE IGCSE Pakistan Studies 0448', '9', NULL, 1, '2019-10-01 06:31:52', '2019-10-01 06:31:52'),
(218, 'CIE IGCSE Physical Education 0413', '9', NULL, 1, '2019-10-01 06:32:12', '2019-10-01 06:32:12'),
(219, 'CIE IGCSE Physical Education (9-1) 0995', '9', NULL, 1, '2019-10-01 06:32:38', '2019-10-01 06:32:38'),
(220, 'CIE IGCSE Physical Science 0652', '9', NULL, 1, '2019-10-01 06:32:59', '2019-10-01 06:32:59'),
(221, 'CIE IGCSE Physics 0625', '9', NULL, 1, '2019-10-01 06:33:25', '2019-10-01 06:33:25'),
(222, 'CIE IGCSE Physics (9-1) 0972', '9', NULL, 1, '2019-10-01 06:33:47', '2019-10-01 06:33:47'),
(223, 'CIE IGCSE Portuguese - First Language 0504', '9', NULL, 1, '2019-10-01 06:34:06', '2019-10-01 06:34:06'),
(224, 'CIE IGCSE Portuguese - Foreign Language 0540', '9', NULL, 1, '2019-10-01 06:34:25', '2019-10-01 06:34:25'),
(225, 'CIE IGCSE Religious Studies 0490', '9', NULL, 1, '2019-10-01 06:34:47', '2019-10-01 06:34:47'),
(226, 'CIE IGCSE Russian - First Language 0516', '9', NULL, 1, '2019-10-01 06:35:06', '2019-10-01 06:35:06'),
(227, 'CIE IGCSE Sanskrit 0499', '9', NULL, 1, '2019-10-01 06:35:27', '2019-10-01 06:35:27'),
(228, 'CIE IGCSE Science - Combined 0653', '9', NULL, 1, '2019-10-01 06:35:47', '2019-10-01 06:35:47'),
(229, 'CIE IGCSE Sciences - Co-ordinated (9-1) 0973', '9', NULL, 1, '2019-10-01 06:36:09', '2019-10-01 06:36:09'),
(230, 'CIE IGCSE Sciences - Co-ordinated (Double) 0654', '9', NULL, 1, '2019-10-01 06:36:31', '2019-10-01 06:36:31'),
(231, 'CIE IGCSE Sociology 0495', '9', NULL, 1, '2019-10-01 06:36:52', '2019-10-01 06:38:54'),
(232, 'CIE IGCSE Spanish - First Language 0502', '9', NULL, 1, '2019-10-01 06:39:21', '2019-10-01 06:39:21'),
(233, 'CIE IGCSE Spanish - Foreign Language 0530', '9', NULL, 1, '2019-10-01 06:39:41', '2019-10-01 06:39:41'),
(234, 'CIE IGCSE Spanish - Literature 0488', '9', NULL, 1, '2019-10-01 06:39:59', '2019-10-01 06:39:59'),
(235, 'CIE IGCSE Spanish (9-1) 7160', '9', NULL, 1, '2019-10-01 06:40:22', '2019-10-01 06:40:22'),
(236, 'CIE IGCSE Swahili 0262', '9', NULL, 1, '2019-10-01 06:40:41', '2019-10-01 06:40:41'),
(237, 'CIE IGCSE Thai - First Language 0518', '9', NULL, 1, '2019-10-01 06:41:03', '2019-10-01 06:41:03'),
(238, 'CIE IGCSE Travel & Tourism 0471', '9', NULL, 1, '2019-10-01 06:41:21', '2019-10-01 06:41:21'),
(239, 'CIE IGCSE Turkish - First Language 0513', '9', NULL, 1, '2019-10-01 06:41:41', '2019-10-01 06:41:41'),
(240, 'CIE IGCSE Urdu as a Second Language 0539', '9', NULL, 1, '2019-10-01 06:42:02', '2019-10-01 06:42:02'),
(241, 'CIE IGCSE World Literature 0408', '9', NULL, 1, '2019-10-01 06:42:23', '2019-10-01 06:42:23'),
(242, 'HL Biology', '8', NULL, 1, '2019-10-01 06:51:46', '2019-10-01 06:51:46'),
(243, 'HL Business and management', '8', NULL, 1, '2019-10-01 06:52:01', '2019-10-01 06:52:01'),
(244, 'HL Chemistry', '8', NULL, 1, '2019-10-01 06:52:22', '2019-10-01 06:52:22'),
(245, 'HL Economics', '8', NULL, 1, '2019-10-01 06:53:25', '2019-10-01 06:53:25'),
(246, 'HL English A: Literature', '8', NULL, 1, '2019-10-01 06:53:43', '2019-10-01 06:53:43'),
(247, 'HL English B', '8', NULL, 1, '2019-10-01 06:54:00', '2019-10-01 06:54:24'),
(248, 'HL French B', '8', NULL, 1, '2019-10-01 06:54:41', '2019-10-01 06:54:41'),
(249, 'HL Geography', '8', NULL, 1, '2019-10-01 06:55:02', '2019-10-01 06:55:02'),
(250, 'HL German B', '8', NULL, 1, '2019-10-01 06:55:19', '2019-10-01 06:55:19'),
(251, 'HL History', '8', NULL, 1, '2019-10-01 06:55:35', '2019-10-01 06:55:35'),
(252, 'HL Mathematics', '8', NULL, 1, '2019-10-01 06:55:48', '2019-10-01 06:55:48'),
(253, 'HL Norwegian A: Literature', '8', NULL, 1, '2019-10-01 06:56:01', '2019-10-01 06:56:01'),
(254, 'HL Physics', '8', NULL, 1, '2019-10-01 06:56:12', '2019-10-01 06:56:12'),
(255, 'HL Social and cultural anthropology', '8', NULL, 1, '2019-10-01 06:56:24', '2019-10-01 06:56:24'),
(256, 'HL Visual arts', '8', NULL, 1, '2019-10-01 06:56:36', '2019-10-01 06:56:36'),
(257, 'SL Biology', '8', NULL, 1, '2019-10-01 06:57:55', '2019-10-01 06:57:55'),
(258, 'SL English A: Literature', '8', NULL, 1, '2019-10-01 06:58:09', '2019-10-01 06:58:35'),
(259, 'SL French B', '8', NULL, 1, '2019-10-01 06:58:48', '2019-10-01 06:58:48'),
(260, 'SL Gujarati A: Literature', '8', NULL, 1, '2019-10-01 06:58:58', '2019-10-01 06:58:58'),
(261, 'SL History', '8', NULL, 1, '2019-10-01 06:59:10', '2019-10-01 06:59:10'),
(262, 'SL Japanese ab initio', '8', NULL, 1, '2019-10-01 06:59:20', '2019-10-01 06:59:20'),
(263, 'SL Mathematical studies', '8', NULL, 1, '2019-10-01 06:59:34', '2019-10-01 06:59:34'),
(264, 'SL Mathematics', '8', NULL, 1, '2019-10-01 06:59:53', '2019-10-01 06:59:53'),
(265, 'SL Norwegian A: Literature', '8', NULL, 1, '2019-10-01 07:00:04', '2019-10-01 07:00:04'),
(266, 'SL Physics', '8', NULL, 1, '2019-10-01 07:00:17', '2019-10-01 07:00:17'),
(267, 'SL Spanish A: Literature', '8', NULL, 1, '2019-10-01 07:00:54', '2019-10-01 07:00:54'),
(268, 'SL Spanish ab initio', '8', NULL, 1, '2019-10-01 07:01:10', '2019-10-01 07:01:10'),
(269, 'SL Theatre', '8', NULL, 1, '2019-10-01 07:01:19', '2019-10-01 07:01:19'),
(270, 'School Arabic', '11', NULL, 1, '2019-10-01 07:11:08', '2019-10-03 10:59:16'),
(271, 'School Accounting', '11', NULL, 1, '2019-10-01 07:11:30', '2019-10-03 10:59:32'),
(272, 'School Bangla', '11', NULL, 1, '2019-10-01 07:11:45', '2019-10-03 10:59:45'),
(273, 'School Biology', '11', NULL, 1, '2019-10-01 07:12:07', '2019-10-03 11:00:02'),
(274, 'Business Studies', '11', NULL, 1, '2019-10-01 07:12:23', '2019-10-01 07:12:23'),
(275, 'School Chemistry', '11', NULL, 1, '2019-10-01 07:12:46', '2019-10-03 11:01:01'),
(276, 'School Commerce', '11', NULL, 1, '2019-10-01 07:13:27', '2019-10-03 10:57:45'),
(277, 'School Economics', '11', NULL, 1, '2019-10-01 07:13:56', '2019-10-03 10:58:00'),
(278, 'School English Language', '11', NULL, 1, '2019-10-01 07:14:26', '2019-10-03 10:58:12'),
(279, 'School English Literature', '11', NULL, 1, '2019-10-01 07:16:10', '2019-10-03 10:58:24'),
(280, 'School French', '11', NULL, 1, '2019-10-01 07:17:30', '2019-10-03 10:58:38'),
(281, 'School Geography', '11', NULL, 1, '2019-10-01 07:18:06', '2019-10-03 10:58:49'),
(282, 'Grammar (Bangla)', '11', NULL, 1, '2019-10-01 07:18:23', '2019-10-01 07:19:15'),
(283, 'Grammar (English)', '11', NULL, 1, '2019-10-01 07:19:36', '2019-10-01 07:19:36'),
(284, 'Grammar (French)', '11', NULL, 1, '2019-10-01 07:20:08', '2019-10-01 07:20:08'),
(285, 'Grammar (German)', '11', NULL, 1, '2019-10-01 07:20:26', '2019-10-01 07:20:26'),
(286, 'School History', '11', NULL, 1, '2019-10-01 07:20:42', '2019-10-03 10:57:27'),
(287, 'School Islamic Studies', '11', NULL, 1, '2019-10-01 07:21:20', '2019-10-03 10:57:15'),
(288, 'School Islamiat', '11', NULL, 1, '2019-10-01 07:22:10', '2019-10-03 10:57:04'),
(289, 'School Mathematics', '11', NULL, 1, '2019-10-01 07:24:30', '2019-10-03 10:56:52'),
(290, 'School Physics', '11', NULL, 1, '2019-10-01 07:24:54', '2019-10-03 10:56:42'),
(291, 'School Religious Studies', '11', NULL, 1, '2019-10-01 07:27:11', '2019-10-03 10:56:30'),
(292, 'School Statistics', '11', NULL, 1, '2019-10-01 07:27:47', '2019-10-03 10:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guardian_profiles`
--

CREATE TABLE `guardian_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `guardian_id` int(11) NOT NULL,
  `g1_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g1_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g1_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g1_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g1_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codepopular` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g1_nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g1_area` int(11) DEFAULT NULL,
  `g1_ps_id` int(11) DEFAULT NULL,
  `g1_city` int(11) DEFAULT NULL,
  `g1_district` int(11) DEFAULT NULL,
  `g1_country` int(11) DEFAULT NULL,
  `g2_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2_profession` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2_nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2_area` int(11) DEFAULT NULL,
  `g2_ps_id` int(11) DEFAULT NULL,
  `g2_city` int(11) DEFAULT NULL,
  `g2_district` int(11) DEFAULT NULL,
  `g2_country` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_grade_lebel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `ps_id` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `s_photo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardian_profiles`
--

INSERT INTO `guardian_profiles` (`id`, `user_id`, `guardian_id`, `g1_name`, `g1_phone`, `g1_relation`, `g1_email`, `g1_address`, `codepopular`, `g1_nid`, `g1_area`, `g1_ps_id`, `g1_city`, `g1_district`, `g1_country`, `g2_name`, `g_number`, `g2_relation`, `g2_email`, `g2_address`, `g2_profession`, `g2_nid`, `g2_area`, `g2_ps_id`, `g2_city`, `g2_district`, `g2_country`, `name`, `class_grade_lebel`, `group`, `subject`, `phone`, `email`, `address`, `area`, `ps_id`, `city`, `district`, `country`, `s_photo`, `created_at`, `updated_at`) VALUES
(1, 50, 741964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_17_053834_create_teaching_classes_table', 1),
(8, '2019_09_18_171105_create_admin_subjects_table', 3),
(12, '2019_09_19_061856_create_admin_boards_table', 4),
(14, '2019_09_20_083309_create_admin_districts_table', 5),
(15, '2019_09_20_114803_create_police_stations_table', 6),
(17, '2019_09_21_024724_create_admin_countries_table', 7),
(19, '2019_09_23_055245_create_user_roles_table', 8),
(29, '2014_10_12_000000_create_users_table', 9),
(36, '2019_09_26_072755_create_techer_educations_table', 10),
(40, '2019_09_25_073405_create_teacher_profiles_table', 12),
(41, '2019_09_27_091123_create_teacher_tranings_table', 12),
(42, '2019_09_26_101515_create_teaching_places_table', 13),
(46, '2019_10_01_054218_create_admin_cities_table', 15),
(47, '2019_10_02_042519_create_guardian_profiles_table', 15),
(48, '2019_10_02_064752_create_admin_areas_table', 15),
(49, '2019_09_30_064133_create_student_profiles_table', 16),
(51, '2019_10_04_113734_create_teacher_notices_table', 17),
(52, '2019_10_05_084536_create_student_enrolls_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$g1gdcOjTwr1NiAHl71cQTumgeqlFxBPCXeBp/07IaRf66CLxIZcX6', '2019-10-03 06:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `police_stations`
--

CREATE TABLE `police_stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `police_station` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `police_stations`
--

INSERT INTO `police_stations` (`id`, `police_station`, `city_id`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Adabor', 1, 1, '2019-10-02 08:34:19', '2019-10-02 08:34:19'),
(14, 'Airport', 1, 1, '2019-10-02 08:34:37', '2019-10-02 08:34:37'),
(15, 'Badda', 1, 1, '2019-10-02 08:34:47', '2019-10-02 08:34:47'),
(16, 'Banani', 1, 1, '2019-10-02 08:34:59', '2019-10-02 08:34:59'),
(17, 'Bangshal', 1, 1, '2019-10-02 08:35:13', '2019-10-02 08:35:13'),
(18, 'Bhashantek', 1, 1, '2019-10-02 08:35:34', '2019-10-02 08:35:34'),
(19, 'Cantonment', 1, 1, '2019-10-02 08:35:58', '2019-10-02 08:35:58'),
(20, 'Chackbazar', 1, 1, '2019-10-02 08:36:08', '2019-10-02 08:36:08'),
(21, 'Dakshin Khan', 1, 1, '2019-10-02 08:36:22', '2019-10-02 08:36:22'),
(22, 'Darus-Salam', 1, 1, '2019-10-02 08:36:34', '2019-10-02 08:36:34'),
(23, 'Demra', 1, 1, '2019-10-02 08:36:45', '2019-10-02 08:36:45'),
(24, 'Dhanmondi', 1, 1, '2019-10-02 08:36:56', '2019-10-02 08:36:56'),
(25, 'Gandaria', 1, 1, '2019-10-02 08:37:05', '2019-10-02 08:37:05'),
(26, 'Gulshan', 1, 1, '2019-10-02 08:37:14', '2019-10-02 08:37:14'),
(27, 'Hatirjheel', 1, 1, '2019-10-02 08:37:24', '2019-10-02 08:37:24'),
(28, 'Hazaribag', 1, 1, '2019-10-02 08:37:36', '2019-10-02 08:37:36'),
(29, 'Jattrabari', 1, 1, '2019-10-02 08:37:45', '2019-10-02 08:37:45'),
(30, 'Kadamtoli', 1, 1, '2019-10-02 08:37:55', '2019-10-02 08:37:55'),
(31, 'Kafrul', 1, 1, '2019-10-02 08:38:07', '2019-10-02 08:38:07'),
(32, 'Kalabagan', 1, 1, '2019-10-02 08:38:14', '2019-10-02 08:38:14'),
(33, 'Kamrangirchar', 1, 1, '2019-10-02 08:38:23', '2019-10-02 08:38:23'),
(34, 'Khilgaon', 1, 1, '2019-10-02 08:38:32', '2019-10-02 08:38:32'),
(35, 'Khilkhet', 1, 1, '2019-10-02 08:38:39', '2019-10-02 08:38:39'),
(36, 'Kotwali', 1, 1, '2019-10-02 08:38:53', '2019-10-02 08:38:53'),
(37, 'Lalbagh', 1, 1, '2019-10-02 08:39:01', '2019-10-02 08:39:01'),
(38, 'Mirpur Model', 1, 1, '2019-10-02 08:39:12', '2019-10-02 08:39:12'),
(39, 'Mohammadpur', 1, 1, '2019-10-02 08:39:20', '2019-10-02 08:39:20'),
(40, 'Motijheel', 1, 1, '2019-10-02 08:39:30', '2019-10-02 08:39:30'),
(41, 'Mugda', 1, 1, '2019-10-02 08:39:37', '2019-10-02 08:39:37'),
(42, 'New Market', 1, 1, '2019-10-02 08:39:46', '2019-10-02 08:39:46'),
(43, 'Pallabi', 1, 1, '2019-10-02 08:39:55', '2019-10-02 08:39:55'),
(44, 'Paltan Model', 1, 1, '2019-10-02 08:40:06', '2019-10-02 08:40:06'),
(45, 'Ramna Model', 1, 1, '2019-10-02 08:40:16', '2019-10-02 08:40:16'),
(46, 'Rampura', 1, 1, '2019-10-02 08:40:24', '2019-10-02 08:40:24'),
(47, 'Rupnagar', 1, 1, '2019-10-02 08:40:32', '2019-10-02 08:40:32'),
(48, 'Sabujbag', 1, 1, '2019-10-02 08:40:41', '2019-10-02 08:40:41'),
(49, 'Shah Ali', 1, 1, '2019-10-02 08:40:51', '2019-10-02 08:40:51'),
(50, 'Shahbag', 1, 1, '2019-10-02 08:41:02', '2019-10-02 08:41:02'),
(51, 'Shahjahanpur', 1, 1, '2019-10-02 08:41:12', '2019-10-02 08:41:12'),
(52, 'Sher e Bangla Nagar', 1, 1, '2019-10-02 08:41:22', '2019-10-02 08:41:22'),
(53, 'Shyampur', 1, 1, '2019-10-02 08:41:31', '2019-10-02 08:41:31'),
(54, 'Sutrapur', 1, 1, '2019-10-02 08:41:43', '2019-10-02 08:41:43'),
(55, 'Tejgaon', 1, 1, '2019-10-02 08:41:51', '2019-10-02 08:41:51'),
(56, 'Tejgaon Industrial', 1, 1, '2019-10-02 08:42:01', '2019-10-02 08:42:01'),
(57, 'Turag', 1, 1, '2019-10-02 08:42:11', '2019-10-02 08:42:11'),
(58, 'Uttar Khan', 1, 1, '2019-10-02 08:42:21', '2019-10-02 08:42:21'),
(59, 'Uttara East', 1, 1, '2019-10-02 08:42:31', '2019-10-02 08:42:31'),
(60, 'Uttara West', 1, 1, '2019-10-02 08:42:41', '2019-10-02 08:42:41'),
(61, 'Vatara', 1, 1, '2019-10-02 08:42:50', '2019-10-02 08:42:50'),
(62, 'Wari', 1, 1, '2019-10-02 08:43:02', '2019-10-02 08:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolls`
--

CREATE TABLE `student_enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_enrolls`
--

INSERT INTO `student_enrolls` (`id`, `student_id`, `teacher_id`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(2, 49, 45, NULL, 'hello sir i want to join your class', 0, '2019-10-05 05:33:12', '2019-10-05 05:33:12'),
(4, 51, 48, NULL, 'dfsdfdsf', 0, '2019-10-05 06:40:53', '2019-10-05 06:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_grade_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_passing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profession` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_district` int(11) DEFAULT NULL,
  `f_country` int(11) DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_rofession` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `user_id`, `student_id`, `student_name`, `class_grade_level`, `group`, `subject_passing`, `contact_no`, `email`, `address`, `area`, `district`, `country`, `father_name`, `father_contact_no`, `father_email`, `father_address`, `Profession`, `father_nid`, `father_area`, `father_district`, `f_country`, `mother_name`, `mother_contact_no`, `mother_email`, `mother_address`, `mother_rofession`, `mother_nid`, `mother_area`, `mother_district`, `mother_country`, `created_at`, `updated_at`) VALUES
(1, 49, 793738, NULL, NULL, NULL, NULL, '+88017800384688', 'student@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-05 07:41:01'),
(2, 51, 380157, 'Md.Shamim Hasan', 'Class3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notices`
--

CREATE TABLE `teacher_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `n_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_notices`
--

INSERT INTO `teacher_notices` (`id`, `user_id`, `n_title`, `n_des`, `status`, `created_at`, `updated_at`) VALUES
(1, 48, 'Welcome Notice', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. Itaque hic ipse iam pridem est reiectus; Lorem ipsum dolor sit amet, consectetur adipisci', 1, '2019-10-04 06:32:39', '2019-10-04 08:30:00'),
(2, 48, 'Welcome Notice', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. Itaque hic ipse iam pridem est reiectus; Lorem ipsum dolor sit amet, consectetur adipisci', 1, '2019-10-04 06:32:58', '2019-10-04 08:19:49'),
(3, 48, 'New Examp Attention', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. Itaque hic ipse iam pridem est reiectus; Lorem ipsum dolor sit amet, consectetur adipisci', 1, '2019-10-04 06:33:38', '2019-10-04 07:58:38'),
(4, 48, 'New Batch Going to start', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. Itaque hic ipse iam pridem est reiectus; Lorem ipsum dolor sit amet, consectetur adipisci', 1, '2019-10-04 06:33:51', '2019-10-04 08:12:18'),
(5, 48, 'New Batch Going to start', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. Itaque hic ipse iam pridem est reiectus; Lorem ipsum dolor sit amet, consectetur adipisci', 1, '2019-10-04 06:48:19', '2019-10-04 09:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'noimage.jpg',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `init_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `police_station` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teaching_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teaching_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teaching_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teaching_since` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_school` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_joining_date` date DEFAULT NULL,
  `present_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_school` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_joning_date` date DEFAULT NULL,
  `last_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_student` int(11) DEFAULT NULL,
  `routine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_education` int(11) DEFAULT NULL,
  `teaching_place` int(11) DEFAULT NULL,
  `coaching_establish_date` date DEFAULT NULL,
  `other_subject` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traning` int(11) DEFAULT NULL,
  `master_degree_ins` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `master_degree_major` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `master_degree_yar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_degree_ins` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_degree_major` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_degree_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alavel_or_hsc_ins` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alavel_or_hsc_major` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alavel_or_hsc_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `olavel_or_ssc_ins` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `olavel_or_ssc_major` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `olavel_or_ssc_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `teacher_id`, `user_id`, `type`, `photo`, `name`, `init_name`, `birth_date`, `gender`, `address`, `area`, `city`, `police_station`, `district`, `country`, `phone`, `email`, `website`, `facebook`, `twitter`, `other_link`, `teaching_level`, `teaching_class`, `teaching_subject`, `teaching_since`, `present_school`, `present_joining_date`, `present_position`, `last_school`, `last_joning_date`, `last_position`, `total_student`, `routine`, `office_contact_number`, `teacher_education`, `teaching_place`, `coaching_establish_date`, `other_subject`, `about`, `traning`, `master_degree_ins`, `master_degree_major`, `master_degree_yar`, `bachelor_degree_ins`, `bachelor_degree_major`, `bachelor_degree_year`, `alavel_or_hsc_ins`, `alavel_or_hsc_major`, `alavel_or_hsc_year`, `olavel_or_ssc_ins`, `olavel_or_ssc_major`, `olavel_or_ssc_year`, `payment_status`, `created_at`, `updated_at`) VALUES
(16, 151409, 45, 'all', 'photo_1570119340.jpg', 'The First Teacher', 'TFT', '2000-01-01', 'male', 'House 100, Road 100, Dhanmondi, Dhaka', 'Dhanmondi', 'Dhaka', '24', '10', '1', '+8801713015774', 'thefirstteacher@gmail.com', 'http://bpmontessori.com/', 'https://www.facebook.com/tariqkhanchy', 'https://www.facebook.com/tariqkhanchy', 'https://www.facebook.com/tariqkhanchy', 'A Level', '3', '109', '1990', 'ABC School', '2019-10-01', 'Teacher', 'DEF School', '2019-09-30', 'Teacher', NULL, NULL, NULL, NULL, NULL, '2019-10-03', 'All Subjects', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.', NULL, 'CU', 'English', '1996', 'CU', 'English', '1995', 'CB', 'Humanities', '1987', 'CB', 'Humanities', '1985', 1, NULL, '2019-10-03 10:42:57'),
(17, 276393, 48, 'freelance teacher', 'photo_1570181092.jpeg', 'Michel Carming', 'MC', '2019-10-17', 'male', 'Kuala lumpur, Malaysia', 'Dhaka', 'Dhaka', '29', '15', '10', '+8801794939991', 'admin@gmail.com', 'admin@gmail.com', 'www.facebook.com/shamimtpi', 'www.codepopular.com', 'www.bangladesh.com', 'A Level', '18', '18', '2006', 'reewrterwer', '2019-10-18', 'English head', 'werwr', '2019-10-21', 'Engslish head', NULL, NULL, NULL, NULL, NULL, '2019-10-09', 'Arabic (4AR0),Bengali 4BE0,Accounting (4AC0),Bangladesh Studies (4BN0)', 'My name is jhone brown. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.my hsm', NULL, 'Dhaka Univercity', 'fdgdfg', '435435', 'pabna univercity', 'dfsdf', '5678', 'Dhaka University', 'Science', '1991', 'MA(Masters) University', 'Bangla', '2018', 1, NULL, '2019-10-05 02:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tranings`
--

CREATE TABLE `teacher_tranings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `traning_date` date NOT NULL,
  `qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `traning_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `traning_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `given_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_venue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_tranings`
--

INSERT INTO `teacher_tranings` (`id`, `user_id`, `traning_date`, `qualification`, `traning_on`, `traning_duration`, `given_by`, `organization`, `trainer_name`, `t_venue`, `created_at`, `updated_at`) VALUES
(1, 30, '2019-09-16', 'Web Developer', 'Laravel', '2 Month', 'BITM', 'laravel', 'Mohammod Ali', 'Karwanbazar', '2019-09-27 21:09:19', '2019-09-27 21:09:19'),
(2, 28, '2019-09-10', 'Graphic Designer', 'Graphic Design', '2 Month', 'Laravel firm', 'Laravel code', 'Hasan', 'sdfsdf', '2019-09-27 21:10:14', '2019-09-27 21:10:14'),
(3, 30, '2019-09-11', 'Pearson Edexcel', 'Translation', '3 Days', 'Reapson Edexcel, Dhaka', 'Peapson Edexcel, Dhaka', 'Shahana Hossain', 'BRAC, Dhaka', '2019-09-27 22:48:46', '2019-09-27 22:48:46'),
(4, 45, '2019-01-01', 'CELTA', 'Teaching English', '4 Weeks', 'IH, Bangkok', 'IH, Bangkok', 'Judy Roth', 'Bangkok', '2019-10-03 10:44:04', '2019-10-03 10:44:04'),
(5, 48, '2019-10-16', 'Web Developer', 'Laravel', '2 Month', 'BITM', 'Bangladesh ICT', 'Mohammod Ali', 'Karwanbazar', '2019-10-05 01:42:24', '2019-10-05 01:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_classes`
--

CREATE TABLE `teaching_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teaching_classes`
--

INSERT INTO `teaching_classes` (`id`, `class_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Play Group', 1, '2019-09-20 02:16:32', '2019-10-03 21:25:01'),
(2, 'Nursery', 1, '2019-09-20 02:16:37', '2019-10-03 21:25:11'),
(3, 'KG One', 1, '2019-09-20 02:16:45', '2019-10-03 21:25:26'),
(4, 'KG Two', 1, '2019-10-03 21:25:36', '2019-10-03 21:25:36'),
(5, 'Class One', 1, '2019-10-03 21:25:47', '2019-10-03 21:25:47'),
(6, 'Class Two', 1, '2019-10-03 21:25:57', '2019-10-03 21:25:57'),
(7, 'Class Three', 1, '2019-10-03 21:26:08', '2019-10-03 21:26:08'),
(8, 'Class Four', 1, '2019-10-03 21:26:18', '2019-10-03 21:26:18'),
(9, 'Class Five', 1, '2019-10-03 21:26:34', '2019-10-03 21:26:34'),
(10, 'Class Six', 1, '2019-10-03 21:26:44', '2019-10-03 21:26:44'),
(11, 'Class Seven', 1, '2019-10-03 21:26:53', '2019-10-03 21:26:53'),
(12, 'Class Eight', 1, '2019-10-03 21:27:02', '2019-10-03 21:27:02'),
(13, 'Class Nine', 1, '2019-10-03 21:27:26', '2019-10-03 21:27:26'),
(14, 'Class Ten', 1, '2019-10-03 21:27:43', '2019-10-03 21:27:43'),
(15, 'Class Elevel', 1, '2019-10-03 21:28:02', '2019-10-03 21:28:02'),
(16, 'Class Twelve', 1, '2019-10-03 21:28:11', '2019-10-03 21:28:11'),
(17, 'O Level', 1, '2019-10-03 21:28:32', '2019-10-03 21:28:32'),
(18, 'A Level', 1, '2019-10-03 21:28:42', '2019-10-03 21:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_places`
--

CREATE TABLE `teaching_places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `coaching_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `road_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Landmark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_office` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_station` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teaching_places`
--

INSERT INTO `teaching_places` (`id`, `user_id`, `coaching_name`, `house`, `road_no`, `Landmark`, `post_office`, `post_code`, `map`, `area`, `p_station`, `district`, `country`, `created_at`, `updated_at`) VALUES
(1, 30, 'Creative Education', '338/ A, Danmondi', '34/454', 'Katasur', 'Mohammodpur', '1206', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.1703918980825!2d90.38039151452398!3d23.74130248459384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b7a55cd36f%3A0xfcc5b021faff43ea!2sCreative%20IT%20Institute!5e0!3m2!1sen!2sbd!4v1568804774459!5m2!1sen!2sbd\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '9', '10', '7', '3', '2019-09-27 21:16:41', '2019-09-29 23:27:28'),
(2, 28, 'New caocaching', 'hello house', 'Karasur raload 244/A', 'landmark area', 'Mohammodpur', '3434', 'Pur google map address here', '11', '9', '7', '10', '2019-09-27 21:17:30', '2019-09-29 21:21:48'),
(3, 30, 'this is my coaching place', 'house no', 'Begom Rokeya / 25', 'landimark', 'Mohammodpur', 'post ocde', 'sdfsdfdsf', '10', '11', '7', '12', '2019-09-27 21:26:22', '2019-09-29 23:27:35'),
(4, 28, 'United Coaching', 'Mohammoadpur, Katasur', '282/A', 'Mohammodpur', 'Mohammadpur', '1200', 'google map address here', '11', '', '7', '13', '2019-09-29 20:43:28', '2019-09-29 20:44:31'),
(5, 45, 'The Study Town', '5', '5', 'City Hospital', 'Mohammedpur', '1205', 'https://www.google.com/maps/place/The+Study+Town/@23.7549535,90.3665212,15z/data=!4m5!3m4!1s0x0:0xa5d3d3365361d82d!8m2!3d23.7549535!4d90.3665212', '24', '24', '10', '1', '2019-10-03 10:41:59', '2019-10-03 10:41:59'),
(6, 48, 'bangladesh coaching center', 'bangladesh', '3245345/A', 'Landmar here', '34324', '34343', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.1703918980825!2d90.38039151452398!3d23.74130248459384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b7a55cd36f%3A0xfcc5b021faff43ea!2sCreative%20IT%20Institute!5e0!3m2!1sen!2sbd!4v1568804774459!5m2!1sen!2sbd\" width=\"100%\" height=\"150\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '27', '26', '12', '10', '2019-10-04 03:42:01', '2019-10-05 01:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `techer_educations`
--

CREATE TABLE `techer_educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_degree_ins` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_degree_major` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_degree_yar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bachelor_degree_ins` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bachelor_degree_major` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bachelor_degree_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alavel_or_hsc_ins` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alavel_or_hsc_major` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alavel_or_hsc_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olavel_or_ssc_ins` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olavel_or_ssc_major` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olavel_or_ssc_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `phone`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', 4, '+8801794939991', NULL, '$2y$10$P9H6APqXgkG/FtE7Jat/SOvmv4OFF9sr0spcXMxa42eLVLc6v5.Bi', NULL, 1, '2019-09-25 06:36:50', '2019-09-25 06:36:50'),
(45, 'The First Teacher', 'thefirstteacher@gmail.com', 2, '+8801713015774', NULL, '$2y$10$T43xhgXttwMVJWG6e3aPkub6JfFW4a1VpCXF47MPAvypXltuB5gaK', NULL, 1, '2019-10-03 10:13:44', '2019-10-03 10:13:44'),
(46, 'The First Student', 'thefirststudent@gmail.com', 1, '+8801713015773', NULL, '$2y$10$pBkFiTYUUMN/Hh2mePAYNev34HMmH43ixL.b4sdMev83MDdKmPR4y', NULL, 1, '2019-10-03 21:18:38', '2019-10-03 21:18:38'),
(48, 'teacher', 'teacher@gmail.com', 2, '23423432432432', NULL, '$2y$10$W.5M3xtKJhrOgq7NzDPGl.8VdT8pmf00/jXdOnf/sx9Wosdlndtfi', NULL, 1, '2019-10-04 03:22:34', '2019-10-04 03:22:34'),
(49, 'student', 'student@gmail.com', 1, '+88017800384688', NULL, '$2y$10$/63odgEe6Wh9HIJLaE5s/.puNIn32zpsUryWITozDEyTonj4s6rPK', NULL, 1, '2019-10-04 04:51:26', '2019-10-04 04:51:26'),
(50, 'Guardian', 'guardian@gmail.com', 3, '+8801780038688', NULL, '$2y$10$ztEAHV868MC4Y3bfayiqJeGE3gQAiY/1fvQ4CQYXIlQRtXdheXDqm', NULL, 1, '2019-10-05 03:23:45', '2019-10-05 03:23:45'),
(51, 'student2', 'student2@gmail.com', 1, '23423424234', NULL, '$2y$10$uqTcoX3qaCtfmcMXFYtyUOBoTM4VdRVeDp7Ulc7DpejAeDHIJ9JTu', NULL, 1, '2019-10-05 06:10:16', '2019-10-05 06:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Student', '1', NULL, NULL),
(2, 'Teacher', '1', NULL, NULL),
(3, 'Guardian', '1', NULL, NULL),
(4, 'Admin', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_areas`
--
ALTER TABLE `admin_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_boards`
--
ALTER TABLE `admin_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_cities`
--
ALTER TABLE `admin_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_countries`
--
ALTER TABLE `admin_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_districts`
--
ALTER TABLE `admin_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_subjects`
--
ALTER TABLE `admin_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardian_profiles`
--
ALTER TABLE `guardian_profiles`
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
-- Indexes for table `police_stations`
--
ALTER TABLE `police_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_enrolls`
--
ALTER TABLE `student_enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_notices`
--
ALTER TABLE `teacher_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_tranings`
--
ALTER TABLE `teacher_tranings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teaching_classes`
--
ALTER TABLE `teaching_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teaching_places`
--
ALTER TABLE `teaching_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `techer_educations`
--
ALTER TABLE `techer_educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_areas`
--
ALTER TABLE `admin_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `admin_boards`
--
ALTER TABLE `admin_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_cities`
--
ALTER TABLE `admin_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_countries`
--
ALTER TABLE `admin_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `admin_districts`
--
ALTER TABLE `admin_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin_subjects`
--
ALTER TABLE `admin_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guardian_profiles`
--
ALTER TABLE `guardian_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `police_stations`
--
ALTER TABLE `police_stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `student_enrolls`
--
ALTER TABLE `student_enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_notices`
--
ALTER TABLE `teacher_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teacher_tranings`
--
ALTER TABLE `teacher_tranings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teaching_classes`
--
ALTER TABLE `teaching_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teaching_places`
--
ALTER TABLE `teaching_places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `techer_educations`
--
ALTER TABLE `techer_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
