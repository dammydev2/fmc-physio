-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2018 at 09:34 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `id` int(11) NOT NULL,
  `rollnum` varchar(12) NOT NULL,
  `name` varchar(70) NOT NULL,
  `age` int(3) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `complaint` varchar(255) NOT NULL,
  `date_access` varchar(12) NOT NULL,
  `history_source` varchar(255) NOT NULL,
  `history` text NOT NULL,
  `present_treat` varchar(255) NOT NULL,
  `major_ills` varchar(255) NOT NULL,
  `drug_history` varchar(255) NOT NULL,
  `surgical_history` varchar(255) NOT NULL,
  `family_history` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`id`, `rollnum`, `name`, `age`, `dob`, `complaint`, `date_access`, `history_source`, `history`, `present_treat`, `major_ills`, `drug_history`, `surgical_history`, `family_history`, `time`) VALUES
(1, '', 'yakubu', 12, '2018-11-07', '', '2018-11-08', '', '', 'others', 'aaaa', 'aaa', 'aaa', 'aaa', '2018-11-29 14:36:10'),
(2, 'roll-201fit', 'yakubu', 12, '2018-11-07', '', '2018-11-08', '', '', 'others', 'aaaa', 'aaa', 'aaa', 'aaa', '2018-11-29 14:38:07'),
(3, 'roll-202fit', 'yakubu', 12, '2018-11-02', 'ssss', '2018-11-09', 'sss', 'sssss', 'others', 'ssssssss', 'sss', 'sss', 'ssssss', '2018-11-29 14:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `assessment2`
--

CREATE TABLE `assessment2` (
  `id` int(11) NOT NULL,
  `rollnum` varchar(30) NOT NULL,
  `part_fit` varchar(70) NOT NULL,
  `duration` varchar(70) NOT NULL,
  `r4stop` varchar(255) NOT NULL,
  `r4fit` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `ddate` varchar(12) NOT NULL,
  `height` varchar(12) NOT NULL,
  `weight` varchar(12) NOT NULL,
  `bmi` varchar(70) NOT NULL,
  `vitals` varchar(70) NOT NULL,
  `bp` varchar(70) NOT NULL,
  `pr` varchar(70) NOT NULL,
  `waist` varchar(70) NOT NULL,
  `hip` varchar(70) NOT NULL,
  `ratio` varchar(70) NOT NULL,
  `heartrate` varchar(70) NOT NULL,
  `plan` varchar(70) NOT NULL,
  `means` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment2`
--

INSERT INTO `assessment2` (`id`, `rollnum`, `part_fit`, `duration`, `r4stop`, `r4fit`, `others`, `signature`, `ddate`, `height`, `weight`, `bmi`, `vitals`, `bp`, `pr`, `waist`, `hip`, `ratio`, `heartrate`, `plan`, `means`) VALUES
(1, 'roll-202fit', 'no', ' 2 days', 'ss', 'want to improve my shape', '', ' ', 'fdsgs', '12', '12', ' 12', '12', '12', '12', '', '12', '12', '12', 'sdgdgfdfdfd', 'sfdfdgg'),
(2, 'roll-202fit', 'no', ' 2 days', 'ss', 'want to improve my shape', '', ' ', 'fdsgs', '12', '12', ' 12', '12', '12', '12', '', '12', '12', '12', 'sdgdgfdfdfd', 'sfdfdgg'),
(3, 'roll-202fit', 'no', ' 2 days', 'ss', 'to regain my previous shape after child birth', 'sss', ' ', 'sss', '12', '12', ' 12', '12', '12', '12', '12', '12', '12', '12', 'asssssss', 'asssssss');

-- --------------------------------------------------------

--
-- Table structure for table `exerate`
--

CREATE TABLE `exerate` (
  `id` int(255) NOT NULL,
  `num` varchar(1000) NOT NULL,
  `rec` varchar(1000) NOT NULL,
  `exerate` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exerate`
--

INSERT INTO `exerate` (`id`, `num`, `rec`, `exerate`) VALUES
(1, '1243', '0001', 'AGE 15-20 rate = 2'),
(2, '1243', '0001', 'AGE 21-30 rate = 2'),
(3, '1243', '0001', 'AGE 31-40 rate = 4'),
(4, '1243', '0001', 'AGE 41-50 rate = 3'),
(5, '1243', '0001', 'AGE 50 + rate = 5'),
(6, '1243', '0001', 'AGE 15-20 rate = 4'),
(7, '1243', '0001', 'AGE 21-30 rate = 3'),
(8, '1243', '0001', 'AGE 31-40 rate = 2'),
(9, '1243', '0001', 'AGE 41-50 rate = 4'),
(10, '1243', '0001', 'AGE 50 + rate = 5');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL,
  `rollnum` varchar(100) NOT NULL,
  `ddate` varchar(12) NOT NULL,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(70) NOT NULL,
  `state` varchar(70) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `homephone` varchar(15) NOT NULL,
  `bussinessphone` varchar(15) NOT NULL,
  `age` varchar(3) NOT NULL,
  `height` varchar(7) NOT NULL,
  `weight` varchar(7) NOT NULL,
  `pain` varchar(255) NOT NULL,
  `shortness` varchar(255) NOT NULL,
  `dizziness` varchar(255) NOT NULL,
  `orthopnea` varchar(225) NOT NULL,
  `edema` varchar(255) NOT NULL,
  `palpitations` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `rollnum`, `ddate`, `firstname`, `lastname`, `address`, `city`, `state`, `zip`, `homephone`, `bussinessphone`, `age`, `height`, `weight`, `pain`, `shortness`, `dizziness`, `orthopnea`, `edema`, `palpitations`, `date`) VALUES
(1, 'roll-202fit', '10/04/2018', 'oguns tolu', 'OPEYEMI', '6 goshen street afobaje estate ota', 'abbeokuta', 'ogun', '110253', '08083004959', '394544699868346', 'aa', '12', '12', 'no', 'yes', 'yes', 'no', 'unsure', 'unsure', '2018-11-29 16:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire2`
--

CREATE TABLE `questionnaire2` (
  `id` int(11) NOT NULL,
  `rollnum` varchar(30) NOT NULL,
  `intermittent` varchar(25) NOT NULL,
  `heart` varchar(25) NOT NULL,
  `breath` varchar(25) NOT NULL,
  `smoke` varchar(25) NOT NULL,
  `drink` varchar(25) NOT NULL,
  `health` varchar(25) NOT NULL,
  `exercise` varchar(25) NOT NULL,
  `exerate` varchar(25) NOT NULL,
  `regular` varchar(25) NOT NULL,
  `type` varchar(255) NOT NULL,
  `day` varchar(150) NOT NULL,
  `eat` varchar(255) NOT NULL,
  `like` varchar(150) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire2`
--

INSERT INTO `questionnaire2` (`id`, `rollnum`, `intermittent`, `heart`, `breath`, `smoke`, `drink`, `health`, `exercise`, `exerate`, `regular`, `type`, `day`, `eat`, `like`, `time`) VALUES
(1, 'roll-202fit', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'AGE 50 + rate = 1 ', 'yes', '12333', '40000', '4', 'Feel better', '2018-11-29 17:46:26'),
(2, 'roll-202fit', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'AGE 15-20 rate = 1 ', 'yes', '12333', '40000', '4', ' Look better', '2018-11-29 17:51:01'),
(3, 'roll-202fit', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'no', 'AGE 15-20 rate = 1AGE 21-', 'yes', '12333', '40000', '4', ' Look better', '2018-11-29 17:54:45'),
(4, 'roll-202fit', '', '', '', '', '', '', '', 'Array ', '', '12333', '40000', '4', 'Gain weight', '2018-11-29 19:42:43'),
(5, 'roll-202fit', '', '', '', '', '', '', '', 'Array ', 'yes', '12333', '40000', '4', 'Feel better', '2018-11-29 19:50:21'),
(6, 'roll-202fit', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'Array ', 'yes', '3333', '40000', '4', ' Look better', '2018-11-29 20:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire3`
--

CREATE TABLE `questionnaire3` (
  `id` int(11) NOT NULL,
  `rollnum` int(30) NOT NULL,
  `name` varchar(70) NOT NULL,
  `clinicnum` varchar(12) NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `lying` varchar(30) NOT NULL,
  `walking` varchar(30) NOT NULL,
  `driving` varchar(30) NOT NULL,
  `standing` varchar(30) NOT NULL,
  `kneeling` varchar(30) NOT NULL,
  `bending` varchar(30) NOT NULL,
  `walkinghrs` varchar(30) NOT NULL,
  `sleepinghrs` varchar(30) NOT NULL,
  `leisure` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire3`
--

INSERT INTO `questionnaire3` (`id`, `rollnum`, `name`, `clinicnum`, `age`, `gender`, `occupation`, `address`, `phone`, `lying`, `walking`, `driving`, `standing`, `kneeling`, `bending`, `walkinghrs`, `sleepinghrs`, `leisure`) VALUES
(1, 0, 'yakubu', '30495', 12, 'm', 'work', '6 goshen street afobaje estate ota', '08030960928', '2', '23', '2 ', '2', '2', '2', '2', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire4`
--

CREATE TABLE `questionnaire4` (
  `id` int(11) NOT NULL,
  `rollnum` varchar(30) NOT NULL,
  `alcohol` varchar(25) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `measurement` varchar(200) NOT NULL,
  `nonalcohol` varchar(200) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `nonalcmear` varchar(100) NOT NULL,
  `smoking` varchar(70) NOT NULL,
  `packets` varchar(70) NOT NULL,
  `stimulants` varchar(70) NOT NULL,
  `cups_nuts` varchar(70) NOT NULL,
  `eating` varchar(70) NOT NULL,
  `freq` varchar(70) NOT NULL,
  `typeofsnack` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire4`
--

INSERT INTO `questionnaire4` (`id`, `rollnum`, `alcohol`, `quantity`, `measurement`, `nonalcohol`, `amount`, `nonalcmear`, `smoking`, `packets`, `stimulants`, `cups_nuts`, `eating`, `freq`, `typeofsnack`) VALUES
(1, 'roll-202fit', 'Palm wine', '123', 'Short', '', '33', '', 'None', '33', 'Coffee', '', '3333', '3333', '12333'),
(2, 'roll-202fit', 'Palm wine', '123', 'Glass', 'Fruit juice', '33', 'Bottles', 'Cigar', '33', 'kolanut', '33', '3333', '3333', '12333');

-- --------------------------------------------------------

--
-- Table structure for table `recieptnum`
--

CREATE TABLE `recieptnum` (
  `id` int(11) NOT NULL,
  `num` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recieptnum`
--

INSERT INTO `recieptnum` (`id`, `num`) VALUES
(0, 100000001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessment2`
--
ALTER TABLE `assessment2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exerate`
--
ALTER TABLE `exerate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire2`
--
ALTER TABLE `questionnaire2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire3`
--
ALTER TABLE `questionnaire3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire4`
--
ALTER TABLE `questionnaire4`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `assessment2`
--
ALTER TABLE `assessment2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exerate`
--
ALTER TABLE `exerate`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `questionnaire2`
--
ALTER TABLE `questionnaire2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `questionnaire3`
--
ALTER TABLE `questionnaire3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `questionnaire4`
--
ALTER TABLE `questionnaire4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
