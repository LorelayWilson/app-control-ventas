-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2020 a las 13:02:04
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefono` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`) VALUES
(1, 'Dabfeed', 'pgolsworthy0@accuweather.com', '513-372-9745'),
(2, 'Photojam', 'qrobson1@google.co.uk', '543-428-8088'),
(3, 'Rhybox', 'drigate2@mail.ru', '390-441-8937'),
(4, 'Devcast', 'pmanton3@prweb.com', '110-854-3382'),
(5, 'Skaboo', 'vklimentyonok4@cbc.ca', '163-700-2531'),
(6, 'Oodoo', 'dsellors5@earthlink.net', '925-227-4282'),
(7, 'Thoughtmix', 'wcandey6@netscape.com', '701-804-0193'),
(8, 'LiveZ', 'mslevin7@about.com', '196-603-0331'),
(9, 'Muxo', 'mgavrieli8@sbwire.com', '581-734-6694'),
(10, 'Tavu', 'dhalsall9@upenn.edu', '563-959-6055'),
(11, 'Tagchat', 'szannutoa@oakley.com', '932-283-2135'),
(12, 'Quimba', 'sternentb@issuu.com', '624-105-0032'),
(13, 'Quinu', 'tbreckellc@cpanel.net', '123-364-0261'),
(14, 'Youbridge', 'bmacfarlaned@google.nl', '207-565-6399'),
(15, 'Bubblebox', 'givakine@jugem.jp', '682-511-5369'),
(16, 'Flashdog', 'jmoralesf@wisc.edu', '902-124-3545'),
(17, 'Jetpulse', 'wmedwellg@slideshare.net', '440-777-6513'),
(18, 'Yacero', 'rblackh@pinterest.com', '507-676-9595'),
(19, 'Kwinu', 'htrattoni@goo.ne.jp', '403-803-0760'),
(20, 'Yadel', 'olandaj@a8.net', '494-595-1073');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefono` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id`, `nombre`, `apellidos`, `email`, `telefono`) VALUES
(1, 'Rochelle', 'Dennistoun', 'rdennistoun0@gravatar.com', '689-464-9493'),
(2, 'Barbra', 'Foye', 'bfoye1@unicef.org', '211-488-9256'),
(3, 'Fay', 'McCree', 'fmccree2@geocities.jp', '855-590-3921'),
(4, 'Ina', 'Vittel', 'ivittel3@storify.com', '158-515-0746'),
(5, 'Marilee', 'Goult', 'mgoult4@creativecommons.org', '642-818-7816'),
(6, 'Udell', 'Bradforth', 'ubradforth5@google.fr', '602-852-4100'),
(7, 'Krystalle', 'Limbrick', 'klimbrick6@tiny.cc', '412-205-4063'),
(8, 'Nickie', 'Erlam', 'nerlam7@sun.com', '448-374-7564'),
(9, 'Missie', 'Curle', 'mcurle8@netscape.com', '416-597-1499'),
(10, 'Cordelie', 'Etienne', 'cetienne9@fc2.com', '574-530-1589');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `vendedor` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `importe` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`vendedor`, `cliente`, `fecha`, `importe`) VALUES
(8, 17, '2019-08-23', '3588.23'),
(10, 9, '2020-01-26', '1037.16'),
(5, 20, '2019-10-28', '2633.57'),
(5, 15, '2019-11-23', '8526.58'),
(5, 9, '2019-06-05', '6593.53'),
(7, 10, '2019-03-05', '2731.34'),
(4, 4, '2019-02-10', '1660.28'),
(4, 15, '2019-09-03', '7823.37'),
(8, 18, '2019-10-27', '5974.97'),
(8, 10, '2019-03-15', '9226.94'),
(6, 18, '2019-04-15', '8478.23'),
(8, 14, '2019-10-05', '5843.72'),
(1, 14, '2019-12-03', '8380.28'),
(9, 20, '2019-06-18', '8418.38'),
(4, 14, '2019-05-19', '269.59'),
(8, 13, '2019-06-27', '4364.87'),
(6, 16, '2019-11-24', '1513.40'),
(10, 7, '2019-08-20', '8703.77'),
(7, 15, '2019-11-07', '3150.90'),
(3, 7, '2019-05-03', '3353.65'),
(10, 13, '2019-12-04', '782.16'),
(5, 8, '2019-12-11', '4262.19'),
(5, 17, '2019-12-10', '3677.60'),
(7, 19, '2019-03-11', '5467.34'),
(6, 18, '2019-03-06', '1683.83'),
(8, 11, '2019-10-05', '4348.12'),
(2, 16, '2019-08-13', '2943.39'),
(10, 17, '2019-09-18', '756.66'),
(1, 14, '2019-05-22', '97.84'),
(3, 20, '2019-12-27', '5644.13'),
(10, 4, '2019-05-05', '1447.35'),
(2, 18, '2019-06-17', '6115.02'),
(10, 19, '2020-01-07', '2359.74'),
(7, 11, '2019-05-25', '5954.23'),
(3, 17, '2019-10-23', '9478.37'),
(5, 9, '2020-02-01', '5151.00'),
(10, 11, '2020-01-15', '9262.20'),
(6, 1, '2019-10-16', '6952.50'),
(5, 10, '2020-01-03', '999.41'),
(3, 18, '2019-11-13', '7029.55'),
(4, 8, '2019-05-28', '6150.22'),
(3, 18, '2019-03-18', '8233.27'),
(10, 15, '2019-03-11', '934.23'),
(6, 5, '2020-01-23', '2912.90'),
(3, 19, '2019-12-09', '7941.92'),
(5, 12, '2019-11-15', '9721.39'),
(5, 9, '2019-12-06', '2949.17'),
(3, 16, '2019-09-22', '9625.62'),
(8, 4, '2020-02-03', '8917.89'),
(10, 9, '2019-08-19', '2797.87'),
(5, 15, '2019-08-01', '7846.39'),
(1, 11, '2019-06-29', '6309.83'),
(2, 11, '2019-04-26', '596.11'),
(7, 15, '2019-09-03', '2534.35'),
(3, 17, '2019-12-21', '3726.15'),
(4, 5, '2019-02-16', '64.58'),
(2, 4, '2019-11-27', '2149.63'),
(1, 19, '2019-04-04', '651.70'),
(6, 20, '2019-05-09', '8499.41'),
(7, 2, '2020-01-17', '4532.69'),
(7, 20, '2019-04-15', '7414.32'),
(8, 6, '2019-03-10', '210.99'),
(5, 11, '2020-01-08', '9922.03'),
(10, 19, '2019-11-10', '8658.37'),
(9, 14, '2019-11-22', '571.24'),
(5, 19, '2020-02-01', '7861.54'),
(5, 1, '2019-10-27', '8438.25'),
(3, 2, '2019-10-10', '7841.90'),
(5, 14, '2019-05-13', '1863.34'),
(3, 11, '2019-02-19', '6106.47'),
(7, 9, '2019-07-01', '8627.76'),
(2, 19, '2019-10-24', '8665.14'),
(3, 13, '2019-04-24', '5939.32'),
(2, 14, '2019-06-27', '8100.44'),
(4, 18, '2019-07-13', '4594.86'),
(2, 4, '2019-09-23', '2975.64'),
(2, 10, '2019-07-23', '7445.82'),
(7, 14, '2019-07-12', '5481.72'),
(10, 13, '2019-08-12', '9939.16'),
(3, 10, '2019-12-31', '8879.12'),
(7, 13, '2019-02-14', '8006.41'),
(10, 17, '2019-02-14', '9757.38'),
(8, 18, '2020-01-30', '8343.87'),
(8, 4, '2019-11-19', '2714.47'),
(9, 2, '2019-08-21', '2323.88'),
(7, 2, '2019-08-15', '7208.51'),
(9, 2, '2019-10-08', '6099.63'),
(10, 20, '2019-12-28', '8349.93'),
(9, 10, '2019-03-19', '967.87'),
(7, 2, '2019-05-18', '6459.47'),
(10, 4, '2019-11-30', '6104.11'),
(10, 2, '2019-10-28', '478.03'),
(6, 8, '2019-06-20', '403.74'),
(2, 6, '2019-08-15', '1713.80'),
(2, 18, '2019-08-12', '5296.72'),
(10, 16, '2019-09-04', '8672.23'),
(7, 5, '2019-03-10', '3291.88'),
(7, 2, '2019-12-22', '4453.16'),
(10, 12, '2019-10-28', '6999.82'),
(10, 2, '2019-03-18', '4527.56'),
(8, 9, '2020-02-07', '7579.40'),
(10, 18, '2019-05-09', '320.72'),
(2, 2, '2019-12-27', '7755.35'),
(3, 19, '2020-02-04', '4128.98'),
(3, 14, '2019-03-11', '4697.90'),
(8, 4, '2019-07-01', '7985.81'),
(6, 20, '2019-07-31', '2063.92'),
(1, 3, '2019-11-20', '9055.96'),
(9, 4, '2019-04-04', '994.31'),
(1, 5, '2019-05-11', '9564.07'),
(5, 1, '2019-11-01', '5898.90'),
(1, 1, '2019-12-03', '5193.82'),
(8, 17, '2019-08-04', '9267.98'),
(1, 11, '2019-10-04', '8310.36'),
(7, 9, '2019-07-19', '1587.07'),
(3, 12, '2019-05-28', '345.42'),
(4, 20, '2019-12-16', '1803.88'),
(4, 13, '2019-09-26', '2477.47'),
(3, 19, '2019-03-19', '5792.62'),
(9, 20, '2019-06-04', '5473.46'),
(5, 3, '2019-10-30', '644.41'),
(7, 18, '2019-11-21', '7635.12'),
(6, 13, '2019-06-11', '3939.94'),
(4, 11, '2019-02-14', '8977.57'),
(3, 10, '2019-06-05', '3825.30'),
(5, 12, '2019-04-13', '6885.22'),
(8, 14, '2019-12-28', '7693.85'),
(7, 15, '2019-08-08', '3685.32'),
(4, 14, '2019-05-18', '1223.84'),
(1, 5, '2019-02-23', '9019.71'),
(8, 16, '2019-03-08', '3322.41'),
(7, 5, '2019-03-11', '4681.48'),
(3, 6, '2019-05-03', '8284.74'),
(4, 3, '2019-09-21', '3586.98'),
(2, 14, '2019-10-30', '1893.05'),
(7, 10, '2020-02-07', '2091.10'),
(9, 4, '2019-08-11', '7466.63'),
(3, 13, '2019-08-29', '4274.18'),
(5, 4, '2019-10-18', '1442.83'),
(7, 4, '2019-11-17', '8330.55'),
(2, 12, '2019-10-27', '6441.50'),
(10, 1, '2019-07-04', '2946.42'),
(4, 2, '2019-03-14', '9738.58'),
(8, 8, '2020-01-31', '4581.17'),
(5, 4, '2019-06-19', '9015.71'),
(5, 3, '2019-09-16', '3735.39'),
(7, 16, '2019-11-05', '5094.73'),
(3, 9, '2019-04-25', '4721.88'),
(9, 15, '2019-02-12', '9339.08'),
(3, 3, '2019-08-15', '6574.03'),
(6, 20, '2019-03-23', '3076.92'),
(5, 13, '2019-03-20', '7421.62'),
(5, 19, '2019-12-05', '5258.28'),
(6, 15, '2019-10-04', '8113.57'),
(6, 15, '2020-02-07', '6806.60'),
(9, 15, '2019-06-16', '5852.15'),
(1, 1, '2019-03-27', '4056.66'),
(7, 8, '2020-01-30', '4819.93'),
(6, 6, '2019-12-10', '2190.04'),
(2, 3, '2019-02-14', '3076.40'),
(3, 9, '2019-03-21', '3476.13'),
(4, 5, '2019-09-20', '2511.69'),
(3, 11, '2019-12-30', '2188.51'),
(7, 1, '2019-07-10', '9224.20'),
(1, 11, '2019-09-25', '8477.45'),
(7, 8, '2019-12-20', '9489.90'),
(8, 19, '2019-07-14', '9369.10'),
(4, 18, '2019-06-10', '329.11'),
(8, 15, '2019-06-12', '7324.19'),
(10, 3, '2019-06-28', '7633.99'),
(4, 16, '2019-06-10', '9542.91'),
(4, 15, '2019-10-20', '5590.05'),
(8, 5, '2019-03-17', '3817.11'),
(6, 17, '2019-03-31', '703.71'),
(7, 15, '2020-01-02', '4015.71'),
(8, 8, '2019-04-03', '8718.29'),
(2, 7, '2019-04-29', '8948.56'),
(1, 16, '2019-08-01', '5386.90'),
(2, 15, '2019-07-31', '3490.45'),
(6, 7, '2019-08-27', '2851.87'),
(3, 3, '2019-06-28', '5182.73'),
(6, 5, '2019-04-02', '6309.19'),
(8, 14, '2019-02-20', '9465.31'),
(1, 3, '2019-11-07', '2967.97'),
(8, 12, '2019-08-22', '7177.36'),
(8, 18, '2020-02-02', '1072.12'),
(5, 18, '2019-04-10', '9411.80'),
(10, 15, '2019-05-19', '923.35'),
(7, 12, '2019-11-30', '947.32'),
(10, 20, '2019-05-09', '6140.46'),
(4, 7, '2019-03-02', '8790.30'),
(8, 8, '2019-03-26', '3762.55'),
(2, 13, '2019-10-28', '8464.85'),
(4, 6, '2019-08-30', '3975.36'),
(5, 7, '2020-01-20', '2764.33'),
(1, 2, '2019-12-24', '9130.39'),
(4, 8, '2019-08-07', '2171.79'),
(2, 16, '2019-04-09', '4349.71'),
(1, 6, '2019-03-21', '7053.31'),
(6, 19, '2019-06-22', '5641.54'),
(2, 16, '2020-01-17', '7570.36'),
(2, 20, '2019-09-21', '2469.04'),
(9, 8, '2020-01-04', '7069.35'),
(2, 8, '2019-09-07', '3335.49'),
(1, 12, '2019-08-19', '6082.79'),
(4, 11, '2019-07-11', '6635.25'),
(2, 17, '2019-05-12', '9434.85'),
(2, 2, '2019-02-15', '1379.17'),
(10, 13, '2020-01-15', '1685.00'),
(7, 20, '2019-04-02', '4192.96'),
(3, 13, '2019-03-27', '5266.11'),
(3, 14, '2019-06-29', '9069.24'),
(1, 1, '2019-10-14', '8994.31'),
(3, 4, '2019-08-05', '6769.31'),
(2, 2, '2019-07-10', '6442.80'),
(1, 20, '2019-12-30', '9021.76'),
(10, 15, '2019-03-23', '779.60'),
(5, 6, '2019-04-03', '7151.09'),
(8, 10, '2019-06-09', '6963.64'),
(10, 3, '2019-03-24', '9681.67'),
(4, 15, '2019-04-28', '7303.00'),
(10, 13, '2019-08-27', '982.00'),
(2, 9, '2019-05-04', '3210.57'),
(8, 11, '2019-04-21', '8264.74'),
(5, 14, '2019-08-28', '7224.99'),
(7, 14, '2019-03-12', '883.38'),
(4, 2, '2019-09-20', '7461.92'),
(9, 11, '2019-12-12', '6649.93'),
(10, 17, '2019-09-11', '2908.52'),
(8, 6, '2019-07-06', '673.04'),
(8, 1, '2019-09-10', '6924.79'),
(4, 19, '2019-06-28', '9029.08'),
(3, 20, '2019-11-27', '8626.53'),
(10, 6, '2019-03-19', '196.79'),
(7, 8, '2019-09-11', '7986.61'),
(4, 13, '2019-02-12', '7549.07'),
(9, 17, '2019-03-28', '6315.37'),
(10, 12, '2019-06-06', '3005.62'),
(3, 7, '2019-08-18', '4878.31'),
(1, 5, '2019-08-29', '729.37'),
(7, 4, '2019-05-19', '9517.69'),
(2, 16, '2019-06-25', '8180.36'),
(1, 19, '2019-11-09', '6669.91'),
(7, 11, '2019-04-08', '2868.66'),
(9, 10, '2019-11-12', '8735.57'),
(3, 5, '2019-04-08', '8002.07'),
(5, 10, '2020-01-15', '4991.38'),
(10, 11, '2019-11-22', '9858.76'),
(2, 8, '2019-04-03', '3645.55'),
(6, 2, '2019-02-14', '366.24'),
(9, 17, '2020-01-28', '1848.81'),
(9, 3, '2019-05-20', '8631.54'),
(6, 18, '2019-12-23', '552.40'),
(6, 16, '2019-08-29', '4207.87'),
(1, 20, '2019-05-31', '4015.77'),
(7, 6, '2019-10-09', '5767.26'),
(3, 11, '2019-10-13', '4045.45'),
(8, 2, '2019-06-04', '2491.29'),
(3, 6, '2020-02-03', '3432.23'),
(9, 3, '2019-12-20', '2197.35'),
(3, 9, '2019-02-26', '1915.95'),
(8, 14, '2019-12-10', '8179.96'),
(8, 18, '2019-05-02', '7845.18'),
(4, 15, '2019-08-06', '6769.28'),
(2, 3, '2019-10-04', '7141.68'),
(10, 13, '2019-03-18', '1879.93'),
(5, 7, '2019-06-07', '4668.48'),
(1, 15, '2019-10-16', '8634.44'),
(1, 3, '2019-05-02', '6330.98'),
(9, 2, '2019-04-03', '9266.66'),
(9, 4, '2019-05-14', '7368.78'),
(3, 12, '2020-01-23', '3576.79'),
(3, 9, '2019-05-31', '7.50'),
(3, 12, '2019-04-01', '6921.88'),
(2, 8, '2019-09-09', '10.57'),
(8, 18, '2019-12-12', '6982.86'),
(5, 3, '2019-05-14', '4623.94'),
(8, 15, '2019-12-31', '9700.37'),
(4, 7, '2019-11-10', '9527.31'),
(2, 12, '2019-09-07', '9523.09'),
(1, 15, '2019-10-02', '1195.69'),
(3, 16, '2019-08-01', '7562.79'),
(4, 14, '2019-05-20', '1290.94'),
(7, 5, '2019-10-18', '3747.91'),
(3, 14, '2019-12-24', '9445.17'),
(2, 3, '2019-10-27', '3157.55'),
(3, 4, '2020-01-25', '8278.79'),
(2, 19, '2019-04-07', '6344.27'),
(6, 16, '2019-12-17', '3369.92'),
(9, 10, '2019-06-24', '6935.21'),
(1, 17, '2019-06-15', '250.42'),
(5, 5, '2019-11-12', '5724.30'),
(10, 4, '2019-06-30', '11.98'),
(8, 20, '2019-09-18', '8122.32'),
(3, 20, '2019-03-11', '2812.67'),
(9, 13, '2019-08-21', '1129.70'),
(6, 1, '2019-03-16', '9671.67'),
(6, 18, '2019-09-06', '7721.39'),
(1, 11, '2019-08-24', '4170.68'),
(7, 19, '2019-03-20', '2624.70'),
(8, 2, '2020-01-12', '5713.33'),
(9, 13, '2019-08-14', '2332.40'),
(8, 3, '2019-08-29', '8888.50'),
(7, 15, '2019-06-08', '3638.27'),
(8, 6, '2019-06-24', '8012.21'),
(1, 3, '2019-05-15', '1368.74'),
(7, 17, '2019-10-31', '5840.78'),
(3, 2, '2019-05-09', '741.58'),
(3, 4, '2020-01-13', '3146.41'),
(8, 11, '2019-03-25', '123.97'),
(9, 11, '2019-06-01', '2445.15'),
(4, 9, '2019-04-29', '9717.98'),
(4, 6, '2019-09-21', '705.81'),
(6, 20, '2019-04-20', '5083.36'),
(1, 2, '2019-11-11', '8249.95'),
(1, 14, '2019-11-20', '3100.38'),
(3, 3, '2019-08-09', '3901.66'),
(3, 8, '2019-04-26', '7783.75'),
(9, 15, '2019-09-19', '1697.91'),
(10, 3, '2020-01-23', '4268.69'),
(5, 13, '2019-11-15', '7830.92'),
(4, 16, '2019-03-01', '143.31'),
(9, 16, '2019-06-19', '1190.95'),
(5, 17, '2019-11-23', '5723.49'),
(5, 15, '2019-05-03', '9344.86'),
(10, 16, '2019-12-03', '7473.95'),
(3, 18, '2019-03-21', '5738.00'),
(10, 2, '2019-06-09', '9626.18'),
(1, 7, '2019-07-24', '4355.95'),
(9, 13, '2019-02-11', '2410.92'),
(5, 11, '2020-01-22', '8122.40'),
(10, 2, '2019-05-23', '2856.94'),
(5, 1, '2019-09-24', '125.73'),
(4, 13, '2019-03-24', '2677.83'),
(3, 7, '2019-05-15', '2592.67'),
(5, 8, '2020-01-05', '4873.79'),
(8, 18, '2019-05-30', '7987.38'),
(1, 1, '2019-11-27', '6843.63'),
(3, 17, '2019-10-06', '9522.23'),
(8, 15, '2019-10-25', '1822.50'),
(9, 7, '2019-05-01', '4999.45'),
(6, 14, '2019-06-25', '827.11'),
(2, 12, '2020-01-24', '7105.91'),
(5, 11, '2019-08-07', '5588.10'),
(2, 4, '2019-11-22', '8326.90'),
(3, 6, '2019-12-11', '9188.24'),
(6, 16, '2019-12-13', '6308.31'),
(8, 2, '2019-07-17', '3183.33'),
(7, 4, '2019-06-02', '3517.92'),
(6, 19, '2019-04-03', '9210.87'),
(6, 3, '2019-10-23', '1388.79'),
(6, 12, '2019-06-20', '4285.53'),
(4, 18, '2019-06-12', '2470.92'),
(9, 8, '2019-02-14', '4064.23'),
(10, 1, '2019-11-26', '2170.31'),
(10, 15, '2019-07-05', '6833.94'),
(7, 6, '2019-11-05', '1157.58'),
(1, 7, '2020-01-04', '5264.68'),
(4, 9, '2019-03-22', '446.90'),
(3, 14, '2019-04-05', '1909.11'),
(5, 6, '2020-01-26', '7210.62'),
(2, 10, '2019-08-09', '8498.45'),
(4, 6, '2019-05-11', '9990.82'),
(5, 16, '2019-12-18', '1056.97'),
(1, 4, '2019-06-18', '5660.78'),
(9, 4, '2019-12-16', '6412.58'),
(8, 18, '2019-11-06', '7809.52'),
(4, 10, '2019-02-19', '8821.64'),
(4, 13, '2019-09-08', '9601.46'),
(10, 17, '2019-03-05', '4188.50'),
(5, 9, '2019-06-24', '5241.68'),
(1, 8, '2019-07-29', '9938.04'),
(5, 16, '2019-12-10', '8664.48'),
(7, 18, '2019-08-13', '5304.93'),
(5, 14, '2019-05-26', '7412.49'),
(4, 2, '2019-03-24', '3681.69'),
(9, 15, '2020-01-29', '7516.79'),
(5, 11, '2019-07-31', '2994.02'),
(7, 2, '2019-04-05', '1877.07'),
(1, 2, '2020-01-07', '105.34'),
(10, 2, '2019-05-21', '4248.02'),
(1, 4, '2019-09-18', '598.10'),
(7, 5, '2019-03-01', '1960.76'),
(4, 20, '2019-05-11', '5576.53'),
(2, 18, '2019-03-02', '2225.65'),
(4, 3, '2019-06-20', '5219.04'),
(9, 3, '2019-04-08', '3493.49'),
(2, 4, '2019-03-30', '3683.27'),
(8, 9, '2019-07-29', '7230.44'),
(9, 9, '2020-02-05', '9951.46'),
(7, 13, '2019-03-30', '4121.69'),
(1, 20, '2019-02-27', '655.89'),
(8, 4, '2019-09-29', '412.71'),
(1, 16, '2019-06-28', '987.67'),
(8, 17, '2020-02-03', '4886.06'),
(9, 19, '2019-12-30', '4414.74'),
(10, 5, '2019-12-19', '8830.03'),
(8, 2, '2019-04-24', '4949.89'),
(7, 17, '2019-09-20', '8976.02'),
(1, 17, '2019-10-27', '8890.47'),
(4, 11, '2019-03-09', '5070.51'),
(1, 10, '2019-12-02', '136.36'),
(2, 9, '2020-02-07', '8835.55'),
(4, 4, '2019-09-19', '9991.23'),
(5, 13, '2020-02-06', '8695.52'),
(9, 10, '2019-05-10', '3672.53'),
(10, 7, '2019-07-13', '4184.49'),
(7, 18, '2019-11-09', '2625.99'),
(9, 8, '2020-01-24', '4350.02'),
(8, 13, '2019-03-03', '522.85'),
(3, 20, '2019-06-03', '3451.86'),
(5, 1, '2019-03-13', '3762.70'),
(7, 1, '2019-12-01', '2564.50'),
(6, 7, '2019-10-25', '2034.73'),
(7, 11, '2020-01-06', '904.91'),
(8, 16, '2019-03-13', '7761.72'),
(8, 6, '2019-03-30', '698.78'),
(5, 18, '2020-01-22', '9870.43'),
(4, 10, '2019-06-29', '9883.70'),
(6, 4, '2019-11-23', '4464.32'),
(7, 1, '2019-06-26', '3936.88'),
(1, 14, '2019-09-17', '4762.11'),
(10, 19, '2019-12-26', '3070.50'),
(10, 1, '2019-08-16', '5425.23'),
(4, 2, '2019-03-14', '5286.78'),
(5, 6, '2019-12-01', '8159.77'),
(6, 13, '2019-10-22', '5694.76'),
(1, 12, '2019-10-04', '4930.42'),
(10, 11, '2019-05-25', '5173.01'),
(9, 19, '2020-01-24', '9380.75'),
(7, 19, '2019-03-04', '7644.21'),
(5, 4, '2019-12-16', '9178.62'),
(9, 9, '2019-09-30', '822.72'),
(6, 20, '2019-12-27', '1300.39'),
(10, 20, '2020-01-29', '398.65'),
(10, 11, '2019-07-17', '7242.70'),
(7, 12, '2019-08-12', '3270.35'),
(6, 14, '2019-09-03', '8874.89'),
(10, 15, '2019-08-12', '1041.59'),
(8, 15, '2019-06-15', '9623.53'),
(1, 9, '2019-08-11', '7064.73'),
(3, 10, '2019-09-03', '8928.83'),
(4, 15, '2019-07-19', '3734.76'),
(3, 5, '2019-08-15', '5984.86'),
(8, 16, '2019-10-13', '5429.24'),
(8, 20, '2019-12-17', '7631.96'),
(9, 15, '2019-12-17', '4844.87'),
(1, 10, '2019-10-24', '1440.11'),
(10, 5, '2019-11-15', '3603.60'),
(5, 15, '2019-04-09', '6616.89'),
(9, 20, '2019-05-20', '4504.69'),
(10, 6, '2019-03-09', '5421.98'),
(8, 15, '2019-04-02', '6815.15'),
(7, 1, '2019-11-17', '1062.97'),
(8, 14, '2019-02-22', '1933.14'),
(10, 13, '2019-09-18', '723.07'),
(7, 10, '2019-09-20', '5082.42'),
(5, 3, '2019-06-10', '2834.11'),
(1, 17, '2019-10-13', '8609.86'),
(3, 9, '2020-02-08', '2005.17'),
(9, 12, '2020-01-10', '7668.79'),
(8, 14, '2019-04-22', '677.52'),
(2, 18, '2019-06-07', '7419.24'),
(2, 6, '2019-06-18', '6664.31'),
(5, 6, '2019-08-27', '1299.81'),
(9, 16, '2020-01-17', '7561.92'),
(6, 13, '2019-10-19', '7758.54'),
(3, 13, '2019-09-06', '1652.28'),
(6, 19, '2020-01-06', '8922.84'),
(6, 11, '2020-01-26', '5874.65'),
(3, 18, '2019-07-21', '1933.55'),
(10, 7, '2019-11-13', '3292.64'),
(2, 13, '2019-07-26', '4075.11'),
(1, 2, '2019-09-29', '5273.48'),
(4, 7, '2019-08-11', '8796.09'),
(8, 13, '2019-05-18', '3574.62'),
(5, 3, '2019-10-01', '4025.87'),
(3, 2, '2019-07-05', '2279.69'),
(4, 15, '2019-03-29', '7484.89'),
(3, 9, '2019-08-17', '1849.42'),
(6, 3, '2020-01-14', '365.05'),
(8, 11, '2019-08-29', '4745.95'),
(1, 2, '2019-10-28', '4342.06'),
(1, 10, '2019-03-31', '7949.13'),
(5, 16, '2019-07-04', '7958.61'),
(9, 17, '2019-11-12', '8158.05'),
(7, 16, '2019-10-25', '2952.27'),
(10, 6, '2019-07-26', '6685.55'),
(7, 13, '2019-05-06', '193.83'),
(9, 7, '2019-05-02', '700.30'),
(3, 8, '2019-10-27', '2587.95'),
(6, 15, '2019-05-27', '5834.13'),
(10, 7, '2020-01-27', '1881.16'),
(3, 5, '2019-06-07', '7498.65'),
(8, 12, '2019-03-14', '1877.66'),
(10, 13, '2019-06-21', '4137.12'),
(5, 17, '2020-01-22', '6593.82'),
(2, 11, '2019-12-22', '593.52'),
(1, 11, '2019-06-18', '53.12'),
(1, 13, '2019-02-18', '3604.84'),
(6, 1, '2019-07-20', '831.97'),
(8, 10, '2019-03-23', '9996.38'),
(1, 4, '2019-07-29', '961.72'),
(3, 18, '2019-03-10', '680.45'),
(9, 14, '2019-08-03', '9826.64'),
(3, 18, '2019-10-22', '8964.87'),
(5, 16, '2019-12-20', '7217.67'),
(3, 9, '2019-02-19', '6687.01'),
(9, 5, '2019-09-12', '1915.08'),
(10, 7, '2019-07-25', '282.20'),
(8, 1, '2019-11-10', '3326.18'),
(7, 11, '2020-01-01', '5143.71'),
(5, 7, '2019-02-10', '7787.65'),
(6, 8, '2019-05-30', '3094.79'),
(9, 17, '2019-06-14', '9037.42'),
(1, 16, '2019-06-03', '5289.11'),
(6, 8, '2019-02-26', '8203.96'),
(5, 9, '2019-04-07', '7361.00'),
(5, 19, '2020-01-06', '5397.19'),
(1, 17, '2019-06-18', '9961.35'),
(2, 20, '2020-01-14', '5892.17'),
(4, 9, '2019-10-15', '6835.14'),
(6, 8, '2019-07-10', '2883.81'),
(10, 3, '2019-09-29', '388.12'),
(7, 2, '2019-02-23', '7490.56'),
(7, 8, '2019-08-29', '1580.86'),
(9, 12, '2019-03-31', '8813.02'),
(4, 2, '2020-01-30', '5091.60'),
(1, 5, '2019-10-02', '1995.54'),
(7, 5, '2019-03-21', '2621.65'),
(5, 14, '2019-07-30', '4679.62'),
(4, 18, '2019-04-23', '9497.52'),
(10, 2, '2019-08-16', '6593.97'),
(9, 12, '2019-09-03', '9.79'),
(5, 15, '2019-06-17', '9112.47'),
(7, 13, '2019-12-07', '937.76'),
(6, 19, '2019-09-10', '275.23'),
(6, 1, '2019-11-08', '3597.89'),
(5, 1, '2019-08-14', '5160.50'),
(6, 10, '2019-10-09', '2279.12'),
(8, 6, '2019-06-21', '6732.19'),
(10, 2, '2019-05-12', '1796.10'),
(2, 20, '2019-09-05', '190.12'),
(5, 6, '2019-10-24', '6983.02'),
(5, 9, '2019-03-19', '7900.43'),
(7, 2, '2019-02-21', '2045.74'),
(1, 3, '2019-10-08', '2763.57'),
(4, 15, '2019-12-22', '5452.42'),
(6, 14, '2019-05-17', '1745.50'),
(7, 6, '2019-02-13', '4412.16'),
(1, 18, '2019-12-22', '6480.09'),
(3, 6, '2019-06-21', '3239.33'),
(8, 1, '2019-03-25', '322.22'),
(4, 10, '2019-04-17', '4295.60'),
(8, 18, '2019-02-11', '4611.83'),
(8, 17, '2019-06-17', '7213.73'),
(1, 1, '2019-03-19', '1927.15'),
(8, 19, '2019-03-20', '2942.15'),
(8, 13, '2019-05-11', '3562.93'),
(10, 17, '2019-11-06', '538.74'),
(6, 19, '2020-01-21', '6222.48'),
(3, 8, '2019-03-31', '2808.21'),
(10, 7, '2019-11-25', '4362.32'),
(10, 18, '2020-02-06', '5707.70'),
(6, 8, '2019-03-01', '5033.70'),
(1, 3, '2020-01-09', '6070.61'),
(3, 2, '2019-05-17', '2896.95'),
(5, 14, '2020-01-29', '8806.72'),
(9, 19, '2019-06-10', '4308.54'),
(7, 4, '2019-04-24', '4033.27'),
(7, 11, '2019-09-04', '8505.41'),
(9, 3, '2019-11-19', '7337.21'),
(10, 7, '2019-06-25', '402.91'),
(5, 8, '2019-03-07', '3859.87'),
(3, 5, '2019-12-27', '3165.02'),
(4, 17, '2019-10-18', '2946.05'),
(6, 9, '2019-06-01', '9305.88'),
(1, 13, '2019-12-02', '3919.65'),
(2, 19, '2019-11-04', '4617.50'),
(8, 4, '2019-10-29', '753.38'),
(9, 13, '2019-09-17', '8876.99'),
(4, 2, '2019-02-15', '9215.43'),
(10, 13, '2020-01-04', '4418.96'),
(2, 8, '2019-09-29', '2600.47'),
(2, 12, '2019-09-26', '1610.01'),
(1, 18, '2019-04-11', '9699.27'),
(3, 6, '2019-07-13', '1187.76'),
(9, 13, '2019-03-13', '7016.88'),
(6, 8, '2019-04-07', '7796.08'),
(2, 17, '2019-06-10', '7800.72'),
(9, 7, '2019-03-11', '1308.17'),
(6, 3, '2019-11-08', '230.91'),
(10, 18, '2019-10-03', '5557.96'),
(9, 6, '2019-08-30', '1171.57'),
(8, 2, '2019-11-26', '5258.98'),
(1, 5, '2019-05-06', '4709.36'),
(5, 16, '2019-10-24', '9270.27'),
(8, 19, '2019-03-24', '7998.50'),
(3, 15, '2019-10-31', '1047.05'),
(5, 4, '2019-11-17', '1045.65'),
(10, 10, '2019-11-29', '9264.60'),
(6, 8, '2019-06-05', '1823.50'),
(2, 20, '2019-05-27', '5340.63'),
(9, 12, '2019-07-15', '2580.37'),
(9, 8, '2019-02-20', '4241.66'),
(1, 13, '2019-08-16', '507.62'),
(1, 20, '2019-09-17', '1010.29'),
(7, 20, '2019-06-03', '4809.50'),
(8, 20, '2019-04-06', '969.18'),
(9, 11, '2019-05-08', '1865.58'),
(9, 20, '2019-11-26', '7958.70'),
(7, 1, '2019-10-08', '6095.99'),
(3, 2, '2019-08-04', '5296.05'),
(10, 17, '2019-09-28', '9761.32'),
(7, 15, '2019-06-11', '4835.92'),
(5, 10, '2019-06-02', '6403.19'),
(1, 1, '2019-11-02', '8163.01'),
(5, 11, '2019-05-07', '1064.33'),
(8, 13, '2019-10-06', '9949.57'),
(9, 12, '2019-09-15', '8193.33'),
(5, 11, '2019-12-20', '5287.81'),
(8, 8, '2019-02-27', '4461.15'),
(6, 9, '2019-05-05', '7780.38'),
(2, 9, '2019-05-02', '1845.82'),
(3, 3, '2019-03-21', '9348.17'),
(10, 11, '2019-06-22', '6079.15'),
(10, 11, '2019-07-13', '4904.82'),
(2, 7, '2019-09-08', '9776.00'),
(3, 1, '2020-01-12', '5920.75'),
(1, 7, '2020-01-31', '5069.16'),
(6, 12, '2019-07-03', '1900.54'),
(1, 13, '2019-05-11', '4126.71'),
(5, 1, '2020-02-05', '6295.99'),
(4, 3, '2019-10-29', '4869.67'),
(8, 16, '2019-06-05', '8597.61'),
(5, 5, '2019-12-26', '2103.35'),
(7, 12, '2019-05-30', '8605.69'),
(9, 10, '2019-12-06', '4870.98'),
(1, 12, '2019-05-24', '7472.47'),
(10, 18, '2019-10-05', '6349.82'),
(9, 16, '2019-04-26', '5664.79'),
(9, 1, '2019-02-17', '3829.90'),
(7, 1, '2019-08-30', '5233.29'),
(5, 1, '2019-12-23', '8777.60'),
(8, 13, '2019-12-03', '7724.37'),
(3, 12, '2019-08-09', '2024.34'),
(5, 9, '2019-09-12', '8826.48'),
(6, 6, '2019-03-02', '6630.20'),
(5, 10, '2020-01-28', '8264.79'),
(3, 11, '2019-07-31', '648.80'),
(3, 13, '2019-10-10', '6751.93'),
(1, 20, '2019-06-13', '6167.48'),
(5, 13, '2020-02-08', '9506.47'),
(6, 19, '2019-02-11', '4084.78'),
(4, 6, '2019-12-09', '2651.67'),
(2, 8, '2019-12-16', '3184.43'),
(8, 17, '2019-08-08', '6341.08'),
(3, 1, '2019-03-10', '2958.93'),
(10, 11, '2019-07-15', '8569.67'),
(6, 9, '2019-04-05', '274.61'),
(8, 15, '2019-06-12', '9238.02'),
(6, 6, '2019-09-28', '5747.62'),
(8, 7, '2020-02-02', '1231.38'),
(10, 9, '2019-09-27', '593.36'),
(4, 16, '2019-10-14', '306.77'),
(9, 16, '2019-11-12', '3249.90'),
(4, 4, '2020-01-02', '8568.19'),
(8, 15, '2019-12-25', '4105.44'),
(7, 5, '2019-10-03', '8445.16'),
(10, 6, '2019-04-21', '8949.15'),
(5, 8, '2019-12-30', '1974.27'),
(7, 3, '2020-01-03', '2497.31'),
(7, 19, '2019-06-11', '8446.05'),
(4, 1, '2019-09-28', '7756.29'),
(1, 19, '2019-07-07', '785.94'),
(5, 17, '2019-06-29', '319.05'),
(7, 4, '2019-12-05', '3240.43'),
(1, 7, '2019-07-04', '4193.44'),
(5, 6, '2019-06-01', '6902.71'),
(3, 8, '2019-03-12', '3156.44'),
(8, 15, '2019-05-13', '4903.33'),
(7, 12, '2019-05-15', '858.26'),
(3, 3, '2020-02-07', '4293.10'),
(7, 8, '2019-11-02', '7428.58'),
(5, 2, '2019-06-07', '6874.86'),
(9, 7, '2019-12-16', '6572.41'),
(7, 20, '2019-08-15', '5741.15'),
(5, 15, '2019-08-20', '6547.24'),
(7, 17, '2019-12-19', '9173.67'),
(10, 1, '2019-07-20', '3544.55'),
(2, 10, '2019-03-05', '9868.68'),
(6, 17, '2019-12-04', '1339.90'),
(3, 17, '2019-09-11', '9159.23'),
(1, 19, '2019-09-01', '3362.96'),
(5, 8, '2019-04-11', '5083.54'),
(3, 17, '2020-01-29', '8216.17'),
(10, 8, '2020-01-17', '7082.45'),
(4, 9, '2019-10-31', '2993.14'),
(3, 9, '2019-09-12', '4512.70'),
(3, 7, '2019-02-14', '4782.20'),
(4, 15, '2020-01-05', '8802.28'),
(9, 7, '2019-05-19', '5811.94'),
(4, 19, '2019-08-24', '1153.43'),
(2, 2, '2019-11-28', '4111.92'),
(4, 10, '2019-03-05', '6077.97'),
(1, 5, '2019-06-28', '4603.22'),
(5, 3, '2020-02-04', '9361.37'),
(2, 6, '2019-08-11', '1156.83'),
(9, 8, '2019-05-20', '9972.48'),
(2, 4, '2019-10-18', '9027.03'),
(10, 20, '2020-01-17', '6202.03'),
(7, 2, '2019-12-16', '3575.81'),
(3, 4, '2019-11-07', '5439.01'),
(1, 8, '2019-07-19', '5170.81'),
(6, 8, '2019-11-18', '4459.62'),
(6, 18, '2019-03-18', '5431.32'),
(4, 16, '2019-07-18', '9397.61'),
(8, 11, '2019-12-10', '5207.83'),
(6, 9, '2020-01-06', '5614.03'),
(10, 12, '2019-09-28', '8084.61'),
(9, 10, '2019-09-18', '8422.93'),
(8, 10, '2019-03-05', '8922.43'),
(4, 7, '2019-03-14', '1744.75'),
(3, 3, '2019-02-23', '521.64'),
(9, 10, '2019-03-17', '4997.35'),
(1, 12, '2019-03-18', '4850.22'),
(3, 15, '2019-12-19', '5107.88'),
(2, 16, '2019-05-19', '6276.85'),
(1, 2, '2019-07-30', '8825.30'),
(4, 18, '2019-06-20', '933.14'),
(4, 16, '2019-06-30', '109.93'),
(2, 6, '2019-10-01', '2768.32'),
(2, 17, '2019-09-09', '8591.00'),
(7, 5, '2019-09-23', '2269.82'),
(10, 8, '2019-12-09', '6211.14'),
(2, 15, '2020-01-27', '8850.61'),
(8, 6, '2019-12-25', '2243.31'),
(7, 18, '2019-12-11', '8602.44'),
(1, 13, '2019-11-18', '9824.05'),
(7, 11, '2019-07-06', '5546.78'),
(6, 13, '2019-08-21', '1361.44'),
(4, 3, '2019-03-31', '7080.07'),
(5, 4, '2019-06-04', '4019.08'),
(4, 1, '2019-05-26', '7061.92'),
(9, 5, '2019-09-08', '2143.92'),
(5, 2, '2019-09-12', '5737.52'),
(5, 16, '2019-09-06', '4179.12'),
(10, 12, '2019-02-12', '8495.85'),
(3, 15, '2019-10-31', '8313.77'),
(6, 19, '2019-03-25', '6322.00'),
(7, 1, '2019-06-16', '5903.78'),
(8, 16, '2019-02-16', '2839.50'),
(2, 10, '2020-01-01', '4872.45'),
(7, 12, '2019-10-14', '2907.29'),
(6, 12, '2019-11-08', '9278.71'),
(4, 11, '2019-07-17', '1815.41'),
(3, 18, '2020-01-04', '4540.77'),
(9, 15, '2019-03-10', '6264.30'),
(9, 8, '2019-08-15', '2973.95'),
(6, 14, '2019-06-13', '6419.48'),
(6, 6, '2019-10-11', '3745.91'),
(9, 5, '2019-08-08', '3967.47'),
(9, 5, '2019-11-24', '4867.62'),
(1, 3, '2019-09-28', '4175.35'),
(10, 1, '2019-11-17', '6967.71'),
(9, 5, '2019-05-07', '2988.71'),
(2, 16, '2019-06-17', '5604.63'),
(6, 10, '2019-10-29', '7327.72'),
(8, 11, '2019-11-15', '8337.57'),
(7, 8, '2019-10-18', '958.93'),
(2, 6, '2019-07-02', '1291.86'),
(4, 17, '2019-11-11', '6195.73'),
(7, 19, '2019-08-14', '3490.80'),
(3, 7, '2019-04-08', '5047.74'),
(2, 10, '2019-08-21', '1974.49'),
(10, 16, '2020-01-17', '7268.78'),
(7, 6, '2019-09-25', '570.30'),
(4, 6, '2019-05-24', '3641.24'),
(3, 12, '2019-05-10', '8313.88'),
(1, 8, '2019-06-05', '547.27'),
(5, 2, '2019-06-09', '9526.79'),
(1, 3, '2019-09-28', '169.38'),
(8, 15, '2019-09-20', '123.58'),
(8, 11, '2019-05-19', '1441.83'),
(7, 12, '2020-01-20', '8372.27'),
(8, 8, '2019-03-15', '2631.45'),
(2, 20, '2019-12-17', '2574.20'),
(9, 12, '2019-07-20', '1002.14'),
(4, 10, '2019-02-21', '1949.72'),
(1, 3, '2019-06-29', '4898.69'),
(2, 5, '2019-05-03', '7815.57'),
(10, 6, '2019-05-20', '7717.37'),
(7, 18, '2019-06-21', '6865.35'),
(6, 10, '2020-01-20', '8717.72'),
(2, 15, '2019-03-03', '7849.70'),
(8, 15, '2019-07-08', '15.40'),
(2, 20, '2019-10-13', '3318.37'),
(10, 10, '2019-03-28', '2170.88'),
(6, 12, '2019-12-25', '9443.87'),
(4, 6, '2019-05-26', '3746.46'),
(10, 3, '2019-03-17', '2941.98'),
(3, 9, '2019-12-08', '8190.90'),
(3, 19, '2019-10-14', '2890.26'),
(5, 17, '2019-11-29', '2981.77'),
(2, 19, '2019-10-03', '8515.35'),
(7, 17, '2019-04-09', '9752.36'),
(5, 4, '2019-07-31', '2307.53'),
(2, 3, '2020-01-12', '8162.38'),
(10, 3, '2019-06-01', '6190.01'),
(6, 15, '2019-02-28', '3921.35'),
(10, 12, '2019-09-21', '9581.20'),
(3, 12, '2019-07-25', '3668.37'),
(6, 20, '2019-10-19', '5048.93'),
(9, 14, '2019-04-02', '7095.98'),
(10, 9, '2019-07-19', '9656.59'),
(5, 10, '2019-12-03', '8776.72'),
(8, 3, '2019-03-15', '178.00'),
(1, 9, '2019-07-05', '7967.48'),
(4, 14, '2020-01-20', '3378.32'),
(10, 18, '2019-02-16', '6111.42'),
(4, 10, '2019-07-04', '980.57'),
(1, 14, '2019-08-30', '2668.15'),
(4, 5, '2019-02-21', '7010.05'),
(4, 18, '2019-11-07', '3022.28'),
(10, 18, '2019-08-22', '458.62'),
(3, 14, '2019-07-01', '6771.55'),
(1, 20, '2019-08-14', '1026.74'),
(4, 4, '2019-11-26', '100.87'),
(5, 7, '2019-03-12', '1825.85'),
(7, 2, '2019-05-07', '7976.96'),
(2, 16, '2019-07-20', '4547.42'),
(2, 4, '2020-01-17', '8690.47'),
(8, 6, '2019-12-23', '4484.63'),
(8, 3, '2019-12-06', '7530.45'),
(10, 19, '2019-06-07', '335.85'),
(8, 20, '2020-01-26', '1702.56'),
(1, 11, '2019-11-10', '7836.98'),
(4, 11, '2019-11-22', '1793.80'),
(4, 12, '2019-09-11', '3396.10'),
(7, 10, '2019-04-24', '1488.68'),
(4, 18, '2019-10-22', '1461.74'),
(3, 4, '2019-08-28', '4805.49'),
(3, 3, '2019-04-28', '6394.30'),
(8, 5, '2019-10-29', '481.46'),
(3, 10, '2019-04-14', '2480.72'),
(10, 18, '2019-02-17', '8412.09'),
(8, 20, '2019-11-07', '7729.89'),
(8, 18, '2019-07-21', '8830.28'),
(9, 12, '2019-07-27', '1632.03'),
(10, 1, '2019-04-19', '7956.04'),
(8, 15, '2019-12-26', '4301.31'),
(5, 19, '2019-12-30', '3618.00'),
(2, 3, '2019-04-14', '195.03'),
(10, 6, '2019-09-27', '8974.50'),
(3, 20, '2019-03-26', '8275.48'),
(2, 6, '2019-07-18', '6676.43'),
(3, 3, '2019-05-23', '6420.67'),
(6, 12, '2019-10-08', '6130.17'),
(2, 8, '2019-05-19', '2646.57'),
(3, 15, '2019-10-10', '2922.42'),
(3, 1, '2019-04-25', '979.40'),
(3, 14, '2019-05-16', '8572.61'),
(7, 14, '2019-07-04', '1305.60'),
(9, 10, '2019-03-15', '468.59'),
(7, 2, '2019-10-27', '4357.28'),
(4, 12, '2019-11-30', '642.81'),
(5, 4, '2019-03-03', '2222.43'),
(7, 9, '2019-07-17', '8129.77'),
(9, 7, '2019-11-18', '6619.85'),
(10, 3, '2019-10-18', '8375.42'),
(7, 7, '2019-06-02', '3018.68'),
(3, 14, '2020-01-22', '5337.72'),
(1, 3, '2019-03-23', '3510.96'),
(1, 3, '2019-07-02', '2319.71'),
(10, 4, '2019-05-14', '7173.12'),
(2, 11, '2019-10-06', '7051.25'),
(9, 12, '2019-09-06', '1616.57'),
(5, 4, '2019-11-04', '8358.11'),
(1, 1, '2019-06-10', '1263.02'),
(2, 20, '2019-11-13', '5550.91'),
(6, 17, '2019-07-14', '3461.84'),
(4, 6, '2019-06-21', '1094.14'),
(7, 4, '2019-07-01', '5739.38'),
(5, 2, '2019-06-18', '9120.93'),
(8, 12, '2019-10-14', '9793.59'),
(8, 16, '2019-08-11', '8794.83'),
(3, 7, '2019-04-16', '2471.40'),
(9, 2, '2019-08-30', '8876.78'),
(3, 16, '2019-10-19', '886.13'),
(4, 20, '2019-05-07', '9310.38'),
(7, 9, '2019-09-14', '4496.26'),
(6, 8, '2019-02-14', '5361.85'),
(1, 17, '2019-04-22', '3925.64'),
(4, 5, '2019-04-13', '9755.92'),
(6, 8, '2019-06-09', '2543.75'),
(2, 9, '2019-05-02', '208.43'),
(6, 12, '2020-01-23', '3624.89'),
(7, 9, '2019-04-16', '4326.01'),
(9, 5, '2019-04-26', '3861.21'),
(4, 9, '2019-09-01', '7589.47'),
(7, 12, '2019-07-08', '6497.57'),
(9, 17, '2019-10-16', '8197.58'),
(3, 8, '2019-07-19', '4971.51'),
(10, 17, '2019-04-04', '5543.81'),
(8, 20, '2019-05-03', '1878.57'),
(2, 13, '2019-08-15', '5704.62'),
(1, 20, '2019-08-06', '4288.77'),
(9, 12, '2020-02-06', '1485.92'),
(7, 1, '2019-08-28', '654.17'),
(6, 6, '2019-04-02', '5676.44'),
(6, 3, '2019-08-08', '3088.45'),
(5, 10, '2019-06-22', '4503.31'),
(3, 16, '2019-05-26', '2389.17'),
(6, 20, '2020-01-19', '4910.26'),
(9, 5, '2019-02-16', '9940.51'),
(1, 9, '2019-10-08', '5766.80'),
(8, 12, '2020-01-09', '1680.06'),
(8, 3, '2019-08-27', '1747.72'),
(5, 15, '2019-10-29', '8418.90'),
(4, 15, '2019-07-30', '7730.73'),
(9, 19, '2019-09-23', '8269.70'),
(10, 12, '2020-01-22', '9461.01'),
(4, 6, '2019-05-15', '4599.26'),
(5, 6, '2019-04-22', '352.64'),
(7, 16, '2019-10-26', '9929.24'),
(9, 11, '2019-09-27', '3441.34'),
(2, 3, '2019-02-13', '191.95'),
(9, 8, '2019-06-23', '7785.92'),
(8, 20, '2019-06-20', '26.32'),
(10, 16, '2019-12-30', '889.35'),
(5, 15, '2019-10-22', '9337.55'),
(9, 15, '2019-05-21', '3910.06'),
(9, 5, '2019-03-28', '6200.93'),
(8, 18, '2019-06-06', '2958.18'),
(9, 13, '2020-01-07', '1111.01'),
(1, 10, '2019-09-15', '5678.89'),
(1, 4, '2019-09-29', '723.32'),
(3, 17, '2019-08-08', '91.19'),
(4, 8, '2019-10-15', '1666.87'),
(9, 8, '2019-11-01', '6470.25'),
(9, 12, '2019-03-11', '2976.38'),
(7, 5, '2019-03-10', '1027.64'),
(6, 9, '2019-11-23', '5784.88'),
(6, 7, '2019-08-28', '5619.22'),
(3, 10, '2019-05-26', '6020.59'),
(6, 11, '2019-12-07', '6781.51'),
(3, 15, '2019-06-30', '8866.21'),
(8, 17, '2019-06-21', '1535.77'),
(5, 15, '2019-09-02', '4540.66'),
(7, 9, '2019-04-19', '9918.48'),
(9, 15, '2019-09-28', '2613.03'),
(1, 2, '2019-10-13', '8128.68'),
(1, 5, '2019-03-14', '2397.15'),
(2, 1, '2019-07-30', '8081.85'),
(3, 5, '2019-05-19', '8633.82'),
(7, 2, '2019-08-15', '8522.81'),
(4, 17, '2019-09-14', '478.46'),
(7, 18, '2019-05-17', '9146.57'),
(2, 8, '2019-04-01', '5537.27'),
(1, 20, '2019-12-22', '1217.84'),
(4, 1, '2019-11-16', '6541.06'),
(9, 13, '2019-04-09', '451.65'),
(8, 15, '2019-09-17', '6944.18'),
(4, 9, '2020-01-13', '2638.77'),
(7, 19, '2019-12-29', '4581.21'),
(9, 14, '2019-07-08', '2222.32'),
(5, 9, '2019-11-14', '3568.52'),
(2, 2, '2019-04-26', '1484.38'),
(7, 10, '2019-05-01', '8287.88'),
(8, 1, '2019-07-31', '2357.36'),
(8, 6, '2019-12-22', '524.90'),
(1, 5, '2019-09-18', '24.24'),
(8, 10, '2019-04-20', '8678.71'),
(4, 2, '2019-09-25', '6451.09'),
(10, 9, '2019-06-30', '4144.26'),
(2, 3, '2020-01-16', '7821.58'),
(7, 17, '2020-01-29', '7902.95'),
(6, 3, '2019-09-21', '4286.41'),
(8, 12, '2019-04-17', '6882.59'),
(4, 13, '2019-05-11', '6618.34'),
(5, 3, '2019-09-23', '5303.54'),
(3, 14, '2019-12-31', '8758.63'),
(5, 15, '2019-10-12', '5084.84'),
(5, 3, '2019-07-25', '8645.17'),
(6, 18, '2019-11-02', '4413.98'),
(5, 14, '2019-10-06', '2735.43'),
(2, 2, '2019-07-19', '8710.60'),
(3, 3, '2019-09-30', '3719.24'),
(6, 2, '2019-05-25', '864.34'),
(4, 11, '2020-02-05', '637.64'),
(8, 17, '2019-12-24', '3244.95'),
(9, 2, '2019-07-23', '5903.82'),
(5, 8, '2019-02-22', '7808.32'),
(4, 17, '2019-12-06', '3747.99'),
(9, 11, '2019-04-12', '2498.97'),
(3, 16, '2020-01-23', '2515.59'),
(10, 13, '2019-07-22', '117.66'),
(7, 10, '2019-03-17', '4170.25'),
(3, 1, '2019-02-21', '645.46'),
(7, 10, '2020-01-08', '8436.24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD KEY `fk_ventas_vendedores` (`vendedor`),
  ADD KEY `fk_ventas_clientes` (`cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_clientes` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ventas_vendedores` FOREIGN KEY (`vendedor`) REFERENCES `vendedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
