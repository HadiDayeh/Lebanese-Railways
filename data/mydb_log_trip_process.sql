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
-- Table structure for table `log_trip_process`
--

DROP TABLE IF EXISTS `log_trip_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_trip_process` (
  `id_trip` int(10) unsigned NOT NULL,
  `id_station_from` int(10) unsigned NOT NULL,
  `id_station_to` int(10) unsigned NOT NULL,
  `id_status` int(10) unsigned NOT NULL,
  `scheduled_time` time NOT NULL,
  `real_time` time DEFAULT NULL,
  `delay_time` varchar(10) NOT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_trip`,`id_station_from`,`id_station_to`),
  KEY `fk_id_status_idx` (`id_status`),
  KEY `fk_id_station_process_idx` (`id_station_from`),
  KEY `fk_id_station_to_process_idx` (`id_station_to`),
  CONSTRAINT `fk_id_station_from_process` FOREIGN KEY (`id_station_from`) REFERENCES `stations` (`id_station`),
  CONSTRAINT `fk_id_status` FOREIGN KEY (`id_status`) REFERENCES `statuses` (`id_status`),
  CONSTRAINT `fk_id_trip_process` FOREIGN KEY (`id_trip`) REFERENCES `trips` (`id_trip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_trip_process`
--

LOCK TABLES `log_trip_process` WRITE;
/*!40000 ALTER TABLE `log_trip_process` DISABLE KEYS */;
INSERT INTO `log_trip_process` VALUES (1,1,2,1,'06:00:00','06:00:00','0','av'),(1,2,3,1,'06:30:00',NULL,'0','av'),(1,3,0,1,'07:00:00',NULL,'0','av'),(2,1,0,1,'07:00:00','07:00:00','0','av'),(2,2,1,2,'06:30:00','06:33:00','3 min','av'),(2,3,2,2,'06:00:00','06:08:00','8 min','av'),(3,1,2,2,'06:30:00','06:35:00','5 min','av'),(3,2,3,2,'07:00:00','07:03:00','3 min','av'),(3,3,0,2,'07:30:00',NULL,'3 min','av'),(4,1,0,1,'08:30:00',NULL,'0','av'),(4,2,1,1,'08:00:00',NULL,'0','av'),(4,3,2,1,'07:30:00',NULL,'0','av');
/*!40000 ALTER TABLE `log_trip_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:19
