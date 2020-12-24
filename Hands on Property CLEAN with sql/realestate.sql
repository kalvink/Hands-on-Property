-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2016 at 10:54 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agentID` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `website` varchar(70) NOT NULL,
  `experience` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `dateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appoitnment`
--

CREATE TABLE `appoitnment` (
  `dateOfAppt` date NOT NULL,
  `timeofAppt` int(11) NOT NULL,
  `agentID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `propertyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `postalCode` varchar(7) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `propertyID` int(11) NOT NULL,
  `region` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `postalCode` varchar(7) NOT NULL,
  `propertyDetails` text,
  `daysActive` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `taxes` int(11) NOT NULL,
  `numOfBedrooms` int(11) NOT NULL,
  `levels` int(11) NOT NULL,
  `mlsNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `search_preferences`
--

CREATE TABLE `search_preferences` (
  `customerID` int(11) NOT NULL,
  `houseType` varchar(40) NOT NULL,
  `priceRange` int(11) NOT NULL,
  `numOfBeds` int(11) NOT NULL,
  `squareFeet` int(11) NOT NULL,
  `numOfBathrooms` int(11) NOT NULL,
  `listedSince` date NOT NULL,
  `parkingSpace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agentID`);

--
-- Indexes for table `appoitnment`
--
ALTER TABLE `appoitnment`
  ADD UNIQUE KEY `agentID` (`agentID`),
  ADD UNIQUE KEY `customerID` (`customerID`),
  ADD UNIQUE KEY `propertyID` (`propertyID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`propertyID`);

--
-- Indexes for table `search_preferences`
--
ALTER TABLE `search_preferences`
  ADD UNIQUE KEY `customerID` (`customerID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
