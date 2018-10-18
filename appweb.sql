-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2018 a las 03:59:14
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

--
-- Volcado de datos para la tabla `tblclientes`
--

INSERT INTO `tblclientes` (`pkid`, `razonsocial`, `nombrecomercial`, `nit`, `telefono`, `direccion`, `correo`, `tipodecliente`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Los Pepitos', 'Pepitos', '123456789321', 300589456, 'la casa', 'pepitos@lospepitos.com', 16574, '2018-10-17 23:21:10', '2018-10-17 23:21:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `pkid` int(11) NOT NULL,
  `ref` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `categoria` int(11) NOT NULL,
  `precio` float NOT NULL,
  `poriva` int(2) NOT NULL,
  `porarancel` int(2) NOT NULL,
  `foto1` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `foto2` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`pkid`, `ref`, `nombre`, `descripcion`, `categoria`, `precio`, `poriva`, `porarancel`, `foto1`, `foto2`, `fechaingreso`, `fechamodificacion`) VALUES
(1, '00001111', 'radio', '<p>\n	radio inalambrica</p>\n', 1, 200000, 5, 2, '379a2-radio.jpeg', '', '2018-10-18 00:50:18', '2018-10-18 00:50:18'),
(2, '055445248', 'celular', '<p>\n	celular bonito</p>\n', 1, 800000, 5, 2, '34e5a-celular.jpg', '', '2018-10-18 01:30:45', '2018-10-18 01:30:45'),
(3, '3549873', 'potatil', '<p>\n	computador portatil</p>\n', 1, 2500000, 5, 2, '88b12-portatil.jpg', '', '2018-10-18 01:52:07', '2018-10-18 01:52:07'),
(4, '698746513', 'torre', '<p>\n	torre de computador de escritorio</p>\n', 1, 1200000, 5, 2, '21b18-torre.jpeg', '', '2018-10-18 01:52:58', '2018-10-18 01:52:58'),
(5, '254587', 'pantalla', '<p>\n	pantalla p&agrave;ra computador de escritorio</p>\n', 1, 1200000, 5, 2, 'd2042-pantalla.jpg', '', '2018-10-18 01:53:52', '2018-10-18 01:53:52'),
(6, '36856541', 'computador', '<p>\n	computador de escritorio</p>\n', 1, 2800000, 5, 2, '23027-pc.jpeg', '', '2018-10-18 01:54:27', '2018-10-18 01:54:27'),
(7, '65432189', 'tv', '<p>\n	televisor pantalla plana</p>\n', 1, 3000000, 5, 2, 'b7eb6-tv.jpg', '', '2018-10-18 01:55:02', '2018-10-18 01:55:02'),
(8, '36845212', 'tenis', '<p>\n	zapatos deportivos</p>\n', 1, 200000, 3, 1, '19fe5-zapatos.jpeg', '', '2018-10-18 01:55:51', '2018-10-18 01:55:51'),
(9, '0121351', 'pantalon', '<p>\n	ropa</p>\n', 1, 50000, 3, 1, '3cced-pantalon.jpeg', '', '2018-10-18 01:56:35', '2018-10-18 01:56:35'),
(10, '5842155', 'camisa', '<p>\n	ropa</p>\n', 1, 30000, 3, 1, 'cfe44-camisa.jpg', '', '2018-10-18 01:57:06', '2018-10-18 01:57:06');

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
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`pkid`);

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
  MODIFY `pkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `pkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
