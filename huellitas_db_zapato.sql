-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: huellitas_db
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Table structure for table `zapato`
--

DROP TABLE IF EXISTS `zapato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zapato` (
  `id_zapato` int NOT NULL,
  `id_lote_produccion` int DEFAULT NULL,
  `id_maestro_ensamblador` int DEFAULT NULL,
  `id_ayudante_preparador` int DEFAULT NULL,
  `id_molde` int DEFAULT NULL,
  `id_suela` int DEFAULT NULL,
  PRIMARY KEY (`id_zapato`),
  KEY `id_lote_produccion` (`id_lote_produccion`),
  KEY `id_maestro_ensamblador` (`id_maestro_ensamblador`),
  KEY `id_ayudante_preparador` (`id_ayudante_preparador`),
  KEY `id_molde` (`id_molde`),
  KEY `id_suela` (`id_suela`),
  CONSTRAINT `zapato_ibfk_1` FOREIGN KEY (`id_lote_produccion`) REFERENCES `lote_produccion` (`id_lote_produccion`),
  CONSTRAINT `zapato_ibfk_2` FOREIGN KEY (`id_maestro_ensamblador`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `zapato_ibfk_3` FOREIGN KEY (`id_ayudante_preparador`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `zapato_ibfk_4` FOREIGN KEY (`id_molde`) REFERENCES `molde` (`id_molde`),
  CONSTRAINT `zapato_ibfk_5` FOREIGN KEY (`id_suela`) REFERENCES `suela` (`id_suela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zapato`
--

LOCK TABLES `zapato` WRITE;
/*!40000 ALTER TABLE `zapato` DISABLE KEYS */;
INSERT INTO `zapato` VALUES (21,300,2,5,1,1),(22,300,2,5,1,1),(23,300,2,5,1,1);
/*!40000 ALTER TABLE `zapato` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-04 21:35:03
