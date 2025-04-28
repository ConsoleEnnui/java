CREATE DATABASE  IF NOT EXISTS `almacen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `almacen`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: almacen
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `id_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `tipo_movimiento` enum('entrada','salida') NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_movimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `almacen_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
INSERT INTO `almacen` VALUES (1,1,'entrada',10,'2024-10-11'),(2,2,'entrada',50,'2024-09-26'),(3,3,'entrada',30,'2024-08-21'),(4,4,'salida',5,'2022-08-21'),(5,5,'entrada',30,'2023-08-21');
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Abarrotes'),(2,'Higiene'),(3,'Lácteos y Proteínas'),(4,'Panadería'),(5,'Alimentos secos'),(6,'Bebidas'),(7,'Dulces'),(8,'Proteinas'),(9,'Alimentos para mascotas'),(10,'sin datos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `nombre` (`nombre`,`telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'11111111-1','Juan Martínez','Calle de la Herramienta 123','1234567890'),(2,'22222222-2','l','villa Alemana','1111111'),(3,'33333333-3','Luis Torres','Plaza del Ferretero 789','9567744553'),(4,'44444444-4','Carla Mendoza','Calle Principal 101','2233445566'),(5,'55555555-5','Fernando Ruiz','Calle de la Madera 202','3344556677'),(6,'66666666-6','Sofía Ramírez','Av. de la Construcción 303','4455667788'),(7,'77777777-7','Ricardo Gómez','Calle del Suministro 404','5566778899'),(8,'88888888-8','María Pérez','Avenida de los Ferreteros 505','6677889900'),(9,'99999999-9','Diego Castro','Calle de la Seguridad 606','7788990011'),(10,'10101010-1','Lucía Fernández','Plaza del Hardware 707','8899001122'),(11,'11121314-2','Javier Ortega','Calle de los Accesorios 808','9900112233'),(12,'12131415-3','Valeria Sánchez','Calle del Proveedor 909','1011121314'),(13,'13141516-4','Alberto Herrera','Av. del Taller 111','1213141516'),(14,'14151617-5','Claudia Morales','Calle de la Reparación 222','1314151617'),(15,'15161718-6','Gustavo Álvarez','Plaza de la Herramienta 333','1415161718'),(16,'16171819-7','Natalia Soto','Calle del Servicio 444','1516171819'),(17,'17181920-8','Roberto Castro','Avenida del Ferretero 555','1617181920'),(18,'18192021-9','Patricia Vargas','Calle del Almacenaje 666','1718192021'),(19,'19202122-1','Samuel Lima','Calle del Taller 777','1819202122'),(20,'20212223-2','Teresa Córdova','Avenida de la Ferretería 888','1920212223'),(21,'21222324-3','Elena Navarro','Pasaje de la Soldadura 999','2021222324'),(22,'12345678-9','Lulu','6 y media poniente 582# 5','948763064'),(23,'181769297','jose francisco','6 y media poniente','948763064'),(24,'88888888-2','luis parra','villa Alemana','1111111');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_detalle_venta`),
  KEY `id_venta` (`id_venta`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,1,1,2,200.00),(2,1,2,1,1100.00),(3,2,3,1,1200.00),(4,3,4,2,850.00),(5,4,5,1,2200.00),(6,5,6,3,1500.00),(7,6,7,5,350.00),(8,7,8,2,1250.00),(9,7,9,1,600.00),(10,8,10,1,950.00),(11,9,11,2,2900.00),(12,10,12,1,1300.00),(13,11,13,3,2900.00),(14,12,14,1,450.00),(15,13,15,2,2200.00),(16,14,16,3,1250.00),(17,15,17,2,2500.00),(18,16,18,1,1600.00),(19,17,19,1,350.00),(20,18,20,3,2900.00),(21,19,16,1,2200.00),(22,20,17,1,2100.00);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `existencia` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Pan corriente','Pan amasado tradicional chileno',200.00,393,4,'2024-10-10'),(2,'Leche entera','Leche líquida entera 1L',1100.00,93,3,'2024-10-09'),(3,'Arroz','Bolsa de arroz grano largo 1kg',1200.00,79,3,'2024-10-08'),(4,'Fideos','Paquete de fideos espagueti 400g',850.00,120,3,'2024-10-07'),(5,'Aceite vegetal','Aceite 1 litro marca local',2200.00,60,3,'2024-10-06'),(6,'Aceite vegetal','Aceite 1 litro marca local',2200.00,60,3,'2024-10-06'),(7,'Jugo en sobre','Sobre de jugo en polvo sabor naranja',350.00,146,6,'2024-10-04'),(8,'Azúcar','Azúcar granulada 1kg',1250.00,90,3,'2024-10-03'),(9,'Sal','Sal de mesa 1kg',600.00,99,3,'2024-10-02'),(10,'Mayonesa','Mayonesa sachet 250g',950.00,79,5,'2024-10-01'),(11,'Café instantáneo','Frasco café 170g',2800.00,38,5,'2024-09-30'),(12,'Detergente líquido','Detergente para ropa 3L',2900.00,38,2,'2024-09-29'),(13,'Jabón en barra','Jabón de baño neutro',450.00,186,2,'2024-09-28'),(14,'Papel higiénico','Pack de 4 rollos papel higiénico',1800.00,100,2,'2024-09-27'),(15,'Cereal','Caja de cereal infantil 250g',2200.00,40,3,'2024-09-26'),(16,'Queso laminado','Queso laminado 200g',2500.00,26,3,'2024-09-25'),(17,'Jamón','Jamón pierna 250g',2100.00,35,3,'2024-09-24'),(18,'Huevos','Maple de 12 huevos',2800.00,50,3,'2024-09-23'),(19,'Mantequilla','Mantequilla con sal 125g',1600.00,45,3,'2024-09-22'),(20,'Galletas','Paquete galletas surtidas 300g',1300.00,9,5,'2024-09-21'),(21,'porotos','porotos bolsa pequenia 1kg',1200.00,300,8,'2025-04-04'),(23,'galleta','galleta triton chocolate 200 grms',1350.00,42,1,'2025-04-21'),(24,'petazetas','acidos que revientan en la boca',900.00,96,7,'2025-04-21'),(25,'Queso Procesados','Queso Procesado Colun Trozo 1/4 k',2000.00,40,1,'2025-04-21'),(26,'Queso laminado','Queso Procesado Colun laminado',4500.00,26,1,'2025-04-21'),(27,'food cann','saco comida ACANA  3KG',5000.00,48,9,'2025-04-24'),(28,'producto 0','este producto no tiene stock',0.00,0,1,'2025-04-25'),(29,'','',0.00,0,1,'2025-04-25');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportesventa`
