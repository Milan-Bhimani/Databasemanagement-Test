-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
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
-- Temporary view structure for view `detailsview`
--

DROP TABLE IF EXISTS `detailsview`;
/*!50001 DROP VIEW IF EXISTS `detailsview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `detailsview` AS SELECT 
 1 AS `student_name`,
 1 AS `divison`,
 1 AS `email`,
 1 AS `phone_no`,
 1 AS `address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_details` (
  `student_name` varchar(100) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` int DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES ('Milan',2201,'1230@gmail.com',123456,'Baroda'),('Jay',2202,'1231@gmail.com',223456,'Rajkot'),('Suresh',2203,'1232@gmail.com',323456,'Ahemdabad'),('Ram',2204,'1233@gmail.com',423456,'Surat'),('Malav',2205,'1234@gmail.com',523456,'Bhavnagar'),('Vikas',2207,'1236@gmail.com',723456,'Jamnagar');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_name` varchar(50) DEFAULT NULL,
  `id` int NOT NULL,
  `Dbms_marks` int DEFAULT NULL,
  `os_marks` int DEFAULT NULL,
  `python_marks` int DEFAULT NULL,
  `maths_marks` int DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `divison` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('Milan',2201,85,91,95,89,'A+','cse4b33'),('Jay',2202,75,71,85,79,'B+','cse4b43'),('Suresh',2203,82,71,85,87,'A','cse4b31'),('Ram',2204,89,81,80,96,'A+','cse4b34'),('Rahul',2206,59,87,78,77,'B','cse4b35'),('Rohan',2208,60,77,58,67,'c','cse4b37');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `detailsview`
--

/*!50001 DROP VIEW IF EXISTS `detailsview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detailsview` AS select `students`.`student_name` AS `student_name`,`students`.`divison` AS `divison`,`student_details`.`email` AS `email`,`student_details`.`phone_no` AS `phone_no`,`student_details`.`address` AS `address` from (`students` join `student_details`) where ((((`students`.`os_marks` + `students`.`python_marks`) + `students`.`Dbms_marks`) + `students`.`maths_marks`) <= 400) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-10 15:57:44
