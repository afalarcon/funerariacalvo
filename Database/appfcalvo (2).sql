-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2020 a las 16:31:54
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appfcalvo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cierre`
--

CREATE TABLE `cierre` (
  `idCier` int(11) NOT NULL,
  `UserEnv` varchar(50) DEFAULT NULL,
  `UserRec` varchar(50) DEFAULT NULL,
  `FecCier` date DEFAULT NULL,
  `VarCier` float(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conbenef`
--

CREATE TABLE `conbenef` (
  `NroFicha` int(11) NOT NULL COMMENT 'Nro Ficha',
  `ConBenef` int(11) DEFAULT NULL,
  `idZonas` int(11) NOT NULL COMMENT 'Id Zona',
  `FeAfil` date DEFAULT NULL COMMENT 'Fecha Afiliación',
  `idTipId` varchar(3) NOT NULL COMMENT 'Tipo Id',
  `NoIden` varchar(15) DEFAULT NULL COMMENT 'Número de indentificación',
  `PriApe` varchar(45) DEFAULT NULL,
  `SegApe` varchar(45) DEFAULT NULL,
  `PriNom` varchar(45) DEFAULT NULL,
  `SegNom` varchar(45) DEFAULT NULL,
  `DirBen` varchar(45) DEFAULT NULL,
  `idMncio` int(11) NOT NULL COMMENT 'Municipio',
  `idDEPTOS` int(11) NOT NULL COMMENT 'Departamento',
  `TelBen` varchar(45) DEFAULT NULL COMMENT 'Telefonos Titular',
  `FNacBen` date DEFAULT NULL COMMENT 'Fecha Nacimiento Titular',
  `UlpBen` date DEFAULT NULL COMMENT 'Ultimo pago',
  `EstFic` bit(1) DEFAULT NULL COMMENT 'Estado de la Ficha',
  `EstBen` bit(1) DEFAULT NULL COMMENT 'Estado del titular Vivo o Fallecido',
  `TipFic` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='	';

--
-- Volcado de datos para la tabla `conbenef`
--

INSERT INTO `conbenef` (`NroFicha`, `ConBenef`, `idZonas`, `FeAfil`, `idTipId`, `NoIden`, `PriApe`, `SegApe`, `PriNom`, `SegNom`, `DirBen`, `idMncio`, `idDEPTOS`, `TelBen`, `FNacBen`, `UlpBen`, `EstFic`, `EstBen`, `TipFic`) VALUES
(1, NULL, 1, '0000-00-00', 'CC', '456', 'asas', 'rere', 'fdckdc', 'cjxkvjkc', 'dsdsd', 17123, 17, '321321151', '2020-05-04', NULL, b'1', NULL, 'AF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contitular`
--

CREATE TABLE `contitular` (
  `NroFicha` int(11) NOT NULL COMMENT 'Nro Ficha',
  `idZonas` int(11) NOT NULL COMMENT 'Id Zona',
  `FeAfil` date DEFAULT NULL COMMENT 'Fecha Afiliación',
  `idTipId` varchar(3) NOT NULL COMMENT 'Tipo Id',
  `NoIden` varchar(15) DEFAULT NULL COMMENT 'Número de indentificación',
  `PriApe` varchar(45) DEFAULT NULL,
  `SegApe` varchar(45) DEFAULT NULL,
  `PriNom` varchar(45) DEFAULT NULL,
  `SegNom` varchar(45) DEFAULT NULL,
  `DirTit` varchar(45) DEFAULT NULL,
  `idMncio` int(11) NOT NULL COMMENT 'Municipio',
  `idDEPTOS` int(11) NOT NULL COMMENT 'Departamento',
  `TelTit` varchar(45) DEFAULT NULL COMMENT 'Telefonos Titular',
  `FNacTit` date DEFAULT NULL COMMENT 'Fecha Nacimiento Titular',
  `UlpTit` date DEFAULT NULL COMMENT 'Ultimo pago',
  `EstFic` bit(1) DEFAULT NULL COMMENT 'Estado de la Ficha',
  `EstTit` bit(1) DEFAULT NULL COMMENT 'Estado del titular Vivo o Fallecido',
  `TipFic` varchar(2) NOT NULL,
  `Interno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='	';

--
-- Volcado de datos para la tabla `contitular`
--

INSERT INTO `contitular` (`NroFicha`, `idZonas`, `FeAfil`, `idTipId`, `NoIden`, `PriApe`, `SegApe`, `PriNom`, `SegNom`, `DirTit`, `idMncio`, `idDEPTOS`, `TelTit`, `FNacTit`, `UlpTit`, `EstFic`, `EstTit`, `TipFic`, `Interno`) VALUES
(1, 1, '2012-06-02', 'CC', '4541318', 'PIEDRAHITA', 'HERNANDEZ', 'OMAR', 'DE JESUS', 'TRES CRUCES', 17123, 17, '3158520532', '1966-05-31', '2020-04-30', b'1', b'1', 'AF', 0),
(2, 2, '2020-05-02', 'CC', '25056968', 'AGUIRRE', NULL, 'MARIA', 'BARBARA', NULL, 17123, 17, NULL, '1958-05-02', NULL, NULL, NULL, '', 0),
(3, 3, '1999-01-25', 'CC', '25037492', 'OSORIO', 'MANSO', 'DOLLY', '', 'VEREDA EL CEDRA...', 66173, 66, '456', '1999-04-15', NULL, b'1', b'1', 'AF', 0),
(4, 3, '2007-02-18', 'CC', '15302310', 'MOTATO', 'MOTATO', 'JULIO', 'CESAR', 'BARRIO GALAN', 66173, 66, '3128563006', '1949-12-06', NULL, b'1', NULL, 'AF', 0),
(5, 3, '1999-01-25', 'CC', '25037492', 'MANSO', 'OSORIO', 'DOLLY', '', 'VEREDA EL CEDRA...', 66173, 66, '', '1999-04-15', NULL, b'1', NULL, 'AF', 0),
(6, 3, '2015-02-01', 'CC', '25079060', 'RENDON', '', 'ALBA', 'LUCIA', 'BARRIO LA PLAZUELA', 66173, 66, '3137204025', '1962-02-24', NULL, b'1', NULL, 'AF', 0),
(11, 1, '2018-11-27', 'CC', '25056968', 'AGUIRRE', '', 'MARIA', 'BARBARA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1),
(12, 4, '0000-00-00', 'CC', '454914', 'OBANDO', 'ARENAS', 'NELSON', '', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 2),
(13, 1, '0000-00-00', 'CC', '25038316', 'RAMIREZ', 'TABORDA', 'NANSI', '', 'FUNDADORES', 17123, 17, '3138530195', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 3),
(14, 1, '0000-00-00', 'CC', '15914048', 'BANOL', '', 'BALTAZAR ', 'DE JESUS', 'PUEBLO VIEJO', 17123, 17, '3196261395', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 4),
(15, 1, '0000-00-00', 'CC', '25054974', 'GONZALEZ', 'TABORDA', 'MARIA', 'DOLORES', 'SANTA CECILIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 5),
(16, 1, '0000-00-00', 'CC', '25049497', 'GARCIA', 'ZAPATA', 'CARMEN', 'LIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 6),
(17, 1, '0000-00-00', 'CC', '25053028', 'GUTIERREZ', 'ZULUAGA', 'LUZ', 'MARY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 8),
(18, 1, '0000-00-00', 'CC', '15917511', 'REYES', 'VELARDE', 'WILLIAM', 'DE JESUS', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 9),
(19, 1, '0000-00-00', 'CC', '4573510', 'LADINO', 'VINASCO', 'HERNAN', '', 'CARRERA 5 # 6-25', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 10),
(20, 1, '0000-00-00', 'CC', '52765846', 'CARDONA', 'ESTRADA', 'SANDRA', 'MILENA', '', 17123, 17, '3123030786', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 11),
(21, 1, '0000-00-00', 'CC', '25052070', 'PEREZ', 'DE MEJIA', 'MARIA', 'AMANDA', 'CURRAMBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 12),
(22, 4, '0000-00-00', 'CC', '25057727', 'BETANCUR', '', 'INES', 'EMILIA', 'BUENOS AIRES SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 13),
(23, 1, '0000-00-00', 'CC', '1059701345', 'HERNANDEZ', 'MORALES', 'HEBER', '', 'LA ZULIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 14),
(24, 1, '0000-00-00', 'CC', '25057095', 'TABORDA', '', 'MARTHA', 'ELENA', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 15),
(25, 1, '0000-00-00', 'CC', '42795010', 'HOYOS', 'HOYOS', 'CARMEN', 'EDILIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 16),
(26, 1, '0000-00-00', 'CC', '25062773', 'DIAZ', 'CALVO', 'ESTER', 'JULIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 18),
(27, 1, '0000-00-00', 'CC', '25059288', 'TABORDA', 'ROMAN', 'LUZ', 'MARY', 'LA PLAZULEA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 19),
(28, 1, '0000-00-00', 'CC', '15911640', 'DURAN', 'VANEGAS', 'CESAR', 'OCTAVIO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 20),
(29, 1, '0000-00-00', 'CC', '4543776', 'GARCIA', 'GARCIA', 'ROBERTO', 'ANTONIO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 21),
(30, 1, '0000-00-00', 'CC', '25030698', 'FERNANDEZ', 'DE MAYA', 'NEYLA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 22),
(31, 1, '0000-00-00', 'CC', '25049405', 'DIAZ', 'DE CRUZ', 'LAURA', 'ANAIS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 24),
(32, 4, '0000-00-00', 'CC', '25055386', 'MOTATO', '', 'MARIA', 'NOHELIA', 'BUENOS AIRES SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 25),
(33, 1, '0000-00-00', 'CC', '18385425', 'PESCADOR', 'MORALES', 'MARCO', 'JOSE', 'EL CARMEN', 17123, 17, '3186134265', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 26),
(34, 1, '0000-00-00', 'CC', '4543970', 'TREJOS', 'ARCILA', 'JAIME', '', 'CALLE 10 # 10-15', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 27),
(35, 1, '0000-00-00', 'CC', '1059702749', 'HERNANDEZ', 'BECERRA', 'CRISTIAN', 'CAMILO', 'CARRERA 10 # 10-59', 17123, 17, '3217474468', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 28),
(36, 1, '0000-00-00', 'CC', '30384148', 'GARCIA', 'GUEVERA', 'ELCY', 'LORENA', 'MERCEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 29),
(37, 1, '0000-00-00', 'CC', '25060364', 'TAPASCO', 'HERNANDEZ', 'MERCEDES', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 31),
(38, 1, '0000-00-00', 'CC', '25063561', 'VILLANEDA', 'DE ARDILA', 'ROSA', 'AMELIA', 'AV. EL CIPRES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 32),
(39, 1, '0000-00-00', 'CC', '4545275', 'SOTO', 'CORREA', 'GUSTAVO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 34),
(40, 1, '0000-00-00', 'CC', '15913091', 'CA?AS', 'HENAO', 'RAMON', 'ARTURO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 36),
(41, 1, '0000-00-00', 'CC', '30411879', 'ZAMORA', 'GONZALEZ', 'YUBI', '', 'PLAZUELA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 37),
(42, 1, '0000-00-00', 'CC', '25046885', 'GOMEZ', 'RIOS', 'MARIA', 'CAMILA', 'SAN CAYETANO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 38),
(43, 1, '0000-00-00', 'CC', '25052129', 'SALDARRIAGA', 'ESCOBAR', 'TERESA', 'DE JESUS', 'CALLE 9 # SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 39),
(44, 1, '0000-00-00', 'CC', '1059695533', 'HERNANDEZ', '', 'CRISTIAN', 'CAMILO', 'BARRIO EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 41),
(45, 1, '0000-00-00', 'CC', '25059141', 'MONTOYA', 'SANCHEZ', 'MARIA', 'LINDELIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 42),
(46, 1, '0000-00-00', 'CC', '15912646', 'TAPASCO', 'VARGAS', 'ORLANDO', 'DE JESUS', 'EL PALAL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 44),
(47, 1, '0000-00-00', 'CC', '10078726', 'TREJOS', 'RAMIREZ', 'JOSE', 'ALIRIO', 'EL BANQUERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 45),
(48, 1, '0000-00-00', 'CC', '15921184', 'PESCADOR', 'TABORDA', 'JESUS', 'ANTONIO', 'SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 46),
(49, 1, '0000-00-00', 'CC', '1059696162', 'PIEDRAHITA', 'SUAREZ', 'JOSE', 'OMAR', 'JAGUERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 47),
(50, 1, '0000-00-00', 'CC', '30383084', 'HENAO', 'B', 'CLAUDIA', 'PATRICIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 48),
(51, 1, '0000-00-00', 'CC', '15917903', 'MAFLA', 'CHAURRA', 'JHON', 'SIGIFREDO', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 49),
(52, 1, '0000-00-00', 'CC', '4545232', 'IGLESIAS', 'LARGO', 'JAIME', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 51),
(53, 1, '0000-00-00', 'CC', '1284299', 'GIRALDO', 'GIRALDO', 'VICTOR', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 52),
(54, 1, '0000-00-00', 'CC', '408803496', 'PEREZ', 'CALVO', 'SINDY', 'PAOLA', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 53),
(55, 1, '0000-00-00', 'CC', '32341829', 'MEJIA', 'TORRES', 'MARIA', 'BEATRIZ', 'CARRERA 10 A # 8-12', 17123, 17, '3147440109', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 54),
(56, 1, '0000-00-00', 'CC', '25052416', 'VARGAS', '', 'MARIA', 'AURORA', 'EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 55),
(57, 1, '0000-00-00', 'CC', '4544181', 'MOTATO', 'LARGO', 'JESUS', 'ANTONIO', 'CABARGA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 56),
(58, 1, '0000-00-00', 'CC', '15915200', 'GONZALEZ', 'MORALES', 'HECTOR', 'ANTONIO', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 60),
(59, 1, '0000-00-00', 'CC', '25057451', 'VELEZ', 'ARBELAEZ', 'OLGA', 'INES', 'PLATA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 61),
(60, 1, '0000-00-00', 'CC', '4541530', 'ACEVEDO', 'CARMONA', 'FABIO', '', 'EL ESPINO', 17123, 17, '3105214168', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 62),
(61, 1, '0000-00-00', 'CC', '30413777', 'FRANCO', 'SALAZAR', 'LEIDY', 'JOHANA', 'CALLE 8 CON CARRERA 12 A # 8-25', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 65),
(62, 1, '0000-00-00', 'CC', '15913653', 'GIL', 'GIL', 'HERNAN', 'GABRIEL', 'CARRERA 9 #', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 66),
(63, 1, '0000-00-00', 'CC', '25064152', 'ALCALDE', '', 'MARIA', 'EDELMIRA', 'BOMBA LA FORTUNA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 67),
(64, 1, '0000-00-00', 'CC', '25057330', 'CARTAGENA', '', 'MARIA', 'AMPARO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 70),
(65, 1, '0000-00-00', 'CC', '25053135', 'MURIEL', 'IBARRA', 'MARIA', 'MARLENY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 72),
(66, 1, '0000-00-00', 'CC', '31193940', 'CRUZ', '', 'MARIA', 'ARGELIA', 'BANQUEO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 73),
(67, 1, '0000-00-00', 'CC', '15923945', 'PIEDRAHITA', 'SUAREZ', 'CLIMACO', 'ENRIQUE', 'JAGUERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 74),
(68, 1, '0000-00-00', 'CC', '1377468', 'DIAZ', '', 'FRANCISCO', 'LUIS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 76),
(69, 2, '0000-00-00', 'CC', '25063355', 'AGUDELO', 'DE BUENO', 'SOILA', 'ROSA', 'JUAN DIAZ', 17123, 17, '3206759119', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 78),
(70, 1, '0000-00-00', 'CC', '30413537', 'MORALES', 'DIAZ', 'GLORIA', 'PATRICIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 79),
(71, 1, '0000-00-00', 'CC', '15912224', 'LARGO', '', 'JOAQUIN', 'EMILIO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 80),
(72, 1, '0000-00-00', 'CC', '30411075', 'CA?AS', '', 'MARIA', 'CENELIA', 'JAGUERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 81),
(73, 4, '0000-00-00', 'CC', '25073890', 'LENGUA', '', 'SOCORRO', '', 'BUENOS AIRES SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 82),
(74, 1, '0000-00-00', 'CC', '41929014', 'ARRUBLA', 'OCAMPO', 'ANA', 'MILENA', 'BARRIO FUNDADORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 83),
(75, 1, '0000-00-00', 'CC', '25053386', 'GUERRERO', 'HERNANDEZ', 'MARIA', 'LIBIA', 'SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 84),
(76, 1, '0000-00-00', 'CC', '15911854', 'ARICAPA', 'CALVO', 'ERNESTO', 'EMILIO', 'VEREDA PLANADAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 85),
(77, 1, '0000-00-00', 'CC', '25055939', 'ISAZA', '', 'ESTER', 'JULIA', 'ESMERALDA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 86),
(78, 1, '0000-00-00', 'CC', '25052281', 'GUTIERREZ', 'DIAZ', 'FANNY', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 87),
(79, 1, '0000-00-00', 'CC', '30382776', 'BECERRA', 'DE ARANDIA', 'MARIA', 'ARNOBIA', 'TRES CRUCES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 88),
(80, 1, '0000-00-00', 'CC', '9872302', 'RIVERA', 'GIL', 'JORGE', 'MARIO', 'VEREDA PUEBLO VIEJO', 17123, 17, '3155513699', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 89),
(81, 1, '0000-00-00', 'CC', '1117525789', 'MATEUS', 'RAMIREZ', 'JHON ', 'ALEXANDER', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 90),
(82, 5, '0000-00-00', 'CC', '1774078', 'MOTATO', '', 'RUBEN', 'DARIO', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 90),
(83, 5, '0000-00-00', 'CC', '', 'LORENZO', '', 'RICARDO', 'RAMON', 'IRRA', 66173, 66, '3193304622', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 91),
(84, 1, '0000-00-00', 'CC', '25054008', 'GARCIA', 'GARCIA', 'MARIA', 'DEL ROCIO', 'VEREDA EL JARDIN ', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 92),
(85, 1, '0000-00-00', 'CC', '15910671', 'TABORDA', 'ALVAREZ', 'JESUS', 'ANTONIO', 'ALMACAFE', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 94),
(86, 1, '0000-00-00', 'CC', '4545468', 'SEPULVEDA', '', 'FRANCISCO', 'ANIBAL', 'CARRERA 4 # 4-47', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 95),
(87, 1, '0000-00-00', 'CC', '4541634', 'REYES', '', 'GONZALO', '', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 96),
(88, 1, '0000-00-00', 'CC', '25052036', 'CALVO', 'VASQUEZ', 'MYRIAM', '', 'LOS ALAMOS', 17123, 17, '8590732', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 97),
(89, 1, '0000-00-00', 'CC', '25211558', 'VINASCO', 'FERNANDEZ', 'LUZ', 'MARY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 98),
(90, 1, '0000-00-00', 'CC', '25056657', 'GUEVARA', 'DE BA?OL', 'MAGDALENA', '', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 99),
(91, 1, '0000-00-00', 'CC', '25059283', 'TREJOS', 'CARTAGENA', 'EUCARIS', 'DE JESUS', 'COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 100),
(92, 1, '0000-00-00', 'CC', '25062667', 'TABORDA', 'JARAMILLO', 'MARIA', 'ARACELLY', 'SALIDO EL SALADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 101),
(93, 1, '0000-00-00', 'CC', '21416280', 'TREJOS', 'DE GIRALDO', 'MAGNOLIA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 102),
(94, 1, '0000-00-00', 'CC', '25056329', 'CORREA', 'ROMERO', 'LUZ', 'DARY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 104),
(95, 1, '0000-00-00', 'CC', '25059108', 'HOYOS', 'MARIN', 'MARIA', 'LUCELLY', 'LLANO GRANDE', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 105),
(96, 1, '0000-00-00', 'CC', '15913842', 'HERNANDEZ', 'ALFONSO', 'ENRIQUE', '', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 106),
(97, 1, '0000-00-00', 'CC', '25053126', 'CANO', 'TREJOS', 'AURORA', '', 'CARRERA 3 # 9A-40', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 107),
(98, 1, '0000-00-00', 'CC', '15914324', 'SALAZAR', 'DIAZ', 'FRANCISCO', 'JAVIER', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 108),
(99, 1, '0000-00-00', 'CC', '25059592', 'ARICAPA', '', 'MARIA', 'ELIZABETH', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 109),
(100, 1, '0000-00-00', 'CC', '25066102', 'OSORIO', 'OSORIO', 'LUCILA', '', 'CALLE 5', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 110),
(101, 1, '0000-00-00', 'CC', '25054497', 'GARCIA', '', 'LUCY', 'ENSUE?O', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 112),
(102, 1, '0000-00-00', 'CC', '25051813', 'ACEVEDO', 'DE LARGO', 'MARIA', 'ISABEL', 'LAS MINAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 114),
(103, 1, '0000-00-00', 'CC', '25061223', 'LARGO', 'LARGO', 'EVA', 'MERCEDES', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 116),
(104, 1, '0000-00-00', 'CC', '4541318', 'BEDOYA', 'LOPEZ', 'JAVIER', 'DE JESUS', 'EL BANQUEO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 117),
(105, 1, '0000-00-00', 'CC', '15911089', 'MOTATO', '', 'GILDARDO', 'DE JESUS', 'REBA?O', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 120),
(106, 1, '0000-00-00', 'CC', '15912318', 'SUAREZ', 'ORTIZ', 'REINERIO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 121),
(107, 1, '0000-00-00', 'CC', '25056142', 'DIAZ', 'MORALES', 'CARMEZA', '', 'CRRA 5 # 16-34', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 122),
(108, 1, '0000-00-00', 'CC', '25080598', 'MONTES', 'CANO', 'GLORIA', 'ESPERANZA', 'COMUNIDAD LA RUEDA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 123),
(109, 1, '0000-00-00', 'CC', '4537192', 'DE LOS RIOS', 'GRANADA', 'SIGIFREDO', '', 'SALIDA A MEDELLIN ', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 124),
(110, 1, '0000-00-00', 'CC', '25048162', 'VELASQUEZ', 'DE DIAZ', 'MERCEDES', 'OLIVA', 'LAS MERCEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 125),
(111, 1, '0000-00-00', 'CC', '25054979', 'MAFLA', 'GUAPACHA', 'GLORIA', 'MARINA', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 126),
(112, 1, '0000-00-00', 'CC', '4544811', 'VINASCO', '', 'VICTOR', 'ALFONSO', 'CARRERA 5A 14-47 ', 17123, 17, '3113556527', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 127),
(113, 1, '0000-00-00', 'CC', '15917626', 'VALENCIA', 'HERNANDEZ', 'EUCLIDES', '', 'LA ANTIOQUE?A', 17123, 17, '3207075019', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 128),
(114, 1, '0000-00-00', 'CC', '25054968', 'RAMIREZ', 'SOTO', 'MARIA', 'DEL CONSUELO', 'EDEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 129),
(115, 1, '0000-00-00', 'CC', '25060678', 'BECERRA', 'BOTERO', 'DORA', 'INES', 'MERCEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 130),
(116, 1, '0000-00-00', 'CC', '15915866', 'GUERRERO', 'DIAZ', 'RICAUTE', 'ISMAEL', 'EL RODEO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 131),
(117, 1, '0000-00-00', 'CC', '4543823', 'DE LOS RIOS', 'DE LOS RIOS', 'JORGE', 'ANCIZAR', 'BARRIO LAS AMERICAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 135),
(118, 1, '0000-00-00', 'CC', '25053742', 'HERNANDEZ', '', 'MARIA', 'LICIDIA', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 136),
(119, 1, '0000-00-00', 'CC', '15911156', 'MORALES', '', 'ROBERTO', 'ANTONIO', 'UBARBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 138),
(120, 1, '0000-00-00', 'CC', '25062452', 'RENDON', 'RAMIREZ', 'GLORIA', 'ISABEL', 'BARRIO EL NEVADO BAJO', 17123, 17, '3157236897', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 139),
(121, 1, '0000-00-00', 'CC', '25055025', 'CRUZ', 'LARGO', 'MARIA', 'DARNELLY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 140),
(122, 1, '0000-00-00', 'CC', '15920333', 'HERNANDEZ', '', 'OLMEDO', 'DE JESUS', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 142),
(123, 1, '0000-00-00', 'CC', '25046559', 'VINASCO', 'CALVO', 'NOHEMY', '', 'BARRIO FUNDADORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 143),
(124, 1, '0000-00-00', 'CC', '30413310', 'TABORDA', 'NARANJO', 'DIANA', 'FAISULY', 'VEREDA PUEBLO VIEJO', 17123, 17, '3164930066', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 148),
(125, 1, '0000-00-00', 'CC', '34532368', 'TABORDA', 'VINASCO', 'DARLY', 'DEL SOCORRO', 'PARTIDAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 149),
(126, 1, '0000-00-00', 'CC', '25057360', 'UCHIMA', '', 'MARIA', 'TRINIDAD', 'MIRAFLORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 150),
(127, 1, '0000-00-00', 'CC', '15913069', 'HERNANDEZ', 'PIEDRAHITA', 'OMAR', 'DE JESUS', 'TRES CRUCES', 17123, 17, '3158520532', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 153),
(128, 1, '0000-00-00', 'CC', '4543767', 'PESCADOR', 'QUINTERO', 'JUAN', 'NAPOMOCENO', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 155),
(129, 1, '0000-00-00', 'CC', '15913632', 'LARGO', 'BA?OL', 'FRANCISCO', 'JAVIER', 'CABARGA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 156),
(130, 1, '0000-00-00', 'CC', '25051960', 'MORALES', '', 'MARIA', 'DEL SOCORRO', 'BARRIO EL BANQUEO', 17123, 17, '8590324', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 157),
(131, 1, '0000-00-00', 'CC', '25055164', 'MAFLA', 'CARDONA', 'ROSA', 'MARIA', 'PEATONAL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 158),
(132, 1, '0000-00-00', 'CC', '25054502', 'MOTATO', 'MORALES', 'ROSA', 'ELVIA', '', 17123, 17, '320720493', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 159),
(133, 1, '0000-00-00', 'CC', '25053476', 'PESCADOR', '', 'ANA', 'LUCIA', 'LA FLORESTA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 161),
(134, 2, '0000-00-00', 'CC', '15918973', 'LADINO', 'LADINO', 'JHOAN', 'MARIO', '', 17123, 17, '3123142459', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 162),
(135, 1, '0000-00-00', 'CC', '4541195', 'CRUZ', '', 'OMAR', 'ANTONIO', 'CALLE 10 # 11-01', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 166),
(136, 1, '0000-00-00', 'CC', '21618959', 'LOPEZ', 'LOPEZ', 'MARTHA', 'LUZ', 'CALLE 7 LOS SAUCES', 17123, 17, '3137383088', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 167),
(137, 7, '0000-00-00', 'CC', '33994335', 'TREJOS', 'DIAZ', 'CONSUELO', '', 'ALTO SEVILLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 170),
(138, 1, '0000-00-00', 'CC', '25045117', 'SALDARRIAGA', '', 'AURA', 'ROSA', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 171),
(139, 1, '0000-00-00', 'CC', '1090148897', 'ALARCON', 'VELASQUEZ', 'ANGELA', 'TATIANA', 'ESTANCIAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 172),
(140, 1, '0000-00-00', 'CC', '25061194', 'NARANJO', 'HOYOS', 'ANA', 'CRISTINA', 'LA CANDELARIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 173),
(141, 4, '0000-00-00', 'CC', '32180575', 'GUAPACHA', 'ALARCON', 'SOCIMA', '', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 174),
(142, 1, '0000-00-00', 'CC', '25056944', 'GA?AN', '', 'MARIA', 'ELVIA', 'JARDIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 175),
(143, 1, '0000-00-00', 'CC', '15913739', 'BA?OL', 'BA?OL', 'FRANCISCO', 'ANTONIO', 'HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 176),
(144, 1, '0000-00-00', 'CC', '4541884', 'GUAPACHA', 'LARGO', 'BLAS', 'EDUARDO', 'CABARGA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 177),
(145, 1, '0000-00-00', 'CC', '25055236', 'RAMIREZ', 'GUTIERREZ', 'MARIELA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 179),
(146, 1, '0000-00-00', 'CC', '15914200', 'CALVO', 'VINASCO', 'ALVARO', 'DE JESUS', 'BARRIO LAS MERCEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 181),
(147, 1, '0000-00-00', 'CC', '1248990', 'ALVAREZ', 'RESTREPO', 'ALONSO', 'DE JESUS', 'QUIEBRALOMO', 17123, 17, '3147774746', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 184),
(148, 1, '0000-00-00', 'CC', '25212372', 'LINAREZ', 'MORENO', 'BERNARDA', 'SAN CAYETANO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 185),
(149, 1, '0000-00-00', 'CC', '25057357', 'LARGO', 'GUAPACHA', 'ROSA', 'ELVIRA', 'EL NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 187),
(150, 1, '0000-00-00', 'CC', '24046982', 'NAVARRO', 'NAVARRO', 'MARIA', 'ELVIA', 'CALLE 7 # 3-29', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 189),
(151, 7, '0000-00-00', 'CC', '4545209', 'TREJOS', 'ARCE', 'CARLOS ', 'ALBERTO', 'SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 190),
(152, 1, '0000-00-00', 'CC', '30413199', 'MORALES', 'LARGO', 'LIDIANA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 191),
(153, 1, '0000-00-00', 'CC', '24685742', 'SOTO', 'CHIQUITO', 'MARIA', 'CIELO', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 193),
(154, 1, '0000-00-00', 'CC', '25060827', 'MARIN', 'PARRA', 'ORBILIA', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 194),
(155, 1, '0000-00-00', 'CC', '7533321', 'PESCADOR', '', 'JESUS', 'ANTONIO', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 195),
(156, 1, '0000-00-00', 'CC', '25055883', 'VELASQUEZ', 'DE SANCHEZ', 'ELVIA', 'DE JESUS', 'EL JARDIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 196),
(157, 1, '0000-00-00', 'CC', '25051716', 'OSPINA', 'VALLEJO', 'MARIA', 'CORALIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 197),
(158, 5, '0000-00-00', 'CC', '10276055', 'BUENO', 'AGUDELO', 'OMAR', 'DE JESUS', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 199),
(159, 1, '0000-00-00', 'CC', '25054318', 'GARCIA', 'DE GUAPACHA', 'MARIA', 'VIRGELINA', 'CARRERA 9 # 6-05', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 200),
(160, 1, '0000-00-00', 'CC', '3378766', 'BEDOYA', 'DUQUE', 'FABIO', 'NELSON', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 201),
(161, 1, '0000-00-00', 'CC', '1059698973', 'BARTOLO', 'GUAPACHA', 'ESTER', 'JULIANA', 'CARRERA 3 # 12-71', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 203),
(162, 1, '0000-00-00', 'CC', '15924929', 'ORTIZ', 'MORALES', 'JAVIER', 'DE JESUS', 'CHANCOS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 207),
(163, 1, '0000-00-00', 'CC', '4547274', 'HERNANDEZ', 'DIAZ', 'ESNORALDO', '', 'PIE DEL LLANO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 208),
(164, 1, '0000-00-00', 'CC', '15913705', 'SUAREZ', 'GUERRERO', 'CARLOS', 'ENRIQUE', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 210),
(165, 1, '0000-00-00', 'CC', '10077792', 'AGUDELO', 'RAMIREZ', 'JOSE', 'EUCARIS', 'EL NEVADO', 17123, 17, '3103831834', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 212),
(166, 1, '0000-00-00', 'CC', '25053595', 'RAMIREZ', 'DE LADINO', 'ADELA', '', 'SALIDA AL SALADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 213),
(167, 1, '0000-00-00', 'CC', '30412901', 'JARAMILLO', 'GONZALEZ', 'CLAUDIA', 'MARCELA', '', 17123, 17, '3113863932', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 214),
(168, 1, '0000-00-00', 'CC', '15916624', 'TAPASCO', '', 'ARBEY', 'DE JESUS', 'LA ULTIMA COPA SIPIRRA', 17123, 17, '3103827484', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 215),
(169, 1, '0000-00-00', 'CC', '31234619', 'GUEVARA', '', 'MARIA', 'DEL CARMEN', 'LAS MERCEEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 216),
(170, 1, '0000-00-00', 'CC', '25053269', 'DIAZ', 'DE GUEVARA', 'CECILIA', '', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 219),
(171, 5, '0000-00-00', 'CC', '', 'TASCON', '', 'PEDRO', 'LUIS', '', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 220),
(172, 1, '0000-00-00', 'CC', '15915559', 'GARCIA', '', 'JHON', 'JAIRO', 'CALLE 7 # 5-22', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 223),
(173, 1, '0000-00-00', 'CC', '25056011', 'RAMIREZ', 'HENAO', 'AMPARO', '', '', 17123, 17, '3125278495', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 227),
(174, 1, '0000-00-00', 'CC', '25051871', 'LARGO', '', 'ROSA', 'MARIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 228),
(175, 1, '0000-00-00', 'CC', '25048243', 'MORALES', '', 'CARMEN', 'EMILIA', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 229),
(176, 1, '0000-00-00', 'CC', '30412325', 'CANO', 'GALLO', 'OLGA', 'LUCIA', 'SAN NICOLAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 231),
(177, 1, '0000-00-00', 'CC', '25056750', 'TABORDA', 'VINASCO', 'MARIA', 'EMMA', 'BAJO NEVADO LA FORTUNA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 232),
(178, 1, '0000-00-00', 'CC', '25056571', 'COLORADO', 'RAMIREZ', 'NORMANDIA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 233),
(179, 1, '0000-00-00', 'CC', '15912127', 'DIAZ', '', 'DARIO', '', 'LA ESMERALDA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 236),
(180, 1, '0000-00-00', 'CC', '4547460', 'GONZALEZ', 'BETANCUR', 'JULIO', 'CESAR', 'QUIEBRALOMO', 17123, 17, '3177234492', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 240),
(181, 1, '0000-00-00', 'CC', '15910001', 'MEJIA', 'GOMEZ', 'MARCO', 'AURELIO', 'CARRERA 4 CON 9', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 244),
(182, 1, '0000-00-00', 'CC', '25059798', 'HOYOS', 'GAVIRIA', 'LILIA', 'ROSA', 'LA PLAZULEA', 17123, 17, '3214910145', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 245),
(183, 1, '0000-00-00', 'CC', '25061499', 'MELCHOR', 'GUAPACHA', 'ALBA', 'LITH', 'LA ZULIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 246),
(184, 1, '0000-00-00', 'CC', '1259057', 'MORALES', 'SANCHEZ', 'JORGE', 'ENRIQUE', 'SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 247),
(185, 1, '0000-00-00', 'CC', '25051900', 'SALDARRIAGA', '', 'AMANDA', 'DE JESUS', 'LAS MERCEEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 248),
(186, 1, '0000-00-00', 'CC', '43568570', 'GUAPACHA', 'LARGO', 'BLANCA', 'DORIS', 'LA COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 250),
(187, 1, '0000-00-00', 'CC', '25056549', 'MOTATO', 'DE MORALES', 'NELLY ', 'DE JESUS', 'LA PALMA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 253),
(188, 1, '0000-00-00', 'CC', '14998345', 'VARGAS', '', 'ARNULFO', 'ANTONIO', 'PLANADAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 254),
(189, 1, '0000-00-00', 'CC', '4542688', 'GONZALEZ', '', 'GONZALO', '', 'AGUACATAL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 257),
(190, 1, '0000-00-00', 'CC', '25060756', 'MORENO', 'NARVAEZ', 'MARIELA', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 258),
(191, 1, '0000-00-00', 'CC', '25027494', 'ARCILA', 'HERNANDEZ', 'ZOILA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 260),
(192, 1, '0000-00-00', 'CC', '4541314', 'MAFLA', '', 'JUAN', 'MANUEL', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 261),
(193, 1, '0000-00-00', 'CC', '4544499', 'CALVO', 'LADINO', 'ROBERTO', 'HERNAN', 'CALLE 8 # 10-18', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 263),
(194, 1, '0000-00-00', 'CC', '18470878', 'TABORDA', 'DIAZ', '', 'GILBERTO', 'CARRERA 4# 2-35', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 264),
(195, 1, '0000-00-00', 'CC', '15921789', 'DURAN', 'VALLEJO', 'GABRIEL', 'ANGEL', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 266),
(196, 5, '0000-00-00', 'CC', '25059427', 'TAPASCO', '', 'CARMELINA', '', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 267),
(197, 1, '0000-00-00', 'CC', '15912875', 'VALLEJO', 'CEBALLOS', 'ISAIAS', '', 'HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 268),
(198, 1, '0000-00-00', 'CC', '15924923', 'NARVAEZ', 'GARCIA', 'AUNER', 'DE JESUS', 'PALERMO', 17123, 17, '3503533056', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 270),
(199, 1, '0000-00-00', 'CC', '15912002', 'CA?AS', 'LARGO', 'GONZALO', 'DE JESUS', 'JAGUERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 272),
(200, 5, '0000-00-00', 'CC', '32116110', 'MEDINA', '', 'ROSA', 'ANGELICA', 'CALLE PRINCIPAL IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 274),
(201, 1, '0000-00-00', 'CC', '25052880', 'BETANCURTH', '', 'ANA', 'DEYBA', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 275),
(202, 1, '0000-00-00', 'CC', '25057355', 'LARGO', '', 'ELVIA', '', ' BAJO IMURRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 276),
(203, 1, '0000-00-00', 'CC', '41641848', 'GARZON', 'MARIN', 'DIOS', 'MERY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 281),
(204, 1, '0000-00-00', 'CC', '30384501', 'TABORDA', 'RAMIREZ', 'DORYS', 'ENSUE?O', 'PARTIDAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 282),
(205, 1, '0000-00-00', 'CC', '15918261', 'ESTRADA', 'DIAZ', 'HUMBERTO', 'DE JESUS', 'CARREA 4 # 5-18', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 285),
(206, 1, '0000-00-00', 'CC', '15924317', 'GUTIERREZ', 'NARVAEZ', 'ALBERTO', 'DE JESUS', 'CEIBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 286),
(207, 1, '0000-00-00', 'CC', '1378689', 'VILLANEDA', 'HERNANDEZ', 'GILBERTO', 'ANTONIO', 'EL PALAL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 287),
(208, 1, '0000-00-00', 'CC', '25060281', 'MONROY', 'DIAZ', 'MARIA', 'ESPERANZA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 288),
(209, 5, '0000-00-00', 'CC', '9893163', 'MARIN', 'GONZALES', 'JOSE ', 'IVAN', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 289),
(210, 5, '0000-00-00', 'CC', '9892681', 'ORTIZ', 'VELASCO', 'ARLEY', 'DE JESUS', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 290),
(211, 1, '0000-00-00', 'CC', '25048502', 'TAPASCO', 'GONZALEZ', 'MARIA', 'IDALYA', 'LA COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 291),
(212, 1, '0000-00-00', 'CC', '30411186', 'HERNANDEZ', '', 'OLGA', 'LILIAN', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 293),
(213, 1, '0000-00-00', 'CC', '', 'VELARDE', 'TAPASCO', 'MARIA', 'OLIVIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 294),
(214, 1, '0000-00-00', 'CC', '25052231', 'REYES', 'CLAVIJO', 'MARIA', 'LIGIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 295),
(215, 5, '0000-00-00', 'CC', '25062267', 'CAMPEON', 'AYALA', 'AURA', 'DELIA', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 296),
(216, 1, '0000-00-00', 'CC', '4548455', 'BUENO', 'BLANDON', 'ELIBARDO ', 'ANTONIO', 'CALLE 5 # 8-41', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 297),
(217, 1, '0000-00-00', 'CC', '15918737', 'CLAVIJO', 'LADINO', 'RAFAEL', 'ARTURO', 'EL MESTIZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 298),
(218, 1, '0000-00-00', 'CC', '1059701084', 'TREJOS', 'GOMEZ', 'LEIDY', 'LISED', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 299),
(219, 1, '0000-00-00', 'CC', '22040052', 'ARANGO', 'DE VILLA', 'ROSA', 'EDILMA', 'LOS CHORROS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 300),
(220, 1, '0000-00-00', 'CC', '25059121', 'MORALES', 'ZAMORA', 'ROSA', 'ELENA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 301),
(221, 1, '0000-00-00', 'CC', '15920665', 'GUERRERO', 'HERNANDEZ', 'MARCO', 'TULIO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 302),
(222, 1, '0000-00-00', 'CC', '25055498', 'GUERRERO', 'REYES', 'MARIA', 'NERY', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 303),
(223, 1, '0000-00-00', 'CC', '29643366', 'PARRA', '', 'MIRYAN', '', 'BARRIO FUNDADORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 304),
(224, 1, '0000-00-00', 'CC', '25052317', 'BECERRA', 'DE VARGAS', 'MARIA', 'IDALBA', 'HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 306),
(225, 1, '0000-00-00', 'CC', '25057537', 'CRUZ', 'DIAZ', 'MARIA', 'IDALBA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 307),
(226, 1, '0000-00-00', 'CC', '25053065', 'GARCIA', '', 'FANNY', '', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 311),
(227, 1, '0000-00-00', 'CC', '11295357', 'GARCIA', '', 'DIEGO', '', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 312),
(228, 1, '0000-00-00', 'CC', '25052609', 'HERNANDEZ', '', 'IDALY', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 313),
(229, 1, '0000-00-00', 'CC', '15912615', 'TAPASCO', 'TREJOS', 'JOSE', 'IGNACIO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 314),
(230, 1, '0000-00-00', 'CC', '25058464', 'TAPASCO', 'TREJOS', 'MARIA', 'CECILIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 315),
(231, 1, '0000-00-00', 'CC', '30412457', 'SUAREZ', 'HERNANDEZ', 'ALBA', 'LIDIA', 'BARRO BLANCO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 317),
(232, 1, '0000-00-00', 'CC', '25057753', 'CALVO', 'DE TORO', 'MARIA', 'INES', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 319),
(233, 1, '0000-00-00', 'CC', '30415419', 'VALENCIA', 'RESTREPO', 'JESSICA', 'ANDREA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 320),
(234, 1, '0000-00-00', 'CC', '4544522', 'RAMIREZ', 'HERNANDEZ', 'BENJAMIN', '', 'PARTIDAS ALTO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 321),
(235, 1, '0000-00-00', 'CC', '25047126', 'RESTREPO', 'DE PALAU', 'ROSA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 322),
(236, 1, '0000-00-00', 'CC', '25048090', 'TREJOS ', 'LARGO', 'MARIA', 'VERONICA', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 323),
(237, 1, '0000-00-00', 'CC', '15916857', 'VELASQUEZ', 'ZAMORA', 'JAIRO', 'DE JESUS', 'EL RODEO', 17123, 17, '3156832846', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 324),
(238, 1, '0000-00-00', 'CC', '25055825', 'DIAZ', 'DE DIAZ', 'EUCARIS', 'DE JESUS', 'LAS MERCEEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 328),
(239, 1, '0000-00-00', 'CC', '1381782', 'RAMIREZ', 'JARAMILLO', 'HECTOR', 'JAIME', 'VEREDA BOLIVAR SAN CLEMENTE', 17123, 17, '3207150906', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 329),
(240, 1, '0000-00-00', 'CC', '30382756', 'ROMERO', 'TABORDA', 'MARIA', 'ELCIRA', 'LAS PILAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 331),
(241, 2, '0000-00-00', 'CC', '25063847', 'BUENO', 'LADINO', 'MARIA', 'BELISA', 'EL CLARETH', 17123, 17, '3218100137', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 332),
(242, 1, '0000-00-00', 'CC', '25066043', 'GOMEZ', 'GALLO', 'ANA', 'FABIOLA', 'BARRIO INGRUMA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 333),
(243, 5, '0000-00-00', 'CC', '25038703', 'HERNANDEZ', '', 'ZOILA', 'ROSA', 'IRRA MATABERO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 334),
(244, 1, '0000-00-00', 'CC', '4544050', 'MORALES', 'GARCIA', 'HUMBERTO', '', 'LA PLAZULEA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 335),
(245, 1, '0000-00-00', 'CC', '15924768', 'TREJOS', 'GARCIA', 'GILBERTO', 'IVAN', 'CALLE 9 # SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 336),
(246, 1, '0000-00-00', 'CC', '25052792', 'LARGO', 'DE TABA', 'MARIA', 'JULIANA', 'CHANCOS', 17123, 17, '3184486462', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 338),
(247, 1, '0000-00-00', 'CC', '15911455', 'BUENO', 'LARGO', 'CAMPO', 'ELIAS', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 339),
(248, 1, '0000-00-00', 'CC', '25058657', 'SUAREZ', 'DE MORENO', 'MERCEDES', 'ORFILIA', 'LAS PILAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 340),
(249, 1, '0000-00-00', 'CC', '15918896', 'HERNANDEZ', '', 'EDGAR', 'DE JESUS', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 341),
(250, 1, '0000-00-00', 'CC', '4341410', 'HOYOS', 'FRANCISCO', 'ANTONIO', '', 'HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 343),
(251, 1, '0000-00-00', 'CC', '4543664', 'LOAIZA', 'LOAIZA', 'GONZAGA', '', 'EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 344),
(252, 1, '0000-00-00', 'CC', '15911007', 'GARCIA', 'ESPINISA', 'GERARDO', 'EDUARDO', 'LAS PARTIDAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 346),
(253, 1, '0000-00-00', 'CC', '15913082', 'NARANJO', 'PIEDRAHITA', 'LIBARDO', 'ANTONIO', 'LA PLAZULEA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 347),
(254, 1, '0000-00-00', 'CC', '25055143', 'RIVERA', 'ROJAS', 'ALBA', 'LICIRIA', 'BARRIO EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 348),
(255, 1, '0000-00-00', 'CC', '25054908', 'VINASCO', 'DE BEDOYA', 'AMANDA', '', 'CALLE 15 # 30-03', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 349),
(256, 1, '0000-00-00', 'CC', '1378829', 'RESTREPO', 'GARCIA', 'PATROCINIO', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 350),
(257, 1, '0000-00-00', 'CC', '1378709', 'TAPASCO', '', 'HONORIO', '', 'LA COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 352),
(258, 1, '0000-00-00', 'CC', '15915161', 'TAPASCO', '', 'ARNOBY', '', 'LA COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 353),
(259, 8, '0000-00-00', 'CC', '15911986', 'CARTAGENA', 'TREJOS', 'EDGAR', 'DE JESUS', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 355),
(260, 8, '0000-00-00', 'CC', '25055185', 'TABORDA', 'SALAZAR', 'MARIA', 'ELENA', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 356),
(261, 1, '0000-00-00', 'CC', '15921916', 'TABORDA', '', 'CARLOS', 'ARTURO', 'SAN JUAN LA COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 357),
(262, 8, '0000-00-00', 'CC', '1374408', 'TABORDA', '', 'JUAN', 'GREGORIO', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 358),
(263, 8, '0000-00-00', 'CC', '25057488', 'RESTREPO', '', 'AMANDA', 'DE JESUS', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 359),
(264, 8, '0000-00-00', 'CC', '25059638', 'TREJOS', '', 'OLGA', '', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 361),
(265, 1, '0000-00-00', 'CC', '1027880459', 'LARREA', 'TORRES', 'BLANCA', 'CECILIA', 'LA MARIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 362),
(266, 8, '0000-00-00', 'CC', '4547403', 'RESTREPO', '', 'HUGO', 'DE JESUS', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 363),
(267, 8, '0000-00-00', 'CC', '15911975', 'TREJOS', 'CARTAGENA', 'FABIO', 'DE JESUS', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 366),
(268, 8, '0000-00-00', 'CC', '30384267', 'MARIN', 'TABORDA', 'LUZ', 'JENNY', 'LA COMPARSITA', 17123, 17, '3148495039', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 367),
(269, 8, '0000-00-00', 'CC', '33990653', 'CARTAGENA', '', 'LUZ', 'MARINA', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 368),
(270, 8, '0000-00-00', 'CC', '15912193', 'LARGO', '', 'JULIO', 'CESAR', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 369),
(271, 8, '0000-00-00', 'CC', '15920540', 'SALAZAR', 'ACEVEDO', 'WILLIAM', '', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 370),
(272, 8, '0000-00-00', 'CC', '', 'GUERRERO', 'TREJOS', 'OSMAN', '', 'LA COMPARSITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 371),
(273, 1, '0000-00-00', 'CC', '25210789', 'ANDICA', 'CASTA?EDA', 'DIOSELINA', '', 'LA COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 372),
(274, 1, '0000-00-00', 'CC', '15928651', 'HOYOS', 'HOYOS', 'FERNEY', 'ANTONIO', 'PLANADAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 374),
(275, 1, '0000-00-00', 'CC', '15917166', 'MONTOYA', 'DIAZ', 'HECTOR', 'WILLIAM', 'CARREA 2 # 9-62', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 375),
(276, 1, '0000-00-00', 'CC', '25055643', 'GUERRERO', '', 'LUZ', 'ADIELA', 'BARRIO FUNDADORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 376),
(277, 1, '0000-00-00', 'CC', '30414536', 'CALLE', 'NARANJO', 'NANCY', 'JANETH', 'CALLE 19 # 5-35', 17123, 17, '3127667519', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 379),
(278, 1, '0000-00-00', 'CC', '25056282', 'SANCHEZ', 'MORALES', 'ROSELIA', '', 'LA BUITRERA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 380),
(279, 1, '0000-00-00', 'CC', '4543386', 'RAMIREZ', 'BUENO', 'GUSTAVO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 382),
(280, 1, '0000-00-00', 'CC', '25052670', 'HERNANDEZ', '', 'MARIA', 'OLIVA', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 386),
(281, 1, '0000-00-00', 'CC', '1088300959', 'PATI?O', 'LARGO', 'DIANA', 'MARCELA', 'SALIDA EL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 387),
(282, 1, '0000-00-00', 'CC', '25054376', 'BOTERO', 'QUINTERO', 'EUCARIS', '', 'CALLE 5 # 8-51', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 389),
(283, 4, '0000-00-00', 'CC', '25213718', 'HERNANDEZ', 'GUEVARA', 'FLOR', 'MARIA', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 392),
(284, 1, '0000-00-00', 'CC', '25057473', 'REYES', 'LARGO', 'MARIA', 'FRANQUELINA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 394),
(285, 1, '0000-00-00', 'CC', '25062892', 'NARANJO', 'NARANJO', 'MARTHA', 'LIGIA', 'NEVADO BAJO', 17123, 17, '3128954972', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 395),
(286, 1, '0000-00-00', 'CC', '21378749', 'GASPAR', 'LADINO', 'ROSA', 'MARIA', 'SAN LORENZO TRUJILLO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 396),
(287, 1, '0000-00-00', 'CC', '15918505', 'BA?OL', 'SUAREZ', 'JHON ', 'JAIRO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 397),
(288, 1, '0000-00-00', 'CC', '25054158', 'SALAZAR', 'DUQUE', 'LUZ', 'MARY', 'BARRIO PINARES 2DA ETAPA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 399),
(289, 2, '0000-00-00', 'CC', '1059703196', 'CLAVIJO', 'LADINO', 'DIANA', 'NORELLY', '2', 17123, 17, '3106167199', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 400),
(290, 1, '0000-00-00', 'CC', '4417637', 'MORALES', 'ALZATE', 'JOSE', 'ALBERTO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 405),
(291, 1, '0000-00-00', 'CC', '15924530', 'PESCADOR', 'MORALES', 'JOSE', 'ELICERIO', 'LA ZULIA', 17123, 17, '3156117978', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 406),
(292, 1, '0000-00-00', 'CC', '25059431', 'CRUZ', 'DIAZ', 'OLGA', 'LUCIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 407),
(293, 1, '0000-00-00', 'CC', '24934396', 'GARCIA', 'QUINTERO', 'AIDE', '', 'CALLE 17 # 5A 39 LA MARIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 408),
(294, 1, '0000-00-00', 'CC', '4543733', 'DIAZ', '', 'SABARAIN', '', 'LA UNION', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 409),
(295, 1, '0000-00-00', 'CC', '25059437', 'GOMEZ', 'HOYOS', 'FLOR', 'DE MARIA', 'HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 414),
(296, 1, '2001-01-01', 'CC', '4547142', '', 'GUEVARA', 'MIGUEL', 'ANGEL', 'EL MESTIZO', 17123, 17, '3196646826', '1990-09-23', '0000-00-00', b'1', b'1', 'AF', 415),
(297, 1, '0000-00-00', 'CC', '25053768', 'ARICAPA', 'CALVO', 'GUILLERMINA', '', 'PLANADAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 420),
(298, 1, '0000-00-00', 'CC', '15916683', 'PESCADOR', '', 'GILDARDO', 'DE JESUS', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 421),
(299, 1, '0000-00-00', 'CC', '15916254', 'LADINO', 'HERNANDEZ', 'LIBARDO', 'ANTONIO', 'BARRIO EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 422),
(300, 9, '0000-00-00', 'CC', '438558', 'PINZON', 'GARCIA', 'ALFONSO', '', 'BATERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 423),
(301, 1, '0000-00-00', 'CC', '25049070', 'CALVO', 'DE CA?AS', 'MARIA', 'ROSMIRA', 'PLANADAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 424),
(302, 1, '0000-00-00', 'CC', '25056628', 'LARGO', 'GUERRERO', 'ARACELLY', '', 'EL PALAL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 426),
(303, 1, '0000-00-00', 'CC', '4541840', 'MORALES', 'SANCHEZ', 'JOSE', 'MARIA', 'BARRANQUILLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 427),
(304, 1, '0000-00-00', 'CC', '25049900', 'GUTIERREZ', '', 'MARIA', 'RUTH', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 433),
(305, 1, '0000-00-00', 'CC', '4544836', 'HOYOS', 'ARCILA', 'RUBIEL', 'ALBERTO', 'SAN CLEMENTE', 17123, 17, '3147064799', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 434),
(306, 1, '0000-00-00', 'CC', '', 'MARIN', '', 'MELBA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 436),
(307, 1, '0000-00-00', 'CC', '30411037', 'BA?OL', 'GARZON', 'LUZ', 'FANNY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 437),
(308, 1, '0000-00-00', 'CC', '25066141', 'NARANJO', '', 'MARIA', 'CONSUELO', 'CARRERA 5 # 3-11', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 440),
(309, 1, '0000-00-00', 'CC', '25052966', 'CALVO', '', 'MARIA', 'CECILIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 441),
(310, 1, '0000-00-00', 'CC', '25069330', 'RESTREPO', 'GARCIA', 'CRUZ', 'MARIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 442),
(311, 1, '0000-00-00', 'CC', '15915872', 'GONZALEZ', '', 'LUIS', 'ANGEL', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 443),
(312, 1, '0000-00-00', 'CC', '25055251', 'GONZALEZ', 'ZAMORA', 'MARIA', 'ESNEDA', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 444),
(313, 2, '0000-00-00', 'CC', '15921545', 'LADINO', 'SUAREZ', 'ALBEIRO', 'ANTONIO', 'JUAN DIAZ', 17123, 17, '3133604425', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 447),
(314, 1, '0000-00-00', 'CC', '15911031', 'LINARES', 'RIOS', 'GILDARDO', '', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 448),
(315, 1, '0000-00-00', 'CC', '42099432', 'TABORDA', 'GONZALEZ', 'GLORIA', 'ELCY', 'LAS PILAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 450),
(316, 5, '0000-00-00', 'CC', '75031228', 'MESA', 'CASTA?EDA', 'JOSE ', 'ALIRIO', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 452),
(317, 2, '0000-00-00', 'CC', '15916293', 'LADINO', '', 'RUBIANO', '', '2', 17123, 17, '3147131947', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 453),
(318, 1, '0000-00-00', 'CC', '25059475', 'MORALES', 'LOPEZ', 'MARIA', 'LILIANA', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 454),
(319, 2, '0000-00-00', 'CC', '9915012', 'PIEDRHITA', '', 'CARLOS ', 'HERNAN ', '2', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 456);
INSERT INTO `contitular` (`NroFicha`, `idZonas`, `FeAfil`, `idTipId`, `NoIden`, `PriApe`, `SegApe`, `PriNom`, `SegNom`, `DirTit`, `idMncio`, `idDEPTOS`, `TelTit`, `FNacTit`, `UlpTit`, `EstFic`, `EstTit`, `TipFic`, `Interno`) VALUES
(320, 1, '0000-00-00', 'CC', '4541648', 'GUEVARA', 'CHAURRA', 'LAUREANO', 'DE JESUS', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 457),
(321, 1, '0000-00-00', 'CC', '25056408', 'ORTIZ', '', 'TERESA', 'DE JESUS', 'SAN NICOLAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 459),
(322, 1, '0000-00-00', 'CC', '24602567', 'LOPEZ', 'ROMERO', 'ANA', 'ROSA', 'BARRIO INGRUMA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 460),
(323, 1, '0000-00-00', 'CC', '25059046', 'RUIZ', 'ORTIZ', 'MARIA', 'EUCARIS', 'EL NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 461),
(324, 1, '0000-00-00', 'CC', '38977263', 'CRUZ', 'MU?OZ', 'AMPARO', 'DE LA CRUZ', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 462),
(325, 1, '0000-00-00', 'CC', '25061441', 'HERNANDEZ', '', 'CARMEN', 'LICIDIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 463),
(326, 1, '0000-00-00', 'CC', '25055861', 'GARCIA', 'HERNANDEZ', 'MARIA', 'BERNARDA', 'TRAVESIAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 465),
(327, 1, '0000-00-00', 'CC', '15911768', 'MORALES', 'MORALES', 'JOSE', 'PABLO', 'PANESSO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 466),
(328, 1, '0000-00-00', 'CC', '42088448', 'PESCADOR', '', 'MARIA', 'EUGENIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 467),
(329, 1, '0000-00-00', 'CC', '25055451', 'GARCIA', 'JIMENEZ', 'MARIA', 'ESPERANZA', 'CANCHA SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 468),
(330, 1, '0000-00-00', 'CC', '15910688', 'LARGO', '', 'GABRIEL', 'ANGEL', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 470),
(331, 1, '0000-00-00', 'CC', '25047435', 'LONDO?O ', 'DE ORTEGA', 'LIBIA', '', 'EL HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 471),
(332, 1, '0000-00-00', 'CC', '25051530', 'BOLIVAR', 'DIAZ', 'LUZ', 'MARINA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 473),
(333, 1, '0000-00-00', 'CC', '25050066', 'MOTATO ', 'MORALES', 'BENILDA', '', 'UBARBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 475),
(334, 1, '0000-00-00', 'CC', '30412988', 'TABARQUINO', 'BA?OL', 'MARIA', 'OLGA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 476),
(335, 1, '0000-00-00', 'CC', '4543750', 'SALAZAR', 'DIAZ', 'JOSE', 'LUIS', 'CARRERA 6 # 12-08 BARRIO 20 DE JULIO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 478),
(336, 1, '0000-00-00', 'CC', '15912137', 'CLAVIJO', 'REYES', 'VIRGILIO ', 'DE LA CRUZ', 'EL MESTIZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 480),
(337, 1, '0000-00-00', 'CC', '15911453', 'BECERRA', 'LARGO', 'WILLIAM', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 482),
(338, 1, '0000-00-00', 'CC', '25062508', 'VINASCO', 'TREJOS', 'MARIA', 'YANETH', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 483),
(339, 1, '0000-00-00', 'CC', '890801907-1', 'INSTITUCION GUARDIA NAZARENA', '', '', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 487),
(340, 1, '0000-00-00', 'CC', '25059453', 'REYES', 'VELARDE', 'NOHEMY', '', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 488),
(341, 1, '0000-00-00', 'CC', '25054873', 'SUAREZ', '', 'AURENTINA', '', 'LA COMPARCITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 489),
(342, 1, '0000-00-00', 'CC', '15913640', 'PESCADOR', '', 'GILDARDO', 'DE JESUS', 'BARRIO FUNDADORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 499),
(343, 1, '0000-00-00', 'CC', '25049869', 'HERNANDEZ', 'QUEBRADA', 'PUBLIA', 'MARY', 'GUAYAQUIL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 500),
(344, 1, '0000-00-00', 'CC', '2621475', 'MORALES', 'VILLADA', 'MARCO', 'JULIAN', 'SANTA INES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 506),
(345, 1, '0000-00-00', 'CC', '16242710', 'DIAZ', 'HENAO', 'OMAIRO', 'DE JESUS', 'JARDIN', 17123, 17, '3113511125', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 507),
(346, 1, '0000-00-00', 'CC', '25055779', 'IGLESIAS', '', 'CARMENZITA', '', 'CARRERA 11 # 11-36', 17123, 17, '3116252830', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 508),
(347, 1, '0000-00-00', 'CC', '51573663', 'PEREZ', '', 'LIGIA', 'TULIA', 'LA ALDEA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 509),
(348, 1, '0000-00-00', 'CC', '42082864', 'OBANDO', 'S', 'MARIA', 'CRISTINA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 510),
(349, 1, '0000-00-00', 'CC', '75071859', 'GUTIERREZ', '', 'OSCAR', 'HERNAN', 'SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 511),
(350, 1, '0000-00-00', 'CC', '25061577', 'CARTAGENA', 'TREJOS', 'AMPARO', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 512),
(351, 1, '0000-00-00', 'CC', '30411079', 'CARTAGENA', '', 'ROSELIA', '', 'SANTA CRUZ', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 513),
(352, 1, '0000-00-00', 'CC', '15916526', 'GONZALEZ', '', 'CARLOS', 'ARTURO', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 514),
(353, 1, '0000-00-00', 'CC', '15916945', 'TABORDA', 'MONTOYA', 'JAIRO', 'DE JESUS', 'QUIEBRALOMO', 17123, 17, '3014213595', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 515),
(354, 1, '0000-00-00', 'CC', '', 'COLORADO', '', 'MARIA', 'LUISA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 520),
(355, 1, '0000-00-00', 'CC', '25046127', 'LARGO', 'BECERRA', 'MARIA', 'LUCILA', 'COMBIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 523),
(356, 1, '0000-00-00', 'CC', '4542741', 'HERNANDEZ', 'DIAZ', 'HECTOR', 'ANTONIO', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 524),
(357, 5, '0000-00-00', 'CC', '75084247', 'SUAREZ', '', 'YOBANY', 'ANTONIO', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 526),
(358, 1, '0000-00-00', 'CC', '15915396', 'SANCHEZ', 'SERNA', 'FERNANDO', 'ANTONIO', 'BARRIO 1ERO DE MAYO CASA 7B', 17123, 17, '3104279354', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 528),
(359, 1, '2013-12-21', 'CC', '7424251', 'OCHOA', 'RESTREPO', 'RUBEN', 'DARIO', 'CARRERA 3 CON CALLE 9', 17123, 17, '3114141035', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 530),
(360, 1, '0000-00-00', 'CC', '15916731', 'CHIQUITO', 'HERNANDEZ', 'AZAEL', 'DE JESUS', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 531),
(361, 1, '0000-00-00', 'CC', '4545328', 'ORTEGA', 'COLONIA', 'ALBERTO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 533),
(362, 1, '0000-00-00', 'CC', '30414157', 'SUAREZ', 'SANCHEZ', 'DIANA', 'MARITZA', 'ALAMOS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 536),
(363, 1, '0000-00-00', 'CC', '25061387', 'HERNANDEZ', 'HERNANDEZ', 'ALBA', 'NELLY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 538),
(364, 1, '0000-00-00', 'CC', '25051614', 'ARANGO', 'DE PARRA', 'LETICIA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 539),
(365, 1, '0000-00-00', 'CC', '25046987', 'BARTOLO', 'URIBE', 'NORMA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 541),
(366, 1, '0000-00-00', 'CC', '25058458', 'POSSO', 'DUQUE', 'VIRGINA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 542),
(367, 1, '0000-00-00', 'CC', '15911311', 'SALDARRIAGA', 'BOLA?OS', 'DARIO', '', 'LAS MERCEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 544),
(368, 1, '0000-00-00', 'CC', '15368928', 'PINZON', 'GUEVARA', 'OVIDIO', 'DE JESUS', 'JUAN DIAZ BONAFONT', 17123, 17, '3122302046', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 545),
(369, 2, '0000-00-00', 'CC', '1059699154', 'CRUZ', 'TAPASCO', 'AICARDO', '', 'MORETA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 546),
(370, 1, '0000-00-00', 'CC', '4545132', 'VINASCO', 'PALOMINO', 'VIDAL', '', 'PIE DEL LLANO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 550),
(371, 1, '0000-00-00', 'CC', '', 'SUAREZ', 'DE TAPASCO', 'CARMEN', 'TULIA', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 552),
(372, 1, '0000-00-00', 'CC', '25055531', 'LONDO?O ', 'NAVARRO', 'LUZ', 'MARINA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 553),
(373, 2, '0000-00-00', 'CC', '7524791', 'RUBIO', 'DIAZ', 'ARMANDO', '', 'SAN JOSE ', 17123, 17, '3107489753', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 554),
(374, 1, '0000-00-00', 'CC', '30383881', 'GUERRERO', 'GONZALEZ', 'DIANA', 'MARIA', 'PINARES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 555),
(375, 1, '0000-00-00', 'CC', '1007353731', 'GIRALDO', 'LOAIZA', 'HERMAN', 'DE JESUS', 'SALIDA EL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 558),
(376, 4, '0000-00-00', 'CC', '4587705', 'CA?AS', 'VELEZ', 'WILLIAM', 'DE JESUS', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 559),
(377, 1, '0000-00-00', 'CC', '25059573', 'ARIAS', 'ARANGO', 'LUZ', 'MERY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 561),
(378, 1, '0000-00-00', 'CC', '25055430', 'GUAPACHA', '', 'MARIA', 'ROMALDA', 'LA ZULIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 562),
(379, 1, '0000-00-00', 'CC', '25053283', 'RAMIREZ', 'GOMEZ', 'CECILIA', '', 'CALLE 8 # 9-49', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 565),
(380, 1, '0000-00-00', 'CC', '30412702', 'SUAREZ', 'GONZALEZ', 'MERCEDES', 'MILENA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 566),
(381, 1, '0000-00-00', 'CC', '4542165', 'MORALES', 'PESCADOR', 'JESUS', 'ANTONIO', 'EL LIMON', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 569),
(382, 1, '0000-00-00', 'CC', '30384128', 'TABORDA', 'GONZALEZ', 'MARIA', 'LUCELLY', 'LAS PILAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 570),
(383, 1, '0000-00-00', 'CC', '30383179', 'OSORIO', 'SANCHEZ', 'BEATRIZ', '', 'PIE DEL LLANO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 571),
(384, 1, '0000-00-00', 'CC', '4544275', 'SALAZAR', 'GUEVARA', 'JUAN', 'BAUTISTA', 'LOS CHORROS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 572),
(385, 1, '0000-00-00', 'CC', '15910654', 'MORALES', 'MORALES', 'JOSE', 'JORGE', 'PANESSO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 573),
(386, 1, '0000-00-00', 'CC', '4545305', 'GUAPACHA', 'MU?OZ', 'RODIMIRO', '', 'PARABOLICA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 574),
(387, 1, '0000-00-00', 'CC', '25057942', 'CA?AS', '', 'MARTHA', 'CECILIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 575),
(388, 1, '0000-00-00', 'CC', '10268385', 'SALAZAR', 'RIOS', 'CESAR', 'AUGUSTO', 'CARRERA 5 A # 12 36', 17123, 17, '3125975482', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 576),
(389, 1, '0000-00-00', 'CC', '25055971', 'RAMIREZ', 'TREJOS', 'MARIA', 'LUZ', 'BARRIO FUNDADORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 579),
(390, 1, '0000-00-00', 'CC', '15913793', 'ZAMORA', 'HERNANDEZ', 'CARLOS', 'ENRIQUE', 'LA PLATA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 582),
(391, 1, '0000-00-00', 'CC', '25062038', 'TAMAYO', 'POSADA', 'LUZ', 'DARY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 583),
(392, 1, '0000-00-00', 'CC', '15923290', 'GUAPACHA', 'TABORDA', 'OSCAR', '', 'CABARGA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 584),
(393, 1, '0000-00-00', 'CC', '4540918', 'GONZALEZ', '', 'JOSE', 'CANDIDO', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 586),
(394, 1, '0000-00-00', 'CC', '25053280', 'CALVO', '', 'MARTHA', 'INES', 'LAS MERCEDES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 587),
(395, 5, '0000-00-00', 'CC', '25042509', 'GUTIERREZ', 'LOPEZ', 'MARIELA', '', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 588),
(396, 1, '0000-00-00', 'CC', '1375997', 'PESCADOR', '', 'JOSE', 'ADAN', 'LAS AMERICAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 589),
(397, 1, '0000-00-00', 'CC', '25048297', 'DURAN', 'MORALES', 'ANA', 'DELIA', 'LAS ESTANCIAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 590),
(398, 6, '0000-00-00', 'CC', '25060447', 'LADINO', 'OSORIO', 'LUZ', 'DARY', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 591),
(399, 1, '0000-00-00', 'CC', '15914562', 'TREJOS', 'LARGO', 'EXEOMO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 594),
(400, 1, '0000-00-00', 'CC', '25054568', 'VALENCIA', '', 'GERARDINA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 595),
(401, 1, '0000-00-00', 'CC', '15916536', 'NARANJO', 'GUTIERREZ', 'JORGE', 'HERNAN', 'CALLE 11 TERMINAL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 596),
(402, 1, '0000-00-00', 'CC', '15912769', 'VARGAS', 'TABORDA', 'LUIS', 'EDUARDO', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 597),
(403, 1, '0000-00-00', 'CC', '25059712', 'RAMIREZ', '', 'ADRIANA', 'MARIA', 'CRRA 5 # 4-31', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 598),
(404, 1, '0000-00-00', 'CC', '25053112', 'NARANJO', 'DE RAMIREZ', 'MARIA ARILIA', 'DEL SOCORRO', 'LOS AGUACATES', 17123, 17, '3146605071', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 600),
(405, 1, '0000-00-00', 'CC', '15910338', 'HERNANDEZ', '', 'LUIS', 'ANGEL', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 601),
(406, 1, '0000-00-00', 'CC', '25052849', 'HERNANDEZ', 'LARGO', 'CELMIRA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 602),
(407, 5, '0000-00-00', 'CC', '1374010', 'VELASCO', 'VELASCO', 'EVELIO', 'DE JESUS', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 603),
(408, 1, '0000-00-00', 'CC', '4536432', 'RENDON', '', 'JUAN', 'DE JESUS', 'EL CIPRES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 604),
(409, 1, '0000-00-00', 'CC', '25056664', 'GUAPACHA', 'DIAZ', 'MARIA', 'CONSUELO', 'EL BANQUEO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 605),
(410, 1, '0000-00-00', 'CC', '1378571', 'UCHIMA', 'RAMIREZ', 'LUIS', 'ALFREDO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 608),
(411, 1, '0000-00-00', 'CC', '25051421', 'RESTREPO', 'CA?AS', 'CARMEN', 'LIGIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 611),
(412, 1, '0000-00-00', 'CC', '30412716', 'OSPINA', 'RESTREPO', 'CAROLINA', '', 'SIPIRRA', 17123, 17, '3113417756', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 612),
(413, 1, '0000-00-00', 'CC', '4542526', 'GONZALEZ', 'TABORDA', 'CRISTOBAL', '', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 614),
(414, 2, '0000-00-00', 'CC', '25033507', 'JIMENEZ', '', 'MAYOLA', '', '2', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 615),
(415, 1, '0000-00-00', 'CC', '15916818', 'TABORDA', 'ESCALANTE', 'JULIO', 'IVAN', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 617),
(416, 4, '0000-00-00', 'CC', '1381421', 'BUENO', '', 'LUIS', 'EVENCIO', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 620),
(417, 1, '0000-00-00', 'CC', '29127210', 'BARCO', '', 'MARIA', 'ADELAIDA', 'CALLE 12 # 5-56', 17123, 17, '3105186773', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 621),
(418, 1, '0000-00-00', 'CC', '25054285', 'TREJOS', '', 'MARINA', 'DEL CARMEN', 'SIPIRRA', 17123, 17, '3137829173', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 622),
(419, 1, '0000-00-00', 'CC', '25056818', 'MORALES', '', 'AMELIA', '', 'EL LIMON', 17123, 17, '3206820333', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 623),
(420, 1, '0000-00-00', 'CC', '4540889', 'HERNANDEZ', '', 'HECTOR', 'ANIBAL', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 624),
(421, 1, '0000-00-00', 'CC', '30413525', 'ALCALDE', 'LARGO', 'ADRIANA', 'MARIA', 'IBERIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 625),
(422, 1, '0000-00-00', 'CC', '25057834', 'LARGO', '', 'ROSA', 'NIDIA', '', 17123, 17, '3214250146', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 629),
(423, 1, '0000-00-00', 'CC', '15921709', 'GUTIERREZ', 'PARRA', 'JAIRO', 'DE JESUS', 'EL ORO', 17123, 17, '3125596895', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 633),
(424, 1, '0000-00-00', 'CC', '26323329', 'PEREZ', 'JIMENEZ', 'MARIA', 'ELENA', 'PUEBLO VIEJO', 17123, 17, '3154655397', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 634),
(425, 4, '0000-00-00', 'CC', '4548046', 'GA?AN', 'BUENO', 'JOSE', 'EDILBERTO', 'TUMIARA SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 635),
(426, 1, '0000-00-00', 'CC', '', 'GRUPO DE BOMBEROS IRRA', '', '', '', '', 17123, 17, '3600619', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 638),
(427, 1, '0000-00-00', 'CC', '30411511', 'VARGAS', 'LOAIZA', 'MARIA', 'AMANDA', 'SIPIRRA', 17123, 17, '3172587822', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 639),
(428, 2, '0000-00-00', 'CC', '4538566', 'ROMERO', 'TREJOS', 'JAIME', '', 'LA PE?A', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 640),
(429, 1, '0000-00-00', 'CC', '25053403', 'VALENCA', 'DE RAMIREZ', 'LIGIA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 641),
(430, 1, '0000-00-00', 'CC', '4541841', 'MORALES', 'MORALES', 'ANGEL', 'MIRO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 642),
(431, 5, '0000-00-00', 'CC', '24364605', 'JIMENEZ', 'DE RENDON', 'EDILMA', '', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 643),
(432, 1, '0000-00-00', 'CC', '25060899', 'HERNANDEZ', '', 'DORALBA', '', 'PULGARIN', 17123, 17, '3167814372', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 644),
(433, 1, '0000-00-00', 'CC', '25061392', 'OSORIO', 'MARIN', 'AIDA', 'SORALY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 645),
(434, 1, '0000-00-00', 'CC', '4536623', 'GUEVARA', 'MANZO', 'ALIRIO', '', 'BATERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 648),
(435, 1, '0000-00-00', 'CC', '4537221', 'PINZON', 'GARCIA', 'DAVID', 'LEON', 'BATERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 649),
(436, 1, '0000-00-00', 'CC', '25061134', 'CAMPEON', 'ROJAS', 'MARIA', 'MARINA', 'NUEVA GRANADA', 17123, 17, '3132429154', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 651),
(437, 1, '0000-00-00', 'CC', '25064073', 'SUAREZ', '', 'ARACELLY', '', 'FLORENCIA BONAFONT', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 652),
(438, 2, '0000-00-00', 'CC', '10200490', 'ARICAPA', 'UCHIMA', 'ANIBAL', 'ANTONIO', 'JAGUERO 2', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 653),
(439, 1, '0000-00-00', 'CC', '15917504', 'VILLEGAS', 'GONZALEZ', 'HERMAN', 'WILLIAM', 'FUNDADORES ', 17123, 17, '3215099757', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 654),
(440, 1, '0000-00-00', 'CC', '15911801', 'VARGAS', '', 'ANDRES', '', 'SIPIRRA', 17123, 17, '3135275745', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 656),
(441, 1, '0000-00-00', 'CC', '25055530', 'GARCIA', 'RAMIREZ', 'GRISELDA', 'DEL SOCORRO', 'CALLE 7A # 199 LOS AGUACATES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 657),
(442, 1, '0000-00-00', 'CC', '25061353', 'GUERRERO', 'TREJOS', 'LUZ', 'MIRIAM', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 658),
(443, 1, '0000-00-00', 'CC', '25060366', 'TREJOS', 'REYES', 'LUZ', 'AIDA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 659),
(444, 1, '0000-00-00', 'CC', '25052498', 'CA?AS', 'TREJOS', 'MARIA', 'OLGA', 'SIPIRRA', 17123, 17, '3133314233', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 661),
(445, 1, '0000-00-00', 'CC', '25062358', 'UCHIMA', 'ZAPATA', 'LUZ', 'MARIA', 'CARRERA 2 A # 10 14 EL NEVADO', 17123, 17, '3218472455', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 662),
(446, 1, '0000-00-00', 'CC', '42991664', 'FRANCO', 'OCAMPO', 'MARIA', 'LIBIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 663),
(447, 7, '0000-00-00', 'CC', '15910609', 'LARGO', 'UCHIMA', 'EDUARDO', 'ANTONIO', 'LA TRINA SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 664),
(448, 1, '0000-00-00', 'CC', '1375689', 'CAMPEON', 'LARGO', 'MARCO', 'ANTONIO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 668),
(449, 1, '0000-00-00', 'CC', '1376625', 'DIAZ', 'DIAZ', 'JORGE', 'ENRIQUE', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 669),
(450, 1, '0000-00-00', 'CC', '25058269', 'GUAPACHA', 'GONZALEZ', 'MARIA', 'NORELLY', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 670),
(451, 1, '0000-00-00', 'CC', '25056890', 'BOLIVAR', 'TAMAYO', 'MARGARITA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 672),
(452, 1, '0000-00-00', 'CC', '25057936', 'GUTIERREZ', 'OSORIO', 'LUZ', 'MARINA', 'CARRERA 4 ', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 673),
(453, 1, '0000-00-00', 'CC', '25051742', 'CALVO', 'DE GONZALEZ', 'MARIA', 'AURORA', 'LAS MERCEDES', 17123, 17, '3144014845', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 674),
(454, 7, '0000-00-00', 'CC', '15928951', 'GUAPACHA', 'LARGO', 'HECTOR', '', 'LA TRINA SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 676),
(455, 7, '0000-00-00', 'CC', '1377924', 'GUAPACHA', 'MORALES', 'MARCO', 'TULIO', 'LA TRINA SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 677),
(456, 1, '0000-00-00', 'CC', '25054898', 'BA?OL', 'JARAMILLO', 'ANATIVIDAD', '', 'LA ESPERANZA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 678),
(457, 1, '0000-00-00', 'CC', '15918340', 'DIAZ', 'LARGO', 'GONZALO', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 680),
(458, 2, '0000-00-00', 'CC', '1373900', 'LONDO?O', 'GUTIERREZ', 'GERMAN', 'ANTONIO', 'JUAN DIAZ', 17123, 17, '3218541239', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 681),
(459, 1, '0000-00-00', 'CC', '4536209', 'GAVIRIA', 'ROMERO', 'ANDRES', '', 'BELLA VISTA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 682),
(460, 1, '0000-00-00', 'CC', '25054241', 'LARGO', 'LARGO', 'MARIA', 'OLIVA', 'LA PALMA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 684),
(461, 1, '0000-00-00', 'CC', '6152125', 'REYES', '', 'ARNOLDO', '', 'SIPIRRA', 17123, 17, '3117850390', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 686),
(462, 1, '0000-00-00', 'CC', '25054463', 'ALARCON', 'TABORDA', 'MARIA', 'MAGDALENA', 'LA CEIBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 688),
(463, 1, '0000-00-00', 'CC', '15923751', 'PEREZ', 'ALVAREZ', 'MARCO', 'TULIO', 'LA PALMA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 691),
(464, 5, '0000-00-00', 'CC', '33917139', 'TABARQUINO', 'MELCHOR', 'ALBA', 'LUCIA', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 694),
(465, 1, '0000-00-00', 'CC', '4544463', 'HERNANDEZ', 'TREJOS', 'ALBERTO', 'DE JESUS', 'CRUCES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 695),
(466, 1, '0000-00-00', 'CC', '42054181', 'RAMIREZ', 'CARDENAS', 'MARIA', 'SUSANA', 'BUENOS AIRES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 702),
(467, 1, '0000-00-00', 'CC', '25062759', 'MORALES', 'MORALES', 'MARIA', 'NORDIS', 'LA FLORESTA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 704),
(468, 1, '0000-00-00', 'CC', '4547260', 'DIAZ', 'DIAZ', 'MARCO', 'TULIO', 'CARRERA 7 CALLE 12', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 705),
(469, 1, '0000-00-00', 'CC', '25055965', 'ZAPATA', 'DIAZ', 'VIRGELINA', '', 'SANTA CECILIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 706),
(470, 1, '0000-00-00', 'CC', '25060478', 'MOTATO ', 'TABORDA', 'LUZ', 'AMPARO', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 707),
(471, 1, '0000-00-00', 'CC', '1377675', 'ROMERO', '', 'SIMEON', '', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 708),
(472, 1, '0000-00-00', 'CC', '1097720182', 'TAPASCO', 'GA?AN', 'RUBEN', 'DARIO', 'TUMZURA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 712),
(473, 1, '0000-00-00', 'CC', '15912394', 'VARGAS', 'REYES', 'GRACILIANO', '', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 713),
(474, 1, '0000-00-00', 'CC', '15914659', 'GARCIA', 'JIMENEZ', 'CARLOS', 'HERNAN', 'SIPIRRA', 17123, 17, '3113361338', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 715),
(475, 1, '0000-00-00', 'CC', '4578549', 'LARGO', '', 'QUERUBIN', '', 'CARRERA 5 # 5-39', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 716),
(476, 1, '0000-00-00', 'CC', '25061034', 'CALVO', 'HERNANDEZ', 'MARIA', 'OFELIA', 'LAS MERCEDES', 17123, 17, '3136697036', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 717),
(477, 1, '0000-00-00', 'CC', '15924089', 'TAPASCO', 'TAPASCO', 'BERLAIN', '', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 718),
(478, 1, '0000-00-00', 'CC', '1378572', 'GUAPACHA', 'BUENO', 'JUSTINIANO', 'DE JESUS', 'SAUSAGUA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 720),
(479, 1, '0000-00-00', 'CC', '4542193', 'VARGAS', 'TAPASCO', 'OBED', 'ANTONIO', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 723),
(480, 1, '0000-00-00', 'CC', '25103211', 'ALCALDE', '', 'CARMEN', 'ROSA', 'SIPIRRA LA PLAYITA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 724),
(481, 1, '0000-00-00', 'CC', '25054096', 'TAPASCO', 'CA?AS', 'MARIA', 'JESUS', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 725),
(482, 2, '0000-00-00', 'CC', '4370355', 'TREJOS', 'ARICAPA', 'GABRIEL', 'ANTONIO', 'SAUSAGUA', 17123, 17, '3234349151', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 727),
(483, 1, '0000-00-00', 'CC', '25062213', 'TAPASCO', '', 'ALBA', 'LETICIA', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 730),
(484, 1, '0000-00-00', 'CC', '4541701', 'TABORDA', 'BECERRA', '', 'SEBASTIAN', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 731),
(485, 1, '0000-00-00', 'CC', '15917642', 'VALENCIA', 'LASSO', 'WILLIAM', 'DE JESUS', 'LA ESMERALDA', 17123, 17, '3117102738', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 732),
(486, 1, '0000-00-00', 'CC', '15917480', 'HERNANDEZ', '', 'JOSE', 'ARAIN', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 734),
(487, 1, '0000-00-00', 'CC', '25052732', 'RAMIREZ', '', 'MARIA', 'LIBIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 735),
(488, 1, '0000-00-00', 'CC', '4871346', 'RAMIREZ', 'CATA?O', 'ALVARO', 'HUMBERTO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 737),
(489, 1, '0000-00-00', 'CC', '25049927', 'VALENCIA', '', 'MARIA', 'LIBIA', 'LAS AMERICAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 738),
(490, 2, '0000-00-00', 'CC', '30307643', 'RIOS', 'RIOS', 'MARIA', 'FARCONIS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 743),
(491, 1, '0000-00-00', 'CC', '4543877', 'HERNANDEZ', '', 'OMAR', 'ANTONIO', 'SIPIRRA PROTIERRAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 744),
(492, 1, '0000-00-00', 'CC', '25058281', 'MORALES', 'ZAMORA', 'MARIA', 'DEL CONSUELO', 'SALIDA AL ORO', 17123, 17, '3195846659', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 745),
(493, 1, '0000-00-00', 'CC', '24657704', 'HENAO', 'DE ZAPATA', 'ROSALBA', '', 'CALLE 10 # 10-23', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 748),
(494, 1, '0000-00-00', 'CC', '25056227', 'RAMIREZ', 'VINASCO', 'MARIA', 'EUGENIA', 'CARRERA 5 # 4-31', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 750),
(495, 2, '0000-00-00', 'CC', '30325757', 'MARIN', '', 'AMANDA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 751),
(496, 1, '0000-00-00', 'CC', '25058474', 'LARGO', 'DE MORALES', 'CARMEN', 'JULIA', 'BARRIO EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 754),
(497, 1, '0000-00-00', 'CC', '', 'TREJOS', 'TREJOS', 'MARTHA', 'LUCIA', 'EL CIPRES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 757),
(498, 1, '0000-00-00', 'CC', '33935040', 'PESCADOR', 'LARGO', 'LAURA', 'ROSA', 'AV, EL VERGEL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 758),
(499, 1, '0000-00-00', 'CC', '25053129', 'ARICAPA', 'CALVO', 'CARMEN', 'LIA', 'BARRO BLANCO PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 760),
(500, 1, '0000-00-00', 'CC', '25048181', 'SUAREZ', 'REYES', 'JULIA', 'ROSA', 'BARRO BLANCO PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 761),
(501, 1, '0000-00-00', 'CC', '15916194', 'SUAREZ', 'TABORA', 'LUIS', 'ALFREDO', 'CARRERA 10 # 11-36', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 762),
(502, 1, '0000-00-00', 'CC', '30384839', 'HERNANDEZ', 'BOLA?OS', 'SORAIDA', '', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 765),
(503, 1, '0000-00-00', 'CC', '4542647', 'DIAZ', 'CANO', 'CARLOS', 'ALBERTO', 'BARRIO EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 770),
(504, 1, '0000-00-00', 'CC', '15924096', 'PIEDRAHITA', 'PARRA', 'HECTOR', 'ANDRES', 'VEREDA PALERMO', 17123, 17, '3127693624', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 776),
(505, 1, '0000-00-00', 'CC', '4543981', 'MORENO', 'VINASCO', 'MANUEL', 'DE JESUS', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 778),
(506, 1, '0000-00-00', 'CC', '25050171', 'GARCIA', 'RAMIREZ', 'AMELIA', 'DE JESUS', 'CARRERA 4 ', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 780),
(507, 9, '0000-00-00', 'CC', '25039187', 'GUEVARA', 'ABONCE', 'MARIA', 'JISLENA', 'BATERO', 17123, 17, '3162996556', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 787),
(508, 1, '0000-00-00', 'CC', '30383407', 'RODAS', '', 'NORA', 'AIDE', 'CARRERA 4 # 9-58', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 788),
(509, 1, '0000-00-00', 'CC', '25060830', 'GUERRERO', 'RUIZ', 'MARIA', 'DEL SOCORRO', '', 17123, 17, '3127722581', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 789),
(510, 1, '0000-00-00', 'CC', '15911263', 'HERNANDEZ', 'LARGO', 'GILBERTO', 'ANTONIO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 790),
(511, 1, '0000-00-00', 'CC', '1059697672', 'CA?AS', 'JARAMILLO', 'LEIDY', '', 'CRRA 10 # 12-15', 17123, 17, '3206776923', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 791),
(512, 5, '0000-00-00', 'CC', '30260001', 'PANIAGUA', 'DE PELAEZ', 'CECILIA', 'ANA', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 795),
(513, 2, '0000-00-00', 'CC', '15916648', 'LARGO', '', 'ALBEIRO', 'ANTONIO', 'QUIMBAYA', 17123, 17, '3144850708', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 796),
(514, 7, '0000-00-00', 'CC', '15926620', 'RAMIREZ', 'CAICEDO', 'JOSE', 'MANUEL', 'QUINCHIA ENSENILLAL ', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 797),
(515, 1, '0000-00-00', 'CC', '25053756', 'CHAURRA', '', 'MARTHA', 'ELENA', 'AVENIDA 7 DE AGOSTO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 799),
(516, 5, '0000-00-00', 'CC', '25042460', 'HERNANDEZ', 'PINTO', 'FLOR', 'DE MARIA', 'MAPURA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 802),
(517, 1, '0000-00-00', 'CC', '3517192', 'BAENA', 'VINASCO', 'SILVIO', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 803),
(518, 5, '0000-00-00', 'CC', '30260012', 'RAMIREZ', 'CASTA?EDA', 'LUZ', 'MERY', '', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 804),
(519, 1, '0000-00-00', 'CC', '25055865', 'HERNANDEZ', 'DE LARGO', 'MARIA', 'DE LOS ANGELES', 'MIRAFLORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 805),
(520, 2, '0000-00-00', 'CC', '25053928', 'TABARQUINO', 'ALCANDE', 'MARGARITA', '', 'JUAN DIAZ', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 807),
(521, 1, '0000-00-00', 'CC', '25060239', 'CALLE', '', 'ESTRELLA', 'DEL ROSARIO', '', 17123, 17, '3167246916', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 808),
(522, 1, '0000-00-00', 'CC', '26323774', 'VELEZ', 'RUIZ', 'BLANCA', 'IRENE', 'CARRERA 8 # 6-10', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 809),
(523, 1, '0000-00-00', 'CC', '25054555', 'GUAPACHA', 'LARGO', 'INES', '', 'CABARGA', 17123, 17, '3146057174', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 810),
(524, 1, '0000-00-00', 'CC', '25214083', 'MORENO', 'ANDICA', 'MARIA', 'ARNOBIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 811),
(525, 1, '0000-00-00', 'CC', '15914967', 'BA?OL', 'SUAREZ', 'ALVARO', 'DE JESUS', 'EL CARMEN', 17123, 17, '3128362297', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 812),
(526, 1, '0000-00-00', 'CC', '15915638', 'ALVAREZ', 'GONZALEZ', 'ALONSO ', 'DE JESUS', 'LA PLAYA', 17123, 17, '3224235406', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 815),
(527, 1, '0000-00-00', 'CC', '25049355', 'GUAPACHA', 'BETANCUR', 'MARIA', 'DOLORES', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 816),
(528, 1, '0000-00-00', 'CC', '4545255', 'CORREA', 'ROMERO', 'LUIS', 'JAVIER', 'ROTARIO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 817),
(529, 1, '0000-00-00', 'CC', '25052085', 'BA?OL', 'DE CASTRO', 'ROSA', 'AMELIA', 'BARRIO HISPANIA', 17123, 17, '3104250469', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 818),
(530, 1, '0000-00-00', 'CC', '24684970', 'OSORIO', 'OCAMPO', 'MARIA', 'FABIOLA', 'SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 819),
(531, 1, '0000-00-00', 'CC', '25060307', 'RESTREPO', 'GALLEGO', 'MARIA', 'ROSALBA', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 820),
(532, 1, '0000-00-00', 'CC', '25054204', 'CATA?O', 'ROMAN', 'MARIA', 'ELISA', 'TUMBABARRETO- CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 821),
(533, 1, '0000-00-00', 'CC', '25062798', 'RENDON', 'VELEZ', 'OLGA', 'CELINA', 'BARRIO CALDAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 822),
(534, 1, '0000-00-00', 'CC', '1379322', 'CASTA?EDA', '', 'JUAN', 'BAUTISTA', 'PUEBLO VIEJO', 17123, 17, '3158977312', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 824),
(535, 1, '0000-00-00', 'CC', '4542026', 'HERNANDEZ', 'CRUZ', 'NESTOR', '', 'LA PLAYA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 825),
(536, 1, '0000-00-00', 'CC', '42060343', 'UCHIMA', 'CA?AS', 'MARIA', 'ARACELLY', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 829),
(537, 2, '0000-00-00', 'CC', '30293288', 'GASPAR', 'LADINO', 'FANNY', '', '2', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 830),
(538, 1, '0000-00-00', 'CC', '30383155', 'TREJOS', 'GONZALEZ', 'MARTHA', 'CECILIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 831),
(539, 1, '0000-00-00', 'CC', '15921617', 'HERNANDEZ', 'HERNANDEZ', 'UBERNEY', '', 'GETSEMANI', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 832),
(540, 4, '0000-00-00', 'CC', '4593856', 'BETANCUR', '', 'LUIS', 'GONZAGA', 'BUENOS AIRES SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 834),
(541, 1, '0000-00-00', 'CC', '15913112', 'HERNANDEZ', 'VILLANEDA', 'JORGE', 'ALIRIO', 'PORTACHUELO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 837),
(542, 1, '0000-00-00', 'CC', '25053938', 'CALLE', 'NARANJO', 'DEYANIRA', '', 'LA ARBOLEDA', 17123, 17, '3116299957', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 841),
(543, 1, '0000-00-00', 'CC', '4545471', 'MOTATO ', 'TREJOS', 'RUBEN', 'ANTONIO', 'BARRANQUILLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 843),
(544, 5, '0000-00-00', 'CC', '25042518', 'TAPASCO', 'ROMENO', 'MARIA', 'LUCELIA', 'BARRIO SANTANDER ', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 844),
(545, 2, '0000-00-00', 'CC', '25063293', 'BUENO', 'CARO', 'MARIA', 'NIEVES', 'EL CLARETH', 17123, 17, '3138621687', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 845),
(546, 5, '0000-00-00', 'CC', '25064011', 'PESCADOR', 'GASPAR', 'MARIA', 'NICOLASA', 'AGUA SALADA IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 846),
(547, 1, '0000-00-00', 'CC', '25051491', 'CALVO', '', 'MARIA', 'OLIVA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 848),
(548, 1, '0000-00-00', 'CC', '15918799', 'LARGO', 'TREJOS', 'NELSON', '', 'LAS PARTIDAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 850),
(549, 1, '0000-00-00', 'CC', '25212011', 'ARICAPA', 'TAPASCO', 'MARIA', 'RUBIELA', 'ALTO SEVILLA SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 851),
(550, 1, '0000-00-00', 'CC', '9893296', 'HERNANDEZ', 'GARCIA', 'ARMEN', 'ANTONIO', 'PARTIDAS', 17123, 17, '3103646517', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 854),
(551, 1, '0000-00-00', 'CC', '25061514', 'GARCIA', 'LOPEZ', 'ALEXANDRA', '', 'CARRERA 4 # 5-28', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 855),
(552, 1, '0000-00-00', 'CC', '30382690', 'ANDICA', 'MORALES', 'DORA ', 'INES', 'EL JORDAN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 857),
(553, 1, '0000-00-00', 'CC', '15921797', 'GUTIERREZ', 'HERNANDEZ', 'RUBEN', 'FERNANDO', 'LA ROBADA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 858),
(554, 1, '0000-00-00', 'CC', '15911522', 'REYES', 'LARGO', 'GERMAN', 'ANTONIO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 860),
(555, 1, '0000-00-00', 'CC', '15912438', 'MOTATO ', 'MORALES', 'JOSE', 'EVELIO', 'LA ESPERANZA', 17123, 17, '3157558205', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 862),
(556, 1, '0000-00-00', 'CC', '4494022', 'PINZON', 'ROJAS', 'RAFAEL', 'ANGEL', 'BATERO QUINCHIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 868),
(557, 1, '0000-00-00', 'CC', '15916506', 'BA?OL', 'BEDOYA', 'JOSE', 'HERNANDO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 870),
(558, 1, '0000-00-00', 'CC', '15918472', 'DIAZ', '', 'BERNARDINO', '', 'LA IBERIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 874),
(559, 2, '0000-00-00', 'CC', '1380257', 'TREJOS', 'GARCIA', 'RICARDO', '', '2', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 876),
(560, 5, '0000-00-00', 'CC', '15910478', 'CALVO', 'VILLAMIL', 'JOSE', 'GERSAIN', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 879),
(561, 1, '0000-00-00', 'CC', '25060814', 'SANTOS', 'TABORDA', 'ALBA', 'NANCY', 'CARRERA 6 # 5-34', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 880),
(562, 1, '0000-00-00', 'CC', '4544048', 'CANO', 'LARGO', 'ALVARO', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 885),
(563, 1, '0000-00-00', 'CC', '25056862', 'ANDICA', 'MORALES', 'ALBA', 'LUCIA', 'EL JORDAN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 886),
(564, 1, '0000-00-00', 'CC', '15912159', 'REYES', 'MORALES', 'JESUS', 'MARIA', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 887),
(565, 1, '0000-00-00', 'CC', '25062131', 'DIAZ', '', 'MARIA', 'DEL CARMEN', '', 17123, 17, '3113162144', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 888),
(566, 1, '0000-00-00', 'CC', '15915005', 'VILLA', 'ZAPATA', 'MARIO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 889),
(567, 5, '0000-00-00', 'CC', '9892191', 'HERNANDEZ', 'PINTO', 'BERNARDO', '', 'MAPURA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 893),
(568, 1, '0000-00-00', 'CC', '15913794', 'HERNANDEZ', 'GUEVARA', 'JOSE', 'LIBARDO', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 897),
(569, 1, '0000-00-00', 'CC', '1001560439', 'ESPINOSA', 'HERNANDEZ', 'PAULA', 'ANDREA', 'BARRIO LA ALDEA', 17123, 17, '3216447983', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 900),
(570, 1, '0000-00-00', 'CC', '1374515', 'MELCHOR', 'GUAPACHA', 'CARLOS', 'ENRIQUE', '', 17123, 17, '3145030903', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 901),
(571, 1, '0000-00-00', 'CC', '15914179', 'CARDONA', 'RAMIREZ', 'GONZALO', 'ANTONIO', 'EL MESTIZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 904),
(572, 1, '0000-00-00', 'CC', '15960135', 'TAMAYO', 'ABELARDO', 'JOSE', 'ANIBAL', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 906),
(573, 1, '0000-00-00', 'CC', '30384171', 'GUTIERREZ', 'HERNANDEZ', 'LUZ', 'ESTELLA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 907),
(574, 1, '0000-00-00', 'CC', '15918118', 'MORALES', 'HERNANDEZ', 'JOSE', 'JAVIER', 'LA FLORESTA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 910),
(575, 1, '0000-00-00', 'CC', '25057946', 'AGUDELO', '', 'MARIA', 'CONSUELO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 921),
(576, 1, '0000-00-00', 'CC', '25058730', 'BENAVIDES', 'GOMEZ', 'LUZ', 'HELENA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 925),
(577, 1, '0000-00-00', 'CC', '25055651', 'IGLESIAS', 'HERNANDEZ', 'MARIA', 'LILIA', 'EL HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 926),
(578, 1, '0000-00-00', 'CC', '30382797', 'HERNANDEZ', '', 'GLORIA', 'CONSUELO', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 927),
(579, 1, '0000-00-00', 'CC', '25069114', 'GUERRERO', '', 'ANA', 'LISCENIA', 'LA IBERIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 928),
(580, 1, '0000-00-00', 'CC', '4544294', 'LARGO ', 'MARIN', 'MANUEL', 'SEVEDEO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 932),
(581, 1, '0000-00-00', 'CC', '4543249', 'BETANCURTH', 'TREJOS', 'ANTONIO', 'JOSE', 'BATERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 933),
(582, 1, '0000-00-00', 'CC', '25062985', 'TAPASCO', '', 'LUZ', 'MARINA', 'PULGARIN', 17123, 17, '3233416304', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 934),
(583, 1, '0000-00-00', 'CC', '15922125', 'BARTOLO', 'GONZALEZ', 'GERMAN', 'DE JESUS', 'VISTA HERMOSA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 935),
(584, 1, '0000-00-00', 'CC', '25073065', 'ROJAS', 'GUEVARA', 'MARIA', 'DE JESUS', 'JAGUAL SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 938),
(585, 5, '0000-00-00', 'CC', '25042432', 'ARIZA', 'QUIROGA', 'GRACIELA', '', 'PARQUE SANTANDER', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 940),
(586, 1, '0000-00-00', 'CC', '25061624', 'ZAMORA', 'GUEVARA', 'MIRIAM', '', 'TUMBABARRETO', 17123, 17, '3132021160', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 942),
(587, 1, '0000-00-00', 'CC', '25056007', 'GUEVARA', 'GUAPACHA', 'MARIA', 'DE LOS ANGELES', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 943),
(588, 2, '0000-00-00', 'CC', '4546011', 'LARGO', 'GUERRERO', 'REINALDO', 'DE JESUS', 'MORETA', 17123, 17, '3117577908', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 952),
(589, 5, '0000-00-00', 'CC', '15302306', 'MOTATO', '', 'GABIREL', 'ANTONIO', '', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 960),
(590, 1, '0000-00-00', 'CC', '44542641', 'MORALES', 'PESCADOR', 'ALBINO', '', 'LOS CHANCOS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 961),
(591, 1, '0000-00-00', 'CC', '25055411', 'RAMIREZ', 'HERRERA', 'MARIA', 'MARIELA', 'ALTO SEVILLA SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 969),
(592, 1, '0000-00-00', 'CC', '1206716', 'HENAO', 'ARANGO', 'HERNAN', '', 'AVENIDA EL CIPRES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 973),
(593, 1, '0000-00-00', 'CC', '4545070', 'HERNANDEZ', 'HERNANDEZ', 'JOSE', 'CANDIDO', 'PANESO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 976),
(594, 1, '0000-00-00', 'CC', '1374690', 'GUEVARA', 'TREJOS', 'ANGEL', 'MARIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 977),
(595, 1, '0000-00-00', 'CC', '15914311', 'MORALES', 'VELASQUEZ', 'GUSTAVO', '', 'PANESO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 979),
(596, 1, '0000-00-00', 'CC', '4544227', 'CARTAGENA', 'SANCHEZ', 'SIGIFREDO', '', 'SANTA CRUZ SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 985),
(597, 5, '0000-00-00', 'CC', '9142223', 'URANGO', '', 'JOSE', 'WILSON', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 987),
(598, 1, '0000-00-00', 'CC', '4419545', 'CATA?O', 'HERNANDEZ', 'LUIS', 'CARLOS', 'VISTA HERMOSA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 988),
(599, 2, '0000-00-00', 'CC', '75082121', 'GUERRERO', '', 'MARCOS', 'LEONEL', 'JUAN TAPADO', 17123, 17, '3127862890', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 991),
(600, 1, '0000-00-00', 'CC', '4543831', 'PESCADOR', 'TREJOS', 'GUILLERMO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 995),
(601, 2, '0000-00-00', 'CC', '10143607', 'MORALES', 'LADINO', 'JAVIER', 'ANTONIO', 'QUIMBAYA', 17123, 17, '3206152836', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 996),
(602, 1, '0000-00-00', 'CC', '25059437', 'GUAPACHA', 'HERNANDEZ', 'ROSALBA', '', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1000),
(603, 1, '0000-00-00', 'CC', '25061323', 'HERNANDEZ', '', 'GLORIA', 'INES', 'BARRIO HISPANIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1001),
(604, 1, '0000-00-00', 'CC', '30413819', 'SUAREZ', '', 'DORA ', 'LILIA', 'CA?AMOMO', 17123, 17, '3123910274', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1002),
(605, 1, '0000-00-00', 'CC', '15910395', 'PESCADOR', 'PESCADOR', 'GERARDO', '', 'CHANCOS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1004),
(606, 1, '0000-00-00', 'CC', '15921192', 'BUENO', 'TAPASCO', 'LUIS', 'HERNAN', 'BARRIO TERRAPLAN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1005),
(607, 1, '0000-00-00', 'CC', '15912904', 'HOYOS', 'NARANJO', 'OSCAR', 'DE JESUS', 'EL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1007),
(608, 7, '0000-00-00', 'CC', '1376454', 'RAMIREZ', '', 'BERNARDO', '', 'ALTO SEVILLA SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1008),
(609, 1, '0000-00-00', 'CC', '15914628', 'TAPASCO', '', 'GILBERTO', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1016),
(610, 1, '0000-00-00', 'CC', '2662428', 'DIAZ', 'CATA?O', 'ANTONIO', 'JOSE', 'CARRERA 4 # 8-17', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1017),
(611, 1, '0000-00-00', 'CC', '25056096', 'GUAPACHA', 'GONZALEZ', 'CARMEN', 'LILIA', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1018),
(612, 4, '0000-00-00', 'CC', '25062750', 'BA?OL', 'TAPASCO', 'TERESA', 'DE JESUS', 'SAN LORENZO LLANO GRANDE', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1023),
(613, 2, '0000-00-00', 'CC', '30382854', 'LADINO', 'CALVO', 'GLORIA', 'PATRICIA', '', 17123, 17, '3116317666', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1025),
(614, 1, '0000-00-00', 'CC', '25059859', 'PAEZ', 'HERNANDEZ', 'IDALY', 'DE JESUS', 'CARRERA 3 # 9-12', 17123, 17, '3108533508', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1028),
(615, 5, '0000-00-00', 'CC', '30330757', 'SERNA', '', 'DIOCELINA', '', 'TAPIAS IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1029),
(616, 1, '0000-00-00', 'CC', '25057625', 'LARGO', 'DURAN', 'MARIA', 'DEL ROSARIO', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1032),
(617, 1, '0000-00-00', 'CC', '10095294', 'CALVO', 'GUEVARA', 'NELSON', 'DE JESUS', 'TUMBABARRETO', 17123, 17, '3113259165', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1041),
(618, 1, '0000-00-00', 'CC', '1059697370', 'VARGAS', 'LARUNA', 'EDWIN', 'YOBANY', 'LOS AGUACATES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1042),
(619, 1, '0000-00-00', 'CC', '4541562', 'SUAREZ', 'REYES', 'GABRIEL', 'ANTONIO', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1048),
(620, 1, '0000-00-00', 'CC', '4536122', 'MELCHOR', 'DIAZ', 'JUSTINIANO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1057),
(621, 1, '0000-00-00', 'CC', '15912553', 'HERNANDEZ', 'GUERRERO', 'JORGE', 'LINO', 'PANESO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1059),
(622, 1, '0000-00-00', 'CC', '17060844', 'GALLEGO', 'HOYOS', 'RODRIGO', 'ALBERTO', 'CALLE 9 # 4-37', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1063),
(623, 1, '0000-00-00', 'CC', '15913010', 'LARGO', '', 'LUIS', 'ANIBAL', 'CHANCOS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1066),
(624, 4, '0000-00-00', 'CC', '1380952', 'BUENO', '', 'JOSE', 'SIMEON', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1067),
(625, 1, '0000-00-00', 'CC', '25055357', 'BETANCUR', 'BETANCUR', 'TERESA', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1068),
(626, 2, '0000-00-00', 'CC', '15917620', 'ARICAPA', 'BA?OL', 'MARCO', 'ANTONIO', 'MORETA', 17123, 17, '3146263833', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1070),
(627, 1, '0000-00-00', 'CC', '25060021', 'CARDONA', 'TREJOS', 'DORA ', 'INES', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1079),
(628, 1, '0000-00-00', 'CC', '2602554', 'ALARCON', 'JARAMILLO', 'MESIAS', 'DE JESUS', 'CARRERA 11 # 8-22', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1088),
(629, 1, '0000-00-00', 'CC', '25052115', 'BA?OL', 'DE MORALES', 'MARIA', 'CLEMENTINA', 'SAMARIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1089),
(630, 1, '0000-00-00', 'CC', '15915512', 'SANCHEZ', 'ZAMORA', 'LIBARDO', 'ANTONIO', 'LAS ESTANCIAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1090),
(631, 1, '0000-00-00', 'CC', '15911567', 'CA?AS', 'OCAMPO', 'JOSE', 'MARIO', 'LA PLAZUELA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1092);
INSERT INTO `contitular` (`NroFicha`, `idZonas`, `FeAfil`, `idTipId`, `NoIden`, `PriApe`, `SegApe`, `PriNom`, `SegNom`, `DirTit`, `idMncio`, `idDEPTOS`, `TelTit`, `FNacTit`, `UlpTit`, `EstFic`, `EstTit`, `TipFic`, `Interno`) VALUES
(632, 1, '0000-00-00', 'CC', '25056444', 'SALAZAR', 'GUTIERREZ', 'ESPERANZA', '', 'PEATONAL', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1096),
(633, 1, '0000-00-00', 'CC', '15919490', 'ALVAREZ', 'ROJAS', 'GUSTAVO', 'DE JESUS', 'BARRIO CALDAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1098),
(634, 1, '0000-00-00', 'CC', '15922065', 'HERNANDEZ', 'HERNANDEZ', 'ARNULFO', 'ARCADIO', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1100),
(635, 2, '0000-00-00', 'CC', '4545612', 'CANO', 'MONTA?O', 'ALFREDO', 'ANTONIO', 'SAN ANTONIO', 17123, 17, '3126881579', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1103),
(636, 2, '0000-00-00', 'CC', '15913329', 'GASPAR', 'GARCIA', 'WILLIAM', '', 'PIRSA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1107),
(637, 1, '0000-00-00', 'CC', '25054765', 'BUENO', 'LADINO', 'CRUZ', 'ORALIA', 'NUEVA GRANADA', 17123, 17, '3223105300', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1108),
(638, 1, '0000-00-00', 'CC', '25059755', 'HERNANDEZ', '', 'CRUZ', 'ELENA', 'INGRUMA', 17123, 17, '3234787050', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1109),
(639, 1, '0000-00-00', 'CC', '15917686', 'ZULUAGA', 'GARCIA', 'EDUARDO', 'DE JESUS', 'LA PALMA DEL ORO', 17123, 17, '3104646717', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1110),
(640, 1, '0000-00-00', 'CC', '4543775', 'GARCIA', 'ALARCON', 'BLAS', 'EMILIO', 'UBARBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1111),
(641, 5, '0000-00-00', 'CC', '24826772', 'FRANCO', 'CASTA?O', 'MARIA', 'MELBA', 'BARRIO SANTANDER ', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1112),
(642, 1, '0000-00-00', 'CC', '4341932', 'JARAMILLO', 'MAYA', 'RODRIGO', 'ANGEL', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1114),
(643, 1, '0000-00-00', 'CC', '25058573', 'BECERRA', 'HERNANDEZ', 'MARIA', 'MAGDALENA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1117),
(644, 6, '0000-00-00', 'CC', '15921347', 'BA?OL', 'DURAN', 'MANUEL', 'RUFINO', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1118),
(645, 6, '0000-00-00', 'CC', '25061425', 'VINASCO', 'GARCIA', 'LUZ', 'MARINA', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1123),
(646, 6, '0000-00-00', 'CC', '25060706', 'VINASCO', 'GARCIA', 'ADRIANA', '', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1124),
(647, 2, '0000-00-00', 'CC', '1059701605', 'RIOS', 'SUAREZ', 'JOSE', 'DANIEL', 'LAS TRUJES', 17123, 17, '3224486355', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1131),
(648, 6, '0000-00-00', 'CC', '25055710', 'TABA ', 'PESCADOR', 'MARIA', 'ISAURA', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1132),
(649, 6, '0000-00-00', 'CC', '25058846', 'TABORDA', '', 'LUZ', 'PIEDAD', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1133),
(650, 1, '0000-00-00', 'CC', '25062289', 'GUAPACHA', 'BA?OL', 'MARIA', 'CECILIA', 'NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1134),
(651, 6, '0000-00-00', 'CC', '', 'MARTINEZ', 'MORALES', 'JHON', 'JAIRO', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1138),
(652, 1, '0000-00-00', 'CC', '15924004', 'VANEGAS', '', 'JORGE', 'JULIO', 'NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1139),
(653, 6, '0000-00-00', 'CC', '25054509', 'MORALES', '', 'MARLENY', '', '', 66173, 66, '3103928208', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1142),
(654, 6, '0000-00-00', 'CC', '30384625', 'BA?OL', 'MORALES', 'LUZ', 'MARLENY', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1143),
(655, 6, '0000-00-00', 'CC', '', 'CANO', 'VELEZ', 'RUBIELA', '', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1145),
(656, 6, '0000-00-00', 'CC', '4545487', 'TABA', 'PESCADOR', 'JORGE', 'ANTONIO', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1146),
(657, 6, '0000-00-00', 'CC', '', 'CASTRO', '', 'LUIS', 'ALFONSO', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1147),
(658, 1, '0000-00-00', 'CC', '4541616', 'CALVO', 'MONROY', 'VICTOR', '', 'MEDINA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1152),
(659, 7, '0000-00-00', 'CC', '15926851', 'RODRIGUEZ', '', 'ADAN', 'DE JESUS', 'ARCON CERRO FACON SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1153),
(660, 6, '0000-00-00', 'CC', '30383599', 'CORREA', 'BECERRA', 'CLAUDIA', 'PATRICIA', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1154),
(661, 6, '0000-00-00', 'CC', '25055372', 'VINASCO', 'GARCIA', 'BEATRIZ', 'ELENA', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1156),
(662, 1, '0000-00-00', 'CC', '25055661', 'SOTO', '', 'MELIDA', 'DEL CARMEN', 'CALLE 10 # 2-17', 17123, 17, '3233874986', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1157),
(663, 6, '0000-00-00', 'CC', '25054750', 'ALARCON', 'ZAMORA', 'DORALBA', '', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1159),
(664, 6, '0000-00-00', 'CC', '25056927', 'MORALES', 'LARGO', 'MARIA', 'LUCIA', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1162),
(665, 1, '0000-00-00', 'CC', '30411386', 'FLORES', '', 'YORMEN', 'LILIANA', 'CARRERA 11 N 12-04', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1166),
(666, 6, '0000-00-00', 'CC', '15912864', 'BA?OL', 'GARZON', 'ALBEIRO', 'DE JESUS', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1168),
(667, 6, '0000-00-00', 'CC', '', 'MARTINEZ', 'MORALES', 'YOLANDA', '', '', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1170),
(668, 6, '0000-00-00', 'CC', '25055917', 'BA?OL', 'DE BLANDON', 'MARIA', 'ISABEL', 'EL NEVADO', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1171),
(669, 5, '0000-00-00', 'CC', '24828217', 'GARCIA ', 'CRUZ', 'SANDRA', 'MILENA', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1173),
(670, 7, '0000-00-00', 'CC', '15916541', 'HERNANDEZ', '', 'PASCUAL', '', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1174),
(671, 1, '0000-00-00', 'CC', '25056790', 'ZAHARA', 'MESA', 'ZULMA', 'VICTORIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1177),
(672, 1, '0000-00-00', 'CC', '25058630', 'TREJOS', 'DE RAMIREZ', 'GRACIELA', '', 'ROTARIO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1181),
(673, 1, '0000-00-00', 'CC', '25058974', 'CASTA?EDA', 'BETANCUR', 'GLORIA', 'PATRICIA', 'CALLE 11 # 6-23', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1184),
(674, 2, '0000-00-00', 'CC', '42984773', 'BETANCUR', 'GUERRERO', 'FLOR', 'MARIA', 'EL CLARETH', 17123, 17, '3104012340', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1190),
(675, 1, '0000-00-00', 'CC', '15912439', 'LARGO', '', 'JOSE ', 'DELIO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1191),
(676, 4, '0000-00-00', 'CC', '1381273', 'GA?AN', '', 'JOSE', 'NOEL', 'BUENOS AIRES SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1192),
(677, 2, '0000-00-00', 'CC', '4545704', 'TABARQUINO', 'BA?OL', 'SALOMON', 'ANTONIO', 'EL CLARETH', 17123, 17, '3106146118', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1195),
(678, 1, '0000-00-00', 'CC', '25059889', 'LARGO ', 'GONZALEZ', 'LUZ', 'DARY', 'SIPIRRA', 17123, 17, '3147806873', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1199),
(679, 7, '0000-00-00', 'CC', '1376996', 'GUERRERO', '', 'JORGE', 'ENRIQUE', 'SAN PABLO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1200),
(680, 4, '0000-00-00', 'CC', '30412148', 'GUAPACHA', 'MOTATO', 'MARIA', 'IDALY', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1203),
(681, 1, '0000-00-00', 'CC', '30411534', 'LARGO', 'VARGAS', 'OMAIRA', 'YANETH', 'BARRIO EL CARMEN', 17123, 17, '3135565150', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1206),
(682, 2, '0000-00-00', 'CC', '4545525', 'PESCADOR', 'TABARQUINO', 'DESIDERIO', '', '', 17123, 17, '3116463342', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1207),
(683, 2, '0000-00-00', 'CC', '4538623', 'GARCIA ', '', 'ARCANGEL', 'ANTONIO', '', 17123, 17, '3128254729', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1208),
(684, 1, '0000-00-00', 'CC', '41485933', 'PELAEZ', '', 'MARIA', 'DONATILA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1213),
(685, 2, '0000-00-00', 'CC', '24804784', 'TREJOS', 'BA?OL', 'MARIA', 'EUNICE', 'BARRIO GUAYABO', 17123, 17, '3107143781', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1215),
(686, 5, '0000-00-00', 'CC', '30412116', 'LARGO', 'BARTOLO', 'FRANCINETH', '', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1223),
(687, 1, '0000-00-00', 'CC', '15916600', 'SANCHEZ', 'SANCHEZ', 'FABIO', 'ALBERTO', 'BARRANQUILLA', 17123, 17, '3172828753', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1225),
(688, 1, '0000-00-00', 'CC', '4547441', 'DIAZ', '', 'PEDRO', 'LUIS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1230),
(689, 1, '0000-00-00', 'CC', '1059700015', 'RAMIREZ', 'ALVAREZ', 'JESSICA', 'LORENA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1235),
(690, 9, '0000-00-00', 'CC', '25037933', 'UTIMA', 'VELASQUEZ', 'MAGNOLIA', '', ' BATERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1238),
(691, 1, '0000-00-00', 'CC', '15920641', 'DELGADO', 'DIAZ', 'OLMEDO', 'DE JESUS', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1240),
(692, 1, '0000-00-00', 'CC', '15917388', 'RENDON', 'VELEZ', 'MARIO', 'ANTONIO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1244),
(693, 2, '0000-00-00', 'CC', '4542946', 'FRANCO', 'GUEVARA', 'PEDRO', 'EMILIO', 'RISARALDITA', 17123, 17, '3216642297', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1246),
(694, 5, '0000-00-00', 'CC', '1374054', 'MORALES', '', 'ISLEN', 'ANTONIO', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1247),
(695, 5, '0000-00-00', 'CC', '9891827', 'IBARRA', 'TREJOS', 'MIGUEL', 'ANGEL', 'GARREBA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1250),
(696, 1, '0000-00-00', 'CC', '18600871', 'IDARRAGA', 'GUTIERREZ', 'GERSON', '', 'LA PALMA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1251),
(697, 2, '0000-00-00', 'CC', '30411990', 'CALVO', '', 'MARIA', 'VIRGELINA', '', 17123, 17, '3177323732', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1262),
(698, 1, '0000-00-00', 'CC', '25053131', 'GUTIERREZ', '', 'MARIA', 'DEL CARMEN', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1263),
(699, 4, '0000-00-00', 'CC', '1374516', 'MOTATO', 'BA?OL', 'CIRILO', '', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1264),
(700, 1, '0000-00-00', 'CC', '14436219', 'NORE?A', 'RAMIREZ', 'ANTONIO', '', 'CALLE 9 # 11 A 10 JOSE MARIA CORDOBA', 17123, 17, '3206915222', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1268),
(701, 4, '0000-00-00', 'CC', '1381285', 'DAVILA', 'ANDICA', 'JOSE', 'ARQUIMEDES', 'PASMI', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1270),
(702, 1, '0000-00-00', 'CC', '29154808', 'BETANCUR', 'BERMUDEZ', 'LUZ', 'DARY', 'SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1273),
(703, 1, '0000-00-00', 'CC', '15916669', 'TREJOS', 'ARCILA', 'JOSE', 'EDISMET', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1274),
(704, 1, '0000-00-00', 'CC', '25061099', 'HERNANDEZ', 'CALVO', 'ANA', 'LUCIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1277),
(705, 1, '0000-00-00', 'CC', '25059001', 'TABORDA', 'SANCHEZ', 'LUZ', 'MARINA', 'CARAMANTA', 17123, 17, '3218601948', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1278),
(706, 1, '0000-00-00', 'CC', '25062201', 'HERNANDEZ', 'MORALES', 'MARIA', 'EUFANY', 'ALTO IMURRA LA PLAYA', 17123, 17, '3008369913', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1285),
(707, 1, '0000-00-00', 'CC', '15914633', 'BOTERO', 'YEPES', 'LEONEL ', 'DE JESUS', 'BELLA VISTA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1287),
(708, 1, '0000-00-00', 'CC', '4544730', 'HERNANDEZ', 'TAPASCO', 'OTTO', 'JULIO', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1288),
(709, 1, '0000-00-00', 'CC', '4548027', 'BUENO', 'TAPASCO', 'SECUNDINO', '', 'PASMI', 17123, 17, '3163465704', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1289),
(710, 1, '0000-00-00', 'CC', '15923415', 'GUEVARA', 'TREJOS', 'LUIS', 'FERNEY', 'PALERMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1290),
(711, 5, '0000-00-00', 'CC', '1058818210', 'LOAIZA', 'SUAREZ', 'DAVID', '', 'CUBA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1291),
(712, 4, '0000-00-00', 'CC', '25072084', 'TAPASCO', 'DE TAPASCO', 'NATALIA', '', 'TUMSARA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1293),
(713, 1, '0000-00-00', 'CC', '25030669', 'BEDOYA', 'GUEVARA', 'EMMA', '', 'BATERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1295),
(714, 7, '0000-00-00', 'CC', '15911174', 'RIVERA', 'ROJAS', 'ARCESIO', '', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1296),
(715, 2, '0000-00-00', 'CC', '25061800', 'LADINO ', 'GONZALES', 'LUZ ', 'MARY', 'QUIMBAYA', 17123, 17, '311632263', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1299),
(716, 1, '0000-00-00', 'CC', '1379026', 'DIAZ', '', 'RAFAEL', 'ANTONIO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1304),
(717, 1, '0000-00-00', 'CC', '4545075', 'CHAURRA', 'CATA?O', 'JOSE', 'MANUEL', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1306),
(718, 1, '0000-00-00', 'CC', '', 'OSSA', 'LOPEZ', 'JUAN', 'BAUTISTA', 'CALLE 9 # 11-44', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1307),
(719, 2, '0000-00-00', 'CC', '20383068', 'CALVO', 'VINASCO', 'LUZ', 'LILIANA', 'BUENOS AIRES 2', 17123, 17, '3207192467', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1308),
(720, 5, '0000-00-00', 'CC', '17625963', 'TABARES', 'ARRODONDO', 'ORLANDO', '', '', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1311),
(721, 1, '0000-00-00', 'CC', '16210785', 'SANCHEZ', 'COLORADO', 'ANTONIO', 'MARIA', 'LA CEIBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1320),
(722, 1, '0000-00-00', 'CC', '4542544', 'BETANCUR', 'GUAPACHA', 'JOSE', 'ABSALON', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1323),
(723, 1, '0000-00-00', 'CC', '30413246', 'RUIZ', 'LARGO', 'DORIS', 'SILVANA', 'LA PLAZUELA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1324),
(724, 1, '0000-00-00', 'CC', '25059150', 'MARIN', 'CRUZ', 'GLORIA', 'AMPARO', 'CARRERA 5', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1325),
(725, 1, '0000-00-00', 'CC', '25052544', 'JARAMILLO', '', 'MARIA', 'EDILMA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1328),
(726, 2, '0000-00-00', 'CC', '25063876', 'SUAREZ', 'VARGAS', 'MARIA', 'LIBIA', 'FLORENCIA', 17123, 17, '3108437107', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1329),
(727, 1, '0000-00-00', 'CC', '4541212', 'DELGADO', 'MORALES', 'JOSE', 'ARNOLDO', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1330),
(728, 1, '0000-00-00', 'CC', '4542473', 'DIAZ', 'GUAPACHA', 'GABRIEL', 'ANTONIO', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1341),
(729, 1, '0000-00-00', 'CC', '15910617', 'HERNANDEZ', 'HERNANDEZ', 'LUIS', 'ANIBAL', 'TRES CRUCES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1342),
(730, 4, '0000-00-00', 'CC', '25057212', 'TABORDA', 'BA?OL', 'LUZ', 'MILA', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1348),
(731, 1, '0000-00-00', 'CC', '29377265', 'BARRERA', 'SILVA', 'MARIA', 'SOLEDAD', 'GRANADA', 17123, 17, '3117762273', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1352),
(732, 1, '0000-00-00', 'CC', '4546743', 'ACEVEDO', 'MAFLA', 'JHON', 'FREDY', 'BARRIO PRIMERO DE MAYO', 17123, 17, '3163928973', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1358),
(733, 5, '0000-00-00', 'CC', '30289860', 'ARIAS', 'RIOS', 'RUBY', 'INES', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1359),
(734, 1, '0000-00-00', 'CC', '4548305', 'GONZALEZ', 'TAPASCO', 'GABRIEL', 'HUGO', 'BARRIO FUNDADORES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1361),
(735, 1, '0000-00-00', 'CC', '25073138', 'HERNANDEZ', 'PESCADOR', 'MARIA', 'JESUS', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1362),
(736, 1, '0000-00-00', 'CC', '25060439', 'CALVO', 'HERNANDEZ', 'MIRIAM', 'DEL SOCORRO', 'TUMBABARRETO', 17123, 17, '3146022384', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1363),
(737, 2, '0000-00-00', 'CC', '1380067', 'VALENCIA', 'RIOS', 'HERNANDO', '', 'LAS CRUCES', 17123, 17, '3233089014', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1364),
(738, 5, '0000-00-00', 'CC', '15926112', 'GIRALDO', '', 'JOSE', 'ARMANDO', 'JAGUERO BONAFONT', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1372),
(739, 2, '0000-00-00', 'CC', '30414111', 'LADINO', 'LOAIZA', 'BERTA', 'ALICIA', 'SAN ANTONIO', 17123, 17, '3117147748', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1378),
(740, 1, '0000-00-00', 'CC', '25059273', 'CALVO', '', 'MARIA', 'MARGARITA', 'ARBOLEDA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1384),
(741, 1, '0000-00-00', 'CC', '36542627', 'CALLE', 'NARANJO', 'MARIANA', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1385),
(742, 1, '0000-00-00', 'CC', '15922610', 'LARGO', 'BLANDON', 'JOSE', 'HERNAN', 'CARRERA 8 CALLE 12 ESQUINA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1389),
(743, 1, '0000-00-00', 'CC', '30414258', 'SALAZAR', 'HERNANDEZ', 'MARITZA', '', 'QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1399),
(744, 4, '0000-00-00', 'CC', '25073262', 'DAVILA', '', 'MARIA', 'ELENA', 'SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1400),
(745, 1, '0000-00-00', 'CC', '25062686', 'TABORDA', '', 'MARIA', 'LUCERO', 'EL CARMEN', 17123, 17, '3146750296', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1406),
(746, 1, '0000-00-00', 'CC', '30412359', 'MORALES', 'MORALES', 'ANA', 'ELVI', 'LA FLORESTA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1407),
(747, 5, '0000-00-00', 'CC', '9892840', 'MOTATO', 'MANZO', 'OMAR', 'ANTONIO', 'COROSAL', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1408),
(748, 1, '0000-00-00', 'CC', '25060765', 'TAPASCO', '', 'MARIA', 'SOLEDAD', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1411),
(749, 1, '0000-00-00', 'CC', '4543533', 'REYES', 'VERGARA', 'JORGE', 'EVELIO', 'EL NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1412),
(750, 2, '0000-00-00', 'CC', '24518015', 'GRANADAS', 'RODRIGUEZ', 'MARIA', 'CELINA', 'SAUSAGUA', 17123, 17, '3116114144', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1413),
(751, 2, '0000-00-00', 'CC', '4381006', 'FRANCO', '', 'CARLOS ', 'ARTURO', 'SUSAGUA', 17123, 17, '3225927724', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1414),
(752, 2, '0000-00-00', 'CC', '15921083', 'HINCAPIE', 'LARGO', 'ESNORALDO', '', 'SAN ANTONIO', 17123, 17, '3207193130', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1417),
(753, 1, '0000-00-00', 'CC', '25057519', 'GUAPACHA', 'MORALES', 'MARIA', 'PRIMAVERA', 'SALIDA AL ORO', 17123, 17, '3128243675', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1420),
(754, 1, '0000-00-00', 'CC', '4542421', 'CALVO', '', 'JOSE', 'ANIBAL', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1425),
(755, 1, '0000-00-00', 'CC', '25052591', 'DIAZ', 'GUAPACHA', 'MARIA', 'MERCEDES', 'PUEBLO VIEJO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1428),
(756, 1, '0000-00-00', 'CC', '25060274', 'HENAO', 'CRUZ', 'MARIA', 'ELISA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1429),
(757, 5, '0000-00-00', 'CC', '25057408', 'TREJOS', 'LARGO', 'OLIVA', '', 'CUBA IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1431),
(758, 1, '0000-00-00', 'CC', '30383800', 'OSORIO', 'DIAZ', 'LIDA', 'YANETH', 'BARRIO PRIMERO DE MAYO', 17123, 17, '3128980551', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1433),
(759, 1, '0000-00-00', 'CC', '15915794', 'BEDOYA', 'LOAIZA', 'HECTOR', 'JAIME', 'CALLE 8 # 7-28', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1435),
(760, 1, '0000-00-00', 'CC', '1377928', 'CRUZ', 'ROJAS', 'FERNANDO', 'ANTONIO', 'SEVILLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1436),
(761, 1, '0000-00-00', 'CC', '15916429', 'DIAZ', '', 'HENRY', 'ANTONIO', 'PANESSO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1440),
(762, 1, '0000-00-00', 'CC', '25060558', 'ALVAREZ', 'GARCIA', 'LUZ', 'NELLY', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1441),
(763, 1, '0000-00-00', 'CC', '15913403', 'GIL', 'GIRALDO', 'GUILLERMO', 'ABAD', '', 17123, 17, '3105012426', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1442),
(764, 4, '0000-00-00', 'CC', '4548232', 'MOTATO', '', 'JOSE', 'ARISTIDES', 'BUENOS AIRES SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1447),
(765, 1, '0000-00-00', 'CC', '4543563', 'LARGO', 'PESCADOR', 'MIGUEL', 'ANTONIO', 'CARRERA 9 # 10-55', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1448),
(766, 1, '0000-00-00', 'CC', '4537952', 'RAMIREZ', 'ZULUAGA', 'CARLOS ', 'ARTURO', 'LA CEIBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1451),
(767, 1, '0000-00-00', 'CC', '4545309', 'GUAPACHA', 'MORENO', 'JOSE', 'ALEXANDER', 'SAN JUAN QUIEBRALOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1453),
(768, 2, '0000-00-00', 'CC', '25064159', 'MORALES', 'LADINO', 'MARIA', 'NELSY', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1454),
(769, 1, '0000-00-00', 'CC', '30384740', 'LOAIZA', '', 'NORMA', 'ADRIANA', 'EL NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1459),
(770, 2, '0000-00-00', 'CC', '25054653', 'RAMIREZ', 'TREJOS', 'BIGLENIZA', '', 'MORETA', 17123, 17, '3107728042', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1460),
(771, 1, '0000-00-00', 'CC', '15916838', 'BAHENA', 'QUINTERO', 'JORGE', 'IVAN', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1463),
(772, 2, '0000-00-00', 'CC', '1380229', 'GUERRERO', 'CARMONA', 'LUIS', 'HERNANDO', 'MINA RICA', 17123, 17, '3147204837', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1469),
(773, 7, '0000-00-00', 'CC', '15928120', 'RAMIREZ', 'CRUZ', 'SIGIFREDO', '', 'ALTO SEVILLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1471),
(774, 1, '0000-00-00', 'CC', '15911786', 'TAPASCO', 'REYES', 'GABRIEL', 'DE JESUS', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1486),
(775, 1, '0000-00-00', 'CC', '42010975', 'TAPASCO', '', 'AMANDA', 'LUCIA', 'ALTO SEVILLA SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1487),
(776, 1, '0000-00-00', 'CC', '15920070', 'CORREA', 'HERNANDEZ', 'FABIAN', 'DE JESUS', 'LA CEIBA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1488),
(777, 5, '0000-00-00', 'CC', '25214252', 'CLAVIJO', 'ROTAVISTA', 'EMILCEN', '', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1491),
(778, 1, '0000-00-00', 'CC', '15917752', 'LARGO', 'PESCADOR', 'JOSE ', 'ALBINO', 'CHANCOS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1494),
(779, 5, '0000-00-00', 'CC', '25042271', 'LONDO?O', 'LARGO', 'DIOCELINA', '', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1499),
(780, 1, '0000-00-00', 'CC', '4411113', 'RAVE', 'RESTREPO', 'MARIO', 'DE JESUS', 'CARRERA 4', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1501),
(781, 1, '0000-00-00', 'CC', '30412420', 'GUEVARA', 'DIAZ', 'CLAUDIA', 'PATRICIA', 'BARRIO SAN NICOLAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1504),
(782, 1, '0000-00-00', 'CC', '4544367', 'LARGO', 'RAMIREZ', 'EDELBERTO', 'ANTONIO', 'CARRERA 2 CALLE 10 B EL NEVADO', 17123, 17, '3122074515', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1505),
(783, 1, '0000-00-00', 'CC', '15919035', 'DIAZ', '', 'ROBERT', 'ANTONIO', 'PULGARIN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1506),
(784, 2, '0000-00-00', 'CC', '4545766', 'GUERRERO', '', 'GILDARDO', 'ANTONIO', 'MINA RICA', 17123, 17, '3104704405', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1512),
(785, 1, '0000-00-00', 'CC', '1375657', 'BA?OL', '', 'ADAN', '', 'LA Y SALIDA AL ORO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1523),
(786, 5, '0000-00-00', 'CC', '25036275', 'MOLINA', 'DE LADINO', 'ESTER', 'FABIOLA', 'EL AGUACATE', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1535),
(787, 5, '0000-00-00', 'CC', '10083827', 'GARCIA ', '', 'ARNULFO', 'DE JESUS', '', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1536),
(788, 1, '0000-00-00', 'CC', '9911177', 'DIAZ', 'LARGO', 'JOSE', 'WILLIAM', '', 17123, 17, '3113484559', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1537),
(789, 1, '0000-00-00', 'CC', '15918531', 'CASTRO', 'UCHIMA', 'HERMAN', 'DE JESUS', 'EL CIPRES', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1544),
(790, 1, '0000-00-00', 'CC', '30411262', 'ESPINOSA', 'LEMUS', 'LINA', 'JAIDIBE', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1546),
(791, 1, '0000-00-00', 'CC', '15920494', 'LONDO?O', 'MARTINEZ', 'HECTOR', 'FABIO', 'CARRERA 2 # 9 A 10', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1550),
(792, 1, '0000-00-00', 'CC', '15910369', 'CARTAGENA', 'SANCHEZ', 'MAGOLA', 'DE LA CRUZ', 'SANTA CRUZ SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1558),
(793, 1, '0000-00-00', 'CC', '15910709', 'RAMIREZ', 'VINASCO', 'OSCAR', 'ALBERTO', 'CARRERA 5', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1566),
(794, 1, '0000-00-00', 'CC', '30412994', 'GUZMAN', 'ALVAREZ', 'DIANA', 'CLEMENCIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1567),
(795, 5, '0000-00-00', 'CC', '25042494', 'TAPASCO', '', 'MARIA', 'RUBIELA', 'LLANADES', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1568),
(796, 1, '0000-00-00', 'CC', '15921889', 'TAPASCO', '', 'CESAR ', 'AUGUSTO', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1572),
(797, 1, '0000-00-00', 'CC', '30414148', 'LARGO', 'BA?OL', 'BEATRIZ', 'ELENA', 'CABARGA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1577),
(798, 5, '0000-00-00', 'CC', '30394406', 'MORENO', 'LONDO?O', 'DORALBA', '', 'CALLE PRINCIPAL IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1579),
(799, 1, '0000-00-00', 'CC', '25213230', 'TAPASCO', 'ARICAPA', 'MARIA', 'GRACIELA', 'PLANADAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1580),
(800, 7, '0000-00-00', 'CC', '25053740', 'TAPASCO', '', 'ANA', 'ILDA', 'ALTO SEVILLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1581),
(801, 1, '0000-00-00', 'CC', '25054001', 'SALDARRIAGA', 'BOLA?OS', 'LIGIA', 'DE JESUS', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1583),
(802, 1, '0000-00-00', 'CC', '25053798', 'TREJOS', '', 'MARIA', 'AMPARO', 'SIPIRRA EL PORVENIR', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1584),
(803, 1, '0000-00-00', 'CC', '24396318', 'LARGO', 'ZAMORA', 'MARIA', 'EDILMA', 'PARTIDAS', 17123, 17, '3156588818', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1586),
(804, 1, '0000-00-00', 'CC', '4545982', 'HINCAPIE', 'FRANCO', 'HERMAN', 'DE JESUS', 'SARDINEROS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1588),
(805, 2, '0000-00-00', 'CC', '15924279', 'TABARQUINO', 'MORALES', 'RUBIEL ', 'ANTONIO', 'JUAN DIAZ', 17123, 17, '3207753615', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1589),
(806, 1, '0000-00-00', 'CC', '25213249', 'MORENO', 'GOMEZ', 'CRUZ', 'EDILMA', 'SAN CAYETANO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1591),
(807, 1, '0000-00-00', 'CC', '25054118', 'MORALES', 'ZAPATA', 'ANA', 'EUNICE', 'CALLE 6 # 3-22', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1596),
(808, 1, '0000-00-00', 'CC', '25052413', 'ORREGO', 'RAMIREZ', 'ANAMAD', '', 'CALLE 10 # 3-07', 17123, 17, '3205935719', '2015-05-07', '0000-00-00', b'1', b'1', 'AF', 1597),
(809, 1, '0000-00-00', 'CC', '30411252', 'SANCHEZ', 'BOLIVAR', 'MARTA', 'LIGIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1598),
(810, 1, '0000-00-00', 'CC', '30412256', 'CRUZ', 'MEJIA', 'VIVIANA', 'MARIA', 'LA PLAYA', 17123, 17, '3145441137', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1613),
(811, 2, '0000-00-00', 'CC', '24764438', 'GUAPACHA', '', 'MARIA', 'ESPERANZA', '2', 17123, 17, '3113525638', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1615),
(812, 5, '0000-00-00', 'CC', '9890290', 'LADINO', '', 'GILDARDO', 'ANTONIO', 'EL CHUSCAL IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1629),
(813, 5, '0000-00-00', 'CC', '3549444', 'BUENO', 'ROMERO', 'JESUS', 'HERNANDO', 'CALLE PRINCIPAL IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1631),
(814, 1, '0000-00-00', 'CC', '4542038', 'REYES', 'TAPASCO', 'RAFAEL', 'ANTONIO', 'LA IBERIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1633),
(815, 5, '0000-00-00', 'CC', '21587114', 'DURAN', 'RESTREPO', 'MARIA', 'ORFILIA', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1640),
(816, 1, '0000-00-00', 'CC', '25055604', 'CHAURRA', 'HERNANDEZ', 'VIRGELINA', '', 'LA IBERIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1642),
(817, 1, '0000-00-00', 'CC', '15918209', 'ROMERO', '', 'ARCANGEL', 'DE JESUS', 'BATERO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1643),
(818, 1, '0000-00-00', 'CC', '15913983', 'DIAZ', 'DURAN', 'DARIO', 'ESTEBAN', 'CARREA 3 # 9-28', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1646),
(819, 1, '0000-00-00', 'CC', '15910758', 'BA?OL', 'MORALES', 'LUIS', 'ALBERTO', 'LA FLORIDA', 17123, 17, '3136827794', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1652),
(820, 1, '0000-00-00', 'CC', '4542204', 'BA?OL', '', 'JUAN', 'LAUREANO', 'LA FLORIDA', 17123, 17, '3134376129', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1653),
(821, 1, '0000-00-00', 'CC', '1379391', 'CALVO', '', 'GABRIEL', 'ANGEL', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1657),
(822, 4, '0000-00-00', 'CC', '15910199', 'MOTATO', '', 'JOSE', 'ADAN', 'BUENOS AIRES SAN LORENZO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1661),
(823, 2, '0000-00-00', 'CC', '4542847', 'TREJOS', '', 'JULIO', 'DE JESUS', '', 17123, 17, '3218147344', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1662),
(824, 2, '0000-00-00', 'CC', '25064116', 'GONZALES', 'LARGO', 'FLOR', 'MARIA', 'EL LUCERO', 17123, 17, '3128260069', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1668),
(825, 1, '0000-00-00', 'CC', '15914158', 'CRUZ', 'TREJOS', 'NOLBERTO', '', 'TRUJILLO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1671),
(826, 1, '0000-00-00', 'CC', '4543711', 'CALVO', 'BETANCUR', 'OCTAVIO', 'DE JESUS', 'SAN NICOLAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1688),
(827, 1, '0000-00-00', 'CC', '25058660', 'TABORDA', 'QUINTERO', 'OLGA', 'LUCIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1694),
(828, 1, '0000-00-00', 'CC', '4545188', 'BA?OL', '', 'LUIS', 'EVELIO', 'EL NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1711),
(829, 1, '0000-00-00', 'CC', '15918778', 'MORALES', '', 'ANSELMO', '', 'CRUCERO TUMBABARRETO', 17123, 17, '8594525 - 3103750567', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1712),
(830, 5, '0000-00-00', 'CC', '25034249', 'ARICAPA', '', 'ARNOBIA', 'DE JESUS', 'IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1713),
(831, 2, '0000-00-00', 'CC', '25062518', 'CAMPEON', 'TREJOS', 'MARIA', 'RUBIELA', 'SARDINEROS', 17123, 17, '3154109007', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1714),
(832, 1, '0000-00-00', 'CC', '25058729', 'BA?OL', 'VALENCIA', 'ANA', 'SOFIA', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1720),
(833, 1, '0000-00-00', 'CC', '30383158', 'CRUZ', 'LOAIZA', 'ANGELA', 'YAMIL', 'EL CARMEN', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1722),
(834, 5, '0000-00-00', 'CC', '33915676', 'BECERRA', 'GARCIA', 'FANNY', '', 'LA BOCANA IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1727),
(835, 3, '0000-00-00', 'CC', '4537016', 'TREJOS', 'IBARRA', 'ALFREDO', 'DE JESUS', 'VEREDA LLANADAS', 66173, 66, '3108415443', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1728),
(836, 7, '0000-00-00', 'CC', '', 'DIAZ', 'DE TREJOS', 'MARIA ', 'ROCIO', 'SANTA CRUZ SUPIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1732),
(837, 1, '0000-00-00', 'CC', '15915979', 'DIAZ', 'VELASQUEZ', 'LUIS', 'FELIPE', 'TUMBABARRETO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1750),
(838, 1, '0000-00-00', 'CC', '15912334', 'VINASCO', '', 'RUBEN', 'DE JESUS', '', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1752),
(839, 1, '0000-00-00', 'CC', '41885711', 'TABARES', 'SANCHEZ', 'MARTA', 'LIGIA', 'EL NEVADO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1754),
(840, 1, '0000-00-00', 'CC', '1376604', 'HERNANDEZ', 'TAPASCO', 'OSCAR', 'DE JESUS', 'CA?AMOMO', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1757),
(841, 1, '0000-00-00', 'CC', '42992005', 'LARGO', '', 'OFELIA', '', 'SIPIRRA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1769),
(842, 2, '0000-00-00', 'CC', '10090496', 'BUENO', 'DELGADO', 'ANGEL', 'MIRO', 'EL CLARETH', 17123, 17, '3137444310', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1770),
(843, 1, '0000-00-00', 'CC', '24784160', 'GAVIRIA', '', 'LUZ', 'MERY', 'LA PLAYA', 17123, 17, '3116318898', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1772),
(844, 2, '0000-00-00', 'CC', '15912672', 'CRUZ', '', 'FRANCISCO', 'LUIS', 'FLORENCIA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1774),
(845, 1, '0000-00-00', 'CC', '15916628', 'HENAO', 'QUINTERO', 'LUIS', 'NOLBERTO', 'BARRANQUILLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1778),
(846, 9, '0000-00-00', 'CC', '4538312', 'GUEVARA', 'ABONCE', 'PEDRO', 'EMILIO', 'BATERO', 17123, 17, '3108401359', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1780),
(847, 9, '0000-00-00', 'CC', '1035066', 'MARULANDA', '', 'FABIO', '', 'SAUSAGUA', 17123, 17, '3122016583', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1787),
(848, 1, '0000-00-00', 'CC', '9910045', 'GUAPACHA', 'LARGO', 'NICACIO', '', 'BELLA VISTA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1789),
(849, 1, '0000-00-00', 'CC', '15922418', 'CORREA', 'HERNANDEZ', 'LEONARDO', 'DE JESUS', 'LA ESTRELLA', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1790),
(850, 2, '0000-00-00', 'CC', '4545783', 'MORALES', '', 'JOSE', 'ALEJANDRINO', 'JUAN DIAZ', 17123, 17, '3146219291', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1795),
(851, 1, '0000-00-00', 'CC', '15924989', 'TABORDA', 'REYES', 'ABELARDO', 'DE JESUS', 'SIPIRRA', 17123, 17, '3215056076', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1796),
(852, 1, '0000-00-00', 'CC', '15923151', 'TABORDA', 'ABAD', 'CARLOS ', 'MARIO', 'CARREA 8 #3-66 BARRIOCALDAS', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1797),
(853, 1, '0000-00-00', 'CC', '25052233', 'TREJOS', 'DE GARTNER', 'CARMEN ', 'LUZ', 'CARRERA 8 # 6-24', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1798),
(854, 1, '0000-00-00', 'CC', '4543096', 'GARTNER', 'RESTREPO', 'CRUZ', 'OCIEL', 'CARRERA8 #6-24', 17123, 17, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1799),
(855, 5, '0000-00-00', 'CC', '70410567', 'ABREO', '', 'SERGIOS', 'DE JESUS', 'TAPIAS EL TUNEL', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1809),
(856, 1, '0000-00-00', 'CC', '1376249', 'LOAIZA', 'GIRALDO', 'FERNANDO', 'DE JESUS', 'CARREA 10 #8-55', 17123, 17, '313540521', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 1824),
(857, 5, '0000-00-00', 'CC', '25064040', 'MORENO', '', 'ANA ', 'ERCILIA', 'AGUA SALADA IRRA', 66173, 66, '', '0000-00-00', '0000-00-00', b'1', b'1', 'AF', 2004);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datdef`
--

CREATE TABLE `datdef` (
  `IdFicha` int(11) NOT NULL,
  `DefTiBT` varchar(45) DEFAULT NULL COMMENT 'Tipo Defuncion Titular o Beneficiario',
  `DatDefcon` int(11) DEFAULT NULL COMMENT 'Consecutivo',
  `DatFch` date DEFAULT NULL COMMENT 'Fecha Defunción',
  `idMncio` int(11) NOT NULL COMMENT 'Municipio',
  `iidDEPTOS` int(11) NOT NULL COMMENT 'Departamento\n',
  `DatIgl` varchar(45) DEFAULT NULL COMMENT 'Iglesia',
  `DatSVe` varchar(45) DEFAULT NULL COMMENT 'Dato Sala velaciòn',
  `DatCem` varchar(45) DEFAULT NULL COMMENT 'Cementerio',
  `DatCre` varchar(45) DEFAULT NULL,
  `DatObs` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='		';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deptos`
--

CREATE TABLE `deptos` (
  `idDEPTOS` int(11) NOT NULL,
  `DesDpto` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deptos`
--

INSERT INTO `deptos` (`idDEPTOS`, `DesDpto`) VALUES
(17, 'Caldas'),
(66, 'Risaralda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `Nit` varchar(12) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Municipio` int(11) NOT NULL,
  `Depto` int(11) NOT NULL,
  `Telefono` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Representante` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`Nit`, `Nombre`, `Direccion`, `Municipio`, `Depto`, `Telefono`, `Email`, `Representante`) VALUES
('890', 'Funeraria Calvo', 'Rio Sucio', 0, 0, '', 'Funcalvo@gmail.com', 'Yohana Calvo G'),
('890', 'Funeraria Calvo', 'Rio Sucio', 179, 17, '', 'Funcalvo@gmail.com', 'Yohana Calvo G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idvgpltit`
--

CREATE TABLE `idvgpltit` (
  `IdVgPlTit` int(11) NOT NULL,
  `idPlanes` int(11) NOT NULL COMMENT 'Id del plan con su vigencia',
  `NroFiTit` int(11) NOT NULL COMMENT 'Id de la ficha del titular',
  `VrAlterno` int(11) DEFAULT NULL COMMENT 'Valor Alterno cuando no paga el Vr Base',
  `CanBen` int(11) DEFAULT NULL COMMENT 'Cantidad de beneficiarios'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `idvgpltit`
--

INSERT INTO `idvgpltit` (`IdVgPlTit`, `idPlanes`, `NroFiTit`, `VrAlterno`, `CanBen`) VALUES
(1, 1, 1, 15000, 5),
(1, 1, 6, 17000, 5),
(2, 2, 13, 20000, 2),
(2, 2, 15, 17000, 6),
(2, 2, 17, 16500, 5),
(2, 2, 19, 17500, 3),
(2, 2, 20, 20000, 5),
(2, 2, 21, 17000, 4),
(2, 2, 23, 10000, 1),
(2, 2, 24, 17000, 4),
(2, 2, 26, 19000, 5),
(2, 2, 27, 16000, 5),
(2, 2, 28, 17000, 2),
(2, 2, 29, 18000, 4),
(2, 2, 30, 18000, 5),
(2, 2, 33, 22000, 6),
(2, 2, 35, 20000, 6),
(2, 2, 37, 18000, 5),
(2, 2, 41, 25000, 9),
(2, 2, 43, 16000, 4),
(2, 2, 44, 17000, 5),
(2, 2, 45, 17500, 6),
(2, 2, 46, 20000, 6),
(2, 2, 48, 17000, 4),
(2, 2, 49, 11000, 2),
(2, 2, 50, 17000, 5),
(2, 2, 55, 16500, 5),
(2, 2, 56, 18000, 5),
(2, 2, 57, 18000, 5),
(2, 2, 60, 17000, 5),
(2, 2, 61, 17500, 6),
(2, 2, 62, 9000, 1),
(2, 2, 64, 18000, 5),
(2, 2, 65, 16000, 4),
(2, 2, 66, 24000, 9),
(2, 2, 67, 24000, 4),
(2, 2, 68, 18000, 5),
(2, 2, 70, 20000, 3),
(2, 2, 71, 8000, 0),
(2, 2, 72, 17000, 7),
(2, 2, 74, 15000, 3),
(2, 2, 78, 18000, 5),
(2, 2, 80, 17000, 6),
(2, 2, 82, 15000, 5),
(2, 2, 84, 22000, 7),
(2, 2, 86, 18000, 3),
(2, 2, 89, 17000, 4),
(2, 2, 93, 16000, 3),
(2, 2, 95, 16000, 3),
(2, 2, 97, 13000, 3),
(2, 2, 98, 16500, 5),
(2, 2, 100, 19000, 5),
(2, 2, 101, 22000, 7),
(2, 2, 103, 15000, 5),
(2, 2, 106, 18000, 4),
(2, 2, 107, 19500, 5),
(2, 2, 109, 15000, 5),
(2, 2, 112, 19000, 4),
(2, 2, 113, 30000, 5),
(2, 2, 117, 13500, 2),
(2, 2, 120, 19000, 4),
(2, 2, 122, 20000, 6),
(2, 2, 123, 21000, 6),
(2, 2, 124, 20500, 6),
(2, 2, 125, 18000, 5),
(2, 2, 127, 21500, 5),
(2, 2, 130, 19000, 6),
(2, 2, 131, 17000, 5),
(2, 2, 134, 19500, 7),
(2, 2, 135, 17000, 6),
(2, 2, 137, 13000, 2),
(2, 2, 139, 17500, 4),
(2, 2, 140, 18000, 7),
(2, 2, 142, 17000, 5),
(2, 2, 143, 17000, 3),
(2, 2, 145, 17500, 5),
(2, 2, 147, 17000, 2),
(2, 2, 150, 19000, 3),
(2, 2, 151, 18500, 7),
(2, 2, 152, 17000, 5),
(2, 2, 154, 17000, 5),
(2, 2, 156, 17500, 5),
(2, 2, 159, 18000, 5),
(2, 2, 161, 17000, 2),
(2, 2, 163, 18000, 3),
(2, 2, 164, 17000, 5),
(2, 2, 167, 17500, 4),
(2, 2, 168, 14500, 1),
(2, 2, 172, 20000, 5),
(2, 2, 173, 19000, 5),
(2, 2, 176, 15000, 5),
(2, 2, 179, 15000, 5),
(2, 2, 181, 20000, 5),
(2, 2, 182, 25000, 9),
(2, 2, 184, 12500, 1),
(2, 2, 185, 18000, 5),
(2, 2, 188, 16000, 6),
(2, 2, 191, 22000, 7),
(2, 2, 192, 15000, 5),
(2, 2, 193, 16500, 5),
(2, 2, 194, 25000, 3),
(2, 2, 199, 17000, 3),
(2, 2, 200, 18000, 5),
(2, 2, 202, 15000, 5),
(2, 2, 203, 19000, 8),
(2, 2, 205, 20000, 5),
(2, 2, 206, 17000, 6),
(2, 2, 218, 17500, 5),
(2, 2, 223, 19000, 6),
(2, 2, 225, 16000, 5),
(2, 2, 226, 17500, 5),
(2, 2, 233, 27000, 8),
(2, 2, 234, 16500, 5),
(2, 2, 235, 17000, 5),
(2, 2, 236, 15000, 2),
(2, 2, 239, 15000, 4),
(2, 2, 245, 22000, 5),
(2, 2, 252, 10000, 2),
(2, 2, 254, 20000, 7),
(2, 2, 255, 13000, 6),
(2, 2, 257, 15000, 5),
(2, 2, 259, 23500, 8),
(2, 2, 260, 16500, 5),
(2, 2, 262, 16500, 5),
(2, 2, 263, 16500, 5),
(2, 2, 264, 24000, 7),
(2, 2, 265, 11500, 2),
(2, 2, 266, 16500, 5),
(2, 2, 267, 20500, 7),
(2, 2, 268, 16500, 5),
(2, 2, 269, 18500, 6),
(2, 2, 270, 16500, 5),
(2, 2, 271, 16500, 5),
(2, 2, 273, 16500, 5),
(2, 2, 275, 31500, 3),
(2, 2, 276, 15000, 5),
(2, 2, 277, 18000, 6),
(2, 2, 278, 10000, 1),
(2, 2, 279, 15500, 5),
(2, 2, 281, 17000, 5),
(2, 2, 282, 17500, 4),
(2, 2, 285, 20000, 5),
(2, 2, 287, 17500, 5),
(2, 2, 288, 12000, 0),
(2, 2, 292, 22000, 7),
(2, 2, 293, 15000, 5),
(2, 2, 294, 19000, 6),
(2, 2, 295, 15000, 2),
(2, 2, 299, 17500, 5),
(2, 2, 303, 20000, 4),
(2, 2, 304, 18000, 5),
(2, 2, 307, 21000, 5),
(2, 2, 308, 22000, 7),
(2, 2, 315, 15000, 5),
(2, 2, 316, 14000, 4),
(2, 2, 317, 10000, 0),
(2, 2, 321, 16500, 5),
(2, 2, 324, 17000, 6),
(2, 2, 329, 16000, 3),
(2, 2, 332, 18000, 6),
(2, 2, 335, 17500, 5),
(2, 2, 337, 24000, 7),
(2, 2, 338, 16000, 6),
(2, 2, 340, 16000, 6),
(2, 2, 341, 17000, 6),
(2, 2, 343, 17000, 5),
(2, 2, 346, 20000, 4),
(2, 2, 347, 18000, 3),
(2, 2, 348, 13500, 3),
(2, 2, 349, 13000, 2),
(2, 2, 350, 18500, 7),
(2, 2, 352, 24000, 6),
(2, 2, 353, 18000, 5),
(2, 2, 358, 12000, 2),
(2, 2, 359, 14000, 0),
(2, 2, 361, 16500, 5),
(2, 2, 362, 26000, 5),
(2, 2, 363, 17000, 3),
(2, 2, 364, 17000, 5),
(2, 2, 365, 17000, 5),
(2, 2, 366, 25000, 4),
(2, 2, 370, 15000, 5),
(2, 2, 372, 18000, 4),
(2, 2, 374, 17500, 3),
(2, 2, 379, 13000, 0),
(2, 2, 380, 15500, 3),
(2, 2, 383, 17000, 5),
(2, 2, 387, 19000, 7),
(2, 2, 388, 16500, 5),
(2, 2, 391, 14000, 4),
(2, 2, 398, 16500, 5),
(2, 2, 400, 19000, 5),
(2, 2, 401, 18000, 4),
(2, 2, 403, 20000, 5),
(2, 2, 404, 32000, 4),
(2, 2, 408, 25000, 9),
(2, 2, 411, 15000, 5),
(2, 2, 412, 15000, 5),
(2, 2, 415, 16500, 6),
(2, 2, 417, 22000, 8),
(2, 2, 420, 15000, 5),
(2, 2, 421, 18000, 5),
(2, 2, 423, 20000, 8),
(2, 2, 424, 17000, 4),
(2, 2, 429, 15000, 3),
(2, 2, 435, 17500, 5),
(2, 2, 436, 15000, 5),
(2, 2, 441, 18000, 5),
(2, 2, 447, 16000, 5),
(2, 2, 451, 17000, 6),
(2, 2, 452, 17000, 5),
(2, 2, 453, 17000, 6),
(2, 2, 454, 16000, 5),
(2, 2, 455, 16000, 5),
(2, 2, 457, 17000, 6),
(2, 2, 462, 25000, 8),
(2, 2, 463, 18000, 4),
(2, 2, 468, 17000, 3),
(2, 2, 470, 25000, 8),
(2, 2, 477, 18000, 5),
(2, 2, 478, 18000, 6),
(2, 2, 480, 17500, 6),
(2, 2, 488, 15000, 1),
(2, 2, 489, 15000, 5),
(2, 2, 490, 19000, 7),
(2, 2, 492, 16000, 6),
(2, 2, 493, 16500, 1),
(2, 2, 494, 19000, 5),
(2, 2, 500, 15000, 3),
(2, 2, 501, 13000, 3),
(2, 2, 508, 15000, 5),
(2, 2, 511, 17000, 3),
(2, 2, 515, 15000, 5),
(2, 2, 517, 19000, 4),
(2, 2, 521, 16000, 3),
(2, 2, 522, 33000, 11),
(2, 2, 524, 17000, 5),
(2, 2, 526, 20000, 4),
(2, 2, 528, 15000, 5),
(2, 2, 529, 26000, 9),
(2, 2, 532, 15000, 5),
(2, 2, 533, 15000, 5),
(2, 2, 534, 15000, 5),
(2, 2, 535, 21000, 5),
(2, 2, 539, 22000, 7),
(2, 2, 542, 22000, 7),
(2, 2, 547, 21500, 5),
(2, 2, 549, 18000, 7),
(2, 2, 552, 17000, 6),
(2, 2, 554, 15000, 5),
(2, 2, 556, 15000, 5),
(2, 2, 558, 22000, 6),
(2, 2, 561, 18000, 4),
(2, 2, 562, 16000, 5),
(2, 2, 565, 16500, 5),
(2, 2, 569, 16000, 2),
(2, 2, 583, 21000, 10),
(2, 2, 586, 15000, 3),
(2, 2, 592, 17000, 5),
(2, 2, 596, 19000, 7),
(2, 2, 597, 16500, 5),
(2, 2, 598, 19000, 7),
(2, 2, 602, 15000, 2),
(2, 2, 607, 17000, 5),
(2, 2, 608, 16000, 4),
(2, 2, 610, 16000, 6),
(2, 2, 614, 20000, 7),
(2, 2, 618, 22000, 6),
(2, 2, 621, 20000, 8),
(2, 2, 622, 19000, 6),
(2, 2, 625, 26000, 8),
(2, 2, 627, 20000, 6),
(2, 2, 630, 17000, 5),
(2, 2, 632, 18000, 5),
(2, 2, 638, 20000, 6),
(2, 2, 639, 16000, 5),
(2, 2, 640, 17000, 5),
(2, 2, 643, 11500, 2),
(2, 2, 645, 14500, 5),
(2, 2, 647, 16500, 5),
(2, 2, 658, 17000, 1),
(2, 2, 661, 15000, 5),
(2, 2, 662, 16000, 5),
(2, 2, 666, 17000, 6),
(2, 2, 670, 18000, 7),
(2, 2, 671, 32000, 2),
(2, 2, 673, 20000, 6),
(2, 2, 678, 18500, 6),
(2, 2, 681, 18000, 5),
(2, 2, 688, 19500, 4),
(2, 2, 689, 21000, 7),
(2, 2, 691, 16500, 4),
(2, 2, 700, 22000, 6),
(2, 2, 702, 22000, 9),
(2, 2, 703, 17000, 5),
(2, 2, 705, 17000, 6),
(2, 2, 713, 15000, 5),
(2, 2, 714, 16000, 2),
(2, 2, 721, 17000, 3),
(2, 2, 722, 16000, 5),
(2, 2, 723, 17000, 5),
(2, 2, 724, 19000, 6),
(2, 2, 728, 15000, 4),
(2, 2, 729, 18000, 5),
(2, 2, 731, 22000, 5),
(2, 2, 734, 32000, 3),
(2, 2, 740, 17000, 4),
(2, 2, 741, 15000, 3),
(2, 2, 742, 16000, 6),
(2, 2, 762, 23000, 7),
(2, 2, 763, 22000, 4),
(2, 2, 766, 16000, 5),
(2, 2, 771, 16500, 2),
(2, 2, 773, 16000, 5),
(2, 2, 776, 15000, 5),
(2, 2, 781, 18000, 5),
(2, 2, 782, 18000, 5),
(2, 2, 784, 12000, 3),
(2, 2, 788, 17000, 5),
(2, 2, 790, 17000, 5),
(2, 2, 791, 18000, 6),
(2, 2, 792, 17000, 6),
(2, 2, 794, 27000, 10),
(2, 2, 796, 16500, 6),
(2, 2, 800, 16000, 3),
(2, 2, 802, 31000, 6),
(2, 2, 803, 18000, 1),
(2, 2, 804, 15000, 4),
(2, 2, 806, 16000, 6),
(2, 2, 807, 22000, 6),
(2, 2, 810, 18000, 4),
(2, 2, 821, 22000, 6),
(2, 2, 829, 15000, 5),
(2, 2, 832, 19000, 5),
(2, 2, 833, 18500, 4),
(2, 2, 837, 15000, 5),
(2, 2, 840, 16500, 3),
(2, 2, 841, 15000, 5),
(2, 2, 845, 18000, 5),
(2, 2, 849, 17000, 4),
(2, 2, 852, 23000, 9),
(2, 2, 853, 17000, 3),
(2, 2, 854, 23000, 4),
(2, 2, 856, 18000, 5),
(3, 1, 2, 28000, 5),
(3, 1, 3, 16000, 6),
(3, 1, 4, 15000, 5),
(3, 1, 5, 16000, 6),
(3, 1, 11, 28000, 5),
(3, 1, 12, 14000, 5),
(3, 1, 14, 10000, 0),
(3, 1, 16, 15000, 5),
(3, 1, 18, 18000, 7),
(3, 1, 22, 17000, 5),
(3, 1, 25, 18000, 8),
(3, 1, 31, 15000, 4),
(3, 1, 34, 15000, 5),
(3, 1, 36, 16000, 6),
(3, 1, 38, 15000, 4),
(3, 1, 40, 16500, 6),
(3, 1, 42, 15000, 5),
(3, 1, 47, 32000, 7),
(3, 1, 51, 15000, 5),
(3, 1, 52, 17000, 5),
(3, 1, 53, 16000, 6),
(3, 1, 54, 17000, 6),
(3, 1, 58, 16500, 3),
(3, 1, 59, 15000, 5),
(3, 1, 63, 11500, 1),
(3, 1, 69, 14000, 4),
(3, 1, 75, 15000, 5),
(3, 1, 76, 17000, 6),
(3, 1, 77, 15000, 5),
(3, 1, 79, 14500, 3),
(3, 1, 85, 15000, 5),
(3, 1, 102, 15000, 5),
(3, 1, 104, 15000, 6),
(3, 1, 105, 17000, 8),
(3, 1, 108, 17000, 6),
(3, 1, 110, 18000, 6),
(3, 1, 111, 14500, 5),
(3, 1, 114, 14500, 4),
(3, 1, 115, 15000, 5),
(3, 1, 116, 14500, 2),
(3, 1, 118, 15500, 6),
(3, 1, 119, 15000, 0),
(3, 1, 121, 15000, 5),
(3, 1, 126, 14500, 5),
(3, 1, 128, 15000, 6),
(3, 1, 129, 15000, 5),
(3, 1, 132, 15000, 5),
(3, 1, 133, 16000, 6),
(3, 1, 136, 17500, 1),
(3, 1, 138, 14500, 3),
(3, 1, 144, 15000, 5),
(3, 1, 146, 15000, 5),
(3, 1, 148, 14500, 4),
(3, 1, 149, 15000, 6),
(3, 1, 153, 15000, 6),
(3, 1, 155, 15500, 4),
(3, 1, 157, 14500, 5),
(3, 1, 158, 14500, 5),
(3, 1, 160, 15000, 5),
(3, 1, 162, 18000, 7),
(3, 1, 166, 15000, 5),
(3, 1, 169, 16000, 5),
(3, 1, 170, 15000, 6),
(3, 1, 174, 15000, 6),
(3, 1, 175, 15000, 4),
(3, 1, 177, 14500, 5),
(3, 1, 178, 16000, 5),
(3, 1, 180, 19500, 5),
(3, 1, 183, 17000, 6),
(3, 1, 186, 19000, 7),
(3, 1, 187, 14500, 5),
(3, 1, 189, 16500, 6),
(3, 1, 190, 15000, 5),
(3, 1, 195, 16000, 5),
(3, 1, 197, 15000, 5),
(3, 1, 201, 21000, 9),
(3, 1, 204, 14500, 4),
(3, 1, 207, 16000, 5),
(3, 1, 208, 15000, 4),
(3, 1, 209, 17000, 6),
(3, 1, 210, 14500, 3),
(3, 1, 211, 14500, 5),
(3, 1, 212, 17000, 7),
(3, 1, 214, 15000, 5),
(3, 1, 215, 25000, 7),
(3, 1, 216, 20000, 9),
(3, 1, 217, 15000, 4),
(3, 1, 219, 15000, 5),
(3, 1, 220, 16000, 6),
(3, 1, 221, 15000, 5),
(3, 1, 222, 20500, 8),
(3, 1, 224, 15000, 5),
(3, 1, 227, 29000, 10),
(3, 1, 228, 15000, 5),
(3, 1, 229, 15000, 5),
(3, 1, 230, 15000, 5),
(3, 1, 231, 15000, 5),
(3, 1, 232, 16000, 5),
(3, 1, 237, 15000, 5),
(3, 1, 238, 16500, 3),
(3, 1, 240, 14000, 3),
(3, 1, 241, 14000, 5),
(3, 1, 242, 16000, 5),
(3, 1, 243, 15500, 5),
(3, 1, 244, 15000, 5),
(3, 1, 246, 15000, 5),
(3, 1, 247, 16000, 5),
(3, 1, 248, 17000, 7),
(3, 1, 249, 16000, 6),
(3, 1, 250, 15000, 5),
(3, 1, 251, 15000, 4),
(3, 1, 253, 15000, 2),
(3, 1, 256, 15000, 5),
(3, 1, 258, 15000, 5),
(3, 1, 261, 17500, 5),
(3, 1, 274, 15000, 5),
(3, 1, 280, 14500, 5),
(3, 1, 284, 15500, 5),
(3, 1, 286, 17000, 7),
(3, 1, 289, 14000, 5),
(3, 1, 290, 15000, 5),
(3, 1, 291, 15500, 3),
(3, 1, 296, 15000, 4),
(3, 1, 297, 16000, 6),
(3, 1, 298, 14500, 4),
(3, 1, 300, 14500, 5),
(3, 1, 301, 15000, 5),
(3, 1, 302, 18000, 6),
(3, 1, 305, 15000, 5),
(3, 1, 309, 18000, 5),
(3, 1, 310, 15000, 5),
(3, 1, 311, 15000, 5),
(3, 1, 312, 16000, 5),
(3, 1, 313, 16000, 5),
(3, 1, 314, 15000, 5),
(3, 1, 319, 16500, 5),
(3, 1, 320, 15000, 4),
(3, 1, 322, 14500, 4),
(3, 1, 323, 15000, 4),
(3, 1, 325, 16500, 6),
(3, 1, 326, 16000, 5),
(3, 1, 327, 14500, 4),
(3, 1, 328, 16000, 6),
(3, 1, 330, 15000, 5),
(3, 1, 331, 21000, 5),
(3, 1, 333, 15000, 5),
(3, 1, 334, 15000, 5),
(3, 1, 336, 15000, 4),
(3, 1, 342, 15000, 3),
(3, 1, 344, 15000, 3),
(3, 1, 345, 15500, 4),
(3, 1, 351, 15000, 5),
(3, 1, 355, 12000, 0),
(3, 1, 356, 18000, 7),
(3, 1, 357, 15000, 4),
(3, 1, 360, 18000, 5),
(3, 1, 367, 15000, 5),
(3, 1, 368, 9000, 1),
(3, 1, 369, 14000, 6),
(3, 1, 373, 14000, 5),
(3, 1, 377, 15000, 4),
(3, 1, 378, 14500, 1),
(3, 1, 381, 15000, 5),
(3, 1, 382, 16500, 5),
(3, 1, 384, 16000, 5),
(3, 1, 385, 21000, 7),
(3, 1, 386, 15000, 4),
(3, 1, 389, 13000, 4),
(3, 1, 390, 15000, 5),
(3, 1, 392, 16000, 6),
(3, 1, 393, 15000, 4),
(3, 1, 394, 8000, 0),
(3, 1, 395, 16000, 7),
(3, 1, 396, 15000, 5),
(3, 1, 397, 15000, 5),
(3, 1, 399, 15000, 3),
(3, 1, 402, 14500, 4),
(3, 1, 405, 14500, 5),
(3, 1, 406, 15000, 5),
(3, 1, 409, 15000, 4),
(3, 1, 410, 19000, 6),
(3, 1, 413, 15000, 5),
(3, 1, 414, 15500, 4),
(3, 1, 418, 17000, 6),
(3, 1, 419, 15000, 2),
(3, 1, 422, 15000, 4),
(3, 1, 425, 15000, 5),
(3, 1, 427, 26500, 1),
(3, 1, 428, 14500, 5),
(3, 1, 430, 16000, 5),
(3, 1, 431, 14500, 5),
(3, 1, 432, 14500, 4),
(3, 1, 433, 15500, 6),
(3, 1, 434, 14500, 5),
(3, 1, 437, 14500, 5),
(3, 1, 438, 14000, 5),
(3, 1, 439, 25000, 3),
(3, 1, 440, 14500, 5),
(3, 1, 442, 16000, 5),
(3, 1, 443, 16000, 5),
(3, 1, 445, 18000, 4),
(3, 1, 446, 16000, 5),
(3, 1, 448, 15000, 5),
(3, 1, 450, 15000, 5),
(3, 1, 456, 19000, 5),
(3, 1, 458, 17000, 5),
(3, 1, 459, 14500, 5),
(3, 1, 460, 15000, 2),
(3, 1, 461, 15500, 6),
(3, 1, 464, 16000, 4),
(3, 1, 465, 15000, 4),
(3, 1, 466, 16500, 6),
(3, 1, 467, 15000, 3),
(3, 1, 469, 15000, 5),
(3, 1, 471, 15000, 4),
(3, 1, 472, 15000, 5),
(3, 1, 473, 15000, 5),
(3, 1, 474, 15000, 5),
(3, 1, 475, 15000, 5),
(3, 1, 476, 17000, 5),
(3, 1, 479, 14500, 5),
(3, 1, 481, 14500, 5),
(3, 1, 482, 16500, 5),
(3, 1, 483, 19000, 5),
(3, 1, 484, 15000, 5),
(3, 1, 485, 17000, 5),
(3, 1, 486, 14500, 4),
(3, 1, 487, 16500, 6),
(3, 1, 491, 18000, 7),
(3, 1, 495, 14000, 5),
(3, 1, 496, 14500, 5),
(3, 1, 498, 15500, 5),
(3, 1, 499, 15000, 5),
(3, 1, 502, 15000, 5),
(3, 1, 503, 14500, 5),
(3, 1, 504, 15000, 5),
(3, 1, 505, 21500, 6),
(3, 1, 506, 15000, 5),
(3, 1, 507, 14000, 5),
(3, 1, 509, 15000, 5),
(3, 1, 510, 15500, 5),
(3, 1, 512, 17500, 6),
(3, 1, 513, 17500, 6),
(3, 1, 514, 16500, 4),
(3, 1, 516, 15500, 6),
(3, 1, 520, 14000, 5),
(3, 1, 523, 15000, 5),
(3, 1, 525, 15000, 5),
(3, 1, 527, 16000, 5),
(3, 1, 530, 30000, 5),
(3, 1, 531, 14500, 3),
(3, 1, 536, 14500, 5),
(3, 1, 537, 14000, 5),
(3, 1, 538, 21000, 9),
(3, 1, 540, 20000, 9),
(3, 1, 541, 16500, 6),
(3, 1, 543, 18000, 6),
(3, 1, 544, 17500, 5),
(3, 1, 545, 14000, 5),
(3, 1, 548, 15000, 2),
(3, 1, 550, 18000, 6),
(3, 1, 551, 14500, 3),
(3, 1, 553, 16000, 5),
(3, 1, 555, 15000, 4),
(3, 1, 557, 15000, 5),
(3, 1, 560, 20000, 9),
(3, 1, 563, 20000, 7),
(3, 1, 564, 15000, 4),
(3, 1, 566, 14500, 5),
(3, 1, 567, 22000, 6),
(3, 1, 570, 17500, 4),
(3, 1, 571, 15000, 5),
(3, 1, 572, 15000, 5),
(3, 1, 573, 15500, 5),
(3, 1, 575, 18000, 6),
(3, 1, 576, 11000, 2),
(3, 1, 577, 15500, 3),
(3, 1, 578, 15000, 5),
(3, 1, 579, 17000, 5),
(3, 1, 580, 15000, 5),
(3, 1, 581, 16000, 6),
(3, 1, 582, 18000, 7),
(3, 1, 584, 15000, 5),
(3, 1, 585, 14500, 4),
(3, 1, 587, 15000, 5),
(3, 1, 588, 16000, 6),
(3, 1, 590, 11500, 2),
(3, 1, 591, 17000, 6),
(3, 1, 593, 19000, 3),
(3, 1, 594, 14500, 5),
(3, 1, 595, 15000, 4),
(3, 1, 599, 16000, 5),
(3, 1, 600, 15000, 4),
(3, 1, 601, 14000, 5),
(3, 1, 603, 18500, 5),
(3, 1, 604, 15000, 5),
(3, 1, 605, 21000, 8),
(3, 1, 606, 15000, 4),
(3, 1, 609, 15000, 5),
(3, 1, 611, 15000, 2),
(3, 1, 612, 16000, 6),
(3, 1, 615, 14500, 5),
(3, 1, 616, 16500, 5),
(3, 1, 617, 18000, 7),
(3, 1, 619, 15000, 5),
(3, 1, 620, 15000, 5),
(3, 1, 623, 14500, 1),
(3, 1, 626, 14000, 4),
(3, 1, 628, 15000, 5),
(3, 1, 629, 15000, 5),
(3, 1, 631, 15000, 5),
(3, 1, 633, 18500, 7),
(3, 1, 634, 15000, 5),
(3, 1, 635, 14000, 4),
(3, 1, 636, 14000, 5),
(3, 1, 637, 15000, 5),
(3, 1, 641, 16500, 6),
(3, 1, 642, 15000, 5),
(3, 1, 644, 13500, 5),
(3, 1, 646, 15000, 6),
(3, 1, 648, 13500, 4),
(3, 1, 649, 13500, 4),
(3, 1, 650, 15000, 5),
(3, 1, 652, 15000, 5),
(3, 1, 656, 13500, 4),
(3, 1, 659, 14500, 5),
(3, 1, 660, 26000, 8),
(3, 1, 663, 14500, 4),
(3, 1, 664, 13500, 5),
(3, 1, 665, 15000, 5),
(3, 1, 668, 13500, 5),
(3, 1, 669, 18500, 7),
(3, 1, 672, 22000, 4),
(3, 1, 674, 14000, 5),
(3, 1, 675, 15000, 5),
(3, 1, 676, 16000, 6),
(3, 1, 677, 14000, 5),
(3, 1, 679, 14500, 5),
(3, 1, 680, 15000, 6),
(3, 1, 682, 14000, 4),
(3, 1, 683, 14000, 5),
(3, 1, 684, 14500, 3),
(3, 1, 685, 17500, 6),
(3, 1, 686, 14500, 4),
(3, 1, 687, 15000, 5),
(3, 1, 690, 14500, 5),
(3, 1, 692, 16000, 6),
(3, 1, 693, 14000, 5),
(3, 1, 695, 14500, 4),
(3, 1, 696, 16000, 5),
(3, 1, 697, 14000, 5),
(3, 1, 698, 15000, 5),
(3, 1, 699, 16000, 5),
(3, 1, 704, 15000, 5),
(3, 1, 706, 18000, 4),
(3, 1, 707, 16000, 6),
(3, 1, 708, 15000, 5),
(3, 1, 709, 14500, 4),
(3, 1, 710, 15000, 3),
(3, 1, 711, 14500, 5),
(3, 1, 712, 14000, 3),
(3, 1, 715, 14500, 4),
(3, 1, 716, 14500, 1),
(3, 1, 717, 16000, 6),
(3, 1, 719, 14000, 4),
(3, 1, 725, 15000, 5),
(3, 1, 726, 14000, 5),
(3, 1, 727, 11500, 0),
(3, 1, 730, 17500, 4),
(3, 1, 732, 23000, 10),
(3, 1, 733, 18000, 7),
(3, 1, 735, 15000, 5),
(3, 1, 736, 15000, 5),
(3, 1, 737, 13000, 4),
(3, 1, 738, 14000, 5),
(3, 1, 739, 14000, 5),
(3, 1, 743, 15000, 5),
(3, 1, 744, 17000, 5),
(3, 1, 745, 17000, 6),
(3, 1, 746, 16000, 5),
(3, 1, 747, 13000, 3),
(3, 1, 748, 14500, 5),
(3, 1, 749, 15000, 3),
(3, 1, 750, 15500, 6),
(3, 1, 751, 14000, 4),
(3, 1, 752, 16500, 6),
(3, 1, 753, 15000, 5),
(3, 1, 754, 20000, 8),
(3, 1, 755, 15500, 5),
(3, 1, 756, 10000, 1),
(3, 1, 757, 14500, 5),
(3, 1, 759, 19000, 7),
(3, 1, 760, 15000, 5),
(3, 1, 761, 15000, 5),
(3, 1, 764, 14000, 5),
(3, 1, 765, 15000, 3),
(3, 1, 767, 9000, 0),
(3, 1, 768, 18500, 7),
(3, 1, 769, 14500, 4),
(3, 1, 770, 17000, 6),
(3, 1, 772, 11500, 1),
(3, 1, 774, 21500, 3),
(3, 1, 775, 16000, 4),
(3, 1, 777, 15000, 6),
(3, 1, 778, 14500, 2),
(3, 1, 779, 14000, 3),
(3, 1, 780, 22000, 9),
(3, 1, 783, 15000, 3),
(3, 1, 785, 23000, 5),
(3, 1, 786, 15500, 5),
(3, 1, 789, 16500, 4),
(3, 1, 793, 15000, 2),
(3, 1, 797, 16000, 2),
(3, 1, 799, 15000, 5),
(3, 1, 801, 15000, 5),
(3, 1, 805, 14000, 5),
(3, 1, 808, 15000, 5),
(3, 1, 809, 15000, 5),
(3, 1, 811, 15500, 5),
(3, 1, 812, 20000, 8),
(3, 1, 814, 15000, 5),
(3, 1, 815, 15000, 4),
(3, 1, 816, 15000, 3),
(3, 1, 819, 16000, 6),
(3, 1, 820, 15000, 5),
(3, 1, 822, 15500, 7),
(3, 1, 823, 15000, 6),
(3, 1, 824, 15000, 6),
(3, 1, 825, 18000, 6),
(3, 1, 826, 16500, 6),
(3, 1, 827, 16000, 5),
(3, 1, 828, 13500, 5),
(3, 1, 830, 14500, 2),
(3, 1, 831, 14000, 5),
(3, 1, 834, 18000, 8),
(3, 1, 835, 21500, 5),
(3, 1, 838, 15000, 4),
(3, 1, 839, 8000, 0),
(3, 1, 842, 14000, 3),
(3, 1, 843, 17000, 5),
(3, 1, 844, 14000, 4),
(3, 1, 846, 14000, 5),
(3, 1, 847, 20000, 8),
(3, 1, 848, 16000, 6),
(3, 1, 850, 15000, 6),
(3, 1, 851, 18000, 6),
(3, 1, 855, 15500, 6),
(3, 1, 857, 15000, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `IdPadre` int(11) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Codigo` varchar(45) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  `Link` varchar(45) DEFAULT NULL,
  `Icono` varchar(45) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mncio`
--

CREATE TABLE `mncio` (
  `idMncio` int(11) NOT NULL,
  `DesMncio` varchar(65) DEFAULT NULL,
  `DEPTOS_idDEPTOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mncio`
--

INSERT INTO `mncio` (`idMncio`, `DesMncio`, `DEPTOS_idDEPTOS`) VALUES
(17123, 'Riosucio', 17),
(66173, 'Quinchia', 66),
(66318, 'Guática', 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `idPlanes` int(11) NOT NULL,
  `DesPlan` varchar(100) DEFAULT NULL COMMENT 'Descripción del plan',
  `EstPlan` bit(1) DEFAULT NULL COMMENT 'Estado del plan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`idPlanes`, `DesPlan`, `EstPlan`) VALUES
(1, 'Plan A', b'1'),
(2, 'Plan B', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planserv`
--

CREATE TABLE `planserv` (
  `idPlanes` int(11) NOT NULL,
  `idServicio` int(11) NOT NULL,
  `VigPS` int(11) DEFAULT NULL COMMENT 'Año de vigencia del servicio incluido en plan',
  `Valor` int(11) DEFAULT NULL COMMENT 'Valor',
  `CondServ` varchar(200) DEFAULT NULL COMMENT 'Condición del servicio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `planserv`
--

INSERT INTO `planserv` (`idPlanes`, `idServicio`, `VigPS`, `Valor`, `CondServ`) VALUES
(1, 1, 2020, 6000, 'Negra, o solo se presta en con.......');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE `recibos` (
  `NroFicha` int(11) NOT NULL,
  `NroReci` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `NoIden` varchar(25) NOT NULL,
  `FPago` int(11) NOT NULL,
  `VrReci` int(11) NOT NULL,
  `Concepto` varchar(100) NOT NULL,
  `User` varchar(40) NOT NULL,
  `Estado` int(11) NOT NULL,
  `UsAnula` varchar(200) NOT NULL,
  `Motanul` int(11) NOT NULL,
  `DetAnu` varchar(200) NOT NULL,
  `NroCierre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recibos`
--

INSERT INTO `recibos` (`NroFicha`, `NroReci`, `fecha`, `NoIden`, `FPago`, `VrReci`, `Concepto`, `User`, `Estado`, `UsAnula`, `Motanul`, `DetAnu`, `NroCierre`) VALUES
(765, 1, '2020-06-01', '4543563', 1, 15000, 'CANCELA MES DE  JUNIO 2020', 'Lady Yohana Diaz', 1, '', 0, '', 0),
(802, 2, '2020-06-01', '25053798', 1, 21000, 'CANCELA MES MAYO 2020', 'Lady Yohana Diaz', 1, '', 0, '', 0),
(75, 4, '2020-06-01', '25053386', 1, 15000, 'CANCELA MES DE MAYO 2020', 'Lady Yohana Diaz', 1, '', 0, '', 0),
(17, 5, '2020-06-01', '25053028', 1, 16500, 'CANCELA MES DE  JUNIO 2020', 'Lady Yohana Diaz', 1, '', 0, '', 0),
(121, 6, '2020-06-01', '25055025', 1, 15000, 'CANCELA MES DE MAYO 2020', 'Lady Yohana Diaz', 1, '', 0, '', 0),
(40, 7, '2020-06-01', '15913091', 1, 16500, 'CANCELA MES DE JULIO 2020', 'Lady Yohana Diaz', 1, '', 0, '', 0),
(70, 8, '2020-06-01', '30413537', 1, 20000, 'CANCELA MES DE MAYO 2020', 'Lady Yohana Diaz', 1, '', 0, '', 0),
(723, 9, '2020-06-01', '30413246', 1, 17000, 'CANCELA MES DE  JUNIO 2020', 'Lady Yohana Diaz Taborda', 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segint`
--

CREATE TABLE `segint` (
  `SegRolid` int(11) NOT NULL,
  `Menuid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segrol`
--

CREATE TABLE `segrol` (
  `id` int(11) NOT NULL,
  `RolDetalle` varchar(45) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `segrol`
--

INSERT INTO `segrol` (`id`, `RolDetalle`, `Estado`) VALUES
(1, 'Administrador', b'1'),
(2, 'Secretaria', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segusuarios`
--

CREATE TABLE `segusuarios` (
  `id` int(11) NOT NULL,
  `NomUsuario` varchar(45) DEFAULT NULL,
  `PassUsuario` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `FechaRegis` date DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `GrupoId` bit(1) DEFAULT NULL,
  `SegRolid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `segusuarios`
--

INSERT INTO `segusuarios` (`id`, `NomUsuario`, `PassUsuario`, `Nombre`, `Apellidos`, `Correo`, `FechaRegis`, `Estado`, `GrupoId`, `SegRolid`) VALUES
(1, '195Y7scE17IjI', '98CXFluUAtWyA', 'Henry', 'Ruiz V', 'henryrv@gmail.com', '2020-05-19', b'1', NULL, 1),
(2, '21eyvRlvl.Fas', 'e8HF2F2G1sGVw', 'Lady Yohana', 'Diaz Taborda', 'layodita1484@yahoo.es', '0000-00-00', b'1', NULL, 2),
(3, 'f2EE8V9GJLJdk', 'f6GzY1SEFxT5U', 'Yohana', 'Calvo Gartner', NULL, '2020-06-01', b'1', NULL, 1),
(4, '29YctM0PDPzT6', '77vRbIJEcQ1mU', 'Ruby Elena', 'Gartner Restrepo', NULL, '2020-06-01', b'1', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `idServicio` int(11) NOT NULL,
  `DetServ` varchar(300) DEFAULT NULL COMMENT 'Descripcion del servicio:\nCarroza\nIglesia\nTraslado',
  `EstServ` bit(1) DEFAULT NULL COMMENT 'Estado',
  `ImgSer` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`idServicio`, `DetServ`, `EstServ`, `ImgSer`) VALUES
(1, 'Carroza', b'1', NULL),
(2, 'Cofre', b'1', NULL),
(3, 'Misa', b'1', NULL),
(4, 'Ramo', b'1', NULL),
(5, 'Sala de Velación', b'1', NULL),
(6, 'Cirios', b'1', NULL),
(7, 'Cremación', b'1', NULL),
(8, 'Traslado Nacional', b'1', NULL),
(9, 'Traslado Departamental 100Km', b'1', NULL),
(10, 'Lote', b'1', NULL),
(11, 'Bóveda', b'1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipid`
--

CREATE TABLE `tipid` (
  `idTipId` varchar(3) NOT NULL,
  `DesTipId` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='	';

--
-- Volcado de datos para la tabla `tipid`
--

INSERT INTO `tipid` (`idTipId`, `DesTipId`) VALUES
('CC', 'Cédula'),
('PA', 'Pasaporte'),
('RG', 'Registro Civil'),
('TI', 'Tarjeta Identidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vigplan`
--

CREATE TABLE `vigplan` (
  `idVigPlan` int(11) NOT NULL,
  `Vigencia` int(11) DEFAULT NULL COMMENT 'Año de Vigencia del Plan',
  `EstVigen` bit(1) DEFAULT NULL COMMENT 'Estado de Vigencia del plan',
  `VrlVig` int(11) DEFAULT NULL COMMENT 'Valor del año de vigencia',
  `DetVig` varchar(200) DEFAULT NULL COMMENT 'Detalles adicionales',
  `idPlanes` int(11) NOT NULL COMMENT 'Id del plan al cual aplica'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vigplan`
--

INSERT INTO `vigplan` (`idVigPlan`, `Vigencia`, `EstVigen`, `VrlVig`, `DetVig`, `idPlanes`) VALUES
(1, 2020, b'1', 16000, 'Nuevos Afiliados', 1),
(2, 2020, b'1', 20000, 'Nuevos Afiliados', 2),
(3, 2020, b'1', 15000, 'Antiguo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `idZonas` int(11) NOT NULL,
  `DesZona` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`idZonas`, `DesZona`) VALUES
(1, 'Riosucio'),
(2, 'Bonafont'),
(3, 'Quinchía'),
(4, 'San Lorenzo'),
(5, 'Irra'),
(6, 'Batero'),
(7, 'La Comparcita'),
(8, 'Alto Sevilla'),
(9, 'El Nevado'),
(10, 'Guatica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conbenef`
--
ALTER TABLE `conbenef`
  ADD PRIMARY KEY (`NroFicha`,`idZonas`,`idTipId`,`idMncio`,`idDEPTOS`),
  ADD KEY `fk_ConTitular_Zonas1_idx` (`idZonas`),
  ADD KEY `fk_ConTitular_TipId1_idx` (`idTipId`),
  ADD KEY `fk_ConTitular_Mncio1_idx` (`idMncio`,`idDEPTOS`);

--
-- Indices de la tabla `contitular`
--
ALTER TABLE `contitular`
  ADD PRIMARY KEY (`NroFicha`,`idZonas`,`idTipId`,`idMncio`,`idDEPTOS`),
  ADD KEY `fk_ConTitular_Zonas1_idx` (`idZonas`),
  ADD KEY `fk_ConTitular_TipId1_idx` (`idTipId`),
  ADD KEY `fk_ConTitular_Mncio1_idx` (`idMncio`,`idDEPTOS`);

--
-- Indices de la tabla `datdef`
--
ALTER TABLE `datdef`
  ADD PRIMARY KEY (`IdFicha`,`idMncio`,`iidDEPTOS`),
  ADD KEY `fk_DatDef_Mncio1_idx` (`idMncio`,`iidDEPTOS`);

--
-- Indices de la tabla `deptos`
--
ALTER TABLE `deptos`
  ADD PRIMARY KEY (`idDEPTOS`);

--
-- Indices de la tabla `idvgpltit`
--
ALTER TABLE `idvgpltit`
  ADD PRIMARY KEY (`IdVgPlTit`,`idPlanes`,`NroFiTit`),
  ADD KEY `fk_VigPlan_has_ConTitular_ConTitular1_idx` (`NroFiTit`),
  ADD KEY `fk_VigPlan_has_ConTitular_VigPlan1_idx` (`IdVgPlTit`,`idPlanes`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mncio`
--
ALTER TABLE `mncio`
  ADD PRIMARY KEY (`idMncio`,`DEPTOS_idDEPTOS`),
  ADD KEY `fk_Mncio_DEPTOS1_idx` (`DEPTOS_idDEPTOS`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`idPlanes`);

--
-- Indices de la tabla `planserv`
--
ALTER TABLE `planserv`
  ADD PRIMARY KEY (`idPlanes`,`idServicio`),
  ADD KEY `fk_Planes_has_Servicio_Servicio1_idx` (`idServicio`),
  ADD KEY `fk_Planes_has_Servicio_Planes1_idx` (`idPlanes`);

--
-- Indices de la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`NroReci`);

--
-- Indices de la tabla `segint`
--
ALTER TABLE `segint`
  ADD PRIMARY KEY (`SegRolid`,`Menuid`),
  ADD KEY `fk_SegRol_has_Menu_Menu1_idx` (`Menuid`),
  ADD KEY `fk_SegRol_has_Menu_SegRol1_idx` (`SegRolid`);

--
-- Indices de la tabla `segrol`
--
ALTER TABLE `segrol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `segusuarios`
--
ALTER TABLE `segusuarios`
  ADD PRIMARY KEY (`id`,`SegRolid`),
  ADD KEY `fk_SegUsuarios_SegRol1_idx` (`SegRolid`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`idServicio`);

--
-- Indices de la tabla `tipid`
--
ALTER TABLE `tipid`
  ADD PRIMARY KEY (`idTipId`);

--
-- Indices de la tabla `vigplan`
--
ALTER TABLE `vigplan`
  ADD PRIMARY KEY (`idVigPlan`,`idPlanes`),
  ADD KEY `fk_VigPlan_Planes1_idx` (`idPlanes`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`idZonas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contitular`
--
ALTER TABLE `contitular`
  MODIFY `NroFicha` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nro Ficha', AUTO_INCREMENT=858;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `idPlanes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recibos`
--
ALTER TABLE `recibos`
  MODIFY `NroReci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `segrol`
--
ALTER TABLE `segrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `segusuarios`
--
ALTER TABLE `segusuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `idServicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `vigplan`
--
ALTER TABLE `vigplan`
  MODIFY `idVigPlan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `idZonas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conbenef`
--
ALTER TABLE `conbenef`
  ADD CONSTRAINT `fk_ConTitular_Mncio10` FOREIGN KEY (`idMncio`,`idDEPTOS`) REFERENCES `mncio` (`idMncio`, `DEPTOS_idDEPTOS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConTitular_TipId10` FOREIGN KEY (`idTipId`) REFERENCES `tipid` (`idTipId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConTitular_Zonas10` FOREIGN KEY (`idZonas`) REFERENCES `zonas` (`idZonas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contitular`
--
ALTER TABLE `contitular`
  ADD CONSTRAINT `fk_ConTitular_Mncio1` FOREIGN KEY (`idMncio`,`idDEPTOS`) REFERENCES `mncio` (`idMncio`, `DEPTOS_idDEPTOS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConTitular_TipId1` FOREIGN KEY (`idTipId`) REFERENCES `tipid` (`idTipId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConTitular_Zonas1` FOREIGN KEY (`idZonas`) REFERENCES `zonas` (`idZonas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datdef`
--
ALTER TABLE `datdef`
  ADD CONSTRAINT `fk_DatDef_Mncio1` FOREIGN KEY (`idMncio`,`iidDEPTOS`) REFERENCES `mncio` (`idMncio`, `DEPTOS_idDEPTOS`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `idvgpltit`
--
ALTER TABLE `idvgpltit`
  ADD CONSTRAINT `fk_VigPlan_has_ConTitular_ConTitular1` FOREIGN KEY (`NroFiTit`) REFERENCES `contitular` (`NroFicha`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_VigPlan_has_ConTitular_VigPlan1` FOREIGN KEY (`IdVgPlTit`,`idPlanes`) REFERENCES `vigplan` (`idVigPlan`, `idPlanes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mncio`
--
ALTER TABLE `mncio`
  ADD CONSTRAINT `fk_Mncio_DEPTOS1` FOREIGN KEY (`DEPTOS_idDEPTOS`) REFERENCES `deptos` (`idDEPTOS`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planserv`
--
ALTER TABLE `planserv`
  ADD CONSTRAINT `fk_Planes_has_Servicio_Planes1` FOREIGN KEY (`idPlanes`) REFERENCES `planes` (`idPlanes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planes_has_Servicio_Servicio1` FOREIGN KEY (`idServicio`) REFERENCES `servicio` (`idServicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `segint`
--
ALTER TABLE `segint`
  ADD CONSTRAINT `fk_SegRol_has_Menu_Menu1` FOREIGN KEY (`Menuid`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SegRol_has_Menu_SegRol1` FOREIGN KEY (`SegRolid`) REFERENCES `segrol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `segusuarios`
--
ALTER TABLE `segusuarios`
  ADD CONSTRAINT `fk_SegUsuarios_SegRol1` FOREIGN KEY (`SegRolid`) REFERENCES `segrol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vigplan`
--
ALTER TABLE `vigplan`
  ADD CONSTRAINT `fk_VigPlan_Planes1` FOREIGN KEY (`idPlanes`) REFERENCES `planes` (`idPlanes`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
