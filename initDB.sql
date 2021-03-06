Drop Database testDB;
CREATE DATABASE testDB;

CREATE USER 'testDbUser'@'localhost';
SET PASSWORD FOR 'testDbUser'@'localhost' = PASSWORD('MySuper5ecretPa55word!');
GRANT SELECT, UPDATE, INSERT, DELETE ON testDB.* TO 'testDbUser'@'localhost';
USE testDB;
-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: testDB
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `salary` decimal(11,2) NOT NULL,
  `salesId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salesId` (`salesId`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`salesId`) REFERENCES `salesEmployees` (`salesId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Andrew','Speed','1991-08-10',50000.00,1),(2,'Neil','Rafferty','1988-01-01',60000.00,NULL),(3,'Bobby','Tables','1995-04-24',25000.00,2),(4,'Sandra','Swanson','1990-06-10',30000.00,3),(5,'Linus','Torvalds','1984-03-15',17000.00,4),(6,'Regular','Employee','1987-10-12',35000.00,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesEmployees`
--

DROP TABLE IF EXISTS `salesEmployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesEmployees` (
  `salesId` int(11) NOT NULL AUTO_INCREMENT,
  `commissionRate` decimal(11,5) NOT NULL,
  `salesTotal` int(11) NOT NULL,
  PRIMARY KEY (`salesId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesEmployees`
--

LOCK TABLES `salesEmployees` WRITE;
/*!40000 ALTER TABLE `salesEmployees` DISABLE KEYS */;
INSERT INTO `salesEmployees` VALUES (1,0.05000,1000),(2,0.25000,75000),(3,0.02000,250),(4,0.03000,750);
/*!40000 ALTER TABLE `salesEmployees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-25 23:09:27
