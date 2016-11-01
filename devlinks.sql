-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2016 at 04:50 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devlinks`
--

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `linkURL` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `categories` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`ID`, `name`, `linkURL`, `description`, `rating`, `categories`) VALUES
(3, 'World Wide Web Consortium (W3C)', 'https://www.w3.org/', 'ÐžÑ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ W3C - Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸, Ñ€Ð°Ð·Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°ÑŽÑ‰ÐµÐ¹ Ð¸ Ð²Ð½ÐµÐ´Ñ€ÑÑŽÑ‰ÐµÐ¹ ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚Ñ‹ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ð°.', 2, 1),
(4, 'WebReference', 'https://webref.ru/', 'Ð¡Ð¿Ñ€Ð°Ð²Ð¾Ñ‡Ð½Ð¸ÐºÐ¸ Ð¸ Ñ€ÑƒÐºÐ¾Ð²Ð¾Ð´ÑÑ‚Ð²Ð° Ð¿Ð¾ Ð²ÐµÐ±-Ñ‚ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸ÑÐ¼, Ð²ÐµÑ€ÑÑ‚ÐºÐµ Ð¸ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ð¸ Ð¼Ð¾Ð±Ð¸Ð»ÑŒÐ½Ñ‹Ñ… Ð¿Ñ€Ð¸Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ Ð¿Ð¾Ð´ Ñ€ÐµÐ´Ð°ÐºÑ†Ð¸ÐµÐ¹ Ð’Ð»Ð°Ð´Ð° ÐœÐµÑ€Ð¶ÐµÐ²Ð¸Ñ‡Ð°', 1, 6),
(6, 'Wisdomweb.ru â€” ÑƒÑ‡ÐµÐ±Ð½Ð¸ÐºÐ¸ Ð´Ð»Ñ Ð²ÐµÐ±-Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸ÐºÐ¾Ð²', 'http://www.wisdomweb.ru/', 'ÐžÐ½Ð»Ð°Ð¹Ð½ ÑƒÑ‡ÐµÐ±Ð½Ð¸ÐºÐ¸ Ð¿Ð¾ HTML, HTML5, CSS, JavaScript, AJAX, HDOM, jQuery', 4, 2),
(7, 'Mozilla Developmer Network', 'https://developer.mozilla.org/en/', 'Ð¡Ð°Ð¹Ñ‚ Ð¾Ñ‚ÐºÑ€Ñ‹Ñ‚Ð¾Ð³Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÑÑ‚Ð²Ð° Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸ÐºÐ¾Ð² Mozilla Development Network', 1, 14),
(8, 'W3Schools Online Web Tutorials', 'http://www.w3schools.com/', 'Ð¡Ð°Ð¹Ñ‚ Ð´Ð»Ñ Ð²ÐµÐ±-Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸ÐºÐ¾Ð². Ð¡Ð¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ ÑÐ¿Ñ€Ð°Ð²Ð¾Ñ‡Ð½Ð¸ÐºÐ¸ Ð¸ ÑƒÑ‡ÐµÐ±Ð½Ñ‹Ðµ Ð¼Ð°Ñ‚ÐµÑ€Ð¸Ð°Ð»Ñ‹ Ð¿Ð¾ HTML, CSS, JavaScript, SQL, PHP, ASP', 3, 6),
(9, 'jQuery', 'https://jquery.com/', 'jQuery â€” Ð±Ð¸Ð±Ð»Ð¸Ð¾Ñ‚ÐµÐºÐ° JavaScript, Ð¿Ñ€ÐµÐ´Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð½Ð°Ñ Ð´Ð»Ñ Ð¿Ð¾Ð¸ÑÐºÐ° Ð¸ Ð¼Ð°Ð½Ð¸Ð¿ÑƒÐ»ÑÑ†Ð¸Ð¸ Ñ HTML-Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ð¼Ð¸, Ð¾Ð±Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ¸ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ð¹, Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹ Ñ Ð°Ð½Ð¸Ð¼Ð°Ñ†Ð¸ÐµÐ¹ Ð¸ AJAX.', 2, 32),
(10, 'PHP: Hypertext Preprocessor', 'http://php.net', 'ÐžÑ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð¾ PHP - ÑÐºÑ€Ð¸Ð¿Ñ‚Ð¾Ð²Ð¾Ð¼ ÑÐ·Ñ‹ÐºÐµ Ð¾Ð±Ñ‰ÐµÐ³Ð¾ Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ, ÑˆÐ¸Ñ€Ð¾ÐºÐ¾ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÑÐµÐ¼Ð¾Ð¼ Ð² Ð²ÐµÐ±-Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐµ.', 5, 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
