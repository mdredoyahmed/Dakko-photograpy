-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 11:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photo`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'photo', 'photo@gmail.com', 'asdfasdf', 0, '2022-07-22 22:37:15', '2022-07-22 22:37:15');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`gallery_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(3, 'asdf', '[\"service\\/photos\\/jNdAaszZfHFNuM2cT9IyBFMoflGrm9TEzS9vRIFh.png\"]', '2022-07-23 01:51:58', '2022-07-23 01:51:58'),
(4, 'sadf', '[\"service\\/photos\\/QhEiTaF6nBBqaHzqzplO501Vvedqi2EM8BjNcQwz.jpg\"]', '2022-07-23 01:52:11', '2022-07-23 01:52:11'),
(5, 'asdfsdf', '[\"service\\/photos\\/i0pWhFyo6YEQ5kBSiEbY8rPc1oibMwYrDsybhW4h.jpg\"]', '2022-07-23 01:52:24', '2022-07-23 01:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `gigs`
--

CREATE TABLE `gigs` (
  `gig_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gigs`
--

INSERT INTO `gigs` (`gig_id`, `title`, `user_id`, `body`, `image`, `created_at`, `updated_at`) VALUES
(4, 'test', 3, 'asdfasdf', '[\"gig\\/photos\\/\\/cv5VkVjQLeniyYZSNkP36g2SuqSEcKtHQMfqUbX3.png\",\"gig\\/photos\\/\\/lPRIURgpKYDEY2rhr6BzxIC1ytLmkusM8rSq8OTb.png\",\"gig\\/photos\\/\\/DfHB3brPCzVkW1uuyIJTm6sXNPV8McbWG4ozVztl.png\"]', '2022-07-21 22:50:55', '2022-07-21 22:50:55'),
(5, 'test1', 3, 'asdfa', '[\"gig\\/photos\\/\\/s5v7O2yjjsGvBCW9zE7GDm5nApPgyRHEr21OYpFU.jpg\",\"gig\\/photos\\/\\/dQ9XcTqaz1cW7q1QpzB2bTdmHWdYtFTl0AkO1DcZ.jpg\"]', '2022-07-21 22:52:17', '2022-07-21 22:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `hires`
--

CREATE TABLE `hires` (
  `hire_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `photographer_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hires`
--

INSERT INTO `hires` (`hire_id`, `user_id`, `photographer_id`, `title`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'weeding', '2000', 1, '2022-07-23 01:20:47', '2022-07-23 01:23:29');

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
(5, '2022_04_01_061140_create_roles_table', 1),
(6, '2022_07_21_161613_create_permissions_table', 1),
(7, '2022_07_21_170307_create_services_table', 1),
(8, '2022_07_21_182955_create_gigs_table', 1),
(9, '2022_07_22_050030_create_profiles_table', 2),
(10, '2022_07_22_192138_create_contacts_table', 3),
(13, '2022_07_23_053701_create_hires_table', 4),
(14, '2022_07_23_073603_create_galleries_table', 5);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `permission`, `created_at`, `updated_at`) VALUES
(3, 1, '{\"role\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"permission\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"user\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"service\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"gig\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"gallery\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"contact\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"}}', '2022-07-23 02:21:53', '2022-07-23 02:33:14'),
(4, 2, '{\"request\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"}}', '2022-07-23 02:33:43', '2022-07-23 02:33:43'),
(5, 3, '{\"gig\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"request\":{\"add\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\",\"list\":\"1\"}}', '2022-07-23 02:34:24', '2022-07-23 02:34:24');

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`profile_id`, `title`, `user_id`, `role_id`, `location`, `phone`, `properties`, `image`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Shaeen Mahmud', 3, 3, 'asdfasdf as323 asdf asdfads', '23234', '[{\"id\":\"0\",\"title\":\"weeding\",\"price\":\"2000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"1\",\"title\":\"birthday\",\"price\":\"4000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"2\",\"title\":\"party\",\"price\":\"3000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"3\",\"title\":null,\"price\":null,\"description\":null},{\"id\":\"4\",\"title\":null,\"price\":null,\"description\":null}]', '[\"profile\\/photos\\/\\/bXWczNaPiNeDS83ld4STKXlFHQCTucfNKwTgciMD.png\"]', 'What concerns, unique to you, did the photographer address? How did the experience feel', '2022-07-21 23:27:58', '2022-07-23 03:31:21'),
(2, 'asdf', 2, 2, 'asd', 'ad', '[{\"id\":\"0\",\"title\":null,\"price\":null,\"description\":null},{\"id\":\"1\",\"title\":null,\"price\":null,\"description\":null},{\"id\":\"2\",\"title\":null,\"price\":null,\"description\":null},{\"id\":\"3\",\"title\":null,\"price\":null,\"description\":null},{\"id\":\"4\",\"title\":null,\"price\":null,\"description\":null}]', '[]', 'asd', '2022-07-23 01:31:50', '2022-07-23 01:31:50'),
(3, 'Hridoy', 4, 3, 'Dhaka Bangladesh', '0191287212', '[{\"id\":\"0\",\"title\":\"weeding\",\"price\":\"2000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"1\",\"title\":\"birthday\",\"price\":\"4000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"2\",\"title\":\"Party\",\"price\":\"3000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"3\",\"title\":null,\"price\":null,\"description\":null},{\"id\":\"4\",\"title\":null,\"price\":null,\"description\":null}]', '[\"profile\\/photos\\/\\/pWXWD0isCDVsJrpG7sR6NQgmGEygLdZArKdBtHmo.jpg\"]', 'Gift For Photography Lovers In Beautiful Archival Box With Certificate Of Authenticity. Fine Art Photography Boxsets by Miles Aldridge', '2022-07-23 03:29:25', '2022-07-23 03:29:25'),
(4, 'Lalchan Badsha', 5, 3, 'Dhaka Bangladesh', '0191287212', '[{\"id\":\"0\",\"title\":\"weeding\",\"price\":\"2000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"1\",\"title\":\"birthday\",\"price\":\"4000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"2\",\"title\":\"party\",\"price\":\"3000\",\"description\":\"Wedding Photography Testimonials and Reviews from all our wonderful couples\"},{\"id\":\"3\",\"title\":null,\"price\":null,\"description\":null},{\"id\":\"4\",\"title\":null,\"price\":null,\"description\":null}]', '[\"profile\\/photos\\/\\/WNHtnNeghf02Kv8dYnaLoTUhT4s7nXIP8xDHyqNM.jpg\"]', 'Gift For Photography Lovers In Beautiful Archival Box With Certificate Of Authenticity. Fine Art Photography Boxsets by Miles Aldridge', '2022-07-23 03:39:02', '2022-07-23 03:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL),
(3, 'photographer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', '[\"service\\/photos\\/MNTP0cfievA7ZYN1cyCWmk7Cbjl7OUr3KCnZ6h8o.png\"]', '2022-07-23 03:22:10', '2022-07-23 03:22:10'),
(2, 'Brithday', '[\"service\\/photos\\/tMLulc8m7Gx8LhqFCeKicMnKolq8FmIOdc9sYZJb.png\"]', '2022-07-23 03:22:25', '2022-07-23 03:22:25'),
(3, 'Party', '[\"service\\/photos\\/rNRxtq7xobsRkZXFQk0aW5wMLutYMvV0nirLru7B.png\"]', '2022-07-23 03:22:45', '2022-07-23 03:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '1', NULL, '$2y$10$86GwdWLVhgd3iPgcFN4tD.e8msVqZmnaafs0TGgmGPEDgyW6OrkkC', NULL, NULL, NULL),
(2, 'user', 'user@gmail.com', '2', NULL, '$2y$10$AzHuDykVitEDLLdHFXNqyeIuPieZcjIl49NQam7QnFpEfUKzs.KTK', NULL, NULL, NULL),
(3, 'photo', 'photo@gmail.com', '3', NULL, '$2y$10$qYAmRKMgLgQbXfyvWEUmQ.5slTJT/R5fVZNR0eJ32oSCpzy9tIfCa', NULL, '2022-07-21 22:25:47', '2022-07-21 22:25:47'),
(4, 'Hridoy', 'hridoy@gmail.com', '3', NULL, '$2y$10$jlcUNmzGpIGBCPXQRuBsLu2aPcURNejcTF30zGctAL7hMPPtSsZnS', NULL, '2022-07-23 03:26:48', '2022-07-23 03:26:48'),
(5, 'Lal chan Badsha', 'lal@gmail.com', '3', NULL, '$2y$10$j3c.QKbM38h2yoq78nB6deZ4hyg2gnsK9d1/GYqhsIujQOd9tXeiO', NULL, '2022-07-23 03:37:50', '2022-07-23 03:37:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `gigs`
--
ALTER TABLE `gigs`
  ADD PRIMARY KEY (`gig_id`);

--
-- Indexes for table `hires`
--
ALTER TABLE `hires`
  ADD PRIMARY KEY (`hire_id`);

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
  ADD KEY `permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `gallery_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gigs`
--
ALTER TABLE `gigs`
  MODIFY `gig_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hires`
--
ALTER TABLE `hires`
  MODIFY `hire_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `profile_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
