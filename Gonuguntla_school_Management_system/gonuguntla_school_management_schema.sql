CREATE DATABASE  IF NOT EXISTS `school` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `school`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Temporary view structure for view `course_tought_by`
--

DROP TABLE IF EXISTS `course_tought_by`;
/*!50001 DROP VIEW IF EXISTS `course_tought_by`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `course_tought_by` AS SELECT 
 1 AS `CourseName`,
 1 AS `LecturerName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` varchar(5) NOT NULL,
  `CourseName` varchar(20) NOT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('CS1','OS'),('CS2','DAA'),('CS3','Networks'),('CS4','CS ethics'),('DATA1','Intro to DS'),('DATA2','Machine Learning'),('DATA3','Big Data Processing'),('DATA4','Data Management'),('DATA5','Ethics in DS'),('DATA6','Capstone in DS');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cs_major_in_ds`
--

DROP TABLE IF EXISTS `cs_major_in_ds`;
/*!50001 DROP VIEW IF EXISTS `cs_major_in_ds`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cs_major_in_ds` AS SELECT 
 1 AS `StudentID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `COurseName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ds_major_in_cs`
--

DROP TABLE IF EXISTS `ds_major_in_cs`;
/*!50001 DROP VIEW IF EXISTS `ds_major_in_cs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ds_major_in_cs` AS SELECT 
 1 AS `StudentID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `COurseName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `emergency_contact`
--

DROP TABLE IF EXISTS `emergency_contact`;
/*!50001 DROP VIEW IF EXISTS `emergency_contact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `emergency_contact` AS SELECT 
 1 AS `StudentID`,
 1 AS `ParentName`,
 1 AS `PhoneNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `EnrollmentID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `LecturerID` int NOT NULL,
  `CourseID` varchar(11) NOT NULL,
  `Term` varchar(45) NOT NULL,
  PRIMARY KEY (`EnrollmentID`),
  KEY `Student_ID` (`StudentID`),
  KEY `LecturerID` (`LecturerID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `CourseID` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  CONSTRAINT `LecturerID` FOREIGN KEY (`LecturerID`) REFERENCES `lecturers` (`LecturerID`),
  CONSTRAINT `Student_ID` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,100,10,'CS1','Fall'),(2,101,10,'CS1','Spring'),(3,102,14,'DATA1','Fall'),(4,104,10,'CS1','Fall'),(5,105,14,'DATA1','Spring'),(6,106,11,'DATA4','Spring'),(7,107,14,'DATA1','Fall'),(8,108,12,'CS3','Spring'),(9,109,10,'CS1','Spring'),(10,110,10,'CS1','Spring'),(11,100,14,'DATA1','Fall'),(12,101,11,'CS2','Fall'),(13,102,12,'CS3','Fall'),(14,104,13,'CS4','Fall'),(15,105,13,'DATA6','Spring'),(16,106,11,'CS2','Spring'),(17,107,13,'CS4','Fall'),(18,108,11,'CS2','Spring'),(19,109,14,'DATA1','Spring'),(20,110,11,'DATA4','Fall'),(21,104,13,'DATA6','Spring'),(22,105,15,'DATA2','Spring'),(23,106,10,'DATA3','Fall'),(24,107,13,'DATA6','Spring'),(25,108,10,'DATA3','Fall');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `ExamID` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `CourseID` varchar(5) NOT NULL,
  PRIMARY KEY (`ExamID`),
  KEY `courses` (`CourseID`),
  CONSTRAINT `ClassroomID` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'2022-11-15','CS1'),(2,'2022-10-30','CS2'),(3,'2022-11-05','CS3'),(4,'2022-12-01','CS4'),(5,'2022-11-25','DATA1'),(6,'2022-11-25','DATA2'),(7,'2022-11-20','DATA3'),(8,'2022-11-20','DATA4'),(9,'2022-11-21','DATA5'),(10,'2022-11-24','DATA6');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `grade_objained`
--

DROP TABLE IF EXISTS `grade_objained`;
/*!50001 DROP VIEW IF EXISTS `grade_objained`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grade_objained` AS SELECT 
 1 AS `StudentID`,
 1 AS `CourseName`,
 1 AS `Marks`,
 1 AS `Grade`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `Grade` varchar(1) NOT NULL,
  `MinMarks` int NOT NULL,
  `MaxMarks` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES ('A',91,100),('B',81,90),('C',73,80),('D',64,72),('E',55,63),('F',0,54);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturers`
--

DROP TABLE IF EXISTS `lecturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturers` (
  `LecturerID` int NOT NULL AUTO_INCREMENT,
  `LecturerName` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  PRIMARY KEY (`LecturerID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturers`
--

LOCK TABLES `lecturers` WRITE;
/*!40000 ALTER TABLE `lecturers` DISABLE KEYS */;
INSERT INTO `lecturers` VALUES (10,'Tima Kshetry','10Kshetry@umbc.edu','9876543211'),(11,'Sara Swaden','11Swaden@umbc.edu','9876543212'),(12,'John Wan','12Wan@umbc.edu','9876543213'),(13,'Ergun Simsik','13Simsik@umbc.edu','9876543214'),(14,'Masood Souresh','14Souresh@umbc.edu','9876543216'),(15,'Mehmet Sarica','15Sarica@umbc.edu','9876543217');
/*!40000 ALTER TABLE `lecturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `ExamID` int NOT NULL,
  `EnrollmentID` int NOT NULL,
  `Marks` int NOT NULL,
  KEY `ExamID` (`ExamID`),
  KEY `EnrollmentID` (`EnrollmentID`),
  CONSTRAINT `EnrollmentID` FOREIGN KEY (`EnrollmentID`) REFERENCES `enrollment` (`EnrollmentID`),
  CONSTRAINT `ExamID` FOREIGN KEY (`ExamID`) REFERENCES `exams` (`ExamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,1,65),(1,2,86),(5,3,86),(1,4,29),(5,5,53),(8,6,27),(5,7,24),(3,8,57),(1,9,62),(1,10,47),(5,11,90),(2,12,29),(3,13,43),(4,14,44),(10,15,94),(2,16,57),(4,17,73),(2,18,85),(5,19,28),(8,20,82),(10,21,93),(6,22,27),(7,23,21),(10,24,98),(7,25,49);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `no_of_corses_lecturer_teaches`
--

DROP TABLE IF EXISTS `no_of_corses_lecturer_teaches`;
/*!50001 DROP VIEW IF EXISTS `no_of_corses_lecturer_teaches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `no_of_corses_lecturer_teaches` AS SELECT 
 1 AS `LecturerName`,
 1 AS `No_Of_Courses_Tought`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `no_of_courses_enrolled`
--

DROP TABLE IF EXISTS `no_of_courses_enrolled`;
/*!50001 DROP VIEW IF EXISTS `no_of_courses_enrolled`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `no_of_courses_enrolled` AS SELECT 
 1 AS `StudentID`,
 1 AS `No_OF_Courses`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `ParentID` varchar(10) NOT NULL,
  `StudentID` int NOT NULL,
  `ParentName` varchar(30) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ParentID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `StudentID` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES ('p_100',100,'Alen Wallace','100Wallace@gmail.com','1234567890','apt 1'),('p_101',101,'Stone Levinson','101Levinson@gmail.com','1234567891','apt 2'),('p_102',102,'Ben Scott','102Scott@gmail.com','1234567892','apt 3'),('p_103',103,'Max Martin','103Martin@gmail.com','1234567893','apt 4'),('p_104',104,'Elon Kapoor','104Kapoor@gmail.com','1234567894','apt 5'),('p_105',105,'Gim Hudson','105Hudson@gmail.com','1234567895','apt 6'),('p_106',106,'Pia Porter','106Porter@gmail.com','1234567896','apt 7'),('p_107',107,'Samantha Bernard','107Bernard@gmail.com','1234567897','apt 8'),('p_108',108,'Louis Halpert','108Halpert@gmail.com','1234567898','apt 9'),('p_109',109,'Murali Gonuguntla','109Gonuguntla@gmail.com','1234567899','apt 10'),('p_110',110,'Prasad Gabbita','110Gabbita@gmail.com','1234567890','apt 11'),('p_111',109,'Leelavathi Gonuguntla','109Gonuguntla@gmail.com','1234567899','apt 12'),('p_112',106,'Amy Porter','106Porter@gmail.com','1234567896','apt 7');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `percent_passed`
--

DROP TABLE IF EXISTS `percent_passed`;
/*!50001 DROP VIEW IF EXISTS `percent_passed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `percent_passed` AS SELECT 
 1 AS `CourseName`,
 1 AS `pass_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Major` varchar(10) DEFAULT 'DS',
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (100,'David','Wallace','davidW@gmail.com','2010-11-17','M','CS'),(101,'Jan','Levinson','JanL@gmail.com','2010-05-11','F','CS'),(102,'Michael','Scott','MichaelS@gmail.com','2009-03-15','M','DS'),(103,'Angela','Martin','AngelaM@umbc.edu','2012-06-25','F','DS'),(104,'Kelly','Kapoor','KellyK@yahoo.com','2011-02-05','F','CS'),(105,'Stanley','Hudson','StanleyH@umbc.edu','2010-02-19','M','DS'),(106,'Josh','Porter','JoshP@yahoo.com','2009-09-05','M','DS'),(107,'Andy','Bernard','AndyB@gmail.com','2012-07-22','F','DS'),(108,'Jim','Halpert','JimH@umbc.edu','2010-10-01','M','CS'),(109,'Praveen','Gonuguntla','PraveenG@gmail.com','2010-11-17','M','DS'),(110,'Thulasi','Gabbita','ThulasiG@gmail.com','2010-11-17','F','DS');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `students_in_course`
--

DROP TABLE IF EXISTS `students_in_course`;
/*!50001 DROP VIEW IF EXISTS `students_in_course`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students_in_course` AS SELECT 
 1 AS `CourseName`,
 1 AS `students`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `students_not_enrolled`
--

DROP TABLE IF EXISTS `students_not_enrolled`;
/*!50001 DROP VIEW IF EXISTS `students_not_enrolled`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students_not_enrolled` AS SELECT 
 1 AS `StudentID`,
 1 AS `FirstName`,
 1 AS `LastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `students_passed`
--

DROP TABLE IF EXISTS `students_passed`;
/*!50001 DROP VIEW IF EXISTS `students_passed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students_passed` AS SELECT 
 1 AS `CourseName`,
 1 AS `passed`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `course_tought_by`
--

/*!50001 DROP VIEW IF EXISTS `course_tought_by`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `course_tought_by` AS select distinct `courses`.`CourseName` AS `CourseName`,`lecturers`.`LecturerName` AS `LecturerName` from ((`courses` join `enrollment` on((`courses`.`CourseID` = `enrollment`.`CourseID`))) join `lecturers` on((`enrollment`.`LecturerID` = `lecturers`.`LecturerID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cs_major_in_ds`
--

/*!50001 DROP VIEW IF EXISTS `cs_major_in_ds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cs_major_in_ds` AS select `student`.`StudentID` AS `StudentID`,`student`.`FirstName` AS `FirstName`,`student`.`LastName` AS `LastName`,`courses`.`CourseName` AS `COurseName` from ((`enrollment` join `student` on((`student`.`StudentID` = `enrollment`.`StudentID`))) join `courses` on((`enrollment`.`CourseID` = `courses`.`CourseID`))) where ((`enrollment`.`CourseID` like 'DA%') and (`student`.`Major` like 'CS%')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ds_major_in_cs`
--

/*!50001 DROP VIEW IF EXISTS `ds_major_in_cs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ds_major_in_cs` AS select `student`.`StudentID` AS `StudentID`,`student`.`FirstName` AS `FirstName`,`student`.`LastName` AS `LastName`,`courses`.`CourseName` AS `COurseName` from ((`enrollment` join `student` on((`student`.`StudentID` = `enrollment`.`StudentID`))) join `courses` on((`enrollment`.`CourseID` = `courses`.`CourseID`))) where ((`enrollment`.`CourseID` like 'CS%') and (`student`.`Major` like 'DS%')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emergency_contact`
--

/*!50001 DROP VIEW IF EXISTS `emergency_contact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emergency_contact` AS select `parent`.`StudentID` AS `StudentID`,`parent`.`ParentName` AS `ParentName`,`parent`.`PhoneNumber` AS `PhoneNumber` from (`parent` join `student` on((`parent`.`StudentID` = `student`.`StudentID`))) order by `parent`.`StudentID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grade_objained`
--

/*!50001 DROP VIEW IF EXISTS `grade_objained`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grade_objained` AS select `enrollment`.`StudentID` AS `StudentID`,`courses`.`CourseName` AS `CourseName`,`marks`.`Marks` AS `Marks`,`grades`.`Grade` AS `Grade` from ((((`marks` left join `grades` on(((`marks`.`Marks` >= `grades`.`MinMarks`) and (`marks`.`Marks` <= `grades`.`MaxMarks`)))) left join `enrollment` on((`marks`.`EnrollmentID` = `enrollment`.`EnrollmentID`))) left join `student` on((`enrollment`.`StudentID` = `student`.`StudentID`))) left join `courses` on((`enrollment`.`CourseID` = `courses`.`CourseID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `no_of_corses_lecturer_teaches`
--

/*!50001 DROP VIEW IF EXISTS `no_of_corses_lecturer_teaches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `no_of_corses_lecturer_teaches` AS select `coursestought`.`LecturerName` AS `LecturerName`,count(`coursestought`.`CourseName`) AS `No_Of_Courses_Tought` from (select distinct `courses`.`CourseName` AS `CourseName`,`lecturers`.`LecturerName` AS `LecturerName` from ((`courses` join `enrollment` on((`courses`.`CourseID` = `enrollment`.`CourseID`))) join `lecturers` on((`enrollment`.`LecturerID` = `lecturers`.`LecturerID`)))) `coursestought` group by `coursestought`.`LecturerName` order by `No_Of_Courses_Tought` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `no_of_courses_enrolled`
--

/*!50001 DROP VIEW IF EXISTS `no_of_courses_enrolled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `no_of_courses_enrolled` AS select `student`.`StudentID` AS `StudentID`,ifnull(`no_of`.`No_Of_Courses`,0) AS `No_OF_Courses` from (`student` left join (select `student`.`StudentID` AS `StudentID`,concat(`student`.`LastName`,' ',`student`.`FirstName`) AS `Name`,count(`enrollment`.`EnrollmentID`) AS `No_Of_Courses` from (`student` join `enrollment` on((`student`.`StudentID` = `enrollment`.`StudentID`))) group by `student`.`StudentID`) `no_of` on((`student`.`StudentID` = `no_of`.`StudentID`))) where (`no_of`.`No_Of_Courses` > 0) order by ifnull(`no_of`.`No_Of_Courses`,0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `percent_passed`
--

/*!50001 DROP VIEW IF EXISTS `percent_passed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `percent_passed` AS select `total_students`.`CourseName` AS `CourseName`,ifnull(((`passed`.`passed` / `total_students`.`students`) * 100),0) AS `pass_percent` from ((select `graded`.`CourseName` AS `CourseName`,count(`graded`.`Grade`) AS `students` from (select `enrollment`.`StudentID` AS `StudentID`,`courses`.`CourseName` AS `CourseName`,`marks`.`Marks` AS `Marks`,`grades`.`Grade` AS `Grade` from ((((`marks` left join `grades` on(((`marks`.`Marks` >= `grades`.`MinMarks`) and (`marks`.`Marks` <= `grades`.`MaxMarks`)))) left join `enrollment` on((`marks`.`EnrollmentID` = `enrollment`.`EnrollmentID`))) left join `student` on((`enrollment`.`StudentID` = `student`.`StudentID`))) left join `courses` on((`enrollment`.`CourseID` = `courses`.`CourseID`)))) `graded` group by `graded`.`CourseName`) `total_students` left join (select `graded`.`CourseName` AS `CourseName`,count(`graded`.`Grade`) AS `passed` from (select `enrollment`.`StudentID` AS `StudentID`,`courses`.`CourseName` AS `CourseName`,`marks`.`Marks` AS `Marks`,`grades`.`Grade` AS `Grade` from ((((`marks` left join `grades` on(((`marks`.`Marks` >= `grades`.`MinMarks`) and (`marks`.`Marks` <= `grades`.`MaxMarks`)))) left join `enrollment` on((`marks`.`EnrollmentID` = `enrollment`.`EnrollmentID`))) left join `student` on((`enrollment`.`StudentID` = `student`.`StudentID`))) left join `courses` on((`enrollment`.`CourseID` = `courses`.`CourseID`)))) `graded` where (`graded`.`Grade` <> 'F') group by `graded`.`CourseName`) `passed` on((`total_students`.`CourseName` = `passed`.`CourseName`))) order by ifnull(((`passed`.`passed` / `total_students`.`students`) * 100),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students_in_course`
--

/*!50001 DROP VIEW IF EXISTS `students_in_course`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `students_in_course` AS select `graded`.`CourseName` AS `CourseName`,count(`graded`.`Grade`) AS `students` from (select `enrollment`.`StudentID` AS `StudentID`,`courses`.`CourseName` AS `CourseName`,`marks`.`Marks` AS `Marks`,`grades`.`Grade` AS `Grade` from ((((`marks` left join `grades` on(((`marks`.`Marks` >= `grades`.`MinMarks`) and (`marks`.`Marks` <= `grades`.`MaxMarks`)))) left join `enrollment` on((`marks`.`EnrollmentID` = `enrollment`.`EnrollmentID`))) left join `student` on((`enrollment`.`StudentID` = `student`.`StudentID`))) left join `courses` on((`enrollment`.`CourseID` = `courses`.`CourseID`)))) `graded` group by `graded`.`CourseName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students_not_enrolled`
--

/*!50001 DROP VIEW IF EXISTS `students_not_enrolled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `students_not_enrolled` AS select `registred`.`StudentID` AS `StudentID`,`registred`.`FirstName` AS `FirstName`,`registred`.`LastName` AS `LastName` from (select `student`.`StudentID` AS `StudentID`,`student`.`FirstName` AS `FirstName`,`student`.`LastName` AS `LastName`,`student`.`Email` AS `Email`,`student`.`DOB` AS `DOB`,`student`.`Gender` AS `Gender`,`student`.`Major` AS `Major`,`enrollment`.`EnrollmentID` AS `EnrollmentID`,`enrollment`.`LecturerID` AS `LecturerID`,`enrollment`.`CourseID` AS `CourseID`,`enrollment`.`Term` AS `Term` from (`student` left join `enrollment` on((`student`.`StudentID` = `enrollment`.`StudentID`)))) `registred` where (`registred`.`EnrollmentID` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students_passed`
--

/*!50001 DROP VIEW IF EXISTS `students_passed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `students_passed` AS select `graded`.`CourseName` AS `CourseName`,count(`graded`.`Grade`) AS `passed` from (select `enrollment`.`StudentID` AS `StudentID`,`courses`.`CourseName` AS `CourseName`,`marks`.`Marks` AS `Marks`,`grades`.`Grade` AS `Grade` from ((((`marks` left join `grades` on(((`marks`.`Marks` >= `grades`.`MinMarks`) and (`marks`.`Marks` <= `grades`.`MaxMarks`)))) left join `enrollment` on((`marks`.`EnrollmentID` = `enrollment`.`EnrollmentID`))) left join `student` on((`enrollment`.`StudentID` = `student`.`StudentID`))) left join `courses` on((`enrollment`.`CourseID` = `courses`.`CourseID`)))) `graded` where (`graded`.`Grade` <> 'F') group by `graded`.`CourseName` */;
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

-- Dump completed on 2022-12-12 21:40:54
