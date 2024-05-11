-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `result_no` int NOT NULL,
  `id` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `subject_name` varchar(150) DEFAULT NULL,
  `subject_code` int NOT NULL,
  `marks` int DEFAULT NULL,
  `student_name` varchar(150) DEFAULT NULL,
  `university_name` varchar(150) DEFAULT NULL,
  `university_index` int DEFAULT NULL,
  PRIMARY KEY (`result_no`,`subject_code`),
  KEY `id` (`id`),
  KEY `semester` (`semester`),
  KEY `subject_code` (`subject_code`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`id`) REFERENCES `students` (`id`),
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`semester`) REFERENCES `semester` (`semester`),
  CONSTRAINT `result_ibfk_3` FOREIGN KEY (`subject_code`) REFERENCES `subjects` (`subject_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (10001,1021,1,'DBMS',101,56,'Jay','LD',1),(10001,1021,1,'Python',102,90,'Jay','LD',1),(10001,1021,1,'DSA',103,88,'Jay','LD',1),(10001,1021,1,'CS',104,75,'Jay','LD',1),(10001,1021,1,'DM',105,92,'Jay','LD',1),(10002,1022,1,'DBMS',101,85,'Shyam','Vishwakarma',2),(10002,1022,1,'Python',102,93,'Shyam','Vishwakarma',2),(10002,1022,1,'DSA',103,82,'Shyam','Vishwakarma',2),(10002,1022,1,'CS',104,95,'Shyam','Vishwakarma',2),(10002,1022,1,'DM',105,96,'Shyam','Vishwakarma',2),(10003,1023,1,'DBMS',101,89,'Jyoti','Nirma',3),(10003,1023,1,'Python',102,91,'Jyoti','Nirma',3),(10003,1023,1,'DSA',103,92,'Jyoti','Nirma',3),(10003,1023,1,'CS',104,99,'Jyoti','Nirma',3),(10003,1023,1,'DM',105,98,'Jyoti','Nirma',3),(10004,1024,2,'Java',201,68,'Gaurav','MSU',4),(10004,1024,2,'Coma',202,88,'Gaurav','MSU',4),(10004,1024,2,'OS',203,48,'Gaurav','MSU',4),(10004,1024,2,'Computer Netwrok',204,48,'Gaurav','MSU',4),(10004,1024,2,'PSNM',205,58,'Gaurav','MSU',4),(10005,1025,2,'Java',201,78,'Vijaykant','Parul',5),(10005,1025,2,'Coma',202,89,'Vijaykant','Parul',5),(10005,1025,2,'OS',203,82,'Vijaykant','Parul',5),(10005,1025,2,'Computer Netwrok',204,76,'Vijaykant','Parul',5),(10005,1025,2,'PSNM',205,72,'Vijaykant','Parul',5);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `id` int NOT NULL,
  `student_name` varchar(150) DEFAULT NULL,
  `semester` int NOT NULL,
  PRIMARY KEY (`semester`,`id`),
  KEY `fk_semester_students` (`id`),
  CONSTRAINT `fk_semester_students` FOREIGN KEY (`id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1021,'Jay',1),(1022,'Shyam',1),(1023,'Jyoti',1),(1024,'Gaurav',2),(1025,'Vijaykant',2);
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL,
  `student_name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_no` int DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1021,'Jay','1230@gmail.com',123456,'Bhavnagar'),(1022,'Shyam','1231@gmail.com',223456,'Rajkot'),(1023,'Jyoti','1232@gmail.com',323456,'Jamnagar'),(1024,'Gaurav','1233@gmail.com',423456,'Vadodra'),(1025,'Vijaykant','1234@gmail.com',523456,'Ahemdabad');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `semester` int DEFAULT NULL,
  `subject_name` varchar(150) DEFAULT NULL,
  `subject_code` int NOT NULL,
  PRIMARY KEY (`subject_code`),
  KEY `fk_subjects_semester` (`semester`),
  CONSTRAINT `fk_subjects_semester` FOREIGN KEY (`semester`) REFERENCES `semester` (`semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'DBMS',101),(1,'Python',102),(1,'DSA',103),(1,'CS',104),(1,'D.M',105),(2,'Java',201),(2,'Coma',202),(2,'OS',203),(2,'Computer Network',204),(2,'PSNM',205);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university` (
  `id` int DEFAULT NULL,
  `student_name` varchar(150) DEFAULT NULL,
  `university_name` varchar(150) DEFAULT NULL,
  `university_index` int NOT NULL,
  PRIMARY KEY (`university_index`),
  KEY `fk_university_students` (`id`),
  CONSTRAINT `fk_university_students` FOREIGN KEY (`id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES (1021,'Jay','LD',1),(1022,'Shyam','Vishwakarma',2),(1023,'Jyoti','Nirma',3),(1024,'Gaurav','MSU',4),(1025,'Vijaykant','Parul',5);
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-11  9:51:59
