-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: OnlinePayingGuest
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Owner`
--

DROP TABLE IF EXISTS `Owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Owner` (
  `id` varchar(20) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `FathersName` varchar(20) DEFAULT NULL,
  `Mobile` varchar(12) DEFAULT NULL,
  `PoliceStation` varchar(20) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Owner`
--

LOCK TABLES `Owner` WRITE;
/*!40000 ALTER TABLE `Owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `Owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PoliceLogin`
--

DROP TABLE IF EXISTS `PoliceLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PoliceLogin` (
  `Id` varchar(5) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PoliceLogin`
--

LOCK TABLES `PoliceLogin` WRITE;
/*!40000 ALTER TABLE `PoliceLogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `PoliceLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tenent`
--

DROP TABLE IF EXISTS `Tenent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tenent` (
  `id` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Aadhar_number` varchar(15) NOT NULL,
  `Fathers_name` varchar(20) DEFAULT NULL,
  `Permanent_address` varchar(50) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Other_detail` varchar(250) DEFAULT NULL,
  `Work_place` varchar(20) DEFAULT NULL,
  `Work_place_address` varchar(40) DEFAULT NULL,
  `Work_place_mobile_` varchar(15) DEFAULT NULL,
  `Occupation` varchar(20) DEFAULT NULL,
  `Guardians_name` varchar(20) DEFAULT NULL,
  `Guardians_mobile` varchar(15) DEFAULT NULL,
  `Guardians_address` varchar(40) DEFAULT NULL,
  `Tenent_photo` mediumblob,
  `Tenent_document` mediumblob,
  PRIMARY KEY (`Aadhar_number`),
  KEY `id` (`id`),
  CONSTRAINT `Tenent_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Owner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tenent`
--

LOCK TABLES `Tenent` WRITE;
/*!40000 ALTER TABLE `Tenent` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tenent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-08 18:09:00
