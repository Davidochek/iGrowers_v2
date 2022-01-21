-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 03:35 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igrowersv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `group`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '0727170890', 'admin@admin.com', 'Nairobi', NULL, '$2y$10$mp2ob2CXDI5dSRgvLG1.du2xSdKjz13hk8H3Rdhb0769ViJI9tcP2', NULL, '2021-11-24 06:25:21', '2021-11-24 06:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `name`, `phone`, `email`, `location`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Buyer', '0727170890', 'buyer@gmail.com', 'Nairobi', NULL, '$2y$10$chgLeKASqv4FGU55v1gokup.knm5o9AMXAm35j65.19vlWdhkyHaG', NULL, '2021-11-23 18:08:42', '2021-11-23 18:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Tomato', 'assets/img/crops/tomato.jpg\r\n', NULL, NULL),
(2, 'Beans', 'assets/img/crops/beans.jpg', NULL, NULL),
(3, 'Maize', 'assets/img/crops/maize.jpg\r\n', NULL, NULL),
(4, 'Peas', 'assets/img/crops/peas.jpg\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crop_diseases`
--

CREATE TABLE `crop_diseases` (
  `id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `diseases_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop_diseases`
--

INSERT INTO `crop_diseases` (`id`, `crop_id`, `diseases_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 4, 13),
(14, 4, 14),
(15, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `crop_pests`
--

CREATE TABLE `crop_pests` (
  `id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `pests_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop_pests`
--

INSERT INTO `crop_pests` (`id`, `crop_id`, `pests_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 4, 13),
(14, 4, 14),
(15, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `common_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scientific_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prevention` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `control` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`, `common_name`, `scientific_name`, `family`, `type`, `issue`, `cause`, `prevention`, `control`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(2, 'Anthracnose', 'Brown blight, tear stain, dieack, fruit rot, stem canker, black spot', 'Colletotrichum spp, Gloesporium spp, Glomerella', 'C. coccodes, C. phomoides', 'Disease', 'Fungal', 'Favoured by wet humid conditions,use of infected seed, spread by rain splash and moist wind', 'crop rotation, enhancement of soil quality, field sanitation and pruning, hot water seed treatment,                                                                                                                            Habitat management- use of wild ', 'Use of fungicides- Copper compounds derived from copper hydroxide and copper oxychloride those available include : Kocide 101(r), Kocide DF(r) and Copper oxychloride.', 'assets/img/diseases/Anthracnose/Anthracnose damage on pumpkin leaf.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on beans.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on Papaya.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on sweet pepper.jpg', NULL, NULL),
(4, 'Bacterial wilt', 'southern bacteria/blight', 'Ralstoria solanacearum', 'Burkholderiales Ralstoniaceae', 'Disease', 'Bacterial', 'Movement of infested soil and running water. Diseased seedlings. Infected vegetative propagating material. Crop residues infected left in the field. Injured roots caused by farm tools or soil pests. Warm tempratures and high soil moisture. Slightly acidic', 'Cultural practices-crop rotation, use of varieties resistant to bacterial wilt, no growing in soil where bacteria has occurred, control of root nematodes, intercropping, planting in different seasons.', 'Use of synthetic pesticides. Flooding on the infected fields. Use of organic manures to suppress bacterial wilt pathogen in soil.', 'assets/img/diseases/bacterial wilt/Bacterial will symptoms on tomato.jpeg', 'assets/img/diseases/bacterial wilt/Bacterial wilt symptom on tobacco.jpeg', 'assets/img/diseases/bacterial wilt/Bacterial wilt on chillies.jpeg', 'assets/img/diseases/bacterial wilt/Bacterial will symptoms on sweet pepper.jpeg', NULL, NULL),
(5, 'Early blight', 'dry blight, leaf spots, damping off, collar rot', 'Alternaria solani', '', 'Disease', 'Fungal', 'Warm and humid weather with heavy dues or rains. Periods of warm rainy weather. Infected plant residues. Infected seeds', 'Cultural practices- use of clean seeds. Use of tolerant or resistant seeds. Crop rotation. Practising proper plant spacing and staking. water management. Soil management.', 'Physical methods- hot water treatment of seeds. Biopesticides- use of copper fungicides in the market. Use of botanical fungicides such as- ( fermented mariold extract, onion bulb extract). Use of sulphur fungicide to prevent early blight [Thiovit(r)].', 'assets/img/diseases/Early blight/Early blight on potato leaf.jpeg', 'assets/img/diseases/Early blight/Early blight on okra leaf.jpeg', 'assets/img/diseases/Early blight/Early blight on tomato leaf.jpeg', 'assets/img/diseases/Early blight/Early blight on tomato.jpeg', NULL, NULL),
(6, 'Late blight', 'late blight', 'Phytophthora infestans', 'Pythiales: Pythiaceae', 'Disease', 'Fungal', 'Cool and moist periods increase infections', 'Cultural practices- Use healthy seeds/ planting materials, field sanitation, proper rotation, proper plant spacing, resistant varieties, tool hygiene, solarisation, weather forecasts. Use of \'maigoya\' to prevent outreaks of late blight.', 'Use of fungicides based on copper hydroxide or oxychloride.', 'assets/img/diseases/Late blight/Late blight on potato tubers .jpeg', 'assets/img/diseases/Late blight/Late blight on potato tubers .jpeg', 'assets/img/diseases/Late blight/Late blight on tomato.jpeg', 'assets/img/diseases/Late blight/Late blight symptoms on tomato.jpeg', NULL, NULL),
(7, 'Bacterial wilt', 'bacterial wilt, brown rot, moko disease (banana), slime disease (potato), southern bacterial blight (tomato), seedling rot', 'Ralstonia solanacearum (Pseudomonas solanacearum)', 'Burkholderiales: Ralstoniaceae', 'Disease', 'Bacterial', 'The bacterium is soil-borne and can survive in soil for long periods. However, some soils are conducive to bacterial wilt and other suppressive. Important soil factors affecting the occurrence and persistence of the pathogen are soil moisture and antagoni', 'Cultural practices- Crop rotation is not effective as the pathogen can survive for a long period (several years) in the soil and also attack a wide range of crops and solanaceous weeds\nUse plant varieties that are tolerant / resistant to bacterial wilt. I', '', 'assets/img/diseases/bacterial wilt/Bacterial will symptoms on tomato.jpeg', 'assets/img/diseases/bacterial wilt/Bacterial wilt symptom on tobacco.jpeg', 'assets/img/diseases/bacterial wilt/Bacterial wilt on chillies.jpeg', 'assets/img/diseases/bacterial wilt/Bacterial will symptoms on sweet pepper.jpeg', NULL, NULL),
(9, 'Anthracnose', 'Brown blight, tear stain, dieack, fruit rot, stem canker, black spot', 'Colletotrichum spp, Gloesporium spp, Glomerella', 'C. coccodes, C. phomoides', 'Disease', 'Fungal', 'Favoured by wet humid conditions,use of infected seed, spread by rain splash and moist wind', 'crop rotation, enhancement of soil quality, field sanitation and pruning, hot water seed treatment,                                                                                                                            Habitat management- use of wild ', 'Use of fungicides- Copper compounds derived from copper hydroxide and copper oxychloride those available include : Kocide 101(r), Kocide DF(r) and Copper oxychloride.', 'assets/img/diseases/Anthracnose/Anthracnose damage on pumpkin leaf.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on beans.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on Papaya.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on sweet pepper.jpg', NULL, NULL),
(14, 'Anthracnose', 'Brown blight, tear stain, dieack, fruit rot, stem canker, black spot', 'Colletotrichum spp, Gloesporium spp, Glomerella', 'C. coccodes, C. phomoides', 'Disease', 'Fungal', 'Favoured by wet humid conditions,use of infected seed, spread by rain splash and moist wind', 'crop rotation, enhancement of soil quality, field sanitation and pruning, hot water seed treatment,                                                                                                                            Habitat management- use of wild ', 'Use of fungicides- Copper compounds derived from copper hydroxide and copper oxychloride those available include : Kocide 101(r), Kocide DF(r) and Copper oxychloride.', 'assets/img/diseases/Anthracnose/Anthracnose damage on pumpkin leaf.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on beans.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on Papaya.PNG', 'assets/img/diseases/Anthracnose/Anthracnose on sweet pepper.jpg', NULL, NULL);

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
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `name`, `email`, `phone`, `crop`, `created_at`, `updated_at`) VALUES
(1, 'David Kiprono Chemochek', 'david@gmail.com', '0711439698', '', '2021-10-28 05:33:57', '2021-10-28 05:33:57'),
(2, 'Paul Kyalo Mutunga', 'paul@gmail.com', '0721123456', '', '2021-10-28 05:40:30', '2021-10-28 05:40:30'),
(3, 'David', 'admin@admin.com', '0727170890', '', '2021-10-28 05:41:19', '2021-10-28 05:41:19'),
(4, 'Liz Kanja', 'liz@gmzil.com', '0712345678', '', '2021-10-28 07:54:46', '2021-10-28 07:54:46'),
(5, 'INV6227', 'sales@duffengineering.co.ke', '0705587666', '', '2021-10-28 07:58:54', '2021-10-28 07:58:54'),
(6, 'Bernard Rono', 'ben@gmail.com', '0727123456', '', '2021-10-28 08:01:40', '2021-10-28 08:01:40'),
(7, 'John Doe', 'john@gmail.com', '0711234567', '', '2021-10-29 05:44:39', '2021-10-29 05:44:39'),
(8, 'David', 'david2@gmail.com', '0720987654', '', '2021-10-29 07:43:42', '2021-10-29 07:43:42'),
(9, 'Degree', 'degree@gmail.com', '0765143211', '', '2021-10-29 07:50:31', '2021-10-29 07:50:31'),
(10, 'INV6227', 'sales@duffengineering.co.ke', '0705587667', '', '2021-10-29 07:51:52', '2021-10-29 07:51:52'),
(11, 'Nash', 'new@gmail.com', '0756432789', '', '2021-10-29 08:00:55', '2021-10-29 08:00:55'),
(12, 'David Kiprono Chemochek', 'chemochek@gmail.com', '0711439697', '', '2021-10-29 08:38:12', '2021-10-29 08:38:12'),
(13, 'Lizz', 'liz@gmzil.com', '0723455445', '', '2021-10-29 08:53:20', '2021-10-29 08:53:20'),
(14, 'INV6227', 'sales@duffengineering.co.ke', '0705587678', '', '2021-10-29 09:23:36', '2021-10-29 09:23:36'),
(15, 'David Kiprono Chemochek', 'davidkiprono4@gmail.com', '0757898820', '', '2021-10-29 09:27:13', '2021-10-29 09:27:13'),
(16, 'David Kiprono Chemochek', 'davidkiprono4@gmail.com', '0757898824', '', '2021-10-29 09:29:15', '2021-10-29 09:29:15'),
(17, 'David', 'davidkiprono4@gmail.com', '0757898825', '', '2021-10-29 09:29:44', '2021-10-29 09:29:44'),
(18, 'David Kiprono Chemochek', 'davidkiprono4@gmail.com', '0757898826', '', '2021-10-29 09:30:02', '2021-10-29 09:30:02'),
(19, 'David Kiprono Chemochek', 'davidkiprono4@gmail.com', '0757898827', '', '2021-10-29 09:30:20', '2021-10-29 09:30:20'),
(20, 'Chemochek', 'davidkiprono4@gmail.com', '0711223344', '', '2021-10-29 09:45:07', '2021-10-29 09:45:07'),
(21, 'INV6227', 'sales@duffengineering.co.ke', '0705581266', '', '2021-10-29 10:39:30', '2021-10-29 10:39:30'),
(22, 'Morris', 'sales@duffengineering.co.ke', '0790722501', '', '2021-12-16 05:59:37', '2021-12-16 05:59:37'),
(23, 'Stacy', NULL, '0789123456', 'Avocado', '2021-12-22 11:29:23', '2021-12-22 11:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2021_09_24_114803_create_pests_table', 1),
(6, '2021_09_24_140111_create_diseases_table', 1),
(7, '2021_09_24_141044_create_markets_table', 1),
(8, '2021_09_24_141130_create_services_table', 1),
(9, '2021_09_26_191150_create_crops_table', 1),
(10, '2021_09_26_192045_create_pests_crop_table', 1),
(11, '2021_09_26_194105_create_diseases_crop_table', 2),
(12, '2021_10_28_075528_create_farmers_table', 3),
(13, '2021_11_22_120008_create_buyers_table', 4),
(14, '2021_11_24_082130_create_admins_table', 5),
(15, '2021_12_14_102731_create_superusers_table', 6),
(16, '2021_12_14_220759_create_services_table', 7),
(17, '2021_12_19_061412_create_sproviders_table', 8),
(18, '2021_12_19_071008_create_services_table', 9),
(19, '2021_12_22_082249_create_orders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bid` int(11) NOT NULL,
  `sname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bid`, `sname`, `spid`, `fname`, `fphone`, `flocation`, `date`, `created_at`, `updated_at`) VALUES
(1, 2, 'Soil Testing', '4', 'John', '0711439698', 'Eldoret', '2021-12-11', '2021-12-22 07:15:29', '2021-12-22 07:15:29'),
(2, 1, 'AI', '4', 'Rose', '0711345678', 'Nairobi', '2021-12-31', '2021-12-22 08:09:02', '2021-12-22 08:09:02'),
(3, 1, 'AI', '4', 'David', '0711439698', 'Industrial Area', '2021-12-25', '2021-12-22 08:45:57', '2021-12-22 08:45:57');

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
-- Table structure for table `pests`
--

CREATE TABLE `pests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `common_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scientific_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prevention` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `control` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pests`
--

INSERT INTO `pests` (`id`, `name`, `common_name`, `scientific_name`, `family`, `type`, `issue`, `cause`, `prevention`, `control`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(1, 'African bollworm', 'fruit worm, pod borer, tomato grub, tobacco budworm', 'Helicoverpa armigera', 'Lepidoptera:Noctuidae', 'Pest', 'Insect', 'Preference for the harvestable flowering parts of high-value crops for example tomatoes', 'Cultural practices- crop rotation, enhancement of soil quality, choice of resistant varieties, water management, monitoring, screening and field sanitation, mechanical barriers and post-harvest treatments. Habitat management- use of wild flower strips and', 'Synthetic pesticides-Bacillus thuringiensis and neem. Biopesticides- pheromones and natural products. Plant extracts- (neem, garlic, pepper and marigold). Physical methods-insect traps and baits, handpicking of damaged fruits and those that have fallen, w', 'assets/img/pests/African bollworm/African bollworm damage on peas.jpeg', 'assets/img/pests/African bollworm/African bollworm eating a flower.jpeg', 'assets/img/pests/African bollworm/African bollworm feeding on okra.jpg', 'assets/img/pests/African bollworm/African bollworm feeding peas.jpeg', NULL, NULL),
(3, 'Aphids', '', 'Aphis gossypii, Aphis spiraecola', 'Hemiptera:Aphididae', 'Pest', 'insect', 'Poor field sanitation', 'Cultural practices- monitoring- if rapid number of growth of the number of aphids per plant is observed then treatments should be planned. Growing healthy plants. Practice crop rotation. Use of trap crops. Practice mixed cropping. Ploughing and flooding t', 'Biopesticides- neem extracts, chilli pepper extracts, castor oil plant, pyrethrum sprays, traps and water traps, sticky board traps, soap spray and use of flour preparations and ash.', 'assets/img/pests/Aphids/Aphid infestation on cabbage.PNG', 'assets/img/pests/Aphids/Aphids on pepper fruit.PNG', 'assets/img/pests/Aphids/Aphids on pepper plant leaves.PNG', 'assets/img/pests/Aphids/Aphid infestation on beans.PNG', NULL, NULL),
(8, 'African bollworm', 'fruit worm, pod borer, tomato grub, tobacco budworm', 'Helicoverpa armigera', 'Lepidoptera:Noctuidae', 'Pest', 'Insect', 'Preference for the harvestable flowering parts of high-value crops for example tomatoes', 'Cultural practices- crop rotation, enhancement of soil quality, choice of resistant varieties, water management, monitoring, screening and field sanitation, mechanical barriers and post-harvest treatments. Habitat management- use of wild flower strips and', 'Synthetic pesticides-Bacillus thuringiensis and neem. Biopesticides- pheromones and natural products. Plant extracts- (neem, garlic, pepper and marigold). Physical methods-insect traps and baits, handpicking of damaged fruits and those that have fallen, w', 'assets/img/pests/African bollworm/African bollworm damage on peas.jpeg', 'assets/img/pests/African bollworm/African bollworm eating a flower.jpeg', 'assets/img/pests/African bollworm/African bollworm feeding on okra.jpg', 'assets/img/pests/African bollworm/African bollworm feeding peas.jpeg', NULL, NULL),
(10, 'Aphids', '', 'Aphis gossypii, Aphis spiraecola', 'Hemiptera:Aphididae', 'Pest', 'insect', 'Poor field sanitation', 'Cultural practices- monitoring- if rapid number of growth of the number of aphids per plant is observed then treatments should be planned. Growing healthy plants. Practice crop rotation. Use of trap crops. Practice mixed cropping. Ploughing and flooding t', 'Biopesticides- neem extracts, chilli pepper extracts, castor oil plant, pyrethrum sprays, traps and water traps, sticky board traps, soap spray and use of flour preparations and ash.', 'assets/img/pests/Aphids/Aphid infestation on cabbage.PNG', 'assets/img/pests/Aphids/Aphids on pepper fruit.PNG', 'assets/img/pests/Aphids/Aphids on pepper plant leaves.PNG', 'assets/img/pests/Aphids/Aphid infestation on beans.PNG', NULL, NULL),
(11, 'African bollworm', 'fruit worm, pod borer, tomato grub, tobacco budworm', 'Helicoverpa armigera', 'Lepidoptera:Noctuidae', 'Pest', 'Insect', 'Preference for the harvestable flowering parts of high-value crops for example tomatoes', 'Cultural practices- crop rotation, enhancement of soil quality, choice of resistant varieties, water management, monitoring, screening and field sanitation, mechanical barriers and post-harvest treatments. Habitat management- use of wild flower strips and', 'Synthetic pesticides-Bacillus thuringiensis and neem. Biopesticides- pheromones and natural products. Plant extracts- (neem, garlic, pepper and marigold). Physical methods-insect traps and baits, handpicking of damaged fruits and those that have fallen, w', 'assets/img/pests/African bollworm/African bollworm damage on peas.jpeg', 'assets/img/pests/African bollworm/African bollworm eating a flower.jpeg', 'assets/img/pests/African bollworm/African bollworm feeding on okra.jpg', 'assets/img/pests/African bollworm/African bollworm feeding peas.jpeg', NULL, NULL),
(12, 'Aphids', '', 'Aphis gossypii, Aphis spiraecola', 'Hemiptera:Aphididae', 'Pest', 'insect', 'Poor field sanitation', 'Cultural practices- monitoring- if rapid number of growth of the number of aphids per plant is observed then treatments should be planned. Growing healthy plants. Practice crop rotation. Use of trap crops. Practice mixed cropping. Ploughing and flooding t', 'Biopesticides- neem extracts, chilli pepper extracts, castor oil plant, pyrethrum sprays, traps and water traps, sticky board traps, soap spray and use of flour preparations and ash.', 'assets/img/pests/Aphids/Aphid infestation on cabbage.PNG', 'assets/img/pests/Aphids/Aphids on pepper fruit.PNG', 'assets/img/pests/Aphids/Aphids on pepper plant leaves.PNG', 'assets/img/pests/Aphids/Aphid infestation on beans.PNG', NULL, NULL),
(13, 'African bollworm', 'fruit worm, pod borer, tomato grub, tobacco budworm', 'Helicoverpa armigera', 'Lepidoptera:Noctuidae', 'Pest', 'Insect', 'Preference for the harvestable flowering parts of high-value crops for example tomatoes', 'Cultural practices- crop rotation, enhancement of soil quality, choice of resistant varieties, water management, monitoring, screening and field sanitation, mechanical barriers and post-harvest treatments. Habitat management- use of wild flower strips and', 'Synthetic pesticides-Bacillus thuringiensis and neem. Biopesticides- pheromones and natural products. Plant extracts- (neem, garlic, pepper and marigold). Physical methods-insect traps and baits, handpicking of damaged fruits and those that have fallen, w', 'assets/img/pests/African bollworm/African bollworm damage on peas.jpeg', 'assets/img/pests/African bollworm/African bollworm eating a flower.jpeg', 'assets/img/pests/African bollworm/African bollworm feeding on okra.jpg', 'assets/img/pests/African bollworm/African bollworm feeding peas.jpeg', NULL, NULL),
(15, 'Aphids', '', 'Aphis gossypii, Aphis spiraecola', 'Hemiptera:Aphididae', 'Pest', 'insect', 'Poor field sanitation', 'Cultural practices- monitoring- if rapid number of growth of the number of aphids per plant is observed then treatments should be planned. Growing healthy plants. Practice crop rotation. Use of trap crops. Practice mixed cropping. Ploughing and flooding t', 'Biopesticides- neem extracts, chilli pepper extracts, castor oil plant, pyrethrum sprays, traps and water traps, sticky board traps, soap spray and use of flour preparations and ash.', 'assets/img/pests/Aphids/Aphid infestation on cabbage.PNG', 'assets/img/pests/Aphids/Aphids on pepper fruit.PNG', 'assets/img/pests/Aphids/Aphids on pepper plant leaves.PNG', 'assets/img/pests/Aphids/Aphid infestation on beans.PNG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `name`, `details`, `image`, `location`, `contact_person`, `phone`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'AI', 'Test Details', '20211220215449.jpeg', 'Nairobi, Industrial Area', 'Morris', '0790722501', 'sales@duffengineering.co.ke', NULL, '2021-12-20 18:44:21', '2021-12-22 03:56:57'),
(2, 4, 'Soil Testing', 'Soil testing details', '20211220215449.jpeg', 'Nairobi', 'David', '0790722501', 'sales@duffengineering.co.ke', NULL, '2021-12-20 18:54:49', '2021-12-22 03:45:03'),
(3, 4, 'Crop Monitoring Services', 'Based on satellite images, Crop Monitoring helps farmers to manage multiple fields, cut costs on resources and take reliable decisions.', '20211222120835.jpg', 'Nairobi, Industrial Area', 'Morris', '0790722501', 'sales@duffengineering.co.ke', 'approved', '2021-12-22 09:08:35', '2021-12-22 09:08:35'),
(4, 4, 'Soil Testing', 'Cropnuts (or Crop Nutrition Laboratory Services Ltd) is a private company that offers laboratory analytics and expert agricultural advice in Africa.', '20211222121014.jpg', 'Nairobi, Industrial Area', 'Morris', '0790722501', 'sales@duffengineering.co.ke', 'approved', '2021-12-22 09:10:14', '2021-12-22 09:10:14'),
(5, 4, 'Farm Equipment Products', 'Farming Vehicles; 1. Tractors; 2. Combine or Harvester; 3. ATV or UTV; Tractor Attachments; 1. Plows; 2. Harrows;', '20211222121116.jpg', 'Nairobi, Industrial Area', 'Morris', '0790722501', 'sales@duffengineering.co.ke', 'approved', '2021-12-22 09:11:16', '2021-12-22 09:11:16'),
(6, 4, 'Irrigation Services', 'Netafim is the global leader in irrigation solutions for a sustainable agriculture. Since introducing the world\'s first drip irrigation system in 1966', '20211222121222.jpg', 'Nairobi, Industrial Area', 'Morris', '0790722501', 'sales@duffengineering.co.ke', 'approved', '2021-12-22 09:12:22', '2021-12-22 09:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `sproviders`
--

CREATE TABLE `sproviders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sproviders`
--

INSERT INTO `sproviders` (`id`, `name`, `phone`, `email`, `location`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'David Kiprono Chemochek', '0727170890', 'admin@admin.com', 'Nairobi, Industrial Area', NULL, '$2y$10$lUa9S7EqwQj3h3G928DIyurIV6p10/bFGvzFe6/KPjzLOqwfEW/86', NULL, '2021-12-20 09:15:36', '2021-12-20 09:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `superusers`
--

CREATE TABLE `superusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `superusers`
--

INSERT INTO `superusers` (`id`, `name`, `phone`, `email`, `group`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'INV6227', '0705587666', 'sales@duffengineering.co.ke', 'Main', NULL, '$2y$10$J/LzaD.mlalJQ759PScKuenp2uyPArVK.SE9i5.oUuCqDF/nUwuwi', NULL, '2021-12-14 09:08:20', '2021-12-14 09:08:20'),
(4, 'Admin', '0727170890', 'admin@admin.com', NULL, NULL, '$2y$10$k2d1pQpf9SN25SM8D4JOv.2zTSLdHgCfv2H2QTI/fIGGC50qBtQIq', NULL, '2021-12-14 09:24:50', '2021-12-14 09:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_group_unique` (`group`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `buyers_phone_unique` (`phone`),
  ADD UNIQUE KEY `buyers_email_unique` (`email`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_pests`
--
ALTER TABLE `crop_pests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `farmers_phone_unique` (`phone`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `pests`
--
ALTER TABLE `pests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sproviders`
--
ALTER TABLE `sproviders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sproviders_phone_unique` (`phone`),
  ADD UNIQUE KEY `sproviders_email_unique` (`email`);

--
-- Indexes for table `superusers`
--
ALTER TABLE `superusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `superusers_phone_unique` (`phone`),
  ADD UNIQUE KEY `superusers_email_unique` (`email`),
  ADD UNIQUE KEY `superusers_group_unique` (`group`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `crop_pests`
--
ALTER TABLE `crop_pests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pests`
--
ALTER TABLE `pests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sproviders`
--
ALTER TABLE `sproviders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `superusers`
--
ALTER TABLE `superusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
