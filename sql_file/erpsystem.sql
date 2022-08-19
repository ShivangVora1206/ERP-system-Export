-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 01:49 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `erpsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE IF NOT EXISTS `accountant` (
`id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `name`, `email`, `pwd`) VALUES
(5, 'hemant', 'hemant@gmail.com', 'hemant');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `pwd`) VALUES
(1, 'shivang', 'shivang@vora.com', 'shivang');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gstnumber` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `name`, `contact`, `gstnumber`, `type`) VALUES
(1, 'buyer1', '1234567890', '1122334455', 'rawmaterial'),
(2, 'shivang', '1234567890', '1122334455', 'rawmaterial'),
(3, 'shivan', '1234567890', '1122334455', 'rawmaterial'),
(4, 'shivan', '1234567890', '1122334455', 'rawmaterial'),
(5, 'kartik', '1234567890', '1122334455', 'rawmaterial'),
(6, 'hardik', '1234567890', '1122334455', 'rawmaterial');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` int(50) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `salary`, `department`) VALUES
(2, 'itachi', 10000, 'comp');

-- --------------------------------------------------------

--
-- Table structure for table `inventorymanager`
--

CREATE TABLE IF NOT EXISTS `inventorymanager` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `inventorymanager`
--

INSERT INTO `inventorymanager` (`id`, `name`, `email`, `pwd`) VALUES
(1, 'hardik', 'hardik@poriya.com', 'hardik');

-- --------------------------------------------------------

--
-- Table structure for table `processedmaterial`
--

CREATE TABLE IF NOT EXISTS `processedmaterial` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `ppu` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `processedmaterial`
--

INSERT INTO `processedmaterial` (`id`, `name`, `quantity`, `ppu`) VALUES
(3, 'pencils', 1000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rawmaterial`
--

CREATE TABLE IF NOT EXISTS `rawmaterial` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `ppu` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rawmaterial`
--

INSERT INTO `rawmaterial` (`id`, `name`, `quantity`, `ppu`) VALUES
(1, 'wood', 78, 10);

-- --------------------------------------------------------

--
-- Table structure for table `salescounter`
--

CREATE TABLE IF NOT EXISTS `salescounter` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorymanager`
--
ALTER TABLE `inventorymanager`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processedmaterial`
--
ALTER TABLE `processedmaterial`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rawmaterial`
--
ALTER TABLE `rawmaterial`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salescounter`
--
ALTER TABLE `salescounter`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventorymanager`
--
ALTER TABLE `inventorymanager`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `processedmaterial`
--
ALTER TABLE `processedmaterial`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rawmaterial`
--
ALTER TABLE `rawmaterial`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `salescounter`
--
ALTER TABLE `salescounter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
