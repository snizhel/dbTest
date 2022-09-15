-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qltv
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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `idbook` int NOT NULL AUTO_INCREMENT,
  `author` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`idbook`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (22,'sdsd','dssd',65,'sdfsd'),(26,'shigeo','aaaaa',13,'tokuda'),(27,'shigeo','aaaaa',9,'fdf'),(30,'duongly','duongly',12,'duongly'),(33,'a3','903198466aa',3331,'a3'),(34,'dds','dsdsd',555,'a4'),(35,'sdds','sdsd',44,'a6'),(39,'gfgf','fgf',6,'fggfg'),(42,'dsdsdssds','hujhuj',0,'huhu');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow_book`
--

DROP TABLE IF EXISTS `borrow_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrow_book` (
  `idborrow_book` int NOT NULL AUTO_INCREMENT,
  `date_of_borrow` varchar(45) DEFAULT NULL,
  `expired_term` varchar(45) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`idborrow_book`),
  KEY `FK33236mfbsh3dbksbkqky9xwh` (`customer_id`),
  CONSTRAINT `FK33236mfbsh3dbksbkqky9xwh` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow_book`
--

LOCK TABLES `borrow_book` WRITE;
/*!40000 ALTER TABLE `borrow_book` DISABLE KEYS */;
INSERT INTO `borrow_book` VALUES (98,'2022-04-26','2022-05-04',32),(99,'2022-04-26','2022-04-30',32),(100,'2022-04-26','2022-04-27',32),(101,'2022-04-26','2022-04-28',32),(102,'2022-04-26','2022-04-27',32),(103,'2022-04-26','2022-04-30',32),(104,'2022-04-26','2022-04-29',32),(105,'2022-04-26','2022-04-29',32);
/*!40000 ALTER TABLE `borrow_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow_vouchers`
--

DROP TABLE IF EXISTS `borrow_vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrow_vouchers` (
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`book_id`,`user_id`),
  KEY `FKd7t5lls9x5bljadw3gh8c2dxs` (`user_id`),
  CONSTRAINT `FKcexjsb8l4o9s8uc4wnqa02533` FOREIGN KEY (`book_id`) REFERENCES `book` (`idbook`),
  CONSTRAINT `FKd7t5lls9x5bljadw3gh8c2dxs` FOREIGN KEY (`user_id`) REFERENCES `borrow_book` (`idborrow_book`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow_vouchers`
--

LOCK TABLES `borrow_vouchers` WRITE;
/*!40000 ALTER TABLE `borrow_vouchers` DISABLE KEYS */;
INSERT INTO `borrow_vouchers` VALUES (98,26),(99,22),(100,22),(101,27),(102,33),(103,26),(104,42),(105,42);
/*!40000 ALTER TABLE `borrow_vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `idcustomer` int NOT NULL AUTO_INCREMENT,
  `address` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(120) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`idcustomer`),
  UNIQUE KEY `UKcrkjmjk1oj8gb6j6t5kt7gcxm` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (4,'xxxxbv','2022-04-08','user','$2a$10$5uNXFuwrX/Mt.4c6SFx0OukpsLq5oC3t5NGHTwnPfvWZq/YpHt/3m','903198466',0),(6,'xxxxbv','2022-04-08','uuuR3`','$2a$10$NyCdO4y6bkrOz0vrlTcxDeVbCgjLkrpPt1yUJqFcykO.hNrCpbpTO','9031984665',0),(19,'zxzxzx','2022-04-18','admin12234','$2a$10$tklWLMzSSzJfpADNJoM0U.zbwNkHYAmOV9L2.It9X.uR7ft.sXe9y','7667676767',0),(20,'fdf','2022-04-18','admin22','$2a$10$RQyqILdGBj3s/SxhKhOuKemXk1NRxhDewXutQ4lkugp/BdjWj70ou','903198466',0),(23,'xxxxb','2022-05-06','user11','$2a$10$ZtSXDhsnk/mu6SLvStLf8eWgakMlTj5dz1Qeoq/lB959pb3W9oxQ.','12345678',0),(25,'assa','2022-04-24','userNew','$2a$10$uXd/DFOE5zED9LzbvI05je7rZCfR6ApqpAaak0plYRijW8u2G4SMq','903198466',0),(26,'xxxxbv','2022-04-18','duongly','$2a$10$GW0lot7KwexdtQU5uFo2oOMwiJd2EksJw/pSAV3cyde4j1QLzAIKu','0903821224',0),(27,'abc','2022-04-25','user1234','$2a$10$KWVGxp6AQ397gUnctUDicO9ZBMhs2J5EdbcscMNbrrRD2HSTAcLS6','9031984664',0),(28,'sd','2022-04-07','admin','$2a$10$1ZHepWS4nM6JU2W1nvO3uO3heXhRAnwq.7jNpvbe.awxXJNVK2ylG','7823782998',0),(29,'xxxx1','2022-04-25','user112','$2a$10$GZcj/vjAgtMpdKxD3lrrtOjKsVqD73ToD1PpQk.Re.yfO8ZRzrrnK','903821224',0),(30,'assa','2022-04-25','userTest','$2a$10$Z1IzInMuDzDJ70uI0aBtsOaGMqnxW6dgboKzQav0nGCB1iE0cNrTW','906363853',3),(31,'ajskkdkj','2022-04-27','userTest1','$2a$10$nabgKYe3W4rcCQ4/ks76JO6sBdND1.OaQoZe.6bBICmeUQ5nvjvjK','903198466',0),(32,'xxxx','2022-04-12','userTest2','$2a$10$0U.ENfltDFluo7oTXe8SceoR/KF9RcEELnQBn.iV4KNna80mw6n7C','903821224',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idroles` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idroles`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'USER'),(2,'ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FK6jc1cscwrvbr2paq0en10rdm8` FOREIGN KEY (`user_id`) REFERENCES `customer` (`idcustomer`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`idroles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (4,1),(19,1),(20,1),(23,1),(25,1),(26,1),(27,1),(29,1),(30,1),(31,1),(32,1),(6,2),(28,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-15 15:12:46
