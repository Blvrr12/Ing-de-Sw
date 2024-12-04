-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: imms
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita` (
  `ID_Cita` int unsigned NOT NULL AUTO_INCREMENT,
  `Fecha_Cita` date NOT NULL,
  `Hora_Cita` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Dia_Cita` varchar(20) DEFAULT 'Sin asignar',
  `Semana_Cita` int DEFAULT '0',
  `ID_Medico` int unsigned NOT NULL,
  `ID_Paciente` int unsigned NOT NULL,
  `Estado` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ID_Cita`),
  UNIQUE KEY `ID_Cita` (`ID_Cita`),
  KEY `ID_Medico` (`ID_Medico`),
  KEY `ID_Paciente` (`ID_Paciente`),
  CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`ID_Medico`) REFERENCES `medico` (`ID_Medico`),
  CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`ID_Paciente`) REFERENCES `paciente` (`ID_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'2024-11-18','9:00 A.M','Sin asignar',0,2,1,'Atendida'),(2,'2024-11-19','12:00 P.M','Martes',47,2,1,'Atendida'),(3,'2024-11-19','12:00 P.M','Martes',47,2,1,'Atendida'),(4,'2024-11-18','5:00 P.M','Lunes',47,2,2,'Atendida'),(5,'2024-11-18','5:00 P.M','Lunes',47,2,2,'Atendida'),(6,'2024-11-20','3:00 P.M','Martes',47,2,3,'Atendida'),(7,'2024-11-20','3:00 P.M','Martes',47,2,3,'Atendida'),(8,'2024-11-25','1:00 P.M','Lunes',48,3,3,'Atendida'),(9,'2024-11-25','1:00 P.M','Lunes',48,3,3,'Atendida'),(10,'2024-11-26','2:00 P.M','Lunes',48,4,4,'Atendida'),(11,'2024-11-26','2:00 P.M','Lunes',48,4,4,'Atendida'),(12,'2024-11-27','12:00 P.M','Martes',48,2,3,'Atendida'),(13,'2024-11-27','12:00 P.M','Martes',48,2,3,'Atendida'),(14,'2024-11-26','11:00 A.M','Lunes',48,3,2,'Atendida'),(15,'2024-11-26','11:00 A.M','Lunes',48,3,2,'Atendida'),(16,'2024-11-26','5:00 P.M','Lunes',48,4,4,'Atendida'),(17,'2024-11-26','5:00 P.M','Lunes',48,4,4,'Atendida'),(18,'2024-11-25','2:00 P.M','Lunes',48,2,5,'Atendida'),(19,'2024-11-25','2:00 P.M','Lunes',48,2,5,'Atendida'),(20,'2024-12-02','3:00 P.M','Sin asignar',0,3,3,'Atendida'),(21,'2024-12-03','3:00 P.M','Sin asignar',0,3,6,'Atendida'),(22,'2024-12-03','2:00 P.M','Sin asignar',0,7,6,'Atendida'),(23,'2024-12-08','12:00 P.M','Sin asignar',0,7,6,'Atendida'),(24,'2024-12-09','1:00 P.M','Sin asignar',0,7,1,'Atendida'),(25,'2024-12-17','2:00 P.M','Sin asignar',0,7,6,'Atendida'),(26,'2024-12-11','12:00 P.M','Sin asignar',0,7,6,'Atendida'),(27,'2024-12-15','12:00 P.M','Sin asignar',0,7,7,'Atendida'),(28,'2024-12-01','4:00 P.M','Sin asignar',0,7,1,'Atendida'),(29,'2024-12-02','11:00 A.M','Sin asignar',0,7,7,'Atendida'),(30,'2025-01-01','5:00 P.M','Sin asignar',0,7,7,'Atendida'),(31,'2025-01-01','8:00 A.M','Sin asignar',0,7,7,'Atendida'),(32,'2024-12-31','2:00 P.M','Sin asignar',0,7,7,'Atendida'),(33,'2024-12-25','5:00 P.M','Sin asignar',0,7,2,'Atendida'),(34,'2025-01-01','9:00 A.M','Sin asignar',0,7,8,'Atendida'),(35,'2025-01-06','3:00 P.M','Sin asignar',0,7,8,'Atendida'),(36,'2024-12-14','5:00 P.M','Sin asignar',0,7,9,'Atendida'),(37,'2024-12-21','1:00 P.M','Sin asignar',0,7,10,'Atendida'),(38,'2024-12-23','1:00 P.M','Sin asignar',0,8,11,'Atendida'),(39,'2024-12-24','3:00 P.M','Sin asignar',0,8,12,'Atendida'),(40,'2024-12-25','8:00 A.M','Sin asignar',0,8,13,'Atendida');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `citav`
--

