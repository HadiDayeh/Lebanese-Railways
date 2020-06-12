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
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trips` (
  `id_trip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_train` int(10) unsigned NOT NULL,
  `id_track` int(10) unsigned NOT NULL,
  `id_captain` int(10) unsigned NOT NULL,
  `id_status` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `report` text,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_trip`),
  KEY `fk_id_train_idx` (`id_train`),
  KEY `fk_id_track_idx` (`id_track`),
  KEY `fk_id_employee_idx` (`id_captain`),
  KEY `fk_id_status_idx` (`id_status`),
  CONSTRAINT `fk_id_employee_trips` FOREIGN KEY (`id_captain`) REFERENCES `employees` (`id_employee`),
  CONSTRAINT `fk_id_status_trips` FOREIGN KEY (`id_status`) REFERENCES `statuses` (`id_status`),
  CONSTRAINT `fk_id_track_trips` FOREIGN KEY (`id_track`) REFERENCES `tracks` (`id_track`),
  CONSTRAINT `fk_id_train_trips` FOREIGN KEY (`id_train`) REFERENCES `trains` (`id_train`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (1,1,1,4,10,'2019-05-08 23:36:47',NULL,'av'),(2,2,2,9,11,'2019-05-08 23:36:47',NULL,'av'),(3,3,3,7,10,'2019-05-08 23:36:47',NULL,'av'),(4,4,4,4,12,'2019-05-08 23:36:47',NULL,'av');
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:22
