-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2018 at 01:01 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecar`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `ID` varchar(10) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Price` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`ID`, `Brand`, `Model`, `Type`, `Price`, `Quantity`, `Image`) VALUES
('E1', 'Continental AG', '185R14c', 'Tire', 12000, 28, '1.jpg'),
('E2', 'Dunlop', '1415R4C2', 'Tire', 8500, 40, '2.jpg'),
('E3', 'Toyota', 'Toyota Metal Logo-Silver', 'Logo', 370, 5, 'logo.jpg'),
('E4', 'Mobiloil', 'Mobil Super', 'Oil', 1200, 20, 'mobil.png');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `ID` varchar(10) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Description` tinytext NOT NULL,
  `Price` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`ID`, `Brand`, `Model`, `Description`, `Price`, `Quantity`, `Image`) VALUES
('C1', 'Toyota', 'Premio', 'Premio was intended to be the leading model of advanced medium sedan in the 21 century, thus it did not inherit its predecessor\'s name. The style of Premio is significantly different from the previous conservative line. It has an aggressive design seen in', 3600000, 5, 'premio.jpg'),
('C2', 'Toyota', 'Allion', 'The new 2017 Toyota Allion will be having some minor adjustments upfront. The model will be exhibiting a better body structure. Toyota Allion might not be suitable for extreme maneuvers but surprisingly the new vehicle will definitely have superior contro', 3200000, 3, 'allion.jpg'),
('C3', 'Mulsanne', 'Bentley', 'The Mulsanne Extended Wheelbase is the most comfortable and luxurious car in the Mulsanne range. Designed for customers with a preference for being driven, it offers a first-class air-travel experience on the road. With an extra 250mm of legroom in the re', 11000000, 2, 'bentley.jpg'),
('C4', 'BMW', 'BMW i8', 'BMW has had a great start to the year, year on year sales have increased despite a struggling market. Conquest business for the BMW Group has surpassed expectation and the MINI brand is thriving. BMW has set about releasing new MINI models to keep the bra', 25000000, 2, 'bmw.jpg'),
('C5', 'Audi', 'R8', 'Sharing just under 50% of the same parts as the R8 GT3 LMS race car, the Audi R8 Coupe is bred through the lens of motorsport. The 532-hp or 602-hp V10 plus engine epitomizes the mid-engine drivetrain concept, providing ideal vehicle balance through its c', 150000000, 2, 'r8.jpg'),
('C6', 'BMW', '750i', 'The BMW 7 Series is a full-size luxury sedan produced by the German automaker BMW since 1977. It is the successor to the BMW E3 \"New Six\" sedan and is currently in its sixth generation.The 7 Series is BMW\'s flagship car and is only available as a sedan (i', 70000000, 2, 'bmw1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
