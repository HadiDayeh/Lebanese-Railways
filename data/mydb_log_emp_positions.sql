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
-- Table structure for table `log_emp_positions`
--

DROP TABLE IF EXISTS `log_emp_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_emp_positions` (
  `id_employee` int(10) unsigned NOT NULL,
  `id_position` int(10) unsigned NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime DEFAULT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_employee`,`from_date`),
  KEY `fk_id_position_idx` (`id_position`),
  CONSTRAINT `fk_id_employee_emp_positons` FOREIGN KEY (`id_employee`) REFERENCES `employees` (`id_employee`),
  CONSTRAINT `fk_id_position_emp_positions` FOREIGN KEY (`id_position`) REFERENCES `positions` (`id_position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_emp_positions`
--

LOCK TABLES `log_emp_positions` WRITE;
/*!40000 ALTER TABLE `log_emp_positions` DISABLE KEYS */;
INSERT INTO `log_emp_positions` VALUES (1,2,'2000-01-05 00:00:00','2002-01-05 00:00:00','av'),(1,3,'2002-01-05 00:00:00','2004-01-05 00:00:00','av'),(1,1,'2004-01-05 00:00:00','2014-01-05 00:00:00','av'),(1,11,'2014-01-05 00:00:00',NULL,'av'),(2,4,'2004-03-12 00:00:00','2006-03-12 00:00:00','av'),(2,9,'2006-03-12 00:00:00',NULL,'av'),(3,3,'2010-06-09 00:00:00','2013-06-09 00:00:00','av'),(3,1,'2013-06-09 00:00:00','2016-06-09 00:00:00','av'),(3,12,'2016-06-09 00:00:00',NULL,'av'),(4,6,'2014-04-01 00:00:00','2016-04-03 00:00:00','av'),(4,2,'2016-04-03 00:00:00',NULL,'av'),(5,4,'2013-08-01 00:00:00','2015-02-09 00:00:00','av'),(5,8,'2015-02-09 00:00:00',NULL,'av'),(6,8,'2014-01-01 00:00:00','2017-01-07 00:00:00','av'),(6,5,'2017-01-07 00:00:00',NULL,'av'),(7,2,'2014-03-07 00:00:00',NULL,'av'),(8,2,'2012-01-02 00:00:00',NULL,'av'),(9,2,'2013-10-11 00:00:00',NULL,'av'),(10,8,'2014-02-06 00:00:00',NULL,'av'),(11,5,'2010-08-01 00:00:00',NULL,'av');
/*!40000 ALTER TABLE `log_emp_positions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:21
