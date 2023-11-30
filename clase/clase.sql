use clase;

-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: examen-e-r
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;--
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno_carrera`
--

DROP TABLE IF EXISTS `alumno_carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_carrera` (
  `id_alumno_carrera` int unsigned NOT NULL AUTO_INCREMENT,
  `Legajo` int unsigned NOT NULL,
  `CodigoCarrera` int unsigned NOT NULL,
  PRIMARY KEY (`id_alumno_carrera`),
  KEY `FK_legajo_idx` (`Legajo`),
  KEY `FK_codcarrera_idx` (`CodigoCarrera`),
  CONSTRAINT `FK_codigocarrera` FOREIGN KEY (`CodigoCarrera`) REFERENCES `carreras` (`Codigo`),
  CONSTRAINT `FK_legajo_alumno_carrera` FOREIGN KEY (`Legajo`) REFERENCES `alumnos` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_carrera`
--

LOCK TABLES `alumno_carrera` WRITE;
/*!40000 ALTER TABLE `alumno_carrera` DISABLE KEYS */;
INSERT INTO `alumno_carrera` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `alumno_carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno_materia`
--

DROP TABLE IF EXISTS `alumno_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_materia` (
  `idAlumno_Materia` int unsigned NOT NULL AUTO_INCREMENT,
  `Nota` int DEFAULT NULL,
  `Año` year DEFAULT NULL,
  `Fecha` varchar(45) DEFAULT NULL,
  `Horario` varchar(10) DEFAULT NULL,
  `Comision` varchar(45) DEFAULT NULL,
  `CodigoMateria` int unsigned NOT NULL,
  `Legajo` int unsigned NOT NULL,
  PRIMARY KEY (`idAlumno_Materia`),
  KEY `FK_CodMat_idx` (`CodigoMateria`),
  KEY `FK_Leg_idx` (`Legajo`),
  CONSTRAINT `FK_CodMat` FOREIGN KEY (`CodigoMateria`) REFERENCES `materias` (`CodigoMateria`),
  CONSTRAINT `FK_Leg` FOREIGN KEY (`Legajo`) REFERENCES `alumnos` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_materia`
--

LOCK TABLES `alumno_materia` WRITE;
/*!40000 ALTER TABLE `alumno_materia` DISABLE KEYS */;
INSERT INTO `alumno_materia` VALUES (1,10,2020,'20/12/2023','16:00','losmejores',1,1),(4,6,2020,'20/11/2022','13:00','losmejoresmas',1,2),(7,8,2020,'20/11/2022','13:00','losmejoresmas',2,2),(8,8,2020,'20/11/2022','13:00','losmejoresmas',3,2);
/*!40000 ALTER TABLE `alumno_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `Legajo` int unsigned NOT NULL,
  `Dni` int DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Calle` varchar(45) DEFAULT NULL,
  `CodPostal` int DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,31609131,'mauro','murature 715',8109,'Punta Alta'),(2,10972312,'norma','murature 744',8109,'Punta Alta'),(123,12345678,'NombreApellido','Calle Ejemplo',12345,'Ciudad Ejemplo'),(456,8745632,'lalalal','Calle 2Ejemplo',123456,'Ciudad Ejemplo2');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos_comisiones`
--

DROP TABLE IF EXISTS `alumnos_comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos_comisiones` (
  `idAlumnos_Comisiones` int unsigned NOT NULL,
  `Legajo` int unsigned NOT NULL,
  `NroComision` int unsigned NOT NULL,
  PRIMARY KEY (`idAlumnos_Comisiones`),
  KEY `FK_Legajo_idx` (`Legajo`),
  KEY `FK_nrocomision_idx` (`NroComision`),
  CONSTRAINT `FK_legajo` FOREIGN KEY (`Legajo`) REFERENCES `alumnos` (`Legajo`),
  CONSTRAINT `FK_nrocomision` FOREIGN KEY (`NroComision`) REFERENCES `comisiones` (`NroComision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos_comisiones`
--

LOCK TABLES `alumnos_comisiones` WRITE;
/*!40000 ALTER TABLE `alumnos_comisiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos_comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tags`
--

DROP TABLE IF EXISTS `article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_tags` (
  `article_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tags`
--

LOCK TABLES `article_tags` WRITE;
/*!40000 ALTER TABLE `article_tags` DISABLE KEYS */;
INSERT INTO `article_tags` VALUES (1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_materias`
--

DROP TABLE IF EXISTS `carrera_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera_materias` (
  `idCarrera_Materias` int unsigned NOT NULL,
  `Codigo_Carrera` int unsigned NOT NULL,
  `Codigo_Materia` int unsigned NOT NULL,
  PRIMARY KEY (`idCarrera_Materias`),
  KEY `FK_Car_idx` (`Codigo_Carrera`),
  KEY `FK_Mat_idx` (`Codigo_Materia`),
  CONSTRAINT `FK_Car` FOREIGN KEY (`Codigo_Carrera`) REFERENCES `carreras` (`Codigo`),
  CONSTRAINT `FK_Materias` FOREIGN KEY (`Codigo_Materia`) REFERENCES `materias` (`CodigoMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_materias`
--

LOCK TABLES `carrera_materias` WRITE;
/*!40000 ALTER TABLE `carrera_materias` DISABLE KEYS */;
INSERT INTO `carrera_materias` VALUES (1,1,1),(2,1,2),(3,1,3);
/*!40000 ALTER TABLE `carrera_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `Codigo` int unsigned NOT NULL,
  `Año` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,2009),(2,2010),(3,2020);
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisiones`
--

DROP TABLE IF EXISTS `comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comisiones` (
  `NroComision` int unsigned NOT NULL,
  `Edificio` varchar(45) DEFAULT NULL,
  `Horario` time DEFAULT NULL,
  `Aula` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NroComision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisiones`
--

LOCK TABLES `comisiones` WRITE;
/*!40000 ALTER TABLE `comisiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correlativas`
--

DROP TABLE IF EXISTS `correlativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correlativas` (
  `idCorrelativas` int unsigned NOT NULL AUTO_INCREMENT,
  `CodMat` int unsigned NOT NULL,
  `Mat_corelativa` int unsigned NOT NULL,
  PRIMARY KEY (`idCorrelativas`),
  KEY `FK_Mat_idx` (`CodMat`),
  KEY `FK_Corre_idx` (`Mat_corelativa`),
  CONSTRAINT `FK_Corre` FOREIGN KEY (`Mat_corelativa`) REFERENCES `materias` (`CodigoMateria`),
  CONSTRAINT `FK_Mat` FOREIGN KEY (`CodMat`) REFERENCES `materias` (`CodigoMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correlativas`
--

LOCK TABLES `correlativas` WRITE;
/*!40000 ALTER TABLE `correlativas` DISABLE KEYS */;
/*!40000 ALTER TABLE `correlativas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente_materia`
--

DROP TABLE IF EXISTS `docente_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente_materia` (
  `idDocente_Materia` int unsigned NOT NULL,
  `Cuit` int unsigned NOT NULL,
  `CodigoMateria` int unsigned NOT NULL,
  PRIMARY KEY (`idDocente_Materia`),
  KEY `FK_docente_idx` (`Cuit`),
  KEY `FK_CodMateria_idx` (`CodigoMateria`),
  CONSTRAINT `FK_CodMateria` FOREIGN KEY (`CodigoMateria`) REFERENCES `materias` (`CodigoMateria`),
  CONSTRAINT `FK_docente` FOREIGN KEY (`Cuit`) REFERENCES `docentes` (`Cuit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente_materia`
--

LOCK TABLES `docente_materia` WRITE;
/*!40000 ALTER TABLE `docente_materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `docente_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes` (
  `Cuit` int unsigned NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Ingreso` int DEFAULT NULL,
  `TituloAcademico` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cuit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_comision`
--

DROP TABLE IF EXISTS `materia_comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia_comision` (
  `idMateria_Comision` int unsigned NOT NULL,
  `CodMateria` int unsigned NOT NULL,
  `ComiNro` int unsigned NOT NULL,
  PRIMARY KEY (`idMateria_Comision`),
  KEY `FK_Cod_Mat_idx` (`CodMateria`),
  KEY `FK_ComiNro_idx` (`ComiNro`),
  CONSTRAINT `FK_Cod_Mat` FOREIGN KEY (`CodMateria`) REFERENCES `materias` (`CodigoMateria`),
  CONSTRAINT `FK_ComiNro` FOREIGN KEY (`ComiNro`) REFERENCES `comisiones` (`NroComision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_comision`
--

LOCK TABLES `materia_comision` WRITE;
/*!40000 ALTER TABLE `materia_comision` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia_comision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `CodigoMateria` int unsigned NOT NULL,
  `Dia` varchar(45) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `Año` int DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CodigoMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'12/10/2023','20:30:00',2023,'Bdd Admin'),(2,'13/10/2023','20:30:00',2023,'Matematica'),(3,'14/10/2023','20:30:00',2023,'Programacion');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24  2:32:14