-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 28, 2022 at 02:46 AM
-- Server version: 10.5.3-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid-data`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitales`
--

DROP TABLE IF EXISTS `hospitales`;
CREATE TABLE IF NOT EXISTS `hospitales` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidadCamas` int(11) NOT NULL,
  `camasLibres` int(11) NOT NULL,
  `cantidadDoctores` int(11) NOT NULL,
  `doctoresLibres` int(11) NOT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitales`
--

INSERT INTO `hospitales` (`id`, `nombre`, `direccion`, `telefono`, `cantidadCamas`, `camasLibres`, `cantidadDoctores`, `doctoresLibres`, `imagen`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 'Pablo tobon', 'call 55', '31231232', 100, 50, 53, 23, 'https://www.hptu.org.co/internacional/images/gestioncalidad.png', 21.213, 98.22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(93, '2014_10_12_000000_create_users_table', 1),
(94, '2019_08_19_000000_create_failed_jobs_table', 1),
(95, '2020_05_22_195330_create_hospitales_table', 1),
(96, '2020_05_29_214056_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoDocumento` enum('CC','TI','CE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `numDocumento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dolorCabeza` tinyint(1) NOT NULL DEFAULT 0,
  `gripa` tinyint(1) NOT NULL DEFAULT 0,
  `flema` tinyint(1) NOT NULL DEFAULT 0,
  `resfriado` tinyint(1) NOT NULL DEFAULT 0,
  `fiebre` tinyint(1) NOT NULL DEFAULT 0,
  `dolorCuerpo` tinyint(1) NOT NULL DEFAULT 0,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarios_hospital_id_foreign` (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `tipoDocumento`, `numDocumento`, `edad`, `correo`, `direccion`, `celular`, `sexo`, `dolorCabeza`, `gripa`, `flema`, `resfriado`, `fiebre`, `dolorCuerpo`, `hospital_id`, `created_at`, `updated_at`) VALUES
(1, 'mateo', 'peñaranda diaz', 'CC', '102020123', 21, 'mateo@gmail.com', 'cll 43 #22', '3123322', 'M', 1, 0, 1, 0, 0, 0, 1, NULL, NULL),
(2, 'sad', 'sad', 'CE', '324', 23, 'na@gmail.com', 'sadsa', '2312', 'M', 0, 0, 0, 1, 0, 0, 1, '2022-04-12 13:28:16', '2022-04-12 13:28:16'),
(3, 'aa', 'aa', 'CE', '232', 432, 'asda@gmail.com', 'sad', '232', 'M', 0, 0, 0, 1, 0, 0, 1, '2022-04-12 13:33:03', '2022-04-12 13:33:03'),
(4, 'sad', 'sad', 'CE', '213', 12, 'a@m.com', 'sad', '213', 'M', 0, 0, 0, 1, 0, 0, 1, '2022-04-12 13:33:37', '2022-04-12 13:33:37');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
