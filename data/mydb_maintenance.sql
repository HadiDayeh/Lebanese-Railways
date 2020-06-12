-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `maintenance` (
  `id_maintenance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_train` int(10) unsigned NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `actual_date` datetime DEFAULT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_maintenance`),
  KEY `fk_id_train_maintenance_idx` (`id_train`),
  CONSTRAINT `fk_id_train_maintenance` FOREIGN KEY (`id_train`) REFERENCES `trains` (`id_train`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,1,'2015-01-01 14:30:00','2015-01-01 14:40:00','av'),(2,1,'2015-06-03 15:00:00','2015-06-03 15:30:00','av'),(3,1,'2016-01-02 12:15:00','2016-01-02 12:17:00','av'),(4,1,'2016-06-04 10:45:00','2016-06-05 11:00:00','av'),(5,1,'2017-01-02 11:30:00','2017-01-02 11:30:00','av'),(6,1,'2017-06-04 16:20:00','2017-06-04 16:21:00','av'),(7,1,'2018-01-02 11:15:00','2018-01-02 11:15:00','av'),(8,1,'2018-01-06 09:50:00','2018-01-06 10:50:00','av'),(9,1,'2019-01-01 12:00:00','2019-01-02 12:00:00','av'),(10,1,'2019-01-06 10:15:00',NULL,'av');
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:18
