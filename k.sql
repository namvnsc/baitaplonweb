CREATE DATABASE  IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `web`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `bai_hoc`
--

DROP TABLE IF EXISTS `bai_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_hoc` (
  `Ma` varchar(45) NOT NULL,
  `Ten` mediumtext,
  `Ma_Khoa_Hoc` varchar(45) DEFAULT NULL,
  `So_Thu_Tu` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_hoc`
--

LOCK TABLES `bai_hoc` WRITE;
/*!40000 ALTER TABLE `bai_hoc` DISABLE KEYS */;
INSERT INTO `bai_hoc` VALUES ('LC01','Giới thiệu chung','KH01',NULL),('LC02','Tổng quan','KH01',NULL),('LC03','Cấu trúc','KH01',NULL),('LC04','Cú pháp','KH01',NULL),('LC05','Kiểu dữ liệu','KH01',NULL),('LC06','Biến','KH01',NULL),('LC07','Hằng số','KH01',NULL),('LC08','Toán tử','KH01',NULL),('LC09','Cấu trúc lệnh rẽ nhánh','KH01',NULL),('LC10','Vòng lặp','KH01',NULL),('LC11','Hàm','KH01',NULL),('LC12','Mảng','KH01',NULL),('LC13','Con trỏ','KH01',NULL);
/*!40000 ALTER TABLE `bai_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bai_tap`
--

DROP TABLE IF EXISTS `bai_tap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_tap` (
  `Ma` varchar(45) NOT NULL,
  `Ten` longtext,
  `De_Bai` longtext,
  `Testcase_Vi_Du` longtext,
  `File_Input` longtext,
  `File_Output` longtext,
  `Gioi_Han_Thoi_Gian` float DEFAULT NULL,
  `Url_Anh` longtext,
  PRIMARY KEY (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_tap`
--

LOCK TABLES `bai_tap` WRITE;
/*!40000 ALTER TABLE `bai_tap` DISABLE KEYS */;
INSERT INTO `bai_tap` VALUES ('b1','Cộng 2 số nguyên','Cho 2 số nguyên a, b. Viết chương trình c/c++ trả về tổng a+b.\ninput:  \nT - số bộ test, T <= 100\nT dòng tiếp theo chứa 2 số a, b\noutput:\nT dòng, mỗi dòng chứa kết quả\n<giới hạn thời gian 1s>',NULL,'1 3 5','8',1,NULL),('b10','Chặt nhị phân','Cho mảng a có n phần tử, n lẻ; tìm phần tử đứng giữa sau khi đã sắp xếp dãy theo thứ tự tăng dần.\nInput:\nn - số phần tử của mảng n<=1e6;\na1 a2 ... an - các phần tử trong mảng\nOutput:\nans - kết quả yêu cầu\n\nVí dụ:\nInput:\n3\n3 1 5\nOutput:\n3',NULL,' 5\r  1 3 2 4 5','3',0.5,NULL),('b2','Trừ 2 số nguyên','Cho 2 số nguyên a, b. Viết chương trình c/c++ trả về hiệu a-b.',NULL,'1 3 5','-2',1,NULL),('b20','Tìm kiếm','Cho mảng a có n phần tử, tìm kiếm trong mảng có tồn tại giá trị x hay không?\r Input:\r - T số bộ test\r - mỗi bộ test dạng:\r 	- n x số lượng phần tử mảng, giá trị x cần tìm\r 	- n số ai là giá trị các phần tử trong mảng\r Output:\r - Yes nếu có, No nếu không, ghi kết quả trên 1 dòng cách nhau bởi 1 dấu cách',NULL,'1 5 1 2 5 4 3','Yes\r ',1,NULL),('b3','Nhân 2 số nguyên','Cho 2 số nguyên a, b. Viết chương trình c/c++ trả về tích a*b.',NULL,'1 3 5','15',1,NULL),('b4','Chia 2 số nguyên','Cho 2 số nguyên a, b. Viết chương trình c/c++ trả về thương a/b.',NULL,'1 9 3','3',1,NULL);
/*!40000 ALTER TABLE `bai_tap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cau_hoi_trac_nghiem`
--

DROP TABLE IF EXISTS `cau_hoi_trac_nghiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cau_hoi_trac_nghiem` (
  `Ma` varchar(45) NOT NULL,
  `Cau_Hoi` longtext,
  `A` longtext,
  `B` longtext,
  `C` longtext,
  `D` longtext,
  `Dap_An` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cau_hoi_trac_nghiem`
--

LOCK TABLES `cau_hoi_trac_nghiem` WRITE;
/*!40000 ALTER TABLE `cau_hoi_trac_nghiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cau_hoi_trac_nghiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest`
--

DROP TABLE IF EXISTS `contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest` (
  `Ma` varchar(50) NOT NULL,
  `Ten` varchar(200) DEFAULT NULL,
  `Thoi_Diem_Bat_Dau` datetime DEFAULT NULL,
  `Thoi_Gian` float DEFAULT NULL,
  PRIMARY KEY (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest`
--

LOCK TABLES `contest` WRITE;
/*!40000 ALTER TABLE `contest` DISABLE KEYS */;
INSERT INTO `contest` VALUES ('a','a','2019-12-07 15:23:00',0.25),('abc','acb','2019-12-07 16:05:00',0.25),('adafd','1faf','2019-12-07 15:25:00',0.25),('lehoa','hoa','1970-01-01 07:00:00',0.25),('ma','ten','1970-01-01 07:00:00',0.25),('MD','Mở đầu ','2019-11-20 20:00:00',1),('mmm','aa','2019-07-12 16:00:00',0.25),('sd','adsfa','2019-12-07 15:50:00',0.25),('t','Kiểm tra','2019-12-08 08:15:00',0.2),('test','tmp','2019-12-06 13:19:00',0.25),('tmp','tmp','2019-12-06 04:56:00',0.25),('u','u','2019-12-08 09:12:00',0.2),('x','x','2019-12-08 09:00:00',0.2);
/*!40000 ALTER TABLE `contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoa_hoc`
--

DROP TABLE IF EXISTS `khoa_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoa_hoc` (
  `Ma` varchar(50) NOT NULL,
  `Ten` varchar(200) DEFAULT NULL,
  `Mo_Ta` longtext,
  `So_Thu_Tu` int(11) DEFAULT NULL,
  `Url_Anh` mediumtext,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoa_hoc`
--

LOCK TABLES `khoa_hoc` WRITE;
/*!40000 ALTER TABLE `khoa_hoc` DISABLE KEYS */;
INSERT INTO `khoa_hoc` VALUES ('KH01','Học C cơ bản',NULL,NULL,NULL,'hocCcoban.jsp'),('KH02','Nhập môn giải thuật',NULL,NULL,NULL,NULL),('KH03','Nhập môn Cấu trúc dữ liệu',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `khoa_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhiem_vu_cuoi_bai`
--

DROP TABLE IF EXISTS `nhiem_vu_cuoi_bai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhiem_vu_cuoi_bai` (
  `Ma_Bai_Hoc` varchar(45) NOT NULL,
  `So_Thu_Tu` int(11) NOT NULL,
  `Loai` varchar(45) DEFAULT NULL,
  `Ma_Bai_Tap` varchar(45) DEFAULT NULL,
  `Ma_Cau_Hoi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Ma_Bai_Hoc`,`So_Thu_Tu`),
  KEY `j_idx` (`Ma_Bai_Tap`),
  KEY `h_idx` (`Ma_Cau_Hoi`),
  CONSTRAINT `h` FOREIGN KEY (`Ma_Cau_Hoi`) REFERENCES `cau_hoi_trac_nghiem` (`Ma`),
  CONSTRAINT `j` FOREIGN KEY (`Ma_Bai_Tap`) REFERENCES `bai_tap` (`Ma`),
  CONSTRAINT `t` FOREIGN KEY (`Ma_Bai_Hoc`) REFERENCES `bai_hoc` (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhiem_vu_cuoi_bai`
--

LOCK TABLES `nhiem_vu_cuoi_bai` WRITE;
/*!40000 ALTER TABLE `nhiem_vu_cuoi_bai` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhiem_vu_cuoi_bai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noi_dung`
--

DROP TABLE IF EXISTS `noi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noi_dung` (
  `Ma` varchar(45) NOT NULL,
  `So_Thu_Tu` int(11) DEFAULT NULL,
  `Loai` varchar(45) DEFAULT NULL,
  `Noi_Dung` longtext,
  `Mo_Ta` mediumtext,
  `Ma_Phan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noi_dung`
--

LOCK TABLES `noi_dung` WRITE;
/*!40000 ALTER TABLE `noi_dung` DISABLE KEYS */;
INSERT INTO `noi_dung` VALUES ('LC01P01N01',NULL,'img','Features-of-C.jpg',NULL,'LC01P01');
/*!40000 ALTER TABLE `noi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phan`
--

DROP TABLE IF EXISTS `phan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phan` (
  `Ma` varchar(45) NOT NULL,
  `Ten` mediumtext,
  `Ma_Bai_Hoc` varchar(45) DEFAULT NULL,
  `So_Thu_Tu` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ma`),
  KEY `f_idx` (`Ma_Bai_Hoc`),
  CONSTRAINT `f` FOREIGN KEY (`Ma_Bai_Hoc`) REFERENCES `bai_hoc` (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan`
--

LOCK TABLES `phan` WRITE;
/*!40000 ALTER TABLE `phan` DISABLE KEYS */;
INSERT INTO `phan` VALUES ('LC01P01','Ngôn ngữ lập trình C là gì?','LC01',NULL);
/*!40000 ALTER TABLE `phan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem` (
  `Ma_Contest` varchar(50) NOT NULL,
  `So_Thu_Tu` int(11) NOT NULL,
  `Ma_Bai_Tap` varchar(50) DEFAULT NULL,
  `Diem` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ma_Contest`,`So_Thu_Tu`),
  KEY `qqq_idx` (`Ma_Bai_Tap`),
  CONSTRAINT `qq` FOREIGN KEY (`Ma_Contest`) REFERENCES `contest` (`Ma`),
  CONSTRAINT `qqq` FOREIGN KEY (`Ma_Bai_Tap`) REFERENCES `bai_tap` (`Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES ('a',1,'b10 ',50),('a',2,'b4 ',50),('abc',1,'b1 ',50),('adafd',1,'b3 ',50),('adafd',2,'b4 ',100),('lehoa',1,'b1 ',50),('ma',1,'b2 ',50),('MD',1,'b1',100),('MD',2,'b2',100),('MD',3,'b3',100),('MD',4,'b4',100),('mmm',1,'b1 ',50),('sd',1,'b1 ',50),('sd',2,'b10 ',50),('t',1,'b20 ',150),('t',2,'b3 ',200),('test',1,'b10 ',50),('test',2,'b3 ',50),('tmp',1,'b10 ',50),('tmp',2,'b3 ',50),('u',1,'b4 ',50),('x',1,'b3 ',50);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) DEFAULT NULL,
  `Ma_Contest` varchar(50) DEFAULT NULL,
  `Thoi_Diem_Dang_Ky` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `r_idx` (`Ma_Contest`),
  KEY `rr_idx` (`Username`),
  CONSTRAINT `r` FOREIGN KEY (`Ma_Contest`) REFERENCES `contest` (`Ma`),
  CONSTRAINT `rr` FOREIGN KEY (`Username`) REFERENCES `tai_khoan` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (14,'a','test',NULL),(15,'a','a',NULL),(16,'a','adafd',NULL),(17,'vnsc','sd',NULL),(18,'a','sd',NULL),(19,'vnsc','abc',NULL),(20,'a','t',NULL),(21,'a','x',NULL),(22,'a','u',NULL);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) DEFAULT NULL,
  `Ma_Bai_Tap` varchar(45) DEFAULT NULL,
  `Code` longtext,
  `Trang_Thai` varchar(100) DEFAULT NULL,
  `Thoi_Diem_Submit` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `t_idx` (`Ma_Bai_Tap`),
  KEY `tt_idx` (`Username`),
  CONSTRAINT `tt` FOREIGN KEY (`Username`) REFERENCES `tai_khoan` (`username`),
  CONSTRAINT `y` FOREIGN KEY (`Ma_Bai_Tap`) REFERENCES `bai_tap` (`Ma`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(300) DEFAULT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `sodienthoai` varchar(11) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan`
--

LOCK TABLES `tai_khoan` WRITE;
/*!40000 ALTER TABLE `tai_khoan` DISABLE KEYS */;
INSERT INTO `tai_khoan` VALUES (93405,'a','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=','x','o','0',NULL,'user'),(79029,'b','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=','1','vdh@gmail.com','1234567890',NULL,'user'),(56094,'c','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=','d','vnsckdh@gmail.com','1234567890',NULL,'user'),(69473,'d','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=','nam','vnsckdh@gmail.com','1234567890',NULL,'user'),(12345,'vnsc','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=',NULL,NULL,NULL,NULL,'admin');
/*!40000 ALTER TABLE `tai_khoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08  9:14:06
