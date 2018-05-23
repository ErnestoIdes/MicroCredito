/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.14 : Database - micro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`micro` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `micro`;

/*Table structure for table `tab_avalista` */

DROP TABLE IF EXISTS `tab_avalista`;

CREATE TABLE `tab_avalista` (
  `IdAvalista` int(10) NOT NULL AUTO_INCREMENT,
  `Sexo` varchar(20) DEFAULT NULL,
  `Nome` varchar(200) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Naturalidade` varchar(255) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Bairro` varchar(200) DEFAULT NULL,
  `Quarteirao` varchar(255) DEFAULT NULL,
  `CasaNumero` varchar(255) DEFAULT NULL,
  `ContactoAvalista` varchar(255) DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `TipoDocu` varchar(100) DEFAULT NULL,
  `Documento` varchar(100) DEFAULT NULL,
  `DataEmissao` date DEFAULT NULL,
  `LocalEmissao` varchar(255) DEFAULT NULL,
  `MembrosFamiliares` varchar(100) DEFAULT NULL,
  `Profissao` varchar(255) DEFAULT NULL,
  `Observacao` varchar(250) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `IdUsuario` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdAvalista`),
  KEY `CUsuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tab_avalista` */

LOCK TABLES `tab_avalista` WRITE;

insert  into `tab_avalista`(`IdAvalista`,`Sexo`,`Nome`,`DataNascimento`,`Naturalidade`,`Cidade`,`Bairro`,`Quarteirao`,`CasaNumero`,`ContactoAvalista`,`Estado`,`TipoDocu`,`Documento`,`DataEmissao`,`LocalEmissao`,`MembrosFamiliares`,`Profissao`,`Observacao`,`DataReg`,`IdUsuario`) values (3,'Masculino','adasd','2018-03-09','afe','asdsad','awda','1','1112','800000000','Solteiro(a)','BI','754','2018-02-26','tdsuth','8','kaedsakd','','2018-03-17 02:33:20',14);

UNLOCK TABLES;

/*Table structure for table `tab_cliente` */

DROP TABLE IF EXISTS `tab_cliente`;

CREATE TABLE `tab_cliente` (
  `IdCliente` int(10) NOT NULL AUTO_INCREMENT,
  `Sexo` varchar(15) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Naturalidade` varchar(50) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Quarteirao` varchar(10) DEFAULT NULL,
  `CasaNumero` int(50) DEFAULT NULL,
  `ContactoCliente` varchar(20) DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `TipoDocu` varchar(20) DEFAULT NULL,
  `Documento` varchar(50) DEFAULT NULL,
  `DataEmissao` date DEFAULT NULL,
  `LocalEmissao` varchar(50) DEFAULT NULL,
  `MembrosFamiliares` int(4) DEFAULT NULL,
  `Profissao` varchar(100) DEFAULT NULL,
  `Observacao` varchar(250) DEFAULT NULL,
  `NomePai` varchar(100) DEFAULT '-------',
  `NomeMae` varchar(100) DEFAULT '-------',
  `Conjugue` varchar(100) DEFAULT '-------',
  `ContactoConjugue` varchar(20) DEFAULT '80000000',
  `DataReg` timestamp NULL DEFAULT NULL,
  `IdUsuario` int(10) DEFAULT NULL,
  `IdGestor` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdCliente`),
  KEY `IdGestor` (`IdGestor`),
  CONSTRAINT `tab_cliente_ibfk_2` FOREIGN KEY (`IdGestor`) REFERENCES `tb_gestor` (`IdGestor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tab_cliente` */

LOCK TABLES `tab_cliente` WRITE;

insert  into `tab_cliente`(`IdCliente`,`Sexo`,`Nome`,`DataNascimento`,`Naturalidade`,`Cidade`,`Bairro`,`Quarteirao`,`CasaNumero`,`ContactoCliente`,`Estado`,`TipoDocu`,`Documento`,`DataEmissao`,`LocalEmissao`,`MembrosFamiliares`,`Profissao`,`Observacao`,`NomePai`,`NomeMae`,`Conjugue`,`ContactoConjugue`,`DataReg`,`IdUsuario`,`IdGestor`) values (1,'Masculino','Ides','2043-08-21','Moz','Mpto','Zimpas','23',21,'800000028','Solteiro(a)','BI','12222222dh','2020-10-22','gfdyh',10,'Teacher','','aesgf','jcjh','','','2018-03-16 07:21:03',14,1),(2,'Masculino','Rafa','2043-08-21','South','Mpto','Zimpas','23',21,'800000028','Solteiro(a)','BI','12222222dh','2020-10-22','gfdyh',10,'Teacher','','aesgf','jcjh','','','2018-03-16 07:21:03',14,1),(3,'Masculino','Neyde','2043-05-11','Moz','Mpto','Zimpas','23',21,'800000028','Solteiro(a)','BI','12222222dh','2020-10-22','gfdyh',10,'Teacher','','aesgf','jcjh','','','2018-03-16 07:21:03',14,1),(4,'Masculino','Mira','2043-08-21','South','Mpto','Zimpas','23',21,'800000028','Solteiro(a)','BI','12222222dh','2020-10-22','gfdyh',10,'Teacher','','aesgf','jcjh','','','2018-03-16 07:21:03',14,1),(5,'Masculino','Simango','2043-08-21','Moz','Mpto','Zimpas','23',21,'800000028','Solteiro(a)','BI','12222222dh','2020-10-22','gfdyh',10,'Teacher','','aesgf','jcjh','','','2018-03-16 07:21:03',14,1);

UNLOCK TABLES;

/*Table structure for table `tab_credito_1solicitado` */

DROP TABLE IF EXISTS `tab_credito_1solicitado`;

CREATE TABLE `tab_credito_1solicitado` (
  `IdCredito` int(10) NOT NULL AUTO_INCREMENT,
  `IdCliente` varchar(10) DEFAULT NULL,
  `IdAvalista` varchar(10) DEFAULT NULL,
  `IdLinha` varchar(10) DEFAULT NULL,
  `IdGestor` varchar(10) DEFAULT NULL,
  `IdDestino` varchar(10) DEFAULT NULL,
  `TaxaJuro` varchar(10) DEFAULT NULL,
  `Prazo` smallint(5) DEFAULT NULL,
  `Periodo` varchar(255) DEFAULT NULL,
  `ValorSolicitado` varchar(30) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `IdUsuario` varchar(10) DEFAULT NULL,
  `Posicao` varchar(255) DEFAULT NULL,
  `Situacao` varchar(255) DEFAULT NULL,
  `IdSucursal` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdCredito`),
  KEY `CLinha` (`IdAvalista`),
  KEY `tab_AlunoCursoCodigoAluno` (`IdCliente`),
  KEY `tab_AlunoCursoCodigoCurso` (`IdLinha`),
  KEY `tab_AlunoCursoCodigoGestor` (`IdGestor`),
  KEY `IdDestino` (`IdDestino`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdSucursal` (`IdSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

/*Data for the table `tab_credito_1solicitado` */

LOCK TABLES `tab_credito_1solicitado` WRITE;

insert  into `tab_credito_1solicitado`(`IdCredito`,`IdCliente`,`IdAvalista`,`IdLinha`,`IdGestor`,`IdDestino`,`TaxaJuro`,`Prazo`,`Periodo`,`ValorSolicitado`,`DataReg`,`IdUsuario`,`Posicao`,`Situacao`,`IdSucursal`) values (165,'1','3','12','1','2',NULL,NULL,NULL,'345','2018-03-18 01:23:51','',NULL,'Rejeitado',''),(166,'2','3','14','4','3',NULL,NULL,NULL,'556454','2018-03-18 01:25:05','',NULL,'Rejeitado',''),(167,'3','3','12','1','2',NULL,NULL,NULL,'345','2018-03-18 01:27:08','14',NULL,'Aprovado','1'),(168,'2','3','12','1','2',NULL,NULL,NULL,'354','2018-03-18 01:27:50','14',NULL,'Rejeitado','1'),(169,'1','3','12','1','2',NULL,NULL,NULL,'718683721361','2018-03-18 01:28:31','14',NULL,'Rejeitado','1'),(170,'0','3','12','1','2',NULL,NULL,NULL,'7777777777','2018-03-18 04:19:42','14',NULL,'Rejeitado','1'),(171,'0','3','12','1','2',NULL,NULL,NULL,'6666','2018-03-18 04:43:49','14',NULL,'Rejeitado','1'),(172,'0','3','12','1','2',NULL,NULL,NULL,'3456780','2018-03-18 05:43:39','14',NULL,'Rejeitado','1'),(173,'0','3','12','1','2',NULL,NULL,NULL,'45678','2018-03-18 06:44:20','14',NULL,'Aprovado','1'),(174,'0','3','12','1','2',NULL,NULL,NULL,'345678','2018-03-18 06:44:24','14',NULL,'Aprovado','1'),(175,'0','3','12','1','2',NULL,NULL,NULL,'23434','2018-03-19 04:35:16','14',NULL,'Aprovado','1'),(176,'0','3','12','1','2',NULL,NULL,NULL,'2132','2018-03-19 04:57:27','14',NULL,'Aprovado','1'),(177,'0','3','12','1','2',NULL,NULL,NULL,'23','2018-03-19 04:57:34','14',NULL,'Rejeitado','1'),(178,'0','3','12','1','2',NULL,NULL,NULL,'132','2018-03-19 04:57:57','14',NULL,'Rejeitado','1'),(179,'0','3','12','1','2',NULL,NULL,NULL,'2324324','2018-03-19 05:12:03','14',NULL,'Rejeitado','1'),(180,'0','3','12','1','2',NULL,NULL,NULL,'222111','2018-03-19 05:12:15','14',NULL,'Rejeitado','1'),(181,'0','3','12','1','2',NULL,NULL,NULL,'234324','2018-03-19 05:46:19','14',NULL,'Solicitado','1');

UNLOCK TABLES;

/*Table structure for table `tab_credito_2proposta` */

DROP TABLE IF EXISTS `tab_credito_2proposta`;

CREATE TABLE `tab_credito_2proposta` (
  `IdCredito` int(10) DEFAULT NULL,
  `IdCliente` int(10) DEFAULT NULL,
  `IdAvalista` int(10) DEFAULT NULL,
  `IdLinha` int(10) DEFAULT NULL,
  `IdGestor` int(10) DEFAULT NULL,
  `IdDestino` int(10) DEFAULT NULL,
  `TaxaJuro` double DEFAULT NULL,
  `Prazo` smallint(5) DEFAULT NULL,
  `Periodo` varchar(255) DEFAULT NULL,
  `ValorAprovado` double DEFAULT NULL,
  `TotalGarantias` double DEFAULT NULL,
  `Prestacao` double DEFAULT NULL,
  `NumeroPrestacoes` smallint(5) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `IdUsuario` int(10) DEFAULT NULL,
  `Posicao` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  KEY `CAvalista` (`IdAvalista`),
  KEY `CodigoGestor` (`IdGestor`),
  KEY `CodigoLinha` (`IdLinha`),
  KEY `tab_AlunoCursoCodigoAluno` (`IdCredito`),
  KEY `tab_AlunoCursoCodigoCurso` (`ValorAprovado`),
  KEY `tab_AlunoCursoCodigoGestor` (`Prestacao`),
  KEY `tab_Conta_PropostaCodigoUsuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_credito_2proposta` */

LOCK TABLES `tab_credito_2proposta` WRITE;

insert  into `tab_credito_2proposta`(`IdCredito`,`IdCliente`,`IdAvalista`,`IdLinha`,`IdGestor`,`IdDestino`,`TaxaJuro`,`Prazo`,`Periodo`,`ValorAprovado`,`TotalGarantias`,`Prestacao`,`NumeroPrestacoes`,`DataReg`,`IdUsuario`,`Posicao`,`IdSucursal`) values (1121,68,NULL,NULL,NULL,NULL,25,2,NULL,15000,NULL,10416.67,2,'2018-02-05 00:00:00',1,NULL,NULL),(1122,69,NULL,NULL,NULL,NULL,10,12,NULL,20000,NULL,2935.27,12,'2018-01-04 00:00:00',1,NULL,NULL),(1123,68,NULL,NULL,NULL,NULL,30,3,NULL,17000,NULL,9360.65,3,'2018-02-08 00:00:00',1,NULL,NULL),(1124,68,NULL,NULL,NULL,NULL,25,2,NULL,10000,NULL,6944.44,2,'2018-02-08 00:00:00',1,NULL,NULL),(1125,69,NULL,NULL,NULL,NULL,30,3,NULL,15000,NULL,8259.4,3,'2018-02-08 00:00:00',1,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_credito_4vigente` */

DROP TABLE IF EXISTS `tab_credito_4vigente`;

CREATE TABLE `tab_credito_4vigente` (
  `IdCredito` int(10) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(10) DEFAULT NULL,
  `IdAvalista` int(10) DEFAULT NULL,
  `IdLinha` int(10) DEFAULT NULL,
  `IdGestor` int(10) DEFAULT NULL,
  `IdDestino` int(10) DEFAULT NULL,
  `TaxaJuro` double DEFAULT NULL,
  `Prazo` smallint(5) DEFAULT NULL,
  `Periodo` varchar(255) DEFAULT NULL,
  `ValorSolicitado` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `IdUsuario` int(10) DEFAULT NULL,
  `Prestacao` double DEFAULT NULL,
  `NumeroPrestacoes` smallint(5) DEFAULT NULL,
  `ValorAprovado` double DEFAULT NULL,
  `Posicao` varchar(255) DEFAULT NULL,
  `Situacao` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  `TotalGarantias` double DEFAULT NULL,
  PRIMARY KEY (`IdCredito`),
  KEY `CAvalista` (`IdAvalista`),
  KEY `CodigoGestor` (`IdGestor`),
  KEY `CodigoLinha` (`IdLinha`),
  KEY `tab_AlunoCursoCodigoAluno` (`IdCredito`),
  KEY `tab_AlunoCursoCodigoCurso` (`ValorAprovado`),
  KEY `tab_AlunoCursoCodigoGestor` (`Prestacao`),
  KEY `tab_Conta_PropostaCodigoUsuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `tab_credito_4vigente` */

LOCK TABLES `tab_credito_4vigente` WRITE;

insert  into `tab_credito_4vigente`(`IdCredito`,`IdCliente`,`IdAvalista`,`IdLinha`,`IdGestor`,`IdDestino`,`TaxaJuro`,`Prazo`,`Periodo`,`ValorSolicitado`,`DataReg`,`IdUsuario`,`Prestacao`,`NumeroPrestacoes`,`ValorAprovado`,`Posicao`,`Situacao`,`IdSucursal`,`TotalGarantias`) values (11,0,1,12,2,0,1,0,'0',234215423,'2018-03-10 06:08:17',0,NULL,NULL,NULL,'0','0',0,NULL),(12,0,1,12,2,0,1,0,'0',23453425432,'2018-03-10 06:09:19',0,NULL,NULL,NULL,'0','0',0,NULL),(13,0,1,12,3,0,1,0,'0',3245,'2018-03-10 06:32:21',0,NULL,NULL,NULL,'0','0',0,NULL),(14,0,1,12,2,0,1,0,'0',3424,'2018-03-10 06:38:02',0,NULL,NULL,NULL,'0','0',0,NULL),(15,0,1,12,2,0,1,0,'0',3254,'2018-03-10 06:39:10',0,NULL,NULL,NULL,'0','0',0,NULL),(16,0,1,12,2,0,1,0,'0',345,'2018-03-10 06:40:06',0,NULL,NULL,NULL,'0','0',0,NULL),(17,0,1,2,12,0,1,0,'0',2345,'2018-03-10 06:43:20',0,NULL,NULL,NULL,'0','0',0,NULL),(18,0,1,2,12,0,1,0,'0',234,'2018-03-10 06:45:42',0,NULL,NULL,NULL,'0','0',0,NULL),(19,0,1,2,12,0,1,0,'0',2345,'2018-03-10 08:11:22',0,NULL,NULL,NULL,'0','0',0,NULL),(20,0,1,2,12,0,1,0,'0',4352,'2018-03-10 08:13:23',0,NULL,NULL,NULL,'0','0',0,NULL),(21,0,1,2,12,0,1,0,'0',12345,'2018-03-10 08:17:44',0,NULL,NULL,NULL,'0','0',0,NULL),(22,0,1,2,12,0,1,0,'0',12345,'2018-03-10 08:18:00',0,NULL,NULL,NULL,'0','0',0,NULL),(23,0,1,2,12,0,1,0,'0',12345,'2018-03-10 08:18:05',0,NULL,NULL,NULL,'0','0',0,NULL),(24,0,0,3,0,0,0,0,'0',0,'2018-03-10 08:18:54',0,NULL,NULL,NULL,'0','0',0,NULL),(25,0,1,3,12,0,1,0,'0',12345,'2018-03-10 09:12:41',0,NULL,NULL,NULL,'0','0',0,NULL),(26,0,1,2,12,0,1,0,'0',555,'2018-03-11 06:56:13',0,NULL,NULL,NULL,'0','0',0,NULL),(27,0,1,5,16,0,4,0,'0',456,'2018-03-11 07:53:16',0,NULL,NULL,NULL,'0','0',0,NULL),(28,0,1,5,16,0,4,0,'0',456,'2018-03-11 07:53:19',0,NULL,NULL,NULL,'0','0',0,NULL),(29,0,1,2,12,0,1,0,'0',567,'2018-03-11 07:53:32',0,NULL,NULL,NULL,'0','0',0,NULL),(30,0,1,2,12,0,1,0,'0',4567,'2018-03-11 07:53:37',0,NULL,NULL,NULL,'0','0',0,NULL),(31,0,1,3,12,0,1,0,'0',12345,'2018-03-11 07:53:41',0,NULL,NULL,NULL,'0','0',0,NULL),(32,88,1,2,12,0,1,0,'0',5566,'2018-03-11 07:53:51',0,NULL,NULL,NULL,'0','0',0,NULL),(33,0,1,5,16,0,4,0,'0',456,'2018-03-11 08:23:00',0,NULL,NULL,NULL,'0','0',0,NULL),(34,0,1,5,16,0,4,0,'0',456,'2018-03-11 08:26:17',0,NULL,NULL,NULL,'0','0',0,NULL),(35,0,1,5,16,0,4,0,'0',456,'2018-03-13 02:48:09',0,NULL,NULL,NULL,'0','0',0,NULL),(36,0,1,5,16,0,4,0,'0',456,'2018-03-13 05:46:54',0,NULL,NULL,NULL,'0','0',0,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_credito_5abate` */

DROP TABLE IF EXISTS `tab_credito_5abate`;

CREATE TABLE `tab_credito_5abate` (
  `CAbate` int(10) NOT NULL AUTO_INCREMENT,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `DataAbate` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `FormadeAbate` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CAbate`),
  KEY `tab_Conta_AbateCodigoConta` (`CCredito`),
  KEY `tab_Conta_AbateCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `tab_credito_5abate` */

LOCK TABLES `tab_credito_5abate` WRITE;

insert  into `tab_credito_5abate`(`CAbate`,`CCliente`,`CCredito`,`DataAbate`,`CUsuario`,`FormadeAbate`,`CEscritorio`) values (39,69,1122,'2018-02-01 00:00:00',1,'ERRO TÉCNICO',NULL),(40,68,1121,'2018-02-01 00:00:00',1,'ERRO TÉCNICO',NULL),(41,68,1121,'2018-02-05 00:00:00',1,'ERRO TÉCNICO',NULL),(42,68,1121,'2018-02-05 00:00:00',1,'ERRO TÉCNICO',NULL),(43,68,1121,'2018-02-05 00:00:00',1,'ERRO TÉCNICO',NULL),(44,68,1121,'2018-02-05 00:00:00',1,'ERRO TÉCNICO',NULL),(45,68,1121,'2018-02-05 00:00:00',1,'ERRO TÉCNICO',NULL),(46,69,1122,'2018-02-05 00:00:00',1,'ERRO TÉCNICO',NULL),(47,69,1122,'2018-02-05 00:00:00',1,'ERRO TÉCNICO',NULL);

UNLOCK TABLES;

/*Table structure for table `tab_credito_6pago` */

DROP TABLE IF EXISTS `tab_credito_6pago`;

CREATE TABLE `tab_credito_6pago` (
  `CCreditoPago` int(10) NOT NULL AUTO_INCREMENT,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `Estado` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CCreditoPago`),
  KEY `tab_Conta_PagaCodigoConta` (`CCredito`),
  KEY `tab_Conta_PagaCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_credito_6pago` */

LOCK TABLES `tab_credito_6pago` WRITE;

UNLOCK TABLES;

/*Table structure for table `tab_credito_7aprovado` */

DROP TABLE IF EXISTS `tab_credito_7aprovado`;

CREATE TABLE `tab_credito_7aprovado` (
  `IdCliente` int(10) DEFAULT NULL,
  `IdCredito` varchar(50) DEFAULT NULL,
  `DataAprovado` timestamp NULL DEFAULT NULL,
  `IdUsuario` varchar(50) DEFAULT NULL,
  `IdSucursal` varchar(50) DEFAULT NULL,
  KEY `tab_Conta_RejeitadaCodigoConta` (`IdCredito`),
  KEY `tab_Conta_RejeitadaCodigoUsuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_credito_7aprovado` */

LOCK TABLES `tab_credito_7aprovado` WRITE;

insert  into `tab_credito_7aprovado`(`IdCliente`,`IdCredito`,`DataAprovado`,`IdUsuario`,`IdSucursal`) values (0,'172','2018-03-18 06:39:41','14','1'),(0,'172','2018-03-18 06:43:06','14','1'),(0,'173','2018-03-18 06:44:30','14','1'),(0,'174','2018-03-18 06:46:25','14','1'),(3,'167','2018-03-18 08:25:20','14','1'),(3,'167','2018-03-18 08:25:22','14','1'),(0,'175','2018-03-20 03:42:52','14','1'),(0,'175','2018-03-20 03:45:49','14','1'),(0,'176','2018-03-28 06:46:28','14','1'),(0,'176','2018-03-28 06:46:32','14','1'),(0,'177','2018-03-28 06:46:34','14','1');

UNLOCK TABLES;

/*Table structure for table `tab_credito_7rejeitado` */

DROP TABLE IF EXISTS `tab_credito_7rejeitado`;

CREATE TABLE `tab_credito_7rejeitado` (
  `IdCliente` int(10) DEFAULT NULL,
  `IdCredito` varchar(50) DEFAULT NULL,
  `IdMotivo` varchar(50) DEFAULT NULL,
  `DataRejeita` timestamp NULL DEFAULT NULL,
  `IdUsuario` varchar(50) DEFAULT NULL,
  `IdSucursal` varchar(50) DEFAULT NULL,
  KEY `tab_Conta_RejeitadaCodigoConta` (`IdCredito`),
  KEY `tab_Conta_RejeitadaCodigoMotivo` (`IdMotivo`),
  KEY `tab_Conta_RejeitadaCodigoUsuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_credito_7rejeitado` */

LOCK TABLES `tab_credito_7rejeitado` WRITE;

insert  into `tab_credito_7rejeitado`(`IdCliente`,`IdCredito`,`IdMotivo`,`DataRejeita`,`IdUsuario`,`IdSucursal`) values (0,'0','','2018-03-18 01:39:36','14','1'),(0,'0','','2018-03-18 01:40:00','14','1'),(0,'','','2018-03-18 01:41:56','14','1'),(0,'','','2018-03-18 02:00:04','14','1'),(0,'','','2018-03-18 02:00:51','14','1'),(0,'','','2018-03-18 02:08:10','14','1'),(0,'','','2018-03-18 02:12:50','14','1'),(0,'','','2018-03-18 02:13:42','14','1'),(0,'','','2018-03-18 02:14:07','14','1'),(0,'','','2018-03-18 02:15:11','14','1'),(0,'0','','2018-03-18 02:18:33','14','1'),(0,'0','','2018-03-18 02:18:47','14','1'),(0,'0','','2018-03-18 02:19:09','14','1'),(0,'0','','2018-03-18 03:54:56','14','1'),(0,'0','','2018-03-18 03:55:11','14','1'),(0,'0','','2018-03-18 03:55:23','14','1'),(0,'0','','2018-03-18 03:58:55','14','1'),(0,'0','','2018-03-18 04:05:59','14','1'),(0,'0','','2018-03-18 04:06:01','14','1'),(0,'0','','2018-03-18 04:06:02','14','1'),(0,'0','','2018-03-18 04:06:04','14','1'),(0,'0','','2018-03-18 04:43:20','14','1'),(0,'0','','2018-03-18 04:43:22','14','1'),(0,'0','','2018-03-18 04:43:56','14','1'),(0,'0','','2018-03-18 06:14:00','14','1'),(0,'0','','2018-03-28 06:46:36','14','1'),(0,'0','','2018-03-28 06:46:37','14','1'),(0,'0','','2018-03-28 06:46:39','14','1'),(0,'0','','2018-03-28 06:46:42','14','1');

UNLOCK TABLES;

/*Table structure for table `tab_desembolso` */

DROP TABLE IF EXISTS `tab_desembolso`;

CREATE TABLE `tab_desembolso` (
  `CCredito` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CFormaPagamento` int(10) DEFAULT NULL,
  `CBanco` int(10) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  KEY `tab_DesembolsoCodigoBanco` (`CBanco`),
  KEY `tab_DesembolsoCodigoTipoDesembolso` (`CFormaPagamento`),
  KEY `tab_DesembolsoCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_desembolso` */

LOCK TABLES `tab_desembolso` WRITE;

insert  into `tab_desembolso`(`CCredito`,`CCliente`,`CFormaPagamento`,`CBanco`,`Montante`,`DataReg`,`CUsuario`,`CEscritorio`) values (1121,68,1,13,14800,'2018-02-05 00:00:00',1,NULL),(1122,69,1,13,19800,'2017-12-02 00:00:00',1,NULL),(1123,68,1,13,16800,'2018-01-05 00:00:00',1,NULL),(1124,68,1,13,9800,'2018-01-04 00:00:00',1,NULL),(1125,69,1,13,14800,'2018-02-08 00:00:00',1,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_desembolso_estorno` */

DROP TABLE IF EXISTS `tab_desembolso_estorno`;

CREATE TABLE `tab_desembolso_estorno` (
  `CCredito` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CFormaPagamento` int(10) DEFAULT NULL,
  `CBanco` int(10) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `Preparo` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  KEY `CBanco` (`CBanco`),
  KEY `CFormaPagamento` (`CFormaPagamento`),
  KEY `CUsuario` (`CUsuario`),
  KEY `tab_Desembolso_EstornoCodigoCliente` (`CCliente`),
  KEY `tab_Desembolso_EstornoCodigoConta` (`CCredito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_desembolso_estorno` */

LOCK TABLES `tab_desembolso_estorno` WRITE;

insert  into `tab_desembolso_estorno`(`CCredito`,`CCliente`,`CFormaPagamento`,`CBanco`,`Montante`,`Preparo`,`Total`,`DataReg`,`CUsuario`,`CEscritorio`) values (1121,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1122,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_despesas` */

DROP TABLE IF EXISTS `tab_despesas`;

CREATE TABLE `tab_despesas` (
  `CDespesa` int(10) NOT NULL AUTO_INCREMENT,
  `CFluxoCaixa` int(10) DEFAULT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CDespesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_despesas` */

LOCK TABLES `tab_despesas` WRITE;

UNLOCK TABLES;

/*Table structure for table `tab_fluxo` */

DROP TABLE IF EXISTS `tab_fluxo`;

CREATE TABLE `tab_fluxo` (
  `CFluxo` int(10) NOT NULL AUTO_INCREMENT,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CLancamentoCaixa` int(10) DEFAULT NULL,
  `CBanco` int(10) DEFAULT NULL,
  `CFormaPagamento` int(10) DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Entrada` double DEFAULT NULL,
  `Saida` double DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `CPrestacao` int(10) DEFAULT NULL,
  `CPrestacaoPaga` int(10) DEFAULT NULL,
  `IDFolha` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CFluxo`),
  KEY `IDFolha` (`IDFolha`),
  KEY `tab_FluxoCaixaCodigoBanco` (`CBanco`),
  KEY `tab_FluxoCaixaCodigoCliente` (`CCliente`),
  KEY `tab_FluxoCaixaCodigoConta` (`CCredito`),
  KEY `tab_FluxoCaixaCodigoLancCaixa` (`CLancamentoCaixa`),
  KEY `tab_FluxoCaixaCodigoPrestacao` (`CPrestacao`),
  KEY `tab_FluxoCaixaCodigoPrestacaoRealizado` (`CPrestacaoPaga`),
  KEY `tab_FluxoCaixaCodigoTipoDesembolso` (`CFormaPagamento`),
  KEY `tab_FluxoCaixaCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2368 DEFAULT CHARSET=utf8;

/*Data for the table `tab_fluxo` */

LOCK TABLES `tab_fluxo` WRITE;

insert  into `tab_fluxo`(`CFluxo`,`DataReg`,`CLancamentoCaixa`,`CBanco`,`CFormaPagamento`,`CUsuario`,`Descricao`,`Entrada`,`Saida`,`CCliente`,`CCredito`,`CPrestacao`,`CPrestacaoPaga`,`IDFolha`,`CEscritorio`) values (2350,'2018-02-01 00:00:00',8,13,1,1,'REFORÇO',200000,0,0,0,NULL,NULL,NULL,NULL),(2354,'2018-02-05 00:00:00',2,13,1,1,'DESEMBOLSO, VERONICA ALEXANDRE,CRÉDITO 2 MESES.',0,14800,68,1121,NULL,NULL,NULL,NULL),(2355,'2018-02-05 00:00:00',1,13,1,1,'PREPARO AUTOMATICO, VERONICA ALEXANDRE, CRÉDITO 2 MESES.',200,0,68,1121,NULL,NULL,NULL,NULL),(2356,'2018-02-05 00:00:00',7,5,1,1,'Prestação Completa, VERONICA ALEXANDRE, CRÉDITO 2 MESES',10416.67,0,68,1121,1261,813,NULL,NULL),(2359,'2018-02-05 00:00:00',2,13,1,1,'DESEMBOLSO, Joaquim De Jesus Mucavela,LINHA ESPECIAL.',0,19800,69,1122,NULL,NULL,NULL,NULL),(2360,'2018-02-05 00:00:00',1,13,1,1,'PREPARO AUTOMATICO, Joaquim De Jesus Mucavela, LINHA ESPECIAL.',200,0,69,1122,NULL,NULL,NULL,NULL),(2361,'2018-02-08 00:00:00',2,13,1,1,'DESEMBOLSO, VERONICA ALEXANDRE,CRÉDITO 3 MÊSES.',0,16800,68,1123,NULL,NULL,NULL,NULL),(2362,'2018-02-08 00:00:00',1,13,1,1,'PREPARO AUTOMATICO, VERONICA ALEXANDRE, CRÉDITO 3 MÊSES.',200,0,68,1123,NULL,NULL,NULL,NULL),(2363,'2018-02-08 00:00:00',2,13,1,1,'DESEMBOLSO, VERONICA ALEXANDRE,CRÉDITO 2 MESES.',0,9800,68,1124,NULL,NULL,NULL,NULL),(2364,'2018-02-08 00:00:00',1,13,1,1,'PREPARO AUTOMATICO, VERONICA ALEXANDRE, CRÉDITO 2 MESES.',200,0,68,1124,NULL,NULL,NULL,NULL),(2365,'2018-02-08 00:00:00',7,5,1,1,'Prestação Completa Mora, VERONICA ALEXANDRE, CRÉDITO 2 MESES',7500,0,68,1124,1319,814,NULL,NULL),(2366,'2018-02-08 00:00:00',2,13,1,1,'DESEMBOLSO, Joaquim De Jesus Mucavela,CRÉDITO 3 MÊSES.',0,14800,69,1125,NULL,NULL,NULL,NULL),(2367,'2018-02-08 00:00:00',1,13,1,1,'PREPARO AUTOMATICO, Joaquim De Jesus Mucavela, CRÉDITO 3 MÊSES.',200,0,69,1125,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_folhasalario` */

DROP TABLE IF EXISTS `tab_folhasalario`;

CREATE TABLE `tab_folhasalario` (
  `IDFolha` int(10) NOT NULL AUTO_INCREMENT,
  `CUsuario` int(10) DEFAULT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Cargo` varchar(255) DEFAULT NULL,
  `SalarioBruto` double DEFAULT NULL,
  `SalarioPago` double DEFAULT NULL,
  `IRPS` double DEFAULT NULL,
  `INSS` double DEFAULT NULL,
  `Beneficio` double DEFAULT NULL,
  `Desconto` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `MesAno` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`IDFolha`),
  KEY `CodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_folhasalario` */

LOCK TABLES `tab_folhasalario` WRITE;

UNLOCK TABLES;

/*Table structure for table `tab_folhasalario_lancbeneficio` */

DROP TABLE IF EXISTS `tab_folhasalario_lancbeneficio`;

CREATE TABLE `tab_folhasalario_lancbeneficio` (
  `IDFolha` int(10) DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CBeneficio` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  KEY `IDFolha` (`IDFolha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_folhasalario_lancbeneficio` */

LOCK TABLES `tab_folhasalario_lancbeneficio` WRITE;

UNLOCK TABLES;

/*Table structure for table `tab_folhasalario_lancdesconto` */

DROP TABLE IF EXISTS `tab_folhasalario_lancdesconto`;

CREATE TABLE `tab_folhasalario_lancdesconto` (
  `IDFolha` int(10) DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CDesconto` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  KEY `IDFolha` (`IDFolha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_folhasalario_lancdesconto` */

LOCK TABLES `tab_folhasalario_lancdesconto` WRITE;

UNLOCK TABLES;

/*Table structure for table `tab_garantias_avalista` */

DROP TABLE IF EXISTS `tab_garantias_avalista`;

CREATE TABLE `tab_garantias_avalista` (
  `CGarantiaAvalista` int(10) NOT NULL AUTO_INCREMENT,
  `CAvalista` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CTipoGarantia` int(10) DEFAULT NULL,
  `Descricao` varchar(150) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CGarantiaAvalista`),
  KEY `tab_Garantias_AvalistaCodigoAvalista` (`CAvalista`),
  KEY `tab_GarantiasCodigoCliente` (`CCliente`),
  KEY `tab_GarantiasCodigoGarantia` (`CTipoGarantia`),
  KEY `tab_GarantiasCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_garantias_avalista` */

LOCK TABLES `tab_garantias_avalista` WRITE;

UNLOCK TABLES;

/*Table structure for table `tab_garantias_cliente` */

DROP TABLE IF EXISTS `tab_garantias_cliente`;

CREATE TABLE `tab_garantias_cliente` (
  `CGarantiaCliente` int(10) NOT NULL AUTO_INCREMENT,
  `CCliente` int(10) DEFAULT NULL,
  `CTipoGarantia` int(10) DEFAULT NULL,
  `Descricao` varchar(150) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CGarantiaCliente`),
  KEY `tab_GarantiasCodigoCliente` (`CCliente`),
  KEY `tab_GarantiasCodigoGarantia` (`CTipoGarantia`),
  KEY `tab_GarantiasCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=567 DEFAULT CHARSET=utf8;

/*Data for the table `tab_garantias_cliente` */

LOCK TABLES `tab_garantias_cliente` WRITE;

insert  into `tab_garantias_cliente`(`CGarantiaCliente`,`CCliente`,`CTipoGarantia`,`Descricao`,`Montante`,`DataReg`,`CUsuario`,`CEscritorio`) values (565,68,7,'FOGAO',120000,'2018-02-01 00:00:00',1,NULL),(566,69,6,'FSDASD',20000,'2018-02-01 00:00:00',1,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_preparo` */

DROP TABLE IF EXISTS `tab_preparo`;

CREATE TABLE `tab_preparo` (
  `CCredito` varchar(255) DEFAULT NULL,
  `CCliente` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `TipoDesconto` varchar(255) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  KEY `NumeroRecibo` (`TipoDesconto`),
  KEY `tab_PgtPreparosCodigoCliente` (`CCliente`),
  KEY `tab_PgtPreparosCodigoConta` (`CCredito`),
  KEY `tab_PgtPreparosCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_preparo` */

LOCK TABLES `tab_preparo` WRITE;

insert  into `tab_preparo`(`CCredito`,`CCliente`,`Montante`,`TipoDesconto`,`DataReg`,`CUsuario`,`CEscritorio`) values ('1121','68',200,'Desconto no Crédito','2018-02-05 00:00:00',1,NULL),('1122','69',200,'Desconto no Crédito','2018-02-05 00:00:00',1,NULL),('1123','68',200,'Desconto no Crédito','2018-02-08 00:00:00',1,NULL),('1124','68',200,'Desconto no Crédito','2018-02-08 00:00:00',1,NULL),('1125','69',200,'Desconto no Crédito','2018-02-08 00:00:00',1,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_prestacao_1plano` */

DROP TABLE IF EXISTS `tab_prestacao_1plano`;

CREATE TABLE `tab_prestacao_1plano` (
  `CPrestacao` int(10) NOT NULL AUTO_INCREMENT,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `PrestacaoNumero` int(10) DEFAULT NULL,
  `Vencimento` timestamp NULL DEFAULT NULL,
  `Prestacao` double DEFAULT NULL,
  `Capital` double DEFAULT NULL,
  `Juro` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `Abate` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CPrestacao`),
  KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  KEY `tab_MensalidadesCodigoConta` (`CCredito`),
  KEY `tab_PrestacoesCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=1327 DEFAULT CHARSET=utf8;

/*Data for the table `tab_prestacao_1plano` */

LOCK TABLES `tab_prestacao_1plano` WRITE;

insert  into `tab_prestacao_1plano`(`CPrestacao`,`CCliente`,`CCredito`,`PrestacaoNumero`,`Vencimento`,`Prestacao`,`Capital`,`Juro`,`Saldo`,`CUsuario`,`Abate`,`CEscritorio`) values (1261,68,1121,1,'2018-03-05 00:00:00',10416.666667,6666.67,3750,8333.33,1,NULL,NULL),(1262,68,1121,2,'2018-02-04 00:00:00',10416.666667,8333.334167,2083.3325,0,1,NULL,NULL),(1299,69,1122,1,'2018-01-02 00:00:00',2935.266302,935.27,2000,19064.73,1,NULL,NULL),(1300,69,1122,2,'2018-04-05 00:00:00',2935.266302,1028.793302,1906.473,18035.936698,1,NULL,NULL),(1301,69,1122,3,'2018-05-05 00:00:00',2935.266302,1131.672632,1803.59367,16904.264066,1,NULL,NULL),(1302,69,1122,4,'2018-06-05 00:00:00',2935.266302,1244.839895,1690.426407,15659.42417,1,NULL,NULL),(1303,69,1122,5,'2018-07-05 00:00:00',2935.266302,1369.323885,1565.942417,14290.100285,1,NULL,NULL),(1304,69,1122,6,'2018-08-05 00:00:00',2935.266302,1506.256273,1429.010029,12783.844012,1,NULL,NULL),(1305,69,1122,7,'2018-09-05 00:00:00',2935.266302,1656.881901,1278.384401,11126.962111,1,NULL,NULL),(1306,69,1122,8,'2018-10-05 00:00:00',2935.266302,1822.570091,1112.696211,9304.39202,1,NULL,NULL),(1307,69,1122,9,'2018-11-05 00:00:00',2935.266302,2004.8271,930.439202,7299.56492,1,NULL,NULL),(1308,69,1122,10,'2018-12-05 00:00:00',2935.266302,2205.30981,729.956492,5094.25511,1,NULL,NULL),(1309,69,1122,11,'2019-01-05 00:00:00',2935.266302,2425.840791,509.425511,2668.414319,1,NULL,NULL),(1310,69,1122,12,'2019-02-05 00:00:00',2935.266302,2668.42487,266.841432,0,1,NULL,NULL),(1314,68,1123,1,'2018-02-05 00:00:00',9360.651629,4260.65,5100,12739.35,1,NULL,NULL),(1315,68,1123,2,'2018-04-08 00:00:00',9360.651629,5538.846629,3821.805,7200.503371,1,NULL,NULL),(1316,68,1123,3,'2018-05-08 00:00:00',9360.651629,7200.500618,2160.151011,0,1,NULL,NULL),(1319,68,1124,1,'2018-02-04 00:00:00',6944.444444,4444.44,2500,5555.56,1,NULL,NULL),(1320,68,1124,2,'2018-03-04 00:00:00',6944.444444,5555.554444,1388.89,0,1,NULL,NULL),(1324,69,1125,1,'2018-03-08 00:00:00',8259.398496,3759.4,4500,11240.6,1,NULL,NULL),(1325,69,1125,2,'2018-04-08 00:00:00',8259.398496,4887.218496,3372.18,6353.381504,1,NULL,NULL),(1326,69,1125,3,'2018-05-08 00:00:00',8259.398496,6353.384045,1906.014451,0,1,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_prestacao_2vigente` */

DROP TABLE IF EXISTS `tab_prestacao_2vigente`;

CREATE TABLE `tab_prestacao_2vigente` (
  `CPrestacaoVigente` int(10) NOT NULL AUTO_INCREMENT,
  `CPrestacao` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `CTaxa` int(10) DEFAULT NULL,
  `PrestacaoNumero` int(10) DEFAULT NULL,
  `Vencimento` timestamp NULL DEFAULT NULL,
  `Pagamento` timestamp NULL DEFAULT NULL,
  `Prestacao` double DEFAULT NULL,
  `Juro` double DEFAULT NULL,
  `Capital` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `Abate` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CPrestacaoVigente`),
  KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  KEY `tab_MensalidadesCodigoConta` (`CCredito`)
) ENGINE=InnoDB AUTO_INCREMENT=1335 DEFAULT CHARSET=utf8;

/*Data for the table `tab_prestacao_2vigente` */

LOCK TABLES `tab_prestacao_2vigente` WRITE;

insert  into `tab_prestacao_2vigente`(`CPrestacaoVigente`,`CPrestacao`,`CCliente`,`CCredito`,`CTaxa`,`PrestacaoNumero`,`Vencimento`,`Pagamento`,`Prestacao`,`Juro`,`Capital`,`Saldo`,`Abate`,`CEscritorio`) values (1270,1262,68,1121,0,2,'2018-02-04 00:00:00',NULL,10416.666667,2083.3325,8333.334167,0,NULL,NULL),(1307,1299,69,1122,0,1,'2018-01-02 00:00:00',NULL,2935.266302,2000,935.27,19064.73,NULL,NULL),(1308,1300,69,1122,0,2,'2018-04-05 00:00:00',NULL,2935.266302,1906.473,1028.793302,18035.936698,NULL,NULL),(1309,1301,69,1122,0,3,'2018-05-05 00:00:00',NULL,2935.266302,1803.59367,1131.672632,16904.264066,NULL,NULL),(1310,1302,69,1122,0,4,'2018-06-05 00:00:00',NULL,2935.266302,1690.426407,1244.839895,15659.42417,NULL,NULL),(1311,1303,69,1122,0,5,'2018-07-05 00:00:00',NULL,2935.266302,1565.942417,1369.323885,14290.100285,NULL,NULL),(1312,1304,69,1122,0,6,'2018-08-05 00:00:00',NULL,2935.266302,1429.010029,1506.256273,12783.844012,NULL,NULL),(1313,1305,69,1122,0,7,'2018-09-05 00:00:00',NULL,2935.266302,1278.384401,1656.881901,11126.962111,NULL,NULL),(1314,1306,69,1122,0,8,'2018-10-05 00:00:00',NULL,2935.266302,1112.696211,1822.570091,9304.39202,NULL,NULL),(1315,1307,69,1122,0,9,'2018-11-05 00:00:00',NULL,2935.266302,930.439202,2004.8271,7299.56492,NULL,NULL),(1316,1308,69,1122,0,10,'2018-12-05 00:00:00',NULL,2935.266302,729.956492,2205.30981,5094.25511,NULL,NULL),(1317,1309,69,1122,0,11,'2019-01-05 00:00:00',NULL,2935.266302,509.425511,2425.840791,2668.414319,NULL,NULL),(1318,1310,69,1122,0,12,'2019-02-05 00:00:00',NULL,2935.266302,266.841432,2668.42487,0,NULL,NULL),(1322,1314,68,1123,0,1,'2018-02-05 00:00:00',NULL,9360.651629,5100,4260.65,12739.35,NULL,NULL),(1323,1315,68,1123,0,2,'2018-04-08 00:00:00',NULL,9360.651629,3821.805,5538.846629,7200.503371,NULL,NULL),(1324,1316,68,1123,0,3,'2018-05-08 00:00:00',NULL,9360.651629,2160.151011,7200.500618,0,NULL,NULL),(1328,1320,68,1124,0,2,'2018-03-04 00:00:00',NULL,6944.444444,1388.89,5555.554444,0,NULL,NULL),(1332,1324,69,1125,0,1,'2018-03-08 00:00:00',NULL,8259.398496,4500,3759.4,11240.6,NULL,NULL),(1333,1325,69,1125,0,2,'2018-04-08 00:00:00',NULL,8259.398496,3372.18,4887.218496,6353.381504,NULL,NULL),(1334,1326,69,1125,0,3,'2018-05-08 00:00:00',NULL,8259.398496,1906.014451,6353.384045,0,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_prestacao_3estorno` */

DROP TABLE IF EXISTS `tab_prestacao_3estorno`;

CREATE TABLE `tab_prestacao_3estorno` (
  `CPrestacaoVigente` int(10) NOT NULL AUTO_INCREMENT,
  `CPrestacao` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `PrestacaoNumero` int(10) DEFAULT NULL,
  `Vencimento` timestamp NULL DEFAULT NULL,
  `Pagamento` timestamp NULL DEFAULT NULL,
  `Prestacao` double DEFAULT NULL,
  `Mora` double DEFAULT NULL,
  `Juro` double DEFAULT NULL,
  `Capital` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `DataEstorno` timestamp NULL DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CPrestacaoVigente`),
  KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  KEY `tab_MensalidadesCodigoConta` (`CCredito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tab_prestacao_3estorno` */

LOCK TABLES `tab_prestacao_3estorno` WRITE;

UNLOCK TABLES;

/*Table structure for table `tab_prestacao_4paga` */

DROP TABLE IF EXISTS `tab_prestacao_4paga`;

CREATE TABLE `tab_prestacao_4paga` (
  `CPrestacaoPaga` int(10) NOT NULL AUTO_INCREMENT,
  `CPrestacao` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `PrestacaoNumero` int(10) DEFAULT NULL,
  `Vencimento` timestamp NULL DEFAULT NULL,
  `Pagamento` timestamp NULL DEFAULT NULL,
  `Mora` double DEFAULT NULL,
  `MoraDias` int(10) DEFAULT NULL,
  `PerdaoDias` int(10) DEFAULT NULL,
  `PerdaoMontante` double DEFAULT NULL,
  `AntecipadoDias` int(10) DEFAULT NULL,
  `AntecipadoMontante` double DEFAULT NULL,
  `Prestacao` double DEFAULT NULL,
  `Capital` double DEFAULT NULL,
  `Juro` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Remanescente` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `Abate` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CPrestacaoPaga`),
  KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  KEY `tab_MensalidadesCodigoConta` (`CCredito`),
  KEY `tab_Prestacoes_RealizadoCodigoUsuario` (`CUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8;

/*Data for the table `tab_prestacao_4paga` */

LOCK TABLES `tab_prestacao_4paga` WRITE;

insert  into `tab_prestacao_4paga`(`CPrestacaoPaga`,`CPrestacao`,`CCliente`,`CCredito`,`PrestacaoNumero`,`Vencimento`,`Pagamento`,`Mora`,`MoraDias`,`PerdaoDias`,`PerdaoMontante`,`AntecipadoDias`,`AntecipadoMontante`,`Prestacao`,`Capital`,`Juro`,`Total`,`Remanescente`,`Saldo`,`DataReg`,`CUsuario`,`Abate`,`CEscritorio`) values (813,1261,68,1121,1,'2018-02-05 00:00:00','2018-02-05 00:00:00',0,0,0,0,0,0,0,6666.67,3750,10416.67,0,8333.33,'2018-02-05 00:00:00',1,NULL,NULL),(814,1319,68,1124,1,'2018-02-04 00:00:00','2018-02-08 00:00:00',555.56,4,0,0,0,0,0,4444.44,2500,7500,0,5555.56,'2018-02-08 00:00:00',1,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tab_usuarios` */

DROP TABLE IF EXISTS `tab_usuarios`;

CREATE TABLE `tab_usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `NomeUsuario` varchar(50) DEFAULT NULL,
  `CargoUsuario` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SalarioBruto` double DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `Contacto` int(12) DEFAULT NULL,
  `Password` varchar(500) DEFAULT NULL,
  `Foto` blob,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tab_usuarios_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tab_usuarios` */

LOCK TABLES `tab_usuarios` WRITE;

insert  into `tab_usuarios`(`IdUsuario`,`NomeUsuario`,`CargoUsuario`,`Email`,`SalarioBruto`,`Endereco`,`Contacto`,`Password`,`Foto`,`IdSucursal`) values (14,'Ernesto Simango','Agministrador','neto.sima@gmail.com',50000,'Guava',842983939,'1bbd886460827015e5d605ed44252251','IMG_2239.JPEG',1),(15,'kdgawjd','adw','netok.sima@gmail.com',7,'sdfad',820000001,'1bbd886460827015e5d605ed44252251','Hello1.png',2),(16,'sderdfew','sdasd','k@gmail.com',243,'iuhakea',820000006,'1bbd886460827015e5d605ed44252251','',1),(17,'ddd','sasr','ima@gmail.com',323,'wefe',820000021,'1bbd886460827015e5d605ed44252251','fofteth.png',5),(18,'Ernesto','Boss','neto.sima@gmail.com',30000,'gago.c',827299183,'827ccb0eea8a706c4c34a16891f84e7b','',1);

UNLOCK TABLES;

/*Table structure for table `tb_banco` */

DROP TABLE IF EXISTS `tb_banco`;

CREATE TABLE `tb_banco` (
  `IdBanco` int(10) NOT NULL AUTO_INCREMENT,
  `NomeBanco` varchar(255) DEFAULT NULL,
  `NumeroDeConta` varchar(255) DEFAULT NULL,
  `NIB` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdBanco`),
  KEY `NumeroDeConta` (`NumeroDeConta`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tb_banco_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_banco` */

LOCK TABLES `tb_banco` WRITE;

insert  into `tb_banco`(`IdBanco`,`NomeBanco`,`NumeroDeConta`,`NIB`,`IdSucursal`) values (1,'BCI','2345','23423443',1);

UNLOCK TABLES;

/*Table structure for table `tb_destinocredito` */

DROP TABLE IF EXISTS `tb_destinocredito`;

CREATE TABLE `tb_destinocredito` (
  `IdDestino` int(10) NOT NULL AUTO_INCREMENT,
  `DestinoCredito` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdDestino`),
  KEY `tb_destinocredito_ibfk_1` (`IdSucursal`),
  CONSTRAINT `tb_destinocredito_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_destinocredito` */

LOCK TABLES `tb_destinocredito` WRITE;

insert  into `tb_destinocredito`(`IdDestino`,`DestinoCredito`,`IdSucursal`) values (2,'Material de Informática',1),(3,'Material de Escritório',1),(4,'Fundo de Maneio',1),(5,'Investimento',1),(6,'Fundo de Maneio e Investimento',1),(7,'Investimento em um Negocio Existente',1),(8,'Investimento em um novo negocio',1);

UNLOCK TABLES;

/*Table structure for table `tb_formapagamento` */

DROP TABLE IF EXISTS `tb_formapagamento`;

CREATE TABLE `tb_formapagamento` (
  `IdFormaPagamento` int(10) NOT NULL AUTO_INCREMENT,
  `FormaPagamento` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdFormaPagamento`),
  KEY `IdSucursal` (`IdSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_formapagamento` */

LOCK TABLES `tb_formapagamento` WRITE;

insert  into `tb_formapagamento`(`IdFormaPagamento`,`FormaPagamento`,`IdSucursal`) values (1,'Numerario',1),(3,'Transferencia',2),(5,'Numerario / Transferencia',2),(6,'Cheque',2),(7,'Cheque / Transferencia',2),(8,'Numerario / Cheuque',2);

UNLOCK TABLES;

/*Table structure for table `tb_gestor` */

DROP TABLE IF EXISTS `tb_gestor`;

CREATE TABLE `tb_gestor` (
  `IdGestor` int(10) NOT NULL AUTO_INCREMENT,
  `NomeGestor` varchar(255) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  `Contacto` int(20) DEFAULT NULL,
  PRIMARY KEY (`IdGestor`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tb_gestor_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_gestor` */

LOCK TABLES `tb_gestor` WRITE;

insert  into `tb_gestor`(`IdGestor`,`NomeGestor`,`DataReg`,`IdSucursal`,`Contacto`) values (1,'JOEL MIAMBO','2017-06-01 00:00:00',1,827299183),(2,'REGINA GIVE','2017-06-04 00:00:00',1,827299183),(3,'CELIA RAFAEL','2017-06-04 00:00:00',1,827299183),(4,'ZARDA CRISTINA','2017-06-04 00:00:00',1,827299183),(6,'FELICIDADE MAFUMO','2017-07-05 00:00:00',1,827299183),(7,'CARTEIRA ESPECIAL','2017-10-01 00:00:00',1,827299183);

UNLOCK TABLES;

/*Table structure for table `tb_linhacredito` */

DROP TABLE IF EXISTS `tb_linhacredito`;

CREATE TABLE `tb_linhacredito` (
  `IdLinha` int(10) NOT NULL AUTO_INCREMENT,
  `LinhaDeCredito` varchar(255) DEFAULT NULL,
  `TaxaJuro` double DEFAULT NULL,
  `Prazo` int(10) DEFAULT NULL,
  `PlanoPagamento` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdLinha`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tb_linhacredito_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `tb_linhacredito` */

LOCK TABLES `tb_linhacredito` WRITE;

insert  into `tb_linhacredito`(`IdLinha`,`LinhaDeCredito`,`TaxaJuro`,`Prazo`,`PlanoPagamento`,`IdSucursal`) values (12,'CREDITO 1 MES',20,1,'MENSAL',1),(13,'CREDITO 2 MESES',25,2,'MENSAL',2);

UNLOCK TABLES;

/*Table structure for table `tb_motivoregeita` */

DROP TABLE IF EXISTS `tb_motivoregeita`;

CREATE TABLE `tb_motivoregeita` (
  `IdMotivo` int(10) NOT NULL AUTO_INCREMENT,
  `Motivo` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdMotivo`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tb_motivoregeita_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tb_motivoregeita` */

LOCK TABLES `tb_motivoregeita` WRITE;

insert  into `tb_motivoregeita`(`IdMotivo`,`Motivo`,`IdSucursal`) values (2,'O CLIENTE NAO ACEITOU O MONTANTE APROVADO',1),(3,'CLIENTE NAO E TRANSPARENTE ',1),(4,'MOROSA EM OUTRAS INSTITUICOES',1),(5,'FALTA DE EXPERIENCIA NA ACTIVIDADE',1),(6,'O CLIENTE NAO TEM HISTORICA CREDITICIA ',1),(7,'ACTIVIDADE NAO PODE SER FINANCIADA (LEI)',1),(8,'NEGOCIO NAO E ESTAVEL',1),(9,'CLIENTE NAO COOPERA',1),(10,'OUTROS',1);

UNLOCK TABLES;

/*Table structure for table `tb_sucursal` */

DROP TABLE IF EXISTS `tb_sucursal`;

CREATE TABLE `tb_sucursal` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `Cidade` varchar(255) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Contacto` int(10) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactoAlternativo` int(10) DEFAULT NULL,
  `Titular` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tb_sucursal` */

LOCK TABLES `tb_sucursal` WRITE;

insert  into `tb_sucursal`(`Id`,`Nome`,`Cidade`,`Endereco`,`Contacto`,`Email`,`ContactoAlternativo`,`Titular`) values (1,'MAPALUVA MICROCREDITO','Maputo','AV. MARIEN NGUABI',847848647,'MAPALUVA.LDA@GMAIL.COM',827023940,'MAURO VICENTE DAS DORES GOCA'),(2,'MEGA','Maputo','Vladimir L',820000000,'John@gmail.co',820000000,'Rafael Ernesto Simango'),(5,'adwd','awda','awd',820000000,'adw@ad',820000000,'wadw'),(6,'adadw','adww','awdaw',820000001,'awd@ase',820000001,'sef');

UNLOCK TABLES;

/*Table structure for table `tb_taxas` */

DROP TABLE IF EXISTS `tb_taxas`;

CREATE TABLE `tb_taxas` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Preparo` double DEFAULT NULL,
  `Mora` int(10) DEFAULT NULL,
  `DescontoPelaAntecipacao` double DEFAULT NULL,
  `Outros_Impostos` int(10) DEFAULT NULL,
  `IRPS` int(10) DEFAULT NULL,
  `INSS_Empresa` int(10) DEFAULT NULL,
  `INSS_Trabalhador` int(10) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tb_taxas_ibfk_2` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `tb_taxas` */

LOCK TABLES `tb_taxas` WRITE;

insert  into `tb_taxas`(`Id`,`Preparo`,`Mora`,`DescontoPelaAntecipacao`,`Outros_Impostos`,`IRPS`,`INSS_Empresa`,`INSS_Trabalhador`,`IdSucursal`) values (15,3,23,34,34,22,23,3,1),(16,2342,23,323,1231,123,213,1231,1),(17,78687,545,45,65,57,65,43,1);

UNLOCK TABLES;

/*Table structure for table `tb_tipogarantia` */

DROP TABLE IF EXISTS `tb_tipogarantia`;

CREATE TABLE `tb_tipogarantia` (
  `IdGarantia` int(10) NOT NULL AUTO_INCREMENT,
  `TipoGarantia` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdGarantia`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tb_tipogarantia_ibfk_2` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tb_tipogarantia` */

LOCK TABLES `tb_tipogarantia` WRITE;

insert  into `tb_tipogarantia`(`IdGarantia`,`TipoGarantia`,`IdSucursal`) values (6,'Stock',1),(7,'Bens Domésticos',1),(8,'Viactura',1),(9,'Cheque',1),(10,'Desconto Salárial',1);

UNLOCK TABLES;

/*Table structure for table `tb_tipolancamento` */

DROP TABLE IF EXISTS `tb_tipolancamento`;

CREATE TABLE `tb_tipolancamento` (
  `IdTipoLancamento` int(11) NOT NULL AUTO_INCREMENT,
  `Lancamento` varchar(200) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  PRIMARY KEY (`IdTipoLancamento`),
  KEY `IdSucursal` (`IdSucursal`),
  CONSTRAINT `tb_tipolancamento_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_tipolancamento` */

LOCK TABLES `tb_tipolancamento` WRITE;

UNLOCK TABLES;

/*Table structure for table `tb_tipolancamentocaixa` */

DROP TABLE IF EXISTS `tb_tipolancamentocaixa`;

CREATE TABLE `tb_tipolancamentocaixa` (
  `CLancamentoCaixa` int(10) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CLancamentoCaixa`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `tb_tipolancamentocaixa` */

LOCK TABLES `tb_tipolancamentocaixa` WRITE;

insert  into `tb_tipolancamentocaixa`(`CLancamentoCaixa`,`Descricao`,`CEscritorio`) values (1,'Pagamento Preparo',NULL),(2,'Desembolso de Crédito',NULL),(3,'Compra de Material de Escritório',NULL),(4,'Despesas Fixas',NULL),(5,'Despesas Variáveis',NULL),(6,'Ganhos Extraordinários/Não Operacionais',NULL),(7,'Pagamento Prestação',NULL),(8,'Reforço',NULL),(9,'Depreciação',NULL),(10,'Despesas Financeiras',NULL),(11,'Provisao',NULL),(12,'Impostos',NULL),(13,'Saldo Inicial',NULL),(14,'Tranferencia',NULL);

UNLOCK TABLES;

/*Table structure for table `tb_tipolancamentodesconto` */

DROP TABLE IF EXISTS `tb_tipolancamentodesconto`;

CREATE TABLE `tb_tipolancamentodesconto` (
  `CDesconto` int(10) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL,
  PRIMARY KEY (`CDesconto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_tipolancamentodesconto` */

LOCK TABLES `tb_tipolancamentodesconto` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
