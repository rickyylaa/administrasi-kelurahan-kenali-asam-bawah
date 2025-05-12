-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2025 at 07:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asam-bawah`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '0001_01_01_000000_create_users_table', 1),
(12, '0001_01_01_000001_create_cache_table', 1),
(13, '0001_01_01_000002_create_jobs_table', 1),
(14, '2025_01_27_031103_create_wargas_table', 1),
(15, '2025_01_31_094831_create_surats_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('f8X0150icozVIE0I5REoXTO5YH2zwhoBZSHxkRS2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYWtGV2N1eEZGT1BScTBWaGM0bEZGNFNTTzVuaGVEQkF6cnRsdlRyaiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2NldGFrL3N1cmF0Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9fQ==', 1740337233);

-- --------------------------------------------------------

--
-- Table structure for table `surats`
--

CREATE TABLE `surats` (
  `id` bigint UNSIGNED NOT NULL,
  `warga_id` bigint UNSIGNED DEFAULT NULL,
  `jenis_surat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_kk` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_warga` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengajuan_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konfirmasi_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cetak_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Diajukan','Dikonfirmasi','Selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surats`
--

INSERT INTO `surats` (`id`, `warga_id`, `jenis_surat`, `no_kk`, `nik`, `rt`, `nama_warga`, `pengajuan_by`, `konfirmasi_by`, `cetak_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 33, 'Surat Keterangan Tidak Mampu', '1571073003110012', '1571072606790121', '19', 'Adkun Siringgo Ringo', 'Lurah', NULL, NULL, 'Dikonfirmasi', '2025-02-23 11:58:53', '2025-02-23 11:59:50'),
(2, 33, 'Surat Keterangan Domisili', '1571073003110012', '1571072606790121', '19', 'Adkun Siringgo Ringo', 'Lurah', NULL, NULL, 'Dikonfirmasi', '2025-02-23 11:59:04', '2025-02-23 11:59:43'),
(3, 33, 'Surat Keterangan Kematian', '1571073003110012', '1571072606790121', '19', 'Adkun Siringgo Ringo', 'Lurah', NULL, NULL, 'Dikonfirmasi', '2025-02-23 11:59:12', '2025-02-23 11:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_verified_at` datetime DEFAULT NULL,
  `role` enum('Petugas','Kasi','Staff','Lurah') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `rt`, `no_hp`, `no_hp_verified_at`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lurah', 'lurah', 'lurah@gmail.com', '2025-02-23 11:58:23', '$2y$12$he8Ob.n0foxa1tjr9V0GNOdJudynZm2Z2wMRsFxWN47W/qppAr0PO', '09', '08123456789', '2025-02-23 18:58:24', 'Lurah', NULL, '2025-02-23 11:58:24', '2025-02-23 11:58:24'),
(2, 'Kasi', 'kasi', 'kasi@gmail.com', '2025-02-23 11:58:24', '$2y$12$lZUDnVPRRgwMh.GwnueWLuxaibb5lPejVL3MThJlYh1MWxY/9gKeq', '09', '08123456789', '2025-02-23 18:58:24', 'Kasi', NULL, '2025-02-23 11:58:24', '2025-02-23 11:58:24'),
(3, 'Staff', 'staff', 'staff@gmail.com', '2025-02-23 11:58:24', '$2y$12$yOfpvwuSYhKkCW4Jvw9HN.1ar/7S5gyfQsfOAO2jSSLLgUV4qAo.y', '09', '08123456789', '2025-02-23 18:58:25', 'Staff', NULL, '2025-02-23 11:58:25', '2025-02-23 11:58:25'),
(4, 'Petugas', 'petugas', 'petugas@gmail.com', '2025-02-23 11:58:25', '$2y$12$vYS.Wjvowa.TMWNcmuqd8OORmT4BpFjZL7cuJ5CAlTvMEjcbpefRK', '19', '08123456789', '2025-02-23 18:58:25', 'Petugas', NULL, '2025-02-23 11:58:25', '2025-02-23 11:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `wargas`
--

CREATE TABLE `wargas` (
  `id` bigint UNSIGNED NOT NULL,
  `rt` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_kk` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` enum('Islam','Protestan','Hindu','Budha','Katolik','Konghucu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kawin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_keluarga` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wargas`
--

INSERT INTO `wargas` (`id`, `rt`, `no_kk`, `nik`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pendidikan`, `pekerjaan`, `status_kawin`, `status_keluarga`, `created_at`, `updated_at`) VALUES
(1, '01', '1571071603060030', '1571074808020041', 'Zesika Arjanie', 'Perempuan', 'Jambi', '2002-08-04', 'Islam', 'SLTA Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(2, '01', '1571071603060030', '1571072202040061', 'Chaly Qori Mubaroq', 'Laki-laki', 'Jambi', '2004-02-22', 'Islam', 'Tamat SD Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(3, '01', '1571071603060030', '1571071409770000', 'Anantoko', 'Laki-laki', 'Jambi', '1977-09-14', 'Islam', 'SLTA Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(4, '01', '1571071603060030', '1571076206810021', 'Erika Iriani', 'Perempuan', 'Jambi', '1981-06-22', 'Islam', 'SLTA Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(5, '01', '1571071603060030', '1571074808020041', 'Zesika Arjanie', 'Perempuan', 'Jambi', '2002-08-04', 'Islam', 'SLTA Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(6, '01', '1571071603060030', '1571072202040061', 'Chaly Qori Mubaroq', 'Laki-laki', 'Jambi', '2004-02-22', 'Islam', 'Tamat SD Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(7, '01', '1571071603060030', '1571071607080001', 'Muhammad Iqbal Nugraha', 'Laki-laki', 'Jambi', '2008-07-16', 'Islam', 'Belum Tamat SD Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(8, '01', '1571071603060030', '1571075611170001', 'Arya Bellyania Adzkiya', 'Perempuan', 'Jambi', '2017-11-16', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(9, '01', '1571073107060001', '1571071812770001', 'Andi Wiyono', 'Laki-laki', 'Jambi', '1977-12-18', 'Islam', 'SLTA Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(10, '01', '1571073107060001', '1571075604840021', 'Sesi Endrita', 'Perempuan', 'Jambi', '1984-04-16', 'Islam', 'SLTA Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(11, '01', '1571073107060001', '1571075301090001', 'Vira Dwi Anjani', 'Perempuan', 'Jambi', '2009-01-13', 'Islam', 'SLTP Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(12, '01', '1571073107060001', '1571072011200003', 'Muhammad Andriano', 'Laki-laki', 'Jambi', '2020-11-20', 'Islam', 'Tidak/Blm Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(13, '01', '157107140610012', '1571071203770141', 'Ariyadi', 'Laki-laki', 'Jambi', '1977-03-12', 'Islam', 'Belum Tamat SD/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(14, '01', '157107140610012', '1571074506810201', 'Yuningsih', 'Perempuan', 'Jambi', '1981-06-05', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(15, '01', '157107140610012', '1571072108020101', 'Kesuma Putra Pratama', 'Laki-laki', 'Jambi', '2002-08-21', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(16, '01', '157107140610012', '1571076009040142', 'Dwi Indah Saputri', 'Perempuan', 'Jambi', '2004-09-20', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(17, '01', '157107140610012', '1571074806100001', 'Juwita Ardina Putri', 'Perempuan', 'Jambi', '2010-06-08', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(18, '01', '157107140610012', '1571074612110021', 'Nur Aisyah Jelita Putri', 'Perempuan', 'Jambi', '2011-12-06', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(19, '01', '1571072006070050', '1571070912820001', 'Amiruddin. S', 'Laki-laki', 'PSP.Barat', '1982-12-09', 'Islam', 'SLTP/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(20, '01', '1571072006070050', '1571075807740041', 'Aliya', 'Perempuan', 'Palembang', '1974-07-16', 'Islam', 'Belum Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(21, '01', '1571072006070050', '1571071410930041', 'Olia Min Rahman', 'Laki-laki', 'Jambi', '1993-10-14', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(22, '01', '1571072006070050', '1571071401010001', 'Aripin', 'Laki-laki', 'Jambi', '2001-01-14', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(23, '01', '1571072006070050', '1571075512010061', 'Pitriana', 'Perempuan', 'Jambi', '2001-12-15', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(24, '01', '1571072006070050', '1571074512090021', 'Mirna Deswita Sinaga', 'Perempuan', 'Jambi', '2009-12-05', 'Islam', 'Tamat SD/Mahasiswa', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(25, '01', '1571070705120000', '1571071708720161', 'Ariansyah', 'Laki-laki', 'Dawas', '1972-08-17', 'Islam', 'SLTP/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(26, '01', '1571070705120000', '1571074506740181', 'Herma Heawati', 'Perempuan', 'Ngunang', '1974-06-05', 'Islam', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(27, '01', '1571070705120000', '1571074901960062', 'Meri Susanti', 'Perempuan', 'B.Lampung', '1996-01-09', 'Islam', 'SLTA/Sederajat', 'Belum / Tidak Bekerja', 'Kawin', 'Anak', NULL, NULL),
(28, '01', '1571070705120000', '1551076104990021', 'Heni Apriliyanti', 'Perempuan', 'B.Lampung', '1996-04-21', 'Islam', 'SLTA/Sederajat', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(29, '01', '1571071710110010', '1571070304710081', 'Azwan Effendi', 'Laki-laki', 'Palembang', '1971-04-03', 'Islam', 'Belum Tamat SD/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(30, '01', '1571071710110010', '1571076909810101', 'Saimah', 'Perempuan', 'Jambi', '1981-09-29', 'Islam', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(31, '01', '1571071710110010', '1571075812110024', 'Delta Mayori', 'Perempuan', 'Jambi', '2011-12-18', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(32, '01', '1571071710110010', '157107081180001', 'Devan Prasetyo', 'Laki-laki', 'Jambi', '2018-01-08', 'Islam', 'Tidak/Belum Sedekah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(33, '19', '1571073003110012', '1571072606790121', 'Adkun Siringgo Ringo', 'Laki-laki', 'Rawang', '1976-06-26', 'Protestan', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin B.Tercatat', 'Kepala Keluarga', NULL, NULL),
(34, '19', '1571073003110012', '1571075106810121', 'Juniar Ellen Br Gulton', 'Perempuan', 'O. Runggu', '1981-06-13', 'Protestan', 'Diploma', 'Mengurus Rumah Tangga', 'Kawin B.Tercatat', 'Isteri', NULL, NULL),
(35, '19', '1571073003110012', '1571073110090022', 'Denis Dither Oktavia SR', 'Laki-laki', 'Jambi', '2009-07-01', 'Protestan', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(36, '19', '1571073003110012', '1571074708120006', 'Krisalia Siringgo Ringo', 'Perempuan', 'Jambi', '2012-08-07', 'Protestan', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(37, '19', '1571073003110012', '1571094609140002', 'Yosen Siringgo Ringgo', 'Perempuan', 'Jambi', '2014-10-06', 'Protestan', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(38, '19', '1311031512150001', '1311031304870002', 'Muhammad Said', 'Laki-laki', 'S.Pangkur', '1987-03-03', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(39, '19', '1311031512150001', '1311034411890001', 'Magdarianis', 'Perempuan', 'S.Pangkur', '1989-11-04', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(40, '19', '1311031512150001', '1311031602160002', 'Muhammad Ichan Ariq', 'Laki-laki', 'S.Selatan', '2016-02-16', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(41, '19', '1311031512150001', '1311035011210001', 'Adiba Aishwa Nahla', 'Perempuan', 'Jambi', '2021-11-10', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(42, '19', '1571010308060001', '1571011302820001', 'Ferry Saputra', 'Laki-laki', 'Jambi', '1992-02-13', 'Islam', 'SLTA/Sederajat', 'Transportasi', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(43, '19', '1571010308060001', '1571014710850021', 'Siti Komala Sari', 'Perempuan', 'Jambi', '1985-10-07', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(44, '19', '1571010308060001', '1571012105050021', 'Enrico Saputra', 'Laki-laki', 'Jambi', '2005-05-21', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(45, '19', '1571010308060001', '1571016502110001', 'Fernita Putri Dewi', 'Perempuan', 'Jambi', '2011-02-25', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(46, '19', '1571010308060001', '1571076608190001', 'Finara Putri Dewi', 'Perempuan', 'Jambi', '2019-06-25', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(47, '19', '1571070610160019', '1503031211930001', 'Arya Dinanda', 'Laki-laki', 'Sarolagun', '1993-11-12', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(48, '19', '1571070610160019', '1502064202930004', 'Hendri Kesuma Dewi', 'Perempuan', 'Pamenang', '1993-02-02', 'Islam', 'Akademi/Diploma III/SM', 'Wiraswasta', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(49, '19', '1571070610160019', '1571074407190001', 'Insyira Ghanya Dinanda', 'Perempuan', 'Jambi', '2019-07-04', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(50, '19', '1571070610160019', '1571072005220001', 'Ozkan Izqian Dinanda', 'Laki-laki', 'Jambi', '2022-05-20', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(51, '19', '1571081604130002', '1571071202870061', 'Sobirin', 'Laki-laki', 'Jambi', '1987-02-12', 'Islam', 'SLTP/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(52, '19', '1571081604130002', '1571084312860021', 'Devi Desriani', 'Perempuan', 'Padang', '1986-12-03', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(53, '19', '1571081604130002', '1571084603120022', 'Reni Marlina Sari', 'Perempuan', 'Jambi', '2012-03-06', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(54, '19', '1571081604130002', '1571084906150001', 'Resti Mutia Sari', 'Perempuan', 'Jambi', '2015-06-09', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(55, '19', '1571022304150020', '1571021809870041', 'Ilham Septiadi', 'Laki-laki', 'Jambi', '1987-08-18', 'Islam', 'Diploma IV/Strata I', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(56, '19', '1571022304150020', '1571025601910001', 'Debby Silviani', 'Perempuan', 'Jambi', '1991-01-16', 'Islam', 'Diploma IV/Strata I', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(57, '19', '1571022304150020', '1571116103160003', 'Arsyfa Alfathunissa', 'Perempuan', 'Jambi', '2016-03-21', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(58, '19', '1571022304150020', '1571116511180004', 'Haziqa Syahila Rumaisha', 'Perempuan', 'Jambi', '2018-11-25', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(59, '19', '1571070403160006', '1504032503910002', 'Ardani', 'Laki-laki', 'Jambi', '1991-03-25', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(60, '19', '1571070403160006', '1504036707920003', 'Junita', 'Perempuan', 'P.Siantar', '1992-07-27', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(61, '19', '1571070403160006', '1504031703110003', 'M.Yuda Rafael', 'Laki-laki', 'M.Bulian', '2011-03-17', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(62, '19', '1571070403160006', '1571095407220003', 'Zerin Karimah Julita', 'Perempuan', 'Jambi', '2022-07-14', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(63, '19', '1571070705180004', '1571071011900081', 'Erick Pratama', 'Laki-laki', 'Jambi', '1990-11-10', 'Islam', 'Diploma IV/Strata I', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(64, '19', '1571070705180004', '1505075809920001', 'Ma\"rifah Maulia', 'Perempuan', 'Jambi', '1992-05-18', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(65, '19', '1571070705180004', '1571075710180001', 'Ayeesha Sakura', 'Perempuan', 'Jambi', '2018-10-17', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(66, '19', '1571042608150002', '1571031503910041', 'Rahmat Hidayat', 'Laki-laki', 'Sarolangun', '1991-03-15', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(67, '19', '1571042608150002', '1571045004880001', 'Ipra Juwita', 'Perempuan', 'Lampung', '1988-04-10', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(68, '19', '1571042608150002', '1571044804160001', 'Raisyah Annisa Aprili', 'Perempuan', 'Jambi', '2016-04-08', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(69, '19', '1571042608150002', '1571045501220001', 'Rasyila Annisan Putri', 'Perempuan', 'Jambi', '2022-01-15', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(70, '19', '1571021803100027', '1571022109820201', 'Azwar Anas', 'Laki-laki', 'Jambi', '1982-09-21', 'Islam', 'SLTP/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(71, '19', '1571021803100027', '1571026102890081', 'Nunik  Larasati', 'Perempuan', 'Jambi', '1989-02-21', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(72, '19', '1571021803100027', '1571020603100001', 'Reza Aldo Pratama', 'Laki-laki', 'Jambi', '2010-03-06', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(73, '19', '1571021803100027', '1571025507140007', 'Julia Putri Ramadhani', 'Perempuan', 'Jambi', '2014-07-15', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(74, '19', '1571021803100027', '1571076701210001', 'Khanza Nur Latifa', 'Perempuan', 'Jambi', '2021-01-21', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(75, '19', '1312041503180003', '1312041910820003', 'Dedi Hari Ranto', 'Laki-laki', 'Talu', '1982-10-19', 'Islam', 'Tamat SD/Sederajat', 'Petani/Pekebun', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(76, '19', '1312041503180003', '1312044105910002', 'Marni', 'Perempuan', 'Talu', '1991-05-01', 'Islam', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(77, '19', '1312041503180003', '1312041203180001', 'Muhammad Zen Pratama', 'Laki-laki', 'Talu', '2018-01-12', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(78, '19', '1571071308150008', '1505012204860001', 'Usman', 'Laki-laki', 'Senaung', '1986-04-22', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(79, '19', '1571071308150008', '1571076711920021', 'Noviyanti', 'Perempuan', 'Jakarta', '1992-11-27', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Isteri', NULL, NULL),
(80, '19', '1571071308150008', '1571095712150001', 'Savira Anatasyah', 'Perempuan', 'Jambi', '2015-12-17', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(81, '19', '1571071308150008', '1571071309220001', 'Muhd. Sultan Ar.Rahman', 'Laki-laki', 'Jambi', '2022-09-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja ', 'Belum Kawin', 'Anak', NULL, NULL),
(82, '6', '1571073007200005', '1505022501940001', 'Abdurrahman', 'Laki-laki', 'Tantan', '1994-01-25', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(83, '6', '1571073007200005', '1571014506980021', 'Riski Ananda Siregar', 'Perempuan', 'Jambi', '1998-06-05', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(84, '6', '1571073007200005', '1571070903210002', 'Ridho Pardomuan ', 'Laki-laki', 'Jambi', '2021-03-09', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(85, '6', '1571071302190000', '1504011807780002', 'Abjan Arimoto Nasution', 'Laki-laki', 'Pasaman', '1978-07-18', 'Islam', 'SLTA/Sederajat', 'Petani/Sederajat', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(86, '6', '1571071302190000', '1504014211810001', 'Riministia', 'Perempuan', 'Penerokan', '1981-11-02', 'Islam', 'Akademi/Diploma III/SM', 'PNS', 'Kawin Tercatat', 'Istri', NULL, NULL),
(87, '6', '1571071302190000', '1504013001080001', 'M.Fathur Hurasein Nasution', 'Laki-laki', 'Penerokan', '2008-01-30', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(88, '6', '1571071302190000', '1504011103110001', 'Rizqullah Izzatul Ibad Nasution', 'Laki-laki', 'Mersam', '2011-03-11', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(89, '6', '1571071302190000', '150401121280001', 'M.Alaric Azzahidi Nasution', 'Laki-laki', 'Batang Hari', '2016-12-12', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(90, '6', '1571072601150017', '1401102908830001', 'Agus Setiawan', 'Laki-laki', 'T.Agung', '1983-08-29', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(91, '6', '1571072601150017', '1401105401840001', 'Maryani', 'Perempuan', 'Jambi', '1984-01-14', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(92, '6', '1571072601150017', '1401101704070003', 'Aprichal Setiawan', 'Laki-laki', 'Jambi', '2007-04-17', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(93, '6', '1571072601150017', '1571076103160002', 'Ayla Setiawan', 'Perempuan', 'Jambi', '0215-02-21', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(94, '6', '157107079160007', '1571070606850081', 'Ahmad Ripani', 'Laki-laki', 'M. Bungo', '1985-05-06', 'Islam', 'Diploma IV/Strata I', 'Karyawan Honorer', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(95, '6', '157107079160007', '1571075306870021', 'Yunita Ernaz', 'Perempuan', 'Jambi', '1987-06-13', 'Islam', 'Diploma IV/Strata I', 'Karyawan Honorer', 'Kawin Tercatat', 'Istri', NULL, NULL),
(96, '6', '157107079160007', '1571970101170002', 'M.Ibni Khairy Yezan', 'Laki-laki', 'Jambi', '2017-01-01', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(97, '6', '157107079160007', '1571073010190002', 'M.Zaz Manha Yezar', 'Laki-laki', 'Jambi', '2019-10-30', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(98, '6', '1571071704120030', '1571080402830021', 'Alexander', 'Laki-laki', 'Jambi', '1983-02-04', 'Islam', 'Akademi/Diploma III/SM', 'PNS', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(99, '6', '1571071704120030', '1571074507840001', 'Sulastri. S', 'Perempuan', 'Jambi', '1984-07-05', 'Islam', 'Akademi/Diploma III/SM', 'Karyawan Swasta', 'Kawin Tercatat', 'Istri', NULL, NULL),
(100, '6', '1571071704120030', '1571077107180002', 'Sabarina Sakini', 'Perempuan', 'Jambi', '2018-07-31', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(101, '6', '1571070803100001', '1571070907780081', 'Ali Aritonang', 'Laki-laki', 'Jambi', '1978-07-09', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(102, '6', '1571070803100001', '1571075505810283', 'Lasmia Pohan', 'Perempuan', 'Sekayu', '1981-05-15', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(103, '6', '1571070803100001', '1571074401110021', 'Khesya  Parella Aritonang', 'Perempuan', 'Jambi', '2011-01-04', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(104, '6', '1571070803100001', '1571076806130003', 'Nur Valencia Rivani', 'Perempuan', 'Jambi', '2013-05-28', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(105, '6', '1571070803100001', '1571071002080081', 'Erik Aritonang', 'Laki-laki', 'Sidempuan', '2008-02-10', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Famili Lain', NULL, NULL),
(106, '6', '1571072303060035', '1571071207500001', 'Amat Safuan', 'Laki-laki', 'Jambi', '1950-07-12', 'Islam', 'SLTA/Sederajat', 'Petani/Pekebun', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(107, '6', '1571072303060035', '1571077112590181', 'Nurhasanah', 'Perempuan', 'Jambi', '1956-12-31', 'Islam', 'Belum Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(108, '6', '1571072809050001', '1571070401670001', 'Anang', 'Laki-laki', 'Palembang', '1968-01-04', 'Budha', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(109, '6', '1571072809050001', '1571075510700001', 'Pui Hoa Cen', 'Perempuan', 'Palembang', '1970-10-15', 'Budha', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(110, '6', '1571072809050001', '1571076301960001', 'Melissa', 'Perempuan', 'Palembang', '1996-01-23', 'Budha', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(111, '6', '1571072809050001', '1571071210990001', 'Ade Saputra', 'Laki-laki', 'Jambi', '0198-10-12', 'Budha', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(112, '6', '1571072809050001', '1571072607020021', 'Johan Syahputra', 'Laki-laki', 'Jambi', '2007-07-26', 'Budha', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(113, '6', '1571072809050001', '1571075801450001', 'Temu', 'Perempuan', 'Palembang', '1945-01-18', 'Budha', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin B.Tercatat', 'Mertua', NULL, NULL),
(114, '6', '1571072809050001', '1571074602670001', 'Tjuan Sek', 'Perempuan', 'Palembang', '1967-02-06', 'Budha', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Cerai Hidup Belum Tercatat', 'Lainnya', NULL, NULL),
(115, '6', '1571071612130003', '1571070904860001', 'Boyke Simatupang', 'Laki-laki', 'Jambi', '1986-04-09', 'Islam', 'SLTA/Sederajat', 'Kepolian RI (POLRI)', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(116, '6', '1571071612130003', '1571075004870081', 'Vici PURWANTI', 'Perempuan', 'Jambi', '1987-04-10', 'Islam', 'Diploma I/II', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(117, '6', '1571071612130003', '1571075112130001', 'Rania Anindya Zafira', 'Perempuan', 'Jambi', '2013-12-11', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(118, '6', '1571071612130003', '1571074902210002', 'Raina Aiza Humaira', 'Perempuan', 'Jambi', '2021-02-09', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(119, '6', '1571071612130003', '1571070906220004', 'Rayyan Ahmad Assami', 'Laki-laki', 'Jambi', '2022-06-09', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(120, '6', '1571071612130003', '1571074305490001', 'Wagirah', 'Perempuan', 'Jambi', '1949-05-03', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin B.Tercatat', 'Orang Tua', NULL, NULL),
(121, '6', '1571070512170014', '3203050101900048', 'Cecep', 'Laki-laki', 'Cianjur', '1980-01-01', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(122, '6', '1571070512170014', '1571094710840001', 'Marina', 'Perempuan', 'Jambi', '1984-10-07', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(123, '6', '1571070512170014', '1571096806020001', 'Resti Amelia Kartika Ayu', 'Perempuan', 'Jambi', '2002-06-28', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(124, '6', '1571070512170014', '1571070508190003', 'Gallen Rey Suhendra Cecep', 'Laki-laki', 'Jambi', '2019-08-05', 'Islam', 'Tidak/Belum Sekolah', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(125, '6', '1571070512170014', '1571070810120005', 'M. Wira Utama Gunawan', 'Laki-laki', 'Cianjur', '2012-10-08', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Famili Lain', NULL, NULL),
(126, '6', '1571071711110013', '1571071405860141', 'Dani Yuanda', 'Laki-laki', 'Jambi', '1986-05-14', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(127, '6', '1571071711110013', '1571074105870061', 'Tri Syamsiyati', 'Perempuan', 'Jambi', '1987-05-01', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Istri', NULL, NULL),
(128, '6', '1571071711110013', '1571076206190001', 'Cyra Felisha Dayutri', 'Perempuan', 'Jambi', '2019-06-22', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(129, '6', '1571071711110013', '1571076302210001', 'Mysha Rahayu Dayutri', 'Perempuan', 'Jambi', '2021-02-23', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(130, '6', '1571071711110013', '1571075907670041', 'Helena Simatupang', 'Perempuan', 'Jambi', '1967-07-19', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Cerai Mati', 'Orang Tua', NULL, NULL),
(131, '6', '1571111802160002', '1571072511890061', 'Devi Nopriansyah', 'Laki-laki', 'Jambi', '1989-11-25', 'Islam', 'Diploma IV/Strata I', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(132, '6', '1571111802160002', '1571026605880021', 'Fera Fenolia', 'Perempuan', 'Jambi', '0198-05-25', 'Islam', 'Diploma IV/Strata I', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(133, '6', '1571111802160002', '1571111620716002', 'Fatimah Azzahra', 'Perempuan', 'Jambi', '2016-07-22', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(134, '6', '1571111802160002', '1571075205230001', 'Aminah Alifatul Jannah', 'Perempuan', 'Jambi', '2023-05-12', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(135, '6', '1571111802160002', '160624608030004', 'Amelina Puspa Disa', 'Perempuan', 'T.A.Barat', '2003-08-06', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Famili Lain', NULL, NULL),
(136, '6', '1571071707180004', '3275095302780007', 'Diya Wendasari', 'Perempuan', 'Jakarta', '1978-02-13', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Cerai Mati', 'Kepala Keluarga', NULL, NULL),
(137, '6', '1571071707180004', '1571096201170001', 'Aaleyah Faiza Faihanah', 'Perempuan', 'Jambi', '2017-01-22', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(138, '6', '1571071107120002', '1505012310890001', 'Doni Putra', 'Laki-laki', 'Jambi', '1989-10-22', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(139, '6', '1571071107120002', '1571075906920041', 'Netri Susanti', 'Perempuan', 'Jambi', '1992-06-19', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(140, '6', '1571071107120002', '1571075706120002', 'Azzahra Trioni Putri', 'Perempuan', 'Jambi', '2012-06-17', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(141, '6', '1571071107120002', '1571076109180001', 'Adzkya Azkadina Trioni', 'Perempuan', 'Jambi', '2018-09-21', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(142, '6', '1571070504130004', '1571071005780202', 'Edi Purwanto', 'Laki-laki', 'Jambi', '1978-05-10', 'Islam', 'SLTP/Sederajat', 'Karyawan Honorer', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(143, '6', '1571070504130004', '1571074711850021', 'Elawati', 'Perempuan', 'Jambi', '1985-11-07', 'Islam', 'Belum Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(144, '6', '1571070504130004', '1571074206050081', 'Eka Yunita', 'Perempuan', 'Jambi', '2005-06-02', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(145, '6', '1571070504130004', '1571076003130004', 'Fitri Yani', 'Perempuan', 'Jambi', '2013-03-20', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(146, '6', '1571073103110005', '1571072908700062', 'Edison Simatupang', 'Laki-laki', 'Jambi', '1970-08-29', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(147, '6', '1571073103110005', '1571075208870141', 'Eliyana', 'Perempuan', 'Jambi', '1987-08-12', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(148, '6', '1571073103110005', '1571071606070081', 'Daffa Artur Aditya', 'Laki-laki', 'Jambi', '2007-06-16', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(149, '6', '1571072406190005', '1571044510620021', 'Ernainis', 'Perempuan', 'K.K.Jambi', '1962-10-05', 'Islam', 'SLTA/Sederajat', 'Guru', 'Cerai Mati', 'Kepala Keluarga', NULL, NULL),
(150, '6', '1571072406190005', '1571045401890001', 'Valen Isfiana Lestari', 'Perempuan', 'J.Mas', '0189-01-14', 'Islam', 'Diploma IV/Strata I', 'Guru', 'Belum Kawin', 'Anak', NULL, NULL),
(151, '6', '1571070902120030', '1571073011810141', 'Fanny Pratama Putra', 'Laki-laki', 'Jambi', '1981-11-30', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(152, '6', '1571070902120030', '1571075902800101', 'Eny Hartati', 'Perempuan', 'Jambi', '1980-02-19', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(153, '6', '1571070902120030', '1571076507140001', 'Nadifa Ramadhani Putri', 'Perempuan', 'Jambi', '2014-07-25', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(154, '6', '1571072911210002', '157107807900062', 'Hadi Sukmana', 'Laki-laki', 'Jambi', '1990-07-18', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(155, '6', '1571072911210002', '1572045201910002', 'Meli Setia Nengsih', 'Perempuan', 'Koto Panap', '1991-01-12', 'Islam', 'Diploma IV/Strata I', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(156, '6', '1571072911210002', '1571073112220020', 'Muhammad Arroyyan Alfaroqi', 'Laki-laki', 'Kerinci', '2022-12-31', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(157, '6', '1571071207170012', '1571073009870061', 'Harun Al Rasyid', 'Laki-laki', 'Jambi', '1987-09-30', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(158, '6', '1571071207170012', '1571077009870101', 'Rita Sektiyani', 'Perempuan', 'Jambi', '1987-09-30', 'Islam', 'Akademi/Diploma III/SM', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(159, '6', '1571071207170012', '1571075408170001', 'Shazfa Azrina Rasyid', 'Perempuan', 'Jambi', '2017-04-14', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(160, '6', '1571071207170012', '1571072102200001', 'M.Rasyid Al Ghifari', 'Laki-laki', 'Jambi', '2020-02-21', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(161, '6', '1571071206190002', '1505071109730001', 'Hendra Wijaya', 'Laki-laki', 'Jambi', '1972-09-11', 'Islam', 'SLTP/Sederajat', 'Karyawan BUMN', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(162, '6', '1571071206190002', '1505074909760001', 'Sri Wahyuni', 'Perempuan', 'T.Tinggi', '1976-11-09', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(163, '6', '1571071206190002', '1505071101010001', 'Anggara Wijaya', 'Laki-laki', 'S.Bahar', '2001-01-11', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(164, '6', '1571071206190002', '1505072803060001', 'Athur Wijaya', 'Laki-laki', 'S.Bahar', '2008-03-28', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(165, '6', '1571071109070004', '1571070703750001', 'Hendri', 'Laki-laki', 'T.Gedang', '1975-03-07', 'Islam', 'Akademi/Diploma III/SM', 'PNS', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(166, '6', '1571071109070004', '1571076407770080', 'Wiyatni', 'Perempuan', 'Jambi', '1977-07-24', 'Islam', 'Akademi/Diploma III/SM', 'PNS', 'Kawin Tercatat', 'Istri', NULL, NULL),
(167, '6', '1571071109070004', '1571072904010142', 'Widodo Afiyandri', 'Laki-laki', 'Jambi', '2001-04-29', 'Islam', 'SLTP/sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(168, '6', '1571071109070004', '1571076611040021', 'Rahma Fitriyani', 'Perempuan', 'Jambi', '2004-11-26', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(169, '6', '1571071109070004', '1571075512070101', 'Annisa Syahfitri', 'Perempuan', 'Jambi', '2007-12-15', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(170, '6', '1571010512120008', '1571010510800162', 'Herman', 'Laki-laki', 'Panggage', '1981-08-07', 'Islam', 'Tamat SD/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(171, '6', '1571010512120008', '1571014405830124', 'Nurlela', 'Perempuan', 'Panggage', '1983-05-04', 'Islam', 'SLTP/sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(172, '6', '1571010512120008', '1571012706030122', 'Wahyu Leman Ardi Yansa', 'Laki-laki', 'Jambi', '2003-06-27', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(173, '6', '1571010512120008', '1571014909070041', 'Septi Herla Angreini', 'Perempuan', 'Jambi', '2007-09-09', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(174, '6', '1571010512120008', '1571045304140005', 'Lesti', 'Perempuan', 'Jambi', '2014-04-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(175, '6', '1571022812100012', '1571020503820103', 'Hermasyah,HS', 'Laki-laki', 'Pel.Jambi', '1982-03-05', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(176, '6', '1571022812100012', '1571026208820141', 'Hutriyanisma', 'Perempuan', 'Palembang', '1982-08-22', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(177, '6', '1571022812100012', '1571026207070101', 'Julisyah Maha Suci', 'Perempuan', 'Jambi', '2007-07-22', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(178, '6', '1571022812100012', '1571022608090041', 'Gusti Syahputra', 'Laki-laki', 'Jambi', '2009-05-28', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(179, '6', '1571022812100012', '1571025811180001', 'Novisyah Risqiq', 'Perempuan', 'Jambi', '2018-11-18', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(180, '6', '1507072305180008', '1671092303800004', 'Husni Karmiza', 'Laki-laki', 'Palembang', '1980-03-23', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(181, '6', '1507072305180008', '1505054512960001', 'Diah Mariyani Nasution', 'Perempuan', 'Tanj.Timur', '1996-12-05', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(182, '6', '1507072305180008', '1505051107120004', 'M.Daffa Alfarizi', 'Laki-laki', 'Tempino', '2019-07-11', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(183, '6', '1571071405180018', '1871091803870003', 'Indra Saputra', 'Laki-laki', 'Palembang', '1987-03-18', 'Islam', 'Diploma I/II', 'Karyawan Swasta', 'Kawin', 'Kepala Keluarga', NULL, NULL),
(184, '6', '1571071405180018', '1801085502950001', 'Siska Cemulia', 'Perempuan', 'T.Lontar', '1985-02-15', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin', 'Istri', NULL, NULL),
(185, '6', '1571010712110014', '1571010807850141', 'Ismail', 'Laki-laki', 'Tanj.Barat', '1985-07-07', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(186, '6', '1571010712110014', '1571015510920101', 'Jamilah', 'Perempuan', 'Palembang', '1992-10-15', 'Islam', 'SLTP/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Istri', NULL, NULL),
(187, '6', '1571010712110014', '1571014412170002', 'Anindita Keisha', 'Perempuan', 'Jambi', '2017-12-04', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(188, '6', '1571010712110014', '1571070708200001', 'Ahmad Kieshan Habibie', 'Laki-laki', 'Jambi', '2020-08-07', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(189, '6', '1571050709090001', '1571052506840001', 'Iwan Santoso', 'Laki-laki', 'Jambi', '1984-06-25', 'Islam', 'SLTP/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(190, '6', '1571050709090001', '1571055810890001', 'Susana', 'Perempuan', 'Jambi', '1989-07-18', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(191, '6', '1571050709090001', '1571052608090001', 'M.Syafiq Ramadhan', 'Laki-laki', 'Jambi', '2009-08-26', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(192, '6', '1571050709090001', '1571050307140001', 'Farid Atalah Ramadhan', 'Laki-laki', 'Jambi', '2014-07-03', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(193, '6', '1571050709090001', '1571070403200001', 'Raziq Ammar Najwa', 'Laki-laki', 'Jambi', '2020-03-04', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(194, '6', '1571071507080004', '1571070902720021', 'Jasmaji', 'Laki-laki', 'Jambi', '1972-02-09', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(195, '6', '1571071507080004', '1571076006780041', 'Jumini', 'Perempuan', 'Jambi', '1978-06-20', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(196, '6', '1571071507080004', '1571076508020061', 'Indri Agustini', 'Perempuan', 'Jambi', '2002-08-25', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(197, '6', '1571071507080004', '1571070407100022', 'Nabil Bakhri', 'Laki-laki', 'Jambi', '2010-07-04', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(198, '6', '1571070805120012', '1571072412700042', 'Jon Feri Nelson', 'Laki-laki', 'Jambi', '1970-12-24', 'Islam', 'SLTA/Sederajat', 'TNI', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(199, '6', '1571070805120012', '1571074807790121', 'Niti Marlini', 'Perempuan', 'Bengkulu', '1979-07-08', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(200, '6', '1571070805120012', '1571074901980001', 'Desi Kartika', 'Perempuan', 'Bengkulu', '1998-01-09', 'Islam', 'Diploma IV/Strata I', 'PNS', 'Belum Kawin', 'Anak', NULL, NULL),
(201, '6', '1571070805120012', '1571075304040042', 'Olivia Sakina Dwi Putri', 'Perempuan', 'Bengkulu', '2004-04-13', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(202, '6', '1571070805120012', '1571072209100081', 'Rezky Rahmanda', 'Laki-laki', 'Jambi', '2010-09-22', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(203, '6', '1471100302210009', '1571072207920021', 'Juli Anggriawan', 'Laki-laki', 'Jambi', '1992-07-22', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(204, '6', '1471100302210009', '1471104805920063', 'Radot  Hotdiriau', 'Perempuan', 'Pekanbaru', '1992-05-08', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(205, '6', '1471100302210009', '1571071309180007', 'M.Rayhan Septianggara', 'Laki-laki', 'Jambi', '2018-09-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(206, '6', '1471100302210009', '1571070606210002', 'M.Arjuna Anggriawan', 'Laki-laki', 'Pekanbaru', '2021-06-06', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(207, '6', '1571070503200005', '1207262802920011', 'Kiki Elikardo Nababan', 'Laki-laki', 'L.Lintong', '1992-02-22', 'Protestan', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(208, '6', '1571070503200005', '1571074506880021', 'Yuni Perenika Naibaho', 'Perempuan', 'Jambi', '1988-06-05', 'Protestan', 'Diploma IV/Strata I', 'Wiraswasta', 'Kawin Tercatat', 'Istri', NULL, NULL),
(209, '6', '1571070503200005', '1571074909200001', 'Giselle Eirene Nababan', 'Perempuan', 'M.Jambi', '2020-09-09', 'Protestan', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(210, '6', '1571013105070022', '1561011305720021', 'Kristianto .H.Umboro', 'Laki-laki', 'Palembang', '1972-05-13', 'Islam', 'SLTA/Sederajat', 'PNS', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(211, '6', '1571013105070022', '1571014606760081', 'Reni Handayani', 'Perempuan', 'Palembang', '0176-06-06', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(212, '6', '1571013105070022', '1571011409020061', 'Andre Septiansyah', 'Laki-laki', 'Palembang', '2002-09-14', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(213, '6', '1571013105070022', '1571016203040001', 'Ayu Chanaya Thabita', 'Perempuan', 'Jambi', '2004-03-22', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(214, '6', '1505050602170001', '1505012910900001', 'M.Agung Wicaksono', 'Laki-laki', 'Jambi', '1990-10-29', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(215, '6', '1505050602170001', '1505056001910001', 'Rayika Pamungkas', 'Perempuan', 'M.Jambi', '1991-01-27', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(216, '6', '1505050602170001', '1505050406170002', 'Arkan Said Ibrohim', 'Laki-laki', 'Jambi', '2017-06-04', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(217, '6', '1505050602170001', '1505051504210003', 'Akhtar Rafiq Ismail', 'Laki-laki', 'Jambi', '2021-04-15', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(218, '6', '1571072112210003', '157107712590441', 'Markomah', 'Perempuan', 'Jambi', '1961-01-03', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Cerai Mati', 'Kepala Keluarga', NULL, NULL),
(219, '6', '1502082212090024', '1502080506650002', 'Marman Sarjonis', 'Laki-laki', 'Batu Sangkar', '1965-06-05', 'Islam', 'Diploma IV/Strata I', 'Sopir', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(220, '6', '1502082212090024', '1502086012720002', 'Nelti Rawati', 'Perempuan', 'M.Batu', '1972-12-20', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(221, '6', '1502082212090024', '1502082306040001', 'Wanda Aryajuna', 'Laki-laki', 'Bangko', '2004-06-23', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(222, '6', '1502082212090024', '1502082509080001', 'Fardan Maulana', 'Laki-laki', 'Rawa Jaya', '2008-09-25', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(223, '6', '1571072302110016', '1571070804810161', 'Maryono', 'Laki-laki', 'Jambi', '1981-04-08', 'Islam', 'SLTA/Sederajat', 'Sopir', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(224, '6', '1571072302110016', '1571075504820181', 'Suhartini', 'Perempuan', 'Riau', '1982-04-15', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(225, '6', '1571072302110016', '1571074911070062', 'Registha Maristin', 'Perempuan', 'Riau', '2007-11-09', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(226, '6', '1571072302110016', '1571071306200001', 'Riyostha Maristin', 'Laki-laki', 'Jambi', '2020-06-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(227, '6', '1571113011210005', '1571020611930121', 'Miftahul Ulum', 'Laki-laki', 'Seilandai', '1993-11-06', 'Islam', 'Diploma IV/Strata I', 'PNS', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(228, '6', '1571113011210005', '1505014909930001', 'Devi Karlina Holyanti', 'Perempuan', 'Sepabo', '1993-09-09', 'Islam', 'Diploma IV/Strata I', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(229, '6', '1571113011210005', '1571071209220002', 'Qiyas Shariq  Mudavi', 'Laki-laki', 'Jambi', '2022-09-12', 'Islam', 'Tidak/Belum Sekolah', 'Tidak Belum Sekolah', 'Belum Kawin', 'Anak', NULL, NULL),
(230, '6', '1504051603100036', '1504051304830008', 'Miswanto', 'Laki-laki', 'M.Bulian', '1983-04-13', 'Islam', 'Tamat SD/Sederajat', 'Petani/Pekebun', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(231, '6', '1504051603100036', '1504055010860005', 'Rita Okfriani', 'Perempuan', 'BT.Hari', '1986-10-10', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(232, '6', '1504051603100036', '1504052812050002', 'Rezi Desra Firmansyah', 'Laki-laki', 'BT.Hari', '2005-12-28', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(233, '6', '1504051603100036', '1504056201110001', 'Neysha Dwi Fadhila', 'Perempuan', 'T.Tinggi', '2011-01-22', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(234, '6', '1504051603100036', '1571075002210003', 'Naura Syaqillah Febrina', 'Perempuan', 'Jambi', '2021-02-10', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(235, '6', '1571012807230002', '1505084806770008', 'Mistiyah', 'Perempuan', 'Lampung', '1977-06-08', 'Islam', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Cerai tercatat', 'Kepala Keluarga', NULL, NULL),
(236, '6', '1571012807230002', '1505083110000002', 'Andre Alfredo', 'Laki-laki', 'Solok', '2000-10-31', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(237, '6', '1571012807230002', '1505084209100002', 'Wlga Ernesta', 'Perempuan', 'Jambi', '2010-09-02', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(238, '6', '1571020309150008', '1571010706900062', 'Muhammad Amin Hizrah', 'Laki-laki', 'G.Pamela', '1990-06-07', 'Islam', 'Akademi/Diploma III/SM', 'Perawat', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(239, '6', '1571020309150008', '1571025709910042', 'Donna Selfilia', 'Perempuan', 'Bengkulu', '1990-09-17', 'Islam', 'Akademi/Diploma III/SM', 'Perawat', 'Kawin Tercatat', 'Istri', NULL, NULL),
(240, '6', '1571020309150008', '1571074109150005', 'Salsabila Dzakiyah Azra', 'Perempuan', 'Jambi', '2015-09-01', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(241, '6', '1571070905230005', '1208110804960001', 'Muhammad Wahyu Aprianto', 'Laki-laki', 'Htran Jawa', '1996-04-08', 'Islam', 'Diploma IV/Strata I', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(242, '6', '1571070905230005', '1272025903960001', 'Marini Khoiriyah', 'Perempuan', 'P.Siantar', '1996-03-19', 'Islam', 'Diploma IV/Strata I', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(243, '6', '1571072903110014', '1571072111860101', 'Mujianto', 'Laki-laki', 'Blintar', '1986-11-21', 'Islam', 'Tamat SD/Sederajat', 'Tukang Las/Pandai Besi', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(244, '6', '1571072903110014', '1571076508880021', 'Suryani', 'Perempuan', 'Jambi', '1988-08-25', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(245, '6', '1571072903110014', '1571076203110001', 'Nabila Vauziya Riyani', 'Perempuan', 'Jambi', '2011-03-22', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(246, '6', '1571072903110014', '1571076811160004', 'Fairuz Khalisa', 'Perempuan', 'Jambi', '2016-11-28', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(247, '6', '1571070504060036', '1571072002710021', 'Murtiman', 'Laki-laki', 'Jambi', '1971-02-20', 'Islam', 'SLTA/Sederajat', 'Pedagang', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(248, '6', '1571070504060036', '1571076104740041', 'Dasilah', 'Perempuan', 'Purworejo', '1974-04-21', 'Islam', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(249, '6', '1571070504060036', '1571070707000041', 'Dimas Darma Kusumah', 'Laki-laki', 'Jambi', '1974-07-07', 'Islam', 'SLTA/Sederajat', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(250, '6', '1571070504060036', '1571070105090005', 'Amar Surya Darma', 'Laki-laki', 'Jambi', '2009-05-01', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(251, '6', '1304020103190013', '1305042403890001', 'Nurmaidi Efendi', 'Laki-laki', 'S.Sarik', '1989-05-03', 'Islam', 'SLTA/Sederajat', 'Pedagang', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL);
INSERT INTO `wargas` (`id`, `rt`, `no_kk`, `nik`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pendidikan`, `pekerjaan`, `status_kawin`, `status_keluarga`, `created_at`, `updated_at`) VALUES
(252, '6', '1304020103190013', '1304025807960001', 'Suci Kurniati', 'Perempuan', 'P.Panjang', '1996-07-13', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(253, '6', '1304020103190013', '1304025304180003', 'Putri Alia Safiqa', 'Perempuan', 'P.Panjang', '2018-04-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(254, '6', '1571070510180003', '1571071012920041', 'Prasetyo Aditya Sulistianto Fadly', 'Laki-laki', 'Jambi', '1992-12-10', 'Islam', 'Diploma IV/Strata I', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(255, '6', '1571070510180003', '1503044511920001', 'Sitriyah', 'Perempuan', 'Lambur', '1992-01-05', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(256, '6', '1571070510180003', '1571072303210002', 'Muahmmad Wildan Alfahri', 'Laki-laki', 'Jambi', '2021-03-23', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(257, '6', '1571071307070004', '1571071704800061', 'Priwandani', 'Laki-laki', 'Pendopo', '1980-04-17', 'Islam', 'SLTP/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(258, '6', '1571071307070004', '1571076205720061', 'Herliyanti', 'Perempuan', 'Jambi', '1972-05-22', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(259, '6', '1571071307070004', '1571076206070041', 'Chelsy Nabila Priska Andini', 'Perempuan', 'Jambi', '2007-06-22', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(260, '6', '1571071307070004', '1571072903140001', 'Byo Nauval Virka Sandewa', 'Laki-laki', 'Jambi', '2014-03-29', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(261, '6', '1571072709060018', '1571072802610001', 'Priyono', 'Laki-laki', 'Jambi', '1961-02-28', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(262, '6', '1571072709060018', '1571075808670001', 'Rukiyah', 'Perempuan', 'Jambi', '1967-08-16', 'Islam', 'SLTA/Sederajat', 'Guru', 'Kawin Tercatat', 'Istri', NULL, NULL),
(263, '6', '1571072709060018', '1571014909060001', 'Tri Riyani', 'Perempuan', 'Jambi', '2006-09-09', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(264, '6', '1571070907100012', '1571071706760101', 'Rachman', 'Laki-laki', 'Kasamba', '1975-06-17', 'Islam', 'SLTA/Sederajat', 'Buruh Harian Lepas', 'Kawin', 'Kepala Keluarga', NULL, NULL),
(265, '6', '1571070907100012', '1571076010750061', 'Tri Purwanti', 'Perempuan', 'Kasamba', '1975-10-20', 'Islam', 'SLTA/Sederajat', 'Penata Rias', 'Kawin', 'Istri', NULL, NULL),
(266, '6', '1571070907100012', '1571074803060121', 'Hanie Sasya Rachman', 'Perempuan', 'Kasamba', '2006-03-08', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(267, '6', '1571070907100012', '1571076607080001', 'Cesa Ghaliya Rachman', 'Perempuan', 'Kasamba', '2008-07-25', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(268, '6', '1571070907100012', '1571072401160002', 'Hazwan Zayadi Rachman', 'Laki-laki', 'Jambi', '2015-01-24', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(269, '6', '1571070907100012', '1571074604890060', 'Suryani', 'Perempuan', 'N.Panjang', '1989-04-06', 'Islam', 'SLTA/Sederajat', 'Pembantu RT', 'Belum Kawin', 'Pembantu', NULL, NULL),
(270, '6', '1671112306230003', '1671112512000002', 'Redo Ramadhan', 'Laki-laki', 'Palembang', '2000-12-25', 'Islam', 'SLTP/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(271, '6', '1671112306230003', '1671117012020004', 'Riska Aamelia', 'Perempuan', 'Palembang', '2002-12-30', 'Islam', 'Belum Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(272, '6', '1671112306230003', '1671123032300001', 'M.Ansharya Athif. R', 'Laki-laki', 'Palembang', '2023-03-23', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(273, '6', '1571072001210001', '1504071505890003', 'Riki Pratama', 'Laki-laki', 'Bajubang', '1989-05-15', 'Islam', 'SLTP/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(274, '6', '1571072001210001', '1571076501900121', 'Elvira Hardianty', 'Perempuan', 'Bajubang', '1990-01-20', 'Islam', 'Akademi/Diploma III/SM', 'Perawat', 'Kawin Tercatat', 'Istri', NULL, NULL),
(275, '6', '1571021312170003', '1571072705920061', 'Riski Putra Irawan', 'Laki-laki', 'B.Selasa', '1993-05-27', 'Islam', 'SLTA/Sederajat', 'Pedagang', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(276, '6', '1571021312170003', '1571024711930041', 'Neni Rahayu', 'Perempuan', 'Jambi', '2018-11-07', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(277, '6', '1571021312170003', '1571021002180002', 'Pratama Irawan', 'Laki-laki', 'Jambi', '1965-02-10', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(278, '6', '1571021312170003', '1571021208650101', 'Yulizar', 'Laki-laki', 'Sumbar', '1992-08-12', 'Islam', 'Tamat SD/Sederajat', 'Pedagang', 'Cerai Hidup Belum Tercatat', 'Mertua', NULL, NULL),
(279, '6', '1571071202180003', '1671111712920003', 'Samsul Bahri', 'Laki-laki', 'Palembang', '1995-12-16', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(280, '6', '1571071202180003', '1571075304950001', 'Winda Apriyanti', 'Perempuan', 'Jambi', '2020-04-13', 'Islam', 'Diploma IV/Strata I', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(281, '6', '1571071202180003', '1571070808200001', 'Uwais Hanan Bahri', 'Laki-laki', 'Jambi', '1969-08-08', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(282, '6', '157107080760008', '1571071000360021', 'Sapardi Efendi', 'Laki-laki', 'Sukoharjo', '1966-03-10', 'Islam', 'SLTP/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(283, '6', '157107080760008', '1571076212660001', 'Sukarti', 'Perempuan', 'Pati', '2000-12-22', 'Islam', 'Belum Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(284, '6', '157107080760008', '1571070311000042', 'Teguh Wibisono', 'Laki-laki', 'Jambi', '2004-11-03', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(285, '6', '157107080760008', '1571072703040001', 'Wahono', 'Laki-laki', 'Jambi', '1984-03-27', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(286, '6', '1504052411100007', '1504051505840003', 'Sapari', 'Laki-laki', 'T,Tinggi', '1984-05-15', 'Islam', 'Tamat SD/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(287, '6', '1504052411100007', '1504055510840003', 'Melly Hartika Dewi', 'Perempuan', 'J.Mas', '2004-10-15', 'Islam', 'Diploma IV/Strata I', 'Guru', 'Kawin Tercatat', 'Istri', NULL, NULL),
(288, '6', '1504052411100007', '1504054612040003', 'Amanda Putri Wulandari', 'Perempuan', 'J.Mas', '2010-12-06', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(289, '6', '1504052411100007', '1504056606100002', 'Olivia Syafirah Zalianty', 'Perempuan', 'J.Mas', '1979-06-26', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(290, '6', '1571071706150018', '1571070208790021', 'Saptowo', 'Laki-laki', 'Jambi', '1987-08-02', 'Islam', 'SLTA/Sederajat', 'Sopir', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(291, '6', '1571071706150018', '1809106712870004', 'Desi Aryani', 'Perempuan', 'Suka Marga', '2015-12-27', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(292, '6', '1571071706150018', '1571076711150004', 'Adiba Nur Syakila', 'Perempuan', 'Lampung', '2022-11-27', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(293, '6', '1571071706150018', '1571075305220002', 'Aninisa Nur Aqila', 'Perempuan', 'Jambi', '1973-05-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(294, '6', '1571072912050017', '1571070203730021', 'Sarjiman', 'Laki-laki', 'Jambi', '1977-03-02', 'Islam', 'SLTP/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(295, '6', '1571072912050017', '1571075505770001', 'Nunik', 'Perempuan', 'Piji Jateng', '2004-05-16', 'Islam', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(296, '6', '1571072912050017', '1571071305040121', 'M.Harry Maula', 'Laki-laki', 'Jambi', '2012-05-13', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(297, '6', '1571072912050017', '1571074402120041', 'Muslimah Vinny  Widiastuti', 'Perempuan', 'Jambi', '1974-02-04', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(298, '6', '1571073006100004', '1571076802740061', 'Sri Rejeki', 'Perempuan', 'Palembang', '1996-02-28', 'Islam', 'SLTP/Sederajat', 'Karyawan Swasta', 'Cerai Mati', 'Kepala Keluarga', NULL, NULL),
(299, '6', '1571073006100004', '1571075408860121', 'Devi Agustina', 'Perempuan', 'Jambi', '1999-06-14', 'Islam', 'SLTP/Sederajat', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Istri', NULL, NULL),
(300, '6', '1571073006100004', '1571078009990061', 'Nadia Visa Gola', 'Perempuan', 'Jambi', '2004-09-20', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(301, '6', '1571073006100004', '1571070912040181', 'M.David Riyadi', 'Laki-laki', 'T.Pandan', '2019-12-09', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(302, '6', '1571073006100004', '1571071302190001', 'Marcel Devtanu Wijaya', 'Laki-laki', 'Jambi', '1985-02-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(303, '6', '1571070803220006', '1671095610850008', 'Sri Rejeki', 'Perempuan', 'Palembang', '2018-10-16', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Cerai Mati', 'Kepala Keluarga', NULL, NULL),
(304, '6', '1571070803220006', '1571086708150001', 'Griselda Farren Azahra', 'Perempuan', 'Jambi', '2018-08-27', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(305, '6', '1571070803220006', '1571082706180002', 'M.Faizan Abqori', 'Laki-laki', 'Jambi', '1985-06-27', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(306, '6', '1571070611120008', '1571071606850142', 'Suganda', 'Laki-laki', 'B.Payung', '1987-06-16', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin', 'Kepala Keluarga', NULL, NULL),
(307, '6', '1571070611120008', '1571077006870262', 'Rosi Armawati', 'Perempuan', 'Gumawang', '1913-08-30', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin', 'Istri', NULL, NULL),
(308, '6', '1571070611120008', '1571075408130008', 'Ardini Puti', 'Perempuan', 'B.Sumut', '1988-08-14', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(309, '6', '1571071102110006', '1571070906880121', 'Sugeng Wijaya', 'Laki-laki', 'Lampung', '1990-06-09', 'Islam', 'SLTA/Sederajat', 'Sopir', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(310, '6', '1571071102110006', '1571074103900061', 'Dwi Alfisa', 'Perempuan', 'Mesuji', '2011-03-01', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(311, '6', '1571071102110006', '1571070801110041', 'M.Misbahul Haq', 'Laki-laki', 'Jambi', '2015-01-08', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(312, '6', '1571071102110006', '1571077009150002', 'Alisa Septia Wijaya', 'Perempuan', 'Jambi', '1967-09-30', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(313, '6', '1571073110050020', '1571071609670001', 'Sumarjo', 'Laki-laki', 'Jambi', '1972-09-16', 'Islam', 'SLTP/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(314, '6', '1571073110050020', '1571076010720021', 'Rita Martini', 'Perempuan', 'Jambi', '1998-10-20', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(315, '6', '1571073110050020', '1571075909980021', 'Septi Alpandari.S', 'Perempuan', 'Jambi', '2008-09-04', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(316, '6', '1571073110050020', '1571074306080021', 'Trya Apsari.s', 'Perempuan', 'Jambi', '2018-06-03', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(317, '6', '1571073110050020', '1571075302180001', 'Maisya Ananda. S', 'Perempuan', 'Jambi', '1981-02-13', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(318, '6', '1571072007110006', '1571070610810181', 'Suparjak', 'Laki-laki', 'Jambi', '1982-10-06', 'Islam', 'Belum Tamat SD/Sederajat', 'Buruh Harian Lepas', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(319, '6', '1571072007110006', '1571076301820121', 'Juliana', 'Perempuan', 'Merlung', '2011-01-23', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(320, '6', '1571072007110006', '1571074808110021', 'Sasy Wijaya', 'Perempuan', 'Jambi', '1977-08-08', 'Islam', 'Belum Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(321, '6', '150570807770001', '1505070807770001', 'Supradison AMK', 'Laki-laki', 'Kerinci', '1983-07-08', 'Islam', 'Akademi/Diploma II/SM', 'Karyawan BUMN', 'Kawin', 'Kepala Keluarga', NULL, NULL),
(322, '6', '150570807770001', '1505074503830001', 'Nilia Elita', 'Perempuan', 'Kerinci', '2002-03-05', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin', 'Istri', NULL, NULL),
(323, '6', '150570807770001', '1505096506020002', 'Fenia Pranilsa', 'Perempuan', 'Kerinci', '2014-06-25', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(324, '6', '150570807770001', '1505091002140001', 'Fierza Praditya', 'Laki-laki', 'M.Jambi', '1982-02-10', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(325, '6', '1571073108100008', '1571072412820101', 'Supriyanto', 'Laki-laki', 'Blora Jateng', '1983-12-24', 'Islam', 'SLTP/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(326, '6', '1571073108100008', '1571075507830181', 'Siti Hindun. NA', 'Perempuan', 'Blora Jateng', '2006-07-15', 'Islam', 'SLTP/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(327, '6', '1571073108100008', '1571075707060121', 'Naily Lutvi Fatimah', 'Perempuan', 'Jambi', '2018-07-17', 'Islam', 'Tamat SD/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(328, '6', '1571073108100008', '1571072704180003', 'Aulian Basira Ghayda Fattana', 'Laki-laki', 'Jambi', '1962-04-27', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(329, '6', '1571073008100014', '1571070101620381', 'Suroto', 'Laki-laki', 'Jambi', '1966-01-01', 'Islam', 'Akademi/Diploma II/SM', 'Pensiunan', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(330, '6', '1571073008100014', '1571074306660081', 'Mislena', 'Perempuan', 'Jambi', '2002-06-03', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(331, '6', '1571073008100014', '1571074502020081', 'Dinda Khairunnisa', 'Perempuan', 'Jambi', '0189-12-05', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(332, '6', '1571092812170004', '1203141509890001', 'Syahrul Hasibuan', 'Laki-laki', 'T.Balai', '1988-09-07', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(333, '6', '1571092812170004', '1203045907890001', 'Nurlian', 'Perempuan', 'Pargarutan', '2018-12-12', 'Islam', 'Akademi/Diploma II/SM', 'karyawan Honorer', 'Kawin Tercatat', 'Istri', NULL, NULL),
(334, '6', '1571092812170004', '1571096003180001', 'Nabilah Alya Zahra', 'Perempuan', 'Jambi', '2022-03-20', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(335, '6', '1571092812170004', '1571071404220002', 'M.Daffa Hasibuan', 'Laki-laki', 'Jambi', '1957-04-14', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(336, '6', '1571072510050025', '1571070102570021', 'Untung Sudaryanto', 'Laki-laki', 'Purworejo', '0158-02-01', 'Islam', 'SLTP/Sederajat', 'Pensiunan', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(337, '6', '1571072510050025', '1571075802580001', 'Sartini', 'Perempuan', 'Jambi', '1991-02-18', 'Islam', 'SLTA/Sederajat', 'Pensiunan', 'Kawin Tercatat', 'Istri', NULL, NULL),
(338, '6', '1571070204190008', '1571011607910021', 'Wanda Adrianto', 'Laki-laki', 'Jambi', '1993-07-16', 'Islam', 'Diploma Iv/Strata I', 'Karyawan BUMN', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(339, '6', '1571070204190008', '1571075901930001', 'Hety Kusendang', 'Perempuan', 'P.Kelapo', '2020-01-19', 'Islam', 'Akademi/Diploma II/SM', 'Karyawan Swasta', 'Kawin Tercatat', 'Istri', NULL, NULL),
(340, '6', '1571070204190008', '1571076404200001', 'Gheziya Ayesha Ramadanty', 'Perempuan', 'Jambi', '1972-04-24', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(341, '6', '1611041507160001', '1611010107680015', 'Yazid Bustomi', 'Laki-laki', 'M.Pinang', '1981-10-07', 'Islam', 'SLTA/Sederajat', 'Wiraswasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(342, '6', '1611041507160001', '1611014107780021', 'Hadidah', 'Perempuan', 'T,Tinggi', '2000-11-07', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(343, '6', '1611041507160001', '1611014107010025', 'Nopri Indah', 'Perempuan', 'M.Pinang', '2005-11-24', 'Islam', 'SLTA/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(344, '6', '1611041507160001', '1611014107040032', 'Selvi Asipah', 'Perempuan', 'Bengkulu', '2006-05-12', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(345, '6', '1611041507160001', '1611010107050029', 'Septa Wijaya', 'Laki-laki', 'M.Pinang', '1992-09-02', 'Islam', 'SLTP/Sederajat', 'Pelajar / Mahasiswa', 'Belum Kawin', 'Anak', NULL, NULL),
(346, '6', '1571071307220004', '7317062004920001', 'Yudianto', 'Laki-laki', 'Tombang', '1994-04-20', 'Islam', 'SLTA/Sederajat', 'Pelaut', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(347, '6', '1571071307220004', '1507044512940003', 'Dessy Astriyanti Maya', 'Perempuan', 'Harapan Makmur', '2022-12-05', 'Islam', 'SLTA/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(348, '6', '1571071307220004', '1571070510220001', 'Razka Pratama', 'Laki-laki', 'Jambi', '1996-10-05', 'Islam', 'SLTA/Sederajat', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(349, '6', '1571073005220005', '1505010106951001', 'Zulhandi', 'Laki-laki', 'Pasaman', '1995-05-01', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(350, '6', '1571073005220005', '1571075009950001', 'Dyah Ratih', 'Perempuan', 'Jambi', '1979-09-10', 'Islam', 'SLTA/Sederajat', 'Karyawan Swasta', 'Kawin Tercatat', 'Istri', NULL, NULL),
(351, '6', '1571073005220005', '1571075105220001', 'Azkadina Almahyra Nasution', 'Perempuan', 'Jambi', '1993-05-11', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(352, '6', '1571022608140009', '1571033001750081', 'Zulhendri', 'Laki-laki', 'Jambi', '2014-03-02', 'Islam', 'SLTA/Sederajat', 'Sopir', 'Kawin Tercatat', 'Kepala Keluarga', NULL, NULL),
(353, '6', '1571022608140009', '1505085412930001', 'Setianingsih', 'Perempuan', 'Lampung', '2019-12-14', 'Islam', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga', 'Kawin Tercatat', 'Istri', NULL, NULL),
(354, '6', '1571022608140009', '1571022209140002', 'Naufal Afkar', 'Laki-laki', 'Jambi', '2015-09-22', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL),
(355, '6', '1571022608140009', '1571075411190001', 'Salsabila Ayu Hanifa', 'Perempuan', 'Jambi', '2019-11-14', 'Islam', 'Tidak/Belum Sekolah', 'Belum / Tidak Bekerja', 'Belum Kawin', 'Anak', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `surats`
--
ALTER TABLE `surats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surats_warga_id_foreign` (`warga_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wargas`
--
ALTER TABLE `wargas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `surats`
--
ALTER TABLE `surats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wargas`
--
ALTER TABLE `wargas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `surats`
--
ALTER TABLE `surats`
  ADD CONSTRAINT `surats_warga_id_foreign` FOREIGN KEY (`warga_id`) REFERENCES `wargas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
