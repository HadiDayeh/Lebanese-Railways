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
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `passengers` (
  `id_passenger` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_date` date NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_passenger`),
  UNIQUE KEY `phone1_UNIQUE` (`phone1`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (0,'Unknown','','2000-01-01','+000 00 000 000',NULL,NULL,'2000-01-01 00:00:00','av'),(1,'Hadi','Dayeh','1996-06-06','+961 71 276 285','+961 1 452 154','hadi.dayeh@gmail.com','2019-04-29 23:11:11','av'),(2,'Mohammad','Dayeh','1985-08-25','+961 71 343 581',NULL,'mohammad.dayeh@gmail.com','2019-04-29 23:11:11','av'),(3,'Mahmoud','Farhat','1994-01-05','+961 76 358 175',NULL,'mfarhat9@gmail.com','2019-04-29 23:11:11','av'),(4,'Mario','Maroun','1967-03-14','+961 70 235 125',NULL,'mario.maroun@hotmail.com','2019-04-29 23:11:11','av'),(5,'Jamal','Ramal','1968-09-24','+961 81 773 172','+961 1 459 013',NULL,'2019-04-29 23:11:11','av'),(6,'Zein','Zreik','1999-03-12','+961 78 916 235',NULL,'zeinzreik14@gmail.com','2019-04-29 23:11:11','av'),(7,'Kamal','Baydon','1953-05-19','+961 79 129 817',NULL,NULL,'2019-04-30 10:57:42','av'),(8,'Samar','Farhat','2001-02-09','+1 (409) 519-3165',NULL,'','2019-04-29 23:27:05','av'),(9,'Ali','Hammoud','1997-03-07','+1 (940) 304-7957',NULL,NULL,'2019-04-29 23:27:05','av'),(10,'Abbas','Shrara','1999-07-21','+961 79 139 696','+961 70 780 769',NULL,'2019-04-29 23:27:05','av'),(11,'Hassan','Hammoud','1975-06-18','+961 70 865 576',NULL,'lord.cell@gmail.com','2019-04-29 23:27:05','av'),(12,'Hassan','Younes','1980-05-11','+961 3 607 768',NULL,NULL,'2019-04-29 23:27:05','av'),(13,'Loaay','Baydon','1997-08-13','+961 81 216 307',NULL,NULL,'2019-04-29 23:27:05','av'),(14,'Khodor','Ibrahim','1982-11-24','+961 81 933 230','+49 1521 3808878','khodor.ib@gmail.com','2019-04-29 23:29:21','av'),(15,'Ibrahim','Issa','1995-10-16','+961 70 073 234',NULL,NULL,'2019-04-29 23:31:44','av'),(16,'Mahdi','Ali','1990-02-23','+55 61 8366-6676','+961 81 780 651',NULL,'2019-04-29 23:33:33','av'),(17,'Mohammad','Korkmaz','1979-05-09','+961 3 167 416',NULL,'wael.mekdash@hotmail.com','2019-04-29 23:34:51','av'),(18,'Zein','Ajroush','1975-03-24','+961 70 877 629',NULL,NULL,'2019-04-29 23:39:00','av'),(19,'Mohammad','Ibrahim','1985-11-13','+49 1521 7814819','+961 70 874 9191',NULL,'2019-04-29 23:39:00','av'),(20,'Abbas','Taleb','1986-11-17','+961 70 364 869',NULL,NULL,'2019-04-29 23:39:00','av'),(21,'Sarah','Sayed','1975-05-07','+961 70 893 293','+961 5 467 964',NULL,'2019-05-01 23:28:23','av'),(22,'Hadi','Zaraket','1997-12-31','+39 333 965 5222','+961 1 668 453','hadi.zar@live.com','2019-05-01 23:28:23','av'),(23,'Hassan','Farhat','1964-08-24','+961 70 546 453',NULL,NULL,'2019-05-01 23:28:23','av'),(24,'Jalal','Jaber','1988-02-14','+961 1 465 324',NULL,NULL,'2019-05-01 23:28:23','av'),(25,'Samar','Najem','1998-03-22','+961 70 939 069',NULL,NULL,'2019-05-01 23:28:23','av'),(26,'Thomas','Haud','1977-07-07','+49 160 9444 8896',NULL,NULL,'2019-05-01 23:31:51','av'),(27,'Wael','Mekdash','1983-09-05','+961 3 564 843','+961 1 234 867','wael_mekd.17@hotmail.com','2019-05-01 23:30:39','av'),(28,'Ali','Hamoud','1968-07-09','+961 76 467 218',NULL,NULL,'2019-05-01 23:32:42','av'),(29,'Wael','Alhaj','1989-09-03','+961 78 798 967',NULL,NULL,'2019-05-01 23:34:39','av'),(30,'Sanaa','Zeitoun','2004-12-11','+961 70 703 890',NULL,NULL,'2019-05-01 23:34:39','av');
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:20
