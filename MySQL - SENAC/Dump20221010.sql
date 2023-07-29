CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora` datetime DEFAULT NULL,
  `valor` decimal(9,2) DEFAULT NULL,
  `carteirinha_convenio` varchar(45) DEFAULT NULL,
  `medico_responsavel_id` int(11) DEFAULT NULL,
  `especialidade_id` int(11) DEFAULT NULL,
  `pacientes_id` int(11) DEFAULT NULL,
  `convenio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_medico_responsavel_id` (`medico_responsavel_id`),
  KEY `FK_especialidade` (`especialidade_id`),
  KEY `FK_pacientes_id` (`pacientes_id`),
  KEY `FK_convenio_id` (`convenio_id`),
  CONSTRAINT `FK_convenio_id` FOREIGN KEY (`convenio_id`) REFERENCES `convenio` (`id`),
  CONSTRAINT `FK_especialidade` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidades` (`id`),
  CONSTRAINT `FK_medico_responsavel_id` FOREIGN KEY (`medico_responsavel_id`) REFERENCES `medicos` (`id`),
  CONSTRAINT `FK_pacientes_id` FOREIGN KEY (`pacientes_id`) REFERENCES `pacientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'2019-02-06 09:20:00',110.00,'55643215',1,1,1,1),(2,'2020-02-06 07:30:00',130.00,'55643215',1,2,1,1),(3,'2019-09-06 17:20:00',150.00,'213455',3,2,2,1),(4,'2015-08-06 11:20:00',145.00,'213455',3,2,2,1),(5,'2020-01-01 10:00:00',150.00,'21484234',8,1,3,2),(6,'2016-01-01 20:10:00',195.00,'21484234',8,2,3,2),(7,'2019-06-06 16:00:00',110.00,'4548643',9,3,4,2),(8,'2019-02-06 21:00:00',210.00,'4548643',9,2,4,2),(9,'2015-02-06 20:30:00',110.00,'12342342',8,1,5,3),(10,'2021-03-15 08:30:00',160.00,'12342342',8,2,5,3),(11,'2019-03-06 09:40:00',150.00,'4351315',9,3,6,3),(12,'2021-04-06 13:40:00',160.00,'11234214124',1,1,7,3),(13,'2021-05-06 14:10:00',180.00,'21341244',3,2,8,4),(14,'2016-04-06 16:30:00',510.00,NULL,2,3,9,NULL),(15,'2017-03-06 13:20:00',780.00,NULL,4,2,10,NULL),(16,'2018-01-06 12:20:00',510.00,NULL,5,1,11,NULL),(17,'2018-02-06 11:20:00',610.00,NULL,6,2,12,NULL),(18,'2019-08-06 10:20:00',980.00,NULL,7,1,13,NULL),(19,'2020-02-06 09:50:00',1610.00,NULL,8,1,14,NULL),(20,'2021-02-06 22:10:00',160.00,NULL,9,3,15,NULL);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  `carencia` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cnpj` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES (1,'MedMais','61818733000122','2024-12-30'),(2,'UniSaude','67371598000104','2023-12-30'),(3,'Pro Health','41301677000147','2025-01-01'),(4,'Fusex','05229047000145','2023-02-28');
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `cre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `cre` (`cre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
INSERT INTO `enfermeiro` VALUES (1,'Miguel Santos','50909763097','111111'),(2,'Suellen Da Silva','97241868064','222222'),(3,'Danilo Nunes','99834585004','333333'),(4,'Alexandre Curado','67175026064','444444'),(5,'Douglas Silveira','41856737012','555555'),(6,'Maria do Carmo','08316549026','666666'),(7,'Gabriel Evaristo','81780217064','777777'),(8,'Daniel Apolitano','47558400074','888888'),(9,'Alan Ribeiro','62600037063','999999'),(10,'Alexandre Curado','01166535070','101010');
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_especialidade` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'Pediatra'),(2,'Clinica Geral'),(3,'Gastroenterologia'),(4,'Dermatologia');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacao`
--

