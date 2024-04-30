-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 04:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `phone`, `doctor`, `date`, `fee`, `message`, `status`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(8, 'Shakil Shakil', 'shakil3300bd@gmail.com', '01784918947', 'Md Abu Sama', '2023-08-23', '500', 'iuhgashfas', 'Approved', '1', '1', '2023-08-21 15:39:11', '2023-08-21 19:23:16'),
(9, 'MD Abdullah Al', 'shakil3300bd@gmail.com', '01517868256', 'Abu Shaleh', '2023-08-24', '700', 'ghfuidjfnf', 'Completed', '1', '2', '2023-08-21 15:39:56', '2023-08-21 16:53:09'),
(12, 'MD. Abdulllah Al Shakil', 'shakil3300bd@gmail.com', '01517868256', 'Md Abu Sama', '2023-08-25', '500', 'hgsdhjhsdjdg', 'Completed', '1', '1', '2023-08-21 15:59:29', '2023-08-21 16:46:57'),
(13, 'MD SABBIR AHMED', 'shakil3300bd@gmail.com', '01517868256', 'Abu Shaleh', '2023-08-24', '700', 'Hello', 'Canceled', '2', '2', '2023-08-21 19:23:45', '2024-04-26 14:41:02'),
(14, 'MD ABDULLAH AL SHAKIL', 'shakil3300bd@gmail.com', '01716610045', 'Abu Shaleh', '2023-08-26', '700', 'Hello', 'Approved', '2', '2', '2023-08-24 13:36:39', '2023-08-24 13:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_histories`
--

CREATE TABLE `appointment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `fee` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_histories`
--

INSERT INTO `appointment_histories` (`id`, `username`, `email`, `phone`, `user_id`, `doctor`, `doctor_id`, `fee`, `message`, `status`, `appointment_id`, `created_at`, `updated_at`) VALUES
(11, 'Test', 'ankulyadav9001@gmail.com', '9336879087', 2, 'Abu Shaleh', 2, '700', 'Hello', 'Completed', 15, '2023-08-24 13:40:40', '2023-08-24 13:40:40'),
(12, 'Test', 'ankulyadav9001@gmail.com', '9336879087', 2, 'Abu Shaleh', 2, '700', 'Hello', 'Completed', 15, '2024-04-26 14:40:44', '2024-04-26 14:40:44'),
(13, 'Test', 'ankulyadav9001@gmail.com', '9336879087', 2, 'Abu Shaleh', 2, '700', 'Hello', 'Completed', 15, '2024-04-26 14:40:54', '2024-04-26 14:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `blog_type` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=Published, 0=Published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category`, `title`, `slug`, `image`, `description`, `blog_type`, `date`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'COVID-19 Risk Management', 'covid-19-risk', 'admin-assets/assets/image/blog/1635437994.jpg', 'Walking (also known as ambulation) is one of the main gaits of terrestrial locomotion among legged animals. Walking is typically slower than running and other gaits. Walking is defined by an \'inverted pendulum\' gait in which the body vaults over the stiff limb or limbs with each step. This applies regardless of the usable number of limbs—even arthropods, with six, eight, or more limbs, walk.', 'latest', '2023-08-18', 1, '2023-08-16 16:58:55', '2023-08-16 16:58:55'),
(3, 2, 'Walking daily new', 'Walking-daily-new', 'admin-assets/assets/image/blog/924720193.jpg', 'Walking (also known as ambulation) is one of the main gaits of terrestrial locomotion among legged animals. Walking is typically slower than running and other gaits. Walking is defined', 'latest', '2023-08-19', NULL, '2023-08-16 17:44:41', '2023-08-17 12:10:21'),
(4, 2, 'Hello world new', 'Hello-world-new', 'admin-assets/assets/image/blog/1531185272.jpg', 'cgdhcdhc  dchuidshcgduifduiacfyhsduia hghasuihcfasduhcuiasd hghsdhdcsgh', 'latest', '2023-08-18', NULL, '2023-08-17 11:28:55', '2023-08-17 12:06:33'),
(5, 2, 'Youga Dialy', 'Youga-Dialy', 'admin-assets/assets/image/blog/1234313417.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'latest', '2023-08-22', 1, '2023-08-21 10:27:12', '2023-08-21 10:27:12'),
(6, 2, 'Meditation', 'Meditation', 'admin-assets/assets/image/blog/79039071.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'popular', '2023-08-22', 1, '2023-08-21 10:28:18', '2023-08-21 10:28:18'),
(7, 2, 'Daily Gym', 'Daily-Gym', 'admin-assets/assets/image/blog/875648951.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'trending', '2023-08-21', 1, '2023-08-21 10:28:44', '2023-08-21 10:28:44'),
(8, 2, 'Fitness is Necessary', 'Fitness-is-Necessary', 'admin-assets/assets/image/blog/1823735945.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'trending', '2023-08-22', 1, '2023-08-21 10:29:37', '2023-08-21 10:29:37'),
(9, 2, 'Happy Lunch', 'Happy-Lunch', 'admin-assets/assets/image/blog/839915877.jpg', 'sdvfdhbg dfhdbfuyhfcuydh', 'latest', '2023-08-22', 1, '2023-08-21 11:28:11', '2023-08-21 11:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COVID-19', 1, '2023-08-16 15:31:51', '2023-08-16 15:31:51'),
(2, 'Fitness', 1, '2023-08-16 15:50:27', '2023-08-16 15:50:27'),
(3, 'Jogging', 1, '2023-08-16 15:50:37', '2023-08-16 15:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'Ankul Yadav', 'ankulyadav9001@gmail.com', 'TEST', 'test', 'In Progress', NULL, '2024-04-28 12:12:04', '2024-04-28 12:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `phone`, `speciality`, `room`, `time`, `day`, `fee`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Adda Sharma', '01716610045', 'Heart', '212', '10:00 AM to 03:00PM', 'Friday, Sunday, Tuesday', '500', 'ihfdscjh d hfuiodhivjhdiovj fhdiosjhviuoafhv hfuiahfvuio hvuifdvhuiodvhiupfh', 'admin-assets/assets/doctor-image/545912530.jpg', '2023-08-21 13:15:00', '2024-04-26 14:40:23'),
(2, 'Dr. Salman Khan', '7896541230', 'Heart', '1', '10:00 AM to 03:00PM', 'Friday, Sunday, Tuesday', '500', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'admin-assets/assets/doctor-image/1045630145.jpg', '2023-08-21 13:17:47', '2024-04-26 14:25:19'),
(3, 'Dr. Raju Devi', '9129757127', 'Skin', '1', '10:00', '9', '500', 'Dr. Raju Devi embodies the epitome of expertise and empathy in the realm of dermatology. With her years of specialized training and unwavering dedication to skincare, she stands as a beacon of hope for those seeking solutions to their dermatological concerns.', 'admin-assets/assets/doctor-image/580204021.jpg', '2024-04-26 13:01:27', '2024-04-26 13:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `sku`, `price`, `quantity`, `description`, `image`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Package 01', 'E002FC', '250', 98, 'Yammy!!', 'admin-assets/assets/food/1930144678.jpg', NULL, NULL, '2023-08-17 05:04:27', '2023-08-17 05:04:27'),
(2, 'Package 02', 'E002FC', '300', 100, 'Yammy!!', 'admin-assets/assets/food/10278888.webp', NULL, NULL, '2023-08-17 05:05:06', '2023-08-17 05:05:06'),
(3, 'Mineral Water', '2001M', '30', 100, 'Fresh drink', 'admin-assets/assets/food/800055744.jpg', NULL, NULL, '2023-08-21 10:34:09', '2023-08-21 10:34:09'),
(4, 'Item 01', 'Q001M', '350', 100, 'Testy', 'admin-assets/assets/food/9510909.jpg', NULL, NULL, '2023-08-21 10:34:40', '2023-08-21 10:34:40'),
(5, 'Item 04', 'Q001MS', '300', 60, 'Spicy!!!', 'admin-assets/assets/food/859673162.jpg', NULL, NULL, '2023-08-21 10:35:13', '2023-08-21 10:35:13'),
(6, 'Item 05', 'V10SQ', '120', 100, 'Testy', 'admin-assets/assets/food/1089855988.jpg', NULL, NULL, '2023-08-21 10:35:40', '2023-08-21 10:35:40'),
(7, 'Item 011', 'Q001M', '100', 100, 'Yammy', 'admin-assets/assets/food/402623995.jpg', NULL, NULL, '2023-08-21 11:25:36', '2023-08-21 11:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `name`, `code`, `price`, `room`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Test ', 'IZYGBO', '77', '12', 'cdfvfgbv', '2023-08-24 19:32:57', '2023-08-24 19:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `lab_carts`
--

CREATE TABLE `lab_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_orders`
--

CREATE TABLE `lab_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medi_carts`
--

CREATE TABLE `medi_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medi_orders`
--

CREATE TABLE `medi_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `delivery_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_14_202635_create_sessions_table', 1),
(9, '2023_08_15_175922_create_notifications_table', 4),
(17, '2023_08_15_204354_create_contacts_table', 7),
(19, '2023_08_16_211158_create_categories_table', 8),
(21, '2023_08_16_204115_create_blogs_table', 9),
(30, '2023_08_17_002928_create_food_table', 12),
(31, '2023_08_17_050210_create_orders_table', 13),
(32, '2023_08_15_000441_create_doctors_table', 14),
(34, '2023_08_15_023958_create_appointments_table', 15),
(35, '2023_08_21_222218_create_appointment_histories_table', 16),
(39, '2014_10_12_000000_create_users_table', 17),
(41, '2023_08_24_185030_create_pres_table', 18),
(43, '2023_08_24_204349_create_pharmachies_table', 19),
(46, '2023_08_24_213233_create_labs_table', 20),
(47, '2023_08_25_002119_create_lab_carts_table', 21),
(50, '2023_08_25_010156_create_lab_orders_table', 22),
(56, '2023_08_25_045642_create_medi_carts_table', 23),
(58, '2023_08_25_055345_create_medi_orders_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `food_name`, `food_price`, `quantity`, `person_name`, `phone`, `room`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'Item 01', '3500', '10', 'MD Abdullah Al Shakil', '01517868256', '406', 'cancelled', '1', '2023-08-21 11:03:36', '2024-04-26 14:42:05'),
(9, 'Item 04', '1500', '5', 'MD Abdullah Al Shakil', '01517868256', '512', 'cancelled', '2', '2023-08-21 19:47:09', '2024-04-26 21:48:17'),
(10, 'Item 05', '240', '2', 'Md Abu Sama', '01716610045', '512', NULL, '2', '2023-09-04 02:40:38', '2023-09-04 02:40:38'),
(11, 'Item 01', '3500', '10', 'Md Abu Sama', '01716610045', '510', NULL, '2', '2023-09-04 03:20:01', '2023-09-04 03:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('shakil3300bd@gmail.com', '$2y$10$/FhibQY9NgGnmnvyAZzYjOnRtsJvEZYMIdhiy2WTYzfbzxx5dV4ka', '2023-08-15 11:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmachies`
--

CREATE TABLE `pharmachies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmachies`
--

INSERT INTO `pharmachies` (`id`, `name`, `code`, `price`, `quantity`, `description`, `image`, `vendor`, `date`, `created_at`, `updated_at`) VALUES
(2, 'Napa', 'dfhj', '6237', '8364', 'bdhfdifyuiy', 'admin-assets/assets/food/143428814.png', 'Beximco', '2023-08-26', '2023-08-24 15:04:49', '2023-08-24 15:04:49'),
(4, 'shakil', 'IZYGBO', '55', '324', 'hvdjvdivjhiopjvhkv iopejh', 'admin-assets/assets/food/1718406533.png', 'fdf', '2023-08-26', '2023-08-24 15:07:00', '2023-08-24 15:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `pres`
--

CREATE TABLE `pres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `d_phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `medicines` text DEFAULT NULL,
  `tests` text DEFAULT NULL,
  `advice` varchar(255) DEFAULT NULL,
  `age` varchar(255) NOT NULL,
  `appointment_id` varchar(255) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `appointmenthistory_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `current_datetime` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pres`
--

INSERT INTO `pres` (`id`, `p_name`, `sex`, `d_phone`, `email`, `d_name`, `medicines`, `tests`, `advice`, `age`, `appointment_id`, `doctor_id`, `appointmenthistory_id`, `user_id`, `fee`, `current_datetime`, `created_at`, `updated_at`) VALUES
(1, 'MD Abdullah Al', 'Male', '01517868256', 'shakil3300bd@gmail.com', 'Abu Shaleh', 'bfhsdjhs', 'uihvhihv', 'hghgd', '20', '9', '2', '2', '1', '700', '2023-08-24 19:22:50', '2023-08-24 13:22:58', '2023-08-24 13:22:58'),
(2, 'MD Abdullah Al', 'Male', '01517868256', 'shakil3300bd@gmail.com', 'Abu Shaleh', 'hfgsdjklfh\r\nsdfjhdsjhsdb\r\nfuhygsdahcgdsjg', 'gvhvj\r\nhfghsdg\r\nsdjhfgvsdh', NULL, '-1', '9', '2', '2', '1', '700', '2023-08-24 19:27:03', '2023-08-24 13:27:21', '2023-08-24 13:27:21'),
(3, 'MD Abdullah Al', 'Male', '01517868256', 'shakil3300bd@gmail.com', 'Abu Shaleh', 'ghdv', NULL, NULL, '22', '9', '2', '2', '1', '700', '2023-08-24 19:28:22', '2023-08-24 13:29:02', '2023-08-24 13:29:02'),
(4, 'Test', 'Male', '01716610045', 'shakil3300bd@gmail.com', 'Abu Shaleh', 'gvhjfhji', 'jhfbasdjkfh', 'bsdjfdfjvbhh', '22', '15', '2', '11', '2', '700', '2023-08-24 19:41:01', '2023-08-24 13:41:11', '2023-08-24 13:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AkBv42L61VUFvPp3M74IkRfjp9piLF8AWECKQpCp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0tDNDV0VVhSRDh6Q3g2S1R6ZUxnaVBjV2VEcjNkWEF5VEVBVk04SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714369069),
('FvheO2E2yzmmHyzFQ4fyTfGF8l2wyNHrTarhV6gl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWg3UXdpNmpOZElTam53cDNiTmxUUE12azdEOHRsZnlneGt4OTFzTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714327836),
('qb1WDCK76P42EkkGXZkjXiyBgTFHUX0ghIJRCE1d', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTV0dVg3SWl3NnBuRmdhQ2lxdmswTXVHRGxJWlR4WmNmQ1JWVHRnayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714369064),
('ro3QbPwW5LmKdScG9nGseVm2uTqSuqImB5W2enwD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjJwUlY5TEhWZkdWdkNJVGlQSmdURHVTUUE4YUlJUmJ1dzVnOFlpOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MCI7fX0=', 1714327944);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `doctor_id`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '9632587410', 'Lucknow', '1', '2023-08-21 17:53:37', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2023-08-21 17:52:29', '2024-04-26 14:19:54'),
(2, 'user', 'user@gmail.com', '7896541230', 'UP', '0', '2023-08-21 18:01:45', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2023-08-21 18:00:59', '2023-08-21 18:01:45'),
(4, 'Food', 'food1@gmail.com', '7896541230', 'asdfasd', '3', NULL, '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', '', NULL, NULL, NULL, '2023-08-21 18:26:55', '2023-08-21 18:26:55'),
(5, 'Doctor-02', 'doctor@gmail.com', '12345678', 'uhhfdjiwhfuig', '2', '2023-08-21 18:45:26', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', '2', NULL, NULL, NULL, '2023-08-21 18:29:12', '2023-08-21 18:45:26'),
(6, 'Diet Manager', 'diet@gmail.com', '7412589630', 'lucknow', '3', '2023-08-24 16:43:10', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2023-08-24 16:42:20', '2024-04-26 14:20:28'),
(7, 'Reciptionist', 'reciptionist@gmail.com', '01517868256', 'asdfqwe', '4', '2023-08-24 16:45:55', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2023-08-24 16:44:59', '2023-08-24 16:45:55'),
(8, 'Rakesh', 'rakesh@gmail.coim', '01517868256', 'Punjab', '4', '2023-08-24 16:49:43', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2023-08-24 16:48:54', '2024-04-26 14:14:33'),
(15, 'Rahul Rana', 'labtest@gmail.com', '9874563210', 'Lucknow', '5', '2023-09-04 02:38:11', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2023-08-31 22:58:45', '2024-04-26 14:13:11'),
(19, 'Ankul Yadav', 'ankulyadav9001@gmail.com', '9336879087', 'Gindan Khera, Amausi , Sarojini Nagar ,Lucknow', '1', '2024-04-26 12:00:00', '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2024-04-26 11:59:12', '2024-04-26 12:00:00'),
(20, 'Dr. Pinki Guard', 'pinki@gmail.com', '9336879087', 'Lucknow', '5', NULL, '$2y$10$Ws0tQ6x1YkRm/4f5HxQHE.IqBo7CPysmSM.GXxe6bHWmw36t9RRam', NULL, NULL, NULL, NULL, '2024-04-26 14:01:14', '2024-04-26 14:12:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_histories`
--
ALTER TABLE `appointment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_carts`
--
ALTER TABLE `lab_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_orders`
--
ALTER TABLE `lab_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medi_carts`
--
ALTER TABLE `medi_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medi_orders`
--
ALTER TABLE `medi_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pharmachies`
--
ALTER TABLE `pharmachies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `appointment_histories`
--
ALTER TABLE `appointment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lab_carts`
--
ALTER TABLE `lab_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lab_orders`
--
ALTER TABLE `lab_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medi_carts`
--
ALTER TABLE `medi_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medi_orders`
--
ALTER TABLE `medi_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmachies`
--
ALTER TABLE `pharmachies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pres`
--
ALTER TABLE `pres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
