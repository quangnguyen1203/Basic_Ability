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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
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
-- Temporary view structure for view `list_all_student`
--

DROP TABLE IF EXISTS `list_all_student`;
/*!50001 DROP VIEW IF EXISTS `list_all_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `list_all_student` AS SELECT 
 1 AS `id`,
 1 AS `fullName`,
 1 AS `user_code`,
 1 AS `class_name`,
 1 AS `event_name`,
 1 AS `factorial_hashtag`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `list_student`
--

DROP TABLE IF EXISTS `list_student`;
/*!50001 DROP VIEW IF EXISTS `list_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `list_student` AS SELECT 
 1 AS `id`,
 1 AS `fullName`,
 1 AS `user_code`,
 1 AS `class_name`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_detail`
--

LOCK TABLES `post_detail` WRITE;
/*!40000 ALTER TABLE `post_detail` DISABLE KEYS */;
INSERT INTO `post_detail` VALUES (1,1,3,1,4),(2,2,6,5,6),(5,3,NULL,11,7),(6,4,NULL,12,7),(7,5,1,3,4),(8,6,5,13,9),(9,7,7,13,9);
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
  `status` int DEFAULT NULL,
  `think` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_completed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FKtnoimyc2wv6tiasoiioxy0rnq` (`event_id`),
  KEY `FK5lidm6cqbc7u4xhqpxm898qme` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Earum excepteur volu','Atque id error pari','Obcaecati non culpa ',0,'Debitis rerum sunt ','Mollitia culpa verit',2,4),(2,'Consectetur occaeca','Id quis temporibus a','Dolor optio nihil e',1,'Doloremque officia q','Impedit maxime dolo',5,4),(3,'Asperiores unde recu','Perferendis consecte','Perferendis esse am',2,'Omnis dolor eos duci','Blanditiis non aliqu',3,4),(4,'Omnis maxime ad laud','Quasi consequuntur d','Sed in eos possimus',1,'Inventore minim ulla','Rem quis qui perspic',4,4),(5,'Sapiente non maiores','Quis animi sunt ist','Amet vero porro eli',2,'Deleniti omnis delen','Porro ipsum recusand',7,6),(6,'Tenetur labore quaer','Pariatur Temporibus','Excepturi beatae tem',2,'Fuga Nisi repellend','Eius dolorem aliquam',6,6),(7,'Iure fuga Soluta de','Cillum qui magnam a ','Expedita consequuntu',0,'Magna ut anim nihil ','Commodo odio volupta',8,6),(8,'Esse beatae enim et ','Officia sed expedita','Nam non iure in repe',0,'Sapiente proident v','Nemo esse sunt per',5,4),(9,'Eveniet ad odit con','Nihil duis accusanti','Qui illo in qui adip',0,'Consequatur id hic ','Sit est culpa sunt ',1,4),(10,'Consequatur consequ','Accusantium labore q','Quo reiciendis tempo',0,'Ad eos ipsam quam t','Accusantium iste und',2,4),(11,'Amet deserunt aut i','Esse perferendis ve','Consequatur eiusmod ',0,'Iure quia aute alias','Error id possimus f',4,7),(12,'Tempore dolorem et ','Nihil fugiat in tene','Dolores aliquid cum ',0,'Consequat Corporis ','Dolores voluptates e',2,7),(13,'Sint eos sed anim am','Suscipit a hic non l','Repudiandae sed nisi',0,'Dolor ipsum molesti','Velit dolores eum do',7,9);
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_class_post`
--

LOCK TABLES `user_class_post` WRITE;
/*!40000 ALTER TABLE `user_class_post` DISABLE KEYS */;
INSERT INTO `user_class_post` VALUES (1,4,1,4),(2,4,2,4),(3,4,3,4),(4,4,4,4),(5,5,5,6),(6,5,6,6),(7,5,7,6),(8,8,8,4),(9,8,9,4),(10,8,10,4),(12,7,11,7),(13,7,12,7),(14,8,NULL,8),(15,9,NULL,9),(16,9,13,9);
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
  `avatar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKteip88j90fbo9odnc9gxpq6n1` (`class_id`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'Doctor',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','doctor',NULL,4,'avatar_doctor.png',NULL),(2,0,'Parent1',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','parent1',NULL,3,'avatar_teacher.png',NULL),(3,0,'Teacher',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','teacher',NULL,2,'avatar_teacher1.jpg',NULL),(4,0,'Student1',2,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','student1',8,1,'avatar_student1.jpg','ST0001'),(5,0,'Parent2',NULL,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','parent2',NULL,3,'avatar_parent2.png',NULL),(6,0,'Student2',5,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','student2',5,1,'avatar_student2.png','ST0002'),(7,0,'Student3',2,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','student3',7,1,'avatar_student2.png','ST0003'),(8,0,'Student4',5,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','student4',4,1,'avatar_student2.png','ST0004'),(9,0,'Student5',2,'$2a$10$z58oyk/wi9vXXo2Db9c3Ju6xP1hJVGXcHzrIFJ4ybFiv3XGNTI4Yq','student5',9,1,'avatar_student2.png','ST0005');
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

--
-- Final view structure for view `list_all_student`
--

/*!50001 DROP VIEW IF EXISTS `list_all_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `list_all_student` AS select `ls`.`id` AS `id`,`ls`.`fullName` AS `fullName`,`ls`.`user_code` AS `user_code`,`ls`.`class_name` AS `class_name`,group_concat(distinct `e`.`event_name` separator ',') AS `event_name`,group_concat(distinct `f`.`factorial_hashtag` separator ',') AS `factorial_hashtag` from (((((`user_class_post` `ucl` left join `list_student` `ls` on((`ls`.`id` = `ucl`.`user_id`))) left join `posts` `p` on((`p`.`post_id` = `ucl`.`post_id`))) left join `events` `e` on((`p`.`event_id` = `e`.`event_id`))) left join `post_detail` `pd` on((`ls`.`id` = `pd`.`user_id`))) left join `factorials` `f` on((`f`.`factorial_id` = `pd`.`factorial_id`))) where (`ls`.`id` = `ucl`.`user_id`) group by `ls`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `list_student`
--

/*!50001 DROP VIEW IF EXISTS `list_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `list_student` AS select distinct `u`.`id` AS `id`,`u`.`full_name` AS `fullName`,`u`.`user_code` AS `user_code`,`c`.`class_name` AS `class_name` from (`users` `u` join `classes` `c` on((`u`.`class_id` = `c`.`class_id`))) where (`u`.`class_id` = `c`.`class_id`) group by `c`.`class_id` order by `u`.`user_code` */;
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

-- Dump completed on 2021-11-17 16:47:14
