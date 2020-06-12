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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `addresses` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_city` int(10) unsigned NOT NULL,
  `line1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `line2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status_code` char(2) NOT NULL DEFAULT 'av',
  PRIMARY KEY (`id_address`),
  KEY `fk_id_city_idx` (`id_city`),
  CONSTRAINT `fk_id_city_addresses` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (0,0,'Unknown',NULL,'av'),(1,1,'Rachidiyeh',NULL,'av'),(2,2,'Khaldah',NULL,'av'),(3,3,'Bohssas',NULL,'av'),(4,2,'Hamrah','Bless st.','av'),(5,2,'Ras Beirut','Adonis st.','av'),(6,9,'Haret Sakher','Mar Antonios st.','av'),(7,5,'Zahleh','Aintoura rd.','av'),(8,1,'Bohssas','Senegal st.','av'),(9,1,'Bohssas','Mohammad El Zayyat st.','av'),(10,7,'Nabatiye Tahta','Banks st.','av'),(11,2,'Alzarif','Rachid Nakhle st.','av'),(12,2,'Mar Elias','Gabriel El Murr st.','av'),(13,2,'Ras Al Nabaa','El Abb Yacoub','av'),(14,2,'Geitawi','Iskandar Farah st.','av'),(15,2,'Chiyah','Asaad El Asaad st','av'),(16,2,'Ghobeiry','Aref Naamani st.','av'),(17,2,'Bir Hassan','Ahmad El Asaad st.','av'),(18,2,'Unesco','Ramlet El Baida','av'),(19,2,'Bourj Abi Haydar','Omar Fakhoury st.','av'),(20,2,'Tarik El Jdideh','Baghdadi st.','av'),(21,3,'Abou Samra','Fadel Saadoun st.','av'),(22,3,'Haddadin','Old Beirut rd.','av');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
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
