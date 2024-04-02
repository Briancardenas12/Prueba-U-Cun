-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2024 a las 05:14:32
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlestudiantes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `ID_ESTUDIANTE` int(15) NOT NULL,
  `NOMBRE` varchar(60) NOT NULL,
  `APELLIDO` varchar(60) NOT NULL,
  `DOCUMENTO` varchar(12) NOT NULL,
  `CORREO` varchar(60) NOT NULL,
  `MATERIA` varchar(30) NOT NULL,
  `DOCENTE` varchar(60) NOT NULL,
  `PROMEDIO` int(3) NOT NULL,
  `FECHA_REGISTRO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`ID_ESTUDIANTE`, `NOMBRE`, `APELLIDO`, `DOCUMENTO`, `CORREO`, `MATERIA`, `DOCENTE`, `PROMEDIO`, `FECHA_REGISTRO`) VALUES
(1, 'Diego', 'Palacios', '1004321424', 'diego@gmail.com', 'Ingles', 'Juan Zuluaga', 100, '2024-04-02'),
(3, 'Martha', 'Perez', '9876543210', 'martha@gmail.com', 'Matemáticas', 'Evelin Gutierrez', 90, '2024-04-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `ID_MATERIA` int(15) NOT NULL,
  `MATERIA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`ID_MATERIA`, `MATERIA`) VALUES
(1, 'Inglés'),
(3, 'Física'),
(5, 'Matemáticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_USUARIO` int(15) NOT NULL,
  `NOMBRE` varchar(60) NOT NULL,
  `APELLIDO` varchar(60) NOT NULL,
  `USUARIO` varchar(40) NOT NULL,
  `PASSWORD` varchar(80) NOT NULL,
  `PERFIL` varchar(30) NOT NULL,
  `ESTADO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_USUARIO`, `NOMBRE`, `APELLIDO`, `USUARIO`, `PASSWORD`, `PERFIL`, `ESTADO`) VALUES
(1, 'Juan', 'Zuluega', 'jzuluaga', '12345', 'Docente', 'Activo'),
(3, 'Evelin', 'Gutierrez', 'elopez', '12345', 'Docente', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`ID_ESTUDIANTE`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`ID_MATERIA`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `ID_ESTUDIANTE` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `ID_MATERIA` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_USUARIO` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