--

DROP TABLE IF EXISTS `reportesventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportesventa` (
  `id_reportev` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `valor_venta` decimal(10,2) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_reportev`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `reportesventa_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `reportesventa_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportesventa`
--

LOCK TABLES `reportesventa` WRITE;
/*!40000 ALTER TABLE `reportesventa` DISABLE KEYS */;
INSERT INTO `reportesventa` VALUES (3,5,'Diego','Cajas',5,'Fernando Ruiz',450.00,'22:23:21','22:23:39','2025-04-22'),(4,6,'Valentina','Ventas',12,'Valeria Sánchez',850.00,'01:04:53','01:05:20','2025-04-23'),(5,2,'María','Ventas',11,'Javier Ortega',3350.00,'16:33:55','16:36:28','2025-04-23'),(6,3,'Luis','Cajas',5,'Fernando Ruiz',2900.00,'14:47:30','14:47:56','2025-04-24'),(7,10,'Andrés','Cajas',22,'Lulu',1100.00,'19:07:56','19:08:42','2025-04-24'),(8,10,'Andrés','Cajas',23,'jose francisco',5000.00,'19:39:32','19:39:52','2025-04-24'),(9,9,'Catalina','Ventas',23,'jose francisco',2700.00,'19:53:44','19:54:12','2025-04-24'),(10,9,'Catalina','Ventas',23,'jose francisco',2900.00,'19:56:22','19:56:35','2025-04-24'),(11,9,'Catalina','Ventas',23,'jose francisco',2900.00,'21:05:47','21:05:59','2025-04-24'),(12,6,'Valentina','Ventas',23,'jose francisco',1350.00,'21:12:22','21:12:34','2025-04-24'),(13,4,'Sofía','Ventas',23,'jose francisco',1100.00,'21:15:44','21:15:59','2025-04-24'),(14,4,'Sofía','Ventas',23,'jose francisco',1350.00,'21:31:37','21:31:49','2025-04-24'),(15,6,'Valentina','Ventas',23,'jose francisco',1350.00,'21:34:00','21:34:11','2025-04-24'),(16,9,'Catalina','Ventas',23,'jose francisco',200.00,'21:40:07','21:40:18','2025-04-24'),(17,9,'Catalina','Ventas',23,'jose francisco',1350.00,'21:43:32','21:43:44','2025-04-24'),(18,2,'María','Ventas',23,'jose francisco',1500.00,'21:50:57','21:51:15','2025-04-24'),(19,6,'Valentina','Ventas',23,'jose francisco',2000.00,'22:29:39','22:29:54','2025-04-24'),(20,2,'María','Ventas',22,'Lulu',5900.00,'22:31:32','22:32:01','2025-04-24'),(21,4,'Sofía','Ventas',22,'Lulu',2900.00,'22:33:55','22:34:06','2025-04-24'),(22,8,'Santiago','Contabilidad',22,'Lulu',2700.00,'22:35:50','22:36:00','2025-04-24'),(23,10,'Andrés','Cajas',1,'Juan Martínez',900.00,'22:39:43','22:39:58','2025-04-24'),(24,3,'Luis','Cajas',23,'jose francisco',1350.00,'00:07:17','00:07:36','2025-04-25'),(25,2,'María','Ventas',1,'Juan Martínez',1350.00,'00:16:41','00:16:52','2025-04-25'),(26,2,'María','Ventas',23,'jose francisco',2900.00,'00:26:55','00:27:11','2025-04-25'),(27,5,'Diego','Cajas',7,'Ricardo Gómez',2000.00,'00:30:09','00:30:29','2025-04-25'),(28,6,'Valentina','Ventas',1,'Juan Martínez',600.00,'10:45:46','10:46:23','2025-04-25'),(29,2,'María','Ventas',7,'Ricardo Gómez',950.00,'11:42:25','11:43:18','2025-04-25'),(30,7,'Fernando','Cajas',13,'Alberto Herrera',2900.00,'11:27:21','11:55:22','2025-04-25'),(31,3,'Luis','Cajas',3,'Luis Torres',900.00,'11:57:59','11:58:22','2025-04-25'),(32,4,'Sofía','Ventas',1,'Juan Martínez',200.00,'12:13:56','12:14:06','2025-04-25'),(33,6,'Valentina','Ventas',1,'Juan Martínez',350.00,'12:16:38','12:17:03','2025-04-25'),(34,10,'Andrés','Cajas',1,'Juan Martínez',2600.00,'12:19:09','12:19:22','2025-04-25'),(35,5,'Diego','Cajas',3,'Luis Torres',350.00,'12:28:22','12:29:46','2025-04-25'),(36,4,'Sofía','Ventas',9,'Diego Castro',2800.00,'12:33:54','12:34:12','2025-04-25'),(37,12,'Mauricio','Cajas',9,'Diego Castro',2800.00,'12:40:40','12:41:46','2025-04-25'),(38,7,'Fernando','Cajas',3,'Luis Torres',900.00,'12:51:23','12:52:03','2025-04-25'),(39,10,'Andrés','Cajas',1,'Juan Martínez',2000.00,'12:54:31','12:55:00','2025-04-25'),(40,6,'Valentina','Ventas',23,'jose francisco',450.00,'15:01:14','15:01:42','2025-04-25'),(41,6,'Valentina','Ventas',23,'jose francisco',450.00,'15:02:10','15:02:35','2025-04-25'),(42,7,'Fernando','Cajas',23,'jose francisco',450.00,'15:03:48','15:04:29','2025-04-25'),(43,5,'Diego','Cajas',1,'Juan Martínez',200.00,'15:05:43','15:06:01','2025-04-25');
/*!40000 ALTER TABLE `reportesventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `puesto` varchar(80) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin1','abc123','Carlos','Gómez','Administración','Propietario'),(2,'vendedor1','venderBien2','María','Fernández','Ventas','Vendedor'),(3,'cajero1','cajero1234','Luis','Pérez','Cajas','Cajero'),(4,'vendedor2','ventaFeliz2','Sofía','Hernández','Ventas','Vendedor'),(5,'cajero2','claveSegura3','Diego','Torres','Cajas','Cajero'),(6,'vendedor3','vendeRápido5','Valentina','Sánchez','Ventas','Vendedor'),(7,'cajero3','cajeroFácil6','Fernando','Jiménez','Cajas','Cajero'),(8,'contador2','contabilidad8','Santiago','Mendoza','Contabilidad','Contador'),(9,'vendedor4','venderSiempre9','Catalina','Rojas','Ventas','Vendedor'),(10,'cajero4','cajaCerrada0','Andrés','Castro','Cajas','Cajero'),(11,'vendedor5','vendedorFácil3','Diana','Vega','Ventas','Vendedor'),(12,'cajero5','cajeroRápido4','Mauricio','Patiño','Cajas','Cajero');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total_venta` decimal(10,2) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `fk_usuario` (`id_usuario`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,'2024-10-15',1500.00,NULL),(2,2,'2024-10-13',1200.00,NULL),(3,3,'2024-10-14',1700.00,NULL),(4,4,'2024-10-13',2200.00,NULL),(5,5,'2024-10-13',4500.00,NULL),(6,6,'2024-10-13',1750.00,NULL),(7,7,'2024-10-13',3100.00,NULL),(8,8,'2024-10-13',950.00,NULL),(9,9,'2024-10-13',5800.00,NULL),(10,10,'2024-10-13',1300.00,NULL),(11,11,'2024-10-13',8700.00,NULL),(12,12,'2024-10-13',450.00,NULL),(13,13,'2024-10-13',4400.00,NULL),(14,14,'2024-10-13',3750.00,NULL),(15,15,'2024-10-13',5000.00,NULL),(16,16,'2024-10-13',1600.00,NULL),(17,17,'2024-10-13',350.00,NULL),(18,18,'2024-10-13',8700.00,NULL),(19,19,'2024-10-13',2200.00,NULL),(20,20,'2024-10-13',2100.00,NULL);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'almacen'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 16:13:42
