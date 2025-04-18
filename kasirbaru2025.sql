-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Apr 2025 pada 09.39
-- Versi server: 8.0.30
-- Versi PHP: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirbaru2025`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@mail.com|127.0.0.1', 'i:1;', 1741345673),
('admin@mail.com|127.0.0.1:timer', 'i:1741345673;', 1741345673),
('rudi@mail.com|127.0.0.1', 'i:1;', 1740576138),
('rudi@mail.com|127.0.0.1:timer', 'i:1740576138;', 1740576138);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detil_transaksis`
--

CREATE TABLE `detil_transaksis` (
  `id` bigint UNSIGNED NOT NULL,
  `transaksi_id` bigint UNSIGNED NOT NULL,
  `produk_id` bigint UNSIGNED NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detil_transaksis`
--

INSERT INTO `detil_transaksis` (`id`, `transaksi_id`, `produk_id`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 11, 1, 1, '2025-02-21 02:15:28', '2025-02-21 02:15:28'),
(3, 12, 1, 1, '2025-02-21 02:16:00', '2025-02-21 02:16:00'),
(4, 13, 1, 1, '2025-02-21 02:17:45', '2025-02-21 02:17:45'),
(5, 14, 1, 1, '2025-02-21 02:28:26', '2025-02-21 02:28:26'),
(6, 15, 2, 1, '2025-02-21 04:17:49', '2025-02-21 04:17:49'),
(7, 16, 1, 1, '2025-02-21 04:40:54', '2025-02-21 04:40:54'),
(8, 17, 2, 1, '2025-02-21 04:46:18', '2025-02-21 04:46:18'),
(9, 18, 1, 1, '2025-02-21 05:02:13', '2025-02-21 05:02:13'),
(11, 20, 2, 1, '2025-02-21 05:06:37', '2025-02-21 05:06:37'),
(12, 21, 1, 2, '2025-02-21 05:10:32', '2025-02-21 05:10:37'),
(13, 22, 1, 1, '2025-02-21 06:07:30', '2025-02-21 06:07:30'),
(14, 23, 1, 1, '2025-02-21 06:09:40', '2025-02-21 06:09:40'),
(15, 24, 1, 1, '2025-02-21 06:17:04', '2025-02-21 06:17:04'),
(16, 25, 1, 1, '2025-02-21 06:17:35', '2025-02-21 06:17:35'),
(17, 26, 1, 1, '2025-02-21 06:19:21', '2025-02-21 06:19:21'),
(19, 28, 1, 1, '2025-02-21 07:11:19', '2025-02-21 07:11:19'),
(22, 30, 3, 1, '2025-02-21 07:36:39', '2025-02-21 07:36:39'),
(23, 31, 3, 1, '2025-02-21 07:40:01', '2025-02-21 07:40:01'),
(24, 32, 1, 2, '2025-02-24 00:17:28', '2025-02-24 00:17:42'),
(25, 32, 2, 1, '2025-02-24 00:17:50', '2025-02-24 00:17:50'),
(27, 41, 1, 2, '2025-02-27 13:30:56', '2025-02-27 13:31:03'),
(29, 44, 3, 2, '2025-03-07 11:04:52', '2025-03-07 11:05:03'),
(30, 46, 1, 1, '2025-04-14 00:53:11', '2025-04-14 00:53:11'),
(32, 48, 1, 1, '2025-04-14 00:58:58', '2025-04-14 00:58:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2025_02_21_025440_create_produks_table', 2),
(8, '2025_02_21_063702_create_transaksis_table', 3),
(9, '2025_02_21_063713_create_detil_transaksis_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int UNSIGNED NOT NULL,
  `stok` int UNSIGNED NOT NULL DEFAULT '1',
  `foto_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `kode`, `nama`, `harga`, `stok`, `foto_produk`, `created_at`, `updated_at`) VALUES
