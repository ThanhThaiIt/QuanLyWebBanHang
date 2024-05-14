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
-- Table structure for table `oders`
--

DROP TABLE IF EXISTS `oders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTransaction` int NOT NULL,
  `idProduct` int NOT NULL,
  `qlt` int NOT NULL,
  `price` float NOT NULL,
  `price_old` float NOT NULL,
  `sale` int NOT NULL DEFAULT '0',
  `warranty` int NOT NULL DEFAULT '0',
  `idSize` int NOT NULL,
  `idColor` int NOT NULL,
  `url_order` varchar(255) NOT NULL,
  `create_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTransaction` (`idTransaction`),
  KEY `idProduct` (`idProduct`),
  KEY `idColor` (`idColor`),
  KEY `idSize` (`idSize`),
  CONSTRAINT `oders_ibfk_1` FOREIGN KEY (`idTransaction`) REFERENCES `transaction` (`id`),
  CONSTRAINT `oders_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  CONSTRAINT `oders_ibfk_3` FOREIGN KEY (`idColor`) REFERENCES `color` (`id`),
  CONSTRAINT `oders_ibfk_4` FOREIGN KEY (`idSize`) REFERENCES `size` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oders`
--

LOCK TABLES `oders` WRITE;
/*!40000 ALTER TABLE `oders` DISABLE KEYS */;
INSERT INTO `oders` VALUES (80,75,57,3,50,50,0,0,4,1,'null','2023-07-05'),(81,76,57,1,50,50,0,0,3,1,'null','2023-07-05'),(82,77,52,1,30,30,0,0,2,1,'null','2023-07-05'),(83,78,68,1,20,20,0,0,4,1,'null','2023-07-05'),(84,79,73,1,30,30,0,0,3,1,'null','2023-07-05'),(85,80,57,1,50,50,0,0,4,1,'null','2023-07-05'),(86,81,64,1,20,20,0,0,2,4,'null','2023-07-05'),(87,82,68,1,20,20,0,0,4,3,'null','2023-07-05'),(88,83,64,1,20,20,0,0,2,3,'null','2023-07-05'),(89,83,71,1,30,30,0,0,1,4,'null','2023-07-05'),(90,84,71,1,30,30,0,0,4,4,'null','2023-07-05');
/*!40000 ALTER TABLE `oders` ENABLE KEYS */;
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
