-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: cakephpA
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item_attributes`
--

DROP TABLE IF EXISTS `item_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_binding_id` int(11) NOT NULL,
  `item_brand_id` int(11) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `EAN` varchar(20) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `LegalDisclaimer` tinytext NOT NULL,
  `Manufacturer` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `MPN` varchar(255) NOT NULL,
  `OperatingSystem` varchar(255) NOT NULL,
  `PackageQuantity` varchar(255) NOT NULL,
  `PartNumber` varchar(255) NOT NULL,
  `ProductGroup` varchar(255) NOT NULL,
  `ProductTypeName` varchar(255) NOT NULL,
  `Publisher` varchar(255) NOT NULL,
  `Studio` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Warranty` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_attributes`
--

LOCK TABLES `item_attributes` WRITE;
/*!40000 ALTER TABLE `item_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_bindings`
--

DROP TABLE IF EXISTS `item_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_bindings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Binding` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_bindings`
--

LOCK TABLES `item_bindings` WRITE;
/*!40000 ALTER TABLE `item_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_brands`
--

DROP TABLE IF EXISTS `item_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_brands` (
  `id` int(11) NOT NULL,
  `Brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_brands`
--

LOCK TABLES `item_brands` WRITE;
/*!40000 ALTER TABLE `item_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_features`
--

DROP TABLE IF EXISTS `item_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_features` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `Feature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_features`
--

LOCK TABLES `item_features` WRITE;
/*!40000 ALTER TABLE `item_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ASIN` varchar(40) NOT NULL,
  `sales_rank` int(11) NOT NULL,
  `detail_page_url` tinytext NOT NULL,
  `customer_reviews` text NOT NULL,
  `has_review` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-14 19:08:01
