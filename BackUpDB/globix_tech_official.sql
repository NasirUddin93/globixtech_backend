-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2026 at 07:25 AM
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
-- Database: `globix_tech_official`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

CREATE TABLE `contact_submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('new','read','replied','closed') NOT NULL DEFAULT 'new',
  `admin_note` text DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_submissions`
--

INSERT INTO `contact_submissions` (`id`, `name`, `email`, `phone`, `company`, `service`, `message`, `status`, `admin_note`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 'Rahim Uddin', 'rahim.uddin@acmecorp.com.bd', '+8801711234567', 'Acme Corp BD', 'ERP System', 'We are looking for a comprehensive ERP solution for our manufacturing unit. Interested in inventory, HR, and accounts modules.', 'replied', 'Had an initial consultation meeting. Sent project proposal and quotation for ERP modules.', '2026-06-14 03:31:12', '2026-06-13 03:31:12', '2026-07-28 03:31:12'),
(2, 'Fatema Khatun', 'fatema.khatun@techwave.bd', '+8801821345678', 'TechWave BD', 'Web Application', 'We need a custom web portal for our e-commerce business with payment gateway integration.', 'replied', 'Discussed scope of e-commerce web portal and payment gateway requirement. Client agreed on wireframes.', '2026-06-21 03:31:12', '2026-06-20 03:31:12', '2026-07-28 03:31:12'),
(3, 'Mahbub Hossain', 'mahbub.h@nexusbd.com', '+8801912456789', 'Nexus BD', 'School Management System', 'Our school needs a complete management system covering admissions, attendance, results, and fee management.', 'replied', 'fvldfmvbdl', '2026-07-28 09:21:59', '2026-06-28 03:31:12', '2026-07-28 09:21:59'),
(4, 'Nusrat Jahan', 'nusrat.jahan@greenfintech.bd', '+8801634567890', 'Green FinTech', 'POS System', 'We run 3 retail branches and need a centralized POS system with real-time inventory sync across all locations.', 'new', NULL, NULL, '2026-07-06 03:31:12', '2026-07-28 03:31:12'),
(5, 'Karim Sheikh', 'karim.sheikh@bluelogistics.com', '+8801756789012', 'Blue Logistics', 'Mobile App Development', 'Need a delivery tracking mobile app for Android and iOS with real-time GPS for our logistics operations.', 'new', NULL, NULL, '2026-07-10 03:31:12', '2026-07-28 03:31:12'),
(6, 'Sumaiya Begum', 'sumaiya@innovateit.com.bd', '+8801898765432', 'InnovateIT', 'IT Consulting', 'We are a startup looking for IT infrastructure consultancy and cloud server setup guidance.', 'replied', 'Provided cloud infrastructure architecture plan and server setup guidelines.', '2026-07-14 03:31:12', '2026-07-13 03:31:12', '2026-07-28 03:31:12'),
(7, 'Tariq Aziz', 'tariq.aziz@starretail.bd', '+8801512345678', 'Star Retail BD', 'E-Commerce Solution', 'We want to launch an online store with multi-vendor support, multiple payment gateways, and an admin panel.', 'new', NULL, NULL, '2026-07-16 03:31:12', '2026-07-28 03:31:12'),
(8, 'Razia Sultana', 'razia.sultana@ecomart.com.bd', '+8801678901234', 'EcoMart', 'Inventory Management', 'Looking for an inventory management system that integrates with barcodes and provides low-stock alerts.', 'read', NULL, NULL, '2026-07-19 03:31:12', '2026-07-28 03:31:12'),
(9, 'Jalal Ahmed', 'jalal.ahmed@prospergroup.bd', '+8801734567890', 'Prosper Group', 'Business AI', 'Interested in AI-powered sales forecasting and customer analytics for our retail group.', 'new', NULL, NULL, '2026-07-22 03:31:12', '2026-07-28 03:31:12'),
(10, 'Shirin Akter', 'shirin.akter@pixelstudio.bd', '+8801856789012', 'Pixel Studio', 'Web Application', 'We are a design agency looking for a project management web app with client portal features.', 'new', NULL, NULL, '2026-07-24 03:31:12', '2026-07-28 03:31:12'),
(12, 'Halima Begum', 'halima@crescenteduc.bd', '+8801645678901', 'Crescent Education', 'School Management System', 'Looking for an SMS with online exam portal and parent communication features for our coaching centre.', 'new', NULL, NULL, '2026-07-27 19:31:12', '2026-07-28 03:31:12'),
(13, 'Test User', 'testuser@example.com', '+8801712345678', NULL, 'other', 'Testing contact submission from frontend API', 'replied', 'dvvvvdvd', '2026-07-28 09:30:53', '2026-07-28 04:10:17', '2026-07-28 09:30:53'),
(14, 'Sharar Hossain', 'sharar@globix.tech', '+8801700000000', NULL, 'erp-system', 'We need a custom enterprise ERP system for multi-branch accounting and HR.', 'new', NULL, NULL, '2026-07-28 04:17:08', '2026-07-28 04:17:08'),
(16, 'Test User', 'test@example.com', '+8801812345678', NULL, 'web-apps', 'Testing contact submission with valid phone number.', 'new', NULL, NULL, '2026-07-28 04:27:06', '2026-07-28 04:27:06'),
(18, 'rahim uddin', 'rahim@example.com', '+880 1707568468', NULL, 'web-apps', 'Testing title case and 10 digit phone number validation.', 'new', NULL, NULL, '2026-07-28 05:05:38', '2026-07-28 05:05:38'),
(19, 'Tanvir Hossain Sharar', 'tanvir@example.com', '+880 1707568468', NULL, 'web-apps', 'Testing title case formatting on backend creation.', 'new', NULL, NULL, '2026-07-28 05:05:54', '2026-07-28 05:05:54'),
(21, 'Sharar Hossain', 'sharar@globix.tech', '+880 1707568468', NULL, 'web-apps', 'We need a custom enterprise application for logistics operations.', 'replied', 'ok we will', '2026-07-28 12:08:28', '2026-07-28 05:38:31', '2026-07-28 12:08:28'),
(22, 'Rger Regaerg', 'fddf@g.com', '+880 1535345345', NULL, 'inventory', 'gbergergerg', 'replied', 'mj,hm,hj,hilli', '2026-07-28 09:41:06', '2026-07-28 08:51:59', '2026-07-28 11:35:55'),
(24, 'Zzz', 'z@gmail.com', '+880 1324234545', NULL, 'security', 'Why What How When', 'replied', 'gggggykk', '2026-07-28 09:19:25', '2026-07-28 08:53:59', '2026-07-28 09:40:57'),
(25, 'Vvvv', 'v@g.com', '+880 1214234234', NULL, 'ecommerce', 'ergergwergerg', 'replied', 'hihihi', '2026-07-28 09:18:32', '2026-07-28 08:56:09', '2026-07-28 09:18:32'),
(26, 'Aad', 'a@gmail.com', '+880 1453453453', NULL, 'other', 'ergergergfergergerg', 'new', NULL, NULL, '2026-07-28 11:43:35', '2026-07-28 11:43:35');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '2026_07_23_010404_create_personal_access_tokens_table', 1),
(3, '2026_07_23_010446_add_type_to_users_table', 1),
(4, '2026_07_28_000001_create_contact_submissions_table', 1),
(5, '2026_07_28_000002_add_admin_note_to_contact_submissions', 1);

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
  `name` text NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` enum('admin','customer') NOT NULL DEFAULT 'customer',
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'System Admin', 'admin@gmail.com', 'admin', '+8801700000000', 'Dhaka, Bangladesh', NULL, '$2y$12$GfthC8S4.GtijqBcQYaQGu71PTbgJ6epES5.uepRz0loQWmZMmIgS', NULL, '2026-07-28 03:31:12', '2026-07-28 03:31:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

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
-- AUTO_INCREMENT for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
