-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 23, 2021 at 07:15 AM
-- Server version: 5.7.25
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
-- Database: `test_work_09`
--

-- --------------------------------------------------------

--
-- Table structure for table `departaments`
--

CREATE TABLE `departaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departaments`
--

INSERT INTO `departaments` (`id`, `name`, `staff_count`, `created_at`, `updated_at`) VALUES
(1, 'Отдел закупок', 60, '2021-07-22 10:40:44', '2021-07-23 01:01:00'),
(2, 'Отдел продаж', 42, '2021-07-22 10:40:44', '2021-07-22 11:48:38'),
(3, 'PR-отдел', 47, '2021-07-22 10:40:44', '2021-07-22 11:45:27');

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
(1, '2021_07_20_000001_create_staff_table', 1),
(2, '2021_07_21_000000_create_departaments_table', 1),
(3, '2021_07_21_000002_create_staff_departaments_table', 1),
(4, '2021_07_21_000003_update_staff_dapartament_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` smallint(6) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `departaments` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `first_name`, `last_name`, `middle_name`, `gender`, `salary`, `departaments`, `created_at`, `updated_at`) VALUES
(1, 'Terrence Swift IV', 'Dickinson', NULL, 1, 8378, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(2, 'Ned Gislason II', 'Bartoletti', NULL, 1, 3884, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(3, 'Lucienne Ledner', 'Boyle', NULL, 2, 5454, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(4, 'Adolphus Connelly', 'Donnelly', NULL, 1, 6993, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(5, 'Sammy Wilkinson MD', 'Parker', NULL, 1, 7878, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(6, 'Alisha Abernathy', 'Beier', NULL, 1, 6571, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(7, 'Johnny Wintheiser', 'Erdman', NULL, 2, 3478, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(8, 'Prof. Francis Shanahan MD', 'Kertzmann', NULL, 1, 7083, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(9, 'Eliane Shanahan', 'Bartell', NULL, 1, 9530, '[\"3\"]', '2021-07-22 10:40:43', '2021-07-22 11:48:38'),
(10, 'Ms. Kassandra Hammes', 'Carter', NULL, 2, 5168, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(11, 'Alena Ondricka', 'Rolfson', NULL, 1, 4824, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(12, 'Aliyah Hayes', 'Russel', NULL, 2, 6577, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(13, 'Dannie Hamill', 'Hettinger', NULL, 1, 6890, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(14, 'Prof. Audreanne Langworth', 'Purdy', NULL, 2, 3941, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(15, 'Emmalee Jenkins', 'Schowalter', NULL, 2, 3135, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(16, 'Prof. Abdul Macejkovic', 'Brekke', NULL, 2, 1178, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(17, 'Jonas Wiegand', 'Durgan', NULL, 2, 8167, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(18, 'Virginie Bins', 'Morissette', NULL, 2, 6591, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(19, 'Santina Durgan', 'Quigley', NULL, 2, 3599, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(20, 'Abdullah Osinski', 'Simonis', NULL, 1, 5152, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(21, 'Augusta Upton', 'Veum', NULL, 2, 9580, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(22, 'Mr. Tyrique Kling MD', 'Veum', NULL, 1, 1181, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(23, 'Alfonso Altenwerth', 'Hane', NULL, 1, 7459, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(24, 'Dr. Nicolas Cassin', 'Renner', NULL, 2, 2767, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(25, 'Ole Donnelly', 'Roob', NULL, 1, 8422, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(26, 'Deron Leannon', 'Becker', NULL, 1, 2932, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(27, 'Dr. Zella Crist Sr.', 'Harris', NULL, 2, 3093, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(28, 'Prof. Adela Bashirian', 'Gislason', NULL, 1, 8845, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(29, 'Hailee Fisher DDS', 'Jacobson', NULL, 2, 6495, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(30, 'Ubaldo O\'Conner', 'Hegmann', NULL, 1, 6266, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(31, 'Karley Runolfsson PhD', 'O\'Keefe', NULL, 1, 4710, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(32, 'Lacey Klocko', 'Renner', NULL, 1, 7068, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(33, 'Nya Legros', 'Funk', NULL, 1, 7781, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(34, 'Dr. Norris Senger', 'Schroeder', NULL, 1, 5335, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(35, 'Mr. Royal O\'Hara IV', 'Kirlin', NULL, 1, 4700, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(36, 'Enrique Kub', 'Lubowitz', NULL, 2, 6328, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(37, 'Prof. Herbert Swift', 'Langosh', NULL, 2, 7237, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(38, 'Wayne Ankunding Sr.', 'Connelly', NULL, 2, 1234, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(39, 'Stan Walker IV', 'Heathcote', NULL, 1, 3911, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(40, 'Dr. Marina Goyette', 'Daugherty', NULL, 1, 2593, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(41, 'Russel Quitzon III', 'Pagac', NULL, 1, 2491, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(42, 'Jaylon D\'Amore', 'Kiehn', NULL, 1, 4226, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(43, 'Ansel Stanton', 'Orn', NULL, 2, 2590, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(44, 'Mr. Judson Brown', 'Bayer', NULL, 1, 2411, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(45, 'Lavern Kerluke', 'Herman', NULL, 1, 2461, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(46, 'Lonnie Littel', 'Tillman', NULL, 2, 4152, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(47, 'Dessie Simonis', 'Anderson', NULL, 2, 5482, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(48, 'Chasity Beatty PhD', 'Towne', NULL, 2, 4953, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(49, 'Franz Lueilwitz Jr.', 'Bahringer', NULL, 2, 4325, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(50, 'Trever Oberbrunner', 'Durgan', NULL, 1, 1528, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(51, 'Miss Claire Collins Sr.', 'Koch', NULL, 1, 4764, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(52, 'Dewayne Senger', 'Schinner', NULL, 2, 3028, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(53, 'Emilie Kihn', 'Stanton', NULL, 2, 4222, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(54, 'Mrs. Meredith Maggio DVM', 'Wintheiser', NULL, 1, 2016, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(55, 'Dr. Thora Bradtke Sr.', 'Schmitt', NULL, 1, 5312, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(56, 'Cindy Conn III', 'Bashirian', NULL, 2, 4215, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(57, 'Pink Rowe Jr.', 'McCullough', NULL, 1, 4569, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(58, 'Gustave Williamson', 'O\'Hara', NULL, 2, 4382, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(59, 'Edgar Wisoky', 'Konopelski', NULL, 2, 5787, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(60, 'Jonathan Lebsack', 'Toy', NULL, 2, 1505, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(61, 'Jennyfer Sawayn IV', 'Oberbrunner', NULL, 1, 8315, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(62, 'Mr. Royce Ritchie IV', 'Tillman', NULL, 2, 8399, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(63, 'Mr. Augustus Schmidt', 'Bahringer', NULL, 1, 4588, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(64, 'Prof. Raul Hirthe', 'Zboncak', NULL, 2, 3244, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(65, 'Miss Katheryn Hermann', 'Monahan', NULL, 2, 1510, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(66, 'Leonora O\'Connell', 'Rosenbaum', NULL, 1, 3427, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(67, 'Prof. Anthony Hagenes MD', 'Dickens', NULL, 1, 1892, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(68, 'Adeline Hane', 'Gutmann', NULL, 1, 8490, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(69, 'Miss Dina Bartell', 'Gorczany', NULL, 1, 8841, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(70, 'Kirstin Kautzer', 'Huels', NULL, 2, 1297, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(71, 'Amaya Brekke', 'Dietrich', NULL, 1, 3000, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(72, 'Destiny Kunze', 'Runte', NULL, 2, 6826, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(73, 'Abbigail Hammes', 'Watsica', NULL, 2, 2230, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(74, 'Angus Volkman', 'Bernhard', NULL, 1, 4124, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(75, 'Jana Terry', 'Schumm', NULL, 2, 1320, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(76, 'Ms. Helena Bogan', 'Wuckert', NULL, 2, 2862, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(77, 'Dr. Madie Baumbach DDS', 'Pacocha', NULL, 1, 6418, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(78, 'Fannie Ondricka II', 'Kunze', NULL, 2, 3261, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(79, 'Gaetano Brekke', 'Sanford', NULL, 1, 9290, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(80, 'Nyasia Raynor', 'Walter', NULL, 1, 5602, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(81, 'Francesca Terry', 'Kutch', NULL, 1, 1477, '[2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(82, 'Moriah Casper', 'Gusikowski', NULL, 2, 7748, '[2, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(83, 'Prof. Juana Nicolas', 'Jakubowski', NULL, 2, 1745, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(84, 'Kailey Abernathy', 'Kris', NULL, 2, 7425, '[\"1\"]', '2021-07-22 10:40:43', '2021-07-22 11:47:32'),
(85, 'Terrance Stanton', 'Jakubowski', NULL, 1, 7974, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(86, 'Edyth Berge', 'Ebert', NULL, 2, 5522, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(87, 'Tessie Yost', 'Crooks', NULL, 1, 5641, '[3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(88, 'Florence Klein', 'Wilkinson', NULL, 2, 8600, '[\"1\"]', '2021-07-22 10:40:43', '2021-07-22 11:46:55'),
(89, 'Mr. Madison Leannon DVM', 'Kuvalis', NULL, 2, 1206, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(90, 'Jamel Ullrich', 'Kessler', NULL, 2, 2704, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(91, 'Dena Heathcote', 'Wisoky', NULL, 2, 5384, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(92, 'Eddie Murray', 'Lind', NULL, 1, 1605, '[\"1\"]', '2021-07-22 10:40:43', '2021-07-22 11:46:37'),
(93, 'Maureen Ondricka', 'Corkery', NULL, 1, 2858, '[\"3\"]', '2021-07-22 10:40:43', '2021-07-22 11:12:51'),
(94, 'Prof. Hilton Considine PhD', 'Kunze', NULL, 2, 6995, '[1, 2]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(95, 'Rickie Heller PhD', 'Konopelski', NULL, 2, 5117, '[1]', '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(96, 'Tod Kemmer', 'Kerluke', NULL, 1, 5456, '[\"1\"]', '2021-07-22 10:40:43', '2021-07-22 11:19:03'),
(97, 'Darlene Friesen', 'Kunze', NULL, 1, 1057, '[1, 3]', '2021-07-22 10:40:43', '2021-07-22 10:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `staff_departaments`
--

CREATE TABLE `staff_departaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `departament_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_departaments`
--

INSERT INTO `staff_departaments` (`id`, `staff_id`, `departament_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(2, 1, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(3, 2, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(4, 2, 3, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(5, 3, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(6, 4, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(7, 4, 3, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(8, 5, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(9, 6, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(10, 7, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(11, 7, 3, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(12, 8, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(13, 8, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(15, 9, 3, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(16, 10, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(17, 10, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(18, 11, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(19, 11, 3, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(20, 12, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(21, 13, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(22, 13, 3, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(23, 14, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(24, 14, 3, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(25, 15, 1, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(26, 15, 2, '2021-07-22 10:40:43', '2021-07-22 10:40:43'),
(27, 16, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(28, 16, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(29, 17, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(30, 18, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(31, 19, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(32, 19, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(33, 20, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(34, 20, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(35, 21, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(36, 22, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(37, 23, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(38, 23, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(39, 24, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(40, 24, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(41, 25, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(42, 26, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(43, 27, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(44, 27, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(45, 28, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(46, 29, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(47, 30, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(48, 31, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(49, 32, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(50, 33, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(51, 33, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(52, 34, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(53, 34, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(54, 35, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(55, 35, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(56, 36, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(57, 37, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(58, 37, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(59, 38, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(60, 38, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(61, 39, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(62, 39, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(63, 40, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(64, 41, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(65, 41, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(66, 42, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(67, 43, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(68, 44, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(69, 44, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(70, 45, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(71, 45, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(72, 46, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(73, 46, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(74, 47, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(75, 47, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(76, 48, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(77, 49, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(78, 50, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(79, 50, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(80, 51, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(81, 52, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(82, 52, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(83, 53, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(84, 53, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(85, 54, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(86, 55, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(87, 56, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(88, 57, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(89, 57, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(90, 58, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(91, 58, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(92, 59, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(93, 59, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(94, 60, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(95, 61, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(96, 61, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(97, 62, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(98, 63, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(99, 63, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(100, 64, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(101, 64, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(102, 65, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(103, 65, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(104, 66, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(105, 66, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(106, 67, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(107, 68, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(108, 68, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(109, 69, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(110, 69, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(111, 70, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(112, 71, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(113, 71, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(114, 72, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(115, 72, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(116, 73, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(117, 74, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(118, 74, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(119, 75, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(120, 76, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(121, 76, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(122, 77, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(123, 77, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(124, 78, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(125, 78, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(126, 79, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(127, 80, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(128, 80, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(129, 81, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(130, 82, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(131, 82, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(132, 83, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(134, 85, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(135, 86, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(136, 87, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(138, 89, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(139, 89, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(140, 90, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(141, 91, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(142, 91, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(143, 92, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(146, 94, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(147, 94, 2, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(148, 95, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(149, 96, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(150, 97, 1, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(151, 97, 3, '2021-07-22 10:40:44', '2021-07-22 10:40:44'),
(159, 93, 3, '2021-07-22 11:03:54', '2021-07-22 11:03:54'),
(164, 88, 1, '2021-07-22 11:46:55', '2021-07-22 11:46:55'),
(165, 84, 1, '2021-07-22 11:47:32', '2021-07-22 11:47:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departaments_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_departaments`
--
ALTER TABLE `staff_departaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_departaments_staff_id_foreign` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `staff_departaments`
--
ALTER TABLE `staff_departaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `staff_departaments`
--
ALTER TABLE `staff_departaments`
  ADD CONSTRAINT `staff_departaments_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
