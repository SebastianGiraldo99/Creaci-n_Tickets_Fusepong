-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 23:22:06
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fusepong`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compañia`
--

CREATE TABLE `compañia` (
  `nit` int(11) NOT NULL,
  `nombres` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `compañia`
--

INSERT INTO `compañia` (`nit`, `nombres`, `telefono`, `direccion`, `email`) VALUES
(321654, 'PepitoSoft', '9999875', 'Av sierra', 'pepitosoft@email.com'),
(987321, 'MetallicaSoft', '7777741', 'Av Siempre Viva', 'metallicasoft@email.com'),
(654789, 'Alcantara dev', '5552365', 'Av circuvalar', 'Alcantaradev@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia`
--

CREATE TABLE `historia` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `hisotira_u` int(11) NOT NULL,
  `tickets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `hisotira_u` int(11) NOT NULL,
  `estado` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `comentarios` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `password` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombres` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `identificacion` int(11) NOT NULL,
  `compañia` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historia`
--
ALTER TABLE `historia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
