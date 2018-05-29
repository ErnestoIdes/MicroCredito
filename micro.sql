-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 07:18 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_avalista`
--

CREATE TABLE `tab_avalista` (
  `IdAvalista` int(10) NOT NULL,
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
  `IdUsuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_avalista`
--

INSERT INTO `tab_avalista` (`IdAvalista`, `Sexo`, `Nome`, `DataNascimento`, `Naturalidade`, `Cidade`, `Bairro`, `Quarteirao`, `CasaNumero`, `ContactoAvalista`, `Estado`, `TipoDocu`, `Documento`, `DataEmissao`, `LocalEmissao`, `MembrosFamiliares`, `Profissao`, `Observacao`, `DataReg`, `IdUsuario`) VALUES
(3, 'Masculino', 'adasd', '2018-03-09', 'afe', 'asdsad', 'awda', '1', '1112', '800000000', 'Solteiro(a)', 'BI', '754', '2018-02-26', 'tdsuth', '8', 'kaedsakd', '', '2018-03-17 00:33:20', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tab_cliente`
--

CREATE TABLE `tab_cliente` (
  `IdCliente` int(10) NOT NULL,
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
  `IdGestor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_cliente`
--

INSERT INTO `tab_cliente` (`IdCliente`, `Sexo`, `Nome`, `DataNascimento`, `Naturalidade`, `Cidade`, `Bairro`, `Quarteirao`, `CasaNumero`, `ContactoCliente`, `Estado`, `TipoDocu`, `Documento`, `DataEmissao`, `LocalEmissao`, `MembrosFamiliares`, `Profissao`, `Observacao`, `NomePai`, `NomeMae`, `Conjugue`, `ContactoConjugue`, `DataReg`, `IdUsuario`, `IdGestor`) VALUES
(1, 'Masculino', 'Ides', '2043-08-21', 'Moz', 'Mpto', 'Zimpas', '23', 21, '800000028', 'Solteiro(a)', 'BI', '12222222dh', '2020-10-22', 'gfdyh', 10, 'Teacher', '', 'aesgf', 'jcjh', '', '', '2018-03-16 05:21:03', 14, 1),
(2, 'Masculino', 'Rafa', '2043-08-21', 'South', 'Mpto', 'Zimpas', '23', 21, '800000028', 'Solteiro(a)', 'BI', '12222222dh', '2020-10-22', 'gfdyh', 10, 'Teacher', '', 'aesgf', 'jcjh', '', '', '2018-03-16 05:21:03', 14, 1),
(3, 'Masculino', 'Neyde', '2043-05-11', 'Moz', 'Mpto', 'Zimpas', '23', 21, '800000028', 'Solteiro(a)', 'BI', '12222222dh', '2020-10-22', 'gfdyh', 10, 'Teacher', '', 'aesgf', 'jcjh', '', '', '2018-03-16 05:21:03', 14, 1),
(4, 'Masculino', 'Mira', '2043-08-21', 'South', 'Mpto', 'Zimpas', '23', 21, '800000028', 'Solteiro(a)', 'BI', '12222222dh', '2020-10-22', 'gfdyh', 10, 'Teacher', '', 'aesgf', 'jcjh', '', '', '2018-03-16 05:21:03', 14, 1),
(5, 'Masculino', 'Simango', '2043-08-21', 'Moz', 'Mpto', 'Zimpas', '23', 21, '800000028', 'Solteiro(a)', 'BI', '12222222dh', '2020-10-22', 'gfdyh', 10, 'Teacher', '', 'aesgf', 'jcjh', '', '', '2018-03-16 05:21:03', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tab_credito_1solicitado`
--

CREATE TABLE `tab_credito_1solicitado` (
  `IdCredito` int(10) NOT NULL,
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
  `IdSucursal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_credito_1solicitado`
--

INSERT INTO `tab_credito_1solicitado` (`IdCredito`, `IdCliente`, `IdAvalista`, `IdLinha`, `IdGestor`, `IdDestino`, `TaxaJuro`, `Prazo`, `Periodo`, `ValorSolicitado`, `DataReg`, `IdUsuario`, `Posicao`, `Situacao`, `IdSucursal`) VALUES
(165, '1', '3', '12', '1', '2', NULL, NULL, NULL, '345', '2018-03-17 23:23:51', '', NULL, 'Rejeitado', ''),
(166, '2', '3', '14', '4', '3', NULL, NULL, NULL, '556454', '2018-03-17 23:25:05', '', NULL, 'Rejeitado', ''),
(167, '3', '3', '12', '1', '2', NULL, NULL, NULL, '345', '2018-03-17 23:27:08', '14', NULL, 'Aprovado', '1'),
(168, '2', '3', '12', '1', '2', NULL, NULL, NULL, '354', '2018-03-17 23:27:50', '14', NULL, 'Rejeitado', '1'),
(169, '1', '3', '12', '1', '2', NULL, NULL, NULL, '718683721361', '2018-03-17 23:28:31', '14', NULL, 'Rejeitado', '1'),
(170, '0', '3', '12', '1', '2', NULL, NULL, NULL, '7777777777', '2018-03-18 02:19:42', '14', NULL, 'Rejeitado', '1'),
(171, '0', '3', '12', '1', '2', NULL, NULL, NULL, '6666', '2018-03-18 02:43:49', '14', NULL, 'Rejeitado', '1'),
(172, '0', '3', '12', '1', '2', NULL, NULL, NULL, '3456780', '2018-03-18 03:43:39', '14', NULL, 'Rejeitado', '1'),
(173, '0', '3', '12', '1', '2', NULL, NULL, NULL, '45678', '2018-03-18 04:44:20', '14', NULL, 'Aprovado', '1'),
(174, '0', '3', '12', '1', '2', NULL, NULL, NULL, '345678', '2018-03-18 04:44:24', '14', NULL, 'Aprovado', '1'),
(175, '0', '3', '12', '1', '2', NULL, NULL, NULL, '23434', '2018-03-19 02:35:16', '14', NULL, 'Aprovado', '1'),
(176, '0', '3', '12', '1', '2', NULL, NULL, NULL, '2132', '2018-03-19 02:57:27', '14', NULL, 'Aprovado', '1'),
(177, '0', '3', '12', '1', '2', NULL, NULL, NULL, '23', '2018-03-19 02:57:34', '14', NULL, 'Rejeitado', '1'),
(178, '0', '3', '12', '1', '2', NULL, NULL, NULL, '132', '2018-03-19 02:57:57', '14', NULL, 'Rejeitado', '1'),
(179, '0', '3', '12', '1', '2', NULL, NULL, NULL, '2324324', '2018-03-19 03:12:03', '14', NULL, 'Rejeitado', '1'),
(180, '0', '3', '12', '1', '2', NULL, NULL, NULL, '222111', '2018-03-19 03:12:15', '14', NULL, 'Rejeitado', '1'),
(181, '0', '3', '12', '1', '2', NULL, NULL, NULL, '234324', '2018-03-19 03:46:19', '14', NULL, 'Solicitado', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tab_credito_2proposta`
--

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
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_credito_2proposta`
--

INSERT INTO `tab_credito_2proposta` (`IdCredito`, `IdCliente`, `IdAvalista`, `IdLinha`, `IdGestor`, `IdDestino`, `TaxaJuro`, `Prazo`, `Periodo`, `ValorAprovado`, `TotalGarantias`, `Prestacao`, `NumeroPrestacoes`, `DataReg`, `IdUsuario`, `Posicao`, `IdSucursal`) VALUES
(1121, 68, NULL, NULL, NULL, NULL, 25, 2, NULL, 15000, NULL, 10416.67, 2, '2018-02-04 22:00:00', 1, NULL, NULL),
(1122, 69, NULL, NULL, NULL, NULL, 10, 12, NULL, 20000, NULL, 2935.27, 12, '2018-01-03 22:00:00', 1, NULL, NULL),
(1123, 68, NULL, NULL, NULL, NULL, 30, 3, NULL, 17000, NULL, 9360.65, 3, '2018-02-07 22:00:00', 1, NULL, NULL),
(1124, 68, NULL, NULL, NULL, NULL, 25, 2, NULL, 10000, NULL, 6944.44, 2, '2018-02-07 22:00:00', 1, NULL, NULL),
(1125, 69, NULL, NULL, NULL, NULL, 30, 3, NULL, 15000, NULL, 8259.4, 3, '2018-02-07 22:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_credito_4vigente`
--

CREATE TABLE `tab_credito_4vigente` (
  `IdCredito` int(10) NOT NULL,
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
  `TotalGarantias` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_credito_4vigente`
--

INSERT INTO `tab_credito_4vigente` (`IdCredito`, `IdCliente`, `IdAvalista`, `IdLinha`, `IdGestor`, `IdDestino`, `TaxaJuro`, `Prazo`, `Periodo`, `ValorSolicitado`, `DataReg`, `IdUsuario`, `Prestacao`, `NumeroPrestacoes`, `ValorAprovado`, `Posicao`, `Situacao`, `IdSucursal`, `TotalGarantias`) VALUES
(11, 0, 1, 12, 2, 0, 1, 0, '0', 234215423, '2018-03-10 04:08:17', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(12, 0, 1, 12, 2, 0, 1, 0, '0', 23453425432, '2018-03-10 04:09:19', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(13, 0, 1, 12, 3, 0, 1, 0, '0', 3245, '2018-03-10 04:32:21', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(14, 0, 1, 12, 2, 0, 1, 0, '0', 3424, '2018-03-10 04:38:02', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(15, 0, 1, 12, 2, 0, 1, 0, '0', 3254, '2018-03-10 04:39:10', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(16, 0, 1, 12, 2, 0, 1, 0, '0', 345, '2018-03-10 04:40:06', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(17, 0, 1, 2, 12, 0, 1, 0, '0', 2345, '2018-03-10 04:43:20', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(18, 0, 1, 2, 12, 0, 1, 0, '0', 234, '2018-03-10 04:45:42', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(19, 0, 1, 2, 12, 0, 1, 0, '0', 2345, '2018-03-10 06:11:22', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(20, 0, 1, 2, 12, 0, 1, 0, '0', 4352, '2018-03-10 06:13:23', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(21, 0, 1, 2, 12, 0, 1, 0, '0', 12345, '2018-03-10 06:17:44', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(22, 0, 1, 2, 12, 0, 1, 0, '0', 12345, '2018-03-10 06:18:00', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(23, 0, 1, 2, 12, 0, 1, 0, '0', 12345, '2018-03-10 06:18:05', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(24, 0, 0, 3, 0, 0, 0, 0, '0', 0, '2018-03-10 06:18:54', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(25, 0, 1, 3, 12, 0, 1, 0, '0', 12345, '2018-03-10 07:12:41', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(26, 0, 1, 2, 12, 0, 1, 0, '0', 555, '2018-03-11 04:56:13', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(27, 0, 1, 5, 16, 0, 4, 0, '0', 456, '2018-03-11 05:53:16', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(28, 0, 1, 5, 16, 0, 4, 0, '0', 456, '2018-03-11 05:53:19', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(29, 0, 1, 2, 12, 0, 1, 0, '0', 567, '2018-03-11 05:53:32', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(30, 0, 1, 2, 12, 0, 1, 0, '0', 4567, '2018-03-11 05:53:37', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(31, 0, 1, 3, 12, 0, 1, 0, '0', 12345, '2018-03-11 05:53:41', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(32, 88, 1, 2, 12, 0, 1, 0, '0', 5566, '2018-03-11 05:53:51', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(33, 0, 1, 5, 16, 0, 4, 0, '0', 456, '2018-03-11 06:23:00', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(34, 0, 1, 5, 16, 0, 4, 0, '0', 456, '2018-03-11 06:26:17', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(35, 0, 1, 5, 16, 0, 4, 0, '0', 456, '2018-03-13 00:48:09', 0, NULL, NULL, NULL, '0', '0', 0, NULL),
(36, 0, 1, 5, 16, 0, 4, 0, '0', 456, '2018-03-13 03:46:54', 0, NULL, NULL, NULL, '0', '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_credito_5abate`
--

CREATE TABLE `tab_credito_5abate` (
  `CAbate` int(10) NOT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `DataAbate` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `FormadeAbate` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_credito_5abate`
--

INSERT INTO `tab_credito_5abate` (`CAbate`, `CCliente`, `CCredito`, `DataAbate`, `CUsuario`, `FormadeAbate`, `CEscritorio`) VALUES
(39, 69, 1122, '2018-01-31 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(40, 68, 1121, '2018-01-31 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(41, 68, 1121, '2018-02-04 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(42, 68, 1121, '2018-02-04 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(43, 68, 1121, '2018-02-04 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(44, 68, 1121, '2018-02-04 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(45, 68, 1121, '2018-02-04 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(46, 69, 1122, '2018-02-04 22:00:00', 1, 'ERRO TÉCNICO', NULL),
(47, 69, 1122, '2018-02-04 22:00:00', 1, 'ERRO TÉCNICO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_credito_6pago`
--

CREATE TABLE `tab_credito_6pago` (
  `CCreditoPago` int(10) NOT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CCredito` int(10) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `Estado` varchar(255) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_credito_7aprovado`
--

CREATE TABLE `tab_credito_7aprovado` (
  `IdCliente` int(10) DEFAULT NULL,
  `IdCredito` varchar(50) DEFAULT NULL,
  `DataAprovado` timestamp NULL DEFAULT NULL,
  `IdUsuario` varchar(50) DEFAULT NULL,
  `IdSucursal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_credito_7aprovado`
--

INSERT INTO `tab_credito_7aprovado` (`IdCliente`, `IdCredito`, `DataAprovado`, `IdUsuario`, `IdSucursal`) VALUES
(0, '172', '2018-03-18 04:39:41', '14', '1'),
(0, '172', '2018-03-18 04:43:06', '14', '1'),
(0, '173', '2018-03-18 04:44:30', '14', '1'),
(0, '174', '2018-03-18 04:46:25', '14', '1'),
(3, '167', '2018-03-18 06:25:20', '14', '1'),
(3, '167', '2018-03-18 06:25:22', '14', '1'),
(0, '175', '2018-03-20 01:42:52', '14', '1'),
(0, '175', '2018-03-20 01:45:49', '14', '1'),
(0, '176', '2018-03-28 04:46:28', '14', '1'),
(0, '176', '2018-03-28 04:46:32', '14', '1'),
(0, '177', '2018-03-28 04:46:34', '14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tab_credito_7rejeitado`
--

CREATE TABLE `tab_credito_7rejeitado` (
  `IdCliente` int(10) DEFAULT NULL,
  `IdCredito` varchar(50) DEFAULT NULL,
  `IdMotivo` varchar(50) DEFAULT NULL,
  `DataRejeita` timestamp NULL DEFAULT NULL,
  `IdUsuario` varchar(50) DEFAULT NULL,
  `IdSucursal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_credito_7rejeitado`
--

INSERT INTO `tab_credito_7rejeitado` (`IdCliente`, `IdCredito`, `IdMotivo`, `DataRejeita`, `IdUsuario`, `IdSucursal`) VALUES
(0, '0', '', '2018-03-17 23:39:36', '14', '1'),
(0, '0', '', '2018-03-17 23:40:00', '14', '1'),
(0, '', '', '2018-03-17 23:41:56', '14', '1'),
(0, '', '', '2018-03-18 00:00:04', '14', '1'),
(0, '', '', '2018-03-18 00:00:51', '14', '1'),
(0, '', '', '2018-03-18 00:08:10', '14', '1'),
(0, '', '', '2018-03-18 00:12:50', '14', '1'),
(0, '', '', '2018-03-18 00:13:42', '14', '1'),
(0, '', '', '2018-03-18 00:14:07', '14', '1'),
(0, '', '', '2018-03-18 00:15:11', '14', '1'),
(0, '0', '', '2018-03-18 00:18:33', '14', '1'),
(0, '0', '', '2018-03-18 00:18:47', '14', '1'),
(0, '0', '', '2018-03-18 00:19:09', '14', '1'),
(0, '0', '', '2018-03-18 01:54:56', '14', '1'),
(0, '0', '', '2018-03-18 01:55:11', '14', '1'),
(0, '0', '', '2018-03-18 01:55:23', '14', '1'),
(0, '0', '', '2018-03-18 01:58:55', '14', '1'),
(0, '0', '', '2018-03-18 02:05:59', '14', '1'),
(0, '0', '', '2018-03-18 02:06:01', '14', '1'),
(0, '0', '', '2018-03-18 02:06:02', '14', '1'),
(0, '0', '', '2018-03-18 02:06:04', '14', '1'),
(0, '0', '', '2018-03-18 02:43:20', '14', '1'),
(0, '0', '', '2018-03-18 02:43:22', '14', '1'),
(0, '0', '', '2018-03-18 02:43:56', '14', '1'),
(0, '0', '', '2018-03-18 04:14:00', '14', '1'),
(0, '0', '', '2018-03-28 04:46:36', '14', '1'),
(0, '0', '', '2018-03-28 04:46:37', '14', '1'),
(0, '0', '', '2018-03-28 04:46:39', '14', '1'),
(0, '0', '', '2018-03-28 04:46:42', '14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tab_desembolso`
--

CREATE TABLE `tab_desembolso` (
  `CCredito` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CFormaPagamento` int(10) DEFAULT NULL,
  `CBanco` int(10) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_desembolso`
--

INSERT INTO `tab_desembolso` (`CCredito`, `CCliente`, `CFormaPagamento`, `CBanco`, `Montante`, `DataReg`, `CUsuario`, `CEscritorio`) VALUES
(1121, 68, 1, 13, 14800, '2018-02-04 22:00:00', 1, NULL),
(1122, 69, 1, 13, 19800, '2017-12-01 22:00:00', 1, NULL),
(1123, 68, 1, 13, 16800, '2018-01-04 22:00:00', 1, NULL),
(1124, 68, 1, 13, 9800, '2018-01-03 22:00:00', 1, NULL),
(1125, 69, 1, 13, 14800, '2018-02-07 22:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_desembolso_estorno`
--

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
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_desembolso_estorno`
--

INSERT INTO `tab_desembolso_estorno` (`CCredito`, `CCliente`, `CFormaPagamento`, `CBanco`, `Montante`, `Preparo`, `Total`, `DataReg`, `CUsuario`, `CEscritorio`) VALUES
(1121, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1122, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_despesas`
--

CREATE TABLE `tab_despesas` (
  `CDespesa` int(10) NOT NULL,
  `CFluxoCaixa` int(10) DEFAULT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_fluxo`
--

CREATE TABLE `tab_fluxo` (
  `CFluxo` int(10) NOT NULL,
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
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_fluxo`
--

INSERT INTO `tab_fluxo` (`CFluxo`, `DataReg`, `CLancamentoCaixa`, `CBanco`, `CFormaPagamento`, `CUsuario`, `Descricao`, `Entrada`, `Saida`, `CCliente`, `CCredito`, `CPrestacao`, `CPrestacaoPaga`, `IDFolha`, `CEscritorio`) VALUES
(2350, '2018-01-31 22:00:00', 8, 13, 1, 1, 'REFORÇO', 200000, 0, 0, 0, NULL, NULL, NULL, NULL),
(2354, '2018-02-04 22:00:00', 2, 13, 1, 1, 'DESEMBOLSO, VERONICA ALEXANDRE,CRÉDITO 2 MESES.', 0, 14800, 68, 1121, NULL, NULL, NULL, NULL),
(2355, '2018-02-04 22:00:00', 1, 13, 1, 1, 'PREPARO AUTOMATICO, VERONICA ALEXANDRE, CRÉDITO 2 MESES.', 200, 0, 68, 1121, NULL, NULL, NULL, NULL),
(2356, '2018-02-04 22:00:00', 7, 5, 1, 1, 'Prestação Completa, VERONICA ALEXANDRE, CRÉDITO 2 MESES', 10416.67, 0, 68, 1121, 1261, 813, NULL, NULL),
(2359, '2018-02-04 22:00:00', 2, 13, 1, 1, 'DESEMBOLSO, Joaquim De Jesus Mucavela,LINHA ESPECIAL.', 0, 19800, 69, 1122, NULL, NULL, NULL, NULL),
(2360, '2018-02-04 22:00:00', 1, 13, 1, 1, 'PREPARO AUTOMATICO, Joaquim De Jesus Mucavela, LINHA ESPECIAL.', 200, 0, 69, 1122, NULL, NULL, NULL, NULL),
(2361, '2018-02-07 22:00:00', 2, 13, 1, 1, 'DESEMBOLSO, VERONICA ALEXANDRE,CRÉDITO 3 MÊSES.', 0, 16800, 68, 1123, NULL, NULL, NULL, NULL),
(2362, '2018-02-07 22:00:00', 1, 13, 1, 1, 'PREPARO AUTOMATICO, VERONICA ALEXANDRE, CRÉDITO 3 MÊSES.', 200, 0, 68, 1123, NULL, NULL, NULL, NULL),
(2363, '2018-02-07 22:00:00', 2, 13, 1, 1, 'DESEMBOLSO, VERONICA ALEXANDRE,CRÉDITO 2 MESES.', 0, 9800, 68, 1124, NULL, NULL, NULL, NULL),
(2364, '2018-02-07 22:00:00', 1, 13, 1, 1, 'PREPARO AUTOMATICO, VERONICA ALEXANDRE, CRÉDITO 2 MESES.', 200, 0, 68, 1124, NULL, NULL, NULL, NULL),
(2365, '2018-02-07 22:00:00', 7, 5, 1, 1, 'Prestação Completa Mora, VERONICA ALEXANDRE, CRÉDITO 2 MESES', 7500, 0, 68, 1124, 1319, 814, NULL, NULL),
(2366, '2018-02-07 22:00:00', 2, 13, 1, 1, 'DESEMBOLSO, Joaquim De Jesus Mucavela,CRÉDITO 3 MÊSES.', 0, 14800, 69, 1125, NULL, NULL, NULL, NULL),
(2367, '2018-02-07 22:00:00', 1, 13, 1, 1, 'PREPARO AUTOMATICO, Joaquim De Jesus Mucavela, CRÉDITO 3 MÊSES.', 200, 0, 69, 1125, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_folhasalario`
--

CREATE TABLE `tab_folhasalario` (
  `IDFolha` int(10) NOT NULL,
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
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_folhasalario_lancbeneficio`
--

CREATE TABLE `tab_folhasalario_lancbeneficio` (
  `IDFolha` int(10) DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CBeneficio` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_folhasalario_lancdesconto`
--

CREATE TABLE `tab_folhasalario_lancdesconto` (
  `IDFolha` int(10) DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CDesconto` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_garantias_avalista`
--

CREATE TABLE `tab_garantias_avalista` (
  `CGarantiaAvalista` int(10) NOT NULL,
  `CAvalista` int(10) DEFAULT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CTipoGarantia` int(10) DEFAULT NULL,
  `Descricao` varchar(150) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_garantias_cliente`
--

CREATE TABLE `tab_garantias_cliente` (
  `CGarantiaCliente` int(10) NOT NULL,
  `CCliente` int(10) DEFAULT NULL,
  `CTipoGarantia` int(10) DEFAULT NULL,
  `Descricao` varchar(150) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_garantias_cliente`
--

INSERT INTO `tab_garantias_cliente` (`CGarantiaCliente`, `CCliente`, `CTipoGarantia`, `Descricao`, `Montante`, `DataReg`, `CUsuario`, `CEscritorio`) VALUES
(565, 68, 7, 'FOGAO', 120000, '2018-01-31 22:00:00', 1, NULL),
(566, 69, 6, 'FSDASD', 20000, '2018-01-31 22:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_preparo`
--

CREATE TABLE `tab_preparo` (
  `CCredito` varchar(255) DEFAULT NULL,
  `CCliente` varchar(255) DEFAULT NULL,
  `Montante` double DEFAULT NULL,
  `TipoDesconto` varchar(255) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `CUsuario` int(10) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_preparo`
--

INSERT INTO `tab_preparo` (`CCredito`, `CCliente`, `Montante`, `TipoDesconto`, `DataReg`, `CUsuario`, `CEscritorio`) VALUES
('1121', '68', 200, 'Desconto no Crédito', '2018-02-04 22:00:00', 1, NULL),
('1122', '69', 200, 'Desconto no Crédito', '2018-02-04 22:00:00', 1, NULL),
('1123', '68', 200, 'Desconto no Crédito', '2018-02-07 22:00:00', 1, NULL),
('1124', '68', 200, 'Desconto no Crédito', '2018-02-07 22:00:00', 1, NULL),
('1125', '69', 200, 'Desconto no Crédito', '2018-02-07 22:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_prestacao_1plano`
--

CREATE TABLE `tab_prestacao_1plano` (
  `CPrestacao` int(10) NOT NULL,
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
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_prestacao_1plano`
--

INSERT INTO `tab_prestacao_1plano` (`CPrestacao`, `CCliente`, `CCredito`, `PrestacaoNumero`, `Vencimento`, `Prestacao`, `Capital`, `Juro`, `Saldo`, `CUsuario`, `Abate`, `CEscritorio`) VALUES
(1261, 68, 1121, 1, '2018-03-04 22:00:00', 10416.666667, 6666.67, 3750, 8333.33, 1, NULL, NULL),
(1262, 68, 1121, 2, '2018-02-03 22:00:00', 10416.666667, 8333.334167, 2083.3325, 0, 1, NULL, NULL),
(1299, 69, 1122, 1, '2018-01-01 22:00:00', 2935.266302, 935.27, 2000, 19064.73, 1, NULL, NULL),
(1300, 69, 1122, 2, '2018-04-04 22:00:00', 2935.266302, 1028.793302, 1906.473, 18035.936698, 1, NULL, NULL),
(1301, 69, 1122, 3, '2018-05-04 22:00:00', 2935.266302, 1131.672632, 1803.59367, 16904.264066, 1, NULL, NULL),
(1302, 69, 1122, 4, '2018-06-04 22:00:00', 2935.266302, 1244.839895, 1690.426407, 15659.42417, 1, NULL, NULL),
(1303, 69, 1122, 5, '2018-07-04 22:00:00', 2935.266302, 1369.323885, 1565.942417, 14290.100285, 1, NULL, NULL),
(1304, 69, 1122, 6, '2018-08-04 22:00:00', 2935.266302, 1506.256273, 1429.010029, 12783.844012, 1, NULL, NULL),
(1305, 69, 1122, 7, '2018-09-04 22:00:00', 2935.266302, 1656.881901, 1278.384401, 11126.962111, 1, NULL, NULL),
(1306, 69, 1122, 8, '2018-10-04 22:00:00', 2935.266302, 1822.570091, 1112.696211, 9304.39202, 1, NULL, NULL),
(1307, 69, 1122, 9, '2018-11-04 22:00:00', 2935.266302, 2004.8271, 930.439202, 7299.56492, 1, NULL, NULL),
(1308, 69, 1122, 10, '2018-12-04 22:00:00', 2935.266302, 2205.30981, 729.956492, 5094.25511, 1, NULL, NULL),
(1309, 69, 1122, 11, '2019-01-04 22:00:00', 2935.266302, 2425.840791, 509.425511, 2668.414319, 1, NULL, NULL),
(1310, 69, 1122, 12, '2019-02-04 22:00:00', 2935.266302, 2668.42487, 266.841432, 0, 1, NULL, NULL),
(1314, 68, 1123, 1, '2018-02-04 22:00:00', 9360.651629, 4260.65, 5100, 12739.35, 1, NULL, NULL),
(1315, 68, 1123, 2, '2018-04-07 22:00:00', 9360.651629, 5538.846629, 3821.805, 7200.503371, 1, NULL, NULL),
(1316, 68, 1123, 3, '2018-05-07 22:00:00', 9360.651629, 7200.500618, 2160.151011, 0, 1, NULL, NULL),
(1319, 68, 1124, 1, '2018-02-03 22:00:00', 6944.444444, 4444.44, 2500, 5555.56, 1, NULL, NULL),
(1320, 68, 1124, 2, '2018-03-03 22:00:00', 6944.444444, 5555.554444, 1388.89, 0, 1, NULL, NULL),
(1324, 69, 1125, 1, '2018-03-07 22:00:00', 8259.398496, 3759.4, 4500, 11240.6, 1, NULL, NULL),
(1325, 69, 1125, 2, '2018-04-07 22:00:00', 8259.398496, 4887.218496, 3372.18, 6353.381504, 1, NULL, NULL),
(1326, 69, 1125, 3, '2018-05-07 22:00:00', 8259.398496, 6353.384045, 1906.014451, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_prestacao_2vigente`
--

CREATE TABLE `tab_prestacao_2vigente` (
  `CPrestacaoVigente` int(10) NOT NULL,
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
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_prestacao_2vigente`
--

INSERT INTO `tab_prestacao_2vigente` (`CPrestacaoVigente`, `CPrestacao`, `CCliente`, `CCredito`, `CTaxa`, `PrestacaoNumero`, `Vencimento`, `Pagamento`, `Prestacao`, `Juro`, `Capital`, `Saldo`, `Abate`, `CEscritorio`) VALUES
(1270, 1262, 68, 1121, 0, 2, '2018-02-03 22:00:00', NULL, 10416.666667, 2083.3325, 8333.334167, 0, NULL, NULL),
(1307, 1299, 69, 1122, 0, 1, '2018-01-01 22:00:00', NULL, 2935.266302, 2000, 935.27, 19064.73, NULL, NULL),
(1308, 1300, 69, 1122, 0, 2, '2018-04-04 22:00:00', NULL, 2935.266302, 1906.473, 1028.793302, 18035.936698, NULL, NULL),
(1309, 1301, 69, 1122, 0, 3, '2018-05-04 22:00:00', NULL, 2935.266302, 1803.59367, 1131.672632, 16904.264066, NULL, NULL),
(1310, 1302, 69, 1122, 0, 4, '2018-06-04 22:00:00', NULL, 2935.266302, 1690.426407, 1244.839895, 15659.42417, NULL, NULL),
(1311, 1303, 69, 1122, 0, 5, '2018-07-04 22:00:00', NULL, 2935.266302, 1565.942417, 1369.323885, 14290.100285, NULL, NULL),
(1312, 1304, 69, 1122, 0, 6, '2018-08-04 22:00:00', NULL, 2935.266302, 1429.010029, 1506.256273, 12783.844012, NULL, NULL),
(1313, 1305, 69, 1122, 0, 7, '2018-09-04 22:00:00', NULL, 2935.266302, 1278.384401, 1656.881901, 11126.962111, NULL, NULL),
(1314, 1306, 69, 1122, 0, 8, '2018-10-04 22:00:00', NULL, 2935.266302, 1112.696211, 1822.570091, 9304.39202, NULL, NULL),
(1315, 1307, 69, 1122, 0, 9, '2018-11-04 22:00:00', NULL, 2935.266302, 930.439202, 2004.8271, 7299.56492, NULL, NULL),
(1316, 1308, 69, 1122, 0, 10, '2018-12-04 22:00:00', NULL, 2935.266302, 729.956492, 2205.30981, 5094.25511, NULL, NULL),
(1317, 1309, 69, 1122, 0, 11, '2019-01-04 22:00:00', NULL, 2935.266302, 509.425511, 2425.840791, 2668.414319, NULL, NULL),
(1318, 1310, 69, 1122, 0, 12, '2019-02-04 22:00:00', NULL, 2935.266302, 266.841432, 2668.42487, 0, NULL, NULL),
(1322, 1314, 68, 1123, 0, 1, '2018-02-04 22:00:00', NULL, 9360.651629, 5100, 4260.65, 12739.35, NULL, NULL),
(1323, 1315, 68, 1123, 0, 2, '2018-04-07 22:00:00', NULL, 9360.651629, 3821.805, 5538.846629, 7200.503371, NULL, NULL),
(1324, 1316, 68, 1123, 0, 3, '2018-05-07 22:00:00', NULL, 9360.651629, 2160.151011, 7200.500618, 0, NULL, NULL),
(1328, 1320, 68, 1124, 0, 2, '2018-03-03 22:00:00', NULL, 6944.444444, 1388.89, 5555.554444, 0, NULL, NULL),
(1332, 1324, 69, 1125, 0, 1, '2018-03-07 22:00:00', NULL, 8259.398496, 4500, 3759.4, 11240.6, NULL, NULL),
(1333, 1325, 69, 1125, 0, 2, '2018-04-07 22:00:00', NULL, 8259.398496, 3372.18, 4887.218496, 6353.381504, NULL, NULL),
(1334, 1326, 69, 1125, 0, 3, '2018-05-07 22:00:00', NULL, 8259.398496, 1906.014451, 6353.384045, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_prestacao_3estorno`
--

CREATE TABLE `tab_prestacao_3estorno` (
  `CPrestacaoVigente` int(10) NOT NULL,
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
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_prestacao_4paga`
--

CREATE TABLE `tab_prestacao_4paga` (
  `CPrestacaoPaga` int(10) NOT NULL,
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
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_prestacao_4paga`
--

INSERT INTO `tab_prestacao_4paga` (`CPrestacaoPaga`, `CPrestacao`, `CCliente`, `CCredito`, `PrestacaoNumero`, `Vencimento`, `Pagamento`, `Mora`, `MoraDias`, `PerdaoDias`, `PerdaoMontante`, `AntecipadoDias`, `AntecipadoMontante`, `Prestacao`, `Capital`, `Juro`, `Total`, `Remanescente`, `Saldo`, `DataReg`, `CUsuario`, `Abate`, `CEscritorio`) VALUES
(813, 1261, 68, 1121, 1, '2018-02-04 22:00:00', '2018-02-04 22:00:00', 0, 0, 0, 0, 0, 0, 0, 6666.67, 3750, 10416.67, 0, 8333.33, '2018-02-04 22:00:00', 1, NULL, NULL),
(814, 1319, 68, 1124, 1, '2018-02-03 22:00:00', '2018-02-07 22:00:00', 555.56, 4, 0, 0, 0, 0, 0, 4444.44, 2500, 7500, 0, 5555.56, '2018-02-07 22:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_usuarios`
--

CREATE TABLE `tab_usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `NomeUsuario` varchar(50) DEFAULT NULL,
  `CargoUsuario` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SalarioBruto` double DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `Contacto` int(12) DEFAULT NULL,
  `Password` varchar(500) DEFAULT NULL,
  `Foto` blob,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_usuarios`
--

INSERT INTO `tab_usuarios` (`IdUsuario`, `NomeUsuario`, `CargoUsuario`, `Email`, `SalarioBruto`, `Endereco`, `Contacto`, `Password`, `Foto`, `IdSucursal`) VALUES
(14, 'Ernesto Simango', 'Agministrador', 'neto.sima_9@hotmail.com', 50000, 'Guava', 842983939, '1bbd886460827015e5d605ed44252251', 0x494d475f323233392e4a504547, 1),
(15, 'kdgawjd', 'adw', 'netok.sima@gmail.com', 7, 'sdfad', 820000001, '1bbd886460827015e5d605ed44252251', 0x48656c6c6f312e706e67, 2),
(16, 'sderdfew', 'sdasd', 'k@gmail.com', 243, 'iuhakea', 820000006, '1bbd886460827015e5d605ed44252251', '', 1),
(17, 'ddd', 'sasr', 'ima@gmail.com', 323, 'wefe', 820000021, '1bbd886460827015e5d605ed44252251', 0x666f66746574682e706e67, 5),
(19, 'neto.sima@gmail.com', 'Boss', 'neto.sima@gmail.com', 40000, 'AltoMae', 842983939, '25d55ad283aa400af464c76d713c07ad', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_banco`
--

CREATE TABLE `tb_banco` (
  `IdBanco` int(10) NOT NULL,
  `NomeBanco` varchar(255) DEFAULT NULL,
  `NumeroDeConta` varchar(255) DEFAULT NULL,
  `NIB` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_banco`
--

INSERT INTO `tb_banco` (`IdBanco`, `NomeBanco`, `NumeroDeConta`, `NIB`, `IdSucursal`) VALUES
(1, 'BCI', '2345', '23423443', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_destinocredito`
--

CREATE TABLE `tb_destinocredito` (
  `IdDestino` int(10) NOT NULL,
  `DestinoCredito` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_destinocredito`
--

INSERT INTO `tb_destinocredito` (`IdDestino`, `DestinoCredito`, `IdSucursal`) VALUES
(2, 'Material de Informática', 1),
(3, 'Material de Escritório', 1),
(4, 'Fundo de Maneio', 1),
(5, 'Investimento', 1),
(6, 'Fundo de Maneio e Investimento', 1),
(7, 'Investimento em um Negocio Existente', 1),
(8, 'Investimento em um novo negocio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_formapagamento`
--

CREATE TABLE `tb_formapagamento` (
  `IdFormaPagamento` int(10) NOT NULL,
  `FormaPagamento` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_formapagamento`
--

INSERT INTO `tb_formapagamento` (`IdFormaPagamento`, `FormaPagamento`, `IdSucursal`) VALUES
(1, 'Numerario', 1),
(3, 'Transferencia', 2),
(5, 'Numerario / Transferencia', 2),
(6, 'Cheque', 2),
(7, 'Cheque / Transferencia', 2),
(8, 'Numerario / Cheuque', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gestor`
--

CREATE TABLE `tb_gestor` (
  `IdGestor` int(10) NOT NULL,
  `NomeGestor` varchar(255) DEFAULT NULL,
  `DataReg` timestamp NULL DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL,
  `Contacto` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_gestor`
--

INSERT INTO `tb_gestor` (`IdGestor`, `NomeGestor`, `DataReg`, `IdSucursal`, `Contacto`) VALUES
(1, 'JOEL MIAMBO', '2017-05-31 22:00:00', 1, 827299183),
(2, 'REGINA GIVE', '2017-06-03 22:00:00', 1, 827299183),
(3, 'CELIA RAFAEL', '2017-06-03 22:00:00', 1, 827299183),
(4, 'ZARDA CRISTINA', '2017-06-03 22:00:00', 1, 827299183),
(6, 'FELICIDADE MAFUMO', '2017-07-04 22:00:00', 1, 827299183),
(7, 'CARTEIRA ESPECIAL', '2017-09-30 22:00:00', 1, 827299183);

-- --------------------------------------------------------

--
-- Table structure for table `tb_linhacredito`
--

CREATE TABLE `tb_linhacredito` (
  `IdLinha` int(10) NOT NULL,
  `LinhaDeCredito` varchar(255) DEFAULT NULL,
  `TaxaJuro` double DEFAULT NULL,
  `Prazo` int(10) DEFAULT NULL,
  `PlanoPagamento` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_linhacredito`
--

INSERT INTO `tb_linhacredito` (`IdLinha`, `LinhaDeCredito`, `TaxaJuro`, `Prazo`, `PlanoPagamento`, `IdSucursal`) VALUES
(12, 'CREDITO 1 MES', 20, 1, 'MENSAL', 1),
(13, 'CREDITO 2 MESES', 25, 2, 'MENSAL', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_motivoregeita`
--

CREATE TABLE `tb_motivoregeita` (
  `IdMotivo` int(10) NOT NULL,
  `Motivo` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_motivoregeita`
--

INSERT INTO `tb_motivoregeita` (`IdMotivo`, `Motivo`, `IdSucursal`) VALUES
(2, 'O CLIENTE NAO ACEITOU O MONTANTE APROVADO', 1),
(3, 'CLIENTE NAO E TRANSPARENTE ', 1),
(4, 'MOROSA EM OUTRAS INSTITUICOES', 1),
(5, 'FALTA DE EXPERIENCIA NA ACTIVIDADE', 1),
(6, 'O CLIENTE NAO TEM HISTORICA CREDITICIA ', 1),
(7, 'ACTIVIDADE NAO PODE SER FINANCIADA (LEI)', 1),
(8, 'NEGOCIO NAO E ESTAVEL', 1),
(9, 'CLIENTE NAO COOPERA', 1),
(10, 'OUTROS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sucursal`
--

CREATE TABLE `tb_sucursal` (
  `Id` int(10) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Cidade` varchar(255) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Contacto` int(10) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactoAlternativo` int(10) DEFAULT NULL,
  `Titular` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_sucursal`
--

INSERT INTO `tb_sucursal` (`Id`, `Nome`, `Cidade`, `Endereco`, `Contacto`, `Email`, `ContactoAlternativo`, `Titular`) VALUES
(1, 'MAPALUVA MICROCREDITO', 'Maputo', 'AV. MARIEN NGUABI', 847848647, 'MAPALUVA.LDA@GMAIL.COM', 827023940, 'MAURO VICENTE DAS DORES GOCA'),
(2, 'MEGA', 'Maputo', 'Vladimir L', 820000000, 'John@gmail.co', 820000000, 'Rafael Ernesto Simango'),
(5, 'adwd', 'awda', 'awd', 820000000, 'adw@ad', 820000000, 'wadw'),
(6, 'adadw', 'adww', 'awdaw', 820000001, 'awd@ase', 820000001, 'sef');

-- --------------------------------------------------------

--
-- Table structure for table `tb_taxas`
--

CREATE TABLE `tb_taxas` (
  `Id` int(10) NOT NULL,
  `Preparo` double DEFAULT NULL,
  `Mora` int(10) DEFAULT NULL,
  `DescontoPelaAntecipacao` double DEFAULT NULL,
  `Outros_Impostos` int(10) DEFAULT NULL,
  `IRPS` int(10) DEFAULT NULL,
  `INSS_Empresa` int(10) DEFAULT NULL,
  `INSS_Trabalhador` int(10) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_taxas`
--

INSERT INTO `tb_taxas` (`Id`, `Preparo`, `Mora`, `DescontoPelaAntecipacao`, `Outros_Impostos`, `IRPS`, `INSS_Empresa`, `INSS_Trabalhador`, `IdSucursal`) VALUES
(15, 3, 23, 34, 34, 22, 23, 3, 1),
(16, 2342, 23, 323, 1231, 123, 213, 1231, 1),
(17, 78687, 545, 45, 65, 57, 65, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipogarantia`
--

CREATE TABLE `tb_tipogarantia` (
  `IdGarantia` int(10) NOT NULL,
  `TipoGarantia` varchar(255) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tipogarantia`
--

INSERT INTO `tb_tipogarantia` (`IdGarantia`, `TipoGarantia`, `IdSucursal`) VALUES
(6, 'Stock', 1),
(7, 'Bens Domésticos', 1),
(8, 'Viactura', 1),
(9, 'Cheque', 1),
(10, 'Desconto Salárial', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipolancamento`
--

CREATE TABLE `tb_tipolancamento` (
  `IdTipoLancamento` int(11) NOT NULL,
  `Lancamento` varchar(200) DEFAULT NULL,
  `IdSucursal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipolancamentocaixa`
--

CREATE TABLE `tb_tipolancamentocaixa` (
  `CLancamentoCaixa` int(10) NOT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tipolancamentocaixa`
--

INSERT INTO `tb_tipolancamentocaixa` (`CLancamentoCaixa`, `Descricao`, `CEscritorio`) VALUES
(1, 'Pagamento Preparo', NULL),
(2, 'Desembolso de Crédito', NULL),
(3, 'Compra de Material de Escritório', NULL),
(4, 'Despesas Fixas', NULL),
(5, 'Despesas Variáveis', NULL),
(6, 'Ganhos Extraordinários/Não Operacionais', NULL),
(7, 'Pagamento Prestação', NULL),
(8, 'Reforço', NULL),
(9, 'Depreciação', NULL),
(10, 'Despesas Financeiras', NULL),
(11, 'Provisao', NULL),
(12, 'Impostos', NULL),
(13, 'Saldo Inicial', NULL),
(14, 'Tranferencia', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipolancamentodesconto`
--

CREATE TABLE `tb_tipolancamentodesconto` (
  `CDesconto` int(10) NOT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `CEscritorio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_avalista`
--
ALTER TABLE `tab_avalista`
  ADD PRIMARY KEY (`IdAvalista`),
  ADD KEY `CUsuario` (`IdUsuario`);

--
-- Indexes for table `tab_cliente`
--
ALTER TABLE `tab_cliente`
  ADD PRIMARY KEY (`IdCliente`),
  ADD KEY `IdGestor` (`IdGestor`);

--
-- Indexes for table `tab_credito_1solicitado`
--
ALTER TABLE `tab_credito_1solicitado`
  ADD PRIMARY KEY (`IdCredito`),
  ADD KEY `CLinha` (`IdAvalista`),
  ADD KEY `tab_AlunoCursoCodigoAluno` (`IdCliente`),
  ADD KEY `tab_AlunoCursoCodigoCurso` (`IdLinha`),
  ADD KEY `tab_AlunoCursoCodigoGestor` (`IdGestor`),
  ADD KEY `IdDestino` (`IdDestino`),
  ADD KEY `IdUsuario` (`IdUsuario`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tab_credito_2proposta`
--
ALTER TABLE `tab_credito_2proposta`
  ADD KEY `CAvalista` (`IdAvalista`),
  ADD KEY `CodigoGestor` (`IdGestor`),
  ADD KEY `CodigoLinha` (`IdLinha`),
  ADD KEY `tab_AlunoCursoCodigoAluno` (`IdCredito`),
  ADD KEY `tab_AlunoCursoCodigoCurso` (`ValorAprovado`),
  ADD KEY `tab_AlunoCursoCodigoGestor` (`Prestacao`),
  ADD KEY `tab_Conta_PropostaCodigoUsuario` (`IdUsuario`);

--
-- Indexes for table `tab_credito_4vigente`
--
ALTER TABLE `tab_credito_4vigente`
  ADD PRIMARY KEY (`IdCredito`),
  ADD KEY `CAvalista` (`IdAvalista`),
  ADD KEY `CodigoGestor` (`IdGestor`),
  ADD KEY `CodigoLinha` (`IdLinha`),
  ADD KEY `tab_AlunoCursoCodigoAluno` (`IdCredito`),
  ADD KEY `tab_AlunoCursoCodigoCurso` (`ValorAprovado`),
  ADD KEY `tab_AlunoCursoCodigoGestor` (`Prestacao`),
  ADD KEY `tab_Conta_PropostaCodigoUsuario` (`IdUsuario`);

--
-- Indexes for table `tab_credito_5abate`
--
ALTER TABLE `tab_credito_5abate`
  ADD PRIMARY KEY (`CAbate`),
  ADD KEY `tab_Conta_AbateCodigoConta` (`CCredito`),
  ADD KEY `tab_Conta_AbateCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_credito_6pago`
--
ALTER TABLE `tab_credito_6pago`
  ADD PRIMARY KEY (`CCreditoPago`),
  ADD KEY `tab_Conta_PagaCodigoConta` (`CCredito`),
  ADD KEY `tab_Conta_PagaCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_credito_7aprovado`
--
ALTER TABLE `tab_credito_7aprovado`
  ADD KEY `tab_Conta_RejeitadaCodigoConta` (`IdCredito`),
  ADD KEY `tab_Conta_RejeitadaCodigoUsuario` (`IdUsuario`);

--
-- Indexes for table `tab_credito_7rejeitado`
--
ALTER TABLE `tab_credito_7rejeitado`
  ADD KEY `tab_Conta_RejeitadaCodigoConta` (`IdCredito`),
  ADD KEY `tab_Conta_RejeitadaCodigoMotivo` (`IdMotivo`),
  ADD KEY `tab_Conta_RejeitadaCodigoUsuario` (`IdUsuario`);

--
-- Indexes for table `tab_desembolso`
--
ALTER TABLE `tab_desembolso`
  ADD KEY `tab_DesembolsoCodigoBanco` (`CBanco`),
  ADD KEY `tab_DesembolsoCodigoTipoDesembolso` (`CFormaPagamento`),
  ADD KEY `tab_DesembolsoCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_desembolso_estorno`
--
ALTER TABLE `tab_desembolso_estorno`
  ADD KEY `CBanco` (`CBanco`),
  ADD KEY `CFormaPagamento` (`CFormaPagamento`),
  ADD KEY `CUsuario` (`CUsuario`),
  ADD KEY `tab_Desembolso_EstornoCodigoCliente` (`CCliente`),
  ADD KEY `tab_Desembolso_EstornoCodigoConta` (`CCredito`);

--
-- Indexes for table `tab_despesas`
--
ALTER TABLE `tab_despesas`
  ADD PRIMARY KEY (`CDespesa`);

--
-- Indexes for table `tab_fluxo`
--
ALTER TABLE `tab_fluxo`
  ADD PRIMARY KEY (`CFluxo`),
  ADD KEY `IDFolha` (`IDFolha`),
  ADD KEY `tab_FluxoCaixaCodigoBanco` (`CBanco`),
  ADD KEY `tab_FluxoCaixaCodigoCliente` (`CCliente`),
  ADD KEY `tab_FluxoCaixaCodigoConta` (`CCredito`),
  ADD KEY `tab_FluxoCaixaCodigoLancCaixa` (`CLancamentoCaixa`),
  ADD KEY `tab_FluxoCaixaCodigoPrestacao` (`CPrestacao`),
  ADD KEY `tab_FluxoCaixaCodigoPrestacaoRealizado` (`CPrestacaoPaga`),
  ADD KEY `tab_FluxoCaixaCodigoTipoDesembolso` (`CFormaPagamento`),
  ADD KEY `tab_FluxoCaixaCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_folhasalario`
--
ALTER TABLE `tab_folhasalario`
  ADD PRIMARY KEY (`IDFolha`),
  ADD KEY `CodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_folhasalario_lancbeneficio`
--
ALTER TABLE `tab_folhasalario_lancbeneficio`
  ADD KEY `IDFolha` (`IDFolha`);

--
-- Indexes for table `tab_folhasalario_lancdesconto`
--
ALTER TABLE `tab_folhasalario_lancdesconto`
  ADD KEY `IDFolha` (`IDFolha`);

--
-- Indexes for table `tab_garantias_avalista`
--
ALTER TABLE `tab_garantias_avalista`
  ADD PRIMARY KEY (`CGarantiaAvalista`),
  ADD KEY `tab_Garantias_AvalistaCodigoAvalista` (`CAvalista`),
  ADD KEY `tab_GarantiasCodigoCliente` (`CCliente`),
  ADD KEY `tab_GarantiasCodigoGarantia` (`CTipoGarantia`),
  ADD KEY `tab_GarantiasCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_garantias_cliente`
--
ALTER TABLE `tab_garantias_cliente`
  ADD PRIMARY KEY (`CGarantiaCliente`),
  ADD KEY `tab_GarantiasCodigoCliente` (`CCliente`),
  ADD KEY `tab_GarantiasCodigoGarantia` (`CTipoGarantia`),
  ADD KEY `tab_GarantiasCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_preparo`
--
ALTER TABLE `tab_preparo`
  ADD KEY `NumeroRecibo` (`TipoDesconto`),
  ADD KEY `tab_PgtPreparosCodigoCliente` (`CCliente`),
  ADD KEY `tab_PgtPreparosCodigoConta` (`CCredito`),
  ADD KEY `tab_PgtPreparosCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_prestacao_1plano`
--
ALTER TABLE `tab_prestacao_1plano`
  ADD PRIMARY KEY (`CPrestacao`),
  ADD KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  ADD KEY `tab_MensalidadesCodigoConta` (`CCredito`),
  ADD KEY `tab_PrestacoesCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_prestacao_2vigente`
--
ALTER TABLE `tab_prestacao_2vigente`
  ADD PRIMARY KEY (`CPrestacaoVigente`),
  ADD KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  ADD KEY `tab_MensalidadesCodigoConta` (`CCredito`);

--
-- Indexes for table `tab_prestacao_3estorno`
--
ALTER TABLE `tab_prestacao_3estorno`
  ADD PRIMARY KEY (`CPrestacaoVigente`),
  ADD KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  ADD KEY `tab_MensalidadesCodigoConta` (`CCredito`);

--
-- Indexes for table `tab_prestacao_4paga`
--
ALTER TABLE `tab_prestacao_4paga`
  ADD PRIMARY KEY (`CPrestacaoPaga`),
  ADD KEY `tab_MensalidadesCodigoAluno` (`CCliente`),
  ADD KEY `tab_MensalidadesCodigoConta` (`CCredito`),
  ADD KEY `tab_Prestacoes_RealizadoCodigoUsuario` (`CUsuario`);

--
-- Indexes for table `tab_usuarios`
--
ALTER TABLE `tab_usuarios`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_banco`
--
ALTER TABLE `tb_banco`
  ADD PRIMARY KEY (`IdBanco`),
  ADD KEY `NumeroDeConta` (`NumeroDeConta`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_destinocredito`
--
ALTER TABLE `tb_destinocredito`
  ADD PRIMARY KEY (`IdDestino`),
  ADD KEY `tb_destinocredito_ibfk_1` (`IdSucursal`);

--
-- Indexes for table `tb_formapagamento`
--
ALTER TABLE `tb_formapagamento`
  ADD PRIMARY KEY (`IdFormaPagamento`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_gestor`
--
ALTER TABLE `tb_gestor`
  ADD PRIMARY KEY (`IdGestor`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_linhacredito`
--
ALTER TABLE `tb_linhacredito`
  ADD PRIMARY KEY (`IdLinha`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_motivoregeita`
--
ALTER TABLE `tb_motivoregeita`
  ADD PRIMARY KEY (`IdMotivo`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_sucursal`
--
ALTER TABLE `tb_sucursal`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tb_taxas`
--
ALTER TABLE `tb_taxas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_tipogarantia`
--
ALTER TABLE `tb_tipogarantia`
  ADD PRIMARY KEY (`IdGarantia`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_tipolancamento`
--
ALTER TABLE `tb_tipolancamento`
  ADD PRIMARY KEY (`IdTipoLancamento`),
  ADD KEY `IdSucursal` (`IdSucursal`);

--
-- Indexes for table `tb_tipolancamentocaixa`
--
ALTER TABLE `tb_tipolancamentocaixa`
  ADD PRIMARY KEY (`CLancamentoCaixa`);

--
-- Indexes for table `tb_tipolancamentodesconto`
--
ALTER TABLE `tb_tipolancamentodesconto`
  ADD PRIMARY KEY (`CDesconto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_avalista`
--
ALTER TABLE `tab_avalista`
  MODIFY `IdAvalista` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tab_cliente`
--
ALTER TABLE `tab_cliente`
  MODIFY `IdCliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tab_credito_1solicitado`
--
ALTER TABLE `tab_credito_1solicitado`
  MODIFY `IdCredito` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `tab_credito_4vigente`
--
ALTER TABLE `tab_credito_4vigente`
  MODIFY `IdCredito` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tab_credito_5abate`
--
ALTER TABLE `tab_credito_5abate`
  MODIFY `CAbate` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tab_credito_6pago`
--
ALTER TABLE `tab_credito_6pago`
  MODIFY `CCreditoPago` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_despesas`
--
ALTER TABLE `tab_despesas`
  MODIFY `CDespesa` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_fluxo`
--
ALTER TABLE `tab_fluxo`
  MODIFY `CFluxo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2368;
--
-- AUTO_INCREMENT for table `tab_folhasalario`
--
ALTER TABLE `tab_folhasalario`
  MODIFY `IDFolha` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_garantias_avalista`
--
ALTER TABLE `tab_garantias_avalista`
  MODIFY `CGarantiaAvalista` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_garantias_cliente`
--
ALTER TABLE `tab_garantias_cliente`
  MODIFY `CGarantiaCliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;
--
-- AUTO_INCREMENT for table `tab_prestacao_1plano`
--
ALTER TABLE `tab_prestacao_1plano`
  MODIFY `CPrestacao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1327;
--
-- AUTO_INCREMENT for table `tab_prestacao_2vigente`
--
ALTER TABLE `tab_prestacao_2vigente`
  MODIFY `CPrestacaoVigente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1335;
--
-- AUTO_INCREMENT for table `tab_prestacao_3estorno`
--
ALTER TABLE `tab_prestacao_3estorno`
  MODIFY `CPrestacaoVigente` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_prestacao_4paga`
--
ALTER TABLE `tab_prestacao_4paga`
  MODIFY `CPrestacaoPaga` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;
--
-- AUTO_INCREMENT for table `tab_usuarios`
--
ALTER TABLE `tab_usuarios`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_banco`
--
ALTER TABLE `tb_banco`
  MODIFY `IdBanco` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_destinocredito`
--
ALTER TABLE `tb_destinocredito`
  MODIFY `IdDestino` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_formapagamento`
--
ALTER TABLE `tb_formapagamento`
  MODIFY `IdFormaPagamento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_gestor`
--
ALTER TABLE `tb_gestor`
  MODIFY `IdGestor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_linhacredito`
--
ALTER TABLE `tb_linhacredito`
  MODIFY `IdLinha` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_motivoregeita`
--
ALTER TABLE `tb_motivoregeita`
  MODIFY `IdMotivo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_sucursal`
--
ALTER TABLE `tb_sucursal`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_taxas`
--
ALTER TABLE `tb_taxas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_tipogarantia`
--
ALTER TABLE `tb_tipogarantia`
  MODIFY `IdGarantia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_tipolancamento`
--
ALTER TABLE `tb_tipolancamento`
  MODIFY `IdTipoLancamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_tipolancamentocaixa`
--
ALTER TABLE `tb_tipolancamentocaixa`
  MODIFY `CLancamentoCaixa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tb_tipolancamentodesconto`
--
ALTER TABLE `tb_tipolancamentodesconto`
  MODIFY `CDesconto` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_cliente`
--
ALTER TABLE `tab_cliente`
  ADD CONSTRAINT `tab_cliente_ibfk_2` FOREIGN KEY (`IdGestor`) REFERENCES `tb_gestor` (`IdGestor`);

--
-- Constraints for table `tab_usuarios`
--
ALTER TABLE `tab_usuarios`
  ADD CONSTRAINT `tab_usuarios_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_banco`
--
ALTER TABLE `tb_banco`
  ADD CONSTRAINT `tb_banco_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_destinocredito`
--
ALTER TABLE `tb_destinocredito`
  ADD CONSTRAINT `tb_destinocredito_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_gestor`
--
ALTER TABLE `tb_gestor`
  ADD CONSTRAINT `tb_gestor_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_linhacredito`
--
ALTER TABLE `tb_linhacredito`
  ADD CONSTRAINT `tb_linhacredito_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_motivoregeita`
--
ALTER TABLE `tb_motivoregeita`
  ADD CONSTRAINT `tb_motivoregeita_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_taxas`
--
ALTER TABLE `tb_taxas`
  ADD CONSTRAINT `tb_taxas_ibfk_2` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_tipogarantia`
--
ALTER TABLE `tb_tipogarantia`
  ADD CONSTRAINT `tb_tipogarantia_ibfk_2` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

--
-- Constraints for table `tb_tipolancamento`
--
ALTER TABLE `tb_tipolancamento`
  ADD CONSTRAINT `tb_tipolancamento_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tb_sucursal` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
