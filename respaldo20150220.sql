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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (55,'1',35,'¿Que es HTML?','El alumno debe de tener la capacidad de contestar con sus propias palabras y conocimientos previos que es para el HTML',1),(56,'2',35,' ',' ',4),(57,'3',35,'Maquetacion en HTML',NULL,5),(58,'4',36,' ',' ',1),(59,'5',36,' ',' ',4),(60,'6',36,' ',' ',5),(61,'7',37,' ',' ',2),(62,'8',37,' ',' ',3),(63,'9',37,' ',' ',5),(64,'10',38,' ',' ',1),(65,'11',38,' ',' ',4),(66,'12',38,' ',' ',5),(67,'1',39,' ',' ',5),(68,'2',39,'Variables en caja negra',NULL,10),(69,'3',40,' ',' ',5),(70,'4',40,' ',' ',10),(71,'5',41,' ',' ',5),(72,'6',41,' ',' ',10),(73,'7',42,' ',' ',5),(74,'8',42,' ',' ',10),(75,'1',43,'Pregunta reflexiva',NULL,1),(76,'2',43,' ',' ',3),(77,'3',43,' ',' ',2),(78,'4',43,' ',' ',3),(79,'5',43,' ',' ',2),(80,'6',43,' ',' ',1),(81,'7',44,' ',' ',1),(82,'8',44,' ',' ',3),(83,'9',44,' ',' ',2),(84,'10',44,' ',' ',3),(85,'11',44,' ',' ',2),(86,'12',44,' ',' ',1),(87,'13',45,' ',' ',1),(88,'14',45,' ',' ',3),(89,'15',45,' ',' ',2),(90,'16',45,' ',' ',3),(91,'17',45,' ',' ',2),(92,'18',45,' ',' ',1),(93,'19',46,' ',' ',1),(94,'20',46,' ',' ',3),(95,'21',46,' ',' ',2),(96,'22',46,' ',' ',3),(97,'23',46,' ',' ',5),(98,'24',46,' ',' ',1);
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
  `idTipoAsistencia` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterio`
--

LOCK TABLES `criterio` WRITE;
/*!40000 ALTER TABLE `criterio` DISABLE KEYS */;
INSERT INTO `criterio` VALUES (8,57,10,'Limpieza en el codigo'),(9,57,80,'Maquetacion'),(10,57,10,'Uso de atributos'),(11,68,70,'Encapsulamiento correcto'),(12,68,30,'MÃ©todos estÃ¡ticos'),(13,75,25,'Cantidad de cuartillas '),(14,75,25,'Calidad en la redaccion'),(15,75,25,'Coherencia en el contenido'),(16,75,25,'Entrega en tiempo y forma');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
INSERT INTO `etapa` VALUES (35,1,39,10,25),(36,2,39,10,25),(37,3,39,10,25),(38,4,39,10,25),(39,1,40,15,25),(40,2,40,15,25),(41,3,40,15,25),(42,4,40,15,25),(43,1,41,12,25),(44,2,41,12,25),(45,3,41,12,25),(46,4,41,15,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_criterio`
--

LOCK TABLES `evaluacion_criterio` WRITE;
/*!40000 ALTER TABLE `evaluacion_criterio` DISABLE KEYS */;
INSERT INTO `evaluacion_criterio` VALUES (9,22,1628338,'2015-02-03'),(10,25,1628338,'2015-02-03'),(11,28,1628338,'2015-02-03'),(12,23,1629151,'2015-02-03'),(13,27,1629151,'2015-02-03'),(14,30,1629151,'2015-02-03'),(15,38,1629151,'2015-02-03'),(16,40,1629151,'2015-02-03'),(17,45,1629151,'2015-02-03'),(18,48,1629151,'2015-02-03');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_materia`
--

LOCK TABLES `examen_materia` WRITE;
/*!40000 ALTER TABLE `examen_materia` DISABLE KEYS */;
INSERT INTO `examen_materia` VALUES (10,33,5,20),(11,36,5,30),(12,39,1,20),(13,39,4,20),(14,40,5,40),(15,41,1,20),(16,41,4,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (39,'Diseño Web II',1,4),(40,'Auditoria en Informatica',1,3),(41,'Actividad Fisica Escolar',1,4);
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
  `descripcion` varchar(1000) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  PRIMARY KEY (`idPIA`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pia`
