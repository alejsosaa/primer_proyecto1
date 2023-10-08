-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2023 a las 23:14:22
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sosa_a`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(5, 'Hector', 'Sosa', 'hector', 'hectorsosa@gmail.com', '$2y$10$MUtv10BlD3GTAfuQzpPCOOVZWRroIChvayQqsk4JVgGf9D93L.ahy', 2, 'NO'),
(6, 'Alejandro ', 'Sosa', 'alejandrososa', 'alejandrososa@gmail.com', '$2y$10$LyGq59e6xSkUDNFSth65qOZF8YfER7G2rVB.sWQyUrxgKqyX1KKyK', 2, 'NO'),
(7, 'Osvaldo', 'Gonzalez', 'osvaldogonzalez', 'osvaldogonzalez@gmail.com', '$2y$10$HbH3Yic1VpwAzElhEDGZSOiey2mtpgqBLDnT6rPOYiOu671iaA9Pi', 2, 'NO'),
(8, 'Alejandro ', 'Sosa', 'alesosa', 'alesosa.has@gmail.com', '$2y$10$E2UOzrLso7zcC0M9083ZmucvEGtcv4qrCJf0qm8Mqcjb7FoaLuAmS', 2, 'NO'),
(9, 'Alejandro', 'Sosa', 'Alecliente', 'alecliente@gmail.com', '$2y$10$ESQlFZoYYEKRupTOMAfn/uvC0OjsxG87z/cNEclt4UfjPXmRwr.0u', 2, 'NO'),
(10, 'Alejandro', 'Sosa', 'aleadmin', 'aleadmin@gmail.com', '$2y$10$Yz450Uv5Caj3b0362yPIsOPVva3AQR.aRafq7Y0ROMenCydOVVvD.', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `perfil_id` (`perfil_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
