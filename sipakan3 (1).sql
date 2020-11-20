-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 01:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipakan3`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributecleaning_options`
--

CREATE TABLE `attributecleaning_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attributecleaning_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributescleanings`
--

CREATE TABLE `attributescleanings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Pakan Ternak', 'pakan-ternak', 0, '2020-11-15 17:55:21', '2020-11-15 22:47:36'),
(2, 'Peralatan Ternak', 'peralatan-ternak', 0, '2020-11-15 22:47:24', '2020-11-15 22:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `categorycleanings`
--

CREATE TABLE `categorycleanings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorycleanings`
--

INSERT INTO `categorycleanings` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Hewan', 'hewan', 0, '2020-11-18 06:58:05', '2020-11-18 06:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `cleanings`
--

CREATE TABLE `cleanings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `weight` decimal(15,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cleanings`
--

INSERT INTO `cleanings` (`id`, `parent_id`, `user_id`, `sku`, `type`, `name`, `slug`, `price`, `weight`, `width`, `height`, `length`, `short_description`, `description`, `status`, `created_at`, `updated_at`) VALUES
(7, NULL, 1, '12345', 'simple', 'Selang Biasa', 'selang-biasa', '55000.00', '7.00', '5.00', '3.00', '2.00', 'Selang alpen double. Pipa air adalah pipa atau selang yang kebanyakan terbuat dari karet sintesis yang membawa air bersih dari satu tempat ke tempat lain', 'Pipa air adalah pipa atau selang yang kebanyakan terbuat dari karet sintesis yang membawa air bersih dari satu tempat ke tempat lain', 1, '2020-10-31 20:19:00', '2020-10-31 20:39:31'),
(8, NULL, 1, '56789', 'simple', 'Sapu Lidi', 'sapu-lidi', '15000.00', '12.00', '2.00', '1.00', '2.00', 'Sapu Lidi', 'Sapu lidi (bahasa Inggris: hard broom) adalah alat pembersih halaman, pekarangan, atau jalan raya, sapu lidi banyak di gunakan oleh perumahan, perkantoran atau petugas kebersihan, yang terbuat dari lidi pelepah pohon, lidi yang digunakan bisa berasal dari pelapah kelapa atau aren. Sapu lidi merupakan peralatan rumah tangga khas Indonesia.', 1, '2020-11-02 20:28:32', '2020-11-02 20:29:59'),
(9, NULL, 1, '23478', 'simple', 'Cikrak', 'cikrak', '13000.00', '1.00', '2.00', '3.00', '1.00', 'Cikrak', 'Pengki atau Serokan adalah perkakas kebersihan, pada umumnya digunakan bersama-sama dengan sapu. Pengki memiliki bentuk seperti sekop yang datar. Alat ini merupakan alat yang biasa ada di dalam rumah tangga, tetapi juga digunakan secara bervariasi dalam industri dan komersial. Pengki yang lebih modern dipasangkan pada semacam tongkat silindris sehingga penggunanya tak perlu terlalu sering membungkuk. Pengki juga dikenal dengan istilah nama cikrak atau engkrak dalam bahasa jawa, biasanya terbuat dari bambu yang dianyam tanpa gagang (jika yang memakai gagang, disebut ikrak dalam bahasa Jawa). Biasanya dijual bersama dengan tempat sampah bambu sebagai pasangan alat kebersihan yang berbasis lingkungan.', 1, '2020-11-02 20:30:30', '2020-11-02 20:31:27'),
(11, NULL, 1, '8463837', 'simple', 'Sapi', 'sapi', '20000.00', '5.00', '3.00', '4.00', '2.00', 'abcde', 'abcde', 1, '2020-11-18 07:16:37', '2020-11-18 07:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_attribute_values`
--

CREATE TABLE `cleaning_attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_cleaning_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cleaning_id` bigint(20) UNSIGNED NOT NULL,
  `attributecleaning_id` bigint(20) UNSIGNED NOT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(8,2) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_categories`
--

CREATE TABLE `cleaning_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cleaning_id` bigint(20) UNSIGNED NOT NULL,
  `category_cleaning_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cleaning_categories`
--

INSERT INTO `cleaning_categories` (`id`, `cleaning_id`, `category_cleaning_id`) VALUES
(1, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_images`
--

CREATE TABLE `cleaning_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cleaning_id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_large` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cleaning_images`
--

INSERT INTO `cleaning_images` (`id`, `cleaning_id`, `path`, `extra_large`, `large`, `medium`, `small`, `created_at`, `updated_at`) VALUES
(1, 11, 'uploads/images/original/sapi_1605709100.png', 'uploads/images/xlarge/sapi_1605709100.png', 'uploads/images/large/sapi_1605709100.png', 'uploads/images/medium/sapi_1605709100.png', 'uploads/images/small/sapi_1605709100.png', '2020-11-18 07:18:22', '2020-11-18 07:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_inventories`
--

CREATE TABLE `cleaning_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cleaning_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cleaning_inventories`
--

INSERT INTO `cleaning_inventories` (`id`, `cleaning_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 11, 10, '2020-11-18 19:59:05', '2020-11-18 19:59:05');

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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2020-11-15 19:30:05', '2020-11-15 19:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendMailOrderReceived\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1605507748, 1605507748),
(2, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendMailOrderReceived\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1605512488, 1605512488),
(3, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendMailOrderReceived\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1605516037, 1605516037),
(4, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderReceived\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendMailOrderReceived\\\":9:{s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1605576830, 1605576830);

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
(93, '2014_10_12_100000_create_password_resets_table', 1),
(94, '2019_08_19_000000_create_failed_jobs_table', 1),
(95, '2020_10_27_011912_create_users_table', 1),
(96, '2020_10_27_093008_create_categories_table', 1),
(97, '2020_10_28_074412_create_products_table', 1),
(98, '2020_10_28_080546_create_attributes_table', 1),
(99, '2020_10_28_080928_create_product_attribute_values_table', 1),
(100, '2020_10_28_081627_create_product_inventories_table', 1),
(101, '2020_10_28_081924_create_product_categories_table', 1),
(102, '2020_10_28_084849_rename_column_in_products_table', 1),
(103, '2020_10_29_125525_alter_column_in_products_table', 1),
(104, '2020_10_30_015129_add_columns_to_attributes_table', 1),
(105, '2020_10_30_015440_create_attribute_options_table', 1),
(106, '2020_10_30_031030_remove_column_product_attribute_value_id_in_product_inventories_table', 1),
(107, '2020_10_30_031349_add_parent_id_and_type_to_products_table', 1),
(108, '2020_10_30_031539_alter_as_nullable_column_in_products_table', 1),
(109, '2020_10_30_031713_alter_attribute_relation_in_product_attribute_values_table', 1),
(110, '2020_10_30_110134_create_permission_tables', 1),
(111, '2020_10_31_025231_add_full_text_search_index_to_products_table', 1),
(112, '2020_10_31_030354_add_parent_product_id_to_product_attribute_values_table', 1),
(113, '2020_10_31_033240_rename_column_and_add_columns_in_users_table', 1),
(114, '2020_10_31_064856_create_orders_table', 1),
(115, '2020_10_31_065216_create_order_items_table', 1),
(116, '2020_10_31_065415_create_payments_table', 1),
(117, '2020_10_31_065553_create_shipments_table', 1),
(118, '2020_10_31_072857_create_jobs_table', 1),
(119, '2020_10_31_075316_add_payment_token_to_orders_table', 1),
(120, '2020_10_31_075551_add_status_to_payments_table', 1),
(121, '2020_11_05_050913_create_slides_table', 1),
(122, '2020_11_15_144455_create_favorites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ordercleanings`
--

CREATE TABLE `ordercleanings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordercleaning_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_province_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_service_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordercleanings`
--

INSERT INTO `ordercleanings` (`id`, `user_id`, `code`, `status`, `ordercleaning_date`, `payment_due`, `payment_status`, `payment_token`, `payment_url`, `base_total_price`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `shipping_cost`, `grand_total`, `note`, `customer_first_name`, `customer_last_name`, `customer_address1`, `customer_address2`, `customer_phone`, `customer_email`, `customer_city_id`, `customer_province_id`, `customer_postcode`, `shipping_courier`, `shipping_service_name`, `approved_by`, `approved_at`, `cancelled_by`, `cancelled_at`, `cancellation_note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(10, 4, 'INV/20201101/XI/I/00001', 'created', '2020-11-01 13:49:56', '2020-11-08 13:49:56', 'unpaid', 'c9b7a994-2d43-4a86-b6b7-0ca2635db5bd', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/c9b7a994-2d43-4a86-b6b7-0ca2635db5bd', '110000.00', '11000.00', '10.00', '0.00', '0.00', '9000.00', '130000.00', NULL, 'Tasta', 'Putri', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'tastaputri@gmail.com', '445', '10', 68486, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-01 06:49:56', '2020-11-01 06:49:58'),
(11, 4, 'INV/20201101/XI/I/00002', 'created', '2020-11-01 14:14:49', '2020-11-08 14:14:49', 'unpaid', '22eec746-3d2a-468c-a470-a72589e71b0d', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/22eec746-3d2a-468c-a470-a72589e71b0d', '55000.00', '5500.00', '10.00', '0.00', '0.00', '11000.00', '71500.00', 'keterangannn', 'Tasta', 'Putri', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'tastaputri@gmail.com', '398', '10', 68486, 'jne', 'JNE - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-01 07:14:49', '2020-11-01 07:14:51'),
(12, 5, 'INV/20201101/XI/I/00003', 'created', '2020-11-01 14:20:20', '2020-11-08 14:20:20', 'unpaid', '20f94794-b053-4b8b-9339-dd9e03bc22ef', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/20f94794-b053-4b8b-9339-dd9e03bc22ef', '110000.00', '11000.00', '10.00', '0.00', '0.00', '20000.00', '141000.00', 'Halo Endah ini pesananmu ya', 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-01 07:20:20', '2020-11-01 07:20:21'),
(14, 5, 'INV/20201102/XI/II/00001', 'created', '2020-11-02 00:33:23', '2020-11-09 00:33:23', 'unpaid', '829ab8f3-3b2d-476e-b619-bca8e38f5a48', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/829ab8f3-3b2d-476e-b619-bca8e38f5a48', '165000.00', '16500.00', '10.00', '0.00', '0.00', '18000.00', '199500.00', 'Selang 1 y', 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'tiki', 'TIKI - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-01 17:33:23', '2020-11-01 17:33:25'),
(15, 5, 'INV/20201102/XI/II/00002', 'created', '2020-11-02 03:53:54', '2020-11-09 03:53:54', 'unpaid', '66db467e-238b-47ff-9499-8440566e9ad3', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/66db467e-238b-47ff-9499-8440566e9ad3', '55000.00', '5500.00', '10.00', '0.00', '0.00', '18000.00', '78500.00', 'Selang 1 ya', 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'tiki', 'TIKI - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-01 20:53:54', '2020-11-01 20:53:55'),
(16, 5, 'INV/20201102/XI/II/00003', 'created', '2020-11-02 07:20:14', '2020-11-09 07:20:14', 'unpaid', 'b984863a-2ad2-40dd-8bf4-a772d2af5265', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/b984863a-2ad2-40dd-8bf4-a772d2af5265', '275000.00', '27500.00', '10.00', '0.00', '0.00', '15000.00', '317500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'tiki', 'TIKI - ECO', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 00:20:14', '2020-11-02 00:20:15'),
(17, 5, 'INV/20201102/XI/II/00004', 'created', '2020-11-02 07:29:13', '2020-11-09 07:29:13', 'unpaid', 'aa27d616-5186-4b8e-83b6-5cc24c535771', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/aa27d616-5186-4b8e-83b6-5cc24c535771', '55000.00', '5500.00', '10.00', '0.00', '0.00', '17000.00', '77500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 00:29:13', '2020-11-02 00:29:14'),
(18, 5, 'INV/20201102/XI/II/00005', 'created', '2020-11-02 12:45:47', '2020-11-09 12:45:47', 'unpaid', 'b25aafef-0901-49d8-a8a0-8943d574b6cb', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/b25aafef-0901-49d8-a8a0-8943d574b6cb', '55000.00', '5500.00', '10.00', '0.00', '0.00', '17000.00', '77500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 05:45:47', '2020-11-02 05:45:49'),
(19, 5, 'INV/20201102/XI/II/00006', 'created', '2020-11-02 13:23:47', '2020-11-09 13:23:47', 'unpaid', '72a3b51b-dbf1-447f-a436-2c221738b1d5', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/72a3b51b-dbf1-447f-a436-2c221738b1d5', '55000.00', '5500.00', '10.00', '0.00', '0.00', '20000.00', '80500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 06:23:47', '2020-11-02 06:23:48'),
(20, 5, 'INV/20201102/XI/II/00007', 'cancelled', '2020-11-02 14:42:59', '2020-11-09 14:42:59', 'unpaid', '7d1a3711-077c-4784-a9e6-3bf732e8b1e2', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/7d1a3711-077c-4784-a9e6-3bf732e8b1e2', '55000.00', '5500.00', '10.00', '0.00', '0.00', '17000.00', '77500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - OKE', NULL, NULL, 1, '2020-11-02 14:48:17', 'sorry', NULL, '2020-11-02 07:43:00', '2020-11-02 07:48:17'),
(21, 5, 'INV/20201103/XI/III/00001', 'created', '2020-11-03 01:55:39', '2020-11-10 01:55:39', 'unpaid', '77be5aaf-4730-4c68-b4c0-be94da1e9db5', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/77be5aaf-4730-4c68-b4c0-be94da1e9db5', '55000.00', '5500.00', '10.00', '0.00', '0.00', '20000.00', '80500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 18:55:40', '2020-11-02 18:55:41'),
(22, 5, 'INV/20201103/XI/III/00002', 'created', '2020-11-03 03:20:53', '2020-11-10 03:20:53', 'unpaid', '108a2abc-419b-461f-a4f8-3f0ead84d1d7', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/108a2abc-419b-461f-a4f8-3f0ead84d1d7', '55000.00', '5500.00', '10.00', '0.00', '0.00', '18000.00', '78500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'pos', 'POS - Paket Kilat Khusus', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 20:20:54', '2020-11-02 20:20:55'),
(23, 5, 'INV/20201103/XI/III/00003', 'created', '2020-11-03 05:59:39', '2020-11-10 05:59:39', 'unpaid', 'f787402e-bb9f-4c47-996b-f182d66cdfd0', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/f787402e-bb9f-4c47-996b-f182d66cdfd0', '15000.00', '1500.00', '10.00', '0.00', '0.00', '17000.00', '33500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 22:59:39', '2020-11-02 22:59:41'),
(24, 5, 'INV/20201103/XI/III/00004', 'created', '2020-11-03 06:18:35', '2020-11-10 06:18:35', 'unpaid', 'cd115606-c829-4754-8ff7-269b8934cb94', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/cd115606-c829-4754-8ff7-269b8934cb94', '30000.00', '3000.00', '10.00', '0.00', '0.00', '15000.00', '48000.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'tiki', 'TIKI - ECO', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 23:18:35', '2020-11-02 23:18:36'),
(25, 5, 'INV/20201103/XI/III/00005', 'created', '2020-11-03 06:33:26', '2020-11-10 06:33:26', 'unpaid', '2b9f9f08-f080-438a-be52-a81e735a5eaa', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/2b9f9f08-f080-438a-be52-a81e735a5eaa', '45000.00', '4500.00', '10.00', '0.00', '0.00', '18000.00', '67500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'tiki', 'TIKI - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 23:33:26', '2020-11-02 23:33:26'),
(26, 5, 'INV/20201103/XI/III/00006', 'created', '2020-11-03 10:46:52', '2020-11-10 10:46:52', 'unpaid', 'bbf73e52-ddda-4425-9820-a2c10589b3e4', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/bbf73e52-ddda-4425-9820-a2c10589b3e4', '13000.00', '1300.00', '10.00', '0.00', '0.00', '15000.00', '29300.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'tiki', 'TIKI - ECO', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:46:52', '2020-11-03 03:46:53'),
(27, 5, 'INV/20201103/XI/III/00007', 'created', '2020-11-03 11:33:01', '2020-11-10 11:33:01', 'unpaid', '5fd2b2a9-6512-4a2a-87ea-ecdb84bdc422', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/5fd2b2a9-6512-4a2a-87ea-ecdb84bdc422', '13000.00', '1300.00', '10.00', '0.00', '0.00', '18000.00', '32300.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'pos', 'POS - Paket Kilat Khusus', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 04:33:01', '2020-11-03 04:33:02'),
(28, 5, 'INV/20201103/XI/III/00008', 'completed', '2020-11-03 13:36:50', '2020-11-10 13:36:50', 'paid', '773ef32b-3d24-4725-8141-cf7c0e9387d0', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/773ef32b-3d24-4725-8141-cf7c0e9387d0', '13000.00', '1300.00', '10.00', '0.00', '0.00', '18000.00', '32300.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'pos', 'POS - Paket Kilat Khusus', 1, '2020-11-03 13:45:59', NULL, NULL, NULL, NULL, '2020-11-03 06:36:50', '2020-11-03 06:45:59'),
(29, 5, 'INV/20201103/XI/III/00009', 'created', '2020-11-03 14:40:06', '2020-11-10 14:40:06', 'unpaid', '52637b43-f362-433e-9fcc-b3cec19c48b5', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/52637b43-f362-433e-9fcc-b3cec19c48b5', '15000.00', '1500.00', '10.00', '0.00', '0.00', '20000.00', '36500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 07:40:07', '2020-11-03 07:40:08'),
(30, 5, 'INV/20201104/XI/IV/00001', 'created', '2020-11-04 04:02:27', '2020-11-11 04:02:27', 'unpaid', '60d47568-9df3-4816-a533-e100d46f6e32', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/60d47568-9df3-4816-a533-e100d46f6e32', '13000.00', '1300.00', '10.00', '0.00', '0.00', '17000.00', '31300.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 21:02:27', '2020-11-03 21:02:29'),
(31, 5, 'INV/20201104/XI/IV/00002', 'created', '2020-11-04 12:56:13', '2020-11-11 12:56:13', 'unpaid', 'c1184091-eb0a-4459-9ef0-562148f22caa', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/c1184091-eb0a-4459-9ef0-562148f22caa', '55000.00', '5500.00', '10.00', '0.00', '0.00', '17000.00', '77500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 05:56:13', '2020-11-04 05:56:14'),
(32, 5, 'INV/20201105/XI/V/00001', 'created', '2020-11-05 06:08:37', '2020-11-12 06:08:37', 'unpaid', 'f39b2801-72d3-4c0c-beb3-3196fdf46596', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/f39b2801-72d3-4c0c-beb3-3196fdf46596', '15000.00', '1500.00', '10.00', '0.00', '0.00', '17000.00', '33500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 23:08:37', '2020-11-04 23:08:39'),
(33, 5, 'INV/20201105/XI/V/00002', 'created', '2020-11-05 13:41:37', '2020-11-12 13:41:37', 'unpaid', 'cd3d789b-9d66-4a7e-ba1b-492c2484cfcd', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/cd3d789b-9d66-4a7e-ba1b-492c2484cfcd', '55000.00', '5500.00', '10.00', '0.00', '0.00', '20000.00', '80500.00', NULL, 'Endah', 'Safitri', 'Lidah-Gambiran', NULL, '082244446789', 'endahwhys@gmail.com', '42', '11', 68468, 'jne', 'JNE - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 06:41:37', '2020-11-05 06:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `ordercleaning_items`
--

CREATE TABLE `ordercleaning_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ordercleaning_id` bigint(20) UNSIGNED NOT NULL,
  `cleaning_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributescleaning` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `code`, `status`, `order_date`, `payment_due`, `payment_status`, `payment_token`, `payment_url`, `base_total_price`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `shipping_cost`, `grand_total`, `note`, `customer_first_name`, `customer_last_name`, `customer_address1`, `customer_address2`, `customer_phone`, `customer_email`, `customer_city_id`, `customer_province_id`, `customer_postcode`, `shipping_courier`, `shipping_service_name`, `approved_by`, `approved_at`, `cancelled_by`, `cancelled_at`, `cancellation_note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 3, 'INV/20201116/XI/XVI/00001', 'created', '2020-11-16 06:22:25', '2020-11-23 06:22:25', 'unpaid', '337f02e9-bff8-4d6f-af7e-23654a0edb11', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/337f02e9-bff8-4d6f-af7e-23654a0edb11', '40000.00', '4000.00', '10.00', '0.00', '0.00', '9000.00', '53000.00', NULL, 'Safitri', 'wahyu', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-15 23:22:25', '2020-11-15 23:22:26'),
(15, 3, 'INV/20201116/XI/XVI/00002', 'created', '2020-11-16 07:41:26', '2020-11-23 07:41:26', 'unpaid', '5e51a080-29d0-4cb4-a5fd-1510fa47078d', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/5e51a080-29d0-4cb4-a5fd-1510fa47078d', '20000.00', '2000.00', '10.00', '0.00', '0.00', '9000.00', '31000.00', NULL, 'Safitri', 'wahyu', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-16 00:41:26', '2020-11-16 00:41:27'),
(16, 3, 'INV/20201116/XI/XVI/00003', 'created', '2020-11-16 08:40:36', '2020-11-23 08:40:36', 'unpaid', 'c1e3b377-01cc-4377-b382-883807e226ff', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/c1e3b377-01cc-4377-b382-883807e226ff', '120000.00', '12000.00', '10.00', '0.00', '0.00', '11000.00', '143000.00', NULL, 'Safitri', 'wahyu', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, 'jne', 'JNE - REG', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-16 01:40:36', '2020-11-16 01:40:37'),
(17, 3, 'INV/20201117/XI/XVII/00001', 'created', '2020-11-17 01:33:47', '2020-11-24 01:33:47', 'unpaid', '8ae6ec78-5001-43b5-a622-f9c095a80455', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/8ae6ec78-5001-43b5-a622-f9c095a80455', '20000.00', '2000.00', '10.00', '0.00', '0.00', '9000.00', '31000.00', NULL, 'Endah', 'wahyu', 'Kampung Kandang Sapi, Jebres Solo', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, 'jne', 'JNE - OKE', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-16 18:33:47', '2020-11-16 18:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attributes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `base_price`, `base_total`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `sub_total`, `sku`, `type`, `name`, `weight`, `attributes`, `created_at`, `updated_at`) VALUES
(14, 14, 3, 2, '20000.00', '40000.00', '0.00', '0.00', '0.00', '0.00', '40000.00', '12345', 'simple', 'Sapu', '2.00', '[]', '2020-11-15 23:22:25', '2020-11-15 23:22:25'),
(15, 15, 3, 1, '20000.00', '20000.00', '0.00', '0.00', '0.00', '0.00', '20000.00', '12345', 'simple', 'Sapu', '2.00', '[]', '2020-11-16 00:41:26', '2020-11-16 00:41:26'),
(16, 16, 10, 2, '60000.00', '120000.00', '0.00', '0.00', '0.00', '0.00', '120000.00', '789000', 'simple', 'hayuuuuuk', '4.00', '[]', '2020-11-16 01:40:36', '2020-11-16 01:40:36'),
(17, 17, 3, 1, '20000.00', '20000.00', '0.00', '0.00', '0.00', '0.00', '20000.00', '12345', 'simple', 'Sapu', '2.00', '[]', '2020-11-16 18:33:47', '2020-11-16 18:33:47');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biller_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_users', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(2, 'add_users', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(3, 'edit_users', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(4, 'delete_users', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(5, 'view_roles', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(6, 'add_roles', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(7, 'edit_roles', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(8, 'delete_roles', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(9, 'view_products', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(10, 'add_products', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(11, 'edit_products', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(12, 'delete_products', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(13, 'view_orders', 'web', '2020-11-15 17:54:10', '2020-11-15 17:54:10'),
(14, 'add_orders', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(15, 'edit_orders', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(16, 'delete_orders', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(17, 'view_categories', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(18, 'add_categories', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(19, 'edit_categories', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(20, 'delete_categories', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(21, 'view_attributes', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(22, 'add_attributes', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(23, 'edit_attributes', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(24, 'delete_attributes', 'web', '2020-11-15 17:54:11', '2020-11-15 17:54:11'),
(25, 'view_shipments', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12'),
(26, 'add_shipments', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12'),
(27, 'edit_shipments', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12'),
(28, 'delete_shipments', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12'),
(29, 'view_slides', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12'),
(30, 'add_slides', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12'),
(31, 'edit_slides', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12'),
(32, 'delete_slides', 'web', '2020-11-15 17:54:12', '2020-11-15 17:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `weight` decimal(15,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `parent_id`, `user_id`, `sku`, `type`, `name`, `slug`, `price`, `weight`, `width`, `height`, `length`, `short_description`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'AB002', 'simple', 'Pakan Sapi Ku', 'pakan-sapi-ku', '20000.00', '20.00', '2.00', '3.00', '2.00', 'aaa', 'aaaa', 1, '2020-11-15 17:55:47', '2020-11-15 17:55:47'),
(3, NULL, 1, '12345', 'simple', 'Sapu', 'sapu', '20000.00', '2.00', '1.00', '1.00', '3.00', 'sapu', 'sapu', 1, '2020-11-15 22:48:08', '2020-11-15 22:50:18'),
(10, NULL, 1, '789000', 'simple', 'hayuuuuuk', 'hayuuuuuk', '60000.00', '4.00', '3.00', '1.00', '2.00', 'dddd', 'jjjjjj', 1, '2020-11-16 01:35:33', '2020-11-16 01:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(8,2) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 1),
(3, 3, 2),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_large` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `path`, `extra_large`, `large`, `medium`, `small`, `created_at`, `updated_at`) VALUES
(21, 2, 'uploads/images/original/haloo_1605494124.png', 'uploads/images/xlarge/haloo_1605494124.png', 'uploads/images/large/haloo_1605494124.png', 'uploads/images/medium/haloo_1605494124.png', 'uploads/images/small/haloo_1605494124.png', '2020-11-15 19:35:28', '2020-11-15 19:35:28'),
(23, 3, 'uploads/images/original/selang_1605505728.jpeg', 'uploads/images/xlarge/selang_1605505728.jpeg', 'uploads/images/large/selang_1605505728.jpeg', 'uploads/images/medium/selang_1605505728.jpeg', 'uploads/images/small/selang_1605505728.jpeg', '2020-11-15 22:48:49', '2020-11-15 22:48:49'),
(24, 3, 'uploads/images/original/selang_1605505756.jpeg', 'uploads/images/xlarge/selang_1605505756.jpeg', 'uploads/images/large/selang_1605505756.jpeg', 'uploads/images/medium/selang_1605505756.jpeg', 'uploads/images/small/selang_1605505756.jpeg', '2020-11-15 22:49:17', '2020-11-15 22:49:17'),
(25, 1, 'uploads/images/original/pakan-sapi-ku_1605506076.jpg', 'uploads/images/xlarge/pakan-sapi-ku_1605506076.jpg', 'uploads/images/large/pakan-sapi-ku_1605506076.jpg', 'uploads/images/medium/pakan-sapi-ku_1605506076.jpg', 'uploads/images/small/pakan-sapi-ku_1605506076.jpg', '2020-11-15 22:54:39', '2020-11-15 22:54:39'),
(26, 4, 'uploads/images/original/rumput_1605513389.jpg', 'uploads/images/xlarge/rumput_1605513389.jpg', 'uploads/images/large/rumput_1605513389.jpg', 'uploads/images/medium/rumput_1605513389.jpg', 'uploads/images/small/rumput_1605513389.jpg', '2020-11-16 00:56:31', '2020-11-16 00:56:31'),
(27, 10, 'uploads/images/original/hayuuuuuk_1605515751.jpg', 'uploads/images/xlarge/hayuuuuuk_1605515751.jpg', 'uploads/images/large/hayuuuuuk_1605515751.jpg', 'uploads/images/medium/hayuuuuuk_1605515751.jpg', 'uploads/images/small/hayuuuuuk_1605515751.jpg', '2020-11-16 01:35:52', '2020-11-16 01:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(2, 3, 6, '2020-11-15 22:49:51', '2020-11-16 18:33:47'),
(5, 10, 8, '2020-11-16 01:38:35', '2020-11-16 01:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2020-11-15 17:54:23', '2020-11-15 17:54:23'),
(2, 'User', 'web', '2020-11-15 17:54:26', '2020-11-15 17:54:26'),
(3, 'Worker', 'web', '2020-11-19 03:47:26', '2020-11-19 03:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 2),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(29, 2),
(30, 1),
(31, 1),
(32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `track_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `user_id`, `order_id`, `track_number`, `status`, `total_qty`, `total_weight`, `first_name`, `last_name`, `address1`, `address2`, `phone`, `email`, `city_id`, `province_id`, `postcode`, `shipped_by`, `shipped_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 14, NULL, 'pending', 2, 4, 'Safitri', 'wahyu', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, NULL, NULL, NULL, '2020-11-15 23:22:27', '2020-11-15 23:22:27'),
(2, 3, 15, NULL, 'pending', 1, 2, 'Safitri', 'wahyu', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, NULL, NULL, NULL, '2020-11-16 00:41:27', '2020-11-16 00:41:27'),
(3, 3, 16, NULL, 'pending', 2, 8, 'Safitri', 'wahyu', 'Kampung Kandang Sapi Jebres', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, NULL, NULL, NULL, '2020-11-16 01:40:37', '2020-11-16 01:40:37'),
(4, 3, 17, NULL, 'pending', 1, 2, 'Endah', 'wahyu', 'Kampung Kandang Sapi, Jebres Solo', NULL, '081234567890', 'endahwhys@gmail.com', '445', '10', 68486, NULL, NULL, NULL, '2020-11-16 18:33:49', '2020-11-16 18:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_large` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `user_id`, `title`, `url`, `position`, `status`, `body`, `original`, `extra_large`, `small`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ternak Sapi', NULL, 1, 'active', 'Sapi adalah hewan ternak anggota suku Bovidae dan anak suku Bovinae. Sapi yang telah dikebiri dan biasanya digunakan untuk membajak sawah dinamakan lembu. Sapi dipelihara terutama untuk dimanfaatkan susu dan dagingnya sebagai pangan manusia.', 'uploads/images/original/ternak-sapi_1605498231.jpg', 'uploads/images/xlarge/ternak-sapi_1605498231.jpg', 'uploads/images/small/ternak-sapi_1605498231.jpg', '2020-11-15 20:43:54', '2020-11-15 20:43:54'),
(2, 1, 'Hewan Ternak', NULL, 2, 'active', 'Sapi adalah hewan ternak anggota suku Bovidae dan anak suku Bovinae. Sapi yang telah dikebiri dan biasanya digunakan untuk membajak sawah dinamakan lembu. Sapi dipelihara terutama untuk dimanfaatkan susu dan dagingnya sebagai pangan manusia.', 'uploads/images/original/hewan-ternak_1605498262.jpg', 'uploads/images/xlarge/hewan-ternak_1605498262.jpg', 'uploads/images/small/hewan-ternak_1605498262.jpg', '2020-11-15 20:44:23', '2020-11-15 20:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `email_verified_at`, `password`, `role`, `remember_token`, `company`, `address1`, `address2`, `province_id`, `city_id`, `postcode`, `created_at`, `updated_at`) VALUES
(1, 'Zander', 'Cartwright', 'joe41@example.org', NULL, '2020-11-15 17:54:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'FJdCNRJf5fYiQ1PGy45v75F4UgoBi5pUuWZhvw8F5hVwbiH0pqJa2cWQ3JMW', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-15 17:54:26', '2020-11-15 17:54:26'),
(3, 'Endah', 'wahyu', 'endahwhys@gmail.com', NULL, NULL, '$2y$10$qTk2cTrk5b0npJtE8ka3qehjH2VxSlsL3eH2CM4ZaXWg2l4h/MoH.', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-15 19:29:43', '2020-11-15 19:29:43'),
(4, '', NULL, 'zayn@gmail.com', NULL, NULL, '$2y$10$dku9hJTzeIK8ERBPONOGA.AMFtbGkt.SoSs.NWVHmZc0ZCAjkRuTG', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 03:48:11', '2020-11-19 03:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributecleaning_options`
--
ALTER TABLE `attributecleaning_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attributecleaning_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributescleanings`
--
ALTER TABLE `attributescleanings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorycleanings`
--
ALTER TABLE `categorycleanings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cleanings`
--
ALTER TABLE `cleanings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);
ALTER TABLE `cleanings` ADD FULLTEXT KEY `search` (`name`,`slug`,`short_description`,`description`);

--
-- Indexes for table `cleaning_attribute_values`
--
ALTER TABLE `cleaning_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`cleaning_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attributecleaning_id`),
  ADD KEY `product_attribute_values_parent_product_id_foreign` (`parent_cleaning_id`);

--
-- Indexes for table `cleaning_categories`
--
ALTER TABLE `cleaning_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_product_id_foreign` (`cleaning_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_cleaning_id`);

--
-- Indexes for table `cleaning_images`
--
ALTER TABLE `cleaning_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`cleaning_id`);

--
-- Indexes for table `cleaning_inventories`
--
ALTER TABLE `cleaning_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_inventories_product_id_foreign` (`cleaning_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_product_id_index` (`user_id`,`product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ordercleanings`
--
ALTER TABLE `ordercleanings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`ordercleaning_date`),
  ADD KEY `orders_payment_token_index` (`payment_token`);

--
-- Indexes for table `ordercleaning_items`
--
ALTER TABLE `ordercleaning_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`ordercleaning_id`),
  ADD KEY `order_items_product_id_foreign` (`cleaning_id`),
  ADD KEY `order_items_sku_index` (`sku`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`),
  ADD KEY `orders_payment_token_index` (`payment_token`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_sku_index` (`sku`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `search` (`name`,`slug`,`short_description`,`description`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_attribute_values_parent_product_id_foreign` (`parent_product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_inventories_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributecleaning_options`
--
ALTER TABLE `attributecleaning_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributescleanings`
--
ALTER TABLE `attributescleanings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categorycleanings`
--
ALTER TABLE `categorycleanings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cleanings`
--
ALTER TABLE `cleanings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cleaning_attribute_values`
--
ALTER TABLE `cleaning_attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cleaning_categories`
--
ALTER TABLE `cleaning_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cleaning_images`
--
ALTER TABLE `cleaning_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cleaning_inventories`
--
ALTER TABLE `cleaning_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `ordercleanings`
--
ALTER TABLE `ordercleanings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ordercleaning_items`
--
ALTER TABLE `ordercleaning_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_attribute_values_parent_product_id_foreign` FOREIGN KEY (`parent_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
