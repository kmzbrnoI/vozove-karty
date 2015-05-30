-- Toto je priklad zaznamu v databazi vozovych karet.

-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2015 at 08:39 PM
-- Server version: 5.5.43-0+deb8u1
-- PHP Version: 5.6.7-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kmz`
--

-- --------------------------------------------------------

--
-- Table structure for table `vk_Horky14`
--

CREATE TABLE IF NOT EXISTS `vk_Horky14` (
`ID` int(11) NOT NULL,
  `UIC` varchar(16) COLLATE utf8_czech_ci NOT NULL,
  `CSD` varchar(16) COLLATE utf8_czech_ci NOT NULL,
  `sprava` varchar(16) COLLATE utf8_czech_ci NOT NULL,
  `popis` text COLLATE utf8_czech_ci NOT NULL,
  `druh-nakladu` text COLLATE utf8_czech_ci NOT NULL,
  `foto` text COLLATE utf8_czech_ci NOT NULL,
  `cislo` text COLLATE utf8_czech_ci NOT NULL,
  `majitel` text COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `vk_Horky14`
--

INSERT INTO `vk_Horky14` (`ID`, `UIC`, `CSD`, `sprava`, `popis`, `druh-nakladu`, `foto`, `cislo`, `majitel`) VALUES
(2, 'Daa-k', 'Ds-k', 'ČSD', '2a caboose', 'crew', 'foto/Daa-k.jpg', '940 7 214-6', 'KMŽ Brno I, CZ'),
(3, 'Daa-k', 'Ds-k', 'ČSD', '2a caboose', 'crew', 'foto/Daa-k.jpg', '940 7 214-6', 'KMŽ Brno I, CZ'),
(4, 'Glm', 'Ztr', 'ČSD', '2a covered car,\r\nconventional construction', 'piece and pallet goods', 'foto/Krakonos_HBlaha.jpg', 'Krakonoš\r\n102 8 439-6', 'Jan Blaha, CZ'),
(5, 'Z', 'Rth', 'ČSD', '2a tank car', 'mineral oils', 'foto/Rth_CSSP.jpg', 'Chem. závody ČSSP\r\n070 5 122-0', 'Jan Blaha, CZ'),
(6, 'Z', 'Rth', 'ČSD', '2a tank car', 'energetic materials, explosives', 'foto/Rth_Explosia.jpg', 'Explosia\r\n552136', 'KMŽ Brno I, CZ'),
(7, 'Uh', 'R', 'ČSD', '2a special car with earthenware pots', 'alkalis, acids', 'foto/Rth_Synthesia.jpg', 'Synthesia\r\n556234', 'KMŽ Brno I, CZ'),
(10, 'Glm', 'Ztr', 'ČSD', '2a covered car,\r\nconventional construction', 'mail', 'foto/Posta.jpg', 'Čs. pošta\r\n102 9 673-9', 'J. a M. Horáčkovi, CZ'),
(11, 'oBaafx', 'Blm', 'ČSD', '2a personal car to M152', 'people', 'foto/Blm.jpg', '20 29 216-5', 'J. a M. Horáčkovi, CZ'),
(12, 'oBaafx', 'Blm', 'ČSD', '2a personal car to M152', 'people', 'foto/Blm.jpg', '20 29 216-5', 'J. a M. Horáčkovi, CZ'),
(13, 'oBaafx', 'Blm', 'ČSD', '2a personal car to M152', 'people', 'foto/Blm.jpg', '20 29 216-5', 'J. a M. Horáčkovi, CZ'),
(21, 'Glm', 'Ztr', 'ČSD', '2a covered car,\r\nconventional construction', 'piece and pallet goods', 'foto/Ztr.jpg', '1-42727', 'KMŽ Brno I, CZ'),
(22, 'Glm', 'Ztr', 'ČSD', '2a covered car,\r\nconventional construction', 'piece and pallet goods', 'foto/Ztr.jpg', '1-42727', 'KMŽ Brno I, CZ'),
(23, 'Glm', 'Ztr', 'ČSD', '2a covered car,\r\nconventional construction', 'piece and pallet goods', 'foto/Ztr.jpg', '1-43032', 'KMŽ Brno I, CZ'),
(24, 'Glm', 'Ztr', 'ČSD', '2a covered car,\r\nconventional construction', 'piece and pallet goods', 'foto/Ztr.jpg', '1-43032', 'KMŽ Brno I, CZ'),
(26, 'Glm', 'Ztr', 'ČSD', '2a covered car,\r\nconventional construction', 'piece and pallet goods', 'foto/Ztr.jpg', '1-41523', 'KMŽ Brno I, CZ'),
(30, 'E', 'Vtr', 'ČSD', 'high-side 2a car', 'loose materials, piece goods', 'foto/Vtr.jpg', '4-52118', 'Jan Blaha, CZ'),
(31, 'E', 'Vtr', 'ČSD', 'high-side 2a car', 'loose materials, piece goods', 'foto/Vtr.jpg', '4-52118', 'Jan Blaha, CZ'),
(32, 'E', 'Vtr', 'ČSD', 'high-side 2a car', 'loose materials, piece goods', 'foto/Vtr.jpg', '4-52118', 'Jan Blaha, CZ'),
(33, 'E', 'Vtr', 'ČSD', 'high-side 2a car', 'loose materials, piece goods', 'foto/Vtr.jpg', '4-52118', 'Jan Blaha, CZ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vk_Horky14`
--
ALTER TABLE `vk_Horky14`
 ADD UNIQUE KEY `ID_2` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vk_Horky14`
--
ALTER TABLE `vk_Horky14`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
