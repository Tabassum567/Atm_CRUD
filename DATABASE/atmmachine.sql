-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 03:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atmmachine`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

CREATE TABLE `bill_payments` (
  `bill_id` int(11) NOT NULL,
  `accountNo` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bill_type` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_payments`
--

INSERT INTO `bill_payments` (`bill_id`, `accountNo`, `amount`, `bill_type`, `date`) VALUES
(1923213, 2000000, 1000, 'Electricity', '2021-06-19'),
(121039124, 2000001, 1000, 'Water', '2021-06-20'),
(66666, 2000000, 1023, 'Gas', '2021-06-20'),
(1234567, 2000002, 1004, 'Gas', '2021-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `accountNo` int(11) NOT NULL,
  `activity` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`accountNo`, `activity`) VALUES
(2000000, 'Deposited 10000 on 2021-06-19'),
(2000000, 'Withdrew 1000 on 2021-06-19'),
(2000000, 'Easyloaded 1000 to 03035381924 on 2021-06-19'),
(2000001, 'Deposited 5000000 on 2021-06-19'),
(2000001, 'Transfered 10000 on 2021-06-19'),
(2000001, 'Withdrew 20000 on 2021-06-20'),
(2000001, 'Transfered 50000 on 2021-06-20'),
(2000001, 'Easyloaded 100 to 03337776655 on 2021-06-20'),
(2000000, 'Deposited 50000 on 2021-06-20'),
(2000000, 'Withdrew 1000 on 2021-06-20'),
(2000000, 'Transfered 1000 on 2021-06-20'),
(2000000, 'Easyloaded 50 to 03121234567 on 2021-06-20'),
(2000002, 'Deposited 20000 on 2021-06-20'),
(2000002, 'Withdrew 1000 on 2021-06-20'),
(2000002, 'Transfered 9000 on 2021-06-20'),
(2000002, 'Easyloaded 94 to 03377706682 on 2021-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `accountNo` varchar(30) NOT NULL,
  `pin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`accountNo`, `pin`) VALUES
('2000000', 1234),
('2000001', 1234),
('2000002', 1234),
('2000003', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `accountNo` int(11) NOT NULL,
  `accountBalance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`accountNo`, `accountBalance`) VALUES
(2000000, 143494),
(2000001, 4918900),
(2000002, 8902),
(2000003, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `accountNo` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Phone_Number` varchar(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Date_Of_Birth` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`accountNo`, `Name`, `NIC`, `Phone_Number`, `Email`, `Date_Of_Birth`) VALUES
(2000000, 'Komal Devi', '1234567890987', '12345678909', 'Komal@yahoo.com', '2001-06-12'),
(2000001, 'Tabassum', '1234567891212', '03337777777', 'tabassum@gmail.com', '2000-06-01'),
(2000002, 'Fatima', '9876543211223', '03377706682', 'fatima@gmail.com', '2000-11-04'),
(2000003, 'John Doe', '9876123456789', '03312306428', 'john@doe.com', '2000-07-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`accountNo`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`accountNo`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`accountNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
