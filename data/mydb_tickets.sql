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
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tickets` (
  `id_ticket` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_type` int(10) unsigned NOT NULL,
  `id_passenger` int(10) unsigned NOT NULL,
  `id_trip` int(10) unsigned DEFAULT NULL,
  `id_station_from` int(10) unsigned DEFAULT NULL,
  `id_station_to` int(10) unsigned DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sold_price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_ticket`),
  KEY `fk_id_type_idx` (`id_type`),
  KEY `fk_id_trip_idx` (`id_trip`),
  KEY `fk_id_passenger_idx` (`id_passenger`),
  KEY `fk_id_station_to_tickets_idx` (`id_station_to`),
  KEY `fk_id_station_from_tickets_idx` (`id_station_from`),
  CONSTRAINT `fk_id_passenger_tickets` FOREIGN KEY (`id_passenger`) REFERENCES `passengers` (`id_passenger`),
  CONSTRAINT `fk_id_station_from_tickets` FOREIGN KEY (`id_station_from`) REFERENCES `stations` (`id_station`),
  CONSTRAINT `fk_id_station_to_tickets` FOREIGN KEY (`id_station_to`) REFERENCES `stations` (`id_station`),
  CONSTRAINT `fk_id_trip_tickets` FOREIGN KEY (`id_trip`) REFERENCES `trips` (`id_trip`),
  CONSTRAINT `fk_id_type_tickets` FOREIGN KEY (`id_type`) REFERENCES `types_tickets` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,1,1,1,1,3,'2019-05-04 09:43:53',4,NULL,'av'),(2,1,2,1,1,3,'2019-05-04 09:43:53',4,NULL,'av'),(3,1,3,1,1,3,'2019-05-04 09:43:53',4,NULL,'av'),(4,2,4,1,1,3,'2019-05-04 09:43:53',3,NULL,'av'),(5,2,5,1,2,3,'2019-05-04 09:43:53',3,NULL,'av'),(6,5,6,1,2,3,'2019-05-04 09:43:53',3,NULL,'av'),(7,5,7,1,2,3,'2019-05-04 09:43:53',3,NULL,'av'),(8,4,8,1,2,3,'2019-05-04 09:43:53',2,NULL,'av'),(9,4,9,1,1,2,'2019-05-04 09:43:53',2,NULL,'av'),(10,4,10,1,1,2,'2019-05-04 09:43:53',2,NULL,'av'),(11,5,11,1,1,2,'2019-05-04 09:43:53',3,NULL,'av'),(12,5,12,1,1,2,'2019-05-04 09:43:53',3,NULL,'av'),(13,5,13,1,1,2,'2019-05-04 09:43:53',3,NULL,'av'),(14,5,14,1,1,3,'2019-05-04 09:43:53',3,NULL,'av'),(15,5,15,1,1,3,'2019-05-04 09:43:53',3,NULL,'av'),(16,1,0,1,2,3,'2019-05-04 09:44:25',4,NULL,'av'),(17,1,0,1,1,3,'2019-05-04 09:45:10',4,NULL,'av'),(18,1,0,1,1,2,'2019-05-04 09:45:10',4,NULL,'av'),(19,1,0,1,2,3,'2019-05-04 09:45:10',4,NULL,'av'),(20,1,0,1,1,3,'2019-05-04 09:45:10',4,NULL,'av'),(21,1,1,2,1,3,'2019-05-04 09:49:32',4,NULL,'av'),(22,2,2,2,1,3,'2019-05-04 09:49:32',3,NULL,'av'),(23,3,3,2,1,3,'2019-05-04 09:49:32',6,NULL,'av'),(24,4,4,2,1,3,'2019-05-04 09:49:32',2,NULL,'av'),(25,5,5,2,1,2,'2019-05-04 09:49:32',3,NULL,'av'),(26,5,10,2,1,2,'2019-05-04 09:49:32',3,NULL,'av'),(27,4,11,2,1,2,'2019-05-04 09:49:32',2,NULL,'av'),(28,4,12,2,1,2,'2019-05-04 09:49:32',2,NULL,'av'),(29,4,13,2,1,2,'2019-05-04 09:49:32',2,NULL,'av'),(30,5,14,2,2,3,'2019-05-04 09:49:32',3,NULL,'av'),(31,5,15,2,2,3,'2019-05-04 09:49:32',3,NULL,'av'),(32,1,20,2,2,3,'2019-05-04 09:49:32',4,NULL,'av'),(33,1,21,2,2,3,'2019-05-04 09:49:32',4,NULL,'av'),(34,1,22,2,2,3,'2019-05-04 09:49:32',4,NULL,'av'),(35,2,23,2,2,3,'2019-05-04 09:49:32',3,NULL,'av'),(36,2,24,2,1,2,'2019-05-04 09:49:32',3,NULL,'av'),(37,2,25,2,1,2,'2019-05-04 09:49:32',3,NULL,'av'),(38,1,0,2,1,2,'2019-05-04 09:49:32',4,NULL,'av'),(39,1,0,2,1,2,'2019-05-04 09:49:32',4,NULL,'av'),(40,1,0,2,1,3,'2019-05-04 09:50:36',4,NULL,'av'),(41,1,1,3,1,2,'2019-05-04 09:52:16',4,NULL,'av'),(42,3,2,3,1,2,'2019-05-04 09:52:16',6,NULL,'av'),(43,3,3,3,1,2,'2019-05-04 09:52:16',6,NULL,'av'),(44,3,7,3,1,2,'2019-05-04 09:52:16',6,NULL,'av'),(45,1,8,3,1,2,'2019-05-04 09:52:16',4,NULL,'av'),(46,1,9,3,2,3,'2019-05-04 09:52:16',4,NULL,'av'),(47,1,13,3,2,3,'2019-05-04 09:52:16',4,NULL,'av'),(48,2,14,3,2,3,'2019-05-04 09:52:16',3,NULL,'av'),(49,2,15,3,1,3,'2019-05-04 09:52:16',3,NULL,'av'),(50,2,0,3,1,3,'2019-05-04 09:52:16',3,NULL,'av'),(51,2,0,3,1,2,'2019-05-04 09:52:16',3,NULL,'av'),(52,4,16,3,1,2,'2019-05-04 09:55:08',2,NULL,'av'),(53,4,17,3,1,3,'2019-05-04 09:55:08',2,NULL,'av'),(54,4,18,3,1,3,'2019-05-04 09:55:08',2,NULL,'av'),(55,1,22,3,1,3,'2019-05-04 09:55:08',4,NULL,'av'),(56,1,23,3,1,2,'2019-05-04 09:55:08',4,NULL,'av'),(57,1,24,3,2,3,'2019-05-04 09:55:08',4,NULL,'av'),(58,3,28,3,2,3,'2019-05-04 09:55:08',6,NULL,'av'),(59,3,29,3,2,3,'2019-05-04 09:55:08',6,NULL,'av'),(60,3,30,3,1,2,'2019-05-04 09:55:08',6,NULL,'av'),(61,1,23,NULL,NULL,NULL,'2019-05-05 09:32:08',4,NULL,'av'),(62,2,24,NULL,NULL,NULL,'2019-05-05 09:32:08',3,NULL,'av'),(63,2,17,NULL,NULL,NULL,'2019-05-05 09:32:08',3,NULL,'av'),(64,2,16,NULL,NULL,NULL,'2019-05-05 09:32:08',3,NULL,'av'),(65,1,25,NULL,NULL,NULL,'2019-05-05 09:32:08',4,NULL,'av'),(66,3,26,NULL,NULL,NULL,'2019-05-05 09:32:08',6,NULL,'av'),(67,1,27,NULL,NULL,NULL,'2019-05-05 09:32:08',4,NULL,'av'),(68,2,28,NULL,NULL,NULL,'2019-05-05 09:32:08',3,NULL,'av'),(69,1,15,NULL,NULL,NULL,'2019-05-05 09:32:08',4,NULL,'av'),(70,1,22,NULL,NULL,NULL,'2019-05-05 09:32:08',4,NULL,'av'),(71,3,14,NULL,NULL,NULL,'2019-05-05 09:32:08',6,NULL,'av');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
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
