-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 03:33 PM
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
(11, '2021_09_26_194105_create_diseases_crop_table', 2);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
