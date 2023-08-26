CREATE DATABASE  IF NOT EXISTS `ventras_forma2` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ventras_forma2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ventras_forma2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` char(60) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Wilson','Cra 2 #7 89','2023-09-23','wi@gmail.com'),(2,'Cristian','Cra 6 #9 87','2023-02-12','cr@gmail.com'),(3,'Scott','Cll 22 #43 76','2023-08-26','sc@gmail.com'),(4,'Javier','Cll 32 #14 11','2023-04-12','ja@gmail.com'),(5,'Maria','Cra 12 #13 15','2023-08-01','ma@gmail.com'),(6,'Sofia','Cll 45 #8 76','2023-01-01','so@gmail.com'),(7,'Antonio','Cra 99 #7 91','2023-02-05','an@gmail.com'),(8,'Felipe','Cll 69 #6 100','2023-05-10','fe@gmail.com'),(9,'Ambar','Cra 6 #6 66','2023-05-29','am@gmail.com'),(10,'Daiver','Cll 35 #33 25','2023-10-26','da@gmail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precioCompra` decimal(10,0) NOT NULL,
  `precioVenta` decimal(10,0) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'frutas',3000,3500,4),(2,'gaseosa',2000,2200,3),(3,'b_alcohol',1500,1700,3),(4,'medicamentos',3000,4000,2),(5,'repuestos',15000,18000,8);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_del_proveedor` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'mateo','2023-09-23'),(2,'juan','2023-09-13'),(3,'sara','2023-06-23'),(4,'isabella','2023-05-23'),(5,'abraham','2023-01-12'),(6,'andres','2023-02-20'),(7,'elias','2023-04-11'),(8,'sofia','2023-07-24'),(9,'ines','2023-08-22'),(10,'juana','2023-03-12');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_has_productos`
--

DROP TABLE IF EXISTS `proveedores_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_has_productos` (
  `proveedores_id` int NOT NULL,
  `productos_id` int NOT NULL,
  PRIMARY KEY (`proveedores_id`,`productos_id`),
  KEY `fk_proveedores_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_proveedores_has_productos_proveedores1_idx` (`proveedores_id`),
  CONSTRAINT `fk_proveedores_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_proveedores_has_productos_proveedores1` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_has_productos`
--

LOCK TABLES `proveedores_has_productos` WRITE;
/*!40000 ALTER TABLE `proveedores_has_productos` DISABLE KEYS */;
INSERT INTO `proveedores_has_productos` VALUES (1,1),(6,1),(2,2),(7,2),(3,3),(8,3),(4,4),(9,4),(5,5),(10,5);
/*!40000 ALTER TABLE `proveedores_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) NOT NULL,
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_telefonos_clientes_idx` (`clientes_id`),
  CONSTRAINT `fk_telefonos_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (1,'313456',1),(2,'312567',2),(3,'301247',3),(4,'300654',4),(5,'354678',5),(6,'312666',6),(7,'315666',7),(8,'321986',8),(9,'314678',9),(10,'300986',10);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_productos`
--

DROP TABLE IF EXISTS `tipo_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `productos_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tipo_productos_productos1_idx` (`productos_id`),
  CONSTRAINT `fk_tipo_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_productos`
--

LOCK TABLES `tipo_productos` WRITE;
/*!40000 ALTER TABLE `tipo_productos` DISABLE KEYS */;
INSERT INTO `tipo_productos` VALUES (1,'manzana',1),(2,'pera',1),(3,'banano',1),(4,'cocacola',2),(5,'pepsi',2);
/*!40000 ALTER TABLE `tipo_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` char(45) NOT NULL,
  `fecha` date NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `iva` decimal(10,0) NOT NULL,
  `descuento` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idtable3_UNIQUE` (`id`),
  KEY `fk_ventas_clientes1_idx` (`clientes_id`),
  CONSTRAINT `fk_ventas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'manzana','2023-09-12',7000,19,12,10000,1),(2,'cocacola','2023-04-12',2200,15,12,5000,1),(3,'andina','2023-05-02',3400,17,12,5000,3),(4,'pepsi','2023-06-03',2200,15,12,4000,4),(5,'pera','2023-06-19',3500,19,12,5000,4),(6,'banano','2023-09-23',14000,19,12,20000,5),(7,'pepsi','2023-07-23',2200,15,12,5000,5),(8,'dolex','2023-11-12',4000,14,12,5000,5),(9,'postobon','2023-12-01',4400,15,12,5000,7),(10,'rejilla','2023-02-12',26000,20,12,30000,2),(11,'manzana','2023-09-12',7000,19,12,10000,2),(12,'cocacola','2023-03-10',2200,15,12,3000,8),(13,'andina','2023-05-06',3400,17,12,5000,7),(14,'postobon','2023-06-06',4400,15,12,5000,9),(15,'pera','2023-02-23',3500,19,12,5000,10),(16,'banano','2023-12-12',14000,19,12,20000,10),(17,'rejilla','2023-09-13',18000,20,12,20000,2),(18,'cocacola','2023-09-12',2200,15,12,2500,5),(19,'andina','2023-07-07',1700,17,12,2000,9),(20,'andina','2023-09-12',1700,17,12,2000,1);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_productos`
--

DROP TABLE IF EXISTS `ventas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_productos` (
  `ventas_id` int NOT NULL,
  `productos_id` int NOT NULL,
  PRIMARY KEY (`ventas_id`,`productos_id`),
  KEY `fk_ventas_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_ventas_has_productos_ventas1_idx` (`ventas_id`),
  CONSTRAINT `fk_ventas_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_ventas_has_productos_ventas1` FOREIGN KEY (`ventas_id`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_productos`
--

LOCK TABLES `ventas_productos` WRITE;
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
INSERT INTO `ventas_productos` VALUES (1,1),(5,1),(6,1),(11,1),(15,1),(16,1),(2,2),(4,2),(7,2),(9,2),(12,2),(14,2),(18,2),(3,3),(13,3),(19,3),(20,3),(8,4),(10,5),(17,5);
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ventras_forma2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-26 12:50:34
