-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 04:40 AM
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
-- Database: `registracija`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(1, 'admin', 'admin@admin.hr', '21232f297a57a5a743894a0e4a801fc3', '2019-09-16 04:19:25'),
(2, 'TL', 'tomislav.levak@hotmail.com', '45d3d3d617826ec8514192c778c3ba48', '2019-09-16 04:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `novi_upis`
--

CREATE TABLE `novi_upis` (
  `id` int(11) NOT NULL,
  `trn_date` datetime NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL,
  `age` int(11) NOT NULL,
  `submittedby` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `novi_upis`
--

INSERT INTO `novi_upis` (`id`, `trn_date`, `name`, `age`, `submittedby`) VALUES
(1, '2019-09-16 04:33:44', 'Ivan', 23, 'TL'),
(2, '2019-09-16 04:32:47', 'Josip', 21, 'TL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `novi_upis`
--
ALTER TABLE `novi_upis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `novi_upis`
--
ALTER TABLE `novi_upis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
