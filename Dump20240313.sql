CREATE DATABASE  IF NOT EXISTS `projectdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projectdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: projectdb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_ID` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `customer_fName` varchar(100) NOT NULL,
  `contact_number` bigint(11) unsigned zerofill NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `customer_lName` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'123 Hollywood Boulevard, Manila','Brad',09912345678,'bradpitt123@gmail.com','Pitt'),(2,'456 Sunset Street, Cebu City','Angelina',09187628392,'angelinajolie456@gmail.com','Jolie'),(3,'789 Broadway Avenue, Quezon City','Leonardo',09155678901,'leonardodicaprio789@gmail.com','DiCaprio'),(4,'321 Vineyard Lane, Davao City','Jennifer',09267890112,'jenniferlawrence321@gmail.com','Lawrence'),(5,'567 Ocean Drive, Tagaytay City','Tom',09207890123,' tomcruise567@gmail.com','Cruise'),(16,'234 Forest Road, Baguio City','Streep',09933890123,'merylstreep234@gmail.com','Merryl'),(17,'432 Cherry Blossom Street, Zamboanga City','Scarlett',09917901234,'scarlettjohansson432@gmail.com','Johansson'),(18,'654 Maple Avenue, Iloilo City','Denzel',09220123456,'denzelwashington654@gmail.com','Washington'),(22,'345 Riverfront Road, Antipolo City','Johnny',09673461283,'johnnydepp345@gmail.com','Depp'),(24,'901 Hillcrest Avenue, Subic Bay Freeport Zone','Will',09823759102,'willsmith901@gmail.com','Smith'),(25,'234 Ivy Lane, Tacloban City','Anne',09039582731,'annehathaway234@gmail.com','Hathaway'),(26,'456 Oakwood Drive, Roxas City','Natalie',09528719732,'natalieportman456@gmail.com','Portman'),(27,'193 Willow Street, Legazpi City','Ryan',09992712957,'ryanreynolds193@gmail.com','Reynolds'),(28,'Coron, Palawan','Von',09387416347,'palawan_express@gmail.com','Ilia'),(30,'Gerona, Tarlac','Mimi',09242716354,'ririsisiwiwi@gmail.com','Nini');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employee_of_the_month`
--

DROP TABLE IF EXISTS `employee_of_the_month`;
/*!50001 DROP VIEW IF EXISTS `employee_of_the_month`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_of_the_month` AS SELECT 
 1 AS `employee_name`,
 1 AS `Total_Sales`,
 1 AS `Month_Sales`,
 1 AS `Year_Sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_code` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `product_category` varchar(20) NOT NULL,
  `quantity_in_stock` int NOT NULL,
  `reorder_point` int NOT NULL,
  `product_color` varchar(50) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_material` varchar(50) NOT NULL,
  `product_gender` varchar(10) NOT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'UNIQLO Airism Shirt',499.00,'Shirt & Blouse',34,15,'White','XL','Cotton','Men'),(4,'Levi\'s Jeans',4500.00,'Jeans & Pants',66,25,'Blue','Large','Denim','Unisex'),(11,'H&M Slim Fit Jacket',4500.00,'Sweater & Jacket',27,10,'Dark Blue','XL','Flannel','Men'),(13,'H&M Ankle-Length Leather Pants',19250.00,'Jeans & Pants',5,5,'Black','XL','Leather','Women'),(14,'H&M Ankle-Length Leather Pants',19250.00,'Jeans & Pants',41,5,'Cream','Large','Leather','Women'),(15,'H&M Baggy Jeans',2000.00,'Jeans & Pants',22,10,'Blue','Large','Denim','Men'),(16,'UNIQLO Smart Ankle Pants',1990.00,'Jeans & Pants',31,15,'Beige','Large','Cotton','Unisex'),(17,'UNIQLO Wireless Bra (3D Hold)',1290.00,'Innerwear',58,20,'Brown','Medium','Cotton','Women'),(18,'UNIQLO Wireless Bra (Ultra Relax)',1290.00,'Innerwear',53,20,'Black','Medium','Cotton','Women'),(22,'Adidas Originals Trefoil Hoodie',2500.00,'Sweater & Jacket',11,5,'Grey','Large','Cotton','Unisex'),(23,'The North Face Resolve 2 Jacket',3000.00,'Sweater & Jacket',26,10,'Blue','XL','Nylon','Unisex'),(24,'Nike Dri-FIT Men\'s Running T-shirt',1000.00,'Shirt & Blouse',47,10,'Black','Medium','Polyester','Men'),(28,'Levi\'s 501 Original Fit Jeans',850.00,'Jeans & Pants',26,10,'Blue','Large','Cotton','Men'),(29,'Calvin Klein Modern Cotton Bralette',400.00,'Innerwear',43,20,'Black','Medium','Cotton','Women'),(30,'Under Armour Tech Mesh Shorts',500.00,'Short',38,20,'Black','Large','Polyester','Men'),(31,'Columbia Benton Springs Fleece Jacket',2500.00,'Sweater & Jacket',12,5,'Purple','XS','Polyester','Women'),(32,'Ralph Lauren Polo Shirt',1200.00,'Shirt & Blouse',15,20,'Red','Medium','Cotton','Men'),(33,'GAP Essential Crewneck Sweater',1100.00,'Sweater & Jacket',25,10,'Navy Blue','Small','Cashmere','Unisex'),(34,'Puma Essentials Logo Leggings',800.00,'Jeans & Pants',7,5,'Black','XS','Cotton','Women'),(35,'Zara Ribbed Knit Sweater Dress',1300.00,'Dress',44,20,'Grey','Medium','Cashmere','Women'),(36,'Lululemon Align Pant II',1200.00,'Jeans & Pants',16,10,'Purple','Medium','Nylon','Women'),(37,'Abercrombie & Fitch Sherpa-Lined Hoodie',3500.00,'Sweater & Jacket',17,5,'Burgundy','XL','Cotton','Men'),(38,'Mango Pleated Satin Skirt',950.00,'Skirt',9,10,'Pink','Large','Polyester','Women'),(39,'Columbia Silver Ridge Cargo Pants',2300.00,'Jeans & Pants',61,16,'Khaki','Large','Nylon','Men'),(40,'Zara Floral Print Mini Skirt',760.00,'Skirt',29,12,'White','XS','Cotton','Women'),(41,'ASOS Design High Neck Ribbed Jumper',3600.00,'Jeans & Pants',22,15,'Yellow','Small','Polyester','Women'),(42,'Carhartt Workwear Pocket T-shirt',780.00,'Shirt & Blouse',10,10,'Grey','XXL','Cotton','Men'),(43,'Forever 21 Ribbed Knit Crop Top',800.00,'Shirt & Blouse',14,25,'Burgundy','Medium','Cotton','Women'),(44,'Guess Originals Logo Sweatshirt',1000.00,'Sweater & Jacket',44,20,'Black','Large','Cotton','Unisex'),(45,'Old Navy High-Rise Rockstar Jeans',1600.00,'Jeans & Pants',23,10,'Blue','Small','Denim','Women'),(46,'Victoria\'s Secret Dream Angels Push-Up Bra',1200.00,'Innerwear',31,15,'Pink','Large','Nylon','Women'),(47,'Zara Striped Shirt Dress',1400.00,'Dress',28,16,'White','Large','Cotton','Women'),(48,'Adidas Originals 3-Stripes Mini Skirt',800.00,'Short',24,12,'Navy Blue','Medium','Cotton','Women'),(49,'Hollister Cargo Shorts',1000.00,'Short',19,20,'Green','Large','Cotton','Men'),(50,'Urban Outfitters Corduroy Mini Skirt',950.00,'Skirt',10,10,'Burgundy','XS','Cotton','Women'),(51,'Hanes Comfort Flex Fit Boxer Briefs',500.00,'Innerwear',19,15,'Black','Large','Cotton','Men'),(52,'Under Armour Tech Boxer Briefs',500.00,'Innerwear',15,10,'Grey','Large','Polyester','Men'),(53,'Topshop A-Line Button Front Skirt',780.00,'Skirt',1,10,'Yellow','XS','Cotton','Women'),(54,'Hollister Ruffle Mini Skirt',900.00,'Skirt',27,10,'White','XS','Cotton','Women'),(55,'Topman Chino Shorts',1000.00,'Short',24,15,'Khaki','XL','Cotton','Men'),(56,'Calvin Klein Fit and Flare Scuba Dress',2000.00,'Dress',4,12,'Red','Small','Polyester','Women'),(57,'Mango Pleated Satin Dress',1600.00,'Dress',19,5,'Green','Medium','Polyester','Women');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_in_transaction`
