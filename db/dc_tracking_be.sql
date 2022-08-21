-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 10:32 PM
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
-- Database: `dc_tracking_be`
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
(5, '2022_08_01_120807_create_prisoners_table', 1),
(6, '2022_08_01_120839_create_pengajuans_table', 1),
(7, '2022_08_02_175241_create_checkpoints_table', 1),
(8, '2022_08_05_020519_drop_email_column_and_add_nip_and_username_column_in_users_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyAuthApp', '5bd8a0a9a935688bc174e58488dc136b1642efb4f059064cc82e177e2181a9d1', '[\"*\"]', NULL, NULL, '2022-08-07 02:47:53', '2022-08-07 02:47:53'),
(9, 'App\\Models\\User', 2, 'MyAuthApp', '69d43c99dbb50c2c98cc3b9a12e09d2c48fa350159e33895233d346776acb890', '[\"*\"]', NULL, NULL, '2022-08-07 08:22:44', '2022-08-07 08:22:44'),
(10, 'App\\Models\\User', 2, 'MyAuthApp', '05e2f691d76daa3e36dc512b40d092703a2a3205a2f3970e5f3f76200a1a9f84', '[\"*\"]', NULL, NULL, '2022-08-07 08:23:03', '2022-08-07 08:23:03'),
(11, 'App\\Models\\User', 2, 'MyAuthApp', '7b08743a26dad49dacc97748438522e4017bbd03603718f50ef931bcdf2eab6c', '[\"*\"]', NULL, NULL, '2022-08-07 08:23:40', '2022-08-07 08:23:40'),
(12, 'App\\Models\\User', 2, 'MyAuthApp', 'e71d3a8cb068cd58a2d22542f982c81ba75088f1150aa9ed671117d5fd6be14b', '[\"*\"]', NULL, NULL, '2022-08-07 08:24:08', '2022-08-07 08:24:08'),
(13, 'App\\Models\\User', 2, 'MyAuthApp', '3f5bf400e7bae9ea9b6042c912fa99f227edeafaaaeca5915353774f85587a65', '[\"*\"]', NULL, NULL, '2022-08-07 08:24:12', '2022-08-07 08:24:12'),
(14, 'App\\Models\\User', 2, 'MyAuthApp', '1ab4156ffc9c3fc5328701e77720b07d2fc34492939fac488d5986c4b54d7be3', '[\"*\"]', NULL, NULL, '2022-08-07 08:24:31', '2022-08-07 08:24:31'),
(15, 'App\\Models\\User', 2, 'MyAuthApp', 'dbd0252fa34e4c28dbdc48fe4c7ac1f58984bfca48545138829339641ec815ca', '[\"*\"]', NULL, NULL, '2022-08-07 08:25:05', '2022-08-07 08:25:05'),
(16, 'App\\Models\\User', 2, 'MyAuthApp', '44cd2673f01261058216505346b244eb5e071df04f20a9d1293b4b0925adee9f', '[\"*\"]', NULL, NULL, '2022-08-07 08:27:59', '2022-08-07 08:27:59'),
(17, 'App\\Models\\User', 2, 'MyAuthApp', '2ec280b1f2fdc10b6eae96caef603faed882a7fdd68a71e89e249a4829482475', '[\"*\"]', NULL, NULL, '2022-08-07 08:28:33', '2022-08-07 08:28:33'),
(18, 'App\\Models\\User', 2, 'MyAuthApp', '2e45d490e617de3fa74e84dfba24233899b52b189476877a9317bbe555389215', '[\"*\"]', NULL, NULL, '2022-08-07 08:29:58', '2022-08-07 08:29:58'),
(19, 'App\\Models\\User', 2, 'MyAuthApp', '1b8f8601cae8014318dbcb61d2ce5f231ac9bd5066c03ee0b40972f1f0ef512e', '[\"*\"]', NULL, NULL, '2022-08-07 08:29:59', '2022-08-07 08:29:59'),
(20, 'App\\Models\\User', 2, 'MyAuthApp', 'f01fe62e19e423509fce4a9fff2a5766571f473e63d1812167d8e31be314e24a', '[\"*\"]', NULL, NULL, '2022-08-07 08:31:50', '2022-08-07 08:31:50'),
(21, 'App\\Models\\User', 2, 'MyAuthApp', 'b76b33eb3c6723cef473ccea7742606ee18a136f3daa16285055b4dcbceb012a', '[\"*\"]', NULL, NULL, '2022-08-07 08:32:36', '2022-08-07 08:32:36'),
(22, 'App\\Models\\User', 2, 'MyAuthApp', '2d4595037a8efce1c150dcadba92999b8b7273ee5d0bae6798e7c29d1cc4ed59', '[\"*\"]', NULL, NULL, '2022-08-07 08:32:59', '2022-08-07 08:32:59'),
(23, 'App\\Models\\User', 2, 'MyAuthApp', '204af79507182528d78be0cf3b61c4895ca20ad12ace75f565d7e8202b540d2d', '[\"*\"]', NULL, NULL, '2022-08-09 12:01:55', '2022-08-09 12:01:55'),
(24, 'App\\Models\\User', 2, 'MyAuthApp', '4810c5eb4812ea628b13bd57ddc5a8245c8524bd07bc11ce8350d10cd99751d2', '[\"*\"]', NULL, NULL, '2022-08-09 12:35:01', '2022-08-09 12:35:01'),
(25, 'App\\Models\\User', 2, 'MyAuthApp', '3aed74dce6ec2fba22e946731ab8e20cb01ede77b694c87a80028b355fb93c1a', '[\"*\"]', NULL, NULL, '2022-08-09 13:00:44', '2022-08-09 13:00:44'),
(26, 'App\\Models\\User', 2, 'MyAuthApp', '700f8c5e72241ed739d8df7c0c1bfb9e0fe37b0b61b5e0ea095b56c345a992c0', '[\"*\"]', NULL, NULL, '2022-08-09 13:01:47', '2022-08-09 13:01:47'),
(27, 'App\\Models\\User', 2, 'MyAuthApp', '0435155b859e89685ee0bc47ca7850f923522267600160f0e935d35e9a91bc1f', '[\"*\"]', NULL, NULL, '2022-08-09 13:26:14', '2022-08-09 13:26:14'),
(28, 'App\\Models\\User', 2, 'MyAuthApp', 'f575f5e720ef16c9a1eb8c40e42cf222484184333362818dcd7bae45c649e026', '[\"*\"]', NULL, NULL, '2022-08-09 13:27:39', '2022-08-09 13:27:39'),
(29, 'App\\Models\\User', 2, 'MyAuthApp', '70c7f9c0d252355a36f495d8be6c8eaf2914779ce0d0cafd16edbe3f8735ce04', '[\"*\"]', NULL, NULL, '2022-08-09 13:27:59', '2022-08-09 13:27:59'),
(30, 'App\\Models\\User', 2, 'MyAuthApp', '17989144c0965212c6c47cfa0b06be4c96fa196551e8fea3e6a85c8170b9e7ad', '[\"*\"]', NULL, NULL, '2022-08-09 13:28:11', '2022-08-09 13:28:11'),
(31, 'App\\Models\\User', 2, 'MyAuthApp', 'e03c23f6182167ed7e3a4147d1c259d62767808f678ccf6acf8f6c2c6dba00a4', '[\"*\"]', NULL, NULL, '2022-08-09 13:28:16', '2022-08-09 13:28:16'),
(32, 'App\\Models\\User', 2, 'MyAuthApp', '20d25079ff0f2b1649dbe4baf7dc63f4c0a5c24fe91513b0c655ff5d6c444697', '[\"*\"]', NULL, NULL, '2022-08-09 13:29:14', '2022-08-09 13:29:14'),
(33, 'App\\Models\\User', 2, 'MyAuthApp', 'c5e1d2e9fcd5e55097908f5bf491e3ba8e433d223fabc1c0e584baadfacfab5d', '[\"*\"]', NULL, NULL, '2022-08-09 13:39:46', '2022-08-09 13:39:46'),
(34, 'App\\Models\\User', 2, 'MyAuthApp', '4a01f1de5b4e1922e11322b7d22e30d7e0c6cccee314970da32e1e7f3ef89fd0', '[\"*\"]', NULL, NULL, '2022-08-09 13:47:27', '2022-08-09 13:47:27'),
(35, 'App\\Models\\User', 2, 'MyAuthApp', '13447a4b106ed3516024741587f7cd2ac0c3d1837b08c6be604692baf775456c', '[\"*\"]', NULL, NULL, '2022-08-09 13:48:51', '2022-08-09 13:48:51'),
(36, 'App\\Models\\User', 2, 'MyAuthApp', '410737ee0ff55c37cf7f0cb03d8ec2f48da0574bdc1607817418ac03aa0056c9', '[\"*\"]', NULL, NULL, '2022-08-09 13:58:06', '2022-08-09 13:58:06'),
(37, 'App\\Models\\User', 2, 'MyAuthApp', 'd18c605ef7ad5a600a5ecc262cf730158c38dd2bcb4554e8877b7835bedd6fde', '[\"*\"]', NULL, NULL, '2022-08-09 14:02:46', '2022-08-09 14:02:46'),
(38, 'App\\Models\\User', 2, 'MyAuthApp', '318581ff60b645600f090ede69f75a81eeb17dfe3951917e9a2fe380603e6b1e', '[\"*\"]', '2022-08-09 14:47:04', NULL, '2022-08-09 14:02:51', '2022-08-09 14:47:04'),
(39, 'App\\Models\\User', 2, 'MyAuthApp', 'cf12fabdde627a2cfa3193e855bbef37ee01bbb4ad38073f1dea1e05a86e9be9', '[\"*\"]', '2022-08-11 11:26:51', NULL, '2022-08-11 11:25:10', '2022-08-11 11:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `prisoners`
--

CREATE TABLE `prisoners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_prisoner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prisoners`
--

INSERT INTO `prisoners` (`id`, `id_prisoner`, `nama`, `nik`, `status`, `created_at`, `updated_at`) VALUES
(1, '_715015', 'Silvia Mayasari', '3527625906212593', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(2, '_74257782', 'Gamblang Dwi Hidayanto', '3218441208958867', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(3, '_59475370', 'Abyasa Kamal Prayoga S.Gz', '1807692808029771', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(4, '_71370110', 'Jumadi Perkasa Sitompul S.Pt', '7504996810156259', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(5, '_39323499', 'Slamet Digdaya Natsir M.M.', '3375826707174897', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(6, '_48821723', 'Hesti Yulianti', '1871830412185408', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(7, '_30344619', 'Fitria Raisa Mandasari M.Farm', '1220890807188382', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(8, '_4848528', 'Kartika Farah Handayani S.Farm', '5306060207083356', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(9, '_79763658', 'Hafshah Haryanti', '1114132310929821', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(10, '_74427793', 'Sakti Samosir', '7314674906093586', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(11, '_47591433', 'Jamil Saputra', '1804472312209526', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(12, '_78586601', 'Indra Banawa Situmorang', '1604856310027743', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(13, '_48312285', 'Enteng Hutasoit', '1610162410959825', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(14, '_51851732', 'Cawisono Nababan', '7313322908117548', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(15, '_9998077', 'Jagapati Prasetyo', '3506593003204399', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(16, '_96238761', 'Kamila Nurdiyanti', '3574135203210291', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(17, '_47374736', 'Karsana Maryadi S.H.', '8272722009926345', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(18, '_42636237', 'Ajimin Salahudin S.Psi', '1808804901136613', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(19, '_50041250', 'Pangeran Latupono', '7403414803936130', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(20, '_14907705', 'Hesti Aryani', '6103350805196287', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(21, '_25662082', 'Gadang Kenzie Lazuardi', '3402721207040382', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(22, '_82998314', 'Jati Mansur M.M.', '7306244707032015', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(23, '_90985023', 'Galak Kenes Sirait', '7110674511191685', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(24, '_79684280', 'Laksana Manullang', '7207356806168185', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(25, '_24502781', 'Jarwadi Prabowo Mahendra M.Farm', '1310701109158470', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(26, '_47737127', 'Maras Jinawi Mustofa S.Pd', '1213147003112958', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(27, '_76738332', 'Sari Halimah', '5312124907056769', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(28, '_13112691', 'Kariman Santoso S.E.', '5310434802108400', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(29, '_59115638', 'Garang Sihombing', '5371180706075672', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(30, '_78602689', 'Vivi Oktaviani M.TI.', '7204976604069104', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(31, '_69246583', 'Karen Wahyuni', '6210622707106572', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(32, '_47106543', 'Kenari Latupono S.E.', '5101125006078510', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(33, '_91338647', 'Reza Suryono', '6109225106945142', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(34, '_51103792', 'Kamila Mayasari M.M.', '3312871311029648', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(35, '_32908000', 'Taswir Irsad Wibowo', '3401532002156464', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(36, '_18094785', 'Ghani Prabowo', '3315321408969264', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(37, '_13767448', 'Cahyanto Megantara', '6309326101213496', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(38, '_38130476', 'Eka Ophelia Pratiwi M.M.', '1277466009065951', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(39, '_9431977', 'Kala Uwais', '3503456608018617', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(40, '_29674059', 'Opan Lazuardi', '7409182706947888', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(41, '_48741299', 'Umar Laksana Sihombing S.Psi', '7205596007939612', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(42, '_25662098', 'Dalima Novitasari', '7602190507027735', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(43, '_17134552', 'Zalindra Mardhiyah', '1271441410933426', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(44, '_36480625', 'Lalita Sudiati', '3529496612067643', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(45, '_71937597', 'Uli Nuraini', '9206336302075287', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(46, '_40101463', 'Vanesa Maida Prastuti', '3217336106020105', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(47, '_67664980', 'Galiono Budiyanto S.Sos', '5108231704074786', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(48, '_96776434', 'Jaeman Nrima Situmorang S.H.', '7310467004201041', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(49, '_95005568', 'Kacung Narpati', '3574194101960449', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(50, '_30684113', 'Cakrabuana Ivan Pranowo', '3301890309077974', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(51, '_94099716', 'Yusuf Wijaya', '9209036411987672', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(52, '_80806001', 'Rahmat Latupono', '7106091105206185', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(53, '_86731055', 'Emas Iswahyudi', '1803094904125081', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(54, '_82641446', 'Gandi Marbun', '9112215211047452', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(55, '_27513754', 'Diah Nasyidah', '3373296604217184', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(56, '_37747289', 'Nasrullah Rajasa S.Pt', '5318871901151855', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(57, '_8587834', 'Karta Lasmono Mangunsong S.E.', '2171446208023786', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(58, '_83334026', 'Alika Nasyidah', '1206452403141893', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(59, '_62636331', 'Farah Zelda Novitasari', '7503035011116922', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(60, '_23906303', 'Gangsar Pratama', '1672006012947595', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(61, '_68978747', 'Kiandra Wijayanti M.M.', '1307074202163052', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(62, '_46672028', 'Kamidin Respati Utama', '3205130708126547', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(63, '_48704859', 'Galur Natsir', '6303762003938452', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(64, '_35813943', 'Umi Wahyuni', '3217412903969515', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(65, '_96397810', 'Mutia Pudjiastuti', '3207165306146828', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(66, '_5650163', 'Maryanto Prasasta', '6308614904216329', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(67, '_46050294', 'Ifa Suryatmi', '6502095907043355', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(68, '_60646238', 'Ayu Shakila Yuniar S.Farm', '6504201101987211', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(69, '_21300547', 'Kezia Hartati M.M.', '3209983009067475', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(70, '_98918589', 'Ganep Hutagalung', '1471777009076410', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(71, '_60750390', 'Gawati Usamah S.Ked', '7501870812128055', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(72, '_44481576', 'Virman Dabukke', '1809515308010323', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(73, '_59195411', 'Najam Bakianto Pranowo', '7303855105176369', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(74, '_40910667', 'Indah Agustina', '1101510808945640', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(75, '_81697375', 'Cakrajiya Prasetyo', '5202516511927766', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(76, '_31109646', 'Lukita Jumadi Hakim', '3402054605177525', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(77, '_82918895', 'Karya Nababan', '7403206204024599', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(78, '_91254927', 'Victoria Riyanti', '3671420304166188', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(79, '_41006722', 'Kani Yuliarti', '1312261402202883', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(80, '_57619706', 'Galang Hutasoit S.Pd', '6411384710027948', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(81, '_73158688', 'Maimunah Farida', '1610760603199373', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(82, '_66265816', 'Vinsen Saptono', '1111460103015540', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(83, '_96393824', 'Utama Prakasa', '1606514312096975', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(84, '_15743690', 'Baktianto Sitompul S.Psi', '9203094512952385', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(85, '_24297066', 'Kasiyah Uli Fujiati', '1278782204149850', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(86, '_7057540', 'Ika Hartati', '5319095506155596', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(87, '_68277095', 'Eli Hastuti', '1701896507002712', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(88, '_82853216', 'Rini Agustina', '3673716103038552', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(89, '_55034390', 'Ajimin Hardiansyah', '3501094901036357', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(90, '_60556965', 'Zelaya Ciaobella Permata S.Gz', '1276646704094058', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(91, '_32684063', 'Elma Rahayu', '1902935312209172', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(92, '_32445725', 'Cici Halima Andriani M.TI.', '5313705804974391', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(93, '_51824503', 'Icha Laksita', '7504265205192039', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(94, '_45141171', 'Tedi Prasetya', '7601634906170548', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(95, '_38883541', 'Paramita Susanti', '3515420410087661', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(96, '_14591728', 'Ayu Prastuti', '6501212808960664', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(97, '_53293009', 'Maria Puspasari', '9119814804221448', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(98, '_61584625', 'Luis Nainggolan', '3321860909112399', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(99, '_72590202', 'Raina Patricia Wahyuni', '1605890712011190', 'Aktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51'),
(100, '_10877578', 'Vega Pradana', '3402521907082288', 'Nonaktif', '2022-08-07 02:47:51', '2022-08-07 02:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `nip`) VALUES
(2, 'Rahmat Hidayat', NULL, '$2y$10$zo.0QnDe42Zovfe.mI7Lf.e7t6fnVRDa9ZpSpz8X.e4UQvNabn3Mm', NULL, '2022-08-07 03:09:15', '2022-08-07 03:09:15', 'rahmat', '200211042022031004');

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
-- Indexes for table `prisoners`
--
ALTER TABLE `prisoners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prisoners_id_prisoner_unique` (`id_prisoner`),
  ADD UNIQUE KEY `prisoners_nik_unique` (`nik`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_nip_unique` (`nip`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `prisoners`
--
ALTER TABLE `prisoners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
