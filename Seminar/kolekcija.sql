-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 04:56 PM
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
-- Database: `kolekcija`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmovi`
--

CREATE TABLE `filmovi` (
  `id` int(11) NOT NULL,
  `naslov` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `id_zanr` int(11) NOT NULL,
  `godina` year(4) NOT NULL,
  `trajanje` time NOT NULL,
  `slika` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `filmovi`
--

INSERT INTO `filmovi` (`id`, `naslov`, `id_zanr`, `godina`, `trajanje`, `slika`) VALUES
(7, 'Dunkirk', 8, 2017, '01:46:00', 0x536c696b652f64756e6b69726b2e6a7067),
(8, 'Greben Spašenih', 8, 2016, '02:19:00', 0x536c696b652f67726562656e5f73706173656e69682e6a7067),
(9, 'Snajperist', 8, 2014, '02:14:00', 0x536c696b652f736e616a7065726973742e6a7067),
(10, 'Fury', 8, 2014, '02:15:00', 0x536c696b652f667572792e6a7067),
(11, 'Jedini Preživjeli', 8, 2013, '02:01:00', 0x536c696b652f6a6564696e695f7072657a69766a656c692e6a7067),
(12, 'Zvijeri Bez Granica', 10, 2015, '02:17:00', 0x536c696b652f7a76696a6572695f62657a5f6772616e6963612e6a7067),
(13, 'Narednik James', 9, 2008, '02:11:00', 0x536c696b652f6e617265646e696b5f6a616d65732e6a7067),
(14, 'Nemilosrdni Gadovi', 10, 2009, '02:33:00', 0x536c696b652f6e656d696c6f7372646e695f6761646f76692e6a7067),
(15, 'Zero Dark Thirty', 9, 2012, '02:37:00', 0x536c696b652f7a65726f5f6461726b5f7468697274792e6a7067),
(16, 'Put Rata', 8, 2011, '02:26:00', 0x536c696b652f7075745f726174612e6a7067),
(17, 'Pisma s Iwo Jime', 8, 2006, '02:21:00', 0x536c696b652f7069736d615f735f69776f5f6a696d652e6a7067),
(18, 'Zastave Naših Očeva', 8, 2006, '02:15:00', 0x536c696b652f7a6173746176655f6e617369685f6f636576612e6a7067),
(19, 'Gušteri', 8, 2005, '02:05:00', 0x536c696b652f677573746572692e6a7067),
(20, 'Apokalipsa Danas', 8, 1979, '02:33:00', 0x536c696b652f61706f6b616c697073615f64616e61732e6a7067),
(21, 'Spašavanje Vojnika Ryana', 8, 1998, '02:50:00', 0x536c696b652f536176696e675f507269766174655f5279616e5f706f737465722e6a7067),
(22, 'Bijeg u Zoru', 8, 2006, '02:06:00', 0x536c696b652f62696a65675f755f7a6f72752e6a7067),
(23, 'Vod Smrti', 8, 1986, '02:00:00', 0x536c696b652f706c61746f6f6e2e6a7067),
(24, 'Full Metal Jacket', 1, 1987, '01:56:00', 0x536c696b652f66756c6c5f6d6574616c5f6a61636b65742e6a7067),
(25, 'Pad Crnog Jastreba', 1, 2001, '02:32:00', 0x536c696b652f7061645f63726e6f675f6a617374726562612e6a7067),
(26, 'Lovac Na Jelene', 8, 1978, '03:04:00', 0x536c696b652f7468655f646565725f68756e7465722e6a7067),
(27, 'Tanka Crvena Linija', 8, 1998, '02:51:00', 0x536c696b652f74616e6b615f637276656e615f6c696e696a612e6a7067),
(28, 'Pearl Harbor', 8, 2001, '03:04:00', 0x536c696b652f706561726c5f686172626f722e6a7067),
(29, 'Rat za Slavu', 8, 1989, '02:02:00', 0x536c696b652f676c6f72792e6a7067),
(30, 'Neprijatelj Pred Vratima', 9, 2001, '02:11:00', 0x536c696b652f6e657072696a6174656c6a5f707265645f76726174696d612e6a7067),
(31, 'Bili Smo Vojnici', 1, 2002, '02:23:00', 0x536c696b652f62696c695f736d6f5f766f6a6e6963692e6a7067),
(32, 'Hamburger Hill', 9, 1987, '01:52:00', 0x536c696b652f68616d6275726765725f68696c6c2e6a7067),
(33, 'Iza Neprijateljskih Linija', 9, 2001, '01:46:00', 0x536c696b652f697a615f6e657072696a6174656c6a736b69685f6c696e696a612e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_croatian_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_croatian_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_croatian_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Josip', 'netko@netkic.hr', '$2y$10$PJpSkXupV.vRo9UevouPVuLGKdmqh0zSzN7mCuJ/Y.i4fbWQJi4bO', 'AmHgEMJHjWnsypll8NEiu2orRrWJZm9oYUN2A740MkDioYypkJ1TAfDwA7Ys', '2019-07-15 19:38:16', '2019-07-11 15:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `zanr`
--

CREATE TABLE `zanr` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `zanr`
--

INSERT INTO `zanr` (`id`, `naziv`) VALUES
(1, 'Akcija'),
(2, 'Horor'),
(3, 'Komedija'),
(4, 'Dokumentarac'),
(5, 'Znanstvena Fantastika'),
(6, 'Povijesni'),
(7, 'Avantura'),
(8, 'Drama'),
(9, 'Triler'),
(10, 'Ratni');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmovi`
--
ALTER TABLE `filmovi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_zanr` (`id_zanr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `zanr`
--
ALTER TABLE `zanr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmovi`
--
ALTER TABLE `filmovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `filmovi`
--
ALTER TABLE `filmovi`
  ADD CONSTRAINT `filmovi_ibfk_1` FOREIGN KEY (`id_zanr`) REFERENCES `zanr` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
