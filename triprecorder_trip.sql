-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 192.168.0.90    Database: triprecorder
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (162,'서울','2023-06-13 03:50:00',10000000,'여행을 떠나요','2023-06-12 18:30:00',155),(426,'부산','2023-07-02 09:00:00',300000,'부산','2023-06-27 09:00:00',389),(427,'서울','2023-05-07 09:00:00',3,'서울','2023-05-02 09:00:00',389),(466,'속초, 경주, 전주','2023-04-15 09:00:00',100,'내일로여행','2023-04-09 09:00:00',390),(515,'전국','2022-04-30 09:00:00',100,'전국 카페 탐방기','2022-04-01 09:00:00',391),(595,'여수','2022-04-23 09:00:00',100,'여수 즐기기!!','2022-04-13 09:00:00',393),(624,'제주도','2021-09-12 09:00:00',100,'제주도 여행','2021-09-05 09:00:00',394),(677,'전주','2022-08-14 09:00:00',100,'전주','2022-08-08 09:00:00',389),(705,'속초','2020-09-05 09:00:00',100,'속초','2020-09-01 09:00:00',389),(996,'부산','2023-06-30 09:00:00',350000,'나홀로 부산여행?','2023-06-28 09:00:00',390),(997,'속초','2023-07-06 09:00:00',400000,'20년지기 친구랑','2023-07-04 09:00:00',390),(1112,'부산','2023-08-22 09:00:00',450000,'부산 먹방 투어!','2023-08-18 09:00:00',10),(1113,'서울','2023-06-26 09:00:00',500000,'서울 구경','2023-06-21 09:00:00',15),(1119,'강원도','2023-06-23 09:00:00',1000000,'내일로 여행','2023-06-13 09:00:00',16),(1122,'제부도','2023-07-09 09:00:00',300000,'제부도 바다 보러 가자!','2023-07-08 09:00:00',135),(1131,'서울','2023-06-30 09:00:00',200000,'서울 젤라또 맛집','2023-06-05 09:00:00',136),(1261,'서울','2023-07-13 09:00:00',200000,'서울여행','2023-07-05 09:00:00',1),(1262,'제주도','2023-07-22 09:00:00',300000,'제주여행','2023-07-07 09:00:00',1),(1290,'서울','2023-07-08 09:00:00',300000,'서울여행','2023-07-03 09:00:00',1198),(1291,'제주도','2023-07-22 09:00:00',200000,'제주여행','2023-07-17 09:00:00',1198);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 17:56:26
