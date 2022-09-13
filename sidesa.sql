-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 05:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'ISLAM', '2022-08-30 19:25:20', '2022-08-30 19:25:20'),
(2, 'KRISTEN', '2022-08-30 19:25:28', '2022-08-30 19:25:28'),
(3, 'HINDU', '2022-08-30 19:25:35', '2022-08-30 19:25:35'),
(4, 'KATHOLIK', '2022-08-30 19:25:51', '2022-08-30 19:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Lomba', 'lomba', '2022-08-30 19:56:31', '2022-08-30 19:56:31'),
(2, 'Vaksin', 'vaksin 3', '2022-09-13 15:42:30', '2022-09-13 15:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danas`
--

CREATE TABLE `danas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danas`
--

INSERT INTO `danas` (`id`, `nama`, `jumlah`, `keterangan`, `waktu`, `created_at`, `updated_at`) VALUES
(1, 'KEGIATAN SOSIALISASI', '100000.00', 'KEGIATAN SOSIALISASI KESEHATAN', '2022-08-30 18:52:05', NULL, '2022-08-30 19:52:05'),
(2, 'dfds', '278787.00', 'weqwedwd', '2022-09-13 14:43:54', NULL, '2022-09-13 15:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `dana_keluars`
--

CREATE TABLE `dana_keluars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dana_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dana_keluars`
--

INSERT INTO `dana_keluars` (`id`, `dana_id`, `jumlah`, `keterangan`, `user_id`, `waktu`, `created_at`, `updated_at`) VALUES
(1, 1, '100000.00', 'BANNER', 1, '2022-08-30 19:52:05', NULL, NULL),
(2, 2, '21213.00', 'bayar', 1, '2022-09-13 15:43:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dana_masuks`
--

CREATE TABLE `dana_masuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dana_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dana_masuks`
--

INSERT INTO `dana_masuks` (`id`, `dana_id`, `jumlah`, `keterangan`, `user_id`, `waktu`, `created_at`, `updated_at`) VALUES
(1, 1, '100000.00', 'DANA IURAN', 1, '2022-08-30 19:50:38', NULL, NULL),
(2, 1, '100000.00', 'DANA IURAN', 1, '2022-08-30 19:50:53', NULL, NULL),
(3, 2, '300000.00', 'beli atk', 1, '2022-09-13 15:43:26', NULL, NULL);

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
-- Table structure for table `keluargas`
--

CREATE TABLE `keluargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nikk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepala_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_keluarga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keluargas`
--

INSERT INTO `keluargas` (`id`, `nikk`, `kepala_keluarga`, `alamat`, `jumlah_keluarga`, `created_at`, `updated_at`) VALUES
(1, '3301140103120003', 'MUHAMMAD HIDAYATULLOH', 'JL NUSA INDAH RT 01 RW 01 MULYASARI', 4, '2022-08-30 19:31:20', '2022-08-30 19:42:34'),
(2, '3301140112080005', 'SUSAN MUNGGARYANI', 'JL NUSA INDAH NO 397 RT 01 RW 01 MULYASARI', 3, '2022-08-30 19:32:35', '2022-08-30 19:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `masyarakats`
--

CREATE TABLE `masyarakats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keluarga_id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama_id` bigint(20) UNSIGNED NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masyarakats`
--

INSERT INTO `masyarakats` (`id`, `keluarga_id`, `nik`, `nama`, `jenis_kelamin`, `agama_id`, `tempat_lahir`, `tanggal_lahir`, `status`, `pendidikan_terakhir`, `foto`, `created_at`, `updated_at`) VALUES
(1, 1, '3301140902770001', 'MUHAMMAD HIDAYATULLOH', 'Laki-laki', 1, 'CILACAP', '1977-02-09', 'Menikah', 'Strata 1', 'foto-masyarakat/k8vyOqKueJeXzMF2rAQyoncrwobCmF9zlRyIDKZj.png', '2021-08-30 19:37:51', '2022-08-30 19:39:53'),
(2, 1, '3301147007790002', 'LISA YULIANTI', 'Laki-laki', 1, 'PURWOKERTO', '1979-07-30', 'Menikah', 'Strata 1', 'foto-masyarakat/cLPN0uv9vbud9Nic2vHRt5ZVmIS7XfKgYLDPxqQk.jpg', '2022-08-30 19:39:16', '2022-08-30 19:39:16'),
(3, 1, '3301140311050001', 'ABIAN HILMI HIDAYAT', 'Laki-laki', 1, 'CILACAP', '2005-11-03', 'Belum Menikah', 'Lulus SD', 'foto-masyarakat/44MyrEBwEqITcxMaO8x5PjPd3jQdrSwlGjQRPnMZ.jpg', '2022-08-30 19:41:28', '2022-09-13 15:55:34'),
(4, 1, '3301146204040003', 'DHIYA FAUZIA', 'Perempuan', 1, 'KUWAIT', '2004-04-22', 'Belum Menikah', 'Lulus SMP', 'foto-masyarakat/cwECtYazi2dvCErLr7wTzV9HUUcGJAj14vH7nRL9.jpg', '2022-08-30 19:42:34', '2022-08-30 19:42:34'),
(5, 2, '3301146709770006', 'SUSAN MUNGGARYANI', 'Laki-laki', 1, 'CIAMIS', '1977-09-27', 'Menikah', 'Lulus SMA', 'foto-masyarakat/Fy5ZbJKq9LVZAYl7cZJ4C9GHswEX3o6rPGDqVFfF.png', '2022-08-30 19:45:52', '2022-08-30 19:45:52'),
(6, 2, '3301145402000005', 'SELVIA PUTRI FEBILOVE', 'Perempuan', 1, 'BANJAR', '2001-02-14', 'Belum Menikah', 'Lulus SD', 'foto-masyarakat/0ryW04D77ysSu6RKw1u9fNXi3GvMSfACY361fI4i.jpg', '2022-08-30 19:47:30', '2022-08-30 19:47:30'),
(7, 2, '3301146511030001', 'AMANDA NOVIA SAFITRI', 'Perempuan', 1, 'BANJAR', '2003-11-24', 'Belum Menikah', 'Tidak Lulus SD', 'foto-masyarakat/bKdwovYovQCDknAVRsFOJ1mJkPPrBneAxdo6LN9O.jpg', '2022-08-30 19:48:27', '2022-09-13 15:55:47');

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
(5, '2022_06_13_075525_create_categories_table', 1),
(6, '2022_06_13_075705_create_posts_table', 1),
(7, '2022_06_19_055520_create_masyarakats_table', 1),
(8, '2022_06_20_022500_create_keluargas_table', 1),
(9, '2022_06_21_095810_create_agamas_table', 1),
(10, '2022_06_30_094645_create_danas_table', 1),
(11, '2022_06_30_095919_create_dana_masuks_table', 1),
(12, '2022_06_30_095929_create_dana_keluars_table', 1),
(13, '2022_07_05_125222_create_views_table', 1),
(14, '2022_07_13_091130_create_contacts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `excerpt`, `body`, `foto`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lomba Agustus', 'lomba-agustus', 'HELLO WORLD', '<div>HELLO WORLD</div>', 'foto-post/luCbpu6Phx7zwU5WEoeUrP78w6BuojvAWyJ0oCmr.jpg', '2022-08-30 19:57:27', '2022-08-30 19:57:27', '2022-08-30 19:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `masyarakat_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `masyarakat_id`, `email`, `email_verified_at`, `username`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'admin@gmail.com', NULL, 'admin', '$2y$10$FNx3nxPH8UPeQZjH.AYH1OkaEY3yTNr3R/sawZW7MaWbKuAoh2qSi', '1', NULL, '2022-08-30 19:20:02', '2022-09-13 15:52:59'),
(2, 1, 'hidayah@gmail.com', NULL, 'hidayah', '$2y$10$vgeQKuSK5J/fhNhYyfpln.K.P8BHqIumHsrLAT54rxMkB5ns0youW', '0', NULL, '2022-09-13 15:40:56', '2022-09-13 15:40:56'),
(3, 3, 'abian@gmail.com', NULL, 'abian', '$2y$10$B1/UDnTT7jqptYijaK.sX.xfpRRZquMBoRpgOfA0FZgj.TVIBynyC', '1', NULL, '2022-09-13 15:51:50', '2022-09-13 15:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `viewable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewable_id` bigint(20) UNSIGNED NOT NULL,
  `visitor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `viewable_type`, `viewable_id`, `visitor`, `collection`, `viewed_at`) VALUES
(1, 'App\\Models\\Post', 1, '9nv2pnjgGN2ZOwl1Jh3Lzmr71jRfeOmAYP9Q1Wfmsk31ybT9m0i5D6oSKeZuhIHOHhZ1KXKmYhWO7PA6', NULL, '2022-08-30 20:04:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
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
-- Indexes for table `danas`
--
ALTER TABLE `danas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dana_keluars`
--
ALTER TABLE `dana_keluars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dana_masuks`
--
ALTER TABLE `dana_masuks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `keluargas`
--
ALTER TABLE `keluargas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keluargas_nikk_unique` (`nikk`);

--
-- Indexes for table `masyarakats`
--
ALTER TABLE `masyarakats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masyarakats_nik_unique` (`nik`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_viewable_type_viewable_id_index` (`viewable_type`,`viewable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danas`
--
ALTER TABLE `danas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dana_keluars`
--
ALTER TABLE `dana_keluars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dana_masuks`
--
ALTER TABLE `dana_masuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keluargas`
--
ALTER TABLE `keluargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `masyarakats`
--
ALTER TABLE `masyarakats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
