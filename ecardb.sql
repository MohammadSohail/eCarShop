-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 04:37 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecardb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `description` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `brand`, `model`, `description`, `product_img_name`, `qty`, `price`) VALUES
(1, 'a', 'a', 'a', 'a', 1, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `description` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `description`, `product_img_name`, `qty`, `price`) VALUES
(4, 'Toyota', 'Premio', 'Premio was intended to be the leading model of advanced medium sedan in the 21 century, thus it did not inherit its predecessor\'s name. The style of Premio is significantly different from the previous conservative line. It has an aggressive design seen in', 'premio.jpg', 4, '3600000.00'),
(5, 'Toyota', 'Allion', 'The new 2017 Toyota Allion will be having some minor adjustments upfront. The model will be exhibiting a better body structure. Toyota Allion might not be suitable for extreme maneuvers but surprisingly the new vehicle will definitely have superior contro', 'allion.jpg', 5, '3200000.00'),
(6, 'Mulsanne', 'Bentley', 'The Mulsanne Extended Wheelbase is the most comfortable and luxurious car in the Mulsanne range. Designed for customers with a preference for being driven, it offers a first-class air-travel experience on the road. With an extra 250mm of legroom in the re', 'bentley.jpg', 10, '11000000.00'),
(7, 'BMW', 'i8', 'BMW has had a great start to the year, year on year sales have increased despite a struggling market. Conquest business for the BMW Group has surpassed expectation and the MINI brand is thriving. BMW has set about releasing new MINI models to keep the bra', 'bmw.jpg', 5, '25000000.00'),
(8, 'Audi', 'R8', 'Sharing just under 50% of the same parts as the R8 GT3 LMS race car, the Audi R8 Coupe is bred through the lens of motorsport. The 532-hp or 602-hp V10 plus engine epitomizes the mid-engine drivetrain concept, providing ideal vehicle balance through its c', 'r8.jpg', 220, '99999999.99'),
(9, 'BMW', '750i', 'The BMW 7 Series is a full-size luxury sedan produced by the German automaker BMW since 1977. It is the successor to the BMW E3 \"New Six\" sedan and is currently in its sixth generation.The 7 Series is BMW\'s flagship car and is only available as a sedan (i', 'bmw1.jpg', 100, '70000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `salary` int(15) DEFAULT NULL,
  `WorkingSince` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `fname`, `lname`, `email`, `salary`, `WorkingSince`) VALUES
(10, 'Aminul', 'Haq', 'roxaminul@gmail.com', 234234234, '2000-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `pid` int(15) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `units` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `country`, `email`, `password`, `type`) VALUES
(1, 'Md', 'Sohail', 'Mym', 'Mym', 'Bangladesh', 'admin@abc.com', 'admin', 'admin'),
(2, 'Petyr', 'Baelish', 'House Baelish', 'Northeastern shores', 'Vale of Arryn', 'baelish@got.com', '111', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `worksat`
--

CREATE TABLE `worksat` (
  `eid` int(11) NOT NULL,
  `wid` int(11) NOT NULL,
  `since` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worksat`
--

INSERT INTO `worksat` (`eid`, `wid`, `since`) VALUES
(10, 2, '2002-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `id` int(11) NOT NULL,
  `location` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`id`, `location`, `name`) VALUES
(2, 'Dhaka', 'HeadQuarter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`pid`,`uid`,`date`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `worksat`
--
ALTER TABLE `worksat`
  ADD PRIMARY KEY (`eid`,`wid`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
