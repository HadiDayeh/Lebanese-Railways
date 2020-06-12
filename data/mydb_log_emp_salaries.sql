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
-- Table structure for table `log_emp_salaries`
--

DROP TABLE IF EXISTS `log_emp_salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_emp_salaries` (
  `id_employee` int(10) unsigned NOT NULL,
  `salary` float NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime DEFAULT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_employee`,`from_date`),
  CONSTRAINT `fk_id_employee_salaries` FOREIGN KEY (`id_employee`) REFERENCES `employees` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_emp_salaries`
--

LOCK TABLES `log_emp_salaries` WRITE;
/*!40000 ALTER TABLE `log_emp_salaries` DISABLE KEYS */;
INSERT INTO `log_emp_salaries` VALUES (1,500,'2000-01-01 00:00:00','2002-02-01 00:00:00','av'),(1,550,'2002-02-01 00:00:00','2004-02-01 00:00:00','av'),(1,575,'2014-02-01 00:00:00',NULL,'av'),(2,520,'2004-03-01 00:00:00','2006-04-01 00:00:00','av'),(2,560,'2006-04-01 00:00:00',NULL,'av'),(3,520,'2010-06-01 00:00:00','2013-07-01 00:00:00','av'),(3,1500,'2016-07-01 00:00:00',NULL,'av'),(4,450,'2014-04-01 00:00:00','2016-04-03 00:00:00','av'),(4,500,'2016-04-01 00:00:00',NULL,'av'),(5,520,'2013-08-01 00:00:00','2015-02-09 00:00:00','av'),(5,600,'2015-02-01 00:00:00',NULL,'av'),(6,600,'2014-01-01 00:00:00','2017-01-07 00:00:00','av'),(6,800,'2017-01-01 00:00:00',NULL,'av'),(7,500,'2014-03-01 00:00:00',NULL,'av'),(8,500,'2012-01-01 00:00:00',NULL,'av'),(9,500,'2013-10-01 00:00:00',NULL,'av'),(10,600,'2014-02-01 00:00:00',NULL,'av'),(11,800,'2010-08-01 00:00:00',NULL,'av');
/*!40000 ALTER TABLE `log_emp_salaries` ENABLE KEYS */;
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
