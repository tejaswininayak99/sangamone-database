-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cet
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aeronautical`
--

DROP TABLE IF EXISTS `aeronautical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeronautical` (
  `AERO_ID` int NOT NULL,
  `COLLEGE_ID` int DEFAULT NULL,
  `EDU_FIELD_NAME` varchar(15) DEFAULT NULL,
  `SEATS_ALLOWTED` int DEFAULT NULL,
  PRIMARY KEY (`AERO_ID`),
  KEY `COLLEGE_ID` (`COLLEGE_ID`),
  CONSTRAINT `aeronautical_ibfk_1` FOREIGN KEY (`COLLEGE_ID`) REFERENCES `college` (`COLLEGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeronautical`
--

LOCK TABLES `aeronautical` WRITE;
/*!40000 ALTER TABLE `aeronautical` DISABLE KEYS */;
INSERT INTO `aeronautical` VALUES (1,1,'AERONAUTICAL',50000),(2,2,'AERONAUTICAL',50000),(3,3,'AERONAUTICAL',50000),(4,4,'AERONAUTICAL',50000),(5,5,'AERONAUTICAL',50000),(6,6,'AERONAUTICAL',50000);
/*!40000 ALTER TABLE `aeronautical` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-02 23:13:15
