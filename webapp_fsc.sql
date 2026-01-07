-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2026 at 03:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp_fsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL DEFAULT 'Ariena Sofea',
  `matric_number` varchar(255) NOT NULL,
  `sport_type` varchar(255) NOT NULL,
  `court_number` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `time_slot` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Confirmed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_name`, `matric_number`, `sport_type`, `court_number`, `booking_date`, `time_slot`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Maiya', '3801459', 'badminton', 1, '2026-01-08', '2:00pm - 3:00pm', 'Check-In', '2026-01-07 11:41:58', '2026-01-07 11:42:54'),
(2, 'Nor Marcelino', 'ST53084', 'netball', 1, '2026-01-07', '5:00pm - 6:00pm', 'Cancelled', '2026-01-07 11:45:44', '2026-01-07 11:46:01'),
(5, 'Nor Coty', '8142240', 'netball', 1, '2026-01-07', '8:30pm - 9:30pm', 'Check-In', '2026-01-07 13:32:51', '2026-01-07 13:33:08'),
(7, 'Nor Coty', '8142240', 'badminton', 1, '2026-01-07', '9:30pm - 10:30pm', 'Cancelled', '2026-01-07 13:38:20', '2026-01-07 13:40:00'),
(8, 'Wan Gregg', '4003684', 'badminton', 1, '2026-01-08', '3:00pm - 4:00pm', 'Check-In', '2026-01-07 13:54:45', '2026-01-07 13:55:07');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2026_01_02_091742_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('a4xV5W6eIdgxyaoUJHx7xmVydCHz7fixhttQTEJL', 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMEQ0cHIxc1prVDlKeEdwUFE2N3JjUjlrNHVBeHhqQjlLMng4R2Y1dSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdGFmZi9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MzE7fQ==', 1767787937),
('DQXGPVTKCXG0aYwCadjb7zNNKZ3Lr630Chomd4Q3', 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia25EdFpvR3ZDcExLTlBEV2xhRGRNSURIdmVaM3p6UnY4c1JkbU92WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50L2hvbWUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyNTt9', 1767794088),
('Fo5FgsRVRZBPDD8q3V8hqIfe4kXrHiMMdJ70PEtK', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjR5VVlBWkNEMThtaDhQWW5jajVJOXJueE5idDl6cnB6dnd5Qlp1RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdGFmZi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1767794107);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `matric_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'student',
  `profile_photo` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `matric_number`, `password`, `role`, `profile_photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Aiden', 'vcasper@example.org', '2026-01-07 11:41:02', 'ST58192', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'SuBYyBl9RUld97TJbQXRdfrRvgI64fxWnhyzOXHdCJ4GTwIWYmXsRxSPC1pK', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(2, 'Nor Carrie', 'carmela.ratke@example.org', '2026-01-07 11:41:03', 'ST71576', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'srmp6nufK1', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(3, 'Ahmad Helen', 'wjast@example.com', '2026-01-07 11:41:03', 'ST06502', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'EaDzgNWA7l', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(4, 'Nor Henri', 'langosh.jensen@example.net', '2026-01-07 11:41:03', 'ST83328', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'evzWuOFrjI', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(5, 'Muhammad Breanna', 'qframi@example.com', '2026-01-07 11:41:03', 'ST67311', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'i0XFujv77e', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(6, 'Abdul Marcella', 'aurelia60@example.org', '2026-01-07 11:41:03', 'ST05530', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'O3Y66kZjrq', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(7, 'Ahmad Emery', 'cristobal86@example.com', '2026-01-07 11:41:03', 'ST19847', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'AnJHCriI7S', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(8, 'Nor Marcelino', 'jailyn.padberg@example.org', '2026-01-07 11:41:03', 'ST53084', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'Fo47Padv1TJxrbBJkNr9Mz8rX3aeE0BDAUa0nFQD4Yvlo0tDPqFMATNCuJBN', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(9, 'Nur Josh', 'jon.schmitt@example.com', '2026-01-07 11:41:03', 'ST56677', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'fNesmw1gUk', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(10, 'Nor Alfonso', 'guiseppe.dickinson@example.net', '2026-01-07 11:41:03', 'ST37343', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'staff', NULL, 'IqahRqwf8G', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(11, 'Nor Coty', 'klocko.alberto@example.org', '2026-01-07 11:41:03', '8142240', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'UcQn9B5YKFCbr3bJylgw51kHG9ODtlaXdrAS9qGLmpcXRqH84Pjpa74aXpny', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(12, 'Mohd Candelario', 'sidney.schmidt@example.com', '2026-01-07 11:41:03', '8827509', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'FX2mEogSMH', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(13, 'Abdul Amos', 'fbechtelar@example.org', '2026-01-07 11:41:03', '8761283', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'QtRQFsz1xsHhLQPlPyR5myKIYSQgVlFSLqgv6YBNh0BX9FEuDhqBESTj58TF', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(14, 'Muhammad Sonia', 'izulauf@example.net', '2026-01-07 11:41:03', '8245389', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'iGMQ5PWxED', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(15, 'Abdul Bridgette', 'stanton.ward@example.net', '2026-01-07 11:41:03', '9950667', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'yjD3cWClKA', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(16, 'Ahmad Franco', 'eprosacco@example.com', '2026-01-07 11:41:03', '1233937', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'YQPytDCrLu', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(17, 'Wan Kobe', 'torrance17@example.com', '2026-01-07 11:41:03', '6251768', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'iobKO3iE4v', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(18, 'Ahmad Maiya', 'thalia98@example.com', '2026-01-07 11:41:03', '3801459', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'oSwiqTVJMH', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(19, 'Siti Christopher', 'mward@example.net', '2026-01-07 11:41:03', '5884496', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'GjNDzB6aTy', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(20, 'Siti Sarina', 'fay.nasir@example.com', '2026-01-07 11:41:03', '6621606', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'c8NGGTmnE1', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(21, 'Siti Mozelle', 'tberge@example.net', '2026-01-07 11:41:03', '4842840', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'BGFW3IQz69', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(22, 'Nor Eli', 'vschuster@example.org', '2026-01-07 11:41:03', '8968016', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'zVdILWnw3r', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(23, 'Mohd Aric', 'dkulas@example.com', '2026-01-07 11:41:03', '2559787', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'S07UTsdyQI', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(24, 'Nur Wayne', 'elouise90@example.com', '2026-01-07 11:41:03', '7906595', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, '80pAWCknkJ', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(25, 'Wan Gregg', 'tdamore@example.net', '2026-01-07 11:41:03', '4003684', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'VM3WQNc2r0', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(26, 'Siti Ebony', 'marlee39@example.com', '2026-01-07 11:41:03', '0426975', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'Ey6Cf5D549', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(27, 'Ahmad Dangelo', 'geovanni.trantow@example.com', '2026-01-07 11:41:03', '1113444', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'jaXtrRfIQY', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(28, 'Nor Haven', 'ayla33@example.com', '2026-01-07 11:41:03', '4731007', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'IVZ3IUr0UM', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(29, 'Ahmad Oswaldo', 'holly.feest@example.org', '2026-01-07 11:41:03', '4309252', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, '7HMD6fFQtn', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(30, 'Nur Colten', 'reece66@example.org', '2026-01-07 11:41:03', '6226275', '$2y$12$JS8leFabfW9zAPzETwBz9uufdINQ3PFuDxrB3FcmdDIvOP3u4SmR6', 'student', NULL, 'U9DSnVCu6k', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(31, 'Ariena Sofea', 'ariena@example.com', '2026-01-07 11:41:03', '1234567', '$2y$12$SCVlGCi0KzwkVO//YTHt8OYYfHFNVrSQjx6W1CB3dM4l1sLTNHXjK', 'student', NULL, '3vnZaFwYiX', '2026-01-07 11:41:03', '2026-01-07 11:41:03'),
(32, 'Staff Admin', 'staff@test.com', '2026-01-07 11:41:03', 'STAFF123', '$2y$12$XPu/d.gBUdU1PU9xmSki/.ZuIuRUCdd8aTUj1p91S5W5Jp10ypWUS', 'staff', NULL, 'c1MmowKN0B', '2026-01-07 11:41:03', '2026-01-07 11:41:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_matric_number_unique` (`matric_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
