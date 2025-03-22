-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: learning_management_system
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `assignment_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,1,'Python Basics','Complete exercises on variables and loops.','2025-04-15'),(2,2,'Data Analysis','Analyze a dataset using Python libraries.','2025-05-25'),(3,3,'Web Page Design','Create a responsive web page using HTML and CSS.','2025-06-30'),(4,4,'Machine Learning Model','Implement a simple regression model.','2025-07-15'),(5,5,'Cloud Setup','Deploy an application on a cloud platform.','2025-08-10'),(6,6,'Cybersecurity Report','Identify and report security vulnerabilities.','2025-09-05'),(7,7,'AI Chatbot','Develop a basic chatbot using AI techniques.','2025-10-10'),(8,8,'SEO Strategy','Design an SEO strategy for a website.','2025-03-20'),(9,9,'Mobile App Prototype','Create a wireframe for a mobile app.','2025-04-15'),(10,10,'Blockchain Transaction','Simulate a simple blockchain transaction.','2025-05-30'),(11,11,'Software Design','Document software requirements and architecture.','2025-06-20'),(12,12,'Big Data Processing','Process large datasets using Hadoop or Spark.','2025-07-25'),(13,13,'Game Prototype','Develop a simple game prototype in Unity.','2025-08-15'),(14,14,'Ethical Hacking Task','Perform a penetration test on a test system.','2025-09-20'),(15,15,'Agile Project Plan','Create an Agile sprint plan for a project.','2025-10-05'),(16,16,'UI Wireframe','Design a wireframe for a web application.','2025-03-30'),(17,17,'IoT Device Setup','Configure an IoT device for smart home use.','2025-04-20'),(18,18,'Cloud Security Audit','Assess security risks in a cloud setup.','2025-05-10'),(19,19,'FinTech Case Study','Analyze a FinTech company\'s business model.','2025-06-05'),(20,20,'Business Dashboard','Create a data dashboard for business insights.','2025-07-10');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Introduction to Python','Learn the basics of Python programming.','2025-04-01','2025-06-30',101),(2,'Data Science Fundamentals','An introduction to data science concepts.','2025-05-10','2025-08-10',102),(3,'Web Development Bootcamp','Full-stack web development with HTML, CSS, and JavaScript.','2025-06-15','2025-09-15',103),(4,'Machine Learning Basics','Understanding machine learning algorithms.','2025-07-01','2025-10-01',104),(5,'Cloud Computing Essentials','Introduction to cloud platforms and services.','2025-08-05','2025-11-05',105),(6,'Cybersecurity Fundamentals','Learn the principles of cybersecurity.','2025-09-12','2025-12-12',106),(7,'Artificial Intelligence','Explore AI concepts and applications.','2025-10-20','2026-01-20',107),(8,'Digital Marketing','SEO, SEM, and social media marketing strategies.','2025-03-01','2025-06-01',108),(9,'Mobile App Development','Building Android and iOS apps.','2025-04-10','2025-07-10',109),(10,'Blockchain Technology','Introduction to blockchain and cryptocurrency.','2025-05-15','2025-08-15',110),(11,'Software Engineering','Principles of software design and development.','2025-06-01','2025-09-01',111),(12,'Big Data Analytics','Handling and analyzing large datasets.','2025-07-10','2025-10-10',112),(13,'Game Development','Developing games using Unity and Unreal Engine.','2025-08-01','2025-11-01',113),(14,'Ethical Hacking','Penetration testing and ethical hacking techniques.','2025-09-05','2025-12-05',114),(15,'Project Management','Managing projects efficiently using Agile and Scrum.','2025-10-01','2026-01-01',115),(16,'UI/UX Design','Designing intuitive and engaging user experiences.','2025-03-15','2025-06-15',116),(17,'Internet of Things (IoT)','Connecting smart devices with IoT technologies.','2025-04-20','2025-07-20',117),(18,'Cloud Security','Securing cloud environments and data.','2025-05-25','2025-08-25',118),(19,'Financial Technology (FinTech)','Exploring innovative financial solutions.','2025-06-10','2025-09-10',119),(20,'Business Analytics','Data-driven decision-making for businesses.','2025-07-15','2025-10-15',120);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `Enrollment_id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  PRIMARY KEY (`Enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (201,1,1,'2025-03-25'),(202,2,2,'2025-04-15'),(203,3,3,'2025-05-20'),(204,4,4,'2025-06-10'),(205,5,5,'2025-07-01'),(206,6,6,'2025-08-01'),(207,7,7,'2025-09-10'),(208,8,8,'2025-02-20'),(209,9,9,'2025-03-30'),(210,10,10,'2025-04-25'),(211,11,11,'2025-05-10'),(212,12,12,'2025-06-15'),(213,13,13,'2025-07-05'),(214,14,14,'2025-08-15'),(215,15,15,'2025-09-25'),(216,16,16,'2025-02-28'),(217,17,17,'2025-03-22'),(218,18,18,'2025-04-30'),(219,19,19,'2025-05-18'),(220,20,20,'2025-06-05');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `grade_id` int NOT NULL,
  `assignment_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `grade` char(2) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `assignment_id` (`assignment_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`assignment_id`),
  CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1001,1,1,'A','2025-07-09'),(1002,2,2,'B','2025-07-10'),(1003,3,3,'A','2025-07-11'),(1004,4,4,'C','2025-07-12'),(1005,5,5,'B','2025-07-13'),(1006,6,6,'A','2025-07-14'),(1007,7,7,'B','2025-07-15'),(1008,8,8,'C','2025-07-16'),(1009,9,9,'A','2025-07-17'),(1010,10,10,'B','2025-07-18'),(1011,11,11,'A','2025-07-19'),(1012,12,12,'C','2025-07-20'),(1013,13,13,'B','2025-07-21'),(1014,14,14,'A','2025-07-22'),(1015,15,15,'C','2025-07-23'),(1016,16,16,'B','2025-07-24'),(1017,17,17,'A','2025-07-25'),(1018,18,18,'B','2025-07-26'),(1019,19,19,'C','2025-07-27'),(1020,20,20,'A','2025-07-28');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `instructor_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (101,'Sarah','Taylor','sarah.taylor@gmail.com','2015-06-15'),(102,'David','Miller','david.miller@gmail.com','2016-09-02'),(103,'Elizabeth','Harris','elizabeth.harris@gmail.com','2014-11-20'),(104,'John','Martinez','john.martinez@gmail.com','2017-05-10'),(105,'Amanda','Thompson','amanda.thompson@gmail.com','2018-02-25'),(106,'Matthew','Garcia','matthew.garcia@gmail.com','2016-01-11'),(107,'Ashley','Rodriguez','ashley.rodriguez@gmail.com','2015-08-30'),(108,'Daniel','Wilson','daniel.wilson@gmail.com','2017-04-07'),(109,'Jessica','Lewis','jessica.lewis@gmail.com','2014-09-18'),(110,'Christopher','Young','christopher.young@gmail.com','2016-12-03'),(111,'Emily','Walker','emily.walker@gmail.com','2015-10-19'),(112,'Andrew','Scott','andrew.scott@gmail.com','2017-01-22'),(113,'Samantha','Green','samantha.green@gmail.com','2016-07-09'),(114,'Benjamin','Adams','benjamin.adams@gmail.com','2018-06-30'),(115,'Rachel','Baker','rachel.baker@gmail.com','2014-04-12'),(116,'James','Nelson','james.nelson@gmail.com','2017-10-03'),(117,'Olivia','King','olivia.king@gmail.com','2015-03-21'),(118,'William','Lee','william.lee@gmail.com','2014-12-05'),(119,'Sophia','Carter','sophia.carter@gmail.com','2016-02-27'),(120,'Ethan','Perez','ethan.perez@gmail.com','2018-08-16');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `instructorview`
--

DROP TABLE IF EXISTS `instructorview`;
/*!50001 DROP VIEW IF EXISTS `instructorview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `instructorview` AS SELECT 
 1 AS `instructor_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `hire_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Thulasi','vani','thulasi.gtv@gmail.com','2001-04-15','2019-09-01'),(2,'kavitha','manickam','kavi.manickam@gmail.com','2002-02-10','2020-08-25'),(3,'Valar','mathi','valar.mathi@gmail.com','2000-05-22','2018-01-14'),(4,'Keerthi','selvam','keerthi.selvam@gmail.com','2003-07-30','2021-03-15'),(5,'Nishvi','kandasamy','nishvi.princess@gmail.com','2001-11-03','2019-10-19'),(6,'Moni','kutty','moni.kutty@gmail.com','2002-12-25','2020-01-10'),(7,'Maha','rani','maha.rani@gmail.com','2000-08-17','2018-09-04'),(8,'Isabella','rani','isabella.rani@gmail.com','2001-03-12','2019-06-21'),(9,'Aisha','begam','aisha.begam@gmail.com','2003-05-02','2021-11-28'),(10,'Kavi','priya','kavi.priya@gmail.com','2002-01-27','2020-05-06'),(11,'Priya','dharshini','priya.dharshini@gmail.com','2000-09-11','2018-02-19'),(12,'Jana','priya','jana.priya@gmail.com','2001-06-30','2019-07-23'),(13,'Divya','dharshini','divya.dharshini@gmail.com','2002-04-12','2020-09-08'),(14,'Rakshi','kumari','rakshi.kumari@gmail.com','2003-08-25','2021-12-14'),(15,'Thara','sri','thara.sri@gmail.com','2000-10-29','2018-03-13'),(16,'Asha','banu','asha.banu@gmail.com','2002-09-18','2020-04-02'),(17,'Deepi','sri','deepi.sri@gmail.com','2003-01-05','2021-01-19'),(18,'Gayu','priya','gayu.priya@gmail.com','2001-12-09','2019-11-07'),(19,'Kali','thrisha','kali.thrisha@gmail.com','2000-02-20','2018-07-31'),(20,'Sathya','priya','sathya.priya@gmail.com','2002-03-22','2020-10-14');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentview`
--

DROP TABLE IF EXISTS `studentview`;
/*!50001 DROP VIEW IF EXISTS `studentview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studentview` AS SELECT 
 1 AS `student_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `enrollment_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'learning_management_system'
--
/*!50003 DROP PROCEDURE IF EXISTS `assigned_instructor_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assigned_instructor_records`()
begin
SELECT * FROM Course 
WHERE instructor_id IS NULL;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `assignment_id_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assignment_id_records`()
begin
SELECT assignment_id, COUNT(*) AS total_grades  FROM Grade  
GROUP BY assignment_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `assignment_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assignment_records`()
begin
SELECT assignment_id, title, LENGTH(description) AS description_length FROM Assignment
ORDER BY description_length DESC
LIMIT 5; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `course_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `course_records`()
begin
select course_id,course_name from course
where course_id NOT IN (select distinct course_id from enrollment);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `grade_assignmen_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `grade_assignmen_records`()
begin
SELECT COUNT(*) AS total_submissions  FROM Grade 
WHERE assignment_id = 0005; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `grade_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `grade_records`()
begin
SELECT * FROM Grade 
WHERE student_id = 101  
ORDER BY submission_date DESC  
LIMIT 1;  -- Change 101 to the student's ID
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `instructor_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `instructor_records`()
begin
SELECT * FROM Instructor WHERE hire_date > "2015-10-19";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `last_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `last_name`()
begin
SELECT last_name, COUNT(*) AS total FROM Student 
GROUP BY last_name 
HAVING COUNT(*) > 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `student_birth_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `student_birth_records`()
begin
SELECT * FROM Student WHERE date_of_birth < "2001-04-15";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `student_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `student_records`()
begin
select student_id,first_name,last_name from student
where student_id NOT IN (select distinct student_id from enrollment);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `instructorview`
--

/*!50001 DROP VIEW IF EXISTS `instructorview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `instructorview` AS select `instructor`.`instructor_id` AS `instructor_id`,`instructor`.`first_name` AS `first_name`,`instructor`.`last_name` AS `last_name`,`instructor`.`email` AS `email`,`instructor`.`hire_date` AS `hire_date` from `instructor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studentview`
--

/*!50001 DROP VIEW IF EXISTS `studentview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentview` AS select `student`.`student_id` AS `student_id`,`student`.`first_name` AS `first_name`,`student`.`last_name` AS `last_name`,`student`.`email` AS `email`,`student`.`enrollment_date` AS `enrollment_date` from `student` */;
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

-- Dump completed on 2025-03-22  8:32:54
