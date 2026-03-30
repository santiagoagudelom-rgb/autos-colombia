-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-03-2026 a las 01:35:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autos_colombia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celdas`
--

CREATE TABLE `celdas` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `estado` enum('libre','ocupada') DEFAULT 'libre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `celdas`
--

INSERT INTO `celdas` (`id`, `numero`, `estado`) VALUES
(1, 1, 'libre'),
(2, 2, 'libre'),
(3, 3, 'libre'),
(4, 4, 'libre'),
(5, 5, 'libre'),
(6, 6, 'libre'),
(7, 7, 'libre'),
(8, 8, 'libre'),
(9, 9, 'libre'),
(10, 10, 'libre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `registro_id` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `estado` enum('pagado','pendiente') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `registro_id`, `valor`, `fecha_pago`, `estado`) VALUES
(4, 7, 1.00, '2026-03-30 18:14:45', 'pagado'),
(5, 9, 100000.00, '2026-03-30 18:15:18', 'pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `vehiculo_id` int(11) DEFAULT NULL,
  `celda_id` int(11) DEFAULT NULL,
  `hora_entrada` datetime DEFAULT NULL,
  `hora_salida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `vehiculo_id`, `celda_id`, `hora_entrada`, `hora_salida`) VALUES
(7, 1, 1, '2026-03-30 01:37:37', NULL),
(8, 2, 2, '2026-03-30 01:37:37', NULL),
(9, 3, 3, '2026-03-30 01:37:37', NULL),
(10, 4, 4, '2026-03-30 01:37:37', NULL),
(11, 5, 5, '2026-03-30 01:37:37', NULL),
(12, 6, 6, '2026-03-30 01:37:37', NULL),
(13, 7, 7, '2026-03-30 01:37:37', NULL),
(14, 8, 8, '2026-03-30 01:37:37', NULL),
(15, 9, 9, '2026-03-30 01:37:37', NULL),
(16, 10, 10, '2026-03-30 01:37:37', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `documento`, `telefono`) VALUES
(1, 'a', '1', '1'),
(2, 'Juan Perez', '1001', '300000001'),
(3, 'Maria Gomez', '1002', '300000002'),
(4, 'Carlos Ruiz', '1003', '300000003'),
(5, 'Ana Torres', '1004', '300000004'),
(6, 'Luis Diaz', '1005', '300000005'),
(7, 'Sofia Rojas', '1006', '300000006'),
(8, 'Pedro Lopez', '1007', '300000007'),
(9, 'Laura Martinez', '1008', '300000008'),
(10, 'Andres Castro', '1009', '300000009'),
(11, 'Diana Vargas', '1010', '300000010'),
(12, 'b', '2', '2'),
(13, 'b', '2', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `placa`, `tipo`, `usuario_id`) VALUES
(1, 'a', 'a', 1),
(2, 'AAA111', NULL, 1),
(3, 'BBB222', NULL, 2),
(4, 'CCC333', NULL, 3),
(5, 'DDD444', NULL, 4),
(6, 'EEE555', NULL, 5),
(7, 'FFF666', NULL, 6),
(8, 'GGG777', NULL, 7),
(9, 'HHH888', NULL, 8),
(10, 'III999', NULL, 9),
(11, 'JJJ000', NULL, 10),
(12, 'bbb111', 'b', 1),
(19, 'CCC111', 'AA', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `celdas`
--
ALTER TABLE `celdas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registro_id` (`registro_id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculo_id` (`vehiculo_id`),
  ADD KEY `celda_id` (`celda_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `celdas`
--
ALTER TABLE `celdas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`registro_id`) REFERENCES `registros` (`id`);

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`id`),
  ADD CONSTRAINT `registros_ibfk_2` FOREIGN KEY (`celda_id`) REFERENCES `celdas` (`id`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
