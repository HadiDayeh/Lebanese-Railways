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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accounts` (
  `id_account` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_type` int(10) unsigned NOT NULL,
  `id_status` int(10) unsigned NOT NULL,
  `id_accountable` int(10) unsigned NOT NULL,
  `type_accountable` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_account`),
  KEY `fk_id_status_idx` (`id_status`),
  KEY `fk_id_type_idx` (`id_type`),
  CONSTRAINT `fk_id_status_accounts` FOREIGN KEY (`id_status`) REFERENCES `statuses` (`id_status`),
  CONSTRAINT `fk_id_type_accounts` FOREIGN KEY (`id_type`) REFERENCES `types_accounts` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,2,5,1,'employees','nohadraad','134q5w4e6q','2019-05-03 23:47:43','av'),(2,1,5,2,'employees','nader.g','q46w7r6q4r','2019-05-03 23:47:43','av'),(3,2,5,3,'employees','abbas_taleb','q46354r8q4','2019-05-03 23:47:43','av'),(4,1,5,4,'employees','ahmad_alhaj','ag46hdb4j8r','2019-05-03 23:47:43','av'),(5,2,5,5,'employees','rayan.mattar','wy54kjcvbs6','2019-05-03 23:47:43','av'),(6,3,5,1,'passengers','hadi.dayeh','udbv6d7u9d','2019-05-03 23:47:43','av'),(7,3,5,2,'passengers','mohm_day','ot52hj1t6o4t','2019-05-03 23:47:43','av'),(8,3,5,3,'passengers','m.farhat','r3r4i6r31b3q','2019-05-03 23:47:43','av'),(9,3,5,4,'passengers','mario_mar','ri354d3z3sw','2019-05-03 23:47:43','av'),(10,3,5,5,'passengers','j_ramal','a3g3sae6t33','2019-05-03 23:47:43','av');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:17
