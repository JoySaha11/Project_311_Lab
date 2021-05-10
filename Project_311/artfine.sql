-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 06:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artfine`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `User_Id` int(8) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(25) DEFAULT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone_Number` int(15) NOT NULL,
  `Joining_Date` date NOT NULL,
  `Country` varchar(10) NOT NULL,
  `Date_Of_Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`User_Id`, `First_Name`, `Last_Name`, `Email`, `Phone_Number`, `Joining_Date`, `Country`, `Date_Of_Birth`) VALUES
(18980272, 'KFJ;L', 'afgag', 'fasgag@gmail.com', 2147483647, '2021-05-06', 'Bangladesh', '2021-04-27'),
(128745769, 'Mojnu', 'Rahman', 'mojnu2@gamil.com', 1897897129, '2021-05-08', 'Bangladesh', '1996-07-07'),
(1831423672, 'Raihan', 'Khan', 'raihan23@gmail.com', 1661236542, '2021-05-08', 'Bangladesh', '1997-06-03'),
(1831562121, 'Fairuz', 'Rahman', 'oisheechuchu@gmail.com', 1874538762, '2021-05-08', 'Bangladesh', '1998-03-20'),
(1831564242, 'Sheikh', 'Wasif', 'sheikh2013@gmail.com', 1678356722, '2021-05-08', 'Bangladesh', '1998-05-28'),
(1831624233, 'Ork', 'Rahaman', 'orkchuchu@gmail.com', 1712343333, '2021-05-08', 'Bangladesh', '1998-06-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`User_Id`),
  ADD UNIQUE KEY `Email` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
