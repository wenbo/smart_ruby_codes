-- MySQL dump 10.13  Distrib 5.6.21, for osx10.10 (x86_64)
--
-- Host: localhost    Database: sany88_production
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `products`
--

create database jd_products;
use jd_products;

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Ruby基础教程第4版','','//img10.360buyimg.com/n1/s200x200_jfs/t331/9/466730412/386719/a9610e50/54125b61N874152b6.jpg','2016-01-24 15:37:12','2016-01-24 15:37:12'),(2,'Ruby元编程（第2版）','','//img10.360buyimg.com/n1/s200x200_jfs/t1498/257/1025831549/80285/8006d95f/55b86a25N2e4b12d0.jpg','2016-01-24 15:37:12','2016-01-24 15:37:12'),(3,'Ruby on Rails实践之路：写给PHP和Java开发者的书','','//img14.360buyimg.com/n1/s200x200_16103/e89aa9c4-3835-4c73-8ae0-8b1ae4c8f412.jpg','2016-01-24 15:37:12','2016-01-24 15:37:12'),(4,'笨办法 学Ruby 第3版','','//img10.360buyimg.com/n1/s200x200_jfs/t1936/243/1563519928/144419/b7325029/566af48cN67f228cc.jpg','2016-01-24 15:37:12','2016-01-24 15:37:12'),(5,'Effective Ruby：改善Ruby程序的48条建议','','//img10.360buyimg.com/n1/s200x200_jfs/t1891/23/1877004893/69233/dc555e1a/568ccec1N85941f76.jpg','2016-01-24 15:37:12','2016-01-24 15:37:12'),(6,'R和Ruby数据分析之旅','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(7,'Ruby on Rails程序设计深入剖析与范例应用（附DVD-ROM光盘1张）','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(8,'面向对象设计实践指南：Ruby语言描述','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(9,'Ruby完全自学手册|216254','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(10,'Ruby入门权威经典','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(11,'图灵程序设计丛书：代码的未来','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(12,'MacRuby权威指南','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(13,'笨办法”学Ruby（第3版）Ruby编程基础教程书籍ruby编程入门 ruby元编程','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(14,'Ruby元编程(第2版)','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(15,'Effective Ruby 改善Ruby程序的48条建议程序开发/程序设计计算机编程','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(16,'Ruby基础教程-第4版','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(17,'Ruby元编程(第2版)','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(18,'ruby精粹专家编程/（美）皮尔特尔，（美）肖，（美）布莱克著，','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(19,'图灵程序设计丛书：TCP Sockets编程','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(20,'Ruby基础教程(第4版)','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(21,'笨办法 学Ruby 第3版','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(22,'Ruby on Rails程序设计深入剖析与范例应用 许勇等 计算机与互联网 书籍','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(23,'Effective Ruby 改善Ruby程序的48条建议+笨办法 学Ruby 第3版2本','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(24,'笨办法”学Ruby（第3版）','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(25,'\"笨办法\"学Ruby(第3版) 计算机与互联网 书籍','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(26,'“笨办法”学Ruby（第3版）','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(27,'“笨办法”学Ruby（第3版）包邮','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(28,'RUBY ON RAILS入门权威经典 于天恩 管理计算机与互联网 书籍','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(29,'（正版）Ruby元编程/(意)Paolo Perrotta著(X）','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12'),(30,'Ruby元编程(第2版)','',NULL,'2016-01-24 15:37:12','2016-01-24 15:37:12');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-24 23:39:16