--

DROP TABLE IF EXISTS `product_in_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_in_transaction` (
  `transaction_ID` int NOT NULL,
  `product_code` int NOT NULL,
  `quantity_sold` int DEFAULT NULL,
  PRIMARY KEY (`product_code`,`transaction_ID`),
  KEY `transaction_ID` (`transaction_ID`),
  CONSTRAINT `product_in_transaction_ibfk_1` FOREIGN KEY (`transaction_ID`) REFERENCES `transactions` (`transaction_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_in_transaction_ibfk_2` FOREIGN KEY (`product_code`) REFERENCES `product` (`product_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_in_transaction_ibfk_3` FOREIGN KEY (`transaction_ID`) REFERENCES `transactions` (`transaction_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_in_transaction_ibfk_4` FOREIGN KEY (`product_code`) REFERENCES `product` (`product_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_in_transaction`
--

LOCK TABLES `product_in_transaction` WRITE;
/*!40000 ALTER TABLE `product_in_transaction` DISABLE KEYS */;
INSERT INTO `product_in_transaction` VALUES (23,4,1),(39,4,1),(88,4,8),(22,11,2),(30,11,1),(40,11,1),(168,11,2),(118,13,1),(155,13,1),(15,14,1),(16,14,1),(140,14,2),(41,15,2),(131,15,2),(152,15,1),(172,15,1),(12,16,2),(135,16,5),(153,16,2),(9,17,4),(14,17,5),(26,17,2),(27,17,3),(31,17,3),(94,17,2),(154,17,2),(157,18,5),(183,18,2),(185,18,1),(101,22,2),(123,22,2),(155,22,2),(159,22,1),(168,22,1),(172,22,1),(95,23,1),(138,23,2),(168,23,1),(106,24,1),(172,24,2),(93,28,3),(103,28,2),(169,28,2),(186,28,2),(128,29,4),(168,29,2),(184,29,1),(128,30,3),(160,30,3),(184,30,1),(91,31,5),(94,31,1),(156,31,2),(93,32,2),(160,33,2),(165,33,2),(187,33,1),(96,34,2),(131,34,5),(165,34,5),(185,34,1),(145,35,5),(183,35,1),(95,36,2),(132,36,3),(143,36,2),(96,37,1),(166,37,2),(117,38,2),(104,39,1),(159,39,1),(113,40,1),(106,41,1),(132,42,5),(91,43,2),(103,44,2),(147,44,4),(157,45,1),(108,46,1),(127,47,1),(156,47,2),(183,47,1),(147,48,2),(114,50,2),(157,50,1),(121,51,5),(145,51,5),(159,51,3),(93,52,3),(113,53,2),(118,53,3),(120,53,1),(156,53,1),(91,54,1),(127,54,2),(143,54,2),(108,55,2),(152,55,2),(166,55,2),(112,56,2),(120,56,2),(151,56,2),(166,56,2),(186,56,2),(185,57,1),(186,57,2);
/*!40000 ALTER TABLE `product_in_transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_product_in_transaction_insert` AFTER INSERT ON `product_in_transaction` FOR EACH ROW BEGIN
	UPDATE product
	SET quantity_in_stock = quantity_in_stock - NEW.quantity_sold
    WHERE product_code = NEW.product_code;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_product_in_transaction_update` AFTER UPDATE ON `product_in_transaction` FOR EACH ROW BEGIN
	UPDATE product
	SET quantity_in_stock = quantity_in_stock + (OLD.quantity_sold - NEW.quantity_sold)
    WHERE product_code = OLD.product_code;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_product_in_transaction_delete` AFTER DELETE ON `product_in_transaction` FOR EACH ROW BEGIN
	UPDATE product
	SET quantity_in_stock = quantity_in_stock + OLD.quantity_sold
    WHERE product_code = OLD.product_code;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `product_of_the_month`
--

DROP TABLE IF EXISTS `product_of_the_month`;
/*!50001 DROP VIEW IF EXISTS `product_of_the_month`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_of_the_month` AS SELECT 
 1 AS `product_name`,
 1 AS `product_category`,
 1 AS `Month_Sales`,
 1 AS `Year_Sales`,
 1 AS `Total_Quantity_Sold`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `promotion_and_discount`
--

DROP TABLE IF EXISTS `promotion_and_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_and_discount` (
  `discount_code` varchar(20) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `discount_usage` int DEFAULT '0',
  `discount_name` varchar(50) NOT NULL,
  `percent_discount` decimal(4,2) NOT NULL,
  PRIMARY KEY (`discount_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_and_discount`
--

LOCK TABLES `promotion_and_discount` WRITE;
/*!40000 ALTER TABLE `promotion_and_discount` DISABLE KEYS */;
INSERT INTO `promotion_and_discount` VALUES ('BACK2SKUL','2023-07-01','2023-08-01',4,'Back to School Promo',20.00),('FEB14IBIG','2024-02-01','2024-02-15',7,'Valentines Sale',20.00),('LOVEWINS24','2024-02-20','2024-02-29',3,'February 2024 Love Month Promo',5.00),('NOV23UNDAS','2023-10-31','2023-11-02',8,'Undas 2023 Sale',15.00),('NY202FOUR','2024-01-01','2024-01-08',3,'2024 New Year Sale',20.00),('PAYFEB24','2024-02-22','2024-02-25',5,'February 2024 Payday Sale',10.00),('TRENDY25','2024-03-01','2024-03-25',8,'Trendy Treat',25.00),('XMAS2023','2023-12-24','2023-12-26',5,'Christmas 2023 Promo',30.00);
/*!40000 ALTER TABLE `promotion_and_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `recent_transactions`
--

DROP TABLE IF EXISTS `recent_transactions`;
/*!50001 DROP VIEW IF EXISTS `recent_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recent_transactions` AS SELECT 
 1 AS `transaction_ID`,
 1 AS `total_amount`,
 1 AS `transaction_date`,
 1 AS `transaction_time`,
 1 AS `customer_ID`,
 1 AS `employee_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sales_representative`
--

DROP TABLE IF EXISTS `sales_representative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_representative` (
  `employee_ID` int NOT NULL AUTO_INCREMENT,
  `contact_number` bigint(11) unsigned zerofill NOT NULL,
  `employee_fName` varchar(100) NOT NULL,
  `employee_lName` varchar(100) NOT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_representative`
--

LOCK TABLES `sales_representative` WRITE;
/*!40000 ALTER TABLE `sales_representative` DISABLE KEYS */;
INSERT INTO `sales_representative` VALUES (13,09123717241,'Ed','Sheeran','edsheeran43@gmail.com'),(14,09285612837,'Justin','Bieber','justinbieber17@gmail.com'),(15,09762917562,'Ariana','Grande','arianagrande42@gmail.com'),(16,09827361559,'Bruno','Mars','brunomars11@gmail.com'),(17,09019572384,'Harry','Styles','harrystyles01@gmail.com'),(18,09883376422,'Nicki','Minaj','nickiminaj24@gmail.com'),(19,09968523481,'Olivia','Rodrigo','oliviarodrigo15@gmail.com'),(20,09674921237,'Billie','Eilish','billieeilish98@gmail.com'),(21,09172947219,'Dua','Lipa','dualipa84@gmail.com'),(22,09779816221,'Charlie','Puth','charlieputh33@gmail.com'),(26,09097291237,'Lewis','Capaldi','lewiscapaldi@gmail.com'),(27,09089562533,'Ella','Mai','ellamai73@gmail.com'),(28,09856732600,'Khalid','Robinson','khalid64@gmail.com'),(29,09738562984,'Sam','Smith','samsmith@gmail.com'),(30,09672541987,'Demi','Lovato','demilovato06@gmail.com');
/*!40000 ALTER TABLE `sales_representative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_promotion_and_discount`
--

DROP TABLE IF EXISTS `top_promotion_and_discount`;
/*!50001 DROP VIEW IF EXISTS `top_promotion_and_discount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_promotion_and_discount` AS SELECT 
 1 AS `discount_name`,
 1 AS `discount_usage`,
 1 AS `discount_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_ID` int NOT NULL AUTO_INCREMENT,
  `total_amount` decimal(18,2) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_time` time NOT NULL,
  `customer_ID` int DEFAULT NULL,
  `employee_ID` int DEFAULT NULL,
  `discount_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`transaction_ID`),
  KEY `transactions_ibfk_1` (`customer_ID`),
  KEY `transactions_ibfk_2` (`employee_ID`),
  KEY `transactions_ibfk_3` (`discount_code`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`employee_ID`) REFERENCES `sales_representative` (`employee_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`discount_code`) REFERENCES `promotion_and_discount` (`discount_code`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (9,4128.00,'2024-02-03','21:02:01',18,15,'FEB14IBIG'),(12,3184.00,'2024-02-05','11:32:56',24,15,'FEB14IBIG'),(14,5160.00,'2024-02-10','21:34:44',25,21,'FEB14IBIG'),(15,15400.00,'2024-02-14','21:43:54',24,13,'FEB14IBIG'),(16,15400.00,'2024-02-13','10:23:52',17,21,'FEB14IBIG'),(22,7200.00,'2024-02-05','16:44:22',27,19,'FEB14IBIG'),(23,4500.00,'2024-02-21','21:23:21',1,13,NULL),(26,2580.00,'2024-02-21','11:11:11',4,20,NULL),(27,3870.00,'2024-02-21','11:12:13',5,18,NULL),(30,4050.00,'2024-02-22','07:42:51',4,18,'PAYFEB24'),(31,3483.00,'2024-02-22','07:32:52',30,14,'PAYFEB24'),(39,4275.00,'2024-02-20','12:22:35',1,19,'LOVEWINS24'),(40,4275.00,'2024-02-20','13:51:21',3,18,'LOVEWINS24'),(41,3800.00,'2024-02-20','14:52:29',2,18,'LOVEWINS24'),(88,36000.00,'2024-03-12','01:22:00',3,20,NULL),(91,11250.00,'2024-03-12','05:07:00',18,20,'TRENDY25'),(93,5160.00,'2023-07-15','20:08:55',16,20,'BACK2SKUL'),(94,4064.00,'2024-02-15','17:55:23',25,28,'FEB14IBIG'),(95,4590.00,'2023-11-01','10:44:19',28,17,'NOV23UNDAS'),(96,4335.00,'2023-10-31','11:42:21',1,15,'NOV23UNDAS'),(101,4250.00,'2023-10-31','21:32:42',5,30,'NOV23UNDAS'),(103,3145.00,'2023-11-01','17:46:28',22,21,'NOV23UNDAS'),(104,1955.00,'2023-10-31','12:20:05',3,17,'NOV23UNDAS'),(106,3910.00,'2023-10-31','15:54:21',4,14,'NOV23UNDAS'),(108,2720.00,'2023-11-01','12:51:24',3,20,'NOV23UNDAS'),(112,3400.00,'2023-10-31','16:23:51',5,13,'NOV23UNDAS'),(113,2320.00,'2023-10-28','15:23:51',3,15,NULL),(114,1900.00,'2023-10-30','15:12:55',2,30,NULL),(117,1900.00,'2023-10-30','12:51:24',4,13,NULL),(118,17272.00,'2023-07-12','12:22:41',1,18,'BACK2SKUL'),(120,3824.00,'2023-08-01','11:52:47',16,21,'BACK2SKUL'),(121,2000.00,'2023-07-21','15:51:22',2,16,'BACK2SKUL'),(123,5000.00,'2023-06-11','12:52:11',28,30,NULL),(127,3200.00,'2024-01-22','12:41:22',5,15,NULL),(128,3100.00,'2024-01-22','21:22:41',5,29,NULL),(131,7200.00,'2024-02-24','12:04:21',22,16,'PAYFEB24'),(132,6000.00,'2024-01-02','12:44:51',24,16,'NY202FOUR'),(135,7960.00,'2024-01-04','12:55:12',28,27,'NY202FOUR'),(138,4800.00,'2024-01-02','12:41:12',17,13,'NY202FOUR'),(140,26950.00,'2023-12-24','12:03:41',16,19,'XMAS2023'),(143,2940.00,'2023-12-24','15:23:51',17,22,'XMAS2023'),(145,6300.00,'2023-12-24','16:12:51',17,22,'XMAS2023'),(147,3920.00,'2023-12-24','16:23:51',24,13,'XMAS2023'),(151,2800.00,'2023-12-24','16:24:12',5,14,'XMAS2023'),(152,4000.00,'2023-12-23','12:04:12',22,19,NULL),(153,3980.00,'2023-12-23','12:20:51',22,19,NULL),(154,2580.00,'2023-12-23','12:41:51',28,16,NULL),(155,18187.50,'2024-03-05','12:51:21',25,18,'TRENDY25'),(156,6435.00,'2024-03-07','16:23:51',28,30,'TRENDY25'),(157,8100.00,'2024-02-24','17:23:51',27,16,'PAYFEB24'),(159,5670.00,'2024-02-25','17:25:15',2,28,'PAYFEB24'),(160,2775.00,'2024-03-12','20:51:21',5,28,'TRENDY25'),(165,4650.00,'2024-03-12','16:25:24',30,15,'TRENDY25'),(166,9750.00,'2024-03-12','15:03:15',27,13,'TRENDY25'),(168,11475.00,'2024-03-12','12:55:16',30,27,'TRENDY25'),(169,1275.00,'2024-03-11','12:51:21',28,26,'TRENDY25'),(172,6500.00,'2024-03-13','06:51:27',4,26,NULL),(183,5280.00,'2024-03-13','08:12:51',22,17,NULL),(184,900.00,'2024-03-13','07:50:12',2,18,NULL),(185,3690.00,'2024-03-13','06:21:51',2,18,NULL),(186,8900.00,'2024-03-13','06:51:41',18,22,NULL),(187,1100.00,'2024-03-13','07:20:10',16,14,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transactions_AFTER_INSERT` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
	UPDATE promotion_and_discount
    SET discount_usage = discount_usage + 1
    WHERE discount_code = NEW.discount_code;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transactions_AFTER_DELETE` AFTER DELETE ON `transactions` FOR EACH ROW BEGIN
    UPDATE promotion_and_discount
    SET discount_usage = discount_usage - 1
    WHERE discount_code = OLD.discount_code;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'projectdb'
--

--
-- Dumping routines for database 'projectdb'
--

--
-- Final view structure for view `employee_of_the_month`
--

/*!50001 DROP VIEW IF EXISTS `employee_of_the_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_of_the_month` AS select concat(`sales_representative`.`employee_fName`,' ',`sales_representative`.`employee_lName`) AS `employee_name`,sum(`transactions`.`total_amount`) AS `Total_Sales`,monthname(curdate()) AS `Month_Sales`,year(curdate()) AS `Year_Sales` from (`transactions` left join `sales_representative` on((`transactions`.`employee_ID` = `sales_representative`.`employee_ID`))) where (month(`transactions`.`transaction_date`) = month(curdate())) group by `transactions`.`employee_ID` order by sum(`transactions`.`total_amount`) desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_of_the_month`
--

/*!50001 DROP VIEW IF EXISTS `product_of_the_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_of_the_month` AS select `product`.`product_name` AS `product_name`,`product`.`product_category` AS `product_category`,monthname(curdate()) AS `Month_Sales`,year(curdate()) AS `Year_Sales`,sum(`product_in_transaction`.`quantity_sold`) AS `Total_Quantity_Sold` from ((`product` join `product_in_transaction` on((`product`.`product_code` = `product_in_transaction`.`product_code`))) join `transactions` on((`transactions`.`transaction_ID` = `product_in_transaction`.`transaction_ID`))) where (month(`transactions`.`transaction_date`) = month(curdate())) group by `product_in_transaction`.`product_code` order by sum(`product_in_transaction`.`quantity_sold`) desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recent_transactions`
--

/*!50001 DROP VIEW IF EXISTS `recent_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recent_transactions` AS select `transactions`.`transaction_ID` AS `transaction_ID`,`transactions`.`total_amount` AS `total_amount`,`transactions`.`transaction_date` AS `transaction_date`,`transactions`.`transaction_time` AS `transaction_time`,`transactions`.`customer_ID` AS `customer_ID`,`transactions`.`employee_ID` AS `employee_ID` from `transactions` where (cast(concat(`transactions`.`transaction_date`,' ',`transactions`.`transaction_time`) as datetime) <= now()) order by `transactions`.`transaction_date` desc,`transactions`.`transaction_time` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_promotion_and_discount`
--

/*!50001 DROP VIEW IF EXISTS `top_promotion_and_discount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_promotion_and_discount` AS select `promotion_and_discount`.`discount_name` AS `discount_name`,`promotion_and_discount`.`discount_usage` AS `discount_usage`,`promotion_and_discount`.`discount_code` AS `discount_code` from `promotion_and_discount` where ((curdate() >= `promotion_and_discount`.`date_start`) and (curdate() <= `promotion_and_discount`.`date_end`)) order by `promotion_and_discount`.`discount_usage` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13  1:25:46
