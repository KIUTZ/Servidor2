CREATE DATABASE  IF NOT EXISTS `proyecto3a` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `proyecto3a`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto3a
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `medicion`
--

DROP TABLE IF EXISTS `medicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id sonda` int(15) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `Latitud` float NOT NULL,
  `Longitud` double NOT NULL,
  `Humedad` int(100) NOT NULL,
  `Temperatura` float NOT NULL,
  `Contaminacion` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Id Sonda` (`id sonda`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicion`
--

LOCK TABLES `medicion` WRITE;
/*!40000 ALTER TABLE `medicion` DISABLE KEYS */;
INSERT INTO `medicion` VALUES (1,1,'0000-00-00','00:00:00.000000',0,0,0,0,0),(2,0,'0000-00-00','00:00:00.000000',0,0,0,2842,35474),(3,0,'0000-00-00','00:00:00.000000',0,0,0,19823,27745),(4,0,'0000-00-00','00:00:00.000000',0,0,0,2842,35474),(5,0,'0000-00-00','00:00:00.000000',0,0,0,2843,35474),(6,0,'0000-00-00','00:00:00.000000',0,0,0,2843,35474),(7,0,'0000-00-00','00:00:00.000000',0,0,0,2869,0),(8,0,'0000-00-00','00:00:00.000000',0,0,0,3125,65518),(9,0,'0000-00-00','00:00:00.000000',0,0,0,2844,35474),(10,0,'0000-00-00','00:00:00.000000',0,0,0,19823,27745),(11,0,'0000-00-00','00:00:00.000000',0,0,0,3001,69),(12,0,'0000-00-00','00:00:00.000000',0,0,0,3002,69),(13,0,'0000-00-00','00:00:00.000000',0,0,0,3003,69),(14,0,'0000-00-00','00:00:00.000000',0,0,0,3003,69),(15,0,'0000-00-00','00:00:00.000000',0,0,0,2817,69),(16,0,'0000-00-00','00:00:00.000000',0,0,0,2818,69),(17,0,'0000-00-00','00:00:00.000000',0,0,0,2819,69),(18,0,'0000-00-00','00:00:00.000000',0,0,0,2819,69),(19,0,'0000-00-00','00:00:00.000000',0,0,0,2819,69),(20,0,'0000-00-00','00:00:00.000000',0,0,0,2820,69),(21,0,'0000-00-00','00:00:00.000000',0,0,0,2817,1632),(22,0,'0000-00-00','00:00:00.000000',0,0,0,2817,1632),(23,0,'0000-00-00','00:00:00.000000',0,0,0,2817,1632),(24,0,'0000-00-00','00:00:00.000000',0,0,0,2818,1632),(25,0,'0000-00-00','00:00:00.000000',0,0,0,2818,1632),(26,0,'0000-00-00','00:00:00.000000',0,0,0,2819,1632),(27,0,'0000-00-00','00:00:00.000000',0,0,0,2819,1632),(28,0,'0000-00-00','00:00:00.000000',0,0,0,2820,1632),(29,0,'0000-00-00','00:00:00.000000',0,0,0,2820,1632),(30,0,'0000-00-00','00:00:00.000000',0,0,0,2820,1632),(31,0,'0000-00-00','00:00:00.000000',0,0,0,2821,1632),(32,0,'0000-00-00','00:00:00.000000',0,0,0,2821,1632),(33,0,'0000-00-00','00:00:00.000000',0,0,0,2821,1632);
/*!40000 ALTER TABLE `medicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sonda`
--

DROP TABLE IF EXISTS `sonda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sonda` (
  `ID Sonda` int(10) NOT NULL AUTO_INCREMENT,
  `ID mediciones` int(15) NOT NULL,
  `ID usuario` int(15) NOT NULL,
  `bateria` int(100) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`ID Sonda`),
  KEY `id medicion fk` (`ID mediciones`),
  CONSTRAINT `id medicion fk` FOREIGN KEY (`ID mediciones`) REFERENCES `medicion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonda`
--

LOCK TABLES `sonda` WRITE;
/*!40000 ALTER TABLE `sonda` DISABLE KEYS */;
INSERT INTO `sonda` VALUES (1,1,73667766,90,'ok');
/*!40000 ALTER TABLE `sonda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `nombre` char(25) NOT NULL,
  `usuario` char(15) NOT NULL,
  `contraseña` char(15) NOT NULL,
  `idSonda` int(15) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idSonda` (`idSonda`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idSonda`) REFERENCES `sonda` (`ID Sonda`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73667767 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (73667766,'Zaida','Admin','1234',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06 17:03:37
