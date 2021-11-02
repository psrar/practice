CREATE DATABASE  IF NOT EXISTS `equipment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `equipment`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: equipment
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(60) DEFAULT NULL,
  `model` varchar(60) DEFAULT NULL,
  `detail_type` int NOT NULL,
  `equipment` int DEFAULT NULL,
  `warehouse` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_type` (`detail_type`),
  KEY `equipment` (`equipment`),
  KEY `warehouse` (`warehouse`),
  CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`detail_type`) REFERENCES `detail_type` (`id`),
  CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`equipment`) REFERENCES `equipment` (`inventory_num`),
  CONSTRAINT `detail_ibfk_3` FOREIGN KEY (`warehouse`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (1,'GIGABYTE','GA-A320M-H',3,1,NULL),(2,'GIGABYTE','GA-A320M-H',3,2,NULL),(3,'GIGABYTE','GA-A320M-H',3,3,NULL),(4,'GIGABYTE','GA-A320M-H',3,4,NULL),(5,'GIGABYTE','GA-A320M-H',3,5,NULL),(6,'GIGABYTE','GA-A320M-H',3,6,NULL),(7,'GIGABYTE','GA-A320M-H',3,7,NULL),(8,'GIGABYTE','GA-A320M-H',3,8,NULL),(9,'GIGABYTE','GA-A320M-H',3,9,NULL),(10,'GIGABYTE','GA-A320M-H',3,10,NULL),(11,'GIGABYTE','GA-A320M-H',3,11,NULL),(12,'GIGABYTE','GA-A320M-H',3,12,NULL),(13,'GIGABYTE','GA-A320M-H',3,13,NULL),(14,'GIGABYTE','GA-A320M-H',3,14,NULL),(15,'GIGABYTE','GA-A320M-H',3,15,NULL),(16,'GIGABYTE','GA-A320M-H',3,16,NULL),(17,'GIGABYTE','GA-A320M-H',3,17,NULL),(18,'GIGABYTE','GA-A320M-H',3,18,NULL),(19,'GIGABYTE','GA-A320M-H',3,19,NULL),(20,'GIGABYTE','GA-A320M-H',3,20,NULL),(21,'Intel','Core i5 9400F',4,1,NULL),(22,'Intel','Core i5 9400F',4,2,NULL),(23,'Intel','Core i5 9400F',4,3,NULL),(24,'Intel','Core i5 9400F',4,4,NULL),(25,'Intel','Core i5 9400F',4,5,NULL),(26,'Intel','Core i5 9400F',4,6,NULL),(27,'Intel','Core i5 9400F',4,7,NULL),(28,'Intel','Core i5 9400F',4,8,NULL),(29,'Intel','Core i5 9400F',4,9,NULL),(30,'Intel','Core i5 9400F',4,10,NULL),(31,'Intel','Core i5 9400F',4,11,NULL),(32,'Intel','Core i5 9400F',4,12,NULL),(33,'Intel','Core i5 9400F',4,13,NULL),(34,'Intel','Core i5 9400F',4,14,NULL),(35,'Intel','Core i5 9400F',4,15,NULL),(36,'Intel','Core i5 9400F',4,16,NULL),(37,'Intel','Core i5 9400F',4,17,NULL),(38,'Intel','Core i5 9400F',4,18,NULL),(39,'Intel','Core i5 9400F',4,19,NULL),(40,'Intel','Core i5 9400F',4,20,NULL),(41,'MSI NVIDIA','GeForce GT 730',2,1,NULL),(42,'MSI NVIDIA','GeForce GT 730',2,2,NULL),(43,'MSI NVIDIA','GeForce GT 730',2,3,NULL),(44,'MSI NVIDIA','GeForce GT 730',2,4,NULL),(45,'MSI NVIDIA','GeForce GT 730',2,5,NULL),(46,'MSI NVIDIA','GeForce GT 730',2,6,NULL),(47,'MSI NVIDIA','GeForce GT 730',2,7,NULL),(48,'MSI NVIDIA','GeForce GT 730',2,8,NULL),(49,'MSI NVIDIA','GeForce GT 730',2,9,NULL),(50,'MSI NVIDIA','GeForce GT 730',2,10,NULL),(51,'MSI NVIDIA','GeForce GT 730',2,11,NULL),(52,'MSI NVIDIA','GeForce GT 730',2,12,NULL),(53,'MSI NVIDIA','GeForce GT 730',2,13,NULL),(54,'MSI NVIDIA','GeForce GT 730',2,14,NULL),(55,'MSI NVIDIA','GeForce GT 730',2,15,NULL),(56,'MSI NVIDIA','GeForce GT 730',2,16,NULL),(57,'MSI NVIDIA','GeForce GT 730',2,17,NULL),(58,'MSI NVIDIA','GeForce GT 730',2,18,NULL),(59,'MSI NVIDIA','GeForce GT 730',2,19,NULL),(60,'MSI NVIDIA','GeForce GT 730',2,20,NULL),(61,'WD','500GB WD5000AZLX',6,1,NULL),(62,'WD','500GB WD5000AZLX',6,2,NULL),(63,'WD','500GB WD5000AZLX',6,3,NULL),(64,'WD','500GB WD5000AZLX',6,4,NULL),(65,'WD','500GB WD5000AZLX',6,5,NULL),(66,'WD','500GB WD5000AZLX',6,6,NULL),(67,'WD','500GB WD5000AZLX',6,7,NULL),(68,'WD','500GB WD5000AZLX',6,8,NULL),(69,'WD','500GB WD5000AZLX',6,9,NULL),(70,'WD','500GB WD5000AZLX',6,10,NULL),(71,'WD','500GB WD5000AZLX',6,11,NULL),(72,'WD','500GB WD5000AZLX',6,12,NULL),(73,'WD','500GB WD5000AZLX',6,13,NULL),(74,'WD','500GB WD5000AZLX',6,14,NULL),(75,'WD','500GB WD5000AZLX',6,15,NULL),(76,'WD','500GB WD5000AZLX',6,16,NULL),(77,'WD','500GB WD5000AZLX',6,17,NULL),(78,'WD','500GB WD5000AZLX',6,18,NULL),(79,'WD','500GB WD5000AZLX',6,19,NULL),(80,'WD','500GB WD5000AZLX',6,20,NULL),(81,'Aerocool','VX PLUS 700',8,1,NULL),(82,'Aerocool','VX PLUS 700',8,2,NULL),(83,'Aerocool','VX PLUS 700',8,3,NULL),(84,'Aerocool','VX PLUS 700',8,4,NULL),(85,'Aerocool','VX PLUS 700',8,5,NULL),(86,'Aerocool','VX PLUS 700',8,6,NULL),(87,'Aerocool','VX PLUS 700',8,7,NULL),(88,'Aerocool','VX PLUS 700',8,8,NULL),(89,'Aerocool','VX PLUS 700',8,9,NULL),(90,'Aerocool','VX PLUS 700',8,10,NULL),(91,'Aerocool','VX PLUS 700',8,11,NULL),(92,'Aerocool','VX PLUS 700',8,12,NULL),(93,'Aerocool','VX PLUS 700',8,13,NULL),(94,'Aerocool','VX PLUS 700',8,14,NULL),(95,'Aerocool','VX PLUS 700',8,15,NULL),(96,'Aerocool','VX PLUS 700',8,16,NULL),(97,'Aerocool','VX PLUS 700',8,17,NULL),(98,'Aerocool','VX PLUS 700',8,18,NULL),(99,'Aerocool','VX PLUS 700',8,19,NULL),(100,'Aerocool','VX PLUS 700',8,20,NULL);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_type`
--

DROP TABLE IF EXISTS `detail_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_type`
--

LOCK TABLES `detail_type` WRITE;
/*!40000 ALTER TABLE `detail_type` DISABLE KEYS */;
INSERT INTO `detail_type` VALUES (1,'Картридж для принтера'),(2,'Видеокарта'),(3,'Материнская плата'),(4,'Процессор'),(5,'Кулер'),(6,'HDD'),(7,'SSD'),(8,'Блок питания');
/*!40000 ALTER TABLE `detail_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fio` varchar(100) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (6,'Малыхина Ольга Юрьевна','Заведующая учебно-вычислительным центромб преподаватель'),(7,'Осипова Надежда Михайловна','Преподаватель'),(8,'Митрошенкова Елена Алексеевна','Преподаватель'),(9,'Петренко Людмила Борисовна','Преподаватель'),(10,'Тамахина Ирина Андрониковна','Преподаватель'),(11,'Жилкина Надежда Александровна','Преподаватель');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `inventory_num` int NOT NULL,
  `room` int DEFAULT NULL,
  `warehouse` int DEFAULT NULL,
  `equipment_type` int NOT NULL,
  PRIMARY KEY (`inventory_num`),
  KEY `room` (`room`),
  KEY `warehouse` (`warehouse`),
  KEY `equipment_type` (`equipment_type`),
  CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`room`) REFERENCES `room` (`num`),
  CONSTRAINT `equipment_ibfk_2` FOREIGN KEY (`warehouse`) REFERENCES `warehouse` (`id`),
  CONSTRAINT `equipment_ibfk_3` FOREIGN KEY (`equipment_type`) REFERENCES `equipment_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,122,NULL,1),(2,122,NULL,1),(3,122,NULL,1),(4,122,NULL,1),(5,122,NULL,1),(6,122,NULL,1),(7,122,NULL,1),(8,122,NULL,1),(9,122,NULL,1),(10,122,NULL,1),(11,123,NULL,1),(12,123,NULL,1),(13,123,NULL,1),(14,123,NULL,1),(15,123,NULL,1),(16,123,NULL,1),(17,123,NULL,1),(18,123,NULL,1),(19,123,NULL,1),(20,123,NULL,1),(21,122,NULL,2),(22,122,NULL,2),(23,122,NULL,2),(24,122,NULL,2),(25,122,NULL,2),(26,122,NULL,2),(27,122,NULL,2),(28,122,NULL,2),(29,122,NULL,2),(30,122,NULL,2),(31,123,NULL,2),(32,123,NULL,2),(33,123,NULL,2),(34,123,NULL,2),(35,123,NULL,2),(36,123,NULL,2),(37,123,NULL,2),(38,123,NULL,2),(39,123,NULL,2),(40,123,NULL,2),(41,122,NULL,3),(42,122,NULL,3),(43,122,NULL,3),(44,122,NULL,3),(45,122,NULL,3),(46,122,NULL,3),(47,122,NULL,3),(48,122,NULL,3),(49,122,NULL,3),(50,122,NULL,3),(51,123,NULL,2),(52,123,NULL,3),(53,123,NULL,3),(54,123,NULL,3),(55,123,NULL,3),(56,123,NULL,3),(57,123,NULL,3),(58,123,NULL,3),(59,123,NULL,3),(60,123,NULL,3),(61,122,NULL,4),(62,122,NULL,4),(63,122,NULL,4),(64,122,NULL,4),(65,122,NULL,4),(66,122,NULL,4),(67,122,NULL,4),(68,122,NULL,4),(69,122,NULL,4),(70,122,NULL,4),(71,123,NULL,4),(72,123,NULL,4),(73,123,NULL,4),(74,123,NULL,4),(75,123,NULL,4),(76,123,NULL,4),(77,123,NULL,4),(78,123,NULL,4),(79,123,NULL,4),(80,123,NULL,4);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_type`
--

DROP TABLE IF EXISTS `equipment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_type`
--

LOCK TABLES `equipment_type` WRITE;
/*!40000 ALTER TABLE `equipment_type` DISABLE KEYS */;
INSERT INTO `equipment_type` VALUES (1,'Системный блок'),(2,'Монитор'),(3,'Компьютерная мышь'),(4,'Клавиатура'),(5,'Смарт-доска'),(6,'Ноутбук'),(7,'Принтер'),(8,'Сканер'),(9,'Проектор'),(10,'МФУ'),(11,'ИБП');
/*!40000 ALTER TABLE `equipment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exploitation`
--

DROP TABLE IF EXISTS `exploitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exploitation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room` int NOT NULL,
  `responsible` int NOT NULL,
  `dt_start` datetime NOT NULL,
  `dt_end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `room` (`room`),
  KEY `responsible` (`responsible`),
  CONSTRAINT `exploitation_ibfk_1` FOREIGN KEY (`room`) REFERENCES `room` (`num`),
  CONSTRAINT `exploitation_ibfk_2` FOREIGN KEY (`responsible`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exploitation`
--

LOCK TABLES `exploitation` WRITE;
/*!40000 ALTER TABLE `exploitation` DISABLE KEYS */;
INSERT INTO `exploitation` VALUES (1,122,6,'2021-10-04 09:00:00','2021-10-04 10:30:00'),(2,122,7,'2021-10-04 10:50:00','2021-10-04 12:10:00'),(3,122,8,'2021-10-04 12:40:00','2021-10-04 14:00:00'),(4,122,8,'2021-10-04 14:30:00','2021-10-04 16:00:00'),(5,122,9,'2021-10-05 09:00:00','2021-10-05 10:30:00'),(6,122,10,'2021-10-05 10:50:00','2021-10-05 12:10:00'),(7,122,9,'2021-10-05 12:40:00','2021-10-05 14:00:00'),(8,122,8,'2021-10-05 14:30:00','2021-10-05 16:00:00'),(9,123,7,'2021-10-04 09:00:00','2021-10-04 10:30:00'),(10,123,6,'2021-10-04 10:50:00','2021-10-04 12:10:00'),(11,123,7,'2021-10-04 12:40:00','2021-10-04 14:00:00'),(12,123,10,'2021-10-04 14:30:00','2021-10-04 16:00:00'),(13,123,6,'2021-10-05 09:00:00','2021-10-04 10:30:00'),(14,123,8,'2021-10-05 10:50:00','2021-10-05 12:10:00'),(15,123,11,'2021-10-05 12:40:00','2021-10-04 14:00:00'),(16,123,11,'2021-10-05 14:30:00','2021-10-05 16:00:00');
/*!40000 ALTER TABLE `exploitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `num` int NOT NULL,
  `responsible` int NOT NULL,
  PRIMARY KEY (`num`),
  KEY `responsible` (`responsible`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`responsible`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (122,6),(123,6),(124,6),(210,6);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descr` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Склад в подвале'),(2,'Склад на пятом этаже'),(3,'Склад на первом этаже');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-31 13:58:37
