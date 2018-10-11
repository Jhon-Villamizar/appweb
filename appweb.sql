-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2018 a las 03:59:39
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcategoriasdeproductos`
--

CREATE TABLE `tblcategoriasdeproductos` (
  `id` int(9) NOT NULL COMMENT 'id ai',
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre cliente',
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de reg auto',
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fecha de mod al update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='tabla que almacena los tipos de clientes';

--
-- Volcado de datos para la tabla `tblcategoriasdeproductos`
--

INSERT INTO `tblcategoriasdeproductos` (`id`, `nombre`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Tecnologia', '2018-10-04 01:14:18', '2018-10-04 01:14:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclientes`
--

CREATE TABLE `tblclientes` (
  `pkid` int(11) NOT NULL,
  `razonsocial` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombrecomercial` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipodecliente` int(11) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='almacena los clientes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltiposdeclientes`
--

CREATE TABLE `tbltiposdeclientes` (
  `id` int(9) NOT NULL COMMENT 'id ai',
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre cliente',
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de reg auto',
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fecha de mod al update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='tabla que almacena los tipos de clientes';

--
-- Volcado de datos para la tabla `tbltiposdeclientes`
--

INSERT INTO `tbltiposdeclientes` (`id`, `nombre`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Esporadico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Potencial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Suspendido por cartera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Activo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Cobro prejuridico', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltiposusuarios`
--

CREATE TABLE `tbltiposusuarios` (
  `id` int(9) NOT NULL COMMENT 'id ai',
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre usuario',
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de reg auto',
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fecha de mod al update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='tabla que almacena los tipos de usuarios';

--
-- Volcado de datos para la tabla `tbltiposusuarios`
--

INSERT INTO `tbltiposusuarios` (`id`, `nombre`, `fechaingreso`, `fechamodificacion`) VALUES
(3, 'venta', '2018-09-19 23:36:15', '2018-09-19 23:36:15'),
(4, 'venta mayorista', '2018-09-19 23:36:15', '2018-09-19 23:41:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `pkid` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `whatsapp` varchar(20) COLLATE utf8_spanish_ci NOT NULL COMMENT 'numero de whatsapp',
  `skype` varchar(20) COLLATE utf8_spanish_ci NOT NULL COMMENT 'acceso a skype',
  `foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL COMMENT 'foto del usuario',
  `tipodeusuario` int(11) NOT NULL COMMENT 'clave forenea de tipo de usuario',
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de ingreso',
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de modificacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblusuarios`
--

INSERT INTO `tblusuarios` (`pkid`, `nombre`, `usuario`, `clave`, `telefono`, `whatsapp`, `skype`, `foto`, `tipodeusuario`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'PEPITO PEREZ', 'pepito@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '3216549870', '3216549870', 'pepitope', 'afbfc-kakashi.jpg', 4, '2018-10-04 01:47:59', '2018-10-04 01:47:59'),
(2, 'juanita', 'juanita@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '3102589461', '3102589461', 'juanita', '1c23c-perros.jpg', 3, '2018-10-11 01:11:57', '2018-10-11 01:11:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblcategoriasdeproductos`
--
ALTER TABLE `tblcategoriasdeproductos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tblclientes`
--
ALTER TABLE `tblclientes`
  ADD PRIMARY KEY (`pkid`),
  ADD UNIQUE KEY `nit` (`nit`);

--
-- Indices de la tabla `tbltiposdeclientes`
--
ALTER TABLE `tbltiposdeclientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tbltiposusuarios`
--
ALTER TABLE `tbltiposusuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`pkid`),
  ADD UNIQUE KEY `usuario` (`usuario`,`skype`,`whatsapp`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblcategoriasdeproductos`
--
ALTER TABLE `tblcategoriasdeproductos`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'id ai', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblclientes`
--
ALTER TABLE `tblclientes`
  MODIFY `pkid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltiposdeclientes`
--
ALTER TABLE `tbltiposdeclientes`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'id ai', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbltiposusuarios`
--
ALTER TABLE `tbltiposusuarios`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'id ai', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `pkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
