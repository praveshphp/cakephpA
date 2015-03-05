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
-- Table structure for table `asin`
--

DROP TABLE IF EXISTS `asin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asin` varchar(100) NOT NULL,
  `done` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asin`
--

LOCK TABLES `asin` WRITE;
/*!40000 ALTER TABLE `asin` DISABLE KEYS */;
INSERT INTO `asin` VALUES (1,'B00KLU9X98',0),(2,'B00M2NSOV0',0),(3,'B00IXCZEEE',0),(4,'B00J60MFTO',0),(5,'B00NEFFWF6',0),(6,'B00IKC6VQW',0),(7,'B00OE2T68C',0),(8,'B00KMOKFOA',0),(9,'B00IKC6TSM',0),(10,'B00GC441U8',0),(11,'B00J26HJJ8',0),(12,'B00JYD4BQS',0),(13,'B00N4QFUAM',0),(14,'B00G9YT50W',0),(15,'B00GHACYXI',0),(16,'B00J06IKMK',0),(17,'B00MTFU2UW',0),(18,'B00HF4VOPY',0),(19,'B00MLR3IXG',0),(20,'B00LSPH89C',0),(21,'B00EOPJOM2',0),(22,'B00KS5SNVU',0),(23,'B00KD8B6GG',0),(24,'B00PFWIVY0',0),(25,'B00GAPPVT4',0),(26,'B00JUZHVEO',0),(27,'B00LWT6VFG',0),(28,'B00JTQEAVG',0),(29,'B00IXD0B8W',0),(30,'B00H4WL90W',0),(31,'B00K3KEU6C',0),(32,'B00MXYQBRC',0),(33,'B00NVAMP5O',0),(34,'B00LSPHFCC',0),(35,'B00M6T9NFQ',0),(36,'B00LY3PKRU',0),(37,'B00NLAFV32',0),(38,'B00CZ51R8W',0),(39,'B00N2WNA9Q',0),(40,'B00GFGKC92',0),(41,'B00KCIIW0A',0),(42,'B00I63LOOY',0),(43,'B00LTVTEIS',0),(44,'B00H4WM0IM',0),(45,'B00I0SL526',0),(46,'B00CU88RYQ',0),(47,'B00GHA9UHQ',0),(48,'B00K81HIDS',0),(49,'B00LOBK6XA',0),(50,'B00G8UGSGG',0),(51,'B00I0670QS',0),(52,'B00KSVFRT0',0),(53,'B00QTL8JG6',0),(54,'B00GC44ZG8',0),(55,'B005UEGOHO',0),(56,'B00FMSDAFW',0),(57,'B00OBBUONW',0),(58,'B00CPKPAVC',0),(59,'B00QAJF9J2',0),(60,'B00FGT19UK',0),(61,'B00OB0WE1I',0),(62,'B00OB0WU5I',0),(63,'B00OB0W69I',0),(64,'B00L8WT2UI',0),(65,'B00OB0WLQ6',0),(66,'B00CSFE5N8',0),(67,'B00D2KRS4Q',0),(68,'B00L8WSNMG',0),(69,'B00CSFEQXC',0),(70,'B00LB3IO9E',0),(71,'B00L8WSXVM',0),(72,'B00BWPNPLS',0),(73,'B00LWT6EF8',0),(74,'B00L8WSFBK',0),(75,'B00CSFFHK8',0),(76,'B00FGT17LQ',0),(77,'B00BY54S9E',0),(78,'B00FXLB5YQ',0),(79,'B00DW2M48E',0),(80,'B00CSFFQ2C',0),(81,'B00DNT7LNO',0),(82,'B00DGTOUEY',0),(83,'B00EJBYCUA',0),(84,'B005N8ZSPQ',0),(85,'B00EJBA7HC',0),(86,'B00JHKYLC2',0),(87,'B00DHAV1E4',0),(88,'B00LOBKTKA',0),(89,'B00FS3G0OY',0),(90,'B00K74QBQQ',0),(91,'B00HUQPHQO',0),(92,'B00C57IL8E',0),(93,'B00BEBS2RC',0),(94,'B00O4WU01O',0),(95,'B00EAH8GLO',0),(96,'B00DRBOKS2',0),(97,'B00CL8X6DM',0),(98,'B00DRBOPIM',0),(99,'B00C86CRXC',0),(100,'B005R35I52',0),(101,'B00KMUL5HA',0),(102,'B00GC1J55C',0),(103,'B00JEDM92G',0),(104,'B00AZVZN6U',0),(105,'B00NSPPMYI',0),(106,'B00QJ0OPT2',0),(107,'B00JV3JIOQ',0),(108,'B00JFOQJUM',0),(109,'B00JEDSFGU',0),(110,'B00GB2DN1Y',0),(111,'B00FJ1J740',0),(112,'B00L1XKIZW',0),(113,'B00G7JX2Y4',0),(114,'B00FIP9M0Q',0),(115,'B00NH8WTT2',0),(116,'B00L1XKO9M',0),(117,'B00IQ7W70U',0),(118,'B00KMUL26E',0),(119,'B00H8NRZSW',0),(120,'B00H8NRTME',0),(121,'B00H8NRRUI',0),(122,'B00H8NRUZK',0),(123,'B00H8NS13U',0),(124,'B00H8NXAMC',0),(125,'B00DTR4BII',0),(126,'B00NLAFRU4',0),(127,'B00LBSBELY',0),(128,'B00QJ1AAVS',0),(129,'B00QZ18X4I',0),(130,'B00PLDOHGO',0),(131,'B00H8NROHE',0),(132,'B00IKC66B2',0),(133,'B00LHYZGZW',0),(134,'B00CZ51YBM',0),(135,'B00AY6KL8G',0),(136,'B00OHEF02I',0),(137,'B00PW8IPUW',0),(138,'B00I9S7W38',0),(139,'B00MVUHKBE',0),(140,'B00GQSZOXI',0),(141,'B00PAZ5X5W',0),(142,'B00M6T9EXW',0),(143,'B00IEUJIWO',0),(144,'B00PVWN4XW',0),(145,'B00EUZPBEQ',0),(146,'B00L3XMIOE',0),(147,'B00IZ7K65E',0),(148,'B00L459AT2',0),(149,'B00LOBLJY0',0),(150,'B00L3WC6BU',0),(151,'B00KMVWIRU',0),(152,'B00O4WTX2G',0),(153,'B00N2RURT2',0),(154,'B00IT0MLUA',0),(155,'B00GHA44KY',0),(156,'B00NJI3JJO',0),(157,'B00R7FPSDU',0),(158,'B00R7GIO9E',0),(159,'B00QISH3E4',0),(160,'B00O30T5VI',0),(161,'B00MA9X3JO',0),(162,'B00J2UW6VA',0),(163,'B00LVXTWFE',0),(164,'B00LQN7RYM',0),(165,'B00JB6RZ0C',0),(166,'B00PDOYKR2',0),(167,'B00FXLCD38',0),(168,'B00S17HGDS',0),(169,'B00JLJJ6JM',0),(170,'B00O4WTN9E',0),(171,'B00C96UH2O',0),(172,'B00NAXWLEC',0),(173,'B00LCVZW6I',0),(174,'B00O4WTU7E',0),(175,'B00FOH0G8K',0),(176,'B00NAXZGPS',0),(177,'B00R62U41A',0),(178,'B00NV76KEY',0),(179,'B00PVWMOQK',0),(180,'B00QK3J7TQ',0),(181,'B00IKC60YU',0),(182,'B00GPKDFYM',0),(183,'B00QK3J1YW',0),(184,'B00MNIMFQ4',0),(185,'B00IKC62E8',0),(186,'B009335Z0A',0),(187,'B00LAQ41GW',0),(188,'B00LAQ3UUU',0),(189,'B00RE4UDI4',0),(190,'B008RIPN54',0),(191,'B00EM8MMFM',0),(192,'B00FB379OQ',0),(193,'B00FB37BLW',0),(194,'B00FB37ANG',0),(195,'B00QF746M0',0),(196,'B00ES5XHAI',0),(197,'B00LEF4LE6',0),(198,'B00NP788D6',0),(199,'B00F84QLGA',0),(200,'B00F84QJUI',0),(201,'B00JMQ56U2',0),(202,'B00F84QMSM',0),(203,'B0098HNSIW',0),(204,'B0098HNSJ6',0),(205,'B0099LATZ2',0),(206,'B00EOPJ76A',0),(207,'B00MOF84RA',0),(208,'B00PIKSXRO',0),(209,'B00LOBKMKC',0),(210,'B00NPRW8UK',0),(211,'B00KKJ6QCC',0),(212,'B00LUQY4HS',0),(213,'B00PLVZ8QY',0),(214,'B00I060SSA',0),(215,'B00GLJDA4M',0),(216,'B00PINMBK6',0),(217,'B00KU39WBK',0),(218,'B00PNFF4YO',0),(219,'B00M87O9UK',0),(220,'B00FALMC5A',0),(221,'B00KA3L0X8',0),(222,'B00DM8JKYY',0),(223,'B00M31HXIQ',0),(224,'B00HM5JLCE',0),(225,'B00LPIJSWC',0),(226,'B00LM58I7Y',0),(227,'B00KWWPK10',0),(228,'B00HF4VSGO',0),(229,'B00LTPBJAK',0),(230,'B00LTPBMY8',0),(231,'B00LTPBFZE',0),(232,'B00LTPBQMG',0),(233,'B00LTPAXRK',0),(234,'B00LTPB978',0),(235,'B00LTPBCRU',0),(236,'B00LTPATOM',0),(237,'B00M2VP1NQ',0),(238,'B00JJGONVI',0),(239,'B00PQHZ4CQ',0),(240,'B00QX3EAB8',0),(241,'B00JGMRDOE',0),(242,'B00KVF31JG',0),(243,'B00OMX9R1Y',0),(244,'B00LTWHOGG',0),(245,'B00HZXRIOQ',0),(246,'B00I0SMCV4',0),(247,'B00G0PY9BU',0),(248,'B00I6DSR3K',0),(249,'B00KAYP3SA',0),(250,'B00M1TBKWU',0),(251,'B00MA7HSJM',0),(252,'B00MGR542Y',0),(253,'B00MQL7NHO',0),(254,'B00J06WWFQ',0),(255,'B00JDHXH6A',0),(256,'B00PH3RPR6',0),(257,'B00PH3RP9O',0),(258,'B00OCHDUE0',0),(259,'B00NZYU7P6',0),(260,'B00OIYJB2W',0),(261,'B00PAEA8N0',0),(262,'B00LZT9EJ8',0),(263,'B00L0XEQNS',0),(264,'B00N5OY5XQ',0),(265,'B00L464QG8',0),(266,'B00N8N9NO0',0),(267,'B00MRX5BTS',0),(268,'B00LOGI0I8',0),(269,'B00OCCHT4M',0),(270,'B00QTL8W2M',0),(271,'B00LCSMCNW',0),(272,'B00IKC5HQC',0),(273,'B00NNEYTBG',0),(274,'B00IXCZIHW',0),(275,'B00H4WL40C',0),(276,'B00LVQ5CF0',0),(277,'B00F40EPKW',0),(278,'B00I96QBXW',0),(279,'B00LVQ5JZI',0),(280,'B00GHAHBY0',0),(281,'B00NPYM3US',0),(282,'B00OCAWKUC',0),(283,'B00OCAWEQC',0),(284,'B00H0ESTVQ',0),(285,'B00OCAWIK4',0),(286,'B00O3YVDVE',0),(287,'B00PS1GI16',0),(288,'B00RVHCXKK',0),(289,'B00H7QNYAS',0),(290,'B00H7QO2SQ',0),(291,'B00E57TA50',0),(292,'B00CSFD2U0',0),(293,'B00FB374Q4',0),(294,'B00BBFOO28',0),(295,'B00H93LLX6',0),(296,'B00FB3781K',0),(297,'B00OK2ZW5W',0),(298,'B00NEFXOGA',0),(299,'B00ORD2HXE',0),(300,'B00JUZ40FC',0),(301,'B00SBKDIR8',0),(302,'B00SINAR90',0),(303,'B00S17HA8O',0),(304,'B00KLU9MFS',0),(305,'B00M3RIHEE',0),(306,'B00N4Q6OHU',0),(307,'B00HA0LK3O',0),(308,'B00P2HZDOE',0),(309,'B00CL8XE8Y',0),(310,'B00CL8XFJW',0),(311,'B00NZ36HEC',0),(312,'B00OKDXK0U',0),(313,'B00SRF6GPS',0),(314,'B00R3JFYN4',0),(315,'B00NFKPUKW',0),(316,'B00RZRQZ14',0),(317,'B00R12CCU6',0),(318,'B00K6BP8FU',0),(319,'B00KGYTJDE',0),(320,'B00RWUTJNU',0),(321,'B00R365KCC',0),(322,'B00O4WUI7U',0),(323,'B00NBZ6AKK',0),(324,'B00LOBKPXQ',0),(325,'B00LU1PN4Q',0),(326,'B00LOBL2AQ',0),(327,'B00FXLCLTO',0),(328,'B00LTP9XP8',0),(329,'B00SMLS9X4',0),(330,'B00F3A5KEI',0),(331,'B00JI2SF0I',0),(332,'B00LTPABP4',0),(333,'B00GFGE5VS',0),(334,'B00L8WSSHQ',0),(335,'B00M3RILJU',0),(336,'B00LZT9CFE',0),(337,'B00LZT9B9Q',0),(338,'B00JTQIWHO',0),(339,'B00EUXQHEQ',0),(340,'B00DEZ2SQM',0),(341,'B00R373AFA',0),(342,'B00P7SQQJ4',0),(343,'B00O3Z2YSY',0),(344,'B00C9WWPC8',0),(345,'B00R5YD8SA',0),(346,'B00MQJ4ICO',0),(347,'B00SV7ABS0',0),(348,'B00Q6D122A',0),(349,'B00NLAFNLW',0),(350,'B00R5ZI0IM',0),(351,'B00MQDQCT2',0),(352,'B00QK72J1K',0),(353,'B00P615P7Q',0),(354,'B00H93MGVW',0),(355,'B00KWWPGUA',0),(356,'B00LTU6LUI',0),(357,'B00K1YS6DI',0),(358,'B00JFRBPF8',0),(359,'B00ODWE8LI',0),(360,'B00N8X664K',0),(361,'B00LUPLUGW',0),(362,'B00PUCPQGQ',0),(363,'B00HN0U3CK',0),(364,'B00S15H66W',0),(365,'B00OZB6H70',0),(366,'B00O4WUSC0',0),(367,'B00PZWOD42',0),(368,'B00IKC6E7S',0),(369,'B00IKC6FZY',0),(370,'B00C96U972',0),(371,'B00E1DPOCG',0),(372,'B00OHH1MOK',0),(373,'B00J7LFNSC',0),(374,'B00E9UBI3K',0),(375,'B00OZM9UC8',0),(376,'B00QCDWA34',0),(377,'B00RN5A852',0),(378,'B00G9FVS56',0),(379,'B00R64IK0K',0),(380,'B00N7MFYSQ',0),(381,'B00QXBNDSG',0),(382,'B00JWJ1VEO',0),(383,'B00NPWQ932',0),(384,'B00B809XZ4',0),(385,'B00O4WTPOC',0),(386,'B00BULMM5O',0),(387,'B00LHY5HA6',0),(388,'B00HYQ98DS',0),(389,'B00P0RFEZ4',0),(390,'B00P7HRSXS',0),(391,'B00MTFU6TO',0),(392,'B00PLVZBES',0),(393,'B00NWD6CHW',0),(394,'B00P7LJWT2',0),(395,'B00MRUX5H6',0),(396,'B00CWD9YW8',0),(397,'B00MFIKN70',0),(398,'B00LOKSTA8',0),(399,'B00MFIVVQC',0),(400,'B00KP8NEUU',0),(401,'B00LEMI85M',0),(402,'B00G0PBYQ8',0),(403,'B00LUPM4VW',0),(404,'B00QV61U1K',0),(405,'B00PU294VY',0),(406,'B00KVD8HS8',0),(407,'B00R405PSG',0),(408,'B00NV75OB4',0),(409,'B00PZYNPHG',0),(410,'B00QK3K236',0),(411,'B00CES5B96',0),(412,'B00QX04HR8',0),(413,'B00KTC2PAW',0),(414,'B00LTPB17G',0),(415,'B00EOPJEYK',0),(416,'B00FMSDEVM',0),(417,'B00LTPB4YG',0),(418,'B00CE2LSGC',0),(419,'B00LA1J10S',0),(420,'B00LA1IUPK',0),(421,'B00MGFL1BY',0),(422,'B00G9Y9H6O',0),(423,'B00R4AKJPK',0),(424,'B00FOJC8TI',0),(425,'B00I0SMJZI',0),(426,'B00DY4OL1I',0),(427,'B00M881EDO',0),(428,'B00M1TBAUC',0),(429,'B00KRF8JBA',0),(430,'B00JQB6UZ8',0),(431,'B00L0XETYO',0),(432,'B00IXCZSPE',0),(433,'B00LA1J586',0),(434,'B00KDF8MZM',0),(435,'B00KPVBZNA',0),(436,'B00KAXKGTW',0),(437,'B00FB376OE',0),(438,'B00LFL8SUC',0),(439,'B00NPTLX0Y',0),(440,'B00JS0L9SK',0),(441,'B00SPVDTUY',0),(442,'B00HT1WZDI',0),(443,'B00Q646IGY',0),(444,'B00K6A47AI',0),(445,'B00PUCHMFY',0),(446,'B00LGZ91XK',0),(447,'B00NV76EXQ',0),(448,'B00N8OS2R8',0),(449,'B00PLHU6AQ',0),(450,'B00IEAUCO2',0),(451,'B00L3ZCVFI',0),(452,'B00JQC2RLI',0),(453,'B00OBBJJ0G',0),(454,'B00JC3UGPA',0),(455,'B00FPIQHEA',0),(456,'B00JLDGMKO',0),(457,'B00OKDXSPM',0),(458,'B00DUNWYDU',0),(459,'B00SBMQZ0S',0),(460,'B00D15NAQC',0),(461,'B00ND2HMYO',0),(462,'B00QND6KJI',0),(463,'B00Q9S2IOS',0),(464,'B00RMMDP2O',0),(465,'B00RWUTKWA',0),(466,'B00LOBK9ZU',0),(467,'B00JFYTL5M',0),(468,'B00JI39W1I',0),(469,'B00LTPA6S6',0),(470,'B00GAPPUB8',0),(471,'B00SKVITBS',0),(472,'B00M3RIOJW',0),(473,'B00KNOCAD8',0),(474,'B00L7TBOVW',0),(475,'B00L7TBT0I',0),(476,'B00ORPFD74',0),(477,'B00Q6D19RI',0),(478,'B00Q6D164E',0),(479,'B00ORPFG58',0),(480,'B00ORPF9KA',0),(481,'B00N6L5L3G',0),(482,'B00MCB5H4O',0),(483,'B00O3XURJE',0),(484,'B00DEYXGHS',0),(485,'B00DBTBPVK',0),(486,'B00NLAFXGW',0),(487,'B00LIQIKPM',0),(488,'B00FBH197U',0),(489,'B00D13QFJ8',0),(490,'B00H7QO524',0),(491,'B00KWA7HBS',0),(492,'B00IKC67SY',0),(493,'B00SYEIGZK',0),(494,'B00O4WTRYA',0),(495,'B00MW6ZNYI',0),(496,'B00LGIH1RU',0),(497,'B00D8XYAIO',0),(498,'B00CL8XCE0',0),(499,'B00JHDO1NS',0),(500,'B00PPE3PUI',0),(501,'B00DY3Y4ZM',0),(502,'B00CL4HUSI',0),(503,'B00DUW7TYU',0),(504,'B00I4M6QT0',0),(505,'B00CSFDF5C',0),(506,'B00L54ZXM0',0),(507,'B00OQ8OPGC',0),(508,'B00CDGSR6I',0),(509,'B00KPE53NU',0),(510,'B00HZN4SXA',0),(511,'B00N3S0ZBU',0),(512,'B00O4TORUC',0),(513,'B00IGPJFY8',0),(514,'B00I1TZXJK',0),(515,'B00KS5STHI',0),(516,'B00MR5EE6C',0),(517,'B00N1S6CQE',0),(518,'B00CE2LO8Y',0),(519,'B00CEWE54Y',0),(520,'B00GGAX2GW',0),(521,'B0080DJ6CM',0),(522,'B00K3NOBOU',0),(523,'B00S0OHQI2',0),(524,'B00NBTLUME',0),(525,'B00PZY0LWI',0),(526,'B00FALOJHY',0),(527,'B00I0SMGYM',0),(528,'B00E19N5IK',0),(529,'B00F8ALGI2',0),(530,'B00LA1JF0Y',0),(531,'B00DDPZLIU',0),(532,'B00SL4ABRE',0),(533,'B00NPTMDI0',0),(534,'B00NPWQFIG',0),(535,'B00NPWI43A',0),(536,'B00HT1WYGG',0),(537,'B00MIUCW2E',0),(538,'B00Q8NOXOM',0),(539,'B00SYFZMSS',0),(540,'B00LVXU6LI',0),(541,'B00R8AD976',0),(542,'B00D083ABK',0),(543,'B00P2HZ81M',0),(544,'B00HQE05TE',0),(545,'B00LTUN476',0),(546,'B00RMMVSB4',0),(547,'B00H5IO3ZI',0),(548,'B00D8V7LUU',0),(549,'B00ROWENMI',0),(550,'B00BCIR4RQ',0),(551,'B00LMBSA9E',0),(552,'B00GGAWVG4',0),(553,'B00INS2CPC',0),(554,'B00EPZ1VWM',0),(555,'B00FXLCG7G',0),(556,'B009YCPDMU',0),(557,'B00ES8VMU2',0),(558,'B00MIRXONI',0),(559,'B00MIRXXNO',0),(560,'B00IKC6LIK',0),(561,'B00JB6RT8K',0),(562,'B00PK6G0S0',0),(563,'B00FF7FJX6',0),(564,'B00KDE56J8',0),(565,'B00AQE6CU2',0),(566,'B00MNFEPZ6',0),(567,'B00CE2LQSW',0),(568,'B00KNWSAA2',0),(569,'B00KNTR4SY',0),(570,'B00NR1PSU6',0),(571,'B00STZZ88W',0),(572,'B00KNWSDFY',0),(573,'B00DY3Y23Q',0),(574,'B00D8WDF22',0),(575,'B00ES8JMAE',0),(576,'B00LIXHD2Q',0),(577,'B00L303ETA',0),(578,'B00KLVIVX6',0),(579,'B00FF15Y50',0),(580,'B00NQW6CWY',0),(581,'B00DVF6LX6',0),(582,'B00J95S31U',0),(583,'B00I0SMN7C',0),(584,'B00QK3IM4C',0),(585,'B00DQKUR4A',0),(586,'B00EX41B0M',0),(587,'B00PVWNLXA',0),(588,'B00KVD8LW0',0),(589,'B00EF101GI',0),(590,'B00CM4W5OQ',0),(591,'B00D2S3WEI',0),(592,'B00CZ8MI9G',0),(593,'B00JRSWE00',0),(594,'B00G2YD9II',0),(595,'B00D2S3P6I',0),(596,'B00FFXY4BS',0),(597,'B00OHGNME4',0),(598,'B00LSDIZ1O',0),(599,'B00OUQ28JQ',0),(600,'B00MAB2OQ0',0),(601,'B00L7E9XM4',0),(602,'B00I5GR2XE',0),(603,'B00OBDVWPE',0),(604,'B00JC3SLBQ',0),(605,'B00ND2HK6Y',0),(606,'B00KDE3KDW',0),(607,'B00FXLC76Q',0),(608,'B00CTKUV4Y',0),(609,'B003X26V50',0),(610,'B00871XZTC',0),(611,'B00MTU8P1A',0),(612,'B00MGFLFWO',0),(613,'B00SR4W1TY',0),(614,'B00GAPPY0A',0),(615,'B00DFB7CY8',0),(616,'B00GU83OG8',0),(617,'B00F3A5IYU',0),(618,'B00F3A5HJQ',0),(619,'B00LV2OZ52',0),(620,'B00C2PPE9S',0),(621,'B00EN9K2BG',0),(622,'B00DU6XT36',0),(623,'B00R2CKWFC',0),(624,'B00SB8LOPS',0),(625,'B00SB8L9NU',0),(626,'B00SB8LJYO',0),(627,'B00SB8L4LC',0),(628,'B00L7QZX9Y',0),(629,'B00L0YFMYO',0),(630,'B00KAYPDYO',0),(631,'B00J60DPKC',0),(632,'B00MFBQNE4',0),(633,'B00KD5FQ4W',0),(634,'B00KLU9T6A',0),(635,'B00IKEMCF4',0),(636,'B00CL8XDF8',0),(637,'B00ROQP634',0),(638,'B00H4WLSPS',0),(639,'B00HK7VBNQ',0),(640,'B00GUCFCZK',0),(641,'B00NLAEF8E',0),(642,'B00CL4HXQC',0),(643,'B00M2UN8BE',0),(644,'B00QK3HU18',0),(645,'B00MVXGCMY',0),(646,'B00QK3I026',0),(647,'B008OR8B20',0),(648,'B00DW4QEYM',0),(649,'B00MUV8XW4',0),(650,'B00OFRJYEW',0),(651,'B00P2HOBBA',0),(652,'B00C2SBS4A',0),(653,'B00LA1JIXI',0),(654,'B00MUXNLWY',0),(655,'B00OD0TJM8',0),(656,'B00IXCYWJW',0),(657,'B00JHAAK8G',0),(658,'B00K1Y84CQ',0),(659,'B00NUT7SU8',0),(660,'B00GIJU8G8',0),(661,'B00MFR3SOG',0),(662,'B00NUZQL14',0),(663,'B00L56AL3O',0),(664,'B00E1F0M9O',0),(665,'B00K83YGRC',0),(666,'B00KYWGB2A',0),(667,'B00OFRQLK2',0),(668,'B00HHQST9E',0),(669,'B00EZ4H4AG',0),(670,'B00MTU8U6K',0),(671,'B00NLB9P1U',0),(672,'B00L28QIZ0',0),(673,'B00HLFWZGY',0),(674,'B00HHQSVM4',0),(675,'B00MTU8W6S',0),(676,'B00PZVHEBC',0),(677,'B00LV35HQ2',0),(678,'B00MZ9IAH4',0),(679,'B00IF1N9CC',0),(680,'B00LZT9484',0),(681,'B00E4GY188',0),(682,'B00SKMI0MA',0),(683,'B00Q2ICJX0',0),(684,'B00K1WEWT2',0);
/*!40000 ALTER TABLE `asin` ENABLE KEYS */;
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

-- Dump completed on 2015-02-04 20:06:10
