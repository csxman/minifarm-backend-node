-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2024 at 01:16 PM
-- Server version: 10.5.23-MariaDB-0+deb11u1-log
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taokaem_minifarm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Accounts`
--

CREATE TABLE `Accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20201112081824-create-products.js'),
('20210402073930-create-account.js'),
('20220217033618-create-user-account.js'),
('20220228050409-create-tbl-config-group-menu.js'),
('20220228050420-create-tbl-config-menu-detail.js'),
('20220228050430-create-tbl-setting-group-menu.js'),
('20220228050437-create-tbl-setting-menu-detail.js'),
('20220509011153-create-tbl-user.js'),
('20220511014944-create-tbl-cane-activity.js'),
('20220511020142-create-tbl-cane-type.js'),
('20220511021855-create-tbl-fertilizer-formula.js'),
('20220511021932-create-tbl-fertilizer-band.js'),
('20220511023126-create-tbl-land-activity.js'),
('20220511023435-create-tbl-land-rent-space.js'),
('20220511023442-create-tbl-cane-cropyear.js'),
('20220511023449-create-tbl-harvest-carcut.js'),
('20220511023456-create-tbl-cane-owner.js'),
('20220511023532-create-tbl-land-document-license-type.js'),
('20220511041556-create-tbl-user-type.js'),
('20220511041605-create-tbl-user-type-detail.js'),
('20220511042620-create-tbl-cane-plow-type.js'),
('20220511042629-create-tbl-cane-spray-type.js'),
('20220511042637-create-tbl-cane-cuted-type.js'),
('20220511042646-create-tbl-water-fertilizer-type.js'),
('20220511042654-create-tbl-soil-condition.js'),
('20220511042703-create-tbl-harvest-truck.js'),
('20220511042711-create-tbl-driver-user.js'),
('20220511094442-create-tbl-cane-varieties.js'),
('20220512015252-create-tbl-gis-plot.js');

-- --------------------------------------------------------

--
-- Table structure for table `shadow_gps`
--

CREATE TABLE `shadow_gps` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `box_id` varchar(10) DEFAULT NULL,
  `data_status` int(11) DEFAULT NULL,
  `receive_time` varchar(30) DEFAULT NULL,
  `gps_time` varchar(30) DEFAULT NULL,
  `gps_status` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `engine_status` int(11) DEFAULT NULL,
  `hdop` int(11) DEFAULT NULL,
  `satellite` int(11) DEFAULT NULL,
  `battery_backup` int(11) DEFAULT NULL,
  `sos` int(11) DEFAULT NULL,
  `driver_id` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_adjust`
--

CREATE TABLE `tbl_activity_adjust` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `register_id` varchar(10) DEFAULT NULL COMMENT 'ทะเบียนรถ',
  `pay_type_id` int(11) DEFAULT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_adjust`
--

INSERT INTO `tbl_activity_adjust` (`id`, `plot_key`, `plot_no`, `act_id`, `driver_id`, `register_id`, `pay_type_id`, `plot_cost_per_rai`, `plot_cost_avg`, `desc`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '1244', '1244', 2, 2, 'ดดด', 1, 123, 539, 'สดนดน', '', NULL, '2022-06-09 22:33:34', NULL, '2022-06-09 22:33:34'),
(2, '1244', '1244', 1, 1, 'พพพ', 2, 123, 539, 'พพพ', '', NULL, '2022-06-09 22:36:56', NULL, '2022-06-09 22:36:56'),
(3, '1244', '1244', 3, 2, 'พพพ', 1, 123, 539, 'ททท', 'image-1654789978526.png', 1, '2022-06-09 22:53:00', NULL, '2022-06-09 22:53:00'),
(4, '1244', '1244', 3, 2, 'พพพ', 1, 1233, 0, 'ททท', 'image-1654789997368.png', 1, '2022-06-09 22:53:18', NULL, '2022-06-09 22:53:18'),
(5, '1244', '1244', 1, 1, 'ดดด', 1, 123456, 540737, 'สสส', 'image-1654790155186.png', 1, '2022-06-09 22:55:56', NULL, '2022-06-09 22:55:56'),
(6, '1244', '1244', 3, 1, 'สสส', 1, 123, 1257.06, 'สสส', 'image-1654876617873.png', 1, '2022-06-10 22:56:59', NULL, '2022-06-10 22:56:59'),
(7, '2022061111005170', '5679', 3, 1, '3456', 1, 1232, 24566.1, 'คคคค', 'image-1654920322441.png', 1, '2022-06-11 11:05:25', NULL, '2022-06-11 11:05:25'),
(8, '190307101102781', '6034120009', NULL, NULL, '70-1244', 2, 200, 8670, 'วีแนส', 'image-1670849947510.png', 22, '2022-12-12 19:59:09', NULL, '2022-12-12 19:59:09'),
(9, '190307101102781', '6034120009', NULL, NULL, '701244', 2, 200, 8670, '2', 'image-1670850454560.png', 22, '2022-12-12 20:07:36', NULL, '2022-12-12 20:07:36'),
(10, '190307101102781', '6034120009', NULL, NULL, '701244', 2, 200, 8670, '3', 'image-1670850521896.png', 22, '2022-12-12 20:08:47', NULL, '2022-12-12 20:08:47'),
(11, '190307101102781', '6034120009', NULL, NULL, '701244', 2, 200, 8670, '4', 'image-1670850592843.png', 22, '2022-12-12 20:09:56', NULL, '2022-12-12 20:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_canecut`
--

CREATE TABLE `tbl_activity_canecut` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `canecut_type_id` int(11) DEFAULT NULL,
  `cane_type_cut` int(11) DEFAULT NULL,
  `harvest_driver_id` int(11) DEFAULT NULL,
  `harvest_carcut_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `register_id` varchar(10) DEFAULT NULL,
  `pay_type_id` int(11) DEFAULT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_canecut`
--

INSERT INTO `tbl_activity_canecut` (`id`, `plot_key`, `plot_no`, `act_id`, `canecut_type_id`, `cane_type_cut`, `harvest_driver_id`, `harvest_carcut_id`, `driver_id`, `register_id`, `pay_type_id`, `plot_cost_per_rai`, `plot_cost_avg`, `desc`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '1234568', '1234668', 6, 2, 2, 2, 2, 1, '1', 1, 333, 0, 'ทดสอบ', 'image-1654855110210.png', 1, '2022-06-10 16:58:31', NULL, '2022-06-10 16:58:31'),
(2, '2022061111005170', '5679', 6, 2, 2, 2, 2, 2, '1', 1, 123, 2452.62, 'คคค', 'image-1654920915272.png', 1, '2022-06-11 11:15:16', NULL, '2022-06-11 11:15:16'),
(3, '201128120718634', '6034120004', 6, 1, 1, 3, 1, 2, '1', 1, 1000, 29580, 'ทดสอบ', 'image-1655724941928.png', 9, '2022-06-20 18:35:43', NULL, '2022-06-20 18:35:43'),
(4, '220402129440808', '6034120047', 6, 2, 1, 6, 1, NULL, '1', 2, 0, 0, '', 'image-1669949070531.png', 34, '2022-12-02 09:44:33', NULL, '2022-12-02 09:44:33'),
(5, '210524123812871', '6034120012', 6, 2, NULL, NULL, NULL, NULL, '2', NULL, 0, 0, '', 'image-1670151712041.png', 35, '2022-12-04 18:01:54', NULL, '2022-12-04 18:01:54'),
(6, '190307101102781', '6034120009', 6, 2, 1, NULL, 3, NULL, '1', 2, 210, 9103.5, '', 'image-1670241805809.png', 35, '2022-12-05 19:03:27', NULL, '2022-12-05 19:03:27'),
(7, '201128120718634', '6034120004', 6, 2, 1, NULL, 2, 3, NULL, 2, 100, 2958, '', 'image-1670297290529.png', 40, '2022-12-06 10:28:14', NULL, '2022-12-06 10:28:14'),
(8, NULL, NULL, 6, 1, 2, NULL, 4, NULL, '9', 2, 0, 0, '', 'image-1670821058116.png', 63, '2022-12-12 11:57:39', NULL, '2022-12-12 11:57:39'),
(9, '201128120718634', '6034120004', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 'image-1689567940556.png', 50, '2023-07-17 11:25:42', NULL, '2023-07-17 11:25:42'),
(10, '202308062004473', '6034120089', 6, NULL, 1, 9, 3, 9, NULL, 2, 0, 0, '', 'image-1702477217729.png', 80, '2023-12-13 21:20:18', NULL, '2023-12-13 21:20:18'),
(11, NULL, NULL, 6, 2, 1, 11, 2, NULL, '3', 1, 300, 0, '', 'image-1702633309646.png', 75, '2023-12-15 16:41:50', NULL, '2023-12-15 16:41:50'),
(12, '202308062004446', '6034120006', 6, 2, 1, 19, 2, NULL, '1', 1, 10, 141.4, '', 'image-1702634218917.png', 75, '2023-12-15 16:57:00', NULL, '2023-12-15 16:57:00'),
(13, '202308062004446', '6034120006', 6, 2, 1, 19, 2, 11, '3', 1, 0, 0, '', 'image-1702634641877.png', 75, '2023-12-15 17:04:03', NULL, '2023-12-15 17:04:03'),
(14, '202308062004468', '6034120056', 6, NULL, 1, NULL, 1, NULL, NULL, 1, 210, 10909.5, '', 'image-1702690894331.png', 80, '2023-12-16 08:41:35', NULL, '2023-12-16 08:41:35'),
(15, '2022120911340263', '1243566', 6, 2, 1, 1, 2, 1, '1', 1, 1, 30.18, '', 'image-1702704622904.png', 75, '2023-12-16 12:30:24', NULL, '2023-12-16 12:30:24'),
(16, '2022120911340263', '1243566', 6, NULL, NULL, 1, 2, NULL, '2', NULL, 0, 0, '', 'image-1702704764165.png', 75, '2023-12-16 12:32:45', NULL, '2023-12-16 12:32:45'),
(17, '2022120911340263', '1243566', 6, NULL, NULL, 1, 2, 1, '3', NULL, 0, 0, '', 'image-1702704823964.png', 75, '2023-12-16 12:33:45', NULL, '2023-12-16 12:33:45'),
(18, '2022120911340263', '1243566', 6, NULL, NULL, NULL, NULL, NULL, '23', NULL, 0, 0, '', 'image-1702704924069.png', 75, '2023-12-16 12:35:25', NULL, '2023-12-16 12:35:25'),
(19, '202308062004468', '6034120056', 6, NULL, 1, 7, 1, 7, '1', 1, 0, 0, '', 'image-1702710137244.png', 80, '2023-12-16 14:02:18', NULL, '2023-12-16 14:02:18'),
(20, '2023071711132634', '123', 6, 2, 1, NULL, 2, NULL, '1', NULL, 0, 0, '', 'image-1702710388015.png', 75, '2023-12-16 14:06:29', NULL, '2023-12-16 14:06:29'),
(21, '2023071711132634', '123', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 'image-1703227721847.png', 77, '2023-12-22 13:48:43', NULL, '2023-12-22 13:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_drone`
--

CREATE TABLE `tbl_activity_drone` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `drone_type_id` int(11) DEFAULT NULL,
  `fertilizer_formula_id` int(11) DEFAULT NULL,
  `fertilizer_band_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `drone_id` varchar(10) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `pay_type_id` int(11) DEFAULT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_drone`
--

INSERT INTO `tbl_activity_drone` (`id`, `plot_key`, `plot_no`, `act_id`, `drone_type_id`, `fertilizer_formula_id`, `fertilizer_band_id`, `driver_id`, `drone_id`, `water`, `pay_type_id`, `plot_cost_per_rai`, `plot_cost_avg`, `desc`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '1234601', '1234701', 5, 1, 3, 2, 2, 'นนนน', 30, 2, 1333, 0, 'ทดสอบ', 'image-1654849680990.png', 1, '2022-06-10 15:28:02', NULL, '2022-06-10 15:28:02'),
(2, '2022061111005170', '5679', 5, 1, 2, 1, 1, '678', 2, 1, 123, 2452.62, 'นนน', 'image-1654920725965.png', 1, '2022-06-11 11:12:07', NULL, '2022-06-11 11:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_fertilizer_formula`
--

CREATE TABLE `tbl_activity_fertilizer_formula` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `fertilizer_formula_id` int(11) DEFAULT NULL,
  `num_of_time` varchar(10) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_fertilizer_formula`
--

INSERT INTO `tbl_activity_fertilizer_formula` (`id`, `plot_key`, `plot_no`, `fertilizer_formula_id`, `num_of_time`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '123321', '333555777', 1, '1', '', 0, '2022-05-29 10:34:00', 0, '2022-05-29 10:34:00'),
(2, '123321', '333555777', 1, '1', '', 0, '2022-05-29 10:35:58', 0, '2022-05-29 10:35:58'),
(3, '123321', '333555777', 1, '1', '', 0, '2022-05-29 10:37:22', 0, '2022-05-29 10:37:22'),
(4, '123321', '333555777', 1, '1', '', 0, '2022-05-29 11:29:18', 0, '2022-05-29 11:29:18'),
(5, '123321', '333555777', 1, '1', 'image-1653801018470.jpeg', 0, '2022-05-29 12:10:18', 0, '2022-05-29 12:10:18'),
(6, '1', '1', 1, '1', 'image-1653832335368.png', 1, '2022-05-29 20:52:15', 1, '2022-05-29 20:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_leaves`
--

CREATE TABLE `tbl_activity_leaves` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `leaves_id` int(11) DEFAULT NULL,
  `leaves_driver_id` int(11) DEFAULT NULL,
  `leaves_register_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `register_id` varchar(10) DEFAULT NULL,
  `pay_type_id` int(11) DEFAULT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_leaves`
--

INSERT INTO `tbl_activity_leaves` (`id`, `plot_key`, `plot_no`, `act_id`, `leaves_id`, `leaves_driver_id`, `leaves_register_id`, `driver_id`, `register_id`, `pay_type_id`, `plot_cost_per_rai`, `plot_cost_avg`, `desc`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '1244', '1244', 6, 1, 2, 2, 1, '1', 1, 1234, 5404.92, 'สสส', 'image-1654870186741.png', 1, '2022-06-10 21:09:48', NULL, '2022-06-10 21:09:48'),
(2, '2022061111005170', '5679', 6, 1, 1, 2, 2, '1', 1, 1235, 24625.9, 'ถถถ', 'image-1654920994170.png', 1, '2022-06-11 11:16:35', NULL, '2022-06-11 11:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_plant`
--

CREATE TABLE `tbl_activity_plant` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `plant_type_id` int(11) DEFAULT NULL,
  `varieties_id` int(11) DEFAULT NULL,
  `bundle_sum` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `register_id` varchar(10) DEFAULT NULL,
  `harvest_driver_id` int(11) DEFAULT NULL,
  `harvest_carcut_id` int(11) DEFAULT NULL,
  `pay_type_id` int(11) DEFAULT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `image` text DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_plant`
--

INSERT INTO `tbl_activity_plant` (`id`, `plot_key`, `plot_no`, `act_id`, `plant_type_id`, `varieties_id`, `bundle_sum`, `driver_id`, `register_id`, `harvest_driver_id`, `harvest_carcut_id`, `pay_type_id`, `plot_cost_per_rai`, `plot_cost_avg`, `image`, `desc`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '1234568', '1234668', 3, 2, 2, 30, 2, 'สส', 0, 0, 2, 1234, 0, 'image-1654835074293.png', NULL, 1, '2022-06-10 11:24:35', 0, '2022-06-10 11:24:35'),
(2, '2022061111005170', '5679', 3, 1, 1, 10, 1, '567', 0, 0, 2, 1245, 24825.3, 'image-1654920559344.png', NULL, 1, '2022-06-11 11:09:21', 0, '2022-06-11 11:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_plot`
--

CREATE TABLE `tbl_activity_plot` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `canecut_type_id` int(11) DEFAULT NULL,
  `harvest_carcut_id` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_plot`
--

INSERT INTO `tbl_activity_plot` (`id`, `plot_key`, `canecut_type_id`, `harvest_carcut_id`, `image`, `desc`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '201128120718744', 2, 2, 'image-1655735366911.png', 'ทดสอบ', 9, '2022-06-20 21:29:29', 0, '2022-06-20 21:29:29'),
(2, '201128120718634', 1, NULL, 'image-1655735509793.png', 'นนน', 9, '2022-06-20 21:31:51', 0, '2022-06-20 21:31:51'),
(3, '201128120718634', 2, 2, 'image-1655736048010.png', 'ทดสอบ', 1, '2022-06-20 21:40:51', 0, '2022-06-20 21:40:51'),
(4, '201128120718634', 2, 2, 'image-1655862329146.png', '', 22, '2022-06-22 08:45:31', 0, '2022-06-22 08:45:31'),
(5, '201128120718634', 2, 1, 'image-1655862371272.png', '', 6, '2022-06-22 08:46:13', 0, '2022-06-22 08:46:13'),
(6, '201128120718634', 2, NULL, 'image-1658917186739.png', 'อ้อย', 25, '2022-07-27 17:19:50', 0, '2022-07-27 17:19:50'),
(7, '201128120718634', 2, NULL, 'image-1658917394623.png', '', 25, '2022-07-27 17:23:16', 0, '2022-07-27 17:23:16'),
(8, '220404129441329', 2, 2, 'image-1660055788973.png', 'yyy', 9, '2022-08-09 21:36:30', 0, '2022-08-09 21:36:30'),
(9, '220326129438098', 2, 3, 'image-1688776675107.png', 'som', 35, '2023-07-08 07:37:56', 0, '2023-07-08 07:37:56'),
(10, '202308062004450', 2, 1, 'image-1692943018368.png', '25/8/66', 22, '2023-08-25 12:57:01', 0, '2023-08-25 12:57:01'),
(11, NULL, 2, 2, 'image-1702633350755.png', '25ตัน', 75, '2023-12-15 16:42:32', 0, '2023-12-15 16:42:32'),
(12, '202308062004446', 2, 2, 'image-1702634267728.png', '', 75, '2023-12-15 16:57:48', 0, '2023-12-15 16:57:48'),
(13, '202308062004446', 2, 2, 'image-1702634663593.png', '', 75, '2023-12-15 17:04:24', 0, '2023-12-15 17:04:24'),
(14, '2023071711132634', 2, 2, 'image-1702710434773.png', '', 75, '2023-12-16 14:07:16', 0, '2023-12-16 14:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_plow`
--

CREATE TABLE `tbl_activity_plow` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `plow_id` int(11) DEFAULT NULL,
  `driver_id` varchar(10) DEFAULT NULL,
  `register_id` varchar(10) DEFAULT NULL,
  `soil_condition` int(11) DEFAULT NULL,
  `pay_type_id` int(11) DEFAULT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `image` text DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_plow`
--

INSERT INTO `tbl_activity_plow` (`id`, `plot_key`, `plot_no`, `act_id`, `plow_id`, `driver_id`, `register_id`, `soil_condition`, `pay_type_id`, `plot_cost_per_rai`, `plot_cost_avg`, `image`, `desc`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '1234568', '1234668', 2, 2, '2', 'นนน', 2, 2, 123, 0, 'image-1654832329143.png', NULL, 1, '2022-06-10 10:38:53', 0, '2022-06-10 10:38:53'),
(2, '2022061111005170', '5679', 2, 1, '1', '4667', 1, 2, 123, 2452.62, 'image-1654920412637.png', NULL, 1, '2022-06-11 11:06:55', 0, '2022-06-11 11:06:55'),
(3, '201502190150912', '603412028', 2, 0, NULL, '', 0, 2, 500, 3320, 'image-1671088418370.png', NULL, 22, '2022-12-15 14:13:39', 0, '2022-12-15 14:13:39'),
(4, '201402170136509', '603412026', 2, 0, NULL, '', 0, 2, 500, 3710, 'image-1671088515720.png', NULL, 22, '2022-12-15 14:15:16', 0, '2022-12-15 14:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_point`
--

CREATE TABLE `tbl_activity_point` (
  `id` int(11) NOT NULL,
  `point_key` varchar(50) DEFAULT NULL,
  `point_type_id` varchar(50) DEFAULT NULL,
  `point_type_name` varchar(50) DEFAULT NULL,
  `point_x` varchar(50) DEFAULT NULL,
  `point_y` varchar(50) DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_point`
--

INSERT INTO `tbl_activity_point` (`id`, `point_key`, `point_type_id`, `point_type_name`, `point_x`, `point_y`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '202206102313102', '3', NULL, '101.83491333333335', '17.18691000000000', 1, '2022-06-10 23:13:10', NULL, '2022-06-10 23:13:10'),
(2, '2022061409420069', '1', 'หิน', '101.86560791000000', '17.12279263000000', 5, '2022-06-14 09:42:01', NULL, '2022-06-14 09:42:01'),
(3, '2022061409441769', '2', 'ตอ\n', '101.86571259000000', '17.12279814000000', 5, '2022-06-14 09:44:17', NULL, '2022-06-14 09:44:17'),
(4, '2022070723184989', '1', 'หิน', '101.83496833333332', '17.18679166666667', 9, '2022-07-07 23:18:49', NULL, '2022-07-07 23:18:49'),
(5, '2022070723230950', '2', 'ตอ', '101.83504166666668', '17.18700833333333', 9, '2022-07-07 23:23:09', NULL, '2022-07-07 23:23:09'),
(6, '2022072806322417', '2', 'ตอ', '101.99606020000000', '17.05502024000000', 25, '2022-07-28 06:32:24', NULL, '2022-07-28 06:32:24'),
(7, '2022072806340158', '2', 'ตอ', '101.99640597000000', '17.05481246000000', 25, '2022-07-28 06:34:00', NULL, '2022-07-28 06:34:00'),
(8, '2022072814183429', '2', 'ตอ', '101.99601001000000', '17.05502649000000', 25, '2022-07-28 14:18:34', NULL, '2022-07-28 14:18:34'),
(9, '2022072814214012', '2', 'ตอ', '101.99602035000000', '17.05502613000000', 25, '2022-07-28 14:21:40', NULL, '2022-07-28 14:21:40'),
(10, '2022072814282190', '2', 'ตอ', '101.99600900000000', '17.05497070000000', 25, '2022-07-28 14:28:21', NULL, '2022-07-28 14:28:21'),
(11, '2022072814292771', '2', 'ตอ', '101.99600500000000', '17.05496466000000', 25, '2022-07-28 14:29:27', NULL, '2022-07-28 14:29:27'),
(12, '2022072814320119', '3', 'สระน้ำ\n', '101.99598967000000', '17.05498642000000', 25, '2022-07-28 14:32:01', NULL, '2022-07-28 14:32:01'),
(13, '2022072814343487', '3', 'สระน้ำ', '101.99599151000000', '17.05496971000000', 25, '2022-07-28 14:34:34', NULL, '2022-07-28 14:34:34'),
(14, '2022072814354248', '2', 'ตอ', '101.99599720000000', '17.05497268000000', 25, '2022-07-28 14:35:42', NULL, '2022-07-28 14:35:42'),
(15, '2022072814375124', '1', 'หิน', '101.99601535000000', '17.05499966000000', 25, '2022-07-28 14:37:51', NULL, '2022-07-28 14:37:51'),
(16, '2022072814420870', '1', 'หิน', '101.99605009000000', '17.05498984000000', 25, '2022-07-28 14:42:08', NULL, '2022-07-28 14:42:08'),
(17, '2022072814442184', '1', 'หิน', '101.99606522000000', '17.05501431000000', 25, '2022-07-28 14:44:21', NULL, '2022-07-28 14:44:21'),
(18, '2022072814515915', '1', 'หิน', '101.99598826000000', '17.05502328000000', 25, '2022-07-28 14:51:59', 0, '2022-07-28 14:51:59'),
(19, '2022072814533713', '1', 'หิน.', '101.99601332000000', '17.05499462000000', 25, '2022-07-28 14:53:37', 0, '2022-07-28 14:53:37'),
(20, '2022072814562646', '3', 'สระน้ำ', '101.99601412000000', '17.05496935000000', 25, '2022-07-28 14:56:26', 0, '2022-07-28 14:56:26'),
(21, '2022072814574590', '2', 'ตอ', '101.99605020000000', '17.05498477000000', 25, '2022-07-28 14:57:45', 0, '2022-07-28 14:57:45'),
(22, '2022072815133552', '1', 'หิน', '101.99600109000000', '17.05507733000000', 25, '2022-07-28 15:13:36', NULL, '2022-07-28 15:13:36'),
(23, '2022072815221764', '2', 'ตอ', '101.99601719000000', '17.05500119000000', 25, '2022-07-28 15:22:17', 0, '2022-07-28 15:22:17'),
(24, '2022072815271119', '3', 'สระน้ำ', '101.99601915000000', '17.05499923000000', 25, '2022-07-28 15:27:11', 0, '2022-07-28 15:27:11'),
(25, '2022072815290277', '3', 'สระน้ำ', '101.99598159000000', '17.05502505000000', 25, '2022-07-28 15:29:03', 0, '2022-07-28 15:29:03'),
(26, '2022072815321695', '3', 'สระน้ำ', '101.99600785000000', '17.05499201000000', 25, '2022-07-28 15:32:17', 0, '2022-07-28 15:32:17'),
(27, '2022072815421796', '3', 'สระน้ำ', '101.99597970000000', '17.05498487000000', 25, '2022-07-28 15:42:18', NULL, '2022-07-28 15:42:18'),
(28, '2022072818325734', '3', 'สระน้ำ', '99.45637246860012', '14.05682680590599', 8, '2022-07-28 18:32:56', NULL, '2022-07-28 18:32:56'),
(29, '2022072818390841', '1', 'หิน', '99.45636441760189', '14.05687136958472', 8, '2022-07-28 18:39:07', NULL, '2022-07-28 18:39:07'),
(30, '2022080316440634', '3', 'สระน้ำ', '101.82471455000000', '17.18362384000000', 25, '2022-08-03 16:44:07', NULL, '2022-08-03 16:44:07'),
(31, '2022080316460052', '3', 'สระน้ำ', '101.82470995000000', '17.18360417000000', 25, '2022-08-03 16:46:01', NULL, '2022-08-03 16:46:01'),
(32, '2022081010525578', '2', 'ตอ', '101.82642374518348', '17.18331135859030', 8, '2022-08-10 10:52:56', NULL, '2022-08-10 10:52:56'),
(33, '2022081313110878', '2', 'ตอ', '101.82494984000000', '17.18405185000000', 25, '2022-08-13 13:11:10', NULL, '2022-08-13 13:11:10'),
(34, '2022081313213367', '3', 'สระน้ำ', '101.82187174000000', '17.18865298000000', 25, '2022-08-13 13:21:34', NULL, '2022-08-13 13:21:34'),
(35, '2022081313245830', '2', 'ตอ', '101.82102395000000', '17.18793737000000', 25, '2022-08-13 13:24:59', NULL, '2022-08-13 13:24:59'),
(36, '202212031759230', '3', 'สระน้ำ', '101.86578019738970', '17.12289686866144', 8, '2022-12-03 17:59:25', NULL, '2022-12-03 17:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_ripper`
--

CREATE TABLE `tbl_activity_ripper` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) DEFAULT NULL,
  `plot_no` varchar(50) DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `ripper_type_id` int(11) DEFAULT NULL,
  `fertilizer_formula_id` int(11) DEFAULT NULL,
  `fertilizer_band_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `register_id` varchar(10) DEFAULT NULL,
  `pay_type_id` int(11) DEFAULT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `image` text DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_activity_ripper`
--

INSERT INTO `tbl_activity_ripper` (`id`, `plot_key`, `plot_no`, `act_id`, `ripper_type_id`, `fertilizer_formula_id`, `fertilizer_band_id`, `driver_id`, `register_id`, `pay_type_id`, `plot_cost_per_rai`, `plot_cost_avg`, `image`, `desc`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '1234601', '1234701', 4, 1, 1, 2, 2, 'นนน', 2, 123, 0, 'image-1654846406192.png', NULL, 1, '2022-06-10 14:33:28', 0, '2022-06-10 14:33:28'),
(2, '2022061111005170', '5679', 4, 1, 1, 2, 2, '356', 1, 1234, 24606, 'image-1654920627062.png', NULL, 1, '2022-06-11 11:10:28', 0, '2022-06-11 11:10:28'),
(3, '210512123286573', '6034120079', 4, 1, 1, 1, 1, '', 2, 500, 4450, 'image-1670245197953.png', NULL, 35, '2022-12-05 20:00:00', 0, '2022-12-05 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adjust_type`
--

CREATE TABLE `tbl_adjust_type` (
  `id` int(11) NOT NULL,
  `act_id` int(11) DEFAULT NULL,
  `act_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_adjust_type`
--

INSERT INTO `tbl_adjust_type` (`id`, `act_id`, `act_name`) VALUES
(1, 1, 'ปรับที่ดิน'),
(2, 2, 'หิน/ตอ'),
(3, 3, 'ถมสระ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_activity`
--

CREATE TABLE `tbl_cane_activity` (
  `id` int(11) NOT NULL,
  `cane_activity_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_activity`
--

INSERT INTO `tbl_cane_activity` (`id`, `cane_activity_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'ปรับพื้นที่', 80, '2022-05-11 17:35:15', 0, '2022-05-11 17:35:15'),
(2, 'ไถ', 80, '2022-05-11 17:35:23', 0, '2022-05-11 17:35:23'),
(3, 'ปลูก', 80, '2022-05-11 17:35:29', 0, '2022-05-11 17:35:29'),
(4, 'ริปเปอร์', 80, '2022-05-11 17:35:42', 0, '2022-05-11 17:35:42'),
(5, 'บินโดรน', 80, '2022-05-11 17:35:59', 0, '2022-05-11 17:35:59'),
(6, 'ตัดอ้อย', 80, '2022-05-11 17:36:08', 0, '2022-05-11 17:36:08'),
(7, 'อัดใบอ้อย', 80, '2022-05-11 17:36:19', 0, '2022-05-11 17:36:19'),
(8, 'ลงริปเปอร์5ขา', 22, '2022-12-12 07:38:20', 0, '2022-12-12 07:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_cropyear`
--

CREATE TABLE `tbl_cane_cropyear` (
  `id` int(11) NOT NULL,
  `cane_cropyear_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_cropyear`
--

INSERT INTO `tbl_cane_cropyear` (`id`, `cane_cropyear_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '2565', 80, '2022-05-11 19:27:12', 0, '2022-05-11 19:27:12'),
(2, '2566', 80, '2022-05-11 19:27:17', 0, '2022-05-11 19:27:17'),
(3, '2567', 80, '2022-05-11 19:27:21', 0, '2022-05-11 19:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_cuted_type`
--

CREATE TABLE `tbl_cane_cuted_type` (
  `id` int(11) NOT NULL,
  `cane_cuted_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_cuted_type`
--

INSERT INTO `tbl_cane_cuted_type` (`id`, `cane_cuted_type_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'คนตัด', 80, '2022-05-11 20:11:21', 0, '2022-05-11 20:11:21'),
(2, 'รถตัด', 80, '2022-05-11 20:11:28', 0, '2022-05-11 20:11:28'),
(3, 'คนขับรถไถ', 22, '2022-12-05 19:55:49', 0, '2022-12-05 19:55:49'),
(4, 'รถตัดอ้อยลำ', 36, '2022-12-06 10:33:31', 36, '2022-12-06 10:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_owner`
--

CREATE TABLE `tbl_cane_owner` (
  `id` int(11) NOT NULL,
  `cane_owner_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_owner`
--

INSERT INTO `tbl_cane_owner` (`id`, `cane_owner_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'เช่า', 80, '2022-05-11 19:40:39', 0, '2022-05-11 19:40:39'),
(2, 'ตนเอง', 80, '2022-05-11 19:40:45', 0, '2022-05-11 19:40:45'),
(3, 'ลูกไร่', 80, '2022-05-11 19:47:39', 80, '2022-05-11 19:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_plow_type`
--

CREATE TABLE `tbl_cane_plow_type` (
  `id` int(11) NOT NULL,
  `cane_plow_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_plow_type`
--

INSERT INTO `tbl_cane_plow_type` (`id`, `cane_plow_type_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'ไถดะ', 80, '2022-05-11 19:58:03', 0, '2022-05-11 19:58:03'),
(2, 'ไถแป', 80, '2022-05-11 19:58:12', 80, '2022-05-11 19:58:20'),
(3, 'ลงริปเปอร์  5ขา', 22, '2022-12-08 19:11:06', 0, '2022-12-08 19:11:06'),
(4, 'ลงริปเปอร์อ้อยต่อ', 22, '2022-12-08 19:14:13', 0, '2022-12-08 19:14:13'),
(5, 'ลงริปเปอร์ไส่ปุ๋ย', 22, '2022-12-08 19:15:30', 0, '2022-12-08 19:15:30'),
(6, 'ลงริปเปอร์ไส่ปุ๋ย', 22, '2022-12-08 19:15:32', 0, '2022-12-08 19:15:32'),
(7, 'ไส่ปุยกลางกออ้อย', 22, '2022-12-08 19:17:50', 0, '2022-12-08 19:17:50'),
(8, 'ไส่ปุยกลางกออ้อย', 22, '2022-12-08 19:17:52', 0, '2022-12-08 19:17:52'),
(9, 'ลงปุ๋ยน้ำวีแนส', 57, '2022-12-10 16:03:26', 0, '2022-12-10 16:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_spray_type`
--

CREATE TABLE `tbl_cane_spray_type` (
  `id` int(11) NOT NULL,
  `cane_spray_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_spray_type`
--

INSERT INTO `tbl_cane_spray_type` (`id`, `cane_spray_type_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'พ่นยา', 80, '2022-05-11 20:04:45', 0, '2022-05-11 20:04:45'),
(2, 'ใส่ปุ๋ยทางใบ', 80, '2022-05-11 20:04:59', 0, '2022-05-11 20:04:59'),
(3, 'พ่นยาคุม', 2, '2022-06-13 21:37:03', 0, '2022-06-13 21:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_type`
--

CREATE TABLE `tbl_cane_type` (
  `id` int(11) NOT NULL,
  `cane_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_type`
--

INSERT INTO `tbl_cane_type` (`id`, `cane_type_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'อ้อยปลูก', 80, '2022-05-11 16:03:33', 80, '2022-05-11 16:08:26'),
(2, 'อ้อยตอ', 80, '2022-05-11 16:03:40', 80, '2022-05-11 16:03:40'),
(3, 'อ้อยซื้อk', 22, '2022-12-12 07:40:32', 22, '2022-12-12 07:41:30'),
(4, 'อ้อยซื้อm', 22, '2022-12-12 07:41:14', 0, '2022-12-12 07:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cane_varieties`
--

CREATE TABLE `tbl_cane_varieties` (
  `id` int(11) NOT NULL,
  `varieties_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cane_varieties`
--

INSERT INTO `tbl_cane_varieties` (`id`, `varieties_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'ขอนแก่น3', 80, '2022-05-11 16:53:14', 80, '2022-05-11 16:53:41'),
(2, 'อู่ทอง', 80, '2022-05-11 16:53:24', 0, '2022-05-11 16:53:24'),
(3, 'CSB111', 2, '2022-06-13 20:59:51', 0, '2022-06-13 20:59:51'),
(4, 'CSB07', 2, '2022-06-13 21:11:56', 0, '2022-06-13 21:11:56'),
(6, 'ภูเขียว4', 2, '2022-06-13 21:14:51', 0, '2022-06-13 21:14:51'),
(7, 'ภูเขียว2', 36, '2022-12-06 10:31:31', 0, '2022-12-06 10:31:31'),
(8, 'ภูเขียว3', 36, '2022-12-06 10:31:42', 0, '2022-12-06 10:31:42'),
(9, 'ภูเขียว4', 36, '2022-12-06 10:31:51', 0, '2022-12-06 10:31:51'),
(10, 'อู่ทอง15', 22, '2022-12-06 21:04:05', 0, '2022-12-06 21:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config_group_menus`
--

CREATE TABLE `tbl_config_group_menus` (
  `id` int(11) NOT NULL,
  `cgm_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config_menu_details`
--

CREATE TABLE `tbl_config_menu_details` (
  `id` int(11) NOT NULL,
  `cmd_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_user`
--

CREATE TABLE `tbl_driver_user` (
  `id` int(11) NOT NULL,
  `driver_user_name` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_driver_user`
--

INSERT INTO `tbl_driver_user` (`id`, `driver_user_name`, `user_id`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'พขร ที่1', 6, 80, '2022-05-11 20:31:28', 1, '2022-06-16 10:19:30'),
(2, 'พขร ที่2', 13, 80, '2022-05-11 20:31:33', 1, '2022-06-16 10:19:40'),
(3, 'คนขับรถตัด CH-10', NULL, 1, '2022-06-15 21:20:34', 0, '2022-06-15 21:20:34'),
(4, 'คนขับรถสิบล้อ กง 82-1614', NULL, 1, '2022-06-15 21:21:00', 0, '2022-06-15 21:21:00'),
(6, 'ลย80-8900', 9, 3, '2022-11-27 14:45:39', 0, '2022-11-27 14:45:39'),
(7, '4369สว่าง ทัพธานี', 24, 36, '2022-12-03 11:06:58', 36, '2022-12-07 10:35:54'),
(8, '0904โกศล(อะ)', 41, 36, '2022-12-03 11:08:01', 36, '2022-12-07 10:35:48'),
(9, '2146เรวัสดิ์ เดชสมบัตร', 40, 36, '2022-12-03 11:08:30', 36, '2022-12-07 09:27:19'),
(10, '0978วาธี คำป้อม', 42, 36, '2022-12-03 11:08:55', 36, '2022-12-07 09:27:27'),
(11, '0912แขก', 37, 36, '2022-12-03 11:09:14', 36, '2022-12-07 09:26:23'),
(12, '2212ประกอบ', 43, 36, '2022-12-03 11:09:28', 36, '2022-12-07 10:36:42'),
(13, '2216ตาจอม', 44, 36, '2022-12-03 11:09:46', 36, '2022-12-07 09:27:56'),
(14, '0973ตาหง', 46, 36, '2022-12-03 11:10:02', 36, '2022-12-07 09:28:10'),
(15, '0983ถวัลย์', 38, 36, '2022-12-03 11:10:22', 0, '2022-12-03 11:10:22'),
(16, '0238ต๊ะ', 47, 36, '2022-12-03 11:10:33', 0, '2022-12-03 11:10:33'),
(17, '1194แบงค์', 48, 36, '2022-12-03 11:54:40', 0, '2022-12-03 11:54:40'),
(18, 'CH26จีราพร', 0, 22, '2022-12-05 19:51:53', 0, '2022-12-05 19:51:53'),
(19, 'CH10โอ๊ด', 0, 22, '2022-12-05 19:53:14', 0, '2022-12-05 19:53:14'),
(20, 'CH09น๊อตซี่', 0, 22, '2022-12-05 19:53:52', 0, '2022-12-05 19:53:52'),
(21, '82-1417 ลย', 49, 32, '2022-12-06 16:06:09', 57, '2022-12-09 17:04:24'),
(22, '70-8855', 22, 36, '2022-12-07 09:25:54', 0, '2022-12-07 09:25:54'),
(23, '806699', 52, 36, '2022-12-07 11:50:40', 36, '2022-12-07 14:46:57'),
(24, '806462', 53, 36, '2022-12-07 11:50:56', 36, '2022-12-07 14:47:06'),
(25, '821568', 54, 36, '2022-12-07 11:51:35', 36, '2022-12-07 14:47:13'),
(26, '808613', 55, 36, '2022-12-07 11:51:47', 36, '2022-12-07 14:47:18'),
(27, '821572', 56, 36, '2022-12-07 11:51:57', 36, '2022-12-07 14:49:50'),
(29, 'โบ้5018', 65, 57, '2022-12-12 12:01:18', 57, '2022-12-12 12:05:55'),
(30, 'รถวีแนส70-1244', 17, 22, '2022-12-12 19:57:20', 0, '2022-12-12 19:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_farmer`
--

CREATE TABLE `tbl_farmer` (
  `id` int(11) NOT NULL,
  `farmer_pre` varchar(100) DEFAULT NULL,
  `farmer_name` varchar(100) DEFAULT NULL,
  `farmer_lname` varchar(100) DEFAULT NULL,
  `farmer_tel` varchar(100) DEFAULT NULL,
  `farmer_address` varchar(255) DEFAULT NULL,
  `quota_id` int(11) DEFAULT 0,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_farmer`
--

INSERT INTO `tbl_farmer` (`id`, `farmer_pre`, `farmer_name`, `farmer_lname`, `farmer_tel`, `farmer_address`, `quota_id`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(9, 'นาย', 'เยี่ยม', 'บงแก้ว', NULL, '33 ต.หนองหิน อ.หนองหิน จ.เลย', 1009, 1, NULL, NULL, NULL),
(10, 'นาง', 'สุนัลทา', 'บุผู', NULL, '77 ต.หนองหิน อ.หนองหิน จ.เลย', 1010, 1, NULL, NULL, NULL),
(11, 'นาย', 'ธวัชชัย', 'แอมประชา', NULL, '184 ต.โคกขมิ้น อ.วังสะพุง จ.เลย', 1011, 1, NULL, NULL, NULL),
(12, 'นาง', 'ธันยนันท์', 'เสี้ยวภูเขียว', NULL, '61 ต.หนองหิน อ.หนองหิน จ.เลย', 1012, 1, NULL, NULL, NULL),
(13, 'นาง', 'ขัติยาภรณ์', 'ไชยจักร์', NULL, '108 ต.หนองหิน อ.หนองหิน จ.เลย', 1013, 1, NULL, NULL, NULL),
(14, 'นาย', 'ลือ', 'แก่นท้าว', NULL, '1 ต.หนองหิน อ.หนองหิน จ.เลย', 1014, 1, NULL, NULL, NULL),
(15, 'นาย', 'สมฤทธิ์', 'คณะแพง', NULL, '45 ต.หนองหิน อ.หนองหิน จ.เลย', 1015, 1, NULL, NULL, NULL),
(16, 'นาย', 'อยู่', 'ป้องแก้ว', NULL, '146 ต.หนองหิน อ.หนองหิน จ.เลย', 1016, 1, NULL, NULL, NULL),
(17, 'นาย', 'ไฉน', 'ศรีเชียงษา', NULL, '172 ต.หนองหิน อ.หนองหิน จ.เลย', 1017, 1, NULL, NULL, NULL),
(18, 'นาง', 'รัตน์ดา', 'สุขบัว', NULL, '127 ต.หนองหิน อ.หนองหิน จ.เลย', 1018, 1, NULL, NULL, NULL),
(19, 'นาย', 'ละไมล์', 'สุขบัว', NULL, '71 ต.หนองหิน อ.หนองหิน จ.เลย', 1019, 1, NULL, NULL, NULL),
(20, 'นาย', 'สุพัฒน์', 'อักษรเสือ', NULL, '59 ต.หนองหิน อ.หนองหิน จ.เลย', 1020, 1, NULL, NULL, NULL),
(21, 'นาง', 'พรทิพย์', 'ศรีกระแจะ', NULL, '18 ต.หนองหิน อ.หนองหิน จ.เลย', 1021, 1, NULL, NULL, NULL),
(22, 'นาย', 'สุวิท', 'สุวรรณไกลสร', NULL, '109 ต.หนองหิน อ.หนองหิน จ.เลย', 1022, 1, NULL, NULL, NULL),
(23, 'นาง', 'พุสดี', 'พิมคีรี', NULL, '27 ต.หนองหิน อ.หนองหิน จ.เลย', 1023, 1, NULL, NULL, NULL),
(24, 'นางสาว', 'อมรรัตน์', 'บับภาเอก', NULL, '110 ต.หนองหิน อ.หนองหิน จ.เลย', 1024, 1, NULL, NULL, NULL),
(25, 'นาง', 'วาสนา', 'จำปีพรม', NULL, '27/1 ต.หนองหิน อ.หนองหิน จ.เลย', 1025, 1, NULL, NULL, NULL),
(26, 'นาย', 'ณรงค์', 'ธรรมโสม', NULL, '17 ต.หนองหิน อ.หนองหิน จ.เลย', 1026, 1, NULL, NULL, NULL),
(27, 'นาง', 'ทวีป', 'อบสุนทร', NULL, '153 ต.หนองหิน อ.หนองหิน จ.เลย', 1027, 1, NULL, NULL, NULL),
(28, 'นาย', 'ธนา   ', 'สุวรรณไกรษร', NULL, '6 ต.หนองหิน อ.หนองหิน จ.เลย', 1028, 1, NULL, NULL, NULL),
(29, 'นาย', 'วันชัย', 'เกษทองมา', NULL, '58 ต.หนองหิน อ.หนองหิน จ.เลย', 1029, 1, NULL, NULL, NULL),
(30, 'นาย', 'พรสวรรค์', 'เกษทองมา', NULL, '129 ต.หนองหิน อ.หนองหิน จ.เลย', 1030, 1, NULL, NULL, NULL),
(31, 'นาง', 'ลำเพิน', 'สงครามยศ', NULL, '100 ต.หนองหิน อ.หนองหิน จ.เลย', 1031, 1, NULL, NULL, NULL),
(32, 'นาง', 'ถนอม', 'ศรีหาบุญมา', NULL, '68 ต.หนองหิน อ.หนองหิน จ.เลย', 1032, 1, NULL, NULL, NULL),
(33, 'นาย', 'วาสนา', 'แอมประชา', NULL, '101 ต.หนองหิน อ.หนองหิน จ.เลย', 1033, 1, NULL, NULL, NULL),
(34, 'นาง', 'กรรณิภา', 'จีทา', NULL, '47 ต.หนองหิน อ.หนองหิน จ.เลย', 1034, 1, NULL, NULL, NULL),
(35, 'นางสาว', 'ศิรินทิพย์', 'เสริมเหลา', NULL, '26 ต.หนองหิน อ.หนองหิน จ.เลย', 1035, 1, NULL, NULL, NULL),
(36, 'นาย', 'ฐปนรรฆ์', 'ไชยจักร์', NULL, '70 ต.ปากตม อ.เชียงคาน จ.เลย', 1036, 1, NULL, NULL, NULL),
(37, 'นาง', 'วงเดือน', 'อาฤทธิ์', NULL, '35 ต.หนองหิน อ.หนองหิน จ.เลย', 1037, 1, NULL, NULL, NULL),
(38, 'นาย', 'สมทรง', 'บุญปัน', NULL, '189 ต.นาอาน อ.เมืองเลย จ.เลย', 1038, 1, NULL, NULL, NULL),
(39, 'นาย', 'บรรจง', 'ธงชัย', '', '35 ต.หนองหิน อ.หนองหิน จ.เลย', 1039, 1, NULL, NULL, NULL),
(40, 'นาย', 'คำจันทร์', 'จันทร์บง', '', '36 ต.หนองหิน อ.หนองหิน จ.เลย', 1040, 1, NULL, NULL, NULL),
(41, 'นาย', 'พิทักษ์', 'ธงชัย', '', '37 ต.หนองหิน อ.หนองหิน จ.เลย', 1041, 1, NULL, NULL, NULL),
(42, 'นาย', 'ศุภชัย', 'รัตนโสภา', '', '38 ต.หนองหิน อ.หนองหิน จ.เลย', 1042, 1, NULL, NULL, NULL),
(43, 'นาง', 'ภิรมย์', 'อาษาราช', '', '39 ต.หนองหิน อ.หนองหิน จ.เลย', 1043, 1, NULL, NULL, NULL),
(44, 'นาย', 'สุนทร', 'วันนา', '', '40 ต.หนองหิน อ.หนองหิน จ.เลย', 1044, 1, NULL, NULL, NULL),
(45, 'นาง', 'ถนอม', 'เมืองทอง', '', '41 ต.หนองหิน อ.หนองหิน จ.เลย', 1045, 1, NULL, NULL, NULL),
(46, 'นาย', 'ธีร์นริศวร์', 'พิมพ์เขต', '', '42 ต.หนองหิน อ.หนองหิน จ.เลย', 1046, 1, NULL, NULL, NULL),
(47, 'นาย', 'บุญมี', 'คำมา', '', '43 ต.หนองหิน อ.หนองหิน จ.เลย', 1047, 1, NULL, NULL, NULL),
(48, 'นาย', 'เวช', 'จันดา', '', '44 ต.หนองหิน อ.หนองหิน จ.เลย', 1048, 1, NULL, NULL, NULL),
(49, 'นาง', 'ณฤภา', 'ทองวรรณ์', '', '45 ต.หนองหิน อ.หนองหิน จ.เลย', 1049, 1, NULL, NULL, NULL),
(50, 'นาง', 'สุนีย์', 'ศิลาเกตุ', '', '46 ต.หนองหิน อ.หนองหิน จ.เลย', 1050, 1, NULL, NULL, NULL),
(51, 'นาง', 'สวรส', 'วันนา', '', '47 ต.หนองหิน อ.หนองหิน จ.เลย', 1051, 1, NULL, NULL, NULL),
(52, 'นาย', 'ทศ', 'บงแก้ว', '', '48 ต.หนองหิน อ.หนองหิน จ.เลย', 1052, 1, NULL, NULL, NULL),
(53, 'นาง', 'สมฤดี', 'ยืนยง', '', '49 ต.หนองหิน อ.หนองหิน จ.เลย', 1053, 1, NULL, NULL, NULL),
(54, 'นาย', 'สุกิ', 'น้อยเพ็ง', '', '50 ต.หนองหิน อ.หนองหิน จ.เลย', 1054, 1, NULL, NULL, NULL),
(55, 'นาง', 'หวาย', 'ถิ่นคำบง', '', '51 ต.หนองหิน อ.หนองหิน จ.เลย', 1055, 1, NULL, NULL, NULL),
(56, 'นาง', 'ปุย', 'พรมอินทร์', '', '52 ต.หนองหิน อ.หนองหิน จ.เลย', 1056, 1, NULL, NULL, NULL),
(57, 'นาย', 'ตรงศักดิ์', 'เทวสัตย์', '', '53 ต.หนองหิน อ.หนองหิน จ.เลย', 1057, 1, NULL, NULL, NULL),
(58, 'นาย', 'สุเมธ', 'สิมสวัสดิ์', '', '54 ต.หนองหิน อ.หนองหิน จ.เลย', 1058, 1, NULL, NULL, NULL),
(59, 'นาง', 'สุมาลี', 'แกนภูเขียว', '', '55 ต.หนองหิน อ.หนองหิน จ.เลย', 1059, 1, NULL, NULL, NULL),
(60, 'นาง', 'วิมล', 'แก้วทอง', '', '56 ต.หนองหิน อ.หนองหิน จ.เลย', 1060, 1, NULL, NULL, NULL),
(61, 'นาง', 'อรพิมพ์', 'สุดสาว', '', '57 ต.หนองหิน อ.หนองหิน จ.เลย', 1061, 1, NULL, NULL, NULL),
(62, 'นาง', 'สายฝน', 'ขุงชัยภูมิ', '', '58 ต.หนองหิน อ.หนองหิน จ.เลย', 1062, 1, NULL, NULL, NULL),
(63, 'นาย', 'วิรัตน์', 'ต้อมคำ', '', '59 ต.หนองหิน อ.หนองหิน จ.เลย', 1063, 1, NULL, NULL, NULL),
(64, 'นาย', 'ทนงศักดิ์', 'วิจิตรปัญญา', '', '60 ต.หนองหิน อ.หนองหิน จ.เลย', 1064, 1, NULL, NULL, NULL),
(65, 'นาง', 'ประยงค์', 'คำเบ้าเมือง', '', '61 ต.หนองหิน อ.หนองหิน จ.เลย', 1065, 1, NULL, NULL, NULL),
(66, 'นางสาว', 'เตียง', 'สุขสบาย', '', '62 ต.หนองหิน อ.หนองหิน จ.เลย', 1066, 1, NULL, NULL, NULL),
(67, 'นางสาว', 'ปพิชญา', 'ศรีเชียงษา', '', '63 ต.หนองหิน อ.หนองหิน จ.เลย', 1067, 1, NULL, NULL, NULL),
(68, 'นาย', 'เบส', 'เบส', '11111', 'หนองหิน', 172, 22, '2023-08-17 13:46:05', 0, '2023-08-17 13:46:05'),
(69, 'คุณ', 'ประคอง', 'แทนสอน', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(70, 'คุณ', 'สลัด', 'ศรีคูณ', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(71, 'คุณ', 'รุ่งโรจน์', 'นาสำแดง', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(72, 'คุณ', 'นิสสัย', 'พิมพ์เขต', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(73, 'คุณ', 'สุจินต์', 'ภูน้ำทอง', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(74, 'คุณ', 'พณกฤษ', 'พิมพ์เหม', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(75, 'คุณ', 'ธนาพล', 'เจริญสุข', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(76, 'คุณ', 'อ้อยทิพย์', 'ไชยจักร', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(77, 'คุณ', 'จันทนา', 'ชาภักดี', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(78, 'คุณ', 'ปุณณภา', 'ชีระนาสำแดง', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(79, 'คุณ', 'อามิตร', 'หลักช้าง', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(80, 'คุณ', 'อุทัย', 'ศรีอ่อนหล้า', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(81, 'คุณ', 'ประดับ', 'พิมพ์เหม', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(82, 'คุณ', 'รัศมี', 'ชัยรักษ์วงศา', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(83, 'คุณ', 'สายฝน', 'สิทธิ์สูงเนิน', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(84, 'คุณ', 'พะยุง', 'นามกันยา', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(85, 'คุณ', 'อังคาร', 'บางประอินทร์', NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fertilizer_band`
--

CREATE TABLE `tbl_fertilizer_band` (
  `id` int(11) NOT NULL,
  `fertilizer_band_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_fertilizer_band`
--

INSERT INTO `tbl_fertilizer_band` (`id`, `fertilizer_band_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'ม้าบิน', 80, '2022-05-11 17:08:35', 0, '2022-05-11 17:08:35'),
(2, 'SMS', 80, '2022-05-11 17:08:45', 0, '2022-05-11 17:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fertilizer_formula`
--

CREATE TABLE `tbl_fertilizer_formula` (
  `id` int(11) NOT NULL,
  `fertilizer_formula_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_fertilizer_formula`
--

INSERT INTO `tbl_fertilizer_formula` (`id`, `fertilizer_formula_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '16-16-8', 80, '2022-05-11 17:00:51', 80, '2022-05-11 17:02:20'),
(2, '46-0-0', 80, '2022-05-11 17:02:11', 0, '2022-05-11 17:02:11'),
(3, '21-7-18', 2, '2022-06-13 21:17:54', 0, '2022-06-13 21:17:54'),
(4, 'ปุ๋ยอินทรีย์', 36, '2022-12-06 10:32:17', 0, '2022-12-06 10:32:17'),
(5, 'ปุ๋ยน้ำวีแนส', 22, '2022-12-10 10:31:15', 0, '2022-12-10 10:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gis_plot`
--

CREATE TABLE `tbl_gis_plot` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(50) NOT NULL,
  `plot_no` varchar(50) NOT NULL,
  `farmer_id` int(11) NOT NULL DEFAULT 0,
  `plot_polygon` text NOT NULL,
  `plot_geometry` geometry NOT NULL,
  `plot_x` text NOT NULL,
  `plot_y` text NOT NULL,
  `plot_address` varchar(100) NOT NULL,
  `plot_area` float NOT NULL,
  `cropyear_id` int(11) NOT NULL,
  `cane_type_id` int(11) NOT NULL,
  `cane_owner_id` int(11) NOT NULL,
  `land_rent_space_id` int(11) NOT NULL,
  `land_document_license_type_id` int(11) NOT NULL,
  `plot_deed_no` varchar(100) NOT NULL,
  `cane_varieties_id` int(11) NOT NULL,
  `plot_waypoint` varchar(255) NOT NULL,
  `plot_cost_per_rai` float NOT NULL,
  `plot_cost_avg` float NOT NULL,
  `quota_id` int(11) NOT NULL,
  `gis_sta` varchar(10) DEFAULT 'Y',
  `image` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_gis_plot`
--

INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(113, '202206102141006', '123456', 0, 'POLYGON ((101.83424 17.18828, 101.83483 17.18849, 101.83524 17.18761, 101.83458 17.18748, 101.83424 17.18828))', 0x0000000001030000000100000005000000f6402b3064755940aa7d3a1e333031400feeceda6d755940809f71e140303140e8137992747559400e677e350730314053793bc26975594072a774b0fe2f3140f6402b3064755940aa7d3a1e33303140, '101.83474349975586', '17.18798542022705', 'นน', 10, 1, 1, 3, 3, 2, '1123', 1, 'สสส', 136, 590, 1, 'Y', 'image-1654872066562.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(114, '202206102141006', '123456', 0, 'POLYGON ((101.83424 17.18828, 101.83483 17.18849, 101.83524 17.18761, 101.83458 17.18748, 101.83424 17.18828))', 0x0000000001030000000100000005000000f6402b3064755940aa7d3a1e333031400feeceda6d755940809f71e140303140e8137992747559400e677e350730314053793bc26975594072a774b0fe2f3140f6402b3064755940aa7d3a1e33303140, '101.83474349975586', '17.18798542022705', 'นน', 10, 1, 1, 3, 3, 2, '1123', 1, 'สสส', 136, 590, 1, 'Y', 'image-1654872070596.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(117, '202206131312077', '0004', 0, 'POLYGON ((101.88797 17.14451, 101.8882 17.14575, 101.88672 17.1458, 101.88659 17.14478, 101.88797 17.14451))', 0x000000000103000000010000000500000010751f80d4785940e9f17b9bfe243140a913d044d87859405a643bdf4f253140622d3e05c0785940bec11726532531407bbdfbe3bd785940691d554d1025314010751f80d4785940e9f17b9bfe243140, '101.88739395141602', '17.14515495300293', 'ห้วยม่วง', 12.13, 2, 2, 2, 2, 1, '123', 1, '', 12000, 145, 0, 'Y', 'image-1655102115770.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(118, '202206131312077', '0004', 0, 'POLYGON ((101.88797 17.14451, 101.8882 17.14575, 101.88672 17.1458, 101.88659 17.14478, 101.88797 17.14451))', 0x000000000103000000010000000500000010751f80d4785940e9f17b9bfe243140a913d044d87859405a643bdf4f253140622d3e05c0785940bec11726532531407bbdfbe3bd785940691d554d1025314010751f80d4785940e9f17b9bfe243140, '101.88739395141602', '17.14515495300293', 'ห้วยม่วง', 12.13, 2, 2, 2, 2, 1, '123', 1, '', 12000, 145, 0, 'Y', 'image-1655102116289.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(120, '2022061416354868', '0005', 0, 'POLYGON ((101.87977531 17.13707003, 101.8797742 17.13706874, 101.88004179 17.13742404, 101.88029554 17.13778019, 101.87976067 17.13784978, 101.87970437 17.13779038, 101.87957271 17.13786252, 101.87911219 17.13797166, 101.87906406 17.13792018, 101.87904651 17.13786519, 101.87898476 17.13780594, 101.87899776 17.13761344, 101.87900401 17.13756434, 101.8790567 17.13737803, 101.87911936 17.13732798, 101.87935999 17.13726596, 101.87943605 17.13717116, 101.87941243 17.13709582, 101.87957653 17.1369247, 101.87967252 17.13710539, 101.87977531 17.13707003))', 0x0000000001030000000100000015000000cf111a3d4e7859409b1c800517233140553772384e7859409b9adbef1623314074cacc9a52785940f47bcd382e23314057c71ac3567859403016029045233140407db2ff4d7859405ddc881f4a23314017d38e134d785940accdf73a46233140ddf955eb4a78594080be46f54a2331402864c65f437859408f79571c522331407f32e79542785940f58ea6bc4e2331403a074b4c427859408c4e12224b23314079784b49417859409a7e054047233140441dd27f41785940414a68a23a2331402f00099a417859405565a56a372331401a75087742785940f609e2342b233140c01ed97d43785940fdec2eed272331407f9d1f6f47785940d60da9dc23233140196b24ae4878594086272ea61d233140f0a2124b487859407c512fb61823314077ab5bfb4a785940be83447f0d233140c125f88d4c785940c327be5619233140cf111a3d4e7859409b1c800517233140, '101.87963867187500', '17.13744831085205', 'หนองหิน', 5.54, 2, 2, 2, 2, 2, '11', 1, 'ติดกับวัดบ้านไร่', 10000, 55, 0, 'Y', 'image-1655210788879.png', 5, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(121, '210120121094388', '6030570004', 0, 'POLYGON ((101.801328605 17.1730637833, 101.801477105 17.1727101833, 101.800745605 17.1722635833, 101.800508105 17.1725555833, 101.801328605 17.1730637833, 101.801328605 17.1730637833))', 0x0000000001030000000100000006000000c1f4c5f748735940426579e84d2c3140f09da0664b735940adf50cbc362c314002797e6a3f735940b6905877192c31401cca58863b73594005044b9a2c2c3140c1f4c5f748735940426579e84d2c3140c1f4c5f748735940426579e84d2c3140, '101.80101562088699', '17.172652370662536', '', 2.53, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 9, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(122, '220317129368466', '6030573333', 0, 'POLYGON ((101.802717705 17.1734692833, 101.802485705 17.1738953833, 101.801560305 17.1732327833, 101.801329505 17.1730939833, 101.801576205 17.1726471833, 101.802717705 17.1734692833, 101.802717705 17.1734692833))', 0x00000000010300000001000000070000004bb914ba5f73594052a2a27b682c3140e19e00ed5b735940ea326868842c3140cbef97c34c7359405aded2fb582c3140df528cfb487359406a6825e34f2c3140846e48064d7359402005169b322c31404bb914ba5f73594052a2a27b682c31404bb914ba5f73594052a2a27b682c3140, '101.80201721162133', '17.17326909753584', '', 5.04, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 9, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(123, '201222120722906', '6030900016', 0, 'POLYGON ((101.826186505 17.1513784831, 101.826082905 17.1515417831, 101.821693805 17.1516013831, 101.821625605 17.1514433831, 101.821124205 17.1516474831, 101.820697105 17.1517170831, 101.820559305 17.1517444831, 101.820130805 17.1512669831, 101.821431705 17.1509499831, 101.821529405 17.150582783, 101.822156905 17.150550683, 101.822303505 17.150417983, 101.826186505 17.1513784831, 101.826186505 17.1513784831))', 0x000000000103000000010000000e000000c7d75c3de07459408b3b82bdc02631409f30d58ade7459405c643a71cb26314040f39ca19674594060712659cf263140ffc18f83957459402f9c59fec4263140759b894c8d7459406a6f945ed22631406679264d86745940b52846eed6263140d3d92c0b847459404f43f8b9d8263140b37aea057d7459400c61d96eb9263140d7374956927459400abf78a8a42631405acb11f0937459405f53e0978c263140f5c9fe379e7459401ee0537d8a2631401d57e19ea07459401db7fdca81263140c7d75c3de07459408b3b82bdc0263140c7d75c3de07459408b3b82bdc0263140, '101.82290548855963', '17.15118190765806', '', 30.23, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 10, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(124, '210121121118072', '6030900017', 0, 'POLYGON ((101.827129605 17.1523207831, 101.826450805 17.1526790831, 101.825794905 17.1521110831, 101.826102705 17.1515941831, 101.827129605 17.1523207831, 101.827129605 17.1523207831))', 0x0000000001030000000100000006000000d1c102b1ef74594065eaad7efe26314095ceea91e4745940a1b2f4f9152731406b8bdfd2d97459400d467fc0f02631402d47e1ddde745940a7ad5ae0ce263140d1c102b1ef74594065eaad7efe263140d1c102b1ef74594065eaad7efe263140, '101.8263977969599', '17.152172403145016', '', 5.07, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 10, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(125, '220309129204721', '6031880004', 0, 'POLYGON ((101.826797632 17.1638534833, 101.826684005 17.164231159, 101.824881083 17.1647448815, 101.824799613 17.164559289, 101.824561417 17.1646314324, 101.824406056 17.1641465279, 101.825902263 17.1637526644, 101.825971531 17.1639922735, 101.826797632 17.1638534833, 101.826797632 17.1638534833))', 0x000000000103000000010000000a0000006a769d40ea745940f31b484df22931407c660764e8745940a1e3a00d0b2a3140bda406daca745940d43976b82c2a3140a9e55084c97459400d82bc8e202a3140bde33f9dc5745940380d1a49252a31403d499e11c37459401c15c181052a3140c1512a95db7459401a3bd2b1eb2931409c44b2b7dc745940ac7acb65fb2931406a769d40ea745940f31b484df22931406a769d40ea745940f31b484df2293140, '101.82550662386302', '17.164226072195124', '', 9.5, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(126, '210121121118069', '6031880005', 0, 'POLYGON ((101.824285905 17.147009283, 101.824857905 17.148626883, 101.824403105 17.149336883, 101.823491205 17.148299183, 101.824285905 17.147009283, 101.824285905 17.147009283))', 0x0000000001030000000100000006000000d721ab19c174594083b17e66a22531409d74cf78ca7459409aca51690c26314089ac3d05c3745940539224f13a26314031817414b47459402e026deff6253140d721ab19c174594083b17e66a2253140d721ab19c174594083b17e66a2253140, '101.82422665452971', '17.148254982404037', '', 11.59, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(127, '220309129204712', '6031880006', 0, 'POLYGON ((101.827688005 17.1650581832, 101.827587305 17.1641817832, 101.827130805 17.1642753832, 101.827064305 17.1642008832, 101.826599705 17.1642512832, 101.824620505 17.1648139832, 101.825539905 17.1663497832, 101.827110705 17.1663007832, 101.827110805 17.1658934832, 101.827688005 17.1650581832, 101.827688005 17.1650581832))', 0x000000000103000000010000000b0000000e311cd7f8745940fbc7ca40412a3140d363be30f774594066713dd1072a31404e3f0bb6ef745940c26196f30d2a31407e6a1f9fee7459407d51af11092a3140eef67202e774594087ab415f0c2a314081251595c67459407ac4cb3f312a3140266153a5d57459406b8a3ee6952a31406009bd61ef745940a82429b0922a31402b692862ef745940aaf6ccfe772a31400e311cd7f8745940fbc7ca40412a31400e311cd7f8745940fbc7ca40412a3140, '101.82629581591493', '17.165251373104194', '', 34.05, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(128, '200625120652345', '6031880007', 0, 'POLYGON ((101.803210005 17.1722577833, 101.803474505 17.1718128833, 101.802828605 17.1712615833, 101.802755105 17.1712796833, 101.802594305 17.1714446833, 101.802227705 17.1712213833, 101.802181505 17.1711410833, 101.802396905 17.1708836833, 101.802449005 17.1708702833, 101.801797305 17.1703622832, 101.801679205 17.1704806833, 101.801676605 17.1705398833, 101.801643505 17.1705697833, 101.801600105 17.1705646833, 101.801393505 17.1707126833, 101.803210005 17.1722577833, 101.803210005 17.1722577833))', 0x0000000001030000000100000011000000e1d2efca6773594045c10916192c3140448954206c73594012cedaedfb2b31402cb13a8b61735940ae5593ccd72b314003abf25660735940243e3efcd82b314093fb80b45d735940b9d87bcce32b3140e43adfb2577359403ea6212ad52b3140965b18f15673594088c6ebe6cf2b3140be588c785a7359408b317708bf2b3140b24b12535b735940bba1a627be2b3140bdbfa4a550735940ded0d2dc9c2b3140eed64bb64e7359408c5f3f9fa42b31405f1c64ab4e735940e96f7580a82b3140a7418f204e73594095f51876aa2b31407edc866a4d73594048a08820aa2b3140eaccfb074a73594031c98fd3b32b3140e1d2efca6773594045c10916192c3140e1d2efca6773594045c10916192c3140, '101.80246883162114', '17.1713010993301', '', 7.55, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(129, '201127120718479', '6031880010', 0, 'POLYGON ((101.783013905 17.1641957832, 101.783245605 17.1641950832, 101.783431705 17.1644149832, 101.783549905 17.1645526832, 101.783597705 17.1647752832, 101.783456405 17.1647316832, 101.783185605 17.1647493832, 101.783048705 17.1647525832, 101.782781105 17.1647799832, 101.782725905 17.1647625832, 101.783013905 17.1641957832, 101.783013905 17.1641957832))', 0x000000000103000000010000000c00000073925ae61c72594030fc1ebc082a31407d8d2cb2207259400c8260b0082a3140f8e7bbbe23725940ffd0af19172a3140923080ae2572594024d0e81f202a3140860cfd76267259407c8884b62e2a3140455455262472594083f507db2b2a3140120b84b61f72594053e1fc032d2a31409cc950781d72594088c6ac392d2a3140b679eb151972594022e15e052f2a314040ed642e18725940d07272e12d2a314073925ae61c72594030fc1ebc082a314073925ae61c72594030fc1ebc082a3140, '101.78317731591613', '17.16452895047318', '', 2.42, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(130, '200914120698225', '6031880011', 0, 'POLYGON ((101.781736291 17.1675047022, 101.782162092 17.1660266374, 101.782706413 17.1649149037, 101.782793249 17.1648022509, 101.783348299 17.1647579106, 101.783502526 17.1647581202, 101.783626243 17.1648044302, 101.783779967 17.1654249006, 101.782987793 17.1664937609, 101.782498961 17.1672453661, 101.782059917 17.1674648044, 101.781736291 17.1675047022, 101.781736291 17.1675047022))', 0x000000000103000000010000000d0000003ffca6f7077259400ee09196e12a3140e65397f10e725940dae5c1b8802a3140168da3dc17725940b603f6dc372a314003ffda481972594035ecf57a302a31404365e76022725940c7c80d932d2a31403860c7e7247259406a0292962d2a31403b7eafee26725940e6f1859f302a3140996173732972594064054a49592a31408b06d5781c725940b50dca559f2a314089a98576147259409bcea197d02a3140c2c109450d725940092132f9de2a31403ffca6f7077259400ee09196e12a31403ffca6f7077259400ee09196e12a3140, '101.7827612417892', '17.165994079198175', '', 19.8, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(131, '200216119681943', '6031880012', 0, 'POLYGON ((101.837341105 17.1625187832, 101.837789105 17.1624468832, 101.838268405 17.1623861832, 101.838032605 17.1610798831, 101.837265705 17.1613973831, 101.837341105 17.1625187832, 101.837341105 17.1625187832))', 0x0000000001030000000100000007000000936425ff9675594068d4bad49a293140e3ba31569e7559405fae721e96293140af2f8630a6755940902a1224922931403add8153a275594040f5fd873c2931406442e5c2957559401113c25651293140936425ff9675594068d4bad49a293140936425ff9675594068d4bad49a293140, '101.83774621632539', '17.161856694272597', '', 7.81, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(132, '190327104194772', '6031880013', 0, 'POLYGON ((101.839729705 17.1599756831, 101.839860205 17.1603580831, 101.839307505 17.1608629831, 101.838817305 17.1607947831, 101.838296705 17.1607037831, 101.838069505 17.1610110831, 101.837973605 17.1608777831, 101.837305105 17.1611568831, 101.837613105 17.1599723831, 101.839729705 17.1599756831, 101.839729705 17.1599756831))', 0x000000000103000000010000000b0000001a1da921be755940dc11972af4283140f56b0445c07559405290323a0d293140ca50d336b77559402f8d03512e293140cf12c72eaf7559402bc8ced829293140741439a7a67559400bc214e223293140ffef46eea27559404235b80538293140b8180b5ca1755940461151492f293140edaf2668967559409670d69341293140442bff739b7559407dad39f3f32831401a1da921be755940dc11972af42831401a1da921be755940dc11972af4283140, '101.83853787881783', '17.160423010880763', '', 14.44, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(133, '200403120556530', '6031880015', 0, 'POLYGON ((101.839783905 17.1599512831, 101.839644105 17.1596409831, 101.839491205 17.1593294831, 101.839405505 17.1592673831, 101.838395205 17.1591365831, 101.838325805 17.1591012831, 101.838309605 17.1588493831, 101.838119105 17.1588044831, 101.837692705 17.1598759831, 101.839783905 17.1599512831, 101.839783905 17.1599512831))', 0x000000000103000000010000000b000000a9ebfd04bf75594024de3991f228314045d0a0babc7559400b84413bde2831404cb05139ba755940fd3327d1c9283140ac03ded1b8755940e8bb49bfc528314049a65c44a8755940fe02d42cbd2831408bf74621a775594088aa97dcba283140745954dda67559407f67695aaa2831402e8850bea3755940685f1d69a7283140a804ddc19c75594092d4e6a1ed283140a9ebfd04bf75594024de3991f2283140a9ebfd04bf75594024de3991f2283140, '101.838673306849', '17.15953448670917', '', 10.14, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(134, '220315129326833', '6031880017', 0, 'POLYGON ((101.839776505 17.1599467831, 101.840536005 17.1591338831, 101.840790305 17.1588105831, 101.840274005 17.1585179831, 101.840539705 17.1582646831, 101.840237705 17.1580439831, 101.839982105 17.1583398831, 101.840225205 17.1584812831, 101.839980105 17.1586829831, 101.839455205 17.1590767831, 101.839331305 17.1591734831, 101.839776505 17.1599467831, 101.839776505 17.1599467831))', 0x000000000103000000010000000d000000263bf4e5be755940d183ba45f228314079258757cb755940999987ffbc28314035b12382cf75594056ac74cfa7283140dac99e0cc77559400d3e71a294283140bafd0b67cb755940bc06c60884283140d5f55d74c67559407cbe0a9275283140d18c4d44c275594024916bf688283140fe2ff03fc67559404ff1b73a922831400011ea3bc2755940a2d8ae729f283140a5fb52a2b9755940a7f78c41b9283140fa5ea69ab77559400e4ee897bf283140263bf4e5be755940d183ba45f2283140263bf4e5be755940d183ba45f2283140, '101.8400466970719', '17.159045354192028', '', 8.35, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(135, '220520130332835', '6031880020', 0, 'POLYGON ((101.786274905 17.1557113831, 101.786243705 17.1563221831, 101.786202405 17.1573498831, 101.785698705 17.1574472831, 101.785446005 17.1576584831, 101.785048005 17.1575006831, 101.784914305 17.1574887831, 101.784575605 17.1573325831, 101.784282605 17.1573507831, 101.783993005 17.1573475831, 101.783739405 17.1572479831, 101.784043905 17.1566147831, 101.784039405 17.1558115831, 101.784195405 17.1557360831, 101.784345305 17.1557075831, 101.784720305 17.1556669831, 101.785134205 17.1554776831, 101.785505305 17.1554497831, 101.785709805 17.1554283831, 101.785817005 17.1554225831, 101.786274905 17.1557113831, 101.786274905 17.1557113831))', 0x0000000001030000000100000016000000fea8fa5352725940890782b3dc2731404cea1dd151725940c70d08bb04283140bd60e42351725940a5f1f91448283140039f38e34872594031c213774e283140ed0f52bf44725940fad96c4e5c283140f6d0fc393e7259401d03fbf651283140ce8835093c725940bee6542f51283140b92d997c367259407c02bbf246283140fdd2aaaf317259401c6a1324482831402331fff02c725940e78463ee47283140f04352c928725940c6c66067412831409aa67cc62d725940117c0be81728314005d09cb32d725940a3c09544e32731408189ec4130725940bdb8e751de273140c16fa6b6327259405927c173dc273140db9e83db38725940437b99cad92731408b5c89a33f7259401f2cac62cd273140cff30ab845725940b595968ecb273140c727c71149725940df488e27ca273140674768d34a7259406e793fc6c9273140fea8fa5352725940890782b3dc273140fea8fa5352725940890782b3dc273140, '101.78514494484004', '17.156519378370653', '', 31.07, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(136, '201127120718480', '6031880029', 0, 'POLYGON ((101.835453205 17.1608436831, 101.836083405 17.1609186831, 101.836814305 17.1609991831, 101.837017105 17.1603507831, 101.837020805 17.1603172831, 101.835943505 17.1599878831, 101.835693405 17.1599297831, 101.835606505 17.1599246831, 101.835453205 17.1608436831, 101.835453205 17.1608436831))', 0x000000000103000000010000000a0000000e34b81078755940c5ae360d2d293140034df86382755940da3a81f7312931403333965d8e755940e318123e37293140ba0a31b091755940704db9bf0c293140fbe2b5bf91755940e8e5af8d0a293140d5d12f1980755940b8ab45f7f42831404efd30007c75594025128428f128314031d3b4937a755940d8bcf3d2f02831400e34b81078755940c5ae360d2d2931400e34b81078755940c5ae360d2d293140, '101.83619281407448', '17.160501986479705', '', 8.76, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(137, '210217121750409', '6031880030', 0, 'POLYGON ((101.841349705 17.1617122831, 101.840704605 17.1626106832, 101.839976705 17.1624048832, 101.839664005 17.1622785832, 101.839302605 17.1632047832, 101.838402205 17.1629058832, 101.838355505 17.1627923832, 101.839363005 17.1609057831, 101.841349705 17.1617122831, 101.841349705 17.1617122831))', 0x000000000103000000010000000a0000005ade6eacd8755940a846e7f9652931409504b01ace75594000538edaa02931401e58a72dc2755940010ece5d932931409e46180ebd7559406aafd7168b2931400cfb4522b77559401065e6c9c7293140a2d7b861a875594085ab3033b42931406119d99da7755940c4e1f9c2ac293140a0fc9b1fb8755940da26141f312931405ade6eacd8755940a846e7f9652931405ade6eacd8755940a846e7f965293140, '101.83973589542249', '17.162025959711823', '', 24.8, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(138, '210227121978504', '6031880032', 0, 'POLYGON ((101.824316305 17.146926683, 101.824121105 17.146593383, 101.823764905 17.147143083, 101.823270505 17.147882283, 101.823331905 17.147976983, 101.823509305 17.147821683, 101.823660805 17.147894283, 101.823710805 17.147906583, 101.824316305 17.146926683, 101.824316305 17.146926683))', 0x000000000103000000010000000a00000036e22c99c17459400f65b2fc9c253140c77a7266be74594085cbd9248725314053a46f90b87459404f51492bab25314021afc576b07459409024019ddb2531409e6e4d78b1745940b68bced1e12531404f3b5f60b4745940eb1f4ea4d7253140361ecfdbb674594018c05466dc2531408f3586adb77459401ed9b034dd25314036e22c99c17459400f65b2fc9c25314036e22c99c17459400f65b2fc9c253140, '101.82384058896353', '17.147332591197756', '', 3.57, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(139, '210607124380407', '6031880036', 0, 'POLYGON ((101.827312705 17.1678787832, 101.827805205 17.1677283832, 101.828162805 17.1696998832, 101.828651005 17.1704432832, 101.828831105 17.1708519832, 101.828650805 17.1710214832, 101.828505405 17.1710555832, 101.828306205 17.1707260832, 101.828185505 17.1708652832, 101.827707905 17.1705008832, 101.827221605 17.1697425832, 101.826954305 17.1679700832, 101.827312705 17.1678787832, 101.827312705 17.1678787832))', 0x000000000103000000010000000e00000094e2fcb0f274594049899b1afa2a3140c0bbaec2fa7459407874503ff02a314046cf909e00755940a17a9873712b31407191399e08755940b82ac72ba22b31407c789e910b755940fd4ca0f4bc2b3140dcd1629d08755940e6415d10c82b314031c2883b0675594068a4774cca2b3140216307f8027559400eeb5fb4b42b3140c2bfc6fd00755940a45dc3d3bd2b314067a7932af97459407a4825f2a52b31404201e332f17459402395fb3f742b3140bbd0bfd1ec745940e70c5e16002b314094e2fcb0f274594049899b1afa2a314094e2fcb0f274594049899b1afa2a3140, '101.82775626207486', '17.1693768395352', '', 20.7, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 11, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(140, '220317129368489', '6031890003', 0, 'POLYGON ((101.802092005 17.1616445832, 101.802082205 17.1615493832, 101.802065605 17.1615283832, 101.801863705 17.1614937832, 101.801737905 17.1612845832, 101.801755905 17.1612417832, 101.801745505 17.1612016832, 101.801608105 17.1609974832, 101.801439005 17.1607885832, 101.801410405 17.1607416832, 101.801358905 17.1607165832, 101.801061705 17.1607371832, 101.800949505 17.1607605832, 101.800505705 17.1609372832, 101.800425405 17.1609709832, 101.800258205 17.1611657832, 101.800168805 17.1613186832, 101.800137005 17.1613916832, 101.800097305 17.1615620832, 101.800308405 17.1616074832, 101.800320805 17.1616551832, 101.800706905 17.1617815832, 101.801274805 17.1619544832, 101.802043505 17.1621607832, 101.802052905 17.1620754832, 101.802092005 17.1616445832, 101.802092005 17.1616445832))', 0x000000000103000000010000001b000000eb76b47955735940686b168a612931406ecb9950557359407188e54c5b2931402caef90a55735940423893ec59293140c33425bc51735940f05915a857293140117c80ac4f73594068314af24929314064d6fff74f735940bd9739244729314029ec60cc4f7359407767758344293140bfcb148c4d73594012158d2137293140af0dd3c64a735940076aca70292931408b09de4e4a735940b072f05d262931405655dc7649735940d4c4d4b82429314064435098447359405c187112262931403c6eb6c1427359407354079b2729314022cf477c3b735940140d902f3329314034577a2b3a735940ef72f464352931402ab5306e377359400714282942293140483038f735735940ea93642e4c293140d732d77135735940be3021f750293140efa553cb347359401d9ef7215c293140178cbe40387359400422a71b5f29314023f2c07438735940a912ed3b6229314002aa2cc83e73594069f090846a2931405da51e1648735940dac858d9752931406efc47ae54735940aa897c5e83293140c128b5d554735940d0d363c77d293140eb76b47955735940686b168a61293140eb76b47955735940686b168a61293140, '101.80114979990229', '17.16142026591186', '', 12.8, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 12, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(141, '200210119481400', '6032120006', 0, 'POLYGON ((101.813126605 17.1826900834, 101.814611605 17.1853110834, 101.814108605 17.1853315834, 101.814013405 17.1852933834, 101.813915805 17.1852375834, 101.813570805 17.1848729834, 101.813711905 17.1847397834, 101.813501105 17.1845587834, 101.813423805 17.1846318834, 101.813126205 17.1844748834, 101.813074705 17.1844291834, 101.812570505 17.1836692834, 101.812811005 17.1835493834, 101.812659305 17.1832356834, 101.812602905 17.1832634834, 101.812444905 17.1830933834, 101.813126605 17.1826900834, 101.813126605 17.1826900834))', 0x0000000001030000000100000012000000e1fe2b440a745940ab81fdc6c42e3140b19ab6982274594011ca128c702f31408077fa5a1a745940709e01e4712f3140c23eaecb1874594042de1d636f2f31400a0b5132177459406db1f2ba6b2f3140251d488b11745940f09df9d5532f3140d11519db137459401ff93f1b4b2f3140084ff066107459407ee4923e3f2f3140d310b8220f7459407c00fd08442f3140b87f7e420a745940ec22f7be392f314083cb7c6a0974594088213fc0362f3140d42ab82701745940967b3df3042f314073137318057459406ae7a617fd2e3140f7702c9c02745940c8a9a388e82e314004679daf0174594009c10b5bea2e3140b831ea18ff73594026d13d35df2e3140e1fe2b440a745940ab81fdc6c42e3140e1fe2b440a745940ab81fdc6c42e3140, '101.81344848238619', '17.18404651131537', '', 15.8, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 13, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(142, '210213121652885', '6032120007', 0, 'POLYGON ((101.813428305 17.1802978833, 101.813313905 17.1804696833, 101.813330105 17.1805836833, 101.813562605 17.1811246834, 101.813658305 17.1813986834, 101.813672105 17.1814539834, 101.813598805 17.1815246834, 101.813534505 17.1815716834, 101.813262305 17.1816923834, 101.812768705 17.1806259833, 101.812751305 17.1805781833, 101.812741005 17.1805351833, 101.812759405 17.1804965833, 101.812817005 17.1804059833, 101.812964805 17.1802001833, 101.813050605 17.1800927833, 101.813225405 17.1799071833, 101.813338105 17.1797589833, 101.813381505 17.1796750833, 101.813584005 17.1797557833, 101.813428305 17.1802978833, 101.813428305 17.1802978833))', 0x000000000103000000010000001600000068e797350f745940c04f8800282e3140dad6c3550d74594067b1db42332e3140f274b6990d745940f8f675bb3a2e31404f6ee368117459408cb3ef2f5e2e3140018648fa127459408fbde424702e31401e292a3413745940936eacc4732e31408ae2b80012745940a89ed266782e3140204907f3107459402a155a7b7b2e3140dac2567d0c745940a3a25c64832e3140fccb076704745940d31423813d2e314068b00c1e0474594004a52f5f3a2e3140f725d9f203745940060dc48d372e314073ff05400474594030502a06352e3140e4869d3105745940b64626162f2e31408991889d07745940b7016699212e3140f49d670509745940e584868f1a2e314016b091e20b745940c796ac650e2e3140336444bb0d7459408b6f4aaf042e31405cc94c710e745940f9adae2fff2d31408481a5c211745940558a9a79042e314068e797350f745940c04f8800282e314068e797350f745940c04f8800282e3140, '101.81323808804119', '17.180729311210133', '', 6.91, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 13, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(143, '201803159059949', '6033800002', 0, 'POLYGON ((101.807141805 17.1803024833, 101.807219605 17.1807503834, 101.807633305 17.1810649834, 101.808106505 17.1808610834, 101.807955005 17.1800107833, 101.807141805 17.1803024833, 101.807141805 17.1803024833))', 0x000000000103000000010000000700000067ed1936a87359403d29b54d282e3140900a6b7ca9735940457139a8452e3140aa089a43b07359405e2756465a2e31403baa5804b8735940775276e94c2e314054c7e888b57359406a33cb2f152e314067ed1936a87359403d29b54d282e314067ed1936a87359403d29b54d282e3140, '101.80765139392345', '17.18054823453769', '', 5, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 14, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(144, '200318120416640', '603380004', 0, 'POLYGON ((101.807880001 17.1794817413, 101.807163002 17.1795146553, 101.807098916 17.179488796, 101.807058026 17.1790813443, 101.807033174 17.1788087834, 101.807009694 17.1786268664, 101.807253195 17.1784402694, 101.807454997 17.1783284734, 101.807628498 17.1782185328, 101.807773482 17.1781209148, 101.807921449 17.1780922115, 101.808117548 17.1780384849, 101.80805128 17.1781751622, 101.808063413 17.1784291569, 101.808107124 17.1786070069, 101.80809666 17.1787934763, 101.8082121 17.1791196843, 101.80829669 17.1793452039, 101.808305623 17.1794207977, 101.808028957 17.1794754075, 101.807880001 17.1794817413, 101.807880001 17.1794817413))', 0x0000000001030000000100000016000000ccd8514eb4735940d51cf183f22d31406508028fa87359408daa25acf42d3140da363682a773594084d14cfaf22d31403de9b4d6a67359409b176546d82d31407e47786ea6735940c8f09469c62d31403dd2fc0ba6735940fd5f857dba2d314075074e09aa735940c85cf142ae2d3140d546b957ad735940d83251efa62d3140918e702fb0735940c7ead1ba9f2d314007f18b8fb2735940b3cc0f55992d3140494c2afcb473594098108073972d3140f5fea932b87359402c131eee932d3140d245b71cb7735940c69b2ee39c2d314077fb9a4fb7735940d1898188ad2d3140a84ff106b8735940d1785530b92d31403dad0ddbb77359405872c568c52d3140d16e3ebfb97359406b23a2c9da2d3140f7400a22bb735940e8713991e92d31404efd8147bb735940ff577a85ee2d31404e2216bfb673594016a6ad19f22d3140ccd8514eb4735940d51cf183f22d3140ccd8514eb4735940d51cf183f22d3140, '101.8076412182811', '17.17889130453524', '', 9.86, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 14, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(145, '220321129415430', '6033810002', 0, 'POLYGON ((101.786275305 17.1612330832, 101.786383805 17.1610310832, 101.786440905 17.1607203832, 101.786342005 17.1601848832, 101.786466105 17.1599713832, 101.786456505 17.1596374832, 101.786765805 17.1592999831, 101.786525105 17.1592523831, 101.786125905 17.1594759831, 101.786033005 17.1596158832, 101.785613505 17.1597155832, 101.785691605 17.1600321832, 101.785822105 17.1607259832, 101.785936505 17.1615685832, 101.785932805 17.1615952832, 101.785970905 17.1616774832, 101.786199405 17.1617386832, 101.786354005 17.1615686832, 101.786402505 17.1615166832, 101.786275305 17.1612330832, 101.786275305 17.1612330832))', 0x00000000010300000001000000150000002828a8555272594093604392462931400f25bd1c54725940c4fb4355392931408ccd3b0c5572594004a595f8242931408cbc6a6d5372594057a862e001293140cd18ee7555725940cf2373e2f3283140e52caa4d557259404c8f8900de2831408385f65e5a725940f8aa39e2c72831404fdd646d567259407d39a1c3c4283140dc2007e34f72594075e9036bd32831404d83605d4e72594023442696dc28314057d1dd7d477259406d81d61ee3283140df0d71c548725940c72681def7283140ba5ccce84a7259402176895625293140486da0c84c725940b2e7048f5c29314007951bb94c7259402888f84e5e2931404825e9584d725940f5d70eb26329314005274f175172594094d7d2b4672931406fa3bf9f53725940db66b2905c293140eb1d2c6b54725940361a4828592931402828a8555272594093604392462931402828a855527259409360439246293140, '101.78612252876826', '17.1604176818356', '', 10.02, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 15, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(146, '210326122432761', '6033810009', 0, 'POLYGON ((101.795898405 17.1586844831, 101.794828605 17.1589476831, 101.794967105 17.1592917831, 101.795432005 17.1592372831, 101.795424805 17.1594865831, 101.795010905 17.1595812831, 101.795240405 17.1605147832, 101.796251605 17.1601749832, 101.795898405 17.1586844831, 101.795898405 17.1586844831))', 0x000000000103000000010000000a000000781addffef725940134cd98b9f2831409f19cc78de72594081b09ccbb0283140bb57b5bde07259409fefa658c7283140abeaa35be8725940e9374bc6c3283140bdf9703de8725940b790da1cd42831400e3c6b75e1725940ddf7a751da283140b3fb0238e5725940585e307f1729314033b74ac9f57259403a7b4a3a01293140781addffef725940134cd98b9f283140781addffef725940134cd98b9f283140, '101.79558614477406', '17.15959309927522', '', 11.51, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 15, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(147, '201901087265942', '6033810010', 0, 'POLYGON ((101.804644105 17.1705943833, 101.803666505 17.1697388832, 101.803644005 17.1697387832, 101.803440405 17.1700671832, 101.803346205 17.1701906832, 101.804225405 17.1709502833, 101.804644105 17.1705943833, 101.804644105 17.1705943833))', 0x00000000010300000001000000080000003af9fc497f735940a027d112ac2b314066f7a2456f7359401d34e801742b31407ec643e76e735940f3b43a00742b3140a4f04d916b73594083f7dd85892b3140ce7533066a7359408b6dda9d912b31409745d56d78735940f403d465c32b31403af9fc497f735940a027d112ac2b31403af9fc497f735940a027d112ac2b3140, '101.80396022856202', '17.17035986861013', '', 4.98, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 15, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(148, '210401122443238', '6033810017', 0, 'POLYGON ((101.786791605 17.1614070832, 101.786810005 17.1611085832, 101.786919005 17.1610831832, 101.787462005 17.1624518832, 101.787316605 17.1626530832, 101.786615705 17.1628094832, 101.786267105 17.1619271832, 101.786298505 17.1617319832, 101.786791605 17.1614070832, 101.786791605 17.1614070832))', 0x000000000103000000010000000a000000830f2dcb5a725940cfaf7ff95129314000e959185b725940ebf27f693e293140dbc487e15c72594092c75bbf3c293140539409c7657259408284557296293140a8842f656372594004f0e8a1a3293140aedf65e9577259409ad2dde1ad29314051794333527259406a2d540f7429314099f7f6b652725940ac8f6a4467293140830f2dcb5a725940cfaf7ff951293140830f2dcb5a725940cfaf7ff951293140, '101.78684649252669', '17.162075979171735', '', 8.68, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 15, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(149, '210326122432738', '603381006', 0, 'POLYGON ((101.706858605 17.2354457839, 101.707028305 17.2360335839, 101.706904705 17.2360941839, 101.707035605 17.236469484, 101.707620605 17.2360680839, 101.707781005 17.2358519839, 101.707706105 17.2357270839, 101.707575105 17.2352964839, 101.707531305 17.2352172839, 101.706858605 17.2354457839, 101.706858605 17.2354457839))', 0x000000000103000000010000000b000000c1d7df2b3d6d5940e3d4c52c463c314090d4a5f33f6d5940b19b6bb26c3c314044573bed3d6d594056a01eab703c314049254412406d594031489c43893c3140d91cefa7496d5940dafa3bf56e3c31401f4db3484c6d5940178cadcb603c3140e4098c0e4b6d5940c721349c583c314015dc17e9486d5940dc36ef633c3c3140c2f76131486d5940f0cd2d33373c3140c1d7df2b3d6d5940e3d4c52c463c3140c1d7df2b3d6d5940e3d4c52c463c3140, '101.70728359686025', '17.235793501492775', '', 5.14, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 15, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(150, '210326122432758', '603381014', 0, 'POLYGON ((101.708185605 17.236595084, 101.707867805 17.2362436839, 101.708100305 17.2360186839, 101.708852105 17.2359059839, 101.709030405 17.237178784, 101.708924205 17.237172984, 101.708825605 17.237192884, 101.708185605 17.236595084, 101.708185605 17.236595084))', 0x0000000001030000000100000009000000453eb7e9526d5940a42cd47e913c31407217c4b44d6d5940b03c50777a3c3140cf10f183516d5940709870b86b3c3140402b38d55d6d5940fdc7a555643c31400e5610c1606d5940c695b0bfb73c314057f4a0035f6d594055c6615eb73c3140b70212665d6d5940b99f3facb83c3140453eb7e9526d5940a42cd47e913c3140453eb7e9526d5940a42cd47e913c3140, '101.70854208536747', '17.23646517095338', '', 6.25, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 15, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(151, '210409122454691', '6034100002', 0, 'POLYGON ((101.797478505 17.1869468834, 101.798047405 17.1868963834, 101.799376905 17.1868844834, 101.800201305 17.1868696834, 101.799515605 17.1874188834, 101.799271505 17.1875563834, 101.798597905 17.1876592834, 101.798204905 17.1877654834, 101.797484905 17.1875015834, 101.797114505 17.1874286834, 101.797088805 17.1874028834, 101.797478505 17.1869468834, 101.797478505 17.1869468834))', 0x000000000103000000010000000d0000003b8f48e309735940c94a3ec0db2f31407e486c35137359409571fe70d82f3140c609c0fd28735940365558a9d72f314042cc887f367359401fd10ab1d62f3140770780432b73594018db16affa2f314061a6ab4327735940eadbf4b1033031404328633a1c73594069fe54700a303140d69e06ca157359404885126611303140d68120fe09735940b6a6901a003031401a898eec037359400c898153fb2f3140e55ec380037359400d61a7a2f92f31403b8f48e309735940c94a3ec0db2f31403b8f48e309735940c94a3ec0db2f3140, '101.79853928878602', '17.187244074536324', '', 13.05, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 16, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(152, '200121117977710', '6034120003', 0, 'POLYGON ((101.905597379 17.0101650152, 101.906253511 17.0102888765, 101.906724221 17.0112829828, 101.907012432 17.010566137, 101.908344233 17.0096247482, 101.908449306 17.0096389987, 101.908545581 17.0093873988, 101.90841585 17.0092715482, 101.907559616 17.0093091427, 101.907374129 17.0093822411, 101.907206166 17.0091898894, 101.907260053 17.00911479, 101.907277369 17.0088619901, 101.907373437 17.008623041, 101.906687247 17.0087264837, 101.906183842 17.0089212767, 101.905855258 17.0088909715, 101.905775467 17.0089403701, 101.9057774 17.0096236693, 101.905746921 17.0098762684, 101.905650851 17.0101152163, 101.905597379 17.0101650152, 101.905597379 17.0101650152))', 0x00000000010300000001000000170000007e89b54ef5795940ebd8a72c9a02314055e8b90e007a59408014b44aa2023140e9eb06c5077a594099200a71e30231405920df7d0c7a59402ddc5c76b4023140b18fd94f227a594051c07ac47602314002d68e08247a5940c52e90b37702314080545d9c257a59402cd76a3667023140c1ba3b7c237a5940634dc49e5f023140fb78ed74157a594047737f1562023140a852f06a127a59400cb0e2df66023140c56c73aa0f7a5940476dc2445a0231408b26788c107a5940bdf5cc5855023140611019d5107a594030a885c744023140254b0968127a59404a169f1e350231402d64f229077a5940bf191ae63b0231406f6383eafe79594042aa2faa4802314042015588f97959407ad2bfad460231402f12aa39f8795940923185ea490231402e9dc541f879594039e960b2760231407409efc1f7795940d6c8494087023140efa8fc2ef679594052332be9960231407e89b54ef5795940ebd8a72c9a0231407e89b54ef5795940ebd8a72c9a023140, '101.90684781951693', '17.009706156887123', '', 26.01, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(153, '201128120718634', '6034120004', 0, 'POLYGON ((101.821912105 17.1887861234, 101.821745715 17.1885512434, 101.821532195 17.1883636534, 101.821275125 17.1881537034, 101.820911645 17.1879188434, 101.820701625 17.1877888934, 101.820454805 17.1875976634, 101.820430565 17.1873397434, 101.820459345 17.1870929434, 101.822130105 17.1861085934, 101.822273725 17.1861939434, 101.822743975 17.1861519934, 101.822748775 17.1864259734, 101.822786215 17.1867742734, 101.822822225 17.1869290934, 101.823146035 17.1871133134, 101.821912105 17.1887861234, 101.821912105 17.1887861234))', 0x000000000103000000010000001200000056ca3a359a7459400ef191495430314067e3567b97745940ec05f0e444303140b688c5fb93745940ab1bb399383031402cb98ac58f7459406bb952d72a3031408e0bffd08974594084b406731b3031408ac91b60867459407db4d3ee123031408cd4de5482745940e81b856606303140155433ef81745940df24577ff52f31403f9ee967827459402337b952e52f31400d8296c79d745940562812d0a42f31400c4ff921a0745940c49d0168aa2f3140c96658d6a7745940fbbc33a8a72f3140bd5c7aeaa7745940c2e0d29cb92f314093418387a8745940b7fc5370d02f314001b38c1ea9745940edd2c695da2f31400d0ab56cae745940ffb279a8e62f314056ca3a359a7459400ef191495430314056ca3a359a7459400ef1914954303140, '101.82181269575733', '17.187319049843932', '', 29.58, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(154, '210303122073379', '6034120005', 0, 'POLYGON ((101.955642397 17.0762236075, 101.955326779 17.0769176995, 101.955304857 17.076966126, 101.955172406 17.0775735835, 101.955151152 17.0781014518, 101.956278386 17.0781874559, 101.956337794 17.0771319718, 101.956700112 17.0772064836, 101.95676316 17.0767076829, 101.956330254 17.0765549145, 101.956216085 17.0765572629, 101.955642397 17.0762236075, 101.955642397 17.0762236075))', 0x000000000103000000010000000d0000004f72ba3e297d59404965ed63831331401333ee12247d594008d6dbe0b013314099a1fbb6237d5940df11520db4133140f273718b217d5940812ac4dcdb133140e9244c32217d59404940ed74fe133140776f42aa337d5940460cd617041431402a4a6fa3347d5940645bc0ebbe133140a6471b933a7d5940e619dacdc3133140ed8d8c9b3b7d59404e685d1da3133140be46cf83347d59402620561a99133140fc3ef3a4327d5940416dbc41991331404f72ba3e297d59404965ed63831331404f72ba3e297d59404965ed6383133140, '101.95586558159592', '17.077275701172894', '', 14.98, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(155, '201128120718744', '6034120006', 0, 'POLYGON ((101.820668585 17.1887239734, 101.820693255 17.1893425234, 101.820764515 17.1894584534, 101.821066775 17.1898952434, 101.821291105 17.1901336734, 101.821601335 17.1897555634, 101.821725075 17.1896072334, 101.822177795 17.1890236834, 101.821136145 17.1880429234, 101.820813825 17.1878214434, 101.820668585 17.1887239734, 101.820668585 17.1887239734))', 0x000000000103000000010000000c0000007f5b87d58574594063b9dd36503031407591003d86745940c0be69c0783031401b69e36787745940c24d655980303140439da85b8c745940a71184f99c303140201e910890745940101fb599ac303140320bc41d957459407c0913d29330314067dbc42497745940bd8982198a3031406f419d8f9e745940595f2adb63303140aa159e7e8d7459404b3fbe9423303140b39eb53688745940f9e3ec10153031407f5b87d58574594063b9dd36503031407f5b87d58574594063b9dd3650303140, '101.8212761086507', '17.189005134162265', '', 14.14, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(156, '201224120727579', '6034120007', 0, 'POLYGON ((101.943472918 17.110007589, 101.941837099 17.1074372944, 101.941522782 17.1076189084, 101.941445701 17.1077315746, 101.941910277 17.1100374809, 101.942454732 17.1106864213, 101.942738491 17.1109649036, 101.943472918 17.110007589, 101.943472918 17.110007589))', 0x000000000103000000010000000900000030de3bdc617c59401a111575291c314054971c0f477c594098d1b102811b31404148c5e8417c59405c02ace98c1b31404f3078a5407c594051a7e54b941b3140cede0a42487c5940bbcc956a2b1c3140a1f9a62d517c59404398fff1551c3140a0e1d2d3557c59403ef72732681c314030de3bdc617c59401a111575291c314030de3bdc617c59401a111575291c3140, '101.94236380103395', '17.10930487748175', '', 24.46, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(157, '220108127979334', '6034120008', 0, 'POLYGON ((101.956870503 17.0753423158, 101.957069169 17.0745294798, 101.956956788 17.0745277926, 101.957025241 17.0734266546, 101.956869048 17.0733540738, 101.955344183 17.0731150652, 101.954434333 17.0723828298, 101.954227659 17.072304086, 101.953932836 17.0721159622, 101.953348375 17.072112582, 101.953024322 17.0726858065, 101.953136439 17.0727037, 101.953276211 17.0727490228, 101.953745048 17.0729505682, 101.953925912 17.0732342296, 101.953945931 17.0733858078, 101.95408588 17.0734203273, 101.954078156 17.0735498775, 101.954144794 17.0735995037, 101.954194225 17.0736704823, 101.954334086 17.0737104032, 101.954387206 17.073900298, 101.954498534 17.0739668038, 101.954639009 17.0739689144, 101.954712759 17.0739268003, 101.95488168 17.073907727, 101.955072026 17.0739538086, 101.955316983 17.0740979601, 101.955641221 17.0742054827, 101.9557227 17.074379595, 101.956059587 17.07474664, 101.956286813 17.0749445519, 101.956476546 17.0750284426, 101.956659257 17.075198672, 101.956870503 17.0753423158, 101.956870503 17.0753423158))', 0x00000000010300000001000000240000001839c75d3d7d5940ac5d4ea2491331405a370b9f407d594032542e5d141331404b09afc73e7d59402edcdf4014133140a8e2cbe63f7d59406429d816cc123140bdedac573d7d5940d7ff2355c71231402a9aed5b247d594000e13dabb7123140889abd73157d59406ec85eae87123140fe15e310127d5940b7bc448582123140d64c4f3c0d7d5940282b1331761231407714e7a8037d5940f3515df87512314016d2b959fe7c594007cd79899b1231406188fa2f007d594057ccadb59c1231403093397a027d5940f1bd11ae9f1231407278ab280a7d5940c4a470e3ac12314035b6441f0d7d59406b147d7abf12314007f33b730d7d5940d67d8c69c9123140390b39be0f7d5940789db0accb1231404576d39d0f7d5940c07c2e2ad41231403c7853b5107d5940b164c56ad71231400d9aa784117d5940b7289811dc123140ff3446cf137d5940751e5bafde1231406a5f13ae147d59401d134321eb12314009e70481167d5940874f0b7def12314004c936ce187d5940c54474a0ef123140a73e8b031a7d59402096e5ddec12314092c90cc81c7d5940ff62e69deb123140a53f6be61f7d5940055a05a3ee12314019d3d7e9237d59406f547b15f8123140e3b9cb39297d594061616921ff123140de228b8f2a7d5940c503888a0a1331404ecc8c14307d5940304986982213314097db9acd337d5940836cef902f133140821d67e9367d5940a03c631035133140c38ebfe7397d594050f15c38401331401839c75d3d7d5940ac5d4ea2491331401839c75d3d7d5940ac5d4ea249133140, '101.95533206237057', '17.073551888084122', '', 35.94, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(158, '190307101102781', '6034120009', 0, 'POLYGON ((101.971146862 17.0829831113, 101.973513417 17.0827830303, 101.974285982 17.082683771, 101.976147172 17.0825453595, 101.976184475 17.0820196245, 101.976333069 17.0812947283, 101.973960395 17.080982313, 101.973816984 17.0818319314, 101.97142118 17.08205928, 101.971337467 17.0823350233, 101.971146862 17.0829831113, 101.971146862 17.0829831113))', 0x000000000103000000010000000c000000cbf92a45277e5940612795613e153140dd0e380b4e7e594062cdc744311531400a6997b35a7e5940de5a7cc32a153140aaf4fc31797e5940337d53b1211531403abf72ce797e594092dbf43cff143140ef56b23d7c7e5940be6237bbcf143140f407fb5d557e5940b2e3c141bb14314070a47804537e5940ab21fdeff214314078afbdc32b7e5940edee43d6011531403f899f642a7e59408f6378e813153140cbf92a45277e5940612795613e153140cbf92a45277e5940612795613e153140, '101.97402007334365', '17.082089476185335', '', 43.35, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(159, '200121117977704', '6034120010', 0, 'POLYGON ((101.938759983 17.1175475243, 101.938405713 17.1173309173, 101.93895523 17.1166778905, 101.939011892 17.1156996277, 101.938633365 17.1149885976, 101.937774053 17.1143487003, 101.939123204 17.111817287, 101.940819701 17.1142964702, 101.938759983 17.1175475243, 101.938759983 17.1175475243))', 0x000000000103000000010000000a000000d371c0a4147c594022983498171e3140bbedd5d60e7c5940f99c2466091e31408650add7177c594020dd2b9ade1d31407cac55c5187c59408121a57d9e1d31400167ad91127c5940db1a8ae46f1d3140082b767d047c5940ec20d8f4451d3140100636981a7c5940decac60ea01c31408fced563367c5940a78e9188421d3140d371c0a4147c594022983498171e3140d371c0a4147c594022983498171e3140, '101.93929753878115', '17.11435773854411', '', 54, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(160, '210524123812871', '6034120012', 0, 'POLYGON ((101.868411457 17.1343168187, 101.868732987 17.1338516039, 101.868213309 17.1327119509, 101.868795013 17.1326984941, 101.868620669 17.1322621112, 101.86898042 17.1315889516, 101.868376253 17.1313076401, 101.868228731 17.1316927613, 101.867515934 17.1316591193, 101.867478048 17.1325312462, 101.866971781 17.1329974255, 101.867724476 17.1339118384, 101.867986327 17.1337477955, 101.868411457 17.1343168187, 101.868411457 17.1343168187))', 0x000000000103000000010000000f00000059d2a50d94775940889e479662223140c5073e52997759408444451944223140d8068ece9077594063e71069f9213140d3f065569a77594051634c87f8213140047f257b977759409a1a02eedb213140eb300d609d7759400ea343d0af21314083d0fd7993775940c7f1a3609d213140ed453d0f9177594047e7e69db62131407d528d6185775940199d7b69b42131401b8aa5c2847759408b205891ed213140cb7c35777c77594086f9881e0c223140f6963dcc88775940a979d60b48223140c5f585168d775940a895a74b3d22314059d2a50d94775940889e47966222314059d2a50d94775940889e479662223140, '101.86803872740627', '17.13274175885165', '', 22.04, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(161, '220509129993557', '6034120013', 0, 'POLYGON ((101.908238845 17.0061710217, 101.907649685 17.0054905116, 101.907550355 17.0052377916, 101.906917805 17.0055837116, 101.905832185 17.0053845516, 101.904468865 17.0052132816, 101.904300305 17.0052422516, 101.904079005 17.0049358216, 101.903940985 17.0048228216, 101.900899635 17.0064795017, 101.901594865 17.0080159917, 101.901693425 17.0081801517, 101.908238845 17.0061710217, 101.908238845 17.0061710217))', 0x000000000103000000010000000e000000d60ed295207a59406862906c940131402e53b4ee167a5940a4c27fd367013140af8c154e157a594011a08f4357013140a628faf00a7a594059b622ef6d0131404f8f8e27f97959408f06c9e16001314037db60d1e279594012fa59a85501314039ef620ee0795940ed2d638e570131406ade2f6edc795940d459587943013140b3054a2bda795940e40b85113c0131406a53f156a879594058e5ffa3a8013140a9daf2bab37959404e3206560d0231402bd95658b57959401f072c1818023140d60ed295207a59406862906c94013140d60ed295207a59406862906c94013140, '101.90410839708754', '17.006408485147716', '', 91.26, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(162, '201201120719244', '6034120014', 0, 'POLYGON ((101.972147645 17.0885342124, 101.97246675 17.0883657914, 101.973232521 17.0884484738, 101.973977504 17.0883846994, 101.974103568 17.0878456604, 101.973133949 17.0863227547, 101.973090028 17.0862560952, 101.97122824 17.0867166219, 101.972147645 17.0885342124, 101.972147645 17.0885342124))', 0x000000000103000000010000000a000000248ac1aa377e5940cad59a2daa163140a2ec2de53c7e5940ee25f8239f16314050460e71497e5940245a268fa416314010aebda5557e5940c9633161a016314086de7db6577e594076839e0d7d16314045659dd3477e59404e56803f19163140b894651b477e5940f4f623e1141631401bf07d9a287e594081147f0f33163140248ac1aa377e5940cad59a2daa163140248ac1aa377e5940cad59a2daa163140, '101.97272654350617', '17.08744092460585', '', 31.1, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(163, '200211119524384', '6034120015', 0, 'POLYGON ((101.957371613 17.077577984, 101.958603417 17.0776103538, 101.95880693 17.0786317624, 101.957379324 17.0790262868, 101.957446379 17.0778305324, 101.957371613 17.077577984, 101.957371613 17.077577984))', 0x00000000010300000001000000070000000bfd9593457d59406c2b9826dc133140547625c2597d5940e966ab45de133140cde1bd175d7d594052ef0f3621143140959cedb3457d5940905415113b143140a25e2dcd467d5940cc49a7b3ec1331400bfd9593457d59406c2b9826dc1331400bfd9593457d59406c2b9826dc133140, '101.95802798312921', '17.07823741646854', '', 11.86, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(164, '201224120727581', '6034120016', 0, 'POLYGON ((101.944285195 17.1090977226, 101.943481345 17.1078736126, 101.942905495 17.1070036526, 101.942617615 17.1071398026, 101.942023425 17.1073083526, 101.941882095 17.1073897426, 101.943348005 17.1097069826, 101.943554855 17.1100535826, 101.944285195 17.1090977226, 101.944285195 17.1090977226))', 0x000000000103000000010000000a000000cfa72b2b6f7c594095a20ed4ed1b31404f4a94ff617c5940e737e69a9d1b3140990f4a90587c594034786497641b3140bf43d5d8537c594053449c836d1b3140389c9e1c4a7c59403001698f781b3140a1add6cb477c59409264e8e47d1b3140338e4fd05f7c5940eb68bec1151c3140400de733637c59401b13ba782c1c3140cfa72b2b6f7c594095a20ed4ed1b3140cfa72b2b6f7c594095a20ed4ed1b3140, '101.94314797405212', '17.10840741795943', '', 22.84, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(165, '220326129438105', '6034120017', 0, 'POLYGON ((101.915296565 17.047694502, 101.915265195 17.047899672, 101.915249645 17.048021082, 101.915260625 17.048174642, 101.915361445 17.048344002, 101.915540655 17.048558872, 101.915619935 17.048733602, 101.915724335 17.049000752, 101.915913895 17.049078552, 101.917662179 17.0483361426, 101.917864686 17.0482976774, 101.91786368 17.0469735079, 101.91764575 17.0465670555, 101.917213579 17.046573787, 101.917179046 17.0463058101, 101.91620071 17.0469135659, 101.916266089 17.0471828241, 101.916325098 17.0473325187, 101.91635192 17.0474504793, 101.915296565 17.047694502, 101.915296565 17.047694502))', 0x00000000010300000001000000150000003c340b38947a5940fc49f6b4350c31404bec77b4937a5940a8ba2427430c3140d73c3f73937a594063b5101c4b0c314042ec4ca1937a5940f2e25f2c550c3140d6922b48957a59403a8cc345600c31408ad8d437987a5940b02baf5a6e0c314000195b84997a594068ce2ace790c31407cbe3d3a9b7a5940c55133508b0c3140873e50559e7a594069c67769900c314031e525faba7a59408aaee7c15f0c31407e21864bbe7a5940e0e7903c5d0c314051f24d47be7a59407a35b074060c31400f643db5ba7a59408a718cd1eb0b3140235095a0b37a594010047c42ec0b314060c9bd0fb37a59408afe93b2da0b314068814d08a37a59407c470787020c314016ac851aa47a594042716e2c140c31407f1a0612a57a594093dae3fb1d0c3140b7018682a57a5940e5c5f0b6250c31403c340b38947a5940fc49f6b4350c31403c340b38947a5940fc49f6b4350c3140, '101.91669785663167', '17.047773981827323', '', 32.34, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(166, '220509129997800', '6034120019', 0, 'POLYGON ((101.900756185 17.0066219217, 101.900699185 17.0065886317, 101.900006855 17.0068464117, 101.900522225 17.0075993117, 101.900962975 17.0076203117, 101.900756185 17.0066219217, 101.900756185 17.0066219217))', 0x0000000001030000000100000007000000aa0f45fda57959405f2369f9b1013140f7c6310ea579594049ade5caaf013140a7195ab699795940b158baafc00131408e6cf827a27959403f394b07f20131400a229c60a97959406d899d67f3013140aa0f45fda57959405f2369f9b1013140aa0f45fda57959405f2369f9b1013140, '101.90054791563698', '17.00710850529794', '', 4.26, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(167, '220518130273187', '6034120020', 0, 'POLYGON ((101.906022795 16.8625110504, 101.905878875 16.8620166604, 101.905851825 16.8618820304, 101.905843325 16.8617298504, 101.906033315 16.8616749304, 101.906113435 16.8619300304, 101.906306325 16.8620051104, 101.906469565 16.8620939804, 101.906682485 16.8621175404, 101.906762165 16.8621240404, 101.906737295 16.8623526904, 101.906599395 16.8623722204, 101.906022795 16.8625110504, 101.906022795 16.8625110504))', 0x000000000103000000010000000e000000277d0847fc79594017e83186cddc3040c99063ebf97959406f06b51faddc304067d9ee79f9795940fd93fd4ca4dc3040320b4856f97959407974d5539adc3040bc402873fc795940e0d96dba96dc3040a37234c3fd7959401f024c72a7dc30401c823eec007a59402227ee5dacdc3040a31fec98037a59407fe5eb30b2dc3040963bf915077a5940725331bcb3dc304036fb2c64087a5940079d3e29b4dc3040aa05ddfb077a5940b8e25a25c3dc30404c0678b9057a5940cf98036dc4dc3040277d0847fc79594017e83186cddc3040277d0847fc79594017e83186cddc3040, '101.90624074005696', '16.862160306132676', '', 2.83, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(168, '200121117977706', '6034120021', 0, 'POLYGON ((101.937972871 17.1207841027, 101.937312713 17.1186020379, 101.938383585 17.1180903224, 101.938604196 17.1185908231, 101.93912421 17.1180743012, 101.939281454 17.1210574198, 101.937972871 17.1207841027, 101.937972871 17.1207841027))', 0x0000000001030000000100000008000000bc5e5dbf077c594024f9fab4eb1e3140711d76eefc7b5940fb0402b45c1e3140682b067a0e7c59409eaed82a3b1e3140566d5517127c5940fad1daf75b1e31403d356e9c1a7c5940ed260e1e3a1e3140d6aaf52f1d7c5940a9fa7a9efd1e3140bc5e5dbf077c594024f9fab4eb1e3140bc5e5dbf077c594024f9fab4eb1e3140, '101.93842859645844', '17.11954293139407', '', 30.05, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(169, '220106127941850', '6034120022', 0, 'POLYGON ((101.971829605 17.0805274823, 101.969629905 17.0799539823, 101.969831205 17.0796748823, 101.971927705 17.0802705823, 101.971927705 17.0802705823, 101.971829605 17.0805274823, 101.971829605 17.0805274823))', 0x00000000010300000001000000070000009db0cc74327e594060e8f6729d143140b6cc966a0e7e5940d9293bdd771431406107e7b6117e594089cab5926514314049c34210347e594033cfe59c8c14314049c34210347e594033cfe59c8c1431409db0cc74327e594060e8f6729d1431409db0cc74327e594060e8f6729d143140, '101.97077829591102', '17.08010017061142', '', 4.89, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(170, '201225120735530', '6034120023', 0, 'POLYGON ((101.955145805 17.0781148316, 101.953439209 17.0771378288, 101.953044239 17.0769218518, 101.952775973 17.0768189765, 101.95258381 17.0767790214, 101.952960502 17.0757468443, 101.953304266 17.0759496962, 101.953393019 17.0760251618, 101.953546829 17.0760521843, 101.953839191 17.0762542627, 101.954412269 17.076584112, 101.954693588 17.0766748261, 101.954934748 17.0768637786, 101.955063459 17.0768533571, 101.955306025 17.0769558435, 101.955154833 17.0775589802, 101.955145805 17.0781148316, 101.955145805 17.0781148316))', 0x0000000001030000000100000012000000bed8de1b217d5940f70d6755ff1331404358e325057d5940fffa034ebf1331405b8943adfe7c59402ad48526b1133140c61c1348fa7c59409ac78f68aa1331408aa91522f77c594090ee39caa7133140109e0b4efd7c5940300b2b2564133140de66e5ef027d5940f451757071133140be352764047d5940a79a8f62761331409c7047e9067d59409d5bec27781331403dbf88b30b7d5940237a3c668513314065903217157d5940e66e30049b1331404c8a22b3197d5940a7861ef6a0133140561ea2a61d7d594080553758ad1331409e807cc21f7d594012555fa9ac133140fec2e1bb237d59408f11cf60b31331407c96bc41217d59405978c3e7da133140bed8de1b217d5940f70d6755ff133140bed8de1b217d5940f70d6755ff133140, '101.9539901327929', '17.076898726241165', '', 20.26, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(171, '201230120771369', '6034120024', 0, 'POLYGON ((101.974109829 17.0808676088, 101.974203809 17.0806075585, 101.97535867 17.0791780745, 101.976430614 17.0800224787, 101.976177651 17.0811916894, 101.974109829 17.0808676088, 101.974109829 17.0808676088))', 0x00000000010300000001000000070000001991c0d0577e59400a1a57bdb3143140cbd2ee5a597e594062916bb2a21431404961c5466c7e5940aa89a803451431405d7cd4d67d7e59401bf6685a7c1431406488d3b1797e594014ae82fac81431401991c0d0577e59400a1a57bdb31431401991c0d0577e59400a1a57bdb3143140, '101.97540020621018', '17.08033180387644', '', 20.4, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(172, '220509129993564', '6034120025', 0, 'POLYGON ((101.901312945 17.0083047317, 101.900863915 17.0084329517, 101.900508805 17.0076010617, 101.901055365 17.0075196617, 101.901312945 17.0083047317, 101.901312945 17.0083047317))', 0x0000000001030000000100000006000000228f7d1caf795940b60d47422002314094441fc1a7795940a0c273a9280231400bcfaeefa1795940986aa724f2013140dd231fe4aa7959401814fdceec013140228f7d1caf795940b60d474220023140228f7d1caf795940b60d474220023140, '101.90091927591975', '17.00795377387418', '', 3.21, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(173, '220330129439562', '6034120027', 0, 'POLYGON ((101.971011603 17.0844548876, 101.968134474 17.0847333056, 101.9686255 17.0859193223, 101.970377365 17.0854963163, 101.970666025 17.0854099661, 101.970851676 17.0853303177, 101.970992259 17.0845905989, 101.971011603 17.0844548876, 101.971011603 17.0844548876))', 0x0000000001030000000100000009000000fabad90d257e5940b73ae4d59e15314073fd4beaf57d5940196ff814b11531409624cff5fd7d59407c5f07cffe15314009dda9a91a7e5940dd6f2a16e3153140a72d64641f7e5940e726736ddd153140f46b116f227e5940f8e02b35d8153140bf44b7bc247e594016d3bfbaa7153140fabad90d257e5940b73ae4d59e153140fabad90d257e5940b73ae4d59e153140, '101.96957767953398', '17.08511221945697', '', 20.3, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(174, '210330122439466', '6034120029', 0, 'POLYGON ((101.869020318 17.151092289, 101.867816677 17.1507658352, 101.867961181 17.1497717334, 101.868988467 17.1497839074, 101.868941193 17.1493270609, 101.869986249 17.1496647302, 101.869852138 17.1500597448, 101.86933246 17.149992147, 101.869272446 17.1502019882, 101.86897338 17.1501949401, 101.869020318 17.151092289, 101.869020318 17.151092289))', 0x000000000103000000010000000c000000a65765079e775940cbeef7fbad263140dba8f54e8a775940c389fb9698263140eca50dad8c77594078d1b870572631406f97cd819d77594006c0f73c58263140438585bb9c7759402af95a4c3a2631402edbcddaad775940dc92816d5026314034444da8ab775940b35cc0506a26314047439d24a37759409605a6e26526314092b8e528a2775940f91c33a373263140740c86429d77594012c1f32c73263140a65765079e775940cbeef7fbad263140a65765079e775940cbeef7fbad263140, '101.86874522049402', '17.150191675052643', '', 13.59, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(176, '220519130315653', '6034120033', 0, 'POLYGON ((101.740630349 17.2293038497, 101.741163773 17.2292894393, 101.741545652 17.2294982299, 101.742789192 17.2292221907, 101.74561624 17.2290476645, 101.745496211 17.2285692376, 101.745407028 17.228516079, 101.745297728 17.2286582623, 101.744973851 17.2286182332, 101.744814259 17.2286845213, 101.744705965 17.2283412319, 101.74443875 17.2283617268, 101.744312351 17.2281004166, 101.743391012 17.2282646962, 101.742997398 17.2283258607, 101.741733072 17.228116108, 101.741622095 17.2282160208, 101.741320347 17.2282999219, 101.741127228 17.2282787865, 101.740669576 17.2285673162, 101.740428177 17.228539456, 101.740454664 17.2287825124, 101.740542171 17.2287969228, 101.740630349 17.2293038497, 101.740630349 17.2293038497))', 0x000000000103000000010000001900000053d8d57c666f5940f34e37a8b33a3140f5802d3a6f6f5940971c73b6b23a31402ff5e47b756f59400fe95f65c03a314096ddaddb896f5940f092344eae3a3140a88a2d2db86f5940b04024dea23a31405d62bd35b66f5940185d7883833a3140fdddadbfb46f594047ea9d07803a3140c2e23df5b26f5940e8890e59893a3140e49acda6ad6f594001dd7ab9863a3140f7ff6c09ab6f5940bd159c118b3a3140e9333543a96f5940bf562b92743a314002486de2a46f59409b4304ea753a3140736345d0a26f59404080f5c9643a31408b2be5b7936f5940a8021d8e6f3a3140145bf5448d6f59409d894890733a314081a6fd8d786f5940018d37d1653a3140060185bc766f59405fc2795d6c3a31405c8ee5ca716f5940673d1add713a3140d99be5a06e6f59405863827a703a3140fb835d21676f594074033c63833a31401f50dd2c636f59409a5dd18f813a31403e83f59b636f59409ba7a07d913a31403f70fd0a656f5940f8d9646f923a314053d8d57c666f5940f34e37a8b33a314053d8d57c666f5940f34e37a8b33a3140, '101.74279593943702', '17.228769260856975', '', 33.63, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(177, '220520130332897', '6034120034', 0, 'POLYGON ((101.877494412 17.1491291507, 101.877291055 17.1479982406, 101.87686785 17.1480847632, 101.8767957 17.1479686809, 101.876668272 17.1470688778, 101.875907519 17.1472322962, 101.875989689 17.1474306524, 101.8760114 17.1478361075, 101.875918676 17.1479277408, 101.876098262 17.1480947567, 101.875990019 17.1484325061, 101.875983588 17.1484762033, 101.875902901 17.1485297007, 101.875808618 17.1487143777, 101.87554228 17.1486226632, 101.875421799 17.14867007, 101.875399665 17.1489708294, 101.875505911 17.1490929143, 101.875790626 17.1491082692, 101.875851654 17.1492077559, 101.876140694 17.149305296, 101.876189575 17.1491089673, 101.876421727 17.1492001522, 101.876663057 17.1490834446, 101.876690997 17.1491167243, 101.876798892 17.1491402916, 101.876960542 17.1490168766, 101.877131756 17.149003101, 101.877243151 17.1491581123, 101.877333495 17.1492087808, 101.877494412 17.1491291507, 101.877494412 17.1491291507))', 0x00000000010300000001000000200000009e7d52de287859400223f9532d2631401893618925785940173e7336e32531407caa549a1e785940dbfa0ee2e82531408031b66b1d7859403a4c8546e1253140936b3d551b7859401169544ea62531403b1b69de0e7859400f180904b1253140d8780e3710785940677ce603be253140157b1e921078594065e14e96d82531400ad8340d0f7859403ce8a897de253140d6d771fe117859404fbcb889e92531408ece703810785940e25c37acff253140bc92771d1078594062685589022631400f910acb0e785940bdfdde0a062631405bf7963f0d7859409faa3c251226314061b77ce20878594070e385220c263140453a27e906785940468be03d0f263140ae06518c06785940bc54c8f322263140c8ccf14908785940dcfb06f42a2631400e3420f40c785940f4c6a3f52b263140f68418f40d7859406ae6bf7a322631402fdb6ab0127859408a7033df38263140276e707d1378594005185a012c26314001be274b17785940d9412efb312631404adb5d3f1b78594099ee26552a26314002348eb41b785940b8277e832c263140c79319791d7859401af0e20e2e26314070f11b1f20785940908c53f82526314065933bed227859402fcc351125263140d70b75c024785940f842de392f263140772d633b26785940e1cff18b322631409e7d52de287859400223f9532d2631409e7d52de287859400223f9532d263140, '101.8764931248942', '17.14836420462124', '', 18.39, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(178, '200121117986139', '6034120035', 0, 'POLYGON ((101.907589805 17.0086098817, 101.908872205 17.0081875817, 101.909342505 17.0088124817, 101.908766905 17.0092033817, 101.908520505 17.0091841817, 101.908125205 17.0092283817, 101.907934405 17.0091469817, 101.907652905 17.0088711817, 101.907589805 17.0086098817, 101.907589805 17.0086098817))', 0x000000000103000000010000000a0000001daa8cf3157a5940ed52d84134023140fa2d53f62a7a594084a2d394180231409df5e7aa327a5940b7b2e88841023140602aaa3c297a5940036a1f275b0231401b2e3033257a5940c20a00e5590231407e092eb91e7a5940b5988dca5c023140d918e8981b7a59403442e374570231400bc635fc167a59404347bb61450231401daa8cf3157a5940ed52d841340231401daa8cf3157a5940ed52d84134023140, '101.90846882075557', '17.008755328428894', '', 8.57, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(179, '210319122371870', '6034120036', 0, 'POLYGON ((101.875059312 17.1574261479, 101.874750187 17.1591993077, 101.873579403 17.1594808974, 101.874180888 17.1575456405, 101.875059312 17.1574261479, 101.875059312 17.1574261479))', 0x00000000010300000001000000060000006bc6c5f80078594009c47c144d2831406f5535e8fb7759400a1e2c49c1283140079695b9e877594074ab76bdd3283140e32f6594f27759402b933de9542831406bc6c5f80078594009c47c144d2831406bc6c5f80078594009c47c144d283140, '101.8743752007352', '17.158453605974064', '', 13.34, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(180, '220108127979335', '6034120037', 0, 'POLYGON ((101.956131181 17.0751582736, 101.95630432 17.0752257069, 101.956442342 17.0753790571, 101.95670337 17.0755720736, 101.957039113 17.0756635589, 101.957276255 17.075596883, 101.95745255 17.075469863, 101.957627268 17.075440069, 101.957823323 17.0754808312, 101.958318854 17.0754234349, 101.958763148 17.0764458245, 101.957379626 17.0768464755, 101.957246511 17.0763906442, 101.957005678 17.0763384034, 101.956925791 17.0767586202, 101.956333409 17.0765498222, 101.956215407 17.0765480501, 101.95569739 17.0762593258, 101.956131181 17.0751582736, 101.956131181 17.0751582736))', 0x00000000010300000001000000140000002d45d640317d5940c52297923d1331401bdb0817347d594038f4eefd4113314094d9f059367d59403e0cb90a4c133140df87c5a03a7d5940589a00b158133140fbd4fa20407d594077f9deaf5e133140971da003447d59401f2a3c515a133140326e0fe7467d5940296b31fe511331405774e1c3497d5940b929550a5013314063e831fa4c7d5940997a35b6521331407e449a18557d59405b3f42f34e13314048511b605c7d5940ac241cf491133140b6e131b5457d5940da15eb35ac13314020bdde86437d5940338f56568e1331402a46be943f7d59402808e2e98a133140d042ac453e7d5940f171f373a61331408aee0a91347d594016dde6c498133140c43f1ba2327d594088c02ba7981331400bbb62252a7d594075532ebb851331402d45d640317d5940c52297923d1331402d45d640317d5940c52297923d133140, '101.95721575622532', '17.07605446288822', '', 22.63, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(181, '220520130332903', '6034120038', 0, 'POLYGON ((101.872505605 17.151240383, 101.871408505 17.151132683, 101.871270705 17.150669383, 101.871270905 17.150595883, 101.871224405 17.150076483, 101.871229905 17.149692883, 101.871601805 17.149610283, 101.871709905 17.149771283, 101.872167505 17.149874183, 101.872486605 17.149914883, 101.872526705 17.150074583, 101.872923505 17.150265483, 101.872998405 17.150640683, 101.872659205 17.150615783, 101.872460505 17.150706883, 101.872463905 17.150865383, 101.872494405 17.151104783, 101.872505605 17.151240383, 101.872505605 17.151240383))', 0x00000000010300000001000000130000004fc3bf21d7775940ccd192b0b72631409a9b2d28c57759407cd7aaa1b026314006fc33e6c2775940567ec844922631409bbb0ae7c2775940b265a8738d263140efbc0124c27759403a6292696b2631406c51133bc2775940d0edd4455226314003e7ef52c87759405ca108dc4c263140c1645718ca7759406e5d2a6957263140f8a6a797d1775940ee7f8a275e26314014ab0ed2d67759402eab5fd26026314025b73f7ad777594022f2b1496b2631409f788cfadd775940e03377cc77263140dabbb334df7759409eee466390263140d181fea5d9775940163f86c18e263140b5019664d677594061c4edb99426314097bad872d677594061151e1d9f263140c0dac5f2d6775940124195cdae2631404fc3bf21d7775940ccd192b0b72631404fc3bf21d7775940ccd192b0b7263140, '101.87195996717814', '17.150452860609004', '', 14.14, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(182, '210427122611673', '6034120039', 0, 'POLYGON ((101.883468372 17.1420173645, 101.882256685 17.142532218, 101.881358144 17.1425850809, 101.881223363 17.1421974192, 101.881402066 17.1419975008, 101.881715884 17.1419552103, 101.88240253 17.1418699886, 101.882649963 17.1415736346, 101.88293059 17.1412814451, 101.883468372 17.1420173645, 101.883468372 17.1420173645))', 0x000000000103000000010000000b0000009532edbe8a785940dafdff3f5b2431402730bee476785940b4efcefd7c243140c522fd2b68785940ef5cb374802431409823adf665785940230ad10c67243140330636e468785940bb0cbef259243140338975086e7859403dbc392d572431407d107648797859402652719751243140a43945567d7859403695722b3e243140082c4eef81785940723c52052b2431409532edbe8a785940dafdff3f5b2431409532edbe8a785940dafdff3f5b243140, '101.88235250078016', '17.142076522883208', '', 10, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(183, '220326129438097', '6034120042', 0, 'POLYGON ((101.845424255 17.1615375463, 101.845805799 17.1611768335, 101.846373086 17.1612322539, 101.846809616 17.1606966295, 101.846641643 17.1603493698, 101.8459037 17.1601286482, 101.845505727 17.1599454073, 101.844824446 17.1600713053, 101.844855962 17.1606332002, 101.845424255 17.1615375463, 101.845424255 17.1615375463))', 0x000000000103000000010000000b000000179e556e1b765940416f4e865a293140385ea5ae217659405ec18ce2422931406a2505fa2a765940958f59844629314022aaf52032765940a947106a2329314078076e602f765940a73903a80c2931402fc4454923765940f42beb30fe283140ed820dc41c765940b87fa52ef22831409b9b8d9a11765940a24add6efa283140b8a7bd1e12765940c582e5411f293140179e556e1b765940416f4e865a293140179e556e1b765940416f4e865a293140, '101.84573055276991', '17.160652419926357', '', 14.49, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(184, '220118128239594', '6034120043', 0, 'POLYGON ((101.836489905 17.1296913128, 101.835885315 17.1298963128, 101.835212315 17.1300957828, 101.834372225 17.1303775128, 101.83310051 17.1310647762, 101.832958353 17.1307533461, 101.835752209 17.1293852261, 101.835732763 17.1289360192, 101.836631974 17.1285771655, 101.837010836 17.1292846193, 101.836383199 17.129523961, 101.836489905 17.1296913128, 101.836489905 17.1296913128))', 0x000000000103000000010000000d0000002f5af40c89755940220d2b73332131406dc81e257f755940d4587fe2402131400e895a1e7475594039790cf54d21314035c4c25a667559401d9cb16b60213140c72ecd8451755940c26f0f768d21314029448d304f7559409257210d79213140bf4dd5f67c75594060afe2631f213140f75145a57c7559408dbd71f3012131408cc7d5608b755940bbd5e06eea20314021c1e59591755940f2c4fbcb182131403fa8654d877559401b8b787b282131402f5af40c89755940220d2b73332131402f5af40c89755940220d2b7333213140, '101.8353666019055', '17.129723215814742', '', 15.48, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(185, '220514130143136', '6034120044', 0, 'POLYGON ((101.847137535 17.139521433, 101.84729022 17.1396164722, 101.847450025 17.1400513622, 101.847318252 17.1402407952, 101.847000407 17.1404087924, 101.846729636 17.1404539823, 101.846287004 17.1403976555, 101.84544214 17.1405574211, 101.845518285 17.1409971825, 101.845845335 17.1410455293, 101.846636737 17.1406254903, 101.846888227 17.1405799996, 101.848078656 17.1408950788, 101.84848596 17.1407593611, 101.848323129 17.1405035599, 101.848306176 17.13998442, 101.848060177 17.1400855921, 101.847637592 17.1396033622, 101.84750179 17.1396506596, 101.847375961 17.1394880916, 101.847603304 17.1393495666, 101.847590763 17.1393308397, 101.847333786 17.1393206522, 101.847326421 17.139376131, 101.847286816 17.1394372837, 101.847137535 17.139521433, 101.847137535 17.139521433))', 0x000000000103000000010000001b00000080025a803776594078d337adb7233140b947c2003a765940f714b6e7bd233140a497079f3c765940c568f467da233140356955763a765940f4f21cd2e6233140e0f0314135765940c96da3d4f123314023cb7fd1307659404b92cccaf42331406e4df79029765940bdceca19f1233140757d59b91b765940a8d53692fb233140ae8fb9f81c76594068aa2f641824314026d37854227659402c974f8f1b2431407540da4b2f7659408dd23908002431404695ad6a33765940f2c0040dfd23314029fdb2eb46765940049d2bb3112431402c540e984d765940c58734ce08243140b4df17ed4a765940f9bd920af82331408cbafca54a7659407bd9d904d62331405150319e46765940d6b53ca6dc2331400320beb13f765940860fc30bbd2331407ed625783d765940cad84725c023314057fa61683b7659407c9ad77db523314057aaed213f7659403f42c769ac23314082de53ed3e765940f2d5972fab2331409dea7cb73a7659403cdbac84aa233140d5ce98983a765940ee7c7427ae23314053437bf239765940a7556d29b223314080025a803776594078d337adb723314080025a803776594078d337adb7233140, '101.84718735224351', '17.140416424369395', '', 12.59, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(186, '220520130332906', '6034120045', 0, 'POLYGON ((101.873289805 17.148207683, 101.873156705 17.148359583, 101.873009205 17.148475683, 101.872748405 17.148833983, 101.872498605 17.149313083, 101.872808405 17.149665183, 101.872962105 17.149928883, 101.873533405 17.149637583, 101.873863405 17.149453983, 101.874001505 17.149126583, 101.874165905 17.148937983, 101.873289805 17.148207683, 101.873289805 17.148207683))', 0x000000000103000000010000000d000000ef19ecfae37759403d804ff0f02531408510a9cce17759408008c5e4fa2531403f250062df7759407cbc9a80022631401d47201cdb775940b784e1fb19263140f6916304d77759409559d8613926314088c9c817dc775940b9551a7550263140d4e7729cde775940f83541bd61263140119ca7f8e7775940cc3c0da64e2631405b69c660ed775940f03dc19d422631404e2802a4ef77594001f3e4282d26314035508d55f2775940011eb6cc20263140ef19ecfae37759403d804ff0f0253140ef19ecfae37759403d804ff0f0253140, '101.87329185445903', '17.14909052944979', '', 11.61, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(187, '220326129438096', '6034120046', 0, 'POLYGON ((101.87676285 17.0390000845, 101.878038911 17.0389827743, 101.878132453 17.0375030663, 101.877688547 17.036455467, 101.877008943 17.0362695399, 101.87677559 17.036862903, 101.874910449 17.0386442633, 101.875257125 17.0388692962, 101.875928683 17.0389571295, 101.875964557 17.0387683199, 101.876217356 17.0388013376, 101.87676285 17.0390000845, 101.87676285 17.0390000845))', 0x000000000103000000010000000d00000042c6ede11c785940ff77d7e8fb09314012d71dca31785940d1b96cc6fa0931403ecc7552337859401b420bcd99093140155c950c2c78594081863e2555093140031f1eea2078594023b6e7f548093140ca3e5d171d78594014d2e2d86f0931408e586588fe775940300d2797e4093140d3dd7536047859405fff9356f309314041c72d370f78594007262d18f90931404a31a5cd0f78594064177ab8ec093140490df6f11378594076086ce2ee09314042c6ede11c785940ff77d7e8fb09314042c6ede11c785940ff77d7e8fb093140, '101.87689250233207', '17.037927874001337', '', 38.69, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(188, '220402129440808', '6034120047', 0, 'POLYGON ((101.887090945 17.1188816227, 101.887708945 17.1188298582, 101.887548012 17.1170752182, 101.887324383 17.1168736706, 101.88711383 17.1170159395, 101.88644663 17.1169611468, 101.886463059 17.1171832014, 101.88586895 17.1172347899, 101.885797536 17.1168653396, 101.885520933 17.1168022157, 101.886129794 17.1188426751, 101.887090945 17.1188816227, 101.887090945 17.1188816227))', 0x000000000103000000010000000d00000093561919c67859408797a9066f1e314011c92d39d0785940e0c132a26b1e3140de4a2d96cd785940505739a4f81d31406b7b35ecc978594090fdd06eeb1d31407aeb1579c67859406243b1c1f41d3140f65fa58abb7859409e686c2af11d314018e18dcfbb78594051a7e1b7ff1d3140ae32ae13b2785940ed926419031e3140d5ff25e8b0785940319e0be3ea1d314023cafd5fac785940278800c0e61d3140704fbd59b678594075ec3a796c1e314093561919c67859408797a9066f1e314093561919c67859408797a9066f1e3140, '101.88674778255017', '17.11790764397103', '', 23.81, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(189, '220520130332908', '6034120049', 0, 'POLYGON ((101.880948605 17.144034983, 101.881315405 17.144859483, 101.881677705 17.145365483, 101.881835605 17.145600983, 101.881957805 17.146075983, 101.882096705 17.147042683, 101.882205405 17.147259783, 101.882416405 17.147668383, 101.882603205 17.148140383, 101.883298205 17.148034283, 101.883389905 17.147904583, 101.883080605 17.147873983, 101.882648905 17.146850983, 101.882606505 17.146555883, 101.882567005 17.146440183, 101.882650905 17.146426583, 101.883073405 17.146573883, 101.882902405 17.146031883, 101.882823105 17.145799183, 101.882483705 17.145192883, 101.882353805 17.144968083, 101.882233805 17.144736283, 101.882100105 17.144484583, 101.881896505 17.144131483, 101.881715605 17.143778283, 101.881622005 17.143641983, 101.880948605 17.144034983, 101.880948605 17.144034983))', 0x000000000103000000010000001c000000a3fb4176617859400577057adf243140e77bba78677859401f00d68215253140972553686d785940c6731bac3625314019fb9afe6f7859401e40241b46253140533b26ff717859404fb7513c6525314099f8bc4574785940e199da96a425314015b5a80d76785940450030d1b2253140733ba8827978594061a35b98cd253140773427927c785940b1333487ec253140cbc531f587785940fc2b2493e5253140dce5cf7589785940dce92213dd2531403e8d8364847859400deac011db253140d034d5517d785940d65ea906982531408f8dfe9f7c7859407b85b4af842531403cc051fa7b78594025ce941a7d253140a1b0385a7d785940024069367c253140509c504684785940c7eeb1dd8525314039c216798178594086a871586225314034087b2c80785940bec4621853253140960eef9c7a785940d2185c5c2b25314079fe177c78785940e572d7a01c253140a4f9c684767859409407e26f0d2531407cb1ff5374785940dec20ef1fc243140a1db09fe7078594019cf05cde524314043f649076e7859402b5c4fa7ce2431402cbab37e6c7859404d5193b8c5243140a3fb4176617859400577057adf243140a3fb4176617859400577057adf243140, '101.88215451768245', '17.145781187602353', '', 25.7, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(190, '210223121875835', '6034120050', 0, 'POLYGON ((101.885206472 17.130553829, 101.883989941 17.1313566527, 101.883997915 17.1295173166, 101.884089542 17.1294678351, 101.884229277 17.1297099188, 101.884505908 17.1299104892, 101.884829504 17.1300172655, 101.885206472 17.130553829, 101.885206472 17.130553829))', 0x0000000001030000000100000009000000a4dc0b39a77859402eecc9f96b213140a1a58b4a937859406275ef96a02131400faafd6b937859400c10ff0b282131400a684dec9478594070a3d5cd242131405eb86436977859407b3653ab34213140a4feaabe9b785940788556d041213140d18ded0ba1785940e43cbfcf48213140a4dc0b39a77859402eecc9f96b213140a4dc0b39a77859402eecc9f96b213140, '101.88442288502269', '17.13043974380453', '', 8.99, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(192, '210323122427640', '6034120057', 0, 'POLYGON ((101.871927833 17.1318942927, 101.870747326 17.1321317087, 101.870282633 17.1314825787, 101.870781524 17.1313547389, 101.870758725 17.1311711493, 101.870493186 17.1311958202, 101.8708868 17.130554697, 101.871927833 17.1318942927, 101.871927833 17.1318942927))', 0x000000000103000000010000000900000042cd65aacd775940f1ac09d3c3213140f70ffe52ba77594090a13762d3213140c1c0edb5b27759409f829fd7a8213140a0e26de2ba77594008c0d376a02131403aa5cd82ba775940176cb46e94213140b2500d29b677594082219d0c962131402821fd9bbc77594046f459086c21314042cd65aacd775940f1ac09d3c321314042cd65aacd775940f1ac09d3c3213140, '101.87105418934931', '17.131499868633497', '', 9.09, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(194, '220205128644199', '6034120063', 0, 'POLYGON ((101.86346144 17.1466404221, 101.865483155 17.1465596878, 101.865015445 17.1471639129, 101.864776728 17.1472337542, 101.863718262 17.1476057072, 101.863682052 17.1476768299, 101.86346144 17.1466404221, 101.86346144 17.1466404221))', 0x00000000010300000001000000080000000d8ac5f342775940ee30093a8a253140b17d75136477594052038aef84253140d5b3bd695c775940910ec188ac25314085467d805877594003287f1cb1253140df0ff628477759408020d57cc9253140dcde15914677594026cc1226ce2531400d8ac5f342775940ee30093a8a2531400d8ac5f342775940ee30093a8a253140, '101.86432220052531', '17.146979503073258', '', 9.54, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(195, '220326129438098', '6034120071', 0, 'POLYGON ((101.866864493 17.131378769, 101.864914527 17.1310269689, 101.865488855 17.1298562194, 101.866447409 17.1301509901, 101.866504406 17.1303803982, 101.866828283 17.1304053896, 101.866864493 17.131378769, 101.866864493 17.131378769))', 0x0000000001030000000100000008000000e9df35b57a775940663efc09a221314038d375c25a775940cb51c2fb8a213140c2d15d2b647759405581d7413e213140f956d5df7377594082054693512131400967e5ce74775940f74e1a9c60213140e7ae551d7a775940dc8d633f62213140e9df35b57a775940663efc09a2213140e9df35b57a775940663efc09a2213140, '101.8659688320552', '17.13067131571526', '', 14.11, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(196, '210512123286573', '6034120079', 0, 'POLYGON ((101.868072157 17.1174421047, 101.869419967 17.1174308898, 101.869368335 17.1166657143, 101.867437144 17.1167560744, 101.868072157 17.1174421047, 101.868072157 17.1174421047))', 0x00000000010300000001000000060000008638857e8e77594023dc8eaf101e31404830a593a47759402f3b67f30f1e314031c015bba3775940a57be3cddd1d314033341517847759404828e1b9e31d31408638857e8e77594023dc8eaf101e31408638857e8e77594023dc8eaf101e3140, '101.86857425720814', '17.117050644189817', '', 8.9, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(197, '220326129438102', '6034120080', 0, 'POLYGON ((101.871173126 17.1493680682, 101.87064909 17.1493837664, 101.870738608 17.1471446905, 101.871384686 17.146464857, 101.871173126 17.1493680682, 101.871173126 17.1493680682))', 0x0000000001030000000100000006000000be54ed4cc177594057fc57fc3c263140e6f5f5b6b8775940c63db7033e2631405f2e6d2eba775940407a4146ab253140bc2646c4c47759400dd48ab87e253140be54ed4cc177594057fc57fc3c263140be54ed4cc177594057fc57fc3c263140, '101.87099889968265', '17.14805172491521', '', 10.71, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(198, '220326129438104', '6034120081', 0, 'POLYGON ((101.915236465 17.047111912, 101.915056413 17.0460060985, 101.914466997 17.0450809966, 101.91553217 17.0449252098, 101.916099122 17.0467135452, 101.915311558 17.0472402017, 101.915236465 17.047111912, 101.915236465 17.047111912))', 0x00000000010300000001000000080000000752f73b937a5940c24ab9860f0c314020f5c548907a59405c79400ec70b3140ba5895a0867a59406e119e6d8a0b314080253e14987a594060dbf237800b31409938365ea17a59400aea3c6bf50b3140b1d0ed76947a5940a25b11ef170c31400752f73b937a5940c24ab9860f0c31400752f73b937a5940c24ab9860f0c3140, '101.91537553119512', '17.045968205221545', '', 13.67, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(199, '210223121885146', '6034120084', 0, 'POLYGON ((101.877093432 17.1468980028, 101.875985345 17.1471754463, 101.876066146 17.1468038129, 101.876115096 17.1465305337, 101.875923654 17.1463216495, 101.875909907 17.1460874554, 101.876791013 17.1459224621, 101.877093432 17.1468980028, 101.877093432 17.1468980028))', 0x00000000010300000001000000090000007d7e7d4c22785940acdf851b9b2531403823d62410785940f9a1404aad253140fa8cbd7711785940675547ef9425314086360d45127859405f1b6a068325314043ee15220f7859409d4ceb5575253140ac336de80e785940824ccbfc65253140c0900d581d785940a778aa2c5b2531407d7e7d4c22785940acdf851b9b2531407d7e7d4c22785940acdf851b9b253140, '101.87647876726557', '17.14653203898499', '', 7.32, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(200, '220107127951212', '6034120089', 0, 'POLYGON ((101.971306405 17.0820648823, 101.971537905 17.0815813823, 101.972001805 17.0800289823, 101.973641605 17.0807622823, 101.973963205 17.0809495823, 101.973839105 17.0818148823, 101.971306405 17.0820648823, 101.971306405 17.0820648823))', 0x0000000001030000000100000008000000b4f756e2297e5940eba0413402153140293352ad2d7e5940e4f07884e214314031080f47357e5940eeb585c77c143140ffdfe024507e5940943a41d6ac143140df3ec469557e5940769aa01cb91431409ee24061537e5940facdf3d1f1143140b4f756e2297e5940eba0413402153140b4f756e2297e5940eba0413402153140, '101.97264519753365', '17.081196811774593', '', 24.82, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(201, '201225120735533', '6034120090', 0, 'POLYGON ((101.957382527 17.0768555158, 101.957354445 17.0776048702, 101.957430051 17.0778508301, 101.957415266 17.0782714007, 101.956286245 17.0781932407, 101.956327504 17.0771227527, 101.956708237 17.077204978, 101.95676393 17.0767161649, 101.956922216 17.076772097, 101.957382527 17.0768555158, 101.957382527 17.0768555158))', 0x000000000103000000010000000b00000084ce5cc1457d5940d2e096cdac13314023fd934b457d5940f284abe9dd1331402b50b188467d5940f73e3108ee133140500aae4a467d5940f737329809143140f0f838cb337d59402393e37804143140807c4678347d5940be9f1451be133140a56e2fb53a7d5940319997b4c3133140ea55c79e3b7d5940ee51ababa31331404ba2ad363e7d59403fdc0d56a713314084ce5cc1457d5940d2e096cdac13314084ce5cc1457d5940d2e096cdac133140, '101.95688757443757', '17.077585073708068', '', 10.31, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(202, '220406129441932', '6034120091', 0, 'POLYGON ((101.881548581 17.1358229918, 101.881060419 17.1357976807, 101.880297666 17.1362109872, 101.879766924 17.1368514501, 101.880031457 17.1373092884, 101.880594385 17.1371785691, 101.880634619 17.1368793241, 101.881135186 17.1366105158, 101.881156979 17.1370347137, 101.881543217 17.1369533344, 101.881548581 17.1358229918, 101.881548581 17.1358229918))', 0x000000000103000000010000000c000000bc4ebd4a6b7859406dd3ab4bc5223140ec593d4b63785940aa7a05a3c3223140c58d05cc567859403f6127b9de223140aeabed194e785940f59656b2082331400ad1756f52785940731d97b32623314070278da85b78594020ff7b221e23314026154e515c7859401282fc850a23314064ced5846478594094a621e8f82231409edc3de0647859401bc2fdb414233140a4c13d346b7859407f53ac5f0f233140bc4ebd4a6b7859406dd3ab4bc5223140bc4ebd4a6b7859406dd3ab4bc5223140, '101.88076066910621', '17.136530948775576', '', 11.88, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(203, '210224121916276', '6034120093', 0, 'POLYGON ((101.869271105 17.1307283547, 101.869606716 17.1309257221, 101.869933275 17.1302064197, 101.8701274 17.1302791511, 101.870254805 17.1300318002, 101.86953195 17.1296444328, 101.869347213 17.1302093033, 101.869271105 17.1307283547, 101.869271105 17.1307283547))', 0x00000000010300000001000000090000004cd54523a2775940ad18d869772131408766eda2a7775940eb9f1e5984213140f0749dfcac7759403b573a3555213140a096d52ab07759403d5375f9592131405caa3541b27759408c4c99c349213140ef045669a677594006fca660302131400a2d7e62a3775940f64e9b65552131404cd54523a2775940ad18d869772131404cd54523a2775940ad18d86977213140, '101.8696619796587', '17.130249380206433', '', 4.6, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(204, '210323122427645', '6034120094', 0, 'POLYGON ((101.874645581 17.1332982787, 101.875902531 17.1331803725, 101.875631964 17.1320109182, 101.875319151 17.1320173262, 101.875449909 17.1306434483, 101.874465873 17.1306700416, 101.874490348 17.1322002742, 101.874645581 17.1332982787, 101.874645581 17.1332982787))', 0x0000000001030000000100000009000000197f7531fa7759402da103d61f2231403b487dc90e7859404a5be01b18223140952da65a0a7859404962b077cb213140e1c69d3a05785940cc8832e3cb2131403c1c0e5f077859409ae259d9712131403380b53ff77759402c3d839773213140f8545da6f777594013368ee0d7213140197f7531fa7759402da103d61f223140197f7531fa7759402da103d61f223140, '101.87505213703979', '17.132040664076385', '', 20.12, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(205, '210323122427649', '6034120095', 0, 'POLYGON ((101.877418175 17.1346407029, 101.876421539 17.1335231975, 101.877835398 17.1334562345, 101.877418175 17.1346407029, 101.877418175 17.1346407029))', 0x0000000001030000000100000005000000a0a28f9e277859407caa27d077223140f6e05d4a17785940158586932e223140986b85742e785940f39f12302a223140a0a28f9e277859407caa27d077223140a0a28f9e277859407caa27d077223140, '101.87723189454697', '17.13387453178399', '', 6.07, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(206, '220214128787993', '6034120097', 0, 'POLYGON ((101.861914141 17.1488596411, 101.863220041 17.1508545769, 101.863499326 17.1507767277, 101.863777941 17.1511198405, 101.864031074 17.1509446, 101.863730332 17.1491233058, 101.863584486 17.1482945069, 101.863371586 17.1479978428, 101.861914141 17.1488596411, 101.861914141 17.1488596411))', 0x000000000103000000010000000a00000084e3ed992977594003385aaa1b263140325645ff3e775940c73cd2679e2631406f52ad92437759402a78ba4d992631407ae645234877594068b934caaf263140b263fd484c775940ff81284ea42631403520965b477759407f7be9f12c263140fd2cddf744775940dc4ff9a0f62531409a8ae57a417759405db4c62fe325314084e3ed992977594003385aaa1b26314084e3ed992977594003385aaa1b263140, '101.86313567546047', '17.149476575178774', '', 25.29, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(207, '220326129438108', '6034120098', 0, 'POLYGON ((101.874229839 17.1551032348, 101.874034708 17.1565198596, 101.871615691 17.1562216069, 101.871427266 17.1560495747, 101.871755836 17.1557936085, 101.871850384 17.1553012169, 101.87211827 17.1552605313, 101.872208459 17.1550484533, 101.872304683 17.1549536268, 101.872607438 17.1550939444, 101.87342987 17.1548543152, 101.874024985 17.1546992609, 101.874153731 17.1548225996, 101.874229839 17.1551032348, 101.874229839 17.1551032348))', 0x000000000103000000010000000f0000004fecb561f377594045f878d8b4273140739b452ff077594011287eaf11283140a1e12d8dc87759406790a423fe2731400314de76c577594026e46bddf2273140e66dfdd8ca775940ef6e0517e22731403e928d65cc775940509d0fd2c127314039f925c9d0775940084b7827bf273140c6ac6d43d277594009386441b12731407d6805d7d3775940aa80770aab273140351ddeccd877594072019b3cb4273140f8bf6546e6775940b16d4b88a4273140909d7d06f0775940e747ea5e9a27314092947d22f2775940b5f63174a22731404fecb561f377594045f878d8b42731404fecb561f377594045f878d8b4273140, '101.8730470492298', '17.15567001705206', '', 25.25, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(209, '210821126560129', '6034120102', 0, 'POLYGON ((101.940739235 17.0787881621, 101.940382166 17.0790980767, 101.938473774 17.07799815, 101.938643759 17.0778423906, 101.938945507 17.0777923938, 101.940739235 17.0787881621, 101.940739235 17.0787881621))', 0x0000000001030000000100000007000000e6185612357c59400d8803762b1431408c2dae382f7c59405e9a84c53f143140f5de4df40f7c59400466cfaff7133140f8df45bd127c594095de997aed133140a252e5ae177c5940a13fcb33ea133140e6185612357c59400d8803762b143140e6185612357c59400d8803762b143140, '101.93961960815311', '17.078415600477623', '', 6.87, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(210, '220519130277472', '6034120104', 0, 'POLYGON ((101.819553678 17.163807522, 101.81874868 17.162805161, 101.817989615 17.1634263115, 101.818115009 17.163808483, 101.818762762 17.1634173418, 101.818913636 17.1637014879, 101.818558244 17.1640647585, 101.818682966 17.164659957, 101.819553678 17.163807522, 101.819553678 17.163807522))', 0x000000000103000000010000000a000000e6144591737459402cd42d4aef293140900fdd6066745940721d5a99ad29314021391df159745940cb32874ed629314064010eff5b745940d94a4d5aef293140407eed9b6674594058a10ab8d52931409537bd146974594048d63857e82931407af61d4263745940032fe425002a3140c9303d4d657459409946aa27272a3140e6144591737459402cd42d4aef293140e6144591737459402cd42d4aef293140, '101.8188003907614', '17.16365143621039', '', 8.51, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(211, '220326129438101', '6034120105', 0, 'POLYGON ((101.912745354 17.0480309851, 101.913601314 17.04772166, 101.91374783 17.0482175416, 101.914478732 17.0477527528, 101.914248062 17.0467981693, 101.913637859 17.0469555574, 101.913481956 17.0466167402, 101.913352204 17.0463631879, 101.912514684 17.0462731143, 101.912200866 17.0470055625, 101.912745354 17.0480309851, 101.912745354 17.0480309851))', 0x000000000103000000010000000c00000061407d6b6a7a5940fc3236c24b0c31409c4da571787a5940c602997c370c314006a92dd87a7a5940f9431cfc570c3140f7b4cdd1867a5940ea913f86390c31402bae4d0a837a5940fba7fef6fa0b3140b832ed0a797a594001668747050c314064a0057d767a5940ea9a1e13ef0b3140367acd5c747a5940d0c43775de0b31409639fda3667a5940429a088ed80b314096b6bd7f617a5940e7aa798e080c314061407d6b6a7a5940fc3236c24b0c314061407d6b6a7a5940fc3236c24b0c3140, '101.91329627704779', '17.047221538689126', '', 19.84, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(212, '220421129450894', '6034120106', 0, 'POLYGON ((101.931720575 17.0334255419, 101.931476295 17.0329437619, 101.92860928 17.0339605029, 101.928444324 17.0339518475, 101.928198231 17.0335671655, 101.931237174 17.0324410044, 101.93095353 17.031850833, 101.932155831 17.0313148365, 101.93270166 17.0329939879, 101.931720575 17.0334255419, 101.931720575 17.0334255419))', 0x000000000103000000010000000b000000a9a8554fa17b5940c44f89938e0831408d01c04e9d7b5940bcf79b006f0831402d179e556e7b5940ac4fb1a2b108314028efbda16b7b5940baa67a11b108314067968d99677b5940bb0a96db9708314091c9cd63997b594088f2bc0d4e083140875c1dbe947b5940da154e6027083140ed3aee70a87b5940a8a5c63f04083140ffa74d62b17b5940c0fe424b72083140a9a8554fa17b5940c44f89938e083140a9a8554fa17b5940c44f89938e083140, '101.93097800624615', '17.032754743069038', '', 28.05, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(213, '220422129467987', '6034120107', 0, 'POLYGON ((101.939196294 17.0749447938, 101.938259197 17.0747810194, 101.938285013 17.0756627072, 101.937398879 17.0755540588, 101.937305337 17.0757463567, 101.937386809 17.0759078868, 101.937113223 17.0761953715, 101.938660858 17.0764450373, 101.938492549 17.0769193694, 101.938736295 17.0771873024, 101.93860889 17.0775677282, 101.938914327 17.0777584215, 101.939784368 17.0766187456, 101.939175842 17.0765197126, 101.939196294 17.0749447938, 101.939196294 17.0749447938))', 0x000000000103000000010000001000000048d0c5ca1b7c59406060fe942f13314051924d700c7c59403eaf50d9241331405d4a95dc0c7c594069f394a15e1331402c27de57fe7b594046a0c38257133140003286cffc7b594052d1fc1c64133140d6163e25fe7b5940815003b36e133140c95bbda9f97b5940f6b2348a811331404dc9fd04137c59401f25e7e691133140a95f0d43107c59407f00e0fcb0133140f7a56541147c594076790b8cc21331403b92052b127c594011d8877adb1331407f0d1e2c177c5940c254d5f9e71331408876556d257c5940d09c3e499d13314054a5fd741b7c5940c71dbfcb9613314048d0c5ca1b7c59406060fe942f13314048d0c5ca1b7c59406060fe942f133140, '101.93860556459113', '17.07612176031014', '', 22.49, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(214, '220326129438107', '6034120108', 0, 'POLYGON ((101.773443488 17.1721263642, 101.773741548 17.172762539, 101.774011781 17.1728784981, 101.774917026 17.1724534211, 101.77516446 17.1722064468, 101.775991586 17.1722346358, 101.77631211 17.1720933702, 101.775810537 17.1706566833, 101.775446092 17.1696806268, 101.774585438 17.1699644429, 101.774966312 17.1708796348, 101.775142332 17.1712313594, 101.775268061 17.171236805, 101.773443488 17.1721263642, 101.773443488 17.1721263642))', 0x000000000103000000010000000f000000e8901d1980715940b5043179102c3140da0d45fb847159409bfa6e2a3a2c31404787b568897159406785e7c3412c314026f2943d9871594033b54be8252c31402d2e654b9c715940972ac1b8152c3140d6f59cd8a9715940ddffaf91172c314015fcfc18af7159400fdea44f0e2c3140a9133de1a6715940099e0928b02b3140dd3ca5e8a0715940ecde8630702b3140be0acdce9271594005bd2bca822b3140ac624d0c99715940b7048bc4be2b3140da6b95ee9b71594031ac80d1d52b314037e8edfd9d715940b658dd2cd62b3140e8901d1980715940b5043179102c3140e8901d1980715940b5043179102c3140, '101.77503496171762', '17.171483379422963', '', 28.36, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(215, '210824126561361', '6034120109', 0, 'POLYGON ((101.950498608 17.0185560242, 101.951515178 17.0183226456, 101.951403385 17.01757509, 101.952338742 17.017366387, 101.952345889 17.0172577201, 101.952091293 17.0166789544, 101.952026142 17.0163775539, 101.951927335 17.0161585244, 101.951128055 17.016281212, 101.950945708 17.0165633615, 101.95067625 17.0165696795, 101.950588048 17.016361168, 101.950041396 17.0165187185, 101.950393379 17.0177360512, 101.950426563 17.0183477549, 101.950498608 17.0185560242, 101.950498608 17.0185560242))', 0x00000000010300000001000000110000003a101df8d47c594031156d16c004314016caea9fe57c5940d2a0fbcab00431403df805cbe37c594036c614cd7f043140a4e6311ef37c5940f536a01f720431400bef2b3cf37c5940db6e7f006b043140728f5110ef7c5940f2ad6b1245043140ee340effed7c59409463c2513104314094ffa060ec7c594081d90df7220431401ea23448df7c5940491469012b0431406c08634bdc7c59404ff4177f3d0431405fb532e1d77c5940c68e17e93d0431403988406fd67c5940ff7bd93e30043140a36a6d7acd7c5940b5ba1b923a043140f548c03ed37c59403bdd8f598a0431406b55efc9d37c594022403f70b20431403a101df8d47c594031156d16c00431403a101df8d47c594031156d16c0043140, '101.9511256732411', '17.017239761328835', '', 24.3, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(216, '220519130277468', '6034120110', 0, 'POLYGON ((101.923958455 17.1654701931, 101.92350336 17.1657712239, 101.923021568 17.1648137216, 101.922947807 17.1642963671, 101.923267325 17.1641669482, 101.923958455 17.1654701931, 101.923958455 17.1654701931))', 0x00000000010300000001000000070000009dc5a422227b5940cad32b415c2a31408d3cd6ad1a7b5940b544a1fb6f2a314002040ec9127b59403d34683b312a3140b7bead93117b5940ce8ba3530f2a3140c995d5cf167b5940669a59d8062a31409dc5a422227b5940cad32b415c2a31409dc5a422227b5940cad32b415c2a3140, '101.9234107548084', '17.16497658260349', '', 5.61, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(217, '210828126563159', '6034120111', 0, 'POLYGON ((101.935453562 17.1671147144, 101.935686937 17.1687040005, 101.936120811 17.1686205709, 101.936300709 17.1682009005, 101.93641681 17.1681541913, 101.936709509 17.1678885755, 101.936714247 17.1671615604, 101.935453562 17.1671147144, 101.935453562 17.1671147144))', 0x0000000001030000000100000009000000dfed9d78de7b59404407a907c82a3140676d764be27b594014da742f302b314066164367e97b5940c772bdb72a2b31401a18cf59ec7b594025ced6360f2b3140fa97c540ee7b59409f5130270c2b314076c0700cf37b59400025e5befa2a3140fc235020f37b5940fb109b19cb2a3140dfed9d78de7b59404407a907c82a3140dfed9d78de7b59404407a907c82a3140, '101.936067733997', '17.167774719054833', '', 10.7, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(218, '210828126563166', '6034120113', 0, 'POLYGON ((101.921037068 17.1590615561, 101.9208872 17.1602788927, 101.921595638 17.1601975236, 101.921447782 17.1588501231, 101.921037068 17.1590615561, 101.921037068 17.1590615561))', 0x0000000001030000000100000006000000ae5d7545f27a594018801542b828314085d3ddd0ef7a5940b6629a09082931402956456cfb7a59401fc374b4022931405a2a1e00f97a594019aed366aa283140ae5d7545f27a594018801542b8283140ae5d7545f27a594018801542b8283140, '101.9212460899962', '17.159651369306477', '', 5.29, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(219, '210828126563169', '6034120114', 0, 'POLYGON ((101.917467695 17.1694518132, 101.914945101 17.1701137184, 101.914861953 17.1696200835, 101.916760957 17.1688262928, 101.916954411 17.1690915308, 101.917238725 17.1689576305, 101.917467695 17.1694518132, 101.917467695 17.1694518132))', 0x0000000001030000000100000008000000564a6ccab77a594020f1ab31612b31408c9be5758e7a5940032199928c2b3140571f26198d7a59409660c7386c2b314023242636ac7a5940ea472e33382b3140c0ca8d61af7a59400bd12295492b3140fc9f0d0ab47a59403b68a9ce402b3140564a6ccab77a594020f1ab31612b3140564a6ccab77a594020f1ab31612b3140, '101.91614721407844', '17.16947308961404', '', 11.63, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(220, '210828126563170', '6034120115', 0, 'POLYGON ((101.909326196 17.150242034, 101.909851274 17.1501023458, 101.910282123 17.1498962151, 101.910316899 17.1503960588, 101.911706641 17.1502223236, 101.911830806 17.1494087782, 101.91204025 17.1493883454, 101.912100039 17.1489342652, 101.911314433 17.1490227027, 101.911356484 17.1494547042, 101.910717855 17.1495808413, 101.910768669 17.1491118521, 101.910352271 17.1491882071, 101.91032291 17.1487327638, 101.909552676 17.1488214297, 101.909326196 17.150242034, 101.909326196 17.150242034))', 0x0000000001030000000100000011000000d44d8066327a5940b8830e43762631407483d6003b7a59408e437a1b6d263140c81af30f427a594010a62d995f263140df8ccfa1427a594048fe295b8026314006a9cf66597a5940bbfd5ef87426314057d0986f5b7a5940b51a58a73f263140af9811de5e7a594084e589503e263140dc8bd7d85f7a5940ad49568e20263140e686c5f9527a59404275125a26263140c37125aa537a5940b9c5daa942263140eec68a33497a5940de7d15ee4a263140e5e4ab084a7a59402a37c0312c26314032f22b36437a59408171c63231263140f9cf05bb427a59405c5db45913263140325a6d1c367a59406681452919263140d44d8066327a5940b8830e4376263140d44d8066327a5940b8830e4376263140, '101.91060755620235', '17.149605607640684', '', 20.67, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(221, '210828126563172', '6034120116', 0, 'POLYGON ((101.918036347 17.1820524914, 101.917506611 17.1803890982, 101.919416679 17.1797737702, 101.919851532 17.1812036599, 101.919627903 17.1812677228, 101.919510221 17.1816623497, 101.918874873 17.1818574207, 101.918790048 17.1815691384, 101.918410515 17.1816408887, 101.918481929 17.181952874, 101.918036347 17.1820524914, 101.918036347 17.1820524914))', 0x000000000103000000010000000c000000e0b9851bc17a5940e4b7f8fd9a2e3140f606a66db87a5940ed52ddfa2d2e3140ecec0db9d77a594008b05fa7052e314064c7f5d8de7a59409e2ff15c632e3140f1f7fd2edb7a5940143fbd8f672e314018e26541d97a594043e07a6c812e3140ac298ed8ce7a594000713a358e2e31403803c674cd7a59401264a7507b2e3140908ee53cc77a594037956c04802e314068c16d68c87a5940433eab76942e3140e0b9851bc17a5940e4b7f8fd9a2e3140e0b9851bc17a5940e4b7f8fd9a2e3140, '101.91870592714639', '17.180893398344306', '', 24.8, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(222, '220330129439560', '6034120118', 0, 'POLYGON ((101.915477045 17.1666528532, 101.912687905 17.1670996232, 101.912901258 17.1676929408, 101.915550945 17.167111847, 101.915477045 17.1666528532, 101.915477045 17.1666528532))', 0x0000000001030000000100000006000000e120082d977a59407247eac2a92a314081db877a697a594063d1780ac72a314096e565f96c7a59408d81b0eced2a314034a6fd62987a5940a0a38dd7c72a3140e120082d977a59407247eac2a92a3140e120082d977a59407247eac2a92a3140, '101.9140904143933', '17.167150575901157', '', 11.09, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(223, '220326129438099', '6034120119', 0, 'POLYGON ((101.891878774 17.1555696778, 101.892561396 17.1558275665, 101.894185474 17.155146163, 101.89398699 17.1548197163, 101.893418362 17.1541081951, 101.891071094 17.1551769175, 101.891878774 17.1555696778, 101.891878774 17.1555696778))', 0x0000000001030000000100000008000000e794b58a147959407766166ad32731407f5fd5b91f795940caeebd50e4273140d9d8b5553a795940552fb0a8b72731405e46351537795940d548d243a2273140e69b35c42d79594006007aa27327314005c90d4f07795940b0c1a9acb9273140e794b58a147959407766166ad3273140e794b58a147959407766166ad3273140, '101.89278075189536', '17.15503621880454', '', 20.03, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(224, '220330129439564', '6034120121', 0, 'POLYGON ((101.922479015 17.1566115831, 101.922021439 17.1566608167, 101.92165867 17.1551413576, 101.922358056 17.1550167377, 101.922482779 17.1553117888, 101.922573304 17.1550106508, 101.923053754 17.1554316031, 101.922479015 17.1566115831, 101.922479015 17.1566115831))', 0x0000000001030000000100000009000000f62a6ce5097b5940db965bb217283140d1ad3566027b5940894a5cec1a283140646ea574fc7a594028261158b7273140376e15ea077b59400dc14a2daf27314068bb35f5097b59404a946d83c2273140ee35e6700b7b5940bab72bc7ae27314052780d50137b59405014945dca273140f62a6ce5097b5940db965bb217283140f62a6ce5097b5940db965bb217283140, '101.9223134200938', '17.15575436180072', '', 10.81, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(225, '210828126563241', '6034120123', 0, 'POLYGON ((101.890506154 17.1622173246, 101.890775716 17.1622371861, 101.890993645 17.1607818426, 101.89365272 17.1611659416, 101.893390199 17.160558879, 101.890735147 17.1601026997, 101.890506154 17.1622173246, 101.890506154 17.1622173246))', 0x00000000010300000001000000080000004514860dfe7859406a001813872931409f122678027959409c7e506088293140018e350a06795940f3c1b3ff282931406a982d9b31795940ab66d02b4229314067d1154e2d7959402e63fe621a293140d170fdcd017959407b36937dfc2831404514860dfe7859406a001813872931404514860dfe7859406a00181387293140, '101.89180620884082', '17.160813294000636', '', 15.84, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(226, '220110128029041', '6034120124', 0, 'POLYGON ((101.912712625 17.1666807232, 101.912568705 17.1663302132, 101.912592335 17.1661019432, 101.912736085 17.1661581132, 101.913314025 17.1655402532, 101.913098215 17.1650671031, 101.915292325 17.1645543831, 101.915687835 17.1651085831, 101.916082625 17.1658135332, 101.912712625 17.1666807232, 101.912712625 17.1666807232))', 0x000000000103000000010000000b0000005dc136e2697a594083047f96ab2a3140ffd49186677a5940dc07ea9d942a3140f059aee9677a594097d82da8852a314010bd9c446a7a5940b9288e56892a31409a16abbc737a594062aa95d8602a314081dd7e33707a5940c07571d6412a3140e8894226947a5940f5d36d3c202a3140e22a26a19a7a594012b45c8e442a3140c4b30419a17a5940065476c1722a31405dc136e2697a594083047f96ab2a31405dc136e2697a594083047f96ab2a3140, '101.9143144059838', '17.165597548174222', '', 30.25, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(227, '211025126583490', '6034120128', 0, 'POLYGON ((101.858744105 17.1417924561, 101.859312733 17.1418776778, 101.859251713 17.1409335084, 101.858699849 17.140949848, 101.858744105 17.1417924561, 101.858744105 17.1417924561))', 0x0000000001030000000100000006000000e6a6d5a9f5765940dec4a9824c2431405e51d5fafe765940f52e7218522431407d97e5fafd765940117de93714243140402236f0f476594043890b4a15243140e6a6d5a9f5765940dec4a9824c243140e6a6d5a9f5765940dec4a9824c243140, '101.85902100216947', '17.141392413778405', '', 3.68, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(228, '211025126583491', '6034120129', 0, 'POLYGON ((101.858761875 17.1408604608, 101.858799761 17.1418232128, 101.858206322 17.141800786, 101.858197605 17.1409149261, 101.858761875 17.1408604608, 101.858761875 17.1408604608))', 0x00000000010300000001000000060000004e0b5ef4f57659407c6f606e0f243140b0d34593f676594026caac864e243140788d35daec765940c76a6a0e4d243140c1bea5b5ec765940251e2700132431404e0b5ef4f57659407c6f606e0f2431404e0b5ef4f57659407c6f606e0f243140, '101.85848220476849', '17.141351111866946', '', 3.95, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(229, '201402170136509', '603412026', 0, 'POLYGON ((POLYGON ((101.95711701191 17.074466840115, 101.95788658817 17.074478391709, 101.95813060027 17.074482053802, 101.95825114204 17.074574151495, 101.95826052713 17.074574292334, 101.95825906282 17.074664559091, 101.95823150651 17.075205877922, 101.95807988015 17.07529389108, 101.95791094796 17.075291355657, 101.9578827926 17.075290933073, 101.95783879614 17.075109695325, 101.95780125569 17.075109131872, 101.95778102088 17.075199116854, 101.95769509021 17.075288115746, 101.95765608506 17.07537781896, 101.95755284872 17.075376269328, 101.95739330166 17.07537387434, 101.95726190998 17.075371901903, 101.95721498438 17.075371197441, 101.95707420761 17.075369083989, 101.95703666714 17.075368520385, 101.957028747 17.075278112837, 101.9570129067 17.07509729774, 101.95706862167 17.074556402313, 101.95711701191 17.074466840115, 101.95711701191 17.074466840115))))', 0x, '', '', '', 7.42, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(230, '201502190150912', '603412028', 0, 'POLYGON ((POLYGON ((101.9569790343 17.074518984002, 101.95704168917 17.073490153577, 101.95747190431 17.073575043679, 101.95752963503 17.073637381223, 101.95757578896 17.073706769718, 101.95760740344 17.073775226781, 101.95766479746 17.073836276001, 101.95775736175 17.073915282554, 101.95786347999 17.073979765733, 101.95808254745 17.074041591621, 101.95825509082 17.074154793325, 101.95824013205 17.074496132678, 101.9569790343 17.074518984002, 101.9569790343 17.074518984002))))', 0x, '', '', '', 6.64, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(231, '220326129438106', '603412030', 0, 'POLYGON ((101.971212144 17.0867214318, 101.970939312 17.0862993934, 101.970840268 17.0861078316, 101.970723801 17.0858603177, 101.970606147 17.0856321789, 101.970535745 17.0854978606, 101.970666897 17.0854043923, 101.971242729 17.0854090207, 101.971544712 17.0854070292, 101.971782567 17.0853981173, 101.971969324 17.0853964829, 101.972467852 17.0853896791, 101.972542073 17.085390317, 101.972633811 17.0855451384, 101.972717206 17.0857244074, 101.972856975 17.085934274, 101.973005082 17.0861524266, 101.97311098 17.0862624645, 101.971212144 17.0867214318, 101.971212144 17.0867214318))', 0x000000000103000000010000001400000051fdfa56287e59407c7131603316314035dca3de237e5940515190b717163140cb2c383f227e5940c7a6b0290b1631409bafb856207e5940b18b18f1fa15314057aa3e691e7e594058dc8ffdeb153140f017f5411d7e5940ac271330e3153140307b0c681f7e5940fedcef0fdd153140196243d7287e59409cb0965ddd1531401229dfc92d7e594034432d3cdd153140a10582af317e594087f1a8a6dc153140e5d2d2be347e5940b93f3d8bdc1531401630cde93c7e594083261719dc15314038611b213e7e5940fbe8ca23dc153140a54ee2a13f7e594082c24349e6153140b201abff407e59408240e608f2153140dfd3e649437e59407d6fe0c9ff15314009821bb7457e5940d2b7de150e163140a09e4673477e59405de6ff4b1516314051fdfa56287e59407c7131603316314051fdfa56287e59407c71316033163140, '101.97176287421354', '17.085964403309614', '', 16.97, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(232, '220422129467977', '603412041', 0, 'POLYGON ((101.901515616 17.1223227475, 101.902355818 17.1218325101, 101.901649391 17.1195315814, 101.899865051 17.119759721, 101.900364278 17.1206866954, 101.901515616 17.1223227475, 101.901515616 17.1223227475))', 0x000000000103000000010000000700000069e38d6eb2795940c211288b501f314095ea9d32c07959401678566a301f31406ab3a59fb4795940c1f3289f991e3140f036956397795940b612b592a81e3140c91f7e919f79594029cec152e51e314069e38d6eb2795940c211288b501f314069e38d6eb2795940c211288b501f3140, '101.90124820091715', '17.12076139315798', '', 27.58, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(233, '220404129441259', '6034120502', 0, 'POLYGON ((101.884506387 17.1433690521, 101.88643456 17.1424159195, 101.88560274 17.1407720347, 101.885016342 17.1411158068, 101.884725993 17.1414009481, 101.884729346 17.1416966616, 101.884137584 17.1416928171, 101.88392133 17.1418469211, 101.883460661 17.1418869689, 101.883754363 17.1425251696, 101.884117802 17.1430547592, 101.884506387 17.1433690521, 101.884506387 17.1433690521))', 0x000000000103000000010000000d0000002951adc09b7859402c078ed5b3243140a04f0558bb785940a9aea45e7524314012631db7ad785940563ad5a2092431403254951ba478594097275f2a20243140cb76c5599f78594080b63fda322431406ab8d5679f7859403e867f3b46243140721cceb595785940ca85fffa452431408f25c52a92785940ad296f14502431400b93959e8a785940712753b45224314011b2756e8f785940f2498e877c243140b159d56295785940194d983c9f2431402951adc09b7859402c078ed5b32431402951adc09b7859402c078ed5b3243140, '101.88500192152846', '17.142161420650126', '', 29.51, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 17, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(234, '200410120576453', '6034610004', 0, 'POLYGON ((101.803055105 17.1730590833, 101.803331205 17.1733048833, 101.803528905 17.1735562833, 101.804234705 17.1740383833, 101.803521605 17.1744456833, 101.803168605 17.1740072833, 101.802852105 17.1743187833, 101.802407605 17.1739916833, 101.803055105 17.1730590833, 101.803055105 17.1730590833))', 0x000000000103000000010000000a00000018373d41657359409b0c9f994d2c3140345549c769735940b60276b55d2c3140671780046d735940f0c9402f6e2c31402012d79478735940b0858cc78d2c3140afc6e1e56c735940aeb3e878a82c314088e94a1d67735940100ac7bd8b2c3140fc9fcbed617359401d5ae127a02c314059626da55a735940ab8c0db88a2c314018373d41657359409b0c9f994d2c314018373d41657359409b0c9f994d2c3140, '101.80324262569495', '17.173832850139675', '', 8.57, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 18, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(235, '190410106132864', '6034610006', 0, 'POLYGON ((101.799922305 17.1788686833, 101.800421505 17.1801929833, 101.799734905 17.1804634834, 101.799333205 17.1793451833, 101.799922305 17.1788686833, 101.799922305 17.1788686833))', 0x000000000103000000010000000600000038d452ed31735940550d8956ca2d31405ebf1e1b3a735940ff3d9a20212e3140759c4fdb2e7359404353d7da322e31403d85754628735940f8f7e090e92d314038d452ed31735940550d8956ca2d314038d452ed31735940550d8956ca2d3140, '101.7998604283679', '17.17971438517024', '', 6.98, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 18, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(236, '220311129262509', '6034910002', 0, 'POLYGON ((101.880719705 17.1537595831, 101.880599005 17.153116783, 101.880518005 17.152604483, 101.880455605 17.152091183, 101.879938005 17.152315383, 101.879557905 17.152527883, 101.879787405 17.153195883, 101.879940505 17.1538387831, 101.879962705 17.1538150831, 101.879969005 17.1538561831, 101.879960405 17.1539238831, 101.880719705 17.1537595831, 101.880719705 17.1537595831))', 0x000000000103000000010000000d000000bd7a2eb65d78594071dcbcc95c2731405ed7edbb5b785940287457a932273140e8c030685a7859403fb55f16112731408343776259785940b5fea072ef263140e17e7ee750785940a8a91424fe263140733a3dad4a7859408f363d110c27314018fad46f4e785940e95d6bd837273140a5d9faf1507859405c457efa612731402eeb174f51785940c88bdf6c60273140ff7d846951785940afb36a1e63273140ff4f724551785940e2fc3b8e67273140bd7a2eb65d78594071dcbcc95c273140bd7a2eb65d78594071dcbcc95c273140, '101.88017360605959', '17.153034603818433', '', 9.84, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 19, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(237, '220311129262520', '6034910003', 0, 'POLYGON ((101.878667505 17.152672983, 101.879569505 17.152499883, 101.879187605 17.151597183, 101.879060505 17.151759383, 101.879010505 17.151779783, 101.878984105 17.151790383, 101.878809205 17.151671583, 101.878766405 17.151605283, 101.878695005 17.151462883, 101.878667905 17.151255283, 101.878655905 17.151211783, 101.878381105 17.151055483, 101.878242305 17.151123383, 101.878129905 17.151112583, 101.877871405 17.150915283, 101.878667505 17.152672983, 101.878667505 17.152672983))', 0x00000000010300000001000000110000001b82a1163c785940bff79c93152731402ca2e4dd4a785940fb207a3b0a27314082a1169c447859409626af12cf263140890bfe86427859409dd8f2b3d926314030f446b541785940d12d340adb263140722b8c464178594013d50abcdb26314085b9f6683e785940b1b7e8f2d32631401a9372b53d785940c562949acf2631408c68f9893c785940fa0a8145c626314045014f183c7859400dd58daab8263140631afae53b7859403ec1bed0b52631408fd9616537785940d25d7792ab263140137c361f3578594059a5a305b026314055e7c54733785940c4ff7150af26314063a48b0b2f7859409bf34c62a22631401b82a1163c785940bff79c93152731401b82a1163c785940bff79c9315273140, '101.87874283251766', '17.151916062056056', '', 9.18, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 19, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(238, '210312122250171', '6034910004', 0, 'POLYGON ((101.833155005 17.1603995831, 101.833652505 17.1608090831, 101.833267805 17.1617694832, 101.832774605 17.1612984831, 101.833155005 17.1603995831, 101.833155005 17.1603995831))', 0x000000000103000000010000000600000051be5e6952755940dfb473f20f293140064d09905a75594072d0b8c82a29314039d27c4254755940b7d58fb969293140845adb2d4c75594015cf7ddb4a29314051be5e6952755940dfb473f20f29314051be5e6952755940dfb473f20f293140, '101.83321449054391', '17.16107359864402', '', 4.64, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 19, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(239, '220311129262519', '6034910005', 0, 'POLYGON ((101.876647405 17.150877683, 101.877423505 17.150551583, 101.877791205 17.151155283, 101.877918905 17.151102083, 101.878606005 17.152695083, 101.877919205 17.152802083, 101.876647405 17.150877683, 101.876647405 17.150877683))', 0x00000000010300000001000000080000004aa6b7fd1a785940672e7aeb9f263140deadeab42778594095586d8c8a263140408c29bb2d785940461ad51cb2263140f860c6d22f785940add748a0ae263140d462ae143b785940b9be630617273140578008d42f785940e53e8d091e2731404aa6b7fd1a785940672e7aeb9f2631404aa6b7fd1a785940672e7aeb9f263140, '101.87766437580113', '17.151680207705763', '', 14.09, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 19, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(240, '220311129262510', '6034910006', 0, 'POLYGON ((101.881059395 17.1520387663, 101.880731033 17.1520981027, 101.880457293 17.1521952822, 101.880748322 17.1537577589, 101.880864418 17.1537315172, 101.881028728 17.1536665993, 101.881131178 17.1536096702, 101.881431235 17.1535268808, 101.881528646 17.1534972168, 101.881609619 17.1534713119, 101.881059395 17.1520387663, 101.881059395 17.1520387663))', 0x000000000103000000010000000c000000f2d6f1466378594091fb3803ec263140abd3b1e55d78594051e1b8e6ef2631406cbd8b69597859408da71f45f6263140cdbf352e5e78594054fb21ab5c27314049e12615607859400cbddef25a2731402d6651c662785940257bbab156273140be3f067464785940bddb9df652273140ddff8d5e69785940c817a4894d273140a94320f76a785940db2ef6974b2731406b5cc04a6c785940167c59e549273140f2d6f1466378594091fb3803ec263140f2d6f1466378594091fb3803ec263140, '101.88097608415158', '17.152905906219782', '', 8.8, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 19, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(241, '220311129262512', '6034910009', 0, 'POLYGON ((101.876641705 17.1509160136, 101.877737035 17.1525538719, 101.876952721 17.1522218938, 101.876476457 17.1520247863, 101.876253016 17.1518912222, 101.875915936 17.1514685803, 101.876224421 17.1512402457, 101.87603 17.1510583405, 101.876641705 17.1509160136, 101.876641705 17.1509160136))', 0x000000000103000000010000000a0000003852cfe51a785940cdda8e6ea226314008f4f4d72c7859404db042c50d27314053354efe1f7859402f9b9703f8263140daa1b530187859400357ad18eb26314073af87871478594002e6d757e226314093cab6010f78594093c216a5c6263140b309980f14785940d91e45aeb7263140271422e0107859404c3c68c2ab2631403852cfe51a785940cdda8e6ea22631403852cfe51a785940cdda8e6ea2263140, '101.87671571550362', '17.151678206112454', '', 8.77, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 19, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(242, '210121121118079', '6034910010', 0, 'POLYGON ((101.841286905 17.141682783, 101.842542905 17.1412927829, 101.844233105 17.1408629829, 101.844037505 17.1400513829, 101.842383305 17.1407521829, 101.841044405 17.1413722829, 101.841286905 17.141682783, 101.841286905 17.141682783))', 0x0000000001030000000100000008000000cce107a5d77559402a64a75245243140eb9c1339ec75594061b789c32b2431403c0b4aea07765940c3c5b0980f243140a324e2b504765940a9504d68da233140f86aaa9be97559406765c655082431405d7de9abd3755940ca9d53f930243140cce107a5d77559402a64a75245243140cce107a5d77559402a64a75245243140, '101.84283034074627', '17.14090518663894', '', 13.9, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 19, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(243, '210320122382911', '6034920002', 0, 'POLYGON ((101.788381578 17.1629344031, 101.788349859 17.1629986292, 101.788225733 17.1626974384, 101.788162833 17.1625152338, 101.788126679 17.1624589727, 101.788124139 17.1624176033, 101.788161046 17.1624016861, 101.788361238 17.1623506554, 101.789056644 17.1621865211, 101.789339054 17.1621318149, 101.789435151 17.1621614206, 101.78935457 17.1622422443, 101.789297427 17.1622749398, 101.789259405 17.1623105772, 101.789206513 17.1623325113, 101.788992995 17.1623941303, 101.789019064 17.1624905338, 101.789025968 17.1625737559, 101.78893237 17.1626420693, 101.788918473 17.1627487534, 101.788888381 17.1627880717, 101.788717935 17.1628543821, 101.788611886 17.1629580618, 101.788540995 17.1629728402, 101.788515349 17.162945518, 101.788481075 17.1629566461, 101.788449377 17.1629236171, 101.788381578 17.1629344031, 101.788381578 17.1629344031))', 0x000000000103000000010000001d000000d99101d87472594031b5ac11b6293140848df75274725940f3b43547ba2931407146584a727259402b12118aa629314018ea854271725940d6452e999a2931403fdae1aa7072594032b046e9962931405d8c3aa070725940dc773633942931404623073b71725940619d2a289329314038a9b182747259405b6d03d08f293140fa2a70e77f725940fdf94b0e85293140ad98f38784725940faa27a7881293140e7f6021b8672594060262e698329314048c607c984725940534c2db5882931400bf25ad983725940c066b7d98a2931404422e139837259406fde9c2f8d29314003c8085c827259406e1c9b9f8e293140149379dc7e7259406cb366a9922931403cf3d0497f725940a194c8fa982931404e10c6667f72594044c7046f9e293140f8f931de7d725940e69820e9a2293140b22fe8a37d7259405951fde6a9293140b925b1257d7259406221a47aac293140fe25ca5a7a7259403a2125d3b0293140d7e6fc9d78725940f10c9a9eb72931402445a6747772594094cb8a96b82931405616150977725940fcd626ccb6293140f5a853797672594054aad986b7293140103160f475725940c630b75cb5293140d99101d87472594031b5ac11b6293140d99101d87472594031b5ac11b6293140, '101.78867188661711', '17.162538880753136', '', 3.85, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(244, '200615120645614', '6034920004', 0, 'POLYGON ((101.788325205 17.1630112832, 101.788368905 17.1633252832, 101.786857105 17.1638825832, 101.786762505 17.1635032832, 101.788325205 17.1630112832, 101.788325205 17.1630112832))', 0x00000000010300000001000000060000009a858feb737259401639821bbb293140220adaa27472594035f48dafcf2931406a26e7dd5b7259405e3a7f35f42931406b2c1f515a725940f421e659db2931409a858feb737259401639821bbb2931409a858feb737259401639821bbb293140, '101.78755080677125', '17.163439891847766', '', 4.2, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(245, '220213128780068', '6034920008', 0, 'POLYGON ((101.786824131 17.1635337533, 101.786912838 17.1640739903, 101.786788195 17.1641206944, 101.786763162 17.1640248956, 101.786689589 17.1640047039, 101.78653962 17.1640378458, 101.786504102 17.1640639696, 101.786562933 17.1642142639, 101.786484224 17.1642828873, 101.786382157 17.1643750017, 101.786340578 17.1644437387, 101.786339632 17.1643231997, 101.78622875 17.164367987, 101.786211347 17.1644284291, 101.786162462 17.1645495196, 101.786145083 17.1645832754, 101.786101914 17.1645422203, 101.785955729 17.1643651035, 101.785859904 17.1642262557, 101.785806394 17.1641379731, 101.785774502 17.1641073897, 101.785712624 17.1640326946, 101.785637783 17.1639266584, 101.785611745 17.1638643487, 101.785551767 17.1637963691, 101.785504021 17.1637569804, 101.785958365 17.1635900633, 101.786172662 17.1635090344, 101.786405189 17.1634263903, 101.786744434 17.1632958742, 101.786824131 17.1635337533, 101.786824131 17.1635337533))', 0x0000000001030000000100000020000000509699535b72594034371a59dd293140ce00aac75c7259407576c6c0002a3140d999dfbc5a725940790b57d0032a3140349fe0535a725940f2541a89fd293140f5364a1f5972594003a45736fc293140213a46aa567259406d045f62fe293140a1104d15567259404ae2a718002a3140c65e0e0c57725940bafc2cf2092a31409939edc155725940f73e7c710e2a3140459ed31554725940da94e87a142a3140c6816e67537259409cbf1ffc182a314046bf76635372594082afd015112a3140331b649251725940a2ac3805142a3140fcc6654951725940648445fb172a314080e85b7c507259402841d5ea1f2a31405b59773350725940c24f2921222a3140fefc667e4f725940eeff5e701f2a31402a0a42194d725940db22d8d4132a3140bcba56874b72594044605dbb0a2a3140efcde6a64a725940097f3af2042a3140b90723214a7259401ecb1ff1022a314099089a1d4972594021c8f20bfe2931402a1fb2e34772594044c5f418f729314039087c764772594097a59203f32931401f25eb7a46725940f17c108fee2931409344a8b245725940494f3bfaeb293140546c50244d725940f6d2d309e1293140271324a7507259403a5963badb293140390a6e76547259404fa4d94fd6293140c39553055a725940bf4227c2cd293140509699535b72594034371a59dd293140509699535b72594034371a59dd293140, '101.78628058907562', '17.163884731876593', '', 6.8, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(246, '210324122429374', '6034920010', 0, 'POLYGON ((101.78779351 17.1654575494, 101.786974096 17.1642754444, 101.78692062 17.1640933438, 101.786923742 17.1639121446, 101.78838737 17.1633010777, 101.788441628 17.1634378783, 101.788430634 17.1635283278, 101.788520596 17.1637835087, 101.788871027 17.1637075246, 101.789143724 17.1643099873, 101.789238367 17.1642933687, 101.789274852 17.164366449, 101.788586612 17.164881117, 101.78779351 17.1654575494, 101.78779351 17.1654575494))', 0x000000000103000000010000000f000000de5c78356b7259409f8c0b6d5b2a3140a04799c85d725940df3b9df40d2a3140addc4de85c725940bf1c7905022a3140801566f55c72594067797425f6293140afae4cf074725940811f7419ce29314029c4dfd375725940e4399610d7293140730cc3a575725940dede13fedc293140b702171f777259409a7d4db7ed293140866ee7dc7c725940204480bce82931401d9bad548172594014dc2538102a3140dcc0a3e182725940248455210f2a31404c39ab7a83725940c0036beb132a31409f26fb3378725940323e1da6352a3140de5c78356b7259409f8c0b6d5b2a3140de5c78356b7259409f8c0b6d5b2a3140, '101.78803029694917', '17.164318126694422', '', 20.34, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(247, '210423122483413', '6034920011', 0, 'POLYGON ((101.802125205 17.1636003832, 101.803378305 17.1643170832, 101.803462005 17.1641638832, 101.803397905 17.1640287832, 101.803023705 17.1638889832, 101.802580005 17.1635169832, 101.802337005 17.1633589832, 101.802170405 17.1632619832, 101.802125205 17.1636003832, 101.802125205 17.1636003832))', 0x000000000103000000010000000a0000006db1f404567359400275f7b6e12931409e92d68c6a735940a38432af102a31406ec3e6eb6b7359404387eda4062a314098e90bdf6a735940597253cafd293140d1b889bd64735940c904dfa0f4293140817986785d735940412fbf3fdc2931401e364f7d59735940105af2e4d1293140d2d289c2567359402c868e89cb2931406db1f404567359400275f7b6e12931406db1f404567359400275f7b6e1293140, '101.80272695050961', '17.16379479003568', '', 2.85, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(248, '210423122483414', '6034920012', 0, 'POLYGON ((101.80201982 17.1641280677, 101.802096963 17.163584837, 101.802767705 17.1639578974, 101.803122789 17.1641714531, 101.803317911 17.1643208693, 101.803356994 17.1643617797, 101.803348715 17.1644029694, 101.803333978 17.1644492807, 101.803297463 17.1645039213, 101.803244635 17.1645376094, 101.803142328 17.1644878508, 101.803051091 17.1644525495, 101.803034605 17.1644765254, 101.80289323 17.1645595757, 101.802802699 17.164671745, 101.80201982 17.1641280677, 101.80201982 17.1641280677))', 0x00000000010300000001000000110000003469f04a547359408e200b4c042a31409413808e55735940570925b2e0293140a3d0cb8b6073594001410f25f9293140595b205d667359405500ee23072a31404e02878f697359409cb1b7ee102a31408b0f74336a7359401b86149d132a31405a8dba106a73594034f02050162a3140a3d1ead2697359400d751a59192a3140de22c33969735940190cd2ed1c2a3140cc802f5c68735940c45503231f2a3140c63214af667359407cc633e01b2a31402d37673065735940a9d8f18f192a3140008241eb647359407f8d31221b2a3140e841499a6273594009e08b93202a31401d56921e61735940aa596fed272a31403469f04a547359408e200b4c042a31403469f04a547359408e200b4c042a3140, '101.80261788097965', '17.164169169583683', '', 5.01, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(249, '210423122483417', '6034920013', 0, 'POLYGON ((101.801862105 17.1648131832, 101.801353005 17.1651129832, 101.802222305 17.1652586832, 101.802685805 17.1653788832, 101.802928305 17.1654016832, 101.803318605 17.1648036832, 101.803095305 17.1646312832, 101.802861205 17.1647104832, 101.801994505 17.1641860832, 101.801862105 17.1648131832, 101.801862105 17.1648131832))', 0x000000000103000000010000000b0000001c386fb5517359402dcb5f32312a3140af411d5e497359402ffd2ed8442a31403106399c577359405ab99f644e2a31400f5c48345f73594002cb3e45562a31407ec0662d637359401f0cc4c3572a3140932f709269735940b69afd92302a3140f4a2d9e965735940153e9946252a3140f0acf6136273594001a75a772a2a3140fda2c2e05373594066cd6119082a31401c386fb5517359402dcb5f32312a31401c386fb5517359402dcb5f32312a3140, '101.80241468223271', '17.164896388674887', '', 8.46, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(250, '200326120505186', '603492009', 0, 'POLYGON ((101.806463593 17.1654595224, 101.806191835 17.1647227382, 101.8058638 17.1641247772, 101.805771254 17.1639150412, 101.80505144 17.1641199221, 101.805111194 17.1648276817, 101.805254843 17.1648236902, 101.80541689 17.1657336668, 101.806463593 17.1654595224, 101.806463593 17.1654595224))', 0x000000000103000000010000000a000000615679199d7359401085258e5b2a31402568a3a598735940007af5442b2a3140f081c245937359408c89d614042a31402aff97c191735940c8460d56f6293140749979f685735940a40a62c3032a3140e8f719f18673594083609e25322a31405ce89b4b89735940d903a7e2312a31408c8c48f38b7359408ec086856d2a3140615679199d7359401085258e5b2a3140615679199d7359401085258e5b2a3140, '101.80569686066057', '17.164843354115174', '', 11.62, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(251, '210316122317894', '6034922001', 0, 'POLYGON ((101.804187305 17.1648300832, 101.805221205 17.1648530832, 101.805413105 17.1657642832, 101.804345805 17.1659621832, 101.804187305 17.1648300832, 101.804187305 17.1648300832))', 0x000000000103000000010000000600000056b507ce77735940afbde84d322a3140536185be8873594020fdc8cf332a3140ab6f68e38b7359405b302f876f2a314096c9d3667a7359407e37657f7c2a314056b507ce77735940afbde84d322a314056b507ce77735940afbde84d322a3140, '101.80476670341038', '17.16535833909545', '', 8.03, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(252, '201805261167381', '6034922002', 0, 'POLYGON ((101.802585405 17.1623430832, 101.802699105 17.1621565832, 101.804000905 17.1616635832, 101.804056005 17.1616517832, 101.804093305 17.1616674832, 101.804152405 17.1623933832, 101.804182805 17.1626093832, 101.804657505 17.1627211832, 101.804814305 17.1628082832, 101.804824805 17.1628730832, 101.804757705 17.1628709832, 101.802585405 17.1623430832, 101.802585405 17.1623430832))', 0x000000000103000000010000000d00000034ae2c8f5d7359406813f9508f2931403920116c5f735940d4ac0518832931407b3b36c07473594055ccdac862293140286851a775735940202fe2026229314015fac34376735940ae2b490a63293140621ea63b7773594049eedd9c92293140c1de27bb77735940e2ddbec4a02931402e1d31827f735940de357018a8293140fdd4db1382735940a6dcbbcdad293140031fe63f8273594021bee50cb2293140750b762681735940b64faae9b129314034ae2c8f5d7359406813f9508f29314034ae2c8f5d7359406813f9508f293140, '101.80363753045737', '17.162254767438252', '', 7.64, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 20, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(253, '210302122059296', '6034930004', 0, 'POLYGON ((101.797697405 17.1732473833, 101.798465405 17.1734313833, 101.798954105 17.1720687833, 101.799221505 17.1712834833, 101.799289005 17.1712027833, 101.799739705 17.1713709833, 101.800015105 17.1706583833, 101.799640205 17.1704706833, 101.797697405 17.1732473833, 101.797697405 17.1732473833))', 0x000000000103000000010000000a0000000fa56a790d7359401e64c5f0592c3140985da40e1a735940a05fc7ff652c3140b8fe6510227359409eef24b30c2c3140098ff47126735940541eff3bd92b3140c121128d27735940f74113f2d32b3140699271ef2e735940c2c100f8de2b3140fc118e7233735940ce0f8f44b02b3140ac421c4e2d73594045b379f7a32b31400fa56a790d7359401e64c5f0592c31400fa56a790d7359401e64c5f0592c3140, '101.7988136806291', '17.172087816394384', '', 10.89, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 21, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(254, '200320120443163', '603493003', 0, 'POLYGON ((101.799733259 17.1713936794, 101.799461146 17.1713136506, 101.799264816 17.1712352532, 101.798982171 17.1720494489, 101.79867277 17.1728986951, 101.798489323 17.1733815266, 101.79857083 17.1733644677, 101.798634991 17.1733535317, 101.798785871 17.173019052, 101.799022191 17.1731032286, 101.798978268 17.1732817142, 101.799046264 17.1732907611, 101.799733259 17.1713936794, 101.799733259 17.1713936794))', 0x000000000103000000010000000e0000006d3b68d42e7359409dc3c774e02b3140881f155f2a73594074af1e36db2b314010649d2727735940916ad412d62b31400ea21d86227359400152c46e0b2c3140c4d664741d735940bff9c016432c31405f1ff6721a735940417a52bb622c3140ef98d3c81b735940590f1f9d612c314052f2efd51c7359402f4ca5e5602c3140ec1cc64e1f735940c8ec01fa4a2c3140e4c7f82d2373594044ab417e502c314095d1be7522735940dc7bbf305c2c3140bef7f092237359409a9f87c85c2c31406d3b68d42e7359409dc3c774e02b31406d3b68d42e7359409dc3c774e02b3140, '101.79915955785424', '17.172254856204447', '', 7.1, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 21, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(255, '200318120416641', '6034990001', 0, 'POLYGON ((101.800124005 17.1630416832, 101.800077105 17.1631342832, 101.799971905 17.1633718832, 101.799911605 17.1634494832, 101.799853805 17.1635606832, 101.799810705 17.1636146832, 101.799210705 17.1632921832, 101.799086405 17.1632228832, 101.798939705 17.1631257832, 101.798981705 17.1630431832, 101.799034105 17.1629947832, 101.799295605 17.1626601832, 101.799434605 17.1625177832, 101.799479605 17.1624611832, 101.799626105 17.1622823832, 101.799755405 17.1621334832, 101.799892705 17.1619520832, 101.799987805 17.1617799832, 101.800083805 17.1617223832, 101.800160205 17.1617412832, 101.800226305 17.1617480832, 101.800271105 17.1617565832, 101.800380305 17.1617783832, 101.800977505 17.1619253832, 101.800694205 17.1621707832, 101.800614305 17.1622749832, 101.800441705 17.1624939832, 101.800209505 17.1629065832, 101.800124005 17.1630416832, 101.800124005 17.1630416832))', 0x000000000103000000010000001e0000000d8e503b35735940923a8919bd29314037109a76347359404e331b2bc3293140686c5cbd32735940106e5fbdd22931409eca71c03173594061e448d3d7293140988303ce307359406341e91cdf293140ce3d3d1930735940497de1a6e2293140a325a8442673594054893a84cd293140ce094e3b24735940864d91f9c8293140db1c00d42173594078fa7f9cc2293140f34429842273594003aeb332bd2931404657f15f237359403a43af06ba293140f0d3c0a82773594093340719a429314001f1c2ef29735940c7dcf3c39a293140d15281ac2a735940a6b65c0e972931402f80f8122d7359409a8f98568b2931408d514b312f7359403aee7794812931402d122c7131735940f2dc14b17529314020eb0c0033735940cefdb8696a2931403122b492347359400ce05aa366293140480226d335735940d0c171e067293140ee5764e836735940e18887526829314029fa4ba437735940b7c122e1682931409a95506e39735940340be14e6a293140a1332737437359407c3c21f1732931409724e8923e735940f135420684293140d32bc8433d7359408ecd71da8a2931401655d86f3a7359400aa4a73499293140187beda136735940a925ef3eb42931400d8e503b35735940923a8919bd2931400d8e503b35735940923a8919bd293140, '101.79990094140545', '17.162623672230946', '', 12.24, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 22, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(256, '201223120723442', '6034990003', 0, 'POLYGON ((101.800862805 17.1620605832, 101.800510505 17.1624693832, 101.800226405 17.1629622832, 101.799951905 17.1634308832, 101.799841905 17.1636731832, 101.801848205 17.1647561832, 101.801954905 17.1641777832, 101.802128105 17.1632640832, 101.801405905 17.1630884832, 101.801506005 17.1623549832, 101.800862805 17.1620605832, 101.800862805 17.1620605832))', 0x000000000103000000010000000c000000b3031156417359408fd068cd7c29314016c569903b735940ff71ef9797293140b9b7cfe83673594053d36ce5b729314044967969327359401a803a9bd629314080fc199c307359408313597ce62931403435227b5173594065a812762d2a3140e075aa3a53735940e392218e072a31405b8b1e115673594097f4c9accb293140f632fe3b4a735940c0b2b52ac029314072c1d7df4b735940c72f9f1890293140b3031156417359408fd068cd7c293140b3031156417359408fd068cd7c293140, '101.80106457452098', '17.16342401488571', '', 24.32, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 22, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(257, '220105127932401', '6035040004', 0, 'POLYGON ((101.792503305 17.1569579831, 101.793408105 17.1568814831, 101.793886905 17.1565173831, 101.793927105 17.1561657831, 101.793171005 17.1553807831, 101.792623405 17.1557253831, 101.792460905 17.1556884831, 101.792503305 17.1569579831, 101.792503305 17.1569579831))', 0x00000000010300000001000000090000009a3cc85fb8725940b842fc652e283140ced6c932c77259403243876229283140a66c050bcf72594085abf1851128314082d8a1b3cf725940322b137bfa27314012a75150c372594064d7f508c72731403aa18457ba7259405292639edd2731405995f1adb772594042474f33db2731409a3cc85fb8725940b842fc652e2831409a3cc85fb8725940b842fc652e283140, '101.7931101568398', '17.156244561838463', '', 12.23, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 23, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(258, '200407120567533', '6035050002', 0, 'POLYGON ((101.805348805 17.1755922833, 101.805334705 17.1755419833, 101.804516105 17.1762202833, 101.805291505 17.1775363833, 101.805523405 17.1776644833, 101.806290405 17.1773742833, 101.805348805 17.1755922833, 101.805348805 17.1755922833))', 0x000000000103000000010000000800000040d6b6d58a7359401634aa9df32c3140c413939a8a7359403659c551f02c314024051e317d73594055aac1c51c2d31402f6e61e589735940a61f4006732d3140ce280ab28d7359402a6f696b7b2d31406e2312439a735940c9eca966682d314040d6b6d58a7359401634aa9df32c314040d6b6d58a7359401634aa9df32c3140, '101.80538579206997', '17.17668725252367', '', 13.76, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 24, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(259, '210401122444143', '6035050003', 0, 'POLYGON ((101.803983645 17.1767462733, 101.804552575 17.1762455533, 101.805370995 17.1777366033, 101.804742765 17.1780613233, 101.803983645 17.1767462733, 101.803983645 17.1767462733))', 0x0000000001030000000100000006000000cf72d177747359406d83673e3f2d3140686215ca7d7359402a7db76d1e2d3140022bc9328b735940c3796225802d31408757cce7807359408841486d952d3140cf72d177747359406d83673e3f2d3140cf72d177747359406d83673e3f2d3140, '101.80466338064876', '17.177187767449134', '', 8.59, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 24, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(260, '210302122059294', '6035050004', 0, 'POLYGON ((101.800442677 17.1747837616, 101.801433768 17.1737332065, 101.800856513 17.173350159, 101.800123405 17.1744878919, 101.800442677 17.1747837616, 101.800442677 17.1747837616))', 0x00000000010300000001000000060000006a02ec733a735940a1f1eba0be2c314015dedbb04a7359408f2588c7792c3140e907ad3b4173594052a90fad602c31404e4fcc38357359402c420d3dab2c31406a02ec733a735940a1f1eba0be2c31406a02ec733a735940a1f1eba0be2c3140, '101.80075506570823', '17.174049881378643', '', 5.77, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 24, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(261, '210410122455940', '6035050009', 0, 'POLYGON ((101.810887105 17.1668862832, 101.810717505 17.1663863832, 101.810489605 17.1659055832, 101.810431805 17.1658479832, 101.809798805 17.1653861832, 101.809658205 17.1653047832, 101.809275705 17.1655353832, 101.810266105 17.1672730832, 101.810887105 17.1668862832, 101.810887105 17.1668862832))', 0x000000000103000000010000000a000000482e0793e5735940b87e380fb92a31404391accbe2735940fe574a4c982a314045ceca0fdf7359405c11cec9782a31403f875c1dde73594099f36f03752a314027f45dbed3735940e40db8bf562a314070daa570d173594064b70d6a512a3140089b532ccb735940c22ce186602a314011825d66db73594058d8a568d22a3140482e0793e5735940b87e380fb92a3140482e0793e5735940b87e380fb92a3140, '101.81012614209247', '17.166256249543', '', 11.01, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 24, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(262, '200320120443160', '603505006', 0, 'POLYGON ((101.7973556 17.1866333048, 101.800066298 17.1865895364, 101.80059665 17.1865815891, 101.800478631 17.186665466, 101.800225345 17.1868592283, 101.79743494 17.1868923972, 101.7973556 17.1866333048, 101.7973556 17.1866333048))', 0x00000000010300000001000000080000001452c8df07735940dd754433c72f3140ad22464934735940229df454c42f31406142bbf93c73594060389fcfc32f3140ae52b90a3b7359403ac3d74ec92f3140248d5de4367359401a81a201d62f314037ff8e2c0973594055d81d2ed82f31401452c8df07735940dd754433c72f31401452c8df07735940dd754433c72f3140, '101.79891868754906', '17.186738633369647', '', 5.92, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 24, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(263, '201902196797918', '6035160003', 0, 'POLYGON ((101.790780705 17.1569685831, 101.790794605 17.1574441831, 101.791535505 17.1575154831, 101.791605405 17.1573832831, 101.791645805 17.1573555831, 101.791709505 17.1573167831, 101.791698205 17.1570801831, 101.791172705 17.1569658831, 101.791028805 17.1569292831, 101.790978705 17.1569298831, 101.790855805 17.1569329831, 101.790780705 17.1569685831, 101.790780705 17.1569685831))', 0x000000000103000000010000000d0000001a92ac269c725940f9e9d2172f2831400295f9609c725940255c11434e28314043e68884a8725940348748ef52283140f573b7a9a972594003da55454a283140669f2a53aa725940ec419b744828314012fa575eab725940c486a6e945283140b9b1f22eab725940a2432968362831409f5dd792a2725940948086ea2e283140d0ea4737a072594000b37a842c283140ad7325659f725940faad8b8e2c283140ea94aa619d72594006148ec22c2831401a92ac269c725940f9e9d2172f2831401a92ac269c725940f9e9d2172f283140, '101.79121746675662', '17.15722585515082', '', 3.21, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 25, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(264, '210306122136158', '6035160010', 0, 'POLYGON ((101.791579305 17.1575289831, 101.790800105 17.1574614831, 101.790792705 17.1583659831, 101.791221205 17.1582695831, 101.791775005 17.1582242831, 101.791971305 17.1582794831, 101.791897205 17.1577337831, 101.791837105 17.1576551831, 101.791579305 17.1575289831, 101.791579305 17.1575289831))', 0x000000000103000000010000000a00000096ca3e3ca97259402e96c6d1532831407f290b789c7259404e4b50654f283140fc7801599c725940a1364eac8a2831401cd8435ea3725940b65dfb5a84283140fa101271ac725940f958f962812831401c9669a8af725940d38a13018528314034519d71ae7259408ce3bf3d61283140ff6e8975ad7259409b750f175c28314096ca3e3ca97259402e96c6d15328314096ca3e3ca97259402e96c6d153283140, '101.79132599396947', '17.157905369951802', '', 6.19, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 25, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(265, '200403120555066', '6037150003', 0, 'POLYGON ((101.810184943 17.1605441341, 101.810499055 17.1608842623, 101.8118962 17.1603084476, 101.811724662 17.1599160171, 101.810184943 17.1605441341, 101.810184943 17.1605441341))', 0x00000000010300000001000000060000006279f211da7359402e869d6b192931407daa6d37df735940040505b62f293140caaf7a1bf6735940ebb673f9092931406329ff4bf3735940138d8f41f02831406279f211da7359402e869d6b192931406279f211da7359402e869d6b19293140, '101.81106627378216', '17.160409900174752', '', 5.04, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 26, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(266, '210322122409881', '6037150008', 0, 'POLYGON ((101.809765305 17.1637521832, 101.810442705 17.1634017832, 101.811029105 17.1630651832, 101.811610305 17.1626043832, 101.811755805 17.1621932832, 101.812153505 17.1617870832, 101.812381105 17.1615086832, 101.812038005 17.1614868832, 101.811907805 17.1617584832, 101.811607905 17.1618546832, 101.811435705 17.1621541832, 101.811192005 17.1623310832, 101.810985805 17.1625450832, 101.810843505 17.1625597832, 101.810536105 17.1625376832, 101.810315505 17.1626500832, 101.810130105 17.1628974832, 101.809954505 17.1631728832, 101.809765305 17.1637521832, 101.809765305 17.1637521832))', 0x0000000001030000000100000014000000459adb31d37359401b7ebfa9eb2931406f50144bde735940bcf302b3d429314011859ee6e7735940d3f5cca3be2931409544596cf1735940bf07dc70a02931400bb49ecef373594091f9be7f85293140a2d3b152fa7359405d42d7e06a2931404177510dfe735940315d10a25829314062a5406ef8735940b413523457293140e675274cf6735940cf310301692931409b494862f1735940670cfb4e6f29314007f20590ee735940ebc0c1ef822931401b10df91ea735940e077a5878e293140b27f0131e77359403878f88d9c293140890928dce4735940257d98849d293140f1ccd3d2df7359402cb6d1119c293140ac5a9035dc7359402209946fa3293140b99ef02bd9735940d8f142a6b3293140438e6b4bd673594023f0b4b2c5293140459adb31d37359401b7ebfa9eb293140459adb31d37359401b7ebfa9eb293140, '101.81094014511784', '17.162702562831132', '', 10.32, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 26, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(267, '210219121807877', '6037150010', 0, 'POLYGON ((101.811688855 17.1599138722, 101.811474917 17.1593522634, 101.811090225 17.1593895246, 101.809862331 17.1599150499, 101.810274685 17.1605390134, 101.811688855 17.1599138722, 101.811688855 17.1599138722))', 0x00000000010300000001000000070000002cb0cfb5f27359409646931df028314084827d34ef735940b9d8574fcb283140bd9ef9e6e8735940647b7bc0cd283140127ad0c8d47359406e755531f028314082365a8adb735940fd48b415192931402cb0cfb5f27359409646931df02831402cb0cfb5f27359409646931df0283140, '101.81079892274715', '17.159909491518384', '', 8.56, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 26, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(268, '220527130519780', '6037160001', 0, 'POLYGON ((101.830554745 17.1552800131, 101.830487105 17.1550908931, 101.830936385 17.1549716431, 101.830724315 17.1539324731, 101.829747125 17.1534879731, 101.829957985 17.1545142131, 101.830226835 17.1552357531, 101.830270555 17.1552959731, 101.830299625 17.1553293031, 101.830331715 17.1553503731, 101.830356385 17.1553544931, 101.830554745 17.1552800131, 101.830554745 17.1552800131))', 0x000000000103000000010000000d00000002d416cf27755940a9fc516ec027314062ee62b3267559409dc56909b42731406aa8cd0f2e75594001ecba38ac273140b03a51962a755940c4c1591e68273140cd74af931a75594038cbe0fc4a27314042a818081e7559401c08543e8e2731408b25bc6f2275594004bcc287bd273140a2231c27237559403daa157ac127314063d009a123755940cbec44a9c32731406c30a22724755940cae2c30ac527314063661b8f24755940b226e34fc527314002d416cf27755940a9fc516ec027314002d416cf27755940a9fc516ec0273140, '101.83034805061061', '17.154414351412026', '', 9.12, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 27, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(269, '210408122453523', '6037160002', 0, 'POLYGON ((101.790411005 17.1742099833, 101.789328305 17.1742719833, 101.788803805 17.1732903833, 101.789661305 17.1722501833, 101.790047805 17.1722747833, 101.790159305 17.1722665833, 101.790411005 17.1742099833, 101.790411005 17.1742099833))', 0x0000000001030000000100000008000000e7370a189672594003e98406992c31400ef2dd5a84725940efe1b4169d2c3140dd5bf4c27b7259401cfc30c25c2c314011f991cf89725940e6008896182c31401a30ab2490725940f13240331a2c3140ba6655f8917259409877ada9192c3140e7370a189672594003e98406992c3140e7370a189672594003e98406992c3140, '101.78969502662135', '17.173342249705566', '', 16.64, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 27, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(270, '210316122317869', '6037730001', 0, 'POLYGON ((101.820689005 17.1724327833, 101.819651405 17.1720711833, 101.819574205 17.1711429833, 101.820683205 17.1716797833, 101.821336505 17.1717575833, 101.821361105 17.1726231833, 101.820689005 17.1724327833, 101.820689005 17.1724327833))', 0x00000000010300000001000000080000005b2a2d2b8674594021080d8e242c31401ca62a2b7574594087db68db0c2c3140b1c75de773745940a036cc06d02b31407e76d912867459406aa8ce34f32b31401afffcc6907459400e1d134ef82b31409c0b2b2e917459400fce6e08312c31405b2a2d2b8674594021080d8e242c31405b2a2d2b8674594021080d8e242c3140, '101.82047045999919', '17.171936251107173', '', 10.45, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 28, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(271, '210330122440516', '6037730002', 0, 'POLYGON ((101.822572305 17.1729651833, 101.823059405 17.1728019833, 101.822803105 17.1717509833, 101.822509805 17.1715972833, 101.821324805 17.1717507833, 101.821375205 17.1727674833, 101.821488805 17.1731168833, 101.822572305 17.1729651833, 101.822572305 17.1729651833))', 0x000000000103000000010000000900000080244f06a5745940c29e3d72472c3140f9c85a01ad7459401bf532c03c2c31406dc15acea8745940505458dff72b314051472a00a47459401fdbafcced2b31409737ea9590745940fc55fddbf72b314019ce4e6991745940f295627d3a2c314054e0c74593745940b1285863512c314080244f06a5745940c29e3d72472c314080244f06a5745940c29e3d72472c3140, '101.82213323503392', '17.17235069219803', '', 15.41, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 28, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(272, '210324122429359', '6130270009', 0, 'POLYGON ((101.788634005 17.1608994832, 101.788434405 17.1605699832, 101.791456705 17.1592199831, 101.791523605 17.1597041831, 101.788634005 17.1608994832, 101.788634005 17.1608994832))', 0x000000000103000000010000000600000044ffc2fa787259408d4962b5302931400a2194b57572594032904a1d1b293140320b063aa7725940c0480ca4c22831402b5f9f52a8725940eb72935fe228314044ffc2fa787259408d4962b53029314044ffc2fa787259408d4962b530293140, '101.79006330248211', '17.160074267062807', '', 10.12, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 29, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(273, '220213128780069', '613027002', 0, 'POLYGON ((101.786464805 17.1629173832, 101.786392405 17.1629392832, 101.786339205 17.1628536832, 101.786341905 17.1628340832, 101.786447005 17.1627357832, 101.786554005 17.1626782832, 101.786378405 17.1623037832, 101.786273505 17.1620171832, 101.786117305 17.1619140832, 101.786054905 17.1621098832, 101.785989305 17.1623999832, 101.785948005 17.1627973832, 101.785933305 17.1629772832, 101.785355205 17.1630306832, 101.785278905 17.1630262832, 101.785048305 17.1631224832, 101.785080905 17.1633632832, 101.785032605 17.1634582832, 101.784977305 17.1637675832, 101.785072405 17.1639515832, 101.785394505 17.1637867832, 101.785633205 17.1636877832, 101.785876605 17.1636010832, 101.786141405 17.1635166832, 101.786503105 17.1633961832, 101.786762305 17.1632637832, 101.786612405 17.1628815832, 101.786464805 17.1629173832, 101.786464805 17.1629173832))', 0x000000000103000000010000001d000000853b7a70557259403dcb20f4b42931400f53cf4054725940e3938c63b62931406942ac61537259408d606bc7b0293140c25cff6c53725940a504967eaf293140c7a0d12555725940a2bb620da9293140d2009ce6567259400a1db248a52931405cf01606547259406fdca0bd8c293140ec6b1b4e52725940ea3b47f579293140dcf2f4be4f725940171b8c337329314077753bb94e725940cfb3860880293140c5fe15a64d72594007b7980b932931403675dcf84c725940e8b7dc16ad293140fb7334bb4c725940be5515e1b8293140fa4d7a4243725940aa96fc60bc293140adcd73024272594081bb2a17bc29314056f03e3b3e72594018962265c22931401aecfac33e72594010b6162dd2293140323165f93d725940b49aec66d8293140f14473113d7259402cfd1dacec293140e41d54a03e725940aff81fbbf8293140b85b50e7437259406d5c3deeed2931401b887ed04772594047994b71e7293140a84a63cd4b72594026efb5c2e12931406a200a2450725940c4b1b63adc2931405b8b1e11567259409e220f55d4293140d66c48505a7259401a77c1a7cb29314096868edb57725940f7f6809bb2293140853b7a70557259403dcb20f4b4293140853b7a70557259403dcb20f4b4293140, '101.78587782761976', '17.163108021800713', '', 10.72, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 29, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(274, '210116120993424', '6136280003', 0, 'POLYGON ((101.805874105 17.1670911832, 101.805858305 17.1673392832, 101.806214305 17.1677768832, 101.807814805 17.1671041832, 101.808086505 17.1669453832, 101.807577605 17.1661304832, 101.805874105 17.1670911832, 101.805874105 17.1670911832))', 0x0000000001030000000100000008000000c56afb7093735940404bdf7cc62a3140d74bb62e937359401aae4cbfd62a3140b662e203997359406a5e026df32a3140c72cde3cb373594069def956c72a314018d475b0b7735940ec0fc1eebc2a3140409dfa59af73594072360087872a3140c56afb7093735940404bdf7cc62a3140c56afb7093735940404bdf7cc62a3140, '101.80695517305696', '17.166989492759413', '', 13.31, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(275, '210316122317881', '6136280006', 0, 'POLYGON ((101.804989705 17.1684201832, 101.805923705 17.1693599832, 101.805148905 17.1701201832, 101.803921905 17.1692701832, 101.804989705 17.1684201832, 101.804989705 17.1684201832))', 0x0000000001030000000100000006000000de258af38473594090d4ca951d2b3140f4020541947359405918052d5b2b3140a7d8458f87735940c93b0fff8c2b3140d5a0dc74737359402c086d4a552b3140de258af38473594090d4ca951d2b3140de258af38473594090d4ca951d2b3140, '101.80496771040227', '17.16928249656478', '', 12.49, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(276, '220317129368487', '6136280007', 0, 'POLYGON ((101.803211605 17.1658831832, 101.803821105 17.1661111832, 101.803572705 17.1667672832, 101.803614505 17.1668268832, 101.803407705 17.1672246832, 101.803558505 17.1672844832, 101.803553405 17.1675507832, 101.803415005 17.1679739832, 101.802935305 17.1682223832, 101.802248705 17.1678105832, 101.802509205 17.1673992832, 101.802265805 17.1672620832, 101.803211605 17.1658831832, 101.803211605 17.1658831832))', 0x000000000103000000010000000e00000088cfa5d167735940e5ccfe51772a3140d07313ce7173594008583343862a3140bafb35bc6d7359400363bb42b12a31403d64886b6e7359400770a72ab52a3140159526086b7359408f6da13ccf2a314073d9a6806d735940e678e827d32a314020c4426b6d7359406043ae9be42a3140cee5c4266b735940406ccc57002b3140d8f1c24a63735940974c429f102b3140efcef30a5873594046c466a2f52a3140b28d914f5c735940c5b7eeadda2a314025cbac5258735940703419b0d12a314088cfa5d167735940e5ccfe51772a314088cfa5d167735940e5ccfe51772a3140, '101.80305702399595', '17.16710760461655', '', 15.54, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(277, '201130120718809', '6136280008', 0, 'POLYGON ((101.806316205 17.1678351832, 101.805415005 17.1688193832, 101.805091705 17.1684789832, 101.805936705 17.1675467832, 101.806316205 17.1678351832, 101.806316205 17.1678351832))', 0x00000000010300000001000000060000006ead48af9a73594051f61e3ff72a3140b18b60eb8b7359405fc641bf372b314060d05b9f8673594047e84a70212b3140bea78b7794735940dd649258e42a31406ead48af9a73594051f61e3ff72a31406ead48af9a73594051f61e3ff72a3140, '101.80569424926217', '17.16817079239984', '', 4.51, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(278, '201902299644226', '6136280013', 0, 'POLYGON ((101.802088605 17.1687879832, 101.802764405 17.1689854832, 101.802814605 17.1689662832, 101.803184305 17.1684154832, 101.802431005 17.1680231832, 101.802204005 17.1678742832, 101.802088605 17.1687879832, 101.802088605 17.1687879832))', 0x000000000103000000010000000800000008be716b5573594043cd73b0352b31408c77f47d60735940bfd7f3a1422b3140794e8250617359407e78d45f412b3140aca8245f67735940ea7bf0461d2b31405ff192075b73594056d03c91032b31407e8c774f57735940f62e1ccff92a314008be716b5573594043cd73b0352b314008be716b5573594043cd73b0352b3140, '101.80255328505648', '17.16849057898143', '', 5.25, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(279, '191228112565572', '6214050003', 0, 'POLYGON ((101.808663935 17.1581827531, 101.808644425 17.1582583531, 101.808917265 17.1590427631, 101.806740695 17.1607819232, 101.806703175 17.1607932932, 101.806623115 17.1607945732, 101.806190445 17.1603623431, 101.805632985 17.1604551132, 101.805026025 17.1604951332, 101.804738355 17.1600057931, 101.808663935 17.1581827531, 101.808663935 17.1581827531))', 0x000000000103000000010000000c000000e6916026c1735940125b37aa7e283140efdd8bd4c073594021e2929e832831401196eb4cc5735940132eca06b72831402658b9a3a173594096ee0d0129293140148d5a06a1735940ccb5cfbf29293140d9c78eb69f735940ae4449d529293140dae7ce9f98735940db1fab810d293140d9c9a67d8f73594084ab1796132931407373e08b85735940dc42843516293140f5234dd580735940f988c023f6283140e6916026c1735940125b37aa7e283140e6916026c1735940125b37aa7e283140, '101.8069949684198', '17.159599296293738', '', 34.14, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 34, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(280, '200326120504578', '6136280016', 0, 'POLYGON ((101.808462574 17.1659281755, 101.808606672 17.1661528905, 101.808762855 17.1663990491, 101.808879323 17.1666294693, 101.808649881 17.1667387546, 101.808433806 17.1668437779, 101.807965724 17.1659752803, 101.808041117 17.1657842184, 101.808177317 17.1657034277, 101.808307536 17.1656043962, 101.808462574 17.1659281755, 101.808462574 17.1659281755))', 0x000000000103000000010000000c000000aed7ced9bd735940e841d7447a2a314050e43236c073594058d5eefe882a3140741c47c5c273594052f8c920992a314085acc7adc47359407e31993aa82a3140cb336eebc073594097fb1964af2a31400d702561bd735940209f1946b62a31409d37deb5b57359403bd5205b7d2a3140a7d516f2b67359408e38a4d5702a314094785a2db97359407dce328a6b2a3140be0e884fbb735940b9c0b90c652a3140aed7ced9bd735940e841d7447a2a3140aed7ced9bd735940e841d7447a2a3140, '101.80839523651542', '17.166252290692725', '', 3.95, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(281, '201902298752105', '6216720005', 0, 'POLYGON ((101.803721405 17.1769180833, 101.803534805 17.1767567833, 101.803393605 17.1766528833, 101.803412005 17.1765724833, 101.803861905 17.1767730833, 101.804427505 17.1763592833, 101.803818105 17.1756391833, 101.803702105 17.1757034833, 101.803562405 17.1757987833, 101.802534805 17.1768549833, 101.802673105 17.1768413833, 101.802764505 17.1768148833, 101.802784205 17.1768136833, 101.802828305 17.1768129833, 101.802855905 17.1768174833, 101.803453105 17.1771335833, 101.803721405 17.1769180833, 101.803721405 17.1769180833))', 0x00000000010300000001000000120000007e64e72b7073594031d8e5804a2d31400e2b3f1d6d735940a29ebbee3f2d314098d202cd6a7359408284941f392d314015ac2f1a6b735940a225b1da332d31406b1e3479727359402a963300412d3140967e80bd7b735940971ecae1252d3140183a7ec1717359406e2b84b0f62c3140e32cf4da6f73594019914ae7fa2c3140497102916d73594039f32826012d31401c58f1ba5c7359407b68415e462d3140a4d603ff5e73594058da157a452d314056d75f7e6073594035387dbd432d31401a8e00d16073594041425ba9432d3140cd91f889617359401dc89c9d432d314008d8bbfd6173594070221ce9432d31400f7692c66b735940fb4b63a0582d31407e64e72b7073594031d8e5804a2d31407e64e72b7073594031d8e5804a2d3140, '101.80355977475523', '17.17641343766715', '', 9.15, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 16, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(282, '210219121807871', '6214800005', 0, 'POLYGON ((101.809643205 17.1586021831, 101.809866105 17.1584221831, 101.810111205 17.1588492831, 101.810004205 17.1589563831, 101.810249105 17.1593074831, 101.810404805 17.1592117831, 101.810643705 17.1595553831, 101.811027905 17.1593448831, 101.811781205 17.1591177831, 101.812101705 17.1589801831, 101.811958405 17.1586773831, 101.811675105 17.1582293831, 101.811115505 17.1583276831, 101.810709905 17.1581877831, 101.810355905 17.1576751831, 101.809352205 17.1580480831, 101.809643205 17.1586021831, 101.809643205 17.1586021831))', 0x0000000001030000000100000012000000d5b9bb31d17359401c7d15279a2831404ac7a4d8d47359401c602f5b8e28314048e6aadcd873594055e8bb58aa2831403d86e01bd7735940abe7925db1283140a6e50f1fdb7359402eec0d60c8283140c37f1dacdd735940678d791ac2283140bb6b2296e1735940b450209fd8283140940796e1e77359400fb385d3ca283140e1be2739f473594064a06af1bb2831400e006e79f97359406820dfecb2283140fdcb6220f77359408407bb149f283140f4bc237cf273594046ae89b8812831403ad00151e973594049f7bc29882831402b21ccabe27359408f0a9bfe7e2831401c8603dfdc73594029ce9a665d283140e9da306dcc735940281cd4d675283140d5b9bb31d17359401c7d15279a283140d5b9bb31d17359401c7d15279a283140, '101.81072311475424', '17.158622519007796', '', 18.79, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 35, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(283, '210312122247887', '6244890006', 0, 'POLYGON ((101.825351605 17.1564529831, 101.825346905 17.1564264831, 101.825217805 17.1563604831, 101.825273905 17.1562314831, 101.824883405 17.1560738831, 101.824527105 17.1568534831, 101.824937305 17.1570407831, 101.825283305 17.1572602831, 101.825486405 17.1568580831, 101.825618305 17.1564931831, 101.825351605 17.1564529831, 101.825351605 17.1564529831))', 0x000000000103000000010000000c00000045cb898fd2745940b1c67d4d0d2831401c35d37bd27459408e24e5900b2831405223575ed07459401f4d993d07283140e70da449d1745940248556c9fe2731403ddfc3e3ca7459409aac3f75f4273140ffa8550dc57459409e2dc48c272831406d8ed6c5cb745940808d23d3332831403a3a1171d1745940ccdfbc35422831402131eec4d47459401b07f1d9272831400ebd28eed67459402176efef0f28314045cb898fd2745940b1c67d4d0d28314045cb898fd2745940b1c67d4d0d283140, '101.82507239544996', '17.156668069581112', '', 5.19, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 38, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(284, '210312122250167', '6244890007', 0, 'POLYGON ((101.826308845 17.1547133231, 101.826095185 17.1546775531, 101.825687185 17.1544988231, 101.825715205 17.1543347331, 101.825693775 17.1543071131, 101.825351645 17.1541565531, 101.826113315 17.1525135131, 101.826628235 17.1528438431, 101.826653535 17.1528613031, 101.826678735 17.1528970331, 101.826308845 17.1547133231, 101.826308845 17.1547133231))', 0x000000000103000000010000000c000000ea6a7e3ee274594051f8d64a9b27314051bd56bede74594064fdb7f2982731404913100fd8745940287c203c8d2731403c529684d8745940284d277b82273140b108b42ad8745940ff4dc4ab8027314063beb48fd27459405207cacd76273140c5ad610adf7459406bf626200b2731409dd11c7ae77459406c822bc620273140a97c3ae4e774594071a319eb21273140eac7ec4de8745940e7d18c4224273140ea6a7e3ee274594051f8d64a9b273140ea6a7e3ee274594051f8d64a9b273140, '101.8260861919815', '17.153663827041974', '', 12.06, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 38, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(285, '210316122317873', '618520005', 0, 'POLYGON ((101.808172605 17.1788710833, 101.808606805 17.1788922833, 101.809117305 17.1785667833, 101.809158305 17.1781245833, 101.809674205 17.1778893833, 101.809714405 17.1777951833, 101.809760105 17.1775200833, 101.808542305 17.1774307833, 101.808179705 17.1779698833, 101.808079705 17.1781940833, 101.808172605 17.1788710833, 101.808172605 17.1788710833))', 0x000000000103000000010000000c000000e1ff9619b97359403df9cc7eca2d314013b3c136c0735940c0477ae2cb2d314092e6f293c8735940e86c7e8db62d3140c150ea3fc97359401be39b92992d3140f2b8c1b3d173594040949b288a2d3140ce245e5cd2735940eaa831fc832d314027250c1cd37359401d28c8f4712d3140145a3928bf735940c193931a6c2d314005915e37b97359404a722c6f8f2d31405362f093b77359403c1da0209e2d3140e1ff9619b97359403df9cc7eca2d3140e1ff9619b97359403df9cc7eca2d3140, '101.80878605091635', '17.178090196514827', '', 11.35, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 33, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(286, '210316122320007', '6136280015', 0, 'POLYGON ((101.806175362 17.16595249, 101.804951291 17.166264351, 101.805355965 17.1665421968, 101.805369381 17.1665976167, 101.805525396 17.1667151031, 101.805656567 17.166885103, 101.806645959 17.166295786, 101.806476024 17.1660124575, 101.806175362 17.16595249, 101.806175362 17.16595249))', 0x000000000103000000010000000a00000062a88b6098735940613dc5dc7b2a3140f36d6b52847359402109ee4c902a314011d4bef38a735940f5a86882a22a31401126042c8b7359406b513324a62a3140b7fa63ba8d73594053904bd7ad2a3140a6c48fe08f73594018936bfbb82a3140c1565f16a07359402655525c922a3140a4059d4d9d735940ebb0dbca7f2a314062a88b6098735940613dc5dc7b2a314062a88b6098735940613dc5dc7b2a3140, '101.80586071965956', '17.166351906331546', '', 5.96, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(287, '210316122320040', '6136280022', 0, 'POLYGON ((101.804643505 17.1674200832, 101.803795105 17.1669087832, 101.803733305 17.1668818832, 101.803514805 17.1672426832, 101.803558105 17.1673691832, 101.803503705 17.1676618832, 101.803219905 17.1683883832, 101.803497005 17.1686255832, 101.803767005 17.1685210832, 101.804211205 17.1681255832, 101.804643505 17.1674200832, 101.804643505 17.1674200832))', 0x000000000103000000010000000c0000007cba78477f735940a009e60adc2a31403c2a0661717359405842b588ba2a314095ebd05d707359408ea366c5b82a3140eb545cc96c735940dcd69e6ad02a3140495af97e6d735940c633f0b4d82a314026cccd9a6c7359403921a1e3eb2a314029de75f467735940cdde46801b2b31402cbab37e6c735940e91cd50b2b2b31400c052aeb70735940cf079d32242b31405023463278735940057739470a2b31407cba78477f735940a009e60adc2a31407cba78477f735940a009e60adc2a3140, '101.80388080851144', '17.167760127871137', '', 9.67, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(288, '210316122320055', '6136280023', 0, 'POLYGON ((101.80487454 17.1662850561, 101.804485903 17.1659380817, 101.805858576 17.1657281057, 101.806021059 17.1657877192, 101.806105339 17.1658408552, 101.806174258 17.1659545632, 101.80487454 17.1662850561, 101.80487454 17.1662850561))', 0x0000000001030000000100000008000000b7ab80108373594056c34da8912a314098de70b27c735940fe0f0aeb7a2a3140c147d92f9373594071023a286d2a3140b5125ad995735940dd0a6010712a3140b408d93a97735940b76cd98b742a31402c3fea5b98735940e3908dff7b2a3140b7ab80108373594056c34da8912a3140b7ab80108373594056c34da8912a3140, '101.8053251918375', '17.16598227141358', '', 3.62, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 30, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(289, '210421122469304', '6216720006', 0, 'POLYGON ((101.793667905 17.1800955833, 101.793474105 17.1796250833, 101.793881905 17.1793962833, 101.794091005 17.1798019833, 101.794310605 17.1802769834, 101.794492005 17.1806557834, 101.794345205 17.1807017834, 101.794377805 17.1807465834, 101.794530005 17.1807539834, 101.794956705 17.1816263834, 101.794691605 17.1817705834, 101.794537305 17.1818145834, 101.793667905 17.1800955833, 101.793667905 17.1800955833))', 0x000000000103000000010000000e00000008f77774cb725940746d80be1a2e3140aacc9c47c87259409550d2e8fb2d31401eb70cf6ce72594026cc31eaec2d314075211463d27259408907b680072e3140d3d525fcd5725940aeece3a1262e3140249afef4d8725940488919753f2e3140674d458dd67259402908da78422e31402b490116d772594016917868452e31409bca6094d972594021539fe4452e3140806d1692e072594034cb10117f2e31405e782d3adc725940ed135784882e3140541bffb2d97259408da389668b2e314008f77774cb725940746d80be1a2e314008f77774cb725940746d80be1a2e3140, '101.79419454339798', '17.18060670117645', '', 8.66, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 36, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(290, '210427122607911', '6174970005', 0, 'POLYGON ((101.791990205 17.1780658833, 101.792080905 17.1780289833, 101.791720205 17.1766832833, 101.790754305 17.1770508833, 101.791990205 17.1780658833, 101.791990205 17.1780658833))', 0x00000000010300000001000000060000008d4eaff7af7259408e4ec9b9952d3140b6b01b74b17259407d03b54e932d3140ad03398bab725940fe859b1d3b2d31405bc9f1b79b7259405d80e934532d31408d4eaff7af7259408e4ec9b9952d31408d4eaff7af7259408e4ec9b9952d3140, '101.79152434649768', '17.177294452288173', '', 5.79, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 32, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(291, '210617124833045', '6214050004', 0, 'POLYGON ((101.799185605 17.1583042831, 101.798851405 17.1578400831, 101.799253005 17.1576350831, 101.799371105 17.1575609831, 101.800108805 17.1587368831, 101.800315005 17.1590399831, 101.800313605 17.1593178831, 101.800140805 17.1594073831, 101.799185605 17.1583042831, 101.799185605 17.1583042831))', 0x000000000103000000010000000a0000002d3a61db2573594032bb26a186283140acb5a4612073594095e92a35682831401a6d13f626735940e39dd6c55a283140ea556ce528735940458aa5ea55283140ddad8ffb347359405f95f9faa2283140473e6d5c38735940c02b26d8b628314035018e56387359401c95890ec9283140e36ac78135735940cb2719ecce2831402d3a61db2573594032bb26a1862831402d3a61db2573594032bb26a186283140, '101.79963250439523', '17.15843442526134', '', 6.92, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 34, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(292, '210706125673384', '6227770005', 0, 'POLYGON ((101.788070205 17.144254383, 101.787604105 17.144564683, 101.786882005 17.143343983, 101.787313305 17.142739283, 101.788070205 17.144254383, 101.788070205 17.144254383))', 0x0000000001030000000100000006000000545b03be6f725940274af1daed243140e74a0c1b6872594040a4e930022531404c5257465c7259403a10f730b2243140902b585763725940e956c88f8a243140545b03be6f725940274af1daed243140545b03be6f725940274af1daed243140, '101.78745977015852', '17.143698878997192', '', 7.02, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 37, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(293, '220116128180698', '6174240002', 0, 'POLYGON ((101.843883305 17.1628946832, 101.844206405 17.1632677832, 101.843744905 17.1635168832, 101.843413005 17.1636863832, 101.843063505 17.1632137832, 101.843033805 17.1631218832, 101.843177205 17.1630753832, 101.843196405 17.1629413832, 101.843883305 17.1628946832, 101.843883305 17.1628946832))', 0x000000000103000000010000000a00000063271f2f027659404a094977b32931401e234d7a077659409c55ddeacb2931401049a1eaff75594017b0113edc293140c05f8a7afa75594000a5ce59e7293140469ba1c0f4755940b619e560c829314070790f44f47559401e9b115bc22931404b0d869df67559406da0ed4ebf2931401be50deef67559404e02c886b629314063271f2f027659404a094977b329314063271f2f027659404a094977b3293140, '101.84359778885856', '17.163234580646428', '', 4.12, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 31, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(294, '220213128776045', '6244890005', 0, 'POLYGON ((101.795643605 17.1684914832, 101.795854505 17.1675737832, 101.795975905 17.1674773832, 101.796109105 17.1675070832, 101.796214705 17.1676247832, 101.796287705 17.1676702832, 101.796398205 17.1677201832, 101.796568705 17.1677291832, 101.796960405 17.1677119832, 101.797148205 17.1677812832, 101.797269605 17.1677852832, 101.797288605 17.1677852832, 101.797326605 17.1677726832, 101.797411405 17.1677633832, 101.797441205 17.1678013832, 101.797442205 17.1679198832, 101.797371905 17.1679430832, 101.797261805 17.1679799832, 101.797225605 17.1679919832, 101.797216805 17.1681284832, 101.797239105 17.1683365832, 101.797166805 17.1683907832, 101.797110405 17.1684010832, 101.796926905 17.1685625832, 101.796665405 17.1684946832, 101.796476705 17.1684905832, 101.795905105 17.1685656832, 101.795835805 17.1684970832, 101.795643605 17.1684914832, 101.795643605 17.1684914832))', 0x000000000103000000010000001e000000c7af27d3eb725940a0ff0142222b31405ad6bb47ef725940d1828e1de62a31404218ec44f1725940e6a93bccdf2a314076819a73f37259403e3184bee12a31406fa4852ef5725940d5d73175e92a3140a4cbb460f6725940e5da8e70ec2a31405c442d30f87259401fb9bdb5ef2a31407e3f4efbfa725940c56dbc4cf02a3140a4eb366601735940c6fd2a2cef2a314091a2e779047359409439d4b6f32a314078e41777067359401718f0f9f32a3140b4fcc8c6067359401718f0f9f32a31402a2d2b660773594094818b26f32a3140ad7bd8c908735940714f848af22a31404dfdd546097359404c110d08f52a314035bb074b0973594030b126ccfc2a31405aae2b2408735940f4ee6151fe2a3140ccb4605606735940043a76bc002b314090408bbe057359408dd5c985012b3140fc52a29905735940bedee0770a2b31404fc42af7057359407b90371b182b3140a33bebc704735940b5ca8aa81b2b3140af315cdb0373594079f458551c2b3140c391b4d9007359405c2cdeea262b31401815e590fc725940d5e4b177222b31400e006e79f97259402987e832222b3140722cf71bf07259406892e01e272b31407edd4cf9ee725940bdd0f59f222b3140c7af27d3eb725940a0ff0142222b3140c7af27d3eb725940a0ff0142222b3140, '101.79645602326417', '17.168085380557933', '', 9.44, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 38, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(295, '2022061312414729', '0003', 0, 'POLYGON ((101.83683 17.15178, 101.83707 17.14936, 101.83776 17.14963, 101.8376 17.1507, 101.83748 17.15067, 101.83726 17.15189, 101.83683 17.15178))', 0x0000000001030000000100000007000000f3936a9f8e755940d72fd80ddb2631409d9d0c8e92755940a054fb743c26314068791edc9d7559401f80d4264e2631404bc8073d9b755940d88173469426314076c3b64599755940037d224f92263140ef8ff7aa95755940e6965643e2263140f3936a9f8e755940d72fd80ddb263140, '101.83729553222656', '17.15062522888184', '122', 10.27, 2, 2, 2, 1, 1, '111', 1, 'บ้านโคก', 10000, 102, 0, 'Y', 'image-1655296466674.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(299, '202206102141006', '123456', 0, 'POLYGON ((101.83424 17.18828, 101.83483 17.18849, 101.83524 17.18761, 101.83458 17.18748, 101.83424 17.18828))', 0x0000000001030000000100000005000000f6402b3064755940aa7d3a1e333031400feeceda6d755940809f71e140303140e8137992747559400e677e350730314053793bc26975594072a774b0fe2f3140f6402b3064755940aa7d3a1e33303140, '101.83474349975586', '17.18798542022705', 'นน', 4.34, 3, 1, 3, 3, 2, '1123', 1, 'สสส', 136, 590, 1, 'Y', 'image-1655630303762.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(300, '2022062021371465', '1234567', 0, 'POLYGON ((101.83469 17.18667, 101.8344 17.18571, 101.83487 17.18559, 101.8354 17.18649, 101.83469 17.18667))', 0x000000000103000000010000000500000016139b8f6b755940f224e99ac92f314013f241cf66755940488ac8b08a2f3140569a94826e755940f37684d3822f314005c58f3177755940f20703cfbd2f314016139b8f6b755940f224e99ac92f3140, '101.83489990234375', '17.18613052368164', '123', 4.53, 1, 1, 2, 2, 1, '123', 1, 'ทดสอบ', 1000, 4, 10, 'Y', 'image-1655735845210.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(301, '202206211337226', '0010', 0, 'POLYGON ((101.80754 17.14263, 101.80674 17.14301, 101.8073 17.14348, 101.80912 17.14254, 101.80879 17.14192, 101.80754 17.14263))', 0x00000000010300000001000000060000008f8d40bcae735940b16d5166832431400118cfa0a17359403f00a94d9c243140e4839ecdaa7359404da1f31abb24314087a2409fc8735940315f5e807d2431403dd52137c3735940f8a57ede542431408f8d40bcae735940b16d516683243140, '101.80792999267578', '17.14270019531250', 'หนอกมากแก้ว', 10.76, 2, 2, 2, 2, 2, '000', 1, 'ติดพ่อชำนาน', 1000, 10, 0, 'Y', 'image-1655796075124.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(302, '2022062111060875', '0008', 0, 'POLYGON ((101.82089248887391 17.152184854973047, 101.82259593563352 17.151943456678868, 101.82346019740562 17.15187329108249, 101.8241467540786 17.151819800565193, 101.82418477893717 17.151965431976933, 101.82421595213958 17.151994655084785, 101.82425884345167 17.152025263339937, 101.82489734417457 17.151972295443834, 101.82540991226298 17.15193236505709, 101.82584647747743 17.151911538171476, 101.82604006702907 17.151560888170096, 101.82595031091196 17.151541712985484, 101.8256825036358 17.151538646685854, 101.82523921735984 17.151528542879998, 101.82495321415132 17.151518530262727, 101.82455278164008 17.151566357667328, 101.82429458930483 17.15158988449214, 101.8241945927298 17.151596855250343, 101.82370576878536 17.15160379268615, 101.82324920155303 17.15160463661094, 101.8229915259594 17.15160223604141, 101.82266572636802 17.15159862468369, 101.82209799065917 17.151589995159142, 101.82190117604681 17.15158352620486, 101.82173940979955 17.151562161017818, 101.82178100453498 17.151648712380876, 101.82181046266551 17.151696326243044, 101.821813648345 17.151739817233892, 101.82169212519821 17.15177060260179, 101.82166347429312 17.15177596831093, 101.82161435903436 17.151709089780116, 101.82136976666109 17.151796212957787, 101.82119819336626 17.151830468609347, 101.82113701999093 17.151804896723263, 101.82109343410285 17.15166578945126, 101.8210842265124 17.151653445405156, 101.82057789130153 17.1517285633333, 101.82063590262696 17.151814102493386, 101.82080042544538 17.152042124634733, 101.82086033989849 17.15213479522795, 101.82088065513925 17.15217809193315, 101.82089248887391 17.152184854973047))', 0x000000000103000000010000002a000000b64fa68089745940450e2f96f526314095576c69a5745940e54631c4e52631408d5a6692b3745940cf55022be1263140d1f706d2be745940105096a9dd2631405ad98371bf745940a476e034e7263140fcd143f4bf74594086c1281fe926314014042aa8c0745940f835ae20eb2631405ff23a1ecb7459404ed406a8e7263140aebd1884d3745940c71f1b0ae526314012122fabda745940e054b0ace3263140d54428d7dd745940140bc2b1cc2631403a5fb15edc745940a2400d70cb263140b17f6dfbd774594089989b3ccb263140fa7b26b8d074594083141893ca263140a4e09008cc74594066371cebc926314014be0779c5745940e25a850dcd26314060d5173ec1745940544c3c98ce2631402154ad9abf745940077a2f0dcf2631406b9d6698b77459405d899381cf26314037486b1db07459407c2abc8fcf2631405e38a6e4ab7459405fcc7567cf2631409b92258ea67459409122df2acf26314043ffe3409d745940fc9b179ace2631408fea63079a74594088a98f2dce26314019bbe46097745940f3e11cc7cc263140eabc5a0f9874594008283473d22631402d2ae98a9874594021230892d526314016c34598987459404585b06bd8263140da46919a967459403dab2e70da263140079a652296745940d43634cada263140807e6454957459408d1c2b68d6263140e26e7f5291745940734fda1ddc263140b602de828e745940a836915cde263140579949828d74594090cc8aafdc263140a79b79cb8c7459407d9db591d32631407608dba48c74594043579cc2d22631407cbd215984745940b662e1aed726314033ed724c85745940db47fd49dd2631402cf581fe87745940a8eb903bec263140a39ccef9887459407416524ef22631407fef034f897459404305b824f5263140b64fa68089745940450e2f96f5263140, '101.82331085205078', '17.15185165405273', 'หนองหมากแก้ว', 14.16, 2, 2, 2, 2, 1, '000', 1, 'คิพ่ชำนาน', 10000, 141, 0, 'Y', 'image-1655796242170.png', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(303, '001', '001', 0, 'POLYGON ((101.81234330870211 17.152755106799304, 101.81211590766907 17.15287169907242, 101.81189051829278 17.15260511264205, 101.81190954521298 17.152432445436716, 101.81160863488913 17.152566807344556, 101.81161265820265 17.152649075724185, 101.81155364960432 17.15270305518061, 101.81134074926376 17.152747940272093, 101.81125961244106 17.15261613484472, 101.8107829336077 17.15263423975557, 101.81111661717296 17.15368818026036, 101.8107776530087 17.153759677894413, 101.81120026856661 17.15454573277384, 101.81120705790818 17.154663079418242, 101.81127771735191 17.1547507122159, 101.8113736063242 17.154823718592525, 101.8114098161459 17.154805152677, 101.81147142313421 17.154757753014565, 101.81159757077694 17.154478426091373, 101.81170209310949 17.15428208000958, 101.81186277419329 17.154159578494728, 101.81198238395154 17.154074627906084, 101.81237147189677 17.154000867158175, 101.81242100894451 17.15397886466235, 101.81259183213115 17.153857913799584, 101.81263441219926 17.153808544389904, 101.8126981984824 17.153724054805934, 101.81278662756085 17.153630470857024, 101.81309290230274 17.153619616292417, 101.81308510713279 17.153426622971892, 101.81290606968105 17.152753514237702, 101.81234330870211 17.152755106799304))', 0x00000000010300000001000000200000000000ca6efd73594000006cf51a273140000000b5f973594000008499222731400000a603f67359400000f0201127314000007453f6735940000010d00527314000005865f17359400000489e0e27314000003876f173594000008402142731400000b87ef07359400000248c172731400000c001ed7359400000307d1a273140000070adeb7359400000dcd91127314000001adee373594000009c09132731400000ac55e97359400000cc1b582731400000f4c7e3735940000054cb5c273140000088b4ea7359400000244f90273140000002d1ea7359400000e4ff97273140000060f9eb735940000020be9d2731400000908bed7359400000f886a227314000007023ee73594000007c4fa12731400000d625ef735940000040349e2731400000f036f17359400000ece58b273140000056edf27359400000c8077f2731400000488ff573594000008c00772731400000f684f77359400000506f712731400000eae4fd7359400000d0996c2731400000b0b4fe7359400000ac286b27314000002c81017459400000743b632731400000c4330274594000002cff5f27314000004e3f037459400000ac755a273140000034b20474594000009853542731400000d0b60974594000007c9d5327314000001e9609745940000098f74627314000002ea7067459400000b4da1a2731400000ca6efd73594000006cf51a273140, '101.81193542480469', '17.15362834930420', 'หนองหมากแก้ว', 22.39, 2, 2, 2, 1, 2, '', 1, 'หนองหมากแก้ว', 9500, 212, 0, 'Y', 'image-1655857340738.png', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(304, '2022062209583374', '0012', 0, 'POLYGON ((101.78308 17.08733, 101.78307 17.08717, 101.78321 17.08705, 101.78482 17.08679, 101.78489 17.08699, 101.78308 17.08733))', 0x0000000001030000000100000006000000b58993fb1d725940aef545425b163140a31ea2d11d7259403c31ebc5501631409cf9d51c20725940e71da7e848163140ca4faa7d3a725940ae9e93de37163140473d44a33b7259403c1405fa44163140b58993fb1d725940aef545425b163140, '101.78398132324219', '17.08705997467041', 'หน้าวัด', 3.05, 2, 1, 2, 2, 1, '000', 1, 'หน้าวัด', 10000, 30, 0, 'Y', 'image-1655874908929.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(307, '220108127994874', '6030490002', 0, 'POLYGON ((101.820993339 17.1792629167, 101.820341672 17.1793895833, 101.819781672 17.1796745833, 101.819575005 17.1797945833, 101.819543339 17.1794279167, 101.819523339 17.1790179167, 101.819566672 17.17734625, 101.819621672 17.1773545833, 101.819730005 17.17735125, 101.819840005 17.1773329166, 101.820016672 17.1773129166, 101.820148339 17.1772979166, 101.820241672 17.1772829166, 101.820338339 17.1772679166, 101.820398339 17.1772629166, 101.820526672 17.1772545833, 101.820896672 17.17719625, 101.820993339 17.1792629167, 101.820993339 17.1792629167))', 0x0000000001030000000100000013000000494fa5278b745940b19cac2ce42d31404d325b7a807459403e84c979ec2d31406ac68b4d7774594028324b27ff2d314005c6b8ea737459407e458f04072e314038aae765737459404637eafcee2d314014d4041273745940e39f411ed42d31406b48c5c77374594078d15790662d31404d1575ae74745940b811271c672d314098c1d674767459409ca73ae4662d31405c5b364278745940224da5b0652d31408b1a35277b74594093f41961642d3140eb77754f7d74594029727165632d31409b03edd67e745940beefc869622d31403d6a606c80745940546d206e612d3140a7ec08688174594030973d1a612d3140166f4d8283745940f1566e8e602d3140a8e83192897459404eb9c2bb5c2d3140494fa5278b745940b19cac2ce42d3140494fa5278b745940b19cac2ce42d3140, '101.820993339', '17.1792629167', '', 22.69, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(308, '220112128085814', '6030490003', 0, 'POLYGON ((101.805245005 17.17789625, 101.805040005 17.17793125, 101.804428338 17.1782045833, 101.804631672 17.17869625, 101.805123338 17.1797345833, 101.805216672 17.17975625, 101.805306672 17.1797245833, 101.805850005 17.17938125, 101.805245005 17.17789625, 101.805245005 17.17789625))', 0x000000000103000000010000000a000000836f582289735940bfd4cf9b8a2d3140965c83c685735940b8af03e78c2d3140e1ebfec07b7359405445c9d09e2d31403624d7157f735940f8aa9509bf2d3140357d092487735940d33bed15032e3140c61b82ab8873594069006f81042e314066dffe248a7359408c8f276e022e3140363de60b93735940fe43faedeb2d3140836f582289735940bfd4cf9b8a2d3140836f582289735940bfd4cf9b8a2d3140, '101.805245005', '17.17789625', '', 10.63, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(309, '201223120723457', '6030490004', 0, 'POLYGON ((101.787794605 17.1543954831, 101.787793905 17.1549146831, 101.787812805 17.1551892831, 101.788119905 17.1551452831, 101.788230105 17.1551779831, 101.788369805 17.1555367831, 101.788419705 17.1556224831, 101.788821305 17.1552335831, 101.789109405 17.1552547831, 101.789535605 17.1552874831, 101.789793205 17.1546001831, 101.790032705 17.1543438831, 101.789880905 17.1537794831, 101.789069105 17.1536950831, 101.789056205 17.1537677831, 101.788951805 17.1537426831, 101.788890305 17.1536544831, 101.787819105 17.1536213831, 101.787808905 17.1536454831, 101.787777305 17.1538609831, 101.787794605 17.1543954831, 101.787794605 17.1543954831))', 0x00000000010300000001000000160000002d1c103a6b7259408b905e7686273140a47d20376b725940af95197da8273140153666866b725940ac9a1f7cba2731404e53788e707259400d0bed99b7273140a6acae5c7272594047798abeb92731404068a0a67472594053bd3442d1273140ce1fec7775725940d36f03e0d62731403cd75a0c7c725940c8a75a63bd2731403adcbbc4807259404af607c7be2731402aa058c0877259408564a5ebc0273140fe84ccf88b725940c05eaae093273140b5af55e58f7259408d40aa14832731406fada3688d725940d5b59a175e2731409310b41b8072594073789b8f5827314093cb98e57f725940ca974f535d2731401726b62f7e725940eee933ae5b273140d006c32d7d7259405ccc73e655273140e5c8d2a06b7259407b6120bb532731403f9e0a766b725940b617754f55273140636080f16a7259407f8bf26e632731402d1c103a6b7259408b905e76862731402d1c103a6b7259408b905e7686273140, '101.787794605', '17.1543954831', '', 24.02, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(310, '220321129418961', '6030490005', 0, 'POLYGON ((101.834995005 17.1707195832, 101.834786672 17.1710879166, 101.834255005 17.1706295832, 101.834106672 17.1707545832, 101.833706672 17.1703345832, 101.833795005 17.1702045832, 101.832846672 17.1696795832, 101.832958339 17.1690912499, 101.833361672 17.1690179166, 101.833423339 17.1690195832, 101.833485005 17.1690345832, 101.833753339 17.1692195832, 101.833916672 17.1693079166, 101.834043339 17.1693979166, 101.834275005 17.1695195832, 101.834363339 17.1695712499, 101.834431672 17.1696295832, 101.834550005 17.1697229166, 101.834660005 17.1697979166, 101.834755005 17.1699095832, 101.834830005 17.1699862499, 101.834953339 17.1701512499, 101.834976672 17.1702112499, 101.834985005 17.1702345832, 101.834996672 17.1703662499, 101.835025005 17.1704912499, 101.835065005 17.1706029166, 101.835070005 17.1706662499, 101.834995005 17.1707195832, 101.834995005 17.1707195832))', 0x000000000103000000010000001e00000018b3e38e7075594079a15247b42b31401cd813256d755940ac89ee6acc2b3140f5bf1a6f64755940f9925f61ae2b31406367f30062755940727c8692b62b31409cac3a735b755940c738180c9b2b3140c382b9e55c7559402b790e87922b3140a3b4205c4d75594096a4041f702b3140df3b7e304f7559403a5c6c90492b3140b6be31cc557559402d3c18c2442b31409a2ed8ce56755940413a0ede442b31409c8b7dd157755940abbcb6d9452b3140e4fbf6365c755940cfaf7ff9512b3140117508e45e7559403bc07cc3572b3140e81c50f760755940bbce6fa95d2b31401896fdc26475594024e0a9a2652b3140217f7d35667559408fa97c05692b3140247f195467755940324728d86c2b314081966c4469755940c22d08f6722b31404530cc116b755940d7b952e0772b31406ea941a06c755940f91ec7317f2b3140734cd4da6d75594016170838842b3140392c21e06f755940acb145088f2b31406dcafe417075594056bbe7f6922b31400648f26470755940007e5f7e942b314091a0e19570755940a4a95f1f9d2b31404ef4b70c717559401d938650a52b314095a07db4717559403366fba1ac2b31401e5676c971755940f9d989c8b02b314018b3e38e7075594079a15247b42b314018b3e38e7075594079a15247b42b3140, '101.834995005', '17.1707195832', '', 15.97, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(311, '210312122247865', '6030490006', 0, 'POLYGON ((101.817014997 17.130814421, 101.817028845 17.1307243782, 101.816950593 17.1306309165, 101.818128083 17.1300240806, 101.81845725 17.1297578018, 101.818941044 17.1295753993, 101.819535583 17.129583591, 101.819941227 17.1302381017, 101.819409733 17.1304892472, 101.817511678 17.131158021, 101.817014997 17.130814421, 101.817014997 17.130814421))', 0x000000000103000000010000000c000000381d45f949745940490acc0d7d213140794a5a334a745940b02821277721314080d823eb48745940c9361a0771213140261be4355c74594095de154249213140247b849a61745940c121abce372131404155b28769745940115c76da2b2131402cb95f45737459407871e5632c213140dba6c4ea79745940a07ec348572131409550853571745940233449be67213140eb46801c5274594097cd729293213140381d45f949745940490acc0d7d213140381d45f949745940490acc0d7d213140, '101.817014997', '17.130814421', '', 17.6, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(312, '210120121094386', '6030490008', 0, 'POLYGON ((101.820930705 17.1772612833, 101.821547305 17.1771684833, 101.821565405 17.1759599833, 101.820359205 17.1762539833, 101.820161105 17.1762470833, 101.819674305 17.1768742833, 101.819659705 17.1771397833, 101.819642405 17.1773729833, 101.820930705 17.1772612833, 101.820930705 17.1772612833))', 0x000000000103000000010000000a0000007690f0208a745940d89ed6fe602d3140e2c5253b94745940caa7e9e95a2d314000801087947459409fada5b60b2d3140a51ce5c380745940301026fb1e2d314047db00857d745940f5c962871e2d31402e56378b75745940e5460ea2472d3140bdb4fa4d7574594012186808592d3140f2f86a0575745940ab77da50682d31407690f0208a745940d89ed6fe602d31407690f0208a745940d89ed6fe602d3140, '101.820930705', '17.1772612833', '', 14.51, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(313, '210329122437980', '6030490009', 0, 'POLYGON ((101.853929305 17.1888573834, 101.854028105 17.1896823834, 101.856052005 17.1894350834, 101.855339805 17.1883515834, 101.853929305 17.1888573834, 101.853929305 17.1888573834))', 0x00000000010300000001000000060000008b8419c7a6765940a64f1df558303140c0357f65a8765940915451068f3031409d49598ec976594004eb4fd17e3031404a5c2ae3bd76594052da32cf373031408b8419c7a6765940a64f1df5583031408b8419c7a6765940a64f1df558303140, '101.853929305', '17.1888573834', '', 13.21, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(314, '220331129440224', '6030490011', 0, 'POLYGON ((101.849068905 17.1720975832, 101.849348105 17.1719676832, 101.849790605 17.1717913832, 101.849835005 17.1717430832, 101.849861305 17.1717081832, 101.849858505 17.1716476832, 101.849806305 17.1715093832, 101.849781505 17.1714555832, 101.849715805 17.1714677832, 101.849602805 17.1713600832, 101.849464005 17.1712714832, 101.849378005 17.1710619832, 101.849350705 17.1710125832, 101.849373905 17.1709626832, 101.848796005 17.1710722832, 101.848731805 17.1712462832, 101.848559405 17.1713003832, 101.848412305 17.1714401832, 101.848486505 17.1716453832, 101.848573505 17.1723591832, 101.849068905 17.1720975832, 101.849068905 17.1720975832))', 0x0000000001030000000100000016000000a2c11a25577659408c9053960e2c3140417927b85b7659401950f712062c3140133b22f8627659401f942485fa2b3140255e5cb26376594080a8cd5af72b314019c7ab2064765940b14c4711f52b3140f54ced146476594036c7411af12b314037fafb396376594017cdf709e82b31401f2ef7d162765940848f5a83e42b3140a35766be6176594060290950e52b3140278471e45f765940102f2141de2b3140ab26469e5d765940d814ab72d82b3140ac5a90355c765940d36ed7b7ca2b3140d0330fc35b765940690c0c7bc72b314040035e245c7659402f2edd35c42b3140d49c7aac527659409798a564cb2b31403463349f51765940d2e7e1cbd62b31400c4c1bcc4e765940e2a28757da2b3140efdf1f634c7659407310fc80e32b3140a184579a4d765940785aabf3f02b3140890e3f074f76594060023fbb1f2c3140a2c11a25577659408c9053960e2c3140a2c11a25577659408c9053960e2c3140, '101.849068905', '17.1720975832', '', 8.58, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(315, '210218121785336', '6030490012', 0, 'POLYGON ((101.839484705 17.1728170833, 101.838988005 17.1729473833, 101.838903305 17.1727627833, 101.838521705 17.1728575833, 101.838036105 17.1728178833, 101.837914905 17.1720999833, 101.838936005 17.1721385833, 101.838916005 17.1720391833, 101.839190405 17.1713030832, 101.839660505 17.1723204833, 101.839320605 17.1724686833, 101.839484705 17.1728170833, 101.839484705 17.1728170833))', 0x000000000103000000010000000d000000e75d0e1eba755940aff688bd3d2c314086cdbefab1755940c8339b47462c3140cede7c97b07559404c3d882e3a2c314084fdf056aa7559409c230365402c3140e7f52f62a2755940fceff4ca3d2c31409573d665a075594068ea97be0e2c31405c3aa420b17559403da73146112c31403964c1ccb075594070e789c20a2c3140e325ac4bb5755940480cd484da2b3140f12d6affbc7559405434f8311d2c31405f55c56db7755940915b5ae8262c3140e75d0e1eba755940aff688bd3d2c3140e75d0e1eba755940aff688bd3d2c3140, '101.839484705', '17.1728170833', '', 10.1, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(316, '210521123694948', '6030490013', 0, 'POLYGON ((101.800864405 17.1733387833, 101.800269405 17.1730417833, 101.799774505 17.1741663833, 101.800111205 17.1744919833, 101.800864405 17.1733387833, 101.800864405 17.1733387833))', 0x00000000010300000001000000060000005a00c75c41735940e56635ee5f2c3140b89d2a9d37735940721d60774c2c314093c967812f7359400b56082b962c3140d7a8a005357359400cb0b181ab2c31405a00c75c41735940e56635ee5f2c31405a00c75c41735940e56635ee5f2c3140, '101.800864405', '17.1733387833', '', 5.34, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 44, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(317, '220112128085798', '6033110003', 0, 'POLYGON ((101.870868339 17.1816495833, 101.870956672 17.1814929167, 101.870953339 17.18145625, 101.871513339 17.1807895833, 101.871721672 17.18060625, 101.871765005 17.1805529167, 101.872021672 17.1803329167, 101.872040005 17.1803495833, 101.872108339 17.18042625, 101.872173339 17.1804945833, 101.872183339 17.1805995833, 101.872196672 17.1807295833, 101.872200005 17.18078125, 101.872200005 17.1808395833, 101.872190005 17.1808845833, 101.872125005 17.18106625, 101.872130005 17.1810995833, 101.871928339 17.1819745833, 101.871825005 17.1819445833, 101.871601672 17.1819079167, 101.871416672 17.1818729167, 101.871210005 17.1818429167, 101.871110005 17.18183125, 101.870965005 17.18180125, 101.870715005 17.18174625, 101.870705005 17.1817379167, 101.870868339 17.1816495833, 101.870868339 17.1816495833))', 0x000000000103000000010000001c0000001ec88e4ebc775940049b4b96802e3140469e0dc1bd775940a2aedd51762e314035d612b3bd775940a167b3ea732e31401942e2dfc677594021bbe339482e3140161db249ca775940053411363c2e31406d9172ffca775940866c48b7382e31402ba9fc33cf775940699e4b4c2a2e3140d691e180cf775940e81eea632b2e3140baa47e9fd077594005172b6a302e3140aedc1fb0d1775940ef609ce4342e3140c04711dad1775940daf137c63b2e3140e27afd11d277594076b1414b442e3140f242f81fd2775940e17a14ae472e3140f242f81fd27759408418c0804b2e3140e0d706f6d1775940c49fb9734e2e3140ed9f65e5d0775940cc28965b5a2e314076555efad0775940bd97d38a5c2e31407a1d85accd7759400bfae3e2952e3140d8131bfbcb77594036f592eb932e314040186152c8775940281c6984912e314077db6e4ac5775940304135398f2e314012db9be7c17759405a3ce4418d2e314061ac2d44c07759400b24287e8c2e3140df1b01e4bd775940361fd7868a2e314022a76dcbb9775940afeb17ec862e3140113c7ca1b977594070ab4860862e31401ec88e4ebc775940049b4b96802e31401ec88e4ebc775940049b4b96802e3140, '101.870868339', '17.1816495833', '', 9.2, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(318, '210305122119132', '6033110004', 0, 'POLYGON ((101.857703705 17.1764123833, 101.857361605 17.1740125833, 101.856637605 17.1739197833, 101.856632405 17.1744130833, 101.856831805 17.1756000833, 101.857081305 17.1764383833, 101.857263705 17.1767167833, 101.857725305 17.1766998833, 101.857703705 17.1764123833, 101.857703705 17.1764123833))', 0x000000000103000000010000000a00000084a8149ee476594007e2a85c292d31408c943503df765940b15db2168c2c3140ec7f8826d3765940a266c501862c3140ce0ab910d37659409dc4f855a62c314073291155d6765940c9f28620f42c31403bbf8b6bda7659405908de102b2d314075419668dd76594086eda44f3d2d31404e7badf8e476594003fb1b343c2d314084a8149ee476594007e2a85c292d314084a8149ee476594007e2a85c292d3140, '101.857703705', '17.1764123833', '', 14.59, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(319, '190513108688816', '6033110006', 0, 'POLYGON ((101.843756614 17.1860725825, 101.844414527 17.1859582512, 101.844801822 17.1852234336, 101.844522407 17.1851221211, 101.844370834 17.1851335961, 101.844343232 17.1854862943, 101.844140978 17.1855108237, 101.844201798 17.1853248247, 101.844220083 17.1850966149, 101.84406189 17.1850733654, 101.843756614 17.1860725825, 101.843756614 17.1860725825))', 0x000000000103000000010000000c0000007ababd1b007659400f85e873a22f3140de6e3ae30a7659404a53bff59a2f3140d645a93b11765940ccc38dcd6a2f314078b3b5a70c76594002e4cf29642f31407b6ef72b0a765940efa354ea642f31407e0232b809765940eedf9f077c2f31404d6ee1670676594074d828a37d2f31409a68fa660776594033399d72712f314021c7abb3077659408798e37d622f31406656291c05765940f0c0d3f7602f31407ababd1b007659400f85e873a22f31407ababd1b007659400f85e873a22f3140, '101.843756614', '17.1860725825', '', 4.13, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(320, '220113128110804', '6033110010', 0, 'POLYGON ((101.877465005 17.1678462499, 101.877611672 17.1678429165, 101.877158339 17.1662212498, 101.877100005 17.1663029165, 101.876735005 17.1666679165, 101.876613339 17.1667879165, 101.876440005 17.1669329165, 101.876253339 17.1671179165, 101.876518339 17.1677895832, 101.877048339 17.1678195832, 101.877058339 17.1676312499, 101.877371672 17.1676162499, 101.877465005 17.1678462499, 101.877465005 17.1678462499))', 0x000000000103000000010000000e00000002f7fa6228785940a513caf8f72a3140fc7425ca2a785940963bddc0f72a3140ccdaba5c237859408fcacf798d2a3140f9320f6822785940d098f3d3922a3140f06e236d1c785940f3a8a2bfaa2a3140838fd56e1a78594048bce69cb22a31406498d197177859404ffe981dbc2a31400381e2881478594073f1613dc82a31405a1660e01878594017741442f42a314008415b8f21785940ec786539f62a31401aac4cb921785940ad1bb0e1e92a3140516b83db26785940429907e6e82a314002f7fa6228785940a513caf8f72a314002f7fa6228785940a513caf8f72a3140, '101.877465005', '17.1678462499', '', 8.92, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(321, '220321129418955', '6033110011', 0, 'POLYGON ((101.861808339 17.1683579165, 101.861453339 17.1684662499, 101.860395005 17.1691129165, 101.860566672 17.1695812499, 101.860846672 17.1694595832, 101.861078339 17.1693379165, 101.861191672 17.1692129165, 101.861255005 17.1691012499, 101.861361672 17.1690029165, 101.861468339 17.1689129165, 101.861653339 17.1688029165, 101.861543339 17.1686395832, 101.861816672 17.1684545832, 101.861808339 17.1683579165, 101.861808339 17.1683579165))', 0x000000000103000000010000000f00000035db29de27775940e4632181192b31403d822f0d22775940decca99a202b3140790736b610775940ddb2edfb4a2b314020113c8613775940d65542ad692b314011c7a31c1877594079d607b4612b3140235352e81b7759401d57cdba592b3140f7b4acc31d775940a46da689512b314072ff4fcd1e775940810832384a2b314025d1b48c20775940ce4b6fc6432b3140d8a2194c227759404e3d7ce03d2b3140a1df0b542577594040d6fdaa362b3140dd45ac8623775940b3a7b6f62b2b3140ce581d01287759408fb4edd61f2b314035db29de27775940e4632181192b314035db29de27775940e4632181192b3140, '101.861808339', '17.1683579165', '', 4.84, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(322, '201123120716823', '6033110013', 0, 'POLYGON ((101.819430369 17.1851086371, 101.819350909 17.185029775, 101.819382402 17.1847629553, 101.819644774 17.1841203618, 101.819727324 17.1840181869, 101.82228666 17.1834635595, 101.822438222 17.183526311, 101.822538285 17.1839762919, 101.822620249 17.1844346107, 101.822555799 17.1845284491, 101.822178217 17.1845569884, 101.822132159 17.1846252473, 101.819430369 17.1851086371, 101.819430369 17.1851086371))', 0x000000000103000000010000000e000000120d138c71745940388d9647632f31409586cb3e707459404769801c5e2f314082e0e2c2707459409b8602a04c2f3140b5aa5a0f757459406d751483222f3140ed0d986976745940cf9aded01b2f3140c6283a58a07459406d0fc477f72e31401b9eecd3a274594056b38f94fb2e31401b729e77a474594029f3fc11192f3140df9e66cfa5745940fd344d1b372f3140c5f513c1a4745940ec10a6413d2f3140e95f62919e7459401f6d75203f2f314046f933d09d7459405f2ba799432f3140120d138c71745940388d9647632f3140120d138c71745940388d9647632f3140, '101.819430369', '17.1851086371', '', 24.25, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(323, '220328129438459', '6033110015', 0, 'POLYGON ((101.834476405 17.1370205829, 101.834786005 17.1369695829, 101.835486005 17.1365204829, 101.836074505 17.1361565829, 101.836659605 17.1359953829, 101.836751105 17.1360183829, 101.837402405 17.1358246829, 101.837067005 17.1350191829, 101.836718905 17.1352092829, 101.834491705 17.1362214829, 101.834476405 17.1370205829, 101.834476405 17.1370205829))', 0x000000000103000000010000000c0000008e30b90f68755940326feac7132331408ba847226d7559402e1a47701023314068ef4a9a78755940254aa101f3223140a4ffa33e82755940ccb06628db223140fe56bad48b75594066f6e997d02231407bb781548d755940d735ca19d222314046c44100987559408a0b0b68c522314048c27c81927559405de3fe9d90223140e03a73cd8c755940ce2b58139d2231408870e54f6875594071113e69df2231408e30b90f68755940326feac7132331408e30b90f68755940326feac713233140, '101.834476405', '17.1370205829', '', 15.85, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(324, '210223121894552', '6033110018', 0, 'POLYGON ((101.83947414 17.1642452927, 101.838231596 17.1637656632, 101.837994157 17.1635707493, 101.838343123 17.1631042377, 101.839281555 17.1635801428, 101.839395724 17.1633919108, 101.839562468 17.1635591575, 101.839491763 17.1637717994, 101.839660132 17.1639135527, 101.83947414 17.1642452927, 101.83947414 17.1642452927))', 0x000000000103000000010000000b000000d048bef1b97559401fabc0fa0b2a3140cfd22296a5755940d9a6e78bec29314076a33eb2a175594062d3cac5df2931402307ea69a7755940b1c20633c12931401bb7fbc9b6755940dc996363e0293140ddbed7a8b87559402451610dd429314094c03764bb7559407f6c5003df2931402bd6a83bba755940196edaf2ec2931407cacd9fdbc755940b937143df6293140d048bef1b97559401fabc0fa0b2a3140d048bef1b97559401fabc0fa0b2a3140, '101.83947414', '17.1642452927', '', 6.93, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(325, '210522123729323', '6033110019', 0, 'POLYGON ((101.844066405 17.1850687834, 101.843706205 17.1849808834, 101.843512805 17.1852368834, 101.843291205 17.1854061834, 101.843116705 17.1855461834, 101.843026805 17.1856202834, 101.842913705 17.1857409834, 101.842877205 17.1857902834, 101.842808805 17.1859362834, 101.842800605 17.1859798834, 101.842828705 17.1860247834, 101.842905505 17.1860419834, 101.842993505 17.1860661834, 101.843042805 17.1860709834, 101.843141305 17.1860361834, 101.843256905 17.1859805834, 101.843306605 17.1859618834, 101.843375505 17.1859483834, 101.843449105 17.1859502834, 101.843494305 17.1859659834, 101.843545005 17.1859912834, 101.843645205 17.1860690834, 101.843697005 17.1861393834, 101.843739505 17.1861462834, 101.844066405 17.1850687834, 101.844066405 17.1850687834))', 0x000000000103000000010000001a0000002648192f05765940a836f4aa602f3140117a4f48ff75594094963ce85a2f3140ddce211dfc7559404a3734af6b2f3140af9eac7bf8755940df2d96c7762f3140ecabc49ff5755940c29965f47f2f31401648b326f475594060ad96cf842f3140d014534cf2755940d93a99b88c2f314035813bb3f1755940191eb7f38f2f314060905794f0755940c1573085992f314089e1f271f0755940baeaac609c2f3140b906cfe7f0755940d0f2f8519f2f3140fa65ee29f2755940cf628a72a02f3140c9ad079bf375594034988c08a22f31409926cf69f475594004701459a22f31406fb8f206f67559405e933b11a02f31407a46cfebf7755940dd646b6c9c2f3140733e44bcf87559406d81af329b2f31403d0e41ddf9755940737231509a2f31403174f411fb7559408be211709a2f3140959589cffb75594019df78779b2f3140774b30a4fc755940488bef1f9d2f3140be397548fe755940ecff3339a22f3140520db921ff7559405b33a4d4a62f31405e14fbd3ff75594096796748a72f31402648192f05765940a836f4aa602f31402648192f05765940a836f4aa602f3140, '101.844066405', '17.1850687834', '', 5.52, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(326, '220324129436179', '603311002', 0, 'POLYGON ((101.876898405 17.1655400832, 101.876734505 17.1655233832, 101.876516005 17.1650627832, 101.876506205 17.1650264832, 101.876303605 17.1651041832, 101.876270605 17.1650329832, 101.876015805 17.1650853832, 101.875953505 17.1650614832, 101.875794405 17.1651348832, 101.875585705 17.1645455832, 101.876337505 17.1644031832, 101.877292705 17.1643016832, 101.877512905 17.1644906832, 101.877604305 17.1646182832, 101.877793005 17.1647264832, 101.877981405 17.1648990832, 101.878054105 17.1649921832, 101.878065905 17.1651858832, 101.876898405 17.1655400832, 101.876898405 17.1655400832))', 0x0000000001030000000100000014000000efd87c1a1f7859406885bbd5602a3140fc8f0a6b1c78594039918dbd5f2a314051f995d61878594078a1f78d412a3140d44d7bad187859406151f42c3f2a3140e235b75b15785940dc468b44442a3140f4ba4dd114785940f69a019a3f2a3140435098a41078594042e42109432a3140a9324a9f0f7859405a2c2878412a3140aadff9030d785940d5c59a47462a31407df49f9809785940958bcaa81f2a3140ed0ee7e915785940ca33b753162a3140a43f4d90257859409205d4ac0f2a3140c032e32b2978594038d7b80f1c2a314072333fab2a785940ecaa7e6c242a31407c48b6c22d7859400c21ca832b2a3140273eebd830785940017c89d3362a3140fd45d809327859408cf07eed3c2a31404a6d563b32785940d91a3e9f492a3140efd87c1a1f7859406885bbd5602a3140efd87c1a1f7859406885bbd5602a3140, '101.876898405', '17.1655400832', '', 13.86, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(327, '220108127994876', '6033110021', 0, 'POLYGON ((101.822481672 17.1915929168, 101.821543339 17.1907045834, 101.821980005 17.1901929168, 101.822136672 17.1903062501, 101.822475005 17.1905779168, 101.822668339 17.1906962501, 101.823020005 17.1909545834, 101.823186672 17.1910695834, 101.823346672 17.1912029168, 101.823378339 17.1912679168, 101.822481672 17.1915929168, 101.822481672 17.1915929168))', 0x000000000103000000010000000c00000029b32a8aa37459401fcdbf3b0c3131401b50832a947459407ae6fc03d230314038dc05529b7459403c96a57bb030314044c521e39d745940666710e9b73031402810346ea3745940edfedfb6c93031406bdd1a99a67459403ba62d78d1303140715b195cac7459406cb94a66e23031408faf2617af7459409ef6abefe9303140ab603db6b1745940498ea2acf2303140598f0f3bb2745940186e27eff630314029b32a8aa37459401fcdbf3b0c31314029b32a8aa37459401fcdbf3b0c313140, '101.822481672', '17.1915929168', '', 8.65, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(328, '220404129441333', '6033110029', 0, 'POLYGON ((101.860008405 17.1678239832, 101.860344705 17.1689112832, 101.861077305 17.1686173832, 101.860700905 17.1675789832, 101.860008405 17.1678239832, 101.860008405 17.1678239832))', 0x0000000001030000000100000006000000a670b1600a77594016543783f62a3140c1d03ce30f775940f74415c53d2b31406113fce31b775940906142822a2b314035a73fb9157759404757cc74e62a3140a670b1600a77594016543783f62a3140a670b1600a77594016543783f62a3140, '101.860008405', '17.1678239832', '', 6.29, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(329, '220114128144837', '603311020', 0, 'POLYGON ((101.878215005 17.1660095832, 101.878023339 17.1651995832, 101.876796672 17.1655445832, 101.876556672 17.1656479165, 101.876478339 17.1656429165, 101.876216672 17.1650845832, 101.875978339 17.1651512498, 101.875988339 17.1652545832, 101.875931672 17.1653362498, 101.875983339 17.1655195832, 101.876020005 17.1656295832, 101.876023339 17.1657445832, 101.876035005 17.1658412498, 101.875995005 17.1659312498, 101.876033339 17.1663112498, 101.876085005 17.1666562498, 101.876245005 17.1670945832, 101.877155005 17.1662395832, 101.877148339 17.1661612498, 101.878215005 17.1660095832, 101.878215005 17.1660095832))', 0x00000000010300000001000000150000003755b5ac34785940a6aaa29a7f2a31404d88cd8831785940262817854a2a3140d3dec96f1d785940bbdf3a21612a314029d52781197859409e04e0e6672a3140136a9a38187859407b2efd92672a3140cc9c17ef13785940f4eab5fb422a31409a80730710785940d7c8305a472a3140aceb643110785940ad5bd61f4e2a31405131b7430f785940fabbf979532a314023366c1c1078594009b1cc7d5f2a3140790736b61078594018184bb3662a31406ae231c4107859404955ac3c6e2a3140142820f51078594001387892742a3140cc7b5a4d1078594081466b787a2a31407c4d23ee107859400fd9c25f932a31406c3fd7c611785940a490e6fba92a314089f0ed6514785940c92eeab5c62a3140dbffbe4e23785940092565ad8e2a3140ba6fc93223785940e4c02d8b892a31403755b5ac34785940a6aaa29a7f2a31403755b5ac34785940a6aaa29a7f2a3140, '101.878215005', '17.1660095832', '', 16.23, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(330, '220214128795655', '603311022', 0, 'POLYGON ((101.861366672 17.18096625, 101.861125005 17.18084625, 101.860988339 17.1797795833, 101.860863339 17.17849125, 101.860865005 17.17848625, 101.861016672 17.17857625, 101.861115005 17.1786395833, 101.861366672 17.18096625, 101.861366672 17.18096625))', 0x0000000001030000000100000009000000ae86ada120775940056eddcd532e31408b8f0dac1c775940af5a99f04b2e3140838fd56e1a77594013c3e608062e314025d58b6218775940465f419ab12d3140bcaf88691877594022895e46b12d314040e3abe51a775940a297512cb72d314079241c821c775940690be052bb2d3140ae86ada120775940056eddcd532e3140ae86ada120775940056eddcd532e3140, '101.861366672', '17.18096625', '', 4.17, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 43, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(331, '220201128560162', '6033270009', 0, 'POLYGON ((101.958683101 17.1338298559, 101.958097254 17.132608839, 101.958124334 17.1325953751, 101.958895434 17.1322500514, 101.959532657 17.1334698865, 101.958683101 17.1338298559, 101.958683101 17.1338298559))', 0x000000000103000000010000000700000077815d105b7d5940a35166ac4222314050142577517d594060aa22a7f22131400902bae8517d5940c5a73fc5f12131401454f48a5e7d594046a8ad23db2131409350a9fb687d5940b1841d152b22314077815d105b7d5940a35166ac4222314077815d105b7d5940a35166ac42223140, '101.958683101', '17.1338298559', '', 9.04, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(332, '220104127907224', '6033270010', 0, 'POLYGON ((101.953993371 17.1406650263, 101.954633748 17.1405317463, 101.954693427 17.1404631839, 101.954761823 17.1402472444, 101.954724943 17.1401354299, 101.954746736 17.1399326258, 101.954745395 17.1398031899, 101.95461229 17.1393005036, 101.954905992 17.1391989409, 101.954601226 17.1389294952, 101.95459318 17.1388157576, 101.954685716 17.1386699811, 101.954654535 17.1385943695, 101.954425877 17.1385226026, 101.95365273 17.1389496796, 101.953993371 17.1406650263, 101.953993371 17.1406650263))', 0x0000000001030000000100000011000000ee42363a0e7d594044a6879f0224314059d425b8187d5940846876e3f9233140f4aa75b2197d59407d242d65f5233140475055d11a7d5940580d503ee723314012b7a5361a7d5940706e60eadf2331404cc50d921a7d59405474e39fd223314006e26d8c1a7d59403a7f5024ca233140387a255e187d59404147a332a92331403e99052e1d7d5940a7cdb28aa22331400e99bd2f187d5940735526e2902331406b45fe0d187d5940bc0ff36d892331406a0b1e92197d5940eec239e07f23314066b3550f197d59408969aceb7a233140f40a4650157d59407eec9f3776233140d5c575a5087d5940f3abc93492233140ee42363a0e7d594044a6879f02243140ee42363a0e7d594044a6879f02243140, '101.953993371', '17.1406650263', '', 12.77, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(333, '200118117396839', '6033270012', 0, 'POLYGON ((101.957339125 17.1328810655, 101.956698411 17.1316391704, 101.957438468 17.1312190616, 101.958147272 17.1325600404, 101.957339125 17.1328810655, 101.957339125 17.1328810655))', 0x00000000010300000001000000060000009a43520b457d59408494567e0422314055d8f88b3a7d594096bdcb1ab321314083fffeab467d59400e2f8a9297213140777fef48527d594042466e74ef2131409a43520b457d59408494567e042231409a43520b457d59408494567e04223140, '101.957339125', '17.1328810655', '', 9.22, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(334, '210309122204659', '6033270014', 0, 'POLYGON ((101.962821966 17.0339580169, 101.964050298 17.0340839019, 101.964195257 17.0331836334, 101.963981634 17.0324206939, 101.963462835 17.0324283233, 101.962974554 17.0332236877, 101.962821966 17.0339580169, 101.962821966 17.0339580169))', 0x0000000001030000000100000008000000caf505e09e7d5940c405fc78b1083140fb660500b37d594007fbfbb8b90831407ef10560b57d59402837fcb87e08314061fe05e0b17d59409e03fcb84c08314022cf0560a97d5940a109fc384d083140da130660a17d5940c01ffc5881083140caf505e09e7d5940c405fc78b1083140caf505e09e7d5940c405fc78b1083140, '101.962821966', '17.0339580169', '', 12.41, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(335, '210309122204657', '6033270015', 0, 'POLYGON ((101.960609441 17.0333037964, 101.96063233 17.0314498535, 101.959663396 17.0313792816, 101.959770208 17.0317721954, 101.960220342 17.0332503906, 101.960609441 17.0333037964, 101.960609441 17.0333037964))', 0x0000000001030000000100000007000000ba5405a07a7d5940e25efc9886083140233506007b7d59401a3ffc180d083140403f05206b7d5940753efc78080831403fc205e06c7d5940452afc382208314003760540747d5940cb34fc1883083140ba5405a07a7d5940e25efc9886083140ba5405a07a7d5940e25efc9886083140, '101.960609441', '17.0333037964', '', 9.28, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(336, '210309122204656', '6033270018', 0, 'POLYGON ((101.960670477 17.0314193359, 101.960655218 17.0299602142, 101.959625249 17.0304313293, 101.959716802 17.0313697448, 101.960670477 17.0314193359, 101.960670477 17.0314193359))', 0x0000000001030000000100000006000000a73c06a07b7d59400d27fc180b083140ac0206607b7d59408f2bfc78ab073140bc3705806a7d5940081efc58ca073140c08005006c7d5940f7fffbd807083140a73c06a07b7d59400d27fc180b083140a73c06a07b7d59400d27fc180b083140, '101.960670477', '17.0314193359', '', 8.85, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(337, '210309122204658', '6033270020', 0, 'POLYGON ((101.960662847 17.0333285919, 101.960685735 17.031436502, 101.961235052 17.0314727416, 101.961288458 17.032432138, 101.961181646 17.033340036, 101.960662847 17.0333285919, 101.960662847 17.0333285919))', 0x0000000001030000000100000007000000399605807b7d5940733bfc3888083140c26305e07b7d59409afdfb380c083140f80606e0847d594030e3fb980e083140774806c0857d5940a30cfc784d08314078c50500847d59407844fcf888083140399605807b7d5940733bfc3888083140399605807b7d5940733bfc3888083140, '101.960662847', '17.0333285919', '', 7.97, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(338, '210224121907073', '6033270026', 0, 'POLYGON ((101.957130812 17.1343137404, 101.955988448 17.1347255894, 101.95574945 17.1347852257, 101.95553715 17.1348267941, 101.954986734 17.1348783051, 101.954588966 17.1349046868, 101.953751579 17.1348693838, 101.95371825 17.1348584564, 101.953649343 17.1348120435, 101.953458224 17.1342061013, 101.955999497 17.1332448645, 101.956627602 17.133079765, 101.957130812 17.1343137404, 101.957130812 17.1343137404))', 0x000000000103000000010000000e0000002ce297a1417d5940e36ba26262223140e2e02bea2e7d5940466850607d223140e1babdff2a7d5940905dd848812231403c574a85277d5940b6483f028422314035a9ad801e7d59402b58756287223140eb8551fc177d594014e2111d892231400e1410440a7d594016a7c8cc862231404b5645b8097d5940b9d37315862231405c024197087d59407ef0c50a83223140aa8ba475057d5940d501c0545b223140e0a683182f7d59403063df551c2231409e42fa62397d5940336ff683112231402ce297a1417d5940e36ba262622231402ce297a1417d5940e36ba26262223140, '101.957130812', '17.1343137404', '', 30.02, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(339, '220120128285838', '6033270028', 0, 'POLYGON ((101.955777505 17.150065883, 101.955203605 17.149181383, 101.956723605 17.148080983, 101.957360805 17.149181283, 101.955777505 17.150065883, 101.955777505 17.150065883))', 0x00000000010300000001000000060000008f8e69752b7d5940f9babbb76a263140c31f4d0e227d5940342849c03026314051b2a4f53a7d59400025a3a2e82531409ffc4066457d59400ba99bbe302631408f8e69752b7d5940f9babbb76a2631408f8e69752b7d5940f9babbb76a263140, '101.955777505', '17.150065883', '', 15.78, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(340, '220201128560163', '6033270031', 0, 'POLYGON ((101.956610905 17.1331064828, 101.958088705 17.1326326828, 101.958613605 17.1338626828, 101.957131805 17.1343279828, 101.956610905 17.1331064828, 101.956610905 17.1331064828))', 0x000000000103000000010000000600000035fef11c397d5940f78236441322314016a94953517d5940ba012b37f421314071bee0ec597d5940e4c724d344223140ef1bc2a5417d59404b1095516322314035fef11c397d5940f78236441322314035fef11c397d5940f782364413223140, '101.956610905', '17.1331064828', '', 15.18, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(341, '200409120574007', '6033270046', 0, 'POLYGON ((101.955483205 17.1348488828, 101.956821105 17.1345019828, 101.957391705 17.1357300828, 101.956853005 17.1361394828, 101.956763905 17.1360171828, 101.955879905 17.1361014828, 101.955483205 17.1348488828, 101.955483205 17.1348488828))', 0x00000000010300000001000000080000008b5607a3267d59403487d574852231403f86968e3c7d5940875fd1b86e223140f39bdbe7457d594099b5ea34bf2231407ae362143d7d594003528209da223140f87dac9e3b7d5940efd1a705d22231403bb8e8222d7d59402890f98bd72231408b5607a3267d59403487d574852231408b5607a3267d59403487d57485223140, '101.955483205', '17.1348488828', '', 15.43, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(342, '220109128004148', '6033270047', 0, 'POLYGON ((101.955170525 17.1491893019, 101.954568369 17.1483329514, 101.95611701 17.1469354865, 101.956661498 17.1472315116, 101.95676141 17.1473484478, 101.956802314 17.1475047897, 101.956728553 17.1480372485, 101.955170525 17.1491893019, 101.955170525 17.1491893019))', 0x00000000010300000001000000090000009abe8d83217d5940d692244531263140aba9eda5177d5940a22ef725f92531405b466605317d5940ac2365909d25314027d025f1397d59403d43dff6b0253140978135943b7d5940d86abca0b82531407fd7c53f3c7d5940cec3b7dfc22531403492650a3b7d5940b7e5e4c4e52531409abe8d83217d5940d6922445312631409abe8d83217d5940d692244531263140, '101.955170525', '17.1491893019', '', 18.85, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(343, '200118117396849', '6033270060', 0, 'POLYGON ((101.957487405 17.1312315828, 101.957924705 17.1310682828, 101.958444705 17.1316448828, 101.958829905 17.1322463828, 101.958154305 17.1325360828, 101.957487405 17.1312315828, 101.957487405 17.1312315828))', 0x0000000001030000000100000007000000a4b34079477d59400d549c649821314059006ca34e7d59403c2be4b08d213140f6bf7528577d5940cf4fa27ab3213140b7191b785d7d5940ea2321e6da213140c81f6f66527d59407c2a7de2ed213140a4b34079477d59400d549c6498213140a4b34079477d59400d549c6498213140, '101.957487405', '17.1312315828', '', 6.74, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(344, '210309122204655', '6033272006', 0, 'POLYGON ((101.960693205 17.0314936819, 101.961359205 17.0315212819, 101.961432805 17.0313554819, 101.961543505 17.0312696819, 101.960658505 17.0300041818, 101.960693205 17.0314936819, 101.960693205 17.0314936819))', 0x0000000001030000000100000007000000b93d5aff7b7d594087ca4df80f083140bf4bc2e8867d594075e35ac711083140b3b1751d887d5940924fb1e906083140ffe9c4ed897d5940e81d354a010831405a66cf6d7b7d59400193a35aae073140b93d5aff7b7d594087ca4df80f083140b93d5aff7b7d594087ca4df80f083140, '101.960693205', '17.0314936819', '', 5.29, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(345, '220320129406238', '6033275001', 0, 'POLYGON ((101.952271392 17.1519095422, 101.952527208 17.1508552176, 101.950300639 17.1509711904, 101.950235931 17.1521030427, 101.952271392 17.1519095422, 101.952271392 17.1519095422))', 0x00000000010300000001000000060000009c63b503f27c594007b3338be326314041baad34f67c5940e10592729e263140de77c5b9d17c5940fc67450ca626314043c85daad07c5940c2049a39f02631409c63b503f27c594007b3338be32631409c63b503f27c594007b3338be3263140, '101.952271392', '17.1519095422', '', 16.99, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 39, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(346, '200403120556564', '6034300002', 0, 'POLYGON ((101.849774705 17.1714407832, 101.849675305 17.1714775832, 101.849666605 17.1714481832, 101.849656605 17.1714004832, 101.849620005 17.1713612832, 101.849565305 17.1713800832, 101.849467305 17.1712806832, 101.849362805 17.1710603832, 101.849614005 17.1709613832, 101.849695105 17.1711178832, 101.849815805 17.1714100832, 101.849774705 17.1714407832, 101.849774705 17.1714407832))', 0x000000000103000000010000000d0000005bbc71b5627659406d0b0d8be32b314068cc87146176594054d773f4e52b31409d3e0af06076594078cd3307e42b31408cd318c660765940d3dcede6e02b314027e0952c6076594004254355de2b3140a43228475f7659409e87ac90df2b3140c37f1dac5d765940d1c7040dd92b31407c7acff55b765940387cff9cca2b3140b66c6b136076594012b90d20c42b3140f6e2936761765940d11ab061ce2b31405586d46163765940748cfd87e12b31405bbc71b5627659406d0b0d8be32b31405bbc71b5627659406d0b0d8be32b3140, '101.849774705', '17.1714407832', '', 0.87, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(347, '200403120556568', '6034300003', 0, 'POLYGON ((101.850487905 17.1710249832, 101.850555305 17.1711036832, 101.850589405 17.1711374832, 101.850667905 17.1711946832, 101.850686305 17.1712464832, 101.850632905 17.1712604832, 101.850401305 17.1712974832, 101.850289305 17.1713465832, 101.849799705 17.1714316832, 101.849691305 17.1711251832, 101.849665405 17.1708920832, 101.850073605 17.1707490832, 101.850284805 17.1707539832, 101.850436405 17.1707378832, 101.850461805 17.1707909832, 101.850473005 17.1708486832, 101.850487905 17.1710249832, 101.850487905 17.1710249832))', 0x00000000010300000001000000120000009667d2646e76594098a4154bc82b3140849a847f6f765940b3917373cd2b314024338b0e70765940b87685aacf2b3140d6eecb5771765940d4972d6ad32b314053c8f8a47176594026e63ccfd62b314018f8fec470765940f0701ebad72b3140d95c98f96c7659402a3be026da2b31404547d5236b7659401620a35edd2b314007484d1e637659409dd760f2e22b3140eaaaa35761765940b35d29dcce2b314020c101eb60765940437d6495bf2b3140be2a1f9b677659407e2a4036b62b3140b070f5106b76594078817588b62b314061b3d08c6d7659404388587ab52b314037be59f76d765940b24b37f5b82b3140c6a653266e7659409ee842bdbc2b31409667d2646e76594098a4154bc82b31409667d2646e76594098a4154bc82b3140, '101.850487905', '17.1710249832', '', 3.56, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(348, '200407120567327', '6034300004', 0, 'POLYGON ((101.862636405 17.1791763833, 101.861888005 17.1789942833, 101.861848305 17.1787506833, 101.861817705 17.1783223833, 101.861846805 17.1778989833, 101.862634405 17.1782136833, 101.862636405 17.1791763833, 101.862636405 17.1791763833))', 0x000000000103000000010000000800000019f4526f35775940337de280de2d31408a924e2c29775940c8f1c091d22d3140a205cb852877594041e9d29ac22d3140af85720528775940146b2489a62d3140c668807f28775940e143abc98a2d31404878ef6635775940247975699f2d314019f4526f35775940337de280de2d314019f4526f35775940337de280de2d3140, '101.862636405', '17.1791763833', '', 6, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(349, '210120121094385', '6034300005', 0, 'POLYGON ((101.873475905 17.1718228832, 101.874272905 17.1719565832, 101.874474705 17.1712283832, 101.873803505 17.1709600832, 101.873475905 17.1718228832, 101.873475905 17.1718228832))', 0x00000000010300000001000000060000006b747b07e7775940660ca095fc2b314040b05716f4775940082dbd58052c3140dfc9c064f7775940affd919fd52b3140bb468965ec775940f4433e0ac42b31406b747b07e7775940660ca095fc2b31406b747b07e7775940660ca095fc2b3140, '101.873475905', '17.1718228832', '', 4.7, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(350, '211227127674329', '6034300006', 0, 'POLYGON ((101.874275005 17.1719512499, 101.874503339 17.1712162499, 101.874575005 17.1712629166, 101.874818339 17.1713662499, 101.875361672 17.1716145832, 101.875261672 17.1718795832, 101.875146672 17.1723279166, 101.875061672 17.1723245832, 101.874808339 17.1723179166, 101.874690005 17.1722979166, 101.874205005 17.1722495832, 101.874275005 17.1719512499, 101.874275005 17.1719512499))', 0x000000000103000000010000000d000000db8b261ff4775940abd342ff042c3140dc4fdadcf777594040dd01d4d42b3140f0177109f977594088d0f1e2d72b31408cfc0e06fd7759406bf596a8de2b31405c5af6ec05785940555ceeeeee2b3140aa2b884904785940b1b1e44c002c31405edc2f67027859401dfcadae1d2c314047ceab02017859400e24c1761d2c31407a911ddcfc775940d64fe8061d2c31403d67c9ebfa77594048f75cb71b2c31405e9e8cf9f2775940f897768c182c3140db8b261ff4775940abd342ff042c3140db8b261ff4775940abd342ff042c3140, '101.874275005', '17.1719512499', '', 6.28, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(351, '220118128233731', '6034300007', 0, 'POLYGON ((101.873470005 17.1718129166, 101.872180005 17.1715779166, 101.872676672 17.1704895832, 101.872776672 17.1705195832, 101.873328339 17.1707595832, 101.873801672 17.1709595832, 101.873470005 17.1718129166, 101.873470005 17.1718129166))', 0x0000000001030000000100000008000000c460bceee6775940cfd369eefb2b3140cf6c15ccd17759404883c487ec2b3140378e41efd977594015279034a52b3140e9bcaf92db775940eb2be12ba72b314033ab8b9ce4775940955269e6b62b3140871bd95dec77594023c8da01c42b3140c460bceee6775940cfd369eefb2b3140c460bceee6775940cfd369eefb2b3140, '101.873470005', '17.1718129166', '', 9.76, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(352, '200408120571875', '6034300009', 0, 'POLYGON ((101.864870805 17.1795174833, 101.865042205 17.1788288833, 101.863887305 17.1783965833, 101.863718105 17.1793501833, 101.864870805 17.1795174833, 101.864870805 17.1795174833))', 0x00000000010300000001000000060000005faf130b5a7759406fd597dbf42d31409f08fbd95c7759408c5acdbac72d3140e599faed49775940dcfd0266ab2d31400a7c4d28477759401bcec3e4e92d31405faf130b5a7759406fd597dbf42d31405faf130b5a7759406fd597dbf42d3140, '101.864870805', '17.1795174833', '', 7.36, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(353, '200515120619911', '6034300010', 0, 'POLYGON ((101.849603286 17.1709116761, 101.848784638 17.1710392222, 101.848736022 17.1712258514, 101.847813944 17.1712353432, 101.847853655 17.1702744071, 101.849714974 17.1702545328, 101.849625666 17.1705856569, 101.849603286 17.1709116761, 101.849603286 17.1709116761))', 0x00000000010300000001000000090000006dfc75e65f765940a35a1bdec02b3140a963cd7c52765940aaaef939c92b3140565be4b05176594025fe1775d52b3140a8a46a95427659409df65614d62b31403801fa3b437659401dd7811a972b31401810eaba617659402c5f12cd952b3140fb535444607659405b8d6980ab2b31406dfc75e65f765940a35a1bdec02b31406dfc75e65f765940a35a1bdec02b3140, '101.849603286', '17.1709116761', '', 11.21, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(354, '210108120839817', '6034300012', 0, 'POLYGON ((101.86262881 17.1791459643, 101.863746468 17.1793503662, 101.863788148 17.1792671819, 101.863876083 17.1784302226, 101.863582084 17.178348265, 101.863104708 17.1783924272, 101.862644554 17.1782111529, 101.86262881 17.1791459643, 101.86262881 17.1791459643))', 0x000000000103000000010000000900000065e2774f35775940ffe08982dc2d31401d06449f47775940c95ad5e7e92d31404695154e48775940af813b74e42d31400512e9be497759405caf629aad2d3140420ccaed447759402d795d3ba82d31408d78871b3d77594095ad4820ab2d314029e0809135775940eb7c013f9f2d314065e2774f35775940ffe08982dc2d314065e2774f35775940ffe08982dc2d3140, '101.86262881', '17.1791459643', '', 7.99, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(355, '220112128088869', '6034300013', 0, 'POLYGON ((101.867596672 17.1734662499, 101.867460005 17.1728729166, 101.867833339 17.1728679166, 101.867885005 17.1728645832, 101.867961672 17.1728579166, 101.868128339 17.1728445832, 101.868478339 17.1728329166, 101.868568339 17.1728112499, 101.868761672 17.1727812499, 101.868833339 17.1727695832, 101.868890005 17.1729079166, 101.868936672 17.1731029166, 101.868960005 17.1731712499, 101.867596672 17.1734662499, 101.867596672 17.1734662499))', 0x000000000103000000010000000f000000f11631b486775940bf47be48682c31400804f8768477594040294366412c31408b58d8948a7759401d536012412c31407c4a8c6d8b7759400d7b73da402c3140fada1caf8c775940d6a69a6a402c3140172f2a6a8f7759407f22e88a3f2c314086d22b269577594024782cc73e2c31402696a89f967759408eb3aa5b3d2c314088508eca99775940b9ae59643b2c31407d2b26f79a7759406a969da03a2c3140f6d2d2e49b775940390477b1432c31403f228fa89c775940a4a30579502c314073c06c0a9d7759408eed76f3542c3140f11631b486775940bf47be48682c3140f11631b486775940bf47be48682c3140, '101.867596672', '17.1734662499', '', 5.03, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(356, '220321129418951', '6034300014', 0, 'POLYGON ((101.861005005 17.1707779166, 101.861198339 17.1707179166, 101.861511672 17.1703662499, 101.861838339 17.1708262499, 101.862660005 17.1703845832, 101.862646672 17.1703995832, 101.862730005 17.1704379166, 101.863461672 17.1708612499, 101.861696672 17.1717412499, 101.861005005 17.1707779166, 101.861005005 17.1707779166))', 0x000000000103000000010000000b000000b58abcb41a7759400fadfe19b82b3140f857a3df1d77594065a35c2bb42b31403017da0123775940a4a95f1f9d2b31406a1cfe5b287759406b9ee444bb2b3140b3424fd2357759402b96f4529e2b3140910f639a3577594095189d4e9f2b31403030e9f7367759409ecbbdd1a12b3140baa5bef44277594064791890bd2b3140f853cc0926775940d5b10b3cf72b3140b58abcb41a7759400fadfe19b82b3140b58abcb41a7759400fadfe19b82b3140, '101.861005005', '17.1707779166', '', 12.21, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(357, '201804060359947', '6034300016', 0, 'POLYGON ((101.862548005 17.1814480833, 101.862208905 17.1813214833, 101.861992905 17.1796093833, 101.862453205 17.1795697833, 101.862548005 17.1814480833, 101.862548005 17.1814480833))', 0x00000000010300000001000000060000001f2d8cfc3377594005b2af61732e3140e152426e2e775940f1d5b0156b2e3140fa164ae42a77594007546be1fa2d31408b73ed6e32775940919f0a49f82d31401f2d8cfc3377594005b2af61732e31401f2d8cfc3377594005b2af61732e3140, '101.862548005', '17.1814480833', '', 5.24, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(358, '220404129441329', '603430008', 0, 'POLYGON ((101.840116905 17.1764530833, 101.840070105 17.1767679833, 101.840022105 17.1772810833, 101.839985305 17.1774298833, 101.840284905 17.1775393833, 101.840377305 17.1775996833, 101.840185905 17.1781622833, 101.840472105 17.1780868833, 101.840617205 17.1779833833, 101.840874605 17.1778526833, 101.840929705 17.1778955833, 101.841134505 17.1778786833, 101.841163705 17.1779882833, 101.841263505 17.1779079833, 101.840819405 17.1763514833, 101.840116905 17.1764530833, 101.840116905 17.1764530833))', 0x0000000001030000000100000011000000acf2b179c4755940470d7e072c2d3140a0d466b5c3755940dd40a3aa402d3140183913ecc275594013f9064b622d31401e86b951c27559404a1b7a0b6c2d31400a93563ac775594088069538732d3140a451e4bdc8755940af8d3f2c772d314040221a9bc575594079271c0b9c2d3140380b834bca755940bd9e1b1a972d314084fb1aaccc7559404381aa51902d3140c320b8e3d07559408347e2c0872d31406f4dd3cad17559405860a0908a2d3140c7a0d125d5755940d66d1775892d3140a9e34aa0d57559403dd8dfa3902d3140c652e242d775594087f8a9608b2d31404d9431fccf755940e55fed5e252d3140acf2b179c4755940470d7e072c2d3140acf2b179c4755940470d7e072c2d3140, '101.840116905', '17.1764530833', '', 10.73, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(359, '200310120292122', '603430011', 0, 'POLYGON ((101.86899597 17.1721026169, 101.868983653 17.1722256667, 101.868918205 17.1727573896, 101.868644582 17.1728138478, 101.86829861 17.1728501262, 101.868100572 17.1728703944, 101.867391258 17.1728182618, 101.867478651 17.1722942213, 101.867683584 17.1718101687, 101.86899597 17.1721026169, 101.86899597 17.1721026169))', 0x000000000103000000010000000b0000005fe045a19d7759403a24c7ea0e2c314031999c6d9d775940200236fb162c3140f0571a5b9c7759406e790ad4392c314068e271df97775940d09840873d2c31402f475534927759407323e7e73f2c31404098b3f58e7759400665f23b412c3140907c9f568377594023954ed13d2c31407c012dc584775940f6c55d791b2c31409723ba2088775940ceaf4fc0fb2b31405fe045a19d7759403a24c7ea0e2c31405fe045a19d7759403a24c7ea0e2c3140, '101.86899597', '17.1721026169', '', 9.62, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 50, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(360, '220108127994873', '6034710008', 0, 'POLYGON ((101.801470005 17.18095625, 101.801135005 17.18105625, 101.800986672 17.1812079167, 101.800328338 17.1816595834, 101.799538338 17.1822095834, 101.799390005 17.18225625, 101.798688338 17.1811279167, 101.798601672 17.18100125, 101.799828338 17.18044625, 101.801076672 17.17999125, 101.801470005 17.18095625, 101.801470005 17.18095625))', 0x000000000103000000010000000c000000cc0cd9484b735940bec11726532e3140f989c1cb45735940857cd0b3592e314066319a5d43735940b7005ca4632e314069715994387359403eb5113e812e3140ed66d9a22b73594085b88949a52e31405b0eb23429735940d93d7958a82e314006dab0b51d7359407e9e2e665e2e314057f12f4a1c735940fe481119562e3140f087326330735940936fb6b9312e314006f516d744735940f05014e8132e3140cc0cd9484b735940bec11726532e3140cc0cd9484b735940bec11726532e3140, '101.801470005', '17.18095625', '', 23.9, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 47, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(361, '220118128230795', '6034710016', 0, 'POLYGON ((101.808236672 17.1640379165, 101.808998338 17.1643729165, 101.807761672 17.1650712499, 101.806713338 17.1654412499, 101.806488338 17.1654962499, 101.806388338 17.1652862499, 101.806351672 17.1651545832, 101.806321672 17.1650562499, 101.808236672 17.1640379165, 101.808236672 17.1640379165))', 0x000000000103000000010000000a000000bf6a4e26ba735940e6ab8e63fe2931409d0ef7a0c673594034b7ec57142a3140f20c035eb273594091d4031c422a31403ffdfa30a1735940d8ba955b5a2a31402f1443819d7359405fee54f65d2a31407ee5d4dd9b7359408acc1d33502a314028140b449b735940e6a01d92472a3140f2d236c69a73594027525b20412a3140bf6a4e26ba735940e6ab8e63fe293140bf6a4e26ba735940e6ab8e63fe293140, '101.808236672', '17.1640379165', '', 11.45, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 47, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(362, '220112128085802', '6034710049', 0, 'POLYGON ((101.839163339 17.080811249, 101.839248339 17.081126249, 101.839166672 17.0813929157, 101.839066672 17.0816979157, 101.838926672 17.0818879157, 101.838708339 17.0818995824, 101.838493339 17.0820695824, 101.838063339 17.0823479157, 101.838018339 17.0819079157, 101.838018339 17.0819079157, 101.838018339 17.0819079157, 101.838018339 17.0819079157, 101.837990005 17.0809829157, 101.837935005 17.080686249, 101.839163339 17.080811249, 101.839163339 17.080811249))', 0x0000000001030000000100000010000000754026dab47559409a9ac70bb01431408c4eaa3eb67559405a4d9ab0c4143140860821e8b4755940be0e872ad6143140d4d9b244b375594037159427ea143140dbfe7ef9b07559407ede3f9bf6143140ccb8bd65ad755940ccf6fb5ef7143140ce3af7dfa975594085671c8302153140d23e6ad4a275594045d3c4c01415314002ddab17a27559400c37cbeaf714314002ddab17a27559400c37cbeaf714314002ddab17a27559400c37cbeaf714314002ddab17a27559400c37cbeaf71431406476d4a0a17559405b77de4bbb14314083a924baa075594021b1a0daa7143140754026dab47559409a9ac70bb0143140754026dab47559409a9ac70bb0143140, '101.839163339', '17.080811249', '', 10.91, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 47, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(363, '201901189233361', '6034730043', 0, 'POLYGON ((101.836172505 17.1846766834, 101.835980205 17.1846946834, 101.835957705 17.1846049834, 101.835413505 17.1846978834, 101.834705905 17.1835829834, 101.835185405 17.1832170834, 101.835349105 17.1830942834, 101.835473905 17.1830686834, 101.835909005 17.1830185834, 101.836029205 17.1830380834, 101.836109405 17.1834297834, 101.836126405 17.1837644834, 101.836107005 17.1841980834, 101.836172505 17.1846766834, 101.836172505 17.1846766834))', 0x000000000103000000010000000f00000085b2aed98375594068899bf8462f314004251eb380755940b5f29826482f31401cf4be5480755940b261ae45422f314027a7346a77755940ead7485c482f314033f050d26b7559401cce5d4bff2e314094247cad7375594081459550e72e3140f2ad175c767559409d495744df2e3140bba88a6778755940f11fd896dd2e31400bba7b887f75594064434e4eda2e3140757ea3808175594022207695db2e3140989605d182755940bcd01841f52e314003335318837559408d5e6e300b2f31409e9bf4c6827559405a30089b272f314085b2aed98375594068899bf8462f314085b2aed98375594068899bf8462f3140, '101.836172505', '17.1846766834', '', 12.63, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 58, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(364, '220321129418972', '6035080020', 0, 'POLYGON ((101.874846005 17.145884583, 101.874811105 17.146500783, 101.873839605 17.146353683, 101.873880005 17.145722983, 101.873383405 17.145616783, 101.873344905 17.145890683, 101.873030605 17.145881383, 101.872674905 17.147046483, 101.873724405 17.147615583, 101.873858805 17.147682983, 101.874630305 17.148201883, 101.875175305 17.148460183, 101.875300905 17.148479083, 101.875762005 17.148592283, 101.875969305 17.148071483, 101.875811805 17.147596883, 101.875743005 17.147186683, 101.875799205 17.147113783, 101.875907005 17.146526583, 101.875298905 17.146627783, 101.875246605 17.146248183, 101.875408105 17.146495283, 101.875798705 17.146466083, 101.875856705 17.146397483, 101.875772505 17.146055183, 101.875441705 17.145879283, 101.874846005 17.145884583, 101.874846005 17.145884583))', 0x000000000103000000010000001c000000b820197afd775940c1f928b158253140c589b7e7fc775940cad24713812531402c5bf3fcec77594058225a6f772531409d8666a6ed775940b442f6194e25314006568283e5775940d6bb3824472531409b4607e2e4775940af468017592531407438c2bbdf7759408b14797b58253140f440d8e7d9775940117a9bd6a42531404b4cc419eb7759406f5d8522ca253140fc327b4ded77594025294e8dce253140310463f1f9775940ccb0008ff02531407a4f48df0278594041be8e7c01263140974816ee0478594005a0a5b9022631407ba3147c0c78594048ecd3240a26314097518fe10f78594089f44003e82531403ffbf44c0d785940fe79c9e8c8253140408b632c0c78594048e4c506ae2531409fd51b180d7859409ec6b63fa9253140fd3341dc0e785940c9fa21c482253140c6ccb2e50478594084abfc65892531403e1a560a047859409d155b85702531403768b7af06785940d68001b780253140aaf602160d7859404e751ccd7e25314045fd47090e785940a4b3314e7a25314081ed1ea80c78594074655adf63253140e321a53c0778594020a63d5858253140b820197afd775940c1f928b158253140b820197afd775940c1f928b158253140, '101.874846005', '17.145884583', '', 42.06, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 52, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(365, '220331129440228', '6035170006', 0, 'POLYGON ((101.824119305 17.1661292832, 101.823926705 17.1659384832, 101.823745805 17.1659694832, 101.824009605 17.1672505832, 101.825619605 17.1665954832, 101.825422705 17.1663072832, 101.825044105 17.1656712832, 101.824119305 17.1661292832, 101.824119305 17.1661292832))', 0x00000000010300000001000000090000008bbee55ebe7459407e40de72872a3140ab111337bb745940ea7dc6f17a2a31404d2c5340b8745940607adef97c2a31402744c892bc745940b81429efd02a3140559a9cf3d67459405c016800a62a314074d6c0b9d37459403c6e361d932a3140e32eca85cd745940f83ae76e692a31408bbee55ebe7459407e40de72872a31408bbee55ebe7459407e40de72872a3140, '101.824119305', '17.1661292832', '', 12.21, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(366, '201222120722907', '6035170007', 0, 'POLYGON ((101.842895305 17.1818919833, 101.843369305 17.1823321834, 101.844135505 17.1818699833, 101.844391105 17.1815024833, 101.844041205 17.1809360833, 101.843399005 17.1811523833, 101.842934505 17.1811822833, 101.843002605 17.1817617833, 101.842838705 17.1817523833, 101.842839605 17.1818248833, 101.842858505 17.1818791833, 101.842895305 17.1818919833, 101.842895305 17.1818919833))', 0x000000000103000000010000000d000000533b26fff175594097ad1779902e314037db3fc3f975594016b66c52ad2e314084d7ec5006765940c765fe078f2e31408840fd800a76594092ea5df2762e3140e4fc66c5047659409970c0d3512e31400dfdd13ffa755940afdda900602e314047e990a3f27559405b634df6612e3140bdba32c1f3755940a7efb2f0872e3140cb71c011f17559405a3efe52872e3140e8cf8615f17559405d5f57138c2e31405988cc64f1755940c11858a28f2e3140533b26fff175594097ad1779902e3140533b26fff175594097ad1779902e3140, '101.842895305', '17.1818919833', '', 9.74, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(367, '220219128871670', '6035170008', 0, 'POLYGON ((101.841625005 17.1815529167, 101.841646672 17.18163125, 101.841571672 17.1817679167, 101.841533339 17.1819529167, 101.841546672 17.1820629167, 101.841550005 17.1821379167, 101.841586672 17.18222625, 101.842451672 17.1815779167, 101.842463339 17.18129625, 101.841625005 17.1815529167, 101.841625005 17.1815529167))', 0x000000000103000000010000000b00000022fe1f2fdd7559404cb87f407a2e3140bec1008add7559407daeb6627f2e3140b91e6e4fdc75594045b09957882e3140ea5fa6aedb75594068a36277942e31400d9392e6db755940770ae1ac9b2e31401d5b8df4db7559408c962b97a02e3140543f588edc75594004392861a62e3140d5ec6abaea755940fee6ede37b2e314060455aebea7559402fa3586e692e314022fe1f2fdd7559404cb87f407a2e314022fe1f2fdd7559404cb87f407a2e3140, '101.841625005', '17.1815529167', '', 3.08, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(368, '220112128085809', '6035170009', 0, 'POLYGON ((101.823861672 17.1757479166, 101.823896672 17.1757729166, 101.824340005 17.1758295833, 101.824680005 17.1760795833, 101.824153339 17.1736079166, 101.824118339 17.1735979166, 101.824095005 17.1735962499, 101.824076672 17.1736412499, 101.824035005 17.1737262499, 101.823996672 17.1738045833, 101.823718339 17.1740212499, 101.823703339 17.1740345833, 101.823861672 17.1757479166, 101.823861672 17.1757479166))', 0x000000000103000000010000000e000000bf6a4e26ba7459401b23c2d0fd2c31407d611bb9ba745940cd513074ff2c31409b9094fcc17459405cf1e52a032d3140f8c8a48ec77459404ec4338d132d31403b79a5edbe745940ab1f8491712c31407c82d85abe7459406373bee9702c314068d1f9f8bd7459405c07c8cd702c3140bde814acbd7459409c8ec1c0732c3140fd4e51fdbc745940f8c6d152792c31402f90895cbc7459401d2b09757e2c3140b5c71fcdb77459402a2119a88c2c31401ba7358eb774594080a5cb878d2c3140bf6a4e26ba7459401b23c2d0fd2c3140bf6a4e26ba7459401b23c2d0fd2c3140, '101.823861672', '17.1757479166', '', 9.57, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(369, '220118128230793', '6035170010', 0, 'POLYGON ((101.830956672 17.1747229166, 101.830028339 17.1743979166, 101.830060005 17.1742879166, 101.830443339 17.1738262499, 101.830868339 17.1734479166, 101.831460005 17.1743079166, 101.830956672 17.1747229166, 101.830956672 17.1747229166))', 0x000000000103000000010000000800000083a8e4642e755940a3a81ca4ba2c314086b02e2f1f7559409c498457a52c314054ccffb31f7559408ee205229e2c3140e88bd1fb25755940bf818ae07f2c31405cd265f22c755940395b2915672c31400c5a06a4367559401c3b91719f2c314083a8e4642e755940a3a81ca4ba2c314083a8e4642e755940a3a81ca4ba2c3140, '101.830956672', '17.1747229166', '', 7.18, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(370, '220118128230796', '6035170015', 0, 'POLYGON ((101.825191672 17.1795179167, 101.825350005 17.17933625, 101.825430005 17.17922125, 101.825746672 17.17880625, 101.825946672 17.17893625, 101.825618339 17.1793395833, 101.825636672 17.17939125, 101.825773339 17.17947125, 101.825950005 17.17962625, 101.826043339 17.17969625, 101.826166672 17.17985625, 101.826140005 17.1799045833, 101.826091672 17.1798829167, 101.826045005 17.1799345833, 101.826168339 17.1800329167, 101.825965005 17.18029125, 101.825695005 17.18061625, 101.825598339 17.1807445833, 101.825313339 17.1805579167, 101.825248339 17.1805045833, 101.824926672 17.1803379167, 101.824870005 17.18029625, 101.824795005 17.1802695833, 101.824750005 17.1802345833, 101.824641672 17.18017125, 101.825191672 17.1795179167, 101.825191672 17.1795179167))', 0x000000000103000000010000001b000000fb0abbf0cf745940c645dde2f42d31409fced388d2745940bebc00fbe82d31402d275fd8d37459408d7f9f71e12d314055c19108d97459400612143fc62d3140b91e6e4fdc745940a2d11dc4ce2d3140e73e4deed6745940da26ed32e92d31409227323bd774594045f0bf95ec2d31407a3a6b78d97459407e52edd3f12d3140c9e6685ddc745940cc4065fcfb2d31405a85e1e4dd745940bef6cc92002e314040522deadf74594030bb270f0b2e31401bd9537adf7459408cac0d3a0e2e31403baf9aafde745940e9558cce0c2e3140f25fdeebdd74594061b15e31102e3140b93f2bf1df745940146e21a3162e31406407539cdc74594045813e91272e314084bcdc2fd87459404ce0d6dd3c2e3140c3686a9ad6745940e133ea46452e314049fd09efd1745940a9422b0b392e314055c568ded0745940360d628c352e3140a4753d99cb7459408d742ea02a2e314049bb8fabca745940695721e5272e31404418fd70c9745940afbcbc25262e314074b63eb4c8745940b6e188da232e3140290addedc6745940f06dfab31f2e3140fb0abbf0cf745940c645dde2f42d3140fb0abbf0cf745940c645dde2f42d3140, '101.825191672', '17.1795179167', '', 10, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(371, '220219128871674', '6035170022', 0, 'POLYGON ((101.823720005 17.1810329167, 101.822811672 17.18043625, 101.822946672 17.17979125, 101.822871672 17.17920125, 101.823038339 17.1791545833, 101.823031672 17.1793179167, 101.824796672 17.1802379167, 101.823720005 17.1810329167, 101.823720005 17.1810329167))', 0x00000000010300000001000000090000004da21cd4b7745940dbb9582c582e3140748049f2a87459404cc3f011312e3140e4a58428ab74594062dba2cc062e3140df02f2eda9745940fe261422e02d3140fc56ffa8ac745940b7332413dd2d3140fbb3088dac74594038d06bc7e72d3140bd05fb77c9745940c6b97512242e31404da21cd4b7745940dbb9582c582e31404da21cd4b7745940dbb9582c582e3140, '101.823720005', '17.1810329167', '', 13.44, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(372, '220218128855467', '6035170026', 0, 'POLYGON ((101.823790005 17.17875125, 101.823750005 17.1788045833, 101.823706672 17.17883625, 101.823668339 17.1788695833, 101.823625005 17.17889625, 101.823565005 17.1789195833, 101.823490005 17.17896125, 101.823425005 17.1789995833, 101.823261672 17.17910125, 101.823050005 17.17918125, 101.823050005 17.1793629167, 101.823151672 17.1794345833, 101.823545005 17.1796279167, 101.823896672 17.1797995833, 101.824355005 17.1800329167, 101.824635005 17.1801679167, 101.824645005 17.1801629167, 101.824855005 17.17990125, 101.824935005 17.17980625, 101.825068339 17.17964625, 101.825170005 17.17950125, 101.823790005 17.17875125, 101.823790005 17.17875125))', 0x0000000001030000000100000017000000ca8fb6f9b87459407fde54a4c22d314082e3f051b8745940fea51d23c62d31402b6f309cb7745940db166536c82d31405cb068fbb6745940cc85a265ca2d31402429a745b674594086200725cc2d3140baa6fe49b574594030e37eaccd2d3140b4036c0fb474594054008c67d02d3140c1cbcafeb27459406945acead22d31409452b951b0745940376c5b94d92d3140a69cedd9ac74594070ce88d2de2d3140a69cedd9ac745940785765baea2d3140d0b85984ae7459407e0bc36cef2d314096d01bf6b4745940d4ac5b18fc2d31407d611bb9ba745940a11b7258072e314036b17e3bc2745940146e21a3162e31402867e6d1c6745940d4030e7c1f2e314039d2d7fbc6745940b02d2b281f2e3140af9aa56cca745940704221020e2e31403df330bccb745940cc5d4bc8072e3140153e6febcd7459405b99f04bfd2d31405f47da95cf74594054573ecbf32d3140ca8fb6f9b87459407fde54a4c22d3140ca8fb6f9b87459407fde54a4c22d3140, '101.823790005', '17.17875125', '', 11.11, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(373, '220330129439582', '6035170028', 0, 'POLYGON ((101.823707505 17.1659898832, 101.822859405 17.1661606832, 101.822825205 17.1661144832, 101.822771905 17.1660981832, 101.822755505 17.1660233832, 101.822592005 17.1660257832, 101.822649505 17.1661292832, 101.822604505 17.1664046832, 101.822372805 17.1663821832, 101.822561605 17.1669382832, 101.822623205 17.1669486832, 101.822704505 17.1670224832, 101.822778405 17.1670425832, 101.822890605 17.1672799832, 101.822922605 17.1673389832, 101.823016005 17.1673734832, 101.823309705 17.1674208832, 101.823478205 17.1674866832, 101.823505005 17.1674583832, 101.823445705 17.1673495832, 101.823718905 17.1672863832, 101.823986305 17.1671965832, 101.823707505 17.1659898832, 101.823707505 17.1659898832))', 0x000000000103000000010000001800000077dcae9fb774594095cf1f507e2a3140966b7ebaa97459409b39ac81892a31402b730c2ba974594067bc907a862a3140ba027e4ba8745940dec41869852a31400ea5b406a87459401c372982802a314045dbef58a574594004236daa802a3140eb021c4aa67459407e40de72872a31401ba15d8da5745940c83e507f992a314011a68bc1a1745940287bd305982a3140e61a6ed9a47459405dcba277bc2a3140f799ccdba57459404b741e26bd2a3140cdcfcb30a77459406c0a47fcc12a31401f55c166a874594024e27f4dc32a3140482a5b3daa745940931e69dcd22a31404ee792c3aa7459409d3044bad62a3140d063524bac745940c58f14fdd82a3140155d301bb1745940ed025218dc2a314067dcedddb374594009dc4268e02a31404f24564eb4745940f848778dde2a31406d409d55b3745940ded71a6cd72a31409b847fcfb7745940fee8c847d32a3140ec140e31bc745940d1d83065cd2a314077dcae9fb774594095cf1f507e2a314077dcae9fb774594095cf1f507e2a3140, '101.823707505', '17.1659898832', '', 11.79, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 48, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(374, '220524130434224', '6036800008', 0, 'POLYGON ((101.910388363 17.1480577523, 101.910316949 17.1471241866, 101.909987708 17.1470991974, 101.909905901 17.1469012065, 101.909056982 17.1469047307, 101.909119343 17.1478552772, 101.909520669 17.1478559179, 101.9097101 17.1480955561, 101.909811688 17.1481272729, 101.910388363 17.1480577523, 101.910388363 17.1480577523))', 0x000000000103000000010000000b0000009d6f8dcd437a59403b0ce41ce7253140c53c05a2427a5940c9e541eea9253140cf67153d3d7a5940d119024ba8253140e0cef5e53b7a594013a945519b253140fdf855fd2d7a5940f4fb658c9b2531402596e5022f7a5940721decd7d925314007192e96357a59408be6abe2d9253140d115b6b0387a5940e7212297e9253140a15ecd5a3a7a59404cc040abeb2531409d6f8dcd437a59403b0ce41ce72531409d6f8dcd437a59403b0ce41ce7253140, '101.910388363', '17.1480577523', '', 9.57, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 66, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(375, '210505122957059', '6038070002', 0, 'POLYGON ((101.864697005 17.1701104832, 101.864429805 17.1707892832, 101.864318505 17.1710566832, 101.864162705 17.1714636832, 101.863825305 17.1722619832, 101.864002505 17.1726819832, 101.864021705 17.1727676832, 101.864021705 17.1727676832, 101.864096405 17.1726847832, 101.864206605 17.1723994832, 101.864316605 17.1724974832, 101.864386605 17.1724397832, 101.864216905 17.1721764832, 101.864219405 17.1720753832, 101.864153005 17.1719189832, 101.864221905 17.1717565832, 101.864198505 17.1717199832, 101.864243305 17.1716861832, 101.864270905 17.1716691832, 101.864311405 17.1715800832, 101.864338005 17.1714350832, 101.864394705 17.1713449832, 101.864501305 17.1711789832, 101.864827905 17.1709579832, 101.864961605 17.1709989832, 101.865207705 17.1705372832, 101.865198505 17.1704437832, 101.865174705 17.1703851832, 101.865275605 17.1701457832, 101.865277705 17.1700794832, 101.864775105 17.1699417832, 101.864697005 17.1701104832, 101.864697005 17.1701104832))', 0x0000000001030000000100000021000000255b1b3257775940fe0c525c8c2b3140698a63d152775940eed9b1d8b82b31405e1390fe50775940321bec5eca2b3140771917714e775940b3cb3f0be52b3140aa9beee9487759402730805c192c3140c6a829d14b775940d273eee2342c31409680b1214c7759405226bd803a2c31409680b1214c7759405226bd803a2c31403c04025b4d775940615ce811352c3140955d38294f775940f9305e5f222c314058f797f6507759407ffc88cb282c3140d5e4311c52775940935f7d03252c314006e86b544f775940fb7b0cc2132c3140ca42e85e4f775940694adf210d2c3140c5cd67484e775940d467eae1022c31408e9d64694f7759407ab74b3df82b3140890e3f074f775940e6e93fd7f52b3140c4b026c34f775940e1042ea0f32b3140fff6e936507759403593f782f22b31403a82c8e0507759402cfd1dacec2b31408d0a5a505177594025bb6b2be32b3140e0332b3e527759407c2dcb43dd2b3140c21448fd53775940469bc662d22b31402a2924575977594089d502e7c32b31405371eb875b775940467ee096c62b3140394e23905f775940bb17d654a82b31407ae18c695f77594088a62a34a22b31404bd3b9055f7759402591055d9e2b31401a60eeac6077594074658eac8e2b3140b53bbdb56077594088103a548a2b3140ae97ae79587759406311014e812b3140255b1b3257775940fe0c525c8c2b3140255b1b3257775940fe0c525c8c2b3140, '101.864697005', '17.1701104832', '', 7.75, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(376, '220108127994875', '6038070003', 0, 'POLYGON ((101.863401672 17.1744512499, 101.863605005 17.1741045833, 101.863663339 17.1740579166, 101.863745005 17.1740245833, 101.863745005 17.1740245833, 101.863788339 17.1738145833, 101.863890005 17.1736912499, 101.864075005 17.1734979166, 101.864318339 17.1733612499, 101.864423339 17.1733945833, 101.864476672 17.1733029166, 101.864520005 17.1733129166, 101.864430005 17.1735579166, 101.864353339 17.1737662499, 101.864325005 17.1738779166, 101.864275005 17.1740379166, 101.864150005 17.1743962499, 101.864108339 17.1745195833, 101.864050005 17.1747179166, 101.863401672 17.1744512499, 101.863401672 17.1744512499))', 0x00000000010300000001000000150000004f2316f9417759401b114dd6a82c3140c348ed4d45775940725b331e922c314096f09842467759402a68430f8f2c3140bc2321994777594039f905e08c2c3140bc2321994777594039f905e08c2c3140f4aae24e4877594064d7ce1c7f2c31403eb44df949775940ffeb9d07772c314007f13f014d7759409cb8055c6a2c3140a2d5ddfd50775940d5b62267612c3140ddb944b652775940b9936096632c31404699f69553775940321977945d2c31409e0db74b5477594079c53c3c5e2c3140fe493ad25277594047c2a74a6e2c314061ccaa90517759401578e8f17b2c3140c365d319517759402a4b5d43832c31406a4e1c48507759409c0fb8bf8d2c31400c94d23b4e77594094dd8d3ba52c31402d0d108d4d775940f9c8be50ad2c31405a6564984c7759407fd23950ba2c31404f2316f9417759401b114dd6a82c31404f2316f9417759401b114dd6a82c3140, '101.863401672', '17.1744512499', '', 5.05, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(377, '210407122451669', '6038070006', 0, 'POLYGON ((101.835895984 17.1483230617, 101.834405662 17.1487938719, 101.835370552 17.1516221432, 101.836132568 17.1516642105, 101.836145244 17.1503100156, 101.835895984 17.1483230617, 101.835895984 17.1483230617))', 0x0000000001030000000100000007000000d188de517f7559407d3e0b80f8253140c87801e766755940dda7ed5a172631406a380cb676755940b86472b5d02631408dab2c328375594038123877d3263140e66b576783755940644399b77a263140d188de517f7559407d3e0b80f8253140d188de517f7559407d3e0b80f8253140, '101.835895984', '17.1483230617', '', 27.91, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(378, '210318122353936', '6038070013', 0, 'POLYGON ((101.863411778 17.1744183143, 101.863677428 17.173898624, 101.863822849 17.1736691951, 101.863902658 17.1735999217, 101.863174607 17.1732460989, 101.863022165 17.1735811898, 101.862744844 17.1741712119, 101.863411778 17.1744183143, 101.863411778 17.1744183143))', 0x0000000001030000000100000009000000705f792342775940f0bdbbada62c31406be3b07d467759403fe6c69e842c3140867fa1df48775940f3469995752c314066c25f2e4a775940274a620b712c31405ff3b4403e77594062ef38db592c31407b9951c13b7759404b641dd16f2c31407371263637775940e3030b7c962c3140705f792342775940f0bdbbada62c3140705f792342775940f0bdbbada62c3140, '101.863411778', '17.1744183143', '', 5.32, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(379, '210116120993420', '6038070015', 0, 'POLYGON ((101.867570305 17.1734806833, 101.866007605 17.1729946832, 101.866163305 17.1727392832, 101.866207005 17.1726443832, 101.866272205 17.1725452832, 101.866418605 17.1723915832, 101.866498505 17.1722124832, 101.867438605 17.1725409832, 101.867414705 17.1726728832, 101.867433705 17.1727893832, 101.867448905 17.1729483832, 101.867570305 17.1734806833, 101.867570305 17.1734806833))', 0x000000000103000000010000000d0000002bbd994586775940e042e53a692c3140fc6329ab6c775940d3b92a61492c314019fe36386f775940171444a4382c3140a28281ef6f7759409eae1b6c322c31402a7af900717759404e6c7ced2b2c3140be470567737759401df3d3da212c3140814025b674775940944e071e162c3140d3f0351d847759404e1058a52b2c3140d982f7b8837759400240424a342c3140149ba80884775940a5f0cdec3b2c3140447b69488477594076bd6158462c31402bbd994586775940e042e53a692c31402bbd994586775940e042e53a692c3140, '101.867570305', '17.1734806833', '', 8.28, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(380, '220218128857250', '6038070018', 0, 'POLYGON ((101.862643339 17.1723429166, 101.862036672 17.1721029166, 101.862240005 17.1721179166, 101.863420005 17.1718329166, 101.863396672 17.1719312499, 101.863365005 17.1722045832, 101.863790005 17.1723745832, 101.863873339 17.1723129166, 101.864105005 17.1728112499, 101.862643339 17.1723429166, 101.862643339 17.1723429166))', 0x000000000103000000010000000b0000008147688c35775940887e56aa1e2c3140558cdc9b2b775940dd57ceef0e2c3140c9b1b3f02e77594048da76eb0f2c3140fa0bfb45427759405d2cf53dfd2b3140c66d1de4417759401c7bb7af032c3140193f4b5f41775940b8107d99152c31408c85df554877594071819dbd202c31400bb966b349775940b27905b31c2c31403c32147f4d7759408eb3aa5b3d2c31408147688c35775940887e56aa1e2c31408147688c35775940887e56aa1e2c3140, '101.862643339', '17.1723429166', '', 5.18, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(381, '220324129436199', '6038070020', 0, 'POLYGON ((101.86626803 17.1721010583, 101.866438962 17.1722330943, 101.866220966 17.1726116858, 101.866022823 17.1729536198, 101.86582117 17.1731229924, 101.865361505 17.1733807685, 101.865289633 17.1734597435, 101.865345678 17.1735591898, 101.865292729 17.1736569419, 101.86440135 17.1732734271, 101.864405702 17.1730147353, 101.864317601 17.1729147903, 101.864206949 17.1730116448, 101.864099821 17.172899082, 101.864114095 17.1728130509, 101.864158886 17.1724379301, 101.865075583 17.1732223002, 101.86626803 17.1721010583, 101.86626803 17.1721010583))', 0x0000000001030000000100000013000000e79a76ef707759406801a1d00e2c31404b7167bc73775940b14ed377172c31401705102a707759401e6b8947302c3140f997fdea6c7759400dc43cb0462c31406855329d697759402d8bd6c9512c31404fcc3815627759407d769aae622c314062d3c4e7607759404b8195db672c3140adafd6d2617759407b1c04606e2c31406221c1f460775940122f06c8742c314091370a5a527759400ca9b6a55b2c314038244b6c52775940f0d695b14a2c3140bd69c5fa507759404c55c924442c314095bba92a4f775940403ebc7d4a2c31402aeb55694d775940ccb23e1d432c3140698234a54d775940ffefe1793d2c3140bd7a12614e775940935e66e4242c31406763fa655d775940014cf24b582c3140e79a76ef707759406801a1d00e2c3140e79a76ef707759406801a1d00e2c3140, '101.86626803', '17.1721010583', '', 8.19, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(382, '220321129418947', '6038070021', 0, 'POLYGON ((101.867650005 17.1742462499, 101.867621672 17.1744345833, 101.867458339 17.1744645833, 101.866931672 17.1745279166, 101.866480005 17.1742595833, 101.866556672 17.1739112499, 101.867650005 17.1742462499, 101.867650005 17.1742462499))', 0x00000000010300000001000000080000005af6e293877759406ac5f8669b2c31409da20c1d877759409c90aebea72c31407029fb6f847759407295ffb5a92c3140d3c6face7b77594038098edcad2c31403a078d6874775940c049ab469c2c3140b8971daa757759401cba9a72852c31405af6e293877759406ac5f8669b2c31405af6e293877759406ac5f8669b2c3140, '101.867650005', '17.1742462499', '', 3.17, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(383, '210519123596845', '6038070025', 0, 'POLYGON ((101.877827905 17.1547422831, 101.878095105 17.1545050831, 101.878079505 17.1542228831, 101.878137405 17.1538281831, 101.878038605 17.1533275831, 101.877461805 17.1535811831, 101.877355605 17.1536133831, 101.877342305 17.1536238831, 101.877827905 17.1547422831, 101.877827905 17.1547422831))', 0x000000000103000000010000000a00000070df17552e7859400e39b5309d2731402cb0cfb532785940f2fa26a58d273140d35061743278594097359f267b273140a3f73a67337859401b9ea748612731406e46d5c8317859403efdfa7940273140b4fd8e55287859400bb2ae1851273140fd9b1f982678594076a4e83453273140d3d75660267859408dcc11e55327314070df17552e7859400e39b5309d27314070df17552e7859400e39b5309d273140, '101.877827905', '17.1547422831', '', 4.83, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(384, '210116120993421', '6038070030', 0, 'POLYGON ((101.864874722 17.1749892637, 101.864099968 17.1747063719, 101.86449832 17.1733583445, 101.865244902 17.173640796, 101.864874722 17.1749892637, 101.864874722 17.1749892637))', 0x00000000010300000001000000060000002288811b5a7759401cbeac18cc2c314038c2f3694d7759409cb6898eb92c314034f6c2f053775940bf1d6436612c3140ba47272c60775940481224b9732c31402288811b5a7759401cbeac18cc2c31402288811b5a7759401cbeac18cc2c3140, '101.864874722', '17.1749892637', '', 8.36, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(385, '210519123596849', '6038070040', 0, 'POLYGON ((101.805178128 17.1798182629, 101.80507964 17.1800118849, 101.80526027 17.1802596539, 101.805323554 17.1803754918, 101.80541039 17.180701045, 101.805455317 17.1807316808, 101.805272005 17.180797353, 101.805350963 17.1810693039, 101.80536957 17.1811554279, 101.805695207 17.1810663702, 101.805847507 17.1811131832, 101.805919004 17.1812220222, 101.805932834 17.1808256839, 101.805805932 17.180074833, 101.80577735 17.1798981005, 101.805693866 17.1795029357, 101.805178128 17.1798182629, 101.805178128 17.1798182629))', 0x0000000001030000000100000012000000bacdd709887359400861d691082e31406e1ec16c867359406d894642152e3140c31a5f6289735940ed49267f252e314039c8cd6b8a735940ea4796162d2e3140273a05d88b735940c6a0766c422e3140e03975948c7359401a63726e442e314000779793897359409f563ebc482e3140c6f8c3de8a7359405b8fd28e5a2e3140fd15cf2c8b735940c952be33602e3140f926a18290735940186a9a5d5a2e314033086c0193735940edb7fe6e5d2e3140ea594d2d94735940fba90291642e31405e334f679473594099a08e974a2e314038370b539273594052915e62192e3140e28629db9173594091424acd0d2e3140b343017d90735940145e86e7f32d3140bacdd709887359400861d691082e3140bacdd709887359400861d691082e3140, '101.805178128', '17.1798182629', '', 6.3, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(386, '201128120718623', '6038070060', 0, 'POLYGON ((101.865894705 17.1705340832, 101.866044905 17.1702603832, 101.866315905 17.1703458832, 101.866334005 17.1703746832, 101.866009805 17.1708314832, 101.865809405 17.1711369832, 101.865348305 17.1717995832, 101.865126805 17.1716751832, 101.865246305 17.1714128832, 101.865015805 17.1714426832, 101.864947705 17.1715807832, 101.864856205 17.1717737832, 101.864405105 17.1721478832, 101.864269205 17.1720141832, 101.864279705 17.1718281832, 101.864368105 17.1716780832, 101.864349605 17.1713984832, 101.864566505 17.1711790832, 101.864666005 17.1710721832, 101.864858305 17.1711026832, 101.865123805 17.1707326832, 101.865233005 17.1705213832, 101.865386405 17.1704005832, 101.865894705 17.1705340832, 101.865894705 17.1705340832))', 0x00000000010300000001000000190000004bf09fd16a7759408532261fa82b3140eaf59b476d775940ffa5392f962b3140b2fe43b8717759402c5aadc99b2b3140d0b82e04727759400d69dcac9d2b3140629f63b46c7759409f78b19cbb2b3140d4c2d96b69775940e8fa21a2cf2b3140f067dbdd61775940784fb70efb2b31408d97d13c5e775940fa60a1e7f22b31406ebd0932607759400275f7b6e12b3140e13f406b5c775940847bedaae32b31406b6e9e4d5b7759405077dcb7ec2b3140ee0dd7cd597759407927dd5df92b31401c1eca69527759406d6b38e2112c31408e9ac82f50775940cb4a1b1f092c314094e4d25b5077594006608beefc2b31408dab99ce51775940b2c84818f32b3140467201815177594092ed5fc5e02b31404a0cc00e557759406f1a7464d22b3140085c15b0567759406d19f862cb2b314089e9a5d659775940139aac62cd2b3140d45d3c305e775940ccb31a23b52b314044f940fa5f775940d91c144aa72b314031f8a87d627759403610645f9f2b31404bf09fd16a7759408532261fa82b31404bf09fd16a7759408532261fa82b3140, '101.865894705', '17.1705340832', '', 11.11, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(387, '201130120718803', '6038070061', 0, 'POLYGON ((101.865286605 17.1718432832, 101.865677105 17.1721826832, 101.865939905 17.1719565832, 101.866257805 17.1720848832, 101.865078205 17.1731959833, 101.864488405 17.1726571832, 101.864434205 17.1726162832, 101.865286605 17.1718432832, 101.865286605 17.1718432832))', 0x0000000001030000000100000009000000148911db607759409b61e1ebfd2b3140beb7f140677759401248112a142c3140b011358f6b775940082dbd58052c31404e9893c470775940e07a41c10d2c314046bdf9705d77594073126c92562c3140c2cf2cc7537759407343db42332c31403301d8e352775940e019ab94302c3140148911db607759409b61e1ebfd2b3140148911db607759409b61e1ebfd2b3140, '101.865286605', '17.1718432832', '', 8.19, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(388, '220331129440235', '603807008', 0, 'POLYGON ((101.866674505 17.1760538833, 101.866359805 17.1759652833, 101.865537905 17.1751914833, 101.864881905 17.1749639833, 101.865230505 17.1740323833, 101.866926605 17.1745221833, 101.866674505 17.1760538833, 101.866674505 17.1760538833))', 0x000000000103000000010000000800000021d0579877775940781b07de112d3140d0426570727759403f01910f0c2d314018db18f964775940ad4f5b59d92c31402438a2395a7759405b408a70ca2c3140809ec4ef5f775940ebb7e2628d2c31407820bab97b77594034b35d7cad2c314021d0579877775940781b07de112d314021d0579877775940781b07de112d3140, '101.866674505', '17.1760538833', '', 17.09, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 45, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(389, '220407129442517', '6064090007', 0, 'POLYGON ((102.018723705 17.1410969829, 102.018572805 17.1410955829, 102.018498305 17.1411514829, 102.018379605 17.1412130829, 102.018023105 17.1413642829, 102.017777305 17.1415595829, 102.017696605 17.1415805829, 102.017594305 17.1415293829, 102.017459405 17.1413904829, 102.017427305 17.1412592829, 102.017586205 17.1411691829, 102.017612505 17.1410965829, 102.017585305 17.1410080829, 102.017494705 17.1408692829, 102.017499205 17.1408452829, 102.017434405 17.1408863829, 102.017362005 17.1409243829, 102.017294605 17.1409283829, 102.017330405 17.1408421829, 102.017264305 17.1407081829, 102.017236605 17.1406967829, 102.019351905 17.1395377829, 102.019475505 17.1395231829, 102.019486005 17.1396282829, 102.019543205 17.1397133829, 102.019590305 17.1396937829, 102.019632205 17.1398155829, 102.019746005 17.1399170829, 102.019778105 17.1400695829, 102.019801005 17.1401922829, 102.019816905 17.1403634829, 102.019855405 17.1404783829, 102.019844905 17.1405195829, 102.019075505 17.1408479829, 102.018984805 17.1407686829, 102.018929805 17.1407007829, 102.018673705 17.1407391829, 102.018723705 17.1410969829, 102.018723705 17.1410969829))', 0x0000000001030000000100000027000000a328e9c432815940a91e8fee1e2431407b84fd4b30815940622a12d71e24314069c083132f81594060d6ea8022243140dc98a6212d815940a5d2648a2624314008a3614a27815940c4e01b733024314081e56b4323815940acfdb23f3d2431406aeef0f021815940db4d05a03e2431408924dd432081594083fa06453b243140e35e0d0e1e8159406a05ac2a3224314013426a871d815940d94f8091292431407dd5e3212081594030c2dfa923243140713e3390208159400322d9e71e2431405f771d1e20815940f486101b1924314001751ca21e8159400411630210243140954bfcb41e815940f3d9bb6f0e24314037d331a51d815940da01472111243140c0ea86751c815940b5c3cf9e13243140d3b7d45a1b81594038a2ebe113243140e4acfcf01b815940e773b93b0e2431403e57bedb1a815940c8d593730524314038b18f671a8159403a3551b404243140c7c5c50f3d815940a21c86bfb8233140144330163f815940de9693cab72331401a8d3a423f815940f2a6dcadbe2331406195243240815940785e9a41c4233140cbd2b1f7408159409102c5f8c2233140189b6fa741815940d4063cf4ca233140e86cbf84438159400c351f9bd1233140b889620b4481594049b8a599db233140ca396f6b44815940033536a4e323314082b81fae44815940b09b78dcee233140edc79a4f45815940b8592c64f6233140e77d902345815940c9006517f92331404d887788388159405843089d0e24314024260b0c37815940435b996a0924314042595b2536815940bd136df7042431404a1132f3318159403ed2ab7b07243140a328e9c432815940a91e8fee1e243140a328e9c432815940a91e8fee1e243140, '102.018723705', '17.1410969829', '', 18.26, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 42, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(390, '200413120582607', '6064090042', 0, 'POLYGON ((101.953936885 17.1093373626, 101.953756808 17.1113893855, 101.953721647 17.111470178, 101.953647449 17.1115232753, 101.953511215 17.1115754385, 101.953398775 17.1115520594, 101.953312336 17.1113176349, 101.953305647 17.1110356183, 101.953537763 17.1106379256, 101.953483856 17.109791366, 101.953106808 17.1093899217, 101.952758567 17.1092979339, 101.952552198 17.1091538679, 101.952544803 17.1089152124, 101.953307203 17.1088616363, 101.953345621 17.1089272723, 101.953361127 17.1090142491, 101.953359627 17.1091063914, 101.953341384 17.1091874386, 101.953328428 17.1092902512, 101.953321818 17.1093497878, 101.953721875 17.1093774973, 101.953795631 17.1093515004, 101.953936885 17.1093373626, 101.953936885 17.1093373626))', 0x00000000010300000001000000190000007be14a4d0d7d594010998c88fd1b3140a1acfe590a7d594013d8c703841c31408bd684c6097d594043fd404f891c31409b574f8f087d5940042814ca8c1c3140d532e753067d5940f5643b35901c3140f9aa4b7c047d5940a9ecfeac8e1c3140937fbe11037d5940135d01507f1c3140413db0f5027d5940264a8dd46c1c314081e540c3067d5940372660c4521c31402db226e1057d5940695a76491b1c31401e7db2b3ff7c5940a83658fa001c3140ed8f11fff97c5940f19e0bf3fa1b314026897e9df67c5940c7dc0482f11b314006377a7ef67c59407e4b0bdee11b314047fb36fc027d594092b22f5bde1b3140b5fe599d037d5940c62b60a8e21b3140886f63de037d5940b8ae9a5be81b3140acd218d8037d5940fbd87e65ee1b3140048d948b037d5940c7eb3db5f31b3140db263d55037d5940f6ac2672fa1b3140e4b78339037d5940f06c0259fe1b3140b5a679c7097d594063d2e529001c31409d8dd4fc0a7d59408dfcbd75fe1b31407be14a4d0d7d594010998c88fd1b31407be14a4d0d7d594010998c88fd1b3140, '101.953936885', '17.1093373626', '', 9.45, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 42, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(391, '220308129193196', '6064090076', 0, 'POLYGON ((101.954040868 17.1096251388, 101.953964898 17.109441974, 101.954055186 17.1087455859, 101.954549746 17.108919883, 101.954837971 17.1091593317, 101.955093389 17.1094741285, 101.955131128 17.1095808755, 101.954040868 17.1096251388, 101.954040868 17.1096251388))', 0x0000000001030000000100000009000000e1c66d010f7d594028f7a164101c3140499cc9c20d7d5940c223a363041c3140c09c7b3d0f7d59405d062fc0d61b3140685ed157177d5940805e672ce21b3140239bb8101c7d594068b4afddf11b31405f980540207d594065aa197f061c3140b4894fde207d5940208a047e0d1c3140e1c66d010f7d594028f7a164101c3140e1c66d010f7d594028f7a164101c3140, '101.954040868', '17.1096251388', '', 4.87, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 42, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(392, '220102127858677', '6064090107', 0, 'POLYGON ((101.957622175 17.1076108526, 101.957580905 17.1075227526, 101.957517745 17.1074129526, 101.957466875 17.1073225826, 101.957422845 17.1072406826, 101.957361825 17.1071311126, 101.957282065 17.1069796726, 101.957208065 17.1068387826, 101.957126725 17.1066962026, 101.957039245 17.1065250026, 101.957014285 17.1064168026, 101.956947585 17.1062916426, 101.957006215 17.1062774126, 101.957102085 17.1062372626, 101.957503285 17.1061001126, 101.957672255 17.1060053626, 101.957802095 17.1059728126, 101.957960595 17.1059127426, 101.958125725 17.1058583426, 101.958201495 17.1058332126, 101.958259415 17.1058022626, 101.958318085 17.1057875126, 101.958321635 17.1058257626, 101.958359305 17.1059099526, 101.958410735 17.1059784426, 101.958481955 17.1059705826, 101.958599395 17.1059618426, 101.958724475 17.1059676226, 101.958898135 17.1059671326, 101.959068095 17.1059907926, 101.959157765 17.1060038526, 101.959233695 17.1060257926, 101.959338085 17.1060056426, 101.959464315 17.1060336026, 101.959641665 17.1060209726, 101.959722885 17.1060165326, 101.959795535 17.1060176926, 101.959853445 17.1060228626, 101.959907325 17.1060344226, 101.960014845 17.1060652826, 101.960048415 17.1060537026, 101.960102665 17.1060949926, 101.960307625 17.1060700426, 101.960357135 17.1061264726, 101.960388925 17.1062027126, 101.960390365 17.1062707526, 101.960401835 17.1063299526, 101.960398145 17.1064163126, 101.960403055 17.1064753626, 101.960418665 17.1065533426, 101.960438645 17.1066259226, 101.960437185 17.1066835426, 101.960454995 17.1067011526, 101.957622175 17.1076108526, 101.957622175 17.1076108526))', 0x000000000103000000010000003700000029e384ae497d5940979c84628c1b3140f18f6b01497d59402ffe719c861b3140570782f8477d594074954e6a7f1b314036c82423477d5940a663267e791b3140f8ed776a467d594056911820741b31401734886a457d59404800d1f16c1b31403b8efe1b447d59405f271305631b31401ea99de5427d5940223655c9591b31402a807390417d59403ec63c71501b3140de908821407d5940925ffa38451b31404ff8d7b83f7d594071e9ae213e1b3140ea6315a13e7d59401cced8ed351b31409adffe963f7d5940a66b1bff341b31408a801a29417d5940cb7b805d321b3140ceb8dbbb477d59400bb88160291b3140bee091804a7d59405091dd2a231b31402e8428a14c7d5940d461c408211b31406e98f4394f7d594059b2f5181d1b314034958fee517d5940cc794788191b314036005d2c537d594097f2aae2171b314095204c1f547d5940b6b569db151b3140628f6015557d594033f1f2e3141b3140f4574424557d5940f670ad65171b3140b53244c2557d5940e8bc26ea1c1b314076bdfa99567d59404b0c3967211b3140fea1b2c4577d5940e69a5ae3201b314062df46b1597d59404597b850201b3140fc7fe6bd5b7d59407b80b1b1201b31404e8148965e7d5940c8f778a9201b31405faa255f617d5940e5e46b36221b3140491840d7627d5940c12a8811231b3140c24fb915647d5940debf9f81241b3140773891cb657d59409128902f231b3140a9a603dd677d5940ae71a704251b314075c3dfc46a7d5940d201c230241b31400f1389196c7d5940325a44e6231b3140ff6a404a6d7d5940ae83baf9231b314096ce243d6e7d5940cc7e7750241b31403704221f6f7d594037516912251b3140c5bc1ae2707d59400c022818271b31401b40e86e717d59406649e055261b31408ebe7252727d5940827c9b0a291b31405dde1cae757d5940650d0468271b314089d3c57d767d59408d0ec11a2b1b314033141c03777d59400d5dd919301b314062442609777d594035f05e8f341b3140fa154239777d594092009570381b314080fac729777d5940bf6076193e1b3140060d603e777d59405e3228f8411b31402729d97f777d59401abf7114471b3140bb85a6d3777d59400b7922d64b1b3140fddb86cd777d5940097dd69c4f1b314083333a18787d5940cddc48c4501b314029e384ae497d5940979c84628c1b314029e384ae497d5940979c84628c1b3140, '101.957622175', '17.1076108526', '', 28.15, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 42, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(393, '220102127858678', '6064090114', 0, 'POLYGON ((101.959264895 17.1071701526, 101.959306635 17.1074266726, 101.959357235 17.1076767326, 101.959404205 17.1079464826, 101.959432935 17.1084575526, 101.959447795 17.1085799826, 101.959473615 17.1086439826, 101.959598055 17.1086273626, 101.959700495 17.1086020126, 101.959846425 17.1085633626, 101.959947335 17.1085690926, 101.960102495 17.1085392326, 101.960294795 17.1085247026, 101.960448495 17.1085035226, 101.960650165 17.1084723626, 101.960709315 17.1084562526, 101.960858395 17.1084202026, 101.960912115 17.1084161126, 101.960921705 17.1082154626, 101.960911735 17.1081130926, 101.960901135 17.1080231626, 101.960909915 17.1079128626, 101.960894035 17.1077744126, 101.960884135 17.1076371526, 101.960880055 17.1075707726, 101.960873745 17.1075143126, 101.960862145 17.1074173426, 101.960861485 17.1073545126, 101.960862385 17.1072747226, 101.960853435 17.1072112726, 101.960845695 17.1071117726, 101.960800415 17.1068995426, 101.960793385 17.1068391026, 101.960771715 17.1067489126, 101.960755035 17.1067031926, 101.959264895 17.1071701526, 101.959264895 17.1071701526))', 0x0000000001030000000100000025000000750e9698647d59403a86cc806f1b31404b0aa847657d5940fc887d50801b31406260e31b667d5940a10ecdb3901b3140ac07e5e0667d5940387c7461a21b3140f0a16559677d5940d46bc9dfc31b3140a36fb997677d59406a44d2e5cb1b314031730504687d5940982c9017d01b3140efe1f50d6a7d594057d1b900cf1b3140b9fe9fbb6b7d594093656c57cd1b3140ae23b31f6e7d59402ae9fbceca1b3140456df2c66f7d5940ca121e2fcb1b31405035bc51727d59409559263ac91b3140d1c24c78757d5940a2796046c81b31401de1f6fc777d59405b1109e3c61b31409c64d44a7b7d594009e341d8c41b3140ce38ec427c7d5940b6f6f9c9c31b31402ca735b47e7d59408864286dc11b3140551087957f7d5940f9f98928c11b3140763fc0bd7f7d5940dcc93002b41b3140ba0aef937f7d594086fcb44cad1b3140ea6079677f7d5940d693ee67a71b3140f0d44c8c7f7d59404baf672da01b3140c6cfb1497f7d59406e76991a971b31407fc42b207f7d59406640c21b8e1b3140a3e60e0f7f7d59408c5216c2891b31400b9797f47e7d59400b78d80e861b3140522ff0c37e7d5940807df5b37f1b3140e7832bc17e7d5940edb1d8957b1b314005e2f1c47e7d59402541315b761b3140c1e4679f7e7d59405d94ad32721b3140c121f17e7e7d5940665558ad6b1b3140201a06c17d7d5940a36cb7c45d1b314071b289a37d7d5940da99b3ce591b314033b6a5487d7d5940258090e5531b3140b6b2af027d7d5940869882e6501b3140750e9698647d59403a86cc806f1b3140750e9698647d59403a86cc806f1b3140, '101.959264895', '17.1071701526', '', 18.05, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 42, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(394, '220309129204725', '6064760005', 0, 'POLYGON ((101.956360572 17.1317766077, 101.955726782 17.1307973407, 101.957179142 17.1300031089, 101.957891949 17.1310411688, 101.956360572 17.1317766077, 101.956360572 17.1317766077))', 0x000000000103000000010000000600000020fbf802357d594007739c1cbc2131407c26aaa02a7d5940d4b53cef7b2131406ad34d6c427d5940941a3de247213140a183081a4e7d5940f56cfee98b21314020fbf802357d594007739c1cbc21314020fbf802357d594007739c1cbc213140, '101.956360572', '17.1317766077', '', 14.89, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(395, '210129121322568', '6064760006', 0, 'POLYGON ((101.952634605 17.1312600828, 101.951221205 17.1321443828, 101.952939805 17.1344216828, 101.954383105 17.1338209828, 101.952634605 17.1312600828, 101.952634605 17.1312600828))', 0x0000000001030000000100000006000000d36022f7f77c594071e5c2429a21314026afe7cee07c5940e279da36d421314006623cf7fc7c5940d17f9b75692231401ef5df9c147d594003a5881742223140d36022f7f77c594071e5c2429a213140d36022f7f77c594071e5c2429a213140, '101.952634605', '17.1312600828', '', 34.97, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(396, '210103120804012', '6064760009', 0, 'POLYGON ((101.990677025 17.0838144795, 101.990850331 17.08464898, 101.992486796 17.0845722251, 101.992260356 17.0835667637, 101.990677025 17.0838144795, 101.990677025 17.0838144795))', 0x000000000103000000010000000600000082d19b40677f59403e62a0dd741531400db881176a7f594061bd388eab15314009a256e7847f594057f47c86a6153140ca889431817f5940c21fa5a16415314082d19b40677f59403e62a0dd7415314082d19b40677f59403e62a0dd74153140, '101.990677025', '17.0838144795', '', 11.16, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(397, '190404105337950', '6064760018', 0, 'POLYGON ((101.955717068 17.1307976361, 101.956386211 17.1318422029, 101.953939068 17.1331865445, 101.953326758 17.1322849274, 101.955717068 17.1307976361, 101.955717068 17.1307976361))', 0x00000000010300000001000000060000007fd2eb772a7d5940907131f47b213140c8a5826e357d594027b01d69c0213140f3db72560d7d59400ee56c8318223140c0003c4e037d5940ceefcc6cdd2131407fd2eb772a7d5940907131f47b2131407fd2eb772a7d5940907131f47b213140, '101.955717068', '17.1307976361', '', 24.04, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(398, '210103120804014', '6064760024', 0, 'POLYGON ((101.992410447 17.0812598866, 101.993045354 17.0836056098, 101.992283035 17.0835725383, 101.991941424 17.0824151509, 101.991839297 17.081971432, 101.991768329 17.0817188957, 101.991644658 17.0813798165, 101.992410447 17.0812598866, 101.992410447 17.0812598866))', 0x0000000001030000000100000009000000b8841ba7837f5940766cab72cd143140fcb7190e8e7f594067da5f2d67153140d7ecb390817f59409bd78602651531402ce8e1f77b7f594077cfc928191531402be0874b7a7f594073a56b14fc143140de90de21797f59402a7f9087eb1431403dd7271b777f5940076cc24ed5143140b8841ba7837f5940766cab72cd143140b8841ba7837f5940766cab72cd143140, '101.992410447', '17.0812598866', '', 12.91, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(399, '210103120804016', '6064760028', 0, 'POLYGON ((101.992231821 17.0835647937, 101.992186589 17.0835655342, 101.992098799 17.0835763662, 101.991839571 17.0835875861, 101.991675807 17.0836078552, 101.991544397 17.0836282361, 101.991386451 17.0836606008, 101.991253934 17.0836879455, 101.991038781 17.0837428798, 101.99086348 17.0837763577, 101.990633965 17.083807333, 101.990599896 17.0837866773, 101.990556104 17.0836793162, 101.990516825 17.0835775415, 101.990506903 17.0834849451, 101.990475865 17.0833549531, 101.990461839 17.0832697562, 101.990437761 17.0831436106, 101.990376155 17.0829832788, 101.990331596 17.0828936575, 101.990305857 17.0828439902, 101.990295182 17.0827231285, 101.990247774 17.0825971293, 101.990195181 17.0824018806, 101.990173436 17.0822263097, 101.990098444 17.0819911669, 101.990055852 17.081881876, 101.990026213 17.0817453881, 101.990005811 17.0816699364, 101.989989487 17.0816346422, 101.989950845 17.0815763021, 101.989913692 17.0815166147, 101.989850255 17.0814395933, 101.989806986 17.0814033088, 101.989752384 17.0813687447, 101.989674945 17.0813470851, 101.989623783 17.0813535343, 101.989611976 17.0813102936, 101.989657089 17.081322073, 101.989805117 17.0812615439, 101.989906615 17.0812801821, 101.989942023 17.0812843533, 101.98994657 17.0812825457, 101.990059378 17.0813159696, 101.990249413 17.0812967594, 101.990255211 17.08134266, 101.991586681 17.0812137185, 101.9916165 17.0813955845, 101.991650135 17.08148493, 101.991687168 17.0815841592, 101.991768852 17.0818096924, 101.99177571 17.0818553241, 101.991823297 17.0819787048, 101.99183927 17.0820863809, 101.991871692 17.0822359265, 101.991905295 17.0823729354, 101.992231821 17.0835647937, 101.992231821 17.0835647937))', 0x000000000103000000010000003a000000b74fe5b9807f5940da099880641531403ad22dfc7f7f59403776048d64153140c706f68b7e7f59402a8cbf4265153140b714ae4c7a7f5940ada6fcfe6515314029d3cd9d777f5940d0c50b53671531406969a176757f59405912fba868153140852f28e0727f59405366f8c76a153140ed2357b4707f5940effdbc926c1531409d5dec2d6d7f59408c03622c70153140a659a84e6a7f5940df7f0c5e72153140d67e008c667f59406566ba65741531406d2f1bfd657f594011d82e0b7315314020e26d45657f59403f6ef6016c153140d160aea0647f59402e6c77566515314039b61077647f5940b1e9f4445f153140bfe9e1f4637f59402c860dc0561531403a9c0dba637f5940f99faf2a51153140fb0d1055637f5940fb6550e648153140a61dab52627f5940948f64643e153140fe40c697617f59402202cc84381531408b36d12b617f59404394844335153140e3040bff607f5940c287cb572d15314013113338607f59404516e1152515314051c39b5b5f7f59404f4e264a181531403b3f67005f7f594043088fc80c1531403b33ddc55d7f59407965845ffd1431406b6338135d7f59401d8eeb35f614314022c1e7965c7f5940037d0844ed143140144655415c7f594087e72952e81431402083ddfc5b7f59403c780602e61431400bfbc95a5b7f5940eba53d2fe21431402b40f5be5a7f59409637da45de143140624ae2b4597f5940b3d2a539d91431403b8e66ff587f59400a15e5d8d6143140c11a621a587f594030670195d4143140859c94d5567f594022219e29d31431400bd5fdfe557f5940863bd195d3143140992978cd557f594015d75bc0d01431409de0af8a567f594059fafb85d11431406cbb8ff7587f59401479798ecd143140386146a15a7f5940b3ee2bc7ce143140266ec9355b7f59409a19270dcf143140febbdb485b7f59406284d3eece143140eb6602225d7f59401413961fd1143140f7ed123f607f5940cfe44addcf143140127c6457607f59403b7860dfd2143140d482fb27767f5940adf1186cca143140236b0da5767f594060774d57d614314089b92032777f594083774532dc143140109b74cd777f5940baa20fb3e214314004221024797f5940945ae17af1143140b3dad340797f594053037478f4143140a8016c087a7f59409e15708efc14314077e26a4b7a7f59409a69f19c03153140f7bd67d37a7f5940afdfe6690d15314045b058607b7f5940579e876416153140b74fe5b9807f5940da09988064153140b74fe5b9807f5940da09988064153140, '101.992231821', '17.0835647937', '', 30.36, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(400, '220109128004144', '6064760030', 0, 'POLYGON ((101.993901959 17.0836018757, 101.993281362 17.0811062595, 101.992400257 17.0812203529, 101.993043652 17.0835746346, 101.993901959 17.0836018757, 101.993901959 17.0836018757))', 0x00000000010300000001000000060000007655f6169c7f59400904baee661531400c61fdeb917f5940ab0d3c61c3143140d9165e7c837f59409f7967dbca143140c935f6068e7f5940d561b225651531407655f6169c7f59400904baee661531407655f6169c7f59400904baee66153140, '101.993901959', '17.0836018757', '', 15.76, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(401, '210224121907088', '6064760050', 0, 'POLYGON ((101.956706105 17.1289410828, 101.957165505 17.1299240828, 101.953344705 17.1322658828, 101.952649005 17.1312455828, 101.956706105 17.1289410828, 101.956706105 17.1289410828))', 0x0000000001030000000100000006000000f2363eac3a7d5940a1bc65480221314066351b33427d5940bb9666b4422131408c728299037d5940a800492ddc213140af428833f87c5940d6de7d4f99213140f2363eac3a7d5940a1bc654802213140f2363eac3a7d5940a1bc654802213140, '101.956706105', '17.1289410828', '', 38.99, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(402, '220121128300291', '6064760052', 0, 'POLYGON ((101.99459531 17.0843982737, 101.99429289 17.0836634084, 101.993054716 17.0836198227, 101.993263257 17.0845972926, 101.993434584 17.0845998564, 101.99357037 17.0849661659, 101.993690399 17.0851119844, 101.994134305 17.0850818593, 101.99459531 17.0843982737, 101.99459531 17.0843982737))', 0x000000000103000000010000000a0000001e4d1673a77f59405f6111209b153140804ca57ea27f59402cf312f76a153140f3165e358e7f594038cbd31b681531408a480da0917f5940120c0d2ba8153140b43fa66e947f5940fb7b1056a81531402d5b2da8967f594098ceb757c015314078839d9f987f5940e47e25e6c9153140a1f37de59f7f5940272dbbecc71531401e4d1673a77f59405f6111209b1531401e4d1673a77f59405f6111209b153140, '101.99459531', '17.0843982737', '', 11.94, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(403, '210114120939436', '606476017', 0, 'POLYGON ((101.992517268 17.0845754998, 101.993239118 17.0845239024, 101.993010459 17.0836195022, 101.992274193 17.0835996323, 101.992517268 17.0845754998, 101.992517268 17.0845754998))', 0x00000000010300000001000000060000009eb12567857f594011af6dbda6153140bf3ace3a917f5940ce89c45ba31531406c7fbd7b8d7f5940be4173166815314063e69d6b817f5940a6af16c9661531409eb12567857f594011af6dbda61531409eb12567857f594011af6dbda6153140, '101.992517268', '17.0845754998', '', 5.08, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(404, '220109128004146', '606476125', 0, 'POLYGON ((101.995169973 17.0836031576, 101.995498879 17.0836720614, 101.996270014 17.0836823168, 101.997058919 17.0831596089, 101.996644852 17.0825532531, 101.996460786 17.0826647817, 101.996253585 17.082709329, 101.995908251 17.0826862541, 101.995430482 17.0826852927, 101.995003341 17.082790732, 101.995169973 17.0836031576, 101.995169973 17.0836031576))', 0x000000000103000000010000000c000000c2ff65ddb07f5940fdbb3b04671531409e20ee40b67f59404a4d3f886b15314064074ee3c27f5940d6e84d346c153140915236d0cf7f5940db92b8f24915314046447d07c97f59402f3ec2352215314074e77503c67f5940b7eee584291531404286659ec27f59400d2147702c15314024f7f5f5bc7f5940313025ed2a1531406b680d22b57f5940b60104dd2a1531405e407e22ae7f5940165afec531153140c2ff65ddb07f5940fdbb3b0467153140c2ff65ddb07f5940fdbb3b0467153140, '101.995169973', '17.0836031576', '', 12.24, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 40, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(405, '220323129432820', '6129150004', 0, 'POLYGON ((101.86666807 17.1686687754, 101.867095898 17.1668702608, 101.867569498 17.1669269032, 101.867140847 17.1687746943, 101.86666807 17.1686687754, 101.86666807 17.1686687754))', 0x0000000001030000000100000006000000cc485a7d777759400a337ae02d2b3140f819cb7f7e7759409dcf6802b82a3140b23a3742867759400a11b6b8bb2a314002b9523c7f775940316980d1342b3140cc485a7d777759400a337ae02d2b3140cc485a7d777759400a337ae02d2b3140, '101.86666807', '17.1686687754', '', 6.62, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 53, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(406, '220331129440238', '6129700003', 0, 'POLYGON ((101.851327305 17.1785753833, 101.850529405 17.1790546833, 101.849608405 17.1794394833, 101.849681405 17.1792419833, 101.849722905 17.1791872833, 101.849813205 17.1789018833, 101.849881605 17.1788456833, 101.849852005 17.1787519833, 101.849599305 17.1785678833, 101.849553605 17.1784151833, 101.849619105 17.1782411833, 101.849702905 17.1781879833, 101.849963305 17.1778133833, 101.849910105 17.1777100833, 101.850161105 17.1775406833, 101.850366405 17.1777230833, 101.850997805 17.1782580833, 101.851327305 17.1785753833, 101.851327305 17.1785753833))', 0x0000000001030000000100000013000000ad4a85257c765940e824c71db72d3140bab0e2126f76594019f81887d62d31406e78eefb5f7659407862f8beef2d3140a39f1d2e61765940fb5778cde22d3140c6e82ddc61765940f1a1c137df2d3140c6cbec566376594060f78983cc2d31409bbcd07564765940e5cda8d4c82d314090faa9f9637659405f5ea2b0c22d31407a6bc3d55f765940b3e3f29fb62d3140216b15165f7659402362119eac2d31400982cf2860765940e712d536a12d3140a3124b88617659404ed048ba9d2d31409b717dcc657659408a108a2d852d3140f5605aed6476594064f173687e2d314099931f0a69765940a57b644e732d3140e5c536676c7659408d848e427f2d3140575c7fbf767659406a055e52a22d3140ad4a85257c765940e824c71db72d3140ad4a85257c765940e824c71db72d3140, '101.851327305', '17.1785753833', '', 12.5, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 56, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(407, '220401129440581', '6129700004', 0, 'POLYGON ((101.873535005 17.1781365833, 101.873352805 17.1772817833, 101.874081405 17.1770003833, 101.874132005 17.1771576833, 101.874222405 17.1779178833, 101.873535005 17.1781365833, 101.873535005 17.1781365833))', 0x0000000001030000000100000007000000b7985dffe7775940a37eef5b9a2d314012d62903e57759403773c556622d3140122122f3f077594029a7a9e54f2d31402a775dc7f17759403502b8345a2d3140f3b98742f3775940a525c2068c2d3140b7985dffe7775940a37eef5b9a2d3140b7985dffe7775940a37eef5b9a2d3140, '101.873535005', '17.1781365833', '', 5.01, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 56, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(408, '210122121148677', '6129700005', 0, 'POLYGON ((101.851365805 17.1786899833, 101.850704805 17.1789495833, 101.850779805 17.1789957833, 101.851044705 17.1788634833, 101.851098705 17.1788535833, 101.851075005 17.1790060833, 101.851011105 17.1790935833, 101.850953605 17.1791271833, 101.850782905 17.1791297833, 101.850624305 17.1791074833, 101.850560105 17.1790378833, 101.849878405 17.1793635833, 101.849665505 17.1795219833, 101.849711205 17.1796611833, 101.849723505 17.1798853833, 101.849839205 17.1804928833, 101.850286405 17.1803343833, 101.851234905 17.1800577833, 101.851077605 17.1798335833, 101.850904805 17.1793877833, 101.850958705 17.1793430833, 101.851636905 17.1791288833, 101.851716805 17.1790810833, 101.851487305 17.1788537833, 101.851334205 17.1789016833, 101.851298405 17.1788899833, 101.851278505 17.1788591833, 101.851365805 17.1786899833, 101.851365805 17.1786899833))', 0x000000000103000000010000001d000000185a00c77c765940736572a0be2d31409b0191f27176594005e8cfa3cf2d3140a0a4232d737659403965ebaad22d31402dda358477765940de384bffc92d314026e9b36678765940c10b3359c92d3140c13a4c0378765940fd8eb957d32d3140802048f7767659406b32bb13d92d3140daf81b06767659401d197247db2d3140233e243a7376594058031173db2d314018caeca0707659400c3eeffcd92d31407890a6936f765940c1843d6dd52d31404ec3646864765940eb5d94c5ea2d3140eb206deb60765940c22f1727f52d314044211bab6176594058a27a46fe2d31408527b2de617659404b4deef70c2e31405a15fac3637659402bef16c8342e3140576dab176b7659402a9ee6642a2e3140138cf7a17a765940eca95244182e314050f5330e78765940f9fede92092e3140fe5e6d39757659405093965bec2d31402d0e801b767659408d89a56de92d3140abc2133881765940e18af763db2d31406ebb338782765940131b0442d82d3140cafb9bc47e765940140a8e5cc92d31403c1c76427c7659400df92e80cc2d31402a274eac7b76594001dbe3bbcb2d3140d1b0d6587b765940dedc26b7c92d3140185a00c77c765940736572a0be2d3140185a00c77c765940736572a0be2d3140, '101.851365805', '17.1786899833', '', 12.49, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 56, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(409, '210312122247875', '6129700007', 0, 'POLYGON ((101.821315705 17.1404737829, 101.819865705 17.141022983, 101.818658405 17.141379583, 101.818948705 17.142082883, 101.821577005 17.141045283, 101.821315705 17.1404737829, 101.821315705 17.1404737829))', 0x0000000001030000000100000007000000a32abf6f907459403b80ff16f6233140918501ae7874594028f80b151a243140830439e6647459409f4ecd7331243140e644d4a76974594070ce378b5f243140b8e7b7b79474594075bd2d8b1b243140a32abf6f907459403b80ff16f6233140a32abf6f907459403b80ff16f6233140, '101.821315705', '17.1404737829', '', 13.86, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 56, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(410, '210323122427581', '6129700008', 0, 'POLYGON ((101.868321705 17.1803343833, 101.869196205 17.1811534833, 101.869647205 17.1805092833, 101.868740605 17.1796393833, 101.868321705 17.1803343833, 101.868321705 17.1803343833))', 0x000000000103000000010000000600000072583395927759402a9ee6642a2e314011921ee9a07759407a541e13602e31401a22c04ca8775940dd653cdb352e3140aacb317299775940dc58bcd8fc2d314072583395927759402a9ee6642a2e314072583395927759402a9ee6642a2e3140, '101.868321705', '17.1803343833', '', 7.1, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 56, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(411, '220404129441330', '612970001', 0, 'POLYGON ((101.852294199 17.1798151306, 101.851966897 17.1799006551, 101.851429883 17.1800683856, 101.851253606 17.1800935079, 101.851102404 17.1798081474, 101.850925825 17.1793566311, 101.85100993 17.1793518743, 101.851243132 17.1792851509, 101.851546983 17.1791963535, 101.851670907 17.1794459699, 101.851745227 17.1794758376, 101.851758512 17.179535411, 101.851953326 17.1794452136, 101.852131266 17.1796851989, 101.852294199 17.1798151306, 101.852294199 17.1798151306))', 0x0000000001030000000100000010000000a2d1f7fc8b765940c340495d082e3140eff829a086765940f82e26f80d2e31409d94c3d37d7659400d3233f6182e3140d09767f07a76594005a7ae9b1a2e314087ae37767876594029a320e8072e3140996c9791757659402ee5f050ea2d3140f67a5af27676594045982201ea2d31409d3879c47a76594020c6b3a1e52d314085bfeabe7f7659404fd8edcfdf2d31404221b1c681765940981ecc2bf02d31404d9f69fe8276594009eae420f22d31404c482236837659400bb85e08f62d3140dc383e6786765940f3d51b1ff02d31409fd7935189765940cbd964d9ff2d3140a2d1f7fc8b765940c340495d082e3140a2d1f7fc8b765940c340495d082e3140, '101.852294199', '17.1798151306', '', 4.94, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 56, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(412, '210119121067301', '6138660002', 0, 'POLYGON ((101.800452195 17.1747390322, 101.801431737 17.173674441, 101.801491127 17.1737029562, 101.80163107 17.1737882927, 101.801781592 17.1738897407, 101.801839974 17.1739294533, 101.801972289 17.1740212916, 101.802058442 17.1740827492, 101.802160965 17.1741419143, 101.802232418 17.1741994917, 101.802067362 17.1744328232, 101.801788622 17.1748002711, 101.801565386 17.1750933708, 101.801482965 17.1751623253, 101.801285583 17.1751557003, 101.801008083 17.175075437, 101.800759561 17.1749921466, 101.800649726 17.1749216845, 101.800452195 17.1747390322, 101.800452195 17.1747390322))', 0x000000000103000000010000001400000055e2d79b3a7359403aa27cb2bb2c31400e1957a84a735940ff3e9ced752c3140f39f70a14b735940f71804cc772c3140e14667ec4d735940fd92b9637d2c3140300bbd63507359409b6abd09842c3140273d9c585173594013bc01a4862c31406963948353735940cc3acca88c2c3140ba77eeec547359409d9ce2af902c314061b3f19a5673594006c88290942c314077c6a3c657735940d2d47f56982c3140a83e58125573594032fe26a1a72c3140e072398150735940d9b4e7b5bf2c3140709ee7d84c73594018554debd22c314079be347f4b735940a2a72a70d72c3140716f534348735940197f0401d72c3140441468b743735940773f6cbed12c3140149d07a53f7359402fb40a49cc2c31402b2e59d83d735940ea49e2aac72c314055e2d79b3a7359403aa27cb2bb2c314055e2d79b3a7359403aa27cb2bb2c3140, '101.800452195', '17.1747390322', '', 10.68, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 61, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(413, '220406129442066', '6138660004', 0, 'POLYGON ((101.862221672 17.1654812498, 101.862311672 17.1653262498, 101.862380005 17.1651929165, 101.862448339 17.1650129165, 101.862476672 17.1647995832, 101.862568339 17.1645645832, 101.862691672 17.1643595832, 101.862693339 17.1641829165, 101.862676672 17.1640762498, 101.862658339 17.1640595832, 101.862493339 17.1640645832, 101.862420005 17.1637545832, 101.862121672 17.1635295832, 101.861943339 17.1634079165, 101.861838339 17.1632895832, 101.861776672 17.1632029165, 101.861675005 17.1631012498, 101.861606672 17.1631245832, 101.861516672 17.1630029165, 101.861221672 17.1630795832, 101.861416672 17.1632895832, 101.861426672 17.1633495832, 101.861441672 17.1634945832, 101.861333339 17.1635479165, 101.861405005 17.1637912498, 101.861530005 17.1642562498, 101.861741672 17.1652762498, 101.862166672 17.1652095832, 101.862221672 17.1654812498, 101.862221672 17.1654812498))', 0x000000000103000000010000001e0000001ec9cea32e77594001feabfa5c2a3140be8c4b1d30775940b30f34d2522a3140c28ce73b31775940fbe53d154a2a3140a69f845a32775940fbc857493e2a314063f35ad1327759400a3d344e302a31407ca4d5513477594083ec8ee7202a31406171215736775940d1a03a78132a3140da5e1f5e36775940eded40e4072a3140c750371836775940fbf0aee6002a31401c6852cb357759407c7010cfff29314076014317337759409f46f322002a31400939ade331775940036a03d2eb2931406c9a60002d775940c3c52313dd293140a50065142a7759406646e919d52931406a1cfe5b28775940199f9b58cd29314087ac575927775940b5fa94aac72931405c90ebae25775940e6d3e500c129314058904f902477594083045e88c2293140b8ccd216237759402785238fba2931402cf680411e775940437d6495bf293140079e647321775940199f9b58cd2931401809569d21775940c3a83d47d1293140b32940dc21775940caeaefc7da293140687dde15207759404ab2b846de2931407c4575422177594010432d39ee293140dbffbe4e23775940fb0d95b20c2a3140c8b58ac62677594050b2578b4f2a31403cfc1ebd2d7759406dd4dc2c4b2a31401ec9cea32e77594001feabfa5c2a31401ec9cea32e77594001feabfa5c2a3140, '101.862221672', '17.1654812498', '', 13.85, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 61, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(414, '220304129099194', '613866007', 0, 'POLYGON ((101.861516672 17.1654562498, 101.861590005 17.1657462498, 101.861853339 17.1663829165, 101.861623339 17.1667095832, 101.861526672 17.1665062499, 101.861186672 17.1661562498, 101.861040005 17.1660379165, 101.861516672 17.1654562498, 101.861516672 17.1654562498))', 0x0000000001030000000100000009000000b8ccd216237759404fcf3d575b2a31404582674a247759405e53a2586e2a3140053de89a2877594009fb2012982a31406c9e37d62477594017c6af7aad2a3140ca37c440237759406de65127a02a31406effb3ae1d775940c1ea4a37892a3140748189471b7759407343fd75812a3140b8ccd216237759404fcf3d575b2a3140b8ccd216237759404fcf3d575b2a3140, '101.861516672', '17.1654562498', '', 3.27, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 61, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(415, '220520130332862', '6140830012', 0, 'POLYGON ((101.854399605 17.0950083825, 101.855256705 17.0949175825, 101.855197905 17.0951054825, 101.854983205 17.0951375825, 101.854979405 17.0953740825, 101.855173505 17.0953962825, 101.855059405 17.0961545825, 101.854128005 17.0965676825, 101.854399605 17.0950083825, 101.854399605 17.0950083825))', 0x000000000103000000010000000a0000002e4cae7bae765940f1ae277852183140396a9e86bc76594023a7c8844c1831404b65fe8fbb765940ff0139d558183140ac067a0bb87659404075c5ef5a183140a0ce89fbb77659403839956f6a1831405d18a729bb7659405b7f09e46b1831402f27154bb9765940b23233969d183140a8048208aa7659402230dea8b81831402e4cae7bae765940f1ae2778521831402e4cae7bae765940f1ae277852183140, '101.854399605', '17.0950083825', '', 8.31, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 65, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(416, '201804060381978', '6140830040', 0, 'POLYGON ((101.862106205 17.1065825826, 101.862682305 17.1065167826, 101.862812205 17.1073815826, 101.862305805 17.1074704826, 101.862106205 17.1065825826, 101.862106205 17.1065825826))', 0x0000000001030000000100000006000000d60981bf2c775940199702ff481b314007b4d72f36775940fdbd11af441b314023c4ae5038775940b075015c7d1b314010e8af0430775940660d802f831b3140d60981bf2c775940199702ff481b3140d60981bf2c775940199702ff481b3140, '101.862106205', '17.1065825826', '', 3.59, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 65, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(417, '210109120844320', '6144480011', 0, 'POLYGON ((101.957735625 17.0993885625, 101.957995897 17.100519394, 101.958203433 17.100522919, 101.958203433 17.1003585262, 101.958554802 17.1004078761, 101.95920155 17.1004335124, 101.959472788 17.1003268012, 101.959598182 17.1000364697, 101.959629027 17.099326982, 101.959549902 17.0988934049, 101.957735625 17.0993885625, 101.957735625 17.0993885625))', 0x000000000103000000010000000c000000b4e55c8a4b7d5940b1886187711931404dd405ce4f7d5940ffd795a3bb19314098e97d34537d59407c9ab9debb19314098e97d34537d59405de7ab18b1193140e1803df6587d59403e1ca054b419314071e1e58e637d59402f2ebb02b61931402a778d00687d5940f9106a04af1931406d3f7e0e6a7d5940d0c475fd9b19314078d0dd8f6a7d5940e64c3b7e6d19314015fefd43697d5940e9d5031451193140b4e55c8a4b7d5940b188618771193140b4e55c8a4b7d5940b188618771193140, '101.957735625', '17.0993885625', '', 16.58, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 63, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(418, '200225119957653', '6144480013', 0, 'POLYGON ((101.959562105 17.0966682825, 101.959602305 17.0964116825, 101.960200605 17.0938026824, 101.961498405 17.0932918824, 101.961589505 17.0941387824, 101.961541705 17.0946914824, 101.961359405 17.0953753825, 101.961275305 17.0956536825, 101.961079005 17.0958629825, 101.960684605 17.0961952825, 101.960425505 17.0965242825, 101.960260305 17.0966166825, 101.959867405 17.0966836825, 101.959562105 17.0966682825, 101.959562105 17.0966682825))', 0x000000000103000000010000000f0000002edd2c77697d5940e3e5a740bf1831400a49c91f6a7d5940334a9f6fae183140c3043ded737d5940612fdd730318314065289b30897d5940e9e30ffae1173140b809b5ae8a7d59407ab1af7a19183140c42d38e6897d5940251e74b33d183140540b99e9867d594055ae64856a1831405b5bdb88857d594058147ec27c18314039d68351827d59400abcf6798a183140b90f48db7b7d5940f25d0841a0183140098e899c777d59407c9bbcd0b5183140cf67a3e7747d5940e495f3debb1831402b3eb2776e7d5940f4640643c01831402edd2c77697d5940e3e5a740bf1831402edd2c77697d5940e3e5a740bf183140, '101.959562105', '17.0966682825', '', 31.15, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 63, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(419, '201901088621516', '6144480031', 0, 'POLYGON ((101.967202631 17.1020783453, 101.966985669 17.1010182583, 101.966757578 17.1010830235, 101.966388172 17.101111579, 101.965619661 17.1012500624, 101.965221992 17.1012713737, 101.965038509 17.1025231875, 101.965772775 17.1023091926, 101.967202631 17.1020783453, 101.967202631 17.1020783453))', 0x000000000103000000010000000a0000000330dda5e67d59407cb172ce211a31409003dc17e37d594088b22355dc193140e42a2d5bdf7d5940011db893e0193140cc7ec64dd97d59404b0dcd72e2193140a81768b6cc7d5940d8b92a86eb19314047417632c67d59400010b6ebec19314047e2e030c37d5940e964a9f53e1a314080ff9c38cf7d5940134c6cef301a31400330dda5e67d59407cb172ce211a31400330dda5e67d59407cb172ce211a3140, '101.967202631', '17.1020783453', '', 16.03, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 63, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(420, '200123118350380', '6144480040', 0, 'POLYGON ((101.949270152 17.1061458098, 101.949875199 17.1084596616, 101.950840892 17.1083706982, 101.950508898 17.1057626449, 101.949270152 17.1061458098, 101.949270152 17.1061458098))', 0x00000000010300000001000000060000002c7a98d7c07c5940cdb22d5f2c1b314023bf58c1ca7c5940da812b03c41b3140bab5c193da7c59401b9d9c2ebe1b3140e3dd4523d57c5940e5fbbc42131b31402c7a98d7c07c5940cdb22d5f2c1b31402c7a98d7c07c5940cdb22d5f2c1b3140, '101.949270152', '17.1061458098', '', 20.82, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 63, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(421, '201230120771345', '614448056', 0, 'POLYGON ((101.963722712 17.0948339041, 101.966252191 17.0944944751, 101.965954071 17.0933824813, 101.965804792 17.0931548187, 101.96543806 17.0928160853, 101.964886434 17.0935036976, 101.963515175 17.0937967753, 101.963722712 17.0948339041, 101.963722712 17.0948339041))', 0x0000000001030000000100000009000000f59c06a2ad7d594058a9e4084718314022026e13d77d59400a3538ca3018314084180631d27d5940ed330feae717314072fde6becf7d594004c883fed8173140e080b7bcc97d594000e882cbc2173140949807b3c07d5940403fbbdbef173140c8748d3baa7d59403e62c21003183140f59c06a2ad7d594058a9e40847183140f59c06a2ad7d594058a9e40847183140, '101.963722712', '17.0948339041', '', 23.51, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 63, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(422, '220318129383350', '6173830005', 0, 'POLYGON ((101.837731672 17.1521162497, 101.837986672 17.1507529164, 101.837446672 17.1506812497, 101.837646672 17.149574583, 101.837850005 17.149654583, 101.838038339 17.149789583, 101.838195005 17.1498712497, 101.838413339 17.1501012497, 101.838675005 17.1505062497, 101.838705005 17.1506012497, 101.838221672 17.1508679164, 101.838341672 17.1511412497, 101.838460005 17.151219583, 101.838415005 17.151244583, 101.838311672 17.151359583, 101.837945005 17.1521095831, 101.837731672 17.1521162497, 101.837731672 17.1521162497))', 0x00000000010300000001000000120000000f844d659d755940d4a62d17f126314054aed992a1755940f1b63dbe972631409418edb998755940f894df0b93263140f875c9009c7559403f4c16854a2631406c9ba0559f75594078ae43c34f26314025b38e6ba27559403844309c582631405189a9fca4755940781254f65d26314040e26b90a8755940dc8c16096d263140a69cedd9ac7559401c4edc9387263140dbddc157ad755940bf32b2cd8d2631407602836ca575594023f49e479f2631404b07d463a7755940bf896431b1263140a81e2754a9755940f07f9b53b6263140d8bc6897a8755940a2ae09f7b726314016c6ffe5a6755940d4eb6a80bf263140941416e4a07559409cd254a7f02631400f844d659d755940d4a62d17f12631400f844d659d755940d4a62d17f1263140, '101.837731672', '17.1521162497', '', 10.56, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 51, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(423, '220331129440218', '617383001', 0, 'POLYGON ((101.803593382 17.1809397931, 101.804491316 17.1822114608, 101.80506144 17.1814595915, 101.805244094 17.1813786578, 101.805072797 17.1811889402, 101.805262162 17.1811081128, 101.805272081 17.1809212673, 101.805127409 17.1807448685, 101.804921413 17.1810124348, 101.804494961 17.1808251205, 101.804172283 17.1804588966, 101.803593382 17.1809397931, 101.803593382 17.1809397931))', 0x000000000103000000010000000d00000036beef126e735940d5e8fd11522e3140b40825c97c735940a7170969a52e314086046b2086735940bc09c322742e3140bd41861e897359408171ebd46e2e3140e9800d50867359404f8efc65622e3140c39f4e6a897359402b84ed195d2e3140b811e9938973594052342edb502e31402ab11c35877359409820b34b452e3140d92b1ad583735940a5a2b7d4562e3140add26ed87c735940bfd71a8e4a2e31406bf5058f77735940542be38d322e314036beef126e735940d5e8fd11522e314036beef126e735940d5e8fd11522e3140, '101.803593382', '17.1809397931', '', 10.49, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 51, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(424, '220324129436182', '6187000002', 0, 'POLYGON ((101.849377337 17.1690097502, 101.849966965 17.1686771834, 101.849902361 17.1685278566, 101.850248759 17.1682882191, 101.850430499 17.1682588139, 101.85040823 17.1679876247, 101.850289721 17.1678503535, 101.850459019 17.1677627165, 101.84997751 17.1672586551, 101.849364377 17.1677907621, 101.849308293 17.1679317553, 101.849377337 17.1690097502, 101.849377337 17.1690097502))', 0x000000000103000000010000000d0000003b18c3325c7659406bd01539442b3140be56d7db65765940ce488a6d2e2b31407252dfcc64765940de8f40a4242b3140a757c5796a7659402a56cdef142b3140762e0b746d765940d9f67602132b31405a06a4166d7659401f38aa3c012b31407af493256b76594090e7a23df82a31405e4caaeb6d7659400adb547ff22a314046f2110866765940a0a09576d12a31408e6667fc5b76594059cadb55f42a314006aa2b115b7659402ff95493fd2a31403b18c3325c7659406bd01539442b31403b18c3325c7659406bd01539442b3140, '101.849377337', '17.1690097502', '', 8.78, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 49, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(425, '210318122353940', '6187000006', 0, 'POLYGON ((101.863021402 17.1735690803, 101.862746708 17.1741102101, 101.862465608 17.1740081895, 101.861589145 17.1735107276, 101.861612935 17.1729252834, 101.861578352 17.1726891471, 101.863021402 17.1735690803, 101.863021402 17.1735690803))', 0x0000000001030000000100000008000000a3551ebe3b7759403c7cf3056f2c3140dee5f73d3777594079479a7c922c31403912f3a2327759408023fbcc8b2c31404517cc4624775940138cf4326b2c3140ad6894aa24775940c3dad4d4442c314005328719247759402c2b1f5b352c3140a3551ebe3b7759403c7cf3056f2c3140a3551ebe3b7759403c7cf3056f2c3140, '101.863021402', '17.1735690803', '', 7.34, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 49, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(426, '220330129439613', '6190040001', 0, 'POLYGON ((101.857538405 17.1646333832, 101.857655305 17.1645638832, 101.857794105 17.1645401832, 101.858363405 17.1645991832, 101.858395305 17.1643553832, 101.858163905 17.1643322832, 101.858142705 17.1642090832, 101.858171105 17.1640808832, 101.858121205 17.1639110832, 101.858072105 17.1636684832, 101.858070005 17.1636332832, 101.858077705 17.1635744832, 101.858206405 17.1634605832, 101.858273905 17.1634571832, 101.858287205 17.1633827832, 101.858312905 17.1633631832, 101.858265805 17.1629857832, 101.858148805 17.1628920832, 101.858073505 17.1628937832, 101.858051705 17.1629697832, 101.858053405 17.1629799832, 101.857968005 17.1630599832, 101.857891205 17.1630653832, 101.857493805 17.1629406832, 101.857454505 17.1629914832, 101.857096105 17.1629495832, 101.857057705 17.1630728832, 101.856951105 17.1632119832, 101.856968805 17.1635379832, 101.857037405 17.1637088832, 101.857240005 17.1647668832, 101.857538405 17.1646333832, 101.857538405 17.1646333832))', 0x00000000010300000001000000210000007f22c3e8e176594081acd469252a3140d18d13d3e37659405f72d0db202a31404deb3e19e6765940cbb8314e1f2a3140ba23106def765940d5ca0c2c232a3140f580dcf2ef765940fbc3c331132a31404aa54c28ec765940610536ae112a3140aa5161cfeb765940d60c429b092a314038967f46ec765940283e6b34012a3140aade3375eb765940c2cba513f62931406f2543a7ea765940dcba7e2de6293140d449749eea76594090e1efdee3293140b619c0beea765940dacd6f04e029314056ac8edaec7659407207838dd82931400e3facf5ed765940e9237854d82931403703752dee765940ce923e74d32931406d2d4099ee765940e736692bd229314002f0b2d3ed765940948eb06fb9293140e524f7e8eb7659400e1faa4bb3293140806222adea765940d3902f68b329314021d0b251ea76594089144163b8293140932cd458ea76594023bf610eb9293140529fa2f2e87659405c218f4cbe293140114083b0e776594026f427a7be293140d93fb22de17659402a88097bb62931401b32dc88e0765940dbde51cfb929314041209fa9da765940a7bd5a10b7293140a1708f08da7659405c35fc24bf293140bf8f7249d8765940c828b242c8293140b3caaf93d8765940707f11a0dd2931401e7b6ab3d9765940a0684bd3e829314010932e05dd765940cfce96292e2a31407f22c3e8e176594081acd469252a31407f22c3e8e176594081acd469252a3140, '101.857538405', '17.1646333832', '', 13.79, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(427, '200418120591899', '6190040002', 0, 'POLYGON ((101.859091672 17.1640229165, 101.858536672 17.1639879165, 101.858451672 17.1636812498, 101.858498339 17.1633262498, 101.858911672 17.1632379165, 101.859091672 17.1640229165, 101.859091672 17.1640229165))', 0x000000000103000000010000000700000062e0a25bfb7659407b29e667fd293140072acc43f2765940834eb21cfb293140f01b48dff076594002dcae03e7293140386b04a3f17659402678c5bfcf2931402259a968f8765940aed5c8f5c929314062e0a25bfb7659407b29e667fd29314062e0a25bfb7659407b29e667fd293140, '101.859091672', '17.1640229165', '', 2.77, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(428, '210510123183747', '6190040003', 0, 'POLYGON ((101.795431205 17.1687456832, 101.795352805 17.1689475832, 101.795359705 17.1689855832, 101.795425105 17.1690733832, 101.795461205 17.1691076832, 101.795507405 17.1691450832, 101.795523205 17.1691666832, 101.795498505 17.1692463832, 101.795475705 17.1692793832, 101.795420905 17.1693600832, 101.795425905 17.1695620832, 101.794837605 17.1695293832, 101.794577605 17.1696771832, 101.794268405 17.1696729832, 101.794065005 17.1696077832, 101.793991405 17.1695550832, 101.793808505 17.1694515832, 101.793531005 17.1694053832, 101.793547505 17.1693195832, 101.793569105 17.1692395832, 101.793608805 17.1691821832, 101.793723705 17.1690803832, 101.794045605 17.1687756832, 101.794097905 17.1687660832, 101.795431205 17.1687456832, 101.795431205 17.1687456832))', 0x000000000103000000010000001a00000058ec4858e872594068afc6ea322b31407090730fe77259400e951826402b3140ff61642ce7725940e956a1a3422b31401d19b33ee8725940d477ab64482b31408d2d1dd6e8725940a9d820a44a2b3140da0ce497e97259408a9f98174d2b3140c82b29dae9725940b3eafb814e2b31407bbf8f72e97259406fcf20bb532b3140346fee12e972594026bbc6e4552b3140e761152de87259408397b22e5b2b314070170e42e872594052fcb16b682b3140c8c68b9ede725940188e1447662b3140fae6065cda725940aeb8c0f66f2b314026ee254bd5725940d8db49b06f2b3140e0d706f6d1725940b6fd696a6b2b3140ed7153c1d0725940ed3641f6672b3140bf1030c2cd7259407419d02d612b314092b54436c9725940409cb4265e2b31400973797bc9725940966a3887582b3140d34512d6c97259405d080b49532b3140bbd2957cca725940eee807864f2b31403dc2825ecc725940393d1cda482b31407b40a8a4d17259403db417e2342b314004f30480d27259409d040841342b314058ec4858e872594068afc6ea322b314058ec4858e872594068afc6ea322b3140, '101.795431205', '17.1687456832', '', 10.3, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(429, '210217121750396', '6190040006', 0, 'POLYGON ((101.857658605 17.1781182833, 101.857692505 17.1769208833, 101.856555105 17.1771548833, 101.857280405 17.1786800833, 101.857655505 17.1786252833, 101.857658605 17.1781182833, 101.857658605 17.1781182833))', 0x0000000001030000000100000007000000e9e6eae0e3765940da97e928992d3140f5bf1a6fe4765940c0c0dfaf4a2d314099cc80ccd1765940a619be055a2d314081bea1aedd76594056385afabd2d3140664dead3e37659402203f662ba2d3140e9e6eae0e3765940da97e928992d3140e9e6eae0e3765940da97e928992d3140, '101.857658605', '17.1781182833', '', 9.32, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(430, '220427129611167', '6190040008', 0, 'POLYGON ((101.843564805 17.1848778834, 101.843422105 17.1848984834, 101.843125305 17.1849536834, 101.842096605 17.1848759834, 101.842003005 17.1844892834, 101.842052905 17.1844558834, 101.842191305 17.1844633834, 101.842747105 17.1842590834, 101.843037605 17.1845040834, 101.843176105 17.1845575834, 101.843500005 17.1846423834, 101.843538405 17.1846311834, 101.843692905 17.1847101834, 101.843564805 17.1848778834, 101.843564805 17.1848778834))', 0x000000000103000000010000000f00000006623cf7fc755940eaf42e28542f3140b46cb5a0fa7559407348cb81552f3140ecd9d6c3f57559404d7ae51f592f31400ca328e9e4755940d3844e08542f3140f5669260e37559405daa8eb03a2f3140841ede31e4755940fec13280382f3140d6fc5b76e6755940340307fe382f314084b18d91ef755940a631719a2b2f31407cb1ff53f4755940742edca83b2f314098efe898f67559408aee702a3f2f3140a7e971e7fb755940932826b9442f314048998188fc75594058863efd432f3140e7b58610ff755940f0f0a42a492f314006623cf7fc755940eaf42e28542f314006623cf7fc755940eaf42e28542f3140, '101.843564805', '17.1848778834', '', 5.26, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(431, '210510123183751', '6190040010', 0, 'POLYGON ((101.795455805 17.1685506832, 101.795377905 17.1687323832, 101.795377905 17.1687323832, 101.794954705 17.1687279832, 101.794785505 17.1687403832, 101.794068905 17.1687461832, 101.794169205 17.1686780832, 101.794339505 17.1685170832, 101.794322105 17.1684058832, 101.794306805 17.1682800832, 101.794223905 17.1679144832, 101.794180305 17.1677869832, 101.794074105 17.1675037832, 101.794136905 17.1673744832, 101.794575205 17.1674060832, 101.795890405 17.1674815832, 101.795861705 17.1675703832, 101.795824905 17.1677540832, 101.795815705 17.1678772832, 101.795625405 17.1685092832, 101.795455805 17.1685506832, 101.795455805 17.1685506832))', 0x0000000001030000000100000016000000dbf876bfe8725940fd0f3823262b3140e77bba78e7725940c19ea30b322b3140e77bba78e7725940c19ea30b322b3140aff1b289e072594098c3d1c1312b3140d4d305c4dd725940c75bdb91322b3140b76f6206d2725940382b2af3322b3140c8bd12abd37259405ee5a27c2e2b314055f95c75d67259404c2981ef232b3140c1dd612cd672594049cce0a51c2b3140c79d35ecd572594083e94d67142b31404a6b8090d472594066de8d71fc2a31408c46a1d9d3725940db897516f42a3140d5e4311cd2725940dfcc2687e12a314063e19823d37259406687db0dd92a314000ecf551da725940d67e0420db2a3140362b4fdeef725940bc86b212e02a314048c7ee65ef725940489f83e4e52a31404f1495cbee7259404d1d7deef12a314090a7fea4ee725940d8157101fa2a3140df95d186eb725940996aa46c232b3140dbf876bfe8725940fd0f3823262b3140dbf876bfe8725940fd0f3823262b3140, '101.795455805', '17.1685506832', '', 14.4, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(432, '200327120515022', '6190040013', 0, 'POLYGON ((101.858381105 17.1647833832, 101.858165105 17.1648812832, 101.858006605 17.1648177832, 101.857950905 17.1646983832, 101.857905505 17.1647130832, 101.857855805 17.1645522832, 101.857813705 17.1645528832, 101.858228505 17.1662363832, 101.858421105 17.1661885832, 101.858700205 17.1661504832, 101.858381105 17.1647833832, 101.858381105 17.1647833832))', 0x000000000103000000010000000c000000ae5e4db7ef765940abc4693e2f2a3140c722552dec7659400711e7a8352a3140870e8994e9765940aaa48c7f312a31401ca3e9aae87659404f8c59ac292a314023c27dece77659403c91f9a22a2a314029ca081ce77659407dd33219202a31404742746be676594077ce4323202a3140145e4037ed765940d43fb5778e2a3140f50a135ff076594005d0c1558b2a3140c962b4f1f4765940008f8bd6882a3140ae5e4db7ef765940abc4693e2f2a3140ae5e4db7ef765940abc4693e2f2a3140, '101.858381105', '17.1647833832', '', 5.15, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(433, '210510123183735', '619004011', 0, 'POLYGON ((101.865039205 17.1650181832, 101.865014905 17.1648892832, 101.864803505 17.1646002832, 101.864600505 17.1644894832, 101.864383105 17.1645262832, 101.864295705 17.1645046832, 101.864124105 17.1644234832, 101.863922305 17.1644556832, 101.863907905 17.1644926832, 101.863690805 17.1645686832, 101.863588705 17.1645369832, 101.863533405 17.1644776832, 101.863477905 17.1644703832, 101.863344105 17.1644249832, 101.863388905 17.1643579832, 101.863663305 17.1644267832, 101.864121105 17.1642633832, 101.864249805 17.1642002832, 101.864359805 17.1638772832, 101.864455405 17.1638496832, 101.864559005 17.1638902832, 101.864956705 17.1637607832, 101.864956105 17.1635972832, 101.864953605 17.1635702832, 101.865115705 17.1634716832, 101.865200705 17.1633718832, 101.865253705 17.1634037832, 101.865350005 17.1635957832, 101.865445905 17.1636785832, 101.865574805 17.1637713832, 101.865878005 17.1639171832, 101.865968005 17.1640558832, 101.865966605 17.1641394832, 101.866067605 17.1642546832, 101.866185805 17.1642752832, 101.866631705 17.1642496832, 101.866619305 17.1643123832, 101.866099705 17.1650881832, 101.865692705 17.1652713832, 101.865652105 17.1655416832, 101.865826805 17.1659498832, 101.865440005 17.1660115832, 101.865413905 17.1662320832, 101.865383405 17.1666859832, 101.865195305 17.1667051832, 101.864903105 17.1656448832, 101.864860705 17.1653712832, 101.864969405 17.1650850832, 101.865039205 17.1650181832, 101.865039205 17.1650181832))', 0x0000000001030000000100000032000000e7ce65cd5c775940df16b4a13e2a3140c3e179675c7759400dce1e2f362a31403cdcccf0587759409f41813e232a314020455b9d5577594044e196fb1b2a314028cc830d527759402badfd641e2a314017c3ee9e5077594002629afa1c2a314042aa30cf4d775940d5094ba8172a3140a390c7804a7759403ffc84c4192a3140c7ae61444a77594079c646311c2a31402e55ccb5467759402f4a582c212a3140e14a8f094577594096d381181f2a3140a05e9d21447759400f449e351b2a3140cab2d438437759402d0125bb1a2a3140d70aa20741775940467d75c1172a314012ad89c34177594036ae625d132a3140bd6e744246775940346ea8df172a314089709bc24d7759403ac6422a0d2a314029036ade4f77594083569e07092a3140ed9cc9ab51775940bee693dcf3293140d454c33c53775940d0cd860df2293140fdfb4aef54775940e779aeb6f4293140941b5e735b7759401b36083aec293140d6dcd9705b775940f70ef582e129314011825d665b77594003f1f8bddf293140c80e430e5e775940842abd47d9293140e01cc7725f775940106e5fbdd2293140f16d135160775940fde290d4d429314061c4fce461775940869bca69e1293140a89b3877637759404de6f1d6e6293140dceddd93657759405cdddeebec2931403f73948b6a775940b018fd79f6293140df3611056c775940760ffd90ff293140cdf931ff6b7759408b53900b052a314067e6d1a66d775940108f4c980c2a3140012f96966f77594098e2e8f10d2a3140b6a9d3e476775940edb869440c2a3140aa43d1b076775940fc2b5860102a31403703752d6e775940d1cc1b38432a3140171760826777594006cfb1394f2a3140112c16d866775940037893f0602a314069ded4b469775940781e09b17b2a31400188795e63775940e79930bc7f2a3140a2de00f162775940d4e3902f8e2a314079be137162775940ad8bbeeeab2a31402de8205c5f775940eeeadd30ad2a3140c48b8d925a775940ff17fcb3672a314083e4b6e059775940a30abdc5552a3140ffa0a2a85b775940c5661904432a3140e7ce65cd5c775940df16b4a13e2a3140e7ce65cd5c775940df16b4a13e2a3140, '101.865039205', '17.1650181832', '', 24.62, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 57, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(434, '220118128233729', '6207570013', 0, 'POLYGON ((101.873840005 17.1709445832, 101.874181672 17.1703645832, 101.874345005 17.1704579166, 101.874528339 17.1702045832, 101.874188339 17.1700512499, 101.874768339 17.1693545832, 101.875618339 17.1704512499, 101.875981672 17.1708829166, 101.875535005 17.1716395832, 101.873840005 17.1709445832, 101.873840005 17.1709445832))', 0x000000000103000000010000000b00000056daa0feec775940b9453206c32b31402b00af97f27759409d3d69039d2b31405779c044f57759402c244921a32b314088dbb545f87759402b790e87922b31402ca3a5b3f2775940e4f68c7a882b314033e55734fc7759408f456cd25a2b31401a7280210a78594001e26fb1a22b3140aa486e1510785940fa3d9afbbe2b31409b3ef9c308785940078b5c92f02b314056daa0feec775940b9453206c32b314056daa0feec775940b9453206c32b3140, '101.873840005', '17.1709445832', '', 18.12, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 55, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(435, '210323122426837', '6207570014', 0, 'POLYGON ((101.874551605 17.1689745832, 101.875663205 17.1691627832, 101.876322605 17.1692867832, 101.876166505 17.1678042832, 101.875954105 17.1678046832, 101.875928705 17.1681642832, 101.875463505 17.1681396832, 101.875247405 17.1681203832, 101.874954505 17.1680832832, 101.874818605 17.1680474832, 101.874743405 17.1677723832, 101.874266005 17.1677246832, 101.873952605 17.1677038832, 101.873777005 17.1677216832, 101.873676405 17.1679005832, 101.874551605 17.1689745832, 101.874551605 17.1689745832))', 0x0000000001030000000100000011000000ea884ba7f877594001b314eb412b314046f2aedd0a7859405a8b8d404e2b31401d4e68ab15785940327ded60562b3140d734ad1c137859400479b438f52a31406871cea10f785940ab756a3ff52a3140926645370f78594004b380d00c2b314042b4149807785940f980c8330b2b31409118b10d047859408fa2fbef092b3140a01d2e41ff7759402b598c81072b3140129a2c07fd775940e484ec28052b31407837c3cbfb77594017048321f32a3140b1de66f9f377594072133d01f02a3140a82ee8d6ee77594097c145a4ee2a3140321e63f6eb775940902ce8ceef2a3140c2b07050ea775940c6d25988fb2a3140ea884ba7f877594001b314eb412b3140ea884ba7f877594001b314eb412b3140, '101.874551605', '17.1689745832', '', 18.31, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 55, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(436, '200407120567324', '620757008', 0, 'POLYGON ((101.873755005 17.1678527832, 101.874597205 17.1690422832, 101.874246305 17.1700208832, 101.874110405 17.1700580832, 101.873385305 17.1696137832, 101.873500705 17.1694546832, 101.873457605 17.1694050832, 101.873504205 17.1693628832, 101.873364205 17.1692790832, 101.873755005 17.1678527832, 101.873755005 17.1678527832))', 0x000000000103000000010000000b0000003fcc1c9aeb775940f7626666f82a314079298e66f977594034fce55a462b3140ed27c6a6f377594025fb147d862b31405fa4c46cf1775940b3c331ed882b31400c727a8be57759407acb13cf6b2b31408240806fe7775940807fd261612b3140b8fab9bae6775940c31eac215e2b31402f592e7ee77759401280ac5d5b2b3140367efa32e5775940a93dbedf552b31403fcc1c9aeb775940f7626666f82a31403fcc1c9aeb775940f7626666f82a3140, '101.873755005', '17.1678527832', '', 11.45, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 55, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(437, '210223121878961', '6224700003', 0, 'POLYGON ((101.859993805 17.1678428832, 101.859599805 17.1679731832, 101.860173205 17.1697137832, 101.860567905 17.1696075832, 101.859993805 17.1678428832, 101.859993805 17.1678428832))', 0x000000000103000000010000000600000035cf74230a775940d9354ec0f72a3140df87e6ae03775940f372604a002b3140b617ea130d7759404186cc5c722b314095fd678b1377594063ff0e676b2b314035cf74230a775940d9354ec0f72a314035cf74230a775940d9354ec0f72a3140, '101.859993805', '17.1678428832', '', 5.6, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 60, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(438, '200117117188592', '6245700002', 0, 'POLYGON ((101.828762005 17.1596391831, 101.829619505 17.1597438831, 101.829888605 17.1598354831, 101.829829605 17.1603466831, 101.829790105 17.1604691831, 101.829816805 17.1609692831, 101.829430805 17.1611357831, 101.828762005 17.1596391831, 101.828762005 17.1596391831))', 0x00000000010300000001000000090000001de9ca6f0a7559401d930e1dde2831405186687c187559408aa6a1f9e4283140137318e51c755940a5a76cfaea28314091aea1ed1b755940c3efef7a0c2931403ee1f4471b7559402a6e2582142931405bc9f1b71b75594037936e48352931404771f164157559403ea1d631402931401de9ca6f0a7559401d930e1dde2831401de9ca6f0a7559401d930e1dde283140, '101.828762005', '17.1596391831', '', 7.29, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 62, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(439, '220107127951165', '6268210001', 0, 'POLYGON ((101.956703405 17.1316603828, 101.953935205 17.1331740828, 101.954397905 17.1338525828, 101.957270005 17.1328414828, 101.956703405 17.1316603828, 101.956703405 17.1316603828))', 0x0000000001030000000100000006000000991ceba03a7d59400a4eae7eb421314098fe3e460d7d5940014d5ab2172231402356f3da147d5940739cb12944223140ac3a69e9437d59409b2d40e601223140991ceba03a7d59400a4eae7eb4213140991ceba03a7d59400a4eae7eb4213140, '101.956703405', '17.1316603828', '', 24.13, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 41, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(440, '220108127994870', '6273840006', 0, 'POLYGON ((101.861378339 17.1809929167, 101.862181672 17.1813445833, 101.862210005 17.18128125, 101.861976672 17.17962625, 101.861285005 17.1797529167, 101.861378339 17.1809929167, 101.861378339 17.1809929167))', 0x000000000103000000010000000700000038df9cd220775940be08428d552e3140d71c09fc2d7759408b943e996c2e31409370df722e775940c520b072682e3140ea0934a02a775940cc4065fcfb2d3140a740244b1f7759404d968249042e314038df9cd220775940be08428d552e314038df9cd220775940be08428d552e3140, '101.861378339', '17.1809929167', '', 8.26, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 46, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(441, '220311129262386', '6269880003', 0, 'POLYGON ((101.868636672 17.1576462498, 101.868571672 17.1579379164, 101.868573339 17.1580695831, 101.868718339 17.1583979164, 101.868780005 17.1586879164, 101.869161672 17.1587112498, 101.869370005 17.1588595831, 101.869466672 17.1587379164, 101.869600005 17.1585395831, 101.869775005 17.1582645831, 101.869950005 17.1580795831, 101.869966672 17.1577462498, 101.869650005 17.1575779164, 101.869098339 17.1573012498, 101.868863339 17.1571162498, 101.868813339 17.1573329164, 101.868683339 17.1576245831, 101.868636672 17.1576462498, 101.868636672 17.1576462498))', 0x0000000001030000000100000013000000299644be97775940613a2f815b283140365ea3ad9677594084bc899e6e283140ae4ba1b49677594028e8893f7728314030dccd14997759404ab10ec48c283140333973179a775940593573c59f2831404f0b4758a0775940f665eb4ca12831404be616c2a377594019128a05ab283140ed4c8a57a5775940bc924f0ca3283140e484c786a77759403689d40c962831409b56c864aa77594092871807842831405328c942ad7759406f944fe7772831406636b188ad77594028f5e70e622831403d9c7e58a87759408482bd0657283140d4c0a34e9f775940cc820be544283140b26cfa749b775940a98f42c538283140595543a39a775940b68552f84628314072e5008298775940cb75ad155a283140299644be97775940613a2f815b283140299644be97775940613a2f815b283140, '101.868636672', '17.1576462498', '', 11.05, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 54, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(442, '220321129418959', '6273840005', 0, 'POLYGON ((101.861821672 17.1789395833, 101.861798339 17.1785945833, 101.861763339 17.1783195833, 101.861763339 17.1781495833, 101.861790005 17.1779645833, 101.861743339 17.1777745833, 101.861633339 17.1776229166, 101.861538339 17.17769125, 101.861420005 17.17778125, 101.861360005 17.17789625, 101.861341672 17.1783145833, 101.861348339 17.17847625, 101.861358339 17.17849625, 101.861296672 17.17860625, 101.861266672 17.1787045833, 101.861226672 17.17887125, 101.861215005 17.1789329166, 101.861208339 17.17895625, 101.861211672 17.1789829166, 101.861233339 17.17919625, 101.861235005 17.1792595833, 101.861255005 17.1793795833, 101.861266672 17.1795295833, 101.861268339 17.1795929166, 101.861280005 17.1796879166, 101.861540005 17.1796379166, 101.861731672 17.1796129166, 101.861773339 17.1796095833, 101.861890005 17.1795895833, 101.861933339 17.17958125, 101.861951672 17.1795729166, 101.861821672 17.1789395833, 101.861821672 17.1789395833))', 0x0000000001030000000100000021000000570e161628775940be3b0afcce2d3140237038b4277759402984e65fb82d314065796b212777594085822a5aa62d314065796b2127775940cd110a369b2d3140a9df439127775940a91e41168f2d314041a388cd26775940625595a2822d31407d0929002577594030d109b2782d31405590b371237759400d897b2c7d2d314017665f81217759408d976e12832d3140ace3b68520775940bfd4cf9b8a2d314001fbd1382077594062ac4706a62d3140039ec85420775940dbdc989eb02d31401509ba7e20775940693524eeb12d31403199137c1f775940789ca223b92d3140fc573ffe1e77594037eb6495bf2d3140b5ab79561e775940d4f19881ca2d31402b538a251e77594093f9308cce2d31400ac394091e775940302aa913d02d31401a8b8f171e775940f6560dd3d12d3140b64e70721e775940db5031cedf2d31404e296d791e775940a1c4bff4e32d314072ff4fcd1e775940f7d703d2eb2d3140fc573ffe1e77594021f098a6f52d314075453d051f775940e86327cdf92d31401e8b2b361f7759408b48fd06002e3140ec6ab0782377594028eb20c0fc2d3140b74a999c2677594076bcb21cfb2d314076e45c4b277759405a52c6e4fa2d31405b0eb23429775940ccf93a95f92d3140939573ea297759408cb96b09f92d31403e7e58372a7759405a0b9c7df82d3140570e161628775940be3b0afcce2d3140570e161628775940be3b0afcce2d3140, '101.861821672', '17.1789395833', '', 7.45, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 46, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(443, '220331129440240', '6275730002', 0, 'POLYGON ((101.838487625 17.1784314068, 101.838687745 17.1783167283, 101.839405216 17.1783007892, 101.839434999 17.1776577957, 101.838290526 17.1778120445, 101.838487625 17.1784314068, 101.838487625 17.1784314068))', 0x000000000103000000010000000700000072deffc7a975594008c940aead2d31402f155d0fad755940d360442aa62d3140f5b3a7d0b87559400a77da1ea52d3140a9f4924db9755940346936fb7a2d3140dd6d4e8da675594060f61317852d314072deffc7a975594008c940aead2d314072deffc7a975594008c940aead2d3140, '101.838487625', '17.1784314068', '', 4.59, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 59, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(444, '220331129440242', '6275730003', 0, 'POLYGON ((101.839472552 17.1783082237, 101.840101439 17.1782786584, 101.840356089 17.1776003232, 101.839455404 17.1776438243, 101.839472552 17.1783082237, 101.839472552 17.1783082237))', 0x0000000001030000000100000006000000b32e15ebb97559403c66959ba52d3140f674d338c47559401b678faba32d3140f7cfe764c87559402de7fb36772d31405aa828a3b975594072b4cf107a2d3140b32e15ebb97559403c66959ba52d3140b32e15ebb97559403c66959ba52d3140, '101.839472552', '17.1783082237', '', 3.75, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 59, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(445, '220422129467994', '6267100022', 0, 'POLYGON ((101.971006905 17.0844557823, 101.971019805 17.0843567823, 101.971088805 17.0830155823, 101.969511505 17.0831253823, 101.968591705 17.0832121823, 101.968488805 17.0832008823, 101.968439505 17.0831875823, 101.968386905 17.0831468823, 101.968292805 17.0830001823, 101.967562805 17.0831510823, 101.967493305 17.0831786823, 101.967499105 17.0832474823, 101.967747905 17.0836949823, 101.967949905 17.0842404823, 101.968120205 17.0847283824, 101.971006905 17.0844557823, 101.971006905 17.0844557823))', 0x0000000001030000000100000011000000924a25fa247e5940c5efe6e49e153140928f4030257e59409e2cf5679815314026bfa851267e594072095b824015314087c4fb790c7e59402d727eb447153140b8091068fd7d5940779bc1644d153140190178b8fb7d5940137a2ca74c1531404988b0e9fa7d59406c6909c84b15314061b6110dfa7d59402c3e341d49153140569b6282f87d5940618afc7f3f15314044138b8cec7d5940021bab6349153140bc040a69eb7d5940f033b8324b15314098b85d81eb7d5940edf3fdb44f153140d7afe894ef7d59405bd1cb086d1531400b8928e4f27d59404f7ac4c89015314099c472aef57d594074735fc2b0153140924a25fa247e5940c5efe6e49e153140924a25fa247e5940c5efe6e49e153140, '101.971006905', '17.0844557823', '', 35.76, 1, 1, 1, 1, 0, '', 1, '', 0, 0, 67, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(446, '220520130328642', '6274970004', 0, 'POLYGON ((101.892527905 17.2676496842, 101.890994205 17.2680370842, 101.891910305 17.2688658842, 101.892353005 17.2695073842, 101.892446105 17.2694872842, 101.892606605 17.2692087842, 101.892901405 17.2690772842, 101.892527905 17.2676496842, 101.892527905 17.2676496842))', 0x000000000103000000010000000900000083af5c2d1f795940796c90b084443140a2d98e0c0679594013c10e149e4431402fbcf50e157959402da60365d4443140973dc74f1c795940652b996ffe443140ba9a44d61d795940ad53601efd443140ca2a74772079594057efebddea443140c241ef4b257959404abcb73fe244314083af5c2d1f795940796c90b08444314083af5c2d1f795940796c90b084443140, '101.892527905', '17.2676496842', '', 12.79, 1, 2, 1, 1, 0, '', 1, '', 0, 0, 64, 'N', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(447, '2022072814263923', '0000001', 0, 'POLYGON ((101.99602916 17.05502557, 101.99597714 17.05500516, 101.99600982 17.05494929, 101.99605502 17.05500307, 101.99602916 17.05502557))', 0x0000000001030000000100000005000000fe0317f1be7f59400198df27160e314045f7e616be7f5940ae4f73d1140e314045d9f89fbe7f5940097d1b28110e3140aafa8d5dbf7f594061d462ae140e3140fe0317f1be7f59400198df27160e3140, '101.99601745605469', '17.05498695373535', 'ป', 0.02, 2, 2, 1, 2, 2, '', 1, '', 0, 2000, 32, 'Y', 'image-1658994607430.png', 25, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(448, '2022072818300984', 'Royal Riverkwai Resort and Spa', 0, 'POLYGON ((99.45579 14.05744, 99.45688 14.05742, 99.45706 14.05611, 99.45593 14.05606, 99.45579 14.05744))', 0x000000000103000000010000000500000001f6d1a92bdd5840e8f692c6681d2c40938c9c853ddd5840cc457c27661d2c40d313967840dd584006f52d73ba1c2c40fad005f52ddd58403f3a75e5b31c2c4001f6d1a92bdd5840e8f692c6681d2c40, '99.45642471313477', '14.05674982070923', 'ด', 11.26, 3, 1, 1, 3, 1, 'ก', 4, 'Royal Riverkwai Resort and Spa', 2000, 22, 0, 'Y', 'image-1659007826542.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(449, '2022072818364538', '560', 0, 'POLYGON ((99.4558 14.05701, 99.45587 14.05529, 99.45702 14.05596, 99.45686 14.05725, 99.4558 14.05701))', 0x00000000010300000001000000050000001361c3d32bdd584005172b6a301d2c40904e5df92cdd584078978bf84e1c2c408c67d0d03fdd5840b1c403caa61c2c4070b6b9313ddd58405a643bdf4f1d2c401361c3d32bdd584005172b6a301d2c40, '99.45641326904297', '14.05627012252808', 'กาญจนบุรี', 12.93, 2, 1, 1, 3, 1, '', 3, 'Royal Riverkwai Resort and Spa', 200, 2, 0, 'Y', 'image-1659008211927.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(450, '2022072818364538', '560', 0, 'POLYGON ((99.4558 14.05701, 99.45587 14.05529, 99.45702 14.05596, 99.45686 14.05725, 99.4558 14.05701))', 0x00000000010300000001000000050000001361c3d32bdd584005172b6a301d2c40904e5df92cdd584078978bf84e1c2c408c67d0d03fdd5840b1c403caa61c2c4070b6b9313ddd58405a643bdf4f1d2c401361c3d32bdd584005172b6a301d2c40, '99.45641326904297', '14.05627012252808', 'กาญจนบุรี', 12.93, 2, 1, 1, 3, 1, '', 3, 'Royal Riverkwai Resort and Spa', 200, 2, 0, 'Y', 'image-1659008210011.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(451, '2022072822145216', '99', 0, 'POLYGON ((99.45695 14.05534, 99.45647 14.05521, 99.45632 14.05565, 99.4568 14.05572, 99.45695 14.05534))', 0x0000000001030000000100000005000000107a36ab3edd58403f524486551c2c40ba66f2cd36dd584007d3307c441c2c40b020cd5834dd5840780b24287e1c2c40053411363cdd58405c77f354871c2c40107a36ab3edd58403f524486551c2c40, '99.45663452148438', '14.05546522140503', 'Royal Riverkwai Resort and Spa', 1.59, 2, 2, 3, 3, 3, '', 4, 'กาญ', 200, 318, 0, 'Y', 'image-1659021300466.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(452, '2022081714005285', '00030', 0, 'POLYGON ((101.93608131539914 17.172239598739427, 101.93607943390879 17.172236945820032, 101.93607943390879 17.172236945820032, 101.93607943390879 17.172236945820032, 101.93607943390879 17.172236945820032, 101.93607943390879 17.172236945820032, 101.93607943390879 17.172236945820032, 101.93609 17.17225, 101.93623 17.1735, 101.93518 17.17382, 101.93502 17.17204, 101.93534 17.17205, 101.93546 17.1723, 101.93574 17.17227, 101.93566 17.17207, 101.93591 17.17202, 101.93608131539914 17.172239598739427))', 0x00000000010300000001000000110000004d029bc1e87b594079a9f3e4172c31402cc6b6b9e87b5940c07571b8172c31402cc6b6b9e87b5940c07571b8172c31402cc6b6b9e87b5940c07571b8172c31402cc6b6b9e87b5940c07571b8172c31402cc6b6b9e87b5940c07571b8172c31402cc6b6b9e87b5940c07571b8172c3140350708e6e87b59406abc7493182c31402ee23b31eb7b594023dbf97e6a2c3140e4f736fdd97b59400664af777f2c3140c746205ed77b5940959a3dd00a2c314000a94d9cdc7b5940dc4603780b2c3140d6ad9e93de7b5940ce1951da1b2c3140c763062ae37b5940f91400e3192c3140390b7bdae17b59406b9f8ec70c2c3140f67f0ef3e57b59400742b280092c31404d029bc1e87b594079a9f3e4172c3140, '101.93562698364258', '17.17292022705078', 'บ้านลาด', 12.05, 1, 1, 1, 2, 1, '000', 1, 'ภูสำราญ', 13000, 156, 0, 'Y', 'image-1660733755347.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(453, '2022100114381183', '9001', 0, 'POLYGON ((101.89546 17.15599, 101.89542 17.15547, 101.89596 17.15528, 101.89596 17.15477, 101.89644 17.1546, 101.89703 17.15574, 101.89621 17.156, 101.89546 17.15599))', 0x000000000103000000010000000800000013b875374f795940c780ecf5ee273140cc0bb08f4e7959405682c5e1cc2731408ca19c68577959400fb9196ec02731408ca19c6857795940e466b8019f273140e1b4e0455f7959402bf697dd93273140fa6184f068795940d6ad9e93de273140481630815b7959400e2db29def27314013b875374f795940c780ecf5ee273140, '101.89622497558594', '17.15530014038086', 'ย้านลาด', 9.89, 3, 2, 2, 2, 1, '0000', 1, 'ส่งksl', 10000, 98, 0, 'Y', 'image-1665578235692.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(454, '2022082709410164', '000033', 0, 'POLYGON ((101.90839 17.14437, 101.90754 17.14413, 101.9076 17.14693, 101.90794 17.14684, 101.90813 17.14674, 101.90815 17.14648, 101.90792 17.14645, 101.9079 17.14629, 101.90817 17.14632, 101.90839 17.14437))', 0x000000000103000000010000000a000000dc80cf0f237a59400586ac6ef5243140f5f3a622157a59405b5f24b4e524314060764f1e167a594021cd58349d253140bcae5fb01b7a5940a1be654e972531400ea14acd1e7a5940da03adc09025314032772d211f7a5940a18499b67f25314099d87c5c1b7a5940cc7f48bf7d25314075029a081b7a59405abbed4273253140554d10751f7a59402fc03e3a75253140dc80cf0f237a59400586ac6ef5243140, '101.90796279907227', '17.14553070068359', 'ย้านห้วยม่วง', 12.86, 2, 2, 2, 2, 1, '000', 1, 'บ้านลาดกกโฮ', 8000, 102, 0, 'Y', 'image-1665578236520.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(455, '2022082015081277', '00023', 0, 'POLYGON ((101.86294 17.29361, 101.86263 17.29366, 101.8626 17.29374, 101.86249 17.29377, 101.86245 17.29365, 101.86105 17.29376, 101.86102 17.29384, 101.86127 17.29453, 101.86144 17.29492, 101.86275 17.29476, 101.86268 17.29427, 101.8631 17.29418, 101.86311 17.29387, 101.86294 17.29361))', 0x000000000103000000010000000e000000419ab1683a77594050c763062a4b31401aa3755435775940b324404d2d4b3140e561a1d634775940ec866d8b324b314021c8410933775940c18bbe82344b3140da1b7c61327759406c787aa52c4b3140228e75711b7759407adff8da334b3140ec4ca1f31a775940b3412619394b3140a9c1340c1f775940deb06d51664b3140d7dd3cd521775940b3ef8ae07f4b3140f0a7c64b37775940412b3064754b314073ba2c2636775940a5315a47554b31405e4bc8073d775940252367614f4b314070b6b9313d775940884677103b4b3140419ab1683a77594050c763062a4b3140, '101.86206817626953', '17.29426479339600', 'นาดอกไม้', 14.38, 2, 2, 2, 1, 1, '00999', 1, 'บ้านนาดิกไม้', 7500, 107, 0, 'Y', 'image-1666611456517.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(456, '202208201428308', '00023', 0, 'POLYGON ((101.88866 17.30396, 101.88872 17.3022, 101.88868 17.30168, 101.88878 17.30161, 101.88885 17.30142, 101.88902 17.30116, 101.88916 17.30114, 101.88934 17.30136, 101.88924 17.30173, 101.88936 17.30187, 101.88956 17.302, 101.88982 17.30198, 101.89002 17.30207, 101.89008 17.30277, 101.89005 17.30316, 101.8899 17.30341, 101.88931 17.30342, 101.8892 17.30344, 101.88902 17.30412, 101.88866 17.30396))', 0x0000000001030000000100000014000000db5031cedf785940cb4a9352d04d314046d3d9c9e0785940e8d9acfa5c4d3140fe261422e078594077db85e63a4d3140b05582c5e178594085251e50364d31402d431cebe27859403e5c72dc294d31405b5f24b4e578594005dd5ed2184d3140543a58ffe77859407784d382174d314094c151f2ea7859409352d0ed254d3140e292e34ee9785940da38622d3e4d3140b7973446eb785940bea4315a474d31401bf5108dee7859405a643bdf4f4d3140e9d495cff2785940cc0bb08f4e4d31404d327216f67859404c1aa375544d3140b7b41a12f7785940bd35b055824d314082734694f67859409274cde49b4d3140772d211ff478594084471b47ac4d31405e807d74ea785940cbf3e0eeac4d31409be61da7e8785940594c6c3eae4d31405b5f24b4e57859403d0feeceda4d3140db5031cedf785940cb4a9352d04d3140, '101.88936996459961', '17.30262947082520', 'บ้านนาดอกไม้', 19.29, 2, 2, 2, 2, 1, '000999', 1, 'นาดอกไม้', 7000, 135, 0, 'Y', 'image-1666611463330.png', 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(457, '2022111009570550', '999ksl', 0, 'POLYGON ((101.7791 17.14761, 101.77876 17.14784, 101.77761 17.14743, 101.77706 17.14714, 101.77741 17.14636, 101.7779 17.14651, 101.77846 17.14647, 101.77859 17.14654, 101.7791 17.14761))', 0x000000000103000000010000000900000012143fc6dc7159400490dac4c9253140b6db2e34d7715940670a9dd7d8253140b9c2bb5cc47159400473f4f8bd253140e8c1dd59bb715940f6ee8ff7aa2531405665df15c17159404c7155d977253140bde3141dc97159407689eaad81253140a04fe449d27159405ad8d30e7f25314087bf266bd47159404c8e3ba58325314012143fc6dc7159400490dac4c9253140, '101.77807998657227', '17.14710044860840', 'บ้านห้วยเป้า', 13.32, 2, 2, 2, 2, 2, '00', 1, 'บ้านห้วยเป้า', 5800, 77, 0, 'Y', 'image-1669866309924.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(458, '2022111009570550', '999ksl', 0, 'POLYGON ((101.7791 17.14761, 101.77876 17.14784, 101.77761 17.14743, 101.77706 17.14714, 101.77741 17.14636, 101.7779 17.14651, 101.77846 17.14647, 101.77859 17.14654, 101.7791 17.14761))', 0x000000000103000000010000000900000012143fc6dc7159400490dac4c9253140b6db2e34d7715940670a9dd7d8253140b9c2bb5cc47159400473f4f8bd253140e8c1dd59bb715940f6ee8ff7aa2531405665df15c17159404c7155d977253140bde3141dc97159407689eaad81253140a04fe449d27159405ad8d30e7f25314087bf266bd47159404c8e3ba58325314012143fc6dc7159400490dac4c9253140, '101.77807998657227', '17.14710044860840', 'บ้านห้วยเป้า', 13.32, 2, 2, 2, 2, 2, '00', 1, 'บ้านห้วยเป้า', 5800, 77, 0, 'Y', 'image-1670337282814.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(459, '2022110114531260', '00055', 0, 'POLYGON ((101.77332 17.14879, 101.7732 17.14605, 101.77382 17.14607, 101.77384 17.14873, 101.77332 17.14879))', 0x0000000001030000000100000005000000ef552b137e715940cbf8f719172631401a51da1b7c715940af94658863253140683f5244867159403eedf0d7642531408c1535988671594020ef552b13263140ef552b137e715940cbf8f71917263140, '101.77352142333984', '17.14741992950440', '.', 11.33, 2, 2, 2, 1, 2, '000', 1, 'ห้วยเป้า', 10000, 113, 0, 'Y', 'image-1670552217372.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(462, '2022120911051917', '6037750008', 0, 'POLYGON ((101.83084 17.17474, 101.82922 17.17438, 101.82922 17.17438, 101.82906 17.17442, 101.82801 17.17527, 101.82963 17.17598, 101.83084 17.17474))', 0x00000000010300000001000000070000005a0d897b2c755940944db9c2bb2c31401b4cc3f0117559409413ed2aa42c31401b4cc3f0117559409413ed2aa42c3140fe9aac510f755940b1c403caa62c3140b4b0a71dfe7459404df8a57ede2c3140f3716da81875594005c078060d2d31405a0d897b2c755940944db9c2bb2c3140, '101.82942581176758', '17.17517948150635', 'โคกขมิ้น', 17.84, 2, 2, 2, 1, 1, '000', 1, 'หน้ารง', 200, 3, 0, 'N', 'image-1670558726522.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(463, '2022120911340263', '1243566', 0, 'POLYGON ((101.81472 17.18535, 101.81313 17.18647, 101.8142 17.18766, 101.81686 17.18567, 101.81472 17.18535))', 0x00000000010300000001000000050000006ad95a5f247459404850fc18732f3140605969520a74594064af777fbc2f3140ce1951da1b74594072c45a7c0a303140475a2a6f477459402bd9b111882f31406ad95a5f247459404850fc18732f3140, '101.81499481201172', '17.18650531768799', 'คคค', 30.18, 1, 2, 2, 1, 4, '123', 3, 'ทดสอบ', 1000, 30, 17, 'Y', 'image-1670560447166.png', 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(464, '2022120915284192', '999999', 0, 'POLYGON ((101.82533 17.18429, 101.82458 17.18377, 101.82488 17.18338, 101.8255 17.18399, 101.82533 17.18429))', 0x0000000001030000000100000005000000179aeb34d2745940d7fa22a12d2f3140e23b31ebc574594065fcfb8c0b2f3140f7c77bd5ca74594090bddefdf12e314046b6f3fdd474594082caf8f7192f3140179aeb34d2745940d7fa22a12d2f3140, '101.82503890991211', '17.18383502960205', 'โคกขมิ้น', 2.73, 2, 1, 2, 1, 4, '999999', 2, 'อู่รถสายศรีทอง', 200, 546, 0, 'Y', 'image-1670574532444.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(465, '2022120915284192', '999999', 0, 'POLYGON ((101.82533 17.18429, 101.82458 17.18377, 101.82488 17.18338, 101.8255 17.18399, 101.82533 17.18429))', 0x0000000001030000000100000005000000179aeb34d2745940d7fa22a12d2f3140e23b31ebc574594065fcfb8c0b2f3140f7c77bd5ca74594090bddefdf12e314046b6f3fdd474594082caf8f7192f3140179aeb34d2745940d7fa22a12d2f3140, '101.82503890991211', '17.18383502960205', 'โคกขมิ้น', 2.73, 2, 1, 2, 1, 4, '999999', 2, 'อู่รถสายศรีทอง', 200, 546, 0, 'Y', 'image-1670574532613.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(467, '202301221021174', '0099111', 0, 'POLYGON ((101.9737 17.08266, 101.97405 17.08098, 101.97623 17.08134, 101.97609 17.08254, 101.97376 17.08272, 101.9737 17.08266))', 0x00000000010300000001000000060000005f07ce19517e5940f7afac3429153140ceaacfd5567e59404da1f31abb143140f1d7648d7a7e59404ddbbfb2d2143140f8fc3042787e5940a29c685721153140ca897615527e5940a1b94e232d1531405f07ce19517e5940f7afac3429153140, '101.97496414184570', '17.08185005187988', 'ซำพร้าว', 24.99, 3, 1, 2, 1, 2, '000', 3, 'ผาขาวซำพร้าว', 8000, 199, 9, 'Y', 'image-1684501424712.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(468, '2022111009570550', '999ksl', 0, 'POLYGON ((101.7791 17.14761, 101.77876 17.14784, 101.77761 17.14743, 101.77706 17.14714, 101.77741 17.14636, 101.7779 17.14651, 101.77846 17.14647, 101.77859 17.14654, 101.7791 17.14761))', 0x000000000103000000010000000900000012143fc6dc7159400490dac4c9253140b6db2e34d7715940670a9dd7d8253140b9c2bb5cc47159400473f4f8bd253140e8c1dd59bb715940f6ee8ff7aa2531405665df15c17159404c7155d977253140bde3141dc97159407689eaad81253140a04fe449d27159405ad8d30e7f25314087bf266bd47159404c8e3ba58325314012143fc6dc7159400490dac4c9253140, '101.77807998657227', '17.14710044860840', 'บ้านห้วยเป้า', 13.32, 2, 2, 2, 2, 2, '00', 1, 'บ้านห้วยเป้า', 5800, 77, 0, 'Y', 'image-1684501426373.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(469, '2022110114531260', '00055', 0, 'POLYGON ((101.77332 17.14879, 101.7732 17.14605, 101.77382 17.14607, 101.77384 17.14873, 101.77332 17.14879))', 0x0000000001030000000100000005000000ef552b137e715940cbf8f719172631401a51da1b7c715940af94658863253140683f5244867159403eedf0d7642531408c1535988671594020ef552b13263140ef552b137e715940cbf8f71917263140, '101.77352142333984', '17.14741992950440', '.', 11.33, 2, 2, 2, 1, 2, '000', 1, 'ห้วยเป้า', 10000, 113, 0, 'Y', 'image-1689566803111.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(471, '2023071711132634', '123', 0, 'POLYGON ((101.82504 17.18309, 101.82543 17.18264, 101.82622 17.18308, 101.82579 17.1836, 101.82504 17.18309))', 0x000000000103000000010000000500000014799274cd74594082397afcde2e3140c9c859d8d374594002f1ba7ec12e314046d3d9c9e07459403b8db454de2e314049d74cbed9745940ac8bdb68002f314014799274cd74594082397afcde2e3140, '101.82563018798828', '17.18311977386475', '123', 4.17, 2, 1, 1, 3, 3, '11', 6, '77', 1000, 4, 17, 'Y', 'image-1689567233365.png', 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(472, '2023080620044448', '609478001', 0, 'POLYGON ((101.82393 17.18418, 101.82424 17.18374, 101.82534 17.18443, 101.8249 17.18499, 101.82393 17.18418))', 0x00000000010300000001000000050000005f0ce544bb745940c993a46b262f314086032159c074594090f7aa95092f31402905dd5ed2745940ba66f2cd362f31401b9e5e29cb745940481630815b2f31405f0ce544bb745940c993a46b262f3140, '101.82463455200195', '17.18436527252197', '199', 5.9, 2, 1, 1, 3, 3, '123', 6, 'test', 1000, 5, 17, 'N', 'image-1691327099986.png', 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(473, '202308062004411', '6030210007', 0, 'POLYGON((101.829536005 17.1761122833, 101.830387205 17.1768129833, 101.830518105 17.1766670833, 101.830648105 17.1767585833, 101.831716405 17.1752064833, 101.831152305 17.1749859833, 101.830909405 17.1747389833, 101.829536005 17.1761122833, 101.829536005 17.1761122833))', 0x000000000103000000010000000900000016152f1e177559408832d1b1152d31407a1f6010257559401dc89c9d432d31407fed6835277559409f0dd10d3a2d3140665dab5629755940908fee0c402d314063c171d73a75594017d20355da2c314015fe6f99317559402b88a3e1cb2c31407c1aa49e2d7559401b9caab1bb2c314016152f1e177559408832d1b1152d314016152f1e177559408832d1b1152d3140, '101.829536005', '17.1761122833', 'โรงนม', 15.78, 2, 1, 1, 1, 1, '000', 1, 'โรงนม', 0, 0, 75, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(474, '202308062004412', '6030570008', 0, 'POLYGON((101.815697012 17.1700556511, 101.816550277 17.170381584, 101.816608757 17.1716947004, 101.816045697 17.1717649118, 101.815054817 17.171504727, 101.814927521 17.1711662338, 101.815166985 17.1700969063, 101.815697012 17.1700556511, 101.815697012 17.1700556511))', 0x0000000001030000000100000009000000097f3d613474594078f963c4882b31404ed0175c42745940e51ea3209e2b31404d3c605143745940511d132ff42b3140052abb173a74594005c806c9f82b314096ddaddb297459400c93d9bbe72b31408bd3c2c527745940ba59e08cd12b3140a75625b22b74594093b589788b2b3140097f3d613474594078f963c4882b3140097f3d613474594078f963c4882b3140, '101.815697012', '17.1700556511', 'แปลงหลังบ้าน', 17.14, 2, 1, 1, 1, 1, '000', 1, 'แปลงหลังบ้าน', 0, 0, 9, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(475, '202308062004413', '603057006', 0, 'POLYGON((101.800307335 17.1729748133, 101.800516605 17.1725691933, 101.801680075 17.1733346933, 101.802421905 17.1739177733, 101.802233725 17.1741675733, 101.802156595 17.1740963433, 101.802132455 17.1741448033, 101.800307335 17.1729748133, 101.800307335 17.1729748133))', 0x0000000001030000000100000009000000bba4413c38735940bc27ce13482c31405198ffa93b7359404685a17e2d2c3140b5fef1b94e73594056fc96a95f2c31406be467e15a73594043840ce0852c3140e3271fcc57735940e158ff3e962c3140ed729d8856735940a2d3f493912c314041525d23567359401df1fac0942c3140bba4413c38735940bc27ce13482c3140bba4413c38735940bc27ce13482c3140, '101.800307335', '17.1729748133', 'สามแยกต้นเชียงช้าง', 7.16, 2, 1, 1, 1, 1, '000', 1, 'สามแยกต้นเชียงช้าง', 0, 0, 9, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(476, '202308062004414', '6030573333', 0, 'POLYGON((101.802717705 17.1734692833, 101.802485705 17.1738953833, 101.801560305 17.1732327833, 101.801329505 17.1730939833, 101.801576205 17.1726471833, 101.802717705 17.1734692833, 101.802717705 17.1734692833))', 0x00000000010300000001000000070000004bb914ba5f73594052a2a27b682c3140e19e00ed5b735940ea326868842c3140cbef97c34c7359405aded2fb582c3140df528cfb487359406a6825e34f2c3140846e48064d7359402005169b322c31404bb914ba5f73594052a2a27b682c31404bb914ba5f73594052a2a27b682c3140, '101.802717705', '17.1734692833', 'ของเรานั่นละ', 5.04, 2, 1, 1, 1, 1, '000', 1, 'ของเรานั่นละ', 0, 0, 9, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(477, '202308062004415', '6030600004', 0, 'POLYGON((101.867987705 17.1061095826, 101.867994405 17.1075157826, 101.866449905 17.1076336826, 101.866413105 17.1062386826, 101.867987705 17.1061095826, 101.867987705 17.1061095826))', 0x000000000103000000010000000600000087934d1c8d775940280f63ff291b314081a567388d77594023128227861b31403a664dea737759400db78ae18d1b314041b3f34f737759404e565375321b314087934d1c8d775940280f63ff291b314087934d1c8d775940280f63ff291b3140, '101.867987705', '17.1061095826', 'โรงเรียนหนองหินวิทยา', 16.13, 2, 1, 1, 1, 1, '000', 1, 'โรงเรียนหนองหินวิทยา', 0, 0, 78, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(478, '202308062004416', '6030890007', 0, 'POLYGON((101.815487605 17.1580721831, 101.815379505 17.1580564831, 101.815269005 17.1581435831, 101.815085505 17.1580912831, 101.814840805 17.1580033831, 101.814642705 17.1579454831, 101.814525205 17.1579052831, 101.814569005 17.1576048831, 101.814593905 17.1572837831, 101.814652405 17.1570721831, 101.814687505 17.1570001831, 101.815401005 17.1573476831, 101.815530305 17.1574673831, 101.815770405 17.1576538831, 101.816337305 17.1578881831, 101.816579005 17.1578590831, 101.816681805 17.1578599831, 101.816975305 17.1580266831, 101.817134105 17.1580746831, 101.817470305 17.1581698831, 101.817744905 17.1581994831, 101.818013605 17.1582440831, 101.817953305 17.1586568831, 101.817526905 17.1586400831, 101.817508405 17.1585790831, 101.817358205 17.1585513831, 101.817149005 17.1585177831, 101.816998305 17.1585039831, 101.816988105 17.1587178831, 101.816660005 17.1586889831, 101.816204805 17.1586334831, 101.815979305 17.1585877831, 101.815875105 17.1585004831, 101.815487605 17.1580721831, 101.815487605 17.1580721831))', 0x00000000010300000001000000230000002d71ecf23074594063d2286b772831406ff3842d2f745940d5d5c16376283140b87a0c5e2d7459409c7c0d197c283140cbda645c2a7459407ab29aab78283140f73a0c5a267459406512e3e87228314099f9271b2374594026777c1d6f283140884f532e21745940b6c70a7b6c283140db3309e621745940ba9a2acb58283140bd5f794e227459400c9b00c0432831404c45d743237459409c86f1e135283140d49b0fd72374594069e1fb29312831406f66b2872f745940100411f047283140cd3705a631745940e8994cc84f28314042a11295357459407d0040015c283140b5ded2de3e745940e0d6265c6b283140d04496d442745940824aef7369283140a6edc28344745940f9c20883692831405627ca524974594053cfcb6f74283140f55ad8ec4b745940753d1a9577283140465bf86e517459406c204bd27d28314085dcb9ee557459409a28e6c27f2831401e4abc555a74594034b329af8228314054a8d158597459402633ccbc9d283140ce245e5c52745940cdbff0a29c28314087ebc50e5274594082be87a398283140e8e5c9984f7459406b26cdd296283140c61b572b4c745940b93f169f94283140323742b34974594043b38fb7932831408b0c7a8849745940713435bca1283140475b53284474594066a658d79f283140091414b33c7459400ff735349c283140054c430139745940abf57d35992831401e66374c377459409050d77c932831402d71ecf23074594063d2286b772831402d71ecf23074594063d2286b77283140, '101.815487605', '17.1580721831', 'ไผ่ ต.', 17.55, 2, 1, 1, 1, 1, '000', 1, 'ไผ่ ต.', 0, 0, 73, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(479, '202308062004417', '6030890008', 0, 'POLYGON((101.815954512 17.1589513966, 101.815974181 17.1586410442, 101.815636784 17.1586219132, 101.815120624 17.158130515, 101.814548524 17.1579696061, 101.814671577 17.1587585598, 101.815954512 17.1589513966, 101.815954512 17.1589513966))', 0x00000000010300000001000000080000001304469938745940ef0cea09b1283140a071c5eb387459406da410b39c283140752ca064337459407a9f19729b2831400298b1ef2a745940b56cce3d7b28314072e521902174594025f633b270283140870c419423745940124da666a42831401304469938745940ef0cea09b12831401304469938745940ef0cea09b1283140, '101.815954512', '17.1589513966', 'ไผ่ ต.', 5.32, 2, 1, 1, 1, 1, '000', 1, 'ไผ่ ต.', 0, 0, 73, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(480, '202308062004418', '6031030004', 0, 'POLYGON((101.795479528 17.1578760281, 101.795146356 17.1578584283, 101.794200575 17.1579214191, 101.793782711 17.1579442318, 101.793649142 17.1578681226, 101.793472309 17.156949239, 101.795496018 17.1569997668, 101.795479528 17.1578760281, 101.795479528 17.1578760281))', 0x00000000010300000001000000090000007159f722e97259400a8339906a2831406ea38aade37259404bf2f26869283140b905a62ed4725940565fc2896d28314004f8ff55cd7259403f2c7e086f283140dd58c525cb725940dea5970b6a283140f15b1440c872594018a348d32d283140205a2168e9725940b8e2ff22312831407159f722e97259400a8339906a2831407159f722e97259400a8339906a283140, '101.795479528', '17.1578760281', 'ของเรานั้น่ละ', 13.07, 2, 1, 1, 1, 1, '000', 1, 'ของเรานั้น่ละ', 0, 0, 84, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(481, '202308062004419', '6031030005', 0, 'POLYGON((101.793586505 17.1578855831, 101.793436605 17.1569140831, 101.791863005 17.1570230831, 101.791924605 17.1574660831, 101.793586505 17.1578855831, 101.793586505 17.1578855831))', 0x000000000103000000010000000600000067610d1fca725940a5ec87306b283140277b53aac7725940423277852b283140c9582be2ad725940b0a12eaa32283140dbd789e4ae725940cb247db24f28314067610d1fca725940a5ec87306b28314067610d1fca725940a5ec87306b283140, '101.793586505', '17.1578855831', 'แปลงเช่าพะยุง', 8.32, 2, 1, 1, 1, 1, '000', 1, 'แปลงเช่าพะยุง', 0, 0, 84, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(482, '202308062004420', '6031100002', 0, 'POLYGON((101.797367305 17.1859222834, 101.797480605 17.1855053834, 101.797615005 17.1854041834, 101.797743605 17.1852765834, 101.798009805 17.1851609834, 101.798014105 17.1855084834, 101.798241205 17.1855047834, 101.798222505 17.1853418834, 101.798283705 17.1853311834, 101.798157905 17.1848244834, 101.799807005 17.1847937834, 101.799854805 17.1848548834, 101.799718305 17.1848914834, 101.799583405 17.1851431834, 101.799487905 17.1852122834, 101.799518605 17.1853617834, 101.799875405 17.1853810834, 101.799896405 17.1855462834, 101.800065505 17.1855478834, 101.799994605 17.1853832834, 101.799910005 17.1848385834, 101.800295905 17.1847882834, 101.800431405 17.1847991834, 101.800975405 17.1847486834, 101.801278205 17.1851445834, 101.801439505 17.1852865834, 101.801543205 17.1853728834, 101.801697505 17.1856607834, 101.801554105 17.1857916834, 101.797367305 17.1859222834, 101.797367305 17.1859222834))', 0x000000000103000000010000001f000000fa77e01008735940f7cc4e9a982f3140d66a17ec0973594058efe2477d2f31408751ce1f0c7359409d3e08a6762f31405c84313b0e735940e96a42496e2f31403197b79712735940bd32d0b5662f314030aec0a9127359406455e57b7d2f3140db724762167359405ef4d13d7d2f3140ff79d8131673594034c8cf90722f3140e779891417735940c9a14bdd712f314035c1e40415735940feb347a8502f31408d65b80930735940053538a54e2f3140804135d2307359407ab54ea6522f3140347faf952e7359400e835a0c552f31408fb9df5f2c735940c4c72d8b652f3140726151cf2a7359403e057c126a2f3140304115502b73594099a1adde732f314062569c283173594003807a22752f31406eeab08031735940ec1813f67f2f31407fa8f24534735940870beb10802f3140e45c921c33735940986d6347752f3140f7cdbbb931735940f2bdd694512f314041c6500c3873594011e3f1484e2f3140a5caa4443a735940cf07d1ff4e2f31400658582e437359409b2e91b04b2f31403f5e6124487359400bbcaaa2652f3140a3ecebc84a735940301708f16e2f314096f3de7b4c735940aac4e798742f3140a1500d034f7359404dda1077872f3140c5bc96a94c7359406112340b902f3140fa77e01008735940f7cc4e9a982f3140fa77e01008735940f7cc4e9a982f3140, '101.797367305', '17.1859222834', 'ห้วยไผ่ใต้', 26.13, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 77, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(483, '202308062004421', '6031880004', 0, 'POLYGON((101.826797632 17.1638534833, 101.826684005 17.164231159, 101.824881083 17.1647448815, 101.824799613 17.164559289, 101.824561417 17.1646314324, 101.824406056 17.1641465279, 101.825902263 17.1637526644, 101.825971531 17.1639922735, 101.826797632 17.1638534833, 101.826797632 17.1638534833))', 0x000000000103000000010000000a0000006a769d40ea745940f31b484df22931407c660764e8745940a1e3a00d0b2a3140bda406daca745940d43976b82c2a3140a9e55084c97459400d82bc8e202a3140bde33f9dc5745940380d1a49252a31403d499e11c37459401c15c181052a3140c1512a95db7459401a3bd2b1eb2931409c44b2b7dc745940ac7acb65fb2931406a769d40ea745940f31b484df22931406a769d40ea745940f31b484df2293140, '101.826797632', '17.1638534833', 'นั่นละ', 9.5, 2, 1, 1, 1, 1, '000', 1, 'นั่นละ', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(484, '202308062004422', '6031880006', 0, 'POLYGON((101.827688005 17.1650581832, 101.827587305 17.1641817832, 101.827130805 17.1642753832, 101.827064305 17.1642008832, 101.826599705 17.1642512832, 101.824620505 17.1648139832, 101.825539905 17.1663497832, 101.827110705 17.1663007832, 101.827110805 17.1658934832, 101.827688005 17.1650581832, 101.827688005 17.1650581832))', 0x000000000103000000010000000b0000000e311cd7f8745940fbc7ca40412a3140d363be30f774594066713dd1072a31404e3f0bb6ef745940c26196f30d2a31407e6a1f9fee7459407d51af11092a3140eef67202e774594087ab415f0c2a314081251595c67459407ac4cb3f312a3140266153a5d57459406b8a3ee6952a31406009bd61ef745940a82429b0922a31402b692862ef745940aaf6ccfe772a31400e311cd7f8745940fbc7ca40412a31400e311cd7f8745940fbc7ca40412a3140, '101.827688005', '17.1650581832', 'นิกรสุข', 34.05, 2, 1, 1, 1, 1, '000', 1, 'นิกรสุข', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(485, '202308062004423', '6031880009', 0, 'POLYGON((101.840337584 17.1585573923, 101.840784747 17.1588357544, 101.840151077 17.1595639361, 101.841856737 17.1609094546, 101.842145154 17.1605557711, 101.842239641 17.1603130242, 101.841783976 17.1602027756, 101.841710289 17.160217904, 101.841374591 17.1600281238, 101.841294113 17.1597772115, 101.841327769 17.1594575317, 101.841355871 17.1591323377, 101.84095237 17.1586104348, 101.840618973 17.1582850091, 101.840337584 17.1585573923, 101.840337584 17.1585573923))', 0x00000000010300000001000000100000004c384a17c8755940b1779e3797283140cdd5d36acf7559405f95c275a928314082da0509c5755940a82b9f2ed9283140445514fbe0755940cb1fad5c312931408dbac9b4e5755940fe0eda2e1a293140595f1841e7755940d60f3c460a293140e1cde5c9df75594030ee910c032931408dfdd494de755940e6e9610a04293140f201d014d97559404729669af7283140c06943c3d7755940e009ca28e728314096446d50d87559409cc07335d2283140878f4bc6d875594054289ae5bc28314032a9e329d2755940354586b19a283140a85b85b3cc7559401488c95d852831404c384a17c8755940b1779e37972831404c384a17c8755940b1779e3797283140, '101.840337584', '17.1585573923', 'แปลงเช่า', 13.26, 2, 1, 1, 1, 1, '000', 1, 'แปลงเช่า', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(486, '202308062004424', '6031880012', 0, 'POLYGON((101.837341105 17.1625187832, 101.837789105 17.1624468832, 101.838268405 17.1623861832, 101.838032605 17.1610798831, 101.837265705 17.1613973831, 101.837341105 17.1625187832, 101.837341105 17.1625187832))', 0x0000000001030000000100000007000000936425ff9675594068d4bad49a293140e3ba31569e7559405fae721e96293140af2f8630a6755940902a1224922931403add8153a275594040f5fd873c2931406442e5c2957559401113c25651293140936425ff9675594068d4bad49a293140936425ff9675594068d4bad49a293140, '101.837341105', '17.1625187832', 'หลังบ้าน', 7.81, 2, 1, 1, 1, 1, '000', 1, 'หลังบ้าน', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(487, '202308062004425', '6031880013', 0, 'POLYGON((101.839729705 17.1599756831, 101.839860205 17.1603580831, 101.839307505 17.1608629831, 101.838817305 17.1607947831, 101.838296705 17.1607037831, 101.838069505 17.1610110831, 101.837973605 17.1608777831, 101.837305105 17.1611568831, 101.837613105 17.1599723831, 101.839729705 17.1599756831, 101.839729705 17.1599756831))', 0x000000000103000000010000000b0000001a1da921be755940dc11972af4283140f56b0445c07559405290323a0d293140ca50d336b77559402f8d03512e293140cf12c72eaf7559402bc8ced829293140741439a7a67559400bc214e223293140ffef46eea27559404235b80538293140b8180b5ca1755940461151492f293140edaf2668967559409670d69341293140442bff739b7559407dad39f3f32831401a1da921be755940dc11972af42831401a1da921be755940dc11972af4283140, '101.839729705', '17.1599756831', 'หลังบ้าน', 14.44, 2, 1, 1, 1, 1, '000', 1, 'หลังบ้าน', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(488, '202308062004426', '6031880017', 0, 'POLYGON((101.839776505 17.1599467831, 101.840536005 17.1591338831, 101.840790305 17.1588105831, 101.840274005 17.1585179831, 101.840539705 17.1582646831, 101.840237705 17.1580439831, 101.839982105 17.1583398831, 101.840225205 17.1584812831, 101.839980105 17.1586829831, 101.839455205 17.1590767831, 101.839331305 17.1591734831, 101.839776505 17.1599467831, 101.839776505 17.1599467831))', 0x000000000103000000010000000d000000263bf4e5be755940d183ba45f228314079258757cb755940999987ffbc28314035b12382cf75594056ac74cfa7283140dac99e0cc77559400d3e71a294283140bafd0b67cb755940bc06c60884283140d5f55d74c67559407cbe0a9275283140d18c4d44c275594024916bf688283140fe2ff03fc67559404ff1b73a922831400011ea3bc2755940a2d8ae729f283140a5fb52a2b9755940a7f78c41b9283140fa5ea69ab77559400e4ee897bf283140263bf4e5be755940d183ba45f2283140263bf4e5be755940d183ba45f2283140, '101.839776505', '17.1599467831', 'หลังบ้าน', 8.35, 2, 1, 1, 1, 1, '000', 1, 'หลังบ้าน', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(489, '202308062004427', '6031880028', 0, 'POLYGON((101.817825105 17.1617395832, 101.817557605 17.1617913832, 101.817448305 17.1618071832, 101.817847305 17.1635035832, 101.818114805 17.1632879832, 101.818205405 17.1624098832, 101.818270805 17.1621106832, 101.818205205 17.1618038832, 101.818161605 17.1616981832, 101.818101905 17.1616956832, 101.818179805 17.1619226832, 101.817883805 17.1619965832, 101.817825105 17.1617395832, 101.817825105 17.1617395832))', 0x000000000103000000010000000e000000a8f41b3f577459400b50ecc3672931408d0422dd527459405d9efb286b2931405209b21251745940151a10326c2931403106399c57745940719fee5edb2931404cf632fe5b7459407eacc33dcd293140abf8337a5d74594024e4b0b193293140c8af828c5e7459401dadf2158029314016395d795d745940b6b5b2fa6b29314058147ec25c745940a7aa580d652931404db117c85b745940963f67e364293140402ed40e5d74594017d3d4c373293140cb9950355874594062e8aa9b78293140a8f41b3f577459400b50ecc367293140a8f41b3f577459400b50ecc367293140, '101.817825105', '17.1617395832', 'ห้วยไผ่ใต้', 6.27, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(490, '202308062004428', '6031880030', 0, 'POLYGON((101.841349705 17.1617122831, 101.840704605 17.1626106832, 101.839976705 17.1624048832, 101.839664005 17.1622785832, 101.839302605 17.1632047832, 101.838402205 17.1629058832, 101.838355505 17.1627923832, 101.839363005 17.1609057831, 101.841349705 17.1617122831, 101.841349705 17.1617122831))', 0x000000000103000000010000000a0000005ade6eacd8755940a846e7f9652931409504b01ace75594000538edaa02931401e58a72dc2755940010ece5d932931409e46180ebd7559406aafd7168b2931400cfb4522b77559401065e6c9c7293140a2d7b861a875594085ab3033b42931406119d99da7755940c4e1f9c2ac293140a0fc9b1fb8755940da26141f312931405ade6eacd8755940a846e7f9652931405ade6eacd8755940a846e7f965293140, '101.841349705', '17.1617122831', '4 แยกโคกขมิ้นซ้ายมือ', 24.8, 2, 1, 1, 1, 1, '000', 1, '4 แยกโคกขมิ้นซ้ายมือ', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(491, '202308062004429', '6031880045', 0, 'POLYGON((101.855561761 17.177895207, 101.85615802 17.1790312107, 101.856428037 17.179334485, 101.85665615 17.1795466911, 101.856760305 17.1793813958, 101.856640689 17.1787466283, 101.856131523 17.1775980739, 101.855561761 17.177895207, 101.855561761 17.177895207))', 0x000000000103000000010000000900000001cd1d86c17659401e2e508a8a2d3140eb06024bcb76594077eb4afdd42d3140b8928ab7cf765940b81e64dde82d3140b50a5174d376594028619ec5f62d31401a9f2c29d5765940ca786cf0eb2d314063eb7733d37659409bd1ca56c22d31400517dfdbca765940ac3b3f11772d314001cd1d86c17659401e2e508a8a2d314001cd1d86c17659401e2e508a8a2d3140, '101.855561761', '17.177895207,', 'โคกน้อย', 7.42, 2, 1, 1, 1, 1, '000', 1, 'โคกน้อย', 0, 0, 11, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(492, '202308062004430', '6032120005', 0, 'POLYGON((101.813625103 17.1824915295, 101.814113299 17.1823527149, 101.813754854 17.1815112752, 101.813692268 17.1815374213, 101.813630516 17.1815147368, 101.813556263 17.1815624069, 101.813316746 17.1816942979, 101.813625103 17.1824915295, 101.813625103 17.1824915295))', 0x0000000001030000000100000009000000bd25066f12745940e0ffcec3b72e3140659caa6e1a74594012d5e2aaae2e31400a393d8f14745940d9d6de85772e31405b04bc8813745940d27b873c792e3140d94fba85127459404d4cf2bf772e31409fc2494e117459408cd1b7df7a2e3140fc56ae610d745940a5597b84832e3140bd25066f12745940e0ffcec3b72e3140bd25066f12745940e0ffcec3b72e3140, '101.813625103', '17.1824915295', 'หน้าโรงงาน', 3.25, 2, 1, 1, 1, 1, '000', 1, 'หน้าโรงงาน', 0, 0, 13, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(493, '202308062004431', '6032120008', 0, 'POLYGON((101.807621105 17.1622489832, 101.807360205 17.1618132832, 101.808567505 17.1609993832, 101.808733905 17.1611892832, 101.809260805 17.1607550832, 101.809066605 17.1605699832, 101.809358805 17.1602252831, 101.809566905 17.1606265832, 101.807621105 17.1622489832, 101.807621105 17.1622489832))', 0x000000000103000000010000000a00000033626e10b07359403ca73c2689293140472423caab735940036767986c29314055a5eb91bf7359402a856d41372931400c49da4bc273594047cf6bb34329314037dad4edca7359408002c13e27293140b0304cbfc773594032904a1d1b293140198ddf88cc73594027e82e86042931408839b5f1cf73594054b6e1d21e29314033626e10b07359403ca73c268929314033626e10b07359403ca73c2689293140, '101.807621105', '17.1622489832', 'โนนผีสิงค์', 6.34, 2, 1, 1, 1, 1, '000', 1, 'โนนผีสิงค์', 0, 0, 13, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(494, '202308062004432', '6033270009', 0, 'POLYGON((101.958683101 17.1338298559, 101.958097254 17.132608839, 101.958124334 17.1325953751, 101.958895434 17.1322500514, 101.959532657 17.1334698865, 101.958683101 17.1338298559, 101.958683101 17.1338298559))', 0x000000000103000000010000000700000077815d105b7d5940a35166ac4222314050142577517d594060aa22a7f22131400902bae8517d5940c5a73fc5f12131401454f48a5e7d594046a8ad23db2131409350a9fb687d5940b1841d152b22314077815d105b7d5940a35166ac4222314077815d105b7d5940a35166ac42223140, '101.958683101', '17.1338298559', 'ผาสวรรค์', 9.04, 2, 1, 1, 1, 1, '000', 1, 'ผาสวรรค์', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(495, '202308062004433', '6033270010', 0, 'POLYGON((101.953993371 17.1406650263, 101.954633748 17.1405317463, 101.954693427 17.1404631839, 101.954761823 17.1402472444, 101.954724943 17.1401354299, 101.954746736 17.1399326258, 101.954745395 17.1398031899, 101.95461229 17.1393005036, 101.954905992 17.1391989409, 101.954601226 17.1389294952, 101.95459318 17.1388157576, 101.954685716 17.1386699811, 101.954654535 17.1385943695, 101.954425877 17.1385226026, 101.95365273 17.1389496796, 101.953993371 17.1406650263, 101.953993371 17.1406650263))', 0x0000000001030000000100000011000000ee42363a0e7d594044a6879f0224314059d425b8187d5940846876e3f9233140f4aa75b2197d59407d242d65f5233140475055d11a7d5940580d503ee723314012b7a5361a7d5940706e60eadf2331404cc50d921a7d59405474e39fd223314006e26d8c1a7d59403a7f5024ca233140387a255e187d59404147a332a92331403e99052e1d7d5940a7cdb28aa22331400e99bd2f187d5940735526e2902331406b45fe0d187d5940bc0ff36d892331406a0b1e92197d5940eec239e07f23314066b3550f197d59408969aceb7a233140f40a4650157d59407eec9f3776233140d5c575a5087d5940f3abc93492233140ee42363a0e7d594044a6879f02243140ee42363a0e7d594044a6879f02243140, '101.953993371', '17.1406650263', 'ต้นมะค่า ผาสวรรค์', 12.77, 2, 1, 1, 1, 1, '000', 1, 'ต้นมะค่า ผาสวรรค์', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(496, '202308062004434', '6033270012', 0, 'POLYGON((101.957339125 17.1328810655, 101.956698411 17.1316391704, 101.957438468 17.1312190616, 101.958147272 17.1325600404, 101.957339125 17.1328810655, 101.957339125 17.1328810655))', 0x00000000010300000001000000060000009a43520b457d59408494567e0422314055d8f88b3a7d594096bdcb1ab321314083fffeab467d59400e2f8a9297213140777fef48527d594042466e74ef2131409a43520b457d59408494567e042231409a43520b457d59408494567e04223140, '101.957339125', '17.1328810655', 'ไร่บริษัท', 9.22, 2, 1, 1, 1, 1, '000', 1, 'ไร่บริษัท', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(497, '202308062004435', '6033270026', 0, 'POLYGON((101.957130812 17.1343137404, 101.955988448 17.1347255894, 101.95574945 17.1347852257, 101.95553715 17.1348267941, 101.954986734 17.1348783051, 101.954588966 17.1349046868, 101.953751579 17.1348693838, 101.95371825 17.1348584564, 101.953649343 17.1348120435, 101.953458224 17.1342061013, 101.955999497 17.1332448645, 101.956627602 17.133079765, 101.957130812 17.1343137404, 101.957130812 17.1343137404))', 0x000000000103000000010000000e0000002ce297a1417d5940e36ba26262223140e2e02bea2e7d5940466850607d223140e1babdff2a7d5940905dd848812231403c574a85277d5940b6483f028422314035a9ad801e7d59402b58756287223140eb8551fc177d594014e2111d892231400e1410440a7d594016a7c8cc862231404b5645b8097d5940b9d37315862231405c024197087d59407ef0c50a83223140aa8ba475057d5940d501c0545b223140e0a683182f7d59403063df551c2231409e42fa62397d5940336ff683112231402ce297a1417d5940e36ba262622231402ce297a1417d5940e36ba26262223140, '101.957130812', '17.1343137404', 'ไร่บริษัท', 30.02, 2, 1, 1, 1, 1, '000', 1, 'ไร่บริษัท', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(498, '202308062004436', '6033270028', 0, 'POLYGON((101.955777505 17.150065883, 101.955203605 17.149181383, 101.956723605 17.148080983, 101.957360805 17.149181283, 101.955777505 17.150065883, 101.955777505 17.150065883))', 0x00000000010300000001000000060000008f8e69752b7d5940f9babbb76a263140c31f4d0e227d5940342849c03026314051b2a4f53a7d59400025a3a2e82531409ffc4066457d59400ba99bbe302631408f8e69752b7d5940f9babbb76a2631408f8e69752b7d5940f9babbb76a263140, '101.955777505', '17.150065883,', 'ผาสวรรค์', 15.78, 2, 1, 1, 1, 1, '000', 1, 'ผาสวรรค์', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(499, '202308062004437', '6033270031', 0, 'POLYGON((101.956610905 17.1331064828, 101.958088705 17.1326326828, 101.958613605 17.1338626828, 101.957131805 17.1343279828, 101.956610905 17.1331064828, 101.956610905 17.1331064828))', 0x000000000103000000010000000600000035fef11c397d5940f78236441322314016a94953517d5940ba012b37f421314071bee0ec597d5940e4c724d344223140ef1bc2a5417d59404b1095516322314035fef11c397d5940f78236441322314035fef11c397d5940f782364413223140, '101.956610905', '17.1331064828', 'ไร่บริษัท ผาสวรรค์', 15.18, 2, 1, 1, 1, 1, '000', 1, 'ไร่บริษัท ผาสวรรค์', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(500, '202308062004438', '6033270046', 0, 'POLYGON((101.955483205 17.1348488828, 101.956821105 17.1345019828, 101.957391705 17.1357300828, 101.956853005 17.1361394828, 101.956763905 17.1360171828, 101.955879905 17.1361014828, 101.955483205 17.1348488828, 101.955483205 17.1348488828))', 0x00000000010300000001000000080000008b5607a3267d59403487d574852231403f86968e3c7d5940875fd1b86e223140f39bdbe7457d594099b5ea34bf2231407ae362143d7d594003528209da223140f87dac9e3b7d5940efd1a705d22231403bb8e8222d7d59402890f98bd72231408b5607a3267d59403487d574852231408b5607a3267d59403487d57485223140, '101.955483205', '17.1348488828', 'ที่บริษัท ผาสวรรค์', 15.43, 2, 1, 1, 1, 1, '000', 1, 'ที่บริษัท ผาสวรรค์', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(501, '202308062004439', '6033270047', 0, 'POLYGON((101.955170525 17.1491893019, 101.954568369 17.1483329514, 101.95611701 17.1469354865, 101.956661498 17.1472315116, 101.95676141 17.1473484478, 101.956802314 17.1475047897, 101.956728553 17.1480372485, 101.955170525 17.1491893019, 101.955170525 17.1491893019))', 0x00000000010300000001000000090000009abe8d83217d5940d692244531263140aba9eda5177d5940a22ef725f92531405b466605317d5940ac2365909d25314027d025f1397d59403d43dff6b0253140978135943b7d5940d86abca0b82531407fd7c53f3c7d5940cec3b7dfc22531403492650a3b7d5940b7e5e4c4e52531409abe8d83217d5940d6922445312631409abe8d83217d5940d692244531263140, '101.955170525', '17.1491893019', 'ผาสวรรค์ตาต่วย', 18.85, 2, 1, 1, 1, 1, '000', 1, 'ผาสวรรค์ตาต่วย', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(502, '202308062004440', '6033270060', 0, 'POLYGON((101.957487405 17.1312315828, 101.957924705 17.1310682828, 101.958444705 17.1316448828, 101.958829905 17.1322463828, 101.958154305 17.1325360828, 101.957487405 17.1312315828, 101.957487405 17.1312315828))', 0x0000000001030000000100000007000000a4b34079477d59400d549c649821314059006ca34e7d59403c2be4b08d213140f6bf7528577d5940cf4fa27ab3213140b7191b785d7d5940ea2321e6da213140c81f6f66527d59407c2a7de2ed213140a4b34079477d59400d549c6498213140a4b34079477d59400d549c6498213140, '101.957487405', '17.1312315828', 'ผาสวรรค์', 6.74, 2, 1, 1, 1, 1, '000', 1, 'ผาสวรรค์', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(503, '202308062004441', '6033275001', 0, 'POLYGON((101.952271392 17.1519095422, 101.952527208 17.1508552176, 101.950300639 17.1509711904, 101.950235931 17.1521030427, 101.952271392 17.1519095422, 101.952271392 17.1519095422))', 0x00000000010300000001000000060000009c63b503f27c594007b3338be326314041baad34f67c5940e10592729e263140de77c5b9d17c5940fc67450ca626314043c85daad07c5940c2049a39f02631409c63b503f27c594007b3338be32631409c63b503f27c594007b3338be3263140, '101.952271392', '17.1519095422', 'ผาสววรค์ในภู', 16.99, 2, 1, 1, 1, 1, '000', 1, 'ผาสววรค์ในภู', 0, 0, 39, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(504, '202308062004442', '603380004', 0, 'POLYGON((101.807880001 17.1794817413, 101.807163002 17.1795146553, 101.807098916 17.179488796, 101.807058026 17.1790813443, 101.807033174 17.1788087834, 101.807009694 17.1786268664, 101.807253195 17.1784402694, 101.807454997 17.1783284734, 101.807628498 17.1782185328, 101.807773482 17.1781209148, 101.807921449 17.1780922115, 101.808117548 17.1780384849, 101.80805128 17.1781751622, 101.808063413 17.1784291569, 101.808107124 17.1786070069, 101.80809666 17.1787934763, 101.8082121 17.1791196843, 101.80829669 17.1793452039, 101.808305623 17.1794207977, 101.808028957 17.1794754075, 101.807880001 17.1794817413, 101.807880001 17.1794817413))', 0x0000000001030000000100000016000000ccd8514eb4735940d51cf183f22d31406508028fa87359408daa25acf42d3140da363682a773594084d14cfaf22d31403de9b4d6a67359409b176546d82d31407e47786ea6735940c8f09469c62d31403dd2fc0ba6735940fd5f857dba2d314075074e09aa735940c85cf142ae2d3140d546b957ad735940d83251efa62d3140918e702fb0735940c7ead1ba9f2d314007f18b8fb2735940b3cc0f55992d3140494c2afcb473594098108073972d3140f5fea932b87359402c131eee932d3140d245b71cb7735940c69b2ee39c2d314077fb9a4fb7735940d1898188ad2d3140a84ff106b8735940d1785530b92d31403dad0ddbb77359405872c568c52d3140d16e3ebfb97359406b23a2c9da2d3140f7400a22bb735940e8713991e92d31404efd8147bb735940ff577a85ee2d31404e2216bfb673594016a6ad19f22d3140ccd8514eb4735940d51cf183f22d3140ccd8514eb4735940d51cf183f22d3140, '101.807880001', '17.1794817413', 'ไผ่.ร.', 9.86, 2, 1, 1, 1, 1, '000', 1, 'ไผ่.ร.', 0, 0, 14, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(505, '202308062004443', '6034100002', 0, 'POLYGON((101.797478505 17.1869468834, 101.798047405 17.1868963834, 101.799376905 17.1868844834, 101.800201305 17.1868696834, 101.799515605 17.1874188834, 101.799271505 17.1875563834, 101.798597905 17.1876592834, 101.798204905 17.1877654834, 101.797484905 17.1875015834, 101.797114505 17.1874286834, 101.797088805 17.1874028834, 101.797478505 17.1869468834, 101.797478505 17.1869468834))', 0x000000000103000000010000000d0000003b8f48e309735940c94a3ec0db2f31407e486c35137359409571fe70d82f3140c609c0fd28735940365558a9d72f314042cc887f367359401fd10ab1d62f3140770780432b73594018db16affa2f314061a6ab4327735940eadbf4b1033031404328633a1c73594069fe54700a303140d69e06ca157359404885126611303140d68120fe09735940b6a6901a003031401a898eec037359400c898153fb2f3140e55ec380037359400d61a7a2f92f31403b8f48e309735940c94a3ec0db2f31403b8f48e309735940c94a3ec0db2f3140, '101.797478505', '17.1869468834', 'ภูโจด', 13.05, 2, 1, 1, 1, 1, '000', 1, 'ภูโจด', 0, 0, 16, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(506, '202308062004444', '6034120003', 0, 'POLYGON((101.906730667 17.0112431242, 101.906851267 17.0109600472, 101.907201334 17.0104327108, 101.907331353 17.0103603634, 101.906861381 17.0095604181, 101.906806677 17.0093613867, 101.907254285 17.0091699949, 101.907279098 17.0088359107, 101.907379256 17.0086206531, 101.906681918 17.008721535, 101.906201908 17.0089248202, 101.905841885 17.0088821807, 101.905763487 17.0089491189, 101.905747684 17.0095187012, 101.905702938 17.0098896438, 101.905582134 17.0101851044, 101.906269476 17.0103008555, 101.906730667 17.0112431242, 101.906730667 17.0112431242))', 0x0000000001030000000100000013000000e64210e0077a59406ebe52d4e00231407986e5d9097a594060491447ce023140ba1a2f960f7a5940d3b1d7b7ab0231404ff185b7117a594049fa0dfaa6023140a05951040a7a59405a13338d720231409b60df1e097a5940c2b8018265023140c6ce4674107a59403233fcf658023140489059dc107a5940a47cfb1143023140af657180127a594079228ff634023140d06b9813077a59408e9813933b023140b39b4936ff795940b6e1a2e54802314002db3d50f9795940a89f431a46023140dca46a07f8795940e6004d7d4a0231404c4d22c5f7795940ba5a4ed16f02314079a67409f7795940aab0b02088023140cd57c40ef5795940ea4db27d9b0231401e32b051007a59404a7ead13a3023140e64210e0077a59406ebe52d4e0023140e64210e0077a59406ebe52d4e0023140, '101.906730667', '17.0112431242', 'ตาดข่า', 18.53, 2, 1, 1, 1, 1, '000', 1, 'ตาดข่า', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(507, '202308062004445', '6034120005', 0, 'POLYGON((101.820273015 17.1794359033, 101.819711775 17.1797241433, 101.819246575 17.1806681933, 101.819032925 17.1809461733, 101.818820905 17.1817953634, 101.820191865 17.1815364734, 101.820273015 17.1794359033, 101.820273015 17.1794359033))', 0x0000000001030000000100000008000000d84d635a7f745940d766e882ef2d31405a716028767459406ec6c566022e31400abf2f896e745940a2a64d45402e314039ce12096b745940eca8087d522e31406410cc8f67745940105e14248a2e3140b22705067e745940c048a02c792e3140d84d635a7f745940d766e882ef2d3140d84d635a7f745940d766e882ef2d3140, '101.820273015', '17.1794359033', 'หลังร้านกาแฟ', 14.78, 2, 1, 1, 1, 1, '000', 1, 'หลังร้านกาแฟ', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(508, '202308062004446', '6034120006', 0, 'POLYGON((101.820668585 17.1887239734, 101.820693255 17.1893425234, 101.820764515 17.1894584534, 101.821066775 17.1898952434, 101.821291105 17.1901336734, 101.821601335 17.1897555634, 101.821725075 17.1896072334, 101.822177795 17.1890236834, 101.821136145 17.1880429234, 101.820813825 17.1878214434, 101.820668585 17.1887239734, 101.820668585 17.1887239734))', 0x000000000103000000010000000c0000007f5b87d58574594063b9dd36503031407591003d86745940c0be69c0783031401b69e36787745940c24d655980303140439da85b8c745940a71184f99c303140201e910890745940101fb599ac303140320bc41d957459407c0913d29330314067dbc42497745940bd8982198a3031406f419d8f9e745940595f2adb63303140aa159e7e8d7459404b3fbe9423303140b39eb53688745940f9e3ec10153031407f5b87d58574594063b9dd36503031407f5b87d58574594063b9dd3650303140, '101.820668585', '17.1887239734', 'หน้าโรงงานแปลงอ้อยบริษัท', 14.14, 2, 1, 1, 1, 1, '000', 1, 'หน้าโรงงานแปลงอ้อยบริษัท', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(509, '202308062004447', '6034120007', 0, 'POLYGON((101.943472918 17.110007589, 101.941837099 17.1074372944, 101.941522782 17.1076189084, 101.941445701 17.1077315746, 101.941910277 17.1100374809, 101.942454732 17.1106864213, 101.942738491 17.1109649036, 101.943472918 17.110007589, 101.943472918 17.110007589))', 0x000000000103000000010000000900000030de3bdc617c59401a111575291c314054971c0f477c594098d1b102811b31404148c5e8417c59405c02ace98c1b31404f3078a5407c594051a7e54b941b3140cede0a42487c5940bbcc956a2b1c3140a1f9a62d517c59404398fff1551c3140a0e1d2d3557c59403ef72732681c314030de3bdc617c59401a111575291c314030de3bdc617c59401a111575291c3140, '101.943472918', '17.110007589,', 'ผาสวรรค์', 24.46, 2, 1, 1, 1, 1, '000', 1, 'ผาสวรรค์', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(510, '202308062004448', '6034120008', 0, 'POLYGON((101.956870503 17.0753423158, 101.957069169 17.0745294798, 101.956956788 17.0745277926, 101.957025241 17.0734266546, 101.956869048 17.0733540738, 101.955344183 17.0731150652, 101.954434333 17.0723828298, 101.954227659 17.072304086, 101.953932836 17.0721159622, 101.953348375 17.072112582, 101.953024322 17.0726858065, 101.953136439 17.0727037, 101.953276211 17.0727490228, 101.953745048 17.0729505682, 101.953925912 17.0732342296, 101.953945931 17.0733858078, 101.95408588 17.0734203273, 101.954078156 17.0735498775, 101.954144794 17.0735995037, 101.954194225 17.0736704823, 101.954334086 17.0737104032, 101.954387206 17.073900298, 101.954498534 17.0739668038, 101.954639009 17.0739689144, 101.954712759 17.0739268003, 101.95488168 17.073907727, 101.955072026 17.0739538086, 101.955316983 17.0740979601, 101.955641221 17.0742054827, 101.9557227 17.074379595, 101.956059587 17.07474664, 101.956286813 17.0749445519, 101.956476546 17.0750284426, 101.956659257 17.075198672, 101.956870503 17.0753423158, 101.956870503 17.0753423158))', 0x00000000010300000001000000240000001839c75d3d7d5940ac5d4ea2491331405a370b9f407d594032542e5d141331404b09afc73e7d59402edcdf4014133140a8e2cbe63f7d59406429d816cc123140bdedac573d7d5940d7ff2355c71231402a9aed5b247d594000e13dabb7123140889abd73157d59406ec85eae87123140fe15e310127d5940b7bc448582123140d64c4f3c0d7d5940282b1331761231407714e7a8037d5940f3515df87512314016d2b959fe7c594007cd79899b1231406188fa2f007d594057ccadb59c1231403093397a027d5940f1bd11ae9f1231407278ab280a7d5940c4a470e3ac12314035b6441f0d7d59406b147d7abf12314007f33b730d7d5940d67d8c69c9123140390b39be0f7d5940789db0accb1231404576d39d0f7d5940c07c2e2ad41231403c7853b5107d5940b164c56ad71231400d9aa784117d5940b7289811dc123140ff3446cf137d5940751e5bafde1231406a5f13ae147d59401d134321eb12314009e70481167d5940874f0b7def12314004c936ce187d5940c54474a0ef123140a73e8b031a7d59402096e5ddec12314092c90cc81c7d5940ff62e69deb123140a53f6be61f7d5940055a05a3ee12314019d3d7e9237d59406f547b15f8123140e3b9cb39297d594061616921ff123140de228b8f2a7d5940c503888a0a1331404ecc8c14307d5940304986982213314097db9acd337d5940836cef902f133140821d67e9367d5940a03c631035133140c38ebfe7397d594050f15c38401331401839c75d3d7d5940ac5d4ea2491331401839c75d3d7d5940ac5d4ea249133140, '101.956870503', '17.0753423158', 'ซำพร้าว', 35.94, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(511, '202308062004449', '6034120009', 0, 'POLYGON((101.971146862 17.0829831113, 101.973513417 17.0827830303, 101.974285982 17.082683771, 101.976147172 17.0825453595, 101.976184475 17.0820196245, 101.976333069 17.0812947283, 101.973960395 17.080982313, 101.973816984 17.0818319314, 101.97142118 17.08205928, 101.971337467 17.0823350233, 101.971146862 17.0829831113, 101.971146862 17.0829831113))', 0x000000000103000000010000000c000000cbf92a45277e5940612795613e153140dd0e380b4e7e594062cdc744311531400a6997b35a7e5940de5a7cc32a153140aaf4fc31797e5940337d53b1211531403abf72ce797e594092dbf43cff143140ef56b23d7c7e5940be6237bbcf143140f407fb5d557e5940b2e3c141bb14314070a47804537e5940ab21fdeff214314078afbdc32b7e5940edee43d6011531403f899f642a7e59408f6378e813153140cbf92a45277e5940612795613e153140cbf92a45277e5940612795613e153140, '101.971146862', '17.0829831113', 'ซำพร้าว', 43.35, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(512, '202308062004450', '6034120010', 0, 'POLYGON((101.938759983 17.1175475243, 101.938405713 17.1173309173, 101.93895523 17.1166778905, 101.939011892 17.1156996277, 101.938633365 17.1149885976, 101.937774053 17.1143487003, 101.939123204 17.111817287, 101.940819701 17.1142964702, 101.938759983 17.1175475243, 101.938759983 17.1175475243))', 0x000000000103000000010000000a000000d371c0a4147c594022983498171e3140bbedd5d60e7c5940f99c2466091e31408650add7177c594020dd2b9ade1d31407cac55c5187c59408121a57d9e1d31400167ad91127c5940db1a8ae46f1d3140082b767d047c5940ec20d8f4451d3140100636981a7c5940decac60ea01c31408fced563367c5940a78e9188421d3140d371c0a4147c594022983498171e3140d371c0a4147c594022983498171e3140, '101.938759983', '17.1175475243', 'หน้าวัดผาสวรรค์', 54, 2, 1, 1, 1, 1, '000', 1, 'หน้าวัดผาสวรรค์', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(513, '202308062004451', '6034120013', 0, 'POLYGON((101.905621609 17.0053468968, 101.906921052 17.0055881665, 101.906983546 17.0055458961, 101.907483137 17.0062558289, 101.908143491 17.0060713746, 101.908220707 17.0061589898, 101.901698353 17.0081883539, 101.901262789 17.0073443208, 101.902580024 17.0068457387, 101.90344061 17.0064428444, 101.904251619 17.0059797629, 101.904789914 17.0057016183, 101.905621609 17.0053468968, 101.905621609 17.0053468968))', 0x000000000103000000010000000e0000002d4d56b4f57959401ee40a6a5e013140369998fe0a7a5940b35ce0396e0131402105b7040c7a59406360b2746b01314089c52634147a5940ed8864fb99013140e67ae0051f7a59404959c3e48d0131405c87be49207a594074c4b3a2930131407e3f026db57959406535c8a118023140d5f61e4aae795940b8a54151e1013140964601dfc37959405ed56fa4c0013140037590f8d1795940c0fdfd3ca601314071bd2e42df795940e517c6e3870131405d98f413e8795940fe2148a9750131402d4d56b4f57959401ee40a6a5e0131402d4d56b4f57959401ee40a6a5e013140, '101.905621609', '17.0053468968', 'ตาดข่าไร่บริษัท', 54.53, 2, 1, 1, 1, 1, '000', 1, 'ตาดข่าไร่บริษัท', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(514, '202308062004452', '6034120014', 0, 'POLYGON((101.972147645 17.0885342124, 101.97246675 17.0883657914, 101.973232521 17.0884484738, 101.973977504 17.0883846994, 101.974103568 17.0878456604, 101.973133949 17.0863227547, 101.973090028 17.0862560952, 101.97122824 17.0867166219, 101.972147645 17.0885342124, 101.972147645 17.0885342124))', 0x000000000103000000010000000a000000248ac1aa377e5940cad59a2daa163140a2ec2de53c7e5940ee25f8239f16314050460e71497e5940245a268fa416314010aebda5557e5940c9633161a016314086de7db6577e594076839e0d7d16314045659dd3477e59404e56803f19163140b894651b477e5940f4f623e1141631401bf07d9a287e594081147f0f33163140248ac1aa377e5940cad59a2daa163140248ac1aa377e5940cad59a2daa163140, '101.972147645', '17.0885342124', 'ซ้ำพร้าวแปลงอ้อยบริษัท', 31.1, 2, 1, 1, 1, 1, '000', 1, 'ซ้ำพร้าวแปลงอ้อยบริษัท', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(515, '202308062004453', '6034120015', 0, 'POLYGON((101.926379662 17.1740790482, 101.925545819 17.1727127092, 101.925170243 17.1722272164, 101.925650262 17.1717890364, 101.92614787 17.1724477337, 101.926938961 17.1737020447, 101.926442656 17.1740457393, 101.926379662 17.1740790482, 101.926379662 17.1740790482))', 0x00000000010300000001000000090000000dfeebcd497b594014f0ca71902c31407ee387243c7b5940189e6de6362c3140b63a40fd357b59404beb3515172c3140bab498da3d7b59403c26c55dfa2b31403e3ab701467b5940c582e088252c314087b8caf7527b59401e3cb9bc772c3140ec4823d64a7b5940384df6428e2c31400dfeebcd497b594014f0ca71902c31400dfeebcd497b594014f0ca71902c3140, '101.926379662', '17.1740790482', 'บ้านลาด', 10.96, 2, 1, 1, 1, 1, '000', 1, 'บ้านลาด', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(516, '202308062004454', '6034120016', 0, 'POLYGON((101.944285195 17.1090977226, 101.943481345 17.1078736126, 101.942905495 17.1070036526, 101.942617615 17.1071398026, 101.942023425 17.1073083526, 101.941882095 17.1073897426, 101.943348005 17.1097069826, 101.943554855 17.1100535826, 101.944285195 17.1090977226, 101.944285195 17.1090977226))', 0x000000000103000000010000000a000000cfa72b2b6f7c594095a20ed4ed1b31404f4a94ff617c5940e737e69a9d1b3140990f4a90587c594034786497641b3140bf43d5d8537c594053449c836d1b3140389c9e1c4a7c59403001698f781b3140a1add6cb477c59409264e8e47d1b3140338e4fd05f7c5940eb68bec1151c3140400de733637c59401b13ba782c1c3140cfa72b2b6f7c594095a20ed4ed1b3140cfa72b2b6f7c594095a20ed4ed1b3140, '101.944285195', '17.1090977226', 'ผาสวรรค์', 22.84, 2, 1, 1, 1, 1, '000', 1, 'ผาสวรรค์', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(517, '202308062004455', '6034120017', 0, 'POLYGON((101.915293599 17.047698292, 101.916394497 17.047488372, 101.917851768 17.0469830329, 101.917851631 17.0482975933, 101.917653804 17.0483357979, 101.917498228 17.0484117319, 101.915909594 17.0490840265, 101.915709376 17.049006808, 101.915545248 17.048559259, 101.91529166 17.0480773832, 101.915260012 17.047916188, 101.915293599 17.047698292, 101.915293599 17.047698292))', 0x000000000103000000010000000d0000005c7c9a2b947a59400e378cf4350c31405cb61a35a67a594027aeac32280c3140b1885715be7a5940bbc57d14070c31406b6ec414be7a5940f2b2273b5d0c3140b84e05d7ba7a5940e1341fbc5f0c314078d97c4ab87a5940d34015b6640c3140a61446439e7a5940d19250c5900c3140e0a37ffb9a7a594030a4cdb58b0c3140c48a184b987a5940b0522d616e0c314019807823947a59407185a4cc4e0c31401ab8ba9e937a5940b3683c3c440c31405c7c9a2b947a59400e378cf4350c31405c7c9a2b947a59400e378cf4350c3140, '101.915293599', '17.047698292,', 'ห้วยโจดเนตรชนก', 24.31, 2, 1, 1, 1, 1, '000', 1, 'ห้วยโจดเนตรชนก', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(518, '202308062004456', '6034120018', 0, 'POLYGON((101.907613005 17.0089174817, 101.907574605 17.0085393817, 101.908923105 17.0082134817, 101.909339705 17.0088368817, 101.908583805 17.0091488817, 101.908523605 17.0091940817, 101.908452805 17.0096463817, 101.907332505 17.0103475817, 101.906901005 17.0095998817, 101.906809905 17.0093652817, 101.907254405 17.0091691817, 101.907417105 17.0093625817, 101.907613005 17.0089174817, 101.907613005 17.0089174817))', 0x000000000103000000010000000e0000008e79db54167a5940a143846a48023140edc9cbb3157a59402b210da32f02314071a3d0cb2b7a5940ad495b471a023140797b299f327a59406ee64522430231409e09b03c267a59404cb2c394570231409ec73040257a5940df37188b5a023140cedb3b17247a59401eed6d2f78023140a8e45abc117a594083fe9c23a6023140cf4b83aa0a7a59406df24923750231407d6a692c097a59408c9e5ac36502314020a8c774107a5940578857e9580231409573311f137a594027350e96650231408e79db54167a5940a143846a480231408e79db54167a5940a143846a48023140, '101.907613005', '17.0089174817', 'ห้วยไผ่ใต้', 18.11, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(519, '202308062004457', '6034120021', 0, 'POLYGON((101.937972871 17.1207841027, 101.937312713 17.1186020379, 101.938383585 17.1180903224, 101.938604196 17.1185908231, 101.93912421 17.1180743012, 101.939281454 17.1210574198, 101.937972871 17.1207841027, 101.937972871 17.1207841027))', 0x0000000001030000000100000008000000bc5e5dbf077c594024f9fab4eb1e3140711d76eefc7b5940fb0402b45c1e3140682b067a0e7c59409eaed82a3b1e3140566d5517127c5940fad1daf75b1e31403d356e9c1a7c5940ed260e1e3a1e3140d6aaf52f1d7c5940a9fa7a9efd1e3140bc5e5dbf077c594024f9fab4eb1e3140bc5e5dbf077c594024f9fab4eb1e3140, '101.937972871', '17.1207841027', 'หน้าวัดผาสวรรค์', 30.05, 2, 1, 1, 1, 1, '000', 1, 'หน้าวัดผาสวรรค์', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(520, '202308062004458', '6034120023', 0, 'POLYGON((101.955617675 17.0781688301, 101.955732468 17.0776956427, 101.955151969 17.0775324325, 101.955284703 17.0770537932, 101.955047021 17.0770330568, 101.954550276 17.0768424944, 101.953896348 17.0764378612, 101.953354989 17.0760635276, 101.953040716 17.0756296668, 101.952425281 17.0746877578, 101.951707589 17.075643952, 101.951750531 17.0759306885, 101.952146415 17.0761025748, 101.952355183 17.0768037756, 101.952421273 17.0767647167, 101.95259965 17.0767731208, 101.952777749 17.0767986859, 101.953014222 17.0768937904, 101.955125017 17.0780927666, 101.955617675 17.0781688301, 101.955617675 17.0781688301))', 0x0000000001030000000100000015000000b16609d7287d594099d858df02143140437283b82a7d59402e7094dce31331402964b935217d594082f75d2ad913314043707362237d5940a6d321ccb913314095558a7d1f7d5940bbaa3b70b8133140b3730a5a177d59401d6420f3ab133140c49b44a30c7d5940ba07826e91133140f1cea4c4037d5940dc753be6781331407ebe7c9efe7c59406d8341775c133140d5712a89f47c59409e29a5bc1e1331400a87f2c6e87c5940eefaeb665d1331401f260f7be97c5940cade8f31701331406f5b84f7ef7c59404be855757b1331404f4a2763f37c59404c698869a91331402ee35a78f47c594095b63bdaa613314096bb8564f77c5940400c3b67a7133140f013864ffa7c5940f7502414a913314039075d2ffe7c59409208bb4faf133140d0e6adc4207d5940e69936e3fd133140b16609d7287d594099d858df02143140b16609d7287d594099d858df02143140, '101.955617675', '17.0781688301', 'ซำพร้าวหลังบ้าน', 30.8, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าวหลังบ้าน', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(521, '202308062004459', '6034120024', 0, 'POLYGON((101.975335698 17.079166239, 101.973954362 17.080970506, 101.977016554 17.0813431737, 101.97712442 17.0805387883, 101.976850413 17.0803674186, 101.976764425 17.0812861859, 101.976156655 17.0812162871, 101.976429017 17.0800189639, 101.975335698 17.079166239, 101.975335698 17.079166239))', 0x000000000103000000010000000a00000001626be66b7e5940cb73173d441431408a25ad44557e5940e835ab7bba14314029c57070877e59405acbfee7d21431407801dd34897e5940d7cea5309e143140d23a98b7847e59400b8d8af5921431405c51ef4e837e59409d0ee62bcf143140db3fc359797e59403eff3097ca14314059b821d07d7e5940a302711f7c14314001626be66b7e5940cb73173d4414314001626be66b7e5940cb73173d44143140, '101.975335698', '17.079166239,', 'ซำพร้าว', 23.66, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(522, '202308062004460', '6034120027', 0, 'POLYGON((101.971011603 17.0844548876, 101.968134474 17.0847333056, 101.9686255 17.0859193223, 101.970377365 17.0854963163, 101.970666025 17.0854099661, 101.970851676 17.0853303177, 101.970992259 17.0845905989, 101.971011603 17.0844548876, 101.971011603 17.0844548876))', 0x0000000001030000000100000009000000fabad90d257e5940b73ae4d59e15314073fd4beaf57d5940196ff814b11531409624cff5fd7d59407c5f07cffe15314009dda9a91a7e5940dd6f2a16e3153140a72d64641f7e5940e726736ddd153140f46b116f227e5940f8e02b35d8153140bf44b7bc247e594016d3bfbaa7153140fabad90d257e5940b73ae4d59e153140fabad90d257e5940b73ae4d59e153140, '101.971011603', '17.0844548876', 'ซำพร้าว', 20.3, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(523, '202308062004461', '6034120031', 0, 'POLYGON((101.906735505 17.0112573817, 101.906613905 17.0116794817, 101.906595505 17.0118237817, 101.906558305 17.0119189817, 101.906509505 17.0119785817, 101.906366705 17.0119432817, 101.906297805 17.0119978817, 101.906187505 17.0119772817, 101.906208705 17.0120384817, 101.905990005 17.0121277817, 101.905912505 17.0121147817, 101.905896805 17.0120886817, 101.905705505 17.0117306817, 101.905562405 17.0114559817, 101.905430505 17.0112125817, 101.905247805 17.0108837817, 101.905007805 17.0104209817, 101.905004505 17.0103830817, 101.905014705 17.0103549817, 101.905055905 17.0103276817, 101.905108305 17.0103007817, 101.905198005 17.0102810817, 101.905589405 17.0101875817, 101.905980005 17.0102585817, 101.906252605 17.0103100817, 101.906735505 17.0112573817, 101.906735505 17.0112573817))', 0x000000000103000000010000001b00000036065bf4077a5940763d86c3e1023140ba0454f6057a59408cef2f6dfd0231403d2b27a9057a59406fb723e2060331401af91f0d057a5940669a541f0d0331403e5f7140047a59406aa7400711033140210a7fe9017a5940f44e04b70e033140573a82c8007a5940d5850d4b120331403581e0f9fe7959404c3271f110033140d5d4cb52ff795940eb3135f414033140967e80bdfb79594047c669ce1a033140cc807178fa7959401e334ff419033140a8c19736fa795940a28d6c3e180331400ff23814f7795940e4422ec800033140937d04bcf4795940bdbe7ac7ee023140a6f1c992f27959408ab4e7d3de0231400d507d94ef79594053758e47c90231406246dba5eb795940fe970ff3aa0231404aed0398eb7959404c553477a8023140f117ccc2eb7959408fc0c39fa6023140b5419a6fec7959401f25bfd5a40231400854624bed79594055867012a302314049f89cc3ee79594044abedc7a10231401085432df5795940113a42a79b02314084138f93fb795940a4e7704ea0023140f318ed0a007a594078b877aea302314036065bf4077a5940763d86c3e102314036065bf4077a5940763d86c3e1023140, '101.906735505', '17.0112573817', 'ตาดข่า', 15.09, 2, 1, 1, 1, 1, '000', 1, 'ตาดข่า', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(524, '202308062004462', '6034120037', 0, 'POLYGON((101.956131181 17.0751582736, 101.95630432 17.0752257069, 101.956442342 17.0753790571, 101.95670337 17.0755720736, 101.957039113 17.0756635589, 101.957276255 17.075596883, 101.95745255 17.075469863, 101.957627268 17.075440069, 101.957823323 17.0754808312, 101.958318854 17.0754234349, 101.958763148 17.0764458245, 101.957379626 17.0768464755, 101.957246511 17.0763906442, 101.957005678 17.0763384034, 101.956925791 17.0767586202, 101.956333409 17.0765498222, 101.956215407 17.0765480501, 101.95569739 17.0762593258, 101.956131181 17.0751582736, 101.956131181 17.0751582736))', 0x00000000010300000001000000140000002d45d640317d5940c52297923d1331401bdb0817347d594038f4eefd4113314094d9f059367d59403e0cb90a4c133140df87c5a03a7d5940589a00b158133140fbd4fa20407d594077f9deaf5e133140971da003447d59401f2a3c515a133140326e0fe7467d5940296b31fe511331405774e1c3497d5940b929550a5013314063e831fa4c7d5940997a35b6521331407e449a18557d59405b3f42f34e13314048511b605c7d5940ac241cf491133140b6e131b5457d5940da15eb35ac13314020bdde86437d5940338f56568e1331402a46be943f7d59402808e2e98a133140d042ac453e7d5940f171f373a61331408aee0a91347d594016dde6c498133140c43f1ba2327d594088c02ba7981331400bbb62252a7d594075532ebb851331402d45d640317d5940c52297923d1331402d45d640317d5940c52297923d133140, '101.956131181', '17.0751582736', 'ซำพร้าว', 22.63, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(525, '202308062004463', '6034120047', 0, 'POLYGON((101.887090945 17.1188816227, 101.887708945 17.1188298582, 101.887548012 17.1170752182, 101.887324383 17.1168736706, 101.88711383 17.1170159395, 101.88644663 17.1169611468, 101.886463059 17.1171832014, 101.88586895 17.1172347899, 101.885797536 17.1168653396, 101.885520933 17.1168022157, 101.886129794 17.1188426751, 101.887090945 17.1188816227, 101.887090945 17.1188816227))', 0x000000000103000000010000000d00000093561919c67859408797a9066f1e314011c92d39d0785940e0c132a26b1e3140de4a2d96cd785940505739a4f81d31406b7b35ecc978594090fdd06eeb1d31407aeb1579c67859406243b1c1f41d3140f65fa58abb7859409e686c2af11d314018e18dcfbb78594051a7e1b7ff1d3140ae32ae13b2785940ed926419031e3140d5ff25e8b0785940319e0be3ea1d314023cafd5fac785940278800c0e61d3140704fbd59b678594075ec3a796c1e314093561919c67859408797a9066f1e314093561919c67859408797a9066f1e3140, '101.887090945', '17.1188816227', 'หลังบ้านนายก 1 บ้านไร่', 23.81, 2, 1, 1, 1, 1, '000', 1, 'หลังบ้านนายก 1 บ้านไร่', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(526, '202308062004464', '6034120050', 0, 'POLYGON((101.939623635 17.1212781827, 101.940488275 17.1212246527, 101.940823985 17.1214900127, 101.941766575 17.1235027127, 101.940724915 17.1235892227, 101.939623635 17.1212781827, 101.939623635 17.1212781827))', 0x0000000001030000000100000007000000eab72bcb227c5940316a44160c1f314060d9bbf5307c5940c2d02e94081f314083b7cd75367c59404e562ff8191f3140d20550e7457c59408703b0df9d1f3140461d46d6347c594073a2158ba31f3140eab72bcb227c5940316a44160c1f3140eab72bcb227c5940316a44160c1f3140, '101.939623635', '17.1212781827', 'ผาสวรรค์', 18.31, 2, 1, 1, 1, 1, '000', 1, 'ผาสวรรค์', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(527, '202308062004465', '6034120052', 0, 'POLYGON((101.971006905 17.0844557823, 101.971019805 17.0843567823, 101.971088805 17.0830155823, 101.969511505 17.0831253823, 101.968591705 17.0832121823, 101.968488805 17.0832008823, 101.968439505 17.0831875823, 101.968386905 17.0831468823, 101.968292805 17.0830001823, 101.967562805 17.0831510823, 101.967493305 17.0831786823, 101.967499105 17.0832474823, 101.967747905 17.0836949823, 101.967949905 17.0842404823, 101.968120205 17.0847283824, 101.971006905 17.0844557823, 101.971006905 17.0844557823))', 0x0000000001030000000100000011000000924a25fa247e5940c5efe6e49e153140928f4030257e59409e2cf5679815314026bfa851267e594072095b824015314087c4fb790c7e59402d727eb447153140b8091068fd7d5940779bc1644d153140190178b8fb7d5940137a2ca74c1531404988b0e9fa7d59406c6909c84b15314061b6110dfa7d59402c3e341d49153140569b6282f87d5940618afc7f3f15314044138b8cec7d5940021bab6349153140bc040a69eb7d5940f033b8324b15314098b85d81eb7d5940edf3fdb44f153140d7afe894ef7d59405bd1cb086d1531400b8928e4f27d59404f7ac4c89015314099c472aef57d594074735fc2b0153140924a25fa247e5940c5efe6e49e153140924a25fa247e5940c5efe6e49e153140, '101.971006905', '17.0844557823', 'ซำพร้าวป่ายาง', 35.76, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าวป่ายาง', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(528, '202308062004466', '6034120053', 0, 'POLYGON((101.899303105 17.1819373833, 101.898796805 17.1821452833, 101.898659805 17.1819628833, 101.898871205 17.1817502833, 101.899371305 17.1813563833, 101.899359105 17.1812854833, 101.898974805 17.1812155833, 101.898970605 17.1810767833, 101.898424105 17.1810527833, 101.898040405 17.1815143833, 101.897824305 17.1818672833, 101.897824605 17.1819477833, 101.898394505 17.1819925833, 101.898437005 17.1823920833, 101.898141405 17.1824018833, 101.898274105 17.1830365833, 101.898359505 17.1835454833, 101.898817505 17.1833838833, 101.899215905 17.1832706833, 101.898847705 17.1825247833, 101.899391605 17.1821540833, 101.899303105 17.1819373833, 101.899303105 17.1819373833))', 0x0000000001030000000100000017000000a44a9c2e8e7959407d31c772932e31405bce08e385795940e7e4c212a12e31401a2d6aa483795940ffdb981e952e3140a232171b87795940efcfc22f872e3140e57ba94c8f795940c031375f6d2e31406ed57d198f7959405803b6b9682e3140cad99ecd887959408fccfb24642e3140952201bc88795940a0564e0c5b2e3140703ad1c77f7959408f1fa779592e31408b7d767e79795940f10604ba772e3140dae112f47579594062fcb1da8e2e3140390155f5757959406bda4221942e31406478aa4b7f7959405863e110972e3140707fecfd7f795940a4d2603fb12e3140256a16267b7959409780cbe3b12e314065f4ab527d795940be3e4b7cdb2e3140a681ddb87e7959401e1a38d6fc2e31400743db39867959401163053ff22e31402801dec08c795940ce16d7d3ea2e3140d14386b886795940a5fbb6f1b92e31406871cea18f7959403a9b66a6a12e3140a44a9c2e8e7959407d31c772932e3140a44a9c2e8e7959407d31c772932e3140, '101.899303105', '17.1819373833', 'บ้านโคกสว่างแปลงเช่า อุมาลี', 14.74, 2, 1, 1, 1, 1, '000', 1, 'บ้านโคกสว่างแปลงเช่า อุมาลี', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(529, '202308062004467', '6034120054', 0, 'POLYGON((101.957371613 17.077577984, 101.958603417 17.0776103538, 101.95880693 17.0786317624, 101.957379324 17.0790262868, 101.957446379 17.0778305324, 101.957371613 17.077577984, 101.957371613 17.077577984))', 0x00000000010300000001000000070000000bfd9593457d59406c2b9826dc133140547625c2597d5940e966ab45de133140cde1bd175d7d594052ef0f3621143140959cedb3457d5940905415113b143140a25e2dcd467d5940cc49a7b3ec1331400bfd9593457d59406c2b9826dc1331400bfd9593457d59406c2b9826dc133140, '101.957371613', '17.077577984,', 'ซำพร้าว ท้ายบ้าน', 11.86, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว ท้ายบ้าน', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(530, '202308062004468', '6034120056', 0, 'POLYGON((101.820243282 17.1813460717, 101.820269468 17.179482743, 101.820670621 17.1793702228, 101.820828389 17.1800101649, 101.821020257 17.1799699736, 101.820931052 17.1795958182, 101.82183777 17.1795128764, 101.821889931 17.1797513937, 101.822335688 17.1796611819, 101.822260396 17.1794601151, 101.822826414 17.1792421459, 101.822911202 17.1798755351, 101.822793523 17.1805111354, 101.822598799 17.1810482822, 101.822909097 17.1823064746, 101.82191417 17.182614919, 101.820983013 17.1828109186, 101.82064065 17.1827731055, 101.820646735 17.1824166595, 101.821103189 17.1823590332, 101.820706182 17.1815694595, 101.820694111 17.1812883572, 101.820243282 17.1813460717, 101.820243282 17.1813460717))', 0x00000000010300000001000000180000000abdaddd7e745940a63537b26c2e3140e9bd824b7f745940a261bf94f22d3140ea7e11de857459405fcdf834eb2d31408998cb73887459406d316b25152e3140c94a8c988b745940bddf1e83122e3140192765228a745940d8aad5fdf92d3140203172fd9874594051594d8ef42d3140a1a339d899745940175af52f042e3140cb92dd25a1745940079f7446fe2d31406d6711ea9f745940784a1d19f12d31408f9a1e30a974594093b432d0e22d31408806bf93aa745940e19ab4520c2e314052292aa6a8745940591b4ffa352e3140c5db6e75a5745940c50b232e592e314089ccea8aaa7459408d411aa3ab2e31403711e43d9a745940dfddf0d9bf2e314005da55fc8a7459401dbd44b2cc2e31402a615c6085745940fbb5de37ca2e31403a19e279857459404eccb2dbb22e31405dd963f48c74594064b9e314af2e314029d438738674594041810a567b2e3140f2b0974086745940cf51ede9682e31400abdaddd7e745940a63537b26c2e31400abdaddd7e745940a63537b26c2e3140, '101.820243282', '17.1813460717', 'หลังร้านกาแฟ', 51.95, 2, 1, 1, 1, 1, '000', 1, 'หลังร้านกาแฟ', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(531, '202308062004469', '6034120058', 0, 'POLYGON((101.900924505 17.0064543817, 101.901243605 17.0073423817, 101.902647905 17.0067997817, 101.903549005 17.0063686817, 101.903994905 17.0060940817, 101.904748605 17.0057002816, 101.905637205 17.0053601816, 101.905121805 17.0051774816, 101.904284705 17.0051750816, 101.903956305 17.0048901816, 101.900924505 17.0064543817, 101.900924505 17.0064543817))', 0x000000000103000000010000000c000000f64841bfa879594041518efea6013140114da8f9ad795940b846b930e1013140c9f1b7fbc47959407d0568a1bd013140bcb334bfd3795940c19ebf60a1013140712e720ddb795940c499b9618f013140e764b166e7795940cc0cdb92750131400461c0f5f579594031acec485f013140c6d70184ed795940cc25ba4f53013140df8ff4ccdf795940e4397627530131403bbf8b6bda795940230ba27b40013140f64841bfa879594041518efea6013140f64841bfa879594041518efea6013140, '101.900924505', '17.0064543817', 'ที่บริษัท ตาดข่า', 31.75, 2, 1, 1, 1, 1, '000', 1, 'ที่บริษัท ตาดข่า', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(533, '202308062004471', '6034120080', 0, 'POLYGON((101.871173126 17.1493680682, 101.87064909 17.1493837664, 101.870738608 17.1471446905, 101.871384686 17.146464857, 101.871173126 17.1493680682, 101.871173126 17.1493680682))', 0x0000000001030000000100000006000000be54ed4cc177594057fc57fc3c263140e6f5f5b6b8775940c63db7033e2631405f2e6d2eba775940407a4146ab253140bc2646c4c47759400dd48ab87e253140be54ed4cc177594057fc57fc3c263140be54ed4cc177594057fc57fc3c263140, '101.871173126', '17.1493680682', 'ทางไปบ้านกุดลัน', 10.71, 2, 1, 1, 1, 1, '000', 1, 'ทางไปบ้านกุดลัน', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(534, '202308062004472', '6034120081', 0, 'POLYGON((101.915236465 17.047111912, 101.915056413 17.0460060985, 101.914466997 17.0450809966, 101.91553217 17.0449252098, 101.916099122 17.0467135452, 101.915311558 17.0472402017, 101.915236465 17.047111912, 101.915236465 17.047111912))', 0x00000000010300000001000000080000000752f73b937a5940c24ab9860f0c314020f5c548907a59405c79400ec70b3140ba5895a0867a59406e119e6d8a0b314080253e14987a594060dbf237800b31409938365ea17a59400aea3c6bf50b3140b1d0ed76947a5940a25b11ef170c31400752f73b937a5940c24ab9860f0c31400752f73b937a5940c24ab9860f0c3140, '101.915236465', '17.047111912,', 'ห้วยโจดแปลงเนตรชนก', 13.67, 2, 1, 1, 1, 1, '000', 1, 'ห้วยโจดแปลงเนตรชนก', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(535, '202308062004473', '6034120089', 0, 'POLYGON((101.971306405 17.0820648823, 101.971537905 17.0815813823, 101.972001805 17.0800289823, 101.973641605 17.0807622823, 101.973963205 17.0809495823, 101.973839105 17.0818148823, 101.971306405 17.0820648823, 101.971306405 17.0820648823))', 0x0000000001030000000100000008000000b4f756e2297e5940eba0413402153140293352ad2d7e5940e4f07884e214314031080f47357e5940eeb585c77c143140ffdfe024507e5940943a41d6ac143140df3ec469557e5940769aa01cb91431409ee24061537e5940facdf3d1f1143140b4f756e2297e5940eba0413402153140b4f756e2297e5940eba0413402153140, '101.971306405', '17.0820648823', 'ซำพร้าว', 24.82, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(536, '202308062004474', '6034120098', 0, 'POLYGON((101.874229839 17.1551032348, 101.874034708 17.1565198596, 101.871615691 17.1562216069, 101.871427266 17.1560495747, 101.871755836 17.1557936085, 101.871850384 17.1553012169, 101.87211827 17.1552605313, 101.872208459 17.1550484533, 101.872304683 17.1549536268, 101.872607438 17.1550939444, 101.87342987 17.1548543152, 101.874024985 17.1546992609, 101.874153731 17.1548225996, 101.874229839 17.1551032348, 101.874229839 17.1551032348))', 0x000000000103000000010000000f0000004fecb561f377594045f878d8b4273140739b452ff077594011287eaf11283140a1e12d8dc87759406790a423fe2731400314de76c577594026e46bddf2273140e66dfdd8ca775940ef6e0517e22731403e928d65cc775940509d0fd2c127314039f925c9d0775940084b7827bf273140c6ac6d43d277594009386441b12731407d6805d7d3775940aa80770aab273140351ddeccd877594072019b3cb4273140f8bf6546e6775940b16d4b88a4273140909d7d06f0775940e747ea5e9a27314092947d22f2775940b5f63174a22731404fecb561f377594045f878d8b42731404fecb561f377594045f878d8b4273140, '101.874229839', '17.1551032348', 'ทางลัดไปบ้านห้วยม้วง', 25.25, 2, 1, 1, 1, 1, '000', 1, 'ทางลัดไปบ้านห้วยม้วง', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(537, '202308062004475', '6034120100', 0, 'POLYGON((101.971921905 17.0800163823, 101.973966105 17.0809229823, 101.975363205 17.0791411823, 101.974405605 17.0781740823, 101.974212205 17.0785578823, 101.973981205 17.0790225823, 101.973783105 17.0789955823, 101.972908605 17.0783756823, 101.972370205 17.0784999823, 101.971921905 17.0800163823, 101.971921905 17.0800163823))', 0x000000000103000000010000000b0000006d0feff7337e59406b1f21f47b143140cd18ee75557e594029795a5eb714314097ccca596c7e5940cabeb59842143140e7a053a95c7e594091df763703143140b3f5257e597e59404f528f5e1c143140329943b5557e5940bc9feed23a143140d4575f76527e5940c981f20d39143140351e7422447e5940ba47c06d101431401c853d503b7e59400fb72893181431406d0feff7337e59406b1f21f47b1431406d0feff7337e59406b1f21f47b143140, '101.971921905', '17.0800163823', 'ซำพร้าว F', 39.87, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าว F', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(538, '202308062004476', '6034120107', 0, 'POLYGON((101.939196294 17.0749447938, 101.938259197 17.0747810194, 101.938285013 17.0756627072, 101.937398879 17.0755540588, 101.937305337 17.0757463567, 101.937386809 17.0759078868, 101.937113223 17.0761953715, 101.938660858 17.0764450373, 101.938492549 17.0769193694, 101.938736295 17.0771873024, 101.93860889 17.0775677282, 101.938914327 17.0777584215, 101.939784368 17.0766187456, 101.939175842 17.0765197126, 101.939196294 17.0749447938, 101.939196294 17.0749447938))', 0x000000000103000000010000001000000048d0c5ca1b7c59406060fe942f13314051924d700c7c59403eaf50d9241331405d4a95dc0c7c594069f394a15e1331402c27de57fe7b594046a0c38257133140003286cffc7b594052d1fc1c64133140d6163e25fe7b5940815003b36e133140c95bbda9f97b5940f6b2348a811331404dc9fd04137c59401f25e7e691133140a95f0d43107c59407f00e0fcb0133140f7a56541147c594076790b8cc21331403b92052b127c594011d8877adb1331407f0d1e2c177c5940c254d5f9e71331408876556d257c5940d09c3e499d13314054a5fd741b7c5940c71dbfcb9613314048d0c5ca1b7c59406060fe942f13314048d0c5ca1b7c59406060fe942f133140, '101.939196294', '17.0749447938', 'หนองไฮ', 22.49, 2, 1, 1, 1, 1, '000', 1, 'หนองไฮ', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(539, '202308062004477', '6034120121', 0, 'POLYGON((101.922479015 17.1566115831, 101.922021439 17.1566608167, 101.92165867 17.1551413576, 101.922358056 17.1550167377, 101.922482779 17.1553117888, 101.922573304 17.1550106508, 101.923053754 17.1554316031, 101.922479015 17.1566115831, 101.922479015 17.1566115831))', 0x0000000001030000000100000009000000f62a6ce5097b5940db965bb217283140d1ad3566027b5940894a5cec1a283140646ea574fc7a594028261158b7273140376e15ea077b59400dc14a2daf27314068bb35f5097b59404a946d83c2273140ee35e6700b7b5940bab72bc7ae27314052780d50137b59405014945dca273140f62a6ce5097b5940db965bb217283140f62a6ce5097b5940db965bb217283140, '101.922479015', '17.1566115831', 'ทางเข้าภูโจด', 10.81, 2, 1, 1, 1, 1, '000', 1, 'ทางเข้าภูโจด', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(540, '202308062004478', '6034120124', 0, 'POLYGON((101.912712625 17.1666807232, 101.912568705 17.1663302132, 101.912592335 17.1661019432, 101.912736085 17.1661581132, 101.913314025 17.1655402532, 101.913098215 17.1650671031, 101.915292325 17.1645543831, 101.915687835 17.1651085831, 101.916082625 17.1658135332, 101.912712625 17.1666807232, 101.912712625 17.1666807232))', 0x000000000103000000010000000b0000005dc136e2697a594083047f96ab2a3140ffd49186677a5940dc07ea9d942a3140f059aee9677a594097d82da8852a314010bd9c446a7a5940b9288e56892a31409a16abbc737a594062aa95d8602a314081dd7e33707a5940c07571d6412a3140e8894226947a5940f5d36d3c202a3140e22a26a19a7a594012b45c8e442a3140c4b30419a17a5940065476c1722a31405dc136e2697a594083047f96ab2a31405dc136e2697a594083047f96ab2a3140, '101.912712625', '17.1666807232', 'บ้านลาดติดห้วย', 30.25, 2, 1, 1, 1, 1, '000', 1, 'บ้านลาดติดห้วย', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(541, '202308062004479', '603412030', 0, 'POLYGON((101.971212144 17.0867214318, 101.970939312 17.0862993934, 101.970840268 17.0861078316, 101.970723801 17.0858603177, 101.970606147 17.0856321789, 101.970535745 17.0854978606, 101.970666897 17.0854043923, 101.971242729 17.0854090207, 101.971544712 17.0854070292, 101.971782567 17.0853981173, 101.971969324 17.0853964829, 101.972467852 17.0853896791, 101.972542073 17.085390317, 101.972633811 17.0855451384, 101.972717206 17.0857244074, 101.972856975 17.085934274, 101.973005082 17.0861524266, 101.97311098 17.0862624645, 101.971212144 17.0867214318, 101.971212144 17.0867214318))', 0x000000000103000000010000001400000051fdfa56287e59407c7131603316314035dca3de237e5940515190b717163140cb2c383f227e5940c7a6b0290b1631409bafb856207e5940b18b18f1fa15314057aa3e691e7e594058dc8ffdeb153140f017f5411d7e5940ac271330e3153140307b0c681f7e5940fedcef0fdd153140196243d7287e59409cb0965ddd1531401229dfc92d7e594034432d3cdd153140a10582af317e594087f1a8a6dc153140e5d2d2be347e5940b93f3d8bdc1531401630cde93c7e594083261719dc15314038611b213e7e5940fbe8ca23dc153140a54ee2a13f7e594082c24349e6153140b201abff407e59408240e608f2153140dfd3e649437e59407d6fe0c9ff15314009821bb7457e5940d2b7de150e163140a09e4673477e59405de6ff4b1516314051fdfa56287e59407c7131603316314051fdfa56287e59407c71316033163140, '101.971212144', '17.0867214318', 'ซำพร้าวป่ายาง', 16.97, 2, 1, 1, 1, 1, '000', 1, 'ซำพร้าวป่ายาง', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(542, '202308062004480', '603412041', 0, 'POLYGON((101.901515616 17.1223227475, 101.902355818 17.1218325101, 101.901649391 17.1195315814, 101.899865051 17.119759721, 101.900364278 17.1206866954, 101.901515616 17.1223227475, 101.901515616 17.1223227475))', 0x000000000103000000010000000700000069e38d6eb2795940c211288b501f314095ea9d32c07959401678566a301f31406ab3a59fb4795940c1f3289f991e3140f036956397795940b612b592a81e3140c91f7e919f79594029cec152e51e314069e38d6eb2795940c211288b501f314069e38d6eb2795940c211288b501f3140, '101.901515616', '17.1223227475', 'ทางไปบ้านบ้านเพิ่มภูน้อย', 27.58, 2, 1, 1, 1, 1, '000', 1, 'ทางไปบ้านบ้านเพิ่มภูน้อย', 0, 0, 17, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(543, '202308062004481', '6034220009', 0, 'POLYGON((101.85118627 17.1578331448, 101.851209192 17.1578625281, 101.851219796 17.1579289491, 101.851211707 17.1581018368, 101.851186298 17.1581231861, 101.851100457 17.1581488669, 101.851072438 17.1581360299, 101.850950598 17.1581998925, 101.850844518 17.1582315212, 101.849995498 17.158481923, 101.849982549 17.1584524917, 101.849951742 17.1584297177, 101.849942513 17.1581189086, 101.850633593 17.1577973523, 101.850641035 17.1577514873, 101.850723125 17.1577547056, 101.850777144 17.1577391453, 101.850934082 17.1577341049, 101.85118627 17.1578331448, 101.85118627 17.1578331448))', 0x0000000001030000000100000014000000121dfad5797659400e24c3c067283140746c1e367a7659401174bbad69283140c76198627a765940e57917086e28314064e2aa407a765940587eaa5c79283140a72d18d679765940f009d9c27a2831403e1b0d6e78765940263cb3717c2831402bef87f87776594062bd549a7b283140fc3a7ff975765940aa84c4c97f2831409eb2903c7476594016c068dc81283140106a845366765940cd4a7445922831400c88341d667659403bd2ad57902831405ec4fd9b657659406b3c98d98e2831402a34487565765940f350157b7a28314018b4e1c7707659401e864368652831407a7d18e7707659404fd9c66662283140dcf4673f727659409457c59c62283140846afa2173765940cc5cb69761283140794f39b4757659406402264361283140121dfad5797659400e24c3c067283140121dfad5797659400e24c3c067283140, '101.85118627 ', '7.1578331448,', 'กุดลัน', 4.07, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(544, '202308062004482', '6034220010', 0, 'POLYGON((101.873186405 17.1594760831, 101.873528805 17.1593966831, 101.873663105 17.1590363831, 101.873542305 17.1589809831, 101.873697805 17.1584861831, 101.872639105 17.1580239831, 101.872436205 17.1583591831, 101.872169605 17.1587748831, 101.872091205 17.1588799831, 101.873186405 17.1594760831, 101.873186405 17.1594760831))', 0x000000000103000000010000000b0000005b323b49e27759409f68b16cd3283140b2655ce5e777594060019538ce28314099eca718ea775940e349c09bb628314070e9fb1de8775940b6194bfab2283140f8c332aaea7759404948ed8c92283140e34bb051d9775940ee657f42742831409114aafed57759408f6f383a8a283140938276a0d17759403a578278a5283140ac26a157d07759404e67cb5bac2831405b323b49e27759409f68b16cd32831405b323b49e27759409f68b16cd3283140, '101.873186405', '17.1594760831', 'กุดลัน', 10.42, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(545, '202308062004483', '6034220014', 0, 'POLYGON((101.873878305 17.145703983, 101.873395105 17.145629483, 101.873373705 17.145891283, 101.873023905 17.145838483, 101.872661505 17.147016383, 101.873009705 17.147154783, 101.873261905 17.146727383, 101.873366905 17.146708583, 101.873268605 17.147367083, 101.874284205 17.147948283, 101.875160105 17.148402783, 101.875382005 17.148388683, 101.875752805 17.148478383, 101.875924605 17.148074583, 101.875846705 17.147636183, 101.875764905 17.147114283, 101.875851005 17.146524783, 101.875384505 17.146614483, 101.875297405 17.146601483, 101.875212805 17.146276083, 101.875335105 17.146291583, 101.875381405 17.146482783, 101.875873805 17.146444383, 101.875776305 17.146158383, 101.875753905 17.146071583, 101.875531705 17.145897783, 101.874840905 17.145892783, 101.874848505 17.146461483, 101.873813905 17.146362483, 101.873878305 17.145703983, 101.873878305 17.145703983))', 0x000000000103000000010000001f0000002c2a459fed775940c7e131db4c253140891d95b4e577594082d14af947253140540ad35ae5775940a9419121592531407a26a89fdf775940b6fbbaab55253140001da4afd977594012f69cdda225314033041964df7759405b6f94efab25314055b4e685e3775940a569ffec8f2531408f984d3ee57759400a0796b18e2531404fc600a2e3775940eefd61d9b925314099f8bc45f4775940fffb4cf0df2531404b6f879f02785940d29e8bb9fd253140d8be3e4206785940de94fcccfc253140bd367e550c785940e125e7ad02263140260f13260f785940955a4337e8253140339256df0d785940f7b0217ccb253140697d3e880c7859406e421a48a925314033a95ff10d785940db09efa5822531409c19bb4c06785940de9ad98688253140ea2f68df04785940b507bfac87253140fda0917c0378594007ac7059722531400241887d0578594042aa7c5d732531401980ba3f067859407d694ae57f2531407af900510e785940fbaa0b617d2531408d250fb80c7859407005c3a26a2531406f541b5a0c78594026dc7ff26425314083e521b6087859403d8b9e8e59253140650bb564fd7759401ab5bb3a592531407d7b9584fd775940d19bef7f7e253140f7302891ec775940abd8fd02782531402c2a459fed775940c7e131db4c2531402c2a459fed775940c7e131db4c253140, '101.873878305', '17.145703983,', 'กุดลัน', 39.98, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(546, '202308062004484', '6034220015', 0, 'POLYGON((101.880967205 17.144064683, 101.881287205 17.144853083, 101.881709205 17.145423983, 101.882097005 17.145984783, 101.882605105 17.146393883, 101.883052005 17.146584283, 101.882772805 17.145720983, 101.882169905 17.144674083, 101.881552405 17.143592583, 101.881205705 17.143898183, 101.880967205 17.144064683, 101.880967205 17.144064683))', 0x000000000103000000010000000c000000b59445c4617859405dfe4d6ce1243140eef6720267785940b435761715253140a90372ec6d785940000a93813a253140f917ff4674785940dbb23c425f2531407d501f9a7c785940c7d1cb117a2531401a898eec83785940b5972d8c862531407cd181597f785940735368f84d25314063dfc278757859405510575c09253140d94bc75a6b785940e4eec77bc224314083019dac6578594057f0e582d6243140b59445c4617859405dfe4d6ce1243140b59445c4617859405dfe4d6ce1243140, '101.880967205', '17.144064683,', 'กุดลัน', 16.23, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(547, '202308062004485', '6034220020', 0, 'POLYGON((101.884576905 17.1655189832, 101.884019405 17.1646927832, 101.884097905 17.1646023832, 101.884175005 17.1646120832, 101.884227305 17.1646522832, 101.884728405 17.1653795832, 101.884672005 17.1654094832, 101.884686205 17.1654489832, 101.884763205 17.1653836832, 101.885957205 17.1650938832, 101.886042805 17.1650904832, 101.886255305 17.1663072832, 101.885522005 17.1665452832, 101.885605805 17.1666628832, 101.885642305 17.1667299832, 101.885689005 17.1667899832, 101.885783605 17.1669727832, 101.885921205 17.1672556832, 101.886040005 17.1675162832, 101.886062605 17.1675948832, 101.885876905 17.1676230832, 101.885567205 17.1669378832, 101.885370205 17.1666314832, 101.885071005 17.1662064832, 101.884927805 17.1660062832, 101.884799105 17.1658276832, 101.884622105 17.1655935832, 101.884576905 17.1655189832, 101.884576905 17.1655189832))', 0x000000000103000000010000001d000000677173e89c7859400fb6bb735f2a3140486020c69378594031bb654e292a3140fa1b610f957859400ab0bc61232a31409a9ac25296785940d5de7904242a3140224d1f2e97785940448eeba6262a31404e54e3639f7859402645fd50562a31405a4a54779e785940d2caa046582a3140a16ce3b29e7859401e0054dd5a2a3140778bd9f59f785940d3a2c695562a31405b48d985b3785940181dbd97432a31403195e1ecb47859408f39b25e432a31406bb82b68b87859403c6e361d932a314041d77c64ac785940a6a530b6a22a3140db67f8c3ad78594013cd306baa2a314076fb0f5dae7859404c1bf1d0ae2a3140b7b9ef20af785940f72493bfb22a3140b6b3b7adb0785940852a73babe2a3140b593daeeb2785940056ab944d12a31400d1b23e1b478594038e4dd58e22a3140c0abed3fb578594029528e7fe72a31406ed00b35b27859401066ac58e92a3140a6f81122ad785940b6ceec70bc2a3140fbd4cae7a9785940f6d3625ca82a31403947db00a578594028ba11828c2a3140f3723ba8a2785940474645637f2a314053e06c8ca07859408e1ddcae732a3140cc9208a69d7859407e455057642a3140677173e89c7859400fb6bb735f2a3140677173e89c7859400fb6bb735f2a3140, '101.884576905', '17.1655189832', 'โคกน้อย', 14.91, 2, 1, 1, 1, 1, '000', 1, 'โคกน้อย', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(548, '202308062004486', '6034220023', 0, 'POLYGON((101.868973805 17.152483883, 101.869167805 17.152555583, 101.869816205 17.152753983, 101.869954505 17.152742683, 101.870013705 17.152622183, 101.870252805 17.152688483, 101.870232405 17.152881183, 101.870942705 17.1531696831, 101.871466005 17.1533196831, 101.871745905 17.1533995831, 101.871859705 17.1531737831, 101.871045405 17.152754083, 101.870570905 17.152500883, 101.870228705 17.152352383, 101.870030805 17.152236783, 101.869661305 17.152037683, 101.869578605 17.151982483, 101.869525405 17.152287383, 101.869312105 17.152263483, 101.869386005 17.151894783, 101.869229705 17.151877783, 101.868973805 17.152483883, 101.868973805 17.152483883))', 0x000000000103000000010000001700000090634e449d775940efa60a2f09273140834d0072a0775940a6cef7e10d27314060809611ab775940995191e21a273140e7fea855ad7759403430fc241a273140ff82f64dae7759400ea1543f122731408c2ed238b2775940faf5a897162731403ed941e3b1775940a728a138232731408caa7886bd77594037a7db203627314040c35919c677594062bf70f53f273140671956afca77594071a2f0314527314037eba58ccc775940e404a5653627314097f33935bf775940c3d03ee41a273140be74076fb77759409b18414c0a273140fd00bdd3b1775940e273d69000273140347faf95ae775940b63b64fdf826314096e4e387a87759409f3e0cf1eb263140af71052da7775940c50cf252e82631400961e24da67759401494514efc2631407c3f3dcfa27759402cdc57bdfa263140cec43205a4775940036b9593e2263140f3eba075a177594057f95e76e126314090634e449d775940efa60a2f0927314090634e449d775940efa60a2f09273140, '101.868973805', '17.152483883,', 'กุดลัน', 9.51, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(549, '202308062004487', '6034220026', 0, 'POLYGON((101.878655405 17.1687723832, 101.877367705 17.1700918832, 101.877202005 17.1702810832, 101.876590905 17.1709404832, 101.876468705 17.1710498832, 101.875817005 17.1717510832, 101.875547205 17.1720129832, 101.875195905 17.1723670832, 101.875378605 17.1723948832, 101.875357805 17.1727009832, 101.875139505 17.1733984832, 101.875492605 17.1734077832, 101.875853605 17.1730941832, 101.876504505 17.1724254832, 101.876873605 17.1721094832, 101.877004805 17.1718579832, 101.876681605 17.1714812832, 101.876610205 17.1711890832, 101.877071205 17.1710009832, 101.877120805 17.1711105832, 101.877348805 17.1709470832, 101.877565005 17.1712036832, 101.877720105 17.1711765832, 101.878168305 17.1708909832, 101.878404705 17.1706855832, 101.878829805 17.1701782832, 101.879041605 17.1699203832, 101.879041205 17.1697814832, 101.878655405 17.1687723832, 101.878655405 17.1687723832))', 0x000000000103000000010000001e0000006f3be1e33b785940de4fbaaa342b3140a9e2dfca26785940b8a843248b2b31407bdde01324785940b178838a972b31408c3cbd101a7859400ce868c1c22b314051fc3110187859402054d6ecc92b31405d70c4620d785940866505e1f72b314012e524f708785940d654f90a092c31405c64af35037859403c40c93f202c3140f505fc33067859407c573112222c31407e31bedc05785940bfd4b221362c3140695a2049027859401f85ced7632c31405a9722120878594042b7d573642c3140c26347fc0d785940caf87fe64f2c314063f159a6187859404c579313242c3140d70c78b21e785940ebacf95d0f2c31403bfac2d820785940886681e2fe2b3140b59e298d1b78594059388732e62b31402774b0611a785940b7c6390cd32b3140406f43ef21785940876d6eb8c62b314070074dbf22785940efd736e7cd2b3140382a9a7b26785940cbb02330c32b3140b32569062a7859407b4c2c01d42b31401181f2902c7859405eaf823ad22b3140f696d5e8337859407906f082bf2b314029285ec83778594021bee50cb22b314067ce5dbf3e7859405bd5d0cd902b31401853b837427859408ec4f8e67f2b3140eed30a364278594075cf9dcc762b31406f3be1e33b785940de4fbaaa342b31406f3be1e33b785940de4fbaaa342b3140, '101.878655405', '17.1687723832', 'กุดลัน', 34.63, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(550, '202308062004488', '6034220027', 0, 'POLYGON((101.835526505 17.1552972831, 101.835741305 17.1550137831, 101.835989705 17.1546147831, 101.836067005 17.1544698831, 101.836142905 17.1542751831, 101.836163605 17.1542433831, 101.836620905 17.1543928831, 101.836409205 17.1551802831, 101.836159705 17.1572628831, 101.834859305 17.1569850831, 101.834731705 17.1565702831, 101.835446505 17.1565612831, 101.835526505 17.1552972831, 101.835526505 17.1552972831))', 0x000000000103000000010000000e000000a37a29447975594079121090c12731400c3919c97c755940ffd7b8fbae27314022b1f6da8075594084e49cd59427314057ef2e1f82755940a62198568b2731407af0875d83755940b9ff11947e27314026655ab483755940f5098e7e7c273140ff8768328b75594050a6bf4a86273140186379ba8775594006e620e5b927314050cdfea38375594007ca5b61422831401fefb8556e755940d5dfa52c30283140327a873e6c755940a17075fd1428314014229ef477755940fbbb766614283140a37a29447975594079121090c1273140a37a29447975594079121090c1273140, '101.835526505', '17.1552972831', 'นิกรสุข', 18.27, 2, 1, 1, 1, 1, '000', 1, 'นิกรสุข', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(551, '202308062004489', '6034220030', 0, 'POLYGON((101.873736405 17.1608698831, 101.873380005 17.1609996831, 101.872883105 17.1611921831, 101.872714605 17.1612657831, 101.872788605 17.1614406831, 101.872898305 17.1620549831, 101.872860605 17.1624431831, 101.872864105 17.1627743831, 101.873395005 17.1626897831, 101.873446405 17.1625756831, 101.874102605 17.1623374831, 101.874185605 17.1622642831, 101.873736405 17.1608698831, 101.873736405 17.1608698831))', 0x000000000103000000010000000e0000002d33194ceb7759406ad3c6c42e293140249d3f75e5775940b3947546372931402e4d1951dd7759400cc912e443293140dccd5b8eda775940da60e0b648293140f9b2bcc4db7759408d28362d542931405e2dda90dd7759407e91746f7c293140461cbaf2dc77594065df5ee095293140f3346801dd775940840afc94ab293140bfbd29b4e5775940cecea109a62931402912c08be6775940130a5a8f9e293140b3740d4cf177594057d404f38e293140f9062ea8f27759403039ed268a2931402d33194ceb7759406ad3c6c42e2931402d33194ceb7759406ad3c6c42e293140, '101.873736405', '17.1608698831', 'ห้วยไผ่ใต้', 13.39, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(552, '202308062004490', '6034220033', 0, 'POLYGON((101.884998505 17.1638363832, 101.885862505 17.1651013832, 101.884740605 17.1653713832, 101.884135505 17.1645795832, 101.884998505 17.1638363832, 101.884998505 17.1638363832))', 0x0000000001030000000100000006000000f8fec4d0a37859402abd632ef129314092eea5f8b17859404d5e9115442a3140c5fa0e979f785940cd896ac7552a314047cd15ad95785940ed6e37e3212a3140f8fec4d0a37859402abd632ef1293140f8fec4d0a37859402abd632ef1293140, '101.884998505', '17.1638363832', 'ทางไปบ้านลาด', 10.27, 2, 1, 1, 1, 1, '000', 1, 'ทางไปบ้านลาด', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(553, '202308062004491', '6034220037', 0, 'POLYGON((101.786726605 17.143801583, 101.786496405 17.144257083, 101.786412105 17.144621683, 101.786398205 17.144921583, 101.786617905 17.145081083, 101.786944205 17.145161583, 101.787132405 17.145274883, 101.787390105 17.145286983, 101.787516205 17.145277183, 101.786726605 17.143801583, 101.786726605 17.143801583))', 0x000000000103000000010000000b0000008fd78bba597259401819382ed0243140617904f5557259408cb33d08ee243140d30970935472594009c736ed05253140eb062359547259403478b39419253140131ba0f257725940d6c0aa08242531401c103a4b5d725940df9e3b4f2925314032469860607259404c6a17bc30253140d18a779964725940fe84188731253140e2625eaa667259400bd7ade2302531408fd78bba597259401819382ed02431408fd78bba597259401819382ed0243140, '101.786726605', '17.143801583,', 'ห้วยเป้า', 6.1, 2, 1, 1, 1, 1, '000', 1, 'ห้วยเป้า', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(554, '202308062004492', '6034220052', 0, 'POLYGON((101.877847505 17.152781283, 101.877531705 17.152517083, 101.876981905 17.152235883, 101.876597105 17.152091783, 101.876201505 17.151936883, 101.875788705 17.151271483, 101.875219105 17.151157183, 101.874824805 17.151222883, 101.874835805 17.151989083, 101.875383305 17.151982783, 101.875387605 17.152184583, 101.875436405 17.152694183, 101.875084305 17.152722783, 101.875079505 17.1532095831, 101.875805205 17.1536573831, 101.877847505 17.152781283, 101.877847505 17.152781283))', 0x00000000010300000001000000110000006a364da72e78594009ed95ac1c273140668bbd7a29785940fa900b5c0b273140294ab678207859403fc34aeef8263140926fbe2a1a785940aff9b17cef263140952b7aaf137859408b8ae755e5263140998b11ec0c7859406b4d58bab9263140cd33fe96037859405d8ab53cb226314018cd2d21fd7759404fe4f88ab626314012f6504ffd77594083d5acc1e82631401f9cb24706785940428afa57e82631401fb3bb5906785940bef09e91f5263140fb4c6a260778594042464af716273140f2cd996101785940d0561ed718273140fed7774d017859402ad944be38273140104946310d78594015341b17562731406a364da72e78594009ed95ac1c2731406a364da72e78594009ed95ac1c273140, '101.877847505', '17.152781283,', 'นั่นละ', 27.55, 2, 1, 1, 1, 1, '000', 1, 'นั่นละ', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(555, '202308062004493', '6034220058', 0, 'POLYGON((101.875616244 17.1734427618, 101.876509932 17.1724710952, 101.876667776 17.1725141795, 101.877092025 17.1717993959, 101.877448436 17.1713477183, 101.87813042 17.1710229987, 101.878560294 17.1706029355, 101.878820055 17.1702411981, 101.879099444 17.170601119, 101.879541634 17.1713394761, 101.879684828 17.1716261697, 101.879000463 17.1720930968, 101.87875467 17.1722518516, 101.878422458 17.1725210276, 101.877973483 17.1728188751, 101.877600171 17.172386379, 101.877061712 17.1729774762, 101.877155806 17.1730398928, 101.877597635 17.1731686532, 101.877322362 17.1738247852, 101.877227417 17.173813155, 101.876920593 17.1738287232, 101.876380073 17.1739117905, 101.876346312 17.1734032723, 101.875616244 17.1734427618, 101.875616244 17.1734427618))', 0x000000000103000000010000001a000000e3f4b6180a785940afa8adbe662c3140ca231dbd18785940a963d110272c314022d828531b7859407c0ca7e3292c314046bd964622785940f1dc920bfb2b3140f7227c1d28785940bd57ae71dd2b314075e1ee4933785940c547ca29c82b3140d392f4543a785940f8924ca2ac2b3140d0d278963e78594078455aed942b31405b7a502a4378594019c4d283ac2b31400760fe684a785940005d66e7dc2b314008c397c14c785940cfff51b1ef2b31403f70288b41785940959f0e4b0e2c3140de363a843d785940254c85b2182c3140a54bd41238785940106a8b562a2c3140600fb1b7307859409eaf98db3d2c31402d5ae8992a785940b3148483212c3140486772c7217859403f397b40482c31400f111b5223785940b67aa8574c2c3140ce57458f2a785940b62fe6c7542c3140ba35b10c2678594011abf7c77f2c3140daca767e24785940ef56d8047f2c3140ee078d771f785940db3f090a802c3140ac19729c167859401896ac7b852c3140a780d70e16785940428c2728642c3140e3f4b6180a785940afa8adbe662c3140e3f4b6180a785940afa8adbe662c3140, '101.875616244', '17.1734427618', 'รายใหญ่', 38.58, 2, 1, 1, 1, 1, '000', 1, 'รายใหญ่', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(556, '202308062004494', '6034220062', 0, 'POLYGON((101.878011105 17.146102083, 101.878161605 17.146998483, 101.878254005 17.147343183, 101.878381305 17.147756183, 101.880120905 17.147293383, 101.880098405 17.147066683, 101.880290805 17.147026483, 101.880138205 17.146208383, 101.878011105 17.146102083, 101.878011105 17.146102083))', 0x000000000103000000010000000a000000fd5f7d5531785940cb5c34f266253140fc84bbcc33785940ef0b4db1a1253140964349503578594007466848b825314024993866377859404cc46559d32531400fe0a1e653785940f7e6e604b525314027af428853785940f2d08129a6253140739c3eaf5678594083211087a3253140d99b312f54785940d4629fe96d253140fd5f7d5531785940cb5c34f266253140fd5f7d5531785940cb5c34f266253140, '101.878011105', '17.146102083,', 'ห้วยไร่ ตาวาลิน', 20.58, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไร่ ตาวาลิน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(557, '202308062004495', '6034220068', 0, 'POLYGON((101.926203149 17.1935353638, 101.926187676 17.1937565297, 101.926080969 17.1962811547, 101.923702022 17.1964719153, 101.923859023 17.195554645, 101.924052409 17.194938809, 101.924045282 17.1946548519, 101.92402043 17.1943706243, 101.924064605 17.1934856922, 101.925044641 17.1935460691, 101.925374384 17.1936192255, 101.925448474 17.1937849884, 101.92576987 17.1936479689, 101.925772401 17.1934947292, 101.926203149 17.1935353638, 101.926203149 17.1935353638))', 0x0000000001030000000100000010000000109a92e9467b5940f5239a888b3131403598aca8467b5940ad7226079a31314064d31ce9447b5940f341547b3f3231404def15ef1d7b5940c5cbc2fb4b32314092799881207b59401cdb84de0f3231407b1cb7ac237b59404e608182e7313140a38dd28e237b594011eb7ee6d4313140e5eb9526237b5940eeabf245c23131406f77dedf237b5940303e404788313140d81b70ee337b5940ca0d353c8c31314083f57a55397b59403c66910791313140a47d3c8c3a7b59403da29be49b3131406bd144d03f7b5940c15ccde9923131406775e2da3f7b5940c5dcddde88313140109a92e9467b5940f5239a888b313140109a92e9467b5940f5239a888b313140, '101.926203149', '17.1935353638', 'แปลงบ้านหินเกิ้ง', 45.38, 2, 1, 1, 1, 1, '000', 1, 'แปลงบ้านหินเกิ้ง', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(558, '202308062004496', '6034220080', 0, 'POLYGON((101.873226205 17.1379884829, 101.872598405 17.1375935829, 101.872578405 17.1369452829, 101.872802505 17.1367947829, 101.872861705 17.1367865829, 101.872814605 17.1364453829, 101.873242105 17.1364066829, 101.873226205 17.1379884829, 101.873226205 17.1379884829))', 0x00000000010300000001000000090000000d1f2af0e2775940b8479536532331401301fba6d8775940e9b1425539233140ef2a1853d8775940a06597d80e233140e1b509ffdb775940a5d19efb04233140f93957f7dc7759404c160c72042331408efcc931dc775940e63ea915ee223140c69dda32e3775940e702628ceb2231400d1f2af0e2775940b8479536532331400d1f2af0e2775940b847953653233140, '101.873226205', '17.1379884829', 'ตรงข้มลานเรานั้นละ', 5.71, 2, 1, 1, 1, 1, '000', 1, 'ตรงข้มลานเรานั้นละ', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(559, '202308062004497', '6034220088', 0, 'POLYGON((101.880956105 17.151689083, 101.881628805 17.153395183, 101.882742005 17.153064483, 101.882943005 17.152809783, 101.882449105 17.151462083, 101.880956105 17.151689083, 101.880956105 17.151689083))', 0x0000000001030000000100000007000000f00bb795617859402ea58218d5263140f12b399b6c78594054591ee844273140f39152d87e78594006aae43b2f2731403fad6023827859406d7ebc8a1e2731400297cf0b7a785940ac111538c6263140f00bb795617859402ea58218d5263140f00bb795617859402ea58218d5263140, '101.880956105', '17.151689083,', 'ห้วยไร่', 18.35, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไร่', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(560, '202308062004498', '6034220096', 0, 'POLYGON((101.894262605 17.1727428832, 101.894342805 17.1729642832, 101.894262205 17.1734013832, 101.895050305 17.1737975832, 101.895223205 17.1741972832, 101.895513205 17.1739917832, 101.895726005 17.1740353832, 101.895809905 17.1740624832, 101.896281905 17.1735343832, 101.896399405 17.1734378832, 101.896400605 17.1731279832, 101.896503005 17.1729336832, 101.896241505 17.1727014832, 101.896074205 17.1722936832, 101.895923305 17.1722767832, 101.894262605 17.1727428832, 101.894262605 17.1727428832))', 0x0000000001030000000100000011000000b0a038993b795940f4f5a9e0382c3140d3b89ae93c79594057b82363472c314087218b973b795940d8ec7508642c3140fd0f138148795940c4f797ff7d2c3140190645564b79594064657231982c31401d279e1650795940e29dbab98a2c3140b6692a9353795940da3037958d2c31401a5a11f354795940f7cde05b8f2c31402e7ec7ae5c7959405693d4bf6c2c31403f289c9b5e795940413bd46c662c3140bca5a4a05e795940cfdd911d522c314068cf234e6079594088b8c161452c3140be5254055c7959409050162a362c3140e9509f4759795940c1a656701b2c3140c0acb3ce567959403fb4cd541a2c3140b0a038993b795940f4f5a9e0382c3140b0a038993b795940f4f5a9e0382c3140, '101.894262605', '17.1727428832', 'สันภูดิน', 20.13, 2, 1, 1, 1, 1, '000', 1, 'สันภูดิน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(561, '202308062004499', '6034220107', 0, 'POLYGON((101.882641405 17.1599496831, 101.882984105 17.1607716831, 101.884935805 17.1597902831, 101.884122105 17.1592905831, 101.882641405 17.1599496831, 101.882641405 17.1599496831))', 0x0000000001030000000100000006000000832460327d78594089eb6176f22831403977c3cf8278594091094155282931403462c9c9a278594012221804e828314053a9e17495785940abf98444c7283140832460327d78594089eb6176f2283140832460327d78594089eb6176f2283140, '101.882641405', '17.1599496831', 'ไร่ครูปี', 11.86, 2, 1, 1, 1, 1, '000', 1, 'ไร่ครูปี', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(562, '2023080620044100', '6034220142', 0, 'POLYGON((101.843790805 17.1614010831, 101.843733405 17.1612840831, 101.843831805 17.1606656831, 101.844245605 17.1599445831, 101.844614205 17.1599409831, 101.844789005 17.1601625831, 101.844848405 17.1603340831, 101.844864605 17.1604119831, 101.843790805 17.1614010831, 101.843790805 17.1614010831))', 0x000000000103000000010000000a000000fe0826ab007659401774d59451293140224165baff755940a447e6e9492931402d731d57017659400681de622129314012d1b71e087659403c96d120f2283140920dbd280e76594060b46be4f1283140b41fe705117659401775406a0029314060630bff1176594041598ba70b2931407801fe42127659400f4d7dc210293140fe0826ab007659401774d59451293140fe0826ab007659401774d59451293140, '101.843790805', '17.1614010831', 'กุดลัน', 6.04, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(563, '2023080620044101', '6034220148', 0, 'POLYGON((101.869913826 17.1503982898, 101.870099625 17.1496621951, 101.870115781 17.14869888, 101.870394497 17.1487176899, 101.8707024 17.1487949107, 101.870532543 17.1499297206, 101.870713491 17.1499325252, 101.870583871 17.1504666356, 101.870614645 17.1508800694, 101.870429801 17.1506598585, 101.870284728 17.1507662824, 101.869913826 17.1503982898, 101.869913826 17.1503982898))', 0x000000000103000000010000000d00000087400aabac775940b910988080263140c26856b6af775940ee66f9425026314039c819faaf775940458d3a2111263140f0ce1e8bb47759400975ce5c122631401e238f96b97759408b445b6c172631407a9220ceb6775940e8ac4ecb61263140fc0114c5b977594038575cfa61263140af9769a5b7775940890a3ffb8426314065ec7c26b8775940f3b08313a02631409030321fb5775940d613fda491263140f83db7beb27759405c3f7c9e9826314087400aabac775940b91098808026314087400aabac775940b910988080263140, '101.869913826', '17.1503982898', 'แปลงกุดลัน', 8.27, 2, 1, 1, 1, 1, '000', 1, 'แปลงกุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(564, '2023080620044102', '6034220150', 0, 'POLYGON((101.842405105 17.1690890832, 101.842486005 17.1692680832, 101.842707405 17.1691257832, 101.842935305 17.1693428832, 101.842973505 17.1693492832, 101.843108205 17.1695172832, 101.844284205 17.1689079832, 101.844759405 17.1686634832, 101.844707905 17.1680908832, 101.844517805 17.1681244832, 101.844497105 17.1680539832, 101.844260205 17.1681189832, 101.844191905 17.1681062832, 101.844137105 17.1677162832, 101.843754605 17.1677963832, 101.843521905 17.1678534832, 101.843439305 17.1681196832, 101.842405105 17.1690890832, 101.842405105 17.1690890832))', 0x000000000103000000010000001300000057fd19f7e97559406274126c492b314003b46b4aeb755940c1993127552b31409c240aebee7559401fc1cbd34b2b31409ae7eba6f27559408327210e5a2b3140a6d72447f3755940eef180795a2b3140b6dd1d7cf57559406673137c652b314047409ec00876594098e0b78d3d2b3140a95dc089107659409a5fb0872d2b314074a9beb10f7659408a190e01082b3140575768940c7659403b00c5340a2b3140abe2953d0c76594079cef995052b31408372f45b0876594047ae7ed8092b314078e17b3d077659409b986c03092b31402bd4a25706765940c6594f74ef2a3140c394501300765940283b2ab4f42a3140d1db4c43fc7559401add2472f82a3140b4c8d9e8fa7559406b283de4092b314057fd19f7e97559406274126c492b314057fd19f7e97559406274126c492b3140, '101.842405105', '17.1690890832', 'กุดลัน', 15.71, 2, 1, 1, 1, 1, '000', 1, 'กุดลัน', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(565, '2023080620044103', '6034220165', 0, 'POLYGON((101.869943505 17.0964744825, 101.870286305 17.0964233825, 101.871039605 17.0962452825, 101.870966605 17.0958346825, 101.870939705 17.0954494825, 101.870911605 17.0952121825, 101.870776205 17.0952579825, 101.870125805 17.0956232825, 101.869859905 17.0951462825, 101.869297905 17.0953115825, 101.869391705 17.0957684825, 101.869617905 17.0958342825, 101.869527005 17.0960801825, 101.868945605 17.0962156825, 101.868953605 17.0957589825, 101.868930005 17.0954685825, 101.868043905 17.0957038825, 101.868007205 17.0961459825, 101.868028605 17.0966227825, 101.868404605 17.0967014825, 101.868983105 17.0967300825, 101.869547105 17.0967371825, 101.869834705 17.0967522825, 101.869878505 17.0966853825, 101.869943505 17.0964744825, 101.869943505 17.0964744825))', 0x000000000103000000010000001a000000edd58527ad7759406c3c3b8db21831406d8854c5b27759403e68ea33af183140bb3fe61cbf77594056bbe487a31831408618b7eabd775940f9282b9f88183140d370e379bd775940f4c195606f183140a44b0704bd775940ae045ad35f1831400aa71eccba7759403c85bfd3621831405df82424b0775940dc1277c47a183140e804e1c8ab77594069acbb815b183140341dae93a27759407bc4015766183140e0181b1da477594036538448841831406d7fdbd1a7775940522c759888183140af5d9854a677594097a1f9b59818314096de06ce9c77594027b34997a1183140d8cd94ef9c775940c02222a9831831403d7f988c9c7759400ba207a170183140e5dd05088e7759400f70b50c80183140b68a176e8d775940b37aea059d183140ec9dd9c78d775940d2e24a45bc183140ee8ae8f093775940edcfa86dc11831401930506b9d7759407be07c4dc31831409d93e6a8a67759400a259bc4c3183140a7b92e5fab7759409e26f1c1c4183140fa9de416ac775940b8d68b5fc0183140edd58527ad7759406c3c3b8db2183140edd58527ad7759406c3c3b8db2183140, '101.869943505', '17.0964744825', 'ข้างรร. นวค.', 22.66, 2, 1, 1, 1, 1, '000', 1, 'ข้างรร. นวค.', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(566, '2023080620044104', '6034220215', 0, 'POLYGON((101.786723605 17.143788483, 101.786897305 17.143406383, 101.787967805 17.145323183, 101.787538705 17.145296183, 101.786723605 17.143788483, 101.786723605 17.143788483))', 0x0000000001030000000100000006000000d79df6ad59725940c6067052cf243140469283865c725940cc05dd47b6243140a83184106e725940eb556ee633253140ca93bd0867725940f837722132253140d79df6ad59725940c6067052cf243140d79df6ad59725940c6067052cf243140, '101.786723605', '17.143788483,', 'ห้วยเป้า', 5.04, 2, 1, 1, 1, 1, '000', 1, 'ห้วยเป้า', 0, 0, 70, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(567, '2023080620044105', '6034910003', 0, 'POLYGON((101.879551705 17.152471083, 101.879171505 17.151598883, 101.878948105 17.151154183, 101.878579705 17.151053483, 101.878525305 17.150979983, 101.878342605 17.150565283, 101.878135705 17.150561883, 101.878073905 17.150377383, 101.877822705 17.150372183, 101.877671305 17.150430483, 101.877701705 17.150761283, 101.877873505 17.150895083, 101.878465705 17.152247983, 101.878630305 17.152607483, 101.879551705 17.152471083, 101.879551705 17.152471083))', 0x00000000010300000001000000100000006d073c934a78594019124b580827314035638f58447859405a98342fcf263140cc768daf407859407ba3600ab2263140e1f95ea63a785940906ee970ab263140bd6b33c239785940ec55c99fa626314024cae6c336785940e26546728b263140329b1960337859405a823b398b2631408b5ce45c32785940060bd6217f263140526a483f2e785940903698ca7e26314036e743c42b78594076ceb49c8226314095a7c5432c785940eefc9b4a98263140fe7f5a142f785940ba9c660fa12631407c6838c838785940f1dd4bb9f9263140f84f9a7a3b785940219cb448112731406d073c934a78594019124b58082731406d073c934a78594019124b5808273140, '101.879551705', '17.152471083,', 'ห้วยไผ่ใต้', 13.61, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 19, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(568, '2023080620044106', '6034910007', 0, 'POLYGON((101.841310505 17.141881183, 101.842887905 17.141518283, 101.843250305 17.1414748829, 101.842950205 17.1407334829, 101.841233405 17.141419483, 101.841138705 17.141484683, 101.841310505 17.141881183, 101.841310505 17.141881183))', 0x000000000103000000010000000800000066300408d87559401de7405352243140d08a1ce0f17559406545cd8a3a2431404a9420d0f7755940cc42abb2372431406aa86ae5f2755940f7810a1c07243140c6b1a2c4d67559409280361134243140fd576f37d5755940b45e16573824314066300408d87559401de740535224314066300408d87559401de7405352243140, '101.841310505', '17.141881183,', 'นาปวน', 8.82, 2, 1, 1, 1, 1, '000', 1, 'นาปวน', 0, 0, 19, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(569, '2023080620044107', '6144480010', 0, 'POLYGON((101.954222718 17.1001998466, 101.953732746 17.098869844, 101.954779134 17.0978884204, 101.95503375 17.0977399051, 101.955728255 17.0997862332, 101.954222718 17.1001998466, 101.954222718 17.1001998466))', 0x000000000103000000010000000700000041ba29fc117d5940123678b2a61931406f4c12f5097d5940668aba884f193140badbf0191b7d59406d462c370f193140e1b4e0451f7d59402ceb7f7b05193140a4c5d7a62a7d59405e2f30978b19314041ba29fc117d5940123678b2a619314041ba29fc117d5940123678b2a6193140, '101.954222718', '17.1001998466', 'มอดินแดงแสงเพชร', 21.19, 2, 1, 1, 1, 1, '000', 1, 'มอดินแดงแสงเพชร', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(570, '2023080620044108', '6144480017', 0, 'POLYGON((101.947841944 17.1065918288, 101.947559166 17.1038964904, 101.947814935 17.1038344579, 101.948076991 17.1032763628, 101.948414822 17.1031631227, 101.949230304 17.106224478, 101.947841944 17.1065918288, 101.947841944 17.1065918288))', 0x000000000103000000010000000800000074d04171a97c594082b7229a491b3140af3f33cfa47c5940eb6fdcf5981a3140101ff9ffa87c5940dee020e5941a3140d89b1d4bad7c594003add851701a314007e214d4b27c59405526fee5681a314056037630c07c5940700b0387311b314074d04171a97c594082b7229a491b314074d04171a97c594082b7229a491b3140, '101.947841944', '17.1065918288', 'ภูน้อยไร่แสงเพชร', 26.14, 2, 1, 1, 1, 1, '000', 1, 'ภูน้อยไร่แสงเพชร', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(571, '2023080620044109', '6144480035', 0, 'POLYGON((101.955999998 17.0970363503, 101.955675451 17.0962666046, 101.955666063 17.09606888, 101.95429579 17.0956949013, 101.954816138 17.09787403, 101.955999998 17.0970363503, 101.955999998 17.0970363503))', 0x0000000001030000000100000007000000b5989d1a2f7d5940cc0fcf5fd7183140a5e85dc9297d594037749eeda4183140da9efda1297d59406bc359f897183140ac30a62e137d59403a7a07767f183140cb9925b51b7d59404cfabd450e193140b5989d1a2f7d5940cc0fcf5fd7183140b5989d1a2f7d5940cc0fcf5fd7183140, '101.955999998', '17.0970363503', 'มอดินแดงไร่บริษัท', 15.34, 2, 1, 1, 1, 1, '000', 1, 'มอดินแดงไร่บริษัท', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(572, '2023080620044110', '603492009', 0, 'POLYGON((101.806463593 17.1654595224, 101.806191835 17.1647227382, 101.8058638 17.1641247772, 101.805771254 17.1639150412, 101.80505144 17.1641199221, 101.805111194 17.1648276817, 101.805254843 17.1648236902, 101.80541689 17.1657336668, 101.806463593 17.1654595224, 101.806463593 17.1654595224))', 0x000000000103000000010000000a000000615679199d7359401085258e5b2a31402568a3a598735940007af5442b2a3140f081c245937359408c89d614042a31402aff97c191735940c8460d56f6293140749979f685735940a40a62c3032a3140e8f719f18673594083609e25322a31405ce89b4b89735940d903a7e2312a31408c8c48f38b7359408ec086856d2a3140615679199d7359401085258e5b2a3140615679199d7359401085258e5b2a3140, '101.806463593', '17.1654595224', 'ไผ่ ร..', 11.62, 2, 1, 1, 1, 1, '000', 1, 'ไผ่ ร..', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(573, '2023080620044111', '6064090005', 0, 'POLYGON((101.953761803 17.1113882986, 101.953950941 17.1096855421, 101.954642182 17.1097180983, 101.954530863 17.1108904107, 101.953761803 17.1113882986, 101.953761803 17.1113882986))', 0x0000000001030000000100000006000000c703f26e0a7d5940e3a48bf1831c314057653f880d7d5940dd29085a141c31409dc485db187d594052fa3b7c161c3140e4e69d08177d594082655f50631c3140c703f26e0a7d5940e3a48bf1831c3140c703f26e0a7d5940e3a48bf1831c3140, '101.953761803', '17.1113882986', 'บ้านเพิ่ม', 7.48, 2, 1, 1, 1, 1, '000', 1, 'บ้านเพิ่ม', 0, 0, 42, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(574, '2023080620044112', '6034920005', 0, 'POLYGON((101.802185128 17.1632379669, 101.80226718 17.1623904039, 101.803095562 17.1624806097, 101.803507071 17.162753417, 101.803369923 17.1631819596, 101.803155108 17.1632933253, 101.803166997 17.1633388135, 101.803033867 17.1633586057, 101.802939689 17.1635737615, 101.802759338 17.163629326, 101.802611499 17.1635161595, 101.802411447 17.1633226841, 101.802272473 17.1632634042, 101.802185128 17.1632379669, 101.802185128 17.1632379669))', 0x000000000103000000010000000f0000003f864a0057735940104da1f6c929314044307158587359404befe16a922931409396edea6573594049e54854982931402f03eca86c735940c7533b35aa2931400178ae696a73594079c7fb4ac62931406c9eaee4667359408fd16397cd293140dc558c166773594063268e92d02931401b1629e8647359406d009dded1293140963a265d637359404f2054f8df29314031d1b3686073594026d68b9ce32931404ee69efc5d735940866bed31dc29314044b38ab55a73594089e7f283cf2931400781a46e5873594031ac65a1cb2931403f864a0057735940104da1f6c92931403f864a0057735940104da1f6c9293140, '101.802185128', '17.1632379669', 'อ้อย', 8.21, 2, 1, 1, 1, 1, '000', 1, 'อ้อย', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(575, '2023080620044113', '6034990003', 0, 'POLYGON((101.800862805 17.1620605832, 101.800510505 17.1624693832, 101.800226405 17.1629622832, 101.799951905 17.1634308832, 101.799841905 17.1636731832, 101.801848205 17.1647561832, 101.801954905 17.1641777832, 101.802128105 17.1632640832, 101.801405905 17.1630884832, 101.801506005 17.1623549832, 101.800862805 17.1620605832, 101.800862805 17.1620605832))', 0x000000000103000000010000000c000000b3031156417359408fd068cd7c29314016c569903b735940ff71ef9797293140b9b7cfe83673594053d36ce5b729314044967969327359401a803a9bd629314080fc199c307359408313597ce62931403435227b5173594065a812762d2a3140e075aa3a53735940e392218e072a31405b8b1e115673594097f4c9accb293140f632fe3b4a735940c0b2b52ac029314072c1d7df4b735940c72f9f1890293140b3031156417359408fd068cd7c293140b3031156417359408fd068cd7c293140, '101.800862805', '17.1620605832', 'ตนเองของเรานั่นละ', 24.32, 2, 1, 1, 1, 1, '000', 1, 'ตนเองของเรานั่นละ', 0, 0, 22, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(576, '2023080620044114', '614448056', 0, 'POLYGON((101.963718826 17.0948352314, 101.966250573 17.0945015411, 101.965946372 17.0933882611, 101.965776621 17.0931255705, 101.965426864 17.0928354066, 101.96486816 17.0935083706, 101.964233923 17.0936722945, 101.963510083 17.0937977088, 101.963718826 17.0948352314, 101.963718826 17.0948352314))', 0x000000000103000000010000000a000000690dba91ad7d5940215f291f47183140aeb1a40cd77d59403472c44031183140835bbb10d27d59403b41074be8173140ee9bbe48cf7d594006b8cf13d7173140d4e3c18dc97d59400342ab0fc4173140b5096266c07d594016a1212af0173140a43e3302b67d5940356b51e8fa1731407bf63126aa7d594059bc6b2003183140690dba91ad7d5940215f291f47183140690dba91ad7d5940215f291f47183140, '101.963718826', '17.0948352314', 'ซำพรัาว', 23.39, 2, 1, 1, 1, 1, '000', 1, 'ซำพรัาว', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(577, '2023080620044115', '614448001', 0, 'POLYGON((101.970271129 17.0996842447, 101.968792335 17.0997617971, 101.968769184 17.1019920196, 101.969906602 17.1013859856, 101.970271129 17.0996842447, 101.970271129 17.0996842447))', 0x0000000001030000000100000006000000b6d313ec187e5940b8e91ae88419314031dc90b1007e594048ef37fd89193140c4a97650007e59408fa224261c1a3140edf023f3127e5940bb6c946ef4193140b6d313ec187e5940b8e91ae884193140b6d313ec187e5940b8e91ae884193140, '101.970271129', '17.0996842447', 'มอดินแดง', 18.48, 2, 1, 1, 1, 1, '000', 1, 'มอดินแดง', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(578, '2023080620044116', '6034922002', 0, 'POLYGON((101.802585405 17.1623430832, 101.802699105 17.1621565832, 101.804000905 17.1616635832, 101.804056005 17.1616517832, 101.804093305 17.1616674832, 101.804152405 17.1623933832, 101.804182805 17.1626093832, 101.804657505 17.1627211832, 101.804814305 17.1628082832, 101.804824805 17.1628730832, 101.804757705 17.1628709832, 101.802585405 17.1623430832, 101.802585405 17.1623430832))', 0x000000000103000000010000000d00000034ae2c8f5d7359406813f9508f2931403920116c5f735940d4ac0518832931407b3b36c07473594055ccdac862293140286851a775735940202fe2026229314015fac34376735940ae2b490a63293140621ea63b7773594049eedd9c92293140c1de27bb77735940e2ddbec4a02931402e1d31827f735940de357018a8293140fdd4db1382735940a6dcbbcdad293140031fe63f8273594021bee50cb2293140750b762681735940b64faae9b129314034ae2c8f5d7359406813f9508f29314034ae2c8f5d7359406813f9508f293140, '101.802585405', '17.1623430832', 'ติดถนน', 7.64, 2, 1, 1, 1, 1, '000', 1, 'ติดถนน', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(579, '2023080620044117', '6183720002', 0, 'POLYGON((101.86648431 17.1081280389, 101.865194672 17.1082286639, 101.865072602 17.1062897621, 101.866395681 17.1062091171, 101.86648431 17.1081280389, 101.86648431 17.1081280389))', 0x00000000010300000001000000060000009e7c9b7a747759402adb7647ae1b3140763a79595f775940b6f0abdfb41b31405c9079595d7759407f1e4cce351b31409ad2de0673775940467b4c85301b31409e7c9b7a747759402adb7647ae1b31409e7c9b7a747759402adb7647ae1b3140, '101.86648431 ', '7.1081280389,', 'แปลงเช่าบริษัท ข้างหนองหินวิท', 18.66, 2, 1, 1, 1, 1, '000', 1, 'แปลงเช่าบริษัท ข้างหนองหินวิท', 0, 0, 71, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(580, '2023080620044118', '6144480019', 0, 'POLYGON((101.949266312 17.1061500007, 101.95054472 17.1057814897, 101.949739387 17.1027484565, 101.949456749 17.1025238211, 101.948402641 17.1031583115, 101.949187858 17.1060625194, 101.949266312 17.1061500007, 101.949266312 17.1061500007))', 0x0000000001030000000100000008000000034f7dc7c07c5940157a7da52c1b3140457285b9d57c59409ec8e67e141b3140d6b8b587c87c5940c9610cb94d1a3140fa7a3de6c37c59407aaf4a003f1a31403ea2fda0b27c5940fd334695681a3140b3f76d7ebf7c59408527cce9261b3140034f7dc7c07c5940157a7da52c1b3140034f7dc7c07c5940157a7da52c1b3140, '101.949266312', '17.1061500007', 'มอดินแดงแสงเพชร', 33.56, 2, 1, 1, 1, 1, '000', 1, 'มอดินแดงแสงเพชร', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(581, '2023080620044119', '6144480024', 0, 'POLYGON((101.948596766 17.1085523538, 101.949848352 17.108444686, 101.949253907 17.1062342774, 101.948572291 17.1063695047, 101.948750658 17.10664797, 101.948889797 17.1071712529, 101.948925001 17.1077528546, 101.948928019 17.1080598371, 101.948527364 17.1083088194, 101.948596766 17.1085523538, 101.948596766 17.1085523538))', 0x000000000103000000010000000b000000edc335cfb57c59408e794916ca1b3140f8ffbd50ca7c594084cbeb07c31b3140938a7593c07c5940ae256b2b321b314028ef8d68b57c59406dfa27083b1b3140c80aae54b87c5940b55507484d1b3140e167459cba7c5940df4642936f1b3140b769ed2fbb7c5940c28eeab0951b31403cf7953cbb7c5940085b3acfa91b31406eef1dacb47c5940fe307520ba1b3140edc335cfb57c59408e794916ca1b3140edc335cfb57c59408e794916ca1b3140, '101.948596766', '17.1085523538', 'มอดินแดงแสงเพชร', 12.49, 2, 1, 1, 1, 1, '000', 1, 'มอดินแดงแสงเพชร', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(582, '2023080620044120', '6130220006', 0, 'POLYGON((101.816117505 17.1855071834, 101.816635705 17.1856018834, 101.817013305 17.1856316834, 101.817036705 17.1854987834, 101.816432605 17.1848253834, 101.816329805 17.1846727834, 101.815912505 17.1842565834, 101.815718805 17.1843547834, 101.815633005 17.1844682834, 101.815476105 17.1845192834, 101.816117505 17.1855071834, 101.816117505 17.1855071834))', 0x000000000103000000010000000c000000c26aea443b74594046e015667d2f3140236e67c2437459406d47e39a832f3140cd572cf249745940ef4dd98e852f3140d3e651544a7459409a2628d97c2f31403d778a6e40745940752c61b7502f314067ce5dbf3e7459400f2a2db7462f3140d65715e93774594094c67f702b2f3140438da5bc347459406d9005e0312f3140d880c654337459402e5a3c50392f31403f69b0c23074594032afdfa73c2f3140c26aea443b74594046e015667d2f3140c26aea443b74594046e015667d2f3140, '101.816117505', '17.1855071834', 'หน้าโรงงาน MPL', 7.06, 2, 1, 1, 1, 1, '000', 1, 'หน้าโรงงาน MPL', 0, 0, 79, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(583, '2023080620044121', '6037150010', 0, 'POLYGON((101.811688855 17.1599138722, 101.811474917 17.1593522634, 101.811090225 17.1593895246, 101.809862331 17.1599150499, 101.810274685 17.1605390134, 101.811688855 17.1599138722, 101.811688855 17.1599138722))', 0x00000000010300000001000000070000002cb0cfb5f27359409646931df028314084827d34ef735940b9d8574fcb283140bd9ef9e6e8735940647b7bc0cd283140127ad0c8d47359406e755531f028314082365a8adb735940fd48b415192931402cb0cfb5f27359409646931df02831402cb0cfb5f27359409646931df0283140, '101.811688855', '17.1599138722', 'ไร่ตาปู', 8.56, 2, 1, 1, 1, 1, '000', 1, 'ไร่ตาปู', 0, 0, 26, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(584, '2023080620044122', '6144480003', 0, 'POLYGON((101.946760459 17.106282344, 101.947621448 17.1066107986, 101.94781289 17.1066018261, 101.947713984 17.1052873634, 101.947527235 17.103765882, 101.946305489 17.1040796005, 101.946760459 17.106282344, 101.946760459 17.106282344))', 0x000000000103000000010000000800000043232eb9977c59404a9fd751351b31407c096ed4a57c59402f6365d84a1b3140be5165f7a87c59401bcbdc414a1b31407bcf8d58a77c59402d7cd61cf41a31403c994549a47c59406fa19d66901a3140f0d1e544907c59400854f0f5a41a314043232eb9977c59404a9fd751351b314043232eb9977c59404a9fd751351b3140, '101.946760459', '17.106282344,', 'แสงเพชรไร่บริษัท', 21.73, 2, 1, 1, 1, 1, '000', 1, 'แสงเพชรไร่บริษัท', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(585, '2023080620044123', '6144480004', 0, 'POLYGON((101.946780195 17.1061020926, 101.946729949 17.1062307525, 101.945985971 17.1063861677, 101.945333188 17.1019563028, 101.946022851 17.1020883287, 101.946352763 17.104443949, 101.946780195 17.1061020926, 101.946780195 17.1061020926))', 0x0000000001030000000100000008000000a281f50b987c594011c1b981291b314052463639977c594025d147f0311b3140defabd088b7c5940ad04b71f3c1b31402492c556807c5940a725eace191a314013946da38b7c5940de11f175221a31401ce42d0b917c59405838b1d6bc1a3140a281f50b987c594011c1b981291b3140a281f50b987c594011c1b981291b3140, '101.946780195', '17.1061020926', 'แสงเพชรไร่บริษัท', 22.12, 2, 1, 1, 1, 1, '000', 1, 'แสงเพชรไร่บริษัท', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(586, '2023080620044124', '6034922001', 0, 'POLYGON((101.804187305 17.1648300832, 101.805221205 17.1648530832, 101.805413105 17.1657642832, 101.804345805 17.1659621832, 101.804187305 17.1648300832, 101.804187305 17.1648300832))', 0x000000000103000000010000000600000056b507ce77735940afbde84d322a3140536185be8873594020fdc8cf332a3140ab6f68e38b7359405b302f876f2a314096c9d3667a7359407e37657f7c2a314056b507ce77735940afbde84d322a314056b507ce77735940afbde84d322a3140, '101.804187305', '17.1648300832', 'แปลงต้นหมากเขียบ', 8.03, 2, 1, 1, 1, 1, '000', 1, 'แปลงต้นหมากเขียบ', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(587, '2023080620044125', '6216720006', 0, 'POLYGON((101.793667905 17.1800955833, 101.793474105 17.1796250833, 101.793881905 17.1793962833, 101.794091005 17.1798019833, 101.794310605 17.1802769834, 101.794492005 17.1806557834, 101.794345205 17.1807017834, 101.794377805 17.1807465834, 101.794530005 17.1807539834, 101.794956705 17.1816263834, 101.794691605 17.1817705834, 101.794537305 17.1818145834, 101.793667905 17.1800955833, 101.793667905 17.1800955833))', 0x000000000103000000010000000e00000008f77774cb725940746d80be1a2e3140aacc9c47c87259409550d2e8fb2d31401eb70cf6ce72594026cc31eaec2d314075211463d27259408907b680072e3140d3d525fcd5725940aeece3a1262e3140249afef4d8725940488919753f2e3140674d458dd67259402908da78422e31402b490116d772594016917868452e31409bca6094d972594021539fe4452e3140806d1692e072594034cb10117f2e31405e782d3adc725940ed135784882e3140541bffb2d97259408da389668b2e314008f77774cb725940746d80be1a2e314008f77774cb725940746d80be1a2e3140, '101.793667905', '17.1800955833', 'แปลงเสี่ยแอ๊ะ', 8.66, 2, 1, 1, 1, 1, '000', 1, 'แปลงเสี่ยแอ๊ะ', 0, 0, 36, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(588, '2023080620044126', '6034920013', 0, 'POLYGON((101.801862105 17.1648131832, 101.801353005 17.1651129832, 101.802222305 17.1652586832, 101.802685805 17.1653788832, 101.802928305 17.1654016832, 101.803318605 17.1648036832, 101.803095305 17.1646312832, 101.802861205 17.1647104832, 101.801994505 17.1641860832, 101.801862105 17.1648131832, 101.801862105 17.1648131832))', 0x000000000103000000010000000b0000001c386fb5517359402dcb5f32312a3140af411d5e497359402ffd2ed8442a31403106399c577359405ab99f644e2a31400f5c48345f73594002cb3e45562a31407ec0662d637359401f0cc4c3572a3140932f709269735940b69afd92302a3140f4a2d9e965735940153e9946252a3140f0acf6136273594001a75a772a2a3140fda2c2e05373594066cd6119082a31401c386fb5517359402dcb5f32312a31401c386fb5517359402dcb5f32312a3140, '101.801862105', '17.1648131832', 'อ้อย', 8.46, 2, 1, 1, 1, 1, '000', 1, 'อ้อย', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(589, '2023080620044127', '6144480043', 0, 'POLYGON((101.952401015 17.1000888325, 101.952302325 17.0975499125, 101.954655025 17.0972064325, 101.954666355 17.0973037725, 101.954773785 17.0977291825, 101.954798935 17.0978664625, 101.952401015 17.1000888325, 101.952401015 17.1000888325))', 0x00000000010300000001000000080000008b066323f47c59404648f66b9f193140e8717385f27c594048eaf307f918314092d56311197d59405f8c5085e21831404254e940197d594038aa68e6e8183140cd6981031b7d5940cbb39ac7041931402905fe6c1b7d59400ed0c7c60d1931408b066323f47c59404648f66b9f1931408b066323f47c59404648f66b9f193140, '101.952401015', '17.1000888325', 'แสงเพชรข้างภูเขา', 29.16, 2, 1, 1, 1, 1, '000', 1, 'แสงเพชรข้างภูเขา', 0, 0, 63, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(590, '2023080620044128', '6064090107', 0, 'POLYGON((101.957622175 17.1076108526, 101.957580905 17.1075227526, 101.957517745 17.1074129526, 101.957466875 17.1073225826, 101.957422845 17.1072406826, 101.957361825 17.1071311126, 101.957282065 17.1069796726, 101.957208065 17.1068387826, 101.957126725 17.1066962026, 101.957039245 17.1065250026, 101.957014285 17.1064168026, 101.956947585 17.1062916426, 101.957006215 17.1062774126, 101.957102085 17.1062372626, 101.957503285 17.1061001126, 101.957672255 17.1060053626, 101.957802095 17.1059728126, 101.957960595 17.1059127426, 101.958125725 17.1058583426, 101.958201495 17.1058332126, 101.958259415 17.1058022626, 101.958318085 17.1057875126, 101.958321635 17.1058257626, 101.958359305 17.1059099526, 101.958410735 17.1059784426, 101.958481955 17.1059705826, 101.958599395 17.1059618426, 101.958724475 17.1059676226, 101.958898135 17.1059671326, 101.959068095 17.1059907926, 101.959157765 17.1060038526, 101.959233695 17.1060257926, 101.959338085 17.1060056426, 101.959464315 17.1060336026, 101.959641665 17.1060209726, 101.959722885 17.1060165326, 101.959795535 17.1060176926, 101.959853445 17.1060228626, 101.959907325 17.1060344226, 101.960014845 17.1060652826, 101.960048415 17.1060537026, 101.960102665 17.1060949926, 101.960307625 17.1060700426, 101.960357135 17.1061264726, 101.960388925 17.1062027126, 101.960390365 17.1062707526, 101.960401835 17.1063299526, 101.960398145 17.1064163126, 101.960403055 17.1064753626, 101.960418665 17.1065533426, 101.960438645 17.1066259226, 101.960437185 17.1066835426, 101.960454995 17.1067011526, 101.957622175 17.1076108526, 101.957622175 17.1076108526))', 0x000000000103000000010000003700000029e384ae497d5940979c84628c1b3140f18f6b01497d59402ffe719c861b3140570782f8477d594074954e6a7f1b314036c82423477d5940a663267e791b3140f8ed776a467d594056911820741b31401734886a457d59404800d1f16c1b31403b8efe1b447d59405f271305631b31401ea99de5427d5940223655c9591b31402a807390417d59403ec63c71501b3140de908821407d5940925ffa38451b31404ff8d7b83f7d594071e9ae213e1b3140ea6315a13e7d59401cced8ed351b31409adffe963f7d5940a66b1bff341b31408a801a29417d5940cb7b805d321b3140ceb8dbbb477d59400bb88160291b3140bee091804a7d59405091dd2a231b31402e8428a14c7d5940d461c408211b31406e98f4394f7d594059b2f5181d1b314034958fee517d5940cc794788191b314036005d2c537d594097f2aae2171b314095204c1f547d5940b6b569db151b3140628f6015557d594033f1f2e3141b3140f4574424557d5940f670ad65171b3140b53244c2557d5940e8bc26ea1c1b314076bdfa99567d59404b0c3967211b3140fea1b2c4577d5940e69a5ae3201b314062df46b1597d59404597b850201b3140fc7fe6bd5b7d59407b80b1b1201b31404e8148965e7d5940c8f778a9201b31405faa255f617d5940e5e46b36221b3140491840d7627d5940c12a8811231b3140c24fb915647d5940debf9f81241b3140773891cb657d59409128902f231b3140a9a603dd677d5940ae71a704251b314075c3dfc46a7d5940d201c230241b31400f1389196c7d5940325a44e6231b3140ff6a404a6d7d5940ae83baf9231b314096ce243d6e7d5940cc7e7750241b31403704221f6f7d594037516912251b3140c5bc1ae2707d59400c022818271b31401b40e86e717d59406649e055261b31408ebe7252727d5940827c9b0a291b31405dde1cae757d5940650d0468271b314089d3c57d767d59408d0ec11a2b1b314033141c03777d59400d5dd919301b314062442609777d594035f05e8f341b3140fa154239777d594092009570381b314080fac729777d5940bf6076193e1b3140060d603e777d59405e3228f8411b31402729d97f777d59401abf7114471b3140bb85a6d3777d59400b7922d64b1b3140fddb86cd777d5940097dd69c4f1b314083333a18787d5940cddc48c4501b314029e384ae497d5940979c84628c1b314029e384ae497d5940979c84628c1b3140, '101.957622175', '17.1076108526', 'มอดินแดง', 28.15, 2, 1, 1, 1, 1, '000', 1, 'มอดินแดง', 0, 0, 42, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(591, '2023080620044129', '6035100003', 0, 'POLYGON((101.801410905 17.1650105832, 101.800932005 17.1653615832, 101.800097905 17.1660870832, 101.799615605 17.1664750832, 101.799356705 17.1658229832, 101.799056605 17.1654807832, 101.799060605 17.1651964832, 101.799416805 17.1642630832, 101.801410905 17.1650105832, 101.801410905 17.1650105832))', 0x000000000103000000010000000a0000007fe8f6504a735940805632223e2a3140ddf24f7842735940d9dbff22552a3140aee4d7cd34735940cda1deae842a31402936eee62c73594061f16d1c9e2a31400d7406a928735940e8c40160732a31402e8850be23735940e1f5d7f25c2a3140ce7f17cf237359401ac214514a2a314043561aa529735940bd483a250d2a31407fe8f6504a735940805632223e2a31407fe8f6504a735940805632223e2a3140, '101.801410905', '17.1650105832', 'แปลงเรา', 19.35, 2, 1, 1, 1, 1, '000', 1, 'แปลงเรา', 0, 0, 81, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(592, '2023080620044130', '6064090094', 0, 'POLYGON((102.04213279 17.1501250143, 102.043138553 17.1497084737, 102.042775477 17.1488614823, 102.042812551 17.1488063773, 102.04373692 17.1484999364, 102.043108801 17.1470160704, 102.041399888 17.1479440113, 102.041819286 17.1493483077, 102.04213279 17.1501250143, 102.04213279 17.1501250143))', 0x000000000103000000010000000a000000e9c8ba4db2825940e3baca976e2631403c9534c8c2825940bf79664b532631404bb25ad5bc825940d21c3ec91b263140d099da70bd82594093f0bb2c18263140c741f095cc825940cc4b821704263140bf9d6a4bc2825940bc5a5ed8a22531402841b74ba68259402d2ca2a8df253140936dcc2aad825940d148d1b03b263140e9c8ba4db2825940e3baca976e263140e9c8ba4db2825940e3baca976e263140, '102.04213279 ', '7.1501250143,', 'ผาสุก', 29.13, 2, 1, 1, 1, 1, '000', 1, 'ผาสุก', 0, 0, 42, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(593, '2023080620044131', '6137730010', 0, 'POLYGON((101.861308439 17.1000849182, 101.861494334 17.0992996734, 101.861569282 17.0992782098, 101.861801412 17.0994816687, 101.861841677 17.0996557564, 101.862062223 17.0998477228, 101.862119766 17.0999278047, 101.862260991 17.0999337648, 101.862271501 17.1000093467, 101.862242512 17.1000994, 101.862150475 17.1002035597, 101.861455807 17.1001927897, 101.861308439 17.1000849182, 101.861308439 17.1000849182))', 0x000000000103000000010000000e00000086516ead1f775940e97d4a2a9f193140098e21b922775940a9c111b46b193140685b7cf323775940e34bf84b6a193140f20b1cc127775940369e71a177193140de42fe69287759409d98260a83193140bbb907072c7759408e01d09e8f193140220d62f82c775940c7255dde941931408a3db9482f77594008955b42951931405744ce742f775940ee5e69369a193140b29037fb2e7759406759411da0193140c7962f792d775940b2dac3f0a6193140ea80891722775940770e133ca619314086516ead1f775940e97d4a2a9f19314086516ead1f775940e97d4a2a9f193140, '101.861308439', '17.1000849182', 'หลังบ้าน', 3.81, 2, 1, 1, 1, 1, '000', 1, 'หลังบ้าน', 0, 0, 83, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(594, '2023080620044132', '6137730011', 0, 'POLYGON((101.862499995 17.1009647126, 101.862314175 17.1008941626, 101.861446045 17.1006414225, 101.861200045 17.1006566525, 101.861188555 17.1007085626, 101.861110935 17.1012100226, 101.861290385 17.1016684826, 101.861456925 17.1019576726, 101.861893689 17.1017534571, 101.862225948 17.1018351723, 101.862499995 17.1009647126, 101.862499995 17.1009647126))', 0x000000000103000000010000000c000000cfd42d3333775940c3aacad2d81931402420cb27307759406cb92833d4193140c9a297ee21775940ab42e2a2c3193140ae25cbe61d775940c29c66a2c419314087da99b61d7759404fcb4e09c819314064030a711c7759402c1869e6e8193140cbfbb4611f7759400bcd17f2061a31406af2391c22775940ae64e5e5191a314090b8254429775940db7fba830c1a31400c1bbeb52e7759406c9caede111a3140cfd42d3333775940c3aacad2d8193140cfd42d3333775940c3aacad2d8193140, '101.862499995', '17.1009647126', 'หลังบ้านตนเองหลัก160', 9.36, 2, 1, 1, 1, 1, '000', 1, 'หลังบ้านตนเองหลัก160', 0, 0, 83, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(595, '2023080620044133', '6137730012', 0, 'POLYGON((101.861196113 17.1006234944, 101.861269856 17.1003211917, 101.86131802 17.1001108455, 101.861464083 17.1002054635, 101.86218486 17.1002232349, 101.862192499 17.1001771767, 101.862251962 17.1001121319, 101.862277429 17.10002677, 101.86240112 17.1000220907, 101.862516177 17.1001228241, 101.862528416 17.1002120688, 101.862631455 17.1002103676, 101.862647852 17.100461295, 101.862611921 17.1005563897, 101.862457672 17.100745302, 101.862432039 17.1008405563, 101.862343007 17.1008259829, 101.862317706 17.1009014523, 101.862262892 17.1008940059, 101.862188365 17.1008334806, 101.86181629 17.1007023756, 101.861196113 17.1006234944, 101.861196113 17.1006234944))', 0x0000000001030000000100000017000000c0314dd61d77594041a81976c21931403e239a0b1f7759407f724da6ae193140c0d69dd51f775940bd6547dda019314079ca3f3a22775940ef9cb410a71931409b3368092e775940e031dc3aa8193140f08372292e7759406cbb2136a5193140eb6cda222f7759407f71dcf2a01931409368ab8d2f775940e0dfb95a9b193140c39b7794317759401e6f380c9b1931401a1f0d7733775940b9173fa6a1193140cea562aa337759401729867fa719314075ee8f5a35775940e88ffb62a71931407f13569f35775940ef89d8d4b71931406c75a10835775940532a4510be19314028dba98132775940ce50b171ca193140c4a1261632775940406bcbafd0193140f53fb9a0307759407f244bbbcf19314008829a363077594056bf75add4193140716cb2502f775940f3b38730d4193140abaa1b182e775940d3841539d0193140712d83ff27775940ded481a1c7193140c0314dd61d77594041a81976c2193140c0314dd61d77594041a81976c2193140, '101.861196113', '17.1006234944', 'หลังบ้าน', 5.68, 2, 1, 1, 1, 1, '000', 1, 'หลังบ้าน', 0, 0, 83, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(596, '2023080620044134', '6275010004', 0, 'POLYGON((101.819616505 17.1639189832, 101.819556205 17.1640440832, 101.819717605 17.1641478832, 101.819785005 17.1643891832, 101.820139005 17.1645222832, 101.820760805 17.1642972832, 101.820873605 17.1636253832, 101.820895505 17.1633571832, 101.820474205 17.1633681832, 101.819616505 17.1639189832, 101.819616505 17.1639189832))', 0x000000000103000000010000000b000000280fc998747459409e093098f62931405e6dde9b73745940417204cbfe2931408c5bd44076745940370d7e98052a31407a8e865b7774594000a9d568152a314089294f287d745940a8cee1211e2a314013d4535887745940682a02630f2a3140fae7713189745940b4a3655ae329314023da4c8d897459402269bfc6d1293140f16b3da6827459400a0d4c7fd2293140280fc998747459409e093098f6293140280fc998747459409e093098f6293140, '101.819616505', '17.1639189832', '0', 7.44, 2, 1, 1, 1, 1, '000', 1, '0', 0, 0, 74, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(597, '2023080620044135', '6064090101', 0, 'POLYGON((102.029904845 17.157842473, 102.029867815 17.157567213, 102.029804825 17.156844253, 102.029660935 17.155550093, 102.029848445 17.155534483, 102.030727105 17.155484903, 102.031159675 17.155423753, 102.031753535 17.155327523, 102.032027185 17.155274663, 102.032173445 17.155239713, 102.032215665 17.155231083, 102.032316815 17.155331713, 102.032531085 17.155512703, 102.032479385 17.155692663, 102.032379155 17.156069243, 102.032364215 17.156317053, 102.032241605 17.156566063, 102.032053665 17.156866593, 102.031917945 17.157103963, 102.031858275 17.157186043, 102.031763685 17.157220013, 102.029904845 17.157842473, 102.029904845 17.157842473))', 0x000000000103000000010000001700000016d102f6e98159406b74435d682831403128b25ae9815940c2c12a5356283140d5287f52e88159405733e9f126283140cd72faf6e581594023538221d227314022c77309e9815940a1e29d1bd1273140d9c4d16ef78159402068cddbcd2731400e452685fe8159401628e0d9c9273140e096fa3f088259402574678bc32731401c0ac0bb0c825940807b8f14c0273140c78435210f8259401c6032cabd27314002e64ad20f825940c3ce6839bd2731404ce28b7a11825940dd5db3d1c32731406b8b42fd14825940607f35aecf273140a1176a2414825940e9cf6f79db27314004f3048012825940b3986627f4273140163f5b41128259402d71f66404283140eac2173f108259409c3fa8b61428314016b9d02a0d8259401bc5b668282831408e7b90f10a82594031281ff737283140d94e4af709825940991232583d283140a1118d6a08825940981c1e923f28314016d102f6e98159406b74435d6828314016d102f6e98159406b74435d68283140, '102.029904845', '17.157842473,', 'ผาสุก', 37.9, 2, 1, 1, 1, 1, '000', 1, 'ผาสุก', 0, 0, 42, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(598, '2023080620044136', '6136280005', 0, 'POLYGON((101.807013588 17.1771483911, 101.805213561 17.177879629, 101.805825164 17.1793347055, 101.807794796 17.1780872925, 101.807892037 17.1769152266, 101.807013588 17.1771483911, 101.807013588 17.1771483911))', 0x0000000001030000000100000007000000cff8511ca67359404350d298592d31409bb2759e88735940fb2df584892d3140206bb5a392735940092917e1e82d3140bcacf1e8b2735940e51ef920972d31404967cd80b47359405369f8504a2d3140cff8511ca67359404350d298592d3140cff8511ca67359404350d298592d3140, '101.807013588', '17.1771483911', '0', 25.43, 2, 1, 1, 1, 1, '000', 1, '0', 0, 0, 30, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(599, '2023080620044137', '6034920006', 0, 'POLYGON((101.790590405 17.1634275832, 101.790102105 17.1628960832, 101.788848205 17.1632658832, 101.789251805 17.1643484832, 101.790590405 17.1634275832, 101.790590405 17.1634275832))', 0x000000000103000000010000000600000069807f0899725940bb1bdd63d6293140735e6b089172594091fdc58eb3293140ee7e2e7d7c72594085e5fccacb2931402db2001a83725940c07d00be122a314069807f0899725940bb1bdd63d629314069807f0899725940bb1bdd63d6293140, '101.790590405', '17.1634275832', 'ห้วยไผ่ใต้', 9.84, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(600, '2023080620044138', '6064090030', 0, 'POLYGON((102.042097747 17.1533125591, 102.042056306 17.152717928, 102.041127643 17.1528020707, 102.041103619 17.1523430421, 102.041058784 17.1519626611, 102.040781071 17.1509698049, 102.042203708 17.150577089, 102.042367369 17.1511133563, 102.042496143 17.1513821775, 102.042628353 17.1531624273, 102.042097747 17.1533125591, 102.042097747 17.1533125591))', 0x000000000103000000010000000c0000006ba6bfbab18259408c66eb7d3f27314014b7ee0cb1825940dc45aa85182731406169d6d5a1825940e76a58091e2731408bd61271a1825940b8971ff4ff263140969f05b5a08259403ca36306e72631406a8f35289c825940a0ba06f5a526314051682e77b382594029c858388c2631407211a025b68259401c4c6b5daf2631400819be41b88259404d8f7dfbc02631401c81456cba825940bf3a20a7352731406ba6bfbab18259408c66eb7d3f2731406ba6bfbab18259408c66eb7d3f273140, '102.042097747', '17.1533125591', 'ผาสุก', 24.12, 2, 1, 1, 1, 1, '000', 1, 'ผาสุก', 0, 0, 42, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(601, '2023080620044139', '6064090096', 0, 'POLYGON((102.040579966 17.1505223248, 102.041856734 17.1501847119, 102.042106752 17.1500588028, 102.041894031 17.1495026932, 102.041761172 17.149225407, 102.041647498 17.1489530294, 102.040158909 17.1494379329, 102.040329905 17.1498916259, 102.040579966 17.1505223248, 102.040579966 17.1505223248))', 0x000000000103000000010000000a000000f0b5b6dc988259407a558ea1882631406fe9ddc7ad8259403df8598172263140f8b184e0b1825940bf80f2406a263140ba424d64ae8259403af5f9ce45263140e3fe0c37ac8259401bcce2a233263140b277445aaa825940c3e925c9212631401333acf6918259405c967a9041263140a6c1e1c3948259404d2f2f4c5f263140f0b5b6dc988259407a558ea188263140f0b5b6dc988259407a558ea188263140, '102.040579966', '17.1505223248', 'ผาสุก', 14.07, 2, 1, 1, 1, 1, '000', 1, 'ผาสุก', 0, 0, 42, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(602, '2023080620044140', '603506001', 0, 'POLYGON((101.812033045 17.1581258705, 101.811671967 17.1578958575, 101.811410615 17.1576003347, 101.81124705 17.1574739508, 101.810915821 17.1573043492, 101.811468518 17.15703035, 101.811856866 17.1568388155, 101.812413971 17.157068549, 101.813164928 17.157377426, 101.812435182 17.1578792245, 101.812033045 17.1581258705, 101.812033045 17.1581258705))', 0x000000000103000000010000000c000000f7e27259f8735940f472e2ef7a2831401456fa6ef2735940ea22e8dc6b28314058c3c926ee7359400a60db7e582831407f2ebf78eb7359406da87c365028314041c0780be673594023550b1945283140caa2a619ef735940bcba19243328314032208076f5735940dd50af96262831408b102b97fe735940682ff9a435283140e900e9e40a74594075cc11e349283140d43322f0fe73594002f2d9c56a283140f7e27259f8735940f472e2ef7a283140f7e27259f8735940f472e2ef7a283140, '101.812033045', '17.1581258705', 'ห้วยไผ่ใต้', 10.55, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 72, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(603, '2023080620044141', '6258050007', 0, 'POLYGON((101.796520587 17.1733702336, 101.79696423 17.1731880746, 101.797220992 17.173174726, 101.798040512 17.1747935064, 101.797541266 17.1750444918, 101.79728124 17.174644522, 101.79722382 17.1746685055, 101.796722306 17.1733933545, 101.796520587 17.1733702336, 101.796520587 17.1733702336))', 0x000000000103000000010000000a0000005ef07b31fa7259407169dbfd612c3140a3fb417601735940d676bc0d562c3140c81432ab05735940eca9c82d552c314014fb8218137359408a8a6944bf2c31408cab85ea0a7359403ea03fb7cf2c3140ebe0e4a706735940626ade80b52c3140809f0eb70573594082c33e13b72c3140e1108e7ffd725940d6ebc281632c31405ef07b31fa7259407169dbfd612c31405ef07b31fa7259407169dbfd612c3140, '101.796520587', '17.1733702336', 'นั้นละ', 8.48, 2, 1, 1, 1, 1, '000', 1, 'นั้นละ', 0, 0, 76, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(604, '2023080620044142', '603645001', 0, 'POLYGON((101.84086667 17.1523033626, 101.842143379 17.1516777286, 101.842522382 17.1530808122, 101.841815664 17.1535912649, 101.841796349 17.1533417529, 101.84086667 17.1523033626, 101.84086667 17.1523033626))', 0x000000000103000000010000000700000092fc6fc2d07559401670695afd26314045d657ade57559405ade035ad4263140a235ffe2eb7559404b0bda4d30273140fe88ce4ee075594060b2d3c1512731403936cbfddf7559401bd1b5674127314092fc6fc2d07559401670695afd26314092fc6fc2d07559401670695afd263140, '101.84086667 ', '7.1523033626,', 'นานิกรสุข', 11.84, 2, 1, 1, 1, 1, '000', 1, 'นานิกรสุข', 0, 0, 85, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(605, '2023080620044143', '6035100006', 0, 'POLYGON((101.798932905 17.1652526832, 101.799306405 17.1643420832, 101.799780505 17.1636400832, 101.798864405 17.1631652832, 101.798457005 17.1639973832, 101.798303005 17.1636884832, 101.797718605 17.1636310832, 101.797582405 17.1654269832, 101.797745905 17.1654156832, 101.797994605 17.1664906832, 101.799541205 17.1664275832, 101.798932905 17.1652526832, 101.798932905 17.1652526832))', 0x000000000103000000010000000d00000017ab7ab72173594095ebf5ff4d2a3140553d0dd62773594055b3a052122a3140043d929a2f735940a2a80551e4293140775a2b9820735940c42f3333c52931402def68eb197359403d7985bbfb29314081b17c65177359406b130a7de7293140b0f855d20d735940fbf306bae3293140c35512970b7359404eb83a6c592a31408c1fd7440e735940e996a5ae582a314001b7f65712735940c56e27229f2a3140e2d1dfae2b7359400fff82ff9a2a314017ab7ab72173594095ebf5ff4d2a314017ab7ab72173594095ebf5ff4d2a3140, '101.798932905', '17.1652526832', 'ต้นปลาร์ม', 33.66, 2, 1, 1, 1, 1, '000', 1, 'ต้นปลาร์ม', 0, 0, 81, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(606, '2023080620044144', '603493003', 0, 'POLYGON((101.799733259 17.1713936794, 101.799461146 17.1713136506, 101.799264816 17.1712352532, 101.798982171 17.1720494489, 101.79867277 17.1728986951, 101.798489323 17.1733815266, 101.79857083 17.1733644677, 101.798634991 17.1733535317, 101.798785871 17.173019052, 101.799022191 17.1731032286, 101.798978268 17.1732817142, 101.799046264 17.1732907611, 101.799733259 17.1713936794, 101.799733259 17.1713936794))', 0x000000000103000000010000000e0000006d3b68d42e7359409dc3c774e02b3140881f155f2a73594074af1e36db2b314010649d2727735940916ad412d62b31400ea21d86227359400152c46e0b2c3140c4d664741d735940bff9c016432c31405f1ff6721a735940417a52bb622c3140ef98d3c81b735940590f1f9d612c314052f2efd51c7359402f4ca5e5602c3140ec1cc64e1f735940c8ec01fa4a2c3140e4c7f82d2373594044ab417e502c314095d1be7522735940dc7bbf305c2c3140bef7f092237359409a9f87c85c2c31406d3b68d42e7359409dc3c774e02b31406d3b68d42e7359409dc3c774e02b3140, '101.799733259', '17.1713936794', 'ไร่พรทิพย์', 7.1, 2, 1, 1, 1, 1, '000', 1, 'ไร่พรทิพย์', 0, 0, 21, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(607, '2023080620044145', '6216720005', 0, 'POLYGON((101.803721405 17.1769180833, 101.803534805 17.1767567833, 101.803393605 17.1766528833, 101.803412005 17.1765724833, 101.803861905 17.1767730833, 101.804427505 17.1763592833, 101.803818105 17.1756391833, 101.803702105 17.1757034833, 101.803562405 17.1757987833, 101.802534805 17.1768549833, 101.802673105 17.1768413833, 101.802764505 17.1768148833, 101.802784205 17.1768136833, 101.802828305 17.1768129833, 101.802855905 17.1768174833, 101.803453105 17.1771335833, 101.803721405 17.1769180833, 101.803721405 17.1769180833))', 0x00000000010300000001000000120000007e64e72b7073594031d8e5804a2d31400e2b3f1d6d735940a29ebbee3f2d314098d202cd6a7359408284941f392d314015ac2f1a6b735940a225b1da332d31406b1e3479727359402a963300412d3140967e80bd7b735940971ecae1252d3140183a7ec1717359406e2b84b0f62c3140e32cf4da6f73594019914ae7fa2c3140497102916d73594039f32826012d31401c58f1ba5c7359407b68415e462d3140a4d603ff5e73594058da157a452d314056d75f7e6073594035387dbd432d31401a8e00d16073594041425ba9432d3140cd91f889617359401dc89c9d432d314008d8bbfd6173594070221ce9432d31400f7692c66b735940fb4b63a0582d31407e64e72b7073594031d8e5804a2d31407e64e72b7073594031d8e5804a2d3140, '101.803721405', '17.1769180833', 'ห้วยไผ่ใต้', 9.15, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 16, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(608, '2023080620044146', '6034990001', 0, 'POLYGON((101.800124005 17.1630416832, 101.800077105 17.1631342832, 101.799971905 17.1633718832, 101.799911605 17.1634494832, 101.799853805 17.1635606832, 101.799810705 17.1636146832, 101.799210705 17.1632921832, 101.799086405 17.1632228832, 101.798939705 17.1631257832, 101.798981705 17.1630431832, 101.799034105 17.1629947832, 101.799295605 17.1626601832, 101.799434605 17.1625177832, 101.799479605 17.1624611832, 101.799626105 17.1622823832, 101.799755405 17.1621334832, 101.799892705 17.1619520832, 101.799987805 17.1617799832, 101.800083805 17.1617223832, 101.800160205 17.1617412832, 101.800226305 17.1617480832, 101.800271105 17.1617565832, 101.800380305 17.1617783832, 101.800977505 17.1619253832, 101.800694205 17.1621707832, 101.800614305 17.1622749832, 101.800441705 17.1624939832, 101.800209505 17.1629065832, 101.800124005 17.1630416832, 101.800124005 17.1630416832))', 0x000000000103000000010000001e0000000d8e503b35735940923a8919bd29314037109a76347359404e331b2bc3293140686c5cbd32735940106e5fbdd22931409eca71c03173594061e448d3d7293140988303ce307359406341e91cdf293140ce3d3d1930735940497de1a6e2293140a325a8442673594054893a84cd293140ce094e3b24735940864d91f9c8293140db1c00d42173594078fa7f9cc2293140f34429842273594003aeb332bd2931404657f15f237359403a43af06ba293140f0d3c0a82773594093340719a429314001f1c2ef29735940c7dcf3c39a293140d15281ac2a735940a6b65c0e972931402f80f8122d7359409a8f98568b2931408d514b312f7359403aee7794812931402d122c7131735940f2dc14b17529314020eb0c0033735940cefdb8696a2931403122b492347359400ce05aa366293140480226d335735940d0c171e067293140ee5764e836735940e18887526829314029fa4ba437735940b7c122e1682931409a95506e39735940340be14e6a293140a1332737437359407c3c21f1732931409724e8923e735940f135420684293140d32bc8433d7359408ecd71da8a2931401655d86f3a7359400aa4a73499293140187beda136735940a925ef3eb42931400d8e503b35735940923a8919bd2931400d8e503b35735940923a8919bd293140, '101.800124005', '17.1630416832', 'ห้วยไผ่ใต้', 12.24, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 22, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(609, '2023080620044147', '6034920010', 0, 'POLYGON((101.787107248 17.1644628436, 101.787451473 17.1643134986, 101.788511095 17.1637977647, 101.788418694 17.1635485707, 101.788452516 17.1634562129, 101.788377635 17.1633125801, 101.786911054 17.1638775704, 101.786914405 17.1640572227, 101.786962333 17.1642685504, 101.787107248 17.1644628436, 101.787107248 17.1644628436))', 0x000000000103000000010000000b000000b12614f75f7259404eaba63c1a2a314036eedc9a6572594041c70e73102a3140b9633df7767259405e8b7aa6ee2931403e92ae7375725940cc76b251de293140d0aa8a0176725940c8bb3044d829314043ce77c7747259400d8e6edace2931409e722ec05c7259407b6a65e1f32931407c8e3cce5c725940492b76a7ff293140cfda42975d725940b5baf3800d2a3140b12614f75f7259404eaba63c1a2a3140b12614f75f7259404eaba63c1a2a3140, '101.787107248', '17.1644628436', 'หนองขอบด้ง', 6.69, 2, 1, 1, 1, 1, '000', 1, 'หนองขอบด้ง', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(610, '2023080620044148', '6064090102', 0, 'POLYGON((102.027103485 17.1524449419, 102.029767075 17.1524082227, 102.029651069 17.1526071697, 102.029568821 17.1528120364, 102.029395544 17.1530643713, 102.029375947 17.1532321982, 102.029357242 17.1536983072, 102.029398829 17.1539212651, 102.029463151 17.1541337114, 102.029445797 17.1541605714, 102.029280922 17.1542394913, 102.029261756 17.1543802091, 102.029227566 17.1544013983, 102.028579231 17.1543701641, 102.028488375 17.1544067882, 102.028403592 17.1544163864, 102.028357085 17.1545024709, 102.02786384 17.1546524784, 102.027396525 17.154591367, 102.027317236 17.1549643908, 102.027237057 17.155039133, 102.026442581 17.1549732011, 102.026365253 17.1548690239, 102.026605075 17.1543356735, 102.02609618 17.1540516014, 102.026562579 17.1534619348, 102.027202651 17.1533032461, 102.027103485 17.1524449419, 102.027103485 17.1524449419))', 0x000000000103000000010000001d000000b06b4110bc815940b0e6b7a106273140d86729b4e78159405323ac39042731405fe998cde581594023ff72431127314048cb9f74e4815940eec58ab01e2731403308d99de181594093ea043a2f273140dce9a64be181594094f6af393a2731409c9232fde0815940e3dfb2c5582731402046a0abe181594071c34f6267273140db7e69b9e281594092ac914e75273140a8c79f70e2815940e47e341177273140c09816bddf8159409be2423d7c273140c942b36cdf815940f13b1d768527314026074cddde815940b9279cd986273140599ffb3dd4815940a44996cd842731403cbce7c0d28159407299093487273140a7ae4c5dd1815940f48d11d587273140d52b3c9ad0815940acaa53798d2731409f626a85c88159402df9084e972731408ab95addc08159404982c14c932731402dcfca90bf815940d3870ebfab27314079437f40be815940cfd505a5b02731407a27393cb18159401e7bde52ac273140b0d8e2f7af8159405fd0107fa527314017c2c5e5b3815940e449ee8a82273140a2e94f8fab815940d0e8fdec6f2731408e068833b38159409a25074849273140351a30b0bd815940c15eace13e273140b06b4110bc815940b0e6b7a106273140b06b4110bc815940b0e6b7a106273140, '102.027103485', '17.1524449419', 'ซอยอนามัยบ้านผาสุก', 44.55, 2, 1, 1, 1, 1, '000', 1, 'ซอยอนามัยบ้านผาสุก', 0, 0, 42, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(611, '2023080620044149', '6244520504', 0, 'POLYGON((101.843973339 17.1103812493, 101.843881672 17.1103895826, 101.843933339 17.110832916, 101.843948339 17.111017916, 101.844085005 17.1111462493, 101.844115005 17.1113312493, 101.844958339 17.1112612493, 101.845178339 17.111222916, 101.845346672 17.1111395827, 101.845663339 17.1109262493, 101.845675005 17.1108862493, 101.845450005 17.1106362493, 101.845280005 17.110447916, 101.845108339 17.1102262493, 101.845103339 17.110222916, 101.845026672 17.1101445826, 101.844828339 17.110307916, 101.844431672 17.110427916, 101.844320005 17.110432916, 101.843973339 17.1103812493, 101.843973339 17.1103812493))', 0x0000000001030000000100000015000000dc6cc0a803765940cbd50ff2411c3140c3bb4528027659400a16df7d421c314095c0fa0003765940528ac58b5f1c31402fe1e43f03765940767d8eab6b1c314037e11c7d057659400ad1a114741c31406d22f1fa057659402ec46a34801c3140331f24cc137659403c0e039e7b1c3140ba52e3661776594027c9e21a791c31407081ed281a765940d3fcc8a4731c3140981b20591f765940ee02a5a9651c314042610e8a1f765940d1518e0a631c3140327856da1b765940e07e40a8521c3140045c4e1119765940a0218b50461c31403e654941167659407ce797c9371c3140b5af502c16765940617dab91371c3140371fc0ea147659403c19746f321c31404cafe1aa11765940bdb5bb233d1c314095bc232b0b76594012c9ff00451c31405935c65609765940369fe254451c3140dc6cc0a803765940cbd50ff2411c3140dc6cc0a803765940cbd50ff2411c3140, '101.843973339', '17.1103812493', 'ซอยวัดป่าร่องป่าไผ่', 10.19, 2, 1, 1, 1, 1, '000', 1, 'ซอยวัดป่าร่องป่าไผ่', 0, 0, 80, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `tbl_gis_plot` (`id`, `plot_key`, `plot_no`, `farmer_id`, `plot_polygon`, `plot_geometry`, `plot_x`, `plot_y`, `plot_address`, `plot_area`, `cropyear_id`, `cane_type_id`, `cane_owner_id`, `land_rent_space_id`, `land_document_license_type_id`, `plot_deed_no`, `cane_varieties_id`, `plot_waypoint`, `plot_cost_per_rai`, `plot_cost_avg`, `quota_id`, `gis_sta`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(612, '2023080620044150', '6034910009', 0, 'POLYGON((101.876641705 17.1509160136, 101.877737035 17.1525538719, 101.876952721 17.1522218938, 101.876476457 17.1520247863, 101.876253016 17.1518912222, 101.875915936 17.1514685803, 101.876224421 17.1512402457, 101.87603 17.1510583405, 101.876641705 17.1509160136, 101.876641705 17.1509160136))', 0x000000000103000000010000000a0000003852cfe51a785940cdda8e6ea226314008f4f4d72c7859404db042c50d27314053354efe1f7859402f9b9703f8263140daa1b530187859400357ad18eb26314073af87871478594002e6d757e226314093cab6010f78594093c216a5c6263140b309980f14785940d91e45aeb7263140271422e0107859404c3c68c2ab2631403852cfe51a785940cdda8e6ea22631403852cfe51a785940cdda8e6ea2263140, '101.876641705', '17.1509160136', 'กุดรัน ฝ.', 8.77, 2, 1, 1, 1, 1, '000', 1, 'กุดรัน ฝ.', 0, 0, 19, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(613, '2023080620044151', '6034920015', 0, 'POLYGON((101.788681705 17.1636958832, 101.787482205 17.1643091832, 101.787109005 17.1644578832, 101.787454205 17.1649723832, 101.787753305 17.1653964832, 101.788276105 17.1651268832, 101.788660105 17.1648319832, 101.789185505 17.1644056832, 101.789165405 17.1642138832, 101.788961905 17.1639085832, 101.788681705 17.1636958832, 101.788681705 17.1636958832))', 0x000000000103000000010000000c0000006d7bd4c27972594076d530f9e72931400c2ac31b66725940c746a82a102a31402db772fe5f725940d4e96de9192a3140a76452a66572594051964ea13b2a31409e92d68c6a725940a837866c572a31405ecc9e1d73725940cf0863c1452a3140a3a83b6879725940c72dc96d322a3140f29ceb0382725940db9ea87d162a314004679daf81725940a6e4c9eb092a3140f3f0125a7e725940b160b4e9f52931406d7bd4c27972594076d530f9e72931406d7bd4c27972594076d530f9e7293140, '101.788681705', '17.1636958832', 'ห้วยไผ่ใต้', 13.66, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 20, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(614, '2023080620044152', '6034910010', 0, 'POLYGON((101.792671605 17.1690199832, 101.792273905 17.1691738832, 101.792486305 17.1695815832, 101.792676605 17.1694758832, 101.792769605 17.1695683832, 101.793168505 17.1695001832, 101.793393805 17.1693583832, 101.793503905 17.1691105832, 101.793230005 17.1690410832, 101.793180905 17.1688696832, 101.792671605 17.1690199832, 101.792671605 17.1690199832))', 0x000000000103000000010000000c00000057fcae21bb725940e736c4e4442b3140c0dc9b9db47259406baec7fa4e2b31402fa07a18b872594010d9d9b2692b3140e0b1a736bb72594002ce7fc5622b314039afb9bcbc725940944764d5682b31404d4cd545c372594090822f5d642b3140bc54cff6c6725940be252d125b2b31404a4e9ac4c87259406140c8d44a2b3140946bc847c47259404006c446462b314059b2d779c372594040a1260b3b2b314057fcae21bb725940e736c4e4442b314057fcae21bb725940e736c4e4442b3140, '101.792671605', '17.1690199832', 'ห้วยไผ่ใต้', 3.95, 2, 1, 1, 1, 1, '000', 1, 'ห้วยไผ่ใต้', 0, 0, 19, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(615, '2023080620044153', '6064970011', 0, 'POLYGON((101.929961672 17.0744645823, 101.929951672 17.0744895823, 101.929793339 17.0745879156, 101.929630005 17.0747695823, 101.929565005 17.0748479156, 101.929423339 17.0748795823, 101.929150005 17.0746912489, 101.928945005 17.0745662489, 101.928836672 17.0744162489, 101.928816672 17.0743779156, 101.928685005 17.0743012489, 101.928610005 17.0742579156, 101.928555005 17.0742695823, 101.928463339 17.0742829156, 101.928431672 17.0742629156, 101.928408339 17.0740745823, 101.928310005 17.0738645823, 101.928243339 17.0737495823, 101.928130005 17.0735879156, 101.927985005 17.0734112489, 101.927843339 17.0733262489, 101.927775005 17.0732262489, 101.927716672 17.0731312489, 101.927743339 17.0728995823, 101.927770005 17.0726895823, 101.927700005 17.0724995823, 101.927628339 17.0722145823, 101.927738339 17.0722062489, 101.927998339 17.0721595823, 101.928143339 17.0721429156, 101.928341672 17.0721229156, 101.928511672 17.0721279156, 101.928565005 17.0721279156, 101.928628339 17.0722545823, 101.928745005 17.0725795823, 101.928815005 17.0727445823, 101.928890005 17.0728745823, 101.929093339 17.0735362489, 101.929155005 17.0736312489, 101.929368339 17.0738312489, 101.929490005 17.0739462489, 101.929961672 17.0744645823, 101.929961672 17.0744645823))', 0x000000000103000000010000002b00000081f1f57d847b594055b0611c101331406f860454847b594007dfcfbf11133140cbc2ebbb817b5940c62d923118133140be36d90e7f7b5940ceb66e1924133140cafe37fe7d7b5940ffaca53b29133140394907ac7b7b5940dc1ded4e2b13314068239531777b5940a95237f71e1331407c10c0d5737b5940306910c61613314031645e0f727b594006517bf10c1331400d8e7bbb717b5940f10b5b6e0a133140ae303b936f7b5940d4131a6805133140a88da8586e7b59409cf8169102133140c7c0f8716d7b5940eb10d354031331408f227ff16b7b59404e27853404133140e1f3ac6c6b7b5940bfcef9e402133140ad55cf0a6b7b59408071448df612314093015e6e697b5940ab4f0dcae812314008efbf56687b59407912ac40e1123140537a647b667b594000e25aa8d6123140d1e9371b647b59401c2f6114cb123140413407c9617b5940bff65082c51231405c216aaa607b5940f83b98f4be1231406a8cbfb55f7b59405557c2bab81231408f059925607b5940ddde098ca9123140d36b7195607b594008bdd2c89b123140577ed76f5f7b5940c1f326558f12314042b640435e7b5940d645a5a77c1231400650a010607b5940a397d51b7c123140d42f2553647b59404f12e60c7912314056c051b3667b5940dd2347f577123140413030f3697b59404fcbbba5761231406f4c38bc6c7b594072a19ef976123140d82bea9b6d7b594072a19ef97612314034898ea56e7b5940f3f6bb467f12314018b3e38e707b5940fa5554939412314095a07db4717b59408ff091639f1231409a4310ef727b59402bb09be8a7123140ef7be843767b594095188845d3123140f1d88d46777b594038fd5d7fd9123140587c57c57a7b5940c672cf9ae6123140c55ba5c37c7b5940f8af3024ee12314081f1f57d847b594055b0611c1013314081f1f57d847b594055b0611c10133140, '101.929961672', '17.0744645823', 'บ้านหนองไฮ', 20.64, 2, 1, 1, 1, 1, '000', 1, 'บ้านหนองไฮ', 0, 0, 82, 'Y', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(617, '2023082513054047', '000172', 0, 'POLYGON ((101.86582 17.12276, 101.8657 17.12312, 101.86541 17.12304, 101.86552 17.12269, 101.86582 17.12276))', 0x0000000001030000000100000005000000410e4a9869775940c84109336d1f31406c09f9a067775940c87bd5ca841f314068e89fe0627759408f19a88c7f1f31402c82ffad64775940d68ba19c681f3140410e4a9869775940c84109336d1f3140, '101.86561584472656', '17.12290477752686', '172ม4ต.หนองหิน อหนองหิน จ.เลย', 0.84, 2, 1, 2, 1, 4, '', 3, 'อู่สายศรีทองหนองหิน', 10000, 8, 17, 'Y', 'image-1692943551529.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(618, '2023120412570011', '00000', 0, 'POLYGON ((102.60632 17.96304, 102.60608 17.96607, 102.60904 17.96584, 102.60878 17.9639, 102.60632 17.96304))', 0x000000000103000000010000000500000049ba66f2cda6594066bd18ca89f631409fb0c403caa659408fa50f5d50f731402c7de882faa659402c2b4d4a41f731405e9d6340f6a65940499d8026c2f6314049ba66f2cda6594066bd18ca89f63140, '102.60755920410156', '17.96455478668213', 'ลาว', 49.34, 3, 1, 1, 1, 1, '000', 3, 'ลาว', 5000, 246, 0, 'Y', 'image-1701669443133.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(619, '2023112416444275', '0005', 0, 'POLYGON ((101.78766 17.14241, 101.78878 17.14409, 101.78913 17.14388, 101.78918 17.14364, 101.78895 17.14369, 101.78846 17.14278, 101.78919 17.14228, 101.78906 17.14175, 101.78814 17.14222, 101.788 17.14199, 101.78766 17.14241))', 0x000000000103000000010000000b00000083177d0569725940959f54fb742431404aef1b5f7b7259403eae0d15e3243140b8921d1b81725940698cd651d524314011aad4ec81725940bf654e97c5243140780b24287e72594022c32adec8243140118dee2076725940db85e63a8d2431402315c61682725940f8df4a766c2431403ca583f57f7259403f355eba49243140d82ac1e2707259404dd6a88768243140df4f8d976e725940ea5be6745924314083177d0569725940959f54fb74243140, '101.78842544555664', '17.14292049407959', 'ห้วยเป้า', 11.16, 3, 2, 3, 5, 2, '0000', 1, 'รรห้วยเผ้ว', 8000, 89, 0, 'Y', 'image-1702342229029.png', 22, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harvest_carcut`
--

CREATE TABLE `tbl_harvest_carcut` (
  `id` int(11) NOT NULL,
  `harvest_carcut_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_harvest_carcut`
--

INSERT INTO `tbl_harvest_carcut` (`id`, `harvest_carcut_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'CH-09', 80, '2022-05-11 19:33:36', 2, '2022-06-13 21:32:40'),
(2, 'CH-10', 80, '2022-05-11 19:33:42', 2, '2022-06-13 21:32:52'),
(3, 'CH26', 2, '2022-06-13 21:33:19', 0, '2022-06-13 21:33:19'),
(4, 'รถไถตัดอ้อยลำ', 36, '2022-12-06 10:34:16', 0, '2022-12-06 10:34:16'),
(6, 'ทีมตัดอ้อยลำ', 36, '2022-12-06 10:35:20', 77, '2023-12-15 17:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harvest_truck`
--

CREATE TABLE `tbl_harvest_truck` (
  `id` int(11) NOT NULL,
  `harvest_truck_license_plate` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_harvest_truck`
--

INSERT INTO `tbl_harvest_truck` (`id`, `harvest_truck_license_plate`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, '80-4369สว่าง', 80, '2022-05-11 20:26:25', 77, '2023-12-16 12:34:30'),
(3, '70-0912แขก', 36, '2022-12-03 10:59:01', 77, '2023-12-15 17:14:27'),
(4, '70-0983บอย', 36, '2022-12-03 10:59:47', 77, '2023-12-15 17:14:32'),
(5, '70-2146เอี่ยว', 36, '2022-12-03 10:59:54', 77, '2023-12-15 17:14:40'),
(6, '70-0904เขียว', 36, '2022-12-03 11:00:04', 77, '2023-12-15 17:14:49'),
(7, '70-2212กอบ', 36, '2022-12-03 11:00:14', 77, '2023-12-15 17:14:55'),
(8, '70-2216จอม', 36, '2022-12-03 11:00:23', 77, '2023-12-15 17:15:01'),
(9, '70-0978พ่วง', 36, '2022-12-03 11:00:29', 77, '2023-12-15 17:15:07'),
(11, '82-1092เอ', 36, '2022-12-03 11:00:43', 77, '2023-12-15 17:15:14'),
(12, '82-0238เก๋ง', 36, '2022-12-03 11:00:50', 77, '2023-12-15 17:15:21'),
(15, '82-1568', 36, '2022-12-03 11:04:11', 0, '2022-12-03 11:04:11'),
(16, '80-8613', 36, '2022-12-03 11:04:24', 0, '2022-12-03 11:04:24'),
(17, '80-6699', 36, '2022-12-03 11:04:36', 0, '2022-12-03 11:04:36'),
(18, '80-8462', 36, '2022-12-03 11:04:47', 0, '2022-12-03 11:04:47'),
(20, '82-1417เปี่ยม', 36, '2022-12-03 11:05:07', 77, '2023-12-15 17:15:34'),
(21, '81-1194แบงค์', 36, '2022-12-03 11:05:35', 77, '2023-12-15 17:15:42'),
(22, '70-1740', 36, '2022-12-03 11:05:42', 0, '2022-12-03 11:05:42'),
(23, '70-1741', 36, '2022-12-03 11:05:53', 0, '2022-12-03 11:05:53'),
(25, '11234', 77, '2023-12-16 12:34:46', 0, '2023-12-16 12:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `image`, `user_created`, `user_updated`, `created_at`, `updated_at`) VALUES
(1, 'image-1653872282728.jpeg', 1, 0, '2022-05-30 07:58:02', '2022-05-30 07:58:02'),
(2, 'image-1653872701073.jpeg', 1, 0, '2022-05-30 08:05:01', '2022-05-30 08:05:01'),
(3, 'image-1653872761089.jpeg', 1, 0, '2022-05-30 08:06:01', '2022-05-30 08:06:01'),
(4, 'image-1653872930124.jpeg', 1, 0, '2022-05-30 08:08:50', '2022-05-30 08:08:50'),
(5, 'image-1653874223680.jpeg', 1, 0, '2022-05-30 08:30:23', '2022-05-30 08:30:23'),
(6, 'image-1654475326278.png', 1, 0, '2022-06-06 07:28:46', '2022-06-06 07:28:46'),
(7, 'image-1654477007316.png', 1, 0, '2022-06-06 07:56:47', '2022-06-06 07:56:47'),
(8, 'image-1654477028917.png', 1, 0, '2022-06-06 07:57:08', '2022-06-06 07:57:08'),
(9, 'image-1654477223617.png', 1, 0, '2022-06-06 08:00:23', '2022-06-06 08:00:23'),
(10, '', 1, 0, '2022-06-06 09:06:00', '2022-06-06 09:06:00'),
(11, '', 0, 0, '2022-06-06 09:06:05', '2022-06-06 09:06:05'),
(12, '', 0, 0, '2022-06-06 09:07:41', '2022-06-06 09:07:41'),
(13, '', 0, 0, '2022-06-06 09:09:20', '2022-06-06 09:09:20'),
(14, '', 1, 0, '2022-06-06 09:14:37', '2022-06-06 09:14:37'),
(15, '', 0, 0, '2022-06-06 09:38:46', '2022-06-06 09:38:46'),
(16, '', 0, 0, '2022-06-06 09:39:21', '2022-06-06 09:39:21'),
(17, '', 1, 0, '2022-06-06 09:41:41', '2022-06-06 09:41:41'),
(18, '', 1, 0, '2022-06-06 09:42:03', '2022-06-06 09:42:03'),
(19, '', 1, 0, '2022-06-06 09:42:36', '2022-06-06 09:42:36'),
(20, '', 1, 0, '2022-06-06 09:43:05', '2022-06-06 09:43:05'),
(21, '', 1, 0, '2022-06-06 09:43:10', '2022-06-06 09:43:10'),
(22, '', 1, 0, '2022-06-06 09:44:44', '2022-06-06 09:44:44'),
(23, '', 1, 0, '2022-06-06 09:45:23', '2022-06-06 09:45:23'),
(24, '', 1, 0, '2022-06-06 09:50:07', '2022-06-06 09:50:07'),
(25, '', 1, 0, '2022-06-06 09:53:44', '2022-06-06 09:53:44'),
(26, '', 1, 0, '2022-06-06 09:53:45', '2022-06-06 09:53:45'),
(27, '', 1, 0, '2022-06-06 09:53:46', '2022-06-06 09:53:46'),
(28, '', 1, 0, '2022-06-06 09:53:47', '2022-06-06 09:53:47'),
(29, 'image-1654484874503.png', 1, 0, '2022-06-06 10:07:54', '2022-06-06 10:07:54'),
(30, '', 1, 0, '2022-06-06 10:08:16', '2022-06-06 10:08:16'),
(31, 'image-1654484981712.png', 1, 0, '2022-06-06 10:09:41', '2022-06-06 10:09:41'),
(32, 'image-1654487137882.png', 1, 0, '2022-06-06 10:45:37', '2022-06-06 10:45:37'),
(33, 'image-1654487293963.png', 1, 0, '2022-06-06 10:48:13', '2022-06-06 10:48:13'),
(34, 'image-1654487317218.png', 1, 0, '2022-06-06 10:48:37', '2022-06-06 10:48:37'),
(35, 'image-1654507743419.png', 1, 0, '2022-06-06 16:29:03', '2022-06-06 16:29:03'),
(36, 'image-1654507749790.png', 1, 0, '2022-06-06 16:29:09', '2022-06-06 16:29:09'),
(37, 'image-1654508295111.png', 1, 0, '2022-06-06 16:38:15', '2022-06-06 16:38:15'),
(38, 'image-1654508514852.png', 1, 0, '2022-06-06 16:41:54', '2022-06-06 16:41:54'),
(39, 'image-1654510623211.png', 1, 0, '2022-06-06 17:17:03', '2022-06-06 17:17:03'),
(40, 'image-1654510681901.png', 1, 0, '2022-06-06 17:18:01', '2022-06-06 17:18:01'),
(41, 'image-1654510688334.png', 1, 0, '2022-06-06 17:18:08', '2022-06-06 17:18:08'),
(42, 'image-1654510704618.png', 1, 0, '2022-06-06 17:18:24', '2022-06-06 17:18:24'),
(43, 'image-1654510706641.png', 1, 0, '2022-06-06 17:18:26', '2022-06-06 17:18:26'),
(44, 'image-1654511990527.png', 1, 0, '2022-06-06 17:39:50', '2022-06-06 17:39:50'),
(45, 'image-1654513054044.png', 1, 0, '2022-06-06 17:57:34', '2022-06-06 17:57:34'),
(46, 'image-1654513291644.png', 1, 0, '2022-06-06 18:01:31', '2022-06-06 18:01:31'),
(47, 'image-1654513470350.png', 1, 0, '2022-06-06 18:04:30', '2022-06-06 18:04:30'),
(48, 'image-1654513517782.png', 1, 0, '2022-06-06 18:05:17', '2022-06-06 18:05:17'),
(49, 'image-1654513608612.png', 1, 0, '2022-06-06 18:06:48', '2022-06-06 18:06:48'),
(50, 'image-1654514222269.png', 1, 0, '2022-06-06 18:17:02', '2022-06-06 18:17:02'),
(51, 'image-1654514450094.png', 1, 0, '2022-06-06 18:20:50', '2022-06-06 18:20:50'),
(52, 'image-1654514552143.png', 1, 0, '2022-06-06 18:22:32', '2022-06-06 18:22:32'),
(53, 'image-1654518370848.png', 1, 0, '2022-06-06 19:26:10', '2022-06-06 19:26:10'),
(54, 'image-1654789978526.png', 1, 0, '2022-06-09 22:52:58', '2022-06-09 22:52:58'),
(55, 'image-1654789997368.png', 1, 0, '2022-06-09 22:53:17', '2022-06-09 22:53:17'),
(56, 'image-1654790155186.png', 1, 0, '2022-06-09 22:55:55', '2022-06-09 22:55:55'),
(57, 'image-1654832329143.png', 1, 0, '2022-06-10 10:38:49', '2022-06-10 10:38:49'),
(58, 'image-1654835074293.png', 1, 0, '2022-06-10 11:24:34', '2022-06-10 11:24:34'),
(59, 'image-1654846406192.png', 1, 0, '2022-06-10 14:33:26', '2022-06-10 14:33:26'),
(60, 'image-1654849680990.png', 1, 0, '2022-06-10 15:28:01', '2022-06-10 15:28:01'),
(61, 'image-1654855110210.png', 1, 0, '2022-06-10 16:58:30', '2022-06-10 16:58:30'),
(62, 'image-1654870186741.png', 1, 0, '2022-06-10 21:09:46', '2022-06-10 21:09:46'),
(63, 'image-1654872066562.png', 1, 0, '2022-06-10 21:41:06', '2022-06-10 21:41:06'),
(64, 'image-1654872070596.png', 1, 0, '2022-06-10 21:41:10', '2022-06-10 21:41:10'),
(65, 'image-1654872074493.png', 1, 0, '2022-06-10 21:41:14', '2022-06-10 21:41:14'),
(66, 'image-1654876617873.png', 1, 0, '2022-06-10 22:56:57', '2022-06-10 22:56:57'),
(67, 'image-1654920061040.png', 1, 0, '2022-06-11 11:01:01', '2022-06-11 11:01:01'),
(68, 'image-1654920322441.png', 1, 0, '2022-06-11 11:05:22', '2022-06-11 11:05:22'),
(69, 'image-1654920412637.png', 1, 0, '2022-06-11 11:06:52', '2022-06-11 11:06:52'),
(70, 'image-1654920559344.png', 1, 0, '2022-06-11 11:09:19', '2022-06-11 11:09:19'),
(71, 'image-1654920627062.png', 1, 0, '2022-06-11 11:10:27', '2022-06-11 11:10:27'),
(72, 'image-1654920725965.png', 1, 0, '2022-06-11 11:12:05', '2022-06-11 11:12:05'),
(73, 'image-1654920915272.png', 1, 0, '2022-06-11 11:15:15', '2022-06-11 11:15:15'),
(74, 'image-1654920994170.png', 1, 0, '2022-06-11 11:16:34', '2022-06-11 11:16:34'),
(75, 'image-1655102115770.png', 1, 0, '2022-06-13 13:35:15', '2022-06-13 13:35:15'),
(76, 'image-1655102116289.png', 1, 0, '2022-06-13 13:35:16', '2022-06-13 13:35:16'),
(77, 'image-1655174428911.png', 1, 0, '2022-06-14 09:40:28', '2022-06-14 09:40:28'),
(78, 'image-1655210788879.png', 1, 0, '2022-06-14 19:46:28', '2022-06-14 19:46:28'),
(79, 'image-1655296466674.png', 1, 0, '2022-06-15 19:34:26', '2022-06-15 19:34:26'),
(80, 'image-1655303648197.png', 1, 0, '2022-06-15 21:34:08', '2022-06-15 21:34:08'),
(81, 'image-1655303648377.png', 1, 0, '2022-06-15 21:34:08', '2022-06-15 21:34:08'),
(82, 'image-1655630299023.png', 1, 0, '2022-06-19 16:18:19', '2022-06-19 16:18:19'),
(83, 'image-1655630303762.png', 1, 0, '2022-06-19 16:18:23', '2022-06-19 16:18:23'),
(84, 'image-1655724941928.png', 9, 0, '2022-06-20 18:35:42', '2022-06-20 18:35:42'),
(85, 'image-1655735366911.png', 9, 0, '2022-06-20 21:29:26', '2022-06-20 21:29:26'),
(86, 'image-1655735509793.png', 9, 0, '2022-06-20 21:31:49', '2022-06-20 21:31:49'),
(87, 'image-1655735845210.png', 1, 0, '2022-06-20 21:37:25', '2022-06-20 21:37:25'),
(88, 'image-1655736048010.png', 1, 0, '2022-06-20 21:40:48', '2022-06-20 21:40:48'),
(89, 'image-1655796075124.png', 1, 0, '2022-06-21 14:21:15', '2022-06-21 14:21:15'),
(90, 'image-1655796242170.png', 1, 0, '2022-06-21 14:24:02', '2022-06-21 14:24:02'),
(91, 'image-1655857340738.png', 1, 0, '2022-06-22 07:22:20', '2022-06-22 07:22:20'),
(92, 'image-1655862329146.png', 22, 0, '2022-06-22 08:45:29', '2022-06-22 08:45:29'),
(93, 'image-1655862371272.png', 6, 0, '2022-06-22 08:46:11', '2022-06-22 08:46:11'),
(94, 'image-1655874908929.png', 1, 0, '2022-06-22 12:15:08', '2022-06-22 12:15:08'),
(95, 'image-1656766018474.png', 1, 0, '2022-07-02 19:46:58', '2022-07-02 19:46:58'),
(96, 'image-1657210346825.png', 1, 0, '2022-07-07 23:12:26', '2022-07-07 23:12:26'),
(97, 'image-1658917186739.png', 25, 0, '2022-07-27 17:19:46', '2022-07-27 17:19:46'),
(98, 'image-1658917394623.png', 25, 0, '2022-07-27 17:23:14', '2022-07-27 17:23:14'),
(99, 'image-1658994607430.png', 1, 0, '2022-07-28 14:50:07', '2022-07-28 14:50:07'),
(100, 'image-1659007826542.png', 1, 0, '2022-07-28 18:30:26', '2022-07-28 18:30:26'),
(101, 'image-1659008210011.png', 1, 0, '2022-07-28 18:36:50', '2022-07-28 18:36:50'),
(102, 'image-1659008211927.png', 1, 0, '2022-07-28 18:36:51', '2022-07-28 18:36:51'),
(103, 'image-1659021300466.png', 1, 0, '2022-07-28 22:15:00', '2022-07-28 22:15:00'),
(104, 'image-1660055788973.png', 9, 0, '2022-08-09 21:36:28', '2022-08-09 21:36:28'),
(105, 'image-1660733755347.png', 1, 0, '2022-08-17 17:55:55', '2022-08-17 17:55:55'),
(106, 'image-1665578235692.png', 1, 0, '2022-10-12 19:37:15', '2022-10-12 19:37:15'),
(107, 'image-1665578236520.png', 1, 0, '2022-10-12 19:37:16', '2022-10-12 19:37:16'),
(108, 'image-1666611456517.png', 1, 0, '2022-10-24 18:37:36', '2022-10-24 18:37:36'),
(109, 'image-1666611463330.png', 1, 0, '2022-10-24 18:37:43', '2022-10-24 18:37:43'),
(110, 'image-1669537169128.png', 9, 0, '2022-11-27 15:19:29', '2022-11-27 15:19:29'),
(111, 'image-1669537527679.png', 9, 0, '2022-11-27 15:25:27', '2022-11-27 15:25:27'),
(112, 'image-1669556718727.png', 9, 0, '2022-11-27 20:45:18', '2022-11-27 20:45:18'),
(113, 'image-1669559874168.png', 9, 0, '2022-11-27 21:37:54', '2022-11-27 21:37:54'),
(114, 'image-1669559905748.png', 9, 0, '2022-11-27 21:38:25', '2022-11-27 21:38:25'),
(115, 'image-1669565633890.png', 9, 0, '2022-11-27 23:13:53', '2022-11-27 23:13:53'),
(116, 'image-1669684501128.png', 9, 0, '2022-11-29 08:15:01', '2022-11-29 08:15:01'),
(117, 'image-1669684559052.png', 9, 0, '2022-11-29 08:15:59', '2022-11-29 08:15:59'),
(118, 'image-1669866309924.png', 1, 0, '2022-12-01 10:45:09', '2022-12-01 10:45:09'),
(119, 'image-1669889219208.png', 22, 0, '2022-12-01 17:06:59', '2022-12-01 17:06:59'),
(120, 'image-1669889333668.png', 22, 0, '2022-12-01 17:08:53', '2022-12-01 17:08:53'),
(121, 'image-1669894108329.png', 24, 0, '2022-12-01 18:28:28', '2022-12-01 18:28:28'),
(122, 'image-1669949070531.png', 34, 0, '2022-12-02 09:44:30', '2022-12-02 09:44:30'),
(123, 'image-1669953459979.png', 36, 0, '2022-12-02 10:57:39', '2022-12-02 10:57:39'),
(124, 'image-1669953600608.png', 36, 0, '2022-12-02 11:00:00', '2022-12-02 11:00:00'),
(125, 'image-1670040936643.png', 40, 0, '2022-12-03 11:15:36', '2022-12-03 11:15:36'),
(126, 'image-1670041041554.png', 40, 0, '2022-12-03 11:17:21', '2022-12-03 11:17:21'),
(127, 'image-1670041269796.png', 40, 0, '2022-12-03 11:21:09', '2022-12-03 11:21:09'),
(128, 'image-1670041450641.png', 40, 0, '2022-12-03 11:24:10', '2022-12-03 11:24:10'),
(129, 'image-1670041726656.png', 40, 0, '2022-12-03 11:28:46', '2022-12-03 11:28:46'),
(130, 'image-1670043398726.png', 40, 0, '2022-12-03 11:56:38', '2022-12-03 11:56:38'),
(131, 'image-1670151712041.png', 35, 0, '2022-12-04 18:01:52', '2022-12-04 18:01:52'),
(132, 'image-1670241805809.png', 35, 0, '2022-12-05 19:03:25', '2022-12-05 19:03:25'),
(133, 'image-1670243090820.png', 35, 0, '2022-12-05 19:24:50', '2022-12-05 19:24:50'),
(134, 'image-1670245197953.png', 35, 0, '2022-12-05 19:59:57', '2022-12-05 19:59:57'),
(135, 'image-1670297249956.png', 40, 0, '2022-12-06 10:27:29', '2022-12-06 10:27:29'),
(136, 'image-1670297290529.png', 40, 0, '2022-12-06 10:28:10', '2022-12-06 10:28:10'),
(137, 'image-1670297404352.png', 40, 0, '2022-12-06 10:30:04', '2022-12-06 10:30:04'),
(138, 'image-1670312476454.png', 34, 0, '2022-12-06 14:41:16', '2022-12-06 14:41:16'),
(139, 'image-1670325581540.png', 49, 0, '2022-12-06 18:19:41', '2022-12-06 18:19:41'),
(140, 'image-1670325588778.png', 49, 0, '2022-12-06 18:19:48', '2022-12-06 18:19:48'),
(141, 'image-1670327216198.png', 24, 0, '2022-12-06 18:46:56', '2022-12-06 18:46:56'),
(142, 'image-1670327441181.png', 24, 0, '2022-12-06 18:50:41', '2022-12-06 18:50:41'),
(143, 'image-1670327523691.png', 24, 0, '2022-12-06 18:52:03', '2022-12-06 18:52:03'),
(144, 'image-1670327669748.png', 24, 0, '2022-12-06 18:54:29', '2022-12-06 18:54:29'),
(145, 'image-1670327671562.png', 24, 0, '2022-12-06 18:54:31', '2022-12-06 18:54:31'),
(146, 'image-1670327673163.png', 24, 0, '2022-12-06 18:54:33', '2022-12-06 18:54:33'),
(147, 'image-1670327760442.png', 24, 0, '2022-12-06 18:56:00', '2022-12-06 18:56:00'),
(148, 'image-1670327760826.png', 24, 0, '2022-12-06 18:56:00', '2022-12-06 18:56:00'),
(149, 'image-1670331931506.png', 49, 0, '2022-12-06 20:05:31', '2022-12-06 20:05:31'),
(150, 'image-1670331934958.png', 49, 0, '2022-12-06 20:05:34', '2022-12-06 20:05:34'),
(151, 'image-1670332477692.png', 34, 0, '2022-12-06 20:14:37', '2022-12-06 20:14:37'),
(152, 'image-1670335577313.png', 34, 0, '2022-12-06 21:06:17', '2022-12-06 21:06:17'),
(153, 'image-1670335602786.png', 24, 0, '2022-12-06 21:06:42', '2022-12-06 21:06:42'),
(154, 'image-1670335604348.png', 24, 0, '2022-12-06 21:06:44', '2022-12-06 21:06:44'),
(155, 'image-1670337282814.png', 1, 0, '2022-12-06 21:34:42', '2022-12-06 21:34:42'),
(156, 'image-1670374329259.png', 34, 0, '2022-12-07 07:52:09', '2022-12-07 07:52:09'),
(157, 'image-1670374481899.png', 49, 0, '2022-12-07 07:54:41', '2022-12-07 07:54:41'),
(158, 'image-1670377806535.png', 34, 0, '2022-12-07 08:50:06', '2022-12-07 08:50:06'),
(159, 'image-1670379689515.png', 22, 0, '2022-12-07 09:21:29', '2022-12-07 09:21:29'),
(160, 'image-1670379785161.png', 22, 0, '2022-12-07 09:23:05', '2022-12-07 09:23:05'),
(161, 'image-1670380243480.png', 40, 0, '2022-12-07 09:30:43', '2022-12-07 09:30:43'),
(162, 'image-1670381658841.png', 43, 0, '2022-12-07 09:54:18', '2022-12-07 09:54:18'),
(163, 'image-1670381803382.png', 43, 0, '2022-12-07 09:56:43', '2022-12-07 09:56:43'),
(164, 'image-1670382243492.png', 43, 0, '2022-12-07 10:04:03', '2022-12-07 10:04:03'),
(165, 'image-1670382309155.png', 43, 0, '2022-12-07 10:05:09', '2022-12-07 10:05:09'),
(166, 'image-1670382627423.png', 34, 0, '2022-12-07 10:10:27', '2022-12-07 10:10:27'),
(167, 'image-1670390911917.png', 34, 0, '2022-12-07 12:28:31', '2022-12-07 12:28:31'),
(168, 'image-1670392264615.png', 48, 0, '2022-12-07 12:51:04', '2022-12-07 12:51:04'),
(169, 'image-1670392308616.png', 48, 0, '2022-12-07 12:51:48', '2022-12-07 12:51:48'),
(170, 'image-1670392403271.png', 48, 0, '2022-12-07 12:53:23', '2022-12-07 12:53:23'),
(171, 'image-1670392688244.png', 48, 0, '2022-12-07 12:58:08', '2022-12-07 12:58:08'),
(172, 'image-1670394232789.png', 34, 0, '2022-12-07 13:23:52', '2022-12-07 13:23:52'),
(173, 'image-1670397558010.png', 59, 0, '2022-12-07 14:19:18', '2022-12-07 14:19:18'),
(174, 'image-1670398824019.png', 34, 0, '2022-12-07 14:40:24', '2022-12-07 14:40:24'),
(175, 'image-1670399450399.png', 52, 0, '2022-12-07 14:50:50', '2022-12-07 14:50:50'),
(176, 'image-1670399594921.png', 59, 0, '2022-12-07 14:53:14', '2022-12-07 14:53:14'),
(177, 'image-1670417242064.png', 35, 0, '2022-12-07 19:47:22', '2022-12-07 19:47:22'),
(178, 'image-1670421956674.png', 34, 0, '2022-12-07 21:05:56', '2022-12-07 21:05:56'),
(179, 'image-1670426391942.png', 34, 0, '2022-12-07 22:19:51', '2022-12-07 22:19:51'),
(180, 'image-1670426394092.png', 34, 0, '2022-12-07 22:19:54', '2022-12-07 22:19:54'),
(181, 'image-1670461171279.png', 34, 0, '2022-12-08 07:59:31', '2022-12-08 07:59:31'),
(182, 'image-1670465248958.png', 34, 0, '2022-12-08 09:07:28', '2022-12-08 09:07:28'),
(183, 'image-1670490245580.png', 9, 0, '2022-12-08 16:04:05', '2022-12-08 16:04:05'),
(184, 'image-1670501329276.png', 34, 0, '2022-12-08 19:08:49', '2022-12-08 19:08:49'),
(185, 'image-1670501329282.png', 34, 0, '2022-12-08 19:08:49', '2022-12-08 19:08:49'),
(186, 'image-1670544703178.png', 34, 0, '2022-12-09 07:11:43', '2022-12-09 07:11:43'),
(187, 'image-1670551337230.png', 34, 0, '2022-12-09 09:02:17', '2022-12-09 09:02:17'),
(188, 'image-1670552217372.png', 1, 0, '2022-12-09 09:16:57', '2022-12-09 09:16:57'),
(189, 'image-1670553341120.png', 1, 0, '2022-12-09 09:35:41', '2022-12-09 09:35:41'),
(190, 'image-1670553342690.png', 1, 0, '2022-12-09 09:35:42', '2022-12-09 09:35:42'),
(191, 'image-1670553997085.png', 35, 0, '2022-12-09 09:46:37', '2022-12-09 09:46:37'),
(192, 'image-1670554233338.png', 34, 0, '2022-12-09 09:50:33', '2022-12-09 09:50:33'),
(193, 'image-1670558726522.png', 1, 0, '2022-12-09 11:05:26', '2022-12-09 11:05:26'),
(194, 'image-1670560447166.png', 1, 0, '2022-12-09 11:34:07', '2022-12-09 11:34:07'),
(195, 'image-1670562428664.png', 34, 0, '2022-12-09 12:07:08', '2022-12-09 12:07:08'),
(196, 'image-1670567743380.png', 34, 0, '2022-12-09 13:35:43', '2022-12-09 13:35:43'),
(197, 'image-1670570345746.png', 34, 0, '2022-12-09 14:19:05', '2022-12-09 14:19:05'),
(198, 'image-1670573642505.png', 34, 0, '2022-12-09 15:14:02', '2022-12-09 15:14:02'),
(199, 'image-1670573645481.png', 34, 0, '2022-12-09 15:14:05', '2022-12-09 15:14:05'),
(200, 'image-1670573646916.png', 34, 0, '2022-12-09 15:14:06', '2022-12-09 15:14:06'),
(201, 'image-1670573648178.png', 34, 0, '2022-12-09 15:14:08', '2022-12-09 15:14:08'),
(202, 'image-1670574532444.png', 1, 0, '2022-12-09 15:28:52', '2022-12-09 15:28:52'),
(203, 'image-1670574532613.png', 1, 0, '2022-12-09 15:28:52', '2022-12-09 15:28:52'),
(204, 'image-1670575472199.png', 1, 0, '2022-12-09 15:44:32', '2022-12-09 15:44:32'),
(205, 'image-1670578204440.png', 34, 0, '2022-12-09 16:30:04', '2022-12-09 16:30:04'),
(206, 'image-1670579147763.png', 50, 0, '2022-12-09 16:45:47', '2022-12-09 16:45:47'),
(207, 'image-1670579243437.png', 50, 0, '2022-12-09 16:47:23', '2022-12-09 16:47:23'),
(208, 'image-1670579245466.png', 50, 0, '2022-12-09 16:47:25', '2022-12-09 16:47:25'),
(209, 'image-1670579248047.png', 50, 0, '2022-12-09 16:47:28', '2022-12-09 16:47:28'),
(210, 'image-1670579315285.png', 50, 0, '2022-12-09 16:48:35', '2022-12-09 16:48:35'),
(211, 'image-1670579372506.png', 50, 0, '2022-12-09 16:49:32', '2022-12-09 16:49:32'),
(212, 'image-1670579377615.png', 50, 0, '2022-12-09 16:49:37', '2022-12-09 16:49:37'),
(213, 'image-1670579457711.png', 50, 0, '2022-12-09 16:50:57', '2022-12-09 16:50:57'),
(214, 'image-1670579552991.png', 50, 0, '2022-12-09 16:52:32', '2022-12-09 16:52:32'),
(215, 'image-1670579592526.png', 50, 0, '2022-12-09 16:53:12', '2022-12-09 16:53:12'),
(216, 'image-1670579644017.png', 50, 0, '2022-12-09 16:54:04', '2022-12-09 16:54:04'),
(217, 'image-1670579698663.png', 50, 0, '2022-12-09 16:54:58', '2022-12-09 16:54:58'),
(218, 'image-1670579748561.png', 50, 0, '2022-12-09 16:55:48', '2022-12-09 16:55:48'),
(219, 'image-1670579830288.png', 50, 0, '2022-12-09 16:57:10', '2022-12-09 16:57:10'),
(220, 'image-1670579926428.png', 50, 0, '2022-12-09 16:58:46', '2022-12-09 16:58:46'),
(221, 'image-1670579968206.png', 50, 0, '2022-12-09 16:59:28', '2022-12-09 16:59:28'),
(222, 'image-1670580116113.png', 50, 0, '2022-12-09 17:01:56', '2022-12-09 17:01:56'),
(223, 'image-1670580181362.png', 50, 0, '2022-12-09 17:03:01', '2022-12-09 17:03:01'),
(224, 'image-1670580547206.png', 50, 0, '2022-12-09 17:09:07', '2022-12-09 17:09:07'),
(225, 'image-1670630410825.png', 22, 0, '2022-12-10 07:00:10', '2022-12-10 07:00:10'),
(226, 'image-1670635645079.png', 34, 0, '2022-12-10 08:27:25', '2022-12-10 08:27:25'),
(227, 'image-1670638140577.png', 34, 0, '2022-12-10 09:09:00', '2022-12-10 09:09:00'),
(228, 'image-1670640208454.png', 34, 0, '2022-12-10 09:43:28', '2022-12-10 09:43:28'),
(229, 'image-1670646221346.png', 50, 0, '2022-12-10 11:23:41', '2022-12-10 11:23:41'),
(230, 'image-1670646373365.png', 50, 0, '2022-12-10 11:26:13', '2022-12-10 11:26:13'),
(231, 'image-1670646414675.png', 50, 0, '2022-12-10 11:26:54', '2022-12-10 11:26:54'),
(232, 'image-1670646462244.png', 50, 0, '2022-12-10 11:27:42', '2022-12-10 11:27:42'),
(233, 'image-1670646522523.png', 50, 0, '2022-12-10 11:28:42', '2022-12-10 11:28:42'),
(234, 'image-1670646565563.png', 50, 0, '2022-12-10 11:29:25', '2022-12-10 11:29:25'),
(235, 'image-1670646724877.png', 50, 0, '2022-12-10 11:32:04', '2022-12-10 11:32:04'),
(236, 'image-1670646771083.png', 50, 0, '2022-12-10 11:32:51', '2022-12-10 11:32:51'),
(237, 'image-1670647299720.png', 34, 0, '2022-12-10 11:41:39', '2022-12-10 11:41:39'),
(238, 'image-1670648611227.png', 50, 0, '2022-12-10 12:03:31', '2022-12-10 12:03:31'),
(239, 'image-1670648653730.png', 50, 0, '2022-12-10 12:04:13', '2022-12-10 12:04:13'),
(240, 'image-1670648694425.png', 50, 0, '2022-12-10 12:04:54', '2022-12-10 12:04:54'),
(241, 'image-1670648790328.png', 50, 0, '2022-12-10 12:06:30', '2022-12-10 12:06:30'),
(242, 'image-1670649042665.png', 50, 0, '2022-12-10 12:10:42', '2022-12-10 12:10:42'),
(243, 'image-1670649084495.png', 50, 0, '2022-12-10 12:11:24', '2022-12-10 12:11:24'),
(244, 'image-1670649141967.png', 50, 0, '2022-12-10 12:12:21', '2022-12-10 12:12:21'),
(245, 'image-1670649186179.png', 50, 0, '2022-12-10 12:13:06', '2022-12-10 12:13:06'),
(246, 'image-1670649592411.png', 50, 0, '2022-12-10 12:19:52', '2022-12-10 12:19:52'),
(247, 'image-1670649679935.png', 50, 0, '2022-12-10 12:21:19', '2022-12-10 12:21:19'),
(248, 'image-1670649721302.png', 50, 0, '2022-12-10 12:22:01', '2022-12-10 12:22:01'),
(249, 'image-1670649787709.png', 50, 0, '2022-12-10 12:23:07', '2022-12-10 12:23:07'),
(250, 'image-1670649857113.png', 50, 0, '2022-12-10 12:24:17', '2022-12-10 12:24:17'),
(251, 'image-1670649903817.png', 50, 0, '2022-12-10 12:25:03', '2022-12-10 12:25:03'),
(252, 'image-1670649970797.png', 34, 0, '2022-12-10 12:26:10', '2022-12-10 12:26:10'),
(253, 'image-1670650028085.png', 50, 0, '2022-12-10 12:27:08', '2022-12-10 12:27:08'),
(254, 'image-1670650471540.png', 50, 0, '2022-12-10 12:34:31', '2022-12-10 12:34:31'),
(255, 'image-1670650578351.png', 50, 0, '2022-12-10 12:36:18', '2022-12-10 12:36:18'),
(256, 'image-1670650622012.png', 50, 0, '2022-12-10 12:37:02', '2022-12-10 12:37:02'),
(257, 'image-1670650661574.png', 50, 0, '2022-12-10 12:37:41', '2022-12-10 12:37:41'),
(258, 'image-1670650698901.png', 50, 0, '2022-12-10 12:38:18', '2022-12-10 12:38:18'),
(259, 'image-1670650858876.png', 50, 0, '2022-12-10 12:40:58', '2022-12-10 12:40:58'),
(260, 'image-1670650921500.png', 50, 0, '2022-12-10 12:42:01', '2022-12-10 12:42:01'),
(261, 'image-1670651113902.png', 50, 0, '2022-12-10 12:45:13', '2022-12-10 12:45:13'),
(262, 'image-1670651177722.png', 50, 0, '2022-12-10 12:46:17', '2022-12-10 12:46:17'),
(263, 'image-1670651211616.png', 50, 0, '2022-12-10 12:46:51', '2022-12-10 12:46:51'),
(264, 'image-1670651330631.png', 50, 0, '2022-12-10 12:48:50', '2022-12-10 12:48:50'),
(265, 'image-1670651385375.png', 50, 0, '2022-12-10 12:49:45', '2022-12-10 12:49:45'),
(266, 'image-1670651422648.png', 50, 0, '2022-12-10 12:50:22', '2022-12-10 12:50:22'),
(267, 'image-1670651501240.png', 50, 0, '2022-12-10 12:51:41', '2022-12-10 12:51:41'),
(268, 'image-1670651538014.png', 50, 0, '2022-12-10 12:52:18', '2022-12-10 12:52:18'),
(269, 'image-1670651628911.png', 50, 0, '2022-12-10 12:53:48', '2022-12-10 12:53:48'),
(270, 'image-1670651668927.png', 50, 0, '2022-12-10 12:54:28', '2022-12-10 12:54:28'),
(271, 'image-1670651725073.png', 50, 0, '2022-12-10 12:55:25', '2022-12-10 12:55:25'),
(272, 'image-1670651755066.png', 50, 0, '2022-12-10 12:55:55', '2022-12-10 12:55:55'),
(273, 'image-1670651809853.png', 50, 0, '2022-12-10 12:56:49', '2022-12-10 12:56:49'),
(274, 'image-1670651850320.png', 50, 0, '2022-12-10 12:57:30', '2022-12-10 12:57:30'),
(275, 'image-1670651887576.png', 50, 0, '2022-12-10 12:58:07', '2022-12-10 12:58:07'),
(276, 'image-1670651919315.png', 50, 0, '2022-12-10 12:58:39', '2022-12-10 12:58:39'),
(277, 'image-1670651947901.png', 50, 0, '2022-12-10 12:59:07', '2022-12-10 12:59:07'),
(278, 'image-1670651982742.png', 50, 0, '2022-12-10 12:59:42', '2022-12-10 12:59:42'),
(279, 'image-1670652014346.png', 50, 0, '2022-12-10 13:00:14', '2022-12-10 13:00:14'),
(280, 'image-1670652083234.png', 50, 0, '2022-12-10 13:01:23', '2022-12-10 13:01:23'),
(281, 'image-1670652127398.png', 50, 0, '2022-12-10 13:02:07', '2022-12-10 13:02:07'),
(282, 'image-1670654774875.png', 50, 0, '2022-12-10 13:46:14', '2022-12-10 13:46:14'),
(283, 'image-1670655264014.png', 34, 0, '2022-12-10 13:54:24', '2022-12-10 13:54:24'),
(284, 'image-1670655315421.png', 34, 0, '2022-12-10 13:55:15', '2022-12-10 13:55:15'),
(285, 'image-1670656083369.png', 50, 0, '2022-12-10 14:08:03', '2022-12-10 14:08:03'),
(286, 'image-1670659497982.png', 50, 0, '2022-12-10 15:04:57', '2022-12-10 15:04:57'),
(287, 'image-1670659500573.png', 50, 0, '2022-12-10 15:05:00', '2022-12-10 15:05:00'),
(288, 'image-1670663374266.png', 50, 0, '2022-12-10 16:09:34', '2022-12-10 16:09:34'),
(289, 'image-1670663435119.png', 50, 0, '2022-12-10 16:10:35', '2022-12-10 16:10:35'),
(290, 'image-1670663784666.png', 50, 0, '2022-12-10 16:16:24', '2022-12-10 16:16:24'),
(291, 'image-1670663833932.png', 50, 0, '2022-12-10 16:17:13', '2022-12-10 16:17:13'),
(292, 'image-1670665941579.png', 34, 0, '2022-12-10 16:52:21', '2022-12-10 16:52:21'),
(293, 'image-1670672093688.png', 34, 0, '2022-12-10 18:34:53', '2022-12-10 18:34:53'),
(294, 'image-1670720669964.png', 34, 0, '2022-12-11 08:04:29', '2022-12-11 08:04:29'),
(295, 'image-1670728739653.png', 50, 0, '2022-12-11 10:18:59', '2022-12-11 10:18:59'),
(296, 'image-1670729032273.png', 35, 0, '2022-12-11 10:23:52', '2022-12-11 10:23:52'),
(297, 'image-1670741516729.png', 50, 0, '2022-12-11 13:51:56', '2022-12-11 13:51:56'),
(298, 'image-1670741884155.png', 50, 0, '2022-12-11 13:58:04', '2022-12-11 13:58:04'),
(299, 'image-1670743843187.png', 34, 0, '2022-12-11 14:30:43', '2022-12-11 14:30:43'),
(300, 'image-1670743885901.png', 34, 0, '2022-12-11 14:31:25', '2022-12-11 14:31:25'),
(301, 'image-1670743887396.png', 34, 0, '2022-12-11 14:31:27', '2022-12-11 14:31:27'),
(302, 'image-1670743888898.png', 34, 0, '2022-12-11 14:31:28', '2022-12-11 14:31:28'),
(303, 'image-1670743890747.png', 34, 0, '2022-12-11 14:31:30', '2022-12-11 14:31:30'),
(304, 'image-1670743891336.png', 34, 0, '2022-12-11 14:31:31', '2022-12-11 14:31:31'),
(305, 'image-1670744584337.png', 50, 0, '2022-12-11 14:43:04', '2022-12-11 14:43:04'),
(306, 'image-1670744638758.png', 50, 0, '2022-12-11 14:43:58', '2022-12-11 14:43:58'),
(307, 'image-1670745028813.png', 34, 0, '2022-12-11 14:50:28', '2022-12-11 14:50:28'),
(308, 'image-1670745030982.png', 34, 0, '2022-12-11 14:50:30', '2022-12-11 14:50:30'),
(309, 'image-1670747135184.png', 50, 0, '2022-12-11 15:25:35', '2022-12-11 15:25:35'),
(310, 'image-1670747931985.png', 50, 0, '2022-12-11 15:38:51', '2022-12-11 15:38:51'),
(311, 'image-1670750071957.png', 34, 0, '2022-12-11 16:14:31', '2022-12-11 16:14:31'),
(312, 'image-1670752366778.png', 50, 0, '2022-12-11 16:52:46', '2022-12-11 16:52:46'),
(313, 'image-1670752738550.png', 50, 0, '2022-12-11 16:58:58', '2022-12-11 16:58:58'),
(314, 'image-1670755684934.png', 63, 0, '2022-12-11 17:48:04', '2022-12-11 17:48:04'),
(315, 'image-1670802224890.png', 34, 0, '2022-12-12 06:43:44', '2022-12-12 06:43:44'),
(316, 'image-1670804902889.png', 34, 0, '2022-12-12 07:28:22', '2022-12-12 07:28:22'),
(317, 'image-1670811905250.png', 34, 0, '2022-12-12 09:25:05', '2022-12-12 09:25:05'),
(318, 'image-1670811944792.png', 34, 0, '2022-12-12 09:25:44', '2022-12-12 09:25:44'),
(319, 'image-1670813965364.png', 34, 0, '2022-12-12 09:59:25', '2022-12-12 09:59:25'),
(320, 'image-1670815500004.png', 50, 0, '2022-12-12 10:25:00', '2022-12-12 10:25:00'),
(321, 'image-1670815555911.png', 50, 0, '2022-12-12 10:25:55', '2022-12-12 10:25:55'),
(322, 'image-1670816506886.png', 34, 0, '2022-12-12 10:41:46', '2022-12-12 10:41:46'),
(323, 'image-1670819533962.png', 34, 0, '2022-12-12 11:32:13', '2022-12-12 11:32:13'),
(324, 'image-1670821058116.png', 63, 0, '2022-12-12 11:57:38', '2022-12-12 11:57:38'),
(325, 'image-1670821616869.png', 34, 0, '2022-12-12 12:06:56', '2022-12-12 12:06:56'),
(326, 'image-1670821687717.png', 50, 0, '2022-12-12 12:08:07', '2022-12-12 12:08:07'),
(327, 'image-1670823502921.png', 34, 0, '2022-12-12 12:38:22', '2022-12-12 12:38:22'),
(328, 'image-1670826838271.png', 34, 0, '2022-12-12 13:33:58', '2022-12-12 13:33:58'),
(329, 'image-1670827949957.png', 50, 0, '2022-12-12 13:52:29', '2022-12-12 13:52:29'),
(330, 'image-1670828033848.png', 50, 0, '2022-12-12 13:53:53', '2022-12-12 13:53:53'),
(331, 'image-1670828324666.png', 50, 0, '2022-12-12 13:58:44', '2022-12-12 13:58:44'),
(332, 'image-1670830705722.png', 35, 0, '2022-12-12 14:38:25', '2022-12-12 14:38:25'),
(333, 'image-1670834399226.png', 34, 0, '2022-12-12 15:39:59', '2022-12-12 15:39:59'),
(334, 'image-1670834423607.png', 34, 0, '2022-12-12 15:40:23', '2022-12-12 15:40:23'),
(335, 'image-1670834426076.png', 34, 0, '2022-12-12 15:40:26', '2022-12-12 15:40:26'),
(336, 'image-1670837049661.png', 34, 0, '2022-12-12 16:24:09', '2022-12-12 16:24:09'),
(337, 'image-1670837052024.png', 34, 0, '2022-12-12 16:24:12', '2022-12-12 16:24:12'),
(338, 'image-1670838027096.png', 35, 0, '2022-12-12 16:40:27', '2022-12-12 16:40:27'),
(339, 'image-1670839478467.png', 34, 0, '2022-12-12 17:04:38', '2022-12-12 17:04:38'),
(340, 'image-1670841752447.png', 34, 0, '2022-12-12 17:42:32', '2022-12-12 17:42:32'),
(341, 'image-1670843519992.png', 22, 0, '2022-12-12 18:11:59', '2022-12-12 18:11:59'),
(342, 'image-1670843623260.png', 22, 0, '2022-12-12 18:13:43', '2022-12-12 18:13:43'),
(343, 'image-1670843623308.png', 22, 0, '2022-12-12 18:13:43', '2022-12-12 18:13:43'),
(344, 'image-1670843623504.png', 22, 0, '2022-12-12 18:13:43', '2022-12-12 18:13:43'),
(345, 'image-1670849945928.png', 22, 0, '2022-12-12 19:59:05', '2022-12-12 19:59:05'),
(346, 'image-1670849947510.png', 22, 0, '2022-12-12 19:59:07', '2022-12-12 19:59:07'),
(347, 'image-1670850454560.png', 22, 0, '2022-12-12 20:07:34', '2022-12-12 20:07:34'),
(348, 'image-1670850521896.png', 22, 0, '2022-12-12 20:08:41', '2022-12-12 20:08:41'),
(349, 'image-1670850592843.png', 22, 0, '2022-12-12 20:09:52', '2022-12-12 20:09:52'),
(350, 'image-1670889977372.png', 35, 0, '2022-12-13 07:06:17', '2022-12-13 07:06:17'),
(351, 'image-1670890104189.png', 35, 0, '2022-12-13 07:08:24', '2022-12-13 07:08:24'),
(352, 'image-1670904645311.png', 50, 0, '2022-12-13 11:10:45', '2022-12-13 11:10:45'),
(353, 'image-1670904692237.png', 50, 0, '2022-12-13 11:11:32', '2022-12-13 11:11:32'),
(354, 'image-1670904734079.png', 50, 0, '2022-12-13 11:12:14', '2022-12-13 11:12:14'),
(355, 'image-1670904771165.png', 50, 0, '2022-12-13 11:12:51', '2022-12-13 11:12:51'),
(356, 'image-1670904811582.png', 50, 0, '2022-12-13 11:13:31', '2022-12-13 11:13:31'),
(357, 'image-1670904851623.png', 50, 0, '2022-12-13 11:14:11', '2022-12-13 11:14:11'),
(358, 'image-1670904896123.png', 50, 0, '2022-12-13 11:14:56', '2022-12-13 11:14:56'),
(359, 'image-1670904939845.png', 50, 0, '2022-12-13 11:15:39', '2022-12-13 11:15:39'),
(360, 'image-1670904981559.png', 50, 0, '2022-12-13 11:16:21', '2022-12-13 11:16:21'),
(361, 'image-1670905026524.png', 50, 0, '2022-12-13 11:17:06', '2022-12-13 11:17:06'),
(362, 'image-1670905070819.png', 50, 0, '2022-12-13 11:17:50', '2022-12-13 11:17:50'),
(363, 'image-1670905166768.png', 50, 0, '2022-12-13 11:19:26', '2022-12-13 11:19:26'),
(364, 'image-1670905225838.png', 50, 0, '2022-12-13 11:20:25', '2022-12-13 11:20:25'),
(365, 'image-1670905797815.png', 50, 0, '2022-12-13 11:29:57', '2022-12-13 11:29:57'),
(366, 'image-1670905845230.png', 50, 0, '2022-12-13 11:30:45', '2022-12-13 11:30:45'),
(367, 'image-1670905909637.png', 50, 0, '2022-12-13 11:31:49', '2022-12-13 11:31:49'),
(368, 'image-1670905961127.png', 50, 0, '2022-12-13 11:32:41', '2022-12-13 11:32:41'),
(369, 'image-1670906008166.png', 50, 0, '2022-12-13 11:33:28', '2022-12-13 11:33:28'),
(370, 'image-1670906078825.png', 50, 0, '2022-12-13 11:34:38', '2022-12-13 11:34:38'),
(371, 'image-1670906198653.png', 50, 0, '2022-12-13 11:36:38', '2022-12-13 11:36:38'),
(372, 'image-1670906276083.png', 50, 0, '2022-12-13 11:37:56', '2022-12-13 11:37:56'),
(373, 'image-1670906334992.png', 50, 0, '2022-12-13 11:38:54', '2022-12-13 11:38:54'),
(374, 'image-1670906374365.png', 50, 0, '2022-12-13 11:39:34', '2022-12-13 11:39:34'),
(375, 'image-1670909474145.png', 34, 0, '2022-12-13 12:31:14', '2022-12-13 12:31:14'),
(376, 'image-1670914210657.png', 50, 0, '2022-12-13 13:50:10', '2022-12-13 13:50:10'),
(377, 'image-1670914256824.png', 50, 0, '2022-12-13 13:50:56', '2022-12-13 13:50:56'),
(378, 'image-1670914385574.png', 50, 0, '2022-12-13 13:53:05', '2022-12-13 13:53:05'),
(379, 'image-1670914420330.png', 50, 0, '2022-12-13 13:53:40', '2022-12-13 13:53:40'),
(380, 'image-1670914429334.png', 50, 0, '2022-12-13 13:53:49', '2022-12-13 13:53:49'),
(381, 'image-1670914506884.png', 50, 0, '2022-12-13 13:55:06', '2022-12-13 13:55:06'),
(382, 'image-1670914512849.png', 50, 0, '2022-12-13 13:55:12', '2022-12-13 13:55:12'),
(383, 'image-1670914553226.png', 50, 0, '2022-12-13 13:55:53', '2022-12-13 13:55:53'),
(384, 'image-1670914592362.png', 50, 0, '2022-12-13 13:56:32', '2022-12-13 13:56:32'),
(385, 'image-1670914668103.png', 50, 0, '2022-12-13 13:57:48', '2022-12-13 13:57:48'),
(386, 'image-1670917632541.png', 50, 0, '2022-12-13 14:47:12', '2022-12-13 14:47:12'),
(387, 'image-1670917683177.png', 50, 0, '2022-12-13 14:48:03', '2022-12-13 14:48:03'),
(388, 'image-1670917727081.png', 50, 0, '2022-12-13 14:48:47', '2022-12-13 14:48:47'),
(389, 'image-1670917768360.png', 50, 0, '2022-12-13 14:49:28', '2022-12-13 14:49:28'),
(390, 'image-1670917813931.png', 50, 0, '2022-12-13 14:50:13', '2022-12-13 14:50:13'),
(391, 'image-1670917851373.png', 50, 0, '2022-12-13 14:50:51', '2022-12-13 14:50:51'),
(392, 'image-1670917893974.png', 50, 0, '2022-12-13 14:51:33', '2022-12-13 14:51:33'),
(393, 'image-1670917966044.png', 50, 0, '2022-12-13 14:52:46', '2022-12-13 14:52:46'),
(394, 'image-1670918008564.png', 50, 0, '2022-12-13 14:53:28', '2022-12-13 14:53:28'),
(395, 'image-1670918065684.png', 50, 0, '2022-12-13 14:54:25', '2022-12-13 14:54:25'),
(396, 'image-1670918178723.png', 50, 0, '2022-12-13 14:56:18', '2022-12-13 14:56:18'),
(397, 'image-1670922168275.png', 35, 0, '2022-12-13 16:02:48', '2022-12-13 16:02:48'),
(398, 'image-1670934130159.png', 22, 0, '2022-12-13 19:22:10', '2022-12-13 19:22:10'),
(399, 'image-1670934131556.png', 22, 0, '2022-12-13 19:22:11', '2022-12-13 19:22:11'),
(400, 'image-1670934133773.png', 22, 0, '2022-12-13 19:22:13', '2022-12-13 19:22:13'),
(401, 'image-1670935127430.png', 22, 0, '2022-12-13 19:38:47', '2022-12-13 19:38:47'),
(402, 'image-1670935128529.png', 22, 0, '2022-12-13 19:38:48', '2022-12-13 19:38:48'),
(403, 'image-1670935199146.png', 22, 0, '2022-12-13 19:39:59', '2022-12-13 19:39:59'),
(404, 'image-1670980035107.png', 35, 0, '2022-12-14 08:07:15', '2022-12-14 08:07:15'),
(405, 'image-1670991366695.png', 50, 0, '2022-12-14 11:16:06', '2022-12-14 11:16:06'),
(406, 'image-1670991445424.png', 50, 0, '2022-12-14 11:17:25', '2022-12-14 11:17:25'),
(407, 'image-1670991493368.png', 50, 0, '2022-12-14 11:18:13', '2022-12-14 11:18:13'),
(408, 'image-1670991529321.png', 50, 0, '2022-12-14 11:18:49', '2022-12-14 11:18:49'),
(409, 'image-1670991586746.png', 50, 0, '2022-12-14 11:19:46', '2022-12-14 11:19:46'),
(410, 'image-1670991681350.png', 50, 0, '2022-12-14 11:21:21', '2022-12-14 11:21:21'),
(411, 'image-1670991730530.png', 50, 0, '2022-12-14 11:22:10', '2022-12-14 11:22:10'),
(412, 'image-1670991771159.png', 50, 0, '2022-12-14 11:22:51', '2022-12-14 11:22:51'),
(413, 'image-1670991814903.png', 50, 0, '2022-12-14 11:23:34', '2022-12-14 11:23:34'),
(414, 'image-1670991860291.png', 50, 0, '2022-12-14 11:24:20', '2022-12-14 11:24:20'),
(415, 'image-1670991942594.png', 50, 0, '2022-12-14 11:25:42', '2022-12-14 11:25:42'),
(416, 'image-1670991987666.png', 50, 0, '2022-12-14 11:26:27', '2022-12-14 11:26:27'),
(417, 'image-1670992103671.png', 50, 0, '2022-12-14 11:28:23', '2022-12-14 11:28:23'),
(418, 'image-1670992152575.png', 50, 0, '2022-12-14 11:29:12', '2022-12-14 11:29:12'),
(419, 'image-1670992201521.png', 50, 0, '2022-12-14 11:30:01', '2022-12-14 11:30:01'),
(420, 'image-1670992243160.png', 50, 0, '2022-12-14 11:30:43', '2022-12-14 11:30:43'),
(421, 'image-1670992281920.png', 50, 0, '2022-12-14 11:31:21', '2022-12-14 11:31:21'),
(422, 'image-1670992321074.png', 50, 0, '2022-12-14 11:32:01', '2022-12-14 11:32:01'),
(423, 'image-1670992914700.png', 35, 0, '2022-12-14 11:41:54', '2022-12-14 11:41:54'),
(424, 'image-1670998298419.png', 35, 0, '2022-12-14 13:11:38', '2022-12-14 13:11:38'),
(425, 'image-1671000750395.png', 35, 0, '2022-12-14 13:52:30', '2022-12-14 13:52:30'),
(426, 'image-1671007432453.png', 35, 0, '2022-12-14 15:43:52', '2022-12-14 15:43:52'),
(427, 'image-1671008616298.png', 50, 0, '2022-12-14 16:03:36', '2022-12-14 16:03:36'),
(428, 'image-1671009073746.png', 50, 0, '2022-12-14 16:11:13', '2022-12-14 16:11:13'),
(429, 'image-1671012757414.png', 35, 0, '2022-12-14 17:12:37', '2022-12-14 17:12:37'),
(430, 'image-1671027085883.png', 22, 0, '2022-12-14 21:11:25', '2022-12-14 21:11:25'),
(431, 'image-1671027215151.png', 22, 0, '2022-12-14 21:13:35', '2022-12-14 21:13:35'),
(432, 'image-1671070991985.png', 35, 0, '2022-12-15 09:23:11', '2022-12-15 09:23:11'),
(433, 'image-1671075113215.png', 50, 0, '2022-12-15 10:31:53', '2022-12-15 10:31:53'),
(434, 'image-1671075162418.png', 50, 0, '2022-12-15 10:32:42', '2022-12-15 10:32:42'),
(435, 'image-1671075384810.png', 50, 0, '2022-12-15 10:36:24', '2022-12-15 10:36:24'),
(436, 'image-1671075633754.png', 50, 0, '2022-12-15 10:40:33', '2022-12-15 10:40:33'),
(437, 'image-1671075694509.png', 50, 0, '2022-12-15 10:41:34', '2022-12-15 10:41:34'),
(438, 'image-1671075741513.png', 50, 0, '2022-12-15 10:42:21', '2022-12-15 10:42:21'),
(439, 'image-1671075869435.png', 50, 0, '2022-12-15 10:44:29', '2022-12-15 10:44:29'),
(440, 'image-1671075995988.png', 50, 0, '2022-12-15 10:46:35', '2022-12-15 10:46:35'),
(441, 'image-1671076091565.png', 50, 0, '2022-12-15 10:48:11', '2022-12-15 10:48:11'),
(442, 'image-1671076230881.png', 50, 0, '2022-12-15 10:50:30', '2022-12-15 10:50:30'),
(443, 'image-1671076282195.png', 50, 0, '2022-12-15 10:51:22', '2022-12-15 10:51:22'),
(444, 'image-1671076327057.png', 50, 0, '2022-12-15 10:52:07', '2022-12-15 10:52:07'),
(445, 'image-1671076411931.png', 50, 0, '2022-12-15 10:53:31', '2022-12-15 10:53:31'),
(446, 'image-1671076481848.png', 50, 0, '2022-12-15 10:54:41', '2022-12-15 10:54:41'),
(447, 'image-1671076548977.png', 50, 0, '2022-12-15 10:55:48', '2022-12-15 10:55:48'),
(448, 'image-1671076602664.png', 50, 0, '2022-12-15 10:56:42', '2022-12-15 10:56:42'),
(449, 'image-1671076663100.png', 50, 0, '2022-12-15 10:57:43', '2022-12-15 10:57:43'),
(450, 'image-1671076704224.png', 50, 0, '2022-12-15 10:58:24', '2022-12-15 10:58:24'),
(451, 'image-1671076745357.png', 50, 0, '2022-12-15 10:59:05', '2022-12-15 10:59:05'),
(452, 'image-1671079541447.png', 34, 0, '2022-12-15 11:45:41', '2022-12-15 11:45:41'),
(453, 'image-1671088418370.png', 22, 0, '2022-12-15 14:13:38', '2022-12-15 14:13:38'),
(454, 'image-1671088515720.png', 22, 0, '2022-12-15 14:15:15', '2022-12-15 14:15:15'),
(455, 'image-1671106797934.png', 35, 0, '2022-12-15 19:19:57', '2022-12-15 19:19:57'),
(456, 'image-1671106842520.png', 35, 0, '2022-12-15 19:20:42', '2022-12-15 19:20:42'),
(457, 'image-1671106870682.png', 35, 0, '2022-12-15 19:21:10', '2022-12-15 19:21:10'),
(458, 'image-1671151562837.png', 35, 0, '2022-12-16 07:46:02', '2022-12-16 07:46:02'),
(459, 'image-1671151589110.png', 35, 0, '2022-12-16 07:46:29', '2022-12-16 07:46:29'),
(460, 'image-1671151613478.png', 35, 0, '2022-12-16 07:46:53', '2022-12-16 07:46:53'),
(461, 'image-1671161540074.png', 35, 0, '2022-12-16 10:32:20', '2022-12-16 10:32:20'),
(462, 'image-1671168684256.png', 35, 0, '2022-12-16 12:31:24', '2022-12-16 12:31:24'),
(463, 'image-1671173091412.png', 50, 0, '2022-12-16 13:44:51', '2022-12-16 13:44:51'),
(464, 'image-1671173220449.png', 50, 0, '2022-12-16 13:47:00', '2022-12-16 13:47:00'),
(465, 'image-1671173281157.png', 50, 0, '2022-12-16 13:48:01', '2022-12-16 13:48:01'),
(466, 'image-1671173398459.png', 50, 0, '2022-12-16 13:49:58', '2022-12-16 13:49:58'),
(467, 'image-1671253425667.png', 35, 0, '2022-12-17 12:03:45', '2022-12-17 12:03:45'),
(468, 'image-1671262095069.png', 35, 0, '2022-12-17 14:28:15', '2022-12-17 14:28:15'),
(469, 'image-1671347616394.png', 50, 0, '2022-12-18 14:13:36', '2022-12-18 14:13:36'),
(470, 'image-1671347655139.png', 50, 0, '2022-12-18 14:14:15', '2022-12-18 14:14:15'),
(471, 'image-1671347658951.png', 50, 0, '2022-12-18 14:14:18', '2022-12-18 14:14:18'),
(472, 'image-1671347701861.png', 50, 0, '2022-12-18 14:15:01', '2022-12-18 14:15:01'),
(473, 'image-1671347750009.png', 50, 0, '2022-12-18 14:15:50', '2022-12-18 14:15:50'),
(474, 'image-1671347789543.png', 50, 0, '2022-12-18 14:16:29', '2022-12-18 14:16:29'),
(475, 'image-1671347829015.png', 50, 0, '2022-12-18 14:17:09', '2022-12-18 14:17:09'),
(476, 'image-1671347871423.png', 50, 0, '2022-12-18 14:17:51', '2022-12-18 14:17:51'),
(477, 'image-1671347927681.png', 50, 0, '2022-12-18 14:18:47', '2022-12-18 14:18:47'),
(478, 'image-1671347967544.png', 50, 0, '2022-12-18 14:19:27', '2022-12-18 14:19:27'),
(479, 'image-1671348000467.png', 50, 0, '2022-12-18 14:20:00', '2022-12-18 14:20:00'),
(480, 'image-1671348050180.png', 50, 0, '2022-12-18 14:20:50', '2022-12-18 14:20:50'),
(481, 'image-1671348053512.png', 50, 0, '2022-12-18 14:20:53', '2022-12-18 14:20:53'),
(482, 'image-1671348091216.png', 50, 0, '2022-12-18 14:21:31', '2022-12-18 14:21:31'),
(483, 'image-1671348129524.png', 50, 0, '2022-12-18 14:22:09', '2022-12-18 14:22:09'),
(484, 'image-1671348167449.png', 50, 0, '2022-12-18 14:22:47', '2022-12-18 14:22:47'),
(485, 'image-1671348210928.png', 50, 0, '2022-12-18 14:23:30', '2022-12-18 14:23:30'),
(486, 'image-1671348306553.png', 50, 0, '2022-12-18 14:25:06', '2022-12-18 14:25:06'),
(487, 'image-1671348344998.png', 50, 0, '2022-12-18 14:25:45', '2022-12-18 14:25:45'),
(488, 'image-1671348385371.png', 50, 0, '2022-12-18 14:26:25', '2022-12-18 14:26:25'),
(489, 'image-1671348432840.png', 50, 0, '2022-12-18 14:27:12', '2022-12-18 14:27:12'),
(490, 'image-1671348475926.png', 50, 0, '2022-12-18 14:27:55', '2022-12-18 14:27:55'),
(491, 'image-1671348521115.png', 50, 0, '2022-12-18 14:28:41', '2022-12-18 14:28:41'),
(492, 'image-1671348572507.png', 50, 0, '2022-12-18 14:29:32', '2022-12-18 14:29:32'),
(493, 'image-1671348615634.png', 50, 0, '2022-12-18 14:30:15', '2022-12-18 14:30:15'),
(494, 'image-1671348709748.png', 50, 0, '2022-12-18 14:31:49', '2022-12-18 14:31:49'),
(495, 'image-1671348777681.png', 50, 0, '2022-12-18 14:32:57', '2022-12-18 14:32:57'),
(496, 'image-1671348820697.png', 50, 0, '2022-12-18 14:33:40', '2022-12-18 14:33:40'),
(497, 'image-1671348860264.png', 50, 0, '2022-12-18 14:34:20', '2022-12-18 14:34:20'),
(498, 'image-1671348897964.png', 50, 0, '2022-12-18 14:34:57', '2022-12-18 14:34:57'),
(499, 'image-1671348941843.png', 50, 0, '2022-12-18 14:35:41', '2022-12-18 14:35:41'),
(500, 'image-1671348978897.png', 50, 0, '2022-12-18 14:36:18', '2022-12-18 14:36:18'),
(501, 'image-1671349045165.png', 50, 0, '2022-12-18 14:37:25', '2022-12-18 14:37:25'),
(502, 'image-1671349126930.png', 50, 0, '2022-12-18 14:38:46', '2022-12-18 14:38:46'),
(503, 'image-1671349169592.png', 50, 0, '2022-12-18 14:39:29', '2022-12-18 14:39:29'),
(504, 'image-1671349222470.png', 50, 0, '2022-12-18 14:40:22', '2022-12-18 14:40:22'),
(505, 'image-1671349292238.png', 50, 0, '2022-12-18 14:41:32', '2022-12-18 14:41:32'),
(506, 'image-1671349379434.png', 50, 0, '2022-12-18 14:42:59', '2022-12-18 14:42:59'),
(507, 'image-1671349445721.png', 50, 0, '2022-12-18 14:44:05', '2022-12-18 14:44:05'),
(508, 'image-1671349491836.png', 50, 0, '2022-12-18 14:44:51', '2022-12-18 14:44:51'),
(509, 'image-1671349536909.png', 50, 0, '2022-12-18 14:45:36', '2022-12-18 14:45:36'),
(510, 'image-1671349581468.png', 50, 0, '2022-12-18 14:46:21', '2022-12-18 14:46:21'),
(511, 'image-1671349704722.png', 50, 0, '2022-12-18 14:48:24', '2022-12-18 14:48:24'),
(512, 'image-1671349773649.png', 50, 0, '2022-12-18 14:49:33', '2022-12-18 14:49:33'),
(513, 'image-1671349810041.png', 50, 0, '2022-12-18 14:50:10', '2022-12-18 14:50:10'),
(514, 'image-1671357822197.png', 35, 0, '2022-12-18 17:03:42', '2022-12-18 17:03:42'),
(515, 'image-1671363006603.png', 35, 0, '2022-12-18 18:30:06', '2022-12-18 18:30:06'),
(516, 'image-1671508402498.png', 35, 0, '2022-12-20 10:53:22', '2022-12-20 10:53:22'),
(517, 'image-1671527720039.png', 35, 0, '2022-12-20 16:15:20', '2022-12-20 16:15:20'),
(518, 'image-1671585359335.png', 35, 0, '2022-12-21 08:15:59', '2022-12-21 08:15:59'),
(519, 'image-1671594954975.png', 35, 0, '2022-12-21 10:55:54', '2022-12-21 10:55:54'),
(520, 'image-1671608392337.png', 35, 0, '2022-12-21 14:39:52', '2022-12-21 14:39:52'),
(521, 'image-1671613675451.png', 35, 0, '2022-12-21 16:07:55', '2022-12-21 16:07:55'),
(522, 'image-1671665741921.png', 35, 0, '2022-12-22 06:35:41', '2022-12-22 06:35:41'),
(523, 'image-1671669361552.png', 35, 0, '2022-12-22 07:36:01', '2022-12-22 07:36:01'),
(524, 'image-1671686030965.png', 35, 0, '2022-12-22 12:13:50', '2022-12-22 12:13:50'),
(525, 'image-1671709719407.png', 35, 0, '2022-12-22 18:48:39', '2022-12-22 18:48:39'),
(526, 'image-1671760370911.png', 35, 0, '2022-12-23 08:52:50', '2022-12-23 08:52:50'),
(527, 'image-1671779430910.png', 35, 0, '2022-12-23 14:10:30', '2022-12-23 14:10:30'),
(528, 'image-1671841134975.png', 35, 0, '2022-12-24 07:18:54', '2022-12-24 07:18:54'),
(529, 'image-1671847936850.png', 35, 0, '2022-12-24 09:12:16', '2022-12-24 09:12:16'),
(530, 'image-1671852667375.png', 35, 0, '2022-12-24 10:31:07', '2022-12-24 10:31:07'),
(531, 'image-1671860053319.png', 35, 0, '2022-12-24 12:34:13', '2022-12-24 12:34:13'),
(532, 'image-1671883318082.png', 35, 0, '2022-12-24 19:01:58', '2022-12-24 19:01:58'),
(533, 'image-1671883319791.png', 35, 0, '2022-12-24 19:01:59', '2022-12-24 19:01:59'),
(534, 'image-1671883344308.png', 35, 0, '2022-12-24 19:02:24', '2022-12-24 19:02:24'),
(535, 'image-1671929088119.png', 35, 0, '2022-12-25 07:44:48', '2022-12-25 07:44:48'),
(536, 'image-1672019462094.png', 35, 0, '2022-12-26 08:51:02', '2022-12-26 08:51:02'),
(537, 'image-1672023306470.png', 35, 0, '2022-12-26 09:55:06', '2022-12-26 09:55:06'),
(538, 'image-1672031644388.png', 35, 0, '2022-12-26 12:14:04', '2022-12-26 12:14:04'),
(539, 'image-1672037834035.png', 35, 0, '2022-12-26 13:57:14', '2022-12-26 13:57:14'),
(540, 'image-1672105828242.png', 35, 0, '2022-12-27 08:50:28', '2022-12-27 08:50:28'),
(541, 'image-1672125192878.png', 50, 0, '2022-12-27 14:13:12', '2022-12-27 14:13:12'),
(542, 'image-1672125239143.png', 50, 0, '2022-12-27 14:13:59', '2022-12-27 14:13:59'),
(543, 'image-1672125278906.png', 50, 0, '2022-12-27 14:14:38', '2022-12-27 14:14:38'),
(544, 'image-1672125316940.png', 50, 0, '2022-12-27 14:15:16', '2022-12-27 14:15:16'),
(545, 'image-1672125368484.png', 50, 0, '2022-12-27 14:16:08', '2022-12-27 14:16:08'),
(546, 'image-1672125407481.png', 50, 0, '2022-12-27 14:16:47', '2022-12-27 14:16:47'),
(547, 'image-1672125449177.png', 50, 0, '2022-12-27 14:17:29', '2022-12-27 14:17:29'),
(548, 'image-1672125487327.png', 50, 0, '2022-12-27 14:18:07', '2022-12-27 14:18:07'),
(549, 'image-1672125523028.png', 50, 0, '2022-12-27 14:18:43', '2022-12-27 14:18:43'),
(550, 'image-1672125560536.png', 50, 0, '2022-12-27 14:19:20', '2022-12-27 14:19:20'),
(551, 'image-1672125600958.png', 50, 0, '2022-12-27 14:20:00', '2022-12-27 14:20:00'),
(552, 'image-1672125667849.png', 50, 0, '2022-12-27 14:21:07', '2022-12-27 14:21:07'),
(553, 'image-1672125712048.png', 50, 0, '2022-12-27 14:21:52', '2022-12-27 14:21:52'),
(554, 'image-1672125753004.png', 50, 0, '2022-12-27 14:22:33', '2022-12-27 14:22:33'),
(555, 'image-1672125810626.png', 50, 0, '2022-12-27 14:23:30', '2022-12-27 14:23:30'),
(556, 'image-1672125848542.png', 50, 0, '2022-12-27 14:24:08', '2022-12-27 14:24:08'),
(557, 'image-1672125892870.png', 50, 0, '2022-12-27 14:24:52', '2022-12-27 14:24:52'),
(558, 'image-1672125963276.png', 50, 0, '2022-12-27 14:26:03', '2022-12-27 14:26:03'),
(559, 'image-1672126022225.png', 50, 0, '2022-12-27 14:27:02', '2022-12-27 14:27:02'),
(560, 'image-1672126117328.png', 50, 0, '2022-12-27 14:28:37', '2022-12-27 14:28:37'),
(561, 'image-1672126227209.png', 50, 0, '2022-12-27 14:30:27', '2022-12-27 14:30:27'),
(562, 'image-1672126288520.png', 50, 0, '2022-12-27 14:31:28', '2022-12-27 14:31:28'),
(563, 'image-1672126331905.png', 50, 0, '2022-12-27 14:32:11', '2022-12-27 14:32:11'),
(564, 'image-1672126373266.png', 50, 0, '2022-12-27 14:32:53', '2022-12-27 14:32:53'),
(565, 'image-1672126429723.png', 50, 0, '2022-12-27 14:33:49', '2022-12-27 14:33:49'),
(566, 'image-1672126471019.png', 50, 0, '2022-12-27 14:34:31', '2022-12-27 14:34:31'),
(567, 'image-1672126511970.png', 50, 0, '2022-12-27 14:35:11', '2022-12-27 14:35:11'),
(568, 'image-1672126547029.png', 50, 0, '2022-12-27 14:35:47', '2022-12-27 14:35:47'),
(569, 'image-1672126585228.png', 50, 0, '2022-12-27 14:36:25', '2022-12-27 14:36:25'),
(570, 'image-1672126620386.png', 50, 0, '2022-12-27 14:37:00', '2022-12-27 14:37:00'),
(571, 'image-1672126678543.png', 50, 0, '2022-12-27 14:37:58', '2022-12-27 14:37:58'),
(572, 'image-1672126723013.png', 50, 0, '2022-12-27 14:38:43', '2022-12-27 14:38:43'),
(573, 'image-1672126779892.png', 50, 0, '2022-12-27 14:39:39', '2022-12-27 14:39:39'),
(574, 'image-1672126845795.png', 50, 0, '2022-12-27 14:40:45', '2022-12-27 14:40:45'),
(575, 'image-1672126886046.png', 50, 0, '2022-12-27 14:41:26', '2022-12-27 14:41:26'),
(576, 'image-1672126924870.png', 50, 0, '2022-12-27 14:42:04', '2022-12-27 14:42:04'),
(577, 'image-1672126963737.png', 50, 0, '2022-12-27 14:42:43', '2022-12-27 14:42:43'),
(578, 'image-1672127003259.png', 50, 0, '2022-12-27 14:43:23', '2022-12-27 14:43:23'),
(579, 'image-1672127047749.png', 50, 0, '2022-12-27 14:44:07', '2022-12-27 14:44:07'),
(580, 'image-1672127086699.png', 50, 0, '2022-12-27 14:44:46', '2022-12-27 14:44:46'),
(581, 'image-1672127121508.png', 50, 0, '2022-12-27 14:45:21', '2022-12-27 14:45:21'),
(582, 'image-1672127169028.png', 50, 0, '2022-12-27 14:46:09', '2022-12-27 14:46:09'),
(583, 'image-1672127322208.png', 50, 0, '2022-12-27 14:48:42', '2022-12-27 14:48:42'),
(584, 'image-1672127363153.png', 50, 0, '2022-12-27 14:49:23', '2022-12-27 14:49:23'),
(585, 'image-1672127400294.png', 50, 0, '2022-12-27 14:50:00', '2022-12-27 14:50:00'),
(586, 'image-1672127472111.png', 50, 0, '2022-12-27 14:51:12', '2022-12-27 14:51:12'),
(587, 'image-1672127511161.png', 50, 0, '2022-12-27 14:51:51', '2022-12-27 14:51:51'),
(588, 'image-1672127576663.png', 50, 0, '2022-12-27 14:52:56', '2022-12-27 14:52:56'),
(589, 'image-1672127612733.png', 50, 0, '2022-12-27 14:53:32', '2022-12-27 14:53:32'),
(590, 'image-1672127660454.png', 50, 0, '2022-12-27 14:54:20', '2022-12-27 14:54:20'),
(591, 'image-1672127698105.png', 50, 0, '2022-12-27 14:54:58', '2022-12-27 14:54:58'),
(592, 'image-1672127740366.png', 50, 0, '2022-12-27 14:55:40', '2022-12-27 14:55:40'),
(593, 'image-1672127778452.png', 50, 0, '2022-12-27 14:56:18', '2022-12-27 14:56:18'),
(594, 'image-1672127826658.png', 50, 0, '2022-12-27 14:57:06', '2022-12-27 14:57:06'),
(595, 'image-1672127873155.png', 50, 0, '2022-12-27 14:57:53', '2022-12-27 14:57:53');
INSERT INTO `tbl_images` (`id`, `image`, `user_created`, `user_updated`, `created_at`, `updated_at`) VALUES
(596, 'image-1672127969551.png', 50, 0, '2022-12-27 14:59:29', '2022-12-27 14:59:29'),
(597, 'image-1672128040776.png', 50, 0, '2022-12-27 15:00:40', '2022-12-27 15:00:40'),
(598, 'image-1672128181800.png', 50, 0, '2022-12-27 15:03:01', '2022-12-27 15:03:01'),
(599, 'image-1672128224705.png', 50, 0, '2022-12-27 15:03:44', '2022-12-27 15:03:44'),
(600, 'image-1672128329526.png', 50, 0, '2022-12-27 15:05:29', '2022-12-27 15:05:29'),
(601, 'image-1672128432578.png', 50, 0, '2022-12-27 15:07:12', '2022-12-27 15:07:12'),
(602, 'image-1672128477797.png', 50, 0, '2022-12-27 15:07:57', '2022-12-27 15:07:57'),
(603, 'image-1672128517307.png', 50, 0, '2022-12-27 15:08:37', '2022-12-27 15:08:37'),
(604, 'image-1672128534445.png', 35, 0, '2022-12-27 15:08:54', '2022-12-27 15:08:54'),
(605, 'image-1672128558001.png', 50, 0, '2022-12-27 15:09:18', '2022-12-27 15:09:18'),
(606, 'image-1672128615892.png', 50, 0, '2022-12-27 15:10:15', '2022-12-27 15:10:15'),
(607, 'image-1672128659166.png', 50, 0, '2022-12-27 15:10:59', '2022-12-27 15:10:59'),
(608, 'image-1672128691467.png', 50, 0, '2022-12-27 15:11:31', '2022-12-27 15:11:31'),
(609, 'image-1672128732423.png', 50, 0, '2022-12-27 15:12:12', '2022-12-27 15:12:12'),
(610, 'image-1672128776218.png', 50, 0, '2022-12-27 15:12:56', '2022-12-27 15:12:56'),
(611, 'image-1672128850385.png', 50, 0, '2022-12-27 15:14:10', '2022-12-27 15:14:10'),
(612, 'image-1672128852216.png', 50, 0, '2022-12-27 15:14:12', '2022-12-27 15:14:12'),
(613, 'image-1672128854007.png', 50, 0, '2022-12-27 15:14:14', '2022-12-27 15:14:14'),
(614, 'image-1672128910433.png', 50, 0, '2022-12-27 15:15:10', '2022-12-27 15:15:10'),
(615, 'image-1672128945991.png', 50, 0, '2022-12-27 15:15:45', '2022-12-27 15:15:45'),
(616, 'image-1672128986513.png', 50, 0, '2022-12-27 15:16:26', '2022-12-27 15:16:26'),
(617, 'image-1672129020848.png', 50, 0, '2022-12-27 15:17:00', '2022-12-27 15:17:00'),
(618, 'image-1672129056262.png', 50, 0, '2022-12-27 15:17:36', '2022-12-27 15:17:36'),
(619, 'image-1672129114715.png', 50, 0, '2022-12-27 15:18:34', '2022-12-27 15:18:34'),
(620, 'image-1672129155736.png', 50, 0, '2022-12-27 15:19:15', '2022-12-27 15:19:15'),
(621, 'image-1672129195416.png', 50, 0, '2022-12-27 15:19:55', '2022-12-27 15:19:55'),
(622, 'image-1672129229409.png', 50, 0, '2022-12-27 15:20:29', '2022-12-27 15:20:29'),
(623, 'image-1672129266780.png', 50, 0, '2022-12-27 15:21:06', '2022-12-27 15:21:06'),
(624, 'image-1672129303745.png', 50, 0, '2022-12-27 15:21:43', '2022-12-27 15:21:43'),
(625, 'image-1672129335903.png', 50, 0, '2022-12-27 15:22:15', '2022-12-27 15:22:15'),
(626, 'image-1672129375362.png', 50, 0, '2022-12-27 15:22:55', '2022-12-27 15:22:55'),
(627, 'image-1672129467231.png', 50, 0, '2022-12-27 15:24:27', '2022-12-27 15:24:27'),
(628, 'image-1672129514615.png', 50, 0, '2022-12-27 15:25:14', '2022-12-27 15:25:14'),
(629, 'image-1672129556897.png', 50, 0, '2022-12-27 15:25:56', '2022-12-27 15:25:56'),
(630, 'image-1672129594365.png', 50, 0, '2022-12-27 15:26:34', '2022-12-27 15:26:34'),
(631, 'image-1672129687745.png', 50, 0, '2022-12-27 15:28:07', '2022-12-27 15:28:07'),
(632, 'image-1672129724512.png', 50, 0, '2022-12-27 15:28:44', '2022-12-27 15:28:44'),
(633, 'image-1672129762703.png', 50, 0, '2022-12-27 15:29:22', '2022-12-27 15:29:22'),
(634, 'image-1672129805147.png', 50, 0, '2022-12-27 15:30:05', '2022-12-27 15:30:05'),
(635, 'image-1672129843786.png', 50, 0, '2022-12-27 15:30:43', '2022-12-27 15:30:43'),
(636, 'image-1672129893826.png', 50, 0, '2022-12-27 15:31:33', '2022-12-27 15:31:33'),
(637, 'image-1672129934986.png', 50, 0, '2022-12-27 15:32:14', '2022-12-27 15:32:14'),
(638, 'image-1672129989561.png', 50, 0, '2022-12-27 15:33:09', '2022-12-27 15:33:09'),
(639, 'image-1672130026032.png', 50, 0, '2022-12-27 15:33:46', '2022-12-27 15:33:46'),
(640, 'image-1672130063238.png', 50, 0, '2022-12-27 15:34:23', '2022-12-27 15:34:23'),
(641, 'image-1672130107715.png', 50, 0, '2022-12-27 15:35:07', '2022-12-27 15:35:07'),
(642, 'image-1672130143896.png', 50, 0, '2022-12-27 15:35:43', '2022-12-27 15:35:43'),
(643, 'image-1672130180994.png', 50, 0, '2022-12-27 15:36:20', '2022-12-27 15:36:20'),
(644, 'image-1672130394628.png', 50, 0, '2022-12-27 15:39:54', '2022-12-27 15:39:54'),
(645, 'image-1672130448560.png', 50, 0, '2022-12-27 15:40:48', '2022-12-27 15:40:48'),
(646, 'image-1672130495299.png', 50, 0, '2022-12-27 15:41:35', '2022-12-27 15:41:35'),
(647, 'image-1672130532898.png', 50, 0, '2022-12-27 15:42:12', '2022-12-27 15:42:12'),
(648, 'image-1672130634679.png', 50, 0, '2022-12-27 15:43:54', '2022-12-27 15:43:54'),
(649, 'image-1672130685196.png', 50, 0, '2022-12-27 15:44:45', '2022-12-27 15:44:45'),
(650, 'image-1672130732221.png', 50, 0, '2022-12-27 15:45:32', '2022-12-27 15:45:32'),
(651, 'image-1672130773013.png', 50, 0, '2022-12-27 15:46:13', '2022-12-27 15:46:13'),
(652, 'image-1672130810754.png', 50, 0, '2022-12-27 15:46:50', '2022-12-27 15:46:50'),
(653, 'image-1672130849398.png', 50, 0, '2022-12-27 15:47:29', '2022-12-27 15:47:29'),
(654, 'image-1672130888984.png', 50, 0, '2022-12-27 15:48:08', '2022-12-27 15:48:08'),
(655, 'image-1672130998719.png', 50, 0, '2022-12-27 15:49:58', '2022-12-27 15:49:58'),
(656, 'image-1672131036072.png', 50, 0, '2022-12-27 15:50:36', '2022-12-27 15:50:36'),
(657, 'image-1672131073199.png', 50, 0, '2022-12-27 15:51:13', '2022-12-27 15:51:13'),
(658, 'image-1672131130119.png', 50, 0, '2022-12-27 15:52:10', '2022-12-27 15:52:10'),
(659, 'image-1672131168885.png', 50, 0, '2022-12-27 15:52:48', '2022-12-27 15:52:48'),
(660, 'image-1672131212761.png', 50, 0, '2022-12-27 15:53:32', '2022-12-27 15:53:32'),
(661, 'image-1672131252587.png', 50, 0, '2022-12-27 15:54:12', '2022-12-27 15:54:12'),
(662, 'image-1672131307470.png', 50, 0, '2022-12-27 15:55:07', '2022-12-27 15:55:07'),
(663, 'image-1672209535106.png', 35, 0, '2022-12-28 13:38:55', '2022-12-28 13:38:55'),
(664, 'image-1672209537278.png', 35, 0, '2022-12-28 13:38:57', '2022-12-28 13:38:57'),
(665, 'image-1672217879841.png', 35, 0, '2022-12-28 15:57:59', '2022-12-28 15:57:59'),
(666, 'image-1672220062897.png', 35, 0, '2022-12-28 16:34:22', '2022-12-28 16:34:22'),
(667, 'image-1672220062926.png', 35, 0, '2022-12-28 16:34:22', '2022-12-28 16:34:22'),
(668, 'image-1672227125033.png', 35, 0, '2022-12-28 18:32:05', '2022-12-28 18:32:05'),
(669, 'image-1672276288334.png', 35, 0, '2022-12-29 08:11:28', '2022-12-29 08:11:28'),
(670, 'image-1672292471299.png', 35, 0, '2022-12-29 12:41:11', '2022-12-29 12:41:11'),
(671, 'image-1672373937605.png', 35, 0, '2022-12-30 11:18:57', '2022-12-30 11:18:57'),
(672, 'image-1672720806719.png', 35, 0, '2023-01-03 11:40:06', '2023-01-03 11:40:06'),
(673, 'image-1672720810286.png', 35, 0, '2023-01-03 11:40:10', '2023-01-03 11:40:10'),
(674, 'image-1672725309406.png', 35, 0, '2023-01-03 12:55:09', '2023-01-03 12:55:09'),
(675, 'image-1672737339286.png', 35, 0, '2023-01-03 16:15:39', '2023-01-03 16:15:39'),
(676, 'image-1672746135901.png', 35, 0, '2023-01-03 18:42:15', '2023-01-03 18:42:15'),
(677, 'image-1672885500804.png', 35, 0, '2023-01-05 09:25:00', '2023-01-05 09:25:00'),
(678, 'image-1672897539738.png', 35, 0, '2023-01-05 12:45:39', '2023-01-05 12:45:39'),
(679, 'image-1672968474761.png', 35, 0, '2023-01-06 08:27:54', '2023-01-06 08:27:54'),
(680, 'image-1672977725043.png', 35, 0, '2023-01-06 11:02:05', '2023-01-06 11:02:05'),
(681, 'image-1672995032905.png', 35, 0, '2023-01-06 15:50:32', '2023-01-06 15:50:32'),
(682, 'image-1673052462935.png', 35, 0, '2023-01-07 07:47:42', '2023-01-07 07:47:42'),
(683, 'image-1673094851941.png', 35, 0, '2023-01-07 19:34:11', '2023-01-07 19:34:11'),
(684, 'image-1673237625834.png', 35, 0, '2023-01-09 11:13:45', '2023-01-09 11:13:45'),
(685, 'image-1673306804112.png', 35, 0, '2023-01-10 06:26:44', '2023-01-10 06:26:44'),
(686, 'image-1673325168046.png', 35, 0, '2023-01-10 11:32:48', '2023-01-10 11:32:48'),
(687, 'image-1673339732283.png', 35, 0, '2023-01-10 15:35:32', '2023-01-10 15:35:32'),
(688, 'image-1673346972623.png', 35, 0, '2023-01-10 17:36:12', '2023-01-10 17:36:12'),
(689, 'image-1673406261218.png', 35, 0, '2023-01-11 10:04:21', '2023-01-11 10:04:21'),
(690, 'image-1673412411934.png', 35, 0, '2023-01-11 11:46:51', '2023-01-11 11:46:51'),
(691, 'image-1673422153353.png', 35, 0, '2023-01-11 14:29:13', '2023-01-11 14:29:13'),
(692, 'image-1673422156533.png', 35, 0, '2023-01-11 14:29:16', '2023-01-11 14:29:16'),
(693, 'image-1673424454761.png', 35, 0, '2023-01-11 15:07:34', '2023-01-11 15:07:34'),
(694, 'image-1673427028291.png', 35, 0, '2023-01-11 15:50:28', '2023-01-11 15:50:28'),
(695, 'image-1673482517498.png', 35, 0, '2023-01-12 07:15:17', '2023-01-12 07:15:17'),
(696, 'image-1673488067086.png', 35, 0, '2023-01-12 08:47:47', '2023-01-12 08:47:47'),
(697, 'image-1673501348351.png', 35, 0, '2023-01-12 12:29:08', '2023-01-12 12:29:08'),
(698, 'image-1673512225905.png', 35, 0, '2023-01-12 15:30:25', '2023-01-12 15:30:25'),
(699, 'image-1673520096719.png', 35, 0, '2023-01-12 17:41:36', '2023-01-12 17:41:36'),
(700, 'image-1673586650647.png', 35, 0, '2023-01-13 12:10:50', '2023-01-13 12:10:50'),
(701, 'image-1673586676206.png', 35, 0, '2023-01-13 12:11:16', '2023-01-13 12:11:16'),
(702, 'image-1673594102046.png', 35, 0, '2023-01-13 14:15:02', '2023-01-13 14:15:02'),
(703, 'image-1673660924849.png', 35, 0, '2023-01-14 08:48:44', '2023-01-14 08:48:44'),
(704, 'image-1673673930690.png', 35, 0, '2023-01-14 12:25:30', '2023-01-14 12:25:30'),
(705, 'image-1673836612062.png', 35, 0, '2023-01-16 09:36:52', '2023-01-16 09:36:52'),
(706, 'image-1673839856437.png', 35, 0, '2023-01-16 10:30:56', '2023-01-16 10:30:56'),
(707, 'image-1673850267653.png', 35, 0, '2023-01-16 13:24:27', '2023-01-16 13:24:27'),
(708, 'image-1673860984742.png', 35, 0, '2023-01-16 16:23:04', '2023-01-16 16:23:04'),
(709, 'image-1673949860240.png', 35, 0, '2023-01-17 17:04:20', '2023-01-17 17:04:20'),
(710, 'image-1673996088341.png', 35, 0, '2023-01-18 05:54:48', '2023-01-18 05:54:48'),
(711, 'image-1674013141903.png', 35, 0, '2023-01-18 10:39:01', '2023-01-18 10:39:01'),
(712, 'image-1674016395847.png', 35, 0, '2023-01-18 11:33:15', '2023-01-18 11:33:15'),
(713, 'image-1674016398105.png', 35, 0, '2023-01-18 11:33:18', '2023-01-18 11:33:18'),
(714, 'image-1674021383904.png', 35, 0, '2023-01-18 12:56:23', '2023-01-18 12:56:23'),
(715, 'image-1674027064050.png', 35, 0, '2023-01-18 14:31:04', '2023-01-18 14:31:04'),
(716, 'image-1674096074227.png', 35, 0, '2023-01-19 09:41:14', '2023-01-19 09:41:14'),
(717, 'image-1674113213503.png', 35, 0, '2023-01-19 14:26:53', '2023-01-19 14:26:53'),
(718, 'image-1674119917367.png', 35, 0, '2023-01-19 16:18:37', '2023-01-19 16:18:37'),
(719, 'image-1674121521792.png', 35, 0, '2023-01-19 16:45:21', '2023-01-19 16:45:21'),
(720, 'image-1674123403298.png', 35, 0, '2023-01-19 17:16:43', '2023-01-19 17:16:43'),
(721, 'image-1674175473943.png', 35, 0, '2023-01-20 07:44:33', '2023-01-20 07:44:33'),
(722, 'image-1674175721853.png', 35, 0, '2023-01-20 07:48:41', '2023-01-20 07:48:41'),
(723, 'image-1674175724245.png', 35, 0, '2023-01-20 07:48:44', '2023-01-20 07:48:44'),
(724, 'image-1674180138688.png', 35, 0, '2023-01-20 09:02:18', '2023-01-20 09:02:18'),
(725, 'image-1674186134778.png', 35, 0, '2023-01-20 10:42:14', '2023-01-20 10:42:14'),
(726, 'image-1674187478802.png', 35, 0, '2023-01-20 11:04:38', '2023-01-20 11:04:38'),
(727, 'image-1674192746229.png', 35, 0, '2023-01-20 12:32:26', '2023-01-20 12:32:26'),
(728, 'image-1674192773185.png', 35, 0, '2023-01-20 12:32:53', '2023-01-20 12:32:53'),
(729, 'image-1674193847654.png', 35, 0, '2023-01-20 12:50:47', '2023-01-20 12:50:47'),
(730, 'image-1674202311642.png', 35, 0, '2023-01-20 15:11:51', '2023-01-20 15:11:51'),
(731, 'image-1674204647152.png', 35, 0, '2023-01-20 15:50:47', '2023-01-20 15:50:47'),
(732, 'image-1674216205445.png', 35, 0, '2023-01-20 19:03:25', '2023-01-20 19:03:25'),
(733, 'image-1674221119731.png', 35, 0, '2023-01-20 20:25:19', '2023-01-20 20:25:19'),
(734, 'image-1674264534964.png', 35, 0, '2023-01-21 08:28:54', '2023-01-21 08:28:54'),
(735, 'image-1674279814650.png', 35, 0, '2023-01-21 12:43:34', '2023-01-21 12:43:34'),
(736, 'image-1674291485218.png', 35, 0, '2023-01-21 15:58:05', '2023-01-21 15:58:05'),
(737, 'image-1674301393899.png', 35, 0, '2023-01-21 18:43:13', '2023-01-21 18:43:13'),
(738, 'image-1674314732416.png', 35, 0, '2023-01-21 22:25:32', '2023-01-21 22:25:32'),
(739, 'image-1674354929277.png', 35, 0, '2023-01-22 09:35:29', '2023-01-22 09:35:29'),
(740, 'image-1674361246563.png', 35, 0, '2023-01-22 11:20:46', '2023-01-22 11:20:46'),
(741, 'image-1674361291264.png', 35, 0, '2023-01-22 11:21:31', '2023-01-22 11:21:31'),
(742, 'image-1674629639945.png', 35, 0, '2023-01-25 13:53:59', '2023-01-25 13:53:59'),
(743, 'image-1674788198762.png', 35, 0, '2023-01-27 09:56:38', '2023-01-27 09:56:38'),
(744, 'image-1674798279746.png', 35, 0, '2023-01-27 12:44:39', '2023-01-27 12:44:39'),
(745, 'image-1674798283696.png', 35, 0, '2023-01-27 12:44:43', '2023-01-27 12:44:43'),
(746, 'image-1675150316833.png', 35, 0, '2023-01-31 14:31:56', '2023-01-31 14:31:56'),
(747, 'image-1675159838898.png', 35, 0, '2023-01-31 17:10:38', '2023-01-31 17:10:38'),
(748, 'image-1675914585637.png', 35, 0, '2023-02-09 10:49:45', '2023-02-09 10:49:45'),
(749, 'image-1676104509850.png', 35, 0, '2023-02-11 15:35:09', '2023-02-11 15:35:09'),
(750, 'image-1676111123880.png', 35, 0, '2023-02-11 17:25:23', '2023-02-11 17:25:23'),
(751, 'image-1676182420484.png', 35, 0, '2023-02-12 13:13:40', '2023-02-12 13:13:40'),
(752, 'image-1676264319992.png', 35, 0, '2023-02-13 11:58:40', '2023-02-13 11:58:40'),
(753, 'image-1676282641394.png', 35, 0, '2023-02-13 17:04:01', '2023-02-13 17:04:01'),
(754, 'image-1676285587330.png', 35, 0, '2023-02-13 17:53:07', '2023-02-13 17:53:07'),
(755, 'image-1676364219745.png', 35, 0, '2023-02-14 15:43:39', '2023-02-14 15:43:39'),
(756, 'image-1676605229895.png', 35, 0, '2023-02-17 10:40:29', '2023-02-17 10:40:29'),
(757, 'image-1684501424712.png', 1, 0, '2023-05-19 20:03:44', '2023-05-19 20:03:44'),
(758, 'image-1684501426373.png', 1, 0, '2023-05-19 20:03:46', '2023-05-19 20:03:46'),
(759, 'image-1688776675107.png', 35, 0, '2023-07-08 07:37:55', '2023-07-08 07:37:55'),
(760, 'image-1689566803111.png', 1, 0, '2023-07-17 11:06:43', '2023-07-17 11:06:43'),
(761, 'image-1689567027841.png', 1, 0, '2023-07-17 11:10:27', '2023-07-17 11:10:27'),
(762, 'image-1689567233365.png', 1, 0, '2023-07-17 11:13:53', '2023-07-17 11:13:53'),
(763, 'image-1689567731583.png', 50, 0, '2023-07-17 11:22:11', '2023-07-17 11:22:11'),
(764, 'image-1689567940556.png', 50, 0, '2023-07-17 11:25:40', '2023-07-17 11:25:40'),
(765, 'image-1689568258663.png', 50, 0, '2023-07-17 11:30:58', '2023-07-17 11:30:58'),
(766, 'image-1689568402087.png', 50, 0, '2023-07-17 11:33:22', '2023-07-17 11:33:22'),
(767, 'image-1689568450142.png', 50, 0, '2023-07-17 11:34:10', '2023-07-17 11:34:10'),
(768, 'image-1691327099986.png', 1, 0, '2023-08-06 20:04:59', '2023-08-06 20:04:59'),
(769, 'image-1692254471105.png', 1, 0, '2023-08-17 13:41:11', '2023-08-17 13:41:11'),
(770, 'image-1692943018368.png', 22, 0, '2023-08-25 12:56:58', '2023-08-25 12:56:58'),
(771, 'image-1692943551529.png', 1, 0, '2023-08-25 13:05:51', '2023-08-25 13:05:51'),
(772, 'image-1701669443133.png', 1, 0, '2023-12-04 12:57:23', '2023-12-04 12:57:23'),
(773, 'image-1702342229029.png', 1, 0, '2023-12-12 07:50:29', '2023-12-12 07:50:29'),
(774, 'image-1702477217729.png', 80, 0, '2023-12-13 21:20:17', '2023-12-13 21:20:17'),
(775, 'image-1702562650935.png', 81, 0, '2023-12-14 21:04:10', '2023-12-14 21:04:10'),
(776, 'image-1702633309646.png', 75, 0, '2023-12-15 16:41:49', '2023-12-15 16:41:49'),
(777, 'image-1702633350755.png', 75, 0, '2023-12-15 16:42:30', '2023-12-15 16:42:30'),
(778, 'image-1702634218917.png', 75, 0, '2023-12-15 16:56:58', '2023-12-15 16:56:58'),
(779, 'image-1702634267728.png', 75, 0, '2023-12-15 16:57:47', '2023-12-15 16:57:47'),
(780, 'image-1702634641877.png', 75, 0, '2023-12-15 17:04:01', '2023-12-15 17:04:01'),
(781, 'image-1702634663593.png', 75, 0, '2023-12-15 17:04:23', '2023-12-15 17:04:23'),
(782, 'image-1702690894331.png', 80, 0, '2023-12-16 08:41:34', '2023-12-16 08:41:34'),
(783, 'image-1702704622904.png', 75, 0, '2023-12-16 12:30:22', '2023-12-16 12:30:22'),
(784, 'image-1702704764165.png', 75, 0, '2023-12-16 12:32:44', '2023-12-16 12:32:44'),
(785, 'image-1702704823964.png', 75, 0, '2023-12-16 12:33:43', '2023-12-16 12:33:43'),
(786, 'image-1702704924069.png', 75, 0, '2023-12-16 12:35:24', '2023-12-16 12:35:24'),
(787, 'image-1702710137244.png', 80, 0, '2023-12-16 14:02:17', '2023-12-16 14:02:17'),
(788, 'image-1702710388015.png', 75, 0, '2023-12-16 14:06:28', '2023-12-16 14:06:28'),
(789, 'image-1702710434773.png', 75, 0, '2023-12-16 14:07:14', '2023-12-16 14:07:14'),
(790, 'image-1703227721847.png', 77, 0, '2023-12-22 13:48:41', '2023-12-22 13:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_land`
--

CREATE TABLE `tbl_land` (
  `id` int(11) NOT NULL,
  `land_name` varchar(100) NOT NULL,
  `land_type_id` int(11) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_land_activity`
--

CREATE TABLE `tbl_land_activity` (
  `id` int(11) NOT NULL,
  `land_activity_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_land_activity`
--

INSERT INTO `tbl_land_activity` (`id`, `land_activity_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'ปรับที่ดิน', 80, '2022-05-11 17:15:44', 0, '2022-05-11 17:15:44'),
(2, 'หิน/ตอ', 80, '2022-05-11 17:15:52', 0, '2022-05-11 17:15:52'),
(3, 'ถมสระ', 80, '2022-05-11 17:15:59', 0, '2022-05-11 17:15:59'),
(4, 'ให้ปุ๋ยน้ำวีแนส', 22, '2022-12-10 18:47:58', 0, '2022-12-10 18:47:58'),
(5, '122323', 57, '2023-12-13 17:14:47', 0, '2023-12-13 17:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_land_document_license_type`
--

CREATE TABLE `tbl_land_document_license_type` (
  `id` int(11) NOT NULL,
  `ldlt_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_land_document_license_type`
--

INSERT INTO `tbl_land_document_license_type` (`id`, `ldlt_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'นส3ก', 80, '2022-05-11 19:49:30', 0, '2022-05-11 19:49:30'),
(2, 'สปก', 80, '2022-05-11 19:49:36', 0, '2022-05-11 19:49:36'),
(3, 'ภบท5', 80, '2022-05-11 19:49:43', 0, '2022-05-11 19:49:43'),
(4, 'ฉโนด', 80, '2022-05-11 19:49:50', 0, '2022-05-11 19:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_land_rent_space`
--

CREATE TABLE `tbl_land_rent_space` (
  `id` int(11) NOT NULL,
  `land_rent_space_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_land_rent_space`
--

INSERT INTO `tbl_land_rent_space` (`id`, `land_rent_space_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'แปลงตัวเอง', 80, '2022-05-11 19:21:49', 0, '2022-05-11 19:21:49'),
(2, 'แปลงซื้อ', 80, '2022-05-11 19:21:56', 0, '2022-05-11 19:21:56'),
(3, 'แปลงรับจ้าง', 80, '2022-05-11 19:22:05', 0, '2022-05-11 19:22:05'),
(4, 'แปลงซื้้อk', 22, '2022-12-06 21:02:34', 22, '2022-12-12 08:02:19'),
(5, 'แปลงซื้อm', 22, '2022-12-12 08:00:49', 0, '2022-12-12 08:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_land_type`
--

CREATE TABLE `tbl_land_type` (
  `id` int(11) NOT NULL,
  `land_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logistic_sendcane`
--

CREATE TABLE `tbl_logistic_sendcane` (
  `id` int(11) NOT NULL,
  `plot_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `harvest_carcut_name` varchar(30) DEFAULT NULL,
  `driver_user_id` int(11) DEFAULT NULL,
  `harvest_truck_license_plate` varchar(30) DEFAULT NULL,
  `truck_status` varchar(20) DEFAULT NULL,
  `truck_tun_driver` double DEFAULT NULL,
  `truck_tun_fac` double DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_fac` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `bin_code` varchar(20) DEFAULT NULL,
  `bin_image` varchar(100) DEFAULT NULL,
  `driver_desc` varchar(50) DEFAULT NULL,
  `driver_image` varchar(100) DEFAULT NULL,
  `admin_status` varchar(20) DEFAULT NULL,
  `admin_date` datetime DEFAULT NULL,
  `admin_desc` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_logistic_sendcane`
--

INSERT INTO `tbl_logistic_sendcane` (`id`, `plot_key`, `harvest_carcut_name`, `driver_user_id`, `harvest_truck_license_plate`, `truck_status`, `truck_tun_driver`, `truck_tun_fac`, `date_start`, `date_fac`, `date_end`, `bin_code`, `bin_image`, `driver_desc`, `driver_image`, `admin_status`, `admin_date`, `admin_desc`, `created_at`, `updated_at`) VALUES
(6, '200210119481400', 'ch10', 13, 'ลย00988', 'success', 32, 33.45, '2022-11-24 05:24:02', '2022-11-24 06:24:02', '2022-11-24 07:24:02', '009/99', 'image-1666611463330.png', 'test send data', 'image-1666611463330.png', 'success', '2022-11-24 10:24:02', 'เรียบร้อย', '2022-11-25 08:31:35', '2022-11-25 08:31:35'),
(7, '200210119481400', 'ch10', 13, 'ลย00988', 'delivered', 32, NULL, '2022-11-24 05:24:02', NULL, NULL, NULL, NULL, 'ตัดสด', 'image-1666611463330.png', NULL, NULL, NULL, '2022-11-25 08:32:46', '2022-11-25 08:32:46'),
(8, '200210119481400', 'ch10', 13, 'ลย00988', 'shipped', 32, NULL, '2022-11-24 05:24:02', '2022-11-24 06:24:02', NULL, NULL, NULL, 'test send data', 'image-1666611463330.png', NULL, NULL, NULL, '2022-11-25 08:33:44', '2022-11-25 08:33:44'),
(9, '200210119481400', 'ch10', 13, 'ลย00988', 'pending', 32, 33.45, '2022-11-24 05:24:02', '2022-11-24 06:24:02', '2022-11-24 07:24:02', '009/99', 'image-1666611463330.png', 'test send data', 'image-1666611463330.png', NULL, NULL, NULL, '2022-11-25 08:34:29', '2022-11-25 08:34:29'),
(10, '2022062021371465', 'CH26', 9, 'ลย80-8900', 'pending', 39.86, 33.33, '2022-11-27 15:25:27', NULL, '2022-11-27 23:13:53', 'iuoo', 'image-1669565633890.png', 'ทดสอบ', 'image-1669537527679.png', 'success', '2022-11-27 22:24:02', 'comment 1234', '2022-11-27 15:25:29', '2022-11-27 23:13:55'),
(11, '201901189233361', 'คนตัด', 9, 'ลย80-8900', 'pending', 30, 30.69, '2022-11-27 21:37:53', NULL, '2022-11-27 21:38:25', 'mplii4456', 'image-1669559905748.png', 'ทดสอบ', 'image-1669559874168.png', NULL, NULL, NULL, '2022-11-27 21:37:55', '2022-11-27 21:38:26'),
(13, '201128120718634', 'คนตัด', 22, '2222', 'pending', 40, 43.5, '2022-12-01 17:06:58', NULL, '2022-12-01 17:08:52', 'mpl09', 'image-1669889333668.png', 'กดกก', 'image-1669889219208.png', NULL, NULL, NULL, '2022-12-01 17:07:01', '2022-12-01 17:08:54'),
(16, '201128120718634', 'CH-09', 40, '', 'pending', 20, 25.5, '2022-12-03 11:15:35', NULL, '2022-12-03 11:21:08', '009', 'image-1670041269796.png', '', 'image-1670040936643.png', NULL, NULL, NULL, '2022-12-03 11:15:38', '2022-12-03 11:21:11'),
(17, '201128120718634', 'CH-10', 40, '702146', 'pending', 28, 30, '2022-12-03 11:17:20', NULL, '2022-12-03 11:56:37', '98999', 'image-1670043398726.png', '', 'image-1670041041554.png', NULL, NULL, NULL, '2022-12-03 11:17:23', '2022-12-03 11:56:40'),
(18, '201128120718634', 'CH-10', 40, '2146', 'pending', 30, 25, '2022-12-03 11:28:45', NULL, '2022-12-06 10:30:03', '0001', 'image-1670297404352.png', 'ทดสอบ', 'image-1670041726656.png', NULL, NULL, NULL, '2022-12-03 11:28:47', '2022-12-06 10:30:05'),
(19, '210512123286573', 'CH26', 35, '80-4369', 'success', 20, 73, '2022-12-05 19:24:51', NULL, NULL, NULL, NULL, '', 'image-1670243090820.png', NULL, '2022-12-06 03:14:44', 'mfmfmf', '2022-12-05 19:24:52', '2022-12-06 10:15:08'),
(20, '201128120718634', 'CH-10', 40, '2146เรวัสดิ์ เดชสมบัตร', 'delivered', 20, NULL, '2022-12-06 10:27:28', NULL, NULL, NULL, NULL, '', 'image-1670297249956.png', NULL, NULL, NULL, '2022-12-06 10:27:31', '2022-12-06 10:27:31'),
(21, '220330129439562', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-06 14:41:14', NULL, NULL, NULL, NULL, '', 'image-1670312476454.png', NULL, NULL, NULL, '2022-12-06 14:41:17', '2022-12-06 14:41:17'),
(22, '201230120771369', 'CH-09', 49, '811417', 'delivered', 12, NULL, '2022-12-06 18:19:36', NULL, NULL, NULL, NULL, '0', 'image-1670325581540.png', NULL, NULL, NULL, '2022-12-06 18:19:44', '2022-12-06 18:19:44'),
(23, NULL, 'CH26', 24, '4369สว่าง ทัพธานี', 'delivered', 20, NULL, '2022-12-06 18:46:54', NULL, NULL, NULL, NULL, '\n', 'image-1670327216198.png', NULL, NULL, NULL, '2022-12-06 18:46:59', '2022-12-06 18:46:59'),
(24, '190307101102781', 'CH26', 24, '4369สว่าง ทัพธานี', 'pending', 20, 20600, '2022-12-06 18:50:39', NULL, '2022-12-06 18:55:57', '', 'image-1670327760826.png', '', 'image-1670327441181.png', NULL, NULL, NULL, '2022-12-06 18:50:42', '2022-12-06 18:56:05'),
(25, '190307101102781', 'CH26', 24, '4369สว่าง ทัพธานี', 'delivered', 20, NULL, '2022-12-06 18:54:30', NULL, NULL, NULL, NULL, '', 'image-1670327673163.png', NULL, NULL, NULL, '2022-12-06 18:54:37', '2022-12-06 18:54:37'),
(27, '201230120771369', 'CH-09', 34, '82-1417', 'delivered', 0, NULL, '2022-12-06 20:14:36', NULL, NULL, NULL, NULL, '', 'image-1670332477692.png', NULL, NULL, NULL, '2022-12-06 20:14:39', '2022-12-06 20:14:39'),
(28, '201230120771369', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-06 21:06:16', NULL, NULL, NULL, NULL, '', 'image-1670335577313.png', NULL, NULL, NULL, '2022-12-06 21:06:20', '2022-12-06 21:06:20'),
(29, NULL, 'CH-09', 24, '4369สว่าง ทัพธานี', 'delivered', 0, NULL, '2022-12-06 21:06:41', NULL, NULL, NULL, NULL, '', 'image-1670335602786.png', NULL, NULL, NULL, '2022-12-06 21:06:44', '2022-12-06 21:06:44'),
(30, '220330129439562', 'CH-09', 34, '70-2212', 'delivered', 0, NULL, '2022-12-07 07:52:07', NULL, NULL, NULL, NULL, '', 'image-1670374329259.png', NULL, NULL, NULL, '2022-12-07 07:52:10', '2022-12-07 07:52:10'),
(31, '220330129439562', 'CH-09', 49, 'ตาเปรี่ยม 82-1417 ลย', 'delivered', 0, NULL, '2022-12-07 07:54:40', NULL, NULL, NULL, NULL, '', 'image-1670374481899.png', NULL, NULL, NULL, '2022-12-07 07:54:43', '2022-12-07 07:54:43'),
(32, '220330129439562', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-07 08:50:04', NULL, NULL, NULL, NULL, '', 'image-1670377806535.png', NULL, NULL, NULL, '2022-12-07 08:50:07', '2022-12-07 08:50:07'),
(33, '220330129439562', 'CH-09', 22, '80', 'pending', 20, 25, '2022-12-07 09:21:32', NULL, '2022-12-07 09:23:07', '8888', 'image-1670379785161.png', 'ทดสอบ', 'image-1670379689515.png', NULL, NULL, NULL, '2022-12-07 09:21:30', '2022-12-07 09:23:06'),
(34, '201128120718634', 'CH26', 40, '2146เรวัสดิ์ เดชสมบัตร', 'success', 5, 20, '2022-12-07 09:30:42', NULL, NULL, NULL, NULL, 'ทดสอบ', 'image-1670380243480.png', NULL, '2022-12-07 02:30:56', '', '2022-12-07 09:30:45', '2022-12-07 09:31:14'),
(35, '190307101102781', 'CH26', 43, '2212วิน', 'pending', 20, 22760, '2022-12-07 09:54:19', NULL, '2022-12-07 09:56:43', '1012', 'image-1670381803382.png', 'fon', 'image-1670381658841.png', NULL, NULL, NULL, '2022-12-07 09:54:20', '2022-12-07 09:56:44'),
(36, '220330129439562', 'CH-09', 43, '2212วิน', 'pending', 20170, 20170, '2022-12-07 10:04:03', NULL, '2022-12-07 10:05:09', '1484', 'image-1670382309155.png', '', 'image-1670382243492.png', NULL, NULL, NULL, '2022-12-07 10:04:04', '2022-12-07 10:05:10'),
(37, '220330129439562', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-07 10:10:25', NULL, NULL, NULL, NULL, '', 'image-1670382627423.png', NULL, NULL, NULL, '2022-12-07 10:10:28', '2022-12-07 10:10:28'),
(38, '220330129439562', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-07 12:28:30', NULL, NULL, NULL, NULL, '', 'image-1670390911917.png', NULL, NULL, NULL, '2022-12-07 12:28:39', '2022-12-07 12:28:39'),
(40, '201123120716823', 'CH-10', 48, '1194แบงค์', 'delivered', 20670, NULL, '2022-12-07 12:58:07', NULL, NULL, NULL, NULL, '6035020007', 'image-1670392688244.png', NULL, NULL, NULL, '2022-12-07 12:58:09', '2022-12-07 12:58:09'),
(41, '220330129439562', 'CH-09', 34, '804369', 'delivered', 0, NULL, '2022-12-07 13:23:50', NULL, NULL, NULL, NULL, '', 'image-1670394232789.png', NULL, NULL, NULL, '2022-12-07 13:23:54', '2022-12-07 13:23:54'),
(43, '220330129439562', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-07 14:40:22', NULL, NULL, NULL, NULL, '', 'image-1670398824019.png', NULL, NULL, NULL, '2022-12-07 14:40:25', '2022-12-07 14:40:25'),
(46, '201230120771369', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-07 19:47:20', NULL, NULL, NULL, NULL, '', 'image-1670417242064.png', NULL, NULL, NULL, '2022-12-07 19:47:28', '2022-12-07 19:47:28'),
(47, '220330129439562', 'CH-09', 34, '821568', 'delivered', 0, NULL, '2022-12-07 21:05:56', NULL, NULL, NULL, NULL, '', 'image-1670421956674.png', NULL, NULL, NULL, '2022-12-07 21:05:58', '2022-12-07 21:05:58'),
(48, '220330129439562', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-07 22:19:50', NULL, NULL, NULL, NULL, '', 'image-1670426394092.png', NULL, NULL, NULL, '2022-12-07 22:19:55', '2022-12-07 22:19:55'),
(49, '220330129439562', 'CH-09', 34, '821568', 'delivered', 0, NULL, '2022-12-08 07:59:29', NULL, NULL, NULL, NULL, '', 'image-1670461171279.png', NULL, NULL, NULL, '2022-12-08 07:59:32', '2022-12-08 07:59:32'),
(50, '220330129439562', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-08 09:07:27', NULL, NULL, NULL, NULL, '', 'image-1670465248958.png', NULL, NULL, NULL, '2022-12-08 09:07:32', '2022-12-08 09:07:32'),
(51, '201128120718634', 'CH26', 9, '0904โกศล(อะ)', 'delivered', 33, NULL, '2022-12-08 16:04:05', NULL, NULL, NULL, NULL, 'uii', 'image-1670490245580.png', NULL, NULL, NULL, '2022-12-08 16:04:06', '2022-12-08 16:04:06'),
(52, '220326129438106', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-08 19:08:46', NULL, NULL, NULL, NULL, '', 'image-1670501329282.png', NULL, NULL, NULL, '2022-12-08 19:08:50', '2022-12-08 19:08:50'),
(53, '220422129467994', 'CH-09', 34, '806699', 'delivered', 0, NULL, '2022-12-09 07:11:42', NULL, NULL, NULL, NULL, '', 'image-1670544703178.png', NULL, NULL, NULL, '2022-12-09 07:11:44', '2022-12-09 07:11:44'),
(54, '220422129467994', 'CH-09', 34, '821568', 'delivered', 0, NULL, '2022-12-09 09:02:13', NULL, NULL, NULL, NULL, '', 'image-1670551337230.png', NULL, NULL, NULL, '2022-12-09 09:02:18', '2022-12-09 09:02:18'),
(55, '220118128230793', 'ch26', 35, '702146', 'delivered', 20, NULL, '2022-12-09 09:46:36', NULL, NULL, NULL, NULL, '', 'image-1670553997085.png', NULL, NULL, NULL, '2022-12-09 09:46:38', '2022-12-09 09:46:38'),
(56, '220326129438106', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-09 09:50:32', NULL, NULL, NULL, NULL, '', 'image-1670554233338.png', NULL, NULL, NULL, '2022-12-09 09:50:34', '2022-12-09 09:50:34'),
(57, '220326129438106', 'CH-09', 34, '806699', 'delivered', 0, NULL, '2022-12-09 12:07:07', NULL, NULL, NULL, NULL, '', 'image-1670562428664.png', NULL, NULL, NULL, '2022-12-09 12:07:10', '2022-12-09 12:07:10'),
(58, '220326129438106', 'CH-09', 34, '821568', 'delivered', 0, NULL, '2022-12-09 13:35:41', NULL, NULL, NULL, NULL, '', 'image-1670567743380.png', NULL, NULL, NULL, '2022-12-09 13:35:44', '2022-12-09 13:35:44'),
(59, '220326129438106', 'CH-09', 34, '804369', 'delivered', 0, NULL, '2022-12-09 14:19:04', NULL, NULL, NULL, NULL, '', 'image-1670570345746.png', NULL, NULL, NULL, '2022-12-09 14:19:06', '2022-12-09 14:19:06'),
(60, '201201120719244', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-09 15:14:06', NULL, NULL, NULL, NULL, '', 'image-1670573648178.png', NULL, NULL, NULL, '2022-12-09 15:14:09', '2022-12-09 15:14:09'),
(61, '201201120719244', 'CH-09', 34, '806699', 'delivered', 0, NULL, '2022-12-09 16:30:02', NULL, NULL, NULL, NULL, '', 'image-1670578204440.png', NULL, NULL, NULL, '2022-12-09 16:30:06', '2022-12-09 16:30:06'),
(62, '201230120771369', 'CH-09', 50, 'ตาเปรี่ยม 82-1417 ลย', 'success', 10200, 10200, '2022-12-09 16:45:48', NULL, NULL, NULL, NULL, '6/12', 'image-1670579147763.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-09 16:45:49', '2022-12-10 15:24:50'),
(63, '201230120771369', 'CH-09', 50, '4369สว่าง ทัพธานี', 'delivered', 18220, NULL, '2022-12-09 16:47:29', NULL, NULL, NULL, NULL, '06/12', 'image-1670579248047.png', NULL, NULL, NULL, '2022-12-09 16:47:30', '2022-12-09 16:47:30'),
(64, '220330129439562', 'CH-09', 50, '4369สว่าง ทัพธานี', 'delivered', 20600, NULL, '2022-12-09 16:48:36', NULL, NULL, NULL, NULL, '06/12', 'image-1670579315285.png', NULL, NULL, NULL, '2022-12-09 16:48:36', '2022-12-09 16:48:36'),
(65, '220330129439562', 'CH-09', 50, '2212ประกอบ', 'delivered', 20170, NULL, '2022-12-09 16:49:38', NULL, NULL, NULL, NULL, '07/12', 'image-1670579377615.png', NULL, NULL, NULL, '2022-12-09 16:49:38', '2022-12-09 16:49:38'),
(66, '220330129439562', 'CH-09', 50, '80-8462', 'delivered', 18370, NULL, '2022-12-09 16:50:58', NULL, NULL, NULL, NULL, '07/12', 'image-1670579457711.png', NULL, NULL, NULL, '2022-12-09 16:50:58', '2022-12-09 16:50:58'),
(67, '220330129439562', 'CH-09', 50, '82-1568', 'delivered', 19910, NULL, '2022-12-09 16:52:34', NULL, NULL, NULL, NULL, '07/12', 'image-1670579552991.png', NULL, NULL, NULL, '2022-12-09 16:52:33', '2022-12-09 16:52:33'),
(68, '220330129439562', 'CH-09', 50, '4369สว่าง ทัพธานี', 'delivered', 19600, NULL, '2022-12-09 16:53:13', NULL, NULL, NULL, NULL, '07/12', 'image-1670579592526.png', NULL, NULL, NULL, '2022-12-09 16:53:13', '2022-12-09 16:53:13'),
(69, '220330129439562', 'CH-09', 50, '821568', 'delivered', 19550, NULL, '2022-12-09 16:54:05', NULL, NULL, NULL, NULL, '07/12', 'image-1670579644017.png', NULL, NULL, NULL, '2022-12-09 16:54:04', '2022-12-09 16:54:04'),
(70, '220330129439562', 'CH-09', 50, '808462', 'delivered', 18560, NULL, '2022-12-09 16:54:59', NULL, NULL, NULL, NULL, '07/12', 'image-1670579698663.png', NULL, NULL, NULL, '2022-12-09 16:54:59', '2022-12-09 16:54:59'),
(71, '220330129439562', 'CH-09', 50, '808462', 'delivered', 18470, NULL, '2022-12-09 16:55:49', NULL, NULL, NULL, NULL, '07/12', 'image-1670579748561.png', NULL, NULL, NULL, '2022-12-09 16:55:49', '2022-12-09 16:55:49'),
(72, '201201120719244', 'CH-09', 50, '804369', 'delivered', 19690, NULL, '2022-12-09 16:57:11', NULL, NULL, NULL, NULL, '07/12', 'image-1670579830288.png', NULL, NULL, NULL, '2022-12-09 16:57:11', '2022-12-09 16:57:11'),
(73, '220330129439562', 'CH-09', 50, '821568', 'delivered', 20170, NULL, '2022-12-09 16:58:47', NULL, NULL, NULL, NULL, '08/12', 'image-1670579926428.png', NULL, NULL, NULL, '2022-12-09 16:58:47', '2022-12-09 16:58:47'),
(74, '220330129439562', 'CH-09', 50, '821568', 'delivered', 19810, NULL, '2022-12-09 16:59:29', NULL, NULL, NULL, NULL, '08/12', 'image-1670579968206.png', NULL, NULL, NULL, '2022-12-09 16:59:29', '2022-12-09 16:59:29'),
(75, '220330129439562', 'CH-09', 50, '806699', 'delivered', 21240, NULL, '2022-12-09 17:01:56', NULL, NULL, NULL, NULL, '09/12', 'image-1670580116113.png', NULL, NULL, NULL, '2022-12-09 17:01:57', '2022-12-09 17:01:57'),
(76, '220330129439562', 'CH-09', 50, '821568', 'delivered', 18950, NULL, '2022-12-09 17:03:02', NULL, NULL, NULL, NULL, '09/12', 'image-1670580181362.png', NULL, NULL, NULL, '2022-12-09 17:03:02', '2022-12-09 17:03:02'),
(77, '220326129438106', 'CH-09', 50, '804369', 'success', 19530, 19530, '2022-12-09 17:09:08', NULL, NULL, NULL, NULL, '09/12', 'image-1670580547206.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-09 17:09:08', '2022-12-10 14:36:06'),
(78, NULL, 'ทีมตัดอ้อยลำ', 22, 'l5018', 'delivered', 222, NULL, '2022-12-10 07:00:12', NULL, NULL, NULL, NULL, 'ทดสอบ', 'image-1670630410825.png', NULL, NULL, NULL, '2022-12-10 07:00:17', '2022-12-10 07:00:17'),
(79, '201201120719244', 'CH-09', 34, '821568', 'delivered', 0, NULL, '2022-12-10 08:27:23', NULL, NULL, NULL, NULL, '', 'image-1670635645079.png', NULL, NULL, NULL, '2022-12-10 08:27:26', '2022-12-10 08:27:26'),
(80, '201201120719244', 'CH-09', 34, '804369', 'delivered', 0, NULL, '2022-12-10 09:08:59', NULL, NULL, NULL, NULL, '', 'image-1670638140577.png', NULL, NULL, NULL, '2022-12-10 09:09:01', '2022-12-10 09:09:01'),
(81, '201201120719244', 'CH-09', 34, '808462', 'delivered', 0, NULL, '2022-12-10 09:43:27', NULL, NULL, NULL, NULL, '', 'image-1670640208454.png', NULL, NULL, NULL, '2022-12-10 09:43:35', '2022-12-10 09:43:35'),
(82, '210326122432761', 'CH26', 50, '70-2146/47', 'success', 32550, 32550, '2022-12-10 11:23:43', NULL, NULL, NULL, NULL, '07/12', 'image-1670646221346.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 11:23:42', '2022-12-10 14:35:38'),
(83, '220112128085809', 'CH26', 50, '70-2146/47', 'success', 28680, 28680, '2022-12-10 11:26:14', NULL, NULL, NULL, NULL, '06/12', 'image-1670646373365.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 11:26:14', '2022-12-10 14:35:20'),
(84, '220112128085809', 'CH26', 50, '2212ประกอบ', 'success', 22760, 22760, '2022-12-10 11:26:56', NULL, NULL, NULL, NULL, '06/12', 'image-1670646414675.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 11:26:55', '2022-12-10 15:25:35'),
(85, '220112128085809', 'CH26', 50, '80-8462', 'success', 21520, 21520, '2022-12-10 11:27:44', NULL, NULL, NULL, NULL, '06/12', 'image-1670646462244.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 11:27:43', '2022-12-10 14:34:57'),
(86, '220112128085809', 'CH26', 50, '70-2146/47', 'success', 29150, 29150, '2022-12-10 11:28:44', NULL, NULL, NULL, NULL, '05/12', 'image-1670646522523.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 11:28:43', '2022-12-10 14:34:44'),
(87, '220112128085809', 'CH26', 50, '80-4369', 'success', 81820, 81820, '2022-12-10 11:29:27', NULL, NULL, NULL, NULL, '05/12', 'image-1670646565563.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 11:29:26', '2022-12-10 14:34:16'),
(88, '210120121094386', 'CH26', 50, '70-2146/47', 'success', 13530, 13530, '2022-12-10 11:32:06', NULL, NULL, NULL, NULL, '09/12', 'image-1670646724877.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 11:32:05', '2022-12-10 15:26:04'),
(89, '210120121094386', 'CH26', 50, '82-1417', 'success', 10850, 10850, '2022-12-10 11:32:52', NULL, NULL, NULL, NULL, '09/12', 'image-1670646771083.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 11:32:52', '2022-12-10 14:32:12'),
(90, '201201120719244', 'CH-09', 34, '80-6699', 'delivered', 0, NULL, '2022-12-10 11:41:38', NULL, NULL, NULL, NULL, '', 'image-1670647299720.png', NULL, NULL, NULL, '2022-12-10 11:41:40', '2022-12-10 11:41:40'),
(91, '201230120771369', 'CH26', 50, '82-1417', 'delivered', 11570, NULL, '2022-12-10 12:03:33', NULL, NULL, NULL, NULL, '07/12', 'image-1670648611227.png', NULL, NULL, NULL, '2022-12-10 12:03:32', '2022-12-10 12:03:32'),
(92, '201230120771369', 'CH26', 50, 'ตาเปรี่ยม 82-1417 ลย', 'delivered', 12020, NULL, '2022-12-10 12:04:15', NULL, NULL, NULL, NULL, '07/12', 'image-1670648653730.png', NULL, NULL, NULL, '2022-12-10 12:04:15', '2022-12-10 12:04:15'),
(93, '201230120771369', 'CH26', 50, '70-2146/47', 'delivered', 31870, NULL, '2022-12-10 12:04:56', NULL, NULL, NULL, NULL, '07/12', 'image-1670648694425.png', NULL, NULL, NULL, '2022-12-10 12:04:55', '2022-12-10 12:04:55'),
(94, '201230120771369', 'CH26', 50, '80-4369', 'delivered', 22020, NULL, '2022-12-10 12:06:32', NULL, NULL, NULL, NULL, '08/12', 'image-1670648790328.png', NULL, NULL, NULL, '2022-12-10 12:06:31', '2022-12-10 12:06:31'),
(95, '201230120771369', 'CH26', 50, 'ตาเปรี่ยม 82-1417 ลย', 'delivered', 12080, NULL, '2022-12-10 12:10:44', NULL, NULL, NULL, NULL, '08/12', 'image-1670649042665.png', NULL, NULL, NULL, '2022-12-10 12:10:43', '2022-12-10 12:10:43'),
(96, '201230120771369', 'CH26', 50, '80-4369', 'delivered', 23660, NULL, '2022-12-10 12:11:26', NULL, NULL, NULL, NULL, '08/12', 'image-1670649084495.png', NULL, NULL, NULL, '2022-12-10 12:11:25', '2022-12-10 12:11:25'),
(97, '220330129439562', 'CH26', 50, 'ตาเปรี่ยม 82-1417 ลย', 'delivered', 12710, NULL, '2022-12-10 12:12:23', NULL, NULL, NULL, NULL, '08/12', 'image-1670649141967.png', NULL, NULL, NULL, '2022-12-10 12:12:22', '2022-12-10 12:12:22'),
(98, '220330129439562', 'CH26', 50, '70-2146/47', 'delivered', 31590, NULL, '2022-12-10 12:13:07', NULL, NULL, NULL, NULL, '08/12', 'image-1670649186179.png', NULL, NULL, NULL, '2022-12-10 12:13:07', '2022-12-10 12:13:07'),
(99, '220330129439562', 'CH-09', 50, '80-4369', 'delivered', 20600, NULL, '2022-12-10 12:19:54', NULL, NULL, NULL, NULL, '06/12', 'image-1670649592411.png', NULL, NULL, NULL, '2022-12-10 12:19:53', '2022-12-10 12:19:53'),
(100, '220330129439562', 'CH-09', 50, '80-8462', 'delivered', 18100, NULL, '2022-12-10 12:21:21', NULL, NULL, NULL, NULL, '08/12', 'image-1670649679935.png', NULL, NULL, NULL, '2022-12-10 12:21:21', '2022-12-10 12:21:21'),
(101, '220330129439562', 'CH-09', 50, '80-8462', 'delivered', 17940, NULL, '2022-12-10 12:22:03', NULL, NULL, NULL, NULL, '08/12', 'image-1670649721302.png', NULL, NULL, NULL, '2022-12-10 12:22:03', '2022-12-10 12:22:03'),
(102, '220330129439562', 'CH-09', 50, '80-8462', 'delivered', 17360, NULL, '2022-12-10 12:23:09', NULL, NULL, NULL, NULL, '09/12', 'image-1670649787709.png', NULL, NULL, NULL, '2022-12-10 12:23:09', '2022-12-10 12:23:09'),
(103, '201201120719244', 'CH-09', 50, '80-4862', 'delivered', 17090, NULL, '2022-12-10 12:24:18', NULL, NULL, NULL, NULL, '10/12', 'image-1670649857113.png', NULL, NULL, NULL, '2022-12-10 12:24:18', '2022-12-10 12:24:18'),
(104, '201201120719244', 'CH-09', 50, '80-4369', 'delivered', 19690, NULL, '2022-12-10 12:25:05', NULL, NULL, NULL, NULL, '07/12', 'image-1670649903817.png', NULL, NULL, NULL, '2022-12-10 12:25:04', '2022-12-10 12:25:04'),
(105, '201201120719244', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-10 12:26:09', NULL, NULL, NULL, NULL, '', 'image-1670649970797.png', NULL, NULL, NULL, '2022-12-10 12:26:11', '2022-12-10 12:26:11'),
(106, '220330129439562', 'CH-09', 50, '80-8462', 'delivered', 17360, NULL, '2022-12-10 12:27:09', NULL, NULL, NULL, NULL, '09/12', 'image-1670650028085.png', NULL, NULL, NULL, '2022-12-10 12:27:09', '2022-12-10 12:27:09'),
(107, '220113128110804', 'CH-10', 50, '81-1194', 'success', 18110, 18110, '2022-12-10 12:34:33', NULL, NULL, NULL, NULL, '09/12', 'image-1670650471540.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:34:32', '2022-12-10 15:26:33'),
(108, '220113128110804', 'CH-10', 50, '70-0912', 'success', 20470, 20470, '2022-12-10 12:36:20', NULL, NULL, NULL, NULL, '09/12', 'image-1670650578351.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:36:19', '2022-12-10 15:26:44'),
(109, '220113128110804', 'CH-10', 50, '82-1092', 'success', 19780, 19780, '2022-12-10 12:37:03', NULL, NULL, NULL, NULL, '09/12', 'image-1670650622012.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:37:02', '2022-12-10 15:26:55'),
(110, '220113128110804', 'CH-10', 50, '70-2212', 'success', 20440, 20440, '2022-12-10 12:37:43', NULL, NULL, NULL, NULL, '09/12', 'image-1670650661574.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:37:42', '2022-12-10 15:27:08'),
(111, '220113128110804', 'CH-10', 50, '70-2216', 'success', 19210, 19210, '2022-12-10 12:38:20', NULL, NULL, NULL, NULL, '09/12', 'image-1670650698901.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:38:20', '2022-12-10 15:27:17'),
(112, '220113128110804', 'CH-10', 50, '70-0912', 'success', 20570, 20570, '2022-12-10 12:41:00', NULL, NULL, NULL, NULL, 'ขึ้น9ลง10', 'image-1670650858876.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:40:59', '2022-12-10 14:51:06'),
(113, '220113128110804', 'CH-10', 50, '81-1194', 'success', 19970, 19970, '2022-12-10 12:42:03', NULL, NULL, NULL, NULL, 'ขึ้น9ลง10', 'image-1670650921500.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:42:02', '2022-12-10 15:27:32'),
(114, '220113128110804', 'CH-10', 50, '81-1194', 'success', 21210, 21210, '2022-12-10 12:45:15', NULL, NULL, NULL, NULL, '08/12', 'image-1670651113902.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:45:15', '2022-12-10 14:50:45'),
(115, '220113128110804', 'CH-10', 50, '81-1194', 'success', 19520, 19520, '2022-12-10 12:46:19', NULL, NULL, NULL, NULL, '08/12', 'image-1670651177722.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:46:18', '2022-12-10 15:27:46'),
(116, '220113128110804', 'CH-10', 50, '70-0912', 'success', 20400, 20400, '2022-12-10 12:46:53', NULL, NULL, NULL, NULL, '08/12', 'image-1670651211616.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:46:52', '2022-12-10 15:27:55'),
(117, '200407120567324', 'CH-10', 50, '70-2216', 'success', 18950, 18950, '2022-12-10 12:48:52', NULL, NULL, NULL, NULL, '08/12', 'image-1670651330631.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:48:53', '2022-12-10 15:28:10'),
(118, '211227127674329', 'CH-10', 50, '70-2212', 'success', 20270, 20270, '2022-12-10 12:49:47', NULL, NULL, NULL, NULL, '08/12', 'image-1670651385375.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:49:46', '2022-12-10 14:49:36'),
(119, '211227127674329', 'CH-10', 50, '82-1092', 'success', 19820, 19820, '2022-12-10 12:50:24', NULL, NULL, NULL, NULL, '08/12', 'image-1670651422648.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:50:23', '2022-12-10 14:49:09'),
(120, '220118128233731', 'CH-10', 50, '70-2212', 'success', 22960, 22960, '2022-12-10 12:51:43', NULL, NULL, NULL, NULL, '07/12', 'image-1670651501240.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:51:45', '2022-12-10 14:48:51'),
(121, '220118128233731', 'CH-10', 50, '81-1194', 'success', 20670, 20670, '2022-12-10 12:52:19', NULL, NULL, NULL, NULL, '07/12', 'image-1670651538014.png', NULL, '2022-12-10 08:22:44', 'ใส่เลขแปลงผิด', '2022-12-10 12:53:14', '2022-12-10 15:28:25'),
(122, '220118128233731', 'CH-10', 50, '82-1092', 'success', 15520, 22350, '2022-12-10 12:53:50', NULL, NULL, NULL, NULL, '07/12', 'image-1670651628911.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:53:50', '2022-12-10 14:48:06'),
(123, '220118128233731', 'CH-10', 50, '70-0912', 'success', 22350, 22350, '2022-12-10 12:54:30', NULL, NULL, NULL, NULL, '07/12', 'image-1670651668927.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:54:31', '2022-12-10 14:47:49'),
(124, '220113128110804', 'CH-10', 50, '81-1194', 'success', 19520, 19520, '2022-12-10 12:55:26', NULL, NULL, NULL, NULL, '08/12', 'image-1670651725073.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:55:26', '2022-12-10 14:47:24'),
(125, '220113128110804', 'CH-10', 50, '70-0912', 'success', 20400, 20400, '2022-12-10 12:55:56', NULL, NULL, NULL, NULL, '08/12', 'image-1670651755066.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:55:55', '2022-12-10 14:47:03'),
(126, '220118128233731', 'CH-10', 50, '82-1092', 'success', 20100, 20100, '2022-12-10 12:56:51', NULL, NULL, NULL, NULL, '06/12', 'image-1670651809853.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:56:51', '2022-12-10 14:46:37'),
(127, '220118128233731', 'CH-10', 50, '81-1194', 'success', 19770, 19770, '2022-12-10 12:57:32', NULL, NULL, NULL, NULL, '06/12', 'image-1670651850320.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:57:33', '2022-12-10 14:44:56'),
(128, '220118128233731', 'CH-10', 50, '70-0912', 'success', 20950, 20950, '2022-12-10 12:58:09', NULL, NULL, NULL, NULL, '06/12', 'image-1670651887576.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:58:09', '2022-12-10 14:44:12'),
(129, '220118128233731', 'CH-10', 50, '81-1194', 'success', 20120, 20120, '2022-12-10 12:58:41', NULL, NULL, NULL, NULL, '06/12', 'image-1670651919315.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:58:42', '2022-12-10 14:43:51'),
(130, '220118128233731', 'CH-10', 50, '70-0912', 'success', 22410, 22410, '2022-12-10 12:59:09', NULL, NULL, NULL, NULL, '06/12', 'image-1670651947901.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:59:09', '2022-12-10 14:43:29'),
(131, '220118128233731', 'CH-10', 50, '81-1194', 'success', 14330, 14330, '2022-12-10 12:59:44', NULL, NULL, NULL, NULL, '05/12', 'image-1670651982742.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 12:59:43', '2022-12-10 14:42:58'),
(132, '220118128233731', 'CH-10', 50, '70-0912', 'success', 20840, 20840, '2022-12-10 13:00:16', NULL, NULL, NULL, NULL, '05/12', 'image-1670652014346.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 13:00:15', '2022-12-10 14:42:19'),
(133, '220118128233731', 'CH-10', 50, '82-1092', 'success', 15140, 15140, '2022-12-10 13:02:09', NULL, NULL, NULL, NULL, '05/12', 'image-1670652127398.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 13:02:08', '2022-12-10 14:41:51'),
(134, '200407120567324', 'CH26', 50, '82-1417', 'success', 10670, 10670, '2022-12-10 13:46:16', NULL, NULL, NULL, NULL, '10/12', 'image-1670654774875.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 13:46:16', '2022-12-10 14:37:43'),
(135, '201201120719244', 'CH-09', 34, '80-8462', 'delivered', 0, NULL, '2022-12-10 13:54:21', NULL, NULL, NULL, NULL, '', 'image-1670655264014.png', NULL, NULL, NULL, '2022-12-10 13:54:25', '2022-12-10 13:54:25'),
(136, '201201120719244', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-10 13:55:13', NULL, NULL, NULL, NULL, '', 'image-1670655315421.png', NULL, NULL, NULL, '2022-12-10 13:55:18', '2022-12-10 13:55:18'),
(137, '210219121807877', 'CH-10', 50, '82-1092', 'success', 19950, 19950, '2022-12-10 14:08:05', NULL, NULL, NULL, NULL, '10/12', 'image-1670656083369.png', NULL, '2022-12-10 07:17:30', 'ใส่หมายเลขแปลงผิด', '2022-12-10 14:08:05', '2022-12-10 14:28:07'),
(138, '210324122429374', 'CH-10', 50, '70-2212', 'delivered', 20360, NULL, '2022-12-10 15:04:59', NULL, NULL, NULL, NULL, '10/12', 'image-1670659500573.png', NULL, NULL, NULL, '2022-12-10 15:05:11', '2022-12-10 15:05:11'),
(139, NULL, 'CH-09', 50, '82-1568', 'delivered', 19610, NULL, '2022-12-10 16:09:36', NULL, NULL, NULL, NULL, 'ใส่หมายเลขแปลงผิด 10/12', 'image-1670663374266.png', NULL, NULL, NULL, '2022-12-10 16:09:35', '2022-12-10 16:09:35'),
(140, NULL, 'CH-09', 50, '82-1568', 'delivered', 19450, NULL, '2022-12-10 16:10:36', NULL, NULL, NULL, NULL, 'ใส่หมายเลขแปลงผิด 10/12', 'image-1670663435119.png', NULL, NULL, NULL, '2022-12-10 16:10:36', '2022-12-10 16:10:36'),
(141, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 19610, NULL, '2022-12-10 16:16:26', NULL, NULL, NULL, NULL, '603412/0014', 'image-1670663784666.png', NULL, NULL, NULL, '2022-12-10 16:16:26', '2022-12-10 16:16:26'),
(142, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 19450, NULL, '2022-12-10 16:17:15', NULL, NULL, NULL, NULL, '603412/0014', 'image-1670663833932.png', NULL, NULL, NULL, '2022-12-10 16:17:15', '2022-12-10 16:17:15'),
(143, '201201120719244', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-10 16:52:19', NULL, NULL, NULL, NULL, '', 'image-1670665941579.png', NULL, NULL, NULL, '2022-12-10 16:52:22', '2022-12-10 16:52:22'),
(144, '201201120719244', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-10 18:34:51', NULL, NULL, NULL, NULL, '', 'image-1670672093688.png', NULL, NULL, NULL, '2022-12-10 18:34:55', '2022-12-10 18:34:55'),
(145, '201201120719244', 'CH-09', 34, '80-8462', 'delivered', 0, NULL, '2022-12-11 08:04:28', NULL, NULL, NULL, NULL, '', 'image-1670720669964.png', NULL, NULL, NULL, '2022-12-11 08:04:31', '2022-12-11 08:04:31'),
(146, '220118128230796', 'ทีมตัดอ้อยลำ', 50, '70-0978/0991', 'delivered', 23580, NULL, '2022-12-11 10:19:02', NULL, NULL, NULL, NULL, '603412', 'image-1670728739653.png', NULL, NULL, NULL, '2022-12-11 10:19:02', '2022-12-11 10:19:02'),
(147, NULL, '', 35, '702146', 'delivered', 0, NULL, '2022-12-11 10:23:51', NULL, NULL, NULL, NULL, '', 'image-1670729032273.png', NULL, NULL, NULL, '2022-12-11 10:23:53', '2022-12-11 10:23:53'),
(148, '210607124380407', 'CH-10', 50, '82-1092', 'delivered', 21160, NULL, '2022-12-11 13:51:59', NULL, NULL, NULL, NULL, '6034920002', 'image-1670741516729.png', NULL, NULL, NULL, '2022-12-11 13:51:58', '2022-12-11 13:51:58'),
(149, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21250, NULL, '2022-12-11 13:58:06', NULL, NULL, NULL, NULL, '6034920002', 'image-1670741884155.png', NULL, NULL, NULL, '2022-12-11 13:58:05', '2022-12-11 13:58:05'),
(150, '201201120719244', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-11 14:30:42', NULL, NULL, NULL, NULL, '', 'image-1670743843187.png', NULL, NULL, NULL, '2022-12-11 14:30:44', '2022-12-11 14:30:44'),
(151, '220107127951212', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-11 14:31:30', NULL, NULL, NULL, NULL, '', 'image-1670743891336.png', NULL, NULL, NULL, '2022-12-11 14:31:32', '2022-12-11 14:31:32'),
(152, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 21100, NULL, '2022-12-11 14:43:06', NULL, NULL, NULL, NULL, '6034920002', 'image-1670744584337.png', NULL, NULL, NULL, '2022-12-11 14:43:05', '2022-12-11 14:43:05'),
(153, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 19960, NULL, '2022-12-11 14:44:01', NULL, NULL, NULL, NULL, '6034920002', 'image-1670744638758.png', NULL, NULL, NULL, '2022-12-11 14:44:00', '2022-12-11 14:44:00'),
(154, '220107127951212', 'CH-09', 34, '80-6699', 'delivered', 0, NULL, '2022-12-11 14:50:30', NULL, NULL, NULL, NULL, '', 'image-1670745030982.png', NULL, NULL, NULL, '2022-12-11 14:50:32', '2022-12-11 14:50:32'),
(155, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 19060, NULL, '2022-12-11 15:25:37', NULL, NULL, NULL, NULL, '6034120089', 'image-1670747135184.png', NULL, NULL, NULL, '2022-12-11 15:25:36', '2022-12-11 15:25:36'),
(156, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 21290, NULL, '2022-12-11 15:38:54', NULL, NULL, NULL, NULL, '6034920008', 'image-1670747931985.png', NULL, NULL, NULL, '2022-12-11 15:38:53', '2022-12-11 15:38:53'),
(157, '220107127951212', 'CH-09', 34, '80-8613', 'delivered', 0, NULL, '2022-12-11 16:14:30', NULL, NULL, NULL, NULL, '', 'image-1670750071957.png', NULL, NULL, NULL, '2022-12-11 16:14:33', '2022-12-11 16:14:33'),
(158, '220118128230796', 'CH26', 50, '82-1417', 'delivered', 11250, NULL, '2022-12-11 16:52:49', NULL, NULL, NULL, NULL, '6037750008', 'image-1670752366778.png', NULL, NULL, NULL, '2022-12-11 16:52:48', '2022-12-11 16:52:48'),
(159, '220219128871674', 'CH26', 50, '82-1417 ลย', 'delivered', 12190, NULL, '2022-12-11 16:59:01', NULL, NULL, NULL, NULL, '623566', 'image-1670752738550.png', NULL, NULL, NULL, '2022-12-11 16:58:59', '2022-12-11 16:58:59'),
(160, '220509129997800', 'รถไถตัดอ้อยลำ', 63, '700878', 'delivered', 20, NULL, '2022-12-11 17:48:04', NULL, NULL, NULL, NULL, 'cรถตัดโบ้', 'image-1670755684934.png', NULL, NULL, NULL, '2022-12-11 17:48:06', '2022-12-11 17:48:06'),
(161, '200225119957653', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-12 06:43:43', NULL, NULL, NULL, NULL, '', 'image-1670802224890.png', NULL, NULL, NULL, '2022-12-12 06:43:46', '2022-12-12 06:43:46'),
(162, '200225119957653', 'CH-09', 34, '80-6699', 'delivered', 0, NULL, '2022-12-12 07:28:22', NULL, NULL, NULL, NULL, '', 'image-1670804902889.png', NULL, NULL, NULL, '2022-12-12 07:28:27', '2022-12-12 07:28:27'),
(163, '200225119957653', 'CH-09', 34, '80-8462', 'delivered', 0, NULL, '2022-12-12 09:25:03', NULL, NULL, NULL, NULL, '', 'image-1670811905250.png', NULL, NULL, NULL, '2022-12-12 09:25:06', '2022-12-12 09:25:06'),
(164, '200225119957653', 'CH-09', 34, '80-8613', 'delivered', 0, NULL, '2022-12-12 09:25:43', NULL, NULL, NULL, NULL, '', 'image-1670811944792.png', NULL, NULL, NULL, '2022-12-12 09:25:45', '2022-12-12 09:25:45'),
(165, '200225119957653', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-12 09:59:23', NULL, NULL, NULL, NULL, '', 'image-1670813965364.png', NULL, NULL, NULL, '2022-12-12 09:59:26', '2022-12-12 09:59:26'),
(166, '220219128871674', 'CH26', 50, '82-1417', 'delivered', 12580, NULL, '2022-12-12 10:25:03', NULL, NULL, NULL, NULL, '6235660003', 'image-1670815500004.png', NULL, NULL, NULL, '2022-12-12 10:25:01', '2022-12-12 10:25:01'),
(167, '220219128871674', 'ทีมตัดอ้อยลำ', 50, '70-0920', 'delivered', 19950, NULL, '2022-12-12 10:25:59', NULL, NULL, NULL, NULL, '603412', 'image-1670815555911.png', NULL, NULL, NULL, '2022-12-12 10:25:58', '2022-12-12 10:25:58'),
(168, '200225119957653', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-12 10:41:45', NULL, NULL, NULL, NULL, '', 'image-1670816506886.png', NULL, NULL, NULL, '2022-12-12 10:41:50', '2022-12-12 10:41:50'),
(169, '200225119957653', 'CH-09', 34, '80-6699', 'delivered', 0, NULL, '2022-12-12 11:32:12', NULL, NULL, NULL, NULL, '', 'image-1670819533962.png', NULL, NULL, NULL, '2022-12-12 11:32:18', '2022-12-12 11:32:18'),
(170, '200225119957653', 'CH-09', 34, '80-8613', 'delivered', 0, NULL, '2022-12-12 12:06:55', NULL, NULL, NULL, NULL, '', 'image-1670821616869.png', NULL, NULL, NULL, '2022-12-12 12:06:57', '2022-12-12 12:06:57'),
(171, '201128120718634', 'CH-10', 50, '82-1092', 'delivered', 21100, NULL, '2022-12-12 12:08:11', NULL, NULL, NULL, NULL, '6034920006', 'image-1670821687717.png', NULL, NULL, NULL, '2022-12-12 12:08:09', '2022-12-12 12:08:09'),
(172, '200225119957653', 'CH-09', 34, '80-8462', 'delivered', 0, NULL, '2022-12-12 12:38:21', NULL, NULL, NULL, NULL, '', 'image-1670823502921.png', NULL, NULL, NULL, '2022-12-12 12:38:24', '2022-12-12 12:38:24'),
(173, '200225119957653', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-12 13:33:56', NULL, NULL, NULL, NULL, '', 'image-1670826838271.png', NULL, NULL, NULL, '2022-12-12 13:33:59', '2022-12-12 13:33:59'),
(174, '220219128871674', 'CH26', 50, '70-2146/47', 'delivered', 14860, NULL, '2022-12-12 13:52:33', NULL, NULL, NULL, NULL, '6034300016', 'image-1670827949957.png', NULL, NULL, NULL, '2022-12-12 13:52:30', '2022-12-12 13:52:30'),
(175, '220219128871674', 'CH26', 50, '82-1417 ลย', 'delivered', 12580, NULL, '2022-12-12 13:53:57', NULL, NULL, NULL, NULL, '6235660003', 'image-1670828033848.png', NULL, NULL, NULL, '2022-12-12 13:53:55', '2022-12-12 13:53:55'),
(176, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 19110, NULL, '2022-12-12 13:58:48', NULL, NULL, NULL, NULL, '6034920006', 'image-1670828324666.png', NULL, NULL, NULL, '2022-12-12 13:58:45', '2022-12-12 13:58:45'),
(177, '200407120567327', 'CH26', 35, '702146', 'delivered', 30, NULL, '2022-12-12 14:38:25', NULL, NULL, NULL, NULL, 'c', 'image-1670830705722.png', NULL, NULL, NULL, '2022-12-12 14:38:26', '2022-12-12 14:38:26'),
(178, '200225119957653', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-12 15:39:57', NULL, NULL, NULL, NULL, '', 'image-1670834399226.png', NULL, NULL, NULL, '2022-12-12 15:40:00', '2022-12-12 15:40:00'),
(179, '200225119957653', 'CH-09', 34, '80-6699', 'delivered', 0, NULL, '2022-12-12 15:40:24', NULL, NULL, NULL, NULL, '', 'image-1670834426076.png', NULL, NULL, NULL, '2022-12-12 15:40:27', '2022-12-12 15:40:27'),
(180, '200225119957653', 'CH-09', 34, '80-8613', 'delivered', 0, NULL, '2022-12-12 16:24:08', NULL, NULL, NULL, NULL, '', 'image-1670837052024.png', NULL, NULL, NULL, '2022-12-12 16:24:13', '2022-12-12 16:24:13'),
(181, '210108120839817', '', 35, '821417', 'delivered', 0, NULL, '2022-12-12 16:40:25', NULL, NULL, NULL, NULL, '', 'image-1670838027096.png', NULL, NULL, NULL, '2022-12-12 16:40:28', '2022-12-12 16:40:28'),
(182, '200225119957653', 'CH-09', 34, '80-4369', 'delivered', 0, NULL, '2022-12-12 17:04:36', NULL, NULL, NULL, NULL, '', 'image-1670839478467.png', NULL, NULL, NULL, '2022-12-12 17:04:39', '2022-12-12 17:04:39'),
(183, '200225119957653', 'CH-09', 34, '80-8462', 'delivered', 0, NULL, '2022-12-12 17:42:30', NULL, NULL, NULL, NULL, '', 'image-1670841752447.png', NULL, NULL, NULL, '2022-12-12 17:42:33', '2022-12-12 17:42:33'),
(184, '220509129993557', 'รถไถตัดอ้อยลำ', 22, '0978วาธี คำป้อม', 'delivered', 40, NULL, '2022-12-12 18:12:00', NULL, NULL, NULL, NULL, 'c', 'image-1670843519992.png', NULL, NULL, NULL, '2022-12-12 18:12:01', '2022-12-12 18:12:01'),
(185, '220509129993557', 'รถไถตัดอ้อยลำ', 22, '0973ตาหง', 'delivered', 40, NULL, '2022-12-12 18:13:41', NULL, NULL, NULL, NULL, 'c', 'image-1670843623504.png', NULL, NULL, NULL, '2022-12-12 18:13:44', '2022-12-12 18:13:44'),
(186, '200408120571875', '', 35, '700983', 'delivered', 0, NULL, '2022-12-13 07:06:16', NULL, NULL, NULL, NULL, '', 'image-1670889977372.png', NULL, NULL, NULL, '2022-12-13 07:06:18', '2022-12-13 07:06:18'),
(187, '200408120571875', '', 35, '821417', 'delivered', 0, NULL, '2022-12-13 07:08:23', NULL, NULL, NULL, NULL, '', 'image-1670890104189.png', NULL, NULL, NULL, '2022-12-13 07:08:25', '2022-12-13 07:08:25'),
(188, '220218128855467', 'CH-09', 50, '80-6699', 'delivered', 19990, NULL, '2022-12-13 11:10:49', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904645311.png', NULL, NULL, NULL, '2022-12-13 11:10:46', '2022-12-13 11:10:46'),
(189, '220218128855467', 'CH-09', 50, '80-8462', 'delivered', 16660, NULL, '2022-12-13 11:11:36', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904692237.png', NULL, NULL, NULL, '2022-12-13 11:11:34', '2022-12-13 11:11:34'),
(190, '220218128855467', 'CH-09', 50, '80-8613', 'delivered', 16950, NULL, '2022-12-13 11:12:18', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904734079.png', NULL, NULL, NULL, '2022-12-13 11:12:14', '2022-12-13 11:12:14'),
(191, '220218128855467', 'CH-09', 50, '80-4369', 'delivered', 17500, NULL, '2022-12-13 11:12:55', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904771165.png', NULL, NULL, NULL, '2022-12-13 11:12:52', '2022-12-13 11:12:52'),
(192, '220218128855467', 'CH-09', 50, '80-8613', 'delivered', 16450, NULL, '2022-12-13 11:13:36', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904811582.png', NULL, NULL, NULL, '2022-12-13 11:13:32', '2022-12-13 11:13:32'),
(193, '220218128855467', 'CH-09', 50, '80-8462', 'delivered', 16820, NULL, '2022-12-13 11:14:16', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904851623.png', NULL, NULL, NULL, '2022-12-13 11:14:14', '2022-12-13 11:14:14'),
(194, '220218128855467', 'CH-09', 50, '80-4369', 'delivered', 18460, NULL, '2022-12-13 11:15:00', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904896123.png', NULL, NULL, NULL, '2022-12-13 11:14:57', '2022-12-13 11:14:57'),
(195, '220218128855467', 'CH-09', 50, '80-6699', 'delivered', 19150, NULL, '2022-12-13 11:15:44', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904939845.png', NULL, NULL, NULL, '2022-12-13 11:15:41', '2022-12-13 11:15:41'),
(196, '220218128855467', 'CH-09', 50, '80-8613', 'delivered', 16650, NULL, '2022-12-13 11:16:26', NULL, NULL, NULL, NULL, '6144480013', 'image-1670904981559.png', NULL, NULL, NULL, '2022-12-13 11:16:22', '2022-12-13 11:16:22'),
(197, '220218128855467', 'CH-09', 50, '80-4369', 'delivered', 17890, NULL, '2022-12-13 11:17:11', NULL, NULL, NULL, NULL, '6144480013', 'image-1670905026524.png', NULL, NULL, NULL, '2022-12-13 11:17:07', '2022-12-13 11:17:07'),
(198, '220218128855467', 'CH-09', 50, '80-8462', 'delivered', 17090, NULL, '2022-12-13 11:17:55', NULL, NULL, NULL, NULL, '6144480013', 'image-1670905070819.png', NULL, NULL, NULL, '2022-12-13 11:17:52', '2022-12-13 11:17:52'),
(199, '220218128855467', 'CH-09', 50, '80-8462', 'delivered', 17710, NULL, '2022-12-13 11:19:31', NULL, NULL, NULL, NULL, '6144480013', 'image-1670905166768.png', NULL, NULL, NULL, '2022-12-13 11:19:30', '2022-12-13 11:19:30'),
(200, '220218128855467', 'CH-09', 50, '82-1568', 'delivered', 17440, NULL, '2022-12-13 11:20:30', NULL, NULL, NULL, NULL, '6034120027', 'image-1670905225838.png', NULL, NULL, NULL, '2022-12-13 11:20:26', '2022-12-13 11:20:26'),
(201, '220218128855467', 'CH-09', 50, '82-1568', 'delivered', 17440, NULL, '2022-12-13 11:30:02', NULL, NULL, NULL, NULL, '6034120027', 'image-1670905797815.png', NULL, NULL, NULL, '2022-12-13 11:29:58', '2022-12-13 11:29:58'),
(202, '220218128855467', 'CH-09', 50, '80-4369', 'delivered', 19060, NULL, '2022-12-13 11:30:49', NULL, NULL, NULL, NULL, '6034120089', 'image-1670905845230.png', NULL, NULL, NULL, '2022-12-13 11:30:47', '2022-12-13 11:30:47'),
(203, '220218128855467', 'CH-09', 50, '80-6699', 'delivered', 15860, NULL, '2022-12-13 11:31:54', NULL, NULL, NULL, NULL, '6034120027', 'image-1670905909637.png', NULL, NULL, NULL, '2022-12-13 11:31:50', '2022-12-13 11:31:50'),
(204, '220218128855467', 'CH-09', 50, '80-8613', 'delivered', 17950, NULL, '2022-12-13 11:32:45', NULL, NULL, NULL, NULL, '6144480013', 'image-1670905961127.png', NULL, NULL, NULL, '2022-12-13 11:32:42', '2022-12-13 11:32:42'),
(205, '220218128855467', 'CH-09', 50, '80-4369', 'delivered', 18150, NULL, '2022-12-13 11:33:32', NULL, NULL, NULL, NULL, '6144480013', 'image-1670906008166.png', NULL, NULL, NULL, '2022-12-13 11:33:29', '2022-12-13 11:33:29'),
(206, '220218128855467', 'CH-09', 50, '80-8462', 'delivered', 17300, NULL, '2022-12-13 11:34:43', NULL, NULL, NULL, NULL, '6034120027', 'image-1670906078825.png', NULL, NULL, NULL, '2022-12-13 11:34:41', '2022-12-13 11:34:41'),
(207, '220218128855467', 'CH26', 50, '82-1417', 'delivered', 12080, NULL, '2022-12-13 11:36:43', NULL, NULL, NULL, NULL, '6034300009', 'image-1670906198653.png', NULL, NULL, NULL, '2022-12-13 11:36:40', '2022-12-13 11:36:40'),
(208, '220218128855467', 'CH26', 50, '70-2146/47', 'delivered', 13820, NULL, '2022-12-13 11:38:00', NULL, NULL, NULL, NULL, '6037750008', 'image-1670906276083.png', NULL, NULL, NULL, '2022-12-13 11:37:56', '2022-12-13 11:37:56'),
(209, '220218128855467', 'CH26', 50, '82-1417', 'delivered', 12190, NULL, '2022-12-13 11:38:59', NULL, NULL, NULL, NULL, '6235660003', 'image-1670906334992.png', NULL, NULL, NULL, '2022-12-13 11:38:55', '2022-12-13 11:38:55'),
(210, '220218128855467', 'CH26', 50, '70-2146/47', 'delivered', 14840, NULL, '2022-12-13 11:39:38', NULL, NULL, NULL, NULL, '6235660003', 'image-1670906374365.png', NULL, NULL, NULL, '2022-12-13 11:39:36', '2022-12-13 11:39:36'),
(211, '200225119957653', 'CH-09', 34, '80-1568', 'delivered', 0, NULL, '2022-12-13 12:31:12', NULL, NULL, NULL, NULL, '', 'image-1670909474145.png', NULL, NULL, NULL, '2022-12-13 12:31:15', '2022-12-13 12:31:15'),
(212, '220218128855467', 'CH-10', 50, '70-2216', 'delivered', 18640, NULL, '2022-12-13 13:50:15', NULL, NULL, NULL, NULL, '6034920011', 'image-1670914210657.png', NULL, NULL, NULL, '2022-12-13 13:50:11', '2022-12-13 13:50:11'),
(213, '220218128855467', 'CH-09', 50, '80-4369', 'delivered', 18610, NULL, '2022-12-13 13:51:01', NULL, NULL, NULL, NULL, '6144480013', 'image-1670914256824.png', NULL, NULL, NULL, '2022-12-13 13:50:58', '2022-12-13 13:50:58'),
(214, '220218128855467', 'CH26', 50, '70-2146/47', 'delivered', 14840, NULL, '2022-12-13 13:53:10', NULL, NULL, NULL, NULL, '6235660003', 'image-1670914385574.png', NULL, NULL, NULL, '2022-12-13 13:53:06', '2022-12-13 13:53:06'),
(215, '220218128855467', 'CH26', 50, '82-1417', 'delivered', 12300, NULL, '2022-12-13 13:53:53', NULL, NULL, NULL, NULL, '6235660003', 'image-1670914429334.png', NULL, NULL, NULL, '2022-12-13 13:53:50', '2022-12-13 13:53:50'),
(216, '220218128855467', 'CH26', 50, '70-2146-47', 'delivered', 14860, NULL, '2022-12-13 13:55:17', NULL, NULL, NULL, NULL, '6034300016', 'image-1670914512849.png', NULL, NULL, NULL, '2022-12-13 13:55:13', '2022-12-13 13:55:13'),
(217, '220218128855467', 'CH26', 50, '82-1417', 'delivered', 12580, NULL, '2022-12-13 13:55:57', NULL, NULL, NULL, NULL, '6235660003', 'image-1670914553226.png', NULL, NULL, NULL, '2022-12-13 13:55:54', '2022-12-13 13:55:54'),
(218, '220218128855467', 'CH26', 50, '82-1417', 'delivered', 11690, NULL, '2022-12-13 13:56:36', NULL, NULL, NULL, NULL, '6034300016', 'image-1670914592362.png', NULL, NULL, NULL, '2022-12-13 13:56:33', '2022-12-13 13:56:33'),
(219, '220218128855467', 'CH26', 50, '82-1417', 'delivered', 12320, NULL, '2022-12-13 13:57:52', NULL, NULL, NULL, NULL, '6034300009', 'image-1670914668103.png', NULL, NULL, NULL, '2022-12-13 13:57:49', '2022-12-13 13:57:49'),
(220, '220218128855467', 'CH-10', 50, '70-0912', 'delivered', 21250, NULL, '2022-12-13 14:47:17', NULL, NULL, NULL, NULL, '6034920002', 'image-1670917632541.png', NULL, NULL, NULL, '2022-12-13 14:47:13', '2022-12-13 14:47:13'),
(221, '220218128855467', 'CH-10', 50, '82-1092', 'delivered', 21160, NULL, '2022-12-13 14:48:07', NULL, NULL, NULL, NULL, '6034920002', 'image-1670917683177.png', NULL, NULL, NULL, '2022-12-13 14:48:04', '2022-12-13 14:48:04'),
(222, '220218128855467', 'CH-10', 50, '70-2216', 'delivered', 19960, NULL, '2022-12-13 14:48:51', NULL, NULL, NULL, NULL, '6034920002', 'image-1670917727081.png', NULL, NULL, NULL, '2022-12-13 14:48:48', '2022-12-13 14:48:48'),
(223, '220218128855467', 'CH-10', 50, '81-1194', 'delivered', 21290, NULL, '2022-12-13 14:49:33', NULL, NULL, NULL, NULL, '6034920008', 'image-1670917768360.png', NULL, NULL, NULL, '2022-12-13 14:49:31', '2022-12-13 14:49:31'),
(224, '220218128855467', 'CH-10', 50, '70-2212', 'delivered', 20220, NULL, '2022-12-13 14:50:18', NULL, NULL, NULL, NULL, '6034920010', 'image-1670917813931.png', NULL, NULL, NULL, '2022-12-13 14:50:14', '2022-12-13 14:50:14'),
(225, '220218128855467', 'CH-10', 50, '70-0912', 'delivered', 20620, NULL, '2022-12-13 14:50:56', NULL, NULL, NULL, NULL, '6034920002', 'image-1670917851373.png', NULL, NULL, NULL, '2022-12-13 14:50:54', '2022-12-13 14:50:54'),
(226, '220218128855467', 'CH-10', 50, '70-2212', 'delivered', 21000, NULL, '2022-12-13 14:51:38', NULL, NULL, NULL, NULL, '6034920010', 'image-1670917893974.png', NULL, NULL, NULL, '2022-12-13 14:51:40', '2022-12-13 14:51:40'),
(227, '220218128855467', 'CH-10', 50, '81-1194', 'delivered', 20360, NULL, '2022-12-13 14:52:50', NULL, NULL, NULL, NULL, '6034920006', 'image-1670917966044.png', NULL, NULL, NULL, '2022-12-13 14:52:46', '2022-12-13 14:52:46'),
(228, '220218128855467', 'CH-10', 50, '70-2216', 'delivered', 19110, NULL, '2022-12-13 14:53:33', NULL, NULL, NULL, NULL, '6034920006', 'image-1670918008564.png', NULL, NULL, NULL, '2022-12-13 14:53:31', '2022-12-13 14:53:31'),
(229, '220218128855467', 'CH-10', 50, '82-1092', 'delivered', 21100, NULL, '2022-12-13 14:54:30', NULL, NULL, NULL, NULL, '6034920006', 'image-1670918065684.png', NULL, NULL, NULL, '2022-12-13 14:54:26', '2022-12-13 14:54:26'),
(230, '220219128871674', 'CH-10', 50, '70-2212', 'delivered', 21510, NULL, '2022-12-13 14:56:23', NULL, NULL, NULL, NULL, '6034922002', 'image-1670918178723.png', NULL, NULL, NULL, '2022-12-13 14:56:20', '2022-12-13 14:56:20'),
(231, '200408120571875', '', 35, '700983', 'delivered', 0, NULL, '2022-12-13 16:02:46', NULL, NULL, NULL, NULL, '', 'image-1670922168275.png', NULL, NULL, NULL, '2022-12-13 16:02:49', '2022-12-13 16:02:49');
INSERT INTO `tbl_logistic_sendcane` (`id`, `plot_key`, `harvest_carcut_name`, `driver_user_id`, `harvest_truck_license_plate`, `truck_status`, `truck_tun_driver`, `truck_tun_fac`, `date_start`, `date_fac`, `date_end`, `bin_code`, `bin_image`, `driver_desc`, `driver_image`, `admin_status`, `admin_date`, `admin_desc`, `created_at`, `updated_at`) VALUES
(232, '220509129993557', 'รถไถตัดอ้อยลำ', 22, '0978วาธี คำป้อม', 'delivered', 35, NULL, '2022-12-13 19:22:14', NULL, NULL, NULL, NULL, 'c', 'image-1670934133773.png', NULL, NULL, NULL, '2022-12-13 19:22:16', '2022-12-13 19:22:16'),
(233, '220402129440808', 'คนตัด', 22, '0973ตาหง', 'delivered', 35, NULL, '2022-12-13 19:38:49', NULL, NULL, NULL, NULL, 'c', 'image-1670935128529.png', NULL, NULL, NULL, '2022-12-13 19:38:49', '2022-12-13 19:38:49'),
(234, '220402129440808', 'คนตัด', 22, '0238ต๊ะ', 'delivered', 15, NULL, '2022-12-13 19:39:59', NULL, NULL, NULL, NULL, 'c', 'image-1670935199146.png', NULL, NULL, NULL, '2022-12-13 19:40:00', '2022-12-13 19:40:00'),
(235, '210108120839817', '', 35, '702212', 'delivered', 0, NULL, '2022-12-14 08:07:13', NULL, NULL, NULL, NULL, '', 'image-1670980035107.png', NULL, NULL, NULL, '2022-12-14 08:07:16', '2022-12-14 08:07:16'),
(236, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21230, NULL, '2022-12-14 11:16:06', NULL, NULL, NULL, NULL, '6034920012', 'image-1670991366695.png', NULL, NULL, NULL, '2022-12-14 11:16:07', '2022-12-14 11:16:07'),
(237, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 18640, NULL, '2022-12-14 11:17:25', NULL, NULL, NULL, NULL, '6034920011', 'image-1670991445424.png', NULL, NULL, NULL, '2022-12-14 11:17:26', '2022-12-14 11:17:26'),
(238, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 21400, NULL, '2022-12-14 11:18:13', NULL, NULL, NULL, NULL, '6034920011', 'image-1670991493368.png', NULL, NULL, NULL, '2022-12-14 11:18:14', '2022-12-14 11:18:14'),
(239, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21780, NULL, '2022-12-14 11:18:49', NULL, NULL, NULL, NULL, '6034920012', 'image-1670991529321.png', NULL, NULL, NULL, '2022-12-14 11:18:50', '2022-12-14 11:18:50'),
(240, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 21050, NULL, '2022-12-14 11:19:46', NULL, NULL, NULL, NULL, '6034820011', 'image-1670991586746.png', NULL, NULL, NULL, '2022-12-14 11:19:47', '2022-12-14 11:19:47'),
(241, '220118128230796', 'CH26', 50, '82-1417', 'delivered', 12080, NULL, '2022-12-14 11:21:21', NULL, NULL, NULL, NULL, '6034300009', 'image-1670991681350.png', NULL, NULL, NULL, '2022-12-14 11:21:22', '2022-12-14 11:21:22'),
(242, '220118128230796', 'CH26', 50, '70-2146/47', 'delivered', 25940, NULL, '2022-12-14 11:22:10', NULL, NULL, NULL, NULL, '6034300016', 'image-1670991730530.png', NULL, NULL, NULL, '2022-12-14 11:22:11', '2022-12-14 11:22:11'),
(243, '220118128230796', 'CH26', 50, '70-2146', 'delivered', 12390, NULL, '2022-12-14 11:22:51', NULL, NULL, NULL, NULL, '6034300009', 'image-1670991771159.png', NULL, NULL, NULL, '2022-12-14 11:22:52', '2022-12-14 11:22:52'),
(244, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 17860, NULL, '2022-12-14 11:23:34', NULL, NULL, NULL, NULL, '6034300009', 'image-1670991814903.png', NULL, NULL, NULL, '2022-12-14 11:23:36', '2022-12-14 11:23:36'),
(245, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 11240, NULL, '2022-12-14 11:24:20', NULL, NULL, NULL, NULL, '6034300009', 'image-1670991860291.png', NULL, NULL, NULL, '2022-12-14 11:24:22', '2022-12-14 11:24:22'),
(246, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 18610, NULL, '2022-12-14 11:25:42', NULL, NULL, NULL, NULL, '6144480013', 'image-1670991942594.png', NULL, NULL, NULL, '2022-12-14 11:25:43', '2022-12-14 11:25:43'),
(247, '220118128230796', 'CH-09', 50, '70-2212', 'delivered', 19540, NULL, '2022-12-14 11:26:27', NULL, NULL, NULL, NULL, '6144480013', 'image-1670991987666.png', NULL, NULL, NULL, '2022-12-14 11:26:28', '2022-12-14 11:26:28'),
(248, '220118128230796', 'ทีมตัดอ้อยลำ', 50, '70-0920', 'delivered', 26230, NULL, '2022-12-14 11:28:23', NULL, NULL, NULL, NULL, '603412', 'image-1670992103671.png', NULL, NULL, NULL, '2022-12-14 11:28:24', '2022-12-14 11:28:24'),
(249, '220118128230796', 'ทีมตัดอ้อยลำ', 50, '82-0238', 'delivered', 14430, NULL, '2022-12-14 11:29:12', NULL, NULL, NULL, NULL, '603412', 'image-1670992152575.png', NULL, NULL, NULL, '2022-12-14 11:29:13', '2022-12-14 11:29:13'),
(250, '220118128230796', 'รถไถตัดอ้อยลำ', 50, '70-0978', 'delivered', 24710, NULL, '2022-12-14 11:30:01', NULL, NULL, NULL, NULL, '603412', 'image-1670992201521.png', NULL, NULL, NULL, '2022-12-14 11:30:02', '2022-12-14 11:30:02'),
(251, '220118128230796', 'รถไถตัดอ้อยลำ', 50, '70-0978', 'delivered', 28030, NULL, '2022-12-14 11:30:43', NULL, NULL, NULL, NULL, '603412', 'image-1670992243160.png', NULL, NULL, NULL, '2022-12-14 11:30:44', '2022-12-14 11:30:44'),
(252, '220118128230796', 'รถไถตัดอ้อยลำ', 50, '70-0920', 'delivered', 27260, NULL, '2022-12-14 11:31:21', NULL, NULL, NULL, NULL, '603412', 'image-1670992281920.png', NULL, NULL, NULL, '2022-12-14 11:31:23', '2022-12-14 11:31:23'),
(253, '220118128230796', 'รถไถตัดอ้อยลำ', 50, '70-0978', 'delivered', 28110, NULL, '2022-12-14 11:32:01', NULL, NULL, NULL, NULL, '603412', 'image-1670992321074.png', NULL, NULL, NULL, '2022-12-14 11:32:02', '2022-12-14 11:32:02'),
(254, '220321129418959', '', 35, '702146', 'delivered', 0, NULL, '2022-12-14 11:41:53', NULL, NULL, NULL, NULL, '', 'image-1670992914700.png', NULL, NULL, NULL, '2022-12-14 11:41:56', '2022-12-14 11:41:56'),
(255, '220108127994870', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-14 13:11:36', NULL, NULL, NULL, NULL, '', 'image-1670998298419.png', NULL, NULL, NULL, '2022-12-14 13:11:39', '2022-12-14 13:11:39'),
(256, '220108127994870', 'CH26', 35, '702147', 'delivered', 0, NULL, '2022-12-14 13:52:29', NULL, NULL, NULL, NULL, '', 'image-1671000750395.png', NULL, NULL, NULL, '2022-12-14 13:52:31', '2022-12-14 13:52:31'),
(257, '220321129418959', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-14 15:43:50', NULL, NULL, NULL, NULL, '', 'image-1671007432453.png', NULL, NULL, NULL, '2022-12-14 15:43:53', '2022-12-14 15:43:53'),
(258, '220219128871674', 'CH26', 50, '82-1417 ลย', 'delivered', 12460, NULL, '2022-12-14 16:03:36', NULL, NULL, NULL, NULL, '6273840005', 'image-1671008616298.png', NULL, NULL, NULL, '2022-12-14 16:03:37', '2022-12-14 16:03:37'),
(259, '220219128871674', 'CH-09', 50, '80-4369', 'delivered', 17550, NULL, '2022-12-14 16:11:13', NULL, NULL, NULL, NULL, '6144480013', 'image-1671009073746.png', NULL, NULL, NULL, '2022-12-14 16:11:14', '2022-12-14 16:11:14'),
(260, '220321129418959', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-14 17:12:36', NULL, NULL, NULL, NULL, '', 'image-1671012757414.png', NULL, NULL, NULL, '2022-12-14 17:12:46', '2022-12-14 17:12:46'),
(261, '220509129993557', 'รถไถตัดอ้อยลำอ้อยสด', 22, '0238ต๊ะ', 'delivered', 15, NULL, '2022-12-14 21:11:26', NULL, NULL, NULL, NULL, 'c', 'image-1671027085883.png', NULL, NULL, NULL, '2022-12-14 21:11:30', '2022-12-14 21:11:30'),
(262, '220108127979334', 'ทีมตัดอ้อยลำ', 22, '0978วาธี คำป้อม', 'delivered', 30, NULL, '2022-12-14 21:13:35', NULL, NULL, NULL, NULL, 'c', 'image-1671027215151.png', NULL, NULL, NULL, '2022-12-14 21:13:36', '2022-12-14 21:13:36'),
(263, '220214128795655', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-15 09:23:10', NULL, NULL, NULL, NULL, '', 'image-1671070991985.png', NULL, NULL, NULL, '2022-12-15 09:23:13', '2022-12-15 09:23:13'),
(264, '220219128871674', 'ทีมตัดอ้อยลำ', 50, '82-0238', 'delivered', 12780, NULL, '2022-12-15 10:31:53', NULL, NULL, NULL, NULL, '603412', 'image-1671075113215.png', NULL, NULL, NULL, '2022-12-15 10:31:54', '2022-12-15 10:31:54'),
(265, '220219128871674', 'ทีมตัดอ้อยลำ', 50, '70-0978', 'delivered', 28800, NULL, '2022-12-15 10:32:43', NULL, NULL, NULL, NULL, '603412', 'image-1671075162418.png', NULL, NULL, NULL, '2022-12-15 10:32:44', '2022-12-15 10:32:44'),
(266, '220219128871674', 'CH-09', 50, '80-8462', 'delivered', 18240, NULL, '2022-12-15 10:36:25', NULL, NULL, NULL, NULL, '6144480013', 'image-1671075384810.png', NULL, NULL, NULL, '2022-12-15 10:36:25', '2022-12-15 10:36:25'),
(267, '220219128871674', 'CH-09', 50, '80-8462', 'delivered', 17180, NULL, '2022-12-15 10:40:34', NULL, NULL, NULL, NULL, '6144480041', 'image-1671075633754.png', NULL, NULL, NULL, '2022-12-15 10:40:35', '2022-12-15 10:40:35'),
(268, '220219128871674', 'CH-09', 50, '80-8462', 'delivered', 17500, NULL, '2022-12-15 10:41:35', NULL, NULL, NULL, NULL, '6144480041', 'image-1671075694509.png', NULL, NULL, NULL, '2022-12-15 10:41:35', '2022-12-15 10:41:35'),
(269, '220219128871674', 'CH-09', 50, '80-8462', 'delivered', 17730, NULL, '2022-12-15 10:42:22', NULL, NULL, NULL, NULL, '6144480013', 'image-1671075741513.png', NULL, NULL, NULL, '2022-12-15 10:42:22', '2022-12-15 10:42:22'),
(270, '220219128871674', 'CH26', 50, '82-1417 ลย', 'delivered', 12320, NULL, '2022-12-15 10:44:30', NULL, NULL, NULL, NULL, '6034300009', 'image-1671075869435.png', NULL, NULL, NULL, '2022-12-15 10:44:31', '2022-12-15 10:44:31'),
(271, '220219128871674', 'CH26', 50, '82-1417 ลย', 'delivered', 9640, NULL, '2022-12-15 10:46:36', NULL, NULL, NULL, NULL, '6034300009', 'image-1671075995988.png', NULL, NULL, NULL, '2022-12-15 10:46:36', '2022-12-15 10:46:36'),
(272, '220219128871674', 'CH26', 50, '70-9083', 'delivered', 20470, NULL, '2022-12-15 10:48:12', NULL, NULL, NULL, NULL, '6034300009', 'image-1671076091565.png', NULL, NULL, NULL, '2022-12-15 10:48:12', '2022-12-15 10:48:12'),
(273, '220219128871674', 'CH26', 50, '70-2146', 'delivered', 10450, NULL, '2022-12-15 10:50:31', NULL, NULL, NULL, NULL, '6273840005', 'image-1671076230881.png', NULL, NULL, NULL, '2022-12-15 10:50:31', '2022-12-15 10:50:31'),
(274, '220219128871674', 'CH26', 50, '82-1417', 'delivered', 12230, NULL, '2022-12-15 10:51:22', NULL, NULL, NULL, NULL, '6273840005', 'image-1671076282195.png', NULL, NULL, NULL, '2022-12-15 10:51:23', '2022-12-15 10:51:23'),
(275, '220219128871674', 'CH26', 50, '70-0983', 'delivered', 18070, NULL, '2022-12-15 10:52:07', NULL, NULL, NULL, NULL, '6273840005', 'image-1671076327057.png', NULL, NULL, NULL, '2022-12-15 10:52:10', '2022-12-15 10:52:10'),
(276, '220219128871674', 'CH26', 50, '70-2146/47', 'delivered', 29650, NULL, '2022-12-15 10:53:32', NULL, NULL, NULL, NULL, '6273840005', 'image-1671076411931.png', NULL, NULL, NULL, '2022-12-15 10:53:33', '2022-12-15 10:53:33'),
(277, '220219128871674', 'CH26', 50, '82-1417 ลย', 'delivered', 12450, NULL, '2022-12-15 10:54:42', NULL, NULL, NULL, NULL, '603311022', 'image-1671076481848.png', NULL, NULL, NULL, '2022-12-15 10:54:42', '2022-12-15 10:54:42'),
(278, '220219128871674', 'CH26', 50, '70-2212', 'delivered', 22820, NULL, '2022-12-15 10:55:49', NULL, NULL, NULL, NULL, '603311022', 'image-1671076548977.png', NULL, NULL, NULL, '2022-12-15 10:55:51', '2022-12-15 10:55:51'),
(279, '220219128871674', 'CH26', 50, '70-2212', 'delivered', 21370, NULL, '2022-12-15 10:56:43', NULL, NULL, NULL, NULL, '6273840005', 'image-1671076602664.png', NULL, NULL, NULL, '2022-12-15 10:56:43', '2022-12-15 10:56:43'),
(280, '220219128871674', 'CH-10', 50, '81-1194', 'delivered', 19850, NULL, '2022-12-15 10:57:43', NULL, NULL, NULL, NULL, '6035100006', 'image-1671076663100.png', NULL, NULL, NULL, '2022-12-15 10:57:44', '2022-12-15 10:57:44'),
(281, '220219128871674', 'CH-10', 50, '81-1194', 'delivered', 19340, NULL, '2022-12-15 10:58:24', NULL, NULL, NULL, NULL, '6034920013', 'image-1671076704224.png', NULL, NULL, NULL, '2022-12-15 10:58:25', '2022-12-15 10:58:25'),
(282, '220219128871674', 'CH-10', 50, '81-1194', 'delivered', 19530, NULL, '2022-12-15 10:59:06', NULL, NULL, NULL, NULL, '6035100006', 'image-1671076745357.png', NULL, NULL, NULL, '2022-12-15 10:59:06', '2022-12-15 10:59:06'),
(283, '200225119957653', 'CH-09', 34, '82-1568', 'delivered', 0, NULL, '2022-12-15 11:45:40', NULL, NULL, NULL, NULL, '', 'image-1671079541447.png', NULL, NULL, NULL, '2022-12-15 11:45:42', '2022-12-15 11:45:42'),
(284, '220214128795655', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-15 19:19:56', NULL, NULL, NULL, NULL, '', 'image-1671106797934.png', NULL, NULL, NULL, '2022-12-15 19:19:59', '2022-12-15 19:19:59'),
(285, '220214128795655', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-15 19:20:41', NULL, NULL, NULL, NULL, '', 'image-1671106842520.png', NULL, NULL, NULL, '2022-12-15 19:20:43', '2022-12-15 19:20:43'),
(286, '220214128795655', 'CH26', 35, '702147', 'delivered', 0, NULL, '2022-12-15 19:21:09', NULL, NULL, NULL, NULL, '', 'image-1671106870682.png', NULL, NULL, NULL, '2022-12-15 19:21:12', '2022-12-15 19:21:12'),
(287, '210305122119132', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-16 07:46:01', NULL, NULL, NULL, NULL, '', 'image-1671151562837.png', NULL, NULL, NULL, '2022-12-16 07:46:04', '2022-12-16 07:46:04'),
(288, '210305122119132', 'CH26', 35, '702147', 'delivered', 0, NULL, '2022-12-16 07:46:27', NULL, NULL, NULL, NULL, '', 'image-1671151589110.png', NULL, NULL, NULL, '2022-12-16 07:46:30', '2022-12-16 07:46:30'),
(289, '210305122119132', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-16 07:46:52', NULL, NULL, NULL, NULL, '', 'image-1671151613478.png', NULL, NULL, NULL, '2022-12-16 07:46:54', '2022-12-16 07:46:54'),
(290, '210305122119132', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-16 10:32:18', NULL, NULL, NULL, NULL, '', 'image-1671161540074.png', NULL, NULL, NULL, '2022-12-16 10:32:21', '2022-12-16 10:32:21'),
(291, '210305122119132', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-16 12:31:23', NULL, NULL, NULL, NULL, '', 'image-1671168684256.png', NULL, NULL, NULL, '2022-12-16 12:31:25', '2022-12-16 12:31:25'),
(292, '220219128871674', 'CH-10', 50, '82-1092', 'delivered', 20500, NULL, '2022-12-16 13:44:52', NULL, NULL, NULL, NULL, '6034322002', 'image-1671173091412.png', NULL, NULL, NULL, '2022-12-16 13:44:53', '2022-12-16 13:44:53'),
(293, '220219128871674', 'CH-10', 50, '81-1194', 'delivered', 19530, NULL, '2022-12-16 13:47:01', NULL, NULL, NULL, NULL, '6035100006', 'image-1671173220449.png', NULL, NULL, NULL, '2022-12-16 13:47:01', '2022-12-16 13:47:01'),
(294, '220219128871674', 'CH-10', 50, '70-0912', 'delivered', 20430, NULL, '2022-12-16 13:48:02', NULL, NULL, NULL, NULL, '6035100006', 'image-1671173281157.png', NULL, NULL, NULL, '2022-12-16 13:48:04', '2022-12-16 13:48:04'),
(295, '220219128871674', 'CH-10', 50, '82-1092', 'delivered', 14430, NULL, '2022-12-16 13:49:59', NULL, NULL, NULL, NULL, '6034920012', 'image-1671173398459.png', NULL, NULL, NULL, '2022-12-16 13:50:07', '2022-12-16 13:50:07'),
(296, '200407120567327', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-17 12:03:44', NULL, NULL, NULL, NULL, '', 'image-1671253425667.png', NULL, NULL, NULL, '2022-12-17 12:03:48', '2022-12-17 12:03:48'),
(297, '210305122119132', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-17 14:28:14', NULL, NULL, NULL, NULL, '', 'image-1671262095069.png', NULL, NULL, NULL, '2022-12-17 14:28:30', '2022-12-17 14:28:30'),
(298, '210607124380407', 'CH-10', 50, '81-1194', 'delivered', 20970, NULL, '2022-12-18 14:13:39', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347616394.png', NULL, NULL, NULL, '2022-12-18 14:13:37', '2022-12-18 14:13:37'),
(299, '210607124380407', 'CH-10', 50, '70-2216', 'delivered', 20480, NULL, '2022-12-18 14:14:22', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347658951.png', NULL, NULL, NULL, '2022-12-18 14:14:19', '2022-12-18 14:14:19'),
(300, '210607124380407', 'CH-10', 50, '82-1092', 'delivered', 20820, NULL, '2022-12-18 14:15:04', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347701861.png', NULL, NULL, NULL, '2022-12-18 14:15:02', '2022-12-18 14:15:02'),
(301, '210607124380407', 'CH-10', 50, '70-2216', 'delivered', 20050, NULL, '2022-12-18 14:15:53', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347750009.png', NULL, NULL, NULL, '2022-12-18 14:15:50', '2022-12-18 14:15:50'),
(302, '210607124380407', 'CH-10', 50, '82-1092', 'delivered', 21250, NULL, '2022-12-18 14:16:32', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347789543.png', NULL, NULL, NULL, '2022-12-18 14:16:30', '2022-12-18 14:16:30'),
(303, '210607124380407', 'CH-10', 50, '81-1194', 'delivered', 21020, NULL, '2022-12-18 14:17:12', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347829015.png', NULL, NULL, NULL, '2022-12-18 14:17:09', '2022-12-18 14:17:09'),
(304, '210607124380407', 'CH-10', 50, '70-2216', 'delivered', 20860, NULL, '2022-12-18 14:17:54', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347871423.png', NULL, NULL, NULL, '2022-12-18 14:17:53', '2022-12-18 14:17:53'),
(305, '210607124380407', 'CH-10', 50, '82-1092', 'delivered', 20130, NULL, '2022-12-18 14:18:50', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347927681.png', NULL, NULL, NULL, '2022-12-18 14:18:49', '2022-12-18 14:18:49'),
(306, '210607124380407', 'CH-10', 50, '70-0912', 'delivered', 20910, NULL, '2022-12-18 14:19:30', NULL, NULL, NULL, NULL, '6035100006', 'image-1671347967544.png', NULL, NULL, NULL, '2022-12-18 14:19:28', '2022-12-18 14:19:28'),
(307, '210607124380407', 'CH-10', 50, '81-1194', 'delivered', 20480, NULL, '2022-12-18 14:20:03', NULL, NULL, NULL, NULL, '6035100006', 'image-1671348000467.png', NULL, NULL, NULL, '2022-12-18 14:20:01', '2022-12-18 14:20:01'),
(308, '210607124380407', 'CH-10', 50, '70-2216', 'delivered', 20130, NULL, '2022-12-18 14:20:56', NULL, NULL, NULL, NULL, '6035100006', 'image-1671348053512.png', NULL, NULL, NULL, '2022-12-18 14:20:54', '2022-12-18 14:20:54'),
(309, '210607124380407', 'CH-10', 50, '82-1092', 'delivered', 20900, NULL, '2022-12-18 14:21:34', NULL, NULL, NULL, NULL, '6035100006', 'image-1671348091216.png', NULL, NULL, NULL, '2022-12-18 14:21:32', '2022-12-18 14:21:32'),
(310, '210607124380407', 'CH-10', 50, '70-0912', 'delivered', 22000, NULL, '2022-12-18 14:22:12', NULL, NULL, NULL, NULL, '6035100006', 'image-1671348129524.png', NULL, NULL, NULL, '2022-12-18 14:22:10', '2022-12-18 14:22:10'),
(311, '210607124380407', 'CH-10', 50, '81-1194', 'delivered', 20970, NULL, '2022-12-18 14:22:50', NULL, NULL, NULL, NULL, '6035100006', 'image-1671348167449.png', NULL, NULL, NULL, '2022-12-18 14:22:48', '2022-12-18 14:22:48'),
(312, '210607124380407', 'CH-10', 50, '70-2216', 'delivered', 20440, NULL, '2022-12-18 14:23:33', NULL, NULL, NULL, NULL, '6035100006', 'image-1671348210928.png', NULL, NULL, NULL, '2022-12-18 14:23:34', '2022-12-18 14:23:34'),
(313, '210607124380407', 'CH-09', 50, '80-8462', 'delivered', 16560, NULL, '2022-12-18 14:25:09', NULL, NULL, NULL, NULL, '6144480013', 'image-1671348306553.png', NULL, NULL, NULL, '2022-12-18 14:25:07', '2022-12-18 14:25:07'),
(314, '210607124380407', 'CH-09', 50, '80-4369', 'delivered', 18290, NULL, '2022-12-18 14:25:48', NULL, NULL, NULL, NULL, '614448014', 'image-1671348344998.png', NULL, NULL, NULL, '2022-12-18 14:25:45', '2022-12-18 14:25:45'),
(315, '210607124380407', 'CH-09', 50, '80-8462', 'delivered', 16770, NULL, '2022-12-18 14:26:28', NULL, NULL, NULL, NULL, '6144480013', 'image-1671348385371.png', NULL, NULL, NULL, '2022-12-18 14:26:26', '2022-12-18 14:26:26'),
(316, '210607124380407', 'CH-09', 50, '80-4369', 'delivered', 17260, NULL, '2022-12-18 14:27:15', NULL, NULL, NULL, NULL, '6144480038', 'image-1671348432840.png', NULL, NULL, NULL, '2022-12-18 14:27:13', '2022-12-18 14:27:13'),
(317, '210607124380407', 'CH-09', 50, '80-8462', 'delivered', 17260, NULL, '2022-12-18 14:27:59', NULL, NULL, NULL, NULL, '6144480013', 'image-1671348475926.png', NULL, NULL, NULL, '2022-12-18 14:27:56', '2022-12-18 14:27:56'),
(318, '210607124380407', 'CH-09', 50, '80-4369', 'delivered', 17710, NULL, '2022-12-18 14:28:44', NULL, NULL, NULL, NULL, '6144480038', 'image-1671348521115.png', NULL, NULL, NULL, '2022-12-18 14:28:42', '2022-12-18 14:28:42'),
(319, '210607124380407', 'CH-09', 50, '80-8462', 'delivered', 16150, NULL, '2022-12-18 14:29:35', NULL, NULL, NULL, NULL, '6144480038', 'image-1671348572507.png', NULL, NULL, NULL, '2022-12-18 14:29:33', '2022-12-18 14:29:33'),
(320, '210607124380407', 'CH-09', 50, '80-8462', 'delivered', 16080, NULL, '2022-12-18 14:30:18', NULL, NULL, NULL, NULL, '6144480033', 'image-1671348615634.png', NULL, NULL, NULL, '2022-12-18 14:30:16', '2022-12-18 14:30:16'),
(321, '210607124380407', 'CH26', 50, '70-2212', 'delivered', 16850, NULL, '2022-12-18 14:31:52', NULL, NULL, NULL, NULL, '6033110004', 'image-1671348709748.png', NULL, NULL, NULL, '2022-12-18 14:31:50', '2022-12-18 14:31:50'),
(322, '210607124380407', 'CH26', 50, '82-1417 ลย', 'delivered', 12390, NULL, '2022-12-18 14:33:00', NULL, NULL, NULL, NULL, '6033110004', 'image-1671348777681.png', NULL, NULL, NULL, '2022-12-18 14:32:59', '2022-12-18 14:32:59'),
(323, '210607124380407', 'CH26', 50, '70-2146/47', 'delivered', 28280, NULL, '2022-12-18 14:33:43', NULL, NULL, NULL, NULL, '6033110004', 'image-1671348820697.png', NULL, NULL, NULL, '2022-12-18 14:33:44', '2022-12-18 14:33:44'),
(324, '210607124380407', 'CH26', 50, '70-2212', 'delivered', 10630, NULL, '2022-12-18 14:34:23', NULL, NULL, NULL, NULL, '6033110004', 'image-1671348860264.png', NULL, NULL, NULL, '2022-12-18 14:34:22', '2022-12-18 14:34:22'),
(325, '210607124380407', 'CH26', 50, '70-0983', 'delivered', 19130, NULL, '2022-12-18 14:35:01', NULL, NULL, NULL, NULL, '6033110004', 'image-1671348897964.png', NULL, NULL, NULL, '2022-12-18 14:35:00', '2022-12-18 14:35:00'),
(326, '210607124380407', 'CH26', 50, '70-2146/47', 'delivered', 22000, NULL, '2022-12-18 14:35:44', NULL, NULL, NULL, NULL, '6033110004', 'image-1671348941843.png', NULL, NULL, NULL, '2022-12-18 14:35:43', '2022-12-18 14:35:43'),
(327, '210607124380407', 'CH26', 50, '70-0983', 'delivered', 18520, NULL, '2022-12-18 14:36:21', NULL, NULL, NULL, NULL, '6034730026', 'image-1671348978897.png', NULL, NULL, NULL, '2022-12-18 14:36:20', '2022-12-18 14:36:20'),
(328, '210607124380407', 'CH26', 50, '70-2212', 'delivered', 21920, NULL, '2022-12-18 14:37:28', NULL, NULL, NULL, NULL, '6034730026', 'image-1671349045165.png', NULL, NULL, NULL, '2022-12-18 14:37:26', '2022-12-18 14:37:26'),
(329, '210607124380407', 'CH26', 50, '70-0983', 'delivered', 19750, NULL, '2022-12-18 14:38:50', NULL, NULL, NULL, NULL, '6034730026', 'image-1671349126930.png', NULL, NULL, NULL, '2022-12-18 14:38:48', '2022-12-18 14:38:48'),
(330, '210607124380407', 'CH26', 50, '70-2212', 'delivered', 15660, NULL, '2022-12-18 14:39:32', NULL, NULL, NULL, NULL, '6034730026', 'image-1671349169592.png', NULL, NULL, NULL, '2022-12-18 14:39:30', '2022-12-18 14:39:30'),
(331, '210607124380407', 'CH26', 50, '70-2212', 'delivered', 16130, NULL, '2022-12-18 14:40:25', NULL, NULL, NULL, NULL, '6034730026', 'image-1671349222470.png', NULL, NULL, NULL, '2022-12-18 14:40:25', '2022-12-18 14:40:25'),
(332, '210607124380407', 'CH26', 50, '70-0983', 'delivered', 8650, NULL, '2022-12-18 14:41:35', NULL, NULL, NULL, NULL, '6034730026', 'image-1671349292238.png', NULL, NULL, NULL, '2022-12-18 14:42:05', '2022-12-18 14:42:05'),
(333, '210607124380407', 'ทีมตัดอ้อยลำ', 50, '82-0238', 'delivered', 17210, NULL, '2022-12-18 14:43:02', NULL, NULL, NULL, NULL, '603412', 'image-1671349379434.png', NULL, NULL, NULL, '2022-12-18 14:43:00', '2022-12-18 14:43:00'),
(334, '210607124380407', 'ทีมตัดอ้อยลำ', 50, '70-0973', 'delivered', 25390, NULL, '2022-12-18 14:44:08', NULL, NULL, NULL, NULL, '0206281', 'image-1671349445721.png', NULL, NULL, NULL, '2022-12-18 14:44:06', '2022-12-18 14:44:06'),
(335, '210607124380407', 'ทีมตัดอ้อยลำ', 50, '70-0920', 'delivered', 23050, NULL, '2022-12-18 14:44:54', NULL, NULL, NULL, NULL, '603412', 'image-1671349491836.png', NULL, NULL, NULL, '2022-12-18 14:44:53', '2022-12-18 14:44:53'),
(336, '210607124380407', 'ทีมตัดอ้อยลำ', 50, '82-0238', 'delivered', 17590, NULL, '2022-12-18 14:45:39', NULL, NULL, NULL, NULL, '603412', 'image-1671349536909.png', NULL, NULL, NULL, '2022-12-18 14:45:37', '2022-12-18 14:45:37'),
(337, '210607124380407', 'ทีมตัดอ้อยลำ', 50, '70-0978', 'delivered', 25810, NULL, '2022-12-18 14:46:24', NULL, NULL, NULL, NULL, '603412', 'image-1671349581468.png', NULL, NULL, NULL, '2022-12-18 14:46:22', '2022-12-18 14:46:22'),
(338, '210217121750396', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-18 17:03:40', NULL, NULL, NULL, NULL, '', 'image-1671357822197.png', NULL, NULL, NULL, '2022-12-18 17:03:43', '2022-12-18 17:03:43'),
(339, '210217121750396', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-18 18:30:04', NULL, NULL, NULL, NULL, '', 'image-1671363006603.png', NULL, NULL, NULL, '2022-12-18 18:30:07', '2022-12-18 18:30:07'),
(340, '210122121148677', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-20 10:53:22', NULL, NULL, NULL, NULL, '', 'image-1671508402498.png', NULL, NULL, NULL, '2022-12-20 10:53:23', '2022-12-20 10:53:23'),
(341, '220112128085798', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-20 16:15:18', NULL, NULL, NULL, NULL, '', 'image-1671527720039.png', NULL, NULL, NULL, '2022-12-20 16:15:21', '2022-12-20 16:15:21'),
(342, '220112128085798', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-21 08:15:57', NULL, NULL, NULL, NULL, '', 'image-1671585359335.png', NULL, NULL, NULL, '2022-12-21 08:16:01', '2022-12-21 08:16:01'),
(343, '220112128085798', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-21 10:55:54', NULL, NULL, NULL, NULL, '', 'image-1671594954975.png', NULL, NULL, NULL, '2022-12-21 10:55:56', '2022-12-21 10:55:56'),
(344, '220401129440581', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-21 14:39:50', NULL, NULL, NULL, NULL, '', 'image-1671608392337.png', NULL, NULL, NULL, '2022-12-21 14:39:53', '2022-12-21 14:39:53'),
(345, '220401129440581', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-21 16:07:54', NULL, NULL, NULL, NULL, 'อ้อยหมดแปลง', 'image-1671613675451.png', NULL, NULL, NULL, '2022-12-21 16:07:58', '2022-12-21 16:07:58'),
(346, '220118128233731', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-22 06:35:39', NULL, NULL, NULL, NULL, '', 'image-1671665741921.png', NULL, NULL, NULL, '2022-12-22 06:35:45', '2022-12-22 06:35:45'),
(347, '220118128233731', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-22 07:35:59', NULL, NULL, NULL, NULL, '', 'image-1671669361552.png', NULL, NULL, NULL, '2022-12-22 07:36:02', '2022-12-22 07:36:02'),
(348, '211227127674329', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-22 12:13:49', NULL, NULL, NULL, NULL, '', 'image-1671686030965.png', NULL, NULL, NULL, '2022-12-22 12:13:52', '2022-12-22 12:13:52'),
(349, '210120121094385', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-22 18:48:37', NULL, NULL, NULL, NULL, '', 'image-1671709719407.png', NULL, NULL, NULL, '2022-12-22 18:48:42', '2022-12-22 18:48:42'),
(350, '220118128233731', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-23 08:52:49', NULL, NULL, NULL, NULL, 'อ้อยหมดแปลง', 'image-1671760370911.png', NULL, NULL, NULL, '2022-12-23 08:52:52', '2022-12-23 08:52:52'),
(351, '200407120567324', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-23 14:10:30', NULL, NULL, NULL, NULL, '', 'image-1671779430910.png', NULL, NULL, NULL, '2022-12-23 14:10:32', '2022-12-23 14:10:32'),
(352, '220118128233729', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-24 07:18:54', NULL, NULL, NULL, NULL, '', 'image-1671841134975.png', NULL, NULL, NULL, '2022-12-24 07:18:56', '2022-12-24 07:18:56'),
(353, '220118128233729', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-24 09:12:16', NULL, NULL, NULL, NULL, '', 'image-1671847936850.png', NULL, NULL, NULL, '2022-12-24 09:12:18', '2022-12-24 09:12:18'),
(354, '220118128233729', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-24 10:31:07', NULL, NULL, NULL, NULL, '', 'image-1671852667375.png', NULL, NULL, NULL, '2022-12-24 10:31:09', '2022-12-24 10:31:09'),
(355, '220118128233729', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-24 12:34:13', NULL, NULL, NULL, NULL, '', 'image-1671860053319.png', NULL, NULL, NULL, '2022-12-24 12:34:20', '2022-12-24 12:34:20'),
(356, '200407120567324', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2022-12-24 19:01:59', NULL, NULL, NULL, NULL, '', 'image-1671883319791.png', NULL, NULL, NULL, '2022-12-24 19:02:01', '2022-12-24 19:02:01'),
(357, '200407120567324', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-24 19:02:23', NULL, NULL, NULL, NULL, '', 'image-1671883344308.png', NULL, NULL, NULL, '2022-12-24 19:02:25', '2022-12-24 19:02:25'),
(358, '200407120567324', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-25 07:44:47', NULL, NULL, NULL, NULL, '', 'image-1671929088119.png', NULL, NULL, NULL, '2022-12-25 07:44:49', '2022-12-25 07:44:49'),
(359, '220118128233729', 'CH26', 35, '702212', 'delivered', 0, NULL, '2022-12-26 08:51:01', NULL, NULL, NULL, NULL, '', 'image-1672019462094.png', NULL, NULL, NULL, '2022-12-26 08:51:03', '2022-12-26 08:51:03'),
(360, '220118128233729', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-26 09:55:05', NULL, NULL, NULL, NULL, '', 'image-1672023306470.png', NULL, NULL, NULL, '2022-12-26 12:13:13', '2022-12-26 12:13:13'),
(361, '220118128233729', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-26 12:14:03', NULL, NULL, NULL, NULL, '', 'image-1672031644388.png', NULL, NULL, NULL, '2022-12-26 13:56:50', '2022-12-26 13:56:50'),
(362, '220118128233729', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-26 13:57:13', NULL, NULL, NULL, NULL, '', 'image-1672037834035.png', NULL, NULL, NULL, '2022-12-26 13:57:15', '2022-12-26 13:57:15'),
(363, '200407120567324', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-27 08:50:26', NULL, NULL, NULL, NULL, '', 'image-1672105828242.png', NULL, NULL, NULL, '2022-12-27 08:50:29', '2022-12-27 08:50:29'),
(364, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 20380, NULL, '2022-12-27 14:13:12', NULL, NULL, NULL, NULL, '6031030004', 'image-1672125192878.png', NULL, NULL, NULL, '2022-12-27 14:13:13', '2022-12-27 14:13:13'),
(365, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 20410, NULL, '2022-12-27 14:13:59', NULL, NULL, NULL, NULL, '6031030004', 'image-1672125239143.png', NULL, NULL, NULL, '2022-12-27 14:14:00', '2022-12-27 14:14:00'),
(366, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 19550, NULL, '2022-12-27 14:14:39', NULL, NULL, NULL, NULL, '6031030004', 'image-1672125278906.png', NULL, NULL, NULL, '2022-12-27 14:14:39', '2022-12-27 14:14:39'),
(367, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21750, NULL, '2022-12-27 14:15:17', NULL, NULL, NULL, NULL, '6031030004', 'image-1672125316940.png', NULL, NULL, NULL, '2022-12-27 14:15:17', '2022-12-27 14:15:17'),
(368, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 20750, NULL, '2022-12-27 14:16:08', NULL, NULL, NULL, NULL, '6031030004', 'image-1672125368484.png', NULL, NULL, NULL, '2022-12-27 14:16:09', '2022-12-27 14:16:09'),
(369, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21580, NULL, '2022-12-27 14:16:47', NULL, NULL, NULL, NULL, '6031030004', 'image-1672125407481.png', NULL, NULL, NULL, '2022-12-27 14:16:48', '2022-12-27 14:16:48'),
(370, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 16270, NULL, '2022-12-27 14:17:29', NULL, NULL, NULL, NULL, '6031030004', 'image-1672125449177.png', NULL, NULL, NULL, '2022-12-27 14:17:30', '2022-12-27 14:17:30'),
(371, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 20120, NULL, '2022-12-27 14:18:07', NULL, NULL, NULL, NULL, '603057006', 'image-1672125487327.png', NULL, NULL, NULL, '2022-12-27 14:18:09', '2022-12-27 14:18:09'),
(372, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 21030, NULL, '2022-12-27 14:18:43', NULL, NULL, NULL, NULL, '603057006', 'image-1672125523028.png', NULL, NULL, NULL, '2022-12-27 14:18:43', '2022-12-27 14:18:43'),
(373, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21720, NULL, '2022-12-27 14:19:20', NULL, NULL, NULL, NULL, '603057006', 'image-1672125560536.png', NULL, NULL, NULL, '2022-12-27 14:19:21', '2022-12-27 14:19:21'),
(374, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 19180, NULL, '2022-12-27 14:20:01', NULL, NULL, NULL, NULL, '603057006', 'image-1672125600958.png', NULL, NULL, NULL, '2022-12-27 14:20:01', '2022-12-27 14:20:01'),
(375, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 19920, NULL, '2022-12-27 14:21:07', NULL, NULL, NULL, NULL, '603057006', 'image-1672125667849.png', NULL, NULL, NULL, '2022-12-27 14:21:09', '2022-12-27 14:21:09'),
(376, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 22700, NULL, '2022-12-27 14:21:52', NULL, NULL, NULL, NULL, '603057006', 'image-1672125712048.png', NULL, NULL, NULL, '2022-12-27 14:21:53', '2022-12-27 14:21:53'),
(377, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 21290, NULL, '2022-12-27 14:22:33', NULL, NULL, NULL, NULL, '6258050006', 'image-1672125753004.png', NULL, NULL, NULL, '2022-12-27 14:22:34', '2022-12-27 14:22:34'),
(378, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 23310, NULL, '2022-12-27 14:23:30', NULL, NULL, NULL, NULL, '6258050007', 'image-1672125810626.png', NULL, NULL, NULL, '2022-12-27 14:23:31', '2022-12-27 14:23:31'),
(379, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 21370, NULL, '2022-12-27 14:24:08', NULL, NULL, NULL, NULL, '6258050007', 'image-1672125848542.png', NULL, NULL, NULL, '2022-12-27 14:24:09', '2022-12-27 14:24:09'),
(380, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 21430, NULL, '2022-12-27 14:24:53', NULL, NULL, NULL, NULL, '6138660002', 'image-1672125892870.png', NULL, NULL, NULL, '2022-12-27 14:24:53', '2022-12-27 14:24:53'),
(381, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 22410, NULL, '2022-12-27 14:26:03', NULL, NULL, NULL, NULL, '6138660002', 'image-1672125963276.png', NULL, NULL, NULL, '2022-12-27 14:26:08', '2022-12-27 14:26:08'),
(382, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 21490, NULL, '2022-12-27 14:27:02', NULL, NULL, NULL, NULL, '6138660002', 'image-1672126022225.png', NULL, NULL, NULL, '2022-12-27 14:27:05', '2022-12-27 14:27:05'),
(383, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 12270, NULL, '2022-12-27 14:28:37', NULL, NULL, NULL, NULL, '6138660002', 'image-1672126117328.png', NULL, NULL, NULL, '2022-12-27 14:28:38', '2022-12-27 14:28:38'),
(384, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 20070, NULL, '2022-12-27 14:30:27', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126227209.png', NULL, NULL, NULL, '2022-12-27 14:30:33', '2022-12-27 14:30:33'),
(385, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21860, NULL, '2022-12-27 14:31:28', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126288520.png', NULL, NULL, NULL, '2022-12-27 14:31:29', '2022-12-27 14:31:29'),
(386, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 21000, NULL, '2022-12-27 14:32:12', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126331905.png', NULL, NULL, NULL, '2022-12-27 14:32:13', '2022-12-27 14:32:13'),
(387, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 20760, NULL, '2022-12-27 14:32:53', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126373266.png', NULL, NULL, NULL, '2022-12-27 14:32:54', '2022-12-27 14:32:54'),
(388, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 19910, NULL, '2022-12-27 14:33:49', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126429723.png', NULL, NULL, NULL, '2022-12-27 14:33:59', '2022-12-27 14:33:59'),
(389, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21860, NULL, '2022-12-27 14:34:31', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126471019.png', NULL, NULL, NULL, '2022-12-27 14:34:32', '2022-12-27 14:34:32'),
(390, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 20810, NULL, '2022-12-27 14:35:12', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126511970.png', NULL, NULL, NULL, '2022-12-27 14:35:14', '2022-12-27 14:35:14'),
(391, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 20100, NULL, '2022-12-27 14:35:47', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126547029.png', NULL, NULL, NULL, '2022-12-27 14:35:49', '2022-12-27 14:35:49'),
(392, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 20950, NULL, '2022-12-27 14:36:25', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126585228.png', NULL, NULL, NULL, '2022-12-27 14:36:26', '2022-12-27 14:36:26'),
(393, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 21740, NULL, '2022-12-27 14:37:00', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126620386.png', NULL, NULL, NULL, '2022-12-27 14:37:01', '2022-12-27 14:37:01'),
(394, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 19720, NULL, '2022-12-27 14:37:58', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126678543.png', NULL, NULL, NULL, '2022-12-27 14:37:59', '2022-12-27 14:37:59'),
(395, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 15800, NULL, '2022-12-27 14:38:43', NULL, NULL, NULL, NULL, '6030490013', 'image-1672126723013.png', NULL, NULL, NULL, '2022-12-27 14:38:43', '2022-12-27 14:38:43'),
(396, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 17770, NULL, '2022-12-27 14:39:40', NULL, NULL, NULL, NULL, '6216720005', 'image-1672126779892.png', NULL, NULL, NULL, '2022-12-27 14:39:40', '2022-12-27 14:39:40'),
(397, '220118128230796', 'CH-10', 50, '70-0912', 'delivered', 19970, NULL, '2022-12-27 14:40:45', NULL, NULL, NULL, NULL, '6216720005', 'image-1672126845795.png', NULL, NULL, NULL, '2022-12-27 14:40:46', '2022-12-27 14:40:46'),
(398, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 19000, NULL, '2022-12-27 14:41:26', NULL, NULL, NULL, NULL, '6216720005', 'image-1672126886046.png', NULL, NULL, NULL, '2022-12-27 14:41:26', '2022-12-27 14:41:26'),
(399, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 19130, NULL, '2022-12-27 14:42:05', NULL, NULL, NULL, NULL, '6034090004', 'image-1672126924870.png', NULL, NULL, NULL, '2022-12-27 14:42:05', '2022-12-27 14:42:05'),
(400, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 20650, NULL, '2022-12-27 14:42:43', NULL, NULL, NULL, NULL, '6034090004', 'image-1672126963737.png', NULL, NULL, NULL, '2022-12-27 14:42:44', '2022-12-27 14:42:44'),
(401, '220118128230796', 'CH-10', 50, '70-2216', 'delivered', 16110, NULL, '2022-12-27 14:43:23', NULL, NULL, NULL, NULL, '6034090004', 'image-1672127003259.png', NULL, NULL, NULL, '2022-12-27 14:43:24', '2022-12-27 14:43:24'),
(402, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 20390, NULL, '2022-12-27 14:44:07', NULL, NULL, NULL, NULL, '603493003', 'image-1672127047749.png', NULL, NULL, NULL, '2022-12-27 14:44:08', '2022-12-27 14:44:08'),
(403, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 20910, NULL, '2022-12-27 14:44:46', NULL, NULL, NULL, NULL, '603493003', 'image-1672127086699.png', NULL, NULL, NULL, '2022-12-27 14:44:47', '2022-12-27 14:44:47'),
(404, '220118128230796', 'CH-10', 50, '81-1194', 'delivered', 20580, NULL, '2022-12-27 14:45:21', NULL, NULL, NULL, NULL, '603493003', 'image-1672127121508.png', NULL, NULL, NULL, '2022-12-27 14:45:22', '2022-12-27 14:45:22'),
(405, '220118128230796', 'CH-10', 50, '82-1092', 'delivered', 21660, NULL, '2022-12-27 14:46:09', NULL, NULL, NULL, NULL, '603493003', 'image-1672127169028.png', NULL, NULL, NULL, '2022-12-27 14:46:10', '2022-12-27 14:46:10'),
(406, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 19380, NULL, '2022-12-27 14:48:42', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127322208.png', NULL, NULL, NULL, '2022-12-27 14:48:43', '2022-12-27 14:48:43'),
(407, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 17570, NULL, '2022-12-27 14:49:23', NULL, NULL, NULL, NULL, '614448003', 'image-1672127363153.png', NULL, NULL, NULL, '2022-12-27 14:49:24', '2022-12-27 14:49:24'),
(408, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 18280, NULL, '2022-12-27 14:50:00', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127400294.png', NULL, NULL, NULL, '2022-12-27 14:50:01', '2022-12-27 14:50:01'),
(409, '220118128230796', 'CH-09', 50, '80-6699', 'delivered', 19790, NULL, '2022-12-27 14:51:12', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127472111.png', NULL, NULL, NULL, '2022-12-27 14:51:13', '2022-12-27 14:51:13'),
(410, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 18820, NULL, '2022-12-27 14:51:51', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127511161.png', NULL, NULL, NULL, '2022-12-27 14:51:52', '2022-12-27 14:51:52'),
(411, '220118128230796', 'CH-09', 50, '80-6699', 'delivered', 19530, NULL, '2022-12-27 14:52:56', NULL, NULL, NULL, NULL, '6144480013', 'image-1672127576663.png', NULL, NULL, NULL, '2022-12-27 14:52:57', '2022-12-27 14:52:57'),
(412, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 17670, NULL, '2022-12-27 14:53:32', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127612733.png', NULL, NULL, NULL, '2022-12-27 14:53:33', '2022-12-27 14:53:33'),
(413, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 17840, NULL, '2022-12-27 14:54:20', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127660454.png', NULL, NULL, NULL, '2022-12-27 14:54:21', '2022-12-27 14:54:21'),
(414, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 17810, NULL, '2022-12-27 14:54:58', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127698105.png', NULL, NULL, NULL, '2022-12-27 14:54:59', '2022-12-27 14:54:59'),
(415, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 18120, NULL, '2022-12-27 14:55:40', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127740366.png', NULL, NULL, NULL, '2022-12-27 14:55:41', '2022-12-27 14:55:41'),
(416, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 18090, NULL, '2022-12-27 14:56:18', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127778452.png', NULL, NULL, NULL, '2022-12-27 14:56:19', '2022-12-27 14:56:19'),
(417, '220118128230796', 'CH-09', 50, '80-6699', 'delivered', 18790, NULL, '2022-12-27 14:57:06', NULL, NULL, NULL, NULL, '6144480013', 'image-1672127826658.png', NULL, NULL, NULL, '2022-12-27 14:57:17', '2022-12-27 14:57:17'),
(418, '220118128230796', 'CH-09', 50, '80-8613', 'delivered', 16990, NULL, '2022-12-27 14:57:53', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127873155.png', NULL, NULL, NULL, '2022-12-27 14:57:54', '2022-12-27 14:57:54'),
(419, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 17630, NULL, '2022-12-27 14:59:29', NULL, NULL, NULL, NULL, '6144480033', 'image-1672127969551.png', NULL, NULL, NULL, '2022-12-27 14:59:30', '2022-12-27 14:59:30'),
(420, '220118128230796', 'CH-09', 50, '82-8462', 'delivered', 17800, NULL, '2022-12-27 15:00:40', NULL, NULL, NULL, NULL, '6144480033', 'image-1672128040776.png', NULL, NULL, NULL, '2022-12-27 15:00:41', '2022-12-27 15:00:41'),
(421, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 18350, NULL, '2022-12-27 15:03:01', NULL, NULL, NULL, NULL, '614448003', 'image-1672128181800.png', NULL, NULL, NULL, '2022-12-27 15:03:03', '2022-12-27 15:03:03'),
(422, '220118128230796', 'CH-09', 50, '80-0-8613', 'delivered', 17410, NULL, '2022-12-27 15:03:44', NULL, NULL, NULL, NULL, '6144480033', 'image-1672128224705.png', NULL, NULL, NULL, '2022-12-27 15:03:46', '2022-12-27 15:03:46'),
(423, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 17080, NULL, '2022-12-27 15:05:29', NULL, NULL, NULL, NULL, '6144480033', 'image-1672128329526.png', NULL, NULL, NULL, '2022-12-27 15:05:30', '2022-12-27 15:05:30'),
(424, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 16660, NULL, '2022-12-27 15:07:12', NULL, NULL, NULL, NULL, '6144480033', 'image-1672128432578.png', NULL, NULL, NULL, '2022-12-27 15:07:13', '2022-12-27 15:07:13'),
(425, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 18720, NULL, '2022-12-27 15:07:57', NULL, NULL, NULL, NULL, '6144480033', 'image-1672128477797.png', NULL, NULL, NULL, '2022-12-27 15:07:58', '2022-12-27 15:07:58'),
(426, '220118128230796', 'CH-09', 50, '80-8613', 'delivered', 16630, NULL, '2022-12-27 15:08:37', NULL, NULL, NULL, NULL, '6144480033', 'image-1672128517307.png', NULL, NULL, NULL, '2022-12-27 15:08:39', '2022-12-27 15:08:39'),
(427, '220118128233731', 'CH26', 35, '702146\n', 'delivered', 0, NULL, '2022-12-27 15:08:52', NULL, NULL, NULL, NULL, '', 'image-1672128534445.png', NULL, NULL, NULL, '2022-12-27 15:08:55', '2022-12-27 15:08:55'),
(428, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 17900, NULL, '2022-12-27 15:09:18', NULL, NULL, NULL, NULL, '6144480030', 'image-1672128558001.png', NULL, NULL, NULL, '2022-12-27 15:09:18', '2022-12-27 15:09:18'),
(429, '220118128230796', 'CH-09', 50, '80-8613', 'delivered', 14980, NULL, '2022-12-27 15:10:16', NULL, NULL, NULL, NULL, '61444480033', 'image-1672128615892.png', NULL, NULL, NULL, '2022-12-27 15:10:16', '2022-12-27 15:10:16'),
(430, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 16830, NULL, '2022-12-27 15:10:59', NULL, NULL, NULL, NULL, '6144480030', 'image-1672128659166.png', NULL, NULL, NULL, '2022-12-27 15:11:00', '2022-12-27 15:11:00'),
(431, '220118128230796', 'CH-09', 50, '80-6699', 'delivered', 17360, NULL, '2022-12-27 15:11:31', NULL, NULL, NULL, NULL, '6144480030', 'image-1672128691467.png', NULL, NULL, NULL, '2022-12-27 15:11:32', '2022-12-27 15:11:32'),
(432, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 16580, NULL, '2022-12-27 15:12:12', NULL, NULL, NULL, NULL, '6144480030', 'image-1672128732423.png', NULL, NULL, NULL, '2022-12-27 15:12:14', '2022-12-27 15:12:14'),
(433, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 16180, NULL, '2022-12-27 15:12:56', NULL, NULL, NULL, NULL, '6144480030', 'image-1672128776218.png', NULL, NULL, NULL, '2022-12-27 15:12:58', '2022-12-27 15:12:58'),
(434, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 15720, NULL, '2022-12-27 15:14:14', NULL, NULL, NULL, NULL, '6144480030', 'image-1672128854007.png', NULL, NULL, NULL, '2022-12-27 15:14:23', '2022-12-27 15:14:23'),
(435, '220118128230796', 'CH-09', 50, '80-8613', 'delivered', 16700, NULL, '2022-12-27 15:15:10', NULL, NULL, NULL, NULL, '6033270059', 'image-1672128910433.png', NULL, NULL, NULL, '2022-12-27 15:15:11', '2022-12-27 15:15:11'),
(436, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 14860, NULL, '2022-12-27 15:15:46', NULL, NULL, NULL, NULL, '6144480030', 'image-1672128945991.png', NULL, NULL, NULL, '2022-12-27 15:15:46', '2022-12-27 15:15:46'),
(437, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 18480, NULL, '2022-12-27 15:16:26', NULL, NULL, NULL, NULL, '6033270059', 'image-1672128986513.png', NULL, NULL, NULL, '2022-12-27 15:16:27', '2022-12-27 15:16:27'),
(438, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 16830, NULL, '2022-12-27 15:17:00', NULL, NULL, NULL, NULL, '6033270059', 'image-1672129020848.png', NULL, NULL, NULL, '2022-12-27 15:17:01', '2022-12-27 15:17:01'),
(439, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 14720, NULL, '2022-12-27 15:17:36', NULL, NULL, NULL, NULL, '6144480030', 'image-1672129056262.png', NULL, NULL, NULL, '2022-12-27 15:17:37', '2022-12-27 15:17:37'),
(440, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 17050, NULL, '2022-12-27 15:18:34', NULL, NULL, NULL, NULL, '6033270059', 'image-1672129114715.png', NULL, NULL, NULL, '2022-12-27 15:18:35', '2022-12-27 15:18:35'),
(441, '220118128230796', 'CH-09', 50, '80-8613', 'delivered', 16200, NULL, '2022-12-27 15:19:15', NULL, NULL, NULL, NULL, '6033270059', 'image-1672129155736.png', NULL, NULL, NULL, '2022-12-27 15:19:16', '2022-12-27 15:19:16'),
(442, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 16500, NULL, '2022-12-27 15:19:55', NULL, NULL, NULL, NULL, '6033270059', 'image-1672129195416.png', NULL, NULL, NULL, '2022-12-27 15:19:56', '2022-12-27 15:19:56'),
(443, '220118128230796', 'CH-09', 50, '80-8462', 'delivered', 17810, NULL, '2022-12-27 15:20:29', NULL, NULL, NULL, NULL, '6033270059', 'image-1672129229409.png', NULL, NULL, NULL, '2022-12-27 15:20:30', '2022-12-27 15:20:30'),
(444, '220118128230796', 'CH-09', 50, '80-8613', 'delivered', 17240, NULL, '2022-12-27 15:21:06', NULL, NULL, NULL, NULL, '6033270059', 'image-1672129266780.png', NULL, NULL, NULL, '2022-12-27 15:21:07', '2022-12-27 15:21:07'),
(445, '220118128230796', 'CH-09', 50, '82-1568', 'delivered', 18600, NULL, '2022-12-27 15:21:43', NULL, NULL, NULL, NULL, '6033270059', 'image-1672129303745.png', NULL, NULL, NULL, '2022-12-27 15:21:44', '2022-12-27 15:21:44'),
(446, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 18040, NULL, '2022-12-27 15:22:16', NULL, NULL, NULL, NULL, '6033270021', 'image-1672129335903.png', NULL, NULL, NULL, '2022-12-27 15:22:16', '2022-12-27 15:22:16'),
(447, '220118128230796', 'CH-09', 50, '80-4369', 'delivered', 17950, NULL, '2022-12-27 15:22:55', NULL, NULL, NULL, NULL, '6033270021', 'image-1672129375362.png', NULL, NULL, NULL, '2022-12-27 15:22:56', '2022-12-27 15:22:56'),
(448, '220118128230796', 'CH26', 50, '70-2146/47', 'delivered', 29800, NULL, '2022-12-27 15:24:27', NULL, NULL, NULL, NULL, '6033110003', 'image-1672129467231.png', NULL, NULL, NULL, '2022-12-27 15:24:30', '2022-12-27 15:24:30'),
(449, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 18910, NULL, '2022-12-27 15:25:14', NULL, NULL, NULL, NULL, '6267090006', 'image-1672129514615.png', NULL, NULL, NULL, '2022-12-27 15:25:15', '2022-12-27 15:25:15'),
(450, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 20870, NULL, '2022-12-27 15:25:57', NULL, NULL, NULL, NULL, '6033110003', 'image-1672129556897.png', NULL, NULL, NULL, '2022-12-27 15:25:57', '2022-12-27 15:25:57'),
(451, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 23090, NULL, '2022-12-27 15:26:34', NULL, NULL, NULL, NULL, '6267090005', 'image-1672129594365.png', NULL, NULL, NULL, '2022-12-27 15:26:35', '2022-12-27 15:26:35'),
(452, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 22010, NULL, '2022-12-27 15:28:07', NULL, NULL, NULL, NULL, '6033110003', 'image-1672129687745.png', NULL, NULL, NULL, '2022-12-27 15:28:08', '2022-12-27 15:28:08'),
(453, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 19690, NULL, '2022-12-27 15:28:44', NULL, NULL, NULL, NULL, '6033110003', 'image-1672129724512.png', NULL, NULL, NULL, '2022-12-27 15:28:46', '2022-12-27 15:28:46');
INSERT INTO `tbl_logistic_sendcane` (`id`, `plot_key`, `harvest_carcut_name`, `driver_user_id`, `harvest_truck_license_plate`, `truck_status`, `truck_tun_driver`, `truck_tun_fac`, `date_start`, `date_fac`, `date_end`, `bin_code`, `bin_image`, `driver_desc`, `driver_image`, `admin_status`, `admin_date`, `admin_desc`, `created_at`, `updated_at`) VALUES
(454, '220118128230796', 'CH26', 50, '70-2146', 'delivered', 13940, NULL, '2022-12-27 15:29:22', NULL, NULL, NULL, NULL, '6129700004', 'image-1672129762703.png', NULL, NULL, NULL, '2022-12-27 15:29:25', '2022-12-27 15:29:25'),
(455, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 10040, NULL, '2022-12-27 15:30:05', NULL, NULL, NULL, NULL, '6129700004', 'image-1672129805147.png', NULL, NULL, NULL, '2022-12-27 15:30:05', '2022-12-27 15:30:05'),
(456, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 20430, NULL, '2022-12-27 15:30:43', NULL, NULL, NULL, NULL, '6034300009', 'image-1672129843786.png', NULL, NULL, NULL, '2022-12-27 15:30:44', '2022-12-27 15:30:44'),
(457, '220118128230796', 'CH26', 50, '82-1417', 'delivered', 12560, NULL, '2022-12-27 15:31:33', NULL, NULL, NULL, NULL, '6034300007', 'image-1672129893826.png', NULL, NULL, NULL, '2022-12-27 15:31:34', '2022-12-27 15:31:34'),
(458, '220118128230796', 'CH26', 50, '70-2146/47', 'delivered', 28600, NULL, '2022-12-27 15:32:15', NULL, NULL, NULL, NULL, '6034300007', 'image-1672129934986.png', NULL, NULL, NULL, '2022-12-27 15:32:15', '2022-12-27 15:32:15'),
(459, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 19790, NULL, '2022-12-27 15:33:09', NULL, NULL, NULL, NULL, '6034300007', 'image-1672129989561.png', NULL, NULL, NULL, '2022-12-27 15:33:10', '2022-12-27 15:33:10'),
(460, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 19660, NULL, '2022-12-27 15:33:46', NULL, NULL, NULL, NULL, '6034300007', 'image-1672130026032.png', NULL, NULL, NULL, '2022-12-27 15:33:46', '2022-12-27 15:33:46'),
(461, '220118128230796', 'CH26', 50, '82-1417', 'delivered', 12440, NULL, '2022-12-27 15:34:23', NULL, NULL, NULL, NULL, '6034300007', 'image-1672130063238.png', NULL, NULL, NULL, '2022-12-27 15:34:24', '2022-12-27 15:34:24'),
(462, '220118128230796', 'CH26', 50, '70-2146/47', 'delivered', 28810, NULL, '2022-12-27 15:35:07', NULL, NULL, NULL, NULL, '6034300007', 'image-1672130107715.png', NULL, NULL, NULL, '2022-12-27 15:35:08', '2022-12-27 15:35:08'),
(463, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 23600, NULL, '2022-12-27 15:35:44', NULL, NULL, NULL, NULL, '6034300007', 'image-1672130143896.png', NULL, NULL, NULL, '2022-12-27 15:35:44', '2022-12-27 15:35:44'),
(464, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 19780, NULL, '2022-12-27 15:36:21', NULL, NULL, NULL, NULL, '6034300007', 'image-1672130180994.png', NULL, NULL, NULL, '2022-12-27 15:36:21', '2022-12-27 15:36:21'),
(465, '220118128230796', 'CH26', 50, '82-1417 ลย', 'delivered', 12260, NULL, '2022-12-27 15:39:54', NULL, NULL, NULL, NULL, '6034300007', 'image-1672130394628.png', NULL, NULL, NULL, '2022-12-27 15:39:55', '2022-12-27 15:39:55'),
(466, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 9280, NULL, '2022-12-27 15:40:48', NULL, NULL, NULL, NULL, '6034300007', 'image-1672130448560.png', NULL, NULL, NULL, '2022-12-27 15:40:49', '2022-12-27 15:40:49'),
(467, '220118128230796', 'CH26', 50, '70-2146/47', 'delivered', 26100, NULL, '2022-12-27 15:41:35', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130495299.png', NULL, NULL, NULL, '2022-12-27 15:41:36', '2022-12-27 15:41:36'),
(468, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 14900, NULL, '2022-12-27 15:42:12', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130532898.png', NULL, NULL, NULL, '2022-12-27 15:42:23', '2022-12-27 15:42:23'),
(469, '220118128230796', 'CH26', 50, '82-1417 ลย', 'delivered', 12300, NULL, '2022-12-27 15:43:54', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130634679.png', NULL, NULL, NULL, '2022-12-27 15:43:55', '2022-12-27 15:43:55'),
(470, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 20770, NULL, '2022-12-27 15:44:45', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130685196.png', NULL, NULL, NULL, '2022-12-27 15:44:46', '2022-12-27 15:44:46'),
(471, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 20300, NULL, '2022-12-27 15:45:32', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130732221.png', NULL, NULL, NULL, '2022-12-27 15:45:33', '2022-12-27 15:45:33'),
(472, '220118128230796', 'CH26', 50, '82-1417', 'delivered', 12310, NULL, '2022-12-27 15:46:13', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130773013.png', NULL, NULL, NULL, '2022-12-27 15:46:14', '2022-12-27 15:46:14'),
(473, '220118128230796', 'CH26', 50, '70-2212', 'delivered', 19890, NULL, '2022-12-27 15:46:50', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130810754.png', NULL, NULL, NULL, '2022-12-27 15:46:51', '2022-12-27 15:46:51'),
(474, '220118128230796', 'CH26', 50, '70-0983', 'delivered', 18320, NULL, '2022-12-27 15:47:29', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130849398.png', NULL, NULL, NULL, '2022-12-27 15:47:30', '2022-12-27 15:47:30'),
(475, '220118128230796', 'CH26', 50, '70-2146', 'delivered', 14400, NULL, '2022-12-27 15:48:09', NULL, NULL, NULL, NULL, '6207570013', 'image-1672130888984.png', NULL, NULL, NULL, '2022-12-27 15:48:09', '2022-12-27 15:48:09'),
(484, '220113128110804', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-28 13:38:55', NULL, NULL, NULL, NULL, '', 'image-1672209537278.png', NULL, NULL, NULL, '2022-12-28 13:38:58', '2022-12-28 13:38:58'),
(485, '220118128233729', 'CH26', 35, '700983', 'delivered', 0, NULL, '2022-12-28 15:57:58', NULL, NULL, NULL, NULL, '', 'image-1672217879841.png', NULL, NULL, NULL, '2022-12-28 15:58:01', '2022-12-28 15:58:01'),
(486, '211227127674329', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-28 16:34:03', NULL, NULL, NULL, NULL, '', 'image-1672220062926.png', NULL, NULL, NULL, '2022-12-28 16:34:24', '2022-12-28 16:34:24'),
(487, '200407120567324', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-28 18:32:04', NULL, NULL, NULL, NULL, '', 'image-1672227125033.png', NULL, NULL, NULL, '2022-12-28 18:32:06', '2022-12-28 18:32:06'),
(488, '210323122426837', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-29 08:11:27', NULL, NULL, NULL, NULL, '', 'image-1672276288334.png', NULL, NULL, NULL, '2022-12-29 08:11:29', '2022-12-29 08:11:29'),
(489, '210323122426837', 'CH26', 35, '821417', 'delivered', 0, NULL, '2022-12-29 12:41:10', NULL, NULL, NULL, NULL, '', 'image-1672292471299.png', NULL, NULL, NULL, '2022-12-29 12:41:12', '2022-12-29 12:41:12'),
(490, '220114128144837', 'CH26', 35, '702146', 'delivered', 0, NULL, '2022-12-30 11:18:55', NULL, NULL, NULL, NULL, '', 'image-1672373937605.png', NULL, NULL, NULL, '2022-12-30 11:19:09', '2022-12-30 11:19:09'),
(491, NULL, 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-03 11:40:05', NULL, NULL, NULL, NULL, '', 'image-1672720810286.png', NULL, NULL, NULL, '2023-01-03 11:40:11', '2023-01-03 11:40:11'),
(492, '201901189233361', 'CH26', 35, '702212', 'delivered', 0, NULL, '2023-01-03 12:55:09', NULL, NULL, NULL, NULL, '', 'image-1672725309406.png', NULL, NULL, NULL, '2023-01-03 12:55:10', '2023-01-03 12:55:10'),
(493, '201901189233361', 'CH26', 35, '821417', 'delivered', 0, NULL, '2023-01-03 16:15:38', NULL, NULL, NULL, NULL, '', 'image-1672737339286.png', NULL, NULL, NULL, '2023-01-03 16:15:40', '2023-01-03 16:15:40'),
(494, '201901189233361', 'CH26', 35, '700912', 'delivered', 0, NULL, '2023-01-03 18:42:14', NULL, NULL, NULL, NULL, '', 'image-1672746135901.png', NULL, NULL, NULL, '2023-01-03 18:42:17', '2023-01-03 18:42:17'),
(495, '201901189233361', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-05 09:24:59', NULL, NULL, NULL, NULL, '', 'image-1672885500804.png', NULL, NULL, NULL, '2023-01-05 09:25:02', '2023-01-05 09:25:02'),
(496, '201901189233361', 'CH26', 35, '702146', 'delivered', 0, NULL, '2023-01-05 12:45:39', NULL, NULL, NULL, NULL, '', 'image-1672897539738.png', NULL, NULL, NULL, '2023-01-05 12:45:40', '2023-01-05 12:45:40'),
(497, '2022062021371465', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-06 08:27:53', NULL, NULL, NULL, NULL, '', 'image-1672968474761.png', NULL, NULL, NULL, '2023-01-06 08:27:56', '2023-01-06 08:27:56'),
(498, '2022062021371465', 'CH26', 35, '702146', 'delivered', 0, NULL, '2023-01-06 11:02:04', NULL, NULL, NULL, NULL, '', 'image-1672977725043.png', NULL, NULL, NULL, '2023-01-06 11:02:06', '2023-01-06 11:02:06'),
(499, '201901189233361', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-06 15:50:32', NULL, NULL, NULL, NULL, '', 'image-1672995032905.png', NULL, NULL, NULL, '2023-01-06 15:50:34', '2023-01-06 15:50:34'),
(500, '201901189233361', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-07 07:47:41', NULL, NULL, NULL, NULL, '', 'image-1673052462935.png', NULL, NULL, NULL, '2023-01-07 07:47:44', '2023-01-07 07:47:44'),
(501, '220118128230793', 'CH26', 35, '702212', 'delivered', 0, NULL, '2023-01-07 19:34:11', NULL, NULL, NULL, NULL, '', 'image-1673094851941.png', NULL, NULL, NULL, '2023-01-07 19:34:13', '2023-01-07 19:34:13'),
(502, '220311129262386', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-09 11:13:44', NULL, NULL, NULL, NULL, '', 'image-1673237625834.png', NULL, NULL, NULL, '2023-01-09 11:13:46', '2023-01-09 11:13:46'),
(503, '220311129262386', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-10 06:26:42', NULL, NULL, NULL, NULL, '', 'image-1673306804112.png', NULL, NULL, NULL, '2023-01-10 06:26:52', '2023-01-10 06:26:52'),
(504, '220326129438108', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-10 11:32:47', NULL, NULL, NULL, NULL, '', 'image-1673325168046.png', NULL, NULL, NULL, '2023-01-10 11:32:49', '2023-01-10 11:32:49'),
(505, '220326129438108', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-10 15:35:31', NULL, NULL, NULL, NULL, '', 'image-1673339732283.png', NULL, NULL, NULL, '2023-01-10 15:35:34', '2023-01-10 15:35:34'),
(506, '210319122371870', 'CH26', 35, ' 700983', 'delivered', 0, NULL, '2023-01-10 17:36:11', NULL, NULL, NULL, NULL, '', 'image-1673346972623.png', NULL, NULL, NULL, '2023-01-10 17:36:15', '2023-01-10 17:36:15'),
(507, '220321129418972', 'CH26', 35, '702146', 'delivered', 0, NULL, '2023-01-11 10:04:20', NULL, NULL, NULL, NULL, '', 'image-1673406261218.png', NULL, NULL, NULL, '2023-01-11 10:04:22', '2023-01-11 10:04:22'),
(508, '220520130332908', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-11 11:46:51', NULL, NULL, NULL, NULL, '', 'image-1673412411934.png', NULL, NULL, NULL, '2023-01-11 11:46:53', '2023-01-11 11:46:53'),
(509, '220520130332908', 'CH26', 35, '702146', 'delivered', 0, NULL, '2023-01-11 14:29:12', NULL, NULL, NULL, NULL, '', 'image-1673422156533.png', NULL, NULL, NULL, '2023-01-11 14:29:18', '2023-01-11 14:29:18'),
(510, '220520130332908', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-11 15:07:33', NULL, NULL, NULL, NULL, '', 'image-1673424454761.png', NULL, NULL, NULL, '2023-01-11 15:07:35', '2023-01-11 15:07:35'),
(511, '220520130332908', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-11 15:50:27', NULL, NULL, NULL, NULL, '', 'image-1673427028291.png', NULL, NULL, NULL, '2023-01-11 15:50:29', '2023-01-11 15:50:29'),
(512, '220520130332908', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-12 07:15:16', NULL, NULL, NULL, NULL, '', 'image-1673482517498.png', NULL, NULL, NULL, '2023-01-12 07:15:18', '2023-01-12 07:15:18'),
(513, '220520130332908', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-12 08:47:46', NULL, NULL, NULL, NULL, '', 'image-1673488067086.png', NULL, NULL, NULL, '2023-01-12 08:47:49', '2023-01-12 08:47:49'),
(514, '220520130332908', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-12 12:29:07', NULL, NULL, NULL, NULL, '', 'image-1673501348351.png', NULL, NULL, NULL, '2023-01-12 12:29:09', '2023-01-12 12:29:09'),
(515, '220520130332908', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-12 15:30:24', NULL, NULL, NULL, NULL, '', 'image-1673512225905.png', NULL, NULL, NULL, '2023-01-12 15:30:27', '2023-01-12 15:30:27'),
(516, '220404129441259', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-12 17:41:35', NULL, NULL, NULL, NULL, '', 'image-1673520096719.png', NULL, NULL, NULL, '2023-01-12 17:41:37', '2023-01-12 17:41:37'),
(517, '220404129441259', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-13 12:10:49', NULL, NULL, NULL, NULL, '', 'image-1673586650647.png', NULL, NULL, NULL, '2023-01-13 12:10:51', '2023-01-13 12:10:51'),
(518, '220404129441259', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-13 12:11:15', NULL, NULL, NULL, NULL, '', 'image-1673586676206.png', NULL, NULL, NULL, '2023-01-13 12:11:17', '2023-01-13 12:11:17'),
(519, '220404129441259', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-13 14:15:00', NULL, NULL, NULL, NULL, '', 'image-1673594102046.png', NULL, NULL, NULL, '2023-01-13 14:15:04', '2023-01-13 14:15:04'),
(520, '220520130332908', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-14 08:48:44', NULL, NULL, NULL, NULL, '', 'image-1673660924849.png', NULL, NULL, NULL, '2023-01-14 08:48:46', '2023-01-14 08:48:46'),
(521, '220520130332908', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-14 12:25:29', NULL, NULL, NULL, NULL, '', 'image-1673673930690.png', NULL, NULL, NULL, '2023-01-14 12:25:32', '2023-01-14 12:25:32'),
(522, '220520130332908', 'CH26', 35, '702147/47', 'delivered', 0, NULL, '2023-01-16 09:36:51', NULL, NULL, NULL, NULL, '', 'image-1673836612062.png', NULL, NULL, NULL, '2023-01-16 09:36:56', '2023-01-16 09:36:56'),
(523, '220520130332908', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-16 10:30:55', NULL, NULL, NULL, NULL, '', 'image-1673839856437.png', NULL, NULL, NULL, '2023-01-16 13:23:42', '2023-01-16 13:23:42'),
(524, '220520130332908', 'CH26', 35, '801092', 'delivered', 0, NULL, '2023-01-16 13:24:26', NULL, NULL, NULL, NULL, '', 'image-1673850267653.png', NULL, NULL, NULL, '2023-01-16 13:24:28', '2023-01-16 13:24:28'),
(525, '220520130332908', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-16 16:23:03', NULL, NULL, NULL, NULL, '', 'image-1673860984742.png', NULL, NULL, NULL, '2023-01-16 16:23:06', '2023-01-16 16:23:06'),
(526, '200121117977706', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-17 17:04:18', NULL, NULL, NULL, NULL, '', 'image-1673949860240.png', NULL, NULL, NULL, '2023-01-17 17:04:21', '2023-01-17 17:04:21'),
(527, '200121117977706', 'CH26', 35, '821092', 'delivered', 0, NULL, '2023-01-18 05:54:46', NULL, NULL, NULL, NULL, '', 'image-1673996088341.png', NULL, NULL, NULL, '2023-01-18 05:54:51', '2023-01-18 05:54:51'),
(528, '200121117977706', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-18 10:39:00', NULL, NULL, NULL, NULL, '', 'image-1674013141903.png', NULL, NULL, NULL, '2023-01-18 10:39:03', '2023-01-18 10:39:03'),
(529, '200121117977706', 'CH26', 35, '702216', 'delivered', 0, NULL, '2023-01-18 11:33:11', NULL, NULL, NULL, NULL, '', 'image-1674016395847.png', NULL, NULL, NULL, '2023-01-18 11:33:17', '2023-01-18 11:33:17'),
(530, '200121117977706', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-18 12:56:22', NULL, NULL, NULL, NULL, '', 'image-1674021383904.png', NULL, NULL, NULL, '2023-01-18 12:56:25', '2023-01-18 12:56:25'),
(531, '200121117977706', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-18 14:31:02', NULL, NULL, NULL, NULL, '', 'image-1674027064050.png', NULL, NULL, NULL, '2023-01-18 14:31:06', '2023-01-18 14:31:06'),
(532, '200121117977704', 'CH26', 35, '702146', 'delivered', 0, NULL, '2023-01-19 09:41:12', NULL, NULL, NULL, NULL, '', 'image-1674096074227.png', NULL, NULL, NULL, '2023-01-19 09:41:15', '2023-01-19 09:41:15'),
(533, '200121117977704', 'CH26', 35, '702212', 'delivered', 0, NULL, '2023-01-19 14:26:51', NULL, NULL, NULL, NULL, '', 'image-1674113213503.png', NULL, NULL, NULL, '2023-01-19 14:26:59', '2023-01-19 14:26:59'),
(534, '200121117977704', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-19 16:18:32', NULL, NULL, NULL, NULL, '', 'image-1674119917367.png', NULL, NULL, NULL, '2023-01-19 16:18:40', '2023-01-19 16:18:40'),
(535, '200121117977704', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-19 16:45:18', NULL, NULL, NULL, NULL, '', 'image-1674121521792.png', NULL, NULL, NULL, '2023-01-19 16:45:23', '2023-01-19 16:45:23'),
(536, '200121117977704', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-19 17:16:42', NULL, NULL, NULL, NULL, '', 'image-1674123403298.png', NULL, NULL, NULL, '2023-01-19 17:16:44', '2023-01-19 17:16:44'),
(537, '200121117977704', 'CH26', 35, '821092', 'delivered', 0, NULL, '2023-01-20 07:44:31', NULL, NULL, NULL, NULL, '', 'image-1674175473943.png', NULL, NULL, NULL, '2023-01-20 07:44:35', '2023-01-20 07:44:35'),
(538, '200121117977704', 'CH26', 35, '804369', 'delivered', 0, NULL, '2023-01-20 07:48:37', NULL, NULL, NULL, NULL, '', 'image-1674175721853.png', NULL, NULL, NULL, '2023-01-20 07:48:44', '2023-01-20 07:48:44'),
(539, '200121117977704', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-20 09:02:16', NULL, NULL, NULL, NULL, '', 'image-1674180138688.png', NULL, NULL, NULL, '2023-01-20 09:02:20', '2023-01-20 09:02:20'),
(540, '200121117977704', 'CH26', 35, '821092', 'delivered', 0, NULL, '2023-01-20 10:42:13', NULL, NULL, NULL, NULL, '', 'image-1674186134778.png', NULL, NULL, NULL, '2023-01-20 10:42:16', '2023-01-20 10:42:16'),
(541, '200121117977704', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-20 11:04:32', NULL, NULL, NULL, NULL, '', 'image-1674187478802.png', NULL, NULL, NULL, '2023-01-20 11:04:44', '2023-01-20 11:04:44'),
(542, '200121117977704', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-20 12:32:24', NULL, NULL, NULL, NULL, '', 'image-1674192746229.png', NULL, NULL, NULL, '2023-01-20 12:32:27', '2023-01-20 12:32:27'),
(543, '200121117977704', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-20 12:32:51', NULL, NULL, NULL, NULL, '', 'image-1674192773185.png', NULL, NULL, NULL, '2023-01-20 12:32:54', '2023-01-20 12:32:54'),
(544, '200121117977704', 'CH26', 35, '821417', 'delivered', 0, NULL, '2023-01-20 12:50:44', NULL, NULL, NULL, NULL, '', 'image-1674193847654.png', NULL, NULL, NULL, '2023-01-20 12:50:48', '2023-01-20 12:50:48'),
(545, '200121117977704', 'CH26', 35, '821092', 'delivered', 0, NULL, '2023-01-20 15:11:48', NULL, NULL, NULL, NULL, '', 'image-1674202311642.png', NULL, NULL, NULL, '2023-01-20 15:11:53', '2023-01-20 15:11:53'),
(546, '200121117977704', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-20 15:50:43', NULL, NULL, NULL, NULL, '', 'image-1674204647152.png', NULL, NULL, NULL, '2023-01-20 15:50:48', '2023-01-20 15:50:48'),
(547, '200121117977704', 'CH26', 35, '821417', 'delivered', 0, NULL, '2023-01-20 19:03:23', NULL, NULL, NULL, NULL, '', 'image-1674216205445.png', NULL, NULL, NULL, '2023-01-20 19:03:26', '2023-01-20 19:03:26'),
(548, '200121117977704', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-20 20:25:16', NULL, NULL, NULL, NULL, '', 'image-1674221119731.png', NULL, NULL, NULL, '2023-01-20 20:25:21', '2023-01-20 20:25:21'),
(549, '200121117977704', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-21 08:28:53', NULL, NULL, NULL, NULL, '', 'image-1674264534964.png', NULL, NULL, NULL, '2023-01-21 08:29:00', '2023-01-21 08:29:00'),
(550, '200121117977704', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-21 12:43:23', NULL, NULL, NULL, NULL, '', 'image-1674279814650.png', NULL, NULL, NULL, '2023-01-21 12:43:38', '2023-01-21 12:43:38'),
(551, '200121117977704', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-21 12:43:23', NULL, NULL, NULL, NULL, '', 'image-1674279814650.png', NULL, NULL, NULL, '2023-01-21 12:43:42', '2023-01-21 12:43:42'),
(552, '200121117977704', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-21 15:58:02', NULL, NULL, NULL, NULL, '', 'image-1674291485218.png', NULL, NULL, NULL, '2023-01-21 15:58:06', '2023-01-21 15:58:06'),
(553, '201224120727579', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-21 22:25:31', NULL, NULL, NULL, NULL, 'เปิดแปลง', 'image-1674314732416.png', NULL, NULL, NULL, '2023-01-21 22:25:33', '2023-01-21 22:25:33'),
(554, '210512123286573', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-25 13:53:58', NULL, NULL, NULL, NULL, '', 'image-1674629639945.png', NULL, NULL, NULL, '2023-01-25 13:54:01', '2023-01-25 13:54:01'),
(555, '201804060381978', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-01-27 09:56:37', NULL, NULL, NULL, NULL, '', 'image-1674788198762.png', NULL, NULL, NULL, '2023-01-27 09:56:41', '2023-01-27 09:56:41'),
(556, '201804060381978', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-01-27 12:44:38', NULL, NULL, NULL, NULL, '', 'image-1674798283696.png', NULL, NULL, NULL, '2023-01-27 12:44:45', '2023-01-27 12:44:45'),
(557, '220214128787993', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-01-31 14:31:55', NULL, NULL, NULL, NULL, '', 'image-1675150316833.png', NULL, NULL, NULL, '2023-01-31 14:31:57', '2023-01-31 14:31:57'),
(558, '220214128787993', 'CH26', 35, '821092', 'delivered', 0, NULL, '2023-01-31 17:10:37', NULL, NULL, NULL, NULL, '', 'image-1675159838898.png', NULL, NULL, NULL, '2023-01-31 17:10:40', '2023-01-31 17:10:40'),
(559, '220118128233729', 'CH26', 35, '821092', 'delivered', 0, NULL, '2023-02-09 10:49:44', NULL, NULL, NULL, NULL, '', 'image-1675914585637.png', NULL, NULL, NULL, '2023-02-09 10:49:46', '2023-02-09 10:49:46'),
(560, '220324129436179', 'CH26', 35, '804369', 'delivered', 0, NULL, '2023-02-11 15:35:09', NULL, NULL, NULL, NULL, '', 'image-1676104509850.png', NULL, NULL, NULL, '2023-02-11 15:35:11', '2023-02-11 15:35:11'),
(561, '220324129436179', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-02-11 17:25:23', NULL, NULL, NULL, NULL, '', 'image-1676111123880.png', NULL, NULL, NULL, '2023-02-11 17:25:29', '2023-02-11 17:25:29'),
(562, '220324129436179', 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-02-12 13:13:39', NULL, NULL, NULL, NULL, '', 'image-1676182420484.png', NULL, NULL, NULL, '2023-02-12 13:13:41', '2023-02-12 13:13:41'),
(563, '220520130332897', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-02-13 11:58:39', NULL, NULL, NULL, NULL, '', 'image-1676264319992.png', NULL, NULL, NULL, '2023-02-13 11:58:42', '2023-02-13 11:58:42'),
(564, '220520130332897', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-02-13 17:04:00', NULL, NULL, NULL, NULL, '', 'image-1676282641394.png', NULL, NULL, NULL, '2023-02-13 17:04:02', '2023-02-13 17:04:02'),
(565, '220520130332897', 'CH26', 35, '702146/47', 'delivered', 0, NULL, '2023-02-13 17:53:06', NULL, NULL, NULL, NULL, '', 'image-1676285587330.png', NULL, NULL, NULL, '2023-02-13 17:53:08', '2023-02-13 17:53:08'),
(566, '210223121875835', 'CH26', 35, '700979', 'delivered', 0, NULL, '2023-02-14 15:43:38', NULL, NULL, NULL, NULL, '', 'image-1676364219745.png', NULL, NULL, NULL, '2023-02-14 15:43:40', '2023-02-14 15:43:40'),
(567, NULL, 'CH26', 35, '700983', 'delivered', 0, NULL, '2023-02-17 10:40:28', NULL, NULL, NULL, NULL, '', 'image-1676605229895.png', NULL, NULL, NULL, '2023-02-17 10:40:31', '2023-02-17 10:40:31'),
(568, '201128120718634', 'CH-09', 50, '0912แขก', 'pending', 28, 25, '2023-07-17 11:22:15', NULL, '2023-07-17 11:31:02', '0071223', 'image-1689568258663.png', 'ทดสอบ', 'image-1689567731583.png', NULL, NULL, NULL, '2023-07-17 11:22:13', '2023-07-17 11:31:00'),
(569, '2022061916181470', 'CH-10', 81, 'ลย80-8900', 'delivered', 10, NULL, '2023-12-14 21:04:10', NULL, NULL, NULL, NULL, 'test', 'image-1702562650935.png', NULL, NULL, NULL, '2023-12-14 21:04:12', '2023-12-14 21:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay_type`
--

CREATE TABLE `tbl_pay_type` (
  `id` int(11) NOT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `pay_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_pay_type`
--

INSERT INTO `tbl_pay_type` (`id`, `pay_id`, `pay_name`) VALUES
(1, 1, 'เงินสด'),
(2, 2, 'สินเชื่อ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quota`
--

CREATE TABLE `tbl_quota` (
  `id` int(11) NOT NULL,
  `quota_pre` varchar(100) NOT NULL,
  `quota_name` varchar(100) NOT NULL,
  `quota_lname` varchar(100) NOT NULL,
  `promise_cane` int(11) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_group_menus`
--

CREATE TABLE `tbl_setting_group_menus` (
  `id` int(11) NOT NULL,
  `sgm_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_menu_details`
--

CREATE TABLE `tbl_setting_menu_details` (
  `id` int(11) NOT NULL,
  `menu_detail_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shadow_box`
--

CREATE TABLE `tbl_shadow_box` (
  `id` int(11) NOT NULL,
  `vehicle_register` varchar(30) DEFAULT NULL,
  `box_id` varchar(50) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `box_number` varchar(20) DEFAULT NULL,
  `vehicle_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_shadow_box`
--

INSERT INTO `tbl_shadow_box` (`id`, `vehicle_register`, `box_id`, `sn`, `box_number`, `vehicle_type`) VALUES
(1, '70-0912', '133EEE6C004A062C07', 'SM2-02612-151-7', '0814617297', 1),
(2, '70-0928', '133EEE65004A091670', 'ST5-12A13-473-5', '0887965710', 1),
(3, '70-0949', '133EEE420049E471EB', 'ST4-04711-906-7', '0864791394', 1),
(4, '70-0973', '133EE7BA0046313402', 'ST5-12A13-794-7', '0887963329', 1),
(5, '70-0978', '133EE8DB0047A5F2AA', 'SM2-01112-844-7', '0864544094', 1),
(6, '70-0983', '133EEE340049E159A1', 'SM2-0DB11-613-7', '0814637144', 1),
(7, '70-2146', '133C97AD00386672AB', 'SM2-02612-333-4', '0814634755', 1),
(8, '70-2212', '133C9D0A00397DD3C2', 'SM2-0DB11-006-4', '0887659125', 1),
(9, '70-2216', '133C97A4003863A5DE', 'SM2-02612-574-8', '0814634734', 1),
(10, '80-4369', '133C9CE10039472A00', 'SM3-11A13-122-5', '0814616913', 1),
(11, '80-6699', '134171DC006D10DBC0', 'SM3-05713-732-8', '0814657641', 1),
(12, '80-8462', '134171DF006D0F3CAA', 'SM3-11A13-687-8', '0814648538', 1),
(13, '80-8613', '1341652200665FDD3D', 'SM3-1AC13-965-8', '0864547630', 1),
(14, '82-0238', '133F0D470052745A41', 'SM2-0DB11-290-0', '0814637121', 1),
(15, '82-1092', '133EC8F1003EA78E53', 'SM3-1AC13-803-0', '0887964951', 1),
(16, '82-1431', '13415F620063CAFBE5', 'SM2-02612-362-2', '0887659046', 1),
(17, '82-1568', '1341719A006CA697F3', 'SM3-05713-293-8', '0814647336', 1),
(18, '82-1572', '13417223006D79C079', 'SM1-07C10-027-2', '0830141124', 1),
(19, 'ch09', '133F0E410054222893', 'SM3-05713-333-3', '0830375751', 8),
(20, 'ch10', '133F0E4B0054216940', 'ST5-1E713-728-7', '0814649195', 8),
(21, 'ch26', '134660FF008B60A913', 'ST5-1E713-654-4', '0814658307', 8),
(22, '70-0606', '134178CC00704771E8', 'SM2-0D411-354-8 ', '812371050', 1),
(23, 'K108 NO1', '13414C4D005E7AB6E9', '359857080325723 (รุ่น GT06E) ', '0814617273', 2),
(24, 'K108 NO2', '13417E9100726960BC', '359857080926017 (รุ่น GT06E) ', '0814609353', 2),
(25, 'T6070C', '1348CB640090AAF508', 'ST5-16513-089-1', ' 088-765-9285', 2),
(26, '81-2597 (เลย)', '1348D17C009156AA23', 'ST8-11315-189-1', '0830375717', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shadow_gps`
--

CREATE TABLE `tbl_shadow_gps` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `box_id` varchar(50) DEFAULT NULL,
  `data_status` int(11) DEFAULT NULL,
  `receive_time` varchar(30) DEFAULT NULL,
  `gps_time` varchar(30) DEFAULT NULL,
  `gps_status` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `engine_status` int(11) DEFAULT NULL,
  `hdop` int(11) DEFAULT NULL,
  `satellite` int(11) DEFAULT NULL,
  `battery_backup` int(11) DEFAULT NULL,
  `sos` int(11) DEFAULT NULL,
  `driver_id` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_shadow_gps`
--

INSERT INTO `tbl_shadow_gps` (`id`, `reference_id`, `box_id`, `data_status`, `receive_time`, `gps_time`, `gps_status`, `latitude`, `longitude`, `speed`, `direction`, `engine_status`, `hdop`, `satellite`, `battery_backup`, `sos`, `driver_id`, `created_at`, `updated_at`) VALUES
(3556, 62827, '133C97A-D003866-72AB', 1, '2023-09-12T23:42:52Z', '2023-09-12T23:42:50.0Z', 1, 14.652087, 100.946383, 0, 238, 0, 0, 9, 0, 0, '231001035540100', '2022-12-05 20:13:53', '2023-09-12 23:44:11'),
(3557, 61110, '133EE7B-A004631-3402', 1, '2023-03-15T10:05:25Z', '2023-03-15T10:05:23.0Z', 1, 14.77007, 100.706475, 0, 207, 0, 0, 8, 0, 0, NULL, '2022-12-05 20:13:53', '2023-03-15 10:06:32'),
(3558, 52612, '133EEE6-C004A06-2C07', 1, '2023-07-27T14:42:54Z', '2023-07-27T14:42:54.0Z', 1, 17.183588, 101.824433, 0, 330, 0, 0, 8, 0, 0, NULL, '2022-12-05 20:13:53', '2023-07-27 14:43:03'),
(3559, 17313, '133F0E4-B005421-6940', 1, '2023-09-02T10:10:44Z', '2023-09-02T10:09:32.0Z', 1, 17.122865, 101.865672, 0, 0, 0, 0, 11, 0, 0, NULL, '2022-12-05 20:13:53', '2023-09-02 10:13:57'),
(3560, 14347, '133F0E4-1005422-2893', 1, '2023-04-27T00:05:21Z', '2023-04-27T00:02:15.0Z', 1, 17.163587, 101.912232, 0, 114, 0, 0, 9, 0, 0, NULL, '2022-12-05 20:13:53', '2023-04-27 06:00:13'),
(3561, 28, '1341652-200665F-DD3D', 1, '2023-09-12T23:41:58Z', '2023-09-12T23:41:57.0Z', 1, 17.120703, 101.936245, 0, 237, 0, 0, 8, 0, 0, '231001096040100', '2022-12-05 20:13:53', '2023-09-12 23:44:11'),
(3562, 36811, '134171D-F006D0F-3CAA', 1, '2023-09-11T16:40:29Z', '2023-09-11T16:40:28.0Z', 1, 17.105743, 101.965682, 0, 0, 0, 0, 7, 0, 0, '231001146540205', '2022-12-05 20:13:53', '2023-09-11 16:41:34'),
(3563, 10244, '134171D-C006D10-DBC0', 1, '2023-09-04T11:21:53Z', '2023-09-04T11:21:52.0Z', 1, 17.141002, 102.03406, 0, 328, 0, 0, 9, 0, 0, '231001146540205', '2022-12-05 20:13:53', '2023-09-04 11:22:13'),
(3564, 29162, '134178C-C007047-71E8', 1, '2023-09-11T14:06:44Z', '2023-09-11T14:06:41.0Z', 1, 17.132833, 101.853817, 0, 87, 0, 0, 8, 0, 0, '241003686500100', '2022-12-05 20:13:53', '2023-09-11 14:07:01'),
(3565, 46599, '133EC8F-1003EA7-8E53', 1, '2023-09-12T23:43:14Z', '2023-09-12T23:43:13.0Z', 1, 17.183813, 101.824562, 0, 225, 0, 0, 9, 0, 0, NULL, '2022-12-05 20:14:52', '2023-09-12 23:44:11'),
(3566, 36997, '133EE8D-B0047A5-F2AA', 1, '2023-09-03T21:11:21Z', '2023-09-03T21:11:20.0Z', 1, 14.652305, 100.946285, 0, 0, 0, 0, 9, 0, 0, '231002366540100', '2022-12-05 20:14:52', '2023-09-03 21:11:43'),
(3567, 52468, '133EEE4-20049E4-71EB', 1, '2023-09-12T23:42:08Z', '2023-09-12T23:42:07.0Z', 1, 14.580958, 101.009115, 0, 190, 0, 0, 10, 0, 0, '231001434940100', '2022-12-05 20:14:52', '2023-09-12 23:44:11'),
(3568, 2700, '1341719-A006CA6-97F3', 1, '2023-09-12T23:41:13Z', '2023-09-12T23:41:13.0Z', 1, 17.120625, 101.936237, 0, 326, 0, 0, 8, 0, 0, '231000066440100', '2022-12-05 20:14:52', '2023-09-12 23:44:11'),
(3569, 52563, '133C97A-4003863-A5DE', 1, '2023-02-27T15:58:02Z', '2023-02-27T15:58:01.0Z', 1, 17.183442, 101.824338, 0, 85, 0, 0, 10, 0, 0, '131001946540100', '2022-12-05 20:16:24', '2023-02-27 15:58:31'),
(3570, 3139, '133C9CE-1003947-2A00', 1, '2023-03-31T18:27:54Z', '2023-03-31T18:27:53.0Z', 1, 17.18368, 101.824545, 0, 0, 0, 0, 11, 0, 0, NULL, '2022-12-05 20:16:24', '2023-03-31 18:29:05'),
(3571, 39132, '133F0D4-7005274-5A41', 1, '2023-07-27T14:37:41Z', '2023-07-27T14:37:33.0Z', 1, 17.183343, 101.824233, 0, 0, 0, 0, 9, 0, 0, NULL, '2022-12-05 20:16:24', '2023-07-27 14:37:42'),
(3572, 42505, '1341722-3006D79-C079', 1, '2023-09-08T16:08:41Z', '2023-09-08T16:08:37.0Z', 1, 17.10125, 101.98607, 0, 0, 0, 0, 8, 0, 0, '121002895640100', '2022-12-05 20:16:25', '2023-09-08 16:09:35'),
(3573, 40209, '134660F-F008B60-A913', 1, '2023-09-02T10:11:15Z', '2023-09-02T10:11:09.0Z', 1, 17.12297, 101.865497, 0, 281, 0, 0, 8, 0, 0, NULL, '2022-12-06 06:01:19', '2023-09-02 10:13:57'),
(3574, 63746, '133C9D0-A00397D-D3C2', 1, '2023-08-23T20:57:35Z', '2023-08-23T20:57:34.0Z', 1, 17.183568, 101.824397, 0, 327, 0, 0, 7, 0, 0, '221000926040100', '2022-12-06 07:47:26', '2023-08-23 20:58:18'),
(3575, 306, '13415F6-20063CA-FBE5', 1, '2022-12-15T08:21:36Z', '2022-12-15T08:21:34.0Z', 1, 17.092605, 102.037463, 0, 178, 0, 0, 10, 0, 0, '121002895640100', '2022-12-06 14:20:21', '2022-12-15 08:22:30'),
(3576, 52196, '1348CB6-40090AA-F508', 1, '2023-09-12T23:38:46Z', '2023-09-12T23:38:24.0Z', 1, 17.122788, 101.86556, 0, 329, 0, 0, 8, 0, 0, NULL, '2022-12-07 09:34:16', '2023-09-12 23:44:11'),
(3577, 6052, '13414C4-D005E7A-B6E9', 1, '2023-09-12T23:38:38Z', '2023-09-12T23:38:33.0Z', 0, 17.12241, 101.86636, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-12-07 11:58:10', '2023-09-12 23:44:11'),
(3578, 2787, '13417E9-1007269-60BC', 1, '2023-09-12T23:38:35Z', '2023-09-12T23:38:35.0Z', 0, 17.18365, 101.82462, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-12-07 11:58:10', '2023-09-12 23:44:11'),
(3579, 8404, '1348D17-C009156-AA23', 1, '2023-06-14T10:10:04Z', '2023-06-14T10:10:03.0Z', 1, 17.07376, 101.954853, 0, 238, 0, 0, 9, 0, 0, NULL, '2022-12-09 16:09:17', '2023-06-14 10:12:45'),
(3580, 5671, '133EEE3-40049E1-59A1', 1, '2023-04-02T09:18:07Z', '2023-04-02T09:18:04.0Z', 1, 17.183583, 101.82445, 0, 330, 0, 0, 7, 0, 0, NULL, '2022-12-10 12:21:09', '2023-04-02 09:18:44'),
(3581, 52107, '1348CCA-20090C0-87F1', 1, '2023-09-12T23:34:10Z', '2023-09-12T23:34:09.0Z', 1, 16.491788, 102.428677, 0, 137, 0, 0, 9, 0, 0, '231000705940100', '2023-03-17 15:57:43', '2023-09-12 23:44:11'),
(3582, 3, '12347', 9, '2017-09-13T12:00:22.0Z', '2017-09-13T12:00:22.0Z', 1, 22.33456, 100.22345, 30.33, 360, 1, 4, 1, 2, 3, '4', '2023-12-13 10:01:39', '2023-12-13 10:01:39'),
(3583, 3, '123458', 2, '2017-09-13T12:00:22.0Z', '2017-09-13T12:00:22.0Z', 1, 22.33456, 100.22345, 30.33, 360, 1, 4, 1, 2, 3, '4', '2023-12-13 10:01:39', '2023-12-13 10:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soil_condition`
--

CREATE TABLE `tbl_soil_condition` (
  `id` int(11) NOT NULL,
  `soil_condition_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_soil_condition`
--

INSERT INTO `tbl_soil_condition` (`id`, `soil_condition_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'ดินปกติ', 80, '2022-05-11 20:22:08', 0, '2022-05-11 20:22:08'),
(2, 'ดินแข็ง', 80, '2022-05-11 20:22:16', 0, '2022-05-11 20:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soil_type`
--

CREATE TABLE `tbl_soil_type` (
  `id` int(11) NOT NULL,
  `soil_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `user_full_name` varchar(100) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT 0,
  `company_id` int(11) DEFAULT 0,
  `department_id` int(11) DEFAULT 0,
  `user_role` varchar(50) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` text NOT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `user_full_name`, `user_type_id`, `company_id`, `department_id`, `user_role`, `user_tel`, `user_address`, `username`, `password`, `image`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(69, 'พีรพล ธนรัตนนนท์', 3, 0, 0, NULL, NULL, NULL, 'Peraphol', '$2a$08$ulfJcc8UcOmz6JLNMroR8eWh0aMOlUHNAjBYloEJEtjXZ9LwW8EVO', '', 9, '2023-12-12 05:24:11', 0, '2023-12-12 05:24:11'),
(71, 'ไฉน ศรีเชียงษา', 3, 0, 0, NULL, '0864565615', NULL, 'Chanai', '$2a$08$t1uPBrTvU8xit9b2FoJ11ecCsEXg2eU30ExZAAR1ZUsaJvAXOuWgC', '', 69, '2023-12-12 05:40:43', 0, '2023-12-12 05:40:43'),
(72, 'admin', 3, 0, 0, NULL, NULL, NULL, 'admin', '$2a$08$sPkQF1RBjg/CO5ZnNYREFeWU9xnB39bbs/VrA63YS.Tetit595CKq', '', 2, '2023-12-12 08:44:55', 0, '2023-12-14 09:02:19'),
(74, 'Ch09', 2, 0, 0, NULL, NULL, NULL, 'Ch09', '$2a$08$xE9ADYxalwhfDsFPQPRlB.jfx0MIMkBzAiiCEkkdKjA8bvykbba5S', '', 69, '2023-12-12 15:28:53', 69, '2023-12-12 15:29:26'),
(75, 'Ch10', 2, 0, 0, NULL, NULL, NULL, 'Ch10', '$2a$08$QtVXMBCVHNHbYG1bugvJqOrxIJ7O.JF6Y0LFyi0xFUWQb1hu35lhW', '', 69, '2023-12-12 15:29:19', 0, '2023-12-12 15:29:19'),
(76, 'Ch26', 2, 0, 0, NULL, NULL, NULL, 'Ch26', '$2a$08$3rz6rEunWZAAiQ6qMPW9DO3gOyMw5dWQbjFv356mZ6Slokvca3FTe', '', 69, '2023-12-12 15:29:53', 0, '2023-12-12 15:29:53'),
(77, 'Admin_Nipaporn', 3, 0, 0, NULL, NULL, NULL, 'Admin_Nipaporn', '$2a$08$wEQJD9Xwaw0HlGlmkl2Vi.D8Sdd3nqQ0bz9oFlVFKdOM35RD.euqm', '', 69, '2023-12-12 15:30:26', 9, '2023-12-16 08:50:38'),
(78, 'Admin_Nid', 5, 0, 0, NULL, NULL, NULL, 'Admin_Nid', '$2a$08$1F8RtH/HkX6kZZ6atw.deOj4U8p9GGrKUhCAWTo4eZveR4KZsIdZS', '', 69, '2023-12-12 15:30:51', 0, '2023-12-12 15:30:51'),
(79, 'Admin_Bee', 3, 0, 0, NULL, NULL, NULL, 'Admin_Bee', '$2a$08$YHeFYbNvxqT8L.mBtPSKjeykmgSJsy.VZlO99kp35qyPb7b0DxB/i', '', 69, '2023-12-12 15:31:10', 0, '2023-12-12 15:31:10'),
(80, 'Admin_Chanai', 3, 0, 0, NULL, NULL, NULL, 'Admin_Chanai', '$2a$08$EmWJPFmrphVcdgHBSxZvsuFDKyt4Di1PIxgujC9oxNz4VUBkUavRi', '', 69, '2023-12-12 15:31:34', 0, '2023-12-12 15:31:34'),
(81, 'supachaiu', 3, 0, 0, '', '', '', 'supachaiu', '$2a$08$Wm7/8XRxHjbiRocE23vDtOusFBDn8yVvmHwYBZ3mCD3b3m8866d0S', '', 71, '2023-12-14 21:00:30', 0, '2023-12-14 21:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_type`
--

CREATE TABLE `tbl_user_type` (
  `id` int(11) NOT NULL,
  `user_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_type`
--

INSERT INTO `tbl_user_type` (`id`, `user_type_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'BUYER', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'DRIVER', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'ADMIN', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'MEMBER', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'OFFICE', 1, '2022-12-08 14:41:44', 0, '2022-12-08 14:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_type_detail`
--

CREATE TABLE `tbl_user_type_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User ID',
  `ut_id` int(11) NOT NULL COMMENT 'User Type ID',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user_type_detail`
--

INSERT INTO `tbl_user_type_detail` (`id`, `user_id`, `ut_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_water_fertilizer_type`
--

CREATE TABLE `tbl_water_fertilizer_type` (
  `id` int(11) NOT NULL,
  `water_fertilizer_type_name` varchar(100) NOT NULL,
  `user_created` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_updated` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_water_fertilizer_type`
--

INSERT INTO `tbl_water_fertilizer_type` (`id`, `water_fertilizer_type_name`, `user_created`, `created_at`, `user_updated`, `updated_at`) VALUES
(1, 'ปุ๋ยน้ำทางใบ', 80, '2022-05-11 20:16:32', 0, '2022-05-11 20:16:32'),
(2, 'เร่งดอก', 80, '2022-05-11 20:16:40', 0, '2022-05-11 20:16:40'),
(3, 'เร่งใบ', 80, '2022-05-11 20:16:47', 0, '2022-05-11 20:16:47'),
(4, 'ปุ๋ยน้ำวีแวส', 22, '2022-12-12 07:34:55', 0, '2022-12-12 07:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `test_gps`
--

CREATE TABLE `test_gps` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `box_id` varchar(10) DEFAULT NULL,
  `data_status` int(11) DEFAULT NULL,
  `receive_time` varchar(30) DEFAULT NULL,
  `gps_time` varchar(30) DEFAULT NULL,
  `gps_status` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `engine_status` int(11) DEFAULT NULL,
  `hdop` int(11) DEFAULT NULL,
  `satellite` int(11) DEFAULT NULL,
  `battery_backup` int(11) DEFAULT NULL,
  `sos` int(11) DEFAULT NULL,
  `driver_id` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `test_gps`
--

INSERT INTO `test_gps` (`id`, `reference_id`, `box_id`, `data_status`, `receive_time`, `gps_time`, `gps_status`, `latitude`, `longitude`, `speed`, `direction`, `engine_status`, `hdop`, `satellite`, `battery_backup`, `sos`, `driver_id`, `created_at`, `updated_at`) VALUES
(14, 3, '12345', 1, '2017-09-13T12:00:22.0Z', '2017-09-13T12:00:22.0Z', 1, 22.33456, 100.22345, 30.33, 360, 1, 4, 1, 2, 3, '4', '2022-11-22 22:21:32', '2022-11-22 22:30:20'),
(15, 3, '1234', 1, '2017-09-13T12:00:22.0Z', '2017-09-13T12:00:22.0Z', 1, 22.33456, 100.22345, 30.33, 360, 1, 4, 1, 2, 3, '4', '2022-11-22 22:21:32', '2022-11-22 22:30:20'),
(16, 3, '12347', 4, '2017-09-13T12:00:22.0Z', '2017-09-13T12:00:22.0Z', 1, 22.33456, 100.22345, 30.33, 360, 1, 4, 1, 2, 3, '4', '2022-11-22 22:31:04', '2022-11-22 22:31:21'),
(17, 3, '123458', 0, '2017-09-13T12:00:22.0Z', '2017-09-13T12:00:22.0Z', 1, 22.33456, 100.22345, 30.33, 360, 1, 4, 1, 2, 3, '4', '2022-11-22 22:31:04', '2022-11-22 22:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `UserAccounts`
--

CREATE TABLE `UserAccounts` (
  `id` int(11) NOT NULL,
  `empID` varchar(255) DEFAULT NULL,
  `userRole` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `emailVerified` varchar(255) DEFAULT NULL,
  `prenameTH` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `prenameEN` varchar(255) DEFAULT NULL,
  `firstnameEN` varchar(255) DEFAULT NULL,
  `lastnameEN` varchar(255) DEFAULT NULL,
  `abbnameEN` varchar(255) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `positionID` int(11) DEFAULT NULL,
  `empRate` decimal(10,0) DEFAULT NULL,
  `empStatus` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_update` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `shadow_gps`
--
ALTER TABLE `shadow_gps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_adjust`
--
ALTER TABLE `tbl_activity_adjust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_canecut`
--
ALTER TABLE `tbl_activity_canecut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_drone`
--
ALTER TABLE `tbl_activity_drone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_fertilizer_formula`
--
ALTER TABLE `tbl_activity_fertilizer_formula`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_leaves`
--
ALTER TABLE `tbl_activity_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_plant`
--
ALTER TABLE `tbl_activity_plant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_plot`
--
ALTER TABLE `tbl_activity_plot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_plow`
--
ALTER TABLE `tbl_activity_plow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_point`
--
ALTER TABLE `tbl_activity_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity_ripper`
--
ALTER TABLE `tbl_activity_ripper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_adjust_type`
--
ALTER TABLE `tbl_adjust_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_activity`
--
ALTER TABLE `tbl_cane_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_cropyear`
--
ALTER TABLE `tbl_cane_cropyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_cuted_type`
--
ALTER TABLE `tbl_cane_cuted_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_owner`
--
ALTER TABLE `tbl_cane_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_plow_type`
--
ALTER TABLE `tbl_cane_plow_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_spray_type`
--
ALTER TABLE `tbl_cane_spray_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_type`
--
ALTER TABLE `tbl_cane_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cane_varieties`
--
ALTER TABLE `tbl_cane_varieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_config_group_menus`
--
ALTER TABLE `tbl_config_group_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_config_menu_details`
--
ALTER TABLE `tbl_config_menu_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_driver_user`
--
ALTER TABLE `tbl_driver_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_farmer`
--
ALTER TABLE `tbl_farmer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fertilizer_band`
--
ALTER TABLE `tbl_fertilizer_band`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fertilizer_formula`
--
ALTER TABLE `tbl_fertilizer_formula`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gis_plot`
--
ALTER TABLE `tbl_gis_plot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_harvest_carcut`
--
ALTER TABLE `tbl_harvest_carcut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_harvest_truck`
--
ALTER TABLE `tbl_harvest_truck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_land`
--
ALTER TABLE `tbl_land`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_land_activity`
--
ALTER TABLE `tbl_land_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_land_document_license_type`
--
ALTER TABLE `tbl_land_document_license_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_land_rent_space`
--
ALTER TABLE `tbl_land_rent_space`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_land_type`
--
ALTER TABLE `tbl_land_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logistic_sendcane`
--
ALTER TABLE `tbl_logistic_sendcane`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pay_type`
--
ALTER TABLE `tbl_pay_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quota`
--
ALTER TABLE `tbl_quota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting_group_menus`
--
ALTER TABLE `tbl_setting_group_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting_menu_details`
--
ALTER TABLE `tbl_setting_menu_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shadow_box`
--
ALTER TABLE `tbl_shadow_box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shadow_gps`
--
ALTER TABLE `tbl_shadow_gps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_soil_condition`
--
ALTER TABLE `tbl_soil_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_soil_type`
--
ALTER TABLE `tbl_soil_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_type_detail`
--
ALTER TABLE `tbl_user_type_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_water_fertilizer_type`
--
ALTER TABLE `tbl_water_fertilizer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_gps`
--
ALTER TABLE `test_gps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserAccounts`
--
ALTER TABLE `UserAccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Accounts`
--
ALTER TABLE `Accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shadow_gps`
--
ALTER TABLE `shadow_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_activity_adjust`
--
ALTER TABLE `tbl_activity_adjust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_activity_canecut`
--
ALTER TABLE `tbl_activity_canecut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_activity_drone`
--
ALTER TABLE `tbl_activity_drone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_activity_fertilizer_formula`
--
ALTER TABLE `tbl_activity_fertilizer_formula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_activity_leaves`
--
ALTER TABLE `tbl_activity_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_activity_plant`
--
ALTER TABLE `tbl_activity_plant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_activity_plot`
--
ALTER TABLE `tbl_activity_plot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_activity_plow`
--
ALTER TABLE `tbl_activity_plow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_activity_point`
--
ALTER TABLE `tbl_activity_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_activity_ripper`
--
ALTER TABLE `tbl_activity_ripper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_adjust_type`
--
ALTER TABLE `tbl_adjust_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cane_activity`
--
ALTER TABLE `tbl_cane_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_cane_cropyear`
--
ALTER TABLE `tbl_cane_cropyear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cane_cuted_type`
--
ALTER TABLE `tbl_cane_cuted_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cane_owner`
--
ALTER TABLE `tbl_cane_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cane_plow_type`
--
ALTER TABLE `tbl_cane_plow_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_cane_spray_type`
--
ALTER TABLE `tbl_cane_spray_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cane_type`
--
ALTER TABLE `tbl_cane_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cane_varieties`
--
ALTER TABLE `tbl_cane_varieties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_config_group_menus`
--
ALTER TABLE `tbl_config_group_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_config_menu_details`
--
ALTER TABLE `tbl_config_menu_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_driver_user`
--
ALTER TABLE `tbl_driver_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_farmer`
--
ALTER TABLE `tbl_farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_fertilizer_band`
--
ALTER TABLE `tbl_fertilizer_band`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_fertilizer_formula`
--
ALTER TABLE `tbl_fertilizer_formula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gis_plot`
--
ALTER TABLE `tbl_gis_plot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=620;

--
-- AUTO_INCREMENT for table `tbl_harvest_carcut`
--
ALTER TABLE `tbl_harvest_carcut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_harvest_truck`
--
ALTER TABLE `tbl_harvest_truck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=791;

--
-- AUTO_INCREMENT for table `tbl_land`
--
ALTER TABLE `tbl_land`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_land_activity`
--
ALTER TABLE `tbl_land_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_land_document_license_type`
--
ALTER TABLE `tbl_land_document_license_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_land_rent_space`
--
ALTER TABLE `tbl_land_rent_space`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_land_type`
--
ALTER TABLE `tbl_land_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_logistic_sendcane`
--
ALTER TABLE `tbl_logistic_sendcane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT for table `tbl_pay_type`
--
ALTER TABLE `tbl_pay_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_quota`
--
ALTER TABLE `tbl_quota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting_group_menus`
--
ALTER TABLE `tbl_setting_group_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting_menu_details`
--
ALTER TABLE `tbl_setting_menu_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shadow_box`
--
ALTER TABLE `tbl_shadow_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_shadow_gps`
--
ALTER TABLE `tbl_shadow_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3584;

--
-- AUTO_INCREMENT for table `tbl_soil_condition`
--
ALTER TABLE `tbl_soil_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_soil_type`
--
ALTER TABLE `tbl_soil_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user_type_detail`
--
ALTER TABLE `tbl_user_type_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_water_fertilizer_type`
--
ALTER TABLE `tbl_water_fertilizer_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_gps`
--
ALTER TABLE `test_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `UserAccounts`
--
ALTER TABLE `UserAccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
