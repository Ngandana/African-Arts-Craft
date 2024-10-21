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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `stock_quantity` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,9,'2024-08-12 13:02:25.999646','This is A carved wood man that is created for displaying in common area represents luck and protection from bad spirits ','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/Carved.webp','Carved Tribes man',1999.99,8,'2024-08-15 18:44:44.639539'),(3,1,'2024-08-12 13:16:38.762468','This hand made stone elephant was made in the north provinces of South Africa as replicate of a real elephant in the Kruger national park','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/elephant.webp','Stone Elephant',1399.99,16,'2024-08-15 18:45:27.085121'),(4,13,'2024-08-12 16:30:37.562604','This is a two piece sculpture made of ceramic  ','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/Twins.webp','Twins',2999.99,3,'2024-08-12 16:30:37.562604'),(5,9,'2024-08-12 16:35:19.796367','Exotic African Sculpture representing the praying African Mother ','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/praying.webp','The Praying Mother',800.99,10,'2024-08-12 16:35:19.796367'),(6,13,'2024-08-12 17:03:08.553643','Dimensions: Height: 9.45 in (24 cm)Width: 7.09 in (18 cm)Depth: 6.3 in (16 cm)','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/f_2263852_1631088618301_bg_processed.webp','Exotic African Women',1499.99,8,'2024-08-12 17:03:08.553643'),(7,5,'2024-08-12 17:44:55.694939','African Shona Art Sculpture from Zimbabwe\'s Shona Tribe','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/IMG_5037_master.webp','Shona Art',1995.99,8,'2024-08-12 17:44:55.694939'),(8,9,'2024-08-12 20:37:18.979583','A simple Hand Made modern wood sculpture of a woman ','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/kenyan+model.webp','Modern woman ',1701.63,17,'2024-08-15 21:43:12.907319'),(10,7,'2024-08-18 14:23:11.600983','Terracotta, mate black finish. Original necklace and skirt. Numbered under the bottom.\nGood over all condition, minor scratches, no chips, no cracks.\nMeasures: Height 24 cm [9.44 in.].','https://african-arts-and-crafts-bucket.s3.eu-north-1.amazonaws.com/teenager.webp','African Women Figurine',5999.99,5,'2024-08-18 14:23:11.600983');
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

-- Dump completed on 2024-08-23 16:02:26
