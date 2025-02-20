-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: np
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.10.1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `identifier` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL DEFAULT '',
  `name` longtext NOT NULL,
  `balance` bigint NOT NULL DEFAULT '0',
  `transactions` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('BKL51924','61377','maik',0,'[]');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartments`
--

DROP TABLE IF EXISTS `apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartments`
--

LOCK TABLES `apartments` WRITE;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_accounts`
--

DROP TABLE IF EXISTS `bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_accounts` (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(250) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `amount` bigint NOT NULL DEFAULT '0',
  `account_type` enum('Current','Savings','business','Gang') NOT NULL DEFAULT 'Current',
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `citizenid` (`citizenid`),
  KEY `business` (`business`),
  KEY `businessid` (`businessid`),
  KEY `gangid` (`gangid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_accounts`
--

LOCK TABLES `bank_accounts` WRITE;
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_cards`
--

DROP TABLE IF EXISTS `bank_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_cards` (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cardNumber` varchar(50) DEFAULT NULL,
  `cardPin` varchar(50) DEFAULT NULL,
  `cardActive` tinyint DEFAULT '1',
  `cardLocked` tinyint DEFAULT '0',
  `cardType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`citizenid`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_cards`
--

LOCK TABLES `bank_cards` WRITE;
/*!40000 ALTER TABLE `bank_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_statements`
--

DROP TABLE IF EXISTS `bank_statements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_statements` (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `deposited` int DEFAULT NULL,
  `withdraw` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `business` (`business`),
  KEY `businessid` (`businessid`),
  KEY `gangid` (`gangid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_statements`
--

LOCK TABLES `bank_statements` WRITE;
/*!40000 ALTER TABLE `bank_statements` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_statements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text,
  `expire` int DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boombox`
--

DROP TABLE IF EXISTS `boombox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boombox` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` varchar(46) DEFAULT NULL,
  `songname` varchar(500) NOT NULL,
  `author` varchar(500) NOT NULL,
  `imageurl` text NOT NULL,
  `songurl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boombox`
--

LOCK TABLES `boombox` WRITE;
/*!40000 ALTER TABLE `boombox` DISABLE KEYS */;
/*!40000 ALTER TABLE `boombox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cameras`
--

DROP TABLE IF EXISTS `cameras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cameras` (
  `cid` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cameradata` longtext COLLATE utf8mb4_general_ci,
  `camID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cameras`
--

LOCK TABLES `cameras` WRITE;
/*!40000 ALTER TABLE `cameras` DISABLE KEYS */;
/*!40000 ALTER TABLE `cameras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carmileages`
--

DROP TABLE IF EXISTS `carmileages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carmileages` (
  `plate` text,
  `mileage` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carmileages`
--

LOCK TABLES `carmileages` WRITE;
/*!40000 ALTER TABLE `carmileages` DISABLE KEYS */;
/*!40000 ALTER TABLE `carmileages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codem-hud-data`
--

DROP TABLE IF EXISTS `codem-hud-data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codem-hud-data` (
  `identifier` varchar(65) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_general_ci,
  `stress` int DEFAULT NULL,
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codem-hud-data`
--

LOCK TABLES `codem-hud-data` WRITE;
/*!40000 ALTER TABLE `codem-hud-data` DISABLE KEYS */;
/*!40000 ALTER TABLE `codem-hud-data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_skills`
--

DROP TABLE IF EXISTS `core_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `skill_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `value1` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value2` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value3` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_skills`
--

LOCK TABLES `core_skills` WRITE;
/*!40000 ALTER TABLE `core_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crypto`
--

DROP TABLE IF EXISTS `crypto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int NOT NULL DEFAULT '0',
  `history` text,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto`
--

LOCK TABLES `crypto` WRITE;
/*!40000 ALTER TABLE `crypto` DISABLE KEYS */;
INSERT INTO `crypto` VALUES ('qbit',1003,'[{\"NewWorth\":997,\"PreviousWorth\":1004},{\"NewWorth\":997,\"PreviousWorth\":1004},{\"NewWorth\":997,\"PreviousWorth\":1004},{\"NewWorth\":1003,\"PreviousWorth\":997}]');
/*!40000 ALTER TABLE `crypto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crypto_transactions`
--

DROP TABLE IF EXISTS `crypto_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crypto_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto_transactions`
--

LOCK TABLES `crypto_transactions` WRITE;
/*!40000 ALTER TABLE `crypto_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `crypto_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debux_recentpost`
--

DROP TABLE IF EXISTS `debux_recentpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debux_recentpost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text` varchar(500) COLLATE utf8mb4_general_ci DEFAULT 'DEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUXDEBUX DEBUX',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debux_recentpost`
--

LOCK TABLES `debux_recentpost` WRITE;
/*!40000 ALTER TABLE `debux_recentpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `debux_recentpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_blipcreator`
--

DROP TABLE IF EXISTS `ds_blipcreator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ds_blipcreator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_blipcreator`
--

LOCK TABLES `ds_blipcreator` WRITE;
/*!40000 ALTER TABLE `ds_blipcreator` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_blipcreator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_stations`
--

DROP TABLE IF EXISTS `fuel_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuel_stations` (
  `location` int NOT NULL,
  `owned` int DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `fuel` int DEFAULT NULL,
  `fuelprice` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_stations`
--

LOCK TABLES `fuel_stations` WRITE;
/*!40000 ALTER TABLE `fuel_stations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuel_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gammy_scrapyard`
--

DROP TABLE IF EXISTS `gammy_scrapyard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gammy_scrapyard` (
  `id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cooldown` bigint DEFAULT NULL,
  `timestamp` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gammy_scrapyard`
--

LOCK TABLES `gammy_scrapyard` WRITE;
/*!40000 ALTER TABLE `gammy_scrapyard` DISABLE KEYS */;
INSERT INTO `gammy_scrapyard` VALUES ('BKL51924',10,1739918917);
/*!40000 ALTER TABLE `gammy_scrapyard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gloveboxitems`
--

DROP TABLE IF EXISTS `gloveboxitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gloveboxitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gloveboxitems`
--

LOCK TABLES `gloveboxitems` WRITE;
/*!40000 ALTER TABLE `gloveboxitems` DISABLE KEYS */;
INSERT INTO `gloveboxitems` VALUES (1,'0YN028PH','[]');
/*!40000 ALTER TABLE `gloveboxitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_plants`
--

DROP TABLE IF EXISTS `house_plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_plants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int DEFAULT '100',
  `health` int DEFAULT '100',
  `progress` int DEFAULT '0',
  `coords` text,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_plants`
--

LOCK TABLES `house_plants` WRITE;
/*!40000 ALTER TABLE `house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houselocations`
--

DROP TABLE IF EXISTS `houselocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `houselocations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `tier` tinyint DEFAULT NULL,
  `garage` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houselocations`
--

LOCK TABLES `houselocations` WRITE;
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lapraces`
--

DROP TABLE IF EXISTS `lapraces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lapraces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text,
  `records` text,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapraces`
--

LOCK TABLES `lapraces` WRITE;
/*!40000 ALTER TABLE `lapraces` DISABLE KEYS */;
/*!40000 ALTER TABLE `lapraces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_funds`
--

DROP TABLE IF EXISTS `management_funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_funds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `amount` int NOT NULL,
  `type` enum('boss','gang') NOT NULL DEFAULT 'boss',
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`job_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_funds`
--

LOCK TABLES `management_funds` WRITE;
/*!40000 ALTER TABLE `management_funds` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_funds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace`
--

DROP TABLE IF EXISTS `marketplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `normal` longtext,
  `auction` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace`
--

LOCK TABLES `marketplace` WRITE;
/*!40000 ALTER TABLE `marketplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_sellers`
--

DROP TABLE IF EXISTS `marketplace_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `totalsold` int NOT NULL DEFAULT '0',
  `earnings` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_sellers`
--

LOCK TABLES `marketplace_sellers` WRITE;
/*!40000 ALTER TABLE `marketplace_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_bolos`
--

DROP TABLE IF EXISTS `mdt_bolos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_bolos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plate` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `individual` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_general_ci,
  `tags` text COLLATE utf8mb4_general_ci,
  `gallery` text COLLATE utf8mb4_general_ci,
  `officersinvolved` text COLLATE utf8mb4_general_ci,
  `time` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jobtype` varchar(25) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_bolos`
--

LOCK TABLES `mdt_bolos` WRITE;
/*!40000 ALTER TABLE `mdt_bolos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_bolos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_bulletin`
--

DROP TABLE IF EXISTS `mdt_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_bulletin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_general_ci NOT NULL,
  `desc` text COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `jobtype` varchar(25) COLLATE utf8mb4_general_ci DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_bulletin`
--

LOCK TABLES `mdt_bulletin` WRITE;
/*!40000 ALTER TABLE `mdt_bulletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_clocking`
--

DROP TABLE IF EXISTS `mdt_clocking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_clocking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `firstname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `clock_in_time` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `clock_out_time` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_time` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_clocking`
--

LOCK TABLES `mdt_clocking` WRITE;
/*!40000 ALTER TABLE `mdt_clocking` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_clocking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_convictions`
--

DROP TABLE IF EXISTS `mdt_convictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_convictions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedincident` int NOT NULL DEFAULT '0',
  `warrant` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `guilty` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `processed` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `associated` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '0',
  `charges` text COLLATE utf8mb4_general_ci,
  `fine` int DEFAULT '0',
  `sentence` int DEFAULT '0',
  `recfine` int DEFAULT '0',
  `recsentence` int DEFAULT '0',
  `time` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_convictions`
--

LOCK TABLES `mdt_convictions` WRITE;
/*!40000 ALTER TABLE `mdt_convictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_convictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_data`
--

DROP TABLE IF EXISTS `mdt_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `information` mediumtext COLLATE utf8mb4_general_ci,
  `tags` text COLLATE utf8mb4_general_ci NOT NULL,
  `gallery` text COLLATE utf8mb4_general_ci NOT NULL,
  `jobtype` varchar(25) COLLATE utf8mb4_general_ci DEFAULT 'police',
  `pfp` text COLLATE utf8mb4_general_ci,
  `fingerprint` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_data`
--

LOCK TABLES `mdt_data` WRITE;
/*!40000 ALTER TABLE `mdt_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_impound`
--

DROP TABLE IF EXISTS `mdt_impound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_impound` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicleid` int NOT NULL,
  `linkedreport` int NOT NULL,
  `fee` int DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_impound`
--

LOCK TABLES `mdt_impound` WRITE;
/*!40000 ALTER TABLE `mdt_impound` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_impound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_incidents`
--

DROP TABLE IF EXISTS `mdt_incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_incidents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_general_ci NOT NULL,
  `tags` text COLLATE utf8mb4_general_ci NOT NULL,
  `officersinvolved` text COLLATE utf8mb4_general_ci NOT NULL,
  `civsinvolved` text COLLATE utf8mb4_general_ci NOT NULL,
  `evidence` text COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jobtype` varchar(25) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_incidents`
--

LOCK TABLES `mdt_incidents` WRITE;
/*!40000 ALTER TABLE `mdt_incidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_logs`
--

DROP TABLE IF EXISTS `mdt_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jobtype` varchar(25) COLLATE utf8mb4_general_ci DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_logs`
--

LOCK TABLES `mdt_logs` WRITE;
/*!40000 ALTER TABLE `mdt_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_reports`
--

DROP TABLE IF EXISTS `mdt_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_general_ci,
  `tags` text COLLATE utf8mb4_general_ci,
  `officersinvolved` text COLLATE utf8mb4_general_ci,
  `civsinvolved` text COLLATE utf8mb4_general_ci,
  `gallery` text COLLATE utf8mb4_general_ci,
  `time` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jobtype` varchar(25) COLLATE utf8mb4_general_ci DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_reports`
--

LOCK TABLES `mdt_reports` WRITE;
/*!40000 ALTER TABLE `mdt_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_vehicleinfo`
--

DROP TABLE IF EXISTS `mdt_vehicleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_vehicleinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_general_ci NOT NULL,
  `stolen` tinyint(1) NOT NULL DEFAULT '0',
  `code5` tinyint(1) NOT NULL DEFAULT '0',
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  `points` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_vehicleinfo`
--

LOCK TABLES `mdt_vehicleinfo` WRITE;
/*!40000 ALTER TABLE `mdt_vehicleinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_vehicleinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdt_weaponinfo`
--

DROP TABLE IF EXISTS `mdt_weaponinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdt_weaponinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serial` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_general_ci NOT NULL,
  `weapClass` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weapModel` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdt_weaponinfo`
--

LOCK TABLES `mdt_weaponinfo` WRITE;
/*!40000 ALTER TABLE `mdt_weaponinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_weaponinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occasion_vehicles`
--

DROP TABLE IF EXISTS `occasion_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occasion_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` longtext,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occasion_vehicles`
--

LOCK TABLES `occasion_vehicles` WRITE;
/*!40000 ALTER TABLE `occasion_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `occasion_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `okokBanking_societies`
--

DROP TABLE IF EXISTS `okokBanking_societies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `okokBanking_societies` (
  `society` varchar(255) DEFAULT NULL,
  `society_name` varchar(255) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `iban` varchar(255) NOT NULL,
  `is_withdrawing` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `okokBanking_societies`
--

LOCK TABLES `okokBanking_societies` WRITE;
/*!40000 ALTER TABLE `okokBanking_societies` DISABLE KEYS */;
/*!40000 ALTER TABLE `okokBanking_societies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `okokBanking_transactions`
--

DROP TABLE IF EXISTS `okokBanking_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `okokBanking_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `receiver_identifier` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `sender_identifier` varchar(255) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `value` int NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `okokBanking_transactions`
--

LOCK TABLES `okokBanking_transactions` WRITE;
/*!40000 ALTER TABLE `okokBanking_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `okokBanking_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `okokBilling`
--

DROP TABLE IF EXISTS `okokBilling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `okokBilling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `receiver_identifier` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author_identifier` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `society` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `society_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `invoice_value` int NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT ' ',
  `sent_date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `limit_pay_date` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fees_amount` int DEFAULT '0',
  `paid_date` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `okokBilling`
--

LOCK TABLES `okokBilling` WRITE;
/*!40000 ALTER TABLE `okokBilling` DISABLE KEYS */;
/*!40000 ALTER TABLE `okokBilling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `okokReports`
--

DROP TABLE IF EXISTS `okokReports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `okokReports` (
  `admin_identifier` varchar(255) NOT NULL,
  `responded_reports` varchar(255) NOT NULL DEFAULT '1',
  UNIQUE KEY `abc_ndx` (`admin_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `okokReports`
--

LOCK TABLES `okokReports` WRITE;
/*!40000 ALTER TABLE `okokReports` DISABLE KEYS */;
/*!40000 ALTER TABLE `okokReports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pa_billing`
--

DROP TABLE IF EXISTS `pa_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pa_billing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paid` varchar(50) NOT NULL DEFAULT '0',
  `owner` varchar(50) NOT NULL DEFAULT '0',
  `price` int DEFAULT NULL,
  `receiver` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_billing`
--

LOCK TABLES `pa_billing` WRITE;
/*!40000 ALTER TABLE `pa_billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `pa_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pa_vehicleshop_showroom_vehicles`
--

DROP TABLE IF EXISTS `pa_vehicleshop_showroom_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pa_vehicleshop_showroom_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dealershipId` int DEFAULT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_vehicleshop_showroom_vehicles`
--

LOCK TABLES `pa_vehicleshop_showroom_vehicles` WRITE;
/*!40000 ALTER TABLE `pa_vehicleshop_showroom_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `pa_vehicleshop_showroom_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pa_vehicleshop_stocks`
--

DROP TABLE IF EXISTS `pa_vehicleshop_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pa_vehicleshop_stocks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dealershipId` int DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pa_vehicleshop_stocks`
--

LOCK TABLES `pa_vehicleshop_stocks` WRITE;
/*!40000 ALTER TABLE `pa_vehicleshop_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pa_vehicleshop_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_chatroom_messages`
--

DROP TABLE IF EXISTS `phone_chatroom_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_chatroom_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int unsigned DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `member_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `is_pinned` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_chatroom_messages`
--

LOCK TABLES `phone_chatroom_messages` WRITE;
/*!40000 ALTER TABLE `phone_chatroom_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chatroom_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_chatrooms`
--

DROP TABLE IF EXISTS `phone_chatrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_chatrooms` (
  `id` int unsigned NOT NULL,
  `room_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `room_name` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `room_owner_id` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `room_owner_name` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `room_members` text COLLATE utf8mb4_general_ci,
  `room_pin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT '0.00',
  `is_pinned` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_chatrooms`
--

LOCK TABLES `phone_chatrooms` WRITE;
/*!40000 ALTER TABLE `phone_chatrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chatrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_gallery`
--

DROP TABLE IF EXISTS `phone_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_gallery` (
  `citizenid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_gallery`
--

LOCK TABLES `phone_gallery` WRITE;
/*!40000 ALTER TABLE `phone_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_invoices`
--

DROP TABLE IF EXISTS `phone_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `society` tinytext,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  `time` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_invoices`
--

LOCK TABLES `phone_invoices` WRITE;
/*!40000 ALTER TABLE `phone_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text,
  `time` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_messages`
--

LOCK TABLES `phone_messages` WRITE;
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_note`
--

DROP TABLE IF EXISTS `phone_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` text,
  `text` text,
  `lastupdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_note`
--

LOCK TABLES `phone_note` WRITE;
/*!40000 ALTER TABLE `phone_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tweets`
--

DROP TABLE IF EXISTS `phone_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tweets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `message` text,
  `url` text,
  `tweetId` varchar(25) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tweets`
--

LOCK TABLES `phone_tweets` WRITE;
/*!40000 ALTER TABLE `phone_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_contacts`
--

DROP TABLE IF EXISTS `player_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_contacts`
--

LOCK TABLES `player_contacts` WRITE;
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_emotes`
--

DROP TABLE IF EXISTS `player_emotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_emotes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emote_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emote_index` int NOT NULL,
  `emote_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emote_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_emotes`
--

LOCK TABLES `player_emotes` WRITE;
/*!40000 ALTER TABLE `player_emotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_emotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_houses`
--

DROP TABLE IF EXISTS `player_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_houses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text,
  `decorations` text,
  `stash` text,
  `outfit` text,
  `logout` text,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_houses`
--

LOCK TABLES `player_houses` WRITE;
/*!40000 ALTER TABLE `player_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_jobs`
--

DROP TABLE IF EXISTS `player_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jobname` varchar(50) DEFAULT NULL,
  `employees` text,
  `maxEmployee` tinyint DEFAULT '15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_jobs`
--

LOCK TABLES `player_jobs` WRITE;
/*!40000 ALTER TABLE `player_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_mails`
--

DROP TABLE IF EXISTS `player_mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_mails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text,
  `read` tinyint DEFAULT '0',
  `mailid` int DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `button` text,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_mails`
--

LOCK TABLES `player_mails` WRITE;
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_outfits`
--

DROP TABLE IF EXISTS `player_outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_outfits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `outfitname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `skin` text COLLATE utf8mb4_general_ci,
  `outfitId` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_outfits`
--

LOCK TABLES `player_outfits` WRITE;
/*!40000 ALTER TABLE `player_outfits` DISABLE KEYS */;
INSERT INTO `player_outfits` VALUES (1,'IYF48831','Rua','1885233650','{\"blush\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"moles\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"accessory\":{\"defaultItem\":0,\"item\":21,\"defaultTexture\":0,\"texture\":0},\"glass\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"face2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"mask\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"watch\":{\"defaultItem\":-1,\"item\":9,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"pants\":{\"defaultItem\":0,\"item\":53,\"defaultTexture\":0,\"texture\":3},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"facemix\":{\"defaultSkinMix\":0.0,\"skinMix\":0,\"shapeMix\":0,\"defaultShapeMix\":0.0},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"shoes\":{\"defaultItem\":1,\"item\":23,\"defaultTexture\":0,\"texture\":0},\"hair\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"torso2\":{\"defaultItem\":0,\"item\":333,\"defaultTexture\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bag\":{\"defaultItem\":0,\"item\":17,\"defaultTexture\":0,\"texture\":0},\"face\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"ear\":{\"defaultItem\":-1,\"item\":2,\"defaultTexture\":0,\"texture\":1},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eye_color\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"hat\":{\"defaultItem\":-1,\"item\":24,\"defaultTexture\":0,\"texture\":2},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":15,\"defaultTexture\":0,\"texture\":0},\"arms\":{\"defaultItem\":0,\"item\":5,\"defaultTexture\":0,\"texture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0}}','outfit-10-8536'),(2,'IYF48831','Rua','1885233650','{\"blush\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":57,\"defaultTexture\":1,\"texture\":1},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"moles\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"accessory\":{\"defaultItem\":0,\"item\":21,\"defaultTexture\":0,\"texture\":0},\"glass\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"face2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"mask\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"watch\":{\"defaultItem\":-1,\"item\":9,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"pants\":{\"defaultItem\":0,\"item\":53,\"defaultTexture\":0,\"texture\":3},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"facemix\":{\"defaultSkinMix\":0.0,\"skinMix\":0,\"shapeMix\":0,\"defaultShapeMix\":0.0},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"shoes\":{\"defaultItem\":1,\"item\":23,\"defaultTexture\":0,\"texture\":0},\"hair\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"torso2\":{\"defaultItem\":0,\"item\":333,\"defaultTexture\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bag\":{\"defaultItem\":0,\"item\":17,\"defaultTexture\":0,\"texture\":0},\"face\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"ear\":{\"defaultItem\":-1,\"item\":2,\"defaultTexture\":0,\"texture\":1},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eye_color\":{\"defaultItem\":-1,\"item\":3,\"defaultTexture\":0,\"texture\":0},\"hat\":{\"defaultItem\":-1,\"item\":24,\"defaultTexture\":0,\"texture\":2},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":15,\"defaultTexture\":0,\"texture\":0},\"arms\":{\"defaultItem\":0,\"item\":5,\"defaultTexture\":0,\"texture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0}}','outfit-2-5267'),(3,'DCR57149','abu','1885233650','{\"eyebrown_high\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"glass\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_5\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_1\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"torso2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"pants\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eye_color\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"eyebrows\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"face\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_hole\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"neck_thikness\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":1},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"face2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"nose_4\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"hat\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"jaw_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_3\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"mask\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"cheek_3\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"moles\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"nose_0\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"cheek_2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"facemix\":{\"defaultShapeMix\":0.0,\"shapeMix\":0,\"skinMix\":0,\"defaultSkinMix\":0.0},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"hair\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"cheek_1\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"lips_thickness\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"eye_opening\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":1},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"chimp_bone_lenght\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0}}','outfit-3-8932');
/*!40000 ALTER TABLE `player_outfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_vehicles`
--

DROP TABLE IF EXISTS `player_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int DEFAULT '100',
  `engine` float DEFAULT '1000',
  `body` float DEFAULT '1000',
  `state` int DEFAULT '1',
  `depotprice` int NOT NULL DEFAULT '0',
  `drivingdistance` int DEFAULT NULL,
  `status` text,
  `balance` int NOT NULL DEFAULT '0',
  `paymentamount` int NOT NULL DEFAULT '0',
  `paymentsleft` int NOT NULL DEFAULT '0',
  `financetime` int NOT NULL DEFAULT '0',
  `nosColour` text,
  `traveldistance` int DEFAULT '0',
  `noslevel` int DEFAULT '0',
  `hasnitro` tinyint DEFAULT '0',
  `stored` tinyint NOT NULL DEFAULT '0',
  `parking` varchar(60) DEFAULT 'Garage A',
  `favorite` varchar(60) DEFAULT '0',
  `logs` longtext,
  `datefinish` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_vehicles`
--

LOCK TABLES `player_vehicles` WRITE;
/*!40000 ALTER TABLE `player_vehicles` DISABLE KEYS */;
INSERT INTO `player_vehicles` VALUES (1,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','issi6','1239571361','{}','5LF731JS',NULL,'pillboxgarage',100,1000,1000,0,500,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0',NULL,NULL),(2,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','meteoc3','233281104','{\"modKit47\":-1,\"dirtLevel\":6.35462587779425,\"wheels\":3,\"modBackWheels\":-1,\"modFender\":-1,\"modKit17\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTank\":-1,\"modPlateHolder\":-1,\"color1\":82,\"color2\":4,\"modArchCover\":-1,\"modStruts\":-1,\"modSeats\":-1,\"oilLevel\":4.76596940834568,\"xenonColor\":255,\"fuelLevel\":97.70237287108663,\"modSteeringWheel\":-1,\"extras\":[],\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modKit21\":-1,\"modDashboard\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modSpoilers\":-1,\"interiorColor\":0,\"modSpeakers\":-1,\"wheelWidth\":1.0,\"tankHealth\":999.2649192831461,\"plateIndex\":0,\"neonColor\":[255,0,255],\"modWindows\":-1,\"windowTint\":-1,\"modXenon\":false,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"dashboardColor\":27,\"modEngineBlock\":-1,\"modHorns\":-1,\"wheelSize\":1.0,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"modKit49\":-1,\"modLivery\":-1,\"modHood\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"wheelColor\":4,\"modKit19\":-1,\"engineHealth\":989.7329804664547,\"modShifterLeavers\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modCustomTiresF\":false,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modGrille\":-1,\"bodyHealth\":996.0876063442489,\"modRearBumper\":-1,\"modBrakes\":-1,\"modSideSkirt\":-1,\"modCustomTiresR\":false,\"modFrontWheels\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTrimA\":-1,\"modFrame\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"model\":233281104,\"modRoof\":-1,\"modHydrolic\":-1,\"liveryRoof\":-1,\"pearlescentColor\":3,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"plate\":\"6NG564JV\",\"modTrimB\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modTrunk\":-1}','6NG564JV',NULL,'pillboxgarage',98,990,996,0,500,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0','[{\"type\":\"Take Out\",\"time\":\"2025-02-16-23:04\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-16-23:05\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Take Out\",\"time\":\"2025-02-17-14:06\\u0000\",\"garage\":\"Pillbox Garage Parking\"}]',NULL),(4,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','meteoc12','-1414689999','{\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"dirtLevel\":10.32626705141565,\"modSeats\":-1,\"modKit47\":-1,\"modFrame\":-1,\"tankHealth\":1000.0592475178704,\"modTrimB\":-1,\"modLivery\":1,\"color1\":0,\"modXenon\":false,\"modEngine\":-1,\"modArchCover\":-1,\"modKit19\":-1,\"liveryRoof\":-1,\"fuelLevel\":97.70237287108663,\"modKit21\":-1,\"modAerials\":-1,\"model\":-1414689999,\"modSideSkirt\":-1,\"modRoof\":-1,\"modBackWheels\":-1,\"oilLevel\":4.76596940834568,\"modSuspension\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":{\"2\":false,\"1\":false,\"4\":false,\"3\":false,\"5\":false},\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"windowTint\":-1,\"modCustomTiresR\":false,\"wheelSize\":1.0,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":false},\"modSpeakers\":-1,\"modTransmission\":-1,\"xenonColor\":255,\"modHorns\":-1,\"wheels\":0,\"pearlescentColor\":0,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"bodyHealth\":997.6762628136975,\"modStruts\":-1,\"plateIndex\":3,\"modTurbo\":false,\"modDial\":-1,\"modPlateHolder\":-1,\"color2\":112,\"wheelWidth\":1.0,\"modSpoilers\":-1,\"interiorColor\":31,\"modExhaust\":-1,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelColor\":28,\"modArmor\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"modKit17\":-1,\"modOrnaments\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modHood\":-1,\"modTrunk\":-1,\"modSteeringWheel\":-1,\"engineHealth\":997.6762628136975,\"modCustomTiresF\":false,\"modHydrolic\":-1,\"plate\":\"0YN028PH\",\"dashboardColor\":31,\"modBrakes\":-1,\"modKit49\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"modFrontWheels\":-1}','0YN028PH',NULL,'pillboxgarage',98,998,998,1,0,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0','[{\"type\":\"Stored\",\"time\":\"2025-02-17-14:08\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:08\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:08\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Take Out\",\"time\":\"2025-02-17-14:24\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:27\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:27\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:27\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:27\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:27\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:27\\u0000\",\"garage\":\"Pillbox Garage Parking\"}]',NULL),(5,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','meteoc14','-2136132427','{\"modSpoilers\":-1,\"dirtLevel\":8.73761058196709,\"modWindows\":-1,\"bodyHealth\":996.0876063442489,\"modFrame\":-1,\"tankHealth\":999.2649192831461,\"modTrimB\":-1,\"modLivery\":-1,\"modCustomTiresF\":false,\"modXenon\":false,\"modEngine\":-1,\"modArchCover\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"fuelLevel\":98.4967011058109,\"modKit21\":-1,\"modAerials\":-1,\"model\":-2136132427,\"modSideSkirt\":-1,\"modRoof\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":{\"2\":false,\"1\":true},\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"engineHealth\":995.2932781095246,\"modCustomTiresR\":false,\"interiorColor\":0,\"windowTint\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modHorns\":-1,\"wheels\":7,\"pearlescentColor\":111,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"wheelWidth\":0.0,\"modBrakes\":-1,\"xenonColor\":255,\"modKit19\":-1,\"modTurbo\":false,\"modDial\":-1,\"modPlateHolder\":-1,\"color2\":4,\"plateIndex\":0,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"oilLevel\":4.76596940834568,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelColor\":156,\"modArmor\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"modKit17\":-1,\"modOrnaments\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"plate\":\"1AH073LP\",\"modTrunk\":-1,\"wheelSize\":0.0,\"modKit47\":-1,\"color1\":4,\"modHydrolic\":-1,\"modRightFender\":-1,\"dashboardColor\":0,\"modFrontBumper\":-1,\"modStruts\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modFrontWheels\":-1}','1AH073LP',NULL,'pillboxgarage',99,996,997,1,0,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0','[{\"type\":\"Stored\",\"time\":\"2025-02-17-14:45\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:45\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:45\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:45\\u0000\",\"garage\":\"Pillbox Garage Parking\"}]',NULL),(6,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','kanjo','409049982','{\"modSpoilers\":-1,\"dirtLevel\":3.9716411736214,\"modWindows\":-1,\"bodyHealth\":997.6762628136975,\"modFrame\":-1,\"tankHealth\":999.2649192831461,\"modTrimB\":-1,\"modLivery\":-1,\"modCustomTiresF\":false,\"modXenon\":false,\"modEngine\":-1,\"modArchCover\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"fuelLevel\":96.90804463636234,\"modKit21\":-1,\"modAerials\":-1,\"model\":409049982,\"modSideSkirt\":-1,\"modRoof\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":{\"1\":true},\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"engineHealth\":994.4989498748004,\"modCustomTiresR\":false,\"interiorColor\":0,\"windowTint\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modHorns\":-1,\"wheels\":5,\"pearlescentColor\":10,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"wheelWidth\":0.0,\"modBrakes\":-1,\"xenonColor\":255,\"modKit19\":-1,\"modTurbo\":false,\"modDial\":-1,\"modPlateHolder\":-1,\"color2\":1,\"plateIndex\":0,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"oilLevel\":4.76596940834568,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelColor\":156,\"modArmor\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"modKit17\":-1,\"modOrnaments\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"plate\":\"4IP870LA\",\"modTrunk\":-1,\"wheelSize\":0.0,\"modKit47\":-1,\"color1\":1,\"modHydrolic\":-1,\"modRightFender\":-1,\"dashboardColor\":0,\"modFrontBumper\":-1,\"modStruts\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modFrontWheels\":-1}','4IP870LA',NULL,'pillboxgarage',97,995,998,1,0,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0','[{\"type\":\"Stored\",\"time\":\"2025-02-17-14:46\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:46\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:46\\u0000\",\"garage\":\"Pillbox Garage Parking\"}]',NULL),(7,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','kanjosj','-64075878','{}','2AQ847IG',NULL,'pillboxgarage',100,1000,1000,0,500,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0',NULL,NULL),(8,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','kanjosj','-64075878','{\"modSpoilers\":-1,\"dirtLevel\":8.73761058196709,\"modWindows\":-1,\"bodyHealth\":988.9386522317304,\"modFrame\":-1,\"tankHealth\":998.4705910484217,\"modTrimB\":-1,\"modLivery\":-1,\"modCustomTiresF\":false,\"modXenon\":false,\"modEngine\":-1,\"modArchCover\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"fuelLevel\":97.70237287108663,\"modKit21\":-1,\"modAerials\":-1,\"model\":-64075878,\"modSideSkirt\":-1,\"modRoof\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":{\"3\":true},\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"engineHealth\":987.3499957622819,\"modCustomTiresR\":false,\"interiorColor\":42,\"windowTint\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modHorns\":-1,\"wheels\":0,\"pearlescentColor\":5,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"wheelWidth\":0.0,\"modBrakes\":-1,\"xenonColor\":255,\"modKit19\":-1,\"modTurbo\":false,\"modDial\":-1,\"modPlateHolder\":-1,\"color2\":62,\"plateIndex\":0,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"oilLevel\":4.76596940834568,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelColor\":156,\"modArmor\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"modKit17\":-1,\"modOrnaments\":-1,\"tireHealth\":{\"1\":999.6240844726563,\"2\":1000.0,\"3\":1000.0,\"0\":997.718994140625},\"plate\":\"8DF311CG\",\"modTrunk\":-1,\"wheelSize\":0.0,\"modKit47\":-1,\"color1\":62,\"modHydrolic\":-1,\"modRightFender\":-1,\"dashboardColor\":0,\"modFrontBumper\":-1,\"modStruts\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modFrontWheels\":-1}','8DF311CG',NULL,'pillboxgarage',98,988,989,1,0,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0','[{\"type\":\"Stored\",\"time\":\"2025-02-17-14:48\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:48\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:48\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:48\\u0000\",\"garage\":\"Pillbox Garage Parking\"}]',NULL),(9,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','BKL51924','manchez2','1086534307','{\"modSpoilers\":-1,\"dirtLevel\":7.94328234724281,\"modWindows\":-1,\"bodyHealth\":996.0876063442489,\"modFrame\":-1,\"tankHealth\":997.6762628136975,\"modTrimB\":-1,\"modLivery\":-1,\"modCustomTiresF\":false,\"modXenon\":false,\"modEngine\":-1,\"modArchCover\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"fuelLevel\":97.70237287108663,\"modKit21\":-1,\"modAerials\":-1,\"model\":1086534307,\"modSideSkirt\":-1,\"modRoof\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":[],\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"engineHealth\":1000.0592475178704,\"modCustomTiresR\":false,\"interiorColor\":0,\"windowTint\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modHorns\":-1,\"wheels\":6,\"pearlescentColor\":0,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"wheelWidth\":0.0,\"modBrakes\":-1,\"xenonColor\":255,\"modKit19\":-1,\"modTurbo\":false,\"modDial\":-1,\"modPlateHolder\":-1,\"color2\":129,\"plateIndex\":0,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"oilLevel\":4.76596940834568,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelColor\":156,\"modArmor\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"modKit17\":-1,\"modOrnaments\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":0.0,\"3\":0.0,\"0\":1000.0},\"plate\":\"5ZA190CH\",\"modTrunk\":-1,\"wheelSize\":0.0,\"modKit47\":-1,\"color1\":151,\"modHydrolic\":-1,\"modRightFender\":-1,\"dashboardColor\":111,\"modFrontBumper\":-1,\"modStruts\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modFender\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modFrontWheels\":-1}','5ZA190CH',NULL,'pillboxgarage',98,1000,996,1,0,NULL,NULL,0,0,0,0,NULL,0,0,0,0,'Garage A','0','[{\"type\":\"Stored\",\"time\":\"2025-02-17-14:50\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:50\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:50\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:50\\u0000\",\"garage\":\"Pillbox Garage Parking\"},{\"type\":\"Stored\",\"time\":\"2025-02-17-14:50\\u0000\",\"garage\":\"Pillbox Garage Parking\"}]',NULL);
/*!40000 ALTER TABLE `player_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_warns`
--

DROP TABLE IF EXISTS `player_warns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_warns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_warns`
--

LOCK TABLES `player_warns` WRITE;
/*!40000 ALTER TABLE `player_warns` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_warns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cid` int DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text,
  `job` text NOT NULL,
  `gang` text,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dnzv3` int NOT NULL DEFAULT '0',
  `dnzv3_active` int NOT NULL DEFAULT '0',
  `dnzv3_timeblock` int NOT NULL DEFAULT '0',
  `iban` varchar(255) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `tattoos` longtext,
  `crafting_level` tinyint NOT NULL DEFAULT '1',
  `crafting_xp` smallint NOT NULL DEFAULT '0',
  `credits` int NOT NULL DEFAULT '0',
  `tasks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `tasks_completed` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `winnings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `ownedskills` longtext,
  `skillsinfo` longtext,
  `frkn_craftxp` int DEFAULT '20',
  `frkn_craftlevel` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid` (`citizenid`),
  UNIQUE KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'PUB54824',1,'license:728ed0feb498ff1b7afa767d496a96b51a9c0e0d','xzy LucyGanno','{\"crypto\":0,\"bank\":9040,\"cash\":900}','{\"birthdate\":\"2006-12-12\",\"phone\":\"3515181564\",\"account\":\"US01QBCore7404612775\",\"nationality\":\"Portuguesa\",\"lastname\":\"Moreira\",\"cid\":\"1\",\"gender\":0,\"firstname\":\"Luciano\",\"backstory\":\"placeholder backstory\"}','{\"payment\":10,\"name\":\"unemployed\",\"isboss\":false,\"label\":\"Civilian\",\"onduty\":true,\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"type\":\"none\"}','{\"label\":\"No Gang Affiliaton\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"none\"},\"name\":\"none\"}','{\"x\":115.9912109375,\"y\":-1381.9912109375,\"z\":255.23583984375}','{\"injail\":0,\"isdead\":false,\"phone\":[],\"walletid\":\"QB-66481235\",\"armor\":0,\"thirst\":96.2,\"scrapxp\":0,\"callsign\":\"NO CALLSIGN\",\"hunger\":95.8,\"fitbit\":[],\"stress\":0,\"crypto\":{\"lme\":0,\"shung\":0,\"xcoin\":0,\"gne\":0},\"dealerrep\":0,\"inside\":{\"property_id\":\"2\",\"apartment\":[]},\"attachmentcraftingrep\":0,\"inlaststand\":false,\"tracker\":false,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"criminalrecord\":{\"hasRecord\":false},\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":27679240},\"fisherxp\":0,\"thunterxp\":0,\"ishandcuffed\":false,\"commandbinds\":[],\"fingerprint\":\"fn691z03vPn6969\",\"status\":[],\"bloodtype\":\"B-\",\"jobrep\":{\"trucker\":0,\"taxi\":0,\"tow\":0,\"hotdog\":0},\"craftingrep\":0,\"cargoxp\":0,\"jailitems\":[]}','[{\"name\":\"weapon_assaultrifle\",\"amount\":1,\"created\":1739745479,\"type\":\"weapon\",\"slot\":1,\"info\":{\"quality\":100,\"ammo\":0,\"serie\":\"69cin6Wl770iOnk\"}},{\"name\":\"phone\",\"amount\":1,\"created\":1739745042,\"type\":\"item\",\"slot\":2,\"info\":{\"quality\":100}},{\"name\":\"joint\",\"amount\":1,\"created\":1739747808,\"type\":\"item\",\"slot\":3,\"info\":{\"quality\":100}},{\"name\":\"weapon_ball\",\"amount\":1,\"created\":1739745902,\"type\":\"weapon\",\"slot\":6,\"info\":{\"serie\":\"14Xde0kH784PDxf\",\"quality\":100}},{\"name\":\"weapon_pumpshotgun_mk2\",\"amount\":1,\"created\":1739745903,\"type\":\"weapon\",\"slot\":7,\"info\":{\"serie\":\"44ZpI5yK106JACz\",\"quality\":100}},{\"name\":\"weapon_browning\",\"amount\":1,\"created\":1739745903,\"type\":\"weapon\",\"slot\":8,\"info\":{\"serie\":\"20kRM7dc804KlCS\",\"quality\":100}},{\"name\":\"weapon_sniperrifle\",\"amount\":1,\"created\":1739745903,\"type\":\"weapon\",\"slot\":9,\"info\":{\"serie\":\"06MVo4Oq319xrYN\",\"quality\":100}},{\"name\":\"weapon_stone_hatchet\",\"amount\":1,\"created\":1739745904,\"type\":\"weapon\",\"slot\":10,\"info\":{\"serie\":\"32Olr7ks376nnxc\",\"quality\":100}},{\"name\":\"weapon_flaregun\",\"amount\":1,\"created\":1739745904,\"type\":\"weapon\",\"slot\":11,\"info\":{\"serie\":\"37zFD3tk147lSYT\",\"quality\":100}},{\"name\":\"water_bottle\",\"amount\":1,\"created\":1739745934,\"type\":\"item\",\"slot\":12,\"info\":{\"quality\":100}},{\"name\":\"lockpick\",\"amount\":1,\"created\":1739745934,\"type\":\"item\",\"slot\":13,\"info\":{\"quality\":100}},{\"name\":\"weapon_knife\",\"amount\":1,\"created\":1739745901,\"type\":\"weapon\",\"slot\":14,\"info\":{\"serie\":\"09Shp8dw588BKxd\",\"quality\":100}},{\"name\":\"tosti\",\"amount\":1,\"created\":1739745934,\"type\":\"item\",\"slot\":18,\"info\":{\"quality\":100}},{\"name\":\"weapon_appistol\",\"amount\":1,\"created\":1739745899,\"type\":\"weapon\",\"slot\":20,\"info\":{\"serie\":\"77WqE8Bx145YPxr\",\"quality\":100}}]','2025-02-18 23:23:31',0,0,0,'ID886383',NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1),(2,'BKL51924',1,'license:d8f5e4a38276fb26834fdf1030bbc8e482d287c4','MaikelGii','{\"crypto\":0,\"bank\":6610,\"cash\":9227586}','{\"cid\":\"1\",\"phone\":\"8386134821\",\"account\":\"US01QBCore5555654538\",\"firstname\":\"MaikelGii\",\"lastname\":\"DiGhetto\",\"birthdate\":\"2005-07-25\",\"nationality\":\"Cabo Verde\",\"gender\":0,\"backstory\":\"placeholder backstory\"}','{\"onduty\":true,\"isboss\":false,\"payment\":50,\"label\":\"Real Estate\",\"name\":\"realestate\",\"grade\":{\"level\":0,\"name\":\"Recruit\"},\"type\":\"none\"}','{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"grade\":{\"level\":0,\"name\":\"none\"},\"isboss\":false}','{\"x\":113.77582550048828,\"y\":-1334.6373291015626,\"z\":29.3135986328125}','{\"injail\":0,\"ishandcuffed\":false,\"phone\":[],\"walletid\":\"QB-12595015\",\"bloodtype\":\"AB-\",\"thirst\":69.60000000000002,\"scrapxp\":0,\"dealerrep\":0,\"hunger\":66.39999999999998,\"isdead\":false,\"stress\":22,\"crypto\":{\"lme\":0,\"shung\":0,\"xcoin\":0,\"gne\":0},\"commandbinds\":[],\"inside\":{\"apartment\":[]},\"fisherxp\":0,\"inlaststand\":false,\"tracker\":false,\"craftingrep\":0,\"criminalrecord\":{\"hasRecord\":false},\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":86348330},\"armor\":0,\"thunterxp\":0,\"callsign\":\"NO CALLSIGN\",\"attachmentcraftingrep\":0,\"fingerprint\":\"gQ419y92BkF7136\",\"status\":[],\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false},\"fitbit\":[],\"jobrep\":{\"tow\":0,\"taxi\":0,\"trucker\":0,\"hotdog\":0},\"cargoxp\":0,\"jailitems\":[]}','[{\"name\":\"weapon_katana\",\"amount\":1,\"created\":1739801584,\"type\":\"weapon\",\"slot\":1,\"info\":{\"quality\":100,\"ammo\":0,\"serie\":\"74bDw7DC398vIoa\"}},{\"name\":\"weapon_m4\",\"amount\":1,\"created\":1739802021,\"type\":\"weapon\",\"slot\":2,\"info\":{\"quality\":83.35000000000253,\"ammo\":17,\"serie\":\"84gqk1kw467IXYO\"}},{\"name\":\"weapon_dildo\",\"amount\":1,\"created\":1739745716,\"type\":\"weapon\",\"slot\":3,\"info\":{\"quality\":99.85000000000002,\"ammo\":0,\"serie\":\"09kDN0xn690RoWo\"}},{\"name\":\"weapon_keyboard\",\"amount\":1,\"created\":1739801581,\"type\":\"weapon\",\"slot\":4,\"info\":{\"quality\":99.85000000000002,\"ammo\":0,\"serie\":\"75bUz5Xa615XaZH\"}},{\"name\":\"weapon_riftedge\",\"amount\":1,\"created\":1739801585,\"type\":\"weapon\",\"slot\":5,\"info\":{\"quality\":100,\"ammo\":0,\"serie\":\"89AXy3el985QkwK\"}},{\"name\":\"rentalpapers\",\"amount\":1,\"created\":1739744985,\"type\":\"item\",\"slot\":6,\"info\":{\"quality\":100,\"model\":\"Lampadati Felon\",\"firstname\":\"MaikelGii\",\"plate\":\"RENT1445\",\"citizenid\":\"BKL51924\",\"lastname\":\"DiGhetto\"}},{\"name\":\"weapon_pistol\",\"amount\":1,\"created\":1739750157,\"type\":\"weapon\",\"slot\":8,\"info\":{\"serie\":\"60zSe5jZ499Pxyx\",\"quality\":100}},{\"name\":\"cleaningkit\",\"amount\":1,\"created\":1739816798,\"type\":\"item\",\"slot\":9,\"info\":{\"quality\":100}},{\"name\":\"weed\",\"amount\":5,\"created\":1739920999,\"type\":\"item\",\"slot\":12,\"info\":{\"quality\":100}},{\"name\":\"repairkit\",\"amount\":1,\"created\":1739816792,\"type\":\"item\",\"slot\":14,\"info\":{\"quality\":100}},{\"name\":\"advancedrepairkit\",\"amount\":1,\"created\":1739816795,\"type\":\"item\",\"slot\":15,\"info\":{\"quality\":100}},{\"name\":\"phone\",\"amount\":1,\"created\":1739744867,\"type\":\"item\",\"slot\":18,\"info\":{\"quality\":100}},{\"name\":\"rifle_ammo\",\"amount\":94,\"created\":1739802040,\"type\":\"item\",\"slot\":19,\"info\":{\"quality\":100}},{\"name\":\"tunerlaptop\",\"amount\":1,\"created\":1739816793,\"type\":\"item\",\"slot\":20,\"info\":{\"quality\":100}},{\"name\":\"nitrous\",\"amount\":1,\"created\":1739816796,\"type\":\"item\",\"slot\":21,\"info\":{\"quality\":100}},{\"name\":\"bddrone\",\"amount\":1,\"created\":1739818610,\"type\":\"item\",\"slot\":23,\"info\":{\"quality\":100}},{\"name\":\"pistol_ammo\",\"amount\":99,\"created\":1739802038,\"type\":\"item\",\"slot\":24,\"info\":{\"quality\":100}},{\"name\":\"smg_ammo\",\"amount\":100,\"created\":1739802042,\"type\":\"item\",\"slot\":25,\"info\":{\"quality\":100}},{\"name\":\"joint\",\"amount\":5,\"created\":1739920823,\"type\":\"item\",\"slot\":31,\"info\":{\"quality\":100}},{\"name\":\"water_bottle\",\"amount\":1,\"created\":1739746650,\"type\":\"item\",\"slot\":42,\"info\":{\"quality\":100}},{\"name\":\"chair25\",\"amount\":1,\"created\":1739819538,\"type\":\"item\",\"slot\":43,\"info\":{\"quality\":100}},{\"name\":\"weapon_krambit\",\"amount\":1,\"created\":1739745732,\"type\":\"weapon\",\"slot\":44,\"info\":{\"quality\":100,\"ammo\":0,\"serie\":\"06Zjy6AX839mWwk\"}},{\"name\":\"weapon_gepard\",\"amount\":1,\"created\":1739802019,\"type\":\"weapon\",\"slot\":45,\"info\":{\"quality\":99.85000000000002,\"ammo\":0,\"serie\":\"08dei3Ce994Vrxk\"}}]','2025-02-18 23:31:01',0,0,0,'ID939056',NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1),(54,'IYF48831',1,'license:8b7124c0f44219047a78db69955038d26e6293ce','/̵͇̿̿/’̿’̿ ̿ ̿̿ ̿','{\"cash\":900,\"crypto\":0,\"bank\":9385}','{\"nationality\":\"Portuguese\",\"cid\":\"1\",\"account\":\"US04QBCore4846824040\",\"gender\":0,\"phone\":\"7125846158\",\"firstname\":\"Rodri\",\"birthdate\":\"2005-05-05\",\"backstory\":\"placeholder backstory\",\"lastname\":\"NkZ\"}','{\"label\":\"Law Enforcement\",\"isboss\":false,\"payment\":125,\"onduty\":true,\"grade\":{\"name\":\"Lieutenant\",\"level\":3},\"type\":\"leo\",\"name\":\"police\"}','{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0}}','{\"x\":88.10110473632813,\"y\":-1390.3253173828126,\"z\":29.21240234375}','{\"jailitems\":[],\"fisherxp\":0,\"phonedata\":{\"SerialNumber\":54559773,\"InstalledApps\":[]},\"commandbinds\":[],\"crypto\":{\"gne\":0,\"shung\":0,\"lme\":0,\"xcoin\":0},\"ishandcuffed\":false,\"bloodtype\":\"B+\",\"callsign\":\"NO CALLSIGN\",\"craftingrep\":0,\"cargoxp\":0,\"stress\":0,\"isdead\":false,\"inlaststand\":false,\"phone\":[],\"hunger\":100,\"walletid\":\"QB-28349798\",\"tracker\":false,\"thunterxp\":0,\"injail\":0,\"fitbit\":[],\"status\":[],\"criminalrecord\":{\"hasRecord\":false},\"armor\":0,\"attachmentcraftingrep\":0,\"thirst\":100,\"dealerrep\":0,\"inside\":{\"apartment\":[]},\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"jobrep\":{\"tow\":0,\"taxi\":0,\"trucker\":0,\"hotdog\":0},\"scrapxp\":0,\"fingerprint\":\"LC476j82ezW6147\"}','[{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":1,\"created\":1739794736,\"name\":\"tosti\"},{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":2,\"created\":1739794350,\"name\":\"phone\"},{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":3,\"created\":1739794736,\"name\":\"water_bottle\"},{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":4,\"created\":1739794736,\"name\":\"lockpick\"},{\"type\":\"weapon\",\"info\":{\"ammo\":0,\"quality\":98.20000000000029,\"serie\":\"88oKF5ul381Fqds\"},\"amount\":1,\"slot\":5,\"created\":1739804025,\"name\":\"weapon_pistol_mk2\"}]','2025-02-17 14:55:35',0,0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1),(86,'TES49900',1,'license:02f43e026cd36ea3ac21f347ea044acd192e4b5a','magnata_narea','{\"cash\":900,\"crypto\":0,\"bank\":9010}','{\"nationality\":\"Africana\",\"cid\":\"1\",\"account\":\"US05QBCore2442814872\",\"gender\":0,\"phone\":\"2811328321\",\"firstname\":\"Jakim\",\"birthdate\":\"2005-05-05\",\"lastname\":\"Artolas\",\"backstory\":\"placeholder backstory\"}','{\"label\":\"Civilian\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"onduty\":true,\"name\":\"unemployed\",\"type\":\"none\",\"payment\":10}','{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"none\"}}','{\"x\":-96.34285736083985,\"y\":-1076.7164306640626,\"z\":26.213134765625}','{\"jailitems\":[],\"fisherxp\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":50978254},\"commandbinds\":[],\"crypto\":{\"lme\":0,\"shung\":0,\"xcoin\":0,\"gne\":0},\"inside\":{\"apartment\":[],\"property_id\":\"5\"},\"licences\":{\"weapon\":false,\"business\":false,\"driver\":true},\"callsign\":\"NO CALLSIGN\",\"craftingrep\":0,\"cargoxp\":0,\"stress\":27,\"criminalrecord\":{\"hasRecord\":false},\"scrapxp\":0,\"fingerprint\":\"dd861U67YaO3061\",\"hunger\":95.8,\"walletid\":\"QB-36947454\",\"thunterxp\":0,\"dealerrep\":0,\"injail\":0,\"jobrep\":{\"tow\":0,\"hotdog\":0,\"trucker\":0,\"taxi\":0},\"status\":[],\"attachmentcraftingrep\":0,\"armor\":0,\"thirst\":96.2,\"fitbit\":[],\"tracker\":false,\"phone\":[],\"inlaststand\":false,\"isdead\":false,\"bloodtype\":\"A-\",\"ishandcuffed\":false}','[{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":1,\"created\":1739802707,\"name\":\"giftbox\"},{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":2,\"created\":1739802707,\"name\":\"phone\"}]','2025-02-17 14:41:56',0,0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1),(109,'KRI47073',1,'license:ecefe17b3be4128a6bb2eafb201a09311a581eaf','34%','{\"cash\":900,\"crypto\":0,\"bank\":9040}','{\"nationality\":\"morroco\",\"cid\":\"1\",\"account\":\"US09QBCore8100219936\",\"gender\":0,\"phone\":\"5501807625\",\"lastname\":\"trivela\",\"birthdate\":\"2000-02-05\",\"firstname\":\"joao\",\"backstory\":\"placeholder backstory\"}','{\"label\":\"Civilian\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"onduty\":true,\"name\":\"unemployed\",\"type\":\"none\",\"payment\":10}','{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"none\"}}','{\"x\":111.46813201904297,\"y\":-1399.5560302734376,\"z\":29.3809814453125}','{\"jailitems\":[],\"fisherxp\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":72372867},\"commandbinds\":[],\"crypto\":{\"lme\":0,\"shung\":0,\"xcoin\":0,\"gne\":0},\"inside\":{\"apartment\":[],\"property_id\":\"6\"},\"licences\":{\"weapon\":false,\"business\":false,\"driver\":true},\"callsign\":\"NO CALLSIGN\",\"craftingrep\":0,\"cargoxp\":0,\"stress\":0,\"criminalrecord\":{\"hasRecord\":false},\"scrapxp\":0,\"fingerprint\":\"FV246P41LVx5567\",\"hunger\":78.99999999999999,\"walletid\":\"QB-19408282\",\"thunterxp\":0,\"dealerrep\":0,\"injail\":0,\"jobrep\":{\"tow\":0,\"hotdog\":0,\"trucker\":0,\"taxi\":0},\"status\":[],\"attachmentcraftingrep\":0,\"armor\":0,\"thirst\":81.00000000000002,\"fitbit\":[],\"tracker\":false,\"phone\":[],\"inlaststand\":false,\"isdead\":false,\"bloodtype\":\"O+\",\"ishandcuffed\":false}','[{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":6,\"created\":1739806779,\"name\":\"rccar\"},{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":7,\"created\":1739806779,\"name\":\"lockpick\"},{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":2,\"slot\":8,\"created\":1739806779,\"name\":\"bandage\"},{\"type\":\"item\",\"info\":{\"quality\":100},\"amount\":1,\"slot\":1,\"created\":1739804188,\"name\":\"phone\"}]','2025-02-17 15:41:10',0,0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1),(145,'DCR57149',1,'license:35af2ec3e2ca0d40dace2296ab30d6cfdc8cb08d','Abu','{\"crypto\":0,\"cash\":900,\"bank\":9000}','{\"birthdate\":\"2005-05-05\",\"phone\":\"4008423476\",\"account\":\"US08QBCore3671629312\",\"firstname\":\"abu\",\"lastname\":\"silva\",\"gender\":0,\"nationality\":\"20\",\"cid\":\"1\",\"backstory\":\"placeholder backstory\"}','{\"payment\":10,\"isboss\":false,\"onduty\":true,\"label\":\"Civilian\",\"name\":\"unemployed\",\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"type\":\"none\"}','{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"grade\":{\"level\":0,\"name\":\"none\"},\"isboss\":false}','{\"x\":-1376.2548828125,\"y\":-530.3340454101563,\"z\":30.3751220703125}','{\"injail\":0,\"crypto\":{\"lme\":0,\"shung\":0,\"xcoin\":0,\"gne\":0},\"phone\":[],\"walletid\":\"QB-41895207\",\"cargoxp\":0,\"thirst\":96.2,\"jobrep\":{\"trucker\":0,\"taxi\":0,\"tow\":0,\"hotdog\":0},\"scrapxp\":0,\"hunger\":95.8,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"stress\":0,\"thunterxp\":0,\"dealerrep\":0,\"inside\":{\"apartment\":[]},\"inlaststand\":false,\"isdead\":false,\"tracker\":false,\"craftingrep\":0,\"criminalrecord\":{\"hasRecord\":false},\"phonedata\":{\"SerialNumber\":36407628,\"InstalledApps\":[]},\"armor\":0,\"fisherxp\":0,\"callsign\":\"NO CALLSIGN\",\"attachmentcraftingrep\":0,\"fingerprint\":\"Lo246n66MDs6350\",\"status\":[],\"fitbit\":[],\"commandbinds\":[],\"ishandcuffed\":false,\"bloodtype\":\"B-\",\"jailitems\":[]}','[{\"name\":\"phone\",\"amount\":1,\"created\":1739917826,\"type\":\"item\",\"slot\":1,\"info\":{\"quality\":100}},{\"name\":\"giftbox\",\"amount\":1,\"created\":1739917826,\"type\":\"item\",\"slot\":2,\"info\":{\"quality\":100}}]','2025-02-18 22:31:32',0,0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1),(148,'SFW90439',1,'license:3779de1eea3de28cf55d64c2d654ebd47018eddb','Piresbernardo','{\"bank\":9050,\"cash\":900,\"crypto\":0}','{\"account\":\"US02QBCore7733723232\",\"phone\":\"7686978476\",\"lastname\":\"Pires\",\"nationality\":\"ww\",\"cid\":\"1\",\"gender\":0,\"birthdate\":\"2005-05-05\",\"backstory\":\"placeholder backstory\",\"firstname\":\"Bernardo\"}','{\"name\":\"unemployed\",\"onduty\":true,\"payment\":10,\"type\":\"none\",\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"isboss\":false,\"label\":\"Civilian\"}','{\"name\":\"none\",\"isboss\":false,\"label\":\"No Gang Affiliaton\",\"grade\":{\"level\":0,\"name\":\"none\"}}','{\"x\":-83.78900909423828,\"y\":-1093.3582763671876,\"z\":334.3458251953125}','{\"dealerrep\":0,\"crypto\":{\"xcoin\":0,\"gne\":0,\"lme\":0,\"shung\":0},\"ishandcuffed\":false,\"criminalrecord\":{\"hasRecord\":false},\"tracker\":false,\"fisherxp\":0,\"walletid\":\"QB-64678590\",\"jobrep\":{\"trucker\":0,\"hotdog\":0,\"tow\":0,\"taxi\":0},\"status\":[],\"craftingrep\":0,\"inside\":{\"property_id\":\"8\",\"apartment\":[]},\"thirst\":77.20000000000002,\"attachmentcraftingrep\":0,\"phone\":[],\"jailitems\":[],\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false},\"armor\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":91353222},\"cargoxp\":0,\"scrapxp\":0,\"fitbit\":[],\"commandbinds\":[],\"fingerprint\":\"ZA406h42aUw8591\",\"injail\":0,\"callsign\":\"NO CALLSIGN\",\"bloodtype\":\"A-\",\"inlaststand\":false,\"hunger\":74.79999999999999,\"isdead\":false,\"thunterxp\":0,\"stress\":0}','[{\"amount\":1,\"created\":1739918032,\"name\":\"phone\",\"info\":{\"quality\":100},\"type\":\"item\",\"slot\":1},{\"amount\":1,\"created\":1739920826,\"name\":\"lockpick\",\"info\":{\"quality\":100},\"type\":\"item\",\"slot\":2},{\"amount\":1,\"created\":1739920826,\"name\":\"water_bottle\",\"info\":{\"quality\":100},\"type\":\"item\",\"slot\":3}]','2025-02-18 23:56:46',0,0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1),(180,'CXK21603',1,'license:3c6d4cf8d75e9b5d346d276ecca9fe83ac8446da','Auth','{\"cash\":900,\"crypto\":0,\"bank\":9010}','{\"cid\":\"1\",\"account\":\"US09QBCore7467619920\",\"lastname\":\"CVra\",\"gender\":0,\"birthdate\":\"2005-05-05\",\"phone\":\"6755055442\",\"firstname\":\"Jloao\",\"backstory\":\"placeholder backstory\",\"nationality\":\"Portuigal\"}','{\"payment\":10,\"onduty\":true,\"isboss\":false,\"label\":\"Civilian\",\"type\":\"none\",\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"name\":\"unemployed\"}','{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"grade\":{\"level\":0,\"name\":\"none\"},\"isboss\":false}','{\"x\":-1041.125244140625,\"y\":-755.5780029296875,\"z\":19.8271484375}','{\"isdead\":false,\"attachmentcraftingrep\":0,\"jailitems\":[],\"stress\":0,\"scrapxp\":0,\"walletid\":\"QB-71039452\",\"thunterxp\":0,\"bloodtype\":\"A+\",\"inlaststand\":false,\"crypto\":{\"shung\":0,\"gne\":0,\"lme\":0,\"xcoin\":0},\"tracker\":false,\"ishandcuffed\":false,\"cargoxp\":0,\"callsign\":\"NO CALLSIGN\",\"fingerprint\":\"wg871B45ler5167\",\"dealerrep\":0,\"craftingrep\":0,\"hunger\":83.19999999999999,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"fitbit\":[],\"thirst\":84.80000000000001,\"status\":[],\"injail\":0,\"fisherxp\":0,\"phone\":[],\"armor\":0,\"commandbinds\":[],\"criminalrecord\":{\"hasRecord\":false},\"phonedata\":{\"SerialNumber\":98272575,\"InstalledApps\":[]},\"jobrep\":{\"taxi\":0,\"hotdog\":0,\"trucker\":0,\"tow\":0},\"inside\":{\"apartment\":[]}}','[{\"slot\":1,\"amount\":1,\"info\":{\"quality\":100},\"type\":\"item\",\"name\":\"phone\",\"created\":1739981911},{\"slot\":2,\"amount\":1,\"info\":{\"quality\":100},\"type\":\"item\",\"name\":\"tosti\",\"created\":1739981934},{\"slot\":3,\"amount\":1,\"info\":{\"quality\":100},\"type\":\"item\",\"name\":\"lockpick\",\"created\":1739981934},{\"slot\":4,\"amount\":1,\"info\":{\"quality\":100},\"type\":\"item\",\"name\":\"water_bottle\",\"created\":1739981934}]','2025-02-19 16:39:22',0,0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,20,1);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerskins`
--

DROP TABLE IF EXISTS `playerskins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerskins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerskins`
--

LOCK TABLES `playerskins` WRITE;
/*!40000 ALTER TABLE `playerskins` DISABLE KEYS */;
INSERT INTO `playerskins` VALUES (2,'PUB54824','1885233650','{\"lips_thickness\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"glass\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"face\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"moles\":{\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"defaultTexture\":0,\"item\":1,\"texture\":0},\"eyebrows\":{\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1,\"texture\":1},\"jaw_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"shoes\":{\"defaultItem\":1,\"defaultTexture\":0,\"item\":1,\"texture\":0},\"torso2\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"nose_5\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"hat\":{\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1,\"texture\":0},\"beard\":{\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1,\"texture\":1},\"neck_thikness\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"eye_color\":{\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1,\"texture\":0},\"cheek_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"lipstick\":{\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1,\"texture\":1},\"nose_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"nose_4\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"makeup\":{\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1,\"texture\":1},\"blush\":{\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1,\"texture\":1},\"mask\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"pants\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"ear\":{\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1,\"texture\":0},\"facemix\":{\"defaultShapeMix\":0.0,\"defaultSkinMix\":0.0,\"skinMix\":0,\"shapeMix\":0},\"chimp_hole\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"face2\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"eye_opening\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"cheek_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"cheek_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"nose_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"nose_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"nose_0\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"decals\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"accessory\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"bag\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1,\"texture\":0},\"arms\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0},\"watch\":{\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1,\"texture\":0},\"ageing\":{\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1,\"texture\":0},\"hair\":{\"defaultItem\":0,\"defaultTexture\":0,\"item\":0,\"texture\":0}}',1),(6,'TES49900','1885233650','{\"blush\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":1,\"texture\":0,\"defaultTexture\":0},\"face2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"hair\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"facemix\":{\"skinMix\":0,\"defaultSkinMix\":0.0,\"defaultShapeMix\":0.0,\"shapeMix\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"ear\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"face\":{\"defaultItem\":0,\"item\":1,\"texture\":0,\"defaultTexture\":0},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"moles\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"shoes\":{\"defaultItem\":1,\"item\":1,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"hat\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"arms\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"bag\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"eye_color\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0}}',1),(8,'IYF48831','1885233650','{\"mask\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"hat\":{\"defaultTexture\":0,\"texture\":2,\"item\":24,\"defaultItem\":-1},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"item\":23,\"defaultItem\":1},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"item\":5,\"defaultItem\":0},\"cheek_1\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"chimp_hole\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"eye_opening\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"glass\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"face\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"nose_2\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"nose_0\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"eye_color\":{\"defaultTexture\":0,\"texture\":0,\"item\":3,\"defaultItem\":-1},\"facemix\":{\"skinMix\":0,\"defaultShapeMix\":0.0,\"shapeMix\":0,\"defaultSkinMix\":0.0},\"eyebrown_high\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"item\":15,\"defaultItem\":1},\"ear\":{\"defaultTexture\":0,\"texture\":1,\"item\":2,\"defaultItem\":-1},\"eyebrown_forward\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"cheek_2\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"item\":57,\"defaultItem\":-1},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"moles\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"neck_thikness\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"item\":17,\"defaultItem\":0},\"nose_4\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"cheek_3\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"nose_3\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"hair\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"item\":21,\"defaultItem\":0},\"nose_5\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"face2\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"defaultTexture\":0,\"texture\":3,\"item\":53,\"defaultItem\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"item\":9,\"defaultItem\":-1},\"torso2\":{\"defaultTexture\":0,\"texture\":0,\"item\":333,\"defaultItem\":0},\"lips_thickness\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"nose_1\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0}}',1),(12,'BKL51924','1885233650','{\"makeup\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"bracelet\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"watch\":{\"item\":8,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"cheek_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"face2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"face\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"decals\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"torso2\":{\"item\":27,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"mask\":{\"item\":57,\"defaultTexture\":0,\"texture\":1,\"defaultItem\":0},\"t-shirt\":{\"item\":15,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"cheek_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"facemix\":{\"shapeMix\":0,\"skinMix\":0,\"defaultSkinMix\":0.0,\"defaultShapeMix\":0.0},\"nose_5\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bag\":{\"item\":17,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"cheek_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"blush\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"shoes\":{\"item\":23,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"moles\":{\"item\":5,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"hat\":{\"item\":160,\"defaultTexture\":0,\"texture\":26,\"defaultItem\":-1},\"lips_thickness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"accessory\":{\"item\":15,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_0\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"ageing\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"pants\":{\"item\":53,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"arms\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"ear\":{\"item\":5,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"neck_thikness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hair\":{\"item\":69,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_hole\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eye_opening\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eye_color\":{\"item\":26,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"nose_4\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrows\":{\"item\":12,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"glass\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"vest\":{\"item\":4,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"lipstick\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"beard\":{\"item\":5,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"chimp_bone_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0}}',1),(14,'KRI47073','1885233650','{\"blush\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"eyebrown_forward\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"eye_opening\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"moles\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"cheek_1\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"facemix\":{\"defaultShapeMix\":0.0,\"shapeMix\":0,\"defaultSkinMix\":0.0,\"skinMix\":0},\"ear\":{\"defaultTexture\":0,\"item\":24,\"defaultItem\":-1,\"texture\":3},\"vest\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"hair\":{\"defaultTexture\":0,\"item\":107,\"defaultItem\":0,\"texture\":0},\"nose_2\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_4\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"makeup\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"lipstick\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"t-shirt\":{\"defaultTexture\":0,\"item\":15,\"defaultItem\":1,\"texture\":0},\"eyebrows\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"nose_0\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"shoes\":{\"defaultTexture\":0,\"item\":23,\"defaultItem\":1,\"texture\":6},\"mask\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"bracelet\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"cheek_3\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"face\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"watch\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"cheek_2\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"decals\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"arms\":{\"defaultTexture\":0,\"item\":12,\"defaultItem\":0,\"texture\":0},\"lips_thickness\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"glass\":{\"defaultTexture\":0,\"item\":23,\"defaultItem\":0,\"texture\":4},\"chimp_bone_width\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"beard\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"neck_thikness\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"accessory\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":0,\"texture\":0},\"face2\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"pants\":{\"defaultTexture\":0,\"item\":92,\"defaultItem\":0,\"texture\":0},\"nose_3\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_5\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"eye_color\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"bag\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"ageing\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"hat\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_1\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"chimp_hole\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"torso2\":{\"defaultTexture\":0,\"item\":78,\"defaultItem\":0,\"texture\":0}}',1),(15,'DCR57149','1885233650','{\"hat\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"accessory\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"bracelet\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"glass\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"shoes\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":1},\"face2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"beard\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"watch\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"eyebrown_high\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"neck_thikness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"pants\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"ageing\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"nose_5\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_hole\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"arms\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"hair\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"facemix\":{\"defaultSkinMix\":0.0,\"skinMix\":0,\"shapeMix\":0,\"defaultShapeMix\":0.0},\"makeup\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"cheek_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":1},\"lips_thickness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"cheek_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"moles\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"lipstick\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"cheek_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eye_opening\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"ear\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"bag\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"torso2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"vest\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eye_color\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"decals\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"mask\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"blush\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"eyebrows\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1}}',1),(16,'SFW90439','1885233650','{\"shoes\":{\"defaultItem\":1,\"item\":1,\"defaultTexture\":0,\"texture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"face\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"torso2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"glass\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eye_color\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"moles\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":1,\"defaultTexture\":0,\"texture\":0},\"pants\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"arms\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"accessory\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"hat\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"mask\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"facemix\":{\"skinMix\":0,\"defaultShapeMix\":0.0,\"defaultSkinMix\":0.0,\"shapeMix\":0},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"bag\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"ear\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"face2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"hair\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0}}',1),(17,'CXK21603','1885233650','{\"face\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_2\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_4\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"neck_thikness\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"glass\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"decals\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"beard\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"nose_5\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"pants\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"mask\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"facemix\":{\"skinMix\":0,\"defaultShapeMix\":0.0,\"shapeMix\":0,\"defaultSkinMix\":0.0},\"lips_thickness\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"arms\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"watch\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"moles\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"item\":1,\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bag\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"eyebrows\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"eye_opening\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_3\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ageing\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"makeup\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"nose_3\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_hole\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"accessory\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_0\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"bracelet\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_1\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"item\":1,\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0},\"hat\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"face2\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_1\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lipstick\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"blush\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1}}',1);
/*!40000 ALTER TABLE `playerskins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `owner_citizenid` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `has_access` json DEFAULT NULL,
  `extra_imgs` json DEFAULT NULL,
  `furnitures` json DEFAULT NULL,
  `for_sale` tinyint(1) NOT NULL DEFAULT '1',
  `price` int NOT NULL DEFAULT '0',
  `shell` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `apartment` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `door_data` json DEFAULT NULL,
  `garage_data` json DEFAULT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'BKL51924',NULL,NULL,'This is MaikelGii DiGhetto\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(2,'PUB54824',NULL,NULL,'This is Luciano Moreira\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(3,'IYF48831',NULL,NULL,'This is Rodri NkZ\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(4,'PIR08471',NULL,NULL,'This is ze bisgas\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(5,'TES49900',NULL,NULL,'This is Jakim Artolas\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(6,'KRI47073',NULL,NULL,'This is joao trivela\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(7,'DCR57149',NULL,NULL,'This is abu silva\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(8,'SFW90439',NULL,NULL,'This is Bernardo Pires\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]'),(9,'CXK21603',NULL,NULL,'This is Jloao CVra\'s apartment in Maze Drive','[]','[]','[]',0,0,'Lev Apartment','Maze Drive','[]','[]');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punchmachine`
--

DROP TABLE IF EXISTS `punchmachine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punchmachine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `score` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punchmachine`
--

LOCK TABLES `punchmachine` WRITE;
/*!40000 ALTER TABLE `punchmachine` DISABLE KEYS */;
INSERT INTO `punchmachine` VALUES (1,'MaikelGii DiGhetto','0'),(2,'MaikelGii DiGhetto','0'),(3,'MaikelGii DiGhetto','0');
/*!40000 ALTER TABLE `punchmachine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprays`
--

DROP TABLE IF EXISTS `sprays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) NOT NULL,
  `font` varchar(32) NOT NULL,
  `color` int NOT NULL,
  `interior` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprays`
--

LOCK TABLES `sprays` WRITE;
/*!40000 ALTER TABLE `sprays` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stashitems`
--

DROP TABLE IF EXISTS `stashitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stashitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stashitems`
--

LOCK TABLES `stashitems` WRITE;
/*!40000 ALTER TABLE `stashitems` DISABLE KEYS */;
INSERT INTO `stashitems` VALUES (1,'property_1','[]'),(2,'property_2','[]'),(3,'property_3','[]'),(4,'property_4','[]'),(5,'property_5','[]'),(6,'property_6','[]'),(7,'property_7','[]'),(8,'property_8','[]'),(9,'property_9','[]');
/*!40000 ALTER TABLE `stashitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trunkitems`
--

DROP TABLE IF EXISTS `trunkitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trunkitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trunkitems`
--

LOCK TABLES `trunkitems` WRITE;
/*!40000 ALTER TABLE `trunkitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunkitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_licenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_licenses`
--

LOCK TABLES `user_licenses` WRITE;
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-20 22:43:38
