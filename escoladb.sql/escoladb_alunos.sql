-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: escoladb
-- ------------------------------------------------------
-- Server version	8.4.9

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_aluno`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João Silva','111.111.111-11','2008-03-15','joao@email.com','11988881111','Rua das Flores, 100','2026-11-06 00:06:31'),(2,'Maria Oliveira','222.222.222-22','2009-07-20','maria@email.com','11988882222','Rua das Palmeiras, 200','2026-11-06 00:06:31'),(3,'Pedro Santos','333.333.333-33','2008-11-05','pedro@email.com','11988883333','Rua Central, 300','2026-11-06 00:06:31'),(4,'Ana Costa','444.444.444-44','2009-01-10','ana@email.com','11988884444','Av. Brasil, 400','2026-11-06 00:06:31'),(5,'Lucas Ferreira','555.555.555-55','2008-05-25','lucas@email.com','11988885555','Rua Azul, 500','2026-11-06 00:06:31'),(6,'Juliana Lima','666.666.666-66','2009-09-12','juliana@email.com','11988886666','Rua Verde, 600','2026-11-06 00:06:31'),(7,'Gabriel Souza','777.777.777-77','2008-12-30','gabriel@email.com','11988887777','Rua Nova, 700','2026-11-06 00:06:31'),(8,'Beatriz Almeida','888.888.888-88','2009-04-18','beatriz@email.com','11988888888','Av. Paulista, 800','2026-11-06 00:06:31'),(9,'Rafael Gomes','999.999.999-99','2008-08-08','rafael@email.com','11988889999','Rua do Sol, 900','2026-11-06 00:06:31'),(10,'Camila Ribeiro','123.456.789-00','2009-02-14','camila@email.com','11988880000','Rua das Acácias, 1000','2026-11-06 00:06:31');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-19 19:58:32
