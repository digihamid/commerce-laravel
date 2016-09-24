-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2016 at 11:28 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `comdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE IF NOT EXISTS `tbl_about` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Des` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE IF NOT EXISTS `tbl_cat` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Des` text NOT NULL,
  `Userid` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Active` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Message` text NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general`
--

CREATE TABLE IF NOT EXISTS `tbl_general` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Co_title` varchar(300) NOT NULL,
  `Logo_img` varchar(300) NOT NULL,
  `Des` varchar(300) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Phone` varchar(300) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Insta_link` varchar(300) NOT NULL,
  `Tele_link` varchar(300) NOT NULL,
  `Face_link` varchar(300) NOT NULL,
  `Google_link` varchar(300) NOT NULL,
  `Active` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(300) NOT NULL,
  `Des` mediumtext NOT NULL,
  `Date` int(100) NOT NULL,
  `Rdate` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(300) NOT NULL,
  `Des` varchar(500) NOT NULL,
  `Image` varchar(400) NOT NULL,
  `Price` varchar(300) NOT NULL,
  `off` int(11) NOT NULL,
  `Feature` int(11) NOT NULL,
  `Like_tik` int(11) NOT NULL,
  `Cat_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(450) NOT NULL,
  `Link` varchar(450) NOT NULL,
  `Image` varchar(450) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag`
--

CREATE TABLE IF NOT EXISTS `tbl_tag` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag_product`
--

CREATE TABLE IF NOT EXISTS `tbl_tag_product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tagid` int(11) NOT NULL,
  `Productid` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `bio_des` text NOT NULL,
  `active` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `remember_token` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `username`, `password`, `bio_des`, `active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hamid', 'mosavi', '093813221', 'digihamid@yahoo.com', 'digihamid', '$2y$10$zdXyPomZ925yhV0GkMB2TeDV02NimrKwlnEalf6Lt0fdGvJvnXseu', '', 1, 1, '', '2016-09-22 11:06:47', '2016-09-22 11:06:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
