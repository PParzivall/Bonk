-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 09:52 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto`
--

CREATE TABLE `auto` (
  `autokenteken` varchar(45) NOT NULL,
  `automerk` varchar(45) NOT NULL,
  `autotype` varchar(45) NOT NULL,
  `autokmstand` int(11) NOT NULL,
  `klant_id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`autokenteken`, `automerk`, `autotype`, `autokmstand`, `klant_id`, `image`) VALUES
('04-JDK-9', 'Volkswagen', 'Polo', 4087, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `klant`
--

CREATE TABLE `klant` (
  `klantid` int(3) NOT NULL,
  `klantnaam` varchar(45) NOT NULL,
  `klantadres` varchar(45) NOT NULL,
  `klantpostcode` varchar(45) NOT NULL,
  `klantplaats` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klant`
--

INSERT INTO `klant` (`klantid`, `klantnaam`, `klantadres`, `klantpostcode`, `klantplaats`) VALUES
(1, 'Eijeriks, Anjo', 'Dijkwal 145b', '3015CD', 'Rotterdam'),
(2, 'Poenai, V', 'Schiphollaan', '3213BV', 'Rotterdam'),
(3, 'Stoop, Sam', 'Stoopplein 45', '2023KL', 'Lekkerkerk'),
(4, 'Efes, Mo', 'Noorderweg 321', '2012B', 'Schiedam'),
(5, 'Vliet, Sandra van', 'Hoofdweg 7', '3483MN', 'Cappelle'),
(6, 'Kelvin, G', 'Celsiuslaan 273', '4532BV', 'Cappelle'),
(8, 'El Ouafa, Saida', 'Binnenweg 229', '3045HG', 'Rotterdam'),
(10, 'Antonic, H', 'Hoofdstraat 54', '2932BB', 'Schiedam'),
(13, 'Nikola, N', 'Nikostraat 24', '3028NN', 'Rotterdam');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `gebruikersnaam` varchar(45) NOT NULL,
  `email` varchar(150) NOT NULL,
  `wachtwoord` varchar(45) NOT NULL,
  `functie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`gebruikersnaam`, `email`, `wachtwoord`, `functie`) VALUES
('Faris', 'farisswest@gmail.com', 'Faris123', 'guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
  ADD KEY `klant_id` (`klant_id`);

--
-- Indexes for table `klant`
--
ALTER TABLE `klant`
  ADD PRIMARY KEY (`klantid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`gebruikersnaam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klant`
--
ALTER TABLE `klant`
  MODIFY `klantid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auto`
--
ALTER TABLE `auto`
  ADD CONSTRAINT `klant_id` FOREIGN KEY (`klant_id`) REFERENCES `klant` (`klantid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
