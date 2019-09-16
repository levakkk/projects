-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 04:44 AM
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
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`) VALUES
(5, 'DW Warlord (https://forums.crateentertainment.com/t/1-1-2-5-beronaths-death-herald-7m-crucible-150-170-no-greens-melee-dw-cadence-death-knight-warlord/47702)'),
(11, 'CASTER AAR Multiple (https://forums.crateentertainment.com/t/1-1-3-0-aar-vs-foi-deceiver-mage-hunter-purifier-spellbinder-warlock-c-sr-g3/50767)'),
(17, 'DW Opressor (https://forums.crateentertainment.com/t/1-1-3-1-sir-dredeon-bloody-oppressor-melee-dw-player-scaling-pets-blood-knight-vitality-oppressor-no-greens-gladiator-sr-75/85227)'),
(18, '2H Witchblade (https://forums.crateentertainment.com/t/1-1-4-2-hammertime-witchblade-arc-417k-sheet-dps-c/44086)'),
(19, '2H Death Knight (https://forums.crateentertainment.com/t/1-1-4-2-non-set-death-knight-sr-80-2-100k-crits-etc/88829)'),
(21, 'DW Trickster Update (https://forums.crateentertainment.com/t/1-1-4-1-full-korba-trickster-no-tricks-and-no-greens-just-pure-melee/88641)'),
(23, 'DW Reaper (https://forums.crateentertainment.com/t/1-1-2-5-dw-chillstrifes-cold-reaper-gladiator-under-6-30-6-5-sec-mq-19-sec-lokkar/51197)'),
(25, 'Caster Conjurer (https://forums.crateentertainment.com/t/1-1-4-2-conjurer-of-the-dark-arts-6-30m-crucible-150-170-naked-crucible-easy-sr-75-76-no-greens-immortal-conjurer/89565)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