--

LOCK TABLES `pia` WRITE;
/*!40000 ALTER TABLE `pia` DISABLE KEYS */;
INSERT INTO `pia` VALUES (5,39,20,'',''),(6,41,9,'','');
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_act_dim`
--

LOCK TABLES `rel_act_dim` WRITE;
/*!40000 ALTER TABLE `rel_act_dim` DISABLE KEYS */;
INSERT INTO `rel_act_dim` VALUES (54,4,35),(55,4,36),(56,4,37),(57,4,38),(58,1,39),(59,2,40),(60,3,40),(61,4,41),(62,1,42),(63,2,43),(64,3,43),(65,4,44),(66,5,44),(67,1,45),(68,2,46),(69,3,46),(70,4,47),(71,5,47),(72,1,48),(73,2,49),(74,3,49),(75,4,50),(76,5,50),(77,6,51),(78,6,52),(79,6,53),(80,6,54),(81,1,55),(82,2,56),(83,3,56),(84,4,57),(85,1,58),(86,2,59),(87,3,59),(88,4,60),(89,2,61),(90,3,62),(91,4,62),(92,5,63),(93,2,64),(94,3,65),(95,4,65),(96,6,66),(97,2,67),(98,3,68),(99,4,68),(100,5,68),(101,2,69),(102,3,70),(103,4,70),(104,5,70),(105,1,71),(106,2,71),(107,3,72),(108,4,72),(109,5,72),(110,2,73),(111,3,74),(112,4,74),(113,5,74),(114,1,75),(115,2,76),(116,3,77),(117,4,78),(118,5,79),(119,6,80),(120,1,81),(121,2,82),(122,3,83),(123,4,84),(124,5,85),(125,6,86),(126,1,87),(127,2,88),(128,3,89),(129,4,90),(130,5,91),(131,6,92),(132,1,93),(133,2,94),(134,3,95),(135,4,96),(136,5,97),(137,6,98);
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
INSERT INTO `rel_mat_gru` VALUES (1,1,39,1),(2,2,39,1),(3,1,40,1),(4,2,40,1),(5,1,41,1);
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
-- Table structure for table `saber_etapa`
--

DROP TABLE IF EXISTS `saber_etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saber_etapa` (
  `idSaberEtapa` int(11) NOT NULL AUTO_INCREMENT,
  `conocer` varchar(1000) NOT NULL,
  `hacer` varchar(1000) NOT NULL,
  `ser` varchar(1000) NOT NULL,
  `idEtapa` int(11) NOT NULL,
  `idDimension` int(11) NOT NULL,
  PRIMARY KEY (`idSaberEtapa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saber_etapa`
--

LOCK TABLES `saber_etapa` WRITE;
/*!40000 ALTER TABLE `saber_etapa` DISABLE KEYS */;
/*!40000 ALTER TABLE `saber_etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saber_global`
--

DROP TABLE IF EXISTS `saber_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saber_global` (
  `idSaberGlobal` int(11) NOT NULL AUTO_INCREMENT,
  `conocer` varchar(1000) NOT NULL,
  `hacer` varchar(1000) NOT NULL,
  `saber` varchar(1000) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `idDimension` int(11) NOT NULL,
  PRIMARY KEY (`idSaberGlobal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saber_global`
--

LOCK TABLES `saber_global` WRITE;
/*!40000 ALTER TABLE `saber_global` DISABLE KEYS */;
/*!40000 ALTER TABLE `saber_global` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcriterio`
--

