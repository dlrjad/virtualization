-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2017 a las 12:14:54
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tuto_virtualization`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cluster`
--

CREATE TABLE `cluster` (
  `id_cluster` bigint(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `id_plataforma` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cluster`
--

INSERT INTO `cluster` (`id_cluster`, `nombre`, `id_plataforma`) VALUES
(1, 'Oracle RAC', 1),
(2, 'VMware HA', 2),
(3, 'VMware DRS', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` bigint(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id_plataforma`, `nombre`) VALUES
(1, 'vPlex'),
(2, 'VMware ESX');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cluster`
--
ALTER TABLE `cluster`
  ADD PRIMARY KEY (`id_cluster`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cluster`
--
ALTER TABLE `cluster`
  MODIFY `id_cluster` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cluster`
--
ALTER TABLE `cluster`
  ADD CONSTRAINT `cluster_ibfk_1` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id_plataforma`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
