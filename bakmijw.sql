-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2022 pada 03.03
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakmijw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Makanan', '2022-12-07 01:37:00', '2022-12-07 01:37:00'),
(2, 'Minuman', '2022-12-07 01:37:12', '2022-12-07 01:37:12'),
(3, 'Cemilan', '2022-12-07 01:37:20', '2022-12-07 01:37:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, '00001', 'IBNOE MALIK', 'pasir gadung', '080997823232', '2022-12-07 23:27:32', '2022-12-07 23:39:08'),
(3, '00003', 'SUPRON', 'Rajeg', '08997688584', '2022-12-07 23:39:48', '2022-12-07 23:39:48'),
(7, '00004', 'BAMBANG PAMUNGKAS', 'Rangkas', '08123958736', '2022-12-09 01:06:27', '2022-12-20 07:28:29'),
(8, '00005', 'KULSUM WINTARI', 'Rangkas Bitung', '0832817365', '2022-12-20 07:25:12', '2022-12-20 07:25:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_11_20_025301_create_sessions_table', 1),
(18, '2022_11_20_074254_tambah_kolom_baru_to_users_table', 1),
(19, '2022_11_20_074814_buat_kategori_table', 1),
(20, '2022_11_21_052133_tambah_kolom_to_users_table', 1),
(21, '2022_11_21_060714_buat_produk_table', 1),
(22, '2022_11_21_061630_buat_member_table', 1),
(23, '2022_11_29_084111_buat_supplier_table', 2),
(24, '2022_12_01_034212_tambah_foreign_key_to_produk_table', 2),
(25, '2022_12_04_055536_tambah_kode_produk_to_produk_table', 2),
(26, '2022_12_08_072908_create_settings_table', 3),
(27, '2022_12_09_062511_buat_supplier_table', 4),
(28, '2022_12_12_041659_buat_pembelian_table', 5),
(29, '2022_12_12_041730_buat_pembelian_detail_table', 5),
(30, '2022_12_12_045601_buat_pengeluaran_table', 6),
(31, '2022_12_14_213341_buat_setting_table', 7),
(32, '2022_12_14_214934_tambah_diskon_to_setting_table', 7),
(33, '2022_12_15_100950_buat_penjualan_table', 8),
(34, '2022_12_15_101000_buat_penjualan_detail_table', 8),
(35, '2022_12_15_103228_edit_id_member_to_penjualan_table', 8),
(36, '2022_12_16_104715_tambah_kolom_baru_to_users_table', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `bayar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(4, '1', '2', '15000', '0', '15000', '2022-12-13 22:15:13', '2022-12-13 22:17:42'),
(7, '1', '3', '18000', '0', '18000', '2022-12-13 23:31:39', '2022-12-13 23:33:18'),
(9, '1', '5', '33000', '2', '32340', '2022-12-14 14:39:44', '2022-12-14 15:26:45'),
(10, '4', '3', '18000', '20', '14400', '2022-12-15 08:18:28', '2022-12-15 08:19:01'),
(11, '2', '6', '36000', '50', '18000', '2022-12-16 03:55:46', '2022-12-16 04:33:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
(4, '4', '1', '3000', '1', '3000', '2022-12-13 22:15:26', '2022-12-13 22:15:26'),
(5, '4', '3', '12000', '1', '12000', '2022-12-13 22:15:41', '2022-12-13 22:15:41'),
(8, '7', '1', '3000', '2', '6000', '2022-12-13 23:31:48', '2022-12-13 23:33:12'),
(9, '7', '3', '12000', '2', '24000', '2022-12-13 23:31:54', '2022-12-13 23:33:15'),
(13, '9', '2', '3000', '2', '6000', '2022-12-14 14:39:56', '2022-12-14 14:40:06'),
(14, '9', '3', '12000', '2', '24000', '2022-12-14 14:39:59', '2022-12-14 14:40:16'),
(15, '9', '1', '3000', '1', '3000', '2022-12-14 15:26:41', '2022-12-14 15:26:41'),
(16, '10', '3', '12000', '1', '12000', '2022-12-15 08:18:37', '2022-12-15 08:18:37'),
(17, '10', '1', '3000', '1', '3000', '2022-12-15 08:18:43', '2022-12-15 08:18:43'),
(18, '10', '2', '3000', '2', '6000', '2022-12-15 08:18:47', '2022-12-15 08:18:50'),
(19, '11', '1', '3000', '2', '6000', '2022-12-16 03:55:55', '2022-12-16 03:56:11'),
(20, '11', '2', '3000', '2', '6000', '2022-12-16 03:55:59', '2022-12-16 03:56:09'),
(21, '11', '3', '12000', '2', '24000', '2022-12-16 03:56:03', '2022-12-16 03:56:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `deskripsi`, `nominal`, `created_at`, `updated_at`) VALUES
(4, 'Pengeluaran uang kebersihan', 50000, '2022-12-11 23:45:26', '2022-12-17 00:33:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 19000, 5, 18050, 20000, 1, '2022-12-16 03:55:03', '2022-12-16 03:57:36'),
(2, 3, 1, 3800, 5, 3610, 10000, 1, '2022-12-16 04:09:42', '2022-12-16 04:34:46'),
(3, NULL, 0, 0, 0, 0, 0, 1, '2022-12-16 04:35:31', '2022-12-16 04:35:31'),
(4, NULL, 9, 75000, 0, 75000, 100000, 1, '2022-12-16 04:39:21', '2022-12-16 04:40:27'),
(5, NULL, 12, 84000, 0, 84000, 100000, 1, '2022-12-16 04:41:10', '2022-12-16 04:42:49'),
(6, NULL, 0, 0, 0, 0, 0, 1, '2022-12-17 02:12:29', '2022-12-17 02:12:29'),
(7, NULL, 0, 0, 0, 0, 0, 1, '2022-12-17 02:20:47', '2022-12-17 02:20:47'),
(8, NULL, 0, 0, 0, 0, 0, 1, '2022-12-17 02:25:40', '2022-12-17 02:25:40'),
(9, NULL, 0, 0, 0, 0, 0, 1, '2022-12-18 02:00:47', '2022-12-18 02:00:47'),
(10, NULL, 0, 0, 0, 0, 0, 1, '2022-12-20 03:58:40', '2022-12-20 03:58:40'),
(11, NULL, 0, 0, 0, 0, 0, 1, '2022-12-20 04:15:09', '2022-12-20 04:15:09'),
(12, NULL, 0, 0, 0, 0, 0, 1, '2022-12-20 04:15:28', '2022-12-20 04:15:28'),
(13, NULL, 5, 100000, 0, 100000, 100000, 1, '2022-12-20 04:36:33', '2022-12-20 04:37:25'),
(14, NULL, 0, 0, 0, 0, 0, 3, '2022-12-20 04:46:41', '2022-12-20 04:46:41'),
(15, NULL, 3, 40000, 0, 40000, 50000, 3, '2022-12-20 04:47:08', '2022-12-20 04:48:44'),
(16, NULL, 0, 0, 0, 0, 0, 1, '2022-12-20 05:15:33', '2022-12-20 05:15:33'),
(17, NULL, 0, 0, 0, 0, 0, 1, '2022-12-20 07:32:36', '2022-12-20 07:32:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4000, 1, 5, 4000, '2022-12-16 03:57:04', '2022-12-16 03:57:36'),
(3, 2, 1, 4000, 1, 5, 4000, '2022-12-16 04:09:56', '2022-12-16 04:10:05'),
(4, 4, 1, 4000, 1, 0, 4000, '2022-12-16 04:39:30', '2022-12-16 04:39:30'),
(5, 4, 8, 20000, 2, 0, 40000, '2022-12-16 04:39:34', '2022-12-16 04:40:01'),
(6, 4, 3, 15000, 1, 0, 15000, '2022-12-16 04:39:37', '2022-12-16 04:39:37'),
(7, 4, 2, 5000, 2, 0, 10000, '2022-12-16 04:39:41', '2022-12-16 04:39:51'),
(8, 4, 9, 2000, 3, 0, 6000, '2022-12-16 04:39:44', '2022-12-16 04:40:04'),
(9, 5, 1, 4000, 1, 0, 4000, '2022-12-16 04:42:12', '2022-12-16 04:42:12'),
(10, 5, 8, 20000, 2, 0, 40000, '2022-12-16 04:42:15', '2022-12-16 04:42:30'),
(11, 5, 3, 15000, 1, 0, 15000, '2022-12-16 04:42:18', '2022-12-16 04:42:18'),
(12, 5, 2, 5000, 3, 0, 15000, '2022-12-16 04:42:21', '2022-12-16 04:42:33'),
(13, 5, 9, 2000, 5, 0, 10000, '2022-12-16 04:42:24', '2022-12-16 04:42:36'),
(14, 6, 8, 20000, 40, 0, 800000, '2022-12-17 02:13:08', '2022-12-17 02:17:32'),
(15, 7, 8, 20000, 75, 0, 1500000, '2022-12-17 02:24:20', '2022-12-17 02:24:41'),
(16, 8, 1, 4000, 1, 0, 4000, '2022-12-17 02:27:23', '2022-12-17 02:27:23'),
(17, 8, 8, 20000, 2, 0, 40000, '2022-12-17 02:27:26', '2022-12-17 02:27:34'),
(18, 8, 3, 15000, 1, 0, 15000, '2022-12-17 02:27:30', '2022-12-17 02:27:30'),
(20, 9, 8, 20000, 1, 0, 20000, '2022-12-18 02:01:03', '2022-12-18 02:01:03'),
(21, 13, 8, 20000, 5, 0, 100000, '2022-12-20 04:36:44', '2022-12-20 04:36:56'),
(22, 15, 8, 20000, 1, 0, 20000, '2022-12-20 04:47:17', '2022-12-20 04:47:17'),
(23, 15, 3, 15000, 1, 0, 15000, '2022-12-20 04:47:23', '2022-12-20 04:47:23'),
(26, 15, 2, 5000, 1, 0, 5000, '2022-12-20 04:48:27', '2022-12-20 04:48:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 2, 'P000001', 'Aqua', '-', 3000, 0, 4000, 17, '2022-12-07 21:25:02', '2022-12-20 07:29:22'),
(2, 2, 'P000002', 'Teh Manis', '-', 3000, 0, 5000, 16, '2022-12-07 21:25:35', '2022-12-20 04:48:44'),
(3, 1, 'P000003', 'Bakmi Original', '-', 12000, 0, 15000, 97, '2022-12-07 21:26:03', '2022-12-20 04:48:44'),
(8, 1, 'P000004', 'Bakmi Ayam Panggang', '-', 15000, 0, 20000, 90, '2022-12-16 04:36:52', '2022-12-20 04:48:44'),
(9, 3, 'P000009', 'Tik-Tak', '-', 1000, 0, 2000, 92, '2022-12-16 04:37:44', '2022-12-16 04:42:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RvzEFQJ4MDl6vpGB6W0j8tFnlZcPk5xvWhBUKuLA', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHdRWTFPdTdCZlhFWjhmdkE1YXZkSmtNWnA2OXlIeWY5QzNZSDZSWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9CYWttaUt1L3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1671544748),
('wqoFcxLllUWDWhgqJ2BLqRJV15jKO4Zta2Mr13ZX', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicHVjbHZUUElkUWoyNHpNZlIwSXJNSEcwWDFCRFB3Um9rT0t3V0xyeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9CYWttaUt1L3B1YmxpYy9zdXBwbGllciI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1671549713);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Bakmi Jowo', 'Jl. Puspitek', '089999996', 1, 5, '/img/logo.png', '/img/member.png', NULL, '2022-12-20 06:27:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'EVAN DIMAS', 'Surabaya', '08997688584', '2022-12-09 00:51:49', '2022-12-20 07:27:31'),
(2, 'FIRMAN UTINA', 'Serang', '081308989', '2022-12-09 01:00:54', '2022-12-20 07:27:00'),
(4, 'ILHAM JAYA KUSUMA', 'Karawaci', '08977353677', '2022-12-11 20:55:51', '2022-12-20 07:28:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Daphon', 'daphon11@gmail.com', NULL, '$2y$10$PfTWJ8IJ3cqNfFiXCJ8XWe6W1BJTXDuEnDDORfKLHLL52XdVY4g0W', '/img/logo-20221217090940.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-07 01:35:25', '2022-12-17 02:09:40'),
(3, 'Tari (Kasir)', 'kasir@gmail.com', NULL, '$2y$10$3Jr.OQHvFjRMIhItyksLL.O/nBVWr/VvoTIbH1w3QjiLsQLFTbHCm', '/img/logo-20221220114021.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-17 00:59:54', '2022-12-20 04:40:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
