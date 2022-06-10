-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 04:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_09_194508_create_task_categories_table', 1),
(6, '2022_06_09_194552_create_task_indicators_table', 1),
(7, '2022_06_09_194616_create_task_plans_table', 1),
(8, '2022_06_09_194629_create_task_persons_table', 1),
(9, '2022_06_09_194648_create_task_dailies_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_categories`
--

CREATE TABLE `task_categories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_categories`
--

INSERT INTO `task_categories` (`id`, `category_name`, `description`, `created_at`, `updated_at`) VALUES
('229d48a0-a643-42c2-832f-882297db9003', 'Analisis', 'Tugas Analisis', NULL, NULL),
('72233152-7af0-4e89-94fc-d8d02e73aba8', 'Administrasi', 'Tugas yang berhubungan dengan administrasi', NULL, NULL),
('e46f9318-ca1a-4a3d-a998-913c8fdf5917', 'Teknikal', 'Tugas Teknikal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_dailies`
--

CREATE TABLE `task_dailies` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status` enum('Pending','Process','Finished','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_complete_date` date NOT NULL,
  `user_verify_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_prove` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_dailies`
--

INSERT INTO `task_dailies` (`id`, `user_id`, `plan_id`, `task_status`, `task_complete_date`, `user_verify_id`, `task_prove`, `task_comments`, `created_at`, `updated_at`) VALUES
('1', '51ed88b2-fb06-4606-81ba-088e9ed52d1a', '924eaa0e-c8f1-4132-a032-1d98c176a8c3', 'Pending', '2022-06-10', '51ed88b2-fb06-4606-81ba-088e9ed52d1a', 'test 1', 'comment test 1', NULL, NULL),
('2', '51ed88b2-fb06-4606-81ba-088e9ed52d1a', 'c96fdbd6-a3a4-42e3-b437-444ffd734a36', 'Pending', '2022-06-10', '72233152-7af0-4e89-94fc-d8d02e73aba8', 'test 2', 'comment test 2', NULL, NULL),
('3', '51ed88b2-fb06-4606-81ba-088e9ed52d1a', '924eaa0e-c8f1-4132-a032-1d98c176a8c3', 'Pending', '2022-06-10', '51ed88b2-fb06-4606-81ba-088e9ed52d1a', 'test 3', 'comment test 3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_indicators`
--

CREATE TABLE `task_indicators` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicator_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output_value` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_indicators`
--

INSERT INTO `task_indicators` (`id`, `indicator_name`, `output_value`, `year`, `created_at`, `updated_at`) VALUES
('5e72be09-384e-4097-8e78-c20e84d88112', 'Indikator 2', 100, 2022, NULL, NULL),
('669c981f-1bd6-47d5-b2ce-de568aaa160a', 'Indikator 1', 100, 2022, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_persons`
--

CREATE TABLE `task_persons` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_persons`
--

INSERT INTO `task_persons` (`id`, `task_id`, `teams`, `created_at`, `updated_at`) VALUES
('ac7ee465-587f-4b8c-b937-e9c7868500f7', '924eaa0e-c8f1-4132-a032-1d98c176a8c3', '{\'teams\':[\'72233152-7af0-4e89-94fc-d8d02e73aba8\']}', NULL, NULL),
('f8d31da1-e112-432e-b272-da61bc40a954', 'c96fdbd6-a3a4-42e3-b437-444ffd734a36', '{\'teams\':[\'72233152-7af0-4e89-94fc-d8d02e73aba8\',\'51ed88b2-fb06-4606-81ba-088e9ed52d1a\']}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_plans`
--

CREATE TABLE `task_plans` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ask_duration_start` date NOT NULL,
  `task_duration_end` date NOT NULL,
  `user_create` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicators_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_priority` int(11) NOT NULL,
  `task_status` enum('Pending','Process','Finished','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_plans`
--

INSERT INTO `task_plans` (`id`, `task_name`, `ask_duration_start`, `task_duration_end`, `user_create`, `category_id`, `indicators_id`, `task_priority`, `task_status`, `created_at`, `updated_at`) VALUES
('924eaa0e-c8f1-4132-a032-1d98c176a8c3', 'Membuat Modul add_to_cart pada Aplikasi', '2022-06-10', '2022-06-30', '72233152-7af0-4e89-94fc-d8d02e73aba8', '72233152-7af0-4e89-94fc-d8d02e73aba8', '5e72be09-384e-4097-8e78-c20e84d88112', 1, 'Pending', NULL, NULL),
('c96fdbd6-a3a4-42e3-b437-444ffd734a36', 'Menganalisa Data Kemahasiswaan', '2022-06-10', '2022-06-17', '72233152-7af0-4e89-94fc-d8d02e73aba8', 'e46f9318-ca1a-4a3d-a998-913c8fdf5917', '669c981f-1bd6-47d5-b2ce-de568aaa160a', 2, 'Process', NULL, NULL),
('f1ee037b-9135-41d2-9757-091391df4fb8', 'Mendokumentasikan Code ', '2022-06-10', '2022-06-10', '72233152-7af0-4e89-94fc-d8d02e73aba8', '229d48a0-a643-42c2-832f-882297db9003', '5e72be09-384e-4097-8e78-c20e84d88112', 3, 'Process', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('51ed88b2-fb06-4606-81ba-088e9ed52d1a', 'User B', 'userb@mail.co', NULL, 'MD5(\'12345\')', NULL, NULL, NULL),
('72233152-7af0-4e89-94fc-d8d02e73aba8', 'User A', 'user@mail.co', NULL, 'MD5(\'12345\')', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_211402090`
-- (See below for the actual view)
--
CREATE TABLE `view_211402090` (
`task_id` varchar(255)
,`task_name` varchar(255)
,`task_status` enum('Pending','Process','Finished','Canceled')
,`task_priority` int(11)
,`category_name` varchar(255)
,`id` char(36)
,`indicator_name` varchar(255)
,`name` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `view_211402090`
--
DROP TABLE IF EXISTS `view_211402090`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_211402090`  AS SELECT `task_persons`.`task_id` AS `task_id`, `task_plans`.`task_name` AS `task_name`, `task_plans`.`task_status` AS `task_status`, `task_plans`.`task_priority` AS `task_priority`, `task_categories`.`category_name` AS `category_name`, `task_categories`.`id` AS `id`, `task_indicators`.`indicator_name` AS `indicator_name`, `users`.`name` AS `name` FROM ((((`task_persons` join `task_plans`) join `task_categories`) join `task_indicators`) join `users`) WHERE `users`.`id` = `task_plans`.`user_create` ;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `task_categories`
--
ALTER TABLE `task_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_dailies`
--
ALTER TABLE `task_dailies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_dailies_user_id_index` (`user_id`),
  ADD KEY `task_dailies_plan_id_index` (`plan_id`),
  ADD KEY `task_dailies_user_verify_id_foreign` (`user_verify_id`);

--
-- Indexes for table `task_indicators`
--
ALTER TABLE `task_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_persons`
--
ALTER TABLE `task_persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_persons_task_id_index` (`task_id`);

--
-- Indexes for table `task_plans`
--
ALTER TABLE `task_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_plans_user_create_index` (`user_create`),
  ADD KEY `task_plans_category_id_index` (`category_id`),
  ADD KEY `task_plans_indicators_id_index` (`indicators_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `task_dailies`
--
ALTER TABLE `task_dailies`
  ADD CONSTRAINT `task_dailies_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `task_plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_dailies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_dailies_user_verify_id_foreign` FOREIGN KEY (`user_verify_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_persons`
--
ALTER TABLE `task_persons`
  ADD CONSTRAINT `task_persons_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `task_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_plans`
--
ALTER TABLE `task_plans`
  ADD CONSTRAINT `task_plans_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `task_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_plans_indicators_id_foreign` FOREIGN KEY (`indicators_id`) REFERENCES `task_indicators` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_plans_user_create_foreign` FOREIGN KEY (`user_create`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
