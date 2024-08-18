-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2024 at 10:40 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webserdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `available` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `image`, `description`, `price`, `available`) VALUES
(3, 'Ford Mustang', 'https://example.com/images/ford_mustang.jpg', 'A powerful and iconic sports car.', 100000.00, 1),
(4, 'Chevrolet Camaro', 'https://example.com/images/chevrolet_camaro.jpg', 'A muscle car with a modern twist.', 175000.00, 1),
(5, 'Tesla Model 3', 'https://example.com/images/tesla_model_3.jpg', 'A high-tech electric vehicle with autopilot.', 160000.00, 1),
(6, 'Honda Fit', 'path/to/honda-fit.jpg', 'A compact car with excellent fuel efficiency and a versatile interior.', 18000.00, 1),
(7, 'Ford Fiesta', 'path/to/ford-fiesta.jpg', 'A small car offering nimble handling and a fun driving experience.', 19000.00, 1),
(8, 'Hyundai Accent', 'path/to/hyundai-accent.jpg', 'A reliable compact car with a comfortable ride and good fuel economy.', 30000.00, 1),
(9, 'Tesla Model 3', 'path/to/tesla-model-3.jpg', 'An electric sedan with impressive range and modern features.', 40000.00, 1),
(10, 'Nissan Leaf', 'path/to/nissan-leaf.jpg', 'An affordable electric vehicle with a practical design.', 32000.00, 1),
(11, 'Chevrolet Bolt EV', 'path/to/chevrolet-bolt-ev.jpg', 'A compact electric car offering a long range and efficient performance.', 35000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
CREATE TABLE IF NOT EXISTS `rentals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `car_id` int NOT NULL,
  `rental_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `car_id` (`car_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `user_id`, `car_id`, `rental_date`) VALUES
(8, 1, 1, '2024-08-05 15:59:33'),
(10, 1, 2, '2024-08-05 19:49:19'),
(11, 1, 3, '2024-08-06 06:32:35'),
(21, 1, 7, '2024-08-07 11:24:25'),
(28, 1, 6, '2024-08-13 10:18:07'),
(20, 1, 5, '2024-08-07 09:41:35'),
(25, 1, 4, '2024-08-12 08:59:55'),
(26, 1, 11, '2024-08-12 09:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `isAdmin`) VALUES
(6, 'samer@monzer.com', '123456', 0),
(7, 'haniacs05@gmail.com', 'Renin2005', 1),
(3, 'hania.seifeldeen@mubs.edu.lb', 'Hania', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
