-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2024 a las 14:37:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mis_productos`
--

CREATE TABLE `mis_productos` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mis_productos`
--

INSERT INTO `mis_productos` (`id`, `name`, `description`, `price`, `status`, `imagen`) VALUES
(1, 'tortitas de avena con plátano', 'Tortas de avena con rebanadas de platano, con trozos de frutilla y un toque de miel', 15000.00, '1', 'https://content.elmueble.com/medio/2020/01/14/tortitas-de-avena-con-platano_00000000_230215171241_894x1200.jpg'),
(2, 'sandwich de tofu de finas hierbas', 'Sandwich con tofu marinado, junto a finas hierbas para acompañar', 25300.00, '1', 'https://content.elmueble.com/medio/2020/01/14/sandwich-de-tofu-de-finas-hierbas_00000000_230215171311_900x1200.jpg'),
(3, 'yogurt casero de coco con granada', 'Yogurt griego casero con coco rallado y frutos de granada', 25300.00, '1', 'https://content.elmueble.com/medio/2020/07/19/yogur-casero-de-coco-con-granada_00000000_230215171317_720x946.jpg'),
(4, 'salmon con arroz y esparragos', 'Salmon a la plancha con arroz y esparragos marinados ', 15000.00, '1', 'https://hips.hearstapps.com/hmg-prod/images/salmon-a-la-plancha-con-arroz-y-esparragos-1550228949.jpg?crop=0.9188361408882083xw:1xh;center,top&resize=980:*'),
(5, 'brocheta de calabacin y pollo', 'brochetas de calabacin con marinado a lo pobre junto a pollo al limón', 25300.00, '1', 'https://hips.hearstapps.com/hmg-prod/images/brocheta-de-calabacin-y-pollo-al-limon-1538049238.jpg?crop=1xw:1xh;center,top&resize=980:*'),
(6, 'Penne con salsa de champiñones', 'Pasta penne con salsa hecha a base de champiñones y especias', 25300.00, '1', 'https://jetextramar.com/wp-content/uploads/2022/09/receta-de-crema-de-queso-snel-2000x1333.jpg'),
(7, 'Magdalena de keto de arandanos', '4 porciones de pequeñas magdalenas de keto y arandanos', 25300.00, '1', 'https://hips.hearstapps.com/hmg-prod/images/keto-blueberry-muffins-healthy-breakfast-recipes-1605266519.jpg?crop=1xw:1xh;center,top&resize=980:*'),
(8, 'Donas de chocolate', 'Donas de chocolate caseras, junto con topping a eleccion', 25300.00, '1', 'https://hips.hearstapps.com/hmg-prod/images/delish-190619-air-fryer-donuts-305-portrait-pf-1561758031.jpg?crop=0.9997369113391213xw:1xh;center,top&resize=980:*'),
(9, 'Cannolis sicilianos', 'tubos de masa frita, rellenos de un delicioso y cremoso relleno a base de riccota', 25300.00, '1', 'https://images.hola.com/imagenes/cocina/recetas/20201126180051/cannoli-siciliani/0-894-510/cannoli-age-t.jpg?tx=w_1200'),
(10, 'vasitos de kiwi fresco y cremoso de coco con base de granola', 'Vasitos con kiwi fresco, cremoso de coco y base de granola', 7000.00, '1', 'https://content.elmueble.com/medio/2022/07/06/vasitos-de-kiwi-fresco-y-cremoso-de-coco-con-base-de-granola_00000000_231108123747_1200x810.jpg'),
(11, 'macedonia de piña y grosellas', 'Macedonia con trozos de piña y grosellas frescas', 6000.00, '1', 'https://content.elmueble.com/medio/2023/04/20/macedonia-de-pina-y-grosellas_00000000_240110153729_922x1200.jpg'),
(12, 'tortitas de avena con plátano', 'Tortas de avena con rebanadas de plátano, con trozos de frutilla y un toque de miel', 6500.00, '1', 'https://content.elmueble.com/medio/2020/01/14/tortitas-de-avena-con-platano_00000000_230215171241_894x1200.jpg'),
(13, 'pancakes con sorbete de limón y frutos del bosque', 'Pancakes acompañados de sorbete de limón y frutos del bosque', 8000.00, '1', 'https://content.elmueble.com/medio/2022/07/06/pancakes-con-sorbete-de-limon-y-frutos-del-bosque_00000000_230215171247_914x1200.jpg'),
(14, 'sándwich portobello', 'Sándwich con portobello a la parrilla y verduras frescas', 7500.00, '1', 'https://content.elmueble.com/medio/2020/07/19/sandwich-portobello_00000000_230215171325_720x779.jpg'),
(15, 'compota de manzana con queso fresco', 'Compota de manzana acompañada de queso fresco', 7000.00, '1', 'https://content.elmueble.com/medio/2022/07/06/compota-de-manzana-con-queso-fresco_00000000_230215171253_1200x1200.jpg'),
(16, 'tostada de tortilla y salmón', 'Tostada con tortilla y salmón ahumado', 7500.00, '1', 'https://content.elmueble.com/medio/2020/07/17/tostada-de-tortilla-y-salmon_00000000_230228152432_720x960.jpg'),
(17, 'albóndigas de cerdo mixtas', 'Albóndigas de cerdo con una mezcla de especias', 17000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2024/01/ALBONDGAS.jpg'),
(18, 'pasta con salsa boloñesa mixta', 'Pasta acompañada de salsa boloñesa mixta', 15000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2024/01/BOLOÑESA.jpg'),
(19, 'baos de cerdo', 'Baos rellenos de cerdo marinado', 18000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2024/01/BAOS.jpg'),
(20, 'tagliatelle con callampas y ajo', 'Tagliatelle con salsa de callampas y ajo', 16000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2024/01/TAGILATELLE.png'),
(21, 'pollo kung pao', 'Pollo salteado al estilo Kung Pao', 20000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2023/12/POLLO-KUNG-PAO.jpg'),
(22, 'lomo de cerdo al horno agridulce', 'Lomo de cerdo al horno con salsa agridulce', 19000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2023/11/LOMO-DE-CERDO.jpg'),
(23, 'pollo a la naranja', 'Pollo a la naranja con una salsa cítrica', 18000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2023/09/POLLO-NARANJA.jpg'),
(24, 'boeuf bourguignon', 'Estofado de carne de res al estilo Bourguignon', 20000.00, '1', 'https://www.gourmet.cl/wp-content/uploads/2023/05/boeuf-bourguignon-web-570x458.jpg'),
(25, 'coulant de dos chocolates', 'Coulant con relleno de dos chocolates', 9000.00, '1', 'https://images.hola.com/imagenes/cocina/recetas/20200108157687/receta-coulant-dos-chocolates/0-766-280/coulant-dos-chocolates-t.jpg?tx=w_1200'),
(26, 'new york cheesecake', 'Cheesecake estilo New York', 9500.00, '1', 'https://images.hola.com/imagenes/cocina/noticiaslibros/20211112199385/recetas-postres-internacionales/1-18-433/ny-cheesecake-a.jpg'),
(27, 'tiramisu', 'Clásico postre italiano con capas de café y mascarpone', 10000.00, '1', 'https://images.hola.com/imagenes/cocina/recetas/20200220161175/receta-tiramisu-super-facil/0-786-632/tiramisu-age-t.jpg?tx=w_1200'),
(28, 'tarta de zanahoria', 'Tarta de zanahoria con cobertura de queso crema', 8000.00, '1', 'https://images.hola.com/imagenes/cocina/recetas/20200320163627/tarta-zanahoria-levadura-madre/0-800-969/tarta-zanahoria-t.jpg?tx=w_1200'),
(29, 'strudel de manzana', 'Strudel de manzana con masa filo', 8500.00, '1', 'https://content.elmueble.com/medio/2020/07/19/sandwich-portobello_00000000_230215171325_720x779.jpg'),
(30, 'crème brûlée', 'Postre francés con crema y caramelo duro', 10000.00, '1', 'https://images.hola.com/imagenes/cocina/recetas/20200206159920/creme-brulee-para-san-valentin/0-779-228/creme-brulee-san-valentin-t.jpg?tx=w_1200'),
(31, 'galaktoboureko', 'Postre griego de masa filo con crema de sémola', 9000.00, '1', 'https://images.hola.com/imagenes/cocina/recetas/20210217184540/pastel-de-leche-griego/0-920-807/tarta-age-t.jpg?tx=w_1200'),
(32, 'panna cotta de mango', 'Panna cotta con sabor a mango fresco', 9500.00, '1', 'https://i.pinimg.com/736x/0b/ee/2e/0bee2e0847d6a85dba828fceb9efe128.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id`, `user_id`, `total_price`, `created`, `modified`, `status`) VALUES
(63, 1, 50600.00, '2024-06-27 01:56:58', '2024-06-27 01:56:58', '1'),
(64, 1, 15000.00, '2024-06-27 01:58:08', '2024-06-27 01:58:08', '1'),
(65, 1, 15000.00, '2024-06-27 01:59:34', '2024-06-27 01:59:34', '1'),
(66, 1, 15000.00, '2024-07-01 00:23:28', '2024-07-01 00:23:28', '1'),
(67, 1, 15000.00, '2024-07-01 00:24:02', '2024-07-01 00:24:02', '1'),
(68, 1, 15000.00, '2024-07-01 00:37:45', '2024-07-01 00:37:45', '1'),
(69, 1, 15000.00, '2024-07-01 00:37:58', '2024-07-01 00:37:58', '1'),
(70, 1, 15000.00, '2024-07-01 00:38:12', '2024-07-01 00:38:12', '1'),
(71, 1, 25300.00, '2024-07-01 00:39:23', '2024-07-01 00:39:23', '1'),
(72, 1, 15000.00, '2024-07-01 00:43:55', '2024-07-01 00:43:55', '1'),
(73, 1, 15000.00, '2024-07-01 00:46:26', '2024-07-01 00:46:26', '1'),
(74, 1, 15000.00, '2024-07-01 00:49:00', '2024-07-01 00:49:00', '1'),
(75, 1, 25300.00, '2024-07-01 00:49:23', '2024-07-01 00:49:23', '1'),
(76, 1, 15000.00, '2024-07-01 00:50:01', '2024-07-01 00:50:01', '1'),
(77, 1, 25300.00, '2024-07-01 00:50:13', '2024-07-01 00:50:13', '1'),
(78, 11, 15000.00, '2024-07-01 01:04:49', '2024-07-01 01:04:49', '1'),
(79, 11, 15000.00, '2024-07-01 01:05:24', '2024-07-01 01:05:24', '1'),
(80, 1, 15000.00, '2024-07-01 01:10:14', '2024-07-01 01:10:14', '1'),
(81, 1, 40300.00, '2024-07-01 01:11:35', '2024-07-01 01:11:35', '1'),
(82, 11, 15000.00, '2024-07-01 01:12:59', '2024-07-01 01:12:59', '1'),
(83, 11, 25300.00, '2024-07-01 01:14:41', '2024-07-01 01:14:41', '1'),
(84, 11, 15000.00, '2024-07-01 01:16:53', '2024-07-01 01:16:53', '1'),
(85, 11, 25300.00, '2024-07-01 01:17:00', '2024-07-01 01:17:00', '1'),
(86, 12, 15000.00, '2024-07-01 01:23:24', '2024-07-01 01:23:24', '1'),
(87, 12, 15000.00, '2024-07-01 01:23:36', '2024-07-01 01:23:36', '1'),
(88, 11, 15000.00, '2024-07-01 01:32:29', '2024-07-01 01:32:29', '1'),
(89, 11, 15000.00, '2024-07-01 01:32:37', '2024-07-01 01:32:37', '1'),
(90, 11, 25300.00, '2024-07-01 01:33:24', '2024-07-01 01:33:24', '1'),
(91, 12, 15000.00, '2024-07-01 01:33:45', '2024-07-01 01:33:45', '1'),
(92, 12, 15000.00, '2024-07-01 01:34:58', '2024-07-01 01:34:58', '1'),
(93, 12, 30000.00, '2024-07-01 02:15:52', '2024-07-01 02:15:52', '1'),
(94, 12, 15000.00, '2024-07-01 02:18:09', '2024-07-01 02:18:09', '1'),
(95, 12, 25300.00, '2024-07-01 02:18:15', '2024-07-01 02:18:15', '1'),
(96, 12, 15000.00, '2024-07-01 02:18:22', '2024-07-01 02:18:22', '1'),
(97, 12, 45000.00, '2024-07-01 02:23:37', '2024-07-01 02:23:37', '1'),
(98, 12, 65600.00, '2024-07-01 02:23:57', '2024-07-01 02:23:57', '1'),
(99, 12, 15000.00, '2024-07-01 02:25:10', '2024-07-01 02:25:10', '1'),
(100, 12, 15000.00, '2024-07-01 02:25:50', '2024-07-01 02:25:50', '1'),
(101, 12, 15000.00, '2024-07-01 02:25:54', '2024-07-01 02:25:54', '1'),
(102, 12, 15000.00, '2024-07-01 02:26:07', '2024-07-01 02:26:07', '1'),
(103, 12, 15000.00, '2024-07-01 02:26:18', '2024-07-01 02:26:18', '1'),
(104, 1, 15000.00, '2024-07-01 02:26:29', '2024-07-01 02:26:29', '1'),
(105, 1, 15000.00, '2024-07-01 02:30:07', '2024-07-01 02:30:07', '1'),
(106, 1, 15000.00, '2024-07-01 02:30:19', '2024-07-01 02:30:19', '1'),
(107, 1, 15000.00, '2024-07-01 02:31:08', '2024-07-01 02:31:08', '1'),
(108, 1, 15000.00, '2024-07-01 02:31:57', '2024-07-01 02:31:57', '1'),
(109, 1, 15000.00, '2024-07-01 02:32:13', '2024-07-01 02:32:13', '1'),
(110, 1, 226800.00, '2024-07-01 02:42:10', '2024-07-01 02:42:10', '1'),
(111, 1, 25300.00, '2024-07-01 02:42:14', '2024-07-01 02:42:14', '1'),
(112, 1, 25300.00, '2024-07-01 02:51:57', '2024-07-01 02:51:57', '1'),
(113, 1, 15000.00, '2024-07-01 02:52:01', '2024-07-01 02:52:01', '1'),
(114, 1, 15000.00, '2024-07-01 02:52:52', '2024-07-01 02:52:52', '1'),
(115, 1, 15000.00, '2024-07-01 02:53:23', '2024-07-01 02:53:23', '1'),
(116, 1, 15000.00, '2024-07-01 02:53:27', '2024-07-01 02:53:27', '1'),
(117, 12, 15000.00, '2024-07-01 02:59:35', '2024-07-01 02:59:35', '1'),
(118, 12, 15000.00, '2024-07-01 03:00:57', '2024-07-01 03:00:57', '1'),
(119, 12, 15000.00, '2024-07-01 03:04:29', '2024-07-01 03:04:29', '1'),
(123, 11, 60000.00, '2024-07-01 03:09:58', '2024-07-01 03:09:58', '1'),
(124, 11, 15000.00, '2024-07-01 03:10:36', '2024-07-01 03:10:36', '1'),
(125, 11, 25300.00, '2024-07-01 03:12:13', '2024-07-01 03:12:13', '1'),
(126, 11, 15000.00, '2024-07-01 03:16:26', '2024-07-01 03:16:26', '1'),
(127, 14, 25300.00, '2024-07-01 03:16:37', '2024-07-01 03:16:37', '1'),
(128, 14, 40300.00, '2024-07-01 03:21:26', '2024-07-01 03:21:26', '1'),
(129, 14, 15000.00, '2024-07-01 03:22:57', '2024-07-01 03:22:57', '1'),
(130, 11, 15000.00, '2024-07-01 04:01:20', '2024-07-01 04:01:20', '1'),
(131, 11, 65600.00, '2024-07-01 04:02:04', '2024-07-01 04:02:04', '1'),
(132, 11, 15000.00, '2024-07-01 04:03:16', '2024-07-01 04:03:16', '1'),
(133, 11, 25300.00, '2024-07-01 04:49:04', '2024-07-01 04:49:04', '1'),
(134, 11, 15000.00, '2024-07-01 07:09:01', '2024-07-01 07:09:01', '1'),
(135, 11, 15000.00, '2024-07-01 07:10:27', '2024-07-01 07:10:27', '1'),
(136, 15, 9000.00, '2024-07-01 08:07:40', '2024-07-01 08:07:40', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_articulos`
--

CREATE TABLE `orden_articulos` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_articulos`
--

INSERT INTO `orden_articulos` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(68, 63, 2, 1),
(69, 63, 3, 1),
(70, 64, 1, 1),
(71, 65, 1, 1),
(72, 66, 1, 1),
(73, 67, 1, 1),
(74, 69, 1, 1),
(75, 70, 1, 1),
(76, 71, 5, 1),
(77, 72, 1, 1),
(78, 73, 1, 1),
(79, 74, 1, 1),
(80, 75, 2, 1),
(81, 76, 1, 1),
(82, 77, 2, 1),
(83, 78, 1, 1),
(84, 79, 1, 1),
(85, 80, 1, 1),
(86, 81, 2, 1),
(87, 81, 1, 1),
(88, 82, 1, 1),
(89, 83, 2, 1),
(90, 84, 1, 1),
(91, 85, 3, 1),
(92, 86, 1, 1),
(93, 87, 1, 1),
(94, 88, 1, 1),
(95, 89, 1, 1),
(96, 90, 2, 1),
(97, 91, 1, 1),
(98, 92, 1, 1),
(99, 93, 1, 2),
(100, 94, 1, 1),
(101, 95, 2, 1),
(102, 96, 1, 1),
(103, 97, 1, 3),
(104, 98, 1, 1),
(105, 98, 2, 2),
(106, 99, 1, 1),
(107, 100, 1, 1),
(108, 101, 1, 1),
(109, 102, 1, 1),
(110, 103, 1, 1),
(111, 104, 1, 1),
(112, 105, 1, 1),
(113, 106, 1, 1),
(114, 107, 1, 1),
(115, 108, 1, 1),
(116, 109, 1, 1),
(117, 110, 3, 2),
(118, 110, 2, 4),
(119, 110, 1, 5),
(120, 111, 2, 1),
(121, 112, 2, 1),
(122, 113, 1, 1),
(123, 114, 1, 1),
(124, 115, 1, 1),
(125, 116, 1, 1),
(126, 117, 1, 1),
(127, 118, 1, 1),
(128, 119, 1, 1),
(129, 123, 1, 4),
(130, 124, 1, 1),
(131, 125, 2, 1),
(132, 126, 1, 1),
(133, 127, 3, 1),
(134, 128, 3, 1),
(135, 128, 1, 1),
(136, 129, 1, 1),
(137, 130, 1, 1),
(138, 131, 3, 1),
(139, 131, 2, 1),
(140, 131, 1, 1),
(141, 132, 1, 1),
(142, 133, 2, 1),
(143, 134, 1, 1),
(144, 135, 1, 1),
(145, 136, 31, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Catalina', '$2y$10$XbC7wk55CMA5d4FCS.p78O5sIqJkSaXu./a.AKlV.vNo90Fa7Q82e', '2024-06-27 02:49:06'),
(11, 'fet', '$2y$10$TsfqWi5j9eR0ukZRPhGjteRX9WUTSY.00vtYQ7sd0s3bovQ6giRei', '2024-07-01 00:55:43'),
(12, 'martina', '$2y$10$CbWGGh1TEyvcC5IpvT3HC.pCHdsg.lmeoVz0ceFxnZIFDcJq//B5K', '2024-07-01 02:11:25'),
(13, 'juan', '$2y$10$GEgBath63hfgKh/uQZiOH.8tSiPZQMSEpdny0n1D8STOORk.6dBqq', '2024-07-01 02:36:39'),
(14, 'nefiking', '$2y$10$1ex68two7gELbzS6NDCzkurkm/gsvJhj8ZHFCRjIcagkQ6AVpcmOq', '2024-07-01 04:12:56'),
(15, 'cata', '$2y$10$Ru6GQgLeCvx2yaSAr1/1qedXRKu0dxLewNzAEsiaq3p3N32S3hNyy', '2024-07-01 09:05:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mis_productos`
--
ALTER TABLE `mis_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`user_id`);

--
-- Indices de la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

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
-- AUTO_INCREMENT de la tabla `mis_productos`
--
ALTER TABLE `mis_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  ADD CONSTRAINT `orden_articulos_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orden` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
