-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 11:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `covidcenter`
--

CREATE TABLE `covidcenter` (
  `HospitalID` int(80) NOT NULL,
  `HospitalName` text NOT NULL,
  `city` text NOT NULL,
  `contact` bigint(80) NOT NULL,
  `pincode` bigint(80) NOT NULL,
  `vacantBeds` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covidcenter`
--

INSERT INTO `covidcenter` (`HospitalID`, `HospitalName`, `city`, `contact`, `pincode`, `vacantBeds`) VALUES
(1001, 'Niv Bangaluru', 'bengaluru', 9999999999, 560060, 30),
(1002, 'Kiims Hubli', 'Hubli', 9999999988, 560061, 35),
(1003, 'Nitm ', 'belgavi', 99999999888, 560070, 20),
(1004, 'Indian Institute of science Bangaluru', 'bengaluru', 9999988999, 560060, 80),
(1005, 'Giims', 'bengaluru', 9999999999, 560060, 67);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userno` int(67) NOT NULL,
  `username` varchar(67) NOT NULL,
  `Password` varchar(67) NOT NULL,
  `Email` varchar(67) NOT NULL,
  `number` bigint(67) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userno`, `username`, `Password`, `Email`, `number`) VALUES
(1, 'Rakshitha', 'user123', 'bijoor@gmail.com', 9901066130),
(2, 'siya', 'siya', 'siyaram@gmail.com', 8792103740),
(3, 'radha', 'radha', 'radha@gmail.com', 9901066130),
(4, 'bhuvi', 'bhuvi', 'bhuviharsha@gmail.com', 9901066130),
(5, 'darshan', 'darshan', 'darshan@gmail.com', 9999999999),
(6, 'darshanS', 'darshan', 'darshan@gmail.com', 8888888888),
(7, 'Poojitha', 'poojitha123', 'bijoor@123', 9999999999),
(22, 'rakshitha', 'bijoor123456', 'bijoorrakshitha@gmail.com', 9090909088),
(11, 'bhuviharsha', 'bhuviharsha', 'bhuvi@gmail.com', 8888888888),
(12, 'rakshitha', 'bijoor11', 'bijjo@gmail.com', 9901066130),
(13, 'Shradda', 'shraws123', 'shradda@gmail.com', 9901066130),
(14, 'bijoor', 'bijoor@123', 'bijjo@gmail.com', 8900553888),
(15, 'prathvi', 'prathvi', 'pra@gmail.com', 9999999999),
(16, 'rakshi', 'bijoor456', 'bmj@gmail.com', 87765545),
(17, 'siyaraam', 'raam', 'bijoor@gmail.com', 9999999999),
(18, 'rakshitha bijoor', 'bijoor', 'gh@gmail.com', 9999999999),
(19, 'rakshitha', 'user', 'u@gmail.com', 9999999999),
(20, 'vivek', 'hu', 'vi@gmail.com', 6666666666),
(21, 'Seetha', 'seetha', 'seetharam@gmail.com', 9999999999),
(23, 'rakshitha', '123', 'anu@gmail.com', 9090909090),
(24, 'rakshitha', '123', 'bijoor@gmail.com', 9090909090),
(25, 'anuaaaa', 'anu', 'anu@gmail.com', 9999999999),
(26, 'ramesh', 'ram123', 'ram@gmail.com', 8989898989),
(27, 'Ramesh', '12345', 'bijoor@gmail.com', 9090909090),
(28, 'seeta', 'seeta', 'seetha@gmail.com', 9090909090),
(29, 'RAKSHU', '123', '123@gmail.com', 9090909090),
(30, 'RAKSHU', '123', '123@gmail.com', 9090909090),
(31, 'sachin', 'sachi', 'sachi@gmail.com', 8989898989),
(32, 'weryyy', '123', 'bggftfrdr@gmail.com', 90999898);

--
-- Triggers `login`
--
DELIMITER $$
CREATE TRIGGER `Insert` AFTER INSERT ON `login` FOR EACH ROW INSERT INTO logs VALUES(null,'logged',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `l_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `action`, `l_date`) VALUES
(1, 'logged', '2021-01-14 18:36:36'),
(2, 'logged', '2021-01-14 18:36:41'),
(3, 'logged', '2021-01-14 18:37:32'),
(4, 'logged', '2021-01-15 10:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `plasma`
--

CREATE TABLE `plasma` (
  `donor_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `age` int(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `bloodgroup` text NOT NULL,
  `gender` text NOT NULL,
  `diabetic` varchar(11) NOT NULL,
  `contact` bigint(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plasma`
--

INSERT INTO `plasma` (`donor_id`, `name`, `dob`, `age`, `email`, `bloodgroup`, `gender`, `diabetic`, `contact`) VALUES
(1, 'Rakshitha Bijoor', '2000-04-09', 20, 'bijoorrakshitha@gmail.com', 'O positive', 'Female', 'No', 9999999999),
(2, 'Ramesh', '1999-04-24', 21, 'ram@gmail.com', 'Ab positive', 'male', 'No', 8888888888),
(3, 'Poojitha', '2000-07-08', 20, 'poojitha@gmail.com', 'O positive', 'Female', 'No', 9999999999),
(4, 'Poojitha', '2000-07-08', 20, 'poojitha@gmail.com', 'O positive', 'Female', 'No', 9999999999);

-- --------------------------------------------------------

--
-- Table structure for table `relief`
--

CREATE TABLE `relief` (
  `user_id` int(10) NOT NULL,
  `Donor` varchar(10) NOT NULL,
  `Relief_funds` varchar(99) NOT NULL,
  `amount` int(20) NOT NULL,
  `acc_number` int(99) NOT NULL,
  `bank_name` varchar(33) NOT NULL,
  `Ifsc_code` varchar(89) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relief`
--

INSERT INTO `relief` (`user_id`, `Donor`, `Relief_funds`, `amount`, `acc_number`, `bank_name`, `Ifsc_code`) VALUES
(1, 'rakshit', 'Wheels global Foundation', 90000, 999999999, 'syndicate', '8999Synb'),
(2, 'rakshit', 'Wheels global Foundation', 90000, 999999999, 'syndicate', '8999Synb'),
(3, 'Rakshitha', 'CM relief fund', 20000, 89899898, 'canara', 'cnbk454'),
(4, 'Ramesh', 'Wheels global Foundation', 90000, 12233343, 'syndicate', 'synb123'),
(5, 'Rakshitha', 'Wheels global Foundation', 90000, 12345, 'syndicate', 'synb123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covidcenter`
--
ALTER TABLE `covidcenter`
  ADD PRIMARY KEY (`HospitalID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userno`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plasma`
--
ALTER TABLE `plasma`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `relief`
--
ALTER TABLE `relief`
  ADD PRIMARY KEY (`user_id`,`acc_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `covidcenter`
--
ALTER TABLE `covidcenter`
  MODIFY `HospitalID` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userno` int(67) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plasma`
--
ALTER TABLE `plasma`
  MODIFY `donor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `relief`
--
ALTER TABLE `relief`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
