-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2021 a las 05:49:11
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `especies_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `id` int(9) UNSIGNED NOT NULL,
  `especie` varchar(50) NOT NULL,
  `familia` varchar(100) NOT NULL,
  `nombre_comun` varchar(100) NOT NULL,
  `proyecto` varchar(15) DEFAULT NULL,
  `identificador` varchar(25) NOT NULL,
  `departamento` varchar(25) NOT NULL,
  `municipio` varchar(25) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `latitud` varchar(50) NOT NULL,
  `longitud` varchar(50) NOT NULL,
  `fecha_captura` date NOT NULL,
  `autor` varchar(100) NOT NULL,
  `ecorregion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`id`, `especie`, `familia`, `nombre_comun`, `proyecto`, `identificador`, `departamento`, `municipio`, `localidad`, `latitud`, `longitud`, `fecha_captura`, `autor`, `ecorregion`) VALUES
(1, 'Loligo vulgaris', 'Loliginidae', 'calamar', 'nuevo proyecto', '1243', 'santa marta ', 'magdalena', 'taganga', '12232', '313242', '2021-07-26', 'Cristian', 'colombia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
