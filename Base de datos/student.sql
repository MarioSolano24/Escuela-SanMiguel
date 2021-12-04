-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2021 a las 07:21:01
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `student`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_info`
--

CREATE TABLE `student_info` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `roll` int(6) NOT NULL,
  `class` varchar(7) NOT NULL,
  `city` varchar(150) NOT NULL,
  `pcontact` varchar(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `student_info`
--

INSERT INTO `student_info` (`id`, `name`, `roll`, `class`, `city`, `pcontact`, `photo`, `datetime`) VALUES
(59, 'Arvin Solano Cruz ', 19920057, 'Quinto', 'San Miguel Copala', '9536783909', '199200572021-12-04-12-48.jpg', '2021-12-04 06:12:48'),
(60, 'Milan Sandoval Marti', 19920058, 'Primero', 'Constancia del Rosario', '9518906754', '199200582021-12-04-12-27.jpg', '2021-12-04 06:13:27'),
(61, 'Armando Lopez Garcia', 19920022, 'Segundo', 'Putla villa de Guerrero', '9511230956', '199200222021-12-04-12-01.jpg', '2021-12-04 06:14:01'),
(62, 'Maricela Rafael Cruz', 18920078, 'Quinto', 'Cd de Mexico', '5568970912', '189200782021-12-04-12-16.jpg', '2021-12-04 06:15:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `status` varchar(12) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `photo`, `status`, `datetime`) VALUES
(21, 'Mario Solano Cruz ', 'solano@gmail.com', 'mario97', 'c42a54b24089898a208cd520efa47bf79141330d', 'mario9714-11-21-11-20211637357143217.png', 'activo', '2020-08-14 15:00:09'),
(24, 'Isaac Solano', 'Isaac@voaxaca.com', 'IsaacSolano23', 'd5720e3c62156e9c86b6aae6f6ff571156c88cf4', 'IsaacSolano23.jpg', 'activo', '2021-12-04 03:23:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
