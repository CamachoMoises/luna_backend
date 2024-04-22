-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: luna_db
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Token',6,'add_token'),(22,'Can change Token',6,'change_token'),(23,'Can delete Token',6,'delete_token'),(24,'Can view Token',6,'view_token'),(25,'Can add Token',7,'add_tokenproxy'),(26,'Can change Token',7,'change_tokenproxy'),(27,'Can delete Token',7,'delete_tokenproxy'),(28,'Can view Token',7,'view_tokenproxy'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add profile',9,'add_profile'),(34,'Can change profile',9,'change_profile'),(35,'Can delete profile',9,'delete_profile'),(36,'Can view profile',9,'view_profile'),(37,'Can add banco',10,'add_banco'),(38,'Can change banco',10,'change_banco'),(39,'Can delete banco',10,'delete_banco'),(40,'Can view banco',10,'view_banco'),(41,'Can add caja',11,'add_caja'),(42,'Can change caja',11,'change_caja'),(43,'Can delete caja',11,'delete_caja'),(44,'Can view caja',11,'view_caja'),(45,'Can add categoria',12,'add_categoria'),(46,'Can change categoria',12,'change_categoria'),(47,'Can delete categoria',12,'delete_categoria'),(48,'Can view categoria',12,'view_categoria'),(49,'Can add ciudad',13,'add_ciudad'),(50,'Can change ciudad',13,'change_ciudad'),(51,'Can delete ciudad',13,'delete_ciudad'),(52,'Can view ciudad',13,'view_ciudad'),(53,'Can add cliente',14,'add_cliente'),(54,'Can change cliente',14,'change_cliente'),(55,'Can delete cliente',14,'delete_cliente'),(56,'Can view cliente',14,'view_cliente'),(57,'Can add cliente contacto',15,'add_clientecontacto'),(58,'Can change cliente contacto',15,'change_clientecontacto'),(59,'Can delete cliente contacto',15,'delete_clientecontacto'),(60,'Can view cliente contacto',15,'view_clientecontacto'),(61,'Can add cliente direcciones',16,'add_clientedirecciones'),(62,'Can change cliente direcciones',16,'change_clientedirecciones'),(63,'Can delete cliente direcciones',16,'delete_clientedirecciones'),(64,'Can view cliente direcciones',16,'view_clientedirecciones'),(65,'Can add cliente red social',17,'add_clienteredsocial'),(66,'Can change cliente red social',17,'change_clienteredsocial'),(67,'Can delete cliente red social',17,'delete_clienteredsocial'),(68,'Can view cliente red social',17,'view_clienteredsocial'),(69,'Can add cliente telefono',18,'add_clientetelefono'),(70,'Can change cliente telefono',18,'change_clientetelefono'),(71,'Can delete cliente telefono',18,'delete_clientetelefono'),(72,'Can view cliente telefono',18,'view_clientetelefono'),(73,'Can add cotizacion',19,'add_cotizacion'),(74,'Can change cotizacion',19,'change_cotizacion'),(75,'Can delete cotizacion',19,'delete_cotizacion'),(76,'Can view cotizacion',19,'view_cotizacion'),(77,'Can add cotizacion detalle',20,'add_cotizaciondetalle'),(78,'Can change cotizacion detalle',20,'change_cotizaciondetalle'),(79,'Can delete cotizacion detalle',20,'delete_cotizaciondetalle'),(80,'Can view cotizacion detalle',20,'view_cotizaciondetalle'),(81,'Can add cotizacion impuesto',21,'add_cotizacionimpuesto'),(82,'Can change cotizacion impuesto',21,'change_cotizacionimpuesto'),(83,'Can delete cotizacion impuesto',21,'delete_cotizacionimpuesto'),(84,'Can view cotizacion impuesto',21,'view_cotizacionimpuesto'),(85,'Can add cotizacion status',22,'add_cotizacionstatus'),(86,'Can change cotizacion status',22,'change_cotizacionstatus'),(87,'Can delete cotizacion status',22,'delete_cotizacionstatus'),(88,'Can view cotizacion status',22,'view_cotizacionstatus'),(89,'Can add cuenta',23,'add_cuenta'),(90,'Can change cuenta',23,'change_cuenta'),(91,'Can delete cuenta',23,'delete_cuenta'),(92,'Can view cuenta',23,'view_cuenta'),(93,'Can add cupon',24,'add_cupon'),(94,'Can change cupon',24,'change_cupon'),(95,'Can delete cupon',24,'delete_cupon'),(96,'Can view cupon',24,'view_cupon'),(97,'Can add devolucion',25,'add_devolucion'),(98,'Can change devolucion',25,'change_devolucion'),(99,'Can delete devolucion',25,'delete_devolucion'),(100,'Can view devolucion',25,'view_devolucion'),(101,'Can add devolucion detalle',26,'add_devoluciondetalle'),(102,'Can change devolucion detalle',26,'change_devoluciondetalle'),(103,'Can delete devolucion detalle',26,'delete_devoluciondetalle'),(104,'Can view devolucion detalle',26,'view_devoluciondetalle'),(105,'Can add devolucion impuestos',27,'add_devolucionimpuestos'),(106,'Can change devolucion impuestos',27,'change_devolucionimpuestos'),(107,'Can delete devolucion impuestos',27,'delete_devolucionimpuestos'),(108,'Can view devolucion impuestos',27,'view_devolucionimpuestos'),(109,'Can add devolucion saldo afavor',28,'add_devolucionsaldoafavor'),(110,'Can change devolucion saldo afavor',28,'change_devolucionsaldoafavor'),(111,'Can delete devolucion saldo afavor',28,'delete_devolucionsaldoafavor'),(112,'Can view devolucion saldo afavor',28,'view_devolucionsaldoafavor'),(113,'Can add estado',29,'add_estado'),(114,'Can change estado',29,'change_estado'),(115,'Can delete estado',29,'delete_estado'),(116,'Can view estado',29,'view_estado'),(117,'Can add fabricante',30,'add_fabricante'),(118,'Can change fabricante',30,'change_fabricante'),(119,'Can delete fabricante',30,'delete_fabricante'),(120,'Can view fabricante',30,'view_fabricante'),(121,'Can add factura',31,'add_factura'),(122,'Can change factura',31,'change_factura'),(123,'Can delete factura',31,'delete_factura'),(124,'Can view factura',31,'view_factura'),(125,'Can add factura abono',32,'add_facturaabono'),(126,'Can change factura abono',32,'change_facturaabono'),(127,'Can delete factura abono',32,'delete_facturaabono'),(128,'Can view factura abono',32,'view_facturaabono'),(129,'Can add factura detalle',33,'add_facturadetalle'),(130,'Can change factura detalle',33,'change_facturadetalle'),(131,'Can delete factura detalle',33,'delete_facturadetalle'),(132,'Can view factura detalle',33,'view_facturadetalle'),(133,'Can add factura forma pago',34,'add_facturaformapago'),(134,'Can change factura forma pago',34,'change_facturaformapago'),(135,'Can delete factura forma pago',34,'delete_facturaformapago'),(136,'Can view factura forma pago',34,'view_facturaformapago'),(137,'Can add factura impuesto',35,'add_facturaimpuesto'),(138,'Can change factura impuesto',35,'change_facturaimpuesto'),(139,'Can delete factura impuesto',35,'delete_facturaimpuesto'),(140,'Can view factura impuesto',35,'view_facturaimpuesto'),(141,'Can add factura pago saldo afavor',36,'add_facturapagosaldoafavor'),(142,'Can change factura pago saldo afavor',36,'change_facturapagosaldoafavor'),(143,'Can delete factura pago saldo afavor',36,'delete_facturapagosaldoafavor'),(144,'Can view factura pago saldo afavor',36,'view_facturapagosaldoafavor'),(145,'Can add forma pago',37,'add_formapago'),(146,'Can change forma pago',37,'change_formapago'),(147,'Can delete forma pago',37,'delete_formapago'),(148,'Can view forma pago',37,'view_formapago'),(149,'Can add moneda',38,'add_moneda'),(150,'Can change moneda',38,'change_moneda'),(151,'Can delete moneda',38,'delete_moneda'),(152,'Can view moneda',38,'view_moneda'),(153,'Can add movimiento dia',39,'add_movimientodia'),(154,'Can change movimiento dia',39,'change_movimientodia'),(155,'Can delete movimiento dia',39,'delete_movimientodia'),(156,'Can view movimiento dia',39,'view_movimientodia'),(157,'Can add origen compra',40,'add_origencompra'),(158,'Can change origen compra',40,'change_origencompra'),(159,'Can delete origen compra',40,'delete_origencompra'),(160,'Can view origen compra',40,'view_origencompra'),(161,'Can add pais',41,'add_pais'),(162,'Can change pais',41,'change_pais'),(163,'Can delete pais',41,'delete_pais'),(164,'Can view pais',41,'view_pais'),(165,'Can add parametro',42,'add_parametro'),(166,'Can change parametro',42,'change_parametro'),(167,'Can delete parametro',42,'delete_parametro'),(168,'Can view parametro',42,'view_parametro'),(169,'Can add pedido',43,'add_pedido'),(170,'Can change pedido',43,'change_pedido'),(171,'Can delete pedido',43,'delete_pedido'),(172,'Can view pedido',43,'view_pedido'),(173,'Can add pedido detalle',44,'add_pedidodetalle'),(174,'Can change pedido detalle',44,'change_pedidodetalle'),(175,'Can delete pedido detalle',44,'delete_pedidodetalle'),(176,'Can view pedido detalle',44,'view_pedidodetalle'),(177,'Can add pedido impuesto',45,'add_pedidoimpuesto'),(178,'Can change pedido impuesto',45,'change_pedidoimpuesto'),(179,'Can delete pedido impuesto',45,'delete_pedidoimpuesto'),(180,'Can view pedido impuesto',45,'view_pedidoimpuesto'),(181,'Can add pedido status',46,'add_pedidostatus'),(182,'Can change pedido status',46,'change_pedidostatus'),(183,'Can delete pedido status',46,'delete_pedidostatus'),(184,'Can view pedido status',46,'view_pedidostatus'),(185,'Can add producto historico sucursal',47,'add_productohistoricosucursal'),(186,'Can change producto historico sucursal',47,'change_productohistoricosucursal'),(187,'Can delete producto historico sucursal',47,'delete_productohistoricosucursal'),(188,'Can view producto historico sucursal',47,'view_productohistoricosucursal'),(189,'Can add productos',48,'add_productos'),(190,'Can change productos',48,'change_productos'),(191,'Can delete productos',48,'delete_productos'),(192,'Can view productos',48,'view_productos'),(193,'Can add producto sucursal',49,'add_productosucursal'),(194,'Can change producto sucursal',49,'change_productosucursal'),(195,'Can delete producto sucursal',49,'delete_productosucursal'),(196,'Can view producto sucursal',49,'view_productosucursal'),(197,'Can add profesion',50,'add_profesion'),(198,'Can change profesion',50,'change_profesion'),(199,'Can delete profesion',50,'delete_profesion'),(200,'Can view profesion',50,'view_profesion'),(201,'Can add proveedor',51,'add_proveedor'),(202,'Can change proveedor',51,'change_proveedor'),(203,'Can delete proveedor',51,'delete_proveedor'),(204,'Can view proveedor',51,'view_proveedor'),(205,'Can add saldo afavor',52,'add_saldoafavor'),(206,'Can change saldo afavor',52,'change_saldoafavor'),(207,'Can delete saldo afavor',52,'delete_saldoafavor'),(208,'Can view saldo afavor',52,'view_saldoafavor'),(209,'Can add servicios',53,'add_servicios'),(210,'Can change servicios',53,'change_servicios'),(211,'Can delete servicios',53,'delete_servicios'),(212,'Can view servicios',53,'view_servicios'),(213,'Can add sub categoria',54,'add_subcategoria'),(214,'Can change sub categoria',54,'change_subcategoria'),(215,'Can delete sub categoria',54,'delete_subcategoria'),(216,'Can view sub categoria',54,'view_subcategoria'),(217,'Can add sucursal',55,'add_sucursal'),(218,'Can change sucursal',55,'change_sucursal'),(219,'Can delete sucursal',55,'delete_sucursal'),(220,'Can view sucursal',55,'view_sucursal'),(221,'Can add tasa dia',56,'add_tasadia'),(222,'Can change tasa dia',56,'change_tasadia'),(223,'Can delete tasa dia',56,'delete_tasadia'),(224,'Can view tasa dia',56,'view_tasadia'),(225,'Can add tipo cliente',57,'add_tipocliente'),(226,'Can change tipo cliente',57,'change_tipocliente'),(227,'Can delete tipo cliente',57,'delete_tipocliente'),(228,'Can view tipo cliente',57,'view_tipocliente'),(229,'Can add tipo documento',58,'add_tipodocumento'),(230,'Can change tipo documento',58,'change_tipodocumento'),(231,'Can delete tipo documento',58,'delete_tipodocumento'),(232,'Can view tipo documento',58,'view_tipodocumento'),(233,'Can add tipo impuesto',59,'add_tipoimpuesto'),(234,'Can change tipo impuesto',59,'change_tipoimpuesto'),(235,'Can delete tipo impuesto',59,'delete_tipoimpuesto'),(236,'Can view tipo impuesto',59,'view_tipoimpuesto'),(237,'Can add tipo red social',60,'add_tiporedsocial'),(238,'Can change tipo red social',60,'change_tiporedsocial'),(239,'Can delete tipo red social',60,'delete_tiporedsocial'),(240,'Can view tipo red social',60,'view_tiporedsocial'),(241,'Can add tipo telefono',61,'add_tipotelefono'),(242,'Can change tipo telefono',61,'change_tipotelefono'),(243,'Can delete tipo telefono',61,'delete_tipotelefono'),(244,'Can view tipo telefono',61,'view_tipotelefono'),(245,'Can add unidad negocio',62,'add_unidadnegocio'),(246,'Can change unidad negocio',62,'change_unidadnegocio'),(247,'Can delete unidad negocio',62,'delete_unidadnegocio'),(248,'Can view unidad negocio',62,'view_unidadnegocio');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `pais_id` int NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_banco_pais1_idx` (`pais_id`),
  CONSTRAINT `fk_banco_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `nombre_equipo` varchar(150) NOT NULL,
  `serial_impresora` varchar(25) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL,
  `descripcion` varchar(95) NOT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `codigo` varchar(5) NOT NULL,
  `modulo` varchar(5) NOT NULL DEFAULT 'PROD',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Accesorios','accesorios','02','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(2,'Baños','banos','11','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(3,'Cocina','cocina','10','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(4,'Coronas y Guirnaldas','coronas-y-guirnaldas','23','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(5,'Figuras','figuras','03','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(6,'Flores y Ramas','flores-y-ramas','09','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(7,'Iluminación','iluminacion','13','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(8,'Mesas','mesas','07','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(9,'Mobiliario','mobiliario','05','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(10,'Papelería','papeleria','06','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(11,'Plantas','plantas','08','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(12,'Tapetes y Alfombras','tapetes-y-alfombras','16','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(17,'Árboles y Luces','arboles-y-luces','04','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(18,'Bambalinas','bambalinas','01','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(19,'Lencería','lenceria','12','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(21,'Juguetes','juguetes','17','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(27,'Gastronomía','gastronomia','25','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(28,'Velas y Fragancias','velas-y-fragancias','24','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(29,'Uso Residencial','uso-residencial','26','PROD',0,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(30,'Hoteles y Comercio','hoteles-y-comercio','27','PROD',0,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(31,'Murales','murales','28','PROD',0,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(32,'Diseñadores','diseñadores','29','PROD',0,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(33,'Fibras Naturales','fibras-naturales','30','PROD',0,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(34,'Bar','bar','31','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(35,'Papel Tapiz','papel-tapiz','32','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(36,'Servicio de Decoración','servicio-de-decoración','01','SERV',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(37,'Alquiler','alquiler','02','SERV',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(38,'Custodia','custodia','03','SERV',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(39,'Servicio de Transporte','servicio-de-transporte','04','SERV',1,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(40,'Delivery','delivery','06','SERV',0,'2024-04-18 13:39:18','2024-04-18 13:39:18'),(41,'Flockeo','flockeo','33','PROD',1,'2024-04-18 13:39:18','2024-04-18 13:39:18');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id` int NOT NULL,
  `estado_id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `capital` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ciudad_estado1_idx` (`estado_id`),
  CONSTRAINT `fk_ciudad_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL,
  `tipo_cliente_id` int NOT NULL,
  `tipo_documento_id` int NOT NULL,
  `pais_id` int NOT NULL,
  `estado_id` int NOT NULL,
  `ciudad_id` int NOT NULL,
  `profesion_id` int NOT NULL,
  `numero_documento` int NOT NULL,
  `club_joy` tinyint(1) DEFAULT '0',
  `correo` varchar(90) DEFAULT NULL,
  `descuento` float DEFAULT '0',
  `nombre_comercial` varchar(75) DEFAULT NULL,
  `razon_social` varchar(75) NOT NULL,
  `telefono_principal` varchar(45) DEFAULT NULL,
  `observacion` varchar(45) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `zona` varchar(50) DEFAULT NULL,
  `agente_retencion` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_tipo_documento1_idx` (`tipo_documento_id`),
  KEY `fk_cliente_tipo_cliente1_idx` (`tipo_cliente_id`),
  KEY `fk_cliente_estado1_idx` (`estado_id`),
  KEY `fk_cliente_ciudad1_idx` (`ciudad_id`),
  KEY `fk_cliente_pais1_idx` (`pais_id`),
  KEY `fk_cliente_profesion1_idx` (`profesion_id`),
  CONSTRAINT `fk_cliente_ciudad1` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_profesion1` FOREIGN KEY (`profesion_id`) REFERENCES `profesion` (`id`),
  CONSTRAINT `fk_cliente_tipo_cliente1` FOREIGN KEY (`tipo_cliente_id`) REFERENCES `tipo_cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_tipo_documento1` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_contacto`
--

DROP TABLE IF EXISTS `cliente_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `numero_documento` varchar(45) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_contacto_tipo_documento1_idx` (`tipo_documento_id`),
  KEY `fk_cliente_contacto_cliente1_idx` (`cliente_id`),
  CONSTRAINT `fk_cliente_contacto_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_cliente_contacto_tipo_documento1` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_contacto`
--

LOCK TABLES `cliente_contacto` WRITE;
/*!40000 ALTER TABLE `cliente_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_direcciones`
--

DROP TABLE IF EXISTS `cliente_direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_direcciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `ciudad_id` int NOT NULL,
  `estado_id` int NOT NULL,
  `pais_id` int NOT NULL,
  `zona` varchar(150) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_direcciones_ciudad1_idx` (`ciudad_id`),
  KEY `fk_cliente_direcciones_estado1_idx` (`estado_id`),
  KEY `fk_cliente_direcciones_pais1_idx` (`pais_id`),
  CONSTRAINT `fk_cliente_direcciones_ciudad1` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `fk_cliente_direcciones_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  CONSTRAINT `fk_cliente_direcciones_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_direcciones`
--

LOCK TABLES `cliente_direcciones` WRITE;
/*!40000 ALTER TABLE `cliente_direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_red_social`
--

DROP TABLE IF EXISTS `cliente_red_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_red_social` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `tipo_red_social_id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuario_red_social` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_red_social_cliente1_idx` (`cliente_id`),
  KEY `fk_cliente_red_social_tipo_red_social1_idx` (`tipo_red_social_id`),
  CONSTRAINT `fk_cliente_red_social_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_red_social_tipo_red_social1` FOREIGN KEY (`tipo_red_social_id`) REFERENCES `tipo_red_social` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_red_social`
--

LOCK TABLES `cliente_red_social` WRITE;
/*!40000 ALTER TABLE `cliente_red_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_red_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_telefono`
--

DROP TABLE IF EXISTS `cliente_telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_telefono` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `tipo_telefono_id` int NOT NULL,
  `numero` varchar(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_telefono_cliente1_idx` (`cliente_id`),
  KEY `fk_cliente_telefono_tipo_telefono1_idx` (`tipo_telefono_id`),
  CONSTRAINT `fk_cliente_telefono_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_telefono_tipo_telefono1` FOREIGN KEY (`tipo_telefono_id`) REFERENCES `tipo_telefono` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_telefono`
--

LOCK TABLES `cliente_telefono` WRITE;
/*!40000 ALTER TABLE `cliente_telefono` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `cotizacion_status_id` int NOT NULL,
  `tasa_dia_id` int NOT NULL,
  `nombre` text,
  `observacion` varchar(500) DEFAULT NULL,
  `costo_total` float DEFAULT '0',
  `precio_total` float DEFAULT '0',
  `descuento` float DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_cotizacion_cliente1_idx` (`cliente_id`),
  KEY `fk_cotizacion_cotizacion_status1_idx` (`cotizacion_status_id`),
  KEY `fk_cotizacion_tasa_dia1_idx` (`tasa_dia_id`),
  CONSTRAINT `fk_cotizacion_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_cotizacion_cotizacion_status1` FOREIGN KEY (`cotizacion_status_id`) REFERENCES `cotizacion_status` (`id`),
  CONSTRAINT `fk_cotizacion_tasa_dia1` FOREIGN KEY (`tasa_dia_id`) REFERENCES `tasa_dia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_detalle`
--

DROP TABLE IF EXISTS `cotizacion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cotizacion_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `productos_id` int DEFAULT NULL,
  `productos_sku` varchar(12) DEFAULT NULL,
  `servicios_sku` varchar(12) DEFAULT NULL,
  `servicios_id` int DEFAULT NULL,
  `cantidad` int DEFAULT '0',
  `precio` float DEFAULT '0',
  `precio_descuento` float DEFAULT '0',
  `descuento` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_cotizacion_detalle_cotizacion1_idx` (`cotizacion_id`),
  KEY `fk_cotizacion_detalle_Productos1_idx` (`productos_id`,`productos_sku`),
  KEY `fk_cotizacion_detalle_servicios1_idx` (`servicios_id`,`servicios_sku`),
  KEY `fk_cotizacion_detalle_cliente1_idx` (`cliente_id`),
  CONSTRAINT `fk_cotizacion_detalle_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cotizacion_detalle_cotizacion1` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cotizacion_detalle_Productos1` FOREIGN KEY (`productos_id`, `productos_sku`) REFERENCES `productos` (`id`, `sku`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cotizacion_detalle_servicios1` FOREIGN KEY (`servicios_id`, `servicios_sku`) REFERENCES `servicios` (`id`, `sku`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_detalle`
--

LOCK TABLES `cotizacion_detalle` WRITE;
/*!40000 ALTER TABLE `cotizacion_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_impuesto`
--

DROP TABLE IF EXISTS `cotizacion_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion_impuesto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cotizacion_id` int NOT NULL,
  `tipo_impuesto_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cotizacion_impuesto_cotizacion1_idx` (`cotizacion_id`),
  KEY `fk_cotizacion_impuesto_tipo_impuesto1_idx` (`tipo_impuesto_id`),
  CONSTRAINT `fk_cotizacion_impuesto_cotizacion1` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacion` (`id`),
  CONSTRAINT `fk_cotizacion_impuesto_tipo_impuesto1` FOREIGN KEY (`tipo_impuesto_id`) REFERENCES `tipo_impuesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_impuesto`
--

LOCK TABLES `cotizacion_impuesto` WRITE;
/*!40000 ALTER TABLE `cotizacion_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_status`
--

DROP TABLE IF EXISTS `cotizacion_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion_status` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_status`
--

LOCK TABLES `cotizacion_status` WRITE;
/*!40000 ALTER TABLE `cotizacion_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta` (
  `id` int NOT NULL,
  `banco_id` int NOT NULL,
  `moneda_id` int NOT NULL,
  `tipo_cuenta` tinyint(1) NOT NULL,
  `numero_cuenta` varchar(45) DEFAULT NULL,
  `propietario` varchar(150) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_cuenta_banco1_idx` (`banco_id`),
  KEY `fk_cuenta_moneda1_idx` (`moneda_id`),
  CONSTRAINT `fk_cuenta_banco1` FOREIGN KEY (`banco_id`) REFERENCES `banco` (`id`),
  CONSTRAINT `fk_cuenta_moneda1` FOREIGN KEY (`moneda_id`) REFERENCES `moneda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupon`
--

DROP TABLE IF EXISTS `cupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(25) NOT NULL,
  `cliente_id` int DEFAULT NULL,
  `monto` float DEFAULT '0',
  `porcentaje` float DEFAULT '0',
  `fecha_inicio` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_fin` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_cupon_cliente1_idx` (`cliente_id`),
  CONSTRAINT `fk_cupon_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupon`
--

LOCK TABLES `cupon` WRITE;
/*!40000 ALTER TABLE `cupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `cupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `factura_id` int NOT NULL,
  `caja_id` int NOT NULL,
  `sucursal_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `tipo_devolucion` tinyint(1) DEFAULT NULL,
  `precio` float DEFAULT '0',
  `monto_total` float DEFAULT NULL,
  `codigo` varchar(15) DEFAULT NULL,
  `serial_impresora` varchar(25) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_devolucion_factura1_idx` (`factura_id`),
  KEY `fk_devolucion_caja1_idx` (`caja_id`),
  KEY `fk_devolucion_cliente1_idx` (`cliente_id`),
  KEY `fk_devolucion_sucursal1_idx` (`sucursal_id`),
  CONSTRAINT `fk_devolucion_caja1` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`id`),
  CONSTRAINT `fk_devolucion_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_devolucion_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_devolucion_sucursal1` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion`
--

LOCK TABLES `devolucion` WRITE;
/*!40000 ALTER TABLE `devolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion_detalle`
--

DROP TABLE IF EXISTS `devolucion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `devolucion_id` int DEFAULT NULL,
  `productos_id` int DEFAULT NULL,
  `servicios_id` int DEFAULT NULL,
  `productos_sku` varchar(12) DEFAULT NULL,
  `servicios_sku` varchar(12) DEFAULT NULL,
  `cantidad` int NOT NULL DEFAULT '0',
  `precio` float DEFAULT '0',
  `descuento` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_devolucion_detalle_Productos1_idx` (`productos_id`,`productos_sku`),
  KEY `fk_devolucion_detalle_servicios1_idx` (`servicios_id`,`servicios_sku`),
  KEY `fk_devolucion_detalle_devolucion1_idx` (`devolucion_id`),
  CONSTRAINT `fk_devolucion_detalle_devolucion1` FOREIGN KEY (`devolucion_id`) REFERENCES `devolucion` (`id`),
  CONSTRAINT `fk_devolucion_detalle_Productos1` FOREIGN KEY (`productos_id`, `productos_sku`) REFERENCES `productos` (`id`, `sku`),
  CONSTRAINT `fk_devolucion_detalle_servicios1` FOREIGN KEY (`servicios_id`, `servicios_sku`) REFERENCES `servicios` (`id`, `sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion_detalle`
--

LOCK TABLES `devolucion_detalle` WRITE;
/*!40000 ALTER TABLE `devolucion_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion_impuestos`
--

DROP TABLE IF EXISTS `devolucion_impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion_impuestos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `devolucion_id` int NOT NULL,
  `tipo_impuesto_id` int NOT NULL,
  `monto` float DEFAULT '0',
  `porcentaje` float DEFAULT '0',
  `monto_imponible` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_devolucion_impuestos_devolucion1_idx` (`devolucion_id`),
  KEY `fk_devolucion_impuestos_tipo_impuesto1_idx` (`tipo_impuesto_id`),
  CONSTRAINT `fk_devolucion_impuestos_devolucion1` FOREIGN KEY (`devolucion_id`) REFERENCES `devolucion` (`id`),
  CONSTRAINT `fk_devolucion_impuestos_tipo_impuesto1` FOREIGN KEY (`tipo_impuesto_id`) REFERENCES `tipo_impuesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion_impuestos`
--

LOCK TABLES `devolucion_impuestos` WRITE;
/*!40000 ALTER TABLE `devolucion_impuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion_impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion_saldo_afavor`
--

DROP TABLE IF EXISTS `devolucion_saldo_afavor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion_saldo_afavor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `devolucion_id` int NOT NULL,
  `moneda_id` int NOT NULL,
  `monto` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_devolucion_saldo_afavor_devolucion1_idx` (`devolucion_id`),
  KEY `fk_devolucion_saldo_afavor_moneda1_idx` (`moneda_id`),
  CONSTRAINT `fk_devolucion_saldo_afavor_devolucion1` FOREIGN KEY (`devolucion_id`) REFERENCES `devolucion` (`id`),
  CONSTRAINT `fk_devolucion_saldo_afavor_moneda1` FOREIGN KEY (`moneda_id`) REFERENCES `moneda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion_saldo_afavor`
--

LOCK TABLES `devolucion_saldo_afavor` WRITE;
/*!40000 ALTER TABLE `devolucion_saldo_afavor` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion_saldo_afavor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'api_luna','banco'),(11,'api_luna','caja'),(12,'api_luna','categoria'),(13,'api_luna','ciudad'),(14,'api_luna','cliente'),(15,'api_luna','clientecontacto'),(16,'api_luna','clientedirecciones'),(17,'api_luna','clienteredsocial'),(18,'api_luna','clientetelefono'),(19,'api_luna','cotizacion'),(20,'api_luna','cotizaciondetalle'),(21,'api_luna','cotizacionimpuesto'),(22,'api_luna','cotizacionstatus'),(23,'api_luna','cuenta'),(24,'api_luna','cupon'),(25,'api_luna','devolucion'),(26,'api_luna','devoluciondetalle'),(27,'api_luna','devolucionimpuestos'),(28,'api_luna','devolucionsaldoafavor'),(29,'api_luna','estado'),(30,'api_luna','fabricante'),(31,'api_luna','factura'),(32,'api_luna','facturaabono'),(33,'api_luna','facturadetalle'),(34,'api_luna','facturaformapago'),(35,'api_luna','facturaimpuesto'),(36,'api_luna','facturapagosaldoafavor'),(37,'api_luna','formapago'),(38,'api_luna','moneda'),(39,'api_luna','movimientodia'),(40,'api_luna','origencompra'),(41,'api_luna','pais'),(42,'api_luna','parametro'),(43,'api_luna','pedido'),(44,'api_luna','pedidodetalle'),(45,'api_luna','pedidoimpuesto'),(46,'api_luna','pedidostatus'),(47,'api_luna','productohistoricosucursal'),(48,'api_luna','productos'),(49,'api_luna','productosucursal'),(50,'api_luna','profesion'),(9,'api_luna','profile'),(51,'api_luna','proveedor'),(52,'api_luna','saldoafavor'),(53,'api_luna','servicios'),(54,'api_luna','subcategoria'),(55,'api_luna','sucursal'),(56,'api_luna','tasadia'),(57,'api_luna','tipocliente'),(58,'api_luna','tipodocumento'),(59,'api_luna','tipoimpuesto'),(60,'api_luna','tiporedsocial'),(61,'api_luna','tipotelefono'),(62,'api_luna','unidadnegocio'),(8,'api_luna','user'),(3,'auth','group'),(2,'auth','permission'),(6,'authtoken','token'),(7,'authtoken','tokenproxy'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-22 01:02:25.014933'),(2,'contenttypes','0002_remove_content_type_name','2024-04-22 01:02:25.127781'),(3,'auth','0001_initial','2024-04-22 01:02:25.610344'),(4,'auth','0002_alter_permission_name_max_length','2024-04-22 01:02:25.945178'),(5,'auth','0003_alter_user_email_max_length','2024-04-22 01:02:25.952663'),(6,'auth','0004_alter_user_username_opts','2024-04-22 01:02:25.960199'),(7,'auth','0005_alter_user_last_login_null','2024-04-22 01:02:25.968030'),(8,'auth','0006_require_contenttypes_0002','2024-04-22 01:02:25.972350'),(9,'auth','0007_alter_validators_add_error_messages','2024-04-22 01:02:25.979854'),(10,'auth','0008_alter_user_username_max_length','2024-04-22 01:02:25.986955'),(11,'auth','0009_alter_user_last_name_max_length','2024-04-22 01:02:25.996042'),(12,'auth','0010_alter_group_name_max_length','2024-04-22 01:02:26.013778'),(13,'auth','0011_update_proxy_permissions','2024-04-22 01:02:26.025066'),(14,'auth','0012_alter_user_first_name_max_length','2024-04-22 01:02:26.032502'),(15,'api_luna','0001_initial','2024-04-22 01:02:26.591730'),(16,'admin','0001_initial','2024-04-22 01:02:26.783876'),(17,'admin','0002_logentry_remove_auto_add','2024-04-22 01:02:26.792498'),(18,'admin','0003_logentry_add_action_flag_choices','2024-04-22 01:02:26.802335'),(19,'api_luna','0002_banco_caja_categoria_ciudad_cliente_clientecontacto_and_more','2024-04-22 01:02:26.842903'),(20,'authtoken','0001_initial','2024-04-22 01:02:26.966908'),(21,'authtoken','0002_auto_20160226_1747','2024-04-22 01:02:26.992482'),(22,'authtoken','0003_tokenproxy','2024-04-22 01:02:26.998040'),(23,'authtoken','0004_alter_tokenproxy_options','2024-04-22 01:02:27.005531'),(24,'sessions','0001_initial','2024-04-22 01:02:27.061911'),(25,'api_luna','0003_profile_nombre_rol','2024-04-22 01:13:20.730170'),(26,'api_luna','0004_profile_created_at_profile_updated_at_and_more','2024-04-22 01:14:19.822413');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('v2fuf0anf5ro0qliwqocpry1vyb6m8oi','.eJxVjDsOwjAQBe_iGlnxL4sp6XMGa71r4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEmcVFKHH63SLSI9Ud8B3rrUlqdV3mKHdFHrTLqXF6Xg_376BgL9_aZp-t0QRmQAsjK58UEcUB0TqdjNeGfcyRyQGAQsrgohs1Zn02CbN4fwDuRTiO:1ryiJB:noBxW0Is3zvESZDPJd9wdFrivqhOTf64RGG9vWXLEvk','2024-05-06 01:17:25.468633');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int NOT NULL,
  `estado` varchar(150) NOT NULL,
  `iso_3166-2` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricante` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'AS CREATION',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(2,'YORK WALLCOVERIGNS',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(3,'PARATO',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(4,'GRAHAM & BROWN',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(5,'WALLQUEST',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(6,'JV WALLCOVERINGS',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(7,'ARMANI',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(8,'HOHENBERGER',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(9,'SEABROOK DESINGS',1,'2024-04-18 13:59:29','2024-04-18 13:59:29'),(10,'NORWALL',1,'2024-04-18 13:59:29','2024-04-18 13:59:29');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `tasa_dia_id` int NOT NULL,
  `pedido_id` int NOT NULL,
  `caja_id` int NOT NULL,
  `sucursal_id` int NOT NULL,
  `tipo_pago` tinyint(1) DEFAULT NULL,
  `codigo` varchar(15) DEFAULT NULL,
  `serial_impresora` varchar(25) DEFAULT NULL,
  `descuento` float DEFAULT '0',
  `costo_total` float DEFAULT '0',
  `precio_total` float DEFAULT '0',
  `monto_total` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_factura_cliente1_idx` (`cliente_id`),
  KEY `fk_factura_tasa_dia1_idx` (`tasa_dia_id`),
  KEY `fk_factura_pedido1_idx` (`pedido_id`),
  KEY `fk_factura_caja1_idx` (`caja_id`),
  KEY `fk_factura_sucursal1_idx` (`sucursal_id`),
  CONSTRAINT `fk_factura_caja1` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`id`),
  CONSTRAINT `fk_factura_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_factura_pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  CONSTRAINT `fk_factura_sucursal1` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `fk_factura_tasa_dia1` FOREIGN KEY (`tasa_dia_id`) REFERENCES `tasa_dia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_abono`
--

DROP TABLE IF EXISTS `factura_abono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_abono` (
  `id` int NOT NULL AUTO_INCREMENT,
  `factura_id` int NOT NULL,
  `moneda_id` int NOT NULL,
  `monto` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_factura_abono_factura1_idx` (`factura_id`),
  KEY `fk_factura_abono_moneda1_idx` (`moneda_id`),
  CONSTRAINT `fk_factura_abono_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_factura_abono_moneda1` FOREIGN KEY (`moneda_id`) REFERENCES `moneda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_abono`
--

LOCK TABLES `factura_abono` WRITE;
/*!40000 ALTER TABLE `factura_abono` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_abono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_detalle`
--

DROP TABLE IF EXISTS `factura_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `factura_id` int NOT NULL,
  `productos_id` int DEFAULT NULL,
  `servicios_id` int DEFAULT NULL,
  `productos_sku` varchar(12) DEFAULT NULL,
  `servicios_sku` varchar(12) DEFAULT NULL,
  `cantidad` int DEFAULT '0',
  `precio` float DEFAULT '0',
  `descuento` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_factura_detalle_factura1_idx` (`factura_id`),
  KEY `fk_factura_detalle_Productos1_idx` (`productos_id`,`productos_sku`),
  KEY `fk_factura_detalle_servicios1_idx` (`servicios_id`,`servicios_sku`),
  CONSTRAINT `fk_factura_detalle_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_factura_detalle_Productos1` FOREIGN KEY (`productos_id`, `productos_sku`) REFERENCES `productos` (`id`, `sku`),
  CONSTRAINT `fk_factura_detalle_servicios1` FOREIGN KEY (`servicios_id`, `servicios_sku`) REFERENCES `servicios` (`id`, `sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_detalle`
--

LOCK TABLES `factura_detalle` WRITE;
/*!40000 ALTER TABLE `factura_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_forma_pago`
--

DROP TABLE IF EXISTS `factura_forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_forma_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `forma_pago_id` int NOT NULL,
  `factura_id` int NOT NULL,
  `cuenta_id` int DEFAULT NULL,
  `banco_origen_id` int DEFAULT NULL,
  `referencia` varchar(25) DEFAULT NULL,
  `monto` float DEFAULT '0',
  `numero_documento` double DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `imagen_referencia` text,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_factura_forma_pago_forma_pago1_idx` (`forma_pago_id`),
  KEY `fk_factura_forma_pago_factura1_idx` (`factura_id`),
  KEY `fk_factura_forma_pago_cuenta1_idx` (`cuenta_id`),
  KEY `fk_factura_forma_pago_banco1_idx` (`banco_origen_id`),
  CONSTRAINT `fk_factura_forma_pago_banco1` FOREIGN KEY (`banco_origen_id`) REFERENCES `banco` (`id`),
  CONSTRAINT `fk_factura_forma_pago_cuenta1` FOREIGN KEY (`cuenta_id`) REFERENCES `cuenta` (`id`),
  CONSTRAINT `fk_factura_forma_pago_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_factura_forma_pago_forma_pago1` FOREIGN KEY (`forma_pago_id`) REFERENCES `forma_pago` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_forma_pago`
--

LOCK TABLES `factura_forma_pago` WRITE;
/*!40000 ALTER TABLE `factura_forma_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_impuesto`
--

DROP TABLE IF EXISTS `factura_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_impuesto` (
  `id` int NOT NULL,
  `tipo_impuesto_id` int NOT NULL,
  `factura_id` int NOT NULL,
  `monto` float DEFAULT '0',
  `porcentaje` float DEFAULT '0',
  `monto_imponible` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_factura_impuesto_tipo_impuesto1_idx` (`tipo_impuesto_id`),
  KEY `fk_factura_impuesto_factura1_idx` (`factura_id`),
  CONSTRAINT `fk_factura_impuesto_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_factura_impuesto_tipo_impuesto1` FOREIGN KEY (`tipo_impuesto_id`) REFERENCES `tipo_impuesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_impuesto`
--

LOCK TABLES `factura_impuesto` WRITE;
/*!40000 ALTER TABLE `factura_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_pago_saldo_afavor`
--

DROP TABLE IF EXISTS `factura_pago_saldo_afavor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_pago_saldo_afavor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saldo_afavor_id` int NOT NULL,
  `factura_forma_pago_id` int NOT NULL,
  `monto` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_factura_pago_saldo_afavor_saldo_afavor1_idx` (`saldo_afavor_id`),
  KEY `fk_factura_pago_saldo_afavor_factura_forma_pago1_idx` (`factura_forma_pago_id`),
  CONSTRAINT `fk_factura_pago_saldo_afavor_factura_forma_pago1` FOREIGN KEY (`factura_forma_pago_id`) REFERENCES `factura_forma_pago` (`id`),
  CONSTRAINT `fk_factura_pago_saldo_afavor_saldo_afavor1` FOREIGN KEY (`saldo_afavor_id`) REFERENCES `saldo_afavor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_pago_saldo_afavor`
--

LOCK TABLES `factura_pago_saldo_afavor` WRITE;
/*!40000 ALTER TABLE `factura_pago_saldo_afavor` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_pago_saldo_afavor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `moneda_id` int NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_forma_pago_moneda1_idx` (`moneda_id`),
  CONSTRAINT `fk_forma_pago_moneda1` FOREIGN KEY (`moneda_id`) REFERENCES `moneda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneda`
--

DROP TABLE IF EXISTS `moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moneda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_dia`
--

DROP TABLE IF EXISTS `movimiento_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento_dia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `devolucion_id` int DEFAULT NULL,
  `factura_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_movimiento_dia_devolucion1_idx` (`devolucion_id`),
  KEY `fk_movimiento_dia_factura1_idx` (`factura_id`),
  CONSTRAINT `fk_movimiento_dia_devolucion1` FOREIGN KEY (`devolucion_id`) REFERENCES `devolucion` (`id`),
  CONSTRAINT `fk_movimiento_dia_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_dia`
--

LOCK TABLES `movimiento_dia` WRITE;
/*!40000 ALTER TABLE `movimiento_dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_compra`
--

DROP TABLE IF EXISTS `origen_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_compra` (
  `id` int NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `modulo` varchar(4) DEFAULT 'PROD',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_compra`
--

LOCK TABLES `origen_compra` WRITE;
/*!40000 ALTER TABLE `origen_compra` DISABLE KEYS */;
INSERT INTO `origen_compra` VALUES (1,'Fabricación Nacional','01','PROD',1,'2021-06-08 11:37:32','2021-06-08 11:37:32'),(2,'Fabricación Internacional','02','PROD',1,'2021-06-08 11:37:32','2021-06-08 11:37:32'),(3,'Compra Nacional','03','PROD',1,'2021-06-08 11:37:32','2021-06-08 11:37:32'),(4,'Compra Internacional','04','PROD',1,'2021-06-08 11:37:32','2021-06-08 11:37:32'),(5,'Propiedad del Proveedor (Consignación)','05','PROD',1,'2021-06-08 11:37:32','2021-06-08 11:37:32'),(6,'Prestación de Servicios ','09','SERV',1,'2022-08-30 15:59:14','2022-08-30 15:59:14');
/*!40000 ALTER TABLE `origen_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametro`
--

DROP TABLE IF EXISTS `parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parametro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(150) DEFAULT NULL,
  `numero_documento` int DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `mensaje_factura` varchar(200) DEFAULT NULL,
  `mensaje_pedido` varchar(200) DEFAULT NULL,
  `mensaje_cotizacion` varchar(200) DEFAULT NULL,
  `mensaje_devolucion` varchar(200) DEFAULT NULL,
  `mensaje_documentos` varchar(200) DEFAULT NULL,
  `maximo_descuento` float DEFAULT NULL,
  `imagen` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `pedido_status_id` int NOT NULL,
  `tasa_dia_id` int NOT NULL,
  `cotizacion_id` int DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `descuento` float DEFAULT '0',
  `costo_total` float DEFAULT '0',
  `precio_total` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_cliente1_idx` (`cliente_id`),
  KEY `fk_pedido_pedido_status1_idx` (`pedido_status_id`),
  KEY `fk_pedido_cotizacion1_idx` (`cotizacion_id`),
  KEY `fk_pedido_tasa_dia1_idx` (`tasa_dia_id`),
  CONSTRAINT `fk_pedido_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_pedido_cotizacion1` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacion` (`id`),
  CONSTRAINT `fk_pedido_pedido_status1` FOREIGN KEY (`pedido_status_id`) REFERENCES `pedido_status` (`id`),
  CONSTRAINT `fk_pedido_tasa_dia1` FOREIGN KEY (`tasa_dia_id`) REFERENCES `tasa_dia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_detalle`
--

DROP TABLE IF EXISTS `pedido_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_detalle` (
  `id` int NOT NULL,
  `pedido_id` int DEFAULT NULL,
  `productos_id` int DEFAULT NULL,
  `servicios_id` int DEFAULT NULL,
  `productos_sku` varchar(12) DEFAULT NULL,
  `servicios_sku` varchar(12) DEFAULT NULL,
  `cantidad` int DEFAULT '0',
  `precio` float DEFAULT '0',
  `precio_descuento` float DEFAULT '0',
  `descuento` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_detalle_pedido1_idx` (`pedido_id`),
  KEY `fk_pedido_detalle_Productos1_idx` (`productos_id`,`productos_sku`),
  KEY `fk_pedido_detalle_servicios1_idx` (`servicios_id`,`servicios_sku`),
  CONSTRAINT `fk_pedido_detalle_pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  CONSTRAINT `fk_pedido_detalle_Productos1` FOREIGN KEY (`productos_id`, `productos_sku`) REFERENCES `productos` (`id`, `sku`),
  CONSTRAINT `fk_pedido_detalle_servicios1` FOREIGN KEY (`servicios_id`, `servicios_sku`) REFERENCES `servicios` (`id`, `sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_detalle`
--

LOCK TABLES `pedido_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_impuesto`
--

DROP TABLE IF EXISTS `pedido_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_impuesto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int NOT NULL,
  `tipo_impuesto_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_impuesto_pedido1_idx` (`pedido_id`),
  KEY `fk_pedido_impuesto_tipo_impuesto1_idx` (`tipo_impuesto_id`),
  CONSTRAINT `fk_pedido_impuesto_pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  CONSTRAINT `fk_pedido_impuesto_tipo_impuesto1` FOREIGN KEY (`tipo_impuesto_id`) REFERENCES `tipo_impuesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_impuesto`
--

LOCK TABLES `pedido_impuesto` WRITE;
/*!40000 ALTER TABLE `pedido_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_status`
--

DROP TABLE IF EXISTS `pedido_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_status` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_status`
--

LOCK TABLES `pedido_status` WRITE;
/*!40000 ALTER TABLE `pedido_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_historico_sucursal`
--

DROP TABLE IF EXISTS `producto_historico_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_historico_sucursal` (
  `id` int NOT NULL,
  `productos_id` int NOT NULL,
  `productos_sku` varchar(12) NOT NULL,
  `producto_sucursal_id` int NOT NULL,
  `inventario_ant` int DEFAULT '0',
  `inventario_nuevo` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_historico_producto_Productos1_idx` (`productos_id`,`productos_sku`),
  KEY `fk_producto_historico_sucursal_producto_sucursal1_idx` (`producto_sucursal_id`),
  CONSTRAINT `fk_historico_producto_Productos1` FOREIGN KEY (`productos_id`, `productos_sku`) REFERENCES `productos` (`id`, `sku`),
  CONSTRAINT `fk_producto_historico_sucursal_producto_sucursal1` FOREIGN KEY (`producto_sucursal_id`) REFERENCES `producto_sucursal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_historico_sucursal`
--

LOCK TABLES `producto_historico_sucursal` WRITE;
/*!40000 ALTER TABLE `producto_historico_sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_historico_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_sucursal`
--

DROP TABLE IF EXISTS `producto_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_sucursal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sucursal_id` int NOT NULL,
  `productos_id` int NOT NULL,
  `productos_sku` varchar(12) NOT NULL,
  `inventario` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_producto_sucursal_sucursal1_idx` (`sucursal_id`),
  KEY `fk_producto_sucursal_Productos1_idx` (`productos_id`,`productos_sku`),
  CONSTRAINT `fk_producto_sucursal_Productos1` FOREIGN KEY (`productos_id`, `productos_sku`) REFERENCES `productos` (`id`, `sku`),
  CONSTRAINT `fk_producto_sucursal_sucursal1` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_sucursal`
--

LOCK TABLES `producto_sucursal` WRITE;
/*!40000 ALTER TABLE `producto_sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL,
  `sku` varchar(12) NOT NULL,
  `unidad_negocio_id` int NOT NULL,
  `origen_compra_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  `sub_categoria_id` int NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `cod_prod` varchar(5) NOT NULL,
  `cod_prod_proveedor` varchar(300) DEFAULT NULL,
  `codigo_barra` varchar(95) DEFAULT NULL,
  `nombre` text NOT NULL,
  `nombre_odoo` text NOT NULL,
  `descripcion` text,
  `fecha_venta` int DEFAULT NULL,
  `costo_unitario` double DEFAULT '0',
  `costo_envio` double DEFAULT '0',
  `costo` double DEFAULT '0',
  `precio_sin_iva` double DEFAULT '0',
  `precio_mayor` double DEFAULT '0',
  `iva` double DEFAULT '0',
  `precio` double DEFAULT '0',
  `proveedor_id` int NOT NULL,
  `fabricante_id` int DEFAULT NULL,
  `presentacion_venta_id` int DEFAULT NULL,
  `outlet` tinyint(1) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `mayor` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`sku`),
  UNIQUE KEY `sku_UNIQUE` (`sku`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_Productos_unidad_negocio_idx` (`unidad_negocio_id`),
  KEY `fk_Productos_origen_compra1_idx` (`origen_compra_id`),
  KEY `fk_Productos_categoria1_idx` (`categoria_id`),
  KEY `fk_Productos_sub_categoria1_idx` (`sub_categoria_id`,`categoria_id`),
  KEY `fk_Productos_fabricante1_idx` (`fabricante_id`),
  KEY `fk_Productos_proveedor1_idx` (`proveedor_id`),
  CONSTRAINT `fk_Productos_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Productos_fabricante1` FOREIGN KEY (`fabricante_id`) REFERENCES `fabricante` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Productos_origen_compra1` FOREIGN KEY (`origen_compra_id`) REFERENCES `origen_compra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Productos_proveedor1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Productos_sub_categoria1` FOREIGN KEY (`sub_categoria_id`) REFERENCES `sub_categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Productos_unidad_negocio` FOREIGN KEY (`unidad_negocio_id`) REFERENCES `unidad_negocio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (36922,'040402010001',5,4,1,10,'storage/files/importar_imagenes/040402010001.webp','0001','412-363197','7450110000000','Centro de mesa','Centro de mesa color Blanco de 8 cm',NULL,0,14.53,6.26,20.79,39.0852,0,6.2536320000000005,45.338832000000004,17,NULL,3,1,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36923,'040402010002',5,4,1,10,'storage/files/importar_imagenes/040402010002.webp','0002','449-493395','7450110000000','Farol','Farol color Dorado de 52 cm',NULL,0,21.23,14.84,36.07,67.8116,0,10.849856,78.661456,17,NULL,3,1,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36924,'040402010003',5,4,1,10,'storage/files/importar_imagenes/040402010003.webp','0003','449-493396','7450110000000','Farol','Farol color Dorado de 65 cm',NULL,0,31.52,22.03,53.55,100.67399999999999,0,16.10784,116.78183999999999,17,NULL,3,1,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36925,'040402010004',5,4,1,10,'storage/files/importar_imagenes/040402010004.webp','0004','ADC971-CW/GO','33849945027','Farol','Farol color Dorado de 44 cm',NULL,2021,26.76,18.7,45.46,68.19,0,10.91,79.1,2,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36926,'040402010005',5,4,1,10,'storage/files/importar_imagenes/040402010005.webp','0005','MD0590','','Corteza Árbol','Corteza Árbol color Marrón de 27 cm',NULL,0,4.67,2.01,6.68,12.558399999999999,0,2.009344,14.567744,1,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36927,'040402010006',5,4,1,10,'storage/files/importar_imagenes/040402010006.webp','0006','MD0592','01010101','Corteza Árbol','Corteza Árbol color Marrón de 50 cm',NULL,NULL,13.46,5.8,19.26,30.816,0,4.93056,35.74656,1,NULL,NULL,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36928,'040402010007',5,4,1,10,'storage/files/importar_imagenes/040402010007.webp','0007','MD0593','','Corteza Árbol','Corteza Árbol color Marrón de 59 cm',NULL,0,19.71,8.5,28.21,53.034800000000004,0,8.485568,61.520368000000005,1,NULL,3,1,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36929,'040402010009',5,4,1,10,'storage/files/importar_imagenes/040402010009.webp','0009','MT20030','743902466290','Limones - Set de 4','Limones - Set de 4 color Amarillo de 8 cm',NULL,2022,2.34,0.885786565,3.225786565,6.0644787422,0,0.970316598752,7.034795340952001,19,NULL,2,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36930,'040402010010',5,4,1,10,'storage/files/importar_imagenes/040402010010.webp','0010','MT24286','743903000000','Camión','Camión color Marrón de 36 cm',NULL,0,20.88,14.59,35.47,53.21,0,8.51,61.72,19,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36931,'040402010011',5,4,1,10,'storage/files/importar_imagenes/040402010011.webp','0011','MT24390','743903000000','Mariposas','Mariposas color Morado de 8 cm',NULL,0,3.9,1.95,5.85,10.998,0,1.75968,12.757679999999999,19,NULL,2,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36932,'040402010012',5,4,1,10,'storage/files/importar_imagenes/040402010012.webp','0012','900263','626404000000','Adorno Erizado','Adorno Erizado color Plateado de 9 cm',NULL,0,16.03,11.2,27.23,40.85,0,6.54,47.38,47,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36933,'040402010013',5,4,1,10,'storage/files/importar_imagenes/040402010013.webp','0013','900264','626404000000','Adorno Erizado','Adorno Erizado color Plateado de 11 cm',NULL,NULL,16.03,11.2,27.23,40.85,0,6.54,47.38,47,NULL,NULL,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36934,'040402010014',5,4,1,10,'storage/files/importar_imagenes/040402010014.webp','0014','900265','626404000000','Adorno Erizado','Adorno Erizado color Plateado de 15 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,47,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36935,'040402010015',5,4,1,10,'storage/files/importar_imagenes/040402010015.webp','0015','900266','626404000000','Adorno Erizado','Adorno Erizado color Dorado de 9 cm',NULL,0,10.88,7.6,18.48,27.72,0,4.44,32.16,47,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36936,'040402010016',5,4,1,10,'storage/files/importar_imagenes/040402010016.webp','0016','900267','626404000000','Adorno Erizado','Adorno Erizado color Dorado de 11 cm',NULL,0,16.03,11.2,27.23,40.85,0,6.54,47.38,47,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36937,'040402010017',5,4,1,10,'storage/files/importar_imagenes/040402010017.webp','0017','900268','626404000000','Adorno Erizado','Adorno Erizado color Dorado de 15 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,47,NULL,3,0,0,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36938,'040402010018',5,4,1,10,'storage/files/importar_imagenes/040402010018.webp','0018','200-4800021','7450110000000','Farol','Farol color Plateado de 48 cm',NULL,0,25.86,17.24,43.1,81.028,0,12.964480000000002,93.99248,17,NULL,3,1,1,0,'2024-04-18 14:12:57','2024-04-18 14:12:57'),(36939,'040402010019',5,4,1,10,'storage/files/importar_imagenes/040402010019.webp','0019','200-4800022','7450110000000','Farol','Farol color Plateado de 36 cm',NULL,0,17.63,11.75,29.38,35.256,0,5.64096,40.89696,17,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36940,'040402010020',5,4,1,10,'storage/files/importar_imagenes/040402010020.webp','0020','200-4800030','7450110000000','Farol','Farol color Blanco de 53 cm',NULL,0,23.06,11.53,34.59,41.508,0,6.641280000000001,48.149280000000005,17,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36941,'040402010021',5,4,1,10,'storage/files/importar_imagenes/040402010021.webp','0021','200-4800031','7450110000000','Farol','Farol color Bronce  de 41 cm',NULL,0,15.24,7.62,22.86,27.432,0,4.38912,31.82112,17,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36942,'040402010022',5,4,1,10,'storage/files/importar_imagenes/040402010022.webp','0022','200-4800032','7450110000000','Farol','Farol color Blanco de 29 cm',NULL,0,9.38,4.69,14.07,16.884,0,2.7014400000000003,19.585440000000002,17,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36943,'040402010023',5,4,1,10,'storage/files/importar_imagenes/040402010023.webp','0023','200-6200013','','Farol','Farol color Dorado de 27 cm',NULL,0,12.64,8.43,21.07,25.284,0,4.04544,29.329439999999998,17,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36944,'040402010024',5,4,1,10,'storage/files/importar_imagenes/040402010024.webp','0024','200-6200013','','Farol','Farol color Dorado de 45 cm',NULL,0,22.07,14.71,36.78,69.1464,0,11.063424,80.209824,17,NULL,3,1,1,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36945,'040402010025',5,4,1,10,'storage/files/importar_imagenes/040402010025.webp','0025','200-6200015','','Farol','Farol color Bronce de 30 cm',NULL,0,13.1,8.73,21.83,26.195999999999998,0,4.1913599999999995,30.387359999999997,17,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36946,'040402010026',5,4,1,10,'storage/files/importar_imagenes/040402010026.webp','0026','200-6200015','','Farol','Farol color Bronce de 41 cm',NULL,0,17.91,11.94,29.85,56.118,0,8.97888,65.09688,17,NULL,3,1,1,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36947,'040402010027',5,4,1,10,'storage/files/importar_imagenes/040402010027.webp','0027','900843','626404000000','Soporte Lentes','Soporte Lentes color Blanco de 10 cm',NULL,0,5.2,2.6,7.8,14.664,0,2.34624,17.01024,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36948,'040402010028',5,4,1,10,'storage/files/importar_imagenes/040402010028.webp','0028','442-5000150','7450110000000','Esferas en bandeja','Esferas en bandeja color Plateado de 17 cm',NULL,NULL,19.82,13.21,33.03,49.55,0,7.93,57.48,17,NULL,NULL,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36949,'040402010029',5,4,1,10,'storage/files/importar_imagenes/040402010029.webp','0029','442-5000151','7450110000000','Esferas en bandeja','Esferas en bandeja color Dorado de 17 cm',NULL,0,20.78,13.85,34.63,51.95,0,8.31,60.26,17,NULL,2,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36950,'040402010030',5,4,1,10,'storage/files/importar_imagenes/040402010030.webp','0030','901915A','626404000000','Adorno Erizado Base','Adorno Erizado Base color Plateado de 36 cm',NULL,0,45.79,32,77.79,116.68,0,18.67,135.35,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36951,'040402010031',5,4,1,10,'storage/files/importar_imagenes/040402010031.webp','0031','901915B','626404000000','Adorno Erizado Base','Adorno Erizado Base color Plateado de 46 cm',NULL,0,40,20,60,112.8,0,18.048,130.84799999999998,47,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36952,'040402010032',5,4,1,10,'storage/files/importar_imagenes/040402010032.webp','0032','MT23365','743903000000','Cesta rústica','Cesta rústica color Marrón de 39 cm',NULL,0,26.39,18.44,44.83,84.2804,0,13.484864,97.765264,19,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36953,'040402010033',5,4,1,10,'storage/files/importar_imagenes/040402010033.webp','0033','MT23366','743903000000','Cesta rústica','Cesta rústica color Marrón de 71 cm',NULL,0,70.11,48.99,119.1,142.92,0,22.8672,165.7872,19,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36954,'040402010034',5,4,1,10,'storage/files/importar_imagenes/040402010034.webp','0034','64799','746428000000','Farol','Farol color Bronce de 51 cm',NULL,0,32.85,21.9,54.75,102.93,0,16.4688,119.39880000000001,15,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36955,'040402010035',5,4,1,10,'storage/files/importar_imagenes/040402010035.webp','0035','64799','746428000000','Farol','Farol color Bronce de 74 cm',NULL,0,47.67,31.78,79.45,149.36599999999999,0,23.89856,173.26456,15,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36956,'040402010036',5,4,1,10,'storage/files/importar_imagenes/040402010036.webp','0036','64799','746428000000','Farol','Farol color Bronce de 99 cm',NULL,0,63.78,42.52,106.3,199.844,0,31.97504,231.81904,15,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36957,'040402010037',5,4,1,10,'storage/files/importar_imagenes/040402010037.webp','0037','78040','746428000000','Farol','Farol color Plateado de 30 cm',NULL,0,22.43,14.95,37.38,56.08,0,8.97,65.05,15,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36958,'040402010038',5,4,1,10,'storage/files/importar_imagenes/040402010038.webp','0038','78040','746428000000','Farol','Farol color Plateado de 41 cm',NULL,0,30.63,20.42,51.05,95.97399999999999,0,15.355839999999999,111.32983999999999,15,NULL,3,0,1,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36959,'040402010039',5,4,1,10,'storage/files/importar_imagenes/040402010039.webp','0039','78040','746428000000','Farol','Farol color Plateado de 52 cm',NULL,0,38.87,25.91,64.78,121.7864,0,19.485824,141.272224,15,NULL,3,1,1,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36960,'040402010040',5,4,1,10,'storage/files/importar_imagenes/040402010040.webp','0040','58015','746428000000','Farol','Farol color Plateado de 55 cm',NULL,0,33.54,22.36,55.9,83.85,0,13.42,97.27,15,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36961,'040402010041',5,4,1,10,'storage/files/importar_imagenes/040402010041.webp','0041','58015','746428000000','Farol','Farol color Plateado de 66 cm',NULL,0,40.25,26.83,67.08,126.1104,0,20.177664,146.288064,15,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36962,'040402010042',5,4,1,10,'storage/files/importar_imagenes/040402010042.webp','0042','58015','746428000000','Farol','Farol color Plateado de 86 cm',NULL,0,50.06,33.37,83.43,125.15,0,20.02,145.17,15,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36963,'040402010043',5,4,1,10,'storage/files/importar_imagenes/040402010043.webp','0043','4017074','48893162474','Farol','Farol color Beige de 54 cm',NULL,0,28.2,18.8,47,88.36,0,14.1376,102.4976,18,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36964,'040402010044',5,4,1,10,'storage/files/importar_imagenes/040402010044.webp','0044','901916A','626404000000','Adorno Erizado Base','Adorno Erizado Base color Dorado de 36 cm',NULL,0,45.79,32,77.79,146.2452,0,23.399232,169.64443200000002,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36965,'040402010045',5,4,1,10,'storage/files/importar_imagenes/040402010045.webp','0045','901916B','626404000000','Adorno Erizado Base','Adorno Erizado Base color Dorado de 46 cm',NULL,0,57.24,40,97.24,182.81119999999999,0,29.249792,212.060992,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36966,'040402010046',5,4,1,10,'storage/files/importar_imagenes/040402010046.webp','0046','901917A','626404000000','Adorno Erizado','Adorno Erizado color Plateado de 10 cm',NULL,0,13.17,9.2,22.37,33.56,0,5.37,38.93,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36967,'040402010047',5,4,1,10,'storage/files/importar_imagenes/040402010047.webp','0047','901917B','626404000000','Adorno Erizado','Adorno Erizado color Plateado de 18 cm',NULL,0,29.19,20.4,49.59,74.38,0,11.9,86.28,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36968,'040402010048',5,4,1,10,'storage/files/importar_imagenes/040402010048.webp','0048','901918A','626404000000','Adorno Erizado','Adorno Erizado color Dorado de 10 cm',NULL,0,9.2,4.6,13.8,25.944000000000003,0,4.15104,30.095040000000004,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36969,'040402010049',5,4,1,10,'storage/files/importar_imagenes/040402010049.webp','0049','901918B','626404000000','Adorno Erizado','Adorno Erizado color Dorado de 18 cm',NULL,0,20.4,10.2,30.6,57.528000000000006,0,9.204480000000002,66.73248000000001,47,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36970,'040402010050',5,4,1,10,'storage/files/importar_imagenes/040402010050.webp','0050','66718','746428000000','Farol','Farol color Gris de 81 cm',NULL,0,58.81,41.1,99.91,187.8308,0,30.052928,217.88372800000002,15,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36971,'040402010051',5,4,1,10,'storage/files/importar_imagenes/040402010051.webp','0051','66718','','Farol','Farol color Gris de 135 cm',NULL,0,98.01,68.49,166.5,313.02,0,50.0832,363.10319999999996,15,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36972,'040402010052',5,4,1,10,'storage/files/importar_imagenes/040402010052.webp','0052','CH-5866','','Manzana','Manzana color Rojo de 12,7 cm',NULL,0,9.3,6.5,15.8,23.7,0,3.79,27.49,60,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36973,'040402010053',5,4,1,10,'storage/files/importar_imagenes/040402010053.webp','0053','58868','746428000000','Adorno de polea','Adorno de polea color Transparente de 80 cm',NULL,0,21.87,15.28,37.15,48.295,0,7.7272,56.0222,15,NULL,3,0,1,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36974,'040402010054',5,4,1,10,'storage/files/importar_imagenes/040402010054.webp','0054','CH-5867','','Manzana','Manzana color Rojo de 14,6 cm',NULL,0,12.16,8.5,20.66,38.8408,0,6.2145280000000005,45.055328,60,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36975,'040402010055',5,4,1,10,'storage/files/importar_imagenes/040402010055.webp','0055','CH-5868','','Manzana','Manzana color Dorado de 12,7 cm',NULL,0,9.3,6.5,15.8,23.7,0,3.79,27.49,60,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36976,'040402010056',5,4,1,10,'storage/files/importar_imagenes/040402010056.webp','0056','CH-5869','','Manzana','Manzana color Dorado de 14,6 cm',NULL,0,12.16,8.5,20.66,30.99,0,4.96,35.94,60,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36977,'040402010057',5,4,1,10,'storage/files/importar_imagenes/040402010057.webp','0057','IN-5859','','Manzana','Manzana color Dorado de 15,2 cm',NULL,0,17.17,12,29.17,43.75,0,7,50.75,60,NULL,3,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36978,'040402010058',5,4,1,10,'storage/files/importar_imagenes/040402010058.webp','0058','CH-6031','040402010058','Bowl Tallado','Bowl Tallado color Anaranjado de  x 14.5 cm',NULL,NULL,74.41,52,126.41,189.61,0,30.34,219.95,60,NULL,NULL,0,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36979,'040402010059',5,4,1,10,'storage/files/importar_imagenes/040402010059.webp','0059','78440','746428000000','Adorno finial','Adorno finial color Dorado de 55 cm',NULL,0,18.13,12.67,30.8,57.903999999999996,0,9.26464,67.16864,15,NULL,3,1,0,0,'2024-04-18 14:12:58','2024-04-18 14:12:58'),(36980,'040402010060',5,4,1,10,'storage/files/importar_imagenes/040402010060.webp','0060','78440','','Adorno finial','Adorno finial color Dorado de 63,5 cm',NULL,0,20.94,14.63,35.57,40.9055,0,6.54488,47.45038,15,NULL,3,1,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36981,'040402010061',5,4,1,10,'storage/files/importar_imagenes/040402010061.webp','0061','78610','746428000000','Adorno Finial','Adorno Finial color Dorado de 77,4 cm',NULL,0,29.95,20.93,50.88,58.512,0,9.36192,67.87392,15,NULL,3,1,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36982,'040402010062',5,4,1,10,'storage/files/importar_imagenes/040402010062.webp','0062','','','Adorno Flores','Adorno Flores color Blanco - Azul Rey de 15 cm',NULL,0,2.29,1.6,3.89,7.3132,0,1.170112,8.483312,9,NULL,3,0,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36983,'040402010063',5,4,1,10,'storage/files/importar_imagenes/040402010063.webp','0063','MT24390','743903000000','Mariposas','Mariposas color Blanco de 8 cm',NULL,0,3.9,1.95,5.85,8.19,0,1.3104,9.5004,19,NULL,2,0,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36984,'040402010064',5,4,1,10,'storage/files/importar_imagenes/040402010064.webp','0064','MT24390','743903000000','Mariposas','Mariposas color Amarillo de 8 cm',NULL,0,3.9,1.95,5.85,8.19,0,1.3104,9.5004,19,NULL,2,1,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36985,'040402010065',5,4,1,10,'storage/files/importar_imagenes/040402010065.webp','0065','MT24391','743903000000','Mariposas','Mariposas color Morado de 11 cm',NULL,0,5.09,2.55,7.64,14.363199999999999,0,2.2981119999999997,16.661312,19,NULL,2,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36986,'040402010066',5,4,1,10,'storage/files/importar_imagenes/040402010066.webp','0066','MT24391','743903000000','Mariposas','Mariposas color Amarillo de 11 cm',NULL,0,5.09,2.55,7.64,14.363199999999999,0,2.2981119999999997,16.661312,19,NULL,2,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36987,'040402010067',5,4,1,10,'storage/files/importar_imagenes/040402010067.webp','0067','MT24391','743903000000','Mariposas','Mariposas color Blanco de 11 cm',NULL,0,5.09,2.55,7.64,10.696,0,1.71136,12.40736,19,NULL,2,0,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36988,'040402010068',5,4,1,10,'storage/files/importar_imagenes/040402010068.webp','0068','CH-6033','040402010068','Bowl Tallado','Bowl Tallado color Negro de 13 cm',NULL,NULL,74.41,52,126.41,237.6508,0,38.024128000000005,275.674928,60,NULL,NULL,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36989,'040402010069',5,4,1,10,'storage/files/importar_imagenes/040402010069.webp','0069','IN-5860','','Pera','Pera color Dorado de  cm',NULL,0,17.17,12,29.17,43.75,0,7,50.75,60,NULL,3,0,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36990,'040402010070',5,4,1,10,'storage/files/importar_imagenes/040402010070.webp','0070','437-656696','7450110000000','Centro de Mesa','Centro de Mesa color Blanco de 13.5 cm',NULL,NULL,2.26,0.97,3.23,3.876,0,0.62016,4.49616,17,NULL,NULL,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36991,'040402010071',5,4,1,10,'storage/files/importar_imagenes/040402010071.webp','0071','437-656698','7450110000000','Centro de Mesa','Centro de Mesa color Blanco de 21.5 cm',NULL,NULL,4.28,1.84,6.12,7.343999999999999,0,1.1750399999999999,8.519039999999999,17,NULL,NULL,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36992,'040402010072',5,4,1,10,'storage/files/importar_imagenes/040402010072.webp','0072','4017075','48893162481','Farol','Farol color Beige de 76 cm',NULL,0,37.28,24.85,62.13,80.769,0,12.92304,93.69204,18,NULL,3,1,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36993,'040402010073',5,4,1,10,'storage/files/importar_imagenes/040402010073.webp','0073','200-1400009','7450110000000','Estrella Metalizada','Estrella Metalizada color Dorado de 27 cm',NULL,0,5.99,3,8.99,10.788,0,1.72608,12.51408,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36994,'040402010074',5,4,1,10,'storage/files/importar_imagenes/040402010074.webp','0074','200-1400010','7450110000000','Estrella Metalizada','Estrella Metalizada color Plateado de 19 cm',NULL,0,3.24,1.62,4.86,5.832,0,0.93312,6.76512,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36995,'040402010075',5,4,1,10,'storage/files/importar_imagenes/040402010075.webp','0075','200-1400011','7450110000000','Estrella Metalizada','Estrella Metalizada color Dorado de 19 cm',NULL,0,3.24,1.62,4.86,5.832,0,0.93312,6.76512,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36996,'040402010076',5,4,1,10,'storage/files/importar_imagenes/040402010076.webp','0076','445-797531','000','Pulgar Ok','Pulgar Ok color Dorado de 15,7 cm',NULL,2022,3.27,1.55,4.82,8.73,0,1.4,10.126800000000001,17,NULL,3,0,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36997,'040402010077',5,4,1,10,'storage/files/importar_imagenes/040402010077.webp','0077','445-797532','000','Manos','Manos  color Dorado de 16 cm',NULL,2022,4.08,1.99,6.07,10.6,0,1.7,12.296,17,NULL,3,0,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36998,'040402010080',5,4,1,10,'storage/files/importar_imagenes/040402010080.webp','0080','200-1400008','7450110000000','Estrella Metalizada','Estrella Metalizada color Plateado de 27 cm',NULL,0,5.99,3,8.99,10.788,0,1.72608,12.51408,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(36999,'040402010081',5,4,1,10,'storage/files/importar_imagenes/040402010081.webp','0081','MT24020','743902894598','Cuadro Lavanda','Cuadro Lavanda color Marron - Morado de 49,5 cm',NULL,0,16.48,7.1,23.58,35.37,0,5.66,41.03,19,NULL,3,0,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37000,'040402010082',5,4,1,10,'storage/files/importar_imagenes/040402010082.webp','0082','AM0412','','Estrella Metálica','Estrella Metálica color Plateado - Negro de 26 cm',NULL,0,14.76,5.5872691,20.3472691,38.252865908,0,6.12045854528,44.37332445328,1,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37001,'040402010308',5,4,1,10,'storage/files/importar_imagenes/040402010308.webp','0308','AM0411','040402010308','Estrella Metálica','Estrella Metálica color Plateado - Negro de 19 cm',NULL,2022,7.14,2.702784646,9.842784646,18.504435134479998,0,2.9607096215168,21.465144755996796,1,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37002,'040402020001',5,4,1,11,'storage/files/importar_imagenes/040402020001.webp','0001','MT24374','743903000000','Cinta Mosaico','Cinta Mosaico color Blanco - Azul Cielo de 10 cm',NULL,0,7.23,3.62,10.85,14.105,0,2.2568,16.3618,19,NULL,3,0,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37003,'040402020002',5,4,1,11,'storage/files/importar_imagenes/040402020002.webp','0002','','','Cinta Lunares','Cinta Lunares color Amarillo de 3,81 cm',NULL,0,7.14,4.99,12.13,22.8044,0,3.6487040000000004,26.453104000000003,9,NULL,3,1,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37004,'040402020003',5,4,1,11,'storage/files/importar_imagenes/040402020003.webp','0003','','','Cinta Franjas','Cinta Franjas color Multicolor de 3,81 cm',NULL,0,7.14,4.99,12.13,22.8044,0,3.6487040000000004,26.453104000000003,9,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37005,'040402020004',5,4,1,11,'storage/files/importar_imagenes/040402020004.webp','0004','','','Cinta Franjas','Cinta Franjas color Multicolor de 3,81 cm',NULL,0,7.14,4.99,12.13,22.8044,0,3.6487040000000004,26.453104000000003,9,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37006,'040402020005',5,4,1,11,'storage/files/importar_imagenes/040402020005.webp','0005','040402020005','040402020005','Cinta Zigzag','Cinta Zigzag color Multicolor de 3,81 cm',NULL,2022,7.14,4.99,12.13,22.8044,0,3.6487040000000004,26.453104000000003,9,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37007,'040402020006',5,4,1,11,'storage/files/importar_imagenes/040402020006.webp','0006','','','Cinta Cuadros','Cinta Cuadros color Multicolor de 6,35 cm',NULL,0,8.57,5.99,14.56,27.3728,0,4.379648,31.752448,9,NULL,3,1,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37008,'040402030001',5,4,1,12,'storage/files/importar_imagenes/040402030001.webp','0001','MT24017','743903000000','Cuadro','Cuadro color Azul Cielo de 61 cm',NULL,0,11.69,8.17,19.86,37.3368,0,5.973888,43.310688,19,NULL,3,1,1,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37009,'040402030002',5,4,1,12,'storage/files/importar_imagenes/040402030002.webp','0002','','','Abanicos','Abanicos color Rosado de 35,3 cm',NULL,0,18.59,12.99,31.58,71.06,0,11.37,82.43,9,NULL,3,0,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37010,'040402030003',5,4,1,12,'storage/files/importar_imagenes/040402030003.webp','0003','040402030003','040402030003','Abanicos','Abanicos color Rosado - Verde Manzana de 35,3 cm',NULL,NULL,18.59,12.99,31.58,59.3704,0,9.499264,68.869664,9,NULL,NULL,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37011,'040402110045',5,4,1,20,'storage/files/importar_imagenes/040402110045.webp','0045','XAX204-CW/SI','\'033849945454','Marco Colgante','Marco Colgante color Plateado de 15 CM',NULL,2021,5.7,2.157685222,7.857685222,14.77244821736,0,2.3635917147775998,17.1360399321376,2,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37012,'040402030005',5,4,1,12,'storage/files/importar_imagenes/040402030005.webp','0005','XGN402-CW/SI','\'033849945461','Marco Colgante','Marco Colgante color Plateado de 8 CM',NULL,2021,3.51,2.45,5.96,8.94,0,1.43,10.38,2,NULL,3,0,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37013,'040402040001',5,4,1,13,'storage/files/importar_imagenes/040402040001.webp','0001','200-5500011','','Florero Base Madera','Florero Base Madera color Beige de 27 cm',NULL,0,12.53,8.35,20.88,25.055999999999997,0,4.00896,29.06496,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37014,'040402040002',5,4,1,13,'storage/files/importar_imagenes/040402040002.webp','0002','200-5500035','7450110000000','Florero con base','Florero con base color Transparente de 21 cm',NULL,0,7.83,5.22,13.05,24.534,0,3.92544,28.45944,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37015,'040402040003',5,4,1,13,'storage/files/importar_imagenes/040402040003.webp','0003','200-5500042','7450110000000','Florero con base','Florero con base color Transparente de 20 cm',NULL,0,9.26,6.17,15.43,29.0084,0,4.641344,33.649744,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37016,'040402040004',5,4,1,13,'storage/files/importar_imagenes/040402040004.webp','0004','200-5500044','7450110000000','Florero con base','Florero con base color Azul Rey de 20 cm',NULL,0,10.13,6.75,16.88,20.255999999999997,0,3.2409599999999994,23.496959999999994,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37017,'040402040005',5,4,1,13,'storage/files/importar_imagenes/040402040005.webp','0005','200-5500046','7450110000000','Florero con base','Florero con base color Gris de 20 cm',NULL,0,7.59,3.8,11.39,13.668000000000001,0,2.1868800000000004,15.854880000000001,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37018,'040402040006',5,4,1,13,'storage/files/importar_imagenes/040402040006.webp','0006','200-5500033','7450110000000','Florero con base','Florero con base color Transparente de 25 cm',NULL,0,7.94,3.97,11.91,14.292,0,2.28672,16.57872,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37019,'040402040007',5,4,1,13,'storage/files/importar_imagenes/040402040007.webp','0007','200-5500037','7450110000000','Florero con base','Florero con base color Transparente de 26 cm',NULL,0,8.74,4.37,13.11,24.6468,0,3.943488,28.590287999999997,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37020,'040402040008',5,4,1,13,'storage/files/importar_imagenes/040402040008.webp','0008','200-5500039','7450110000000','Florero con base','Florero con base color Azul Rey de 26 cm',NULL,0,9.49,4.75,14.24,17.088,0,2.73408,19.82208,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37021,'040402040009',5,4,1,13,'storage/files/importar_imagenes/040402040009.webp','0009','200-5500040','7450110000000','Florero con base','Florero con base color Bronce de 26 cm',NULL,0,10.66,5.33,15.99,19.188,0,3.07008,22.25808,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37022,'040402040010',5,4,1,13,'storage/files/importar_imagenes/040402040010.webp','0010','200-5500041','7450110000000','Florero con base','Florero con base color Gris de 26 cm',NULL,0,10.66,5.33,15.99,19.188,0,3.07008,22.25808,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37023,'040402040011',5,4,1,13,'storage/files/importar_imagenes/040402040011.webp','0011','180-3000006','7450110000000','Florero strass','Florero strass color Dorado - Transparente de 15 cm',NULL,0,7.49,3.75,11.24,21.1312,0,3.380992,24.512192,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37024,'040402040012',5,4,1,13,'storage/files/importar_imagenes/040402040012.webp','0012','180-3000007','7450110000000','Florero strass','Florero strass color Transparente - Plateado de 15 cm',NULL,0,7.49,3.75,11.24,21.1312,0,3.380992,24.512192,17,NULL,3,1,0,0,'2024-04-18 14:12:59','2024-04-18 14:12:59'),(37025,'040402040013',5,4,1,13,'storage/files/importar_imagenes/040402040013.webp','0013','180-3000008','7450110000000','Florero strass','Florero strass color Dorado - Transparente de 17 cm',NULL,0,10.08,5.04,15.12,28.4256,0,4.548096,32.973696,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37026,'040402040014',5,4,1,13,'storage/files/importar_imagenes/040402040014.webp','0014','180-3000009','7450110000000','Florero strass','Florero strass color Transparente - Plateado de 17 cm',NULL,0,10.08,5.04,15.12,28.4256,0,4.548096,32.973696,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37027,'040402040015',5,4,1,13,'storage/files/importar_imagenes/040402040015.webp','0015','200-5500034','7450110000000','Florero con base','Florero con base color Rojo de 24 cm',NULL,0,8.66,4.33,12.99,15.588,0,2.49408,18.082079999999998,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37028,'040402040016',5,4,1,13,'storage/files/importar_imagenes/040402040016.webp','0016','412-363168','7450110000000','Florero','Florero color Anaranjado de 39 cm',NULL,0,14.15,6.1,20.25,38.07,0,6.091200000000001,44.1612,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37029,'040402040017',5,4,1,13,'storage/files/importar_imagenes/040402040017.webp','0017','412-762954','7450110000000','Florero Acuarela','Florero Acuarela color Anaranjado de 26 cm',NULL,0,22.75,9.81,32.56,61.2128,0,9.794048,71.006848,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37030,'040402040018',5,4,1,13,'storage/files/importar_imagenes/040402040018.webp','0018','412-762955','7450110000000','Florero acuarela','Florero acuarela color Anaranjado de 31 cm',NULL,0,25.38,10.94,36.32,68.2816,0,10.925056,79.206656,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37031,'040402040019',5,4,1,13,'storage/files/importar_imagenes/040402040019.webp','0019','412-363169','7450110000000','Florero','Florero color Anaranjado de 30 cm',NULL,0,11.35,4.89,16.24,30.5312,0,4.884992,35.416191999999995,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37032,'040402040020',5,4,1,13,'storage/files/importar_imagenes/040402040020.webp','0020','412-363170','7450110000000','Florero','Florero color Anaranjado de 19 cm',NULL,0,10.23,4.41,14.64,27.523200000000003,0,4.4037120000000005,31.926912,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37033,'040402040021',5,4,1,13,'storage/files/importar_imagenes/040402040021.webp','0021','ACG059-CW/GO','33849800845','Florero vidrio','Florero vidrio color Dorado - Transparente de 25 cm',NULL,0,23.18,16.2,39.38,74.0344,0,11.845504000000002,85.87990400000001,2,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37034,'040402040022',5,4,1,13,'storage/files/importar_imagenes/040402040022.webp','0022','ACG096-CW','33849018387','Florero vidrio','Florero vidrio color Transparente de 14,6 cm',NULL,0,8.87,6.2,15.07,22.6,0,3.62,26.22,2,NULL,3,0,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37035,'040402040023',5,4,1,13,'storage/files/importar_imagenes/040402040023.webp','0023','ACG098-CW','33849018424','Florero vidrio','Florero vidrio color Transparente de 20 cm',NULL,NULL,14.31,5,19.31,30.896,0,4.94336,35.83936,2,NULL,NULL,0,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37036,'040402040024',5,4,1,13,'storage/files/importar_imagenes/040402040024.webp','0024','ACG101-CW','33849018462','Florero vidrio','Florero vidrio color Transparente de  x 25 cm',NULL,NULL,32.67,11.41,44.08,82.88,0,13.26,96.14,2,NULL,NULL,0,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37037,'040402040025',5,4,1,13,'storage/files/importar_imagenes/040402040025.webp','0025','441-557880','7450110000000','Florero metálico','Florero metálico color Gris de 45,5 cm',NULL,0,24.02,16.79,40.81,48.972,0,7.835520000000001,56.807520000000004,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37038,'040402040026',5,4,1,13,'storage/files/importar_imagenes/040402040026.webp','0026','441-557881','7450110000000','Florero metálico','Florero metálico color Gris de 35,5 cm',NULL,0,17.3,12.09,29.39,55.2532,0,8.840512,64.093712,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37039,'040402040027',5,4,1,13,'storage/files/importar_imagenes/040402040027.webp','0027','441-557884','7450110000000','Florero','Florero color Blanco de 45,5 cm',NULL,0,24.02,16.79,40.81,76.7228,0,12.275648000000002,88.99844800000001,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37040,'040402040028',5,4,1,13,'storage/files/importar_imagenes/040402040028.webp','0028','441-557885','7450110000000','Florero','Florero color Blanco de 35,5 cm',NULL,0,17.3,12.09,29.39,55.2532,0,8.840512,64.093712,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37041,'040402040029',5,4,1,13,'storage/files/importar_imagenes/040402040029.webp','0029','ACG155-CW','33849191080','Florerero Vidrio','Florerero Vidrio color Plateado de 38,1 cm',NULL,NULL,48.15,16.82,64.97,103.952,0,16.63232,120.58432,2,NULL,NULL,0,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37042,'040402040030',5,4,1,13,'storage/files/importar_imagenes/040402040030.webp','0030','ACG633-CW','33849827224','Florero vidrio','Florero vidrio color Transparente de 42 cm',NULL,NULL,12.78,4.21,16.99,32.29,0,5.17,37.45,2,NULL,NULL,0,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37043,'040402040031',5,4,1,13,'storage/files/importar_imagenes/040402040031.webp','0031','ACG661-CW/WH','33849625899','Florero vidrio','Florero vidrio color Transparente - Blanco de 39 cm',NULL,0,64.32,44.95,109.27,205.42759999999998,0,32.868415999999996,238.29601599999998,2,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37044,'040402040032',5,4,1,13,'storage/files/importar_imagenes/040402040032.webp','0032','ACG663-CW/WH','33849625905','Florero vidrio','Florero vidrio color Transparente - Blanco de 47 cm',NULL,0,126.64,88.5,215.14,404.4632,0,64.714112,469.177312,2,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37045,'040402040033',5,4,1,13,'storage/files/importar_imagenes/040402040033.webp','0033','ACR916-WH/GY','33849142402','Florero','Florero color Blanco de 37 cm',NULL,NULL,36.35,25.4,61.75,86.45,0,13.832,100.282,2,NULL,NULL,0,1,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37046,'040402040034',5,4,1,13,'storage/files/importar_imagenes/040402040034.webp','0034','ACT220-PK/GO','33849763546','Florero Pastel','Florero Pastel color Rosado de 60 cm',NULL,0,73.7,49.13,122.83,159.679,0,25.54864,185.22764,2,NULL,3,0,1,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37047,'040402040035',5,4,1,13,'storage/files/importar_imagenes/040402040035.webp','0035','ACT221-GR/GO','33849763560','Florero Pastel','Florero Pastel color Verde Agua de 75,5 cm',NULL,0,100.89,67.26,168.15,201.78,0,32.2848,234.0648,2,NULL,3,0,1,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37048,'040402040036',5,4,1,13,'storage/files/importar_imagenes/040402040036.webp','0036','ACT431-BK','33849806281','Florero','Florero color Negro de 40 cm',NULL,2021,26.5,10.03134357,36.53134357,51.143880998,0,8.18302095968,59.32690195768,2,NULL,3,0,1,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37049,'040402040037',5,4,1,13,'storage/files/importar_imagenes/040402040037.webp','0037','ACT547-GO','33849579567','Florero copa','Florero copa color Dorado de 42 cm',NULL,0,34.77,24.3,59.07,88.6,0,14.18,102.78,2,NULL,3,0,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37050,'040402040038',5,4,1,13,'storage/files/importar_imagenes/040402040038.webp','0038','442-321998','7450110000000','Florero','Florero color Azul Turquesa de 30 cm',NULL,0,21.3,14.88,36.18,47.034,0,7.52544,54.55944,17,NULL,3,1,1,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37051,'040402040039',5,4,1,13,'storage/files/importar_imagenes/040402040039.webp','0039','442-321999','7450110000000','Florero','Florero color Azul Turquesa de 25 cm',NULL,0,12.02,8.4,20.42,38.3896,0,6.142336,44.531936,17,NULL,3,1,0,0,'2024-04-18 14:13:00','2024-04-18 14:13:00'),(37052,'040402040040',5,4,1,13,'storage/files/importar_imagenes/040402040040.webp','0040','442-322000','7450110000000','Florero','Florero color Azul Turquesa de 20 cm',NULL,0,7.85,5.49,13.34,17.342,0,2.77472,20.11672,17,NULL,3,1,1,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37053,'040402040041',5,4,1,13,'storage/files/importar_imagenes/040402040041.webp','0041','442-5000197','7450110000000','Florero','Florero color Dorado - Transparente de 26,5 cm',NULL,0,12.17,8.5,20.67,38.8596,0,6.217536,45.077136,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37054,'040402040042',5,4,1,13,'storage/files/importar_imagenes/040402040042.webp','0042','442-5000198','7450110000000','Florero','Florero color Dorado - Transparente de 35 cm',NULL,NULL,14.99,10.48,25.47,47.8836,0,7.661376000000001,55.544976000000005,17,NULL,NULL,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37055,'040402040043',5,4,1,13,'storage/files/importar_imagenes/040402040043.webp','0043','442-5000199','7450110000000','Florero','Florero color Dorado - Transparente de 16 cm',NULL,0,8.43,5.89,14.32,17.184,0,2.7494400000000003,19.93344,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37056,'040402040044',5,4,1,13,'storage/files/importar_imagenes/040402040044.webp','0044','442-5000215','7450110000000','Florero','Florero color Blanco de 33 cm',NULL,0,15.3,10.69,25.99,36.386,0,5.82176,42.20776,17,NULL,3,1,1,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37057,'040402040045',5,4,1,13,'storage/files/importar_imagenes/040402040045.webp','0045','442-5000216','7450110000000','Florero','Florero color Blanco de 47 cm',NULL,0,22.23,15.53,37.76,70.9888,0,11.358208,82.347008,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37058,'040402040046',5,4,1,13,'storage/files/importar_imagenes/040402040046.webp','0046','442-5000217','7450110000000','Florero','Florero color Blanco de 28 cm',NULL,0,17.12,11.96,29.08,54.6704,0,8.747264,63.417664,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37059,'040402040047',5,4,1,13,'storage/files/importar_imagenes/040402040047.webp','0047','442-500221','7450110000000','Florero','Florero color Dorado - Beige de 29 cm',NULL,0,14.85,10.38,25.23,47.4324,0,7.589184,55.021584000000004,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37060,'040402040048',5,4,1,13,'storage/files/importar_imagenes/040402040048.webp','0048','442-500222','7450110000000','Florero','Florero color Dorado - Beige de 18 cm',NULL,0,11.01,7.69,18.7,24.31,0,3.8896,28.1996,17,NULL,3,0,1,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37061,'040402040049',5,4,1,13,'storage/files/importar_imagenes/040402040049.webp','0049','442-500223','7450110000000','Florero','Florero color Dorado - Beige de 13,5 cm',NULL,0,6.87,4.8,11.67,15.171,0,2.42736,17.59836,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37062,'040402040050',5,4,1,13,'storage/files/importar_imagenes/040402040050.webp','0050','GH1155','885674000000','Florero botella','Florero botella color Transparente de 23 cm',NULL,0,8.46,3.65,12.11,22.766799999999996,0,3.6426879999999997,26.409487999999996,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37063,'040402040051',5,4,1,13,'storage/files/importar_imagenes/040402040051.webp','0051','GH1159','885674000000','Florero botella','Florero botella color Transparente de 27 cm',NULL,0,9.36,4.03,13.39,25.1732,0,4.027712,29.200912000000002,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37064,'040402040052',5,4,1,13,'storage/files/importar_imagenes/040402040052.webp','0052','GH1161','885674000000','Florero botella','Florero botella color Transparente de 32 cm',NULL,0,17.64,7.6,25.24,47.4512,0,7.592192,55.043392,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37065,'040402040053',5,4,1,13,'storage/files/importar_imagenes/040402040053.webp','0053','GH1163','885674000000','Florero botella','Florero botella color Transparente de 41 cm',NULL,0,19.35,8.34,27.69,52.0572,0,8.329152,60.386352,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37066,'040402040054',5,4,1,13,'storage/files/importar_imagenes/040402040054.webp','0054','GH118336','885674000000','Florero copa','Florero copa  color Plateado de 17 cm',NULL,NULL,7.38,3.18,10.56,15.84,0,2.53,18.38,1,NULL,NULL,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37067,'040402040055',5,4,1,13,'storage/files/importar_imagenes/040402040055.webp','0055','GH119026','000','Florero copa','Florero copa color Transparente de 21 cm',NULL,NULL,9.86,4.25,14.11,16.932,0,2.70912,19.641119999999997,1,NULL,NULL,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37068,'040402040056',5,4,1,13,'storage/files/importar_imagenes/040402040056.webp','0056','GH119126','885674000000','Florero copa','Florero copa color Transparente de 31 cm',NULL,0,12.51,5.39,17.9,33.652,0,5.384320000000001,39.03632,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37069,'040402040057',5,4,1,13,'storage/files/importar_imagenes/040402040057.webp','0057','KE213247','885674000000','Florero Aluminio','Florero Aluminio color Bronce de 33 cm',NULL,0,31.95,13.77,45.72,85.9536,0,13.752576,99.706176,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37070,'040402040058',5,4,1,13,'storage/files/importar_imagenes/040402040058.webp','0058','KE213347','885674000000','Florero Copa','Florero Copa color Bronce de 38,1 cm',NULL,0,49.5,21.33,70.83,99.162,0,15.86592,115.02792,1,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37071,'040402040059',5,4,1,13,'storage/files/importar_imagenes/040402040059.webp','0059','KE213448','885674000000','Florero Copa','Florero Copa color Dorado - Negro de 36 cm',NULL,0,17.01,7.33,24.34,45.7592,0,7.321472,53.080672,1,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37072,'040402040060',5,4,1,13,'storage/files/importar_imagenes/040402040060.webp','0060','KE213548','885674000000','Florero Copa','Florero Copa color Dorado - Negro de 43 cm',NULL,0,26.96,11.62,38.58,72.5304,0,11.604864000000001,84.135264,1,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37073,'040402040061',5,4,1,13,'storage/files/importar_imagenes/040402040061.webp','0061','900362','626404000000','Florero Rostro','Florero Rostro color Blanco de 15 cm',NULL,0,18.32,12.8,31.12,46.68,0,7.47,54.15,47,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37074,'040402040062',5,4,1,13,'storage/files/importar_imagenes/040402040062.webp','0062','900363','626404000000','Florero Rostro','Florero Rostro color Plateado de 15 cm',NULL,0,20.61,14.4,35.01,52.52,0,8.4,60.92,47,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37075,'040402040063',5,4,1,13,'storage/files/importar_imagenes/040402040063.webp','0063','KE214239','885674000000','Florero Botella','Florero Botella color Plateado de 22 cm',NULL,0,6.66,2.87,9.53,13.342,0,2.13472,15.47672,1,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37076,'040402040064',5,4,1,13,'storage/files/importar_imagenes/040402040064.webp','0064','KE214339','885674000000','Florero botella','Florero botella  color Plateado de 30 cm',NULL,0,10.26,4.42,14.68,22.02,0,3.52,25.55,1,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37077,'040402040065',5,4,1,13,'storage/files/importar_imagenes/040402040065.webp','0065','KE214439','885674000000','Florero botella','Florero botella color Plateado de 20 cm',NULL,0,11.66,5.03,16.69,25.03,0,4,29.03,1,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37078,'040402040066',5,4,1,13,'storage/files/importar_imagenes/040402040066.webp','0066','KE214539','885674000000','Florero botella','Florero botella color Plateado de 22 cm',NULL,0,8.96,3.86,12.82,19.23,0,3.08,22.31,1,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37079,'040402040067',5,4,1,13,'storage/files/importar_imagenes/040402040067.webp','0067','KE214630','885674000000','Florero corteza','Florero corteza color Dorado de 32 cm',NULL,0,14.36,6.19,20.55,38.634,0,6.18144,44.81544,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37080,'040402040068',5,4,1,13,'storage/files/importar_imagenes/040402040068.webp','0068','KE214730','885674000000','Florero corteza','Florero corteza color Dorado de 38,1 cm',NULL,0,21.15,9.12,30.27,56.9076,0,9.105216,66.012816,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37081,'040402040069',5,4,1,13,'storage/files/importar_imagenes/040402040069.webp','0069','MT24375','743903000000','Florero Mosaico','Florero Mosaico color Blanco - Azul Rey de 17 cm',NULL,0,8.88,6.21,15.09,22.63,0,3.62,26.25,19,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37082,'040402040070',5,4,1,13,'storage/files/importar_imagenes/040402040070.webp','0070','MT24376','743903000000','Florero Mosaico','Florero Mosaico color Blanco - Azul Rey de 24 cm',NULL,0,12.92,9.03,21.95,32.92,0,5.27,38.19,19,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37083,'040402040071',5,4,1,13,'storage/files/importar_imagenes/040402040071.webp','0071','PD159644','885674000000','Florero copa','Florero copa color Dorado de 40 cm',NULL,0,25.16,10.84,36,43.199999999999996,0,6.911999999999999,50.111999999999995,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37084,'040402040072',5,4,1,13,'storage/files/importar_imagenes/040402040072.webp','0072','PD159744','885674000000','Florero copa','Florero copa color Dorado de 30 cm',NULL,0,17.06,7.35,24.41,36.62,0,5.86,42.48,1,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37085,'040402040073',5,4,1,13,'storage/files/importar_imagenes/040402040073.webp','0073','XGC630-SI','33849311549','Florero mosaico','Florero mosaico color Negro de 101 cm',NULL,0,273.32,191,464.32,872.9216,0,139.66745600000002,1012.589056,2,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37086,'040402040074',5,4,1,13,'storage/files/importar_imagenes/040402040074.webp','0074','900364','626404000000','Florero Rostro','Florero Rostro color Blanco de 20 cm',NULL,0,28.62,20,48.62,72.93,0,11.67,84.6,47,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37087,'040402040075',5,4,1,13,'storage/files/importar_imagenes/040402040075.webp','0075','900365','626404000000','Florero Rostro','Florero Rostro color Plateado de 20 cm',NULL,0,36.63,25.6,62.23,93.34,0,14.93,108.28,47,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37088,'040402040076',5,4,1,13,'storage/files/importar_imagenes/040402040076.webp','0076','901890','626404000000','Florero Tubular','Florero Tubular color Plateado de 25,4 cm',NULL,0,23.43,16.37,39.8,59.7,0,9.55,69.26,47,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37089,'040402040077',5,4,1,13,'storage/files/importar_imagenes/040402040077.webp','0077','448-2212708','7450110000000','Florero','Florero color Dorado de 60 cm',NULL,0,23.82,16.65,40.47,48.564,0,7.77024,56.33424,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37090,'040402040078',5,4,1,13,'storage/files/importar_imagenes/040402040078.webp','0078','448-2212709','7450110000000','Florero','Florero color Dorado de 76 cm',NULL,NULL,28.95,20.23,49.18,92.4584,0,14.793344,107.251744,17,NULL,NULL,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37091,'040402040079',5,4,1,13,'storage/files/importar_imagenes/040402040079.webp','0079','200-5400138','7450110000000','Jarrón','Jarrón color Plateado de 42 cm',NULL,0,13.29,6.65,19.94,23.928,0,3.8284800000000003,27.75648,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37092,'040402040080',5,4,1,13,'storage/files/importar_imagenes/040402040080.webp','0080','412-363149','7450110000000','Florero','Florero color Verde de 47 cm',NULL,0,35.06,23.37,58.43,109.8484,0,17.575744,127.424144,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37093,'040402040081',5,4,1,13,'storage/files/importar_imagenes/040402040081.webp','0081','412-363150','7450110000000','Florero','Florero color Verde de 34 cm',NULL,NULL,30.32,20.21,50.53,94.9964,0,15.199423999999999,110.19582399999999,17,NULL,NULL,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37094,'040402040082',5,4,1,13,'storage/files/importar_imagenes/040402040082.webp','0082','413-010102','7450110000000','Florero','Florero color Plateado de 24,5 cm',NULL,0,10.54,5.27,15.81,18.972,0,3.0355200000000004,22.007520000000003,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37095,'040402040083',5,4,1,13,'storage/files/importar_imagenes/040402040083.webp','0083','413-010103','7450110000000','Florero','Florero color Plateado de 30 cm',NULL,0,11.14,5.57,16.71,20.052,0,3.20832,23.26032,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37096,'040402040084',5,4,1,13,'storage/files/importar_imagenes/040402040084.webp','0084','413-010104','7450110000000','Florero','Florero color Tornasol de 30 cm',NULL,0,11.14,5.57,16.71,20.052,0,3.20832,23.26032,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37097,'040402040085',5,4,1,13,'storage/files/importar_imagenes/040402040085.webp','0085','413-010115','7450110000000','Florero','Florero color Tornasol de 30 cm',NULL,0,8.28,4.14,12.42,14.904,0,2.38464,17.28864,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37098,'040402040086',5,4,1,13,'storage/files/importar_imagenes/040402040086.webp','0086','413-010116','7450110000000','Florero','Florero color Tornasol de 20 cm',NULL,0,5.89,2.95,8.84,10.607999999999999,0,1.69728,12.305279999999998,17,NULL,3,1,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37099,'040402040087',5,4,1,13,'storage/files/importar_imagenes/040402040087.webp','0087','438-4912793','7450110000000','Florero','Florero color Blanco de 13 cm',NULL,0,8.61,5.74,14.35,21.53,0,3.44,24.97,17,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37100,'040402040088',5,4,1,13,'storage/files/importar_imagenes/040402040088.webp','0088','438-4912794','7450110000000','Florero','Florero color Blanco de 21 cm',NULL,0,13.27,8.85,22.12,33.18,0,5.31,38.48,17,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37101,'040402040089',5,4,1,13,'storage/files/importar_imagenes/040402040089.webp','0089','901890','040402040089','Florero Tubular','Florero Tubular color Plateado de 36 cm',NULL,NULL,28.78,20.11,48.89,73.34,0,11.73,85.07,47,NULL,NULL,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37102,'040402040090',5,4,1,13,'storage/files/importar_imagenes/040402040090.webp','0090','901890','','Florero Tubular','Florero Tubular color Plateado de 46 cm',NULL,0,36.78,25.7,62.48,93.72,0,15,108.72,47,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37103,'040402040091',5,4,1,13,'storage/files/importar_imagenes/040402040091.webp','0091','902146','626404000000','Florero Tubular','Florero Tubular color Dorado de 25,4 cm',NULL,0,27.29,19.07,46.36,87.1568,0,13.945088,101.101888,47,NULL,3,0,0,0,'2024-04-18 14:13:01','2024-04-18 14:13:01'),(37104,'040402040092',5,4,1,13,'storage/files/importar_imagenes/040402040092.webp','0092','902146','','Florero Tubular','Florero Tubular color Dorado de 36 cm',NULL,0,32.38,22.63,55.01,82.51,0,13.2,95.71,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37105,'040402040093',5,4,1,13,'storage/files/importar_imagenes/040402040093.webp','0093','902146','','Florero Tubular','Florero Tubular color Dorado de 46 cm',NULL,0,42.66,29.81,72.47,108.71,0,17.39,126.1,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37106,'040402040094',5,4,1,13,'storage/files/importar_imagenes/040402040094.webp','0094','902481A','626404000000','Florero Botella','Florero Botella color Plateado de 80 cm',NULL,0,160,80,240,451.2,0,72.192,523.3919999999999,47,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37107,'040402040095',5,4,1,13,'storage/files/importar_imagenes/040402040095.webp','0095','902481B','626404000000','Florero Botella','Florero Botella color Plateado de 101 cm',NULL,0,236,118,354,665.52,0,106.4832,772.0032,47,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37108,'040402040096',5,4,1,13,'storage/files/importar_imagenes/040402040096.webp','0096','902838A','626404000000','Florero Abstracto','Florero Abstracto color Blanco - Negro de 23 cm',NULL,0,22.4,11.2,33.6,63.168000000000006,0,10.106880000000002,73.27488000000001,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37109,'040402040097',5,4,1,13,'storage/files/importar_imagenes/040402040097.webp','0097','902838B','626404000000','Florero Abstracto','Florero Abstracto color Blanco - Negro de 30,5 cm',NULL,NULL,21.2,10.6,31.8,59.784000000000006,0,9.56544,69.34944,47,NULL,NULL,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37110,'040402040098',5,4,1,13,'storage/files/importar_imagenes/040402040098.webp','0098','902839A','626404000000','Florero Cirque','Florero Cirque color Blanco - Negro de 14 cm',NULL,NULL,21.2,10.6,31.8,59.784000000000006,0,9.56544,69.34944,47,NULL,NULL,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37111,'040402040099',5,4,1,13,'storage/files/importar_imagenes/040402040099.webp','0099','440-080055','7450110000000','Florero','Florero color Blanco de 88 cm',NULL,0,60.71,30.36,91.07,109.28399999999999,0,17.48544,126.76943999999999,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37112,'040402040100',5,4,1,13,'storage/files/importar_imagenes/040402040100.webp','0100','440-080057','7450110000000','Florero','Florero color Blanco de 40 cm',NULL,0,24.18,12.09,36.27,43.524,0,6.96384,50.48784,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37113,'040402040101',5,4,1,13,'storage/files/importar_imagenes/040402040101.webp','0101','441-627320','7450110000000','Florero geométrico','Florero geométrico color Plateado de 26 cm',NULL,0,9.85,6.57,16.42,24.63,0,3.94,28.57,17,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37114,'040402040102',5,4,1,13,'storage/files/importar_imagenes/040402040102.webp','0102','441-627321','7450110000000','Florero geométrico','Florero geométrico color Dorado de 26 cm',NULL,0,10.56,7.04,17.6,21.12,0,3.3792000000000004,24.499200000000002,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37115,'040402040103',5,4,1,13,'storage/files/importar_imagenes/040402040103.webp','0103','441-627322','7450110000000','Florero','Florero color Plateado de 44 cm',NULL,0,18.53,12.35,30.88,37.056,0,5.92896,42.98496,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37116,'040402040104',5,4,1,13,'storage/files/importar_imagenes/040402040104.webp','0104','441-627323','7450110000000','Florero','Florero color Dorado de 44 cm',NULL,0,19.38,12.92,32.3,38.76,0,6.2016,44.9616,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37117,'040402040105',5,4,1,13,'storage/files/importar_imagenes/040402040105.webp','0105','441-647575','7450110000000','Florero','Florero color Blanco de 30 cm',NULL,0,8.29,4.15,12.44,14.927999999999999,0,2.38848,17.31648,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37118,'040402040106',5,4,1,13,'storage/files/importar_imagenes/040402040106.webp','0106','441-647576','7450110000000','Florero','Florero color Plateado de 38 cm',NULL,0,13.88,6.94,20.82,24.983999999999998,0,3.9974399999999997,28.98144,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37119,'040402040107',5,4,1,13,'storage/files/importar_imagenes/040402040107.webp','0107','441-647579','7450110000000','Florero corrugado','Florero corrugado color Dorado de 25 cm',NULL,0,9.72,6.48,16.2,19.439999999999998,0,3.1104,22.550399999999996,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37120,'040402040108',5,4,1,13,'storage/files/importar_imagenes/040402040108.webp','0108','441-647580','7450110000000','Florero corrugado','Florero corrugado color Dorado de 35 cm',NULL,0,13.26,8.84,22.1,26.52,0,4.2432,30.763199999999998,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37121,'040402040109',5,4,1,13,'storage/files/importar_imagenes/040402040109.webp','0109','441-647581','7450110000000','Florero corrugado','Florero corrugado color Dorado de 40 cm',NULL,0,15.92,10.61,26.53,31.836,0,5.09376,36.92976,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37122,'040402040110',5,4,1,13,'storage/files/importar_imagenes/040402040110.webp','0110','441-647590','7450110000000','Florero marmoleado','Florero marmoleado color Blanco de 31 cm',NULL,0,6.84,3.42,10.26,12.312,0,1.96992,14.28192,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37123,'040402040111',5,4,1,13,'storage/files/importar_imagenes/040402040111.webp','0111','441-647591','7450110000000','Florero marmoleado','Florero marmoleado color Blanco de 39 cm',NULL,0,9.59,4.8,14.39,17.268,0,2.76288,20.03088,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37124,'040402040112',5,4,1,13,'storage/files/importar_imagenes/040402040112.webp','0112','441-677895','7450110000000','Ánfora','Ánfora color Dorado de 34 cm',NULL,0,16.55,8.28,24.83,46.68039999999999,0,7.468863999999999,54.14926399999999,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37125,'040402040113',5,4,1,13,'storage/files/importar_imagenes/040402040113.webp','0113','441-677896','7450110000000','Florero','Florero color Dorado de 44 cm',NULL,0,17.69,8.85,26.54,49.8952,0,7.983232000000001,57.878432000000004,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37126,'040402040114',5,4,1,13,'storage/files/importar_imagenes/040402040114.webp','0114','902839B','626404000000','Florero Cirque','Florero Cirque color Blanco - Negro de 29 cm',NULL,0,31.6,15.8,47.4,89.112,0,14.257919999999999,103.36992,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37127,'040402040115',5,4,1,13,'storage/files/importar_imagenes/040402040115.webp','0115','902839C','626404000000','Florero Cirque','Florero Cirque color Blanco - Negro de 38,1 cm',NULL,0,32.63,22.8,55.43,83.15,0,13.3,96.45,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37128,'040402040116',5,4,1,13,'storage/files/importar_imagenes/040402040116.webp','0116','902976A','626404000000','Florero Ahumado','Florero Ahumado color Negro de 25,4 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37129,'040402040117',5,4,1,13,'storage/files/importar_imagenes/040402040117.webp','0117','448-2212542','7450110000000','Florero texturizado','Florero texturizado color Dorado de 71 cm',NULL,0,16.15,8.08,24.23,29.076,0,4.65216,33.72816,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37130,'040402040118',5,4,1,13,'storage/files/importar_imagenes/040402040118.webp','0118','448-2212543','7450110000000','Florero texturizado','Florero texturizado color Dorado de 58 cm',NULL,0,13.19,6.6,19.79,23.747999999999998,0,3.7996799999999995,27.547679999999996,17,NULL,3,1,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37131,'040402040119',5,4,1,13,'storage/files/importar_imagenes/040402040119.webp','0119','902976B','626404000000','Florero Ahumado','Florero Ahumado color Negro de 34,3 cm',NULL,0,31.48,22,53.48,80.22,0,12.83,93.05,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37132,'040402040120',5,4,1,13,'storage/files/importar_imagenes/040402040120.webp','0120','903203A','626404000000','Florero Textura','Florero Textura color Dorado - Blanco - Negro de 18 cm',NULL,0,31.88,15.94,47.82,89.9016,0,14.384256,104.285856,47,NULL,3,0,0,0,'2024-04-18 14:13:02','2024-04-18 14:13:02'),(37133,'040402040121',5,4,1,13,'storage/files/importar_imagenes/040402040121.webp','0121','903203B','626404000000','Florero Textura','Florero Textura color Dorado - Blanco - Negro de 28 cm',NULL,0,33.38,16.69,50.07,94.13159999999999,0,15.061055999999999,109.19265599999999,47,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37134,'040402040122',5,4,1,13,'storage/files/importar_imagenes/040402040122.webp','0122','903203C','626404000000','Florero Textura','Florero Textura color Dorado - Blanco - Negro de 39 cm',NULL,0,44.25,22.13,66.38,92.932,0,14.86912,107.80112,47,NULL,3,0,1,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37135,'040402040123',5,4,1,13,'storage/files/importar_imagenes/040402040123.webp','0123','903206A','626404000000','Florero Grabado','Florero Grabado color Dorado de  x 34 cm',NULL,NULL,37.2,18.6,55.8,104.904,0,16.78464,121.68863999999999,47,NULL,NULL,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37136,'040402040124',5,4,1,13,'storage/files/importar_imagenes/040402040124.webp','0124','903206B','626404000000','Florero Grabado','Florero Grabado color Beige de 25,4 cm',NULL,0,33.6,16.8,50.4,94.752,0,15.160319999999999,109.91232,47,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37137,'040402040125',5,4,1,13,'storage/files/importar_imagenes/040402040125.webp','0125','903206C','626404000000','Florero Grabado','Florero Grabado color Beige de 33 cm',NULL,NULL,44.8,22.4,67.2,107.52,0,17.2032,124.7232,47,NULL,NULL,0,1,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37138,'040402040126',5,4,1,13,'storage/files/importar_imagenes/040402040126.webp','0126','903207A','626404000000','Florero Grabado','Florero Grabado color Marrón de 20 cm',NULL,0,37.2,18.6,55.8,104.904,0,16.78464,121.68863999999999,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37139,'040402040127',5,4,1,13,'storage/files/importar_imagenes/040402040127.webp','0127','903207B','626404000000','Florero Grabado','Florero Grabado color Marrón de 25,4 cm',NULL,0,33.6,16.8,50.4,94.752,0,15.160319999999999,109.91232,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37140,'040402040128',5,4,1,13,'storage/files/importar_imagenes/040402040128.webp','0128','903207C','626404000000','Florero Grabado','Florero Grabado color Bronce de  x 33 cm',NULL,NULL,44.8,22.4,67.2,87.36,0,13.9776,101.3376,47,NULL,NULL,0,1,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37141,'040402040129',5,4,1,13,'storage/files/importar_imagenes/040402040129.webp','0129','903240A','626404000000','Florero Textura','Florero Textura color Dorado - Negro de 28 cm',NULL,0,19.6,9.8,29.4,55.272,0,8.84352,64.11552,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37142,'040402040130',5,4,1,13,'storage/files/importar_imagenes/040402040130.webp','0130','903240B','626404000000','Florero Textura','Florero Textura color Dorado - Negro de 38,1 cm',NULL,0,26,13,39,54.6,0,8.736,63.336,47,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37143,'040402040131',5,4,1,13,'storage/files/importar_imagenes/040402040131.webp','0131','903248A','626404000000','Florero Metalizado','Florero Metalizado color Dorado - Blanco - Negro de 10 cm',NULL,0,6,3,9,16.92,0,2.7072000000000003,19.627200000000002,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37144,'040402040132',5,4,1,13,'storage/files/importar_imagenes/040402040132.webp','0132','903248B','626404000000','Florero Metalizado','Florero Metalizado color Dorado - Blanco - Negro de 15 cm',NULL,0,8,4,12,22.560000000000002,0,3.6096000000000004,26.169600000000003,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37145,'040402040133',5,4,1,13,'storage/files/importar_imagenes/040402040133.webp','0133','903248C','626404000000','Florero Metalizado','Florero Metalizado color Dorado - Blanco - Negro de 18 cm',NULL,0,13.44,6.72,20.16,37.900800000000004,0,6.064128000000001,43.96492800000001,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37146,'040402040134',5,4,1,13,'storage/files/importar_imagenes/040402040134.webp','0134','903795A','626404000000','Florero Satinado','Florero Satinado color Dorado - Transparente de 25 cm',NULL,0,16,8,24,45.120000000000005,0,7.219200000000001,52.339200000000005,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37147,'040402040135',5,4,1,13,'storage/files/importar_imagenes/040402040135.webp','0135','903795B','626404000000','Florero Satinado','Florero Satinado color Dorado - Transparente de 34 cm',NULL,0,22,11,33,62.04,0,9.9264,71.9664,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37148,'040402040136',5,4,1,13,'storage/files/importar_imagenes/040402040136.webp','0136','903799A','626404000000','Florero Cónico','Florero Cónico color Transparente de 45 cm',NULL,NULL,37.2,18.6,55.8,104.904,0,16.78464,121.68863999999999,47,NULL,NULL,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37149,'040402040137',5,4,1,13,'storage/files/importar_imagenes/040402040137.webp','0137','903799B','626404000000','Florero Cónico','Florero Cónico color Transparente de 55 cm',NULL,0,61.82,43.2,105.02,197.43759999999997,0,31.590015999999995,229.02761599999997,47,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37150,'040402040138',5,4,1,13,'storage/files/importar_imagenes/040402040138.webp','0138','903799C','626404000000','Florero Cónico','Florero Cónico color Transparente de 65 cm',NULL,NULL,74.41,52,126.41,237.6508,0,38.024128000000005,275.674928,47,NULL,NULL,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37151,'040402040139',5,4,1,13,'storage/files/importar_imagenes/040402040139.webp','0139','903809A','626404000000','Florero Abstracto','Florero Abstracto color Blanco - Negro de 22 cm',NULL,0,30,15,45,84.6,0,13.536,98.136,47,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37152,'040402040140',5,4,1,13,'storage/files/importar_imagenes/040402040140.webp','0140','70034','746428000000','Florero Tubular','Florero Tubular color Marrón - Transparente de 44 cm',NULL,0,23.25,16.25,39.5,74.25999999999999,0,11.881599999999999,86.14159999999998,15,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37153,'040402040141',5,4,1,13,'storage/files/importar_imagenes/040402040141.webp','0141','78799','746428000000','Florero','Florero color Negro de 63 cm',NULL,0,48.97,34.22,83.19,99.828,0,15.97248,115.80048,15,NULL,3,1,1,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37154,'040402040142',5,4,1,13,'storage/files/importar_imagenes/040402040142.webp','0142','78800','746428000000','Florero','Florero color Negro de 49 cm',NULL,0,38.51,26.91,65.42,122.9896,0,19.678335999999998,142.667936,15,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37155,'040402040143',5,4,1,13,'storage/files/importar_imagenes/040402040143.webp','0143','82109','746428000000','Florero Tubular','Florero Tubular color Marrón de 20,3 cm',NULL,0,18.15,12.68,30.83,57.96039999999999,0,9.273663999999998,67.23406399999999,15,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37156,'040402040144',5,4,1,13,'storage/files/importar_imagenes/040402040144.webp','0144','82110','746428000000','Florero','Florero color Marrón de 15,2 cm',NULL,0,11.72,8.19,19.91,37.430800000000005,0,5.988928000000001,43.419728000000006,15,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37157,'040402040145',5,4,1,13,'storage/files/importar_imagenes/040402040145.webp','0145','903809B','626404000000','Florero Abstracto','Florero Abstracto color Blanco - Negro de 30,5 cm',NULL,0,34,17,51,95.88,0,15.3408,111.2208,47,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37158,'040402040146',5,4,1,13,'storage/files/importar_imagenes/040402040146.webp','0146','903811A','626404000000','Florero','Florero color Blanco - Negro de 20 cm',NULL,0,26,13,39,73.32,0,11.7312,85.0512,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37159,'040402040147',5,4,1,13,'storage/files/importar_imagenes/040402040147.webp','0147','903811B','626404000000','Florero','Florero color Blanco - Negro de 29 cm',NULL,0,32,16,48,90.24000000000001,0,14.438400000000001,104.67840000000001,47,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37160,'040402040148',5,4,1,13,'storage/files/importar_imagenes/040402040148.webp','0148','CH-5520','','Florero Tallado','Florero Tallado color Azul Turquesa de 15,2 cm',NULL,0,93.02,65,158.02,297.0776,0,47.532416000000005,344.61001600000003,60,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37161,'040402040149',5,4,1,13,'storage/files/importar_imagenes/040402040149.webp','0149','14169','752122000000','Florero Botella','Florero Botella color Dorado de 30 cm',NULL,NULL,51.52,36,87.52,131.28,0,21.01,152.29,36,NULL,NULL,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37162,'040402040150',5,4,1,13,'storage/files/importar_imagenes/040402040150.webp','0150','14177','752122000000','Florero Tubular','Florero Tubular color Bronce de 18 cm',NULL,0,30.05,21,51.05,76.57,0,12.25,88.83,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37163,'040402040151',5,4,1,13,'storage/files/importar_imagenes/040402040151.webp','0151','14178','752122000000','Florero Botella','Florero Botella color Dorado de 24 cm',NULL,0,51.52,36,87.52,131.28,0,21.01,152.29,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37164,'040402040152',5,4,1,13,'storage/files/importar_imagenes/040402040152.webp','0152','14179','752122000000','Florero Botella','Florero Botella color Dorado de 17,8 cm',NULL,0,51.52,36,87.52,164.5376,0,26.326016,190.863616,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37165,'040402040153',5,4,1,13,'storage/files/importar_imagenes/040402040153.webp','0153','14185','752122000000','Florero Ovalado','Florero Ovalado color Dorado de 38,1 cm',NULL,0,14.24,9.95,24.19,45.4772,0,7.276352000000001,52.753552000000006,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37166,'040402040154',5,4,1,13,'storage/files/importar_imagenes/040402040154.webp','0154','14186','752122000000','Florero Ovalado','Florero Ovalado color Beige de 46 cm',NULL,0,19.32,13.5,32.82,39.384,0,6.30144,45.68544,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37167,'040402040155',5,4,1,13,'storage/files/importar_imagenes/040402040155.webp','0155','14187','752122000000','Florero Ovalado','Florero Ovalado color Beige de 53 cm',NULL,0,22.82,15.95,38.77,46.524,0,7.443840000000001,53.96784,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37168,'040402040156',5,4,1,13,'storage/files/importar_imagenes/040402040156.webp','0156','14188','752122000000','Florero hexagonal','Florero hexagonal color Beige de 61 cm',NULL,0,26.12,18.25,44.37,83.4156,0,13.346496,96.762096,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37169,'040402040157',5,4,1,13,'storage/files/importar_imagenes/040402040157.webp','0157','14249','752122000000','Florero Ovalado','Florero Ovalado color Plateado de 30 cm',NULL,0,51.52,36,87.52,105.02399999999999,0,16.803839999999997,121.82783999999998,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37170,'040402040158',5,4,1,13,'storage/files/importar_imagenes/040402040158.webp','0158','14256','752122000000','Florero Botella','Florero Botella color Plateado de 23 cm',NULL,0,30.05,21,51.05,76.57,0,12.25,88.83,36,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37171,'040402040159',5,4,1,13,'storage/files/importar_imagenes/040402040159.webp','0159','14258','752122000000','Florero Botella','Florero Botella color Plateado de 24 cm',NULL,0,51.52,36,87.52,105.02399999999999,0,16.803839999999997,121.82783999999998,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37172,'040402040160',5,4,1,13,'storage/files/importar_imagenes/040402040160.webp','0160','14259','752122000000','Florero Botella','Florero Botella color Plateado de 18 cm',NULL,0,51.52,36,87.52,105.02399999999999,0,16.803839999999997,121.82783999999998,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37173,'040402040161',5,4,1,13,'storage/files/importar_imagenes/040402040161.webp','0161','14274','752122000000','Florero abstracto','Florero abstracto color Plateado de 33 cm',NULL,0,13.59,9.5,23.09,27.708,0,4.43328,32.141279999999995,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37174,'040402040162',5,4,1,13,'storage/files/importar_imagenes/040402040162.webp','0162','CH-5987','','Florero Tallado','Florero Tallado color Negro de 13 cm',NULL,0,47.22,33,80.22,150.8136,0,24.130176000000002,174.943776,60,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37175,'040402040163',5,4,1,13,'storage/files/importar_imagenes/040402040163.webp','0163','14276','752122000000','Florero abstracto','Florero abstracto color Plateado de 46 cm',NULL,0,22.82,15.95,38.77,46.524,0,7.443840000000001,53.96784,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37176,'040402040164',5,4,1,13,'storage/files/importar_imagenes/040402040164.webp','0164','14278','752122000000','Florero abstracto','Florero abstracto color Plateado de 61 cm',NULL,0,26.12,18.25,44.37,53.24399999999999,0,8.519039999999999,61.76303999999999,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37177,'040402040165',5,4,1,13,'storage/files/importar_imagenes/040402040165.webp','0165','14281','752122000000','Florero abstracto','Florero abstracto color Negro de 61 cm',NULL,0,26.12,18.25,44.37,66.56,0,10.65,77.21,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37178,'040402040166',5,4,1,13,'storage/files/importar_imagenes/040402040166.webp','0166','14283','752122000000','Florero abstracto','Florero abstracto color Negro de 46 cm',NULL,NULL,22.82,15.95,38.77,46.524,0,7.443840000000001,53.96784,36,NULL,NULL,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37179,'040402040167',5,4,1,13,'storage/files/importar_imagenes/040402040167.webp','0167','30918','752122000000','Florero Latón','Florero Latón color Dorado de  cm',NULL,0,16.96,11.85,28.81,34.571999999999996,0,5.5315199999999995,40.103519999999996,36,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37180,'040402040168',5,4,1,13,'storage/files/importar_imagenes/040402040168.webp','0168','POL-865','','Florero Critsal','Florero Critsal color Blanco - Gris de 30 cm',NULL,0,50.09,35,85.09,159.9692,0,25.595072000000002,185.56427200000002,60,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37181,'040402040169',5,4,1,13,'storage/files/importar_imagenes/040402040169.webp','0169','CH-5521','','Florero Tallado','Florero Tallado color Azul Turquesa de 23,5 cm',NULL,0,78.71,55,133.71,251.37480000000002,0,40.219968,291.59476800000004,60,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37182,'040402040170',5,4,1,13,'storage/files/importar_imagenes/040402040170.webp','0170','CH-5522','','Florero Tallado','Florero Tallado color Azul Turquesa de 12 cm',NULL,0,50.09,35,85.09,159.9692,0,25.595072000000002,185.56427200000002,60,NULL,3,0,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37183,'040402040171',5,4,1,13,'storage/files/importar_imagenes/040402040171.webp','0171','CH-5937','','Florero Jade','Florero Jade color Verde Ingles de 24,1 cm',NULL,0,55.81,39,94.81,178.2428,0,28.518848,206.76164799999998,60,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37184,'040402040172',5,4,1,13,'storage/files/importar_imagenes/040402040172.webp','0172','CH-5938','2179422','Florero Jade','Florero Jade color Verde Ingles de 32 cm',NULL,NULL,84.43,59,143.43,215.15,0,34.42,249.57,60,NULL,NULL,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37185,'040402040173',5,4,1,13,'storage/files/importar_imagenes/040402040173.webp','0173','CH-5939','','Florero Jade','Florero Jade color Verde Ingles de 37,5 cm',NULL,0,98.74,69,167.74,315.3512,0,50.456192,365.807392,60,NULL,3,1,0,0,'2024-04-18 14:13:03','2024-04-18 14:13:03'),(37186,'040402040174',5,4,1,13,'storage/files/importar_imagenes/040402040174.webp','0174','CH-6002','','Florero Rostro','Florero Rostro color Gris de 20 cm',NULL,0,30.05,21,51.05,95.97399999999999,0,15.355839999999999,111.32983999999999,60,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37187,'040402040175',5,4,1,13,'storage/files/importar_imagenes/040402040175.webp','0175','CH-6003','','Florero Rostro','Florero Rostro color Gris de 28 cm',NULL,0,30.05,21,51.05,95.97399999999999,0,15.355839999999999,111.32983999999999,60,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37188,'040402040176',5,4,1,13,'storage/files/importar_imagenes/040402040176.webp','0176','CH-6034','','Florero Tallado','Florero Tallado color Anaranjado de 15 cm',NULL,0,64.4,45,109.4,164.11,0,26.26,190.36,60,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37189,'040402040177',5,4,1,13,'storage/files/importar_imagenes/040402040177.webp','0177','CH-6036','','Florero Tallado','Florero Tallado color Negro de 15,5 cm',NULL,0,64.4,45,109.4,164.11,0,26.26,190.36,60,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37190,'040402040267',5,4,1,13,'storage/files/importar_imagenes/040402040267.webp','0267','S23171','2012200000000','Florero rústico','Florero rústico color Blanco de 35 cm',NULL,2022,3.29,2.3,5.59,6.707999999999999,0,1.07328,7.781279999999999,9,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37191,'040402040268',5,4,1,13,'storage/files/importar_imagenes/040402040268.webp','0268','412-850176','7450110000000','Florero Base','Florero Base color Azul Cielo de 29 cm',NULL,NULL,15.69,6.76,22.45,35.92,0,5.7472,41.6672,17,NULL,NULL,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37192,'040402040269',5,4,1,13,'storage/files/importar_imagenes/040402040269.webp','0269','412-850177','7450110000000','Florero Alto Base','Florero Alto Base color Azul Cielo de 18 cm',NULL,0,17.21,7.42,24.63,46.3044,0,7.408704,53.713104,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37193,'040402040270',5,4,1,13,'storage/files/importar_imagenes/040402040270.webp','0270','412-850178','7450110000000','Florero Alto Base','Florero Alto Base color Azul Cielo de 12 cm',NULL,0,10.57,4.56,15.13,19.669,0,3.14704,22.81604,17,NULL,3,1,1,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37194,'040402040271',5,4,1,13,'storage/files/importar_imagenes/040402040271.webp','0271','200-5500036','7450110000000','Florero Base','Florero Base color Rojo de 21 cm',NULL,0,5.8,2.9,8.7,10.44,0,1.6703999999999999,12.110399999999998,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37195,'040402040272',5,4,1,13,'storage/files/importar_imagenes/040402040272.webp','0272','200-5500045','7450110000000','Florero Base','Florero Base color dorado de 20 cm',NULL,0,7.59,3.8,11.39,13.668000000000001,0,2.1868800000000004,15.854880000000001,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37196,'040402040273',5,4,1,13,'storage/files/importar_imagenes/040402040273.webp','0273','413-21004','00','Florero Tallado','Florero Tallado color Gris de 15 cm',NULL,0,9.02,3.14,12.16,14.591999999999999,0,2.33472,16.92672,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37197,'040402040274',5,4,1,13,'storage/files/importar_imagenes/040402040274.webp','0274','413-21005','000','Florero Tallado','Florero Tallado color Gris de 10 cm',NULL,0,3.53,1.23,4.76,5.712,0,0.91392,6.62592,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37198,'040402040275',5,4,1,13,'storage/files/importar_imagenes/040402040275.webp','0275','413-21006','00','Florero Tallado','Florero Tallado color Gris de 28 cm',NULL,0,11.88,5.12,17,31.96,0,5.1136,37.0736,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37199,'040402040276',5,4,1,13,'storage/files/importar_imagenes/040402040276.webp','0276','413-21007','000','Florero Tallado','Florero Tallado color Rosado de 15 cm',NULL,0,9.02,3.89,12.91,15.491999999999999,0,2.47872,17.97072,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37200,'040402040277',5,4,1,13,'storage/files/importar_imagenes/040402040277.webp','0277','413-21008','000','Florero Tallado','Florero Tallado color Rosado de 10 cm',NULL,0,3.53,1.52,5.05,6.06,0,0.9695999999999999,7.029599999999999,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37201,'040402040278',5,4,1,13,'storage/files/importar_imagenes/040402040278.webp','0278','413-21009','00','Florero Tallado','Florero Tallado color Rosado de 28 cm',NULL,0,11.88,5.12,17,23.8,0,3.808,27.608,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37202,'040402040279',5,4,1,13,'storage/files/importar_imagenes/040402040279.webp','0279','413-21015','','Florero','Florero color Gris de 29 cm',NULL,0,13.81,9.65,23.46,35.19,0,5.63,40.82,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37203,'040402040280',5,4,1,13,'storage/files/importar_imagenes/040402040280.webp','0280','413-21016','00','Florero','Florero color Gris de 24 cm',NULL,0,8.05,3.47,11.52,13.824,0,2.21184,16.03584,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37204,'040402040281',5,4,1,13,'storage/files/importar_imagenes/040402040281.webp','0281','413-21017','','Florero','Florero color Rosado de 29 cm',NULL,0,13.81,9.65,23.46,35.19,0,5.63,40.82,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37205,'040402040282',5,4,1,13,'storage/files/importar_imagenes/040402040282.webp','0282','413-21018','','Florero','Florero color Rosado de 24 cm',NULL,0,11.52,8.05,19.57,29.36,0,4.7,34.05,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37206,'040402040283',5,4,1,13,'storage/files/importar_imagenes/040402040283.webp','0283','428-3301409','','Florero','Florero color Negro - Dorado de 35 cm',NULL,0,9.8,3.26,13.06,24.5528,0,3.9284480000000004,28.481248,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37207,'040402040284',5,4,1,13,'storage/files/importar_imagenes/040402040284.webp','0284','428-3301410','','Florero','Florero color Negro - Dorado de 25 cm',NULL,0,6.18,2.06,8.24,15.4912,0,2.478592,17.969791999999998,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37208,'040402040285',5,4,1,13,'storage/files/importar_imagenes/040402040285.webp','0285','428-3301411','','Florero','Florero color Negro - Dorado de 17 cm',NULL,0,4.21,1.4,5.61,10.546800000000001,0,1.687488,12.234288000000001,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37209,'040402040286',5,4,1,13,'storage/files/importar_imagenes/040402040286.webp','0286','428-8801209','','Florero','Florero color Champagne de 23 cm',NULL,0,9.2,3.06,12.26,23.0488,0,3.687808,26.736608,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37210,'040402040287',5,4,1,13,'storage/files/importar_imagenes/040402040287.webp','0287','428-8801210','','Florero Metalizado','Florero Metalizado  color Champagne de 14 cm',NULL,0,6.79,2.26,9.05,17.014000000000003,0,2.7222400000000007,19.736240000000002,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37211,'040402040288',5,4,1,13,'storage/files/importar_imagenes/040402040288.webp','0288','440-080065','00','Florero Acanalado','Florero Acanalado color Blanco de 60 cm',NULL,0,102.3,71.49,173.79,260.68,0,41.71,302.39,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37212,'040402040289',5,4,1,13,'storage/files/importar_imagenes/040402040289.webp','0289','440-080066','00','Florero Acanalado','Florero Acanalado color Blanco de 90 cm',NULL,0,92.85,40.02,132.87,192.66,0,30.83,223.48,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37213,'040402040290',5,4,1,13,'storage/files/importar_imagenes/040402040290.webp','0290','440-080083','00','Florero Metalizado','Florero Metalizado color Champagne de 80 cm',NULL,0,64.89,27.97,92.86,139.29,0,22.29,161.58,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37214,'040402040291',5,4,1,13,'storage/files/importar_imagenes/040402040291.webp','0291','440-080084','00','Florero Metalizado','Florero Metalizado color Champagne de 64 cm',NULL,NULL,52.46,22.61,75.07,141.1316,0,22.581056,163.71265599999998,17,NULL,NULL,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37215,'040402040292',5,4,1,13,'storage/files/importar_imagenes/040402040292.webp','0292','442-48124','00','Florero','Florero color Dorado - Blanco de 30,5 cm',NULL,0,8.35,3.6,11.95,22.466,0,3.5945600000000004,26.060560000000002,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37216,'040402040293',5,4,1,13,'storage/files/importar_imagenes/040402040293.webp','0293','442-48125','00','Florero','Florero color Dorado - Negro de 23 cm',NULL,0,6.3,2.72,9.02,16.9576,0,2.713216,19.670816,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37217,'040402040294',5,4,1,13,'storage/files/importar_imagenes/040402040294.webp','0294','442-500280','000','Florero','Florero color Champagne - Negro de 25,5 cm',NULL,2022,5.58,4.02,9.6,13.44,0,2.1504,15.5904,17,NULL,3,1,1,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37218,'040402040295',5,4,1,13,'storage/files/importar_imagenes/040402040295.webp','0295','442-500281','000','Florero','Florero color Champagne - Negro de 27 cm',NULL,2022,11.3,59.48,70.78,84.936,0,13.58976,98.52576,17,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37219,'040402040296',5,4,1,13,'storage/files/importar_imagenes/040402040296.webp','0296','442-500282','000','Florero','Florero color Champagne - Negro de 20 cm',NULL,2022,8.35,32.5,40.85,76.798,0,12.28768,89.08568,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37220,'040402040297',5,4,1,13,'storage/files/importar_imagenes/040402040297.webp','0297','445-827725','000','Florero','Florero color Negro de 31 cm',NULL,0,8.05,3.47,11.52,21.6576,0,3.465216,25.122816,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37221,'040402040298',5,4,1,13,'storage/files/importar_imagenes/040402040298.webp','0298','445-827738','00','Florero','Florero color Negro de 32 cm',NULL,0,8.05,3.47,11.52,21.6576,0,3.465216,25.122816,17,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37222,'040402040299',5,4,1,13,'storage/files/importar_imagenes/040402040299.webp','0299','80681','746428000000','Jarron','Jarron color Transparente - Negro de 23 cm',NULL,0,10.9,7.62,18.52,27.78,0,4.44,32.22,15,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37223,'040402040300',5,4,1,13,'storage/files/importar_imagenes/040402040300.webp','0300','80681','746428000000','Jarron','Jarron color Transparente - Negro de 33 cm',NULL,0,15.66,10.94,26.6,39.91,0,6.38,46.29,15,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37224,'040402040301',5,4,1,13,'storage/files/importar_imagenes/040402040301.webp','0301','82051','746428000000','Jarrones Colgantes','Jarrones Colgantes color Marron de 23 cm',NULL,0,6.37,2.75,9.12,13.68,0,2.19,15.87,15,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37225,'040402040302',5,4,1,13,'storage/files/importar_imagenes/040402040302.webp','0302','82052','746428000000','Jarron Colgante','Jarron Colgante color Marron de 16 cm',NULL,0,7.07,4.94,12.01,18.02,0,2.88,20.9,15,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37226,'040402040303',5,4,1,13,'storage/files/importar_imagenes/040402040303.webp','0303','82053','746428000000','Jarrones Colgantes','Jarrones Colgantes color Marron de 18 cm',NULL,0,12.97,5.59,18.56,34.892799999999994,0,5.582847999999999,40.47564799999999,15,NULL,3,1,1,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37227,'040402040304',5,4,1,13,'storage/files/importar_imagenes/040402040304.webp','0304','82054','746428000000','Jarrones Colgantes','Jarrones Colgantes color Marron de 38 cm',NULL,0,18.17,7.83,26,48.879999999999995,0,7.820799999999999,56.700799999999994,15,NULL,3,1,1,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37228,'040402040305',5,4,1,13,'storage/files/importar_imagenes/040402040305.webp','0305','83934','746428000000','Jarron Degradado','Jarron Degradado color Dorado de 12 cm',NULL,NULL,7.02,3.03,10.05,18.894000000000002,0,3.0230400000000004,21.917040000000004,15,NULL,NULL,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37229,'040402040306',5,4,1,13,'storage/files/importar_imagenes/040402040306.webp','0306','XAC532-GY/SI','\'033849436129','Florero','Florero color Marrón de 16 CM',NULL,0,12.8,5.52,18.32,34.4416,0,5.510656,39.952256,2,NULL,3,1,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37230,'040402040307',5,4,1,13,'storage/files/importar_imagenes/040402040307.webp','0307','ACG148-TF/AT','\'033849816730','Florero Veteado','Florero Veteado color Champagne de 63 CM',NULL,NULL,48.85,18.49174089,67.34174089,126.60247287319999,0,20.256395659712,146.85886853291197,2,NULL,NULL,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37231,'040402040308',5,4,1,13,'storage/files/importar_imagenes/040402040308.webp','0308','ACT017-WH','\'033849784794','Florero','Florero color Blanco - Dorado de 35 CM',NULL,2021,38.35,26.8,65.15,97.72,0,15.64,113.36,2,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37232,'040402040309',5,4,1,13,'storage/files/importar_imagenes/040402040309.webp','0309','ACT018-WH','\'033849784756','Florero','Florero color Blanco - Dorado de 56 CM',NULL,2021,84.43,59,143.43,215.15,0,34.42,249.57,2,NULL,3,0,0,0,'2024-04-18 14:13:04','2024-04-18 14:13:04'),(37233,'040402040310',5,4,1,13,'storage/files/importar_imagenes/040402040310.webp','0310','ACT432-BK','\'033849806311','Florero','Florero color Negro de 73 CM',NULL,2021,72.5,27.44424185,99.94424185,139.92193859,0,22.3875101744,162.3094487644,2,NULL,3,0,1,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37234,'040402040311',5,4,1,13,'storage/files/importar_imagenes/040402040311.webp','0311','411-484726','','Florero','Florero color Verde de 17 cm',NULL,0,10.92,7.63,18.55,27.83,0,4.45,32.28,17,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37235,'040402040312',5,4,1,13,'storage/files/importar_imagenes/040402040312.webp','0312','411-484727','','Florero','Florero color Verde de 20 cm',NULL,0,15.14,10.58,25.72,38.58,0,6.17,44.75,17,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37236,'040402040313',5,4,1,13,'storage/files/importar_imagenes/040402040313.webp','0313','3905347','','Florero Cristal','Florero Cristal color Transparente - Champagne de 22,86 cm',NULL,0,12,5.17,17.17,32.2796,0,5.164736,37.444336,18,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37237,'040402040314',5,4,1,13,'storage/files/importar_imagenes/040402040314.webp','0314','3905348','','Florero Cristal','Florero Cristal color Transparente - Champagne de 15,24 cm',NULL,0,8.4,3.62,12.02,22.5976,0,3.615616,26.213216,18,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37238,'040402040315',5,4,1,13,'storage/files/importar_imagenes/040402040315.webp','0315','14275','','Florero Tubular','Florero Tubular color Plateado de 38,1 cm',NULL,0,14.24,9.95,24.19,36.29,0,5.81,42.09,36,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37239,'040402040316',5,4,1,13,'storage/files/importar_imagenes/040402040316.webp','0316','KE2216','0000','Maceta Pliegues','Maceta Pliegues color Dorado de  x 60 cm',NULL,NULL,89.1,40.1,129.2,193.79,0,31.01,224.7964,1,NULL,NULL,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37240,'040402040317',5,4,1,13,'storage/files/importar_imagenes/040402040317.webp','0317','KE2215','0000','Florero Pliegues','Florero Pliegues color Beige de 29 cm',NULL,2021,44.96,20.23,65.19,97.79,0,15.65,113.43,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37241,'040402040318',5,4,1,13,'storage/files/importar_imagenes/040402040318.webp','0318','KE2214','0000','Florero Pliegues','Florero Pliegues color Champagne de 19 cm',NULL,2021,17.96,8.08,26.04,39.06,0,6.25,45.31,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37242,'040402040319',5,4,1,13,'storage/files/importar_imagenes/040402040319.webp','0319','GH1157','0000','Florero Botella','Florero Botella color Blanco de 33 cm',NULL,2021,15.26,6.56,21.82,41.0216,0,6.563456,47.585056,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37243,'040402040320',5,4,1,13,'storage/files/importar_imagenes/040402040320.webp','0320','GH1165','0000','Florero Botella','Florero Botella color Blanco de 39 cm',NULL,2021,26.96,11.59,38.55,72.47399999999999,0,11.595839999999999,84.06983999999999,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37244,'040402040321',5,4,1,13,'storage/files/importar_imagenes/040402040321.webp','0321','GH1169','0000','Florero Botella','Florero Botella color Blanco de 49 cm',NULL,2021,55.35,23.8,79.15,110.81,0,17.7296,128.5396,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37245,'040402040322',5,4,1,13,'storage/files/importar_imagenes/040402040322.webp','0322','KE2171','0000','Florero Corteza','Florero Corteza color Dorado de 30 cm',NULL,2021,30.38,13.67,44.05,82.814,0,13.25024,96.06424,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37246,'040402040323',5,4,1,13,'storage/files/importar_imagenes/040402040323.webp','0323','GH1227','0000','Florero Metálico','Florero Metálico color Plateado de 51 cm',NULL,NULL,43.16,18.56,61.72,92.58,0,14.81,107.39,1,NULL,NULL,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37247,'040402040324',5,4,1,13,'storage/files/importar_imagenes/040402040324.webp','0324','GH1226','0000','Florero Metálico','Florero Metálico color Plateado de 40 cm',NULL,2021,23.22,9.98,33.2,49.81,0,7.97,57.78,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37248,'040402040325',5,4,1,13,'storage/files/importar_imagenes/040402040325.webp','0325','GH1229','0000','Florero Metálico','Florero Metálico color Plateado de 36 cm',NULL,NULL,43.65,18.77,62.42,93.63,0,14.98,108.61,1,NULL,NULL,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37249,'040402040326',5,4,1,13,'storage/files/importar_imagenes/040402040326.webp','0326','GH1228','0000','Florero Metálico','Florero Metálico color Plateado de 29 cm',NULL,2021,23.85,18.77,42.62,51.144,0,8.18304,59.32704,1,NULL,3,1,1,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37250,'040402060452',5,4,1,15,'storage/files/importar_imagenes/040402060452.webp','0452','GH120702','040402060452','Candelabro Acanalado','Candelabro Acanalado color Negro de 19 cm',NULL,2022,16.56,7.14,23.7,44.556,0,7.128959999999999,51.68496,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37251,'040402060450',5,4,1,15,'storage/files/importar_imagenes/040402060450.webp','0450','GH120602','040402060450','Candelabro Acanalado','Candelabro Acanalado color Negro de 15 cm',NULL,2022,10.71,4.62,15.33,28.8204,0,4.611264,33.431664,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37252,'040402040329',5,4,1,13,'storage/files/importar_imagenes/040402040329.webp','0329','GH1202','0000','Florero Botella','Florero Botella color Gris de 41 cm',NULL,2021,20.16,8.69,28.85,54.238,0,8.67808,62.91608,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37253,'040402040330',5,4,1,13,'storage/files/importar_imagenes/040402040330.webp','0330','GH1201','0000','Florero Botella','Florero Botella color Gris de 26 cm',NULL,2021,10.35,4.45,14.8,22.2,0,3.55,25.75,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37254,'040402040331',5,4,1,13,'storage/files/importar_imagenes/040402040331.webp','0331','KE2213','0000','Florero Copa','Florero Copa color Dorado de 38 cm',NULL,2021,49.5,22.28,71.78,114.848,0,18.37568,133.22368,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37255,'040402040332',5,4,1,13,'storage/files/importar_imagenes/040402040332.webp','0332','KE2212','0000','Florero Copa','Florero Copa color Dorado de 33 cm',NULL,2021,35.96,16.18,52.14,98.0232,0,15.683712000000002,113.706912,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37256,'040402060451',5,4,1,15,'storage/files/importar_imagenes/040402060451.webp','0451','GH120610','040402060451','Candelabro Acanalado','Candelabro Acanalado color Gris de 15 cm',NULL,2022,10.71,4.62,15.33,19.929,0,3.18864,23.11764,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37257,'040402060453',5,4,1,15,'storage/files/importar_imagenes/040402060453.webp','0453','GH120710','040402060453','Candelabro Acanalado','Candelabro Acanalado color Gris de 19 cm',NULL,2022,16.56,7.14,23.7,30.81,0,4.9296,35.7396,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37258,'040402040335',5,4,1,13,'storage/files/importar_imagenes/040402040335.webp','0335','GH1216','','Florero Hojas','Florero Hojas color Transparente - Plateado de 24 cm',NULL,0,13.95,6.01,19.96,29.94,0,4.79,34.73,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37259,'040402040336',5,4,1,13,'storage/files/importar_imagenes/040402040336.webp','0336','GV0244','','Florero Hojas','Florero Hojas color Transparente - Plateado de 12,7 cm',NULL,0,6.53,2.81,9.34,14.02,0,2.24,16.26,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37260,'040402040337',5,4,1,13,'storage/files/importar_imagenes/040402040337.webp','0337','GV024926','','Florero Hojas','Florero Hojas color Transparente - Plateado de 12,7 cm',NULL,0,6.66,2.521084838,9.181084838,17.26043949544,0,2.7616703192704,20.0221098147104,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37261,'040402040338',5,4,1,13,'storage/files/importar_imagenes/040402040338.webp','0338','GH122526','','Florero Hojas','Florero Hojas color Transparente - Plateado de 19 cm',NULL,0,10.58,4.004966604,14.5849666,27.419737208,0,4.38715795328,31.80689516128,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37262,'040402040339',5,4,1,13,'storage/files/importar_imagenes/040402040339.webp','0339','KE2197','0000','Florero Metálico','Florero Metálico color Dorado de 18 cm',NULL,2021,17.96,8.08,26.04,48.9552,0,7.832832,56.788032,1,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37263,'040402040340',5,4,1,13,'storage/files/importar_imagenes/040402040340.webp','0340','KE2198','0000','Florero Metálico','Florero Metálico color Dorado de 23 cm',NULL,2021,26.96,12.13,39.09,73.48920000000001,0,11.758272000000002,85.24747200000002,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37264,'040402040341',5,4,1,13,'storage/files/importar_imagenes/040402040341.webp','0341','KE2205','','Florero Circular','Florero Circular color Dorado - Plateado de 33 cm',NULL,0,67.5,29.09,96.59,144.89,0,23.18,168.07,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37265,'040402040342',5,4,1,13,'storage/files/importar_imagenes/040402040342.webp','0342','KE2203','','Florero Circular','Florero Circular color Dorado - Plateado de 17 cm',NULL,0,19.13,8.25,27.38,41.06,0,6.57,47.63,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37266,'040402040343',5,4,1,13,'storage/files/importar_imagenes/040402040343.webp','0343','KE2204','','Florero Circular','Florero Circular color Dorado - Plateado de 24 cm',NULL,0,39.38,16.97,56.35,84.53,0,13.52,98.05,1,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37267,'040402050001',5,4,1,14,'storage/files/importar_imagenes/040402050001.webp','0001','425-82244','7450110000000','Cojín','Cojín  color Dorado de 50 cm',NULL,0,8.18,5.72,13.9,26.132,0,4.18112,30.31312,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37268,'040402050002',5,4,1,14,'storage/files/importar_imagenes/040402050002.webp','0002','425-82245','7450110000000','Cojín','Cojín  color Dorado de 45 cm',NULL,0,9.18,6.42,15.6,29.328,0,4.69248,34.02048,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37269,'040402050003',5,4,1,14,'storage/files/importar_imagenes/040402050003.webp','0003','74681','746428000000','Cojín Cuadros','Cojín Cuadros color Blanco - Negro de 43,1 cm',NULL,0,19.26,13.46,32.72,61.5136,0,9.842176,71.35577599999999,15,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37270,'040402050004',5,4,1,14,'storage/files/importar_imagenes/040402050004.webp','0004','425-82247','7450110000000','Cojín franjas','Cojín franjas color Blanco - Negro de 45 cm',NULL,0,7.62,5.32,12.94,15.527999999999999,0,2.48448,18.01248,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37271,'040402050005',5,4,1,14,'storage/files/importar_imagenes/040402050005.webp','0005','425-96035','7450110000000','Cojín','Cojín color Gris de 45 cm',NULL,0,8.79,6.14,14.93,17.916,0,2.86656,20.78256,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37272,'040402050006',5,4,1,14,'storage/files/importar_imagenes/040402050006.webp','0006','425-96037','7450110000000','Cojín','Cojín color Blanco de 45 cm',NULL,0,8.79,6.14,14.93,28.068399999999997,0,4.490944,32.559343999999996,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37273,'040402050007',5,4,1,14,'storage/files/importar_imagenes/040402050007.webp','0007','427-14038','7450110000000','Cojín','Cojín color Dorado de 45 cm',NULL,NULL,9.78,6.83,16.61,19.932,0,3.18912,23.121119999999998,17,NULL,NULL,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37274,'040402050008',5,4,1,14,'storage/files/importar_imagenes/040402050008.webp','0008','427-14039','7450110000000','Cojín','Cojín color Dorado de 45 cm',NULL,0,10.08,7.04,17.12,20.544,0,3.28704,23.83104,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37275,'040402050009',5,4,1,14,'storage/files/importar_imagenes/040402050009.webp','0009','427-14055','7450110000000','Cojín','Cojín color Gris - Negro de 45 cm',NULL,0,12.21,8.53,20.74,38.99119999999999,0,6.238591999999999,45.22979199999999,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37276,'040402050010',5,4,1,14,'storage/files/importar_imagenes/040402050010.webp','0010','427-17011','7450110000000','Cojín','Cojín color Blanco de 45 cm',NULL,0,6.51,2.81,9.32,11.184,0,1.78944,12.97344,17,NULL,3,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37277,'040402050011',5,4,1,14,'storage/files/importar_imagenes/040402050011.webp','0011','427-17012','7450110000000','Cojín','Cojín color Dorado de 45 cm',NULL,NULL,9.32,6.51,15.83,18.996,0,3.03936,22.035359999999997,17,NULL,NULL,1,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37278,'040402050012',5,4,1,14,'storage/files/importar_imagenes/040402050012.webp','0012','L0064','798019000000','Cojín Plisado','Cojín Plisado color Beige de 56 cm',NULL,0,14.31,10,24.31,36.47,0,5.83,42.3,16,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37279,'040402050013',5,4,1,14,'storage/files/importar_imagenes/040402050013.webp','0013','L0064','798019000000','Cojín Plisado','Cojín Plisado color Gris de 56 cm',NULL,0,14.31,10,24.31,36.47,0,5.83,42.3,16,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37280,'040402050014',5,4,1,14,'storage/files/importar_imagenes/040402050014.webp','0014','L0064','798019000000','Cojín Plisado','Cojín Plisado color Lila de 56 cm',NULL,0,14.31,10,24.31,36.47,0,5.83,42.3,16,NULL,3,0,0,0,'2024-04-18 14:13:05','2024-04-18 14:13:05'),(37281,'040402050015',5,4,1,14,'storage/files/importar_imagenes/040402050015.webp','0015','PN754','798019000000','Cojín ondas de perlas','Cojín ondas de perlas color Verde - Dorado de 46 cm',NULL,0,78.71,55,133.71,200.57,0,32.09,232.66,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37282,'040402050016',5,4,1,14,'storage/files/importar_imagenes/040402050016.webp','0016','PN754','798019000000','Cojín ondas de perlas','Cojín ondas de perlas color Plateado - Gris de 46 cm',NULL,0,78.71,55,133.71,200.57,0,32.09,232.66,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37283,'040402050017',5,4,1,14,'storage/files/importar_imagenes/040402050017.webp','0017','DC017','708019000000','Cojín cinta metalizada','Cojín cinta metalizada color Marrón de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37284,'040402050018',5,4,1,14,'storage/files/importar_imagenes/040402050018.webp','0018','427-32004','7450110000000','Cojín','Cojín color Marrón de 45 cm',NULL,0,6.23,4.35,10.58,12.696,0,2.03136,14.72736,17,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37285,'040402050019',5,4,1,14,'storage/files/importar_imagenes/040402050019.webp','0019','427-32005','7450110000000','Cojín','Cojín color Anaranjado de 45 cm',NULL,0,6.23,4.35,10.58,12.696,0,2.03136,14.72736,17,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37286,'040402050020',5,4,1,14,'storage/files/importar_imagenes/040402050020.webp','0020','427-32006','7450110000000','Cojín','Cojín color Verde Agua de 45 cm',NULL,NULL,6.23,4.35,10.58,12.696,0,2.03136,14.72736,17,NULL,NULL,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37287,'040402050021',5,4,1,14,'storage/files/importar_imagenes/040402050021.webp','0021','DC017','798019000000','Cojín cinta metalizada','Cojín cinta metalizada color Beige de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37288,'040402050022',5,4,1,14,'storage/files/importar_imagenes/040402050022.webp','0022','DC017','798019000000','Cojín cinta metalizada','Cojín cinta metalizada color Azul Cerúleo de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37289,'040402050023',5,4,1,14,'storage/files/importar_imagenes/040402050023.webp','0023','425-82246','7450110000000','Cojín franjas','Cojín franjas color Blanco - Negro de 50 cm',NULL,0,6.77,4.73,11.5,13.799999999999999,0,2.2079999999999997,16.008,17,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37290,'040402050024',5,4,1,14,'storage/files/importar_imagenes/040402050024.webp','0024','449-254694','7450110000000','Cojín montaña','Cojín montaña color Dorado de 45 cm',NULL,0,11.82,8.26,20.08,37.7504,0,6.040064,43.790464,17,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37291,'040402050025',5,4,1,14,'storage/files/importar_imagenes/040402050025.webp','0025','MT24227','743903000000','Cojín helechos','Cojín helechos  color Azul Rey de 41 cm',NULL,0,21.09,14.74,35.83,39.413000000000004,0,6.306080000000001,45.719080000000005,19,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37292,'040402050026',5,4,1,14,'storage/files/importar_imagenes/040402050026.webp','0026','MT24227','','Cojín','Cojín color Azul Rey de 41 cm',NULL,0,21.09,14.74,35.83,39.413000000000004,0,6.306080000000001,45.719080000000005,19,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37293,'040402050027',5,4,1,14,'storage/files/importar_imagenes/040402050027.webp','0027','MT24228','743903000000','Cojín','Cojín color Amarillo de 41 cm',NULL,0,21.09,14.74,35.83,67.3604,0,10.777664,78.138064,19,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37294,'040402050028',5,4,1,14,'storage/files/importar_imagenes/040402050028.webp','0028','MT24229','743903000000','Cojín Helechos','Cojín Helechos color Verde - Blanco de 41 cm',NULL,0,20.48,14.31,34.79,41.748,0,6.67968,48.42768,19,NULL,3,1,1,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37295,'040402050029',5,4,1,14,'storage/files/importar_imagenes/040402050029.webp','0029','MT24229','','Cojín','Cojín color Verde - Blanco de 41 cm',NULL,0,20.48,14.31,34.79,65.4052,0,10.464832,75.870032,19,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37296,'040402050030',5,4,1,14,'storage/files/importar_imagenes/040402050030.webp','0030','MT24230','743903000000','Cojín','Cojín  color Verde Agua de 41 cm',NULL,0,22.02,15.39,37.41,39.2805,0,6.28488,45.56538,19,NULL,3,0,1,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37297,'040402050031',5,4,1,14,'storage/files/importar_imagenes/040402050031.webp','0031','MT24373','743903000000','Cojín mosaico','Cojín mosaico color Blanco - Azul Cielo de 46 cm',NULL,0,18.51,12.94,31.45,59.126,0,9.46016,68.58615999999999,19,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37298,'040402050032',5,4,1,14,'storage/files/importar_imagenes/040402050032.webp','0032','DC017','798019000000','Cojín cinta metalizada','Cojín cinta metalizada color Gris de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37299,'040402050033',5,4,1,14,'storage/files/importar_imagenes/040402050033.webp','0033','DC017','798019000000','Cojín cinta metalizada','Cojín cinta metalizada color Rosado de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37300,'040402050034',5,4,1,14,'storage/files/importar_imagenes/040402050034.webp','0034','DC017','798019000000','Cojín cinta metalizada','Cojín cinta metalizada color Plateado de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37301,'040402050035',5,4,1,14,'storage/files/importar_imagenes/040402050035.webp','0035','DC017','798019000000','Cojín cinta metalizada','Cojín cinta metalizada color Blanco de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37302,'040402050036',5,4,1,14,'storage/files/importar_imagenes/040402050036.webp','0036','DC122','798019000000','Cojín shag trenzado','Cojín shag trenzado color Beige de 50,8 cm',NULL,0,22.9,16,38.9,58.35,0,9.34,67.69,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37303,'040402050037',5,4,1,14,'storage/files/importar_imagenes/040402050037.webp','0037','DC827','798019000000','Cojín rayas tejidas','Cojín rayas tejidas color Rosado de 50,8 cm',NULL,0,25.76,18,43.76,82.2688,0,13.163008,95.431808,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37304,'040402050038',5,4,1,14,'storage/files/importar_imagenes/040402050038.webp','0038','E1339','798019000000','Cojín Encaje Diamante','Cojín Encaje Diamante color Beige de 46 cm',NULL,0,38.64,27,65.64,123.4032,0,19.744512,143.147712,16,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37305,'040402050039',5,4,1,14,'storage/files/importar_imagenes/040402050039.webp','0039','E5553','798019000000','Cojín Hojas Perlas','Cojín Hojas Perlas color Plateado de 50,8 cm',NULL,0,50.09,35,85.09,127.64,0,20.42,148.06,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37306,'040402050040',5,4,1,14,'storage/files/importar_imagenes/040402050040.webp','0040','E5553','798019000000','Cojín Hojas Perlas','Cojín Hojas Perlas color Plateado de 53 cm',NULL,NULL,50.09,35,85.09,127.64,0,20.42,148.06,16,NULL,NULL,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37307,'040402050041',5,4,1,14,'storage/files/importar_imagenes/040402050041.webp','0041','E5553','798019000000','Cojín Hojas Perlas','Cojín Hojas Perlas color Champagne de 53 cm',NULL,0,50.09,35,85.09,159.9692,0,25.595072000000002,185.56427200000002,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37308,'040402050042',5,4,1,14,'storage/files/importar_imagenes/040402050042.webp','0042','PN927','798019000000','Cojín parche lentejuelas','Cojín parche lentejuelas color Verde - Dorado de 46 cm',NULL,0,71.55,50,121.55,228.514,0,36.56224,265.07624,16,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37309,'040402050043',5,4,1,14,'storage/files/importar_imagenes/040402050043.webp','0043','PN927','798019000000','Cojín parche lentejuelas','Cojín parche lentejuelas color Plateado - Gris de 46 cm',NULL,0,71.55,50,121.55,182.33,0,29.17,211.5,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37310,'040402050044',5,4,1,14,'storage/files/importar_imagenes/040402050044.webp','0044','S2433','798019000000','Cojín gradiación','Cojín gradiación color Rosado de 50,8 cm',NULL,0,50.09,35,85.09,127.64,0,20.42,148.06,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37311,'040402050045',5,4,1,14,'storage/files/importar_imagenes/040402050045.webp','0045','S4288','798019000000','Cojín Ombre','Cojín Ombre color Gris de 50,8 cm',NULL,0,50.09,35,85.09,127.64,0,20.42,148.06,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37312,'040402050046',5,4,1,14,'storage/files/importar_imagenes/040402050046.webp','0046','S4293','798019000000','Cojín puntadas con diamante','Cojín puntadas con diamante color Rosado de 50,8 cm',NULL,0,50.09,35,85.09,159.9692,0,25.595072000000002,185.56427200000002,16,NULL,3,1,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37313,'040402050047',5,4,1,14,'storage/files/importar_imagenes/040402050047.webp','0047','SC105','798019000000','Cojin','Cojin color Beige de 46 cm',NULL,0,14.24,9.95,24.19,36.29,0,5.81,42.09,16,NULL,3,0,0,0,'2024-04-18 14:13:06','2024-04-18 14:13:06'),(37314,'040402050048',5,4,1,14,'storage/files/importar_imagenes/040402050048.webp','0048','TL004','798019000000','Cojín hilo','Cojín hilo color Beige de 50,8 cm',NULL,0,15.74,11,26.74,40.11,0,6.42,46.53,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37315,'040402050049',5,4,1,14,'storage/files/importar_imagenes/040402050049.webp','0049','TL004','798019000000','Cojín hilo','Cojín hilo color Beige de 50,8 cm',NULL,0,15.74,11,26.74,40.11,0,6.42,46.53,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37316,'040402050050',5,4,1,14,'storage/files/importar_imagenes/040402050050.webp','0050','TL004','798019000000','Cojín hilo','Cojín hilo color Gris de 50,8 cm',NULL,0,15.74,11,26.74,40.11,0,6.42,46.53,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37317,'040402050051',5,4,1,14,'storage/files/importar_imagenes/040402050051.webp','0051','TR011','798019000000','Cojín ilusión shag','Cojín ilusión shag color Gris de 51 cm',NULL,0,17.89,12.5,30.39,45.59,0,7.29,52.88,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37318,'040402050052',5,4,1,14,'storage/files/importar_imagenes/040402050052.webp','0052','TR011','798019000000','Cojín ilusión shag','Cojín ilusión shag color Lila de 51 cm',NULL,0,17.89,12.5,30.39,45.59,0,7.29,52.88,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37319,'040402050053',5,4,1,14,'storage/files/importar_imagenes/040402050053.webp','0053','TR011','798019000000','Cojín ilusión shag','Cojín ilusión shag color Rojo - Plateado de 51 cm',NULL,0,17.89,12.5,30.39,45.59,0,7.29,52.88,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37320,'040402050054',5,4,1,14,'storage/files/importar_imagenes/040402050054.webp','0054','TR011','798019000000','Cojín ilusión shag','Cojín ilusión shag color Rosado de 51 cm',NULL,0,17.89,12.5,30.39,45.59,0,7.29,52.88,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37321,'040402050055',5,4,1,14,'storage/files/importar_imagenes/040402050055.webp','0055','VV021','798019000000','Cojín','Cojín color Rosado de 56 cm',NULL,0,12.88,9,21.88,32.82,0,5.25,38.07,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37322,'040402050056',5,4,1,14,'storage/files/importar_imagenes/040402050056.webp','0056','VV021','798019000000','Cojín','Cojín color Beige de 56 cm',NULL,0,12.88,9,21.88,32.82,0,5.25,38.07,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37323,'040402050057',5,4,1,14,'storage/files/importar_imagenes/040402050057.webp','0057','VV021','798019000000','Cojín','Cojín color Gris de 76 cm',NULL,0,12.88,9,21.88,32.82,0,5.25,38.07,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37324,'040402050058',5,4,1,14,'storage/files/importar_imagenes/040402050058.webp','0058','VV021','798019000000','Cojín','Cojín color Beige de 56 cm',NULL,0,12.88,9,21.88,32.82,0,5.25,38.07,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37325,'040402050059',5,4,1,14,'storage/files/importar_imagenes/040402050059.webp','0059','VV201','798019000000','Cojín de lentejuelas','Cojín de lentejuelas color Plateado - Blanco de 50,8 cm',NULL,0,17.17,12,29.17,43.75,0,7,50.75,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37326,'040402050060',5,4,1,14,'storage/files/importar_imagenes/040402050060.webp','0060','YS101','798019000000','Cojín terciopelo brillo','Cojín terciopelo brillo color Plateado de 51 cm',NULL,0,96.16,67.2,163.36,245.04,0,39.21,284.24,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37327,'040402050061',5,4,1,14,'storage/files/importar_imagenes/040402050061.webp','0061','YS101','798019000000','Cojín terciopelo sofía','Cojín terciopelo sofía color Beige de 50,8 cm',NULL,0,45.79,32,77.79,116.68,0,18.67,135.35,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37328,'040402050062',5,4,1,14,'storage/files/importar_imagenes/040402050062.webp','0062','YS102','798019000000','Cojín terciopelo sofía','Cojín terciopelo sofía color Blanco de 50,8 cm',NULL,0,35.78,25,60.78,91.18,0,14.59,105.76,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37329,'040402050063',5,4,1,14,'storage/files/importar_imagenes/040402050063.webp','0063','YS103','798019000000','Cojín esponja sofía','Cojín esponja sofía color Vinotinto de 50,8 cm',NULL,0,57.24,40,97.24,182.81119999999999,0,29.249792,212.060992,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37330,'040402050064',5,4,1,14,'storage/files/importar_imagenes/040402050064.webp','0064','YS103','798019000000','Cojín esponja sofía','Cojín esponja sofía color Gris de 50,8 cm',NULL,0,57.24,40,97.24,182.81119999999999,0,29.249792,212.060992,16,NULL,3,0,1,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37331,'040402050065',5,4,1,14,'storage/files/importar_imagenes/040402050065.webp','0065','YS103','798019000000','Cojín esponja sofía','Cojín esponja sofía color Gris de 50,8 cm',NULL,0,57.24,40,97.24,145.86,0,23.34,169.2,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37332,'040402050066',5,4,1,14,'storage/files/importar_imagenes/040402050066.webp','0066','YS103','798019000000','Cojín esponja sofía','Cojín esponja sofía color Beige de 50,8 cm',NULL,0,57.24,40,97.24,145.86,0,23.34,169.2,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37333,'040402050067',5,4,1,14,'storage/files/importar_imagenes/040402050067.webp','0067','YS103','798019000000','Cojín esponja sofía','Cojín esponja sofía color Anaranjado de 50,8 cm',NULL,0,57.24,40,97.24,145.86,0,23.34,169.2,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37334,'040402050068',5,4,1,14,'storage/files/importar_imagenes/040402050068.webp','0068','Z9010','798019000000','Cojín rayas luminosas','Cojín rayas luminosas color Gris de 35 cm',NULL,0,42.93,30,72.93,109.4,0,17.5,126.9,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37335,'040402050069',5,4,1,14,'storage/files/importar_imagenes/040402050069.webp','0069','74682','746428000000','Cojín Franjas','Cojín Franjas color Blanco - Negro de 43,1 cm',NULL,2021,14.24,6.1232,20.3632,28.50848,0,4.5613568,33.0698368,15,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37336,'040402050070',5,4,1,14,'storage/files/importar_imagenes/040402050070.webp','0070','74683','746428000000','Conjín Franjas','Conjín Franjas color Blanco - Negro de 43,1 cm',NULL,2021,16.67,7.1681,23.8381,44.815628000000004,0,7.170500480000001,51.986128480000005,15,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37337,'040402050071',5,4,1,14,'storage/files/importar_imagenes/040402050071.webp','0071','74691','746428000000','Cojín','Cojín color Beige de 43,1 cm',NULL,0,15.67,10.95,26.62,50.0456,0,8.007296,58.052896000000004,15,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37338,'040402050072',5,4,1,14,'storage/files/importar_imagenes/040402050072.webp','0072','78697','746428000000','Cojín Prisma','Cojín Prisma color Blanco de 44,4 cm',NULL,0,16,11.18,27.18,40.77,0,6.52,47.29,15,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37339,'040402050073',5,4,1,14,'storage/files/importar_imagenes/040402050073.webp','0073','78697','','Cojín Prisma','Cojín Prisma color Gris de 44,4 cm',NULL,0,16,11.18,27.18,40.77,0,6.52,47.29,15,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37340,'040402050074',5,4,1,14,'storage/files/importar_imagenes/040402050074.webp','0074','81411','746428000000','Cojín','Cojín color Vinotinto de 38,1 cm',NULL,0,11.86,8.29,20.15,30.22,0,4.84,35.06,15,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37341,'040402050075',5,4,1,14,'storage/files/importar_imagenes/040402050075.webp','0075','81412','746428000000','Cojín','Cojín color Verde Ingles de 40,6 cm',NULL,0,12.38,8.65,21.03,31.55,0,5.05,36.59,15,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37342,'040402050076',5,4,1,14,'storage/files/importar_imagenes/040402050076.webp','0076','FL200','798019000000','Manta Sofá','Manta Sofá color Beige de 152 cm',NULL,0,61.53,43,104.53,146.342,0,23.41472,169.75672,16,NULL,3,1,1,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37343,'040402050079',5,4,1,14,'storage/files/importar_imagenes/040402050079.webp','0079','426-66071','7450110000000','Manta Sofá','Manta Sofá color Beige de 152 cm',NULL,0,16.74,11.7,28.44,34.128,0,5.4604800000000004,39.588480000000004,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37344,'040402050080',5,4,1,14,'storage/files/importar_imagenes/040402050080.webp','0080','426-66081','7450110000000','Manta Sofá','Manta Sofá color Blanco de 152 cm',NULL,0,14.82,10.36,25.18,37.76,0,6.04,43.81,17,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37345,'040402050081',5,4,1,14,'storage/files/importar_imagenes/040402050081.webp','0081','426-66084','7450110000000','Manta Sofá','Manta Sofá color Gris de 152 cm',NULL,0,17.24,12.05,29.29,35.147999999999996,0,5.623679999999999,40.771679999999996,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37346,'040402050082',5,4,1,14,'storage/files/importar_imagenes/040402050082.webp','0082','MT24739','743903000000','Cojín Mariposa','Cojín Mariposa color BLANCO - AZUL CIELO de 46 cm',NULL,0,22.82,15.95,38.77,72.8876,0,11.662016000000001,84.54961600000001,19,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37347,'040402050083',5,4,1,14,'storage/files/importar_imagenes/040402050083.webp','0083','N9501','798019000000','Manta Sofá','Manta Sofá color Blanco de 178 cm',NULL,0,64.4,45,109.4,164.11,0,26.26,190.36,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37348,'040402050084',5,4,1,14,'storage/files/importar_imagenes/040402050084.webp','0084','N9551','798019000000','Manta Sofá','Manta Sofá color Verde Ingles de 178 cm',NULL,0,107.33,75,182.33,342.7804,0,54.844864,397.625264,16,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37349,'040402050085',5,4,1,14,'storage/files/importar_imagenes/040402050085.webp','0085','MT24743','743903000000','Cojín Mariposa','Cojín Mariposa color AZUL REY de 46 cm',NULL,0,21.01,14.68,35.69,67.0972,0,10.735552,77.832752,19,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37350,'040402050086',5,4,1,14,'storage/files/importar_imagenes/040402050086.webp','0086','MT24743','','Cojín Mariposa','Cojín Mariposa color FUCSIA de 46 cm',NULL,0,21.01,14.68,35.69,67.0972,0,10.735552,77.832752,19,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37351,'040402050087',5,4,1,14,'storage/files/importar_imagenes/040402050087.webp','0087','MT24733','743903000000','Cojín Phalenopsis','Cojín Phalenopsis color Lila de 46 cm',NULL,0,21.08,14.73,35.81,67.3228,0,10.771648,78.094448,19,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37352,'040402050094',5,4,1,14,'storage/files/importar_imagenes/040402050094.webp','0094','81417','746428000000','Cojín','Cojín color Blanco de 43 cm',NULL,0,9.48,4.74,14.22,15.642000000000001,0,2.50272,18.14472,15,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37353,'040402050096',5,4,1,14,'storage/files/importar_imagenes/040402050096.webp','0096','170-3000065','7450110000000','Cojín Mosaico','Cojín Mosaico color Oro Rosado de 50 cm',NULL,0,9.92,4.96,14.88,17.856,0,2.8569600000000004,20.712960000000002,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37354,'040402050097',5,4,1,14,'storage/files/importar_imagenes/040402050097.webp','0097','170-3000064','7450110000000','Cojín Thankful','Cojín Thankful color Dorado - Beige de 50 cm',NULL,0,7.71,3.86,11.57,13.884,0,2.2214400000000003,16.10544,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37355,'040402050098',5,4,1,14,'storage/files/importar_imagenes/040402050098.webp','0098','170-3000066','7450110000000','Cojín Mosaico','Cojín Mosaico color Plateado de 50 cm',NULL,0,9.92,4.96,14.88,17.856,0,2.8569600000000004,20.712960000000002,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37356,'040402050099',5,4,1,14,'storage/files/importar_imagenes/040402050099.webp','0099','427-32003','','Cojín Rayas','Cojín Rayas color Marrón - Azul Rey - Beige de 45 cm',NULL,0,6.51,4.55,11.06,13.272,0,2.12352,15.395520000000001,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37357,'040402050100',5,4,1,14,'storage/files/importar_imagenes/040402050100.webp','0100','427-5200030','7450110000000','Cojín Tejido','Cojín Tejido color Verde Agua de 30cm',NULL,0,10.34,4.45,14.79,17.747999999999998,0,2.8396799999999995,20.58768,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37358,'040402050101',5,4,1,14,'storage/files/importar_imagenes/040402050101.webp','0101','427-5200036','7450110000000','Cojín Tejido','Cojín Tejido color Verde Menta de 45 cm',NULL,0,18.26,12.76,31.02,37.224,0,5.955839999999999,43.17984,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37359,'040402050102',5,4,1,14,'storage/files/importar_imagenes/040402050102.webp','0102','427-5200040','7450110000000','Cojín Tejido','Cojín Tejido color Beige de 45 cm',NULL,2021,12.17,8.5,20.67,31.01,0,4.96,35.97,17,NULL,3,0,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37360,'040402050103',5,4,1,14,'storage/files/importar_imagenes/040402050103.webp','0103','427-2101945','7450110000000','Cojín','Cojín color Gris de 45 cm',NULL,NULL,9.19,4.6,13.79,17.93,0,2.87,20.8,17,NULL,NULL,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37361,'040402050104',5,4,1,14,'storage/files/importar_imagenes/040402050104.webp','0104','427-2101947','7450110000000','Cojín','Cojín color Blanco de 45 cm',NULL,NULL,9.64,4.15,13.79,16.548,0,2.64768,19.19568,17,NULL,NULL,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37362,'040402050105',5,4,1,14,'storage/files/importar_imagenes/040402050105.webp','0105','427-2101949','7450110000000','Cojín Tejido','Cojín Tejido color Gris de 45 cm',NULL,0,9.19,4.6,13.79,16.548,0,2.64768,19.19568,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37363,'040402050106',5,4,1,14,'storage/files/importar_imagenes/040402050106.webp','0106','427-2101951','7450110000000','Cojín Tejido','Cojín Tejido color Blanco de 45 cm',NULL,0,9.64,4.15,13.79,20.69,0,3.31,23.99,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37364,'040402050107',5,4,1,14,'storage/files/importar_imagenes/040402050107.webp','0107','427-2101953','7450110000000','Cojín Tejido','Cojín Tejido color Gris de 45cm',NULL,2021,9.64,4.15,13.79,16.548,0,2.64768,19.19568,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37365,'040402050108',5,4,1,14,'storage/files/importar_imagenes/040402050108.webp','0108','427-2101959','7450110000000','Cojín Tejido','Cojín Tejido color Blanco de 45cm',NULL,2021,9.64,4.15,13.79,16.548,0,2.64768,19.19568,17,NULL,3,1,0,0,'2024-04-18 14:13:07','2024-04-18 14:13:07'),(37366,'040402050109',5,4,1,14,'storage/files/importar_imagenes/040402050109.webp','0109','170-3000063','7450110000000','Cojín Mosaico','Cojín Mosaico color Dorado - Beige de 50 cm',NULL,0,9.28,4.64,13.92,16.704,0,2.6726400000000003,19.376640000000002,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37367,'040402050110',5,4,1,14,'storage/files/importar_imagenes/040402050110.webp','0110','425-79072','00','Cojín Elegante','Cojín Elegante color Blanco - Dorado - Negro de 50 cm',NULL,0,8.83,6.17,15,18,0,2.88,20.88,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37368,'040402050111',5,4,1,14,'storage/files/importar_imagenes/040402050111.webp','0111','425-79093','00','Cojín','Cojín color Negro de 45 cm',NULL,0,6.4,2.23,8.63,10.356,0,1.65696,12.01296,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37369,'040402050112',5,4,1,14,'storage/files/importar_imagenes/040402050112.webp','0112','425-79094','00','Cojín','Cojín color Negro de 50 cm',NULL,0,5.73,2,7.73,9.276,0,1.48416,10.760159999999999,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37370,'040402050113',5,4,1,14,'storage/files/importar_imagenes/040402050113.webp','0113','425-79095','00','Cojín','Cojín color Blanco de 45 cm',NULL,0,6.4,2.76,9.16,10.991999999999999,0,1.7587199999999998,12.75072,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37371,'040402050114',5,4,1,14,'storage/files/importar_imagenes/040402050114.webp','0114','425-79096','00','Cojín','Cojín color Blanco de 50 cm',NULL,0,5.73,2,7.73,9.276,0,1.48416,10.760159999999999,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37372,'040402050115',5,4,1,14,'storage/files/importar_imagenes/040402050115.webp','0115','426-66145','','Manta Tejida','Manta Tejida color Rojo de 152 cm',NULL,0,12.74,5.49,18.23,27.35,0,4.38,31.72,17,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37373,'040402050116',5,4,1,14,'storage/files/importar_imagenes/040402050116.webp','0116','426-66154','','Manta Tejida','Manta Tejida color Beige de 152 cm',NULL,0,12.42,4.32,16.74,24.27,0,3.88,28.16,17,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37374,'040402050117',5,4,1,14,'storage/files/importar_imagenes/040402050117.webp','0117','426-66157','040402050117','Manta Tejido Puntos','Manta Tejido Puntos color Rojo de 152 cm',NULL,NULL,12.42,5.35,17.77,26.66,0,4.26,30.92,17,NULL,NULL,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37375,'040402050118',5,4,1,14,'storage/files/importar_imagenes/040402050118.webp','0118','427-14049','00','Cojín Love','Cojín Love color Blanco - Rojo de 45 cm',NULL,0,8.59,3.7,12.29,23.105199999999996,0,3.6968319999999997,26.802031999999997,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37376,'040402050119',5,4,1,14,'storage/files/importar_imagenes/040402050119.webp','0119','427-27053','00','Cojín Acanalado','Cojín Acanalado color Rojo de 45 cm',NULL,0,8.15,2.84,10.99,15.94,0,2.55,18.49,17,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37377,'040402050120',5,4,1,14,'storage/files/importar_imagenes/040402050120.webp','0120','449-255158','00','Cojín Acanalado','Cojín Acanalado color Blanco de 45 cm',NULL,0,7.6,2.65,10.25,19.27,0,3.0832,22.3532,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37378,'040402050121',5,4,1,14,'storage/files/importar_imagenes/040402050121.webp','0121','449-255163','000','Cojín','Cojín color Blanco de 45 cm',NULL,2022,8.23,4.02,12.25,23.03,0,3.6848,26.7148,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37379,'040402050122',5,4,1,14,'storage/files/importar_imagenes/040402050122.webp','0122','449-255450','00','Cojín Style Dog','Cojín Style Dog color Multicolor de 45 cm',NULL,0,6.05,2.61,8.66,12.99,0,2.08,15.07,17,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37380,'040402050123',5,4,1,14,'storage/files/importar_imagenes/040402050123.webp','0123','449-255453','000','Cojín Dog','Cojín Dog color Multicolor de 45 cm',NULL,0,6.05,2.61,8.66,12.99,0,2.08,15.07,17,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37381,'040402050124',5,4,1,14,'storage/files/importar_imagenes/040402050124.webp','0124','449-255455','000','Cojín Cat','Cojín Cat color Multicolor de 45 cm',NULL,0,6.05,2.61,8.66,12.99,0,2.08,15.07,17,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37382,'040402050125',5,4,1,14,'storage/files/importar_imagenes/040402050125.webp','0125','83606','746428000000','Cojin','Cojin color Blanco de 40 cm',NULL,0,11.41,4.92,16.33,30.700399999999995,0,4.912063999999999,35.612463999999996,15,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37383,'040402050126',5,4,1,14,'storage/files/importar_imagenes/040402050126.webp','0126','83607','746428000000','Cojin','Cojin color Beige de 40 cm',NULL,0,11.41,4.92,16.33,30.700399999999995,0,4.912063999999999,35.612463999999996,15,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37384,'040402050127',5,4,1,14,'storage/files/importar_imagenes/040402050127.webp','0127','83650','746428000000','Cojin Tejido','Cojin Tejido color Rojo de 51 cm',NULL,0,20.64,8.9,29.54,44.31,0,7.09,51.4,15,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37385,'040402050128',5,4,1,14,'storage/files/importar_imagenes/040402050128.webp','0128','170-7200041','00','Cojín Lineal','Cojín Lineal color Azul de 45 cm',NULL,2021,8.41,12.09,20.5,38.54,0,6.1664,44.7064,17,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37386,'040402050129',5,4,1,14,'storage/files/importar_imagenes/040402050129.webp','0129','170-7200042','00','Cojín Lineal','Cojín Lineal color Azul de 45 cm',NULL,2021,7.29,10.48,17.77,33.4076,0,5.345216000000001,38.752816,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37387,'040402050130',5,4,1,14,'storage/files/importar_imagenes/040402050130.webp','0130','425-79071','00','Cojin Elegante','Cojin Elegante color Blanco - Dorado - Negro de 45 cm',NULL,0,6.85,2.95,9.8,11.76,0,1.8816,13.6416,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37388,'040402050131',5,4,1,14,'storage/files/importar_imagenes/040402050131.webp','0131','83414','','Cojin Cinta Borlas','Cojin Cinta Borlas color Gris de 50,8 cm',NULL,0,17.17,12,29.17,43.75,0,7,50.75,36,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37389,'040402050132',5,4,1,14,'storage/files/importar_imagenes/040402050132.webp','0132','83424','','Cojin Cinta Borlas','Cojin Cinta Borlas color Beige de 50,8 cm',NULL,0,17.17,12,29.17,43.75,0,7,50.75,36,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37390,'040402060001',5,4,1,15,'storage/files/importar_imagenes/040402060001.webp','0001','412-732913','7450110000000','Candelabro','Candelabro color Azul Cielo de 43 cm',NULL,0,16.85,11.77,28.62,53.8056,0,8.608896,62.414496,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37391,'040402060002',5,4,1,15,'storage/files/importar_imagenes/040402060002.webp','0002','412-732914','7450110000000','candelabro','candelabro color Blanco de 43 cm',NULL,0,16.85,11.77,28.62,53.8056,0,8.608896,62.414496,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37392,'040402060003',5,4,1,15,'storage/files/importar_imagenes/040402060003.webp','0003','412-732916','7450110000000','Candelabro','Candelabro color Azul Cielo de 32 cm',NULL,0,14.43,10.08,24.51,46.0788,0,7.3726080000000005,53.451408,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37393,'040402060004',5,4,1,15,'storage/files/importar_imagenes/040402060004.webp','0004','412-732917','7450110000000','Candelabro','Candelabro color Blanco de 32 cm',NULL,0,14.66,10.24,24.9,46.812,0,7.48992,54.301919999999996,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37394,'040402060005',5,4,1,15,'storage/files/importar_imagenes/040402060005.webp','0005','AAN037-BK/GO','33849562118','Candelabro','Candelabro color Transparente de 57 cm',NULL,0,22.11,15.45,37.56,70.61280000000001,0,11.298048000000001,81.91084800000002,2,NULL,3,1,1,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37395,'040402060006',5,4,1,15,'storage/files/importar_imagenes/040402060006.webp','0006','AAN038-BK/GO','33849562125','Candelabro','Candelabro color Transparente de 78 cm',NULL,0,27.69,19.35,47.04,88.43520000000001,0,14.149632000000002,102.584832,2,NULL,3,1,1,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37396,'040402060007',5,4,1,15,'storage/files/importar_imagenes/040402060007.webp','0007','AC034130','885674000000','Candelabro Rama','Candelabro Rama color Dorado de 108 cm',NULL,0,98.1,42.28,140.38,263.9144,0,42.226304,306.140704,1,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37397,'040402060008',5,4,1,15,'storage/files/importar_imagenes/040402060008.webp','0008','AC0343','885674000000','Candelabro','Candelabro color Dorado - Bronce - Negro de 18,4 cm',NULL,0,17.96,7.74,25.7,48.316,0,7.7305600000000005,56.04656,1,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37398,'040402060009',5,4,1,15,'storage/files/importar_imagenes/040402060009.webp','0009','AC0344','885674000000','Candelabro','Candelabro color Dorado - Bronce - Negro de 26 cm',NULL,NULL,39.15,16.87,56.02,105.32,0,16.9,122.17,1,NULL,NULL,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37399,'040402060010',5,4,1,15,'storage/files/importar_imagenes/040402060010.webp','0010','AC0391','885674000000','Candelabro','Candelabro color Dorado - Plateado de 33 cm',NULL,0,16.65,7.18,23.83,44.800399999999996,0,7.168063999999999,51.968464,1,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37400,'040402060011',5,4,1,15,'storage/files/importar_imagenes/040402060011.webp','0011','AC0392','885674000000','Candelabro','Candelabro color Dorado - Plateado de 40 cm',NULL,0,35.55,15.32,50.87,95.6356,0,15.301696,110.937296,1,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37401,'040402060012',5,4,1,15,'storage/files/importar_imagenes/040402060012.webp','0012','AC041639','885674000000','Candelabro Cúpula','Candelabro Cúpula color Plateado de 37 cm',NULL,0,71.96,31.01,102.97,193.5836,0,30.973376,224.556976,1,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37402,'040402060013',5,4,1,15,'storage/files/importar_imagenes/040402060013.webp','0013','ACG060-CW/GO','33849800876','Candelabro Vidrio','Candelabro Vidrio color Dorado - Transparente de 31 cm',NULL,2021,30.34,21.2,51.54,77.31,0,12.37,89.68,2,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37403,'040402060014',5,4,1,15,'storage/files/importar_imagenes/040402060014.webp','0014','ACG203-CW/GO','\'033849945058','Candelabro Vidrio','Candelabro Vidrio color Dorado - Transparente de 40 cm',NULL,2021,22.75,9.78,32.53,45.542,0,7.28672,52.82872,2,NULL,3,1,1,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37404,'040402060015',5,4,1,15,'storage/files/importar_imagenes/040402060015.webp','0015','MT23665','743903000000','Candelabro','Candelabro color Blanco de 41 cm',NULL,0,19.23,13.44,32.67,61.4196,0,9.827136000000001,71.246736,19,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37405,'040402060016',5,4,1,15,'storage/files/importar_imagenes/040402060016.webp','0016','541-432092','7450110000000','Candelabro','Candelabro color Plateado de 47,5 cm',NULL,0,18.93,13.23,32.16,48.24,0,7.72,55.96,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37406,'040402060017',5,4,1,15,'storage/files/importar_imagenes/040402060017.webp','0017','541-432093','7450110000000','Candelabro','Candelabro color Beige de 57 cm',NULL,0,21.68,15.15,36.83,44.196,0,7.071359999999999,51.26736,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37407,'040402060018',5,4,1,15,'storage/files/importar_imagenes/040402060018.webp','0018','541-432094','7450110000000','Candelabro','Candelabro color Beige de 47,5 cm',NULL,0,18.93,13.23,32.16,38.59199999999999,0,6.174719999999999,44.76671999999999,17,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37408,'040402060019',5,4,1,15,'storage/files/importar_imagenes/040402060019.webp','0019','541-432095','7450110000000','Candelabro','Candelabro color Negro de 57 cm',NULL,NULL,21.68,15.15,36.83,69.2404,0,11.078463999999999,80.31886399999999,17,NULL,NULL,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37409,'040402060020',5,4,1,15,'storage/files/importar_imagenes/040402060020.webp','0020','541-432096','7450110000000','Candelabro','Candelabro color Negro de 47,5 cm',NULL,NULL,18.93,13.23,32.16,60.46079999999999,0,9.673727999999999,70.13452799999999,17,NULL,NULL,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37410,'040402060021',5,4,1,15,'storage/files/importar_imagenes/040402060021.webp','0021','MT23665','743903000000','Candelabro','Candelabro color Azul Cerúleo de 41 cm',NULL,0,19.23,13.44,32.67,61.4196,0,9.827136000000001,71.246736,19,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37411,'040402060022',5,4,1,15,'storage/files/importar_imagenes/040402060022.webp','0022','MT23677','743903000000','Candelabro','Candelabro color Beige de 25,4 cm',NULL,0,11.21,7.83,19.04,20.944,0,3.35104,24.29504,19,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37412,'040402060023',5,4,1,15,'storage/files/importar_imagenes/040402060023.webp','0023','MT23678','743903000000','Candelabro','Candelabro color Beige de 36 cm',NULL,0,16.07,11.23,27.3,30.030000000000005,0,4.804800000000001,34.83480000000001,19,NULL,3,1,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37413,'040402060024',5,4,1,15,'storage/files/importar_imagenes/040402060024.webp','0024','MT24350','743903000000','Candelabro Mosaico','Candelabro Mosaico color Blanco - Azul Cielo de 30,5 cm',NULL,0,15.36,10.73,26.09,39.14,0,6.26,45.4,19,NULL,3,0,0,0,'2024-04-18 14:13:08','2024-04-18 14:13:08'),(37414,'040402060025',5,4,1,15,'storage/files/importar_imagenes/040402060025.webp','0025','200-1400020','7450110000000','Candelabro metalizado','Candelabro metalizado color Plateado de 52 cm',NULL,0,10.32,5.16,15.48,18.576,0,2.97216,21.54816,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37415,'040402060026',5,4,1,15,'storage/files/importar_imagenes/040402060026.webp','0026','MT24351','743903000000','Candelabro mosaico','Candelabro mosaico color Blanco - Azul Cielo de 38,1 cm',NULL,0,16.4,11.46,27.86,41.79,0,6.69,48.48,19,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37416,'040402060027',5,4,1,15,'storage/files/importar_imagenes/040402060027.webp','0027','541-432091','7450110000000','Candelabro','Candelabro color Plateado de 57 cm',NULL,0,21.68,15.15,36.83,69.2404,0,11.078463999999999,80.31886399999999,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37417,'040402060028',5,4,1,15,'storage/files/importar_imagenes/040402060028.webp','0028','200-1400023','7450110000000','Candelabro metalizado','Candelabro metalizado color Dorado de 41 cm',NULL,0,7.49,3.75,11.24,13.488,0,2.15808,15.64608,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37418,'040402060029',5,4,1,15,'storage/files/importar_imagenes/040402060029.webp','0029','200-1400024','7450110000000','Candelabro metalizado','Candelabro metalizado color Plateado de 32 cm',NULL,0,4.84,2.42,7.26,8.712,0,1.39392,10.10592,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37419,'040402060030',5,4,1,15,'storage/files/importar_imagenes/040402060030.webp','0030','200-1400025','7450110000000','Candelabro metalizado','Candelabro metalizado color Dorado de 32 cm',NULL,0,4.84,2.42,7.26,8.712,0,1.39392,10.10592,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37420,'040402060031',5,4,1,15,'storage/files/importar_imagenes/040402060031.webp','0031','72106','746428000000','Candelabro Madera','Candelabro Madera color Dorado de 32 cm',NULL,0,19.5,13.63,33.13,36.443000000000005,0,5.8308800000000005,42.273880000000005,15,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37421,'040402060032',5,4,1,15,'storage/files/importar_imagenes/040402060032.webp','0032','200-5500013','7450110000000','Candelabro base madera','Candelabro base madera color Vinotinto de 27 cm',NULL,0,9.1,4.55,13.65,16.38,0,2.6208,19.000799999999998,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37422,'040402060033',5,4,1,15,'storage/files/importar_imagenes/040402060033.webp','0033','200-5500014','7450110000000','Candelabro base madera','Candelabro base madera color Beige de 24 cm',NULL,0,6.77,3.39,10.16,12.192,0,1.95072,14.14272,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37423,'040402060034',5,4,1,15,'storage/files/importar_imagenes/040402060034.webp','0034','200-5500016','7450110000000','Candelabro base madera','Candelabro base madera color Vinotinto de 24 cm',NULL,0,7.44,3.72,11.16,13.392,0,2.14272,15.53472,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37424,'040402060035',5,4,1,15,'storage/files/importar_imagenes/040402060035.webp','0035','200-5500018','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Rojo de 44 cm',NULL,2021,10.56,5.28,15.84,19.008,0,3.04128,22.04928,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37425,'040402060036',5,4,1,15,'storage/files/importar_imagenes/040402060036.webp','0036','200-5500019','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Vinotinto de 44 cm',NULL,0,11.14,5.57,16.71,20.052,0,3.20832,23.26032,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37426,'040402060037',5,4,1,15,'storage/files/importar_imagenes/040402060037.webp','0037','200-5500020','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Dorado de 44 cm',NULL,0,11.14,5.57,16.71,31.4148,0,5.026368,36.441168,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37427,'040402060038',5,4,1,15,'storage/files/importar_imagenes/040402060038.webp','0038','200-5500021','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Dorado de 44 cm',NULL,0,11.14,5.57,16.71,20.052,0,3.20832,23.26032,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37428,'040402060039',5,4,1,15,'storage/files/importar_imagenes/040402060039.webp','0039','200-5500022','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Plateado de 44 cm',NULL,0,11.14,5.57,16.71,20.052,0,3.20832,23.26032,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37429,'040402060040',5,4,1,15,'storage/files/importar_imagenes/040402060040.webp','0040','200-5500024','7450110000000','Candelabro','Candelabro color Verde de 25 cm',NULL,0,6.14,3.07,9.21,11.052000000000001,0,1.7683200000000003,12.820320000000002,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37430,'040402060041',5,4,1,15,'storage/files/importar_imagenes/040402060041.webp','0041','200-5500025','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Rojo de 25 cm',NULL,NULL,6.72,3.36,10.08,18.950400000000002,0,3.0320640000000005,21.982464000000004,17,NULL,NULL,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37431,'040402060042',5,4,1,15,'storage/files/importar_imagenes/040402060042.webp','0042','200-5500026','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Dorado de 25 cm',NULL,0,6.72,3.36,10.08,18.950400000000002,0,3.0320640000000005,21.982464000000004,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37432,'040402060043',5,4,1,15,'storage/files/importar_imagenes/040402060043.webp','0043','200-5500027','7450110000000','Jarrón y candelabro','Jarrón y candelabro color Plateado de 25 cm',NULL,0,6.72,3.36,10.08,12.096,0,1.93536,14.03136,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37433,'040402060044',5,4,1,15,'storage/files/importar_imagenes/040402060044.webp','0044','MTX63471','743903000000','Imperial','Imperial color Champagne de 30 cm',NULL,0,8.08,3.48,11.56,15.028,0,2.40448,17.43248,19,NULL,3,0,1,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37434,'040402060045',5,4,1,15,'storage/files/importar_imagenes/040402060045.webp','0045','MTX63472','743903000000','Imperial','Imperial color Champagne de 43 cm',NULL,0,10.7,4.61,15.31,28.7828,0,4.6052480000000005,33.388048000000005,19,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37435,'040402060046',5,4,1,15,'storage/files/importar_imagenes/040402060046.webp','0046','902248A','626404000000','Candelabro Acanalado','Candelabro Acanalado color Plateado de 14 cm',NULL,0,14.57,10.18,24.75,37.13,0,5.94,43.07,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37436,'040402060047',5,4,1,15,'storage/files/importar_imagenes/040402060047.webp','0047','902248A','','Candelabro Acanalado','Candelabro Acanalado color Plateado de 18 cm',NULL,0,18.73,13.09,31.82,47.73,0,7.64,55.36,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37437,'040402060048',5,4,1,15,'storage/files/importar_imagenes/040402060048.webp','0048','902248A','','Candelabro Acanalado','Candelabro Acanalado color Plateado de 23 cm',NULL,0,23.94,16.73,40.67,61,0,9.76,70.77,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37438,'040402060049',5,4,1,15,'storage/files/importar_imagenes/040402060049.webp','0049','902248B','626404000000','Candelabro Acanalado','Candelabro Acanalado color Dorado de 14 cm',NULL,0,14.57,10.18,24.75,37.13,0,5.94,43.07,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37439,'040402060050',5,4,1,15,'storage/files/importar_imagenes/040402060050.webp','0050','902248B','','Candelabro Acanalado','Candelabro Acanalado color Dorado de 18 cm',NULL,0,18.73,13.09,31.82,47.73,0,7.64,55.36,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37440,'040402060051',5,4,1,15,'storage/files/importar_imagenes/040402060051.webp','0051','902248B','','Candelabro Acanalado','Candelabro Acanalado color Dorado de 23 cm',NULL,0,23.94,16.73,40.67,61,0,9.76,70.77,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37441,'040402060052',5,4,1,15,'storage/files/importar_imagenes/040402060052.webp','0052','902455','626404000000','Candelabro Cuerno','Candelabro Cuerno color Plateado de 24 cm',NULL,0,11.59,5.8,17.39,32.693200000000004,0,5.230912000000001,37.92411200000001,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37442,'040402060053',5,4,1,15,'storage/files/importar_imagenes/040402060053.webp','0053','902455','','Candelabro Cuerno','Candelabro Cuerno color Plateado de 29 cm',NULL,0,14.01,7.01,21.02,39.5176,0,6.322816,45.840416000000005,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37443,'040402060054',5,4,1,15,'storage/files/importar_imagenes/040402060054.webp','0054','902521','626404000000','Candelabro Base','Candelabro Base color Plateado de 61 cm',NULL,0,24.17,16.89,41.06,61.59,0,9.85,71.44,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37444,'040402060055',5,4,1,15,'storage/files/importar_imagenes/040402060055.webp','0055','902521','','Candelabro Base','Candelabro Base color Plateado de 69 cm',NULL,0,27.35,19.11,46.46,69.69,0,11.15,80.84,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37445,'040402060056',5,4,1,15,'storage/files/importar_imagenes/040402060056.webp','0056','412-363163','7450110000000','Florero','Florero color Transparente de 15 cm',NULL,0,12.38,6.19,18.57,22.284,0,3.5654399999999997,25.849439999999998,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37446,'040402060057',5,4,1,15,'storage/files/importar_imagenes/040402060057.webp','0057','412-363164','7450110000000','Florero','Florero color Transparente de 35 cm',NULL,0,22.05,11.03,33.08,46.312,0,7.40992,53.72192,17,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37447,'040402060058',5,4,1,15,'storage/files/importar_imagenes/040402060058.webp','0058','441-677890','7450110000000','Candelabro','Candelabro color Dorado de 17.5cm',NULL,2021,5.49,2.75,8.24,9.888,0,1.58208,11.47008,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37448,'040402060059',5,4,1,15,'storage/files/importar_imagenes/040402060059.webp','0059','441-677891','7450110000000','Candelabro','Candelabro color Dorado de 76 cm',NULL,NULL,6.11,3.06,9.17,11.004,0,1.76064,12.76464,17,NULL,NULL,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37449,'040402060060',5,4,1,15,'storage/files/importar_imagenes/040402060060.webp','0060','441-677892','7450110000000','Candelabro','Candelabro color Dorado de 22 cm',NULL,NULL,6.04,3.02,9.06,10.872,0,1.73952,12.61152,17,NULL,NULL,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37450,'040402060061',5,4,1,15,'storage/files/importar_imagenes/040402060061.webp','0061','448-5712643','7450110000000','Candelabro','Candelabro color Dorado de 65 cm',NULL,0,18.9,12.6,31.5,37.8,0,6.048,43.848,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37451,'040402060062',5,4,1,15,'storage/files/importar_imagenes/040402060062.webp','0062','448-5712645','7450110000000','Candelabro','Candelabro color Dorado de 58 cm',NULL,0,16.97,11.31,28.28,53.1664,0,8.506624,61.673024000000005,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37452,'040402060063',5,4,1,15,'storage/files/importar_imagenes/040402060063.webp','0063','448-5712646','7450110000000','Candelabro','Candelabro color Dorado de 48 cm',NULL,0,13.71,9.14,22.85,27.42,0,4.3872,31.8072,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37453,'040402060064',5,4,1,15,'storage/files/importar_imagenes/040402060064.webp','0064','541-432030','7450110000000','Candelabro','Candelabro color Dorado de 43 cm',NULL,0,23.85,11.93,35.78,67.2664,0,10.762624,78.029024,17,NULL,3,1,1,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37454,'040402060065',5,4,1,15,'storage/files/importar_imagenes/040402060065.webp','0065','541-432031','7450110000000','Candelabro','Candelabro color Dorado de 38 cm',NULL,0,21.13,10.57,31.7,59.596000000000004,0,9.53536,69.13136,17,NULL,3,1,1,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37455,'040402060066',5,4,1,15,'storage/files/importar_imagenes/040402060066.webp','0066','541-432032','7450110000000','Candelabro Aro','Candelabro Aro color Dorado de 33 cm',NULL,0,18.81,9.41,28.22,33.864,0,5.41824,39.282239999999994,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37456,'040402060067',5,4,1,15,'storage/files/importar_imagenes/040402060067.webp','0067','541-432033','7450110000000','Candelabro','Candelabro color Dorado de 122 cm',NULL,0,64.36,32.18,96.54,115.848,0,18.53568,134.38368,17,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37457,'040402060068',5,4,1,15,'storage/files/importar_imagenes/040402060068.webp','0068','80527','746428000000','Candelabro','Candelabro color Dorado - Plateado de 79 cm',NULL,0,37.25,24.83,62.08,86.912,0,13.90592,100.81792,15,NULL,3,0,1,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37458,'040402060069',5,4,1,15,'storage/files/importar_imagenes/040402060069.webp','0069','80528','746428000000','Candelabro','Candelabro color Dorado - Plateado de 100 cm',NULL,0,50.18,33.45,83.63,108.719,0,17.39504,126.11404,15,NULL,3,0,1,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37459,'040402060070',5,4,1,15,'storage/files/importar_imagenes/040402060070.webp','0070','90-94118','680036000000','Candelabro Jaula','Candelabro Jaula color Plateado de 51 cm',NULL,0,52.4,34.93,87.33,104.79599999999999,0,16.76736,121.56335999999999,14,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37460,'040402060071',5,4,1,15,'storage/files/importar_imagenes/040402060071.webp','0071','90-94120','680036000000','Candelabro jaula','Candelabro jaula color Plateado de 65 cm',NULL,0,56.9,37.93,94.83,113.79599999999999,0,18.207359999999998,132.00336,14,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37461,'040402060072',5,4,1,15,'storage/files/importar_imagenes/040402060072.webp','0072','90-94122','680036000000','Candelabro jaula','Candelabro jaula color Plateado de 81 cm',NULL,0,59.9,39.93,99.83,119.79599999999999,0,19.16736,138.96336,14,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37462,'040402060073',5,4,1,15,'storage/files/importar_imagenes/040402060073.webp','0073','902521','','Candelabro Base','Candelabro Base color Plateado de 78 cm',NULL,0,30.91,21.6,52.51,98.71879999999999,0,15.795007999999997,114.51380799999998,47,NULL,3,0,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37463,'040402060074',5,4,1,15,'storage/files/importar_imagenes/040402060074.webp','0074','902740A','626404000000','Candelabro','Candelabro color Negro de 41 cm',NULL,2021,41.88,20.94,62.82,118.10159999999999,0,18.896255999999997,136.99785599999998,47,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37464,'040402060075',5,4,1,15,'storage/files/importar_imagenes/040402060075.webp','0075','902740B','626404000000','Candelabro','Candelabro color Negro de 50,8 cm',NULL,2021,42.5,21.25,63.75,119.85,0,19.176,139.02599999999998,47,NULL,3,1,0,0,'2024-04-18 14:13:09','2024-04-18 14:13:09'),(37465,'040402060076',5,4,1,15,'storage/files/importar_imagenes/040402060076.webp','0076','902740C','626404000000','Candelabro','Candelabro color Negro de 61 cm',NULL,2022,43.13,21.57,64.7,121.636,0,19.461759999999998,141.09776,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37466,'040402060077',5,4,1,15,'storage/files/importar_imagenes/040402060077.webp','0077','902974A','626404000000','Candelabro Ahumado','Candelabro Ahumado color Negro de 13 cm',NULL,0,10.4,5.2,15.6,29.328,0,4.69248,34.02048,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37467,'040402060078',5,4,1,15,'storage/files/importar_imagenes/040402060078.webp','0078','902974B','626404000000','Candelabro Ahumado','Candelabro Ahumado color Negro de 20,3 cm',NULL,0,17.74,12.4,30.14,45.21,0,7.23,52.44,47,NULL,3,0,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37468,'040402060079',5,4,1,15,'storage/files/importar_imagenes/040402060079.webp','0079','902975','626404000000','Candelabro Ahumado','Candelabro Ahumado color Negro de 20,3 cm',NULL,0,24.61,17.2,41.81,62.71,0,10.03,72.75,47,NULL,3,0,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37469,'040402060080',5,4,1,15,'storage/files/importar_imagenes/040402060080.webp','0080','903192C','626404000000','Candelabro acanalado','Candelabro acanalado color Negro de 41 cm',NULL,2021,32,13.76,45.76,86.02879999999999,0,13.764607999999999,99.79340799999999,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37470,'040402060081',5,4,1,15,'storage/files/importar_imagenes/040402060081.webp','0081','903193B','626404000000','Candelabro acanalado','Candelabro acanalado color Negro de 50,8 cm',NULL,2021,55.2,23.74,78.94,148.4072,0,23.745151999999997,172.15235199999998,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37471,'040402060082',5,4,1,15,'storage/files/importar_imagenes/040402060082.webp','0082','903231A','626404000000','Candelabro Espejo','Candelabro Espejo color Negro de 24 cm',NULL,0,25.6,12.8,38.4,72.19200000000001,0,11.550720000000002,83.74272,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37472,'040402060083',5,4,1,15,'storage/files/importar_imagenes/040402060083.webp','0083','903231B','626404000000','Candelabro Espejo','Candelabro Espejo color Negro de 30 cm',NULL,0,30.8,15.4,46.2,86.85600000000001,0,13.896960000000002,100.75296000000002,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37473,'040402060084',5,4,1,15,'storage/files/importar_imagenes/040402060084.webp','0084','903232A','626404000000','Candelabro Espejo','Candelabro Espejo color Dorado de 24 cm',NULL,0,25.6,12.8,38.4,72.19200000000001,0,11.550720000000002,83.74272,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37474,'040402060085',5,4,1,15,'storage/files/importar_imagenes/040402060085.webp','0085','903232B','626404000000','Candelabro Espejo','Candelabro Espejo color Dorado de 30 cm',NULL,0,30.8,15.4,46.2,86.85600000000001,0,13.896960000000002,100.75296000000002,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37475,'040402060086',5,4,1,15,'storage/files/importar_imagenes/040402060086.webp','0086','901625','626404000000','Candelabro Ahumado','Candelabro Ahumado color Negro de 18,4 cm',NULL,0,17.17,12,29.17,32.087,0,5.133920000000001,37.22092000000001,47,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37476,'040402060087',5,4,1,15,'storage/files/importar_imagenes/040402060087.webp','0087','901626','626404000000','Candelabro Ahumado','Candelabro Ahumado color Negro de 25,4 cm',NULL,0,28.05,19.6,47.65,71.48,0,11.44,82.91,47,NULL,3,0,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37477,'040402060088',5,4,1,15,'storage/files/importar_imagenes/040402060088.webp','0088','CH-5145','','Candelabro Platino','Candelabro Platino color Transparente - Gris de 8,9 cm',NULL,0,8.59,6,14.59,27.4292,0,4.388672000000001,31.817872,60,NULL,3,1,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37478,'040402060089',5,4,1,15,'storage/files/importar_imagenes/040402060089.webp','0089','CH-5464','','Candelabro Rectangular','Candelabro Rectangular color Transparente de 7 cm',NULL,0,22.9,16,38.9,54.46,0,8.7136,63.1736,60,NULL,3,0,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10'),(37479,'040402060090',5,4,1,15,'storage/files/importar_imagenes/040402060090.webp','0090','CH-5466','000','Candelabro Rectangular','Candelabro Rectangular color Transparente de 10,2 cm',NULL,NULL,27.19,19,46.19,69.29,0,11.09,80.37,60,NULL,NULL,0,0,0,'2024-04-18 14:13:10','2024-04-18 14:13:10');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesion`
--

DROP TABLE IF EXISTS `profesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesion`
--

LOCK TABLES `profesion` WRITE;
/*!40000 ALTER TABLE `profesion` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bio` longtext,
  `imagen` longtext,
  `nombre_completo` varchar(250) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `nombre_rol` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `profile_user_id_2aeb6f6b_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,NULL,NULL,NULL,1,NULL,NULL,NULL),(2,NULL,NULL,NULL,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL,
  `tipo_proveedor` int DEFAULT '0',
  `rif` varchar(25) NOT NULL,
  `nombre` varchar(95) DEFAULT NULL,
  `razon_social` varchar(90) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (0,0,'pendiente','S / P',NULL,'2024-04-18 13:57:25',NULL),(1,0,'pendiente','A&B FLORAL',NULL,'2024-04-18 13:57:25',NULL),(2,2,'pendiente','ALL STATE','ALLSTATE FLORAL, INC.','2024-04-18 13:57:25',NULL),(4,0,'pendiente','APPELMAN',NULL,'2024-04-18 13:57:25',NULL),(6,0,'pendiente','Brother Sister',NULL,'2024-04-18 13:57:25',NULL),(7,0,'pendiente','C&F ENTERPRISES',NULL,'2024-04-18 13:57:25',NULL),(8,0,'pendiente','GERSON',NULL,'2024-04-18 13:57:25',NULL),(9,0,'pendiente','HOBBY LOBBY',NULL,'2024-04-18 13:57:25',NULL),(13,0,'pendiente','La Saint Valentine',NULL,'2024-04-18 13:57:25',NULL),(14,0,'pendiente','MARK ROBERTS',NULL,'2024-04-18 13:57:25',NULL),(15,0,'pendiente','MELROSE',NULL,'2024-04-18 13:57:25',NULL),(16,0,'pendiente','MINA VICTORY',NULL,'2024-04-18 13:57:25',NULL),(17,0,'pendiente','NORITEX',NULL,'2024-04-18 13:57:25',NULL),(18,0,'pendiente','RAZ IMPORT',NULL,'2024-04-18 13:57:25',NULL),(19,2,'pendiente','REGENCY','REGENCY INTERNATIONAL BUSINESS CORP','2024-04-18 13:57:25',NULL),(22,0,'pendiente','A CHRISTMAS STORY',NULL,'2024-04-18 13:57:25',NULL),(23,0,'pendiente','ADAMS',NULL,'2024-04-18 13:57:25',NULL),(24,0,'pendiente','AQUARIUS',NULL,'2024-04-18 13:57:25',NULL),(25,0,'pendiente','AROMA 360',NULL,'2024-04-18 13:57:25',NULL),(26,0,'pendiente','BARB`S TREE FARM',NULL,'2024-04-18 13:57:25',NULL),(27,0,'pendiente','CEACO',NULL,'2024-04-18 13:57:25',NULL),(28,0,'pendiente','COBBLE HILL',NULL,'2024-04-18 13:57:25',NULL),(29,0,'pendiente','CREATION GROUP',NULL,'2024-04-18 13:57:25',NULL),(30,0,'pendiente','CVS',NULL,'2024-04-18 13:57:25',NULL),(31,0,'pendiente','D. STEVEN´S',NULL,'2024-04-18 13:57:25',NULL),(32,0,'pendiente','EUROGRAPHICS',NULL,'2024-04-18 13:57:25',NULL),(33,0,'pendiente','FARMHOUSE',NULL,'2024-04-18 13:57:25',NULL),(34,0,'pendiente','GLISTER',NULL,'2024-04-18 13:57:25',NULL),(35,0,'pendiente','HOLIDAY COLLECTION',NULL,'2024-04-18 13:57:25',NULL),(36,0,'pendiente','INDIA HOUSE',NULL,'2024-04-18 13:57:25',NULL),(37,0,'pendiente','JOY',NULL,'2024-04-18 13:57:25',NULL),(38,2,'pendiente','KURT S. ADLER INC','KURT S. ADLER, INC.','2024-04-18 13:57:25',NULL),(39,0,'pendiente','MAJESTIC PUZZLES',NULL,'2024-04-18 13:57:25',NULL),(40,0,'pendiente','MASTER PIECES',NULL,'2024-04-18 13:57:25',NULL),(41,0,'pendiente','Noodles',NULL,'2024-04-18 13:57:25',NULL),(42,0,'pendiente','ROAD RUNNERS',NULL,'2024-04-18 13:57:25',NULL),(43,0,'pendiente','SEASONS DESINGS',NULL,'2024-04-18 13:57:25',NULL),(44,0,'pendiente','Seasons From Halmark',NULL,'2024-04-18 13:57:25',NULL),(45,0,'pendiente','SLEIGH BELL',NULL,'2024-04-18 13:57:25',NULL),(46,0,'pendiente','THE CHRISTMAS SHOPPE',NULL,'2024-04-18 13:57:25',NULL),(47,0,'pendiente','TORRE Y TAGUS',NULL,'2024-04-18 13:57:25',NULL),(48,0,'pendiente','CSF MIAMI',NULL,'2024-04-18 13:57:25',NULL),(49,0,'pendiente','CASAFINA',NULL,'2024-04-18 13:57:25',NULL),(50,2,'pendiente','ONE HUNDRED 80 DEGREES','ONE HUNDRED 80 DEGREES','2024-04-18 13:57:25',NULL),(51,0,'pendiente','GRAF & LANTZ',NULL,'2024-04-18 13:57:25',NULL),(52,0,'pendiente','MALIBU LUXXE',NULL,'2024-04-18 13:57:25',NULL),(53,0,'pendiente','NATIONAL BOOK NETWORK',NULL,'2024-04-18 13:57:25',NULL),(54,0,'pendiente','THE ROYAL STANDARD',NULL,'2024-04-18 13:57:25',NULL),(55,0,'pendiente','TIZO',NULL,'2024-04-18 13:57:25',NULL),(56,0,'pendiente','VIETRI WHOLESALE',NULL,'2024-04-18 13:57:25',NULL),(57,0,'pendiente','VOLUPA',NULL,'2024-04-18 13:57:25',NULL),(58,0,'pendiente','WINWARD FLORAL AND SEASONAL DECOR',NULL,'2024-04-18 13:57:25',NULL),(59,2,'pendiente','ZAFFERANO AMERICA','ZAFFERANO AMERICA LLC','2024-04-18 13:57:25',NULL),(60,2,'pendiente','ZODAX','ZODAX L.P','2024-04-18 13:57:25',NULL),(61,0,'pendiente','FLORANDES',NULL,'2024-04-18 13:57:25',NULL),(62,0,'pendiente','MR. CLAUS',NULL,'2024-04-18 13:57:25',NULL),(63,0,'pendiente','COMERCIAL MONTECRISTO',NULL,'2024-04-18 13:57:25',NULL),(64,0,'pendiente','GRACIALA SHARK',NULL,'2024-04-18 13:57:25',NULL),(65,0,'pendiente','ACCENT DECOR',NULL,'2024-04-18 13:57:25',NULL),(66,0,'pendiente','CCA AND B, LLC.',NULL,'2024-04-18 13:57:25',NULL),(67,0,'pendiente','GERALD P. LITTLE',NULL,'2024-04-18 13:57:25',NULL),(68,0,'pendiente','THE CHRISTMAS PALACE',NULL,'2024-04-18 13:57:25',NULL),(69,0,'pendiente','TEJEGURUMI',NULL,'2024-04-18 13:57:25',NULL),(70,1,'J-30372917-7','IMPORTACIONES DECOEX','IMPORTACIONES DECOEX','2024-04-18 13:57:25',NULL),(72,0,'pendiente','RIFLORI','RIFLORI','2024-04-18 13:57:25',NULL),(73,0,'pendiente','MERCERÍA ADORNO - TEXT','MERCERÍA ADORNO - TEXT','2024-04-18 13:57:25',NULL),(74,0,'pendiente','BECO','BECO, C.A','2024-04-18 13:57:25',NULL),(75,0,'pendiente','ABSTRACTA','ABSTRACTA','2024-04-18 13:57:25',NULL),(76,0,'pendiente','EPA','FERRETERIA EPA, S.A. DE C.V.','2024-04-18 13:57:25',NULL),(77,0,'pendiente','ADORNOS ILU','ADORNOS ILU, S.A.','2024-04-18 13:57:25',NULL),(78,2,'pendiente','DISTRIBUIDORA MONDIFOOD','DISTRIBUIDORA MONDIFOOD, C.A.','2024-04-18 13:57:25',NULL),(79,0,'pendiente','SENOS AYUDA','SENOS AYUDA','2024-04-18 13:57:25',NULL),(80,0,'pendiente','BODEGUITA LEMAR','BODEGUITA LEMAR C.A','2024-04-18 13:57:25',NULL),(81,0,'pendiente','SABOR A VIDA SANA','COMERCIALIZADORA SABOR A VIDA SANA, C.A.','2024-04-18 13:57:25',NULL),(82,0,'pendiente','CAROLINA GONZALEZ','CAROLINA GONZALEZ','2024-04-18 13:57:25',NULL),(83,2,'pendiente','MONICA GENTIL','MONICA GENTIL','2024-04-18 13:57:25',NULL),(84,2,'pendiente','SCENTSICLES','SCENTSICLES','2024-04-18 13:57:25',NULL),(85,1,'J-50044932-1','VIVA SUPERCENTRO, C.A.','VIVA SUPERCENTRO, C.A.','2024-04-18 13:57:25',NULL),(86,1,'J-29732700-2','INVERSIONES ABASOLUCIONES','INVERSIONES ABASOLUCIONES 1220, C.A.','2024-04-18 13:57:25',NULL),(87,2,'pendiente','CORPORACION D.Q.R 2000, C','CORPORACION D.Q.R 2000, C.A','2024-04-18 13:57:25',NULL),(88,2,'pendiente','DISTRIBUIDORA GOLDSERVICE','DISTRIBUIDORA GOLDSERVICES 2005, CA','2024-04-18 13:57:25',NULL),(89,0,'pendiente','Pursell Manufacturing Co','Pursell Manufacturing Corp.','2024-04-18 13:57:25',NULL);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saldo_afavor`
--

DROP TABLE IF EXISTS `saldo_afavor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saldo_afavor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `factura_id` int NOT NULL,
  `moneda_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `devolucion_id` int NOT NULL,
  `monto` float DEFAULT '0',
  `status` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_saldo_afavor_cliente1_idx` (`cliente_id`),
  KEY `fk_saldo_afavor_moneda1_idx` (`moneda_id`),
  KEY `fk_saldo_afavor_factura1_idx` (`factura_id`),
  KEY `fk_saldo_afavor_devolucion1_idx` (`devolucion_id`),
  CONSTRAINT `fk_saldo_afavor_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_saldo_afavor_devolucion1` FOREIGN KEY (`devolucion_id`) REFERENCES `devolucion` (`id`),
  CONSTRAINT `fk_saldo_afavor_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_saldo_afavor_moneda1` FOREIGN KEY (`moneda_id`) REFERENCES `moneda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saldo_afavor`
--

LOCK TABLES `saldo_afavor` WRITE;
/*!40000 ALTER TABLE `saldo_afavor` DISABLE KEYS */;
/*!40000 ALTER TABLE `saldo_afavor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id` int NOT NULL,
  `sku` varchar(12) NOT NULL,
  `unidad_negocio_id` int NOT NULL,
  `origen_compra_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  `sub_categoria_id` int NOT NULL,
  `cod_serv` varchar(5) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text,
  `costo` float DEFAULT '0',
  `precio` float DEFAULT '0',
  `precio_iva` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`sku`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `sku_UNIQUE` (`sku`),
  KEY `fk_servicios_categoria1_idx` (`categoria_id`),
  KEY `fk_servicios_sub_categoria1_idx` (`sub_categoria_id`,`categoria_id`),
  KEY `fk_servicios_origen_compra1_idx` (`origen_compra_id`),
  KEY `fk_servicios_unidad_negocio1_idx` (`unidad_negocio_id`),
  CONSTRAINT `fk_servicios_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_servicios_origen_compra1` FOREIGN KEY (`origen_compra_id`) REFERENCES `origen_compra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_servicios_sub_categoria1` FOREIGN KEY (`sub_categoria_id`) REFERENCES `sub_categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_servicios_unidad_negocio1` FOREIGN KEY (`unidad_negocio_id`) REFERENCES `unidad_negocio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categoria`
--

DROP TABLE IF EXISTS `sub_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categoria` (
  `id` int NOT NULL,
  `categoria_id` int NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `slug` varchar(95) NOT NULL,
  `codigo` varchar(5) NOT NULL DEFAULT '1',
  `modulo` varchar(4) NOT NULL DEFAULT 'PROD',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sub_categoria_categoria1_idx` (`categoria_id`),
  CONSTRAINT `fk_sub_categoria_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categoria`
--

LOCK TABLES `sub_categoria` WRITE;
/*!40000 ALTER TABLE `sub_categoria` DISABLE KEYS */;
INSERT INTO `sub_categoria` VALUES (1,18,'Classic','classic','01','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(2,18,'Glam','glam','02','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(3,18,'Prive','prive','03','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(4,18,'Deluxe','deluxe','04','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(5,18,'Gran Formato','gran-formato','05','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(6,18,'Cristal','cristal','06','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(7,18,'Basic','basic','07','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(8,18,'Medium','medium','08','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(9,18,'Personalizadas','personalizadas','09','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(10,1,'Adornos ','adornos','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(11,1,'Cintas','cintas','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(12,1,'Colgantes','colgantes','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(13,1,'Floreros & Jarrones','floreros-&-jarrones','04','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(14,1,'Cojines & Mantas','cojines-&-mantas','05','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(15,1,'Candelabros','candelabros','06','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(16,1,'Globos de Cristal','globos-de-cristal','07','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(17,1,'Pinos','pinos','08','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(18,1,'Jaulas','jaulas','09','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(19,1,'Bandejas y Cajas','bandejas-y-cajas','10','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(20,1,'Portaretratos','portaretratos','11','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(21,1,'Relojes','relojes','12','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(22,1,'Percheros','percheros','13','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(23,1,'Cestas Decorativas','cestas-decorativas','14','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(24,5,'Interior','interior','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(25,5,'Exterior','exterior','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(26,5,'Interior Formato Medio','interior-formato-medio','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(27,5,'Exterior Formato Medio','exterior-formato-medio','04','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(28,5,'Interior Gran Formato','interior-gran-formato','05','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(29,5,'Exterior Gran Formato','exterior-gran-formato','06','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(30,17,'Árboles Sin Luces','Árboles-sin-luces','01','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(31,17,'Árboles con Luces','árboles-con-luces','02','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(32,17,'Luces Inteligentes','luces-inteligentes','03','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(33,17,'Luces Tradicionales','luces-tradicionales','04','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(34,17,'Bases de árbol','bases-de-árbol','05','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(35,17,'Pie de árbol','pie-de-árbol','06','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(36,17,'Tope de árbol','tope-de-árbol','07','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(37,17,'Arboles estructurales','arboles-estructurales','08','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(39,9,'Consolas','consolas','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(40,9,'Espejos','espejos','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(41,9,'Mesas Auxiliares ','mesas-auxiliares','04','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(42,9,'Mesas de Centro','mesas-de-centro','05','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(43,9,'Mesa Comedor','mesa-comedor','06','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(44,9,'Otoman','otoman','07','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(45,9,'Butacas','butacas','08','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(46,9,'Sillas para Mesa','sillas-para-mesa','09','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(47,9,'Silla para Bar','silla-para-bar','10','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(48,9,'Bancos','bancos','11','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(49,10,'Bolsa de Regalo','bolsa-de-regalo','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(50,10,'Tarjetas ','tarjetas','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(51,10,'Papel de Regalo','papel-de-regalo','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(52,10,'Cajas de Regalo','cajas-de-regalo','04','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(53,10,'Latas de Regalos','latas-de-regalos','05','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(54,10,'Stickers','stickers','06','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(55,8,'Caminos de Mesa','caminos-de-mesa','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(56,8,'Manteles','manteles','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(57,8,'Individuales','individuales','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(58,8,'Servilletas','servilletas','04','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(59,8,'Servilleteros','servilleteros','05','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(60,8,'Bases de Platos','bases-de-platos','06','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(61,8,'Platos & Bandejas','platos-&-bandejas','07','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(62,8,'Vasos y Jarras','vasos-y-jarras','08','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(63,8,'Porta Vasos','porta-vasos','09','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(64,8,'Cubiertos y Utensilios','cubiertos-y-utensilios','10','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(65,8,'Tazas','tazas','11','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(66,8,'Copas','copas','12','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(67,8,'Vajillas','vajillas','13','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(68,8,'Identificadores','identificadores','14','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(69,11,'Macetas ','macetas','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(70,11,'Topiarios','topiarios','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(72,11,'Cactus y Suculentas','cactus-y-suculentas','04','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(73,11,'Arbusto','arbusto','05','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(74,11,'Decorativas','decorativas','06','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(75,11,'Aromáticas','aromáticas','07','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(76,11,'Helechos','helechos','08','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(77,11,'Frutales','frutales','09','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(78,6,'Arreglos florales','arreglos-florales','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(79,6,'Flores Individuales','flores-individuales','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(80,6,'Flores de Navidad','flores-de-navidad','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(81,6,'Follajes','follajes','04','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(82,3,'Organizadores','organizadores','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(83,3,'Utensilios','utensilios','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(84,2,'Dispensadores','dispensadores','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(85,2,'Accesorios de Baño','accesorios-de-baño','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(86,2,'Cestas','cestas','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(91,7,'Lámparas','lámparas','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(92,7,'Faroles','faroles','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(101,12,'Rectangular','rectangular','01','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(102,12,'Cuadrada','cuadrada','02','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(107,21,'Unisex','unisex','03','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(108,4,'Coronas','coronas','01','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(109,4,'Coronas Iluminadas','coronas-iluminadas','02','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(110,4,'Guirnaldas','guirnaldas','04','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(111,4,'Guirnaldas iluminadas','guirnaldas-iluminadas','05','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(112,4,'Bases','bases','07','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(113,28,'Velas aromaticas','velas-aromaticas','01','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(114,28,'Velas sin aromas','velas-sin-aromas','02','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(115,28,'Difusores','difusores','03','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(116,28,'Aromas','aromas','04','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(117,28,'Velas Electrónicas','velas-electrónicas','06','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(118,3,'Accesorios de Cocina','accesorios-de-cocina','03','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(119,28,'Encendedores & Apagadores','encendedores-&-apagadores','05','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(120,10,'Lapices & Bolígrafos','lapices-&-bolígrafos','08','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(121,10,'Viruta','viruta','07','PROD',1,'2024-04-18 13:39:53','2024-04-18 13:39:53'),(122,27,'Postres','postres','01','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(123,1,'Pedestales','pedestales','15','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(124,7,'Bombillos','bombillos','03','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(125,29,'Attractive','attractive','01','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(126,29,'Boys and girls','boys-and-girls','02','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(127,29,'Boys and girls  (bordes )','boys-and-girls--(bordes-)','03','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(128,29,'A perfect world','a-perfect-world','04','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(129,29,'Mondo baby','mondo-baby','05','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(130,29,'Life 3 y 4','life-3-y-4','06','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(131,29,'New elegance','new-elegance','07','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(132,29,'New life ','new-life-','08','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(133,29,'Pop style','pop-style','09','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(134,29,'Trendwall','trendwall','10','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(136,29,'Asian fusion','asian-fusion','12','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(137,29,'Elements','elements','13','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(138,29,'Geo nordic','geo-nordic','14','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(139,29,'History of art','history-of-art','15','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(140,29,'Industrial','industrial','16','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(141,29,'Materials','materials','17','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(142,29,'Metropolitan stories','metropolitan-stories','18','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(143,29,'Metropoliy ','metropoliy-','19','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(144,29,'New walls','new-walls','20','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(145,29,'More textures (seabrooks designs)','more-textures-(seabrooks-designs)','21','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(146,29,'Casa mood','casa-mood','22','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(147,29,'Alpha','alpha','23','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(148,29,'Björn','björn','24','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(149,29,'Black and white 4','black-and-white-4','25','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(150,29,'Borneo','borneo','26','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(151,29,'Cozz','cozz','27','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(152,29,'Dekora natur','dekora-natur','28','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(153,29,'Drem again','drem-again','29','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(154,29,'Ethnic origen','ethnic-origen','30','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(155,29,'Greenery','greenery','31','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(156,29,'High rise','high-rise','32','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(157,29,'Hygge','hygge','33','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(158,29,'Ildecoro','ildecoro','34','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(159,29,'Lars contzen','lars-contzen','35','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(160,29,'Linen style','linen-style','36','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(161,29,'Michalsky 3','michalsky-3','37','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(162,29,'Move your walls','move-your-walls','38','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(163,29,'Neue bude','neue-bude','39','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(164,29,'New studio 2.0','new-studio-2.0','40','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(165,29,'Palila','palila','41','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(166,29,'Reflections','reflections','42','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(167,29,'Revival','revival','43','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(168,29,'Saffiano','saffiano','44','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(169,29,'Scandinavin 2','scandinavin-2','45','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(170,29,'Schöner wohnen 8 y 9','schöner-wohnen-8-y-9','46','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(171,29,'Spot 3','spot-3','47','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(172,29,'Style guide jung','style-guide-jung','48','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(173,29,'Titanium 2 y 3','titanium-2-y-3','49','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(174,29,'Woodstone','woodstone','50','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(175,29,'X-ray','x-ray','51','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(176,30,'Contract','contract','01','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(177,31,'Metropolitan stories','metropolitan-stories','01','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(178,31,'The wall','the-wall','02','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(179,31,'Designwalls ','designwalls-','03','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(180,31,'Atelier','atelier','04','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(181,31,'Walls by patel i y iii','walls-by-patel-i-y-iii','05','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(182,31,'Artist','artist','06','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(183,31,'Architets paper','architets-paper','07','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(184,32,'Daniel hechter 5 y 6','daniel-hechter-5-y-6','01','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(185,32,'Karl lagerfeld','karl-lagerfeld','02','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(186,32,'Versace  2,3,4','versace--2,3,4','03','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(187,32,'Bordes versace ','bordes-versace-','04','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(188,32,'Bordes versace ','bordes-versace-','05','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(189,32,'Balance','balance','06','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(190,32,'Sublime','sublime','07','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(191,32,'Kabuki','kabuki','08','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(192,32,'Prestige','prestige','09','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(193,32,'Oblique','oblique','10','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(194,9,'Muebles de TV','muebles-de-tv','12','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(195,8,'Ensaladeras','ensaladeras','15','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(196,34,'Carrito Bar','carrito-bar','01','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(197,34,'Cocteleras y Hieleras','cocteleras-y-hieleras','02','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(198,29,'Little Love','Little Love','52','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(199,29,'Mata Hari','mata-hari','53','PROD',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(200,28,'Probadores','probadores','07','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(201,11,'Hojas','hojas','10','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(202,5,'Animatronics','animatronics','07','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(203,35,'Diseñadores','diseñadores','01','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(204,35,'Murales','murales','02','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(205,35,'Uso Residencial','uso-residencial','03','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(206,35,'Catálogos','catalogos','04','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(207,35,'Hoteles y Comercios','hoteles-y-comercios','05','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(208,35,'Fibras Naturales','fibras-naturales','06','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(209,35,'Materiales','materiales','07','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(210,6,'Material de Floristería','material-de-floristería','05','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(211,36,'Visita','visita','01','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(212,36,'Modelado 3D','modelado-3d','02','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(213,36,'Montaje','montaje','03','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(214,36,'Desmontaje','desmontaje','04','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(215,36,'Arreglos Florales','arreglos-florales','05','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(216,36,'Propuesta gráfica','propuesta-gráfica','06','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(217,37,'Alquiler de Árbol','alquiler-de-Árbol','01','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(218,37,'Alquiler de Coronas','alquiler-de-coronas','02','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(220,38,'Productos del Cliente','productos-del-cliente','01','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(221,39,'Servicio de transporte','servicio-de-transporte','01','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(222,11,'Agaves','agaves','11','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(223,11,'Bamboo','bamboo','12','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(224,11,'Palmas','palmas','13','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(225,40,'Por Kilometros','por-kilometros','10','SERV',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(226,9,'Organizadores','organizadores','13','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(227,37,'Alquiler de Guirnalda','alquiler-de-guirnalda','05','SERV',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(228,37,'Alquiler de Guirnalda','alquiler-de-guirnalda','03','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(229,37,'Alquiler de gran formato','alquiler-de-gran-formato','04','SERV',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(230,37,'Alquiler de Guirnalda','alquiler-de-guirnalda','05','SERV',0,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(231,17,'Arboles Naturales','arboles-naturales','09','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(232,4,'Gotas','gotas','08','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(233,6,'Follaje Iluminado','follaje-iluminado','06','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(234,17,'Pinos','pinos','10','PROD',1,'2024-04-18 13:39:54','2024-04-18 13:39:54'),(235,17,'Pinos Iluminados','pinos-iluminados','11','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55'),(236,11,'Troncos','troncos','14','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55'),(237,41,'Maquinas','maquinas','01','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55'),(238,41,'Nieves','nieves','02','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55'),(239,11,'Bonsai','bonsai','15','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55'),(240,28,'Jabones y Cremas con Aroma','jabones-y-cremas-con-aroma','08','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55'),(241,18,'Inflables','inflables','10','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55'),(242,1,'Infladores','infladores','16','PROD',1,'2024-04-18 13:39:55','2024-04-18 13:39:55');
/*!40000 ALTER TABLE `sub_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasa_dia`
--

DROP TABLE IF EXISTS `tasa_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasa_dia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `moneda_id` int NOT NULL,
  `fecha` date NOT NULL,
  `monto_bs` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_tasa_dia_moneda1_idx` (`moneda_id`),
  CONSTRAINT `fk_tasa_dia_moneda1` FOREIGN KEY (`moneda_id`) REFERENCES `moneda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasa_dia`
--

LOCK TABLES `tasa_dia` WRITE;
/*!40000 ALTER TABLE `tasa_dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasa_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cliente`
--

DROP TABLE IF EXISTS `tipo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_cliente` (
  `id` int NOT NULL,
  `descripcion` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cliente`
--

LOCK TABLES `tipo_cliente` WRITE;
/*!40000 ALTER TABLE `tipo_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `id` int NOT NULL,
  `descripcion` varchar(1) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_impuesto`
--

DROP TABLE IF EXISTS `tipo_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_impuesto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `porcentaje` float NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_impuesto`
--

LOCK TABLES `tipo_impuesto` WRITE;
/*!40000 ALTER TABLE `tipo_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_red_social`
--

DROP TABLE IF EXISTS `tipo_red_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_red_social` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_red_social`
--

LOCK TABLES `tipo_red_social` WRITE;
/*!40000 ALTER TABLE `tipo_red_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_red_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefono`
--

DROP TABLE IF EXISTS `tipo_telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefono` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefono`
--

LOCK TABLES `tipo_telefono` WRITE;
/*!40000 ALTER TABLE `tipo_telefono` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_negocio`
--

DROP TABLE IF EXISTS `unidad_negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidad_negocio` (
  `id` int NOT NULL,
  `descripcion` varchar(95) NOT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `codigo` varchar(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_negocio`
--

LOCK TABLES `unidad_negocio` WRITE;
/*!40000 ALTER TABLE `unidad_negocio` DISABLE KEYS */;
INSERT INTO `unidad_negocio` VALUES (1,'Suministros','suministros','00',1,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(2,'Navidad','navidad','01',1,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(3,'Halloween','halloween','02',1,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(4,'Acción de gracias','accion-de-gracias','03',1,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(5,'Home','home','04',1,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(7,'San Valentín','san-valentin','07',1,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(8,'Pascua','pascua','08',1,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(9,'Papel Tapiz','papel-tapiz','05',0,'2024-04-18 13:53:55','2024-04-18 13:53:55'),(10,'Primavera-Verano','primavera-verano','09',1,'2024-04-18 13:53:55','2024-04-18 13:53:55');
/*!40000 ALTER TABLE `unidad_negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pbkdf2_sha256$720000$7VocOdHSnwVLtJEC18LR7j$pjssqQAGyR7iSWkl9TJJIBnvSgFRl35NpesOIl0eDKo=','2024-04-22 01:17:25.454856',1,'','',1,1,'2024-04-22 01:11:37.497310','sistemas','sistemas@joyarteydecoracion.com',NULL,NULL),(2,'pbkdf2_sha256$720000$fm2Q3cO15iFKDaTs0PZGWu$D2kHe2NVPrYJ3EDX+rdtGN2ihGUIqrTxZAM8NrdRBjs=',NULL,0,'','',0,1,'2024-04-22 05:44:13.127395','moises2702','mcmacho@joyarteydecoracion.com',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_groups_user_id_group_id_fc7788e8_uniq` (`user_id`,`group_id`),
  KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_groups_user_id_f500bee5_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_permissions`
--

DROP TABLE IF EXISTS `users_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_permissions_user_id_permission_id_3b86cbdf_uniq` (`user_id`,`permission_id`),
  KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_permissions`
--

LOCK TABLES `users_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22  1:58:41
