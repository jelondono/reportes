-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-08-2016 a las 04:10:00
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo_pdf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usu` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Pais` varchar(30) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cod_usu`, `nombre`, `Apellido`, `Pais`, `edad`, `dni`) VALUES
(1, 'leonardo', 'zapata', 'Perú', 20, '12345678'),
(2, 'lennin ', 'artezano', 'Perú', 16, '87654321'),
(3, 'juan', 'pepito', 'argentina', 20, '87654367'),
(4, 'Juana', 'Magdalena', 'Argentina', 23, '87954362'),
(5, 'henrique', 'filomeno', 'Mexico', 25, '89765678'),
(6, 'pedro', 'infante', 'Mexico', 70, '78965432'),
(7, 'carlos', 'zabala', 'Colombia', 26, '12346598'),
(8, 'Cesar', 'zarate', 'Colombia', 27, '89765432');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cod_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
