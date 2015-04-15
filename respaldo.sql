CREATE DATABASE  IF NOT EXISTS `sistemaevaluacion` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sistemaevaluacion`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaevaluacion
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad` (
  `idActividad` int(11) NOT NULL AUTO_INCREMENT,
  `NoActividad` varchar(25) NOT NULL,
  `idEtapa` int(11) NOT NULL,
  `Titulo` varchar(60) NOT NULL,
  `Comentarios` varchar(1000) DEFAULT NULL,
  `Valor` int(11) NOT NULL,
  PRIMARY KEY (`idActividad`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (31,'1',19,' ',' ',15),(32,'2',20,' ',' ',15),(33,'3',21,' ',' ',15),(34,'4',22,' ',' ',15);
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `Matricula` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Paterno` varchar(60) NOT NULL,
  `Materno` varchar(60) DEFAULT NULL,
  `IdGrupo` int(11) NOT NULL,
  PRIMARY KEY (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Esta tabla contiene el nombre completo, el grupo (fk) y la matricula de cada alumno (pk)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1617003,'Martin Alonso','Almazan','Vazquez',521),(1618762,'Luz Yanira','Guerra','Sifuentes',522),(1621648,'Karla Elizabeth','Castillo','Carrillo',521),(1622401,'Jesus Enrique','Guzman','Santiago',522),(1623884,'Carlos Alberto','Arriaga','Cantu',521),(1625576,'Cecilia Yazmin','De Leon','Tenorio',521),(1626982,'Raymundo','Gutierrez','Rodriguez',522),(1627465,'Jorge Alberto','Acosta','Reyes',522),(1628338,'Carlos Alberto','Aguilar','Garza',521),(1628461,'Mildret Sarahi','Estrada','Cardenas',521),(1629151,'Diana Ivonne','Ayala','Lopez',521),(1631280,'Pablo Darey','Hernandez','Elizondo',522),(1631918,'Edgar Arnulfo','Fuentes','Rodriguez',521),(1633588,'Miguel Angel','Martinez','Colunga',522),(1634092,'Oscar Adolfo','Hernandez','Cortes',522),(1637218,'Samantha Giovanna','Elizondo','Gutierrez',521),(1641980,'Jose Arturo','Martinez','Cardona',522),(1644349,'Yezer','Martinez','Olea',522),(1927926,'Leslie Esmeralda','Castillo','Calamaco',521);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistencia` (
  `idAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `idRelMatGru` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Matricula` int(11) NOT NULL,
  `Asistio` tinyint(4) NOT NULL,
  PRIMARY KEY (`idAsistencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criterio`
--

DROP TABLE IF EXISTS `criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criterio` (
  `idCriterio` int(11) NOT NULL AUTO_INCREMENT,
  `idActividad` int(11) NOT NULL,
  `valor` float NOT NULL,
  `texto` varchar(1000) NOT NULL,
  PRIMARY KEY (`idCriterio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterio`
--

LOCK TABLES `criterio` WRITE;
/*!40000 ALTER TABLE `criterio` DISABLE KEYS */;
/*!40000 ALTER TABLE `criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia` (
  `idDia` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(30) NOT NULL,
  PRIMARY KEY (`idDia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'Lunes'),(2,'Martes'),(3,'Miercoles'),(4,'Jueves'),(5,'Viernes'),(6,'Sabado');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimension`
--

DROP TABLE IF EXISTS `dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimension` (
  `idDimension` int(11) NOT NULL AUTO_INCREMENT,
  `Dimension` varchar(45) NOT NULL,
  PRIMARY KEY (`idDimension`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimension`
--

LOCK TABLES `dimension` WRITE;
/*!40000 ALTER TABLE `dimension` DISABLE KEYS */;
INSERT INTO `dimension` VALUES (1,'Diagnostica'),(2,'Adquisicion'),(3,'Organizacion y jerarquizacion'),(4,'Aplicacion'),(5,'Metacognicion'),(6,'Integradora');
/*!40000 ALTER TABLE `dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `NoEmpleado` varchar(10) NOT NULL,
  `Contraseña` varchar(25) NOT NULL,
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('102683','123456',1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa`
--

DROP TABLE IF EXISTS `etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etapa` (
  `idEtapa` int(11) NOT NULL AUTO_INCREMENT,
  `NoEtapa` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `nivelDominio` int(11) NOT NULL,
  PRIMARY KEY (`idEtapa`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
INSERT INTO `etapa` VALUES (19,1,31,15,25),(20,2,31,15,25),(21,3,31,15,25),(22,4,31,15,25);
/*!40000 ALTER TABLE `etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_actividad`
--

DROP TABLE IF EXISTS `evaluacion_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_actividad` (
  `idEvaluacionActividad` int(11) NOT NULL AUTO_INCREMENT,
  `idActividad` int(11) NOT NULL,
  `matricula` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idEvaluacionActividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_actividad`
--

LOCK TABLES `evaluacion_actividad` WRITE;
/*!40000 ALTER TABLE `evaluacion_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_criterio`
--

DROP TABLE IF EXISTS `evaluacion_criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_criterio` (
  `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `idSubcriterio` int(11) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`idEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_criterio`
--

LOCK TABLES `evaluacion_criterio` WRITE;
/*!40000 ALTER TABLE `evaluacion_criterio` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_evaluacion`
--

DROP TABLE IF EXISTS `examen_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen_evaluacion` (
  `idExamenEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Calificacion` float NOT NULL,
  `idExamenMateria` int(11) NOT NULL,
  PRIMARY KEY (`idExamenEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_evaluacion`
--

LOCK TABLES `examen_evaluacion` WRITE;
/*!40000 ALTER TABLE `examen_evaluacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examen_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_materia`
--

DROP TABLE IF EXISTS `examen_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen_materia` (
  `idExamenMateria` int(11) NOT NULL AUTO_INCREMENT,
  `idMateria` int(11) NOT NULL,
  `idExamenTipo` int(11) NOT NULL,
  `Valor` float NOT NULL,
  PRIMARY KEY (`idExamenMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_materia`
--

LOCK TABLES `examen_materia` WRITE;
/*!40000 ALTER TABLE `examen_materia` DISABLE KEYS */;
INSERT INTO `examen_materia` VALUES (9,31,5,20);
/*!40000 ALTER TABLE `examen_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_tipo`
--

DROP TABLE IF EXISTS `examen_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen_tipo` (
  `idExamenTipo` int(11) NOT NULL AUTO_INCREMENT,
  `examenTipo` varchar(100) NOT NULL,
  PRIMARY KEY (`idExamenTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_tipo`
--

LOCK TABLES `examen_tipo` WRITE;
/*!40000 ALTER TABLE `examen_tipo` DISABLE KEYS */;
INSERT INTO `examen_tipo` VALUES (1,'1er Parcial'),(2,'1er Indicativo'),(3,'2do Indicativo'),(4,'2do Parcial'),(5,'Global');
/*!40000 ALTER TABLE `examen_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `IdGrupo` int(11) NOT NULL AUTO_INCREMENT,
  `Grupo` int(11) NOT NULL,
  `activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`IdGrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,521,1),(2,522,1);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hora`
--

DROP TABLE IF EXISTS `hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hora` (
  `idHora` int(11) NOT NULL AUTO_INCREMENT,
  `hora` varchar(10) NOT NULL,
  PRIMARY KEY (`idHora`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora`
--

LOCK TABLES `hora` WRITE;
/*!40000 ALTER TABLE `hora` DISABLE KEYS */;
INSERT INTO `hora` VALUES (1,'7:00'),(2,'7:50'),(3,'8:40'),(4,'9:30'),(5,'10:20'),(6,'11:10'),(7,'12:00'),(8,'13:00'),(9,'13:50'),(10,'14:40'),(11,'15:30'),(12,'16:20'),(13,'17:10'),(14,'18:00'),(15,'18:50');
/*!40000 ALTER TABLE `hora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `Materia` varchar(60) NOT NULL,
  `Activo` tinyint(4) NOT NULL,
  `frecuencia` int(11) NOT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (20,'Disenio Web II',1,0),(21,'Base de datos II',1,0),(22,'Desarrollo Visual II',1,0),(23,'Sistemas Operativos',1,0),(31,'Desarrollo Humano',1,2);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pia`
--

DROP TABLE IF EXISTS `pia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pia` (
  `idPIA` int(11) NOT NULL AUTO_INCREMENT,
  `idMateria` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  PRIMARY KEY (`idPIA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pia`
--

LOCK TABLES `pia` WRITE;
/*!40000 ALTER TABLE `pia` DISABLE KEYS */;
INSERT INTO `pia` VALUES (2,31,20);
/*!40000 ALTER TABLE `pia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_act_dim`
--

DROP TABLE IF EXISTS `rel_act_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_act_dim` (
  `idRel_Act_Dim` int(11) NOT NULL AUTO_INCREMENT,
  `idDimension` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  PRIMARY KEY (`idRel_Act_Dim`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_act_dim`
--

LOCK TABLES `rel_act_dim` WRITE;
/*!40000 ALTER TABLE `rel_act_dim` DISABLE KEYS */;
INSERT INTO `rel_act_dim` VALUES (48,1,31),(49,2,31),(50,3,31),(51,6,32),(52,6,33),(53,6,34);
/*!40000 ALTER TABLE `rel_act_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_mat_gru`
--

DROP TABLE IF EXISTS `rel_mat_gru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_mat_gru` (
  `idRel_Mat_Gru` int(11) NOT NULL AUTO_INCREMENT,
  `idGrupo` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  PRIMARY KEY (`idRel_Mat_Gru`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_mat_gru`
--

LOCK TABLES `rel_mat_gru` WRITE;
/*!40000 ALTER TABLE `rel_mat_gru` DISABLE KEYS */;
INSERT INTO `rel_mat_gru` VALUES (1,1,22,1),(2,1,21,1),(3,1,20,1),(4,2,22,1),(5,2,20,1);
/*!40000 ALTER TABLE `rel_mat_gru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_mat_gru_emp_hora`
--

DROP TABLE IF EXISTS `rel_mat_gru_emp_hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_mat_gru_emp_hora` (
  `idMatGruEmpHora` int(11) NOT NULL AUTO_INCREMENT,
  `idRelMatGru` int(11) NOT NULL,
  `idDia` int(11) NOT NULL,
  `idHora` int(11) NOT NULL,
  PRIMARY KEY (`idMatGruEmpHora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_mat_gru_emp_hora`
--

LOCK TABLES `rel_mat_gru_emp_hora` WRITE;
/*!40000 ALTER TABLE `rel_mat_gru_emp_hora` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_mat_gru_emp_hora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcriterio`
--

DROP TABLE IF EXISTS `subcriterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcriterio` (
  `idSubcriterio` int(11) NOT NULL AUTO_INCREMENT,
  `idCriterio` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `retroalimentacion` varchar(1000) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`idSubcriterio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcriterio`
--

LOCK TABLES `subcriterio` WRITE;
/*!40000 ALTER TABLE `subcriterio` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcriterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sistemaevaluacion'
--

--
-- Dumping routines for database 'sistemaevaluacion'
--
/*!50003 DROP PROCEDURE IF EXISTS `addActividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addActividad`(
	IN noActividadParam int(11),
    IN idEtapaParam int(11),
    IN valorParam int(11)
)
BEGIN
	INSERT INTO 
		actividad
        (
			NoActividad,
            idEtapa,
            Titulo,
            Comentarios,
            Valor
        )
	values	
		(
			noActividadParam,
            idEtapaParam,
            ' ',
            ' ',
            valorParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAlumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAlumno`(
	IN matriculaParam int(11),
    IN nombreParam varchar(60),
    IN paternoParam varchar(60),
    IN maternoParam varchar(60),
    IN idGrupoParam int(11)
)
BEGIN
	INSERT INTO
		alumno
		(
			Matricula,
            Nombre,
            Paterno,
            Materno,
            IdGrupo
        )
	values
		(
			matriculaParam,
            nombreParam,
            paternoParam,
            maternoParam,
            idGrupoParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addEtapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addEtapa`(
	IN noEtapaParam int(11),
    IN idMateriaParam int(11),
    IN valorParam int(11),
    IN nivelDominioParam int(11)
)
BEGIN
	INSERT INTO
		etapa	
        (
			NoEtapa,
            idMateria,
            valor,
            nivelDominio
        )
	VALUES
		(
			noEtapaParam,
            idMateriaParam,
            valorParam,
            nivelDominioParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addExamenMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addExamenMateria`(
	IN idMateriaParam int(11),
    IN idExamenTipoParam int(11),
    IN ValorParam float
)
BEGIN
	INSERT INTO 
		examen_materia
        (
			idMateria,
            idExamenTipo,
            Valor
        )
	VALUES
		(
			idMateriaParam,
            idExamenTipoParam,
            ValorParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addExamenTipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addExamenTipo`(
	IN examenTipoParam varchar(100)
)
BEGIN
	INSERT into
		examen_tipo
        (
			examenTipo
        )
	values
		(
			examenTipoParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addGrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addGrupo`(
	in grupoParam int(11)
)
BEGIN
INSERT INTO
	grupo
		(
			grupo,
            activo
        )
values
		(
			grupoParam,
            1
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addMateria`(
	in materiaParam varchar(60),
    in frecuenciaParam int(11)
)
BEGIN
INSERT INTO
	materia
		(
			Materia,
            Activo,
            Frecuencia
        )
values
		(
			materiaParam,
            1,
            FrecuenciaParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addPIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPIA`(
	IN idMateriaParam INT(11),
    IN valorParam INT(11)
)
BEGIN
	INSERT INTO 
		pia
        (
			idMateria,
            valor
		)
	values	
		(
			idMateriaParam ,
            valorParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRel_Act_Dim` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRel_Act_Dim`(
	IN idDimensionParam int(11),
    IN idActividadParam int(11)
 )
BEGIN
	INSERT INTO 
		rel_act_dim
        (
			idDimension,
            idActividad
        )
	values
		(
			idDimensionParam,
            idActividadParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRel_Mat_Grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRel_Mat_Grupo`(
	in idGrupoParam int(11),
    in idMateriaParam int(11),
    in idEmpleadoParam int(11)
)
BEGIN
INSERT INTO
	rel_mat_gru
		(
			idGrupo,
            idMateria,
            idEmpleado
        )
values
		(
			idGrupoParam,
            idMateriaParam,
            idEmpleadoParam
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getActividadByEtapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getActividadByEtapa`(
	IN idEtapaParam int(11)
)
BEGIN
SELECT 
	actividad.idActividad,
    actividad.NoActividad,
    actividad.valor
FROM 
	actividad
WHERE 
	actividad.idEtapa=idEtapaParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAlumnoAsistencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAlumnoAsistencia`(

)
BEGIN
SELECT 
	Al.Matricula,
	CONCAT(Al.Nombre,' ',Al.Paterno,' ',Al.Materno) AS Nombre
FROM 
	Alumno as Al;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAlumnoGrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAlumnoGrupo`(
	IN grupoParam int(11)
)
BEGIN
	SELECT 
	Al.Matricula,
	CONCAT(Al.Paterno,' ',Al.Materno,' ',Al.Nombre) AS Nombre
FROM 
	Alumno as Al
WHERE 
	Al.idGrupo=grupoParam
Order by
	Al.Paterno,
    Al.Materno,
    Al.Nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDimensiones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDimensiones`()
BEGIN
	Select
		*
	From
		Dimension;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEtapaByMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEtapaByMateria`(
	IN idMateriaParam int(11)
)
BEGIN
	SELECT
		*
	FROM
		ETAPA
	WHERE 
		idMateria=idMateriaParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getExamenTipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getExamenTipo`()
BEGIN
	SELECT 
	*
	FROM  
	examen_tipo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGrupos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getGrupos`(
	in  noEmpleadoParam varchar(10)
)
BEGIN
SELECT
	rel_mat_gru.idRel_Mat_Gru as id,
	Grupo.idGrupo as idGrupo,
    Grupo.Grupo as grupo,
    Materia.materia as materia
FROM
	rel_mat_gru 
    JOIN grupo
    ON rel_mat_gru.idGrupo=grupo.IdGrupo
	JOIN empleado
	ON empleado.IdEmpleado=rel_mat_gru.idEmpleado
    JOIN materia
    ON materia.idMateria=rel_mat_gru.idMateria
where
	materia.activo=1
    and
    grupo.activo=1
    and
    empleado.NoEmpleado=noEmpleadoParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLastActividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLastActividad`()
BEGIN
	SELECT
		* 
	FROM
		actividad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLastEtapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLastEtapa`()
BEGIN
	Select 
		*
	From
		etapa
	Order by idEtapa ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLastMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLastMateria`()
BEGIN
	Select 
		*
	From
		materia
	Order by idMateria ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaterias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaterias`(
	
 )
BEGIN
	Select
		*
	from 
		materia
	where
		activo=1
	Order by materia asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `isUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `isUser`(
	IN noEmpleadoParam varchar(10),
    IN contraseñaParam varchar(25)
)
BEGIN
	SELECT
		NoEmpleado,
        Contraseña
	FROM
		empleado
	WHERE 
		NoEmpleado=noEmpleadoParam
        AND
        Contraseña=contraseñaParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-24 23:57:54
