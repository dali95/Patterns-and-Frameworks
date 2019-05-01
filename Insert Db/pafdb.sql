-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: paf_test
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Boek 1'),(2,'Boek 2');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_items`
--

DROP TABLE IF EXISTS `book_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_items` (
  `book_id` int(11) NOT NULL,
  `items_itemd_id` int(11) NOT NULL,
  KEY `FK3e2htuyv0liqh1nuoxghl8p2b` (`items_itemd_id`),
  KEY `FKihgb0jjn666wbbtl4l87ygmxf` (`book_id`),
  CONSTRAINT `FK3e2htuyv0liqh1nuoxghl8p2b` FOREIGN KEY (`items_itemd_id`) REFERENCES `item` (`itemd_id`),
  CONSTRAINT `FKihgb0jjn666wbbtl4l87ygmxf` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_items`
--

LOCK TABLES `book_items` WRITE;
/*!40000 ALTER TABLE `book_items` DISABLE KEYS */;
INSERT INTO `book_items` VALUES (1,1),(1,2),(1,3),(2,4),(2,5);
/*!40000 ALTER TABLE `book_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_reservations`
--

DROP TABLE IF EXISTS `book_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_reservations` (
  `book_id` int(11) NOT NULL,
  `reservations_id` int(11) NOT NULL,
  KEY `FK5ansp4ovwhoritb970hacg4kc` (`reservations_id`),
  KEY `FK6t0s0j2k3kkebohajq3ntn7aq` (`book_id`),
  CONSTRAINT `FK5ansp4ovwhoritb970hacg4kc` FOREIGN KEY (`reservations_id`) REFERENCES `reservation` (`id`),
  CONSTRAINT `FK6t0s0j2k3kkebohajq3ntn7aq` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_reservations`
--

LOCK TABLES `book_reservations` WRITE;
/*!40000 ALTER TABLE `book_reservations` DISABLE KEYS */;
INSERT INTO `book_reservations` VALUES (1,1);
/*!40000 ALTER TABLE `book_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower_information`
--

DROP TABLE IF EXISTS `borrower_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrower_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower_information`
--

LOCK TABLES `borrower_information` WRITE;
/*!40000 ALTER TABLE `borrower_information` DISABLE KEYS */;
INSERT INTO `borrower_information` VALUES (1,'Abrahamstraat','Dali Magaadi'),(2,'Janwillemstraat','Willem Jan'),(3,'Koperstraat','Jan Jan');
/*!40000 ALTER TABLE `borrower_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower_information_loans`
--

DROP TABLE IF EXISTS `borrower_information_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrower_information_loans` (
  `borrower_information_id` int(11) NOT NULL,
  `loans_id` int(11) NOT NULL,
  KEY `FKimw0lje76pmbupciny56lnbdt` (`loans_id`),
  KEY `FK36d2tyl51bnxghj0wm169th4t` (`borrower_information_id`),
  CONSTRAINT `FK36d2tyl51bnxghj0wm169th4t` FOREIGN KEY (`borrower_information_id`) REFERENCES `borrower_information` (`id`),
  CONSTRAINT `FKimw0lje76pmbupciny56lnbdt` FOREIGN KEY (`loans_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower_information_loans`
--

LOCK TABLES `borrower_information_loans` WRITE;
/*!40000 ALTER TABLE `borrower_information_loans` DISABLE KEYS */;
INSERT INTO `borrower_information_loans` VALUES (1,1),(1,2),(2,4),(3,3);
/*!40000 ALTER TABLE `borrower_information_loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower_information_reservations`
--

DROP TABLE IF EXISTS `borrower_information_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrower_information_reservations` (
  `borrower_information_id` int(11) NOT NULL,
  `reservations_id` int(11) NOT NULL,
  KEY `FKt2xxomgqy2ob6v2eymwgqd6s1` (`reservations_id`),
  KEY `FKek0r3acpuw0vy5pn9wcttnpen` (`borrower_information_id`),
  CONSTRAINT `FKek0r3acpuw0vy5pn9wcttnpen` FOREIGN KEY (`borrower_information_id`) REFERENCES `borrower_information` (`id`),
  CONSTRAINT `FKt2xxomgqy2ob6v2eymwgqd6s1` FOREIGN KEY (`reservations_id`) REFERENCES `reservation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower_information_reservations`
--

LOCK TABLES `borrower_information_reservations` WRITE;
/*!40000 ALTER TABLE `borrower_information_reservations` DISABLE KEYS */;
INSERT INTO `borrower_information_reservations` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `borrower_information_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `sequence_next_hi_value` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `itemd_id` int(11) NOT NULL AUTO_INCREMENT,
  `books_id` int(11) DEFAULT NULL,
  `magazine_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemd_id`),
  KEY `FK683k6q9k5927ncgyjap9aq73g` (`books_id`),
  KEY `FKiv8vbhxxvfowu34faicgp8jfr` (`magazine_id`),
  CONSTRAINT `FK683k6q9k5927ncgyjap9aq73g` FOREIGN KEY (`books_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKiv8vbhxxvfowu34faicgp8jfr` FOREIGN KEY (`magazine_id`) REFERENCES `magazine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,NULL),(2,1,NULL),(3,1,NULL),(4,2,NULL),(5,2,NULL),(6,NULL,1),(7,NULL,1),(8,NULL,2),(9,NULL,3),(10,NULL,4);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_loans`
--

DROP TABLE IF EXISTS `item_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_loans` (
  `item_itemd_id` int(11) NOT NULL,
  `loans_id` int(11) NOT NULL,
  KEY `FKj3g5t527p4ufeo2mpnfrbyg13` (`loans_id`),
  KEY `FKg1w3ipa9mis6skx97t64l21fa` (`item_itemd_id`),
  CONSTRAINT `FKg1w3ipa9mis6skx97t64l21fa` FOREIGN KEY (`item_itemd_id`) REFERENCES `item` (`itemd_id`),
  CONSTRAINT `FKj3g5t527p4ufeo2mpnfrbyg13` FOREIGN KEY (`loans_id`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_loans`
--

LOCK TABLES `item_loans` WRITE;
/*!40000 ALTER TABLE `item_loans` DISABLE KEYS */;
INSERT INTO `item_loans` VALUES (1,1),(2,2),(2,3),(3,4);
/*!40000 ALTER TABLE `item_loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `borrower_information_id` int(11) DEFAULT NULL,
  `item_itemd_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbyip4g1cxfk2vrk3wjj7sibdu` (`borrower_information_id`),
  KEY `FK5wqrtqxty82iq781i06eo7wbv` (`item_itemd_id`),
  CONSTRAINT `FK5wqrtqxty82iq781i06eo7wbv` FOREIGN KEY (`item_itemd_id`) REFERENCES `item` (`itemd_id`),
  CONSTRAINT `FKbyip4g1cxfk2vrk3wjj7sibdu` FOREIGN KEY (`borrower_information_id`) REFERENCES `borrower_information` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (1,'2017-04-13 00:00:00',1,1),(2,'2017-04-12 00:00:00',1,4),(3,'2017-04-11 00:00:00',2,7),(4,'2017-04-03 00:00:00',3,10);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazine`
--

DROP TABLE IF EXISTS `magazine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magazine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazine`
--

LOCK TABLES `magazine` WRITE;
/*!40000 ALTER TABLE `magazine` DISABLE KEYS */;
INSERT INTO `magazine` VALUES (1,'Magazine 1'),(2,'Magazine 1'),(3,'Magazine 3'),(4,'Magazine 4');
/*!40000 ALTER TABLE `magazine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazine_items`
--

DROP TABLE IF EXISTS `magazine_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magazine_items` (
  `magazine_id` int(11) NOT NULL,
  `items_itemd_id` int(11) NOT NULL,
  KEY `FKk9wjyiqfj5gavbfc13256cvbp` (`items_itemd_id`),
  KEY `FKrpf9voqkn6n2nqp28p7uelyj2` (`magazine_id`),
  CONSTRAINT `FKk9wjyiqfj5gavbfc13256cvbp` FOREIGN KEY (`items_itemd_id`) REFERENCES `item` (`itemd_id`),
  CONSTRAINT `FKrpf9voqkn6n2nqp28p7uelyj2` FOREIGN KEY (`magazine_id`) REFERENCES `magazine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazine_items`
--

LOCK TABLES `magazine_items` WRITE;
/*!40000 ALTER TABLE `magazine_items` DISABLE KEYS */;
INSERT INTO `magazine_items` VALUES (1,6),(1,7),(2,8),(3,9),(4,10);
/*!40000 ALTER TABLE `magazine_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazine_reservations`
--

DROP TABLE IF EXISTS `magazine_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magazine_reservations` (
  `magazine_id` int(11) NOT NULL,
  `reservations_id` int(11) NOT NULL,
  KEY `FKe49md6ld3kqh54slsq9extybo` (`reservations_id`),
  KEY `FKei9f6doj761lge7wbkw5lf6x1` (`magazine_id`),
  CONSTRAINT `FKe49md6ld3kqh54slsq9extybo` FOREIGN KEY (`reservations_id`) REFERENCES `reservation` (`id`),
  CONSTRAINT `FKei9f6doj761lge7wbkw5lf6x1` FOREIGN KEY (`magazine_id`) REFERENCES `magazine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazine_reservations`
--

LOCK TABLES `magazine_reservations` WRITE;
/*!40000 ALTER TABLE `magazine_reservations` DISABLE KEYS */;
INSERT INTO `magazine_reservations` VALUES (3,2),(2,3);
/*!40000 ALTER TABLE `magazine_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `magainze_id` int(11) DEFAULT NULL,
  `magazine_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKirxtcw4s6lhwi6l9ocrk6bjfy` (`book_id`),
  KEY `FK2m8g27ldejkukgujtqcw2wt66` (`magainze_id`),
  CONSTRAINT `FK2m8g27ldejkukgujtqcw2wt66` FOREIGN KEY (`magainze_id`) REFERENCES `magazine` (`id`),
  CONSTRAINT `FKirxtcw4s6lhwi6l9ocrk6bjfy` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2017-04-09 00:00:00',1,NULL,NULL),(2,'2017-04-10 00:00:00',NULL,3,NULL),(3,'2017-04-01 00:00:00',NULL,2,NULL);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18  0:02:25
