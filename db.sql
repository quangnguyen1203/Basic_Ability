-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: basic-ability
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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_id` bigint NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'小1'),(2,'小2'),(3,'小3'),(4,'小4'),(5,'小5'),(6,'小6'),(7,'中1'),(8,'中2'),(9,'中3'),(10,'高1'),(11,'高2'),(12,'高3');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `cmt_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_post_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cmt_id`),
  KEY `FK2dgdoh41vnobahepwimydikli` (`post_post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'xyz',1),(2,'32321',2),(3,'123123',4);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` bigint NOT NULL AUTO_INCREMENT,
  `event_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'fas fa-swimmer','水泳'),(2,'fas fa-futbol','サッカー'),(3,'fas fa-baseball-ball','野球'),(4,'fas fa-volleyball-ball','バレーボール'),(5,'fas fa-microphone','歌う'),(6,'fas fa-book','読書'),(7,'fas fa-chess-knight','チェス	'),(8,'fas fa-table-tennis','卓球');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_posts`
--

DROP TABLE IF EXISTS `events_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_posts` (
  `event_event_id` bigint NOT NULL,
  `posts_post_id` bigint NOT NULL,
  UNIQUE KEY `UK_hewyvyrov9oy28j31s67t5mhc` (`posts_post_id`),
  KEY `FKehegso04xnyk9vwwaysh5hcn9` (`event_event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_posts`
--

LOCK TABLES `events_posts` WRITE;
/*!40000 ALTER TABLE `events_posts` DISABLE KEYS */;
INSERT INTO `events_posts` VALUES (1,1),(2,2),(7,4);
/*!40000 ALTER TABLE `events_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factorials`
--

DROP TABLE IF EXISTS `factorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factorials` (
  `factorial_id` bigint NOT NULL AUTO_INCREMENT,
  `factorial_hashtag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factorial_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`factorial_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factorials`
--

LOCK TABLES `factorials` WRITE;
/*!40000 ALTER TABLE `factorials` DISABLE KEYS */;
INSERT INTO `factorials` VALUES (1,'#主体性','主体性'),(2,'#働きかけ力','働きかけ力'),(3,'#実行力','実行力'),(4,'#課題発見力','課題発見力'),(5,'#計画力','計画力'),(6,'#創造力','創造力'),(7,'#発信力','発信力'),(8,'#傾聴力','傾聴力'),(9,'#柔軟性','柔軟性'),(10,'#状況把握力','状況把握力'),(11,'#規律性','規律性'),(12,'#ストレスコントロール力','ストレスコントロール力');
/*!40000 ALTER TABLE `factorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_detail`
--

DROP TABLE IF EXISTS `post_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_detail` (
  `post_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `cmt_id` bigint DEFAULT NULL,
  `factorial_id` bigint DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`post_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_detail`
--

LOCK TABLES `post_detail` WRITE;
/*!40000 ALTER TABLE `post_detail` DISABLE KEYS */;
INSERT INTO `post_detail` VALUES (1,1,1,1,4),(2,1,2,1,4),(3,1,3,1,4),(4,2,1,2,4),(5,2,7,2,4),(6,3,9,4,6),(8,4,12,5,4);
/*!40000 ALTER TABLE `post_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_factorial`
--

DROP TABLE IF EXISTS `post_factorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_factorial` (
  `post_id` bigint NOT NULL,
  `factorial_id` bigint NOT NULL,
  KEY `FKrg01nhh5mo8dcuotd6wcai010` (`factorial_id`),
  KEY `FKpodkvflfm3gxd2yqkmam3sv5k` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_factorial`
--

LOCK TABLES `post_factorial` WRITE;
/*!40000 ALTER TABLE `post_factorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_factorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `think` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_completed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `events_event_id` bigint DEFAULT NULL,
  `users_id` bigint DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FKeyke76m1mjwtom410aalavq0k` (`events_event_id`),
  KEY `FKhc5cfu63utmr42sr1v1tsr7so` (`users_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'abc','abc','abc','UN','abc','abc',1,4),(2,'xyz','xyz','xyz','CED','xyz','xyz',2,4),(3,'tyu','tyu','tyu','UN','tyu','tyu',3,4),(4,'hgf','hgf','hgf','CED','fh','fgh',4,6),(5,'xcv','xcv','xcv','UN','zxv','zv',5,4);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_comments`
--

DROP TABLE IF EXISTS `posts_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_comments` (
  `post_post_id` bigint NOT NULL,
  `comments_cmt_id` bigint NOT NULL,
  UNIQUE KEY `UK_eqso1xn15wqx9ih2xt93j8afm` (`comments_cmt_id`),
  KEY `FKiq8a7nqb171ojc9xk99lxoisd` (`post_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_comments`
--

LOCK TABLES `posts_comments` WRITE;
/*!40000 ALTER TABLE `posts_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'学生','ROLE_STUDENT'),(2,'先生','ROLE_TEACHER'),(3,'家族','ROLE_PARENT'),(4,'カウンセラー','ROLE_DOCTOR');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `role_id` bigint NOT NULL,
  `users_id` bigint NOT NULL,
  UNIQUE KEY `UK_snx09g5kxfrdi207cl1jhjmev` (`users_id`),
  KEY `FKsmos02hm32191ogexm2ljik9x` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_class_post`
--

DROP TABLE IF EXISTS `user_class_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_class_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `class_id` bigint DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_class_post`
--

LOCK TABLES `user_class_post` WRITE;
/*!40000 ALTER TABLE `user_class_post` DISABLE KEYS */;
INSERT INTO `user_class_post` VALUES (1,2,1,4),(2,2,2,4),(3,2,3,4),(4,5,4,6),(5,4,5,4);
/*!40000 ALTER TABLE `user_class_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) DEFAULT '0',
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKteip88j90fbo9odnc9gxpq6n1` (`class_id`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'Doctor',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','doctor',NULL,4),(2,0,'Parent1',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','parent1',NULL,3),(3,0,'Teacher',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','teacher',NULL,2),(4,0,'Student1',2,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','student1',4,1),(5,0,'Parent2',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','parent2',NULL,3),(6,0,'Student2',5,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','student2',5,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_factorials`
--

DROP TABLE IF EXISTS `users_factorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_factorials` (
  `user_id` bigint NOT NULL,
  `factorials_factorial_id` bigint NOT NULL,
  UNIQUE KEY `UK_8phl4k4bvokne2yhejl1i7f1e` (`factorials_factorial_id`),
  KEY `FKmu3lvmcerqlndc5vjauiicsq3` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_factorials`
--

LOCK TABLES `users_factorials` WRITE;
/*!40000 ALTER TABLE `users_factorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_factorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_posts`
--

DROP TABLE IF EXISTS `users_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_posts` (
  `user_id` bigint NOT NULL,
  `posts_post_id` bigint NOT NULL,
  UNIQUE KEY `UK_6lrq1pa4b88au1mjd2crlomo1` (`posts_post_id`),
  KEY `FKaf5ya0qw7hle6m94xv6th02q7` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_posts`
--

LOCK TABLES `users_posts` WRITE;
/*!40000 ALTER TABLE `users_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 16:33:30
