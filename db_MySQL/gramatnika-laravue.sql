-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 05:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gramatnika-laravue`
--

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_13_154325_create_products_table', 1),
(4, '2023_02_13_161712_create_transactions_table', 3),
(5, '2023_02_13_162202_create_transaction_details_table', 4),
(6, '2023_02_13_163237_create_personal_access_tokens_table', 5),
(7, '2023_02_13_163633_create_failed_jobs_table', 6),
(8, '2023_02_13_163933_create_users_table', 7),
(10, '2014_10_12_100000_create_password_resets_table', 9),
(12, '2023_02_13_171101_create_product_galleries_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 'Taliban Maxx', 'taliban-maxx', 'Jacket', '<p>Kualitas terbaik dan halus ketika digunakan oleh pria atau wanita.</p>', 10000, 2, NULL, '2023-02-19 07:51:47', '2023-03-01 11:52:07'),
(7, 'Celana Jeans', 'celana-jeans', 'Panjang', '<p>Ini adalah celana jeans Panjang</p>', 450000, 4, NULL, '2023-02-19 19:14:48', '2023-03-01 11:52:07'),
(8, 'Kaos Polos', 'kaos-polos', 'Pendek', '<p>Kaos Polos Tipe Lengan pendek.</p>', 80000, 6, NULL, '2023-02-20 07:55:17', '2023-02-20 07:55:17'),
(9, 'Baju', 'baju', 'Lengan pendek', '<p>Baju Cassual tipe lengan pendek.</p>', 120000, 3, NULL, '2023-02-20 07:56:03', '2023-02-20 07:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `photo`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 6, 'assets/product/CczgNz2VS95ZgE5hrTkBWoMji9ch4juKXuUvvMPP.jpg', 1, NULL, '2023-02-19 19:06:43', '2023-02-19 19:06:43'),
(8, 7, 'assets/product/U8odl6ZggdvWcbM5cZSc6DZTIqDs3kaQ3CXHn3Ok.jpg', 1, NULL, '2023-02-21 07:26:39', '2023-02-21 07:26:39'),
(9, 6, 'assets/product/eORJdRVUwEBBu498HVPhi2LQnLWTVxm6HUnNbE5M.jpg', 0, NULL, '2023-02-21 07:27:21', '2023-02-21 07:27:21'),
(10, 8, 'assets/product/D27M8xqTadO3cos2XppurBEekify89Hn9k7cCKfG.jpg', 1, '2023-02-25 04:40:52', '2023-02-21 07:28:35', '2023-02-25 04:40:52'),
(11, 9, 'assets/product/ejhQlSbX6xYimB6BPGIuTQw85YoBBFHQEnI9r4Ch.jpg', 1, NULL, '2023-02-21 07:28:54', '2023-02-21 07:28:54'),
(12, 7, 'assets/product/50jvoqjaZkieY35A10wtd5ZxGTsl2bAUMOU4XWIa.jpg', 0, NULL, '2023-02-21 07:31:08', '2023-02-21 07:31:08'),
(13, 8, 'assets/product/vp0F2wPupOagOhFrYZptHVlR9lqSOXY6qe2Bevf3.jpg', 0, '2023-02-25 04:39:05', '2023-02-21 07:31:23', '2023-02-25 04:39:05'),
(14, 9, 'assets/product/RLwHInXBlJsmJd8gTrUNvPiyd6pvqysnYfqyjhlq.jpg', 0, NULL, '2023-02-21 07:31:44', '2023-02-21 07:31:44'),
(15, 6, 'assets/product/7csgWH6X7dLv3JdT69s0olWHd2u1m1T55BLnyyrf.jpg', 0, NULL, '2023-02-23 09:21:19', '2023-02-23 09:21:19'),
(16, 7, 'assets/product/DimZoML1xrV5HRJ0rwLOL8qVfLzofn239BwGq6Xo.jpg', 0, NULL, '2023-02-23 09:21:40', '2023-02-23 09:21:40'),
(17, 8, 'assets/product/XYV1WwEpZ0wsB34dSIQIvJyNiz6TvPcdVxoCqgFa.jpg', 0, '2023-02-25 04:38:48', '2023-02-23 09:22:04', '2023-02-25 04:38:48'),
(18, 9, 'assets/product/rpycGYD1OkmKNL0Ms3XLO2KtFS8JsBx4HVAZ8vxJ.jpg', 0, NULL, '2023-02-23 09:22:32', '2023-02-23 09:22:32'),
(19, 8, 'assets/product/J8aZ55SidRp6r8e8PQ8rQc3aONwIIgWufhMSmRm9.jpg', 1, NULL, '2023-02-25 04:44:25', '2023-02-25 04:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(25, 'TRX22171220', 'saya', 'jhdfj@yygyus.com', '98787878787', 'Jakarta Pusat 1', 506000, 'PENDING', '2023-03-01 11:42:20', '2023-03-01 09:45:27', '2023-03-01 11:42:20'),
(26, 'TRX39283245', 'dfsvvgsbgb', 'jhdfj@yygyus.com', '56789876543', 'kjhgfxdszfxgchvjb 8976 iukjl;lk,mbnv', 506000, 'PENDING', '2023-03-01 11:42:23', '2023-03-01 09:51:43', '2023-03-01 11:42:23'),
(27, 'TRX20423558', 'dfsvvgsbgb', 'jhdfj@yygyus.com', '876', 'l;kjhgbcv', 11000, 'PENDING', '2023-03-01 11:42:32', '2023-03-01 09:53:43', '2023-03-01 11:42:32'),
(28, 'TRX52163854', 'dfsvvgsbgb', 'jhdfj@yygyus.com', '456789', 'gfhjkkl56789oikjm', 506000, 'FAILED', NULL, '2023-03-01 11:26:16', '2023-03-01 11:42:36'),
(29, 'TRX59975377', 'saya', 'jhdfj@yygyus.com', '4567890', 'dfghjkl;', 506000, 'PENDING', NULL, '2023-03-01 11:29:24', '2023-03-01 11:29:24'),
(30, 'TRX66220203', 'Sigit', 'sigit@gmail.com', '85656565656', 'Jakarta pusat deket monas', 506000, 'SUCCESS', NULL, '2023-03-01 11:37:46', '2023-03-01 11:42:42'),
(31, 'TRX65693186', 'Saya', 'saya@gmail.com', '85656565656', 'Jakarta pusat deket monas', 560000, 'PENDING', '2023-03-01 11:53:04', '2023-03-01 11:51:52', '2023-03-01 11:53:04'),
(32, 'TRX20021558', 'Saya', 'saya@gmail.com', '85656565656', 'Jakarta pusat deket monas', 560000, 'PENDING', '2023-03-01 11:52:59', '2023-03-01 11:52:07', '2023-03-01 11:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(29, 25, 6, NULL, '2023-03-01 09:45:27', '2023-03-01 09:45:27'),
(30, 25, 7, NULL, '2023-03-01 09:45:27', '2023-03-01 09:45:27'),
(31, 26, 6, NULL, '2023-03-01 09:51:44', '2023-03-01 09:51:44'),
(32, 26, 7, NULL, '2023-03-01 09:51:44', '2023-03-01 09:51:44'),
(33, 27, 6, NULL, '2023-03-01 09:53:43', '2023-03-01 09:53:43'),
(34, 28, 7, NULL, '2023-03-01 11:26:16', '2023-03-01 11:26:16'),
(35, 28, 6, NULL, '2023-03-01 11:26:16', '2023-03-01 11:26:16'),
(36, 29, 7, NULL, '2023-03-01 11:29:25', '2023-03-01 11:29:25'),
(37, 29, 6, NULL, '2023-03-01 11:29:25', '2023-03-01 11:29:25'),
(38, 30, 7, NULL, '2023-03-01 11:37:47', '2023-03-01 11:37:47'),
(39, 30, 6, NULL, '2023-03-01 11:37:47', '2023-03-01 11:37:47'),
(40, 31, 6, NULL, '2023-03-01 11:51:52', '2023-03-01 11:51:52'),
(41, 31, 7, NULL, '2023-03-01 11:51:52', '2023-03-01 11:51:52'),
(42, 32, 6, NULL, '2023-03-01 11:52:07', '2023-03-01 11:52:07'),
(43, 32, 7, NULL, '2023-03-01 11:52:07', '2023-03-01 11:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'player', 'sayaya@gmail.com', NULL, '$2y$10$/l6rdBdWVRJxoOLqLMOnvegcCGu1amhWtgic6Z0O9v1SHpPj.ybIm', 'ndxtvqj2KPkcTDoDxVnWfbM8IzP0uV0LHEFl4wLBzKwx0x1ezu7l3mlyxWb3', '2023-02-13 09:58:20', '2023-02-13 09:58:20'),
(2, 'Kasir', 'kasir@gmail.com', NULL, '$2y$10$AEaARdRv4NUX1WHWRX.xSOy0cy0Pf4ttZdghp8cf8MnlondorvoUG', NULL, '2023-02-27 18:26:55', '2023-02-27 18:26:55');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
