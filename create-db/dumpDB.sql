-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: employees
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Ком. департамент'),(2,'Технический департамент'),(3,'Отдел кадров'),(4,'IT департамент'),(5,'Директор');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` bigint(20) unsigned NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `boss` tinyint(4) DEFAULT '0',
  `boss_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_department_id` (`department_id`),
  CONSTRAINT `employee_department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,5,'Сашок дир',NULL,NULL,1,1,'0'),(2,1,'Александр',NULL,NULL,2,1,'0'),(3,2,'Сергей',NULL,NULL,3,1,'0'),(4,3,'Виталий',NULL,NULL,4,1,'0'),(5,4,'Андрей',NULL,NULL,5,1,'0'),(6,3,'Егор',NULL,NULL,6,0,'1'),(7,3,'Самуил',NULL,NULL,7,0,'2'),(8,3,'Григорий',NULL,NULL,8,0,'3'),(9,4,'Олег',NULL,NULL,9,0,'4'),(10,4,'Алексей',NULL,NULL,9,0,'5'),(11,4,'Алексей',NULL,NULL,9,0,'5'),(12,4,'Алексей1',NULL,NULL,9,0,'5'),(13,5,'Алексей2',NULL,NULL,11,0,'1'),(14,4,'Алексей3',NULL,NULL,9,0,'2'),(15,3,'Алексей4',NULL,NULL,8,0,'3'),(16,2,'Алексей5',NULL,NULL,7,0,'4'),(17,3,'Алексей6',NULL,NULL,6,0,'3'),(18,2,'Алексей7',NULL,NULL,7,0,'4'),(19,1,'Алексей8',NULL,NULL,7,0,'2'),(20,3,'Алексей9',NULL,NULL,8,0,'3'),(21,2,'Алексей10',NULL,NULL,9,0,'4'),(22,4,'Алексей11',NULL,NULL,9,0,'5'),(23,4,'Алексей12',NULL,NULL,9,0,'5'),(24,4,'Алексей13',NULL,NULL,9,0,'5'),(25,4,'Алексей14',NULL,NULL,9,0,'5'),(26,4,'Алексей15',NULL,NULL,9,0,'5'),(27,4,'Николай2',NULL,NULL,9,0,'5');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Директор'),(2,'Коммерческий директор'),(3,'Технический директор'),(4,'Директор отдела кадров'),(5,'Директор IT'),(6,'Другой сотрудник отдела продаж'),(7,'Сотрудник отдела продаж'),(8,'Сотрудник отдела кадров'),(9,'Сотрудник отдела IT');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-22 14:30:39
