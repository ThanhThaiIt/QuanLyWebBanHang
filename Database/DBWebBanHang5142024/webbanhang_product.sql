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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idSubCategory` int NOT NULL,
  `idSupplier` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `guarantee` int NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `video` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `idStatus` int NOT NULL,
  `idType` int NOT NULL,
  `create_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idType` (`idType`),
  KEY `idSupplier` (`idSupplier`),
  KEY `idSubCategory` (`idSubCategory`),
  KEY `idStatus` (`idStatus`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `type_product` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idSupplier`) REFERENCES `supplier` (`id`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`idSubCategory`) REFERENCES `sub_categoty` (`id`),
  CONSTRAINT `product_ibfk_4` FOREIGN KEY (`idStatus`) REFERENCES `status_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (41,1,1,'áo polo ngắn tay thời thượng',2,50,2,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,1,'2023-07-04'),(52,1,1,'áo  sơ mi  thời đại',3,30,3,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,1,'2023-07-04'),(55,1,1,'áo blouson',3,50,20,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,1,'2023-07-05'),(56,1,1,'áo polo phong cách 4.0',5,50,10,10,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,1,'2023-07-05'),(57,1,1,'áo thun nam',3,50,3,7,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-05'),(58,1,1,'áo thun mùa hè',2,50,30,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-05'),(59,1,1,'áo cardigan',2,50,2,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>đ&acirc;y l&agrave; sản phẩm hay&nbsp;</p>\r\n',2,1,'2023-07-05'),(60,1,2,' áo sơ mi nam',7,50,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-05'),(61,1,2,'áo thể thao nam',8,50,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-05'),(62,1,2,'áo trắng nữ',8,30,8,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,3,'2023-07-05'),(63,1,2,'áo polo nữ',9,50,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-05'),(64,1,2,'áo ngắn tay nam sọc  ',2,20,0,3,'https://www.youtube.com/embed/fg96qmd3_zk','<p>- Vải cotton mềm.<br />\r\n- Nhẹ nh&agrave;ng, vừa vặn với tay &aacute;o c&oacute; g&acirc;n.</p>\r\n',2,2,'2023-07-09'),(65,2,3,'váy công sở',2,12,10,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,1,'2023-07-09'),(66,2,3,'quần thể thao',4,30,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,3,'2023-07-09'),(67,1,3,'áo nam vải cá sấu',4,34,0,5,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,3,'2023-07-09'),(68,1,1,'Áo ngắn tay thời trang ',2,20,0,7,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-17'),(69,1,3,'áo jeket nữ',3,30,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-17'),(70,1,3,'áo trễ vai ',3,30,10,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-17'),(71,1,4,'áo thun nam sọc ',3,30,4,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,1,'2023-07-17'),(72,2,3,'quân jean',3,30,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,3,'2023-07-17'),(73,2,1,'quần baggy ',2,30,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-17'),(74,1,4,'áo thun nam hè ',4,30,4,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,3,'2023-07-17'),(75,2,4,'Đầm nữ thời trang',3,30,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,3,'2023-07-17'),(76,2,4,'váy ngắn thời trang',3,30,3,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,2,'2023-07-17'),(77,2,4,'Quầy tây nam',3,30,0,1,'https://www.youtube.com/embed/fg96qmd3_zk','<p>C&ocirc;ng nghệ l&agrave;m m&aacute;t FREEZING&nbsp;ti&ecirc;n tiến si&ecirc;u kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng nghệ cool airy mang đến sự mềm mại c&ugrave;ng t&iacute;nh năng th&ocirc;ng tho&aacute;ng vượt trội cho &aacute;o</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;&nbsp;85% Nylon + 15% Spandex</p>\r\n\r\n<p>Chất vải tho&aacute;ng m&aacute;t khi mặc, kh&ocirc; nhanh khi giặt</p>\r\n\r\n<p>Form &aacute;o &ocirc;m vừa phải được l&agrave;m đơn giản n&ecirc;n ph&ugrave; hợp để phối kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p>Th&agrave;nh phần sợi: 85% nylon, 15% spandex</p>\r\n',2,3,'2023-07-17'),(78,22,10,'Jordan 4 Retro Snake Skin',6,180,0,10,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The Jordan 4 Retro Snakeskin borrows from the silhouette of the legendary Jordan 4.</p>\n\n<p>The Jordan 4 Retro Snakeskin has a white leather upper with highlights of Pure Platinum and Wolf Gray. The lining on the inside of the shoe is made of soft black fabric that cushions the foot and adds comfort. The Jumpman logo is visible on the heel and tongue, while the pattern on the outsole of the shoe is made of rubber – providing excellent grip and support when running or jumping. The midsole has an Air unit that is strategically placed to absorb the force of each step, reducing the impact on joints and muscles.</p>\n\nWe think that one of the most striking features of the Jordan 4 Retro Snakeskin is the faux snakeskin pattern that covers the midfoot to the heel, adding a touch of luxury to the design. The shoe was released on May 21st, 2016, at a retail price of $400.',1,1,'2023-07-17'),(79,22,10,'Jordan 4 Retro Dunk From Above',6,250,0,10,'https://www.youtube.com/embed/fg96qmd3_zk','<p>Product Description</p>\n<p>The Air Jordan 4 Retro Dunk From Above sneaker\'s design was inspired by the legendary Michael Jordan\'s ability to soar through the dunk and air from incredible heights throughout his basketball career.</p>\n\n<p>The Air Jordan 4 Retro Dunk From Above features a navy blue leather upper contrasted with white and yellow accents to represent the colors of the sky and a pilot\'s uniform. Its upper design also includes metallic gold eyelets that add elegance and a traditional lace-up closure, allowing a secure and adjustable fit. To complete the design is a Jumpman logo on the heel and tongue and Air-Sole units within the forefoot to offer responsive comfort and impact absorption.</p>\n\n<p>The Air Jordan 4 Retro Dunk From Above joined the Air Jordan brands in the market on March 19th, 2016 with a retail price of $190.</p>\n\n',1,1,'2023-07-17'),(80,22,10,'Jordan 4 Retro Royalty',6,300,0,10,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The Air Jordan 4 Retro Royalty has a combination of metallic gold accents on top of a monochrome black suede upper.</p>\n\n<p>The distinctive sculpted eyelets and a Jumpman logo on the faux leather heel panel both reflect light. The woven tongue tag and rubber outsole, both of which sport additional Jumpman branding and a classic herringbone traction pattern for grip, are also covered with Jumpman insignia. The polyurethane midsole that has an AIR sole unit that can be seen underneath the heel is for cushioning.</p>\n\n<p>The Air Jordan 4 Retro Royalty was launched on 4 February 2017 and retailed at $190.</p>',1,1,'2023-07-17'),(81,22,10,'Jordan 4 Retro Metallic Gold (Women\'s)',6,280,0,10,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The Jordan 4 Retro Metallic Gold (Women\'s) paints the Air Jordan 4 Retro in off-white Sail and upgrades the recognizable silhouette with gold accents.</p>\n\n<p>The Sail upper, outsole, and midsole provide a monochromatic base that allows the metallic gold eyelets to shine. The AJ 4 features a total of four metallic gold eyelets – two on each side of the lace cage. While the upper is primarily composed of smooth leather, the quarter panel displays mesh that provides an airy feel. The midsole houses a visible Air unit in the heel, which adds responsive cushioning without weighing down the shoe. In terms of branding, the Jumpman logo can be found on the tongue and heel counter in Sail.</p>\n\n<p>Our StockX experts appreciate the addition of a gold Jumpman logo underfoot. It creates a surprise pop of color without a metallic sheen. The women’s size Jordan 4 Retro Metallic Gold (Women\'s) was released on March 9th, 2024, and retailed at $200.</p>',1,1,'2023-07-17'),(82,22,10,'Jordan 4 Retro Thunder (2023)',6,290,0,10,'https://www.youtube.com/embed/fg96qmd3_zk','<p>For the first time in over a decade, the Air Jordan 4 Retro Thunder is returning and is being featured as part of the Jordan Brand Spring/Summer 2023 campaign.</p>',1,1,'2023-07-17'),(83,22,10,'Jordan 4 Retro SB Pine Green',6,505,0,10,'https://www.youtube.com/embed/fg96qmd3_zk','<p>Nike SB’s collaboration with Jordan helps create the ultimate sneaker for the skatepark to the basketball court, with the release of the Jordan 4 Retro SB Pine Green.</p>',1,1,'2023-07-17'),(84,23,11,'Rolex Submariner 116610LV “The Hulk”',60,21000,0,5,'https://www.youtube.com/embed/fg96qmd3_zk','<p>Rolex Submariner Date 116610LV men\'s watch. Features a polished with brushed 904L Oystersteel stainless steel case and Oyster bracelet. Green Cerachrom insert ceramic unidirectional rotating bezel with engraved platinum coated 60 minute scale and graduations. Green dial with luminescent hands, dotes and indexes. Date displayed under cyclops lens in window at 3 o\'clock with instantaneous date setting. Stop-seconds feature for precise time setting. Powered by the Rolex Caliber 3135 self-winding automatic COSC Superlative Chronometer certified movement which boasts a 48 hour power reserve, beats at 28,800 vph and contains 31 jewels. A scratch resistant sapphire crystal protects the dial. The case is round and 40mm in diameter. Screw down case back. Screw down crown with Triplock triple waterproofness system. Folding Oysterlock safety clasp with Rolex Glidelock extension system. Water resistant to 300 meters / 1000 feet. Functions: hours, minutes, seconds, date. Luxury watch style. Swiss made.</p>',1,1,'2023-07-17'),(85,23,11,'Cosmograph Daytona 116506 (Ice Blue Dial)',60,85000,0,3,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The Rolex Cosmograph Daytona Reference 116506 remains 40mm in size.  It features a case made entirely of 950 platinum, with a chestnut brown Cerachrom bezel.  The dial is ice blue, a color used exclusively on platinum models by Rolex - most notably the Day-Date II.  This is not the first Daytona to receive a Cerachrom bezel - two years ago the Everose Daytona received the update first.  So, we kinda knew that we\'d see another Daytona with a ceramic bezel, we just didn\'t think it would look like this.</p> ',1,1,'2023-07-17'),(86,23,11,'Rolex Daytona Everose Gold Rose Diamond',60,100000,0,8,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The iconic Rolex Daytona 18K Everose Gold Pink Diamond Dial Watch 116505 has a 40 mm watch case crafted in 18 kt. The 116505 Rolex has a Calibre 4130 self-winding mechanical chronograph movement featuring a center chronograph second hand accurate to within an 1/8th of a second. The 116505 dial is pink with diamond baugette markers featuring three sub-dials, the dial at 6 oâ€™clock is the second hand for the watch, the dial at 3 oâ€™clock is a 30 minute counter and the dial at 9 oâ€™clock is a 12 hour counter. The 116505 is scratch resistant sapphire crystal is elegantly framed with a fixed Tachymetric bezel also made in 18k rose gold. The 116505 bracelet is 18 kt. rose gold folding Oysterlock safety clasp with Easylink 5 mm comfort extension link. It has a water resistance of 100 meters (300 feet).</p>',1,1,'2023-07-17'),(87,23,11,'Rolex COSMOGRAPH DAYTONA GOLD',60,98000,0,6,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The emblematic style and superlative performance of the Oyster Perpetual Cosmograph Daytona have cemented its iconic status well beyond the motor racing circuits.</p>',1,1,'2023-07-17'),(88,23,11,'Rolex Daytona Demi 40mm',60,29000,0,6,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The emblematic style and superlative performance of the Oyster Perpetual Cosmograph Daytona have cemented its iconic status well beyond the motor racing circuits.</p>',1,1,'2023-07-17'),(89,23,11,'Rolex Day-Date 40mm Yellow Gold 228238-0005',60,45000,0,6,'https://www.youtube.com/embed/fg96qmd3_zk','<p>The Day-Date collection has always attracted a great deal of attention from players and collectors since it was first launched by Rolex in 1956. Over the decades, Rolex men\'s watches have continued to attract attention. always constantly improving quality, to bring the best value experience to players.</p>',1,1,'2023-07-17'),(90,23,11,'Rolex Datejust 41mm 126331-0008 Sundust',60,22000,0,6,'https://www.youtube.com/embed/fg96qmd3_zk','<p>Introducing the Rolex Datejust 41mm 126331-0008 Sundust watch</p>',1,1,'2023-07-17'),(91,24,12,'New Era 9Forty Adjustable Cap - NE Flag',12,45,0,29,'https://www.youtube.com/embed/fg96qmd3_zk','Product details\nPackage Dimensions ‏ : ‎ 11.99 x 11.99 x 11.99 cm; 190 g\nRelease date ‏ : ‎ 10 Nov. 2013\nDate First Available ‏ : ‎ 12 Aug. 2012\nManufacturer ‏ : ‎ New era\nItem model number ‏ : ‎ 11179832\nASIN ‏ : ‎ B00Z24C6YW\nDepartment ‏ : ‎ Men\'s',1,1,'2023-07-17'),(92,24,12,'Rebel City Snakeskin Flat Peak New York NY Snapback Baseball Cap Hat',12,55,0,50,'https://www.youtube.com/embed/fg96qmd3_zk','\nProduct details\nDate First Available ‏ : ‎ 11 Jun. 2013\nASIN ‏ : ‎ B00DD7L83U\nDepartment ‏ : ‎ Men\'s',1,1,'2023-07-17'),(93,24,12,'Shadow Stitch 59FIFTY Fitted',12,55,20,15,'https://www.youtube.com/embed/fg96qmd3_zk','Description\nThe Seattle Mariners Shadow Stitch 59FIFTY Fitted Cap features an embroidered Mariners shadow stitched wordmark at the front panels with a matching MLB Batterman logo at the rear and a gray undervisor.',1,1,'2023-07-17'),(94,24,12,'New Era Pin Script Badge Light Blue 59FIFTY Fitted Cap',12,46,0,22,'https://www.youtube.com/embed/fg96qmd3_zk','New Era Pin Script 59FIFTY Fitted Cap\nNew Era script wordmark across right\nMultiple New Era pin badges across right\nNew Era Flag on left\nStructured crown\nFitted\nFlat visor\nGreen undervisor\n100% WOOL',1,1,'2023-07-17'),(95,24,12,'Fear of God Essentials New Era 59Fifty Fitted Hat – Navy OFCNSTMaster',12,44,0,26,'https://www.youtube.com/embed/fg96qmd3_zk','Fear of God Essentials New Era 59Fifty Fitted Hat – Navy OFCNSTMaster is a fitted cap from the Fear of God Essentials brand, in collaboration with New Era, a famous manufacturer of baseball caps and fitted caps.\n\nDetailed description:\n\nColor: The hat is navy (dark blue), creating a fashionable and elegant look.\nMaterial: Hats are made from high-quality materials, usually cotton or a combination fabric, providing comfort and durability.\nDesign: The fitted cap has a unique design with a sturdy edge and a sturdy hat, creating good shielding and protection for the head and face. The hat has an adjustable strap at the back to fit the wearer\'s head size.\nLogo: There can be a Fear of God Essentials logo or a New Era logo embroidered or printed on the hat, creating a branding highlight.\nSize: Fear of God Essentials New Era 59Fifty Fitted Hat – Navy OFCNSTMaster is usually sized to fit adults.\nFear of God Essentials New Era 59Fifty Fitted Hat – Navy OFCNSTMaster is a unique fashion hat and suitable for use in outdoor activities, walking around, or when you want to express your unique personal style. For more accurate and complete information about this product, you should consult the official information source from Fear of God Essentials or reputable retail stores that supply this brand\'s products.',1,1,'2023-07-17'),(96,24,12,'NEW ERA CAP • FEAR OF GOD/NAVY',12,60,0,27,'https://www.youtube.com/embed/fg96qmd3_zk','Fear of God Essentials New Era 59Fifty Fitted Hat – Navy OFCNSTMaster is a fitted cap from the Fear of God Essentials brand, in collaboration with New Era, a famous manufacturer of baseball caps and fitted caps.',1,1,'2023-07-17'),(97,2,13,'ESSENTIALS FEAR OF GOD TRACKSUIT JOGGING BOTTOMS - CEMENT',12,65,0,67,'https://www.youtube.com/embed/fg96qmd3_zk','• Elastic waistband with toggles to adjust\n• Cuffed elastic ankles\n• Two side pockets\n• One rear pocket\n• Soft Fleece Lined Interior\n• Slim Fitting\n• Unisex design\n\n- 2020 SEASON\n\nBRAND NEW WITH ORIGINAL TAGS!\n\nSIZE SMALL SUITS 30 WAIST\nSIZE LARGE SUITS 34 WAIST',1,1,'2023-07-17'),(98,2,13,'ESSENTIALS FEAR OF GOD FLEECE TRACKSUIT PANTS - GREY',11,65,0,88,'https://www.youtube.com/embed/fg96qmd3_zk','• Two side pockets\n• One rear pocket\n• Soft Fleece Lined Interior\n• Slim Fitting\n• Unisex design\n\n- 2020 SEASON\n\nBRAND NEW WITH ORIGINAL TAGS!\n\nSIZE SMALL SUITS 30 WAIST\nSIZE MEDIUM SUITS 32 WAIST\nSIZE LARGE SUITS 34 WAIST',1,1,'2023-07-17'),(99,2,13,'a',1,1,1,1,'1','1',1,1,'2023-07-17'),(100,2,13,'b',1,1,1,1,'1','1',1,1,'2023-07-17');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
