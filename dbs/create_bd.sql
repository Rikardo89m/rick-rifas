-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2023 a las 21:06:42
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rifas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_data_usuarios`
--

CREATE TABLE `tbl_data_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rifa_enero`
--

CREATE TABLE `tbl_rifa_enero` (
  `numero_rifa` varchar(5) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT '1' COMMENT '1 = libre\n2 = apartado\n3 = confirmado/pagado',
  `fecha_apartado` date DEFAULT NULL,
  `fecha_confirmado` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_rifa_enero`
--

INSERT INTO `tbl_rifa_enero` (`numero_rifa`, `id_usuario`, `estado`, `fecha_apartado`, `fecha_confirmado`) VALUES
('00001', NULL, '2', NULL, NULL),
('00002', NULL, '1', NULL, NULL),
('00003', NULL, '1', NULL, NULL),
('00004', NULL, '1', NULL, NULL),
('00005', NULL, '1', NULL, NULL),
('00006', NULL, '1', NULL, NULL),
('00007', NULL, '1', NULL, NULL),
('00008', NULL, '1', NULL, NULL),
('00009', NULL, '1', NULL, NULL),
('00010', NULL, '1', NULL, NULL),
('00011', NULL, '1', NULL, NULL),
('00012', NULL, '1', NULL, NULL),
('00013', NULL, '1', NULL, NULL),
('00014', NULL, '1', NULL, NULL),
('00015', NULL, '1', NULL, NULL),
('00016', NULL, '1', NULL, NULL),
('00017', NULL, '1', NULL, NULL),
('00018', NULL, '1', NULL, NULL),
('00019', NULL, '1', NULL, NULL),
('00020', NULL, '1', NULL, NULL),
('00021', NULL, '1', NULL, NULL),
('00022', NULL, '1', NULL, NULL),
('00023', NULL, '1', NULL, NULL),
('00024', NULL, '1', NULL, NULL),
('00025', NULL, '1', NULL, NULL),
('00026', NULL, '1', NULL, NULL),
('00027', NULL, '1', NULL, NULL),
('00028', NULL, '1', NULL, NULL),
('00029', NULL, '1', NULL, NULL),
('00030', NULL, '1', NULL, NULL),
('00031', NULL, '1', NULL, NULL),
('00032', NULL, '1', NULL, NULL),
('00033', NULL, '1', NULL, NULL),
('00034', NULL, '1', NULL, NULL),
('00035', NULL, '1', NULL, NULL),
('00036', NULL, '1', NULL, NULL),
('00037', NULL, '1', NULL, NULL),
('00038', NULL, '1', NULL, NULL),
('00039', NULL, '1', NULL, NULL),
('00040', NULL, '1', NULL, NULL),
('00041', NULL, '1', NULL, NULL),
('00042', NULL, '1', NULL, NULL),
('00043', NULL, '1', NULL, NULL),
('00044', NULL, '1', NULL, NULL),
('00045', NULL, '1', NULL, NULL),
('00046', NULL, '1', NULL, NULL),
('00047', NULL, '1', NULL, NULL),
('00048', NULL, '1', NULL, NULL),
('00049', NULL, '1', NULL, NULL),
('00050', NULL, '1', NULL, NULL),
('00051', NULL, '1', NULL, NULL),
('00052', NULL, '1', NULL, NULL),
('00053', NULL, '1', NULL, NULL),
('00054', NULL, '1', NULL, NULL),
('00055', NULL, '1', NULL, NULL),
('00056', NULL, '1', NULL, NULL),
('00057', NULL, '1', NULL, NULL),
('00058', NULL, '1', NULL, NULL),
('00059', NULL, '1', NULL, NULL),
('00060', NULL, '1', NULL, NULL),
('00061', NULL, '1', NULL, NULL),
('00062', NULL, '1', NULL, NULL),
('00063', NULL, '1', NULL, NULL),
('00064', NULL, '1', NULL, NULL),
('00065', NULL, '1', NULL, NULL),
('00066', NULL, '1', NULL, NULL),
('00067', NULL, '1', NULL, NULL),
('00068', NULL, '1', NULL, NULL),
('00069', NULL, '1', NULL, NULL),
('00070', NULL, '1', NULL, NULL),
('00071', NULL, '1', NULL, NULL),
('00072', NULL, '1', NULL, NULL),
('00073', NULL, '1', NULL, NULL),
('00074', NULL, '1', NULL, NULL),
('00075', NULL, '1', NULL, NULL),
('00076', NULL, '1', NULL, NULL),
('00077', NULL, '1', NULL, NULL),
('00078', NULL, '1', NULL, NULL),
('00079', NULL, '1', NULL, NULL),
('00080', NULL, '1', NULL, NULL),
('00081', NULL, '1', NULL, NULL),
('00082', NULL, '1', NULL, NULL),
('00083', NULL, '1', NULL, NULL),
('00084', NULL, '1', NULL, NULL),
('00085', NULL, '1', NULL, NULL),
('00086', NULL, '1', NULL, NULL),
('00087', NULL, '1', NULL, NULL),
('00088', NULL, '1', NULL, NULL),
('00089', NULL, '1', NULL, NULL),
('00090', NULL, '1', NULL, NULL),
('00091', NULL, '1', NULL, NULL),
('00092', NULL, '1', NULL, NULL),
('00093', NULL, '1', NULL, NULL),
('00094', NULL, '1', NULL, NULL),
('00095', NULL, '1', NULL, NULL),
('00096', NULL, '1', NULL, NULL),
('00097', NULL, '1', NULL, NULL),
('00098', NULL, '1', NULL, NULL),
('00099', NULL, '1', NULL, NULL),
('00100', NULL, '1', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_data_usuarios`
--
ALTER TABLE `tbl_data_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `tbl_rifa_enero`
--
ALTER TABLE `tbl_rifa_enero`
  ADD PRIMARY KEY (`numero_rifa`),
  ADD UNIQUE KEY `unq_tbl_rifa_enero_id_usuario` (`id_usuario`);

--
-- Restricciones para tablas volcadas
--
--
-- Filtros para la tabla `tbl_data_usuarios`
--
ALTER TABLE `tbl_data_usuarios`
  ADD CONSTRAINT `fk_tbl_data_usuarios_tbl_rifa_enero` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_rifa_enero` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
