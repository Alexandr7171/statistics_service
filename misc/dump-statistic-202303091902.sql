-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: statistic
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `stats__catalog`
--

DROP TABLE IF EXISTS `stats__catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__catalog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `barcode_prefix_1` varchar(255) NOT NULL DEFAULT '',
  `barcode_prefix_2` varchar(255) NOT NULL DEFAULT '',
  `barcode_prefix_3` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `currency_code` varchar(3) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `item_type` enum('','coffee') NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11468 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__catalog`
--

LOCK TABLES `stats__catalog` WRITE;
/*!40000 ALTER TABLE `stats__catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__category`
--

DROP TABLE IF EXISTS `stats__category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `age_limit` tinyint unsigned NOT NULL DEFAULT '0',
  `article` varchar(255) NOT NULL DEFAULT '',
  `catalog_id` int unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `external_code` varchar(255) NOT NULL DEFAULT '',
  `external_id` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `icon_background_color` varchar(25) NOT NULL DEFAULT '',
  `icon_file_extension` varchar(255) NOT NULL DEFAULT '',
  `icon_file_name` varchar(255) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `items_count` smallint unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_en` varchar(255) NOT NULL DEFAULT '',
  `origin_language` char(2) NOT NULL DEFAULT '',
  `parent_external_id` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `parent_path` varchar(255) NOT NULL DEFAULT '',
  `position_weight` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `store_id` (`store_id`) USING BTREE,
  KEY `external_code` (`external_code`),
  KEY `parent_external_id` (`parent_external_id`),
  KEY `external_id` (`external_id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `position_weight` (`position_weight`)
) ENGINE=MyISAM AUTO_INCREMENT=47701 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__category`
--

LOCK TABLES `stats__category` WRITE;
/*!40000 ALTER TABLE `stats__category` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__company`
--

DROP TABLE IF EXISTS `stats__company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__company` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `external_id` varchar(255) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `is_cigarettes_enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `is_customer_loyalty_enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `is_moderated` tinyint unsigned NOT NULL DEFAULT '0',
  `is_only_delivery` tinyint unsigned NOT NULL DEFAULT '0',
  `is_push_distribution_enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `is_russian` tinyint unsigned NOT NULL DEFAULT '0',
  `is_wait_for_sales` tinyint unsigned NOT NULL DEFAULT '0',
  `logo_file_extension` varchar(255) NOT NULL DEFAULT '',
  `logo_file_name` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_brand` varchar(255) NOT NULL DEFAULT '',
  `name_brand_en` varchar(255) NOT NULL DEFAULT '',
  `origin_language` char(2) NOT NULL DEFAULT '',
  `priority` tinyint unsigned NOT NULL DEFAULT '0',
  `promo_text` text NOT NULL,
  `referral_code` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(25) NOT NULL DEFAULT '',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `external_id` (`external_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1545 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__company`
--

LOCK TABLES `stats__company` WRITE;
/*!40000 ALTER TABLE `stats__company` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__currency`
--

DROP TABLE IF EXISTS `stats__currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__currency` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `alpha_3` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alpha_3` (`alpha_3`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=987 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__currency`
--

LOCK TABLES `stats__currency` WRITE;
/*!40000 ALTER TABLE `stats__currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__customer`
--

DROP TABLE IF EXISTS `stats__customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__customer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `avatar_file_extension` varchar(255) NOT NULL DEFAULT '',
  `avatar_file_name` varchar(255) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `flag_is_checked` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_is_company_test` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_is_test` tinyint unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `last_activity_ip_addr` varchar(39) NOT NULL DEFAULT '',
  `last_activity_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_logon_ip_addr` varchar(39) NOT NULL DEFAULT '',
  `last_logon_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `password_hash` char(32) NOT NULL DEFAULT '',
  `password_salt` char(32) NOT NULL DEFAULT '',
  `phone` varchar(25) NOT NULL DEFAULT '',
  `prev_logon_ip_addr` varchar(39) NOT NULL DEFAULT '',
  `prev_logon_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `profile_type` varchar(25) NOT NULL DEFAULT '',
  `state` enum('','active','blocked') NOT NULL DEFAULT '',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `store_timestamp_deselect` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `store_timestamp_select` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trust_level` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  UNIQUE KEY `hash` (`hash`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `unique_key` (`phone`,`company_id`),
  KEY `email` (`email`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__customer`
--

LOCK TABLES `stats__customer` WRITE;
/*!40000 ALTER TABLE `stats__customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__customer_data`
--

DROP TABLE IF EXISTS `stats__customer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__customer_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__customer_data`
--

LOCK TABLES `stats__customer_data` WRITE;
/*!40000 ALTER TABLE `stats__customer_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__customer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__delivery_service`
--

DROP TABLE IF EXISTS `stats__delivery_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__delivery_service` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `external_service` varchar(25) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `party_inn` varchar(12) NOT NULL DEFAULT '',
  `party_name` varchar(255) NOT NULL DEFAULT '',
  `party_phones` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `external_service` (`external_service`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__delivery_service`
--

LOCK TABLES `stats__delivery_service` WRITE;
/*!40000 ALTER TABLE `stats__delivery_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__delivery_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__employee`
--

DROP TABLE IF EXISTS `stats__employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__employee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `avatar_file_extension` varchar(255) NOT NULL DEFAULT '',
  `avatar_file_name` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `is_corporate` tinyint unsigned NOT NULL DEFAULT '0',
  `last_activity_ip_addr` varchar(39) NOT NULL DEFAULT '',
  `last_activity_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_logon_ip_addr` varchar(39) NOT NULL DEFAULT '',
  `last_logon_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `password_hash` char(32) NOT NULL DEFAULT '',
  `password_salt` char(32) NOT NULL DEFAULT '',
  `phone` varchar(25) NOT NULL DEFAULT '',
  `post` varchar(255) NOT NULL DEFAULT '',
  `prev_logon_ip_addr` varchar(39) NOT NULL DEFAULT '',
  `prev_logon_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role_administrator_status` varchar(25) NOT NULL DEFAULT '',
  `role_checker_status` varchar(25) NOT NULL DEFAULT '',
  `role_courier_status` varchar(25) NOT NULL DEFAULT '',
  `role_programmer_status` varchar(25) NOT NULL DEFAULT '',
  `selected_store_id` int unsigned NOT NULL DEFAULT '0',
  `state` enum('','active','blocked') NOT NULL DEFAULT '',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `store_timestamp_deselect` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `store_timestamp_select` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `uuid` (`uuid`) USING BTREE,
  UNIQUE KEY `hash` (`hash`),
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `login` (`login`) USING BTREE,
  KEY `store_id` (`store_id`),
  KEY `selected_store_id` (`selected_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3399 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__employee`
--

LOCK TABLES `stats__employee` WRITE;
/*!40000 ALTER TABLE `stats__employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__item`
--

DROP TABLE IF EXISTS `stats__item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__item` (
  `id` int unsigned NOT NULL,
  `age_limit` tinyint unsigned NOT NULL DEFAULT '0',
  `article` varchar(255) NOT NULL DEFAULT '',
  `barcode` varchar(255) NOT NULL DEFAULT '',
  `barcodes` text NOT NULL,
  `catalog_id` int unsigned NOT NULL DEFAULT '0',
  `category_external_id` varchar(255) NOT NULL DEFAULT '',
  `category_id` int unsigned NOT NULL DEFAULT '0',
  `category_path` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `country_of_origin` varchar(255) NOT NULL DEFAULT '',
  `country_of_origin_en` varchar(255) NOT NULL DEFAULT '',
  `currency_id` smallint unsigned NOT NULL DEFAULT '0',
  `external_code` varchar(255) NOT NULL DEFAULT '',
  `external_id` varchar(255) NOT NULL DEFAULT '',
  `extra_code_type` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_is_excise` tinyint unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `is_preset` tinyint unsigned NOT NULL DEFAULT '0',
  `is_weight` tinyint unsigned NOT NULL DEFAULT '0',
  `markup_percent` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_en` varchar(255) NOT NULL DEFAULT '',
  `origin_language` char(2) NOT NULL DEFAULT '',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `photo_file_extension` varchar(255) NOT NULL DEFAULT '',
  `photo_file_name` varchar(255) NOT NULL DEFAULT '',
  `photo_file_server_id` tinyint unsigned NOT NULL DEFAULT '0',
  `position_weight` smallint unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `public_category_external_id` varchar(255) NOT NULL DEFAULT '',
  `public_category_id` int unsigned NOT NULL DEFAULT '0',
  `public_category_path` varchar(255) NOT NULL DEFAULT '',
  `quantity` double(16,8) NOT NULL DEFAULT '0.00000000',
  `quantity_calculated` double(16,8) NOT NULL DEFAULT '0.00000000',
  `quantum` smallint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_en` longtext NOT NULL,
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(25) NOT NULL DEFAULT '',
  `unit_dimension` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `unit_id` int unsigned NOT NULL DEFAULT '0',
  `vat_in_price` varchar(25) NOT NULL DEFAULT '',
  `vat_mode` tinyint unsigned NOT NULL DEFAULT '0',
  `vat_rate` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `vendor` varchar(255) NOT NULL DEFAULT '',
  `vendor_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `barcode` (`barcode`),
  KEY `category_id` (`category_id`),
  KEY `store_id` (`store_id`) USING BTREE,
  KEY `external_code` (`external_code`),
  KEY `external_id` (`external_id`),
  KEY `name` (`name`),
  KEY `catalog_id` (`catalog_id`),
  KEY `category_path` (`category_path`),
  KEY `public_category_id` (`public_category_id`),
  KEY `public_category_path` (`public_category_path`),
  KEY `company_id` (`company_id`),
  KEY `parent_id` (`parent_id`),
  KEY `is_archive` (`is_archive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__item`
--

LOCK TABLES `stats__item` WRITE;
/*!40000 ALTER TABLE `stats__item` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__item_barcode`
--

DROP TABLE IF EXISTS `stats__item_barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__item_barcode` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) NOT NULL DEFAULT '',
  `catalog_id` int unsigned NOT NULL DEFAULT '0',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `item_id` int unsigned NOT NULL DEFAULT '0',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `barcode` (`barcode`) USING BTREE,
  KEY `item_id` (`item_id`) USING BTREE,
  KEY `store_id` (`store_id`) USING BTREE,
  KEY `catalog_id` (`catalog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2765473 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__item_barcode`
--

LOCK TABLES `stats__item_barcode` WRITE;
/*!40000 ALTER TABLE `stats__item_barcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__item_barcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__item_barcode_error`
--

DROP TABLE IF EXISTS `stats__item_barcode_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__item_barcode_error` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) NOT NULL DEFAULT '',
  `catalog_id` int unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `barcode` (`barcode`),
  KEY `catalog_id` (`catalog_id`),
  KEY `company_id` (`company_id`),
  KEY `date` (`date`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110568 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__item_barcode_error`
--

LOCK TABLES `stats__item_barcode_error` WRITE;
/*!40000 ALTER TABLE `stats__item_barcode_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__item_barcode_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__item_price`
--

DROP TABLE IF EXISTS `stats__item_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__item_price` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `catalog_id` int unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `currency_id` smallint unsigned NOT NULL DEFAULT '0',
  `external_id` varchar(255) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `item_external_id` varchar(255) NOT NULL DEFAULT '',
  `item_id` int unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price_loyalty` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `quantity` double(16,8) NOT NULL DEFAULT '0.00000000',
  `quantity_calculated` double(16,8) NOT NULL DEFAULT '0.00000000',
  `store_external_id` varchar(255) NOT NULL DEFAULT '',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unit_dimension` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `unit_id` int unsigned NOT NULL DEFAULT '0',
  `vat_in_price` varchar(25) NOT NULL DEFAULT '',
  `vat_rate` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `company_id` (`company_id`),
  KEY `item_id` (`item_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5508741 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__item_price`
--

LOCK TABLES `stats__item_price` WRITE;
/*!40000 ALTER TABLE `stats__item_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__item_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__order_delivery`
--

DROP TABLE IF EXISTS `stats__order_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__order_delivery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `address_apartment` varchar(255) NOT NULL DEFAULT '',
  `address_entrance` varchar(255) NOT NULL DEFAULT '',
  `address_floor` varchar(255) NOT NULL DEFAULT '',
  `calculation_status` tinyint unsigned NOT NULL DEFAULT '0',
  `calculation_type` tinyint unsigned NOT NULL DEFAULT '0',
  `coords_lat` double(9,6) NOT NULL DEFAULT '0.000000',
  `coords_lng` double(9,6) NOT NULL DEFAULT '0.000000',
  `courier_coords_lat` double(9,6) NOT NULL DEFAULT '0.000000',
  `courier_coords_lng` double(9,6) NOT NULL DEFAULT '0.000000',
  `courier_name` varchar(255) NOT NULL DEFAULT '',
  `courier_phone` varchar(25) NOT NULL DEFAULT '',
  `delivery_service_id` int unsigned NOT NULL DEFAULT '0',
  `external_id` varchar(255) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price_to_pay` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `product_external_id` varchar(255) NOT NULL DEFAULT '',
  `product_external_name` varchar(255) NOT NULL DEFAULT '',
  `product_external_slug` varchar(255) NOT NULL DEFAULT '',
  `progress_status` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `time_left` smallint unsigned NOT NULL DEFAULT '0',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `delivery_service_id` (`delivery_service_id`),
  KEY `order_id` (`order_id`),
  KEY `uuid` (`uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2988 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__order_delivery`
--

LOCK TABLES `stats__order_delivery` WRITE;
/*!40000 ALTER TABLE `stats__order_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__order_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__order_discount`
--

DROP TABLE IF EXISTS `stats__order_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__order_discount` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `amount_rate` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_id` int unsigned NOT NULL DEFAULT '0',
  `discount_set_id` int unsigned NOT NULL DEFAULT '0',
  `item_id` int unsigned NOT NULL DEFAULT '0',
  `item_price_id` int unsigned NOT NULL DEFAULT '0',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `order_item_id` int unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promo_code_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `type` (`type`),
  KEY `promo_code_id` (`promo_code_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1272454 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__order_discount`
--

LOCK TABLES `stats__order_discount` WRITE;
/*!40000 ALTER TABLE `stats__order_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__order_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__order_merchant_amount`
--

DROP TABLE IF EXISTS `stats__order_merchant_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__order_merchant_amount` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `amount_rate` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `item_id` varchar(255) NOT NULL DEFAULT '',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `merchant_external_id` varchar(255) NOT NULL DEFAULT '',
  `merchant_inn` varchar(12) NOT NULL DEFAULT '',
  `merchant_object_alias` varchar(255) NOT NULL DEFAULT '',
  `merchant_object_id` int unsigned NOT NULL DEFAULT '0',
  `merchant_party_id` int unsigned NOT NULL DEFAULT '0',
  `merchant_type` tinyint unsigned NOT NULL DEFAULT '0',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `payout_commission` double(10,4) unsigned NOT NULL DEFAULT '0.0000',
  `payout_commission_rate` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `payout_date` date NOT NULL DEFAULT '0000-00-00',
  `payout_external_id` varchar(255) NOT NULL DEFAULT '',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transaction_external_id` varchar(255) NOT NULL DEFAULT '',
  `vat_rate` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `merchant_type` (`merchant_type`),
  KEY `order_id` (`order_id`),
  KEY `merchant_party_id` (`merchant_party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3997957 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__order_merchant_amount`
--

LOCK TABLES `stats__order_merchant_amount` WRITE;
/*!40000 ALTER TABLE `stats__order_merchant_amount` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__order_merchant_amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__order_part`
--

DROP TABLE IF EXISTS `stats__order_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__order_part` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `card_id` int unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `currency_code` varchar(3) NOT NULL DEFAULT '',
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `customer_inn` varchar(255) NOT NULL DEFAULT '',
  `delivery_is_self` tinyint unsigned NOT NULL DEFAULT '0',
  `delivery_progress_status` tinyint unsigned NOT NULL DEFAULT '0',
  `export_status` tinyint unsigned NOT NULL DEFAULT '0',
  `external_id` varchar(255) NOT NULL DEFAULT '',
  `employee_id` int unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `ordering_type` smallint unsigned NOT NULL DEFAULT '0',
  `ordering_type_module_used` tinyint unsigned NOT NULL DEFAULT '0',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `parent_uuid` varchar(36) NOT NULL DEFAULT '',
  `payment_method` tinyint unsigned NOT NULL DEFAULT '0',
  `payment_service` tinyint unsigned NOT NULL DEFAULT '0',
  `prepaid_amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `ready_status` varchar(25) NOT NULL DEFAULT '',
  `receipt_error_notif_status` varchar(25) NOT NULL DEFAULT '',
  `receipt_id` varchar(255) NOT NULL DEFAULT '',
  `receipt_link` varchar(255) NOT NULL DEFAULT '',
  `receipt_status` varchar(25) NOT NULL DEFAULT '',
  `source` varchar(25) NOT NULL DEFAULT '',
  `status` varchar(25) NOT NULL DEFAULT '',
  `status_by_guard` varchar(25) NOT NULL DEFAULT '',
  `status_refund` varchar(25) NOT NULL DEFAULT '',
  `store_column_id` int unsigned NOT NULL DEFAULT '0',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `store_nozzle_id` int unsigned NOT NULL DEFAULT '0',
  `store_row` varchar(5) NOT NULL DEFAULT '',
  `store_seat` varchar(5) NOT NULL DEFAULT '',
  `store_table_id` int unsigned NOT NULL DEFAULT '0',
  `store_zone_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_payment` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_refund` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `total_amount_markup` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `total_base_amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `total_count` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `receipt_status` (`receipt_status`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `customer_id` (`customer_id`),
  KEY `parent_id` (`parent_id`),
  KEY `store_id` (`store_id`),
  KEY `external_id` (`external_id`),
  KEY `guard_id` (`employee_id`),
  KEY `payment_method` (`payment_method`),
  KEY `payment_service` (`payment_service`),
  KEY `timestamp_inserting` (`timestamp_inserting`),
  KEY `receipt_id` (`receipt_id`),
  KEY `timestamp_payment` (`timestamp_payment`),
  KEY `company_id` (`company_id`),
  KEY `is_archive` (`is_archive`),
  KEY `export_orders` (`export_status`,`status`),
  KEY `create_receipts` (`status`,`receipt_status`,`receipt_error_notif_status`),
  KEY `generate_act` (`company_id`,`status`,`timestamp_payment`,`timestamp_refund`)
) ENGINE=InnoDB AUTO_INCREMENT=1707736 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__order_part`
--

LOCK TABLES `stats__order_part` WRITE;
/*!40000 ALTER TABLE `stats__order_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__order_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__order_part_item`
--

DROP TABLE IF EXISTS `stats__order_part_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__order_part_item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `amount_markup` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `barcodes` text NOT NULL,
  `base_amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `base_price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `count` int unsigned NOT NULL DEFAULT '0',
  `currency_id` smallint unsigned NOT NULL DEFAULT '0',
  `discount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_external_description` varchar(255) NOT NULL DEFAULT '',
  `discount_external_id` varchar(255) NOT NULL DEFAULT '',
  `discount_id` int unsigned NOT NULL DEFAULT '0',
  `discount_in_price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_rate` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `item_barcode` varchar(255) NOT NULL DEFAULT '',
  `item_external_id` varchar(255) NOT NULL DEFAULT '',
  `item_extra_code` varchar(255) NOT NULL DEFAULT '',
  `item_extra_code_type` tinyint unsigned NOT NULL DEFAULT '0',
  `item_id` int unsigned NOT NULL DEFAULT '0',
  `item_price_id` int unsigned NOT NULL DEFAULT '0',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price_markup` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `quantity_coeff` double(12,6) unsigned NOT NULL DEFAULT '0.000000',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_scan` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(25) NOT NULL DEFAULT '',
  `volume` int unsigned NOT NULL DEFAULT '0',
  `weight` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `item_id` (`item_id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `timestamp_last_scan` (`timestamp_last_scan`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1936530 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__order_part_item`
--

LOCK TABLES `stats__order_part_item` WRITE;
/*!40000 ALTER TABLE `stats__order_part_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__order_part_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__party`
--

DROP TABLE IF EXISTS `stats__party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__party` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `activation_status` tinyint unsigned NOT NULL DEFAULT '0',
  `actual_address` varchar(255) NOT NULL DEFAULT '',
  `actuality_date` date NOT NULL DEFAULT '0000-00-00',
  `address` varchar(255) NOT NULL DEFAULT '',
  `bank_name_full` varchar(255) NOT NULL DEFAULT '',
  `bank_name_payment` varchar(255) NOT NULL DEFAULT '',
  `bank_name_short` varchar(255) NOT NULL DEFAULT '',
  `capital` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `emails` text NOT NULL,
  `founders` text NOT NULL,
  `fts_name` varchar(255) NOT NULL DEFAULT '',
  `inn` varchar(12) NOT NULL DEFAULT '',
  `is_for_partner` tinyint unsigned NOT NULL DEFAULT '0',
  `is_for_seller` tinyint unsigned NOT NULL DEFAULT '0',
  `kpp` varchar(9) NOT NULL DEFAULT '',
  `liquidation_date` date NOT NULL DEFAULT '0000-00-00',
  `manager_name` varchar(255) NOT NULL DEFAULT '',
  `manager_post` varchar(255) NOT NULL DEFAULT '',
  `name_full` varchar(255) NOT NULL DEFAULT '',
  `name_full_with_opf` varchar(255) NOT NULL DEFAULT '',
  `name_latin` varchar(255) NOT NULL DEFAULT '',
  `name_short` varchar(255) NOT NULL DEFAULT '',
  `name_short_with_opf` varchar(255) NOT NULL DEFAULT '',
  `non_secure3d` varchar(10) NOT NULL DEFAULT '',
  `ogrn` varchar(15) NOT NULL DEFAULT '',
  `ogrn_date` date NOT NULL DEFAULT '0000-00-00',
  `okopf_code` varchar(255) NOT NULL DEFAULT '',
  `okopf_name_full` varchar(255) NOT NULL DEFAULT '',
  `okopf_name_short` varchar(255) NOT NULL DEFAULT '',
  `okopf_version` varchar(255) NOT NULL DEFAULT '',
  `okved_code` varchar(255) NOT NULL DEFAULT '',
  `okved_name` varchar(255) NOT NULL DEFAULT '',
  `okved_version` varchar(255) NOT NULL DEFAULT '',
  `phones` varchar(255) NOT NULL DEFAULT '',
  `postal_box` varchar(255) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `registration_date` date NOT NULL DEFAULT '0000-00-00',
  `registration_number` varchar(255) NOT NULL DEFAULT '',
  `secure3d` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(25) NOT NULL DEFAULT '',
  `swift_bic` varchar(11) NOT NULL DEFAULT '',
  `taxation_system` varchar(25) NOT NULL DEFAULT '',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(25) NOT NULL DEFAULT '',
  `type_data` varchar(25) NOT NULL DEFAULT '',
  `update_party_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`) USING BTREE,
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1329 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__party`
--

LOCK TABLES `stats__party` WRITE;
/*!40000 ALTER TABLE `stats__party` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__promo_code`
--

DROP TABLE IF EXISTS `stats__promo_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__promo_code` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `amount_for_child` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `code` varchar(255) NOT NULL DEFAULT '',
  `code_used` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `max_total_amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_total_amount_for_child` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `min_order_total_amount` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `percent` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `percent_for_child` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `promo_code_campaign_id` int unsigned NOT NULL DEFAULT '0',
  `purchase_number` smallint unsigned NOT NULL DEFAULT '0',
  `purchase_number_mode` tinyint unsigned NOT NULL DEFAULT '0',
  `source_company_id` int unsigned NOT NULL DEFAULT '0',
  `special_error_message` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `store_id` int unsigned NOT NULL DEFAULT '0',
  `stores_types` varchar(255) NOT NULL DEFAULT '',
  `timestamp_beginning` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_ending` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `used_max_quantity` int unsigned NOT NULL DEFAULT '0',
  `used_max_quantity_by_customer` int unsigned NOT NULL DEFAULT '0',
  `used_quantity` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `company_id` (`company_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_id` (`order_id`),
  KEY `parent_id` (`parent_id`),
  KEY `store_id` (`store_id`),
  KEY `type` (`type`),
  KEY `promo_code_campaign_id` (`promo_code_campaign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64552 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__promo_code`
--

LOCK TABLES `stats__promo_code` WRITE;
/*!40000 ALTER TABLE `stats__promo_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__promo_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats__store`
--

DROP TABLE IF EXISTS `stats__store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats__store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `address_en` text NOT NULL,
  `address_floor` varchar(255) NOT NULL DEFAULT '',
  `big_logo_file_extension` varchar(255) NOT NULL DEFAULT '',
  `big_logo_file_name` varchar(255) NOT NULL DEFAULT '',
  `brief_description` text NOT NULL,
  `brief_description_en` text NOT NULL,
  `catalog_id` int unsigned NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL DEFAULT '',
  `company_brand_id` int unsigned NOT NULL DEFAULT '0',
  `company_group` tinyint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `coords_lat` double(9,6) NOT NULL DEFAULT '0.000000',
  `coords_lng` double(9,6) NOT NULL DEFAULT '0.000000',
  `devices_channel_key` varchar(255) NOT NULL DEFAULT '',
  `discount_set_id` int unsigned NOT NULL DEFAULT '0',
  `extended_type` varchar(25) NOT NULL DEFAULT '',
  `external_id` varchar(255) NOT NULL DEFAULT '',
  `external_service` varchar(255) NOT NULL DEFAULT '',
  `flag_close_lock_after_pay` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_is_custom_amount_available` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_is_test` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_only_customer_with_card` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_receipts_is_disabled` tinyint unsigned NOT NULL DEFAULT '0',
  `flag_send_orders_to_exchange` tinyint unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `import_status` tinyint unsigned NOT NULL DEFAULT '0',
  `is_archive` tinyint unsigned NOT NULL DEFAULT '0',
  `is_available_on_market` tinyint unsigned NOT NULL DEFAULT '0',
  `is_closed_area` tinyint unsigned NOT NULL DEFAULT '0',
  `is_commodity_accounting_enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `is_delivery_external_enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `is_delivery_internal_enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `is_moderated` tinyint unsigned NOT NULL DEFAULT '0',
  `is_pickup_enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `is_select_only_via_qr_code_scan` tinyint unsigned NOT NULL DEFAULT '0',
  `is_show_catalog` tinyint unsigned NOT NULL DEFAULT '0',
  `little_logo_file_extension` varchar(255) NOT NULL DEFAULT '',
  `little_logo_file_name` varchar(255) NOT NULL DEFAULT '',
  `logo_file_extension` varchar(255) NOT NULL DEFAULT '',
  `logo_file_name` varchar(255) NOT NULL DEFAULT '',
  `max_customers` smallint unsigned NOT NULL DEFAULT '0',
  `min_distance_to_open` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_en` varchar(255) NOT NULL DEFAULT '',
  `name_original` varchar(255) NOT NULL DEFAULT '',
  `origin_language` char(2) NOT NULL DEFAULT '',
  `partner_party_id` int unsigned NOT NULL DEFAULT '0',
  `party_id` int unsigned NOT NULL DEFAULT '0',
  `phones` text NOT NULL,
  `photo_file_extension` varchar(255) NOT NULL DEFAULT '',
  `photo_file_name` varchar(255) NOT NULL DEFAULT '',
  `planogram_id` int unsigned NOT NULL DEFAULT '0',
  `procedure_name` varchar(32) NOT NULL DEFAULT '',
  `schedule` text NOT NULL,
  `schedule_en` text NOT NULL,
  `schedule_set_id` int unsigned NOT NULL DEFAULT '0',
  `serial_number` varchar(255) NOT NULL DEFAULT '',
  `solution_name` varchar(32) NOT NULL DEFAULT '',
  `state_customers` smallint NOT NULL DEFAULT '0',
  `state_door` varchar(25) NOT NULL DEFAULT '',
  `state_lock` varchar(25) NOT NULL DEFAULT '',
  `status` varchar(25) NOT NULL DEFAULT '',
  `store_group_id` int unsigned NOT NULL DEFAULT '0',
  `store_location_id` int unsigned DEFAULT NULL,
  `text` longtext NOT NULL,
  `text_en` longtext NOT NULL,
  `timestamp_inserting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp_last_updating` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timezone_name` varchar(255) NOT NULL DEFAULT '',
  `timezone_offset` int NOT NULL DEFAULT '0',
  `type` varchar(25) NOT NULL DEFAULT '',
  `type_can_change` tinyint unsigned NOT NULL DEFAULT '0',
  `use_qr_code_for_enter` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `code` (`code`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `coords_lat` (`coords_lat`) USING BTREE,
  KEY `coords_lng` (`coords_lng`) USING BTREE,
  KEY `devices_channel_key` (`devices_channel_key`) USING BTREE,
  KEY `flag_is_test` (`flag_is_test`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `external_id` (`external_id`),
  KEY `external_service` (`external_service`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11765 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats__store`
--

LOCK TABLES `stats__store` WRITE;
/*!40000 ALTER TABLE `stats__store` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats__store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'statistic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 19:02:31
