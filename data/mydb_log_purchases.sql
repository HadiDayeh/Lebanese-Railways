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
-- Table structure for table `log_purchases`
--

DROP TABLE IF EXISTS `log_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_purchases` (
  `id_transaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pocket` int(10) unsigned NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` float NOT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_transaction`),
  KEY `fk_id_pocket_idx` (`id_pocket`),
  CONSTRAINT `fk_id_pocket_purchases` FOREIGN KEY (`id_pocket`) REFERENCES `pockets` (`id_pocket`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_purchases`
--

LOCK TABLES `log_purchases` WRITE;
/*!40000 ALTER TABLE `log_purchases` DISABLE KEYS */;
INSERT INTO `log_purchases` VALUES (1,1,'2019-05-04 09:40:19',120,'av'),(2,1,'2019-05-04 09:43:53',-4,'av'),(3,1,'2019-05-04 09:49:32',-4,'av'),(4,1,'2019-05-04 09:52:16',-4,'av'),(5,1,'2019-05-04 10:12:29',15,'av'),(6,2,'2019-05-04 09:40:25',50,'av'),(7,2,'2019-05-04 09:43:53',-4,'av'),(8,2,'2019-05-04 09:49:32',-3,'av'),(9,2,'2019-05-04 09:52:16',-6,'av'),(10,3,'2019-05-04 09:41:18',50,'av'),(11,3,'2019-05-04 09:43:53',-4,'av'),(12,3,'2019-05-04 09:49:32',-6,'av'),(13,3,'2019-05-04 09:52:16',-6,'av'),(14,3,'2019-05-04 09:56:37',36,'av');
/*!40000 ALTER TABLE `log_purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:16
