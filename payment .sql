-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 05:43 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `method`, `status`, `amount`, `date`, `description`) VALUES
(7, '111', ' credit card', 'paid', '2500.00', '2020-06-09', ' Successfully paid your money'),
(8, '115', 'visa card', 'not paid', '2500.00', '2020-06-09', ' not received your money'),
(11, '120', 'debit card', ' paid', '3500.00', '2020-06-09', ' successfully paid your money'),
(14, '50', 'credit card', '  received', '4000.00', '2020-06-09', ' successfully paid your money'),
(15, ' 15', ' debit card', 'not paid', '1000.00', '2020-09-07', ' not received your money'),
(16, ' 40', ' credit card', 'received', '2000.00', '2020-10-07', 'successfully paid your money'),
(18, 'me111', 'card', 'not received', '2000.00', '2023-08-03', 'update 18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
