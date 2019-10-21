CREATE DATABASE  IF NOT EXISTS `db_card` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_card`;
-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: db_card
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `tbl_bio`
--

DROP TABLE IF EXISTS `tbl_bio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bio` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `profID` tinyint(4) DEFAULT NULL,
  `bio` varchar(200) DEFAULT NULL,
  `social` varchar(60) DEFAULT NULL,
  `classes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bio`
--

LOCK TABLES `tbl_bio` WRITE;
/*!40000 ALTER TABLE `tbl_bio` DISABLE KEYS */;
INSERT INTO `tbl_bio` VALUES (1,1,'Pan is  a freakin code ninja. He knows WAAAAAAY to many things about code. It\'s a problem.','twitter, facebook, tik tok','MMED30sumthin Web Dev 3'),(2,2,'Trevor is a hard-core introvert who also loves teaching. He also really likes JavaScript, especially the shiny new full stack dev stuff.','twitter, facebook, snapchat, slack','MMED3012 Multimedia Authoring 3'),(3,3,'Justin loves fishing and outdoors stuff. He is also a fantastic teacher and works hard at constantly uprading the IDP program to be the best it can be.','facebook, snapchat','MMED1012 Web Design Fundamentals');
/*!40000 ALTER TABLE `tbl_bio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_card`
--

DROP TABLE IF EXISTS `tbl_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_card` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) COLLATE utf8_bin NOT NULL,
  `CompanyName` varchar(30) COLLATE utf8_bin NOT NULL,
  `Address` varchar(150) COLLATE utf8_bin NOT NULL,
  `Logo` varchar(200) COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) COLLATE utf8_bin NOT NULL,
  `SocialMedia` varchar(100) COLLATE utf8_bin NOT NULL,
  `JobTitle` varchar(60) COLLATE utf8_bin NOT NULL,
  `Phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `Email` varchar(35) COLLATE utf8_bin NOT NULL,
  `Fax` varchar(20) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_card`
--

LOCK TABLES `tbl_card` WRITE;
/*!40000 ALTER TABLE `tbl_card` DISABLE KEYS */;
INSERT INTO `tbl_card` VALUES (1,'Pan','Fanshawe','200 Dundas','https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327','https://www.fanshawec.ca','facebook','prof','1112223333','b_pan2@fanshawec.ca','111222333','pan.jpg'),(2,'Trevor','Fanshawe','200 Dundas','https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327','https://www.fanshawec.ca','facebook, twitter, snapchat','confuserator','444555666','tvanrys@fanshaweonline.ca','444555666','olaf.jpeg'),(3,'Justin','Fanshawe','200 Dundas','https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327','https://www.fanshawec.ca','kik, twitter, tik tok','coordinator','7778889999','jbrunner@fanshaweonline.ca','7778889999','justin.jpeg');
/*!40000 ALTER TABLE `tbl_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_card'
--

--
-- Dumping routines for database 'db_card'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-21 14:52:03