DROP TABLE IF EXISTS `internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_entrada` date NOT NULL,
  `data_prev_alta` date DEFAULT NULL,
  `data_alta_` date DEFAULT NULL,
  `procedimento` tinytext,
  `quarto_id` int(11) DEFAULT NULL,
  `pacientes_id` int(11) DEFAULT NULL,
  `medico_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_quarto_id` (`quarto_id`),
  KEY `FK_pacientes` (`pacientes_id`),
  KEY `FK_medico` (`medico_id`),
  CONSTRAINT `FK_medico` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  CONSTRAINT `FK_pacientes` FOREIGN KEY (`pacientes_id`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `FK_quarto_id` FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao`
--

LOCK TABLES `internacao` WRITE;
/*!40000 ALTER TABLE `internacao` DISABLE KEYS */;
INSERT INTO `internacao` VALUES (1,'2015-02-01','2015-03-02','2015-03-01','periodo em observação',1,1,1),(2,'2015-06-04','2015-09-02','2015-09-01','periodo em observação',1,1,2),(3,'2016-07-08','2016-08-02','2016-08-01','Periodo em obervação',1,2,3),(4,'2017-08-09','2017-08-02','2017-08-01','Periodo em obeservação',2,3,4),(5,'2015-06-04','2015-09-02','2015-09-01','Periodo em observação',3,4,5),(6,'2016-07-08','2016-08-02','2016-08-01','Periodo em obervação',1,1,6),(7,'2016-07-08','2016-08-02','2016-08-01','Periodo em obervação',1,2,7);
/*!40000 ALTER TABLE `internacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacao_efermeiro`
--

DROP TABLE IF EXISTS `internacao_efermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacao_efermeiro` (
  `responsavel_id` int(11) NOT NULL,
  `internacao_id` int(11) NOT NULL,
  PRIMARY KEY (`responsavel_id`,`internacao_id`),
  KEY `FK_internacao_id` (`internacao_id`),
  CONSTRAINT `FK_internacao_id` FOREIGN KEY (`internacao_id`) REFERENCES `internacao` (`id`),
  CONSTRAINT `FK_responsavel_id` FOREIGN KEY (`responsavel_id`) REFERENCES `enfermeiro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao_efermeiro`
--

LOCK TABLES `internacao_efermeiro` WRITE;
/*!40000 ALTER TABLE `internacao_efermeiro` DISABLE KEYS */;
INSERT INTO `internacao_efermeiro` VALUES (1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,5),(10,5),(1,6),(2,6),(3,7),(4,7);
/*!40000 ALTER TABLE `internacao_efermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `crm` varchar(45) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `especializacao` varchar(45) DEFAULT NULL,
  `em_atividade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Anny Quintanilha','1970-11-10','86132473009','120935','(69)3752-5488','Rua Flores 10, apto 101','especialista','Em atividade'),(2,'Suéli Simão Pegado','1990-08-27','62876978067','15891','(97)2810-2734','Avenida Japão 50','residente','Em atividade'),(3,'Tito Carqueijeiro','1973-05-19','74588651056','14777','(83)3272-8326','Rua flores 670','generalista','Inativos'),(4,'Júlia Camarinho','1980-07-05','74492596054','24654','(61)2615-4776','Rua Albieri 590','generalista','Inativos'),(5,'Alberto Veríssimo','1986-06-26','70600178013','13548','(67)3754-8886','Avenida das aves, 9912, apto 60','residente','Em atividade'),(6,'Gael Milheiro Lemes','1964-02-13','38603737061','9826','(82)2433-7762','Rua das Rosas, 80, apto 200','especialista','Em atividade'),(7,'Gisela Espinosa','1980-09-12','23529091049','34548','(86)3368-4812','Avenida Santos, 90','generalista','Em atividade'),(8,'Ezequiel Pestana Henriques','1979-06-30','67297959057','9756','(69)2537-6076','Avenida Chateaubriand, 150','especialista','Em atividade'),(9,'Alisson Sacramento','1981-01-15','80814279023','178105','(79)2718-0264','Rua Albieri 480','especialista','Em atividade'),(10,'Lívia Veloso','1972-03-22','20924987030','17897','(61)3019-1483','Travessa A 89','especialista','Em atividade');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos_especialidade`
--

DROP TABLE IF EXISTS `medicos_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos_especialidade` (
  `medico_id` int(11) NOT NULL,
  `especialidade_id` int(11) NOT NULL,
  PRIMARY KEY (`medico_id`,`especialidade_id`),
  KEY `FK_especialidade_id` (`especialidade_id`),
  CONSTRAINT `FK_especialidade_id` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidades` (`id`),
  CONSTRAINT `FK_medico_id` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos_especialidade`
--

LOCK TABLES `medicos_especialidade` WRITE;
/*!40000 ALTER TABLE `medicos_especialidade` DISABLE KEYS */;
INSERT INTO `medicos_especialidade` VALUES (1,1),(8,1),(1,2),(3,2),(9,2),(8,3),(9,3),(3,4);
/*!40000 ALTER TABLE `medicos_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cpf` varchar(11) CHARACTER SET latin1 NOT NULL,
  `endereco` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `telefone` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `convenio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `FK_convenio` (`convenio_id`),
  CONSTRAINT `FK_convenio` FOREIGN KEY (`convenio_id`) REFERENCES `convenio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Karine Macena Porciúncula','42186317001','Rua das Bromélias 10','1960-03-21','99 8598-1235','karine@gmail.com',1),(2,'Zilda Gomide Osório','17964170090','Rua Brasil 10','1976-01-01','99 8878-1548','zilda@gmail.com',1),(3,'Fabrício Norões Xavier','27176787000','Avenida Fontes 50','1999-12-01','99 7945-9878','fabricio@gmail.com',2),(4,'César Sítima Faria','53093395070','Rua Camomila 95','1998-09-09','99 7944-7893','cesar@gmail.com',2),(5,'Silvana Fartaria Nazário','24987742039','Avenida Fontes 80','1997-02-02','99 7944-6354','silvana@gmail.com',3),(6,'Evandro Trindade Bouça','74488578004','Rua das Bromélias 100','1980-12-01','99 8888-1528','evandro@gmail.com',3),(7,'Helton Espinosa','72426183047','Rua Lírios 89','1997-10-11','99 7854-1718','helton@gmail.com',4),(8,'Ivo Brandão Palos','84262948048','Rua Santos Dumont 98','2000-12-07','99 6897-6321','ivo@gmail.com',4),(9,'Armindo Moreira Azeredo','67533641027','Avenida Cascata 78','2001-05-09','99 7579-9453','armindo@gmail.com',NULL),(10,'Pablo Atilano Flores','09686683054','Rua Figueira 90','1975-09-13','99 6897-2568','pablo@gmail.com',NULL),(11,'Cármen Mata Camargo','90569215099','Rua Lírios 68','2002-01-01','99 7789-3655','carmen@gmail.com',NULL),(12,'Mark Festas Santana','84537768061','Rua gabigol 60','1988-08-08','99 7898-1234','mark@gmail.com',NULL),(13,'Giovanni Arouca Mata','03074142057','Rua nascimento 33','1975-08-03','99 7534-1234','giovanni@gmail.com',NULL),(14,'Francisca Parracho Caneira','40967947081','rua silveira 14','1985-12-31','99 7534-7897','francisco@gmail.com',NULL),(15,'Domingas Souza Sá','51077408048','Rua das india 45','1998-01-02','99 7534-1234','domingas@gmail.com',NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `tipo_quarto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tipo_quarto_id` (`tipo_quarto_id`),
  CONSTRAINT `FK_tipo_quarto_id` FOREIGN KEY (`tipo_quarto_id`) REFERENCES `tipo_quarto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
INSERT INTO `quarto` VALUES (1,'H101','apartamento',1),(2,'H103','quarto duplo',2),(3,'H104','enfermaria',3);
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita`
--

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicamento` varchar(45) CHARACTER SET latin1 NOT NULL,
  `quantidade` varchar(45) CHARACTER SET latin1 NOT NULL,
  `instrucao_uso` varchar(45) CHARACTER SET latin1 NOT NULL,
  `consulta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_consulta_id` (`consulta_id`),
  CONSTRAINT `FK_consulta_id` FOREIGN KEY (`consulta_id`) REFERENCES `consulta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
INSERT INTO `receita` VALUES (1,'xarope e dipirona','5',' Usar em 8 em 8 hrs por 5 dias',1),(2,'amoxilina e refenol','3','Usar em 8 em 8 hrs por 3 dias',2),(3,'Neosaldina e Engov','4','Usar em 8 em 8 hrs por 4 dias',3),(4,'Novalgina e Lisador','2','Usar em 8 em 8 hrs por 2 dias',4),(5,'Doralgina e Sonrisal','1','Usar em 8 em 8 hrs por 1 dias',5),(6,'Doril e Toragesic','6','Usar em 8 em 8 hrs por 6 dias',6),(7,'Dipirona N.Q e Tylenol','8','Usar em 8 em 8 hrs por 8 dias',7),(8,'Ivermectina e Saxenda','6','Usar em 8 em 8 hrs por 6 dias',8),(9,'Xarelto e Glifage','10','Usar em 8 em 8 hrs por 10 dias',9),(10,'Aradois e Ozempic','5','Usar em 8 em 8 hrs por 5 dias',10);
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_quarto`
--

DROP TABLE IF EXISTS `tipo_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_quarto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor_diaria` decimal(9,2) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_quarto`
--

LOCK TABLES `tipo_quarto` WRITE;
/*!40000 ALTER TABLE `tipo_quarto` DISABLE KEYS */;
INSERT INTO `tipo_quarto` VALUES (1,1100.00,'apartamento all incluse'),(2,700.00,'quarto duplo para acompanhante'),(3,350.00,'Enfermaria com os outros pacientes');
/*!40000 ALTER TABLE `tipo_quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hospital'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-10  9:29:44
