-- MySQL dump 10.13  Distrib 8.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: vollmed_api
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','create-table-medicos','SQL','V1__create-table-medicos.sql',559180349,'root','2023-09-24 14:58:22',41,1),(2,'2','alter-table-medicos','SQL','V2__alter-table-medicos.sql',1467771219,'root','2023-10-01 00:34:32',21,1),(3,'3','create-table-pacientes','SQL','V3__create-table-pacientes.sql',1088688896,'root','2023-10-01 14:27:09',36,1),(4,'4','alter-table-medicos-add-column-ativo','SQL','V4__alter-table-medicos-add-column-ativo.sql',1410818282,'root','2023-10-10 00:03:50',24,1),(5,'5','alter-table-pacientes-add-column-ativo','SQL','V5__alter-table-pacientes-add-column-ativo.sql',103283871,'root','2023-10-10 00:40:10',26,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `crm` varchar(6) NOT NULL,
  `especialidade` varchar(100) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `uf` char(2) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `ativo` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `crm` (`crm`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Mazinho Freitas','mazinho.freitas@voll.med','123456','ORTOPEDIA','rua 1','bairro','12345678',NULL,'1','DF','Brasilia','',1),(2,'Danilo Gabriel','danilonasciment@voll.med','654321','DEMATORLOGIA','rua 1','bairro','12345678',NULL,'1','DF','Brasilia','',1),(4,'Jonh','Jonh@voll.med','564892','DEMATORLOGIA','rua 1','bairro','12345678',NULL,'1','DF','Brasilia','6199668835',0),(5,'Carlos','Carlos@voll.med','564845','DEMATORLOGIA','rua 1','bairro','12345678',NULL,'1','DF','Brasilia','6199688835',1),(6,'Matheus','matehus@voll.med','464445','DEMATORLOGIA','rua 1','bairro','12345678',NULL,'1','DF','Brasilia','6199688735',1);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `uf` char(2) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `ativo` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Danilo Dev','Marcos@vollmed','01235445850','6199845455','rua 1','bairro','12345678',NULL,'1','DF','Brasilia',0),(2,'Eduado','Eduardo@vollmed','01455445850','6185845455','rua 1','bairro','12345678',NULL,'1','DF','Brasilia',1),(3,'Jhon','Jonh@vollmed','01455456601','6185845455','rua 1','bairro','12345678',NULL,'1','DF','Brasilia',1),(4,'Jessica','Jessica@vollmed','14556601854','628844455','rua 1','bairro','12345678',NULL,'1','DF','Brasilia',1),(5,'Helana','Helena@vollmed','15556601854','638844455','rua 1','bairro','12345678',NULL,'1','DF','Brasilia',0),(6,'Gabriela','Gabriela@vollmed','16556601854','648844455','rua 1','bairro','12345678',NULL,'1','DF','Brasilia',1),(7,'Bruno','Bruno@vollmed','17556601854','668844455','rua 1','bairro','12345678',NULL,'1','DF','Brasilia',1);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10  1:00:41