LOCK TABLES `subcriterio` WRITE;
/*!40000 ALTER TABLE `subcriterio` DISABLE KEYS */;
INSERT INTO `subcriterio` VALUES (22,8,'El alumno ordeno el cÃ³digo con sangrias, las etiquetas en el lugar que van, respeto jerarquias de etiquetas','El alumno es capaz de convivir con codigo ajeno y codificar en hmtl de una manera clara, lo que permite un desarrollo en equipo',100),(23,8,'El alumno cumplio con dos de tres criterios de limpieza en codigo','el alumno no cumple al 100% con un codigo ordenado, sin embargo aun presenta un codigo legible para otro programador',75),(24,8,'El codigo del alumno es un completo desorden','El alumno codifica de un manera sucia, presentando casi nula la posibilidad de colaborar en desarrollo en equipos, por lo menos en el area web',50),(25,9,'El alumno obtuvo una replica exacta de la maquetacion esperada','el alumno domina al 100% la capacidad de ordenar pÃ¡ginas web como debe de ser',100),(26,9,'El alumno no copia identicamente la maquetacion sin embargo , la pagina presenta una maquetacion aceptable','El alumno puede ordenar las paginas web casi en su totalidad, en caso de no poder busca una solucion alterna  para resolver el problema',80),(27,9,'La pagina presentada como evidencia es un completo desorden','El alumno no tiene la capacidad de asociar codigo html a una posible vista previa, por lo que sus paginas no se presentan como se esperan',50),(28,10,'El alumnos utilizo correctamente atributos que aunque no impactan directamente el funcionamiento si representan una buena practica de programacion','El alumno da un valor agregado a lo que se le pide',100),(29,10,'El alumno utiliza algunos atributos para mejorar su html','El alumno tiene un poco de capacidad para mejorar su performance mediante uso de atributos',80),(30,10,'No se uso ningun atributo','El alumno desconoce por completo el uso de atributos',50),(31,11,'Se utilizaron solamente propiedades privadas con sus respectivos getter y setter, asÃ­ como un constructor de verificacion','El alumno tiene la capacidad de interpretar una entidad y en base a sus caracteristicas crear una clase de forma encapsulada',100),(32,11,'El alumno crea las variables de una manera privada, sin embargo dsede los sets y gets se pueden moficar a placer','el alumno entiende que una variable privada , estÃ¡ protegida, sin embargo no saber como utilizar correctamente los metodos get y set',75),(33,11,'el alumnos no encapsulo nada y sus variables quedaron como publicas','El alumno carece por completo del termino encapsulamiento de datos',30),(34,12,'El alumno entiende que existen metodos que no pertecen propiamente a la instancia pero si a la clase','El alumno es capaz de utilizar metodos que pertecen a una clases pero no a una instnacia',100),(35,12,'Metodos static incompletos','El alumno entiende que es un metodo static sin embargo no entiende al 100% como se utilizan los mismo',70),(36,12,'El alumno no utiliza ningun metodo static','La persona carece en toda la extension de conocimientos de encapsulamiento de datos',30),(37,13,'Cumplimiento con la cantidad de renglones 10','En relacion con la cantidad de cuartillas te informo que cumpliste satisfactoriamente con las solicitadas',25),(38,13,'Cumplir con ocho renglones','En relacion con la cantidad de cumplimiento de los renglos te inform que cumpliste con 8',22),(39,13,'Cumplimiento con menos de 8 renglones','En relacion con el cumplimiento de los renglones te informo que tu cumplimiento fue por debajo',18),(40,14,'Excelente redacciÃ³n y ortografia','Referente a la redaccion y la ortografia la encuentro muy bien redactada y sin falta de ortografia',25),(41,14,'Algunas faltas de ortografia y buena redaccion','En relacion con la ortografia te informo que encontre faltas no relevantes , sobre la redaccion requieres un poco mas de practica',22),(42,14,'Muchas faltas de ortografia y mala redaccion','como recomendacion te sugiero trabajes mas sobre la ortografia y la redaccion ya que es un area de oportunidad para ti',18),(43,15,'Contenido responde a la pregunta y da respuesta a la pregunta excelentemente','El contenido que se encuentra en la redaccion responde acertadamente el cuestionamiento',25),(44,15,'Gran parte del contenido da respuesta al cuestionamiento','En relacion con el contenido la mayor parte del mismo da respueta al cuestionamiento',22),(45,15,'falta de coherencia con el contenido,','en relacion con el contenido lamento informarte que mucho de este no da una respuesta clara sobre el cuestionamiento',18),(46,16,'Entregar a tiempo y con las especificaciones solicitadas','Por ultimo evaluando la entrega de tu actividad te comento que la realizaste en tiempo y forma',25),(47,16,'Entrega con algunos dias de retraso','en lo que respecta a la entrega lo entregaste con unos dias de retraso',22),(48,16,'Entrega totalmente desfazada','Lamento informarte que en el cumplimiento de tiempo y forma',18);
/*!40000 ALTER TABLE `subcriterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_asistencia`
--

DROP TABLE IF EXISTS `tipo_asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_asistencia` (
  `idTipoAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `TipoAsistencia` varchar(45) DEFAULT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`idTipoAsistencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_asistencia`
--

LOCK TABLES `tipo_asistencia` WRITE;
/*!40000 ALTER TABLE `tipo_asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_asistencia` ENABLE KEYS */;
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
/*!50003 DROP PROCEDURE IF EXISTS `addCriterio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCriterio`(
	IN idActividadParam  int(11),
    IN valorParam float,
    IN textoParam varchar(1000)
)
BEGIN
	INSERT INTO
		criterio
        (
			idActividad,
            valor,
            texto
        )
	values
		(
			idActividadParam,
            valorParam,
            textoParam
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
/*!50003 DROP PROCEDURE IF EXISTS `addEvaluacionCriterio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addEvaluacionCriterio`(
	IN idSubcriterioParam int(11),
    IN matriculaParam int(11)
)
BEGIN
INSERT INTO 
	evaluacion_criterio
		(
		 idSubcriterio,
         Matricula,
         Fecha
		) 
	values
		(
		idSubcriterioParam,
        matriculaParam,
        CURDATE()
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
    IN valorParam INT(11),
    IN descripcionParam varchar(1000),
    IN tituloParam  varchar(150)
)
BEGIN
	INSERT INTO 
		pia
        (
			idMateria,
            valor,
            descripcion,
            titulo
		)
	values	
		(
			idMateriaParam ,
            valorParam,
            descripcionParam,
            tituloParam
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
/*!50003 DROP PROCEDURE IF EXISTS `addSaberEtapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addSaberEtapa`(
	in conocerParam varchar(1000),
    in hacerParam varchar(1000),
    in serParam varchar(1000),
    in idEtapaParam int(11),
    in idDimensionParam int(11)
)
BEGIN
	Insert into
		saber_etapa
        (
			conocer,
            hacer,
            ser,
            idEtapa,
            idDimension
            
            
        )
	Values
    (
    		conocerParam,
            hacerParam,
            serParam,
            idEtapaParam,
            idDimensionParam
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addSubCriterio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addSubCriterio`(
	IN idCriterioParam int(11),
    IN textoParam varchar(1000),
    IN retroalimentacionParam varchar(1000),
    IN valorParam float
)
BEGIN
	INSERT INTO
	subcriterio
	(
		idCriterio,
        texto,
        retroalimentacion,
        Valor
    )
    Values
    (
		idCriterioParam,
		textoParam,
		retroalimentacionParam,
		valorParam
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
/*!50003 DROP PROCEDURE IF EXISTS `getActividadDimensionByEtapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getActividadDimensionByEtapa`(
	IN idEtapaParam INT(11)
 )
BEGIN
select 
	dimension.Dimension as dimension,
    dimension.idDimension as idDimension,
    actividad.NoActividad as noActividad,
	actividad.Titulo as titulo
from
	rel_act_dim
    Join actividad
    on rel_act_dim.idActividad=actividad.idActividad
    Join dimension
    on rel_act_dim.idDimension=dimension.idDimension
Where 
	actividad.idEtapa=idEtapaParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllGrupos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllGrupos`()
BEGIN
	Select 
		*
	From 
		grupo
	Where
		activo=1;
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
/*!50003 DROP PROCEDURE IF EXISTS `getCriterioByActividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCriterioByActividad`(
	IN idActividadParam int(11)
)
BEGIN
	SELECT
		*
	FROM
		criterio
	WHERE
		idActividad=idActividadParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDias`()
BEGIN
	Select 
		*
	From
		Dia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDimensionByActividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDimensionByActividad`(
	in idActividadParam int(11)
)
BEGIN
	select 
	dimension.Dimension
from 
	Rel_act_dim
    Inner Join
		actividad 
	on	
		Rel_act_dim.idActividad=actividad.idActividad
	Inner  join
		dimension
	on
		Rel_act_dim.idDimension=dimension.idDimension
Where 
	actividad.idActividad=idActividadParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDimensionByEtapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDimensionByEtapa`(
	IN idEtapaParam  int(11)
)
BEGIN
select 
	dimension.Dimension,
    actividad.titulo
from 
	rel_act_dim
    join actividad
    on rel_act_dim.idActividad=actividad.idActividad
    join dimension
    on rel_act_dim.idDimension=dimension.idDimension
where
	idetapa=idEtapaParam;
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
/*!50003 DROP PROCEDURE IF EXISTS `getEtapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEtapa`(
	IN idEtapaParam int(11)
)
BEGIN
select 
*
from
etapa
where idEtapa=idEtapaParam;
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
/*!50003 DROP PROCEDURE IF EXISTS `getEvaluacionActividadByMatriculaActividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEvaluacionActividadByMatriculaActividad`(
	IN matriculaParam int(11),
    IN idActividadParam int(11)
)
BEGIN
select 
	IFNULL(evaluacion_actividad.calificacion,0) as calificacion,
    alumno.matricula
from 
	evaluacion_actividad
	right join alumno
    on evaluacion_actividad.matricula=alumno.Matricula
WHERE
	alumno.Matricula=matriculaParam
    AND
    evaluacion_actividad.idActividad=idActividadParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getExamenByMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getExamenByMateria`(
	IN idMateriaParam int(11)
)
BEGIN
	SELECT
		* 
	FROM
		examen_materia
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
/*!50003 DROP PROCEDURE IF EXISTS `getGrupoById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getGrupoById`(
	IN idGrupoParam int(11)
)
BEGIN
	Select 
    *
    from grupo
    where idGrupo=idGrupoParam;
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
    Materia.materia as materia,
    Materia.idMateria as idMateria
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
/*!50003 DROP PROCEDURE IF EXISTS `getHoras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHoras`()
BEGIN
	Select 
		*
	from
    hora;
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
/*!50003 DROP PROCEDURE IF EXISTS `getLastCriterio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLastCriterio`()
BEGIN
	select 
		* 
	from 
		criterio 
	ORDER BY
		idCriterio
	DESC LIMIT 1 ;
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
/*!50003 DROP PROCEDURE IF EXISTS `getMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMateria`(
	IN idMateriaParam int(11)
)
BEGIN
	Select 
		Materia
	From
		Materia
	Where
		idMateria=idMateriaParam;
		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMateriaById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMateriaById`(
	IN idMateriaParam int(11)
)
BEGIN
	Select 
		*
	from
		materia
	where
		idMateria=idMateriaParam;
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
/*!50003 DROP PROCEDURE IF EXISTS `getPiaByMateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPiaByMateria`(
	IN idMateriaParam int(11)
)
BEGIN
	select 
		*
    from 
		pia
    where
		idMateria=idMateriaParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSubcriterioByCriterio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSubcriterioByCriterio`(
	IN idCriterioParam int(11)
)
BEGIN
	Select
		*
	from
		subcriterio
	where
		idCriterio=idCriterioParam;
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
/*!50003 DROP PROCEDURE IF EXISTS `updateActividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateActividad`(
	IN idActividadParam int(11),
	IN tituloParam varchar(60),
    IN comentariosParam varchar(1000)
   
)
BEGIN
	UPDATE 
		actividad
	SET
		Titulo=tituloParam,
		Comentarios=comentariosParam
	WHERE
		idActividad=idActividadParam;
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

-- Dump completed on 2015-02-20  9:15:41
