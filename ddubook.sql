-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 01, 2014 at 08:14 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ddubook`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `uid1` int(255) NOT NULL,
  `uid2` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `iid` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(255) NOT NULL,
  `imagep` varchar(1000) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`iid`, `uid`, `imagep`) VALUES
(35, 1, 'IMG_2823.JPG'),
(36, 1, ''),
(37, 1, 'IMG_2823.JPG'),
(38, 3, 'twitter-users-impact-your-brand_0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image_upload`
--

CREATE TABLE IF NOT EXISTS `image_upload` (
  `uid` int(255) NOT NULL,
  `iid` int(255) NOT NULL AUTO_INCREMENT,
  `imagep` varchar(1000) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `image_upload`
--

INSERT INTO `image_upload` (`uid`, `iid`, `imagep`) VALUES
(1, 1, 'IMG_2823.JPG'),
(1, 2, 'twitter-users-impact-your-brand_0.jpg'),
(1, 3, 'twitter-users-impact-your-brand_0.jpg'),
(1, 4, 'IMG_2823.JPG'),
(1, 5, 'twitter-users-impact-your-brand_0.jpg'),
(1, 6, 'IMG_2823.JPG'),
(1, 7, 'IMG_2823.JPG'),
(1, 8, 'twitter-users-impact-your-brand_0.jpg'),
(1, 9, 'IMG_2823.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `uid1` int(255) NOT NULL,
  `uid2` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `uid` int(255) NOT NULL,
  `sid` int(255) NOT NULL AUTO_INCREMENT,
  `statusp` varchar(1000) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`uid`, `sid`, `statusp`) VALUES
(1, 4, 'anand'),
(1, 5, 'afsdfasdfa'),
(1, 6, 'afdsfadf'),
(1, 7, 'asdfasdfd'),
(1, 8, 'hey dude'),
(1, 9, 'hey jude'),
(1, 10, 'hey me'),
(3, 11, 'su kidhu?\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` bigint(255) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `bday` varchar(100) NOT NULL,
  `phno` int(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `intin` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `uname` varchar(1000) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `pass`, `bday`, `phno`, `email`, `sex`, `intin`, `country`, `uname`) VALUES
(1, 'a', 'a', 'a', 'a', 2147483647, 'a', 'm', 'nhnh', 'hnhn', 'anand'),
(2, '', '', '', '', 0, '', '', '', '', ''),
(3, 'parth', 'suvagia', 'p', '1', 1, 'p', 'p', 'p', 'p', 'parth');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
