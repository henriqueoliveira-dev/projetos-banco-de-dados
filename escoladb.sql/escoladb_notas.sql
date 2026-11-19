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
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id_nota` int NOT NULL AUTO_INCREMENT,
  `id_matricula_disciplina` int NOT NULL,
  `tipo_avaliacao` varchar(50) NOT NULL,
  `bimestre` int NOT NULL,
  `nota` decimal(5,2) NOT NULL,
  `data_avaliacao` date DEFAULT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `fk_notas_matricula_disciplina` (`id_matricula_disciplina`),
  CONSTRAINT `fk_notas_matricula_disciplina` FOREIGN KEY (`id_matricula_disciplina`) REFERENCES `matricula_disciplina` (`id_matricula_disciplina`),
  CONSTRAINT `chk_bimestre` CHECK ((`bimestre` between 1 and 4)),
  CONSTRAINT `chk_nota` CHECK (((`nota` >= 0) and (`nota` <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,'Prova',1,8.50,'2026-03-10'),(2,2,'Prova',1,7.00,'2026-03-10'),(3,3,'Prova',1,9.00,'2026-03-10'),(4,4,'Prova',1,6.50,'2026-03-10'),(5,5,'Prova',1,8.00,'2026-03-10'),(6,6,'Prova',1,9.50,'2026-03-10'),(7,7,'Prova',1,9.00,'2026-03-10'),(8,8,'Prova',1,8.00,'2026-03-10'),(9,9,'Prova',1,7.50,'2026-03-10'),(10,10,'Prova',1,8.50,'2026-03-10'),(11,11,'Prova',1,7.00,'2026-03-10'),(12,12,'Prova',1,8.00,'2026-03-10');
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-19 19:58:31
