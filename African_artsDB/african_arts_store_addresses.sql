-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: african_arts_store
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` bigint NOT NULL AUTO_INCREMENT,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `user` bigint NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123 Main Street','Apartment 4B','Johannesburg','South Africa','2024-01-15','2000','Gauteng','2024-01-16',1),(2,'456 Oak Avenue','Suite 300','Cape Town','South Africa','2024-02-20','8000','Western Cape','2021-02-21',2),(3,'789 Pine Road','Floor 2','Durban','South Africa','2024-03-10','4001','KwaZulu-Natal','2023-03-11',3),(4,'321 Cedar Street','House 5','Pretoria','South Africa','2024-04-05','0002','Gauteng','2024-04-06',4),(5,'654 Maple Drive','Villa 12','Port Elizabeth','South Africa','2024-05-12','6001','Eastern Cape','2024-05-13',5),(6,'987 Birch Lane','Unit 10','Bloemfontein','South Africa','2024-06-18','9301','Free State','2023-06-19',6),(7,'246 Elm Street','Room 7','East London','South Africa','2024-07-22','5201','Eastern Cape','2024-07-23',7),(8,'135 Fir Avenue','Suite 200','Pietermaritzburg','South Africa','2024-08-30','3201','KwaZulu-Natal','2021-08-31',8),(9,'753 Spruce Road','Apartment 8','Polokwane','South Africa','2024-09-15','0700','Limpopo','2024-09-16',9),(10,'159 Willow Drive','House 14','Nelspruit','South Africa','2014-10-10','1200','Mpumalanga','2022-10-11',10),(11,'864 Cypress Street','Floor 3','Kimberley','South Africa','2014-11-05','8301','Northern Cape','2024-11-06',11),(12,'357 Redwood Lane','Villa 5','Rustenburg','South Africa','2024-12-01','0299','North West','2024-12-02',12),(13,'468 Ash Drive','Unit 6','Vereeniging','South Africa','2023-01-20','1930','Gauteng','2024-01-21',13),(14,'579 Palm Avenue','Room 2','Welkom','South Africa','2024-02-15','9459','Free State','2022-02-16',14),(15,'680 Magnolia Road','House 3','Klerksdorp','South Africa','2024-03-25','2570','North West','2021-03-26',15),(16,'791 Olive Street','Suite 101','George','South Africa','2020-04-18','6530','Western Cape','2024-04-19',16),(17,'902 Pinehurst Lane','Unit 9','Soweto','South Africa','2022-05-22','1863','Gauteng','2024-05-23',17),(18,'103 Palm Court','Apartment 1','Benoni','South Africa','2024-06-30','1501','Gauteng','2023-07-01',18),(19,'204 Oakwood Drive','Room 4','Midrand','South Africa','2020-07-25','1682','Gauteng','2024-07-26',19),(20,'305 Maplewood Avenue','Villa 8','Randburg','South Africa','2024-08-15','2194','Gauteng','2024-08-16',20);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23 16:02:22
