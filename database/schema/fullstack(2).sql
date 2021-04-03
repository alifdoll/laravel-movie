-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 03:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullstack`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gender` enum('Male','Female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`id`, `name`, `gender`) VALUES
(1, 'Kelly Marie Tran ', 'Female'),
(2, 'Izaac Wang ', 'Male'),
(3, 'Chloë Grace Moretz ', 'Female'),
(4, 'Michael Peña ', 'Male'),
(5, 'Javier Gutiérrez', 'Male'),
(6, 'Karra Elejalde ', 'Male'),
(7, 'Olga Kurylenko', 'Female'),
(8, 'Marilyn Lima ', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `cast_detail`
--

CREATE TABLE `cast_detail` (
  `movies_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL,
  `role` enum('Main','Helper','Cameo','Voice') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cast_detail`
--

INSERT INTO `cast_detail` (`movies_id`, `cast_id`, `role`) VALUES
(1, 1, 'Voice'),
(1, 2, 'Voice'),
(2, 3, 'Helper'),
(2, 4, 'Helper'),
(3, 5, 'Main'),
(3, 6, 'Helper'),
(4, 7, 'Main'),
(4, 8, 'Helper');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Thriller'),
(3, 'Horror'),
(4, 'Drama'),
(5, 'Adventure'),
(6, 'Crime'),
(7, 'Animation'),
(8, 'Comedy'),
(9, 'Family'),
(10, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `genre_movie`
--

CREATE TABLE `genre_movie` (
  `movies_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre_movie`
--

INSERT INTO `genre_movie` (`movies_id`, `genre_id`) VALUES
(1, 1),
(1, 5),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 7),
(2, 8),
(2, 9),
(3, 1),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 5),
(5, 10),
(6, 1),
(6, 5),
(6, 10),
(7, 1),
(7, 5),
(7, 10),
(8, 1),
(8, 4),
(8, 5),
(9, 8),
(10, 1),
(10, 5),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `release` date NOT NULL,
  `score` double NOT NULL,
  `synopsis` varchar(500) NOT NULL,
  `isSeries` tinyint(4) NOT NULL,
  `extension` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `release`, `score`, `synopsis`, `isSeries`, `extension`) VALUES
(1, 'Raya and the Last Dragon', '2021-03-03', 8.5, 'Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.', 0, 'https://image.tmdb.org/t/p/original/lPsD10PP4rgUGiGR4CCXA6iY0QQ.jpg'),
(2, 'Tom & Jerry', '2021-02-11', 7.6, 'Tom the cat and Jerry the mouse gets kicked out of their home and relocate to a fancy New York hotel, where a scrappy employee named Kayla will lose her job if she can’t evict Jerry before a high-class wedding at the hotel. Her solution? Hiring Tom to get rid of the pesky mouse.', 0, 'https://image.tmdb.org/t/p/original/6KErczPBROQty7QoIsaa6wJYXZi.jpg'),
(3, 'Below Zero', '2021-01-29', 6.5, 'When a prisoner transfer van is attacked, the cop in charge must fight those inside and outside while dealing with a silent foe: the icy temperatures.', 0, 'https://image.tmdb.org/t/p/original/dWSnsAGTfc8U27bWsy2RfwZs0Bs.jpg'),
(4, 'Sentinelle', '2021-03-05', 6.2, 'Transferred home after a traumatizing combat mission, a highly trained French soldier uses her lethal skills to hunt down the man who hurt her sister.', 0, 'https://image.tmdb.org/t/p/original/fFRq98cW9lTo6di2o4lK1qUAWaN.jpg'),
(5, 'Zack Snyder\'s Justice League', '2021-03-18', 8.8, 'Determined to ensure Superman\'s ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.', 0, 'https://image.tmdb.org/t/p/original/tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg'),
(6, 'Monster Hunter', '2020-12-03', 7.2, 'A portal transports Cpt. Artemis and an elite unit of soldiers to a strange world where powerful monsters rule with deadly ferocity. Faced with relentless danger, the team encounters a mysterious hunter who may be their only hope to find a way home.', 0, 'https://image.tmdb.org/t/p/original/1UCOF11QCw8kcqvce8LKOO6pimh.jpg'),
(7, 'Wonder Woman 1984', '2020-12-16', 6.8, 'A botched store robbery places Wonder Woman in a global battle against a powerful and mysterious ancient force that puts her powers in jeopardy.', 0, 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg'),
(8, 'Space Sweepers', '2021-02-05', 7.2, 'When the crew of a space junk collector ship called The Victory discovers a humanoid robot named Dorothy that\'s known to be a weapon of mass destruction, they get involved in a risky business deal which puts their lives at stake.', 0, 'https://image.tmdb.org/t/p/original/qiUesQForGW872kIC0Crqx3vAr0.jpg'),
(9, 'Coming 2 America', '2021-03-05', 6.9, 'Prince Akeem Joffer is set to become King of Zamunda when he discovers he has a son he never knew about in America – a street savvy Queens native named Lavelle. Honoring his royal father\'s dying wish to groom this son as the crown prince, Akeem and Semmi set off to America once again.', 0, 'https://image.tmdb.org/t/p/original/nWBPLkqNApY5pgrJFMiI9joSI30.jpg'),
(10, 'Outside the Wire', '2021-01-15', 6.5, 'In the near future, a drone pilot is sent into a deadly militarized zone and must work with an android officer to locate a doomsday device.', 0, 'https://image.tmdb.org/t/p/original/6XYLiMxHAaCsoyrVo38LBWMw2p8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cast_detail`
--
ALTER TABLE `cast_detail`
  ADD PRIMARY KEY (`movies_id`,`cast_id`),
  ADD KEY `fk_movies_has_cast_cast1_idx` (`cast_id`),
  ADD KEY `fk_movies_has_cast_movies1_idx` (`movies_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD PRIMARY KEY (`movies_id`,`genre_id`),
  ADD KEY `fk_movies_has_genre_genre1_idx` (`genre_id`),
  ADD KEY `fk_movies_has_genre_movies_idx` (`movies_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast_detail`
--
ALTER TABLE `cast_detail`
  ADD CONSTRAINT `fk_movies_has_cast_cast1` FOREIGN KEY (`cast_id`) REFERENCES `cast` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_cast_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD CONSTRAINT `fk_movies_has_genre_genre1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_genre_movies` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
