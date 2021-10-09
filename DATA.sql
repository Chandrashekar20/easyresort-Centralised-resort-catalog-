-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `uid` int DEFAULT NULL,
  `rid` int DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL,
  KEY `rid` (`rid`),
  KEY `uid` (`uid`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `tajgroup` (`rid`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (200,102,'Very good service'),(201,100,'Good ambiance'),(202,103,'Food was worst'),(203,101,'service was poor'),(204,105,'loved it'),(205,104,'too expensive');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `mid` int NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `contact` int DEFAULT NULL,
  `rid` int DEFAULT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `contact` (`contact`),
  KEY `rid` (`rid`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `tajgroup` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (10,'Varun',30000,752383526,100),(11,'Yashas',35000,914128794,101),(12,'Raj',50000,845366171,102),(13,'Suma',40000,990114848,103),(14,'Kumar',50000,984526661,104),(15,'Rekha',65000,988096277,105);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderbook`
--

DROP TABLE IF EXISTS `orderbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderbook` (
  `uid` int DEFAULT NULL,
  `rid` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `costpernight` int DEFAULT NULL,
  `buffet` int DEFAULT NULL,
  `gym` int DEFAULT NULL,
  `swimming` int DEFAULT NULL,
  `wifi` int DEFAULT NULL,
  `barbeque` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  CONSTRAINT `orderbook_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `orderbook_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `tajgroup` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderbook`
--

LOCK TABLES `orderbook` WRITE;
/*!40000 ALTER TABLE `orderbook` DISABLE KEYS */;
INSERT INTO `orderbook` VALUES (200,102,'2021-03-09',3000,500,0,200,0,0,3700),(201,100,'2021-04-19',3000,500,200,200,150,300,4350),(202,103,'2021-04-21',3000,0,0,0,0,0,3000),(203,101,'2021-01-20',3000,500,0,0,150,0,3000),(204,105,'2021-02-28',3000,500,0,200,150,300,4050),(205,104,'2021-06-20',3000,500,0,0,0,0,3500);
/*!40000 ALTER TABLE `orderbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `uid` int DEFAULT NULL,
  `rid` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `sid` int DEFAULT NULL,
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `sid` (`sid`),
  CONSTRAINT `service_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `service_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `tajgroup` (`rid`),
  CONSTRAINT `service_ibfk_3` FOREIGN KEY (`sid`) REFERENCES `servicelist` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (200,102,'2021-03-23',1),(201,100,'2021-04-19',1),(200,102,'2021-03-23',2),(200,102,'2021-03-23',4),(201,100,'2021-04-19',2),(201,100,'2021-04-19',3),(201,100,'2021-04-19',4),(201,100,'2021-04-19',5),(201,100,'2021-04-19',6),(201,100,'2021-04-19',7),(202,103,'2021-04-21',1),(202,103,'2021-04-21',2),(203,101,'2021-01-20',1),(203,101,'2021-01-20',2),(203,101,'2021-01-20',3),(203,101,'2021-01-20',7),(204,105,'2021-02-28',1),(204,105,'2021-02-28',2),(204,105,'2021-02-28',3),(204,105,'2021-02-28',5),(204,105,'2021-02-28',6),(204,105,'2021-02-28',7),(205,104,'2021-06-20',1),(205,104,'2021-06-20',2),(205,104,'2021-06-20',6),(205,104,'2021-06-20',7),(205,104,'2021-06-20',3);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicelist`
--

DROP TABLE IF EXISTS `servicelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicelist` (
  `sid` int NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `scost` int DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicelist`
--

LOCK TABLES `servicelist` WRITE;
/*!40000 ALTER TABLE `servicelist` DISABLE KEYS */;
INSERT INTO `servicelist` VALUES (1,'costpernight',3000),(2,'buffet',400),(3,'gym',200),(4,'swimming',200),(5,'wifi',100),(6,'barbeque',600),(7,'bar',1000);
/*!40000 ALTER TABLE `servicelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tajgroup`
--

DROP TABLE IF EXISTS `tajgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tajgroup` (
  `rid` int NOT NULL,
  `rname` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  `mid` int DEFAULT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `contact` (`contact`),
  KEY `mid` (`mid`),
  CONSTRAINT `tajgroup_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `manager` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tajgroup`
--

LOCK TABLES `tajgroup` WRITE;
/*!40000 ALTER TABLE `tajgroup` DISABLE KEYS */;
INSERT INTO `tajgroup` VALUES (100,'Grand Mourya','MG road','Mysuru',987654440,10),(101,'Ocean Pearl','RR street','Mysuru',856214536,11),(102,'RadissonBluPlaza','KR street','Bengaluru',810505922,12),(103,'Royal Orchid','Mysuru Road','Bengaluru',637523864,13),(104,'Malnad Comforts','Hassan Road','Chikkamagaluru',963211212,14),(105,'Forest Valley','KM Road','Chikkamagaluru',756326759,15);
/*!40000 ALTER TABLE `tajgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (200,'Thejas',825343844),(201,'Shamanth',925348553),(202,'Sham',636489753),(203,'Ankitha',763211145),(204,'david',944983246),(205,'Zoya',725915131);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-29 14:41:25
