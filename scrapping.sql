-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 07:22 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrapping`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_04_15_191331679173_create_1555355612601_permissions_table', 1),
(3, '2019_04_15_191331731390_create_1555355612581_roles_table', 1),
(4, '2019_04_15_191331779537_create_1555355612782_users_table', 1),
(5, '2019_04_15_191332603432_create_1555355612603_permission_role_pivot_table', 1),
(6, '2019_04_15_191332791021_create_1555355612790_role_user_pivot_table', 1),
(7, '2019_04_15_191441675085_create_1555355681975_products_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_08_21_130553_create_scrape_table', 1),
(10, '2020_08_24_101604_create_results_table', 1),
(11, '2020_08_24_105345_create_scrappings_table', 1);

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
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(2, 'permission_create', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(3, 'permission_edit', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(4, 'permission_show', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(5, 'permission_delete', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(6, 'permission_access', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(7, 'role_create', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(8, 'role_edit', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(9, 'role_show', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(10, 'role_delete', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(11, 'role_access', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(12, 'user_create', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(13, 'user_edit', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(14, 'user_show', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(15, 'user_delete', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(16, 'user_access', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(17, 'product_create', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(18, 'product_edit', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(19, 'product_show', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(20, 'product_delete', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(21, 'product_access', '2019-04-15 12:14:42', '2019-04-15 12:14:42', NULL),
(22, 'scrapping_access', '2020-08-24 07:02:01', '2020-08-24 07:03:43', NULL),
(23, 'scrapping_edit', '2020-08-24 07:02:26', '2020-08-24 07:03:54', NULL),
(24, 'scrapping_delete', '2020-08-24 07:02:37', '2020-08-24 07:04:05', NULL),
(25, 'scrapping_show', '2020-08-24 07:02:49', '2020-08-24 07:04:15', NULL),
(26, 'scrapping_create', '2020-08-24 07:05:09', '2020-08-24 07:05:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scrapping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nilai` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `scrapping_id`, `title`, `desc`, `form_type`, `nilai`, `sks`, `created_at`, `updated_at`) VALUES
(1, '20_10_04_10_54_01', 'A0.', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', 'A0', '122', 2, '2020-10-04 03:54:09', '2020-10-04 04:37:25'),
(2, '20_10_04_10_54_01', 'A0.', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', 'A1', '10', 0, '2020-10-04 03:54:09', '2020-10-04 04:30:33'),
(3, '20_10_04_10_54_01', 'A0.', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', 'A0', '12', 0, '2020-10-04 03:54:09', '2020-10-04 04:31:11'),
(4, '20_10_04_10_54_01', 'A0.', 'Memberi MK Instrumentasi Kimia, S2', 'A1', '21', 0, '2020-10-04 03:54:10', '2020-10-04 04:31:18'),
(5, '20_10_04_10_54_01', 'A0.', 'Mengajar MK Kimia Analitik I, Kelas B ', 'A2', '12', 0, '2020-10-04 03:54:10', '2020-10-04 04:31:25'),
(6, '20_10_04_10_54_01', 'A0.', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(7, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(8, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(9, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(10, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(11, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(12, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(13, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(14, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(15, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(16, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(17, '20_10_04_10_54_01', 'A0.', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(18, '20_10_04_10_54_01', 'A0.', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(19, '20_10_04_10_54_01', 'A0.', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(20, '20_10_04_10_54_01', 'A0.', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(21, '20_10_04_10_54_01', 'A0.', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(22, '20_10_04_10_54_01', 'A0.', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(23, '20_10_04_10_54_01', 'A0.', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:10', '2020-10-04 03:59:16'),
(24, '20_10_04_10_54_01', 'A0.', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(25, '20_10_04_10_54_01', 'A0.', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(26, '20_10_04_10_54_01', 'A0.', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(27, '20_10_04_10_54_01', 'A0.', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(28, '20_10_04_10_54_01', 'A0.', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(29, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(30, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(31, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(32, '20_10_04_10_54_01', 'A1.', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(33, '20_10_04_10_54_01', 'A1.', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(34, '20_10_04_10_54_01', 'A1.', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(35, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(36, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(37, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(38, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(39, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:11', '2020-10-04 03:59:16'),
(40, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(41, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(42, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(43, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(44, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(45, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(46, '20_10_04_10_54_01', 'A1.', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(47, '20_10_04_10_54_01', 'A1.', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(48, '20_10_04_10_54_01', 'A1.', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(49, '20_10_04_10_54_01', 'A1.', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(50, '20_10_04_10_54_01', 'A1.', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(51, '20_10_04_10_54_01', 'A1.', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(52, '20_10_04_10_54_01', 'A1.', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(53, '20_10_04_10_54_01', 'A1.', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(54, '20_10_04_10_54_01', 'A1.', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(55, '20_10_04_10_54_01', 'A1.', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(56, '20_10_04_10_54_01', 'A1.', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(57, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(58, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:12', '2020-10-04 03:59:16'),
(59, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(60, '20_10_04_10_54_01', 'A1.', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(61, '20_10_04_10_54_01', 'A1.', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(62, '20_10_04_10_54_01', 'A1.', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(63, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(64, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(65, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(66, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(67, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:13', '2020-10-04 03:59:16'),
(68, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(69, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(70, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(71, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(72, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(73, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(74, '20_10_04_10_54_01', 'A1.', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(75, '20_10_04_10_54_01', 'A1.', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(76, '20_10_04_10_54_01', 'A1.', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(77, '20_10_04_10_54_01', 'A1.', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(78, '20_10_04_10_54_01', 'A1.', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(79, '20_10_04_10_54_01', 'A1.', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(80, '20_10_04_10_54_01', 'A1.', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(81, '20_10_04_10_54_01', 'A1.', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(82, '20_10_04_10_54_01', 'A1.', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(83, '20_10_04_10_54_01', 'A1.', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:14', '2020-10-04 03:59:16'),
(84, '20_10_04_10_54_01', 'A1.', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(85, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(86, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(87, '20_10_04_10_54_01', 'A1.', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(88, '20_10_04_10_54_01', 'A1.', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(89, '20_10_04_10_54_01', 'A1.', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(90, '20_10_04_10_54_01', 'A1.', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(91, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(92, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(93, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(94, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(95, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(96, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(97, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(98, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(99, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:15', '2020-10-04 03:59:16'),
(100, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(101, '20_10_04_10_54_01', 'A1.', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(102, '20_10_04_10_54_01', 'A1.', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(103, '20_10_04_10_54_01', 'A1.', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(104, '20_10_04_10_54_01', 'A1.', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(105, '20_10_04_10_54_01', 'A1.', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(106, '20_10_04_10_54_01', 'A1.', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(107, '20_10_04_10_54_01', 'A1.', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(108, '20_10_04_10_54_01', 'A1.', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(109, '20_10_04_10_54_01', 'A1.', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(110, '20_10_04_10_54_01', 'A1.', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:16', '2020-10-04 03:59:16'),
(111, '20_10_04_10_54_01', 'A1.', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(112, '20_10_04_10_54_01', 'A1.', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(113, '20_10_04_10_54_01', 'A1.5', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(114, '20_10_04_10_54_01', 'A1.5', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(115, '20_10_04_10_54_01', 'A1.5', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(116, '20_10_04_10_54_01', 'A1.5', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(117, '20_10_04_10_54_01', 'A1.5', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(118, '20_10_04_10_54_01', 'A1.5', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(119, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(120, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(121, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(122, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(123, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:17', '2020-10-04 03:59:16'),
(124, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(125, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(126, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(127, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(128, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(129, '20_10_04_10_54_01', 'A1.5', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(130, '20_10_04_10_54_01', 'A1.5', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(131, '20_10_04_10_54_01', 'A1.5', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(132, '20_10_04_10_54_01', 'A1.5', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(133, '20_10_04_10_54_01', 'A1.5', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(134, '20_10_04_10_54_01', 'A1.5', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(135, '20_10_04_10_54_01', 'A1.5', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(136, '20_10_04_10_54_01', 'A1.5', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(137, '20_10_04_10_54_01', 'A1.5', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(138, '20_10_04_10_54_01', 'A1.5', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(139, '20_10_04_10_54_01', 'A1.5', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(140, '20_10_04_10_54_01', 'A1.5', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(141, '20_10_04_10_54_01', 'A3.2', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(142, '20_10_04_10_54_01', 'A3.2', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(143, '20_10_04_10_54_01', 'A3.2', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(144, '20_10_04_10_54_01', 'A3.2', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(145, '20_10_04_10_54_01', 'A3.2', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(146, '20_10_04_10_54_01', 'A3.2', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(147, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(148, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:18', '2020-10-04 03:59:16'),
(149, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(150, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(151, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(152, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(153, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(154, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(155, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(156, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(157, '20_10_04_10_54_01', 'A3.2', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(158, '20_10_04_10_54_01', 'A3.2', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(159, '20_10_04_10_54_01', 'A3.2', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(160, '20_10_04_10_54_01', 'A3.2', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(161, '20_10_04_10_54_01', 'A3.2', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(162, '20_10_04_10_54_01', 'A3.2', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(163, '20_10_04_10_54_01', 'A3.2', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(164, '20_10_04_10_54_01', 'A3.2', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(165, '20_10_04_10_54_01', 'A3.2', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(166, '20_10_04_10_54_01', 'A3.2', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(167, '20_10_04_10_54_01', 'A3.2', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(168, '20_10_04_10_54_01', 'A3.2', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(169, '20_10_04_10_54_01', 'A4.', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(170, '20_10_04_10_54_01', 'A4.', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(171, '20_10_04_10_54_01', 'A4.', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:19', '2020-10-04 03:59:16'),
(172, '20_10_04_10_54_01', 'A4.', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(173, '20_10_04_10_54_01', 'A4.', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(174, '20_10_04_10_54_01', 'A4.', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(175, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(176, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(177, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(178, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(179, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(180, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(181, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(182, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(183, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(184, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(185, '20_10_04_10_54_01', 'A4.', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(186, '20_10_04_10_54_01', 'A4.', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(187, '20_10_04_10_54_01', 'A4.', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(188, '20_10_04_10_54_01', 'A4.', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(189, '20_10_04_10_54_01', 'A4.', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(190, '20_10_04_10_54_01', 'A4.', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(191, '20_10_04_10_54_01', 'A4.', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(192, '20_10_04_10_54_01', 'A4.', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(193, '20_10_04_10_54_01', 'A4.', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(194, '20_10_04_10_54_01', 'A4.', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(195, '20_10_04_10_54_01', 'A4.', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(196, '20_10_04_10_54_01', 'A4.', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:20', '2020-10-04 03:59:16'),
(197, '20_10_04_10_54_01', 'A5.', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(198, '20_10_04_10_54_01', 'A5.', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(199, '20_10_04_10_54_01', 'A5.', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(200, '20_10_04_10_54_01', 'A5.', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(201, '20_10_04_10_54_01', 'A5.', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(202, '20_10_04_10_54_01', 'A5.', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(203, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(204, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(205, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(206, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:21', '2020-10-04 03:59:16'),
(207, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(208, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(209, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(210, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(211, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(212, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(213, '20_10_04_10_54_01', 'A5.', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(214, '20_10_04_10_54_01', 'A5.', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(215, '20_10_04_10_54_01', 'A5.', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(216, '20_10_04_10_54_01', 'A5.', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(217, '20_10_04_10_54_01', 'A5.', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(218, '20_10_04_10_54_01', 'A5.', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(219, '20_10_04_10_54_01', 'A5.', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(220, '20_10_04_10_54_01', 'A5.', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(221, '20_10_04_10_54_01', 'A5.', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(222, '20_10_04_10_54_01', 'A5.', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(223, '20_10_04_10_54_01', 'A5.', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(224, '20_10_04_10_54_01', 'A5.', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(225, '20_10_04_10_54_01', 'A6.', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(226, '20_10_04_10_54_01', 'A6.', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(227, '20_10_04_10_54_01', 'A6.', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(228, '20_10_04_10_54_01', 'A6.', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(229, '20_10_04_10_54_01', 'A6.', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(230, '20_10_04_10_54_01', 'A6.', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(231, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:22', '2020-10-04 03:59:16'),
(232, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(233, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(234, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(235, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(236, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(237, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(238, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(239, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(240, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(241, '20_10_04_10_54_01', 'A6.', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(242, '20_10_04_10_54_01', 'A6.', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(243, '20_10_04_10_54_01', 'A6.', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(244, '20_10_04_10_54_01', 'A6.', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(245, '20_10_04_10_54_01', 'A6.', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(246, '20_10_04_10_54_01', 'A6.', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(247, '20_10_04_10_54_01', 'A6.', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(248, '20_10_04_10_54_01', 'A6.', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(249, '20_10_04_10_54_01', 'A6.', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(250, '20_10_04_10_54_01', 'A6.', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(251, '20_10_04_10_54_01', 'A6.', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:23', '2020-10-04 03:59:16'),
(252, '20_10_04_10_54_01', 'A6.', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(253, '20_10_04_10_54_01', 'A6.1', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(254, '20_10_04_10_54_01', 'A6.1', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(255, '20_10_04_10_54_01', 'A6.1', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(256, '20_10_04_10_54_01', 'A6.1', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(257, '20_10_04_10_54_01', 'A6.1', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(258, '20_10_04_10_54_01', 'A6.1', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(259, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(260, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(261, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(262, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(263, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(264, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(265, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(266, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(267, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(268, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(269, '20_10_04_10_54_01', 'A6.1', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(270, '20_10_04_10_54_01', 'A6.1', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(271, '20_10_04_10_54_01', 'A6.1', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(272, '20_10_04_10_54_01', 'A6.1', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(273, '20_10_04_10_54_01', 'A6.1', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(274, '20_10_04_10_54_01', 'A6.1', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(275, '20_10_04_10_54_01', 'A6.1', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(276, '20_10_04_10_54_01', 'A6.1', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(277, '20_10_04_10_54_01', 'A6.1', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:24', '2020-10-04 03:59:16'),
(278, '20_10_04_10_54_01', 'A6.1', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(279, '20_10_04_10_54_01', 'A6.1', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(280, '20_10_04_10_54_01', 'A6.1', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(281, '20_10_04_10_54_01', 'A6.2', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(282, '20_10_04_10_54_01', 'A6.2', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(283, '20_10_04_10_54_01', 'A6.2', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(284, '20_10_04_10_54_01', 'A6.2', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(285, '20_10_04_10_54_01', 'A6.2', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(286, '20_10_04_10_54_01', 'A6.2', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(287, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(288, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(289, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(290, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(291, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(292, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(293, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:25', '2020-10-04 03:59:16'),
(294, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(295, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(296, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(297, '20_10_04_10_54_01', 'A6.2', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(298, '20_10_04_10_54_01', 'A6.2', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(299, '20_10_04_10_54_01', 'A6.2', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(300, '20_10_04_10_54_01', 'A6.2', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(301, '20_10_04_10_54_01', 'A6.2', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(302, '20_10_04_10_54_01', 'A6.2', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(303, '20_10_04_10_54_01', 'A6.2', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(304, '20_10_04_10_54_01', 'A6.2', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(305, '20_10_04_10_54_01', 'A6.2', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(306, '20_10_04_10_54_01', 'A6.2', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(307, '20_10_04_10_54_01', 'A6.2', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(308, '20_10_04_10_54_01', 'A6.2', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(309, '20_10_04_10_54_01', 'A6.3', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(310, '20_10_04_10_54_01', 'A6.3', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(311, '20_10_04_10_54_01', 'A6.3', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(312, '20_10_04_10_54_01', 'A6.3', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(313, '20_10_04_10_54_01', 'A6.3', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(314, '20_10_04_10_54_01', 'A6.3', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(315, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(316, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(317, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(318, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(319, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(320, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:26', '2020-10-04 03:59:16'),
(321, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(322, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(323, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(324, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(325, '20_10_04_10_54_01', 'A6.3', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(326, '20_10_04_10_54_01', 'A6.3', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(327, '20_10_04_10_54_01', 'A6.3', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(328, '20_10_04_10_54_01', 'A6.3', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(329, '20_10_04_10_54_01', 'A6.3', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(330, '20_10_04_10_54_01', 'A6.3', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(331, '20_10_04_10_54_01', 'A6.3', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(332, '20_10_04_10_54_01', 'A6.3', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(333, '20_10_04_10_54_01', 'A6.3', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(334, '20_10_04_10_54_01', 'A6.3', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(335, '20_10_04_10_54_01', 'A6.3', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(336, '20_10_04_10_54_01', 'A6.3', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16');
INSERT INTO `results` (`id`, `scrapping_id`, `title`, `desc`, `form_type`, `nilai`, `sks`, `created_at`, `updated_at`) VALUES
(337, '20_10_04_10_54_01', 'A6.4', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(338, '20_10_04_10_54_01', 'A6.4', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(339, '20_10_04_10_54_01', 'A6.4', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:27', '2020-10-04 03:59:16'),
(340, '20_10_04_10_54_01', 'A6.4', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(341, '20_10_04_10_54_01', 'A6.4', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(342, '20_10_04_10_54_01', 'A6.4', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(343, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(344, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(345, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(346, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(347, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(348, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(349, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(350, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(351, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(352, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:28', '2020-10-04 03:59:16'),
(353, '20_10_04_10_54_01', 'A6.4', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(354, '20_10_04_10_54_01', 'A6.4', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(355, '20_10_04_10_54_01', 'A6.4', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(356, '20_10_04_10_54_01', 'A6.4', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(357, '20_10_04_10_54_01', 'A6.4', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(358, '20_10_04_10_54_01', 'A6.4', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(359, '20_10_04_10_54_01', 'A6.4', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(360, '20_10_04_10_54_01', 'A6.4', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(361, '20_10_04_10_54_01', 'A6.4', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(362, '20_10_04_10_54_01', 'A6.4', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(363, '20_10_04_10_54_01', 'A6.4', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(364, '20_10_04_10_54_01', 'A6.4', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(365, '20_10_04_10_54_01', 'A6.5', 'Memberi Kuliah MK Kewirausahaan Kimia - Kelas C Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(366, '20_10_04_10_54_01', 'A6.5', 'Memberi Kuliah MK Kimia Analitik III- Kelas B Prodi S1-Kimia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(367, '20_10_04_10_54_01', 'A6.5', 'Memberi Kuliah MK Kimia Teknik Laboraturium Prodi S2-Kimia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(368, '20_10_04_10_54_01', 'A6.5', 'Memberi MK Instrumentasi Kimia, S2', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(369, '20_10_04_10_54_01', 'A6.5', 'Mengajar MK Kimia Analitik I, Kelas B ', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(370, '20_10_04_10_54_01', 'A6.5', 'Praktikum Kimia Analitik II Kelas C Prodi S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(371, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n  Gita Tifani', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(372, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Dellania Frida', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(373, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Dessy Tiara Elvia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(374, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Fatry  Sinjia', NULL, NULL, 0, '2020-10-04 03:54:29', '2020-10-04 03:59:16'),
(375, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Fitra Adhi Nugroho', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(376, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Fitri Sunarsih', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(377, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Muh. Ilham Haqiqi', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(378, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Rulan  Aprilia', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(379, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Teguh Wijaya Kesuma', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(380, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n Wahyu Enggar Putra', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(381, '20_10_04_10_54_01', 'A6.5', 'Membimbing PKL mahasiswa S1 a.n WIndi Antika', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(382, '20_10_04_10_54_01', 'A6.5', 'Membimbing Skripsi Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(383, '20_10_04_10_54_01', 'A6.5', 'Membimbing Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(384, '20_10_04_10_54_01', 'A6.5', 'bin pairinSeminar paijo v', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(385, '20_10_04_10_54_01', 'A6.5', 'Pembahas dalam seminar hasil mahasiswa S1 kimia a.n Eka Setosari, Faradila Dwi,  muh. Yusri', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(386, '20_10_04_10_54_01', 'A6.5', 'Pembahas dalam seminar usul mahasiswa S1 kimia ', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(387, '20_10_04_10_54_01', 'A6.5', 'Pembahas pada seminar Hasil mhasiswa S2', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(388, '20_10_04_10_54_01', 'A6.5', 'Pembimbing I Seminar Usul Skripsi Mahasiswa S1 Kimia a.n. Teguh Wijay, Muh. lham, Tiara, Della , Windi', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(389, '20_10_04_10_54_01', 'A6.5', 'Pembimbing II Seminar Usul Skripsi Mahasiswa S1 Kimia ', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(390, '20_10_04_10_54_01', 'A6.5', 'Menguji  PKL Mahasiswa S1 Kimia', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(391, '20_10_04_10_54_01', 'A6.5', 'Menguji Tugas Akhir mhs Kimia S1', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16'),
(392, '20_10_04_10_54_01', 'A6.5', 'Menguji mahasiswa S2, a.n Sion', NULL, NULL, 0, '2020-10-04 03:54:30', '2020-10-04 03:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-04-15 12:13:32', '2019-04-15 12:13:32', NULL),
(2, 'User', '2019-04-15 12:13:32', '2019-04-15 12:13:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scrape`
--

CREATE TABLE `scrape` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` int(11) NOT NULL,
  `ta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scrappings`
--

CREATE TABLE `scrappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$imU.Hdz7VauIT3LIMCMbsOXvaaTQg6luVqkhfkBcsUd.SJW2XSRKO', NULL, '2019-04-15 12:13:32', '2019-04-15 12:13:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `scrape`
--
ALTER TABLE `scrape`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrappings`
--
ALTER TABLE `scrappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scrape`
--
ALTER TABLE `scrape`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scrappings`
--
ALTER TABLE `scrappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
