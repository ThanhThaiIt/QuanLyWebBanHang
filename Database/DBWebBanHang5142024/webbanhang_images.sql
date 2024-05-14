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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `idIMG` int NOT NULL AUTO_INCREMENT,
  `idProduct` int NOT NULL,
  `nameImg` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `url1` varchar(255) NOT NULL,
  `url2` varchar(255) NOT NULL,
  `url3` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`idIMG`),
  KEY `idProduct` (`idProduct`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (36,41,'','/assets/images/fashion/product/aopolongantay.jpg','/assets/images/fashion/product/apm3519-vng-ao-polo-nam-yody-3.jpg','',''),(47,52,'','/assets/images/fashion/product/9.jpg','/assets/images/fashion/product/apm3725-xnt-4-2.jpg','',''),(50,55,'','/assets/images/fashion/product/36.jpg','/assets/images/fashion/product/43.jpg','',''),(51,56,'','/assets/images/fashion/product/apm3519-vng-ao-polo-nam-yody-3.jpg','/assets/images/fashion/product/apm3725-xnt-4-2.jpg','',''),(52,57,'','/assets/images/fashion/product/43.jpg','/assets/images/fashion/product/56.jpg','',''),(53,58,'','/assets/images/fashion/product/19.jpg','/assets/images/fashion/product/27.jpg','',''),(54,59,'','/assets/images/fashion/product/3.jpg','/assets/images/fashion/product/19.jpg','',''),(55,60,'','/assets/images/fashion/product/50.jpg','/assets/images/fashion/product/56.jpg','',''),(56,61,'','/assets/images/fashion/product/aothunam.jpg','/assets/images/fashion/product/aothunam.jpg','',''),(57,62,'','/assets/images/fashion/product/AoTrangNu.png','/assets/images/fashion/product/97610239_688309601729159_7961045032180383744_n.jpeg','',''),(58,63,'','/assets/images/fashion/product/ao-polo-nu-lacos.jpeg','/assets/images/fashion/product/ao-polo-nu-lacos.jpeg','',''),(59,64,'','/assets/images/fashion/product/101.jpeg','/assets/images/fashion/product/101.jpeg','',''),(60,65,'','/assets/images/fashion/product/res13fe7726a3d4dd0ed41d0b1c198165c3fr.jpg','/assets/images/fashion/product/vngoods_12_458115.jpg','',''),(61,66,'','/assets/images/fashion/product/res1655d0ec91ed65c2c84d516426137bb7fr.jpg','/assets/images/fashion/product/vngoods_09_447649.jpg','',''),(62,67,'','/assets/images/fashion/product/apm3725-xnt-4-2.jpg','/assets/images/fashion/product/apm3519-vng-ao-polo-nam-yody-3.jpg','',''),(63,68,'','/assets/images/fashion/product/aongantay1.jpg','/assets/images/fashion/product/aongantay2.jpg','',''),(64,69,'','/assets/images/fashion/product/2.jpg','/assets/images/fashion/product/27.jpg','',''),(65,70,'','/assets/images/fashion/product/19.jpg','/assets/images/fashion/product/13.jpg','',''),(66,71,'','/assets/images/fashion/product/36.jpg','/assets/images/fashion/product/33.jpg','',''),(67,72,'','/assets/images/fashion/product/quanjean.jpeg','/assets/images/fashion/product/quanjean.jpeg','',''),(68,73,'','/assets/images/fashion/product/vngoods_09_447649.jpg','/assets/images/fashion/product/vngoods_09_447649.jpg','',''),(69,74,'','/assets/images/fashion/product/54.jpg','/assets/images/fashion/product/56.jpg','',''),(70,75,'','/assets/images/fashion/product/vngoods_12_458115.jpg','/assets/images/fashion/product/vngoods_09_463306.jpg','',''),(71,76,'','/assets/images/fashion/product/vay_ngan_thoitrang.jpg','/assets/images/fashion/product/res13fe7726a3d4dd0ed41d0b1c198165c3fr.jpg','',''),(72,77,'','/assets/images/fashion/product/233.jpg','/assets/images/fashion/product/233.jpg','',''),(73,78,'a','/assets/images/shoes/45762_01.jpg_2869a56b5f3446f7bb5c15a980e0ac1c-300x181.png','/assets/images/shoes/45762_01.jpg_2869a56b5f3446f7bb5c15a980e0ac1c-300x181.png','/assets/images/shoes/45762_01.jpg_2869a56b5f3446f7bb5c15a980e0ac1c-300x181.png','/assets/images/shoes/45762_01.jpg_2869a56b5f3446f7bb5c15a980e0ac1c-300x181.png'),(74,79,'a','/assets/images/shoes/47939_01.jpg_e572b21672b74babb93e7dc447f66df8-300x183.jpeg','/assets/images/shoes/47939_01.jpg_e572b21672b74babb93e7dc447f66df8-300x183.jpeg','/assets/images/shoes/47939_01.jpg_e572b21672b74babb93e7dc447f66df8-300x183.jpeg','/assets/images/shoes/47939_01.jpg_e572b21672b74babb93e7dc447f66df8-300x183.jpeg'),(75,80,'a','/assets/images/shoes/78068_01.jpg_81f64f3004464dfb8bd45deb8207ff68-300x172.png','/assets/images/shoes/78068_01.jpg_81f64f3004464dfb8bd45deb8207ff68-300x172.png','/assets/images/shoes/78068_01.jpg_81f64f3004464dfb8bd45deb8207ff68-300x172.png','/assets/images/shoes/78068_01.jpg_81f64f3004464dfb8bd45deb8207ff68-300x172.png'),(76,81,'a','/assets/images/shoes/Air-Jordan-4-Retro-Metallic-Gold-300x178.png','/assets/images/shoes/Air-Jordan-4-Retro-Metallic-Gold-300x178.png','/assets/images/shoes/Air-Jordan-4-Retro-Metallic-Gold-300x178.png','/assets/images/shoes/Air-Jordan-4-Retro-Metallic-Gold-300x178.png'),(77,82,'a','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png'),(78,83,'a','/assets/images/shoes/1154359_01.jpg_b2743adafa5146e3ba44a3eee2ea8c4a-600x365.png','/assets/images/shoes/1154359_01.jpg_b2743adafa5146e3ba44a3eee2ea8c4a-600x365.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png'),(79,83,'a','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png','/assets/images/shoes/1124754_01.jpg_aa054b659de049f8ad4d3abc035fe3b4-300x191.png'),(80,84,'r','/assets/images/watch/GMTHulk.png','/assets/images/watch/GMTHulk.png','/assets/images/watch/GMTHulk.png','/assets/images/watch/GMTHulk.png'),(81,85,'r','/assets/images/watch/DaytonaSliver.png','/assets/images/watch/DaytonaSliver.png','a','a'),(82,86,'r','/assets/images/watch/DaytonaRosegold.jpg','/assets/images/watch/DaytonaRosegold.jpg','a','a'),(83,87,'r','/assets/images/watch/DaytonaFGold.png','/assets/images/watch/DaytonaFGold.png','a','a'),(84,88,'r','/assets/images/watch/DaytonaDemi.png','/assets/images/watch/DaytonaDemi.png','a','a'),(85,89,'r','/assets/images/watch/Daydate.png','/assets/images/watch/Daydate.png','a','a'),(86,90,'r','/assets/images/watch/DatejustSundust.jpg','/assets/images/watch/DatejustSundust.jpg','a','a'),(87,91,'c','/assets/images/Cap/Black1.jpg','/assets/images/Cap/black2.jpg','/assets/images/Cap/black2.jpg','/assets/images/Cap/black2.jpg'),(88,92,'c','/assets/images/Cap/Blue1.jpg','/assets/images/Cap/Blue2.jpg','/assets/images/Cap/Blue2.jpg','/assets/images/Cap/Blue2.jpg'),(89,93,'c','/assets/images/Cap/blacks1.jpg','/assets/images/Cap/Blacks2.jpg','/assets/images/Cap/Blacks2.jpg','/assets/images/Cap/Blacks2.jpg'),(90,94,'c','/assets/images/Cap/skyblue1.jpg','/assets/images/Cap/skyblue2.jpg','/assets/images/Cap/skyblue2.jpg','/assets/images/Cap/skyblue2.jpg'),(91,95,'c','/assets/images/Cap/fogblack2.jpg','/assets/images/Cap/fogblack1.jpg','/assets/images/Cap/fogblack1.jpg','/assets/images/Cap/fogblack1.jpg'),(92,96,'c','/assets/images/Cap/fogblue1.png','/assets/images/Cap/fogblue2.jpg','/assets/images/Cap/fogblue2.jpg','/assets/images/Cap/fogblue2.jpg'),(93,97,'f','/assets/images/fashion/product/bottomfog1.jpg','/assets/images/fashion/product/bottomfog1.jpg','/assets/images/Cap/fogblue2.jpg','/assets/images/Cap/fogblue2.jpg'),(94,98,'f','/assets/images/fashion/product/bottomfog2_1.jpg','/assets/images/fashion/product/bottomfog2_2.jpg','/assets/images/fashion/product/bottomfog2_1.jpg','/assets/images/fashion/product/bottomfog2_1.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
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
