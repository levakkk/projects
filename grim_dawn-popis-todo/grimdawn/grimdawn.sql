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

--
-- Dumping data for table `klase`
--

INSERT INTO `klase` (`id`, `ime`, `klasa`, `link_gd`, `link_gt`, `link_moj`, `link_yt`) VALUES
(5, 'Silence', 'S&B Retalliation Warlord', '/', '/', 'https://www.grimtools.com/calc/4NOOppvN', 'https://www.youtube.com/watch?v=oL24WVPxvNw'),
(6, 'Fluffy Pancake', 'DW Pierce Blademaster - Belgothian\'s Slaughter', 'https://www.requnix.com/gaming/grim-dawn-builds/mr-stabby-blind-assassin-pierce-infiltrator', 'https://www.grimtools.com/calc/r2BzYvD2', 'https://www.grimtools.com/calc/O2G4G7qV', 'https://www.youtube.com/watch?v=8MTxUF4W9-8'),
(7, 'Snow', 'DW Cold Infiltrator - Deathmark\'s Shadow', 'https://www.requnix.com/gaming/grim-dawn-builds/coldylox-deathmarked-cold-infiltrator', 'https://www.grimtools.com/calc/YNnWjk82', 'https://www.grimtools.com/calc/b28e6jGV', 'https://www.youtube.com/watch?v=O0T_T6GToo4'),
(8, 'Fuzzy Ranger', 'DW Poison Dervish - The Vileblade Pact (dobar dmg)', 'https://www.requnix.com/gaming/grim-dawn-builds/miss-meltycakes-dual-wield-melee-acid-poison-dervish', 'https://www.grimtools.com/calc/nZo4LEEN', 'https://www.grimtools.com/calc/eZPOe7PV', 'https://www.youtube.com/watch?v=O0XRvQNr2gk'),
(9, 'Dark Lord', 'Pet Cabalist', 'https://www.requnix.com/gaming/grim-dawn-builds/sir-crunchybones-skelemancer-cabalist', 'https://www.grimtools.com/calc/vNQYE38N', 'https://www.grimtools.com/calc/p25JqoGV', 'https://www.youtube.com/watch?v=l-KidgFT1b8'),
(10, 'Winter\'s Bastard', 'DW Cold Blademaster - Deathmark\'s Shadow (dobar dmg)', 'https://forums.crateentertainment.com/t/1-1-4-1-cold-lol-the-nerftaking-blademaster-gladiator-7-minutes/88239', 'https://www.grimtools.com/calc/gZwJBqjV', 'https://www.grimtools.com/calc/JVl6lWoN', 'https://www.youtube.com/watch?v=V1FbiHjJ3_M'),
(11, 'The Blue Ghost', 'DW Cold Infiltrator - Belgothian\'s Slaughter (OP jebacki dmg)', 'https://forums.crateentertainment.com/t/1-1-4-1-luminari-godkiller-ravager-mogdrogen-callagadra-crucible-6-30m-belgothian-infiltrator-blademaster/46649', 'https://www.grimtools.com/calc/RVvJpBJV', 'https://www.grimtools.com/calc/r2Bn6nz2', 'https://www.youtube.com/watch?v=JTD5exTezkU'),
(12, 'Dream Scar', 'DW Pierce Blademaster - Belgothian\'s Slaughter', 'https://forums.crateentertainment.com/t/1-1-4-1-luminari-godkiller-ravager-mogdrogen-callagadra-crucible-6-30m-belgothian-infiltrator-blademaster/46649', 'https://www.grimtools.com/calc/JVlPxoxV', 'https://www.grimtools.com/calc/RZROlOrN', 'https://www.youtube.com/watch?v=-1pW5vDWP38'),
(13, 'Razerclaw', 'DW Poison Dervish - The Vileblade Pact', 'https://forums.crateentertainment.com/t/doombaby-dw-dervish-superboss-killer-c-sr-g3/50315', 'https://www.grimtools.com/calc/nZo6rqoV', 'https://www.grimtools.com/calc/YZeKa5v2', 'https://www.youtube.com/watch?v=9OnAzG_F89Y'),
(14, 'Lostprophet', 'DW Cold Dervish - Deathmark\'s Shadow', 'https://forums.crateentertainment.com/t/dw-melee-1-1-2-4-cold-righteous-fervor-deathmarked-dervish-sr-75-viable/51045', 'https://www.grimtools.com/calc/aZqllyvV', 'https://www.grimtools.com/calc/RVvLkRkN', 'https://www.youtube.com/watch?v=N8XUL-zL9ts'),
(15, 'Warborn', 'DW Chaos Warlord - Warborn Bastion (Spin to Win)', 'https://forums.crateentertainment.com/t/1-1-4-1-physical-spin2win-eor-warlord-150-170-sr-75-viable-no-greens/88245', 'https://www.grimtools.com/calc/JVlWxdo2', 'https://www.grimtools.com/calc/gZwLKGjN', 'https://www.youtube.com/watch?v=IrPNHxchgSw'),
(16, 'General Death', 'DW Aether Death Knight - Krieg\'s Armament', '/', '/', 'https://www.grimtools.com/calc/a2dJWQ1Z', 'https://www.youtube.com/watch?v=7nw6O2nmstw'),
(17, 'Cystic Fibrosis', 'DW Poison Witch Hunter - The Korvan Dunefiend [1.1.4.2.]', '/', '/', 'https://www.grimtools.com/calc/dVbn4mkV', 'https://www.youtube.com/watch?v=zt2oGFdvuiU'),
(18, 'Venom', 'DW Poison Witch Hunter - The Vileblade Pact [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-4-0-return-of-the-poison-queen-vileblade-dw-witch-hunter-gladiator-in-6-25/87141', 'https://www.grimtools.com/calc/d2j8J1nZ', 'https://www.grimtools.com/calc/1NXmMoX2', 'https://www.youtube.com/watch?v=UZ2YZSisq6c'),
(19, 'Handsome Awkward', 'DW Fire Aether Dervish - Virtue\'s Light [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-4-0-roxios-the-ascended-melee-dw-fire-soulblade-virtue-permascension-dervish-no-greens-gladiator/86766', 'https://www.grimtools.com/calc/RVvJXekV', 'https://www.grimtools.com/calc/YNn6qrgN', 'https://www.youtube.com/watch?v=EbVmn0baRhE'),
(20, 'Corrupted Venom', 'DW Chaos Witch Hunter - Rah\'Zin\'s Torment [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-3-0-rahzin-slaughterhouse-yet-another-chaos-wh-c-sr/84085', 'https://www.grimtools.com/calc/a2dYW95V', 'https://www.grimtools.com/calc/p25JKmyV', 'https://www.youtube.com/watch?v=XvKC6HxOIkI'),
(21, 'Ultos', '2H Lightning Warder - Ultos\' Tempest [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-4-1-2h-melee-high-voltage-primal-strike-warder/88079', 'https://www.grimtools.com/calc/dVbk8OgZ', 'https://www.grimtools.com/calc/a2dJWm1Z', 'https://www.youtube.com/watch?v=bSpjbaRj-Cw'),
(22, 'Thunderer', '2H Lightning Warder - Light\'s Guardian [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-3-0-electrocute-brothers-elementalist-warder-c-sr-g3/51327', 'https://www.grimtools.com/calc/RVv69BpV', 'https://www.grimtools.com/calc/1NXmPAO2', 'https://www.youtube.com/watch?v=m_oonyLx4tY'),
(23, 'The Blood Knight', 'DW Aether Death Knight - The Blood Knight [1.1.4.2.]', '/', '/', 'https://www.grimtools.com/calc/b28eWKqV', 'https://www.youtube.com/watch?v=aYwQxg5ta50'),
(24, 'Reincarnated Jack Frost', 'DW Cold Spellbreaker - Deathmark\'s Shadow (New Top Tier?) [1.1.4.2.]', '/', '/', 'https://www.grimtools.com/calc/a2E4ALlN', 'https://www.youtube.com/watch?v=1PfVabh1ozA'),
(25, 'Strange Guy', 'DW Pierce/Cold/Lightning/Bleeding Trickster - Korba\'s Furs [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-2-5-dw-chillstrifes-cold-trickster-gladiator-5-25/81931', 'https://www.grimtools.com/calc/aZqlqQdV', 'https://www.grimtools.com/calc/eVLnzydN', 'https://www.youtube.com/watch?v=9XkYtnzttTo'),
(26, 'Bloodrager', 'DW Bleeding Trickster - Bloodrager\'s Endless Frenzy [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-2-0-bleeding-glass-shards-2-the-laceration-5-30m-crucible-bleeding-trickster-cr-sr-vid/50615', 'https://www.grimtools.com/calc/p25r0KBV', 'https://www.grimtools.com/calc/0V03Plr2', 'https://www.youtube.com/watch?v=in0wneFJY4o'),
(27, 'Light\'s Vindicator', 'Caster Storm Totem/Storm Box of Elgoloth Lightning Vindicator [1.1.4.2.]', 'https://www.requnix.com/gaming/grim-dawn-builds/mr-zappy-wind-devil-storm-totem-vindicator', 'https://www.grimtools.com/calc/b28EjlpV', 'https://www.grimtools.com/calc/8NKOW5pN', 'https://www.youtube.com/watch?v=ECWU6P6t8X8'),
(28, 'Valguur', '2H Vitality Bleeding Conjurer HC [1.1.4.2.]', 'https://www.requnix.com/gaming/grim-dawn-builds/sir-bloodydots-vitality-bleed-conjurer', 'https://www.grimtools.com/calc/r2BYRMBN', 'https://www.grimtools.com/calc/a2dJ5e0Z', 'https://www.youtube.com/watch?v=JZRNxl7ub3U'),
(29, 'Burner', 'DW Fire Purifier - Justicar Guard [1.1.4.2.]', 'https://forums.crateentertainment.com/t/dw-melee-1-1-4-1-g3-c-pure-e-fiah-dual-wield-melee-purifier-no-greens/87331', 'https://www.grimtools.com/calc/4VxLPplV', 'https://www.grimtools.com/calc/nZo61Q9V', 'https://www.youtube.com/watch?v=2NwvtRl403g'),
(30, 'Farmer', '2H Ranged Fire Purifier - Valdun\'s Betrayal [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-4-2-top-gun-6-5-seconds-mad-queen-6m-crucible-reslient-no-greens-valduns-purifier/89074', 'https://www.grimtools.com/calc/YNn6Y4ON', 'https://www.grimtools.com/calc/8NKOenJN', 'https://www.youtube.com/watch?v=liQwxC2FtBc'),
(31, 'El Pistolero', 'DW Ranged Physical Pierce Tactician - Ardor of Octavius [1.1.4.2.]', 'https://www.requnix.com/gaming/grim-dawn-builds/mr-thumpysharts-dual-wield-physical-pierce-gun-tactician', 'https://www.grimtools.com/calc/L2JaxzaN', 'https://www.grimtools.com/calc/4ZD4XlQZ', 'https://www.youtube.com/watch?v=bQDWJmWyL7M'),
(32, 'Gunslinger', 'DW Ranged Fire Lightning Purifier - Dagallon\'s Destruction [1.1.4.2.]', 'https://www.requnix.com/gaming/grim-dawn-builds/dual-wield-fire-lightning-gun-purifier', 'https://www.grimtools.com/calc/1NXqvAg2', 'https://www.grimtools.com/calc/YVWOK5yV', 'https://www.youtube.com/watch?v=EHaejGI9CK4'),
(33, 'Boomstick', '2H Ranged Fire Purifier - Justicar Guard [1.1.4.2.]', 'https://forums.crateentertainment.com/t/lets-bring-big-guns-to-the-battle-2h-purifier/82428', 'https://www.grimtools.com/calc/RVvJb5jV', 'https://www.grimtools.com/calc/eZPOlgKV', 'https://www.youtube.com/watch?v=qr_vUZvAHMw'),
(34, 'Johnny', 'DW Cold Fire Saboteur - Rimetongue/The Sacred Harmony [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-3-1-cold-fs-saboteur-pure-dw-melee-no-greens-gladiator-in-7-05/50496 / https://forums.crateentertainment.com/t/1-1-4-0-return-of-the-rogue-7-5s-mad-queen-6-30m-crucible-sr-75-tanky-no-greens-melee-saboteur/50933', 'https://www.grimtools.com/calc/lNkodrdN / https://www.grimtools.com/calc/p25JW0EV (devotioni)', 'https://www.grimtools.com/calc/gZwLvEbN', 'https://www.youtube.com/watch?v=T0iAeiBwZbM'),
(35, 'Traktor', 'S&B Physical Warlord - Markovian\'s Bastion [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-1-2-carrot-lord-markovian-cadence-3x-blitz-warlord-gladiator-7-06-and-sr-86-viable/50398', 'https://www.grimtools.com/calc/d2jYEenN', 'https://www.grimtools.com/calc/d2j1wQqN', 'https://www.youtube.com/watch?v=prrXFh6fTuU'),
(36, 'the Pack Leader', '2H Hybrid Pet Conjurer', '/', 'https://www.grimtools.com/calc/DV96wm6Z', 'https://www.grimtools.com/calc/4VxmgxJZ', 'https://www.youtube.com/watch?v=2oTqqpb7KDk'),
(37, 'Blackwater Knight', 'S&B Hybrid Caster/Melee Fire Purifier - The Infernal Champion [1.1.4.2.]', 'https://www.requnix.com/gaming/grim-dawn-builds/burn-the-world-bwc-and-rok-purifier', 'https://www.grimtools.com/calc/qNYxjMeZ', 'https://www.grimtools.com/calc/JVl6ydpN', 'https://www.youtube.com/watch?v=PvoqHq-oFVE'),
(38, 'Chaos Darkblaze', 'DW Ranged Chaos Sentinel - Darkblaze Garb [1.1.4.2.]', 'https://forums.crateentertainment.com/t/kaeresh-darkblaze-chaos-dual-pistols-sentinel-no-greens-gladiator-sr-75-callagadra/50551', 'https://www.grimtools.com/calc/qNYdPgXZ', 'https://www.grimtools.com/calc/mN43MDmZ', 'https://youtu.be/WXrUlhF6Li8'),
(39, 'Firework', '2H Physical Warlord - Justicar Guard [1.1.4.2.]', 'https://forums.crateentertainment.com/t/lock-stock-and-two-smoking-shotguns-fire-warlord-c-sr-g3/50923', 'https://www.grimtools.com/calc/wV1bPGPZ', 'https://www.grimtools.com/calc/q2m6dbWV', 'https://www.youtube.com/watch?v=AtgDgaeGsE8'),
(40, 'Holy Warrior', 'DW Fire Aether Templar - Virtue\'s Gaze [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-4-0-roxios-the-ascending-melee-dw-fire-soulblade-virtue-templar-no-greens-gladiator/86771', 'https://www.grimtools.com/calc/qNYdmAeZ', 'https://www.grimtools.com/calc/vNQOrgpV', 'https://www.youtube.com/watch?v=1CnJFJSdgWo'),
(41, 'Worm', '2H Lightning Vindicator - Ultos\' Tempest [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-3-1-lightning-2h-ranged-vindicator-gladiator-in-7-minutes/85789', 'https://www.grimtools.com/calc/xZypLxqV', 'https://www.grimtools.com/calc/p25J4DyV', 'https://www.youtube.com/watch?v=6cZDrp-WCRk'),
(42, 'Melesio', 'DW Fire Aether Dervish - Virtue\'s Gaze [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-4-0-roxios-the-ascended-melee-dw-fire-soulblade-virtue-permascension-dervish-no-greens-gladiator/86766', 'https://www.grimtools.com/calc/RVvJXekV', 'https://www.grimtools.com/calc/bVAwzOBN', 'https://www.youtube.com/watch?v=P6pWmCKKAQ8'),
(43, 'Evil Eye', 'Caster Poison Sentinel', 'https://forums.crateentertainment.com/t/1-1-1-2-corrupted-avenger-dreeg-sentinel-sr-75-and-gladiator-150-170-viable/50107', 'https://www.grimtools.com/calc/b28pzzL2', 'https://www.grimtools.com/calc/nZo6dWvV', 'https://www.youtube.com/watch?v=6gX2IW3M3ZI'),
(44, 'Heartbreaker', 'Caster Bleeding Vitality Reaper - Demonslayer\'s Armament [1.1.4.2.]', 'https://forums.crateentertainment.com/t/1-1-4-0-the-undead-shinobi-of-cairn-pb-reaper-gladiator-in-6-minutes/87147', 'https://www.grimtools.com/calc/lNk8aOD2', 'https://www.grimtools.com/calc/M2g9G7EZ', '/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klase`
--
ALTER TABLE `klase`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klase`
--
ALTER TABLE `klase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
