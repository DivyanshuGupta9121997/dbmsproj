-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `building_material`
--

DROP TABLE IF EXISTS `building_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building_material` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_material`
--

LOCK TABLES `building_material` WRITE;
/*!40000 ALTER TABLE `building_material` DISABLE KEYS */;
INSERT INTO `building_material` VALUES (1,'hello',100.00,10,20),(2,'rodi',1000.00,99,20),(3,'mitti',400.00,453,200),(2608,'Tiles',256.00,4845,3000),(6820,'Sand',500.00,1000,200);
/*!40000 ALTER TABLE `building_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_material_dealer`
--

DROP TABLE IF EXISTS `building_material_dealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building_material_dealer` (
  `dealer_id` int(11) NOT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_material_dealer`
--

LOCK TABLES `building_material_dealer` WRITE;
/*!40000 ALTER TABLE `building_material_dealer` DISABLE KEYS */;
INSERT INTO `building_material_dealer` VALUES (6410,'Thakur','thakursunny@rediffmail.com','7458961235','HG, Varanasi');
/*!40000 ALTER TABLE `building_material_dealer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `occupation` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (19490,'Divyanshu','divyanshu.gupta.met15@itbhu.ac.in','aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d','9627150888','Student','Varanasi'),(79583,'Ramesh Gupta','rameshgupta@yahoo.com','586d88d853ddf2dca07440eec4dab82e19389fe8','9638527411','Businessman','Susuwahi,Varanasi');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `curr_avail` int(11) DEFAULT NULL,
  `date_of_hiring` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1060,'ram singh','ram@gmail.com','8989898966','Ramess vihar danwar',20000.00,0,'2017-11-19'),(4076,'empp','divyanshu.gpta.cse15@iitbhu.ac.in','8989898989','avas solony,aligarh',15000.00,1,'2017-11-11'),(5307,'ram singh','ram@gmail.com','8989898966','Ramess vihar danwar',20000.00,1,'2017-11-19');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `includes_1`
--

DROP TABLE IF EXISTS `includes_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `includes_1` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `includes_1_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `includes_1_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `building_material` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `includes_1`
--

LOCK TABLES `includes_1` WRITE;
/*!40000 ALTER TABLE `includes_1` DISABLE KEYS */;
INSERT INTO `includes_1` VALUES (512,2),(493,3),(559,3),(902,3),(902,2608);
/*!40000 ALTER TABLE `includes_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `includes_2`
--

DROP TABLE IF EXISTS `includes_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `includes_2` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `includes_2_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `includes_2_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `sanitary_item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `includes_2`
--

LOCK TABLES `includes_2` WRITE;
/*!40000 ALTER TABLE `includes_2` DISABLE KEYS */;
INSERT INTO `includes_2` VALUES (485,3000);
/*!40000 ALTER TABLE `includes_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `input_trans`
--

DROP TABLE IF EXISTS `input_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `input_trans` (
  `trans_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_mode` varchar(10) DEFAULT NULL,
  `date_of_payment` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `account_no` varchar(25) DEFAULT NULL,
  `bank_name` varchar(25) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `input_trans_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `input_trans`
--

LOCK TABLES `input_trans` WRITE;
/*!40000 ALTER TABLE `input_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `input_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_status` int(1) DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `billingname` varchar(25) DEFAULT NULL,
  `order_type` int(1) DEFAULT '-1',
  `order_delivery_status` int(1) DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (485,19490,0,'2017-11-10','Divyanshu',1,0),(493,19490,0,'2017-11-10','DGupta',2,0),(512,19490,1,'2017-11-08','xyz',2,0),(559,79583,1,'2017-11-23','ramesh',2,0),(902,79583,1,'2017-11-07','ramesh2',2,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `output_trans`
--

DROP TABLE IF EXISTS `output_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `output_trans` (
  `trans_id` int(11) NOT NULL,
  `payment_mode` varchar(10) DEFAULT NULL,
  `date_of_payment` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `account_no` varchar(25) DEFAULT NULL,
  `bank_name` varchar(25) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `output_trans`
--

LOCK TABLES `output_trans` WRITE;
/*!40000 ALTER TABLE `output_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `output_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_deal1`
--

DROP TABLE IF EXISTS `purchase_deal1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_deal1` (
  `purchase_id` int(11) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `trans_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `prod_id` (`prod_id`),
  KEY `trans_id` (`trans_id`),
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `purchase_deal1_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `building_material` (`item_id`),
  CONSTRAINT `purchase_deal1_ibfk_2` FOREIGN KEY (`trans_id`) REFERENCES `output_trans` (`trans_id`),
  CONSTRAINT `purchase_deal1_ibfk_3` FOREIGN KEY (`dealer_id`) REFERENCES `building_material_dealer` (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_deal1`
--

LOCK TABLES `purchase_deal1` WRITE;
/*!40000 ALTER TABLE `purchase_deal1` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_deal1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_deal2`
--

DROP TABLE IF EXISTS `purchase_deal2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_deal2` (
  `purchase_id` int(11) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `trans_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `prod_id` (`prod_id`),
  KEY `trans_id` (`trans_id`),
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `purchase_deal2_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `sanitary_item` (`item_id`),
  CONSTRAINT `purchase_deal2_ibfk_2` FOREIGN KEY (`trans_id`) REFERENCES `output_trans` (`trans_id`),
  CONSTRAINT `purchase_deal2_ibfk_3` FOREIGN KEY (`dealer_id`) REFERENCES `sanitaryware_dealer` (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_deal2`
--

LOCK TABLES `purchase_deal2` WRITE;
/*!40000 ALTER TABLE `purchase_deal2` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_deal2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanitary_item`
--

DROP TABLE IF EXISTS `sanitary_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanitary_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanitary_item`
--

LOCK TABLES `sanitary_item` WRITE;
/*!40000 ALTER TABLE `sanitary_item` DISABLE KEYS */;
INSERT INTO `sanitary_item` VALUES (1000,'item1',100.00,20,30),(2000,'item2',200.00,30,30),(3000,'item3',300.00,41,30),(4000,'item4',400.00,55,30),(5000,'item5',500.00,20,30),(7916,'Basins',1500.00,150,30);
/*!40000 ALTER TABLE `sanitary_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanitaryware_dealer`
--

DROP TABLE IF EXISTS `sanitaryware_dealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanitaryware_dealer` (
  `dealer_id` int(11) NOT NULL,
  `dealer_name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanitaryware_dealer`
--

LOCK TABLES `sanitaryware_dealer` WRITE;
/*!40000 ALTER TABLE `sanitaryware_dealer` DISABLE KEYS */;
INSERT INTO `sanitaryware_dealer` VALUES (2295,'Ram Prasad','ramprasad@gmail.com','8945612377','Susuwahi, Varanasi'),(3995,'Ram Prasad','ramprasad@gmail.com','8945612377','Susuwahi, Varanasi'),(4394,'Ram Prasad','ramprasad@gmail.com','8945612377','Susuwahi, Varanasi');
/*!40000 ALTER TABLE `sanitaryware_dealer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `date_of_delivery` date DEFAULT NULL,
  PRIMARY KEY (`service_id`),
  KEY `order_id` (`order_id`),
  KEY `vendor_id` (`vendor_id`),
  CONSTRAINT `service_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `service_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (3446,902,1060,'2017-11-11');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `registration_no` varchar(25) DEFAULT NULL,
  `numberPlateInfo` varchar(25) DEFAULT NULL,
  `curr_avail` int(1) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (5167,'v3-216','PB-49 GH 675',1),(5660,'v1-123','UP-81 AD 910',0),(5672,'v5-656','UP-81 KW 981',1),(5787,'v2-167','UP-81 AD 213',1),(5794,'v4-879','UP-81 ZX 161',1);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_service`
--

DROP TABLE IF EXISTS `vehicle_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_service` (
  `vehicle_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`vehicle_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `vehicle_service_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`),
  CONSTRAINT `vehicle_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_service`
--

LOCK TABLES `vehicle_service` WRITE;
/*!40000 ALTER TABLE `vehicle_service` DISABLE KEYS */;
INSERT INTO `vehicle_service` VALUES (5660,3446);
/*!40000 ALTER TABLE `vehicle_service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09 22:55:04
