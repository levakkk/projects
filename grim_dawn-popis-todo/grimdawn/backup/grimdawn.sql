-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 08:21 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grimdawn`
--

-- --------------------------------------------------------

--
-- Table structure for table `klase`
--

CREATE TABLE `klase` (
  `id` int(11) NOT NULL,
  `ime` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `klasa` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `link_gd` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `link_gt` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `link_moj` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `link_yt` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kombinacije`
--

CREATE TABLE `kombinacije` (
  `id` int(11) NOT NULL,
  `ime` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `kombinacije`
--

INSERT INTO `kombinacije` (`id`, `ime`) VALUES
(1, 'soldier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klase`
--
ALTER TABLE `klase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kombinacije`
--
ALTER TABLE `kombinacije`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klase`
--
ALTER TABLE `klase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kombinacije`
--
ALTER TABLE `kombinacije`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
