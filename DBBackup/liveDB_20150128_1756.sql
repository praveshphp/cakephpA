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
-- Table structure for table `Item_dimensions`
--

DROP TABLE IF EXISTS `Item_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Item_dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Height_unit` varchar(50) NOT NULL,
  `Length` varchar(10) NOT NULL,
  `Length_unit` varchar(50) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  `Weight_unit` varchar(50) NOT NULL,
  `Width` varchar(10) NOT NULL,
  `Width_unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item_dimensions`
--

LOCK TABLES `Item_dimensions` WRITE;
/*!40000 ALTER TABLE `Item_dimensions` DISABLE KEYS */;
INSERT INTO `Item_dimensions` VALUES (1,1,'232','hundredths-inches','488','hundredths-inches','29','hundredths-pounds','35','hundredths-inches'),(2,2,'232','hundredths-inches','488','hundredths-inches','29','hundredths-pounds','35','hundredths-inches');
/*!40000 ALTER TABLE `Item_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browsenodes`
--

DROP TABLE IF EXISTS `browsenodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browsenodes` (
  `id` int(11) NOT NULL,
  `BrowseNode` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browsenodes`
--

LOCK TABLES `browsenodes` WRITE;
/*!40000 ALTER TABLE `browsenodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `browsenodes` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`),
  KEY `FK_item_attributes` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_attributes`
--

LOCK TABLES `item_attributes` WRITE;
/*!40000 ALTER TABLE `item_attributes` DISABLE KEYS */;
INSERT INTO `item_attributes` VALUES (1,1,1,1,'White','0885909934423','Apple Computer','Warranty as Per Manufacturer Terms & Conditions','Apple Computer','iPhone 5c','APE_iPhone5c_WHE_8GB','iOS','1','APE_iPhone5c_WHE_8GB','Wireless','PHONE','Apple Computer','Apple Computer','Apple iPhone 5c (White, 8GB)','1 year manufacturer warranty for device and in-box accessories including batteries from the date of purchase'),(2,2,1,1,'White','0885909934423','Apple Computer','Warranty as Per Manufacturer Terms & Conditions','Apple Computer','iPhone 5c','APE_iPhone5c_WHE_8GB','iOS','1','APE_iPhone5c_WHE_8GB','Wireless','PHONE','Apple Computer','Apple Computer','Apple iPhone 5c (White, 8GB)','1 year manufacturer warranty for device and in-box accessories including batteries from the date of purchase');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_bindings`
--

LOCK TABLES `item_bindings` WRITE;
/*!40000 ALTER TABLE `item_bindings` DISABLE KEYS */;
INSERT INTO `item_bindings` VALUES (1,'Electronics');
/*!40000 ALTER TABLE `item_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_brands`
--

DROP TABLE IF EXISTS `item_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Brand` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_brands`
--

LOCK TABLES `item_brands` WRITE;
/*!40000 ALTER TABLE `item_brands` DISABLE KEYS */;
INSERT INTO `item_brands` VALUES (1,'Apple'),(2,'HP');
/*!40000 ALTER TABLE `item_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_features`
--

DROP TABLE IF EXISTS `item_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `Feature` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_features`
--

LOCK TABLES `item_features` WRITE;
/*!40000 ALTER TABLE `item_features` DISABLE KEYS */;
INSERT INTO `item_features` VALUES (1,1,'8MP primary camera with LED flash, auto focus, geo tagging, face detection, 1.2MP front facing camera with HD video recording and backside illumination sensor'),(2,1,'4-inch multi-touch retina display with 1136 x 640 pixels resolution'),(3,1,'iOS 7 operating system with 8GB internal memory'),(4,1,'Rechargable battery providing talk-time up to 10 hours on 3G network and standby time up to 250 hours'),(5,1,'1 year manufacturer warranty for device and in-box accessories including batteries from the date of purchase'),(6,2,'8MP primary camera with LED flash, auto focus, geo tagging, face detection, 1.2MP front facing camera with HD video recording and backside illumination sensor'),(7,2,'4-inch multi-touch retina display with 1136 x 640 pixels resolution'),(8,2,'iOS 7 operating system with 8GB internal memory'),(9,2,'Rechargable battery providing talk-time up to 10 hours on 3G network and standby time up to 250 hours'),(10,2,'1 year manufacturer warranty for device and in-box accessories including batteries from the date of purchase');
/*!40000 ALTER TABLE `item_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_images`
--

DROP TABLE IF EXISTS `item_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `SwatchImage` varchar(255) NOT NULL,
  `SmallImage` varchar(255) NOT NULL,
  `ThumbnailImage` varchar(255) NOT NULL,
  `TinyImage` varchar(255) NOT NULL,
  `MediumImage` varchar(255) NOT NULL,
  `LargeImage` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_images`
--

LOCK TABLES `item_images` WRITE;
/*!40000 ALTER TABLE `item_images` DISABLE KEYS */;
INSERT INTO `item_images` VALUES (1,1,'http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL30_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL75_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL75_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL110_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL160_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL.jpg'),(2,1,'http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL30_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL75_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL75_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL110_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL160_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L.jpg'),(3,2,'http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL30_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL75_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL75_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL110_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL._SL160_.jpg','http://ecx.images-amazon.com/images/I/41GzaF-C0bL.jpg'),(4,2,'http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL30_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL75_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL75_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL110_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L._SL160_.jpg','http://ecx.images-amazon.com/images/I/31EkjmjvA9L.jpg');
/*!40000 ALTER TABLE `item_images` ENABLE KEYS */;
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
  `SalesRank` int(11) NOT NULL,
  `DetailPageURL` tinytext NOT NULL,
  `CustomerReviews` text NOT NULL,
  `HasReviews` int(11) NOT NULL DEFAULT '1',
  `browsenode_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'B00L8WT2UI',10,'http://www.amazon.in/Apple-iPhone-5c-White-8GB/dp/B00L8WT2UI%3FSubscriptionId%3DAKIAJ7KNIK7E3HOO46AA%26tag%3Dally09-21%26linkCode%3Dsp1%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00L8WT2UI','http://www.amazon.in/reviews/iframe?akid=AKIAJ7KNIK7E3HOO46AA&alinkCode=sp1&asin=B00L8WT2UI&atag=ally09-21&exp=2015-01-16T09%3A19%3A42Z&v=2&sig=Aw7A9oKkYNHSBWtgYYSUHSeLTPih5ajoJCleAyI2VJM%3D',1,1805560031),(2,'B00L8WT2UI',10,'http://www.amazon.in/Apple-iPhone-5c-White-8GB/dp/B00L8WT2UI%3FSubscriptionId%3DAKIAJ7KNIK7E3HOO46AA%26tag%3Dally09-21%26linkCode%3Dsp1%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00L8WT2UI','http://www.amazon.in/reviews/iframe?akid=AKIAJ7KNIK7E3HOO46AA&alinkCode=sp1&asin=B00L8WT2UI&atag=ally09-21&exp=2015-01-16T09%3A20%3A34Z&v=2&sig=P7dIIVJIWCKXhr0SdU13q%2B4oWaTPmVKX58yeYyIiqbQ%3D',1,1805560031);
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

-- Dump completed on 2015-01-28 17:56:04