DROP TABLE IF EXISTS `citav`;
/*!50001 DROP VIEW IF EXISTS `citav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `citav` AS SELECT 
 1 AS `ID_Cita`,
 1 AS `Fecha_Cita`,
 1 AS `Hora_Cita`,
 1 AS `Estado`,
 1 AS `ID_Medico`,
 1 AS `Nombres_Med`,
 1 AS `Apellidos_Med`,
 1 AS `Nombres_Pac`,
 1 AS `Apellidos_Pac`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `ID_Consulta` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Cita` int unsigned NOT NULL,
  `Descripcion_Consulta` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Diagnostico` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Receta` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Consulta`),
  UNIQUE KEY `ID_Consulta` (`ID_Consulta`),
  KEY `ID_Cita` (`ID_Cita`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`ID_Cita`) REFERENCES `cita` (`ID_Cita`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,5,'Revision','MUERTE','REPOSO',1),(2,5,'FIEBERE','TEMPERATURA ALTA Y DOLOR MUSCULAR','REPOSO Y TE DE MANZANILLA',1),(3,11,'aaa','ee','asdknnkdk',1),(4,22,'revision completa','muerte segura','tomar agua',1),(5,23,'prueba','hola','yeudiel',1),(6,28,'uno','muerte','dos',1),(7,32,'h','o','la',1),(8,36,'hola','a','todos',1),(9,37,'f','D','DW',1),(10,38,'VERIFICADO','SOLUCION A 3 MESES','TOMAR TE MEDICINALES',1);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `consultav`
--

DROP TABLE IF EXISTS `consultav`;
/*!50001 DROP VIEW IF EXISTS `consultav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consultav` AS SELECT 
 1 AS `ID_Consulta`,
 1 AS `Fecha_Cita`,
 1 AS `Nombres_Med`,
 1 AS `Apellidos_Med`,
 1 AS `Nombres_Pac`,
 1 AS `Apellidos_Pac`,
 1 AS `Descripcion_Consulta`,
 1 AS `Diagnostico`,
 1 AS `Receta`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detalle_pago`
--

DROP TABLE IF EXISTS `detalle_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pago` (
  `ID_Detalle_Pago` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Pago` int unsigned NOT NULL,
  `ID_Servicio` int unsigned NOT NULL,
  `Cantidad` int unsigned NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Detalle_Pago`),
  UNIQUE KEY `ID_Detalle_Pago` (`ID_Detalle_Pago`),
  KEY `ID_Pago` (`ID_Pago`),
  KEY `ID_Servicio` (`ID_Servicio`),
  CONSTRAINT `detalle_pago_ibfk_1` FOREIGN KEY (`ID_Pago`) REFERENCES `pago` (`ID_Pago`),
  CONSTRAINT `detalle_pago_ibfk_2` FOREIGN KEY (`ID_Servicio`) REFERENCES `servicio` (`ID_Servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pago`
--

LOCK TABLES `detalle_pago` WRITE;
/*!40000 ALTER TABLE `detalle_pago` DISABLE KEYS */;
INSERT INTO `detalle_pago` VALUES (1,1,1,1,0),(2,2,1,1,0),(3,3,1,1,0),(4,3,1,1,0);
/*!40000 ALTER TABLE `detalle_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `detalle_pagov`
--

DROP TABLE IF EXISTS `detalle_pagov`;
/*!50001 DROP VIEW IF EXISTS `detalle_pagov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `detalle_pagov` AS SELECT 
 1 AS `ID_Detalle_Pago`,
 1 AS `ID_Pago`,
 1 AS `Nombre_Servicio`,
 1 AS `Cantidad`,
 1 AS `Precio_Servicio`,
 1 AS `Total_Servicio`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dia_medico`
--

DROP TABLE IF EXISTS `dia_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia_medico` (
  `ID_Dia_Medico` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Medico` int unsigned NOT NULL,
  `Dia` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Dia_Medico`),
  UNIQUE KEY `ID_Dia_Medico` (`ID_Dia_Medico`),
  KEY `ID_Medico` (`ID_Medico`),
  CONSTRAINT `dia_medico_ibfk_1` FOREIGN KEY (`ID_Medico`) REFERENCES `medico` (`ID_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_medico`
--

LOCK TABLES `dia_medico` WRITE;
/*!40000 ALTER TABLE `dia_medico` DISABLE KEYS */;
INSERT INTO `dia_medico` VALUES (1,1,'L',1),(2,1,'M',1),(3,2,'L',1),(4,2,'M',1),(8,3,'L',1),(9,4,'L',1),(10,5,'L',1),(11,5,'M',1),(12,6,'D',1),(13,7,'L',1),(14,7,'M',1),(15,7,'S',1),(16,7,'D',1),(17,8,'L',1),(18,8,'M',1),(19,8,'X',1),(20,8,'J',1),(21,8,'V',1),(22,8,'S',1),(23,8,'D',1);
/*!40000 ALTER TABLE `dia_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `ID_Especialidad` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Descripcion` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Especialidad`),
  UNIQUE KEY `ID_Especialidad` (`ID_Especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Pediatra','ninguna',1),(2,'NUEVO','NUEVO',1),(3,'PRUEBA FINAL','PRUEBA FINAL',1);
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `expediente`
--

DROP TABLE IF EXISTS `expediente`;
/*!50001 DROP VIEW IF EXISTS `expediente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `expediente` AS SELECT 
 1 AS `ID_Paciente`,
 1 AS `Paciente_Nombres`,
 1 AS `Paciente_Apellidos`,
 1 AS `Paciente_Peso`,
 1 AS `Paciente_Altura`,
 1 AS `Paciente_Edad`,
 1 AS `Paciente_Telefono`,
 1 AS `Paciente_Alergias`,
 1 AS `Paciente_Enfermedades`,
 1 AS `Paciente_Tipo_Sangre`,
 1 AS `ID_Cita`,
 1 AS `Fecha_Cita`,
 1 AS `Hora_Cita`,
 1 AS `Dia_Cita`,
 1 AS `Estado_Cita`,
 1 AS `Medico_Nombres`,
 1 AS `Medico_Apellidos`,
 1 AS `ID_Consulta`,
 1 AS `Descripcion_Consulta`,
 1 AS `Diagnostico`,
 1 AS `Receta`,
 1 AS `Estado_Consulta`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hora_medico`
--

DROP TABLE IF EXISTS `hora_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hora_medico` (
  `ID_Hora_Medico` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Dia_Medico` int unsigned NOT NULL,
  `Hora_Inicial` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Hora_Final` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Hora_Medico`),
  UNIQUE KEY `ID_Hora_Medico` (`ID_Hora_Medico`),
  KEY `ID_Dia_Medico` (`ID_Dia_Medico`),
  CONSTRAINT `hora_medico_ibfk_1` FOREIGN KEY (`ID_Dia_Medico`) REFERENCES `dia_medico` (`ID_Dia_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora_medico`
--

LOCK TABLES `hora_medico` WRITE;
/*!40000 ALTER TABLE `hora_medico` DISABLE KEYS */;
INSERT INTO `hora_medico` VALUES (1,1,'8:00 A.M','5:00 P.M',1),(2,2,'8:00 A.M','4:00 P.M',1),(3,3,'8:00 A.M','5:00 P.M',1),(4,4,'8:00 A.M','3:00 P.M',1),(5,4,'8:00 A.M','1:00 P.M',1),(6,4,'8:00 A.M','1:00 P.M',1),(7,4,'8:00 A.M','2:00 P.M',1),(8,8,'8:00 A.M','1:00 P.M',1),(9,9,'8:00 A.M','5:00 P.M',1),(10,10,'8:00 A.M','12:00 P.M',1),(11,11,'8:00 A.M','2:00 P.M',1),(12,12,'8:00 A.M','4:00 P.M',1),(13,13,'8:00 A.M','5:00 P.M',1),(14,14,'8:00 A.M','4:00 P.M',1),(15,15,'9:00 A.M','1:00 P.M',1),(16,16,'8:00 A.M','5:00 P.M',1),(17,17,'8:00 A.M','5:00 P.M',1),(18,18,'8:00 A.M','5:00 P.M',1),(19,19,'8:00 A.M','5:00 P.M',1),(20,20,'8:00 A.M','5:00 P.M',1),(21,21,'8:00 A.M','5:00 P.M',1),(22,22,'8:00 A.M','5:00 P.M',1),(23,23,'8:00 A.M','5:00 P.M',1);
/*!40000 ALTER TABLE `hora_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!50001 DROP VIEW IF EXISTS `horario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `horario` AS SELECT 
 1 AS `ID_Medico`,
 1 AS `Dia`,
 1 AS `Hora_Inicial`,
 1 AS `Hora_Final`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `ID_Medico` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Apellidos` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Cedula` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ID_Especialidad` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL DEFAULT '0',
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Medico`),
  UNIQUE KEY `ID_Medico` (`ID_Medico`),
  KEY `ID_Especialidad` (`ID_Especialidad`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`ID_Especialidad`) REFERENCES `especialidad` (`ID_Especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'yeudiel','agusto','1234567',1,9,1),(2,'Yeudiel','Augusto','1234567',1,9,1),(3,'BOLIVARE','GARCIA OSORIO','12345678',1,9,1),(4,'Jacob','N','12345678',1,9,1),(5,'treinta de nov','dosmilveinticuatro','3244534',1,9,1),(6,'yeu','yeu','123',1,9,1),(7,'EMMANUEL','H','12312',2,9,1),(8,'GERSON v','MERARI','8765432',3,9,1);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `medicov`
--

DROP TABLE IF EXISTS `medicov`;
/*!50001 DROP VIEW IF EXISTS `medicov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `medicov` AS SELECT 
 1 AS `ID_Medico`,
 1 AS `Nombres`,
 1 AS `Apellidos`,
 1 AS `Cedula`,
 1 AS `Especialidad`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `ID_Paciente` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Apellidos` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Peso` float NOT NULL,
  `Altura` float NOT NULL,
  `Edad` int NOT NULL,
  `Telefono` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Alergias` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Enfermedades` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Tipo_Sangre` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Paciente`),
  UNIQUE KEY `ID_Paciente` (`ID_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Bolivare','Garcia Osorio',85,170,24,'1234-5670','Resfriado','diabetes','O+',1),(2,'Alma','M',60,155,21,'1234-5678','NINGUNA','MENSA','O-',1),(3,'Miguel','H',50,160,18,'1234-5678','Resfriado','Ninguna','O+',1),(4,'N','N',90,170,23,'1234-5678','N','N','O-',1),(5,'DANILO','DANILO',80,70,18,'1232-8313','N','N','O-',1),(6,'PRUEBA COMPLETA','HOLA',80,177,21,'1298-0128','HOLA','MUERTE','A+',1),(7,'unmo','uno',90,1221,23,'1238-2183','n','n','O-',1),(8,'almagacel','s',123,88,21,'9876-5434','n','n','O+',1),(9,'y','eu',21,88,21,'9087-7765','ds','das','O-',1),(10,'j','h',44,77,23,'0987-6543','d','d','A+',1),(11,'YEUDIEL','AUGUSTO',70,175,21,'9876-5412','ANTIBIOTICOS','DOLOR MUSCULAR','A+',1),(12,'DIEGO','BARRIOS',78,170,21,'1298-3765','NINGUNA','DIABETES','A+',1),(13,'KEVIN','HIDALGO',70,160,24,'9876-5415','GRIPE','IRRITACION DE GARGANTA','A+',1);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pacientev`
--

DROP TABLE IF EXISTS `pacientev`;
/*!50001 DROP VIEW IF EXISTS `pacientev`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pacientev` AS SELECT 
 1 AS `ID_Paciente`,
 1 AS `Nombres`,
 1 AS `Apellidos`,
 1 AS `Peso`,
 1 AS `Altura`,
 1 AS `Edad`,
 1 AS `Telefono`,
 1 AS `Tipo_Sangre`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `ID_Pago` int unsigned NOT NULL AUTO_INCREMENT,
  `Fecha_Pago` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_Paciente` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Pago`),
  UNIQUE KEY `ID_Pago` (`ID_Pago`),
  KEY `ID_Paciente` (`ID_Paciente`),
  KEY `ID_Usuario` (`ID_Usuario`),
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`ID_Paciente`) REFERENCES `paciente` (`ID_Paciente`),
  CONSTRAINT `pago_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'2024-11-18 01:59:29',1,2,0),(2,'2024-11-18 21:07:18',2,2,0),(3,'2024-12-01 20:28:06',7,3,0);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pagov`
--

DROP TABLE IF EXISTS `pagov`;
/*!50001 DROP VIEW IF EXISTS `pagov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pagov` AS SELECT 
 1 AS `ID_Pago`,
 1 AS `Paciente_Nombre`,
 1 AS `Paciente_Apellido`,
 1 AS `Usuario`,
 1 AS `Fecha_Pago`,
 1 AS `ID_Detalle_Pago`,
 1 AS `Nombre_Servicio`,
 1 AS `Cantidad`,
 1 AS `Precio_Servicio`,
 1 AS `Total_Servicio`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `recetav`
--

DROP TABLE IF EXISTS `recetav`;
/*!50001 DROP VIEW IF EXISTS `recetav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recetav` AS SELECT 
 1 AS `ID_Consulta`,
 1 AS `ID_Cita`,
 1 AS `Fecha_Cita`,
 1 AS `NombresMed`,
 1 AS `ApellidosMed`,
 1 AS `NombreEsp`,
 1 AS `Nombres`,
 1 AS `Apellidos`,
 1 AS `Receta`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `ID_Servicio` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Servicio` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Descripcion_Servicio` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Precio_Servicio` decimal(20,2) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Servicio`),
  UNIQUE KEY `ID_Servicio` (`ID_Servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'fiebre','nada',180.00,1);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `ID_Usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Contrasena_Usuario` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Rol_Usuario` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Usuario`),
  UNIQUE KEY `ID_Usuario` (`ID_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Admin','1234','Admin',1),(2,'yeudiel2','123','Medico',1),(3,'jenni','123','Secretaria',1),(4,'bolivare3','123','Medico',1),(5,'jacob4','123','Medico',1),(6,'treintadenov5','treintadenov5','Medico',1),(7,'yeu6','1234','Medico',1),(8,'emmanuel7','123','Medico',1),(9,'gersonv8','123','Medico',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'imms'
--

--
-- Dumping routines for database 'imms'
--
/*!50003 DROP PROCEDURE IF EXISTS `ActivarCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivarCita`(IN ID int)
Update Cita
Set Estado = 'Activo'
Where ID_Cita = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivarConsulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivarConsulta`(IN ID int)
Update Consulta
Set Estado = true
Where ID_Consulta = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivarHora_Medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivarHora_Medico`(IN ID int)
Update Hora_Medico
Set Estado = true
Where ID_Hora_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivarMedico`(IN ID int)
Update Medico
Set Estado = true
Where ID_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivarServicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivarServicio`(IN ID int)
Update Servicio
Set Estado = true
Where ID_Servicio = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Activar_Consulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Activar_Consulta`(
    IN ID_Consulta INT
)
BEGIN
    UPDATE Consulta
    SET Estado = TRUE
    WHERE ID_Consulta = ID_Consulta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Activar_Paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Activar_Paciente`(
    IN ID_Paciente INT
)
BEGIN
    UPDATE Paciente
    SET Estado = TRUE
    WHERE ID_Paciente = ID_Paciente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Activar_Servicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Activar_Servicio`(
    IN ID_Servicio INT
)
BEGIN
    UPDATE Servicio
    SET Estado = TRUE
    WHERE ID_Servicio = ID_Servicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCita`(
    IN Fecha_Cita date, IN Hora_Cita nvarchar(15), IN Dia_Cita nvarchar(15), IN Semana_Cita int, 
    IN ID_Medico int, IN ID_Paciente int, IN Estado nvarchar(15)
)
Insert Into Cita (Fecha_Cita, Hora_Cita, Dia_Cita, Semana_Cita, ID_Medico, ID_Paciente, Estado)
Values (Fecha_Cita, Hora_Cita, Dia_Cita, Semana_Cita, ID_Medico, ID_Paciente, Estado) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarConsulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarConsulta`(
    IN ID_Cita int, IN Descripcion nvarchar(200), IN Diagnostico nvarchar(200), IN Receta nvarchar(500)
)
Insert Into Consulta (ID_Cita, Descripcion_Consulta, Diagnostico, Receta)
Values (ID_Cita, Descripcion, Diagnostico, Receta) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarDetallePago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarDetallePago`(
    IN ID_Pago int, IN ID_Servicio int, IN Cantidad int
)
Insert Into Detalle_Pago (ID_Pago, ID_Servicio, Cantidad)
Values (ID_Pago, ID_Servicio, Cantidad) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarDia_Medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarDia_Medico`(
    IN ID_Medico int, IN Dia nvarchar(1)
)
Insert Into Dia_Medico (ID_Medico, Dia)
Values (ID_Medico, Dia) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarEspecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarEspecialidad`(
    IN Nombre nvarchar(50), 
    IN Descripcion nvarchar(150)
)
Insert Into Especialidad (Nombre, Descripcion)
Values (Nombre, Descripcion) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarHora_Medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarHora_Medico`(
    IN ID_Dia_Medico int, IN Hora_Inicial nvarchar(15), IN Hora_Final nvarchar(15)
)
Insert Into Hora_Medico (ID_Dia_Medico, Hora_Inicial, Hora_Final)
Values (ID_Dia_Medico, Hora_Inicial, Hora_Final) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarMedico`(
    IN Nombres nvarchar(100), IN Apellidos nvarchar(100), IN Cedula nvarchar(20), IN ID_Especialidad int
)
Insert Into Medico (Nombres, Apellidos, Cedula, ID_Especialidad)
Values (Nombres, Apellidos, Cedula, ID_Especialidad) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarPaciente`(
    IN Nombres nvarchar(100), IN Apellidos nvarchar(100), IN Peso float, IN Altura float, IN Edad int,
    IN Alergias nvarchar(200), IN Enfermedades nvarchar(200), IN Tipo_Sangre nvarchar(5), IN Telefono nvarchar(9)
)
Insert Into Paciente (Nombres, Apellidos, Peso, Altura, Edad, Alergias, Enfermedades, Tipo_Sangre, Telefono)
Values (Nombres, Apellidos, Peso, Altura, Edad, Alergias, Enfermedades, Tipo_Sangre, Telefono) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarPago`(
    IN ID_Paciente int, IN ID_Usuario int
)
Insert Into Pago (ID_Paciente, ID_Usuario)
Values (ID_Paciente, ID_Usuario) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarServicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarServicio`(
    IN Nombre nvarchar(50), IN Descripcion nvarchar(150), IN Precio decimal(20, 2)
)
Insert Into Servicio (Nombre_Servicio, Descripcion_Servicio, Precio_Servicio)
Values (Nombre, Descripcion, Precio) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarUsuario`(
    IN Nombre_Usuario nvarchar(50), 
    IN Contrasena_Usuario nvarchar(100), 
    IN Rol_Usuario nvarchar(20)
)
Insert Into Usuario (Nombre_Usuario, Contrasena_Usuario, Rol_Usuario)
Values (Nombre_Usuario, Contrasena_Usuario, Rol_Usuario) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Cancelar_DPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cancelar_DPago`(
    IN ID_Detalle_Pago INT
)
BEGIN
    UPDATE Detalle_Pago
    SET Estado = FALSE
    WHERE ID_Detalle_Pago = ID_Detalle_Pago;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Cancelar_Pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cancelar_Pago`(
    IN ID_Pago INT
)
BEGIN
    -- Cancelar los detalles del pago
    UPDATE Detalle_Pago
    SET Estado = FALSE
    WHERE ID_Pago = ID_Pago;

    -- Cancelar el pago
    UPDATE Pago
    SET Estado = FALSE
    WHERE ID_Pago = ID_Pago;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CitaAtendida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CitaAtendida`(
    IN ID_Cita INT
)
BEGIN
    UPDATE Cita
    SET Estado = 'Atendida'
    WHERE ID_Cita = ID_Cita;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultaV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultaV`(
    IN ID_Consulta INT
)
BEGIN
    SELECT 
        C.ID_Consulta,
        CI.Fecha_Cita,
        CI.Hora_Cita,
        P.Nombres AS Paciente_Nombre,
        P.Apellidos AS Paciente_Apellido,
        M.Nombres AS Medico_Nombre,
        M.Apellidos AS Medico_Apellido,
        Con.Descripcion_Consulta,
        Con.Diagnostico,
        Con.Receta,
        Con.Estado
    FROM Consulta Con
    INNER JOIN Cita CI ON Con.ID_Cita = CI.ID_Cita
    INNER JOIN Paciente P ON CI.ID_Paciente = P.ID_Paciente
    INNER JOIN Medico M ON CI.ID_Medico = M.ID_Medico
    WHERE Con.ID_Consulta = ID_Consulta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DesactivarCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DesactivarCita`(IN ID int)
Update Cita
Set Estado = 'Cancelado'
Where ID_Cita = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DesactivarConsulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DesactivarConsulta`(IN ID int)
Update Consulta
Set Estado = false
Where ID_Consulta = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DesactivarHora_Medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DesactivarHora_Medico`(IN ID int)
Update Hora_Medico
Set Estado = false
Where ID_Hora_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DesactivarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DesactivarMedico`(IN ID int)
Update Medico
Set Estado = false
Where ID_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DesactivarServicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DesactivarServicio`(IN ID int)
Update Servicio
Set Estado = false
Where ID_Servicio = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Desactivar_Consulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Desactivar_Consulta`(
    IN ID_Consulta INT
)
BEGIN
    UPDATE Consulta
    SET Estado = FALSE
    WHERE ID_Consulta = ID_Consulta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Desactivar_Paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Desactivar_Paciente`(
    IN ID_Paciente INT
)
BEGIN
    UPDATE Paciente
    SET Estado = FALSE
    WHERE ID_Paciente = ID_Paciente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Desactivar_Servicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Desactivar_Servicio`(
    IN ID_Servicio INT
)
BEGIN
    UPDATE Servicio
    SET Estado = FALSE
    WHERE ID_Servicio = ID_Servicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalle_pagoV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalle_pagoV`(
    IN ID_Pago INT
)
BEGIN
    SELECT 
        dp.ID_Detalle_Pago,
        dp.ID_Pago,
        s.Nombre_Servicio,
        dp.Cantidad,
        s.Precio_Servicio,
        (dp.Cantidad * s.Precio_Servicio) AS Total_Servicio,
        dp.Estado
    FROM Detalle_Pago dp
    INNER JOIN Servicio s ON dp.ID_Servicio = s.ID_Servicio
    WHERE dp.ID_Pago = ID_Pago;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCita`(IN ID int)
Update Cita
Set Estado = 'Eliminado'
Where ID_Cita = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarDia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarDia`(
    IN ID_Dia_Medico INT
)
BEGIN
    -- Verificar si hay horarios asociados al día antes de eliminar
    DELETE FROM Hora_Medico
    WHERE ID_Dia_Medico = ID_Dia_Medico;

    -- Eliminar el día una vez eliminados los horarios relacionados
    DELETE FROM Dia_Medico
    WHERE ID_Dia_Medico = ID_Dia_Medico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarMedico`(IN ID int)
Update Medico
Set Estado = false
Where ID_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPaciente`(IN ID int)
Update Paciente
Set Estado = false
Where ID_Paciente = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarCita`(
    IN ID int, IN Fecha_Cita date, IN Hora_Cita nvarchar(15), IN Dia_Cita nvarchar(15), 
    IN Semana_Cita int, IN ID_Medico int, IN ID_Paciente int, IN Estado nvarchar(15)
)
Update Cita
Set Fecha_Cita = Fecha_Cita, Hora_Cita = Hora_Cita, Dia_Cita = Dia_Cita, 
    Semana_Cita = Semana_Cita, ID_Medico = ID_Medico, ID_Paciente = ID_Paciente, Estado = Estado
Where ID_Cita = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarConsulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarConsulta`(
    IN ID int, IN Descripcion nvarchar(200), IN Diagnostico nvarchar(200), IN Receta nvarchar(500)
)
Update Consulta
Set Descripcion_Consulta = Descripcion, Diagnostico = Diagnostico, Receta = Receta
Where ID_Consulta = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarDetallePago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarDetallePago`(
    IN ID int, IN ID_Pago int, IN ID_Servicio int, IN Cantidad int
)
Update Detalle_Pago
Set ID_Pago = ID_Pago, ID_Servicio = ID_Servicio, Cantidad = Cantidad
Where ID_Detalle_Pago = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarDia_Medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarDia_Medico`(
    IN ID int, IN ID_Medico int, IN Dia nvarchar(1)
)
Update Dia_Medico
Set ID_Medico = ID_Medico, Dia = Dia
Where ID_Dia_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarHora_Medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarHora_Medico`(
    IN ID int, IN ID_Dia_Medico int, IN Hora_Inicial nvarchar(15), IN Hora_Final nvarchar(15)
)
Update Hora_Medico
Set ID_Dia_Medico = ID_Dia_Medico, Hora_Inicial = Hora_Inicial, Hora_Final = Hora_Final
Where ID_Hora_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarMedico`(
    IN ID int, IN Nombres nvarchar(100), IN Apellidos nvarchar(100), IN Cedula nvarchar(20), IN ID_Especialidad int
)
Update Medico
Set Nombres = Nombres, Apellidos = Apellidos, Cedula = Cedula, ID_Especialidad = ID_Especialidad
Where ID_Medico = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarPaciente`(
    IN ID int, IN Nombres nvarchar(100), IN Apellidos nvarchar(100), IN Peso float, 
    IN Altura float, IN Edad int, IN Alergias nvarchar(200), IN Enfermedades nvarchar(200), 
    IN Tipo_Sangre nvarchar(5), IN Telefono nvarchar(9)
)
Update Paciente
Set Nombres = Nombres, Apellidos = Apellidos, Peso = Peso, Altura = Altura, Edad = Edad, 
    Alergias = Alergias, Enfermedades = Enfermedades, Tipo_Sangre = Tipo_Sangre, Telefono = Telefono
Where ID_Paciente = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarServicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarServicio`(
    IN ID int, IN Nombre nvarchar(50), IN Descripcion nvarchar(150), IN Precio decimal(20, 2)
)
Update Servicio
Set Nombre_Servicio = Nombre, Descripcion_Servicio = Descripcion, Precio_Servicio = Precio
Where ID_Servicio = ID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerCitasPorMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerCitasPorMedico`(IN ID_Medico int)
Select * from Cita
Where ID_Medico = ID_Medico ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerHorariosPorDiaMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerHorariosPorDiaMedico`(IN ID_Dia_Medico int)
Select * from Hora_Medico
Where ID_Dia_Medico = ID_Dia_Medico and Estado = true ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerMedicosActivos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerMedicosActivos`()
Select * from Medico
Where Estado = true ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerPacientesActivos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerPacientesActivos`()
Select * from Paciente
Where Estado = true ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerServiciosActivos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerServiciosActivos`()
Select * from Servicio
Where Estado = true ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PagoV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PagoV`(
    IN ID_Pago INT
)
BEGIN
    SELECT 
        P.ID_Pago,
        Pa.Nombres AS Paciente_Nombre,
        Pa.Apellidos AS Paciente_Apellido,
        U.Nombre_Usuario AS Usuario,
        P.Fecha_Pago,
        DP.ID_Detalle_Pago,
        S.Nombre_Servicio,
        DP.Cantidad,
        S.Precio_Servicio,
        (DP.Cantidad * S.Precio_Servicio) AS Total_Servicio,
        P.Estado
    FROM Pago P
    INNER JOIN Paciente Pa ON P.ID_Paciente = Pa.ID_Paciente
    INNER JOIN Usuario U ON P.ID_Usuario = U.ID_Usuario
    INNER JOIN Detalle_Pago DP ON P.ID_Pago = DP.ID_Pago
    INNER JOIN Servicio S ON DP.ID_Servicio = S.ID_Servicio
    WHERE P.ID_Pago = ID_Pago;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsuarioMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UsuarioMedico`(
    IN ID_Medico int, 
    IN ID_Usuario int
)
Update Medico
Set ID_Usuario = ID_Usuario
Where ID_Medico = ID_Medico ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `citav`
--

/*!50001 DROP VIEW IF EXISTS `citav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `citav` AS select `c`.`ID_Cita` AS `ID_Cita`,`c`.`Fecha_Cita` AS `Fecha_Cita`,`c`.`Hora_Cita` AS `Hora_Cita`,`c`.`Estado` AS `Estado`,`m`.`ID_Medico` AS `ID_Medico`,`m`.`Nombres` AS `Nombres_Med`,`m`.`Apellidos` AS `Apellidos_Med`,`p`.`Nombres` AS `Nombres_Pac`,`p`.`Apellidos` AS `Apellidos_Pac` from ((`cita` `c` join `medico` `m` on((`c`.`ID_Medico` = `m`.`ID_Medico`))) join `paciente` `p` on((`c`.`ID_Paciente` = `p`.`ID_Paciente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consultav`
--

/*!50001 DROP VIEW IF EXISTS `consultav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consultav` AS select `c`.`ID_Consulta` AS `ID_Consulta`,`ct`.`Fecha_Cita` AS `Fecha_Cita`,`m`.`Nombres` AS `Nombres_Med`,`m`.`Apellidos` AS `Apellidos_Med`,`p`.`Nombres` AS `Nombres_Pac`,`p`.`Apellidos` AS `Apellidos_Pac`,`c`.`Descripcion_Consulta` AS `Descripcion_Consulta`,`c`.`Diagnostico` AS `Diagnostico`,`c`.`Receta` AS `Receta`,`c`.`Estado` AS `Estado` from (((`consulta` `c` join `cita` `ct` on((`c`.`ID_Cita` = `ct`.`ID_Cita`))) join `medico` `m` on((`ct`.`ID_Medico` = `m`.`ID_Medico`))) join `paciente` `p` on((`ct`.`ID_Paciente` = `p`.`ID_Paciente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `detalle_pagov`
--

/*!50001 DROP VIEW IF EXISTS `detalle_pagov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalle_pagov` AS select `dp`.`ID_Detalle_Pago` AS `ID_Detalle_Pago`,`dp`.`ID_Pago` AS `ID_Pago`,`s`.`Nombre_Servicio` AS `Nombre_Servicio`,`dp`.`Cantidad` AS `Cantidad`,`s`.`Precio_Servicio` AS `Precio_Servicio`,(`dp`.`Cantidad` * `s`.`Precio_Servicio`) AS `Total_Servicio`,`dp`.`Estado` AS `Estado` from (`detalle_pago` `dp` join `servicio` `s` on((`dp`.`ID_Servicio` = `s`.`ID_Servicio`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expediente`
--

/*!50001 DROP VIEW IF EXISTS `expediente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expediente` AS select `p`.`ID_Paciente` AS `ID_Paciente`,`p`.`Nombres` AS `Paciente_Nombres`,`p`.`Apellidos` AS `Paciente_Apellidos`,`p`.`Peso` AS `Paciente_Peso`,`p`.`Altura` AS `Paciente_Altura`,`p`.`Edad` AS `Paciente_Edad`,`p`.`Telefono` AS `Paciente_Telefono`,`p`.`Alergias` AS `Paciente_Alergias`,`p`.`Enfermedades` AS `Paciente_Enfermedades`,`p`.`Tipo_Sangre` AS `Paciente_Tipo_Sangre`,`c`.`ID_Cita` AS `ID_Cita`,`c`.`Fecha_Cita` AS `Fecha_Cita`,`c`.`Hora_Cita` AS `Hora_Cita`,`c`.`Dia_Cita` AS `Dia_Cita`,`c`.`Estado` AS `Estado_Cita`,`m`.`Nombres` AS `Medico_Nombres`,`m`.`Apellidos` AS `Medico_Apellidos`,`con`.`ID_Consulta` AS `ID_Consulta`,`con`.`Descripcion_Consulta` AS `Descripcion_Consulta`,`con`.`Diagnostico` AS `Diagnostico`,`con`.`Receta` AS `Receta`,`con`.`Estado` AS `Estado_Consulta` from (((`paciente` `p` left join `cita` `c` on((`p`.`ID_Paciente` = `c`.`ID_Paciente`))) left join `medico` `m` on((`c`.`ID_Medico` = `m`.`ID_Medico`))) left join `consulta` `con` on((`c`.`ID_Cita` = `con`.`ID_Cita`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `horario`
--

/*!50001 DROP VIEW IF EXISTS `horario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `horario` AS select `dm`.`ID_Medico` AS `ID_Medico`,`dm`.`Dia` AS `Dia`,`hm`.`Hora_Inicial` AS `Hora_Inicial`,`hm`.`Hora_Final` AS `Hora_Final`,`hm`.`Estado` AS `Estado` from (`dia_medico` `dm` join `hora_medico` `hm` on((`dm`.`ID_Dia_Medico` = `hm`.`ID_Dia_Medico`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `medicov`
--

/*!50001 DROP VIEW IF EXISTS `medicov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `medicov` AS select `m`.`ID_Medico` AS `ID_Medico`,`m`.`Nombres` AS `Nombres`,`m`.`Apellidos` AS `Apellidos`,`m`.`Cedula` AS `Cedula`,`e`.`Nombre` AS `Especialidad`,`m`.`Estado` AS `Estado` from (`medico` `m` join `especialidad` `e` on((`m`.`ID_Especialidad` = `e`.`ID_Especialidad`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pacientev`
--

/*!50001 DROP VIEW IF EXISTS `pacientev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pacientev` AS select `paciente`.`ID_Paciente` AS `ID_Paciente`,`paciente`.`Nombres` AS `Nombres`,`paciente`.`Apellidos` AS `Apellidos`,`paciente`.`Peso` AS `Peso`,`paciente`.`Altura` AS `Altura`,`paciente`.`Edad` AS `Edad`,`paciente`.`Telefono` AS `Telefono`,`paciente`.`Tipo_Sangre` AS `Tipo_Sangre`,`paciente`.`Estado` AS `Estado` from `paciente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pagov`
--

/*!50001 DROP VIEW IF EXISTS `pagov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pagov` AS select `p`.`ID_Pago` AS `ID_Pago`,`pa`.`Nombres` AS `Paciente_Nombre`,`pa`.`Apellidos` AS `Paciente_Apellido`,`u`.`Nombre_Usuario` AS `Usuario`,`p`.`Fecha_Pago` AS `Fecha_Pago`,`dp`.`ID_Detalle_Pago` AS `ID_Detalle_Pago`,`s`.`Nombre_Servicio` AS `Nombre_Servicio`,`dp`.`Cantidad` AS `Cantidad`,`s`.`Precio_Servicio` AS `Precio_Servicio`,(`dp`.`Cantidad` * `s`.`Precio_Servicio`) AS `Total_Servicio`,`p`.`Estado` AS `Estado` from ((((`pago` `p` join `paciente` `pa` on((`p`.`ID_Paciente` = `pa`.`ID_Paciente`))) join `usuario` `u` on((`p`.`ID_Usuario` = `u`.`ID_Usuario`))) join `detalle_pago` `dp` on((`p`.`ID_Pago` = `dp`.`ID_Pago`))) join `servicio` `s` on((`dp`.`ID_Servicio` = `s`.`ID_Servicio`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recetav`
--

/*!50001 DROP VIEW IF EXISTS `recetav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recetav` AS select `c`.`ID_Consulta` AS `ID_Consulta`,`cc`.`ID_Cita` AS `ID_Cita`,`cc`.`Fecha_Cita` AS `Fecha_Cita`,`m`.`Nombres` AS `NombresMed`,`m`.`Apellidos` AS `ApellidosMed`,`e`.`Nombre` AS `NombreEsp`,`p`.`Nombres` AS `Nombres`,`p`.`Apellidos` AS `Apellidos`,`c`.`Receta` AS `Receta` from ((((`consulta` `c` join `cita` `cc` on((`c`.`ID_Cita` = `cc`.`ID_Cita`))) join `medico` `m` on((`cc`.`ID_Medico` = `m`.`ID_Medico`))) join `paciente` `p` on((`cc`.`ID_Paciente` = `p`.`ID_Paciente`))) join `especialidad` `e` on((`m`.`ID_Especialidad` = `e`.`ID_Especialidad`))) */;
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

-- Dump completed on 2024-12-02 21:54:04
