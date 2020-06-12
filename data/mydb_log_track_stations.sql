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
-- Table structure for table `log_track_stations`
--

DROP TABLE IF EXISTS `log_track_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_track_stations` (
  `id_track` int(10) unsigned NOT NULL,
  `id_station` int(10) unsigned NOT NULL,
  `time` time NOT NULL,
  `order` int(11) NOT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_track`,`id_station`),
  KEY `fk_id_station_idx` (`id_station`),
  CONSTRAINT `fk_id_station_track_stations` FOREIGN KEY (`id_station`) REFERENCES `stations` (`id_station`),
  CONSTRAINT `fk_id_track_track_stations` FOREIGN KEY (`id_track`) REFERENCES `tracks` (`id_track`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_track_stations`
--

LOCK TABLES `log_track_stations` WRITE;
/*!40000 ALTER TABLE `log_track_stations` DISABLE KEYS */;
INSERT INTO `log_track_stations` VALUES (1,1,'06:00:00',1,'av'),(1,2,'06:30:00',2,'av'),(1,3,'07:00:00',3,'av'),(2,1,'07:00:00',3,'av'),(2,2,'06:30:00',2,'av'),(2,3,'06:00:00',1,'av'),(3,1,'06:30:00',1,'av'),(3,2,'07:00:00',2,'av'),(3,3,'07:30:00',3,'av'),(4,1,'08:30:00',3,'av'),(4,2,'08:00:00',2,'av'),(4,3,'07:30:00',1,'av');
/*!40000 ALTER TABLE `log_track_stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:15