(1, 'TRIVENT001', 'TRISTAR TECH EVENT 2025 (KLATEN)', 45000, 2080, NULL, '2025-02-21 00:37:25', '2025-04-14 00:58:58'),
(2, 'TRIVENT002', 'TRISTAR TECH EVENT 2025 (SEMARANG)', 45000, 2096, NULL, '2025-02-21 00:38:07', '2025-02-24 00:17:50'),
(3, 'TRIVENT003', 'TRISTAR IT EVENT 2025 (WHO SHE IS ?) (THE LAUNCHING OF DIGITAL PERSONAL ASSISTANT WITH AI) (LITE TICKET)', 1250000, 1996, NULL, '2025-02-21 07:15:29', '2025-03-07 11:05:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UzZjH7o3CsCxYD1HDHIjwmYkxZdG4s2dGBhLKouk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0Nyendsd2kxbTNpS2c2S1pVaHA5YklHZDY5T1lxZXhhSXlPcGlIVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9rYXNpcmJhcnUyMDI1LnRlc3QvbG9naW4iO319', 1744865525);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `kode`, `total`, `status`, `created_at`, `updated_at`) VALUES
(2, 'INV/20250221080840', 0, 'pending', '2025-02-21 01:08:40', '2025-02-21 01:08:40'),
(4, 'INV/20250221085135', 0, 'pending', '2025-02-21 01:51:35', '2025-02-21 01:51:35'),
(5, 'INV/20250221085642', 0, 'pending', '2025-02-21 01:56:42', '2025-02-21 01:56:42'),
(6, 'INV/20250221090316', 0, 'pending', '2025-02-21 02:03:16', '2025-02-21 02:03:16'),
(7, 'INV/20250221090443', 0, 'pending', '2025-02-21 02:04:43', '2025-02-21 02:04:43'),
(8, 'INV/20250221090449', 0, 'pending', '2025-02-21 02:04:49', '2025-02-21 02:04:49'),
(9, 'INV/20250221090505', 0, 'pending', '2025-02-21 02:05:05', '2025-02-21 02:05:05'),
(10, 'INV/20250221090841', 0, 'pending', '2025-02-21 02:08:41', '2025-02-21 02:08:41'),
(11, 'INV/20250221091447', 0, 'pending', '2025-02-21 02:14:47', '2025-02-21 02:14:47'),
(12, 'INV/20250221091556', 0, 'pending', '2025-02-21 02:15:56', '2025-02-21 02:15:56'),
(13, 'INV/20250221091737', 0, 'pending', '2025-02-21 02:17:37', '2025-02-21 02:17:37'),
(14, 'INV/20250221092821', 0, 'pending', '2025-02-21 02:28:21', '2025-02-21 02:28:21'),
(15, 'INV/20250221111739', 0, 'pending', '2025-02-21 04:17:39', '2025-02-21 04:17:39'),
(16, 'INV/20250221114049', 0, 'pending', '2025-02-21 04:40:49', '2025-02-21 04:40:49'),
(17, 'INV/20250221114612', 0, 'pending', '2025-02-21 04:46:12', '2025-02-21 04:46:12'),
(18, 'INV/20250221120206', 0, 'pending', '2025-02-21 05:02:06', '2025-02-21 05:02:06'),
(20, 'INV/20250221120625', 0, 'pending', '2025-02-21 05:06:25', '2025-02-21 05:06:25'),
(21, 'INV/20250221121021', 0, 'pending', '2025-02-21 05:10:21', '2025-02-21 05:10:21'),
(22, 'INV/20250221130724', 0, 'pending', '2025-02-21 06:07:24', '2025-02-21 06:07:24'),
(23, 'INV/20250221130933', 0, 'pending', '2025-02-21 06:09:33', '2025-02-21 06:09:33'),
(24, 'INV/20250221131656', 0, 'pending', '2025-02-21 06:16:56', '2025-02-21 06:16:56'),
(25, 'INV/20250221131732', 0, 'pending', '2025-02-21 06:17:32', '2025-02-21 06:17:32'),
(26, 'INV/20250221131916', 0, 'pending', '2025-02-21 06:19:16', '2025-02-21 06:19:16'),
(27, 'INV/20250221132115', 0, 'pending', '2025-02-21 06:21:15', '2025-02-21 06:21:15'),
(28, 'INV/20250221141111', 45000, 'selesai', '2025-02-21 07:11:11', '2025-02-21 07:12:54'),
(29, 'INV/20250221141534', 0, 'pending', '2025-02-21 07:15:34', '2025-02-21 07:15:34'),
(30, 'INV/20250221143633', 0, 'pending', '2025-02-21 07:36:33', '2025-02-21 07:36:33'),
(31, 'INV/20250221143958', 1250000, 'selesai', '2025-02-21 07:39:58', '2025-02-21 07:40:13'),
(32, 'INV/20250224071708', 135000, 'selesai', '2025-02-24 00:17:08', '2025-02-24 00:18:21'),
(33, 'INV/20250224072007', 0, 'pending', '2025-02-24 00:20:07', '2025-02-24 00:20:07'),
(34, 'INV/20250226130101', 0, 'pending', '2025-02-26 06:01:01', '2025-02-26 06:01:01'),
(36, 'INV/20250227021818', 0, 'pending', '2025-02-26 19:18:18', '2025-02-26 19:18:18'),
(37, 'INV/20250227021853', 0, 'pending', '2025-02-26 19:18:53', '2025-02-26 19:18:53'),
(38, 'INV/20250227021857', 0, 'pending', '2025-02-26 19:18:57', '2025-02-26 19:18:57'),
(40, 'INV/20250227132825', 0, 'pending', '2025-02-27 06:28:25', '2025-02-27 06:28:25'),
(41, 'INV/20250227203047', 90000, 'selesai', '2025-02-27 13:30:47', '2025-02-27 13:31:11'),
(44, 'INV/20250307180408', 2500000, 'selesai', '2025-03-07 11:04:08', '2025-03-07 11:05:34'),
(45, 'INV/20250414075249', 0, 'pending', '2025-04-14 00:52:49', '2025-04-14 00:52:49'),
(46, 'INV/20250414075302', 0, 'pending', '2025-04-14 00:53:02', '2025-04-14 00:53:02'),
(47, 'INV/20250414075820', 0, 'pending', '2025-04-14 00:58:20', '2025-04-14 00:58:20'),
(48, 'INV/20250414075841', 45000, 'selesai', '2025-04-14 00:58:41', '2025-04-14 00:59:22'),
(49, 'INV/20250414081354', 0, 'pending', '2025-04-14 01:13:54', '2025-04-14 01:13:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `peran`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@hotmail.com', NULL, '$2y$12$KY/iRXC4UBbl0NzKQpYb2e31pwjoIGQBZ7ZYSlzKI/VUVaspPQb.6', 'admin', 'n8a9j9rTzNL6yseQZa6INmT3HTZw5TwF7DW2pC0MvQA7vNMJQjwwJCVvrOTo', '2025-01-24 00:22:11', '2025-01-24 00:22:11'),
(2, 'Bambang', 'bambang@mail.com', NULL, '$2y$12$aABE6ZAZFEjsG4vZMgAa5.rq5bCGiuORl06jHsNFe3ItIDU5LCvY6', 'admin', NULL, '2025-02-14 00:07:45', '2025-02-14 00:07:45'),
(3, 'Saiful', 'saiful@gmail.com', NULL, '$2y$12$SJ0nL686gxQCzjAAEK8tYOx.oUPDdiRtCBYZ1EVLNZce3Prt5P6kS', 'admin', NULL, '2025-02-14 00:08:40', '2025-02-14 06:57:25'),
(5, 'Yanto', 'yanto@mail.com', NULL, '$2y$12$2meLxLgb42b239YVq0eouuMfojNf2k7l0d/LIcHy7MdqrGRIkgXH2', 'kasir', 'aQLqrlgUnOUW330rj1mKMrIGENv9qZRSof5r6IQKJEUgRHCuciC9p1SIJra3', '2025-02-21 07:46:53', '2025-02-21 07:46:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `detil_transaksis`
--
ALTER TABLE `detil_transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detil_transaksis_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `detil_transaksis_produk_id_foreign` (`produk_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detil_transaksis`
--
ALTER TABLE `detil_transaksis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detil_transaksis`
--
ALTER TABLE `detil_transaksis`
  ADD CONSTRAINT `detil_transaksis_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detil_transaksis_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
