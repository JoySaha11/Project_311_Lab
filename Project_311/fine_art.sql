-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 08:07 PM
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
-- Database: `fine_art`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `JOINING_DATE` date NOT NULL,
  `ADMIN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `JOINING_DATE`, `ADMIN_ID`) VALUES
('Intisar', 'Tahmid', 'intisar.naheen@northsouth.edu', 1614304892, '2021-04-18', 1),
('Saidur', 'Rahman', 'mdsaidurrahmansaurav@gmail.com', 1818466397, '2021-04-18', 2);

-- --------------------------------------------------------

--
-- Table structure for table `artwork`
--

CREATE TABLE `artwork` (
  `ARTIST_ID` int(11) DEFAULT NULL,
  `ARTWORK_NAME` varchar(40) NOT NULL,
  `RATING` double DEFAULT NULL,
  `PRICE` double NOT NULL,
  `ART_CATEGORY` varchar(20) DEFAULT NULL,
  `WIDTH` double DEFAULT NULL,
  `HEIGHT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artwork`
--

INSERT INTO `artwork` (`ARTIST_ID`, `ARTWORK_NAME`, `RATING`, `PRICE`, `ART_CATEGORY`, `WIDTH`, `HEIGHT`) VALUES
(3, 'Modern Life', 5, 1245, 'Photography', 6, 6),
(1, 'Serenity', 5, 2500, 'Painting', 25, 13),
(2, 'The Great Dictator', 4, 3489.34, 'Sculpture', 18, 27);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BUYER_ID` int(11) DEFAULT NULL,
  `ARTIST_ID` int(11) DEFAULT NULL,
  `ARTWORK_NAME` varchar(40) DEFAULT NULL,
  `PURCHASING_DATE` datetime DEFAULT NULL,
  `DELIVERY_DATE` date DEFAULT NULL,
  `DELIVERY_ADDRESS` varchar(50) DEFAULT NULL,
  `PAYMENT_METHOD` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BUYER_ID`, `ARTIST_ID`, `ARTWORK_NAME`, `PURCHASING_DATE`, `DELIVERY_DATE`, `DELIVERY_ADDRESS`, `PAYMENT_METHOD`) VALUES
(2, 1, 'Serenity', '2021-05-09 00:00:00', '2021-05-09', 'Tongi', 'bkash');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `NAME` varchar(40) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `MESSAGE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `ADMIN_ID` int(11) DEFAULT NULL,
  `BUYER_ID` int(11) DEFAULT NULL,
  `ARTIST_ID` int(11) DEFAULT NULL,
  `ARTWORK_NAME` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`ADMIN_ID`, `BUYER_ID`, `ARTIST_ID`, `ARTWORK_NAME`) VALUES
(1, 2, 1, 'Serenity');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `USER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `COUNTRY` varchar(30) DEFAULT NULL,
  `JOINING_DATE` date NOT NULL,
  `ARTIST_CATEGORY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`USER_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `DATE_OF_BIRTH`, `COUNTRY`, `JOINING_DATE`, `ARTIST_CATEGORY`) VALUES
(1, 'Pallob', 'Poddar', 'pallobpoddar@gmail.com', 1517080481, '1999-01-28', 'Bangladesh', '2021-05-09', 'Painter'),
(2, 'Proma', 'Islam', 'promaislam@gmail.com', 1918308429, '2000-03-12', 'Bangladesh', '2021-05-09', 'Sculptor'),
(3, 'Joy', 'Saha', 'joysaha@gmail.com', 1715692847, '1999-07-23', 'Bangladesh', '2021-05-09', 'Photographer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `artwork`
--
ALTER TABLE `artwork`
  ADD PRIMARY KEY (`ARTWORK_NAME`),
  ADD KEY `ARTIST_ID` (`ARTIST_ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD KEY `ARTWORK_NAME` (`ARTWORK_NAME`),
  ADD KEY `BUYER_ID` (`BUYER_ID`),
  ADD KEY `ARTIST_ID` (`ARTIST_ID`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD KEY `ARTWORK_NAME` (`ARTWORK_NAME`),
  ADD KEY `ARTIST_ID` (`ARTIST_ID`),
  ADD KEY `ADMIN_ID` (`ADMIN_ID`),
  ADD KEY `BUYER_ID` (`BUYER_ID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artwork`
--
ALTER TABLE `artwork`
  ADD CONSTRAINT `artwork_ibfk_1` FOREIGN KEY (`ARTIST_ID`) REFERENCES `user_info` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`ARTWORK_NAME`) REFERENCES `artwork` (`ARTWORK_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_ibfk_4` FOREIGN KEY (`BUYER_ID`) REFERENCES `user_info` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_ibfk_5` FOREIGN KEY (`ARTIST_ID`) REFERENCES `user_info` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `manages`
--
ALTER TABLE `manages`
  ADD CONSTRAINT `manages_ibfk_4` FOREIGN KEY (`ARTWORK_NAME`) REFERENCES `artwork` (`ARTWORK_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `manages_ibfk_5` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`),
  ADD CONSTRAINT `manages_ibfk_6` FOREIGN KEY (`BUYER_ID`) REFERENCES `user_info` (`USER_ID`),
  ADD CONSTRAINT `manages_ibfk_7` FOREIGN KEY (`ARTIST_ID`) REFERENCES `user_info` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `manages_ibfk_8` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `manages_ibfk_9` FOREIGN KEY (`BUYER_ID`) REFERENCES `user_info` (`USER_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
