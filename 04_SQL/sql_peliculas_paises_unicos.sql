-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_peliculas
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `paises_unicos`
--

DROP TABLE IF EXISTS `paises_unicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises_unicos` (
  `id` int DEFAULT NULL,
  `production_countries` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises_unicos`
--

LOCK TABLES `paises_unicos` WRITE;
/*!40000 ALTER TABLE `paises_unicos` DISABLE KEYS */;
INSERT INTO `paises_unicos` VALUES (1,'US'),(2,'CN'),(30607,'CZ'),(4,'DE'),(5,'CA'),(6,'GB'),(590801,'ACTOR'),(8,'PL'),(25246,'DIRECTOR'),(10,'IN'),(97464,'SU'),(12,'JP'),(164576,'NO'),(14,'NG'),(15,'BR'),(16,'PH'),(17,'RU'),(18,'IT'),(146895,'TW'),(20,'EE'),(145006,'ES'),(22,'KR'),(23,'FR'),(24,'FI'),(147704,'ACTOR'),(26,'MX'),(145009,'LI'),(28,'RS'),(29,'NL'),(30,'ACTOR'),(31,'IS'),(32,'CO'),(33,'TR'),(34,'EC'),(35,'BE'),(12420,'CH'),(37,'KE'),(38,'EG'),(39,'MC'),(40,'AU'),(41,'SE'),(42,'DO'),(43,'HN'),(44,'IE'),(45,'HK'),(46,'NZ'),(47,'AT'),(48,'VN'),(49,'GR'),(50,'PS'),(51,'HU'),(52,'AR'),(53,'TH'),(54,'AF'),(55,'KW'),(56,'LB'),(57,'IR'),(58,'CL'),(59,'IL'),(60,'PR'),(61,'TN'),(62,'AE'),(63,'MY'),(64,'RO'),(373429,'ACTOR'),(66,'SY'),(373430,'PA'),(68,'QA'),(147255,'SA'),(70,'JO'),(71,'UY'),(72,'TZ'),(73,'CU'),(74,'PE'),(75,'FO'),(76,'MA'),(77,'OM'),(78,'UA'),(79,'GE'),(80,'BD'),(81,'JM'),(82,'BY'),(83,'YU'),(84,'ACTOR'),(85,'LU'),(86,'PT'),(87,'VE'),(88,'GH'),(89,'CD'),(90,'DZ'),(91,'BG'),(92,'GT'),(93,'SK'),(94,'CF'),(95,'SG'),(96,'SN'),(97,'SO'),(98,'RW'),(99,'LT'),(100,'KZ'),(101,'BO'),(102,'ET'),(103,'BF'),(104,'SB'),(105,'GD'),(106,'MT'),(107,'SZ'),(108,'PK'),(109,'TT'),(110,'IQ'),(111,'GL'),(112,'MN'),(113,'PY'),(114,'AN'),(115,'CR'),(116,'LV'),(117,'KH'),(118,'BA'),(119,'BM'),(120,'NI'),(121,'XK'),(122,'TC'),(403700,'NP'),(124,'AZ'),(125,'SV'),(266834,'ACTOR'),(127,'SI'),(196010,'HR'),(129,'BS'),(180480,'AL'),(131,'VU'),(132,'AQ'),(133,'FM'),(134,'ZW'),(135,'MK'),(136,'MW'),(137,'CI'),(138,'UG'),(139,'UZ'),(140,'CY'),(141,'KG'),(135399,'PF'),(143,'FJ'),(68738,'KI'),(145,'BT'),(143270,'BW'),(147,'MU'),(148,'NA'),(149,'AO'),(150,'LK'),(151,'IO'),(152,'NC'),(153,'KN');
/*!40000 ALTER TABLE `paises_unicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-16 16:51:33
