-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-03-2022 a las 07:06:29
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Base de datos: `bdproyecto`
--
CREATE DATABASE IF NOT EXISTS `bdproyecto` DEFAULT CHARACTER SET utf8 COLLATE
utf8_general_ci;
USE `bdproyecto`;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `usuariologin`
--
DROP TABLE IF EXISTS `usuariologin`;
CREATE TABLE IF NOT EXISTS `usuariologin` (
 `usuario` varchar(10) NOT NULL,
 `contraseña` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Volcado de datos para la tabla `usuariologin`
--
INSERT INTO `usuariologin` (`usuario`, `contraseña`) VALUES
('john', 'jj'),
('jean', '123'),
('jaimes', '1234'),
('andres', '12345');
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `usuarios`
--
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
 `usunombre` varchar(20) NOT NULL,
 `usuclave` varchar(32) NOT NULL,
 PRIMARY KEY (`usunombre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Volcado de datos para la tabla `usuarios`
--
INSERT INTO `usuarios` (`usunombre`, `usuclave`) VALUES
('admin', '1234'),
('pepe', '81dc9bdb52d04dc20036dbd8313ed055');
--
-- Base de datos: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE
latin1_swedish_ci;
USE `login`;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `paraclinicos`
--
DROP TABLE IF EXISTS `paraclinicos`;
CREATE TABLE IF NOT EXISTS `paraclinicos` (
 `no` int(11) NOT NULL AUTO_INCREMENT,
 `id_examen` varchar(20) NOT NULL,
 `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
 `descripcion` text NOT NULL,
 PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='examenes de
laboratorio';
--
-- Volcado de datos para la tabla `paraclinicos`
--
INSERT INTO `paraclinicos` (`no`, `id_examen`, `nombre`, `descripcion`) VALUES
(1, 'glic', 'Glicemia', 'Valores normales: entre 70 y 110 mg/dl'),
(2, 'hem', 'Hemoglobina', 'Rango normal:\r\nentre 8 y 12'),
(9, 'creat', 'Creatinina', 'Rango normal:\r\nHasta 0.5'),
(13, 'leuc', 'Leucocitos', 'Rango Normal:\r\nEntre 9000 y 10000'),
(14, 'col', 'Colesterol', 'Rango normal:\r\nMenor a 100');
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `usuarios`
--
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
 `usunombre` varchar(20) NOT NULL,
 `usuclave` varchar(32) NOT NULL,
 PRIMARY KEY (`usunombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Volcado de datos para la tabla `usuarios`
--
INSERT INTO `usuarios` (`usunombre`, `usuclave`) VALUES
('admin', '81dc9bdb52d04dc20036dbd8313ed055'),
('pepe', '81dc9bdb52d04dc20036dbd8313ed055');
--
-- Base de datos: `proy`
--
CREATE DATABASE IF NOT EXISTS `proy` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `proy`;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `citaspendientes`
--
DROP TABLE IF EXISTS `citaspendientes`;
CREATE TABLE IF NOT EXISTS `citaspendientes` (
 `documento` int(11) NOT NULL,
 `nombres` varchar(25) DEFAULT NULL,
 `apellidos` varchar(25) DEFAULT NULL,
 `edad` int(11) DEFAULT NULL,
 `lugar` varchar(50) DEFAULT NULL,
 `direccion` varchar(50) DEFAULT NULL,
 `especialidad` varchar(50) DEFAULT NULL,
 `dia` varchar(50) DEFAULT NULL,
 `hora` varchar(50) DEFAULT NULL,
 `requisitos` varchar(50) DEFAULT NULL,
 PRIMARY KEY (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `registroexamen`
--
DROP TABLE IF EXISTS `registroexamen`;
CREATE TABLE IF NOT EXISTS `registroexamen` (
 `documento` int(11) NOT NULL,
 `nombres` varchar(25) DEFAULT NULL,
 `apellidos` varchar(25) DEFAULT NULL,
 `edad` int(11) DEFAULT NULL,
 `examen` varchar(50) DEFAULT NULL,
 `resultado` double DEFAULT NULL,
 PRIMARY KEY (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `registrofamiliar`
--
DROP TABLE IF EXISTS `registrofamiliar`;
CREATE TABLE IF NOT EXISTS `registrofamiliar` (
 `documento` int(11) NOT NULL,
 `nombres` varchar(25) DEFAULT NULL,
 `apellidos` varchar(25) DEFAULT NULL,
 `edad` int(11) DEFAULT NULL,
 `parentezco` varchar(25) DEFAULT NULL,
 PRIMARY KEY (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `registrologin`
--
DROP TABLE IF EXISTS `registrologin`;
CREATE TABLE IF NOT EXISTS `registrologin` (
 `usuario` varchar(50) NOT NULL COMMENT 'nombre del usuario',
 `contraseña` varchar(50) NOT NULL COMMENT 'contraseña del usuario',
 PRIMARY KEY (`usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabal de usuarios (ingresar)';
--
-- Volcado de datos para la tabla `registrologin`
--
INSERT INTO `registrologin` (`usuario`, `contraseña`) VALUES
('jean', '123'),
('obed', '1234'),
('andres', '12345'),
('john', 'jj');
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `registrousuario`
--
DROP TABLE IF EXISTS `registrousuario`;
CREATE TABLE IF NOT EXISTS `registrousuario` (
 `documento` varchar(11) NOT NULL COMMENT 'Documento del Usuario',
 `nombres` varchar(50) NOT NULL COMMENT 'Nombres del Usuario',
 `apellidos` varchar(50) NOT NULL COMMENT 'Apellidos del Usuario',
 `edad` varchar(3) NOT NULL COMMENT 'Edad del Usuario',
 `genero` varchar(2) NOT NULL COMMENT 'sexo del Usuario',
 `correo` varchar(30) NOT NULL COMMENT 'correo del Usuario',
 `usuario` varchar(30) NOT NULL COMMENT 'usuario para ingresar',
 `contraseña` varchar(30) NOT NULL COMMENT 'contraseña para ingresar'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

