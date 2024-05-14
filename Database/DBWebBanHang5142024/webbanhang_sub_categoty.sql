-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: webbanhang
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `sub_categoty`
--

DROP TABLE IF EXISTS `sub_categoty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categoty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idParent` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int NOT NULL,
  `isActive` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idParent` (`idParent`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categoty`
--

LOCK TABLES `sub_categoty` WRITE;
/*!40000 ALTER TABLE `sub_categoty` DISABLE KEYS */;
INSERT INTO `sub_categoty` VALUES (1,1,'Áo sơ mi nam ',0,1),(2,1,'Quần dài nam ',0,0),(3,1,'Áo polo nam',0,1),(4,2,'Áo ngắn tay nữ',0,1),(5,1,'Áo ngắn tay nam ',0,0),(7,1,'Áo khoác nam ',0,1),(8,2,'Áo khoác nữ ',0,1),(14,12,'Quần short nam',0,1),(15,12,'Quần  ngắn  nữ',0,1),(16,15,'Áo thể thao nam',0,1),(17,15,'Áo thể thao nữ ',0,1),(18,1,'ao thun mua dong',0,0),(19,2,'áo polo nữ',0,1),(20,1,'áo thun mùa hè',0,1),(21,2,'váy nữ',0,1),(22,3,'Giày Sneaker',0,1),(23,4,'Luxury Watch',0,1),(24,5,'Nón',0,1);
/*!40000 ALTER TABLE `sub_categoty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14 11:07:45
