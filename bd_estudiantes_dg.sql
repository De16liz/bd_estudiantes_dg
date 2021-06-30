-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2021 a las 19:45:15
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_estudiantes_dg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendices_dg`
--

CREATE TABLE `aprendices_dg` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `fecha_nacimiento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aprendices_dg`
--

INSERT INTO `aprendices_dg` (`id`, `nombre`, `genero`, `fecha_nacimiento`) VALUES
(1, 'Deimi', 'femenino', '1990-03-28 12:14:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencias_dg`
--

CREATE TABLE `competencias_dg` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `competencias_dg`
--

INSERT INTO `competencias_dg` (`id`, `nombre`) VALUES
(1, 'cultura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_aprendices_dg`
--

CREATE TABLE `notas_aprendices_dg` (
  `id` bigint(20) NOT NULL,
  `id_aprendices` bigint(20) NOT NULL,
  `id_competencias` bigint(20) NOT NULL,
  `notas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendices_dg`
--
ALTER TABLE `aprendices_dg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `competencias_dg`
--
ALTER TABLE `competencias_dg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas_aprendices_dg`
--
ALTER TABLE `notas_aprendices_dg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aprendices` (`id_aprendices`),
  ADD KEY `idx_competencias` (`id_competencias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprendices_dg`
--
ALTER TABLE `aprendices_dg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `competencias_dg`
--
ALTER TABLE `competencias_dg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas_aprendices_dg`
--
ALTER TABLE `notas_aprendices_dg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `notas_aprendices_dg`
--
ALTER TABLE `notas_aprendices_dg`
  ADD CONSTRAINT `fk_competencias` FOREIGN KEY (`id_competencias`) REFERENCES `competencias_dg` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notas_aprendices_dg_ibfk_1` FOREIGN KEY (`id_aprendices`) REFERENCES `aprendices_dg` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
