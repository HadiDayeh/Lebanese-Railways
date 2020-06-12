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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employees` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_station` int(10) unsigned NOT NULL,
  `id_address` int(10) unsigned DEFAULT NULL,
  `first_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_date` date NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `hire_date` datetime NOT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_employee`),
  UNIQUE KEY `phone1_UNIQUE` (`phone1`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_id_station_idx` (`id_station`),
  KEY `fk_id_address_idx` (`id_address`),
  CONSTRAINT `fk_id_address_employees` FOREIGN KEY (`id_address`) REFERENCES `addresses` (`id_address`),
  CONSTRAINT `fk_id_station_employees` FOREIGN KEY (`id_station`) REFERENCES `stations` (`id_station`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,8,'Nohad','Raad','1976-01-09','+961 3 326 971','+961 1 894 324',NULL,'2000-01-05 00:00:00','av'),(2,1,9,'Nader','Abo Ghoson','1983-04-23','+961 76 849 765',NULL,'abo.ghoson@hotmail.com','2004-03-12 00:00:00','av'),(3,1,10,'Abbas','Taleb','1990-12-16','+961 70 364 869',NULL,'abbas_1@gmail.com','2010-06-09 00:00:00','av'),(4,2,11,'Ahmad','Al-Haj','1986-01-31','+961 71 460 832',NULL,NULL,'2009-06-17 00:00:00','av'),(5,2,12,'Rayyan','Mattar','1977-05-31','+961 78 874 090',NULL,NULL,'2001-08-23 00:00:00','av'),(6,2,13,'Fadel','Jammoul','1969-07-19','+961 71 385 796','+961 1 432 858','fadel.jam.69@live.com','2000-04-02 00:00:00','av'),(7,2,14,'Rana','Ghazali','1980-06-08','+961 70 865 576','+961 1 732 124',NULL,'2003-12-07 00:00:00','av'),(8,2,15,'Jozef','Atiyeh','1989-09-09','+961 76 656 086','+961 1 452 751',NULL,'2007-10-18 00:00:00','av'),(9,2,16,'Jalal','Jaber','1978-06-25','+961 70 411 256',NULL,'j.jaber@hotmail.com','2004-05-07 00:00:00','av'),(10,2,17,'Ayman','Awadah','1992-11-10','+961 81 773 172',NULL,NULL,'2014-03-12 00:00:00','av'),(11,2,18,'Mohammad','Chehab','1989-09-17','+961 76 735 979',NULL,NULL,'2010-07-03 00:00:00','av'),(12,2,19,'Marie','Attar','1976-07-10','+961 70 135 684','+961 1 347 562','attarmarie@gmail.com','2004-06-15 00:00:00','av'),(13,2,20,'May','Antoni','1991-03-08','+961 76 861 345',NULL,NULL,'2014-12-13 00:00:00','av'),(14,2,20,'Elie','Jradeh','1990-01-30','+961 76 331 024',NULL,NULL,'2014-01-04 00:00:00','av'),(15,2,18,'Malak','Kanbar','1993-04-09','+961 3 468 654',NULL,NULL,'2010-07-15 00:00:00','av'),(16,3,21,'Omar','Maatouk','1979-08-18','+961 70 937 173','+961 5 896 432','omatouk@gmail.com','2000-10-29 00:00:00','av'),(17,3,21,'Sawsan','Alhelo','1982-11-11','+961 3 456 217',NULL,NULL,'2004-03-18 00:00:00','av'),(18,3,22,'Samar','Jawhar','1973-12-27','+961 1 453 324','+961 1 769 113',NULL,'2003-07-15 00:00:00','av'),(19,3,22,'Samir','Jawhar','1970-04-15','+961 70 564 843','+961 1 769 113','samir_19@hotmail.com','2001-04-06 00:00:00','av'),(20,3,22,'Hiba','Alkadi','1972-04-07','+961 78 653 245',NULL,NULL,'2002-08-18 00:00:00','av');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
