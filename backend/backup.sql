-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

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
-- Table structure for table `StudentReviews`
--

DROP TABLE IF EXISTS `StudentReviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StudentReviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `universityId` int DEFAULT NULL,
  `studentName` varchar(100) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `reviewText` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentReviews`
--

LOCK TABLES `StudentReviews` WRITE;
/*!40000 ALTER TABLE `StudentReviews` DISABLE KEYS */;
INSERT INTO `StudentReviews` VALUES (1,1,'Maks',4,'Good uni but kinda expensive'),(2,2,'Maks',4,'Good uni but kinda expensive, HARVARD FOREVER!!!!'),(3,2,'Mati',1,'HATED IT!'),(4,3,'Wikus',5,'LOVE FOR MIT'),(5,1,'OLEK',4,'GOOD BUT could be better'),(6,1,'Olek0',1,'Good enough1'),(7,1,'Olek1',2,'Good enough2'),(8,1,'Olek2',3,'Good enough3'),(9,1,'Olek3',4,'Good enough4'),(10,1,'Olek4',5,'Good enough5'),(11,1,'Olek5',6,'Good enough6'),(12,1,'Olek6',7,'Good enough7'),(18,1,'Olek0',1,'Good enough1');
/*!40000 ALTER TABLE `StudentReviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentsUniLists`
--

DROP TABLE IF EXISTS `StudentsUniLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StudentsUniLists` (
  `studentId` int DEFAULT NULL,
  `UniversityId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentsUniLists`
--

LOCK TABLES `StudentsUniLists` WRITE;
/*!40000 ALTER TABLE `StudentsUniLists` DISABLE KEYS */;
INSERT INTO `StudentsUniLists` VALUES (1,1),(1,2),(2,1),(2,2),(2,3),(3,3),(4,1),(5,2),(6,3),(6,2),(6,1),(10,1),(10,2),(11,3),(12,1);
/*!40000 ALTER TABLE `StudentsUniLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupplamentalEssays`
--

DROP TABLE IF EXISTS `SupplamentalEssays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SupplamentalEssays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `universityId` int DEFAULT NULL,
  `essayTopic` varchar(1000) DEFAULT NULL,
  `linkToWebsite` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupplamentalEssays`
--

LOCK TABLES `SupplamentalEssays` WRITE;
/*!40000 ALTER TABLE `SupplamentalEssays` DISABLE KEYS */;
/*!40000 ALTER TABLE `SupplamentalEssays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UniversityInformation`
--

DROP TABLE IF EXISTS `UniversityInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UniversityInformation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `standartAplicationDeadline` date DEFAULT NULL,
  `acceleratedAplicationDeadline` date DEFAULT NULL,
  `acceleratedAplicationType` varchar(100) DEFAULT NULL,
  `addmisionPercentage` int DEFAULT NULL,
  `diversity` varchar(1000) DEFAULT NULL,
  `aplicationCost` int DEFAULT NULL,
  `admisionLink` varchar(1000) DEFAULT NULL,
  `satRange` varchar(20) DEFAULT NULL,
  `gpaRange` varchar(20) DEFAULT NULL,
  `tuitionFees` int DEFAULT NULL,
  `housingFees` int DEFAULT NULL,
  `contactInformation` varchar(1000) DEFAULT NULL,
  `avgSalaryAfterTime` int DEFAULT NULL,
  `studentSatisfaction` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UniversityInformation`
--

LOCK TABLES `UniversityInformation` WRITE;
/*!40000 ALTER TABLE `UniversityInformation` DISABLE KEYS */;
INSERT INTO `UniversityInformation` VALUES (1,'Stanford University','Stanford is a private research university in Stanford, California. It is known for its academic excellence, cutting-edge research, and its influence on technology and innovation.','2025-01-02','2025-01-02','Early Action',4,'High diversity in both nationalities and academic disciplines.',90,'https://admission.stanford.edu','1400-1570','3.7-4.18',56000,16000,'admission@stanford.edu',120000,NULL),(2,'Harvard University','Harvard University is a prestigious Ivy League research university in Cambridge, Massachusetts. It is recognized for its leadership in education and research in many disciplines.','2025-01-01','2025-01-01','Restrictive Early Action',5,'Diverse student body with a focus on global perspectives.',100,'https://college.harvard.edu/admissions','1460-1600','3.9-4.18',52000,15000,'admissions@harvard.edu',130000,NULL),(3,'Massachusetts Institute of Technology','MIT is a private research university in Cambridge, Massachusetts, known for its leadership in engineering, technology, and entrepreneurship.','2025-01-05','2025-01-05','Early Action',6,'MIT has a highly diverse community with a focus on STEM and innovation.',75,'https://mitadmissions.org','1500-1600','3.9-4.15',53000,15000,'admissions@mit.edu',140000,NULL);
/*!40000 ALTER TABLE `UniversityInformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-21 22:08:05
