-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 09:33 AM
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
(4, 'Chittagong', '#8080ff', 1, '2019-09-20 02:15:54', '2019-09-20 03:59:19'),
(7, 'Kumilah', '#408080', 1, '2019-09-20 16:44:05', '2019-09-20 16:44:13'),
(8, 'Kulna', '#000000', 1, '2019-09-24 06:22:01', '2019-09-24 06:22:01'),
(9, 'Borisal', '#ff0000', 1, '2019-09-24 06:22:12', '2019-09-24 06:22:12'),
(10, 'Perason Edexcel', '#aaae11', 1, '2019-09-24 06:38:09', '2019-09-24 06:38:31');

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
(1, 'Pakistan', 1, '2019-09-20 21:08:59', '2019-09-20 21:55:17'),
(3, 'Bangladesh', 1, '2019-09-25 06:39:44', '2019-09-25 06:39:44'),
(4, 'India', 1, '2019-09-25 06:39:50', '2019-09-25 06:39:50'),
(5, 'United State', 1, '2019-09-25 06:39:56', '2019-09-25 06:39:56'),
(6, 'Mayanmar', 1, '2019-09-25 06:40:02', '2019-09-25 06:40:02'),
(7, 'China', 1, '2019-09-25 06:40:06', '2019-09-25 06:40:06'),
(8, 'England', 1, '2019-09-25 06:40:15', '2019-09-25 06:40:15'),
(9, 'South Africa', 1, '2019-09-25 06:40:24', '2019-09-25 06:40:24'),
(10, 'Srilanka', 1, '2019-09-25 06:40:44', '2019-09-25 06:40:44'),
(11, 'japan', 1, '2019-09-25 06:40:53', '2019-09-25 06:41:35'),
(12, 'Eran', 1, '2019-09-25 06:40:59', '2019-09-25 06:40:59'),
(13, 'Erak', 1, '2019-09-25 06:41:05', '2019-09-25 06:41:05'),
(14, 'Soudi Arobia', 1, '2019-09-25 06:41:15', '2019-09-25 06:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_districts`
--

CREATE TABLE `admin_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_districts`
--

INSERT INTO `admin_districts` (`id`, `district_name`, `board_id`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Dhaka', 4, '1', '2019-09-20 16:58:15', '2019-09-20 16:58:15'),
(8, 'Thakurgaon', 7, '1', '2019-09-20 16:58:25', '2019-09-20 16:58:25');

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
(15, 'Bengoli', '4', NULL, 1, '2019-09-24 06:20:11', '2019-09-24 06:20:11'),
(16, 'English', '4', NULL, 1, '2019-09-24 06:20:21', '2019-09-24 06:20:21'),
(17, 'Math', '7', NULL, 1, '2019-09-24 06:20:28', '2019-09-24 06:20:28'),
(18, 'Math3', '4', NULL, 1, '2019-09-24 06:20:45', '2019-09-24 06:20:45'),
(19, 'Math 6', '4', NULL, 1, '2019-09-24 06:20:51', '2019-09-24 06:20:51'),
(20, 'Computer', '8', NULL, 1, '2019-09-24 06:22:26', '2019-09-24 06:22:26'),
(21, 'Networking', '9', NULL, 1, '2019-09-24 06:22:44', '2019-09-24 06:22:44'),
(22, 'English', '8', NULL, 1, '2019-09-24 06:23:01', '2019-09-24 06:23:01');

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
(42, '2019_09_26_101515_create_teaching_places_table', 13);

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
-- Table structure for table `police_stations`
--

CREATE TABLE `police_stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `police_station` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `police_stations`
--

INSERT INTO `police_stations` (`id`, `police_station`, `district_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Mohammodpur', 7, 1, '2019-09-25 06:38:01', '2019-09-25 06:38:01'),
(10, 'Sahbag', 7, 1, '2019-09-25 06:38:14', '2019-09-25 06:38:14'),
(11, 'Kamrangicor', 7, 1, '2019-09-25 06:38:28', '2019-09-25 06:38:28'),
(12, 'Gabtoli', 7, 1, '2019-09-25 06:38:42', '2019-09-25 06:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `teacher_profiles` (`id`, `user_id`, `type`, `photo`, `name`, `init_name`, `birth_date`, `gender`, `address`, `area`, `city`, `police_station`, `district`, `country`, `phone`, `email`, `website`, `facebook`, `twitter`, `other_link`, `teaching_level`, `teaching_class`, `teaching_subject`, `teaching_since`, `present_school`, `present_joining_date`, `present_position`, `last_school`, `last_joning_date`, `last_position`, `total_student`, `routine`, `office_contact_number`, `teacher_education`, `teaching_place`, `coaching_establish_date`, `other_subject`, `about`, `traning`, `master_degree_ins`, `master_degree_major`, `master_degree_yar`, `bachelor_degree_ins`, `bachelor_degree_major`, `bachelor_degree_year`, `alavel_or_hsc_ins`, `alavel_or_hsc_major`, `alavel_or_hsc_year`, `olavel_or_ssc_ins`, `olavel_or_ssc_major`, `olavel_or_ssc_year`, `payment_status`, `created_at`, `updated_at`) VALUES
(10, 28, 'school teacher', 'photo_1569653354.png', 'shamim hasan', 'sm', '2019-09-18', 'male', 'School Teacher,Freelance Teacher,House Tutor', NULL, NULL, '10', NULL, NULL, '01794939992', 'shamim@gmail.com', 'shamim@gmail.com', 'https://facebook.com', 'https://twitter.com', 'https://www.other.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-03', 'Bangla, English, Math', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis rhoncus sed enim vel lobortis. Maecenas id tortor tincidunt dui egestas vehicula at vitae tellus. Sed ac risus ac nisl pharetra consectetur nec a lectus. Morbi quis erat et urna finibus maximus. Ut et aliquet neque, non gravida urna. Nullam semper consequat magna non faucibus. Aliquam vitae metus lobortis, tristique eros vel, vestibulum felis.Mauris facilisis sit amet libero nec facilisis. Proin eu dapibus ante. Praesent lobortis eget eros et bibendum. Proin id mollis urna. Nunc id molestie elit. Nam egestas venenatis orci a viverra. Etiam dignissim, ex nec convallis luctus, nisi sapien maximus est,eget porta est sapien a dui. Integer posuere feugiat augue ut tristique. Vivamus accumsan eros eu quam dignissim, ut volutpat arcu fringilla.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-09-28 00:49:14'),
(15, 30, 'house tutor', 'photo_1569651417.png', 'Abdur Rashid', 'Abdur Rashid', '2019-09-10', 'male', 'Momtaz Plaza (4th floor), House#7, Road#4 Opposite of Labaid Hospital, Dhaka 1205', 'Dhaka', 'Dhaka', '10', '7', '12', '+8801794939991', 'shamim@gmail.com', 'shamim@gmail.com', 'www.facebook.com/shamimtpi', 'htpp://www.codepopular.com', 'https://twitter.com', 'O Level', '2', '18', '2002', 'The Study Town', '2019-09-03', 'English head', 'ESS', '2019-09-25', 'Engslish head', 20, 'routine_1569647079.jpg', '+8801794939992', NULL, NULL, '2019-09-10', 'Math, English', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis rhoncus sed enim vel lobortis. Maecenas id tortor tincidunt dui egestas vehicula at vitae tellus. Sed ac risus ac nisl pharetra consectetur nec a lectus. Morbi quis erat et urna finibus maximus. Ut et aliquet neque, non gravida urna. Nullam semper consequat magna non faucibus. Aliquam vitae metus lobortis, tristique eros vel, vestibulum felis.Mauris facilisis sit amet libero nec facilisis. Proin eu dapibus ante. Praesent lobortis eget eros et bibendum. Proin id mollis urna. Nunc id molestie elit. Nam egestas venenatis orci a viverra. Etiam dignissim, ex nec convallis luctus, nisi sapien maximus est,eget porta est sapien a dui. Integer posuere feugiat augue ut tristique. Vivamus accumsan eros eu quam dignissim, ut volutpat arcu fringilla.', NULL, 'Khulna Girls\' High School and College', 'SSC', '1986', 'Khulna Girls\' High School and College', 'HSC', '1999', ': Dhaka University', 'Science', '1991', 'MA(Masters) University', 'Bangla', '1992', 1, NULL, '2019-09-28 01:18:24');

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
(3, 30, '2019-09-11', 'Pearson Edexcel', 'Translation', '3 Days', 'Reapson Edexcel, Dhaka', 'Peapson Edexcel, Dhaka', 'Shahana Hossain', 'BRAC, Dhaka', '2019-09-27 22:48:46', '2019-09-27 22:48:46');

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
(1, 'Class One', 1, '2019-09-20 02:16:32', '2019-09-20 02:16:32'),
(2, 'Class 2', 1, '2019-09-20 02:16:37', '2019-09-20 02:16:37'),
(3, 'Class 3', 1, '2019-09-20 02:16:45', '2019-09-24 01:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_places`
--

CREATE TABLE `teaching_places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `coaching_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Landmark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_office` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teaching_places`
--

INSERT INTO `teaching_places` (`id`, `user_id`, `coaching_name`, `house`, `Landmark`, `post_office`, `post_code`, `map`, `area`, `district`, `country`, `created_at`, `updated_at`) VALUES
(1, 30, 'Creative Education', '338/ A, Danmondi', 'Katasur', 'Mohammodpur', '1206', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.1703918980825!2d90.38039151452398!3d23.74130248459384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b7a55cd36f%3A0xfcc5b021faff43ea!2sCreative%20IT%20Institute!5e0!3m2!1sen!2sbd!4v1568804774459!5m2!1sen!2sbd\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '9', '7', '3', '2019-09-27 21:16:41', '2019-09-27 22:44:42'),
(2, 28, 'New caocaching', 'hello house', 'landmark area', 'post office', '3434', 'google map address here', '9', '7', '10', '2019-09-27 21:17:30', '2019-09-27 21:17:30'),
(3, 30, 'this is my coaching place', 'house no', 'landimark', 'post offfice', 'post ocde', 'sdfsdfdsf', '10', '7', '12', '2019-09-27 21:26:22', '2019-09-27 21:26:22');

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
(3, 'student', 'student@gmail.com', 1, '+8801794539991', NULL, '$2y$10$Hx/VSnqROO9YRDht8YTmG.iHevLTpwR0BOc4TwhddoNoL3ptWEyUm', NULL, 1, '2019-09-27 04:13:01', '2019-09-27 04:13:01'),
(13, 'st@gmail.com', 'st@gmail.com', 1, '3444444444', NULL, '$2y$10$sAYv8LEola7zblTTTcMW5uZc953hO6ZLcq2PVntsYNqHQuzcOO8/K', NULL, 1, '2019-09-27 19:02:03', '2019-09-27 19:02:03'),
(28, 'teacher2', 'teacher2@gmail.com', 2, '324324324', NULL, '$2y$10$mFA8xSRTk6kQAx7XNzBkAuuwBxeNz8FRI57.wQI8rjXWllBlWlYEm', NULL, 1, '2019-09-27 20:06:36', '2019-09-27 20:06:36'),
(30, 'teacher', 'teacher@gmail.com', 2, '234324234', NULL, '$2y$10$8YZMzF1e5S26FnG8NsIaNORyfRD/FR2xILmbpefxCmwKjM6fgYHJu', NULL, 1, '2019-09-27 21:06:29', '2019-09-27 21:06:29');

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
-- Indexes for table `admin_boards`
--
ALTER TABLE `admin_boards`
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
-- AUTO_INCREMENT for table `admin_boards`
--
ALTER TABLE `admin_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_countries`
--
ALTER TABLE `admin_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_districts`
--
ALTER TABLE `admin_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_subjects`
--
ALTER TABLE `admin_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `police_stations`
--
ALTER TABLE `police_stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teacher_tranings`
--
ALTER TABLE `teacher_tranings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teaching_classes`
--
ALTER TABLE `teaching_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teaching_places`
--
ALTER TABLE `teaching_places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `techer_educations`
--
ALTER TABLE `techer_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;