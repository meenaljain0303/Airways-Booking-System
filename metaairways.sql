-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 05:39 AM
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
-- Database: `metaairways`
--

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `AirCode` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`AirCode`, `Name`, `City`, `State`) VALUES
(112, 'Chhatrapati Shivaji International Airport', 'Mumbai', 'Maharashtra'),
(115, 'Indira Gandhi International Airport', 'New Delhi', 'New Delhi'),
(120, 'Bengaluru International Airport', 'Bengaluru', 'Karnataka'),
(124, 'Netaji Subhas Chandra Bose International Airport Kolkata', 'Kolkata', 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `FlightNo` int(11) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Origin` varchar(100) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `DepartureTime` time DEFAULT NULL,
  `ArrivalTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`FlightNo`, `Type`, `Origin`, `Destination`, `DepartureTime`, `ArrivalTime`) VALUES
(201, 'Boeing777', 'Mumbai', 'Delhi', '09:00:00', '11:00:00'),
(202, 'Boeing777', 'Mumbai', 'Delhi', '16:00:00', '18:00:00'),
(203, 'Boeing777', 'Mumbai', 'Banglore', '10:00:00', '12:00:00'),
(204, 'Boeing777', 'Mumbai', 'Banglore', '17:00:00', '19:00:00'),
(205, 'Boeing777', 'Mumbai', 'Kolkata', '11:00:00', '14:00:00'),
(206, 'Boeing777', 'Mumbai', 'Kolkata', '18:00:00', '22:00:00'),
(207, 'Boeing777', 'Delhi', 'Mumbai', '09:00:00', '11:00:00'),
(208, 'Boeing777', 'Delhi', 'Mumbai', '17:00:00', '19:00:00'),
(209, 'Boeing777', 'Delhi', 'Banglore', '10:00:00', '13:00:00'),
(210, 'Boeing777', 'Delhi', 'Banglore', '18:00:00', '21:00:00'),
(211, 'Boeing777', 'Delhi', 'Kolkata', '12:00:00', '14:00:00'),
(212, 'Boeing777', 'Delhi', 'Kolkata', '21:00:00', '23:00:00'),
(213, 'Boeing777', 'Banglore', 'Mumbai', '09:00:00', '11:00:00'),
(214, 'Boeing777', 'Banglore', 'Mumbai', '21:00:00', '23:00:00'),
(215, 'Boeing777', 'Banglore', 'Delhi', '10:00:00', '13:00:00'),
(216, 'Boeing777', 'Banglore', 'Delhi', '17:00:00', '20:00:00'),
(217, 'Boeing777', 'Banglore', 'Kolkata', '11:00:00', '14:00:00'),
(218, 'Boeing777', 'Banglore', 'Kolkata', '16:00:00', '19:00:00'),
(219, 'Boeing777', 'Kolkata', 'Mumbai', '11:00:00', '13:00:00'),
(220, 'Boeing777', 'Kolkata', 'Mumbai', '18:00:00', '20:00:00'),
(221, 'Boeing777', 'Kolkata', 'Delhi', '09:00:00', '11:00:00'),
(222, 'Boeing777', 'Kolkata', 'Delhi', '17:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `PassengerID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `EmailID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`PassengerID`, `Name`, `Gender`, `DOB`, `MobileNo`, `EmailID`) VALUES
(17, 'sgs', 'm', '2018-10-13', '5454', 'shjh@hjsh.com');

-- --------------------------------------------------------

--
-- Table structure for table `terminal`
--

CREATE TABLE `terminal` (
  `TerminalId` int(11) NOT NULL,
  `TerminalName` varchar(10) DEFAULT NULL,
  `AirCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terminal`
--

INSERT INTO `terminal` (`TerminalId`, `TerminalName`, `AirCode`) VALUES
(1, 'T1', 112),
(2, 'T2', 112),
(3, 'T3', 115),
(4, 'T4', 115),
(5, 'T5', 115),
(6, 'T6', 120),
(7, 'T7', 124);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TickNo` int(11) NOT NULL,
  `PassengerID` int(11) DEFAULT NULL,
  `FlightID` int(11) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Terminal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TickNo`, `PassengerID`, `FlightID`, `Type`, `Terminal`) VALUES
(2255, 32, 209, 'Economy', '2'),
(3125, 42, 214, 'Economy', '4'),
(3225, 4145, 202, 'Economy', '3'),
(3554, 45, 201, 'Economy', '1'),
(3705, 34, 201, 'Economy', '1'),
(3727, 40, 208, 'Economy', '1'),
(3742, 41, 203, 'Economy', '1'),
(3751, 20, 201, 'Economy', '1'),
(3758, 48, 208, 'Economy', '1'),
(3771, 22, 202, 'Economy', '1'),
(3772, 17, 202, 'Economy', '1'),
(3814, 33, 201, 'Economy', '1'),
(3862, 50, 216, 'Economy', '1'),
(3966, 29, 201, 'Economy', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`) VALUES
('asd', 'asd@asd.asd', 'asd'),
('meenal', 'meenal@gmail.com', 'password'),
('mj', 'meenal@gmail.com', 'meenalj351');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`AirCode`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`FlightNo`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`PassengerID`);

--
-- Indexes for table `terminal`
--
ALTER TABLE `terminal`
  ADD PRIMARY KEY (`TerminalId`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TickNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
