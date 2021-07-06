CREATE DATABASE  IF NOT EXISTS `dbgestor`;
USE `db_gestor`;


DROP TABLE IF EXISTS `t_archivos`;

CREATE TABLE `t_archivos` (
  `id_archivo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `ruta` text,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_archivo`),
  KEY `fkArchivosCategorias_idx` (`id_categoria`),
  KEY `fkUsuariosArchivos_idx` (`id_usuario`),
  CONSTRAINT `fkArchivosCategorias` FOREIGN KEY (`id_categoria`) REFERENCES `t_categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuariosArchivos` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;


LOCK TABLES `t_archivos` WRITE;
/*!40000 ALTER TABLE `t_archivos` DISABLE KEYS */;
INSERT INTO `t_archivos` VALUES (2,1,6,'5b4b7d0cd0230.jpeg','jpeg','../../archivos/1/5b4b7d0cd0230.jpeg','2021-05-05 06:27:11'),(3,1,9,'3bdeb1b5cec588c513a2de5cec024b63.png','png','../../archivos/1/3bdeb1b5cec588c513a2de5cec024b63.png','2021-05-05 06:29:30'),(4,1,7,'jquery.dataTables.min (1).js','js','../../archivos/1/jquery.dataTables.min (1).js','2021-05-05 06:31:47'),(5,1,5,'examen unidad 2.pdf','pdf','../../archivos/1/examen unidad 2.pdf','2021-05-05 07:13:59'),(6,1,5,'Mi video3.mp4','mp4','../../archivos/1/Mi video3.mp4','2021-05-05 07:16:25'),(7,1,5,'Men At Work - Who Can It Be Now (Video Version) (GRATIS-MP3S.NET).mp3','mp3','../../archivos/1/Men At Work - Who Can It Be Now (Video Version) (GRATIS-MP3S.NET).mp3','2021-05-05 07:22:29'),(8,1,5,'images (14).jpeg','jpeg','../../archivos/1/images (14).jpeg','2021-05-05 07:47:43'),(9,11,NULL,'gestor (1).sql','sql','../../archivos/11/gestor (1).sql','2021-05-25 22:48:51'),(10,11,10,'gestor (1).sql','sql','../../archivos/11/gestor (1).sql','2021-05-25 22:49:17'),(11,12,NULL,'Screenshot_20210526_001414_com.android.chrome.jpg','jpg','../../archivos/12/Screenshot_20210526_001414_com.android.chrome.jpg','2021-05-25 22:51:26'),(12,12,11,'Screenshot_20210526_001414_com.android.chrome.jpg','jpg','../../archivos/12/Screenshot_20210526_001414_com.android.chrome.jpg','2021-05-25 22:52:18');
/*!40000 ALTER TABLE `t_archivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_categorias`
--

DROP TABLE IF EXISTS `t_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fechaInsert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`),
  KEY `fkCategoriaUsuario_idx` (`id_usuario`),
  CONSTRAINT `fkCategoriaUsuario` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_categorias`
--

LOCK TABLES `t_categorias` WRITE;
/*!40000 ALTER TABLE `t_categorias` DISABLE KEYS */;
INSERT INTO `t_categorias` VALUES (5,1,'','2021-05-04 22:49:35'),(6,1,'peliculas','2021-05-05 01:07:00'),(7,1,'Musica','2021-05-05 01:08:01'),(8,9,'categoria','2021-05-05 05:12:19'),(9,1,'pdf','2021-05-05 06:29:11'),(10,11,'pdf','2021-05-25 22:49:04'),(11,12,'Holw','2021-05-25 22:51:56'),(12,15,'Practica 5','2021-06-23 08:04:50');
/*!40000 ALTER TABLE `t_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuarios`
--

DROP TABLE IF EXISTS `t_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `password` text,
  `insert` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuarios`
--

LOCK TABLES `t_usuarios` WRITE;
/*!40000 ALTER TABLE `t_usuarios` DISABLE KEYS */;
INSERT INTO `t_usuarios` VALUES (1,'Perez','1999-08-11','mario@gmail.com','usuario1','7c4a8d09ca3762af61e59520943dc26494f8941b','2021-05-04 04:09:43'),(2,'Mario','1999-08-11','mario@gmail.com','ioiadmfio','f11a58ab3ab7770f7e0a30772dc8636f0dfb87aa','2021-05-04 04:10:41'),(3,'Mario','1999-08-11','mario@gmail.com','usuario1234','c89f864e431debea5eb0ab3f6e1d7f5817cd744c','2021-05-04 04:11:26'),(4,'Mario','1999-08-18','maria@gmail.com','njmkl,','0929665cf6208699cff467d635c59142c1b1a099','2021-05-04 04:11:47'),(5,'Perez','1999-08-11','mario@gmail.com','usuario1n','29816eae8e9b31173d5c1db098a84eb53fdf1e74','2021-05-04 04:12:44'),(6,'Mario','2021-05-05','mario@gmail.com','usuarioyiin','73624dd9b3d0067f7543c4445ef62937ea0f49ca','2021-05-04 04:43:28'),(7,'Mario',NULL,'mario@gmail.com','ununuun','c89f864e431debea5eb0ab3f6e1d7f5817cd744c','2021-05-04 04:47:06'),(8,'Perez','2021-05-11','mario@gmail.com','ioiadmfio nuu','8729dcb51f9aac9206dff1bcb6229c9fc4173b82','2021-05-04 04:49:15'),(9,'Segura','2021-05-12','mario@gmail.com','usuario5','8cb2237d0679ca88db6464eac60da96345513964','2021-05-05 05:11:58'),(10,'Mario','2021-05-11','mario@gmail.com','Mario','8ae1c34bd37fad49cc5f8e02da648a78e89c3ed8','2021-05-26 06:10:38'),(11,'Mario','2021-05-04','mario@gmail.com','riut','8e327c741bae429b76cce9f89ef52b06f487e88b','2021-05-25 22:43:57'),(12,'Armando','2021-05-08','prueba@oo.com','Armando','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','2021-05-25 22:48:55'),(13,'María Fernanda Miñón Segovia','1999-08-18','m.18.f.99@gmail.com','Fer MA','2a6ea131e377c76d3367ec1179013eed6c393285','2021-05-25 22:59:20'),(14,'yakumo','2021-05-26','yakumo@gmail.com','yakumo','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','2021-05-26 00:01:30'),(15,'EMMANUEL ','1982-10-04','lic.emmanuelsa@gmail.com','emma','8cb2237d0679ca88db6464eac60da96345513964','2021-05-26 07:17:50'),(16,'Mario','2021-06-08','mario@gmail.com','marioxd','addb47291ee169f330801ce73520b96f2eaf20ea','2021-06-20 13:38:42'),(17,'Yohali','2021-07-21','yojanqz10@gmail.com','nano','40bd001563085fc35165329ea1ff5c5ecbdbbeef','2021-07-05 13:33:50');
/*!40000 ALTER TABLE `t_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-05 16:05:17
