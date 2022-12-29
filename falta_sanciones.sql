-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 04:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `falta_sanciones`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumno`
--

CREATE TABLE `alumno` (
  `nombre` varchar(150) NOT NULL,
  `apat_pat` varchar(150) NOT NULL,
  `apat_mat` varchar(150) NOT NULL,
  `seccion` varchar(100) NOT NULL,
  `grado` varchar(150) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `estado_civil` varchar(100) NOT NULL,
  `cod_dist` int(100) NOT NULL,
  `cod_alumno` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumno`
--

INSERT INTO `alumno` (`nombre`, `apat_pat`, `apat_mat`, `seccion`, `grado`, `sexo`, `estado_civil`, `cod_dist`, `cod_alumno`) VALUES
('juan', 'eeeee', 'roman ', 'c', '4', 'masculino', 'soltero', 1, 45),
('lucas', '555', 'df', 'd', 'df', 'fd', 'fd', 45, 7);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_falta`
--

CREATE TABLE `detalle_falta` (
  `cod_detalle` varchar(150) NOT NULL,
  `cod_alumno` varchar(150) NOT NULL,
  `fecha` varchar(150) NOT NULL,
  `cod_falta` varchar(100) NOT NULL,
  `cod_prof` varchar(100) NOT NULL,
  `cod_sancion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detalle_falta`
--

INSERT INTO `detalle_falta` (`cod_detalle`, `cod_alumno`, `fecha`, `cod_falta`, `cod_prof`, `cod_sancion`) VALUES
('u6u', '6u6', 'u6u6', 'u6u6u6', '6u6', '6u6'),
('56', '12', '17/06/89', '001', '56', '78');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `cod_distrito` int(150) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`cod_distrito`, `nombre`) VALUES
(1, 'villa el salvador'),
(2, 'surco'),
(3, 'ghgh'),
(6, 'piura');

-- --------------------------------------------------------

--
-- Table structure for table `faltas`
--

CREATE TABLE `faltas` (
  `descripcion` varchar(150) NOT NULL,
  `cod_falta` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faltas`
--

INSERT INTO `faltas` (`descripcion`, `cod_falta`) VALUES
('rrrr', 45),
('dfgfdgdf', 455),
('luis', 45),
('edefe', 777),
('fgfg', 455);

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `ape_apat` varchar(150) NOT NULL,
  `ape_amat` varchar(150) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `estado_civil` varchar(100) NOT NULL,
  `cod_dist` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profesores`
--

INSERT INTO `profesores` (`ape_apat`, `ape_amat`, `nombre`, `sexo`, `estado_civil`, `cod_dist`) VALUES
('gjhgj', 'ghjg', 'jgjg', 'jgjhgj', 'hgjh', 45),
('rgr', 'grgrgrrg', 'rgr', 'rg', 'rg', 45),
('uku', 'kuk', 'ukuk', 'ukuk', 'uk', 45),
('o', 'o', 'e', 'e', 'e', 45);

-- --------------------------------------------------------

--
-- Table structure for table `sanciones`
--

CREATE TABLE `sanciones` (
  `cod_sancion` int(6) NOT NULL,
  `descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanciones`
--

INSERT INTO `sanciones` (`cod_sancion`, `descripcion`) VALUES
(2, 'jalado'),
(4, 'funado'),
(3, 'kkkk');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
