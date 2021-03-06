-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: cdtcolab
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `idfood` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `id_colab` int DEFAULT NULL,
  PRIMARY KEY (`idfood`),
  KEY `fk_colab_food_idx` (`id_colab`),
  CONSTRAINT `fk_colab_food` FOREIGN KEY (`id_colab`) REFERENCES `colab` (`idcolab`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Pão',1),(2,'Carne',3),(3,'Carne',3),(4,'Queijo',3),(5,'PÃ£o',3),(6,'Refri',3),(7,'Leite',4),(8,'RequeijÃ£o',5),(9,'Reqq',5),(10,'RequeijÃ£o',5),(11,'RequeijÃ£o',5),(12,'RequeijÃ£o',5),(13,'RequeijÃ£o',5),(14,'RequeijÃ£o',5),(15,'RequeijÃ£o',5),(16,'RequeijÃ£o',5),(17,'RequeijÃ£o',5),(18,'RequeijÃ£o',5),(19,'RequeijÃ£o',5),(20,'RequeijÃ£o',5),(21,'RequeijÃ£o',5),(22,'RequeijÃ£o',5),(23,'RequeijÃ£o',5),(24,'RequeijÃ£o',5),(25,'RequeijÃ£o',5),(26,'RequeijÃ£o',5),(27,'RequeijÃ£o',5),(28,'Sorvete',5),(29,'Sorvete',5),(30,'Bolacha',5),(31,'Bolacha',5),(32,'Bolacha',5),(33,'Requeijo',5),(34,'Requeijo',5),(35,'Requeijo',5),(36,'Requeijo',5),(37,'Leite',5),(38,'Salsicha',5),(39,'Bolo',7),(40,'Sorvete',7),(41,'Uisque',8),(42,'Cebola',8),(43,'Picanha',8),(44,'Salsa',8),(45,'FeijÃ£o',8),(46,'Arroz',8),(47,'Farinha',8),(48,'Arrozes',9),(49,'Cachorro-quente',10),(50,'Bolo',11),(51,'Leite',11);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 17:39:09
