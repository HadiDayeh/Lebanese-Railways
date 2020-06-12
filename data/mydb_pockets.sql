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
-- Table structure for table `pockets`
--

DROP TABLE IF EXISTS `pockets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pockets` (
  `id_pocket` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_passenger` int(10) unsigned NOT NULL,
  `balance` float NOT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_pocket`),
  KEY `fk_id_passenger_idx` (`id_passenger`),
  CONSTRAINT `fk_id_passenger_pockets` FOREIGN KEY (`id_passenger`) REFERENCES `passengers` (`id_passenger`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pockets`
--

LOCK TABLES `pockets` WRITE;
/*!40000 ALTER TABLE `pockets` DISABLE KEYS */;
INSERT INTO `pockets` VALUES (1,1,123,'av'),(2,2,37,'av'),(3,3,72,'av'),(4,4,91,'av'),(5,5,206,'av'),(6,6,12,'av'),(7,7,204,'av'),(8,8,133,'av'),(9,9,44,'av'),(10,10,78,'av'),(11,11,211,'av'),(12,12,115,'av'),(13,13,93,'av'),(14,14,29,'av'),(15,15,12,'av'),(16,16,148,'av'),(17,17,239,'av'),(18,18,128,'av'),(19,19,79,'av'),(20,20,91,'av'),(21,21,531,'av'),(22,22,38,'av'),(23,23,109,'av'),(24,24,184,'av'),(25,25,13,'av'),(26,26,51,'av'),(27,27,412,'av'),(28,28,89,'av'),(29,29,173,'av'),(30,30,200,'av');
/*!40000 ALTER TABLE `pockets` ENABLE KEYS */;
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
