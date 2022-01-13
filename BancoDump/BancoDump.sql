-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: casemuitas
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Codigo` int DEFAULT NULL,
  `Nome` varchar(128) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,1,'Ferramentas Elétricas','2022-01-12 14:27:05','2022-01-13 15:39:14'),(2,10,'Ferramentas Especiais','2022-01-12 14:27:30','2022-01-13 15:33:38'),(3,1,'Ferramentas','2022-01-13 15:31:31','2022-01-13 15:31:31');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Codigo` int DEFAULT NULL,
  `Nome` varchar(128) DEFAULT NULL,
  `DataDeNascimento` datetime DEFAULT NULL,
  `Email` varchar(32) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,22,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-11 22:28:11','2022-01-11 22:28:11'),(2,30,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-11 22:28:29','2022-01-11 22:28:29'),(3,30,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-11 23:17:54','2022-01-11 23:17:54'),(4,30,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-11 23:19:56','2022-01-11 23:19:56'),(5,30,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-11 23:20:05','2022-01-11 23:20:05'),(6,30,'Rafael','1990-11-22 00:00:00','teste@gmail.com','2022-01-11 23:20:18','2022-01-11 23:20:18'),(7,75,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-11 23:21:43','2022-01-11 23:21:43'),(8,22,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-13 17:38:21','2022-01-13 17:38:21'),(9,22,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-13 17:38:39','2022-01-13 17:38:39'),(10,22,'Rafael','2000-11-22 00:00:00','teste@gmail.com','2022-01-13 17:43:40','2022-01-13 17:43:40'),(11,22,'Rafael','2002-01-13 00:00:00','teste@gmail.com','2022-01-13 17:44:25','2022-01-13 17:44:25'),(12,22,'Rafael','2004-01-13 00:00:00','teste@gmail.com','2022-01-13 17:44:48','2022-01-13 17:44:48'),(13,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 17:45:20','2022-01-13 17:45:20'),(14,22,'Rafael','2004-01-12 00:00:00','teste@gmail.com','2022-01-13 17:45:32','2022-01-13 17:45:32'),(15,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 17:45:47','2022-01-13 17:45:47'),(16,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 17:52:56','2022-01-13 17:52:56'),(17,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 17:54:10','2022-01-13 17:54:10'),(18,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 17:59:57','2022-01-13 17:59:57'),(19,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 18:04:05','2022-01-13 18:04:05'),(20,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 18:11:59','2022-01-13 18:11:59'),(21,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 18:12:35','2022-01-13 18:12:35'),(22,22,'Rafael','2001-11-22 00:00:00','teste@gmail.com','2022-01-13 18:14:47','2022-01-13 18:14:47'),(23,22,'Rafael','2004-01-13 00:00:00','teste@gmail.com','2022-01-13 18:15:44','2022-01-13 18:15:44'),(24,30,'Maria','2000-08-28 00:00:00','MariaDaGloria@gmail.com','2022-01-13 18:57:37','2022-01-13 19:01:48');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoques`
--

DROP TABLE IF EXISTS `estoques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Quantidade` int DEFAULT NULL,
  `Preço` decimal(15,2) DEFAULT NULL,
  `ProdutoID` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ProdutoID` (`ProdutoID`),
  CONSTRAINT `estoques_ibfk_1` FOREIGN KEY (`ProdutoID`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoques`
--

LOCK TABLES `estoques` WRITE;
/*!40000 ALTER TABLE `estoques` DISABLE KEYS */;
INSERT INTO `estoques` VALUES (1,10,1.50,2,'2022-01-12 14:30:59','2022-01-12 14:30:59'),(2,15,5.50,4,'2022-01-12 14:51:33','2022-01-13 15:24:05'),(4,5,20.00,2,'2022-01-12 23:21:31','2022-01-12 23:21:31'),(5,2,29.90,8,'2022-01-13 15:19:52','2022-01-13 15:19:52');
/*!40000 ALTER TABLE `estoques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Codigo` int DEFAULT NULL,
  `Nome` varchar(128) DEFAULT NULL,
  `Descrição` varchar(1024) DEFAULT NULL,
  `CategoriaID` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoriaID` (`CategoriaID`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`CategoriaID`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (2,1,'Alicate','O mais morderno alicate já vendido',1,'2022-01-12 14:26:30','2022-01-13 15:35:33'),(4,2,'Chave phillips','Aqui está uma descrição',2,'2022-01-12 14:49:47','2022-01-13 15:37:07'),(8,1,'Chave de Fenda','A melhor chave do mercado',2,'2022-01-13 15:18:47','2022-01-13 15:18:47');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20220111215715-create-estoque.js'),('20220111215724-create-categoria.js'),('20220111215731-create-venda.js'),('20220111215814-create-produto.js'),('20220111215826-create-cliente.js'),('20220111222353-create-cliente.js'),('20220111222426-create-produto.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Codigo` int DEFAULT NULL,
  `Valor` varchar(128) DEFAULT NULL,
  `DataDaVenda` datetime DEFAULT NULL,
  `ClienteID` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ClienteID` (`ClienteID`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,1,'R$44,90','2022-01-12 00:00:00',15,'2022-01-13 18:28:24','2022-01-13 18:36:33'),(2,1,'R$59,90','2022-01-12 00:00:00',20,'2022-01-13 18:28:46','2022-01-13 18:28:46'),(3,1,'R$69,90','2022-01-12 00:00:00',21,'2022-01-13 18:28:53','2022-01-13 18:28:53'),(4,1,'R$79,90','2022-01-12 00:00:00',22,'2022-01-13 18:29:00','2022-01-13 18:29:00');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'casemuitas'
--

--
-- Dumping routines for database 'casemuitas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-13 16:16:37
