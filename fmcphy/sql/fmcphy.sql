-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2018 at 11:46 AM
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
-- Database: `fmcphy`
--

-- --------------------------------------------------------

--
-- Table structure for table `asp`
--

CREATE TABLE `asp` (
  `id` int(11) NOT NULL,
  `idtwo` varchar(70) NOT NULL,
  `alert` varchar(30) NOT NULL,
  `respiratory` varchar(50) NOT NULL,
  `cognition` varchar(30) NOT NULL,
  `neglect` varchar(30) NOT NULL,
  `communication` varchar(30) NOT NULL,
  `swallow` varchar(30) NOT NULL,
  `pain` varchar(100) NOT NULL,
  `bedmobility` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asp`
--

INSERT INTO `asp` (`id`, `idtwo`, `alert`, `respiratory`, `cognition`, `neglect`, `communication`, `swallow`, `pain`, `bedmobility`) VALUES
(1, 'phy-207', '', 'sdd', 'no', 'present', 'no', 'no', '4', ' hes fine and mobile on bed '),
(6, '23e4', 'alert', 'sdd', 'no', 'present', 'no', 'no', '8', ' werty'),
(10, 'phy-210', 'alert', 'rcftgfv', 'Yes', 'present', 'no', 'no', '8', ' rgefg');

-- --------------------------------------------------------

--
-- Table structure for table `asp1`
--

CREATE TABLE `asp1` (
  `id` int(11) NOT NULL,
  `idtwo` varchar(50) NOT NULL,
  `patientname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nhs_no` varchar(30) NOT NULL,
  `hosp_no` varchar(30) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `addmision_date` varchar(12) NOT NULL,
  `condition_type` varchar(70) NOT NULL,
  `signature` varchar(40) NOT NULL,
  `en_date` varchar(12) NOT NULL,
  `en_time` varchar(12) NOT NULL,
  `staffname` varchar(100) NOT NULL,
  `designation` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asp1`
--

INSERT INTO `asp1` (`id`, `idtwo`, `patientname`, `address`, `nhs_no`, `hosp_no`, `dob`, `gender`, `phone`, `addmision_date`, `condition_type`, `signature`, `en_date`, `en_time`, `staffname`, `designation`) VALUES
(1, '', 'sfdsgv zdhhn', 'abeokuta', 'sdjfdy674585', '467586t7oupip', '2018-10-18', 'female', 'dggv', '2018-10-21', 'consent to exam obtained', 'asfdhgjh', '17/10/2018', '11:39:08am', 'sdgjgjdjgnjs', 'fgyfgh'),
(2, 'phy-201', 'tet5665', 'abeokuta', 'sdjfdy674585', '467586t7oupi[o]p', '2018-10-04', 'male', '2', '2018-10-04', 'unable to consent', 'ret5yyeggf', '17/10/2018', '11:50:22am', 'rtyyujvbvv', 'fgyfgh'),
(3, 'phy-202', 'tet5665', 'abeokuta', 'sdjfdy674585', '467586t7oupi[o]p', '2018-10-04', 'male', '2', '2018-10-04', 'unable to consent', 'ret5yyeggf', '17/10/2018', '11:50:22am', 'rtyyujvbvv', 'fgyfgh'),
(4, 'phy-203', 'sfdsgv zdhhn', '6 goshen street afobaje estate ota', 'sdjfdy674585', '56ty', '2018-10-03', 'male', '1233431515', '2018-07-16', 'consent to exam obtained', 'ret5yyeggf', '17/10/2018', '11:56:15am', 'sdgjgjdjgnjs', 'fgyfgh'),
(5, 'phy-204', 'tet5665', 'abeokuta', 'sdjfdy674585', '467586t7oup', '2018-10-05', 'male', '1233431515', '2018-10-02', 'consent to exam obtained', 'ret5yyeggf', '17/10/2018', '12:00:16pm', 'rtyyujvbvv', 'fgyfgh'),
(6, 'phy-205', 'tet5665', 'abeokuta', 'sdjfdy674585', '467586t7oupi[o]p', '2018-10-04', 'male', '1233431515', '2018-06-10', 'unable to consent', 'asfdhgjh', '17/10/2018', '12:27:46pm', 'rtyyujvbvv', 'fgyfgh'),
(7, 'phy-206', 'tet5665', 'abeokuta', 'sdjfdy674585', '467586t7oupi[o]p', '2018-10-03', 'male', 'sddhh', '2018-10-15', 'unable to consent', 'ret5yyeggf', '17/10/2018', '01:08:12pm', 'rtyyujvbvv', 'fgyfgh'),
(8, 'phy-207', 'tet5665', '6 goshen street afobaje estate ota', 'sdjfdy674585', '56ty', '2018-10-04', 'male', '1233431515', '2018-10-15', 'unable to consent', 'ret5yyeggf', '18/10/2018', '09:07:26pm', 'rtyyujvbvv', 'fgyfgh'),
(9, 'phy-208', 'adewole', '6 goshen street afobaje estate ota', '54666', '56ty', '2018-10-12', 'male', '1233431515', '2018-10-03', 'unable to consent', '0000', '20/10/2018', '04:23:17am', 'sdgjgjdjgnjs', 'fgyfgh'),
(10, 'phy-209', 'dsfdshd', '6 goshen street afobaje estate ota', 'qwe', '56ty', '2018-10-04', 'male', '1233431515', '2018-10-02', 'unable to consent', '333', '20/10/2018', '04:29:57am', 'rtyyujvbvv', 'fgyfgh'),
(11, 'phy-210', '344errrgccc', '55tt', '444', '55tt', '2018-10-11', 'male', '45455', '2018-10-02', 'consent to exam obtained', '444', '20/10/2018', '04:58:25am', '4444', '444');

-- --------------------------------------------------------

--
-- Table structure for table `asp2`
--

CREATE TABLE `asp2` (
  `id` int(11) NOT NULL,
  `idtwo` varchar(30) NOT NULL,
  `hcp` varchar(100) NOT NULL,
  `pmh` varchar(100) NOT NULL,
  `dh` varchar(100) NOT NULL,
  `sh` varchar(100) NOT NULL,
  `habit` varchar(50) NOT NULL,
  `accomodation` varchar(50) NOT NULL,
  `stairs` varchar(12) NOT NULL,
  `handrails` int(4) NOT NULL,
  `wc` varchar(15) NOT NULL,
  `no_of_child` int(5) NOT NULL,
  `no_of_pregnancy` int(5) NOT NULL,
  `wives` int(5) NOT NULL,
  `mobility` varchar(50) NOT NULL,
  `aids` varchar(30) NOT NULL,
  `rel_info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asp2`
--

INSERT INTO `asp2` (`id`, `idtwo`, `hcp`, `pmh`, `dh`, `sh`, `habit`, `accomodation`, `stairs`, `handrails`, `wc`, `no_of_child`, `no_of_pregnancy`, `wives`, `mobility`, `aids`, `rel_info`) VALUES
(1, 'phy-205', '3e2456', '643747', '64345', 'lives with relatives', 'smoking', 'bungalow', 'yes', 1, 'Upstiars', 34, 12, 34, 'normal', 'frame', ' just atrialon how it works'),
(2, 'phy-206', '3e2456', '643747', '64345', 'lives with relatives', 'smoking', 'bungalow', 'yes', 1, 'Downstiars', 34, 12, 34, 'independent', 'frame with wheel', ' gjhsjkfhshgb  whbfhb cthiojoijxirc ncbhv '),
(3, 'phy-207', '3e2456', '643747', '64345', 'lives with spouse', 'drinking', 'bungalow', 'yes', 1, 'Downstiars', 34, 12, 34, 'normal', 'frame with wheel', ' afgGves'),
(4, 'phy-210', '553', '4575', '6457', 'lives with spouse', 'drinking', 'bungalow', 'no', 2, 'Downstiars', 56, 45, 45, 'normal', 'sticks 1/2', ' 456fg');

-- --------------------------------------------------------

--
-- Table structure for table `asp4`
--

CREATE TABLE `asp4` (
  `id` int(11) NOT NULL,
  `idtwo` varchar(30) NOT NULL,
  `complications` varchar(12) NOT NULL,
  `contractures` varchar(12) NOT NULL,
  `shoulderpain` varchar(12) NOT NULL,
  `sittingbal` varchar(12) NOT NULL,
  `independent` varchar(12) NOT NULL,
  `indexscore` varchar(12) NOT NULL,
  `actiontaken` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asp4`
--

INSERT INTO `asp4` (`id`, `idtwo`, `complications`, `contractures`, `shoulderpain`, `sittingbal`, `independent`, `indexscore`, `actiontaken`) VALUES
(2, 'phy-206', 'Yes', 'yes', 'yes', 'Upstiars', 'yes', 'assistance o', ' sbhjBXchjbhgbisahzhiuxhiucvn  efuinfiunfrcjemx-dijnvncnsdxnagcv '),
(3, 'phy-207', 'Yes', 'no', 'yes', 'Downstiars', 'yes', 'assistance o', ' asffgfest'),
(4, 'phy-210', 'Yes', 'no', 'no', 'Downstiars', 'no', 'independent', ' trhggg');

-- --------------------------------------------------------

--
-- Table structure for table `lower`
--

CREATE TABLE `lower` (
  `id` int(11) NOT NULL,
  `tp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lower`
--

INSERT INTO `lower` (`id`, `tp`) VALUES
(1, 'Extensor Diagitrum Longus'),
(2, 'Extensor Hollucis Longus '),
(3, 'Flexor Digitorum Longus '),
(4, 'Flexor Hallucis Longus '),
(5, 'Tibialis Anterior'),
(6, 'Gastorcnemius'),
(7, 'Peroneals'),
(8, 'Quadriceps'),
(9, 'Hamstrings'),
(10, 'Hip Flexors'),
(11, 'Hip Extensors '),
(12, 'Hip Internal Rotators'),
(13, 'Hip External Rotators ');

-- --------------------------------------------------------

--
-- Table structure for table `lowerlimb`
--

CREATE TABLE `lowerlimb` (
  `id` int(11) NOT NULL,
  `Extensor Diagitrum Longus` varchar(255) NOT NULL,
  `Extensor Hollucis Longus` varchar(255) NOT NULL,
  `Flexor Digitorum Longus` varchar(255) NOT NULL,
  `Flexor Hallucis Longus` varchar(255) NOT NULL,
  `Tibialis Anterior` varchar(255) NOT NULL,
  `Gastorcnemius` varchar(255) NOT NULL,
  `Peroneals` varchar(255) NOT NULL,
  `Quadriceps` varchar(255) NOT NULL,
  `Hamstrings` varchar(255) NOT NULL,
  `Hip Flexors` varchar(255) NOT NULL,
  `Hip Extensors` varchar(255) NOT NULL,
  `Hip Internal Rotators` varchar(255) NOT NULL,
  `Hip External Rotators` varchar(255) NOT NULL,
  `date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patientnum` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `physician` varchar(100) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `ref` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patientnum`, `name`, `age`, `address`, `sex`, `physician`, `ward`, `ref`, `date`) VALUES
(1, 12, 'young', 27, '6 goshen street afobaje estate ota', 'female', 'adebowale', '5b', 'FMC (12001020)', '2018-08-25 19:48:40'),
(5, 556, 'olutayo', 45, '6 goshen street afobaje estate ota ', 'male', 'dr. jinaid', '46', 'fever', '2018-08-14 10:15:47'),
(6, 234, 'yakubu', 27, 'abeokuta', 'male', 'sdfasag', '5b', 'fever', '2018-08-10 07:36:43'),
(7, 303, 'adebowale', 27, '6 t afobaje estate ota', 'male', '0558504933', '5b', 'fever', '2018-09-24 15:40:43'),
(8, 670, 'adewal', 48, '6 goshen street afobaje estate ota', 'male', '45679', '5b', 'uth', '2018-10-05 10:48:36'),
(9, 0, '', 0, 'hhhngfb', 'male', '', 'dggv', '', '2018-10-09 15:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `physio`
--

CREATE TABLE `physio` (
  `id` int(250) NOT NULL,
  `user` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physio`
--

INSERT INTO `physio` (`id`, `user`, `pass`, `dt`, `name`) VALUES
(1, 'fff', '', '2018-08-31 19:28:09', ''),
(3, 'gan', 'damilola92', '2018-08-31 19:33:44', 'Ganiyu Adisa'),
(4, 'hhh', 'damilola92', '2018-08-31 19:34:53', 'Fatai Ahemd'),
(5, 'zzz', 'damilola92', '2018-08-31 19:36:03', 'zinedine zideane');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(200) NOT NULL,
  `receipt_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `receipt_no`) VALUES
(1, 100014);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_num`
--

CREATE TABLE `receipt_num` (
  `id` int(200) NOT NULL,
  `num` int(123) NOT NULL,
  `rec` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt_num`
--

INSERT INTO `receipt_num` (`id`, `num`, `rec`) VALUES
(1, 234, 0),
(2, 100008, 0),
(3, 234, 100008),
(4, 234, 100009),
(5, 234, 100010),
(6, 234, 100011),
(7, 234, 100013),
(8, 234, 100013),
(9, 234, 100013),
(10, 234, 100013);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(200) NOT NULL,
  `issue` varchar(200) NOT NULL,
  `plain` varchar(200) NOT NULL,
  `limb` varchar(200) NOT NULL,
  `dt` varchar(10) NOT NULL,
  `num` varchar(200) NOT NULL,
  `tp` varchar(100) NOT NULL,
  `analysis` text NOT NULL,
  `receipt` int(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diagnosis` varchar(50000) NOT NULL,
  `physio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `issue`, `plain`, `limb`, `dt`, `num`, `tp`, `analysis`, `receipt`, `time`, `diagnosis`, `physio`) VALUES
(1, ' Hamstrings ', 'aaaaaaaaaaaaaa', 'Right', '2018/08/14', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100001, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(2, ' Gastorcnemius ', 'gggggggggggggggg', 'Right', '2018/08/14', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100001, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(3, ' Extensor Diagitrum Longus ', 'tttttttttttttttttt', 'Right', '2018/08/14', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100001, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(4, ' Hamstrings ', 'lolo', 'Right', '2018/08/14', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100002, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(5, ' Hip Flexors ', 'kmjk', 'Right', '2018/08/14', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100002, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(6, ' Flexor Digitorum Longus  ', 'aaaaaaaaaaaaa', 'Right', '2018/08/18', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100003, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(7, ' Flexor Hallucis Longus  ', 'eeeeeeeeeeeeee', 'Right', '2018/08/18', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100003, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(8, ' Gastorcnemius ', 'tttttttttttttttt', 'Right', '2018/08/18', '12', 'LOWER', 'Will need physiotheraphy every three days.', 100003, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(9, ' Elevator Of Shoulder Girdle ', 'eeeeeeeeeeeeee', 'Right', '2018/08/18', '234', 'UPPER', 'Will need physiotheraphy every three days...', 100004, '2018-08-18 16:48:15', '', ''),
(10, ' Pronators Of Forearm ', 'tttttttttttttttt', 'Left', '2018/08/18', '234', 'UPPER', 'Will need physiotheraphy every three days...', 100004, '2018-08-18 16:48:15', '', ''),
(11, ' Finger Flexors ', 'eeeeeeeeeeeeee', 'Right', '2018/08/18', '234', 'UPPER', 'Will need physiotheraphy every three days...', 100004, '2018-08-18 16:48:15', '', ''),
(12, ' Elbow Flexors ', 'tttttttttttttttt', 'Left', '2018/08/18', '234', 'UPPER', 'Will need physiotheraphy every three days...', 100004, '2018-08-18 16:48:15', '', ''),
(13, ' Shoulder Extensors ', 'tttttttttttttttt', 'Left', '2018/08/18', '234', 'UPPER', 'Will need physiotheraphy every three days...', 100004, '2018-08-18 16:48:15', '', ''),
(14, ' Shoulder Flexors ', 'tttttttttttttttt', 'Left', '2018/08/18', '234', 'UPPER', 'Will need physiotheraphy every three days...', 100004, '2018-08-18 16:48:15', '', ''),
(15, ' Finger Extensor ', 'tttttttttttttttt', 'Right', '2018/08/18', '234', 'UPPER', 'Will need physiotheraphy every three days...', 100004, '2018-08-18 16:48:15', '', ''),
(16, ' Shoulder Abductors ', 'ggggggggggggg', 'Left', '2018/08/19', '12', 'UPPER', 'Will need physiotheraphy every three days.', 100005, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(17, ' Shoulder External Rotators ', 'eeeeeeeeeeeeee', 'Right', '2018/08/19', '12', 'UPPER', 'Will need physiotheraphy every three days.', 100005, '2018-08-25 19:46:00', 'left lower limb fracture', ''),
(18, ' Hip Flexors ', 'aaaaaaaaaaaaa', 'Right', '2018/08/25', '12', 'LOWER', 'ddddddddddddddddddddddddddddddddddddd', 100006, '2018-08-25 20:00:18', 'right lower limb fracture', ''),
(19, ' Flexor Digitorum Longus  ', 'ggggggggggggg', 'Right', '2018/08/25', '12', 'LOWER', 'ddddddddddddddddddddddddddddddddddddd', 100006, '2018-08-25 20:00:18', 'right lower limb fracture', ''),
(20, ' Flexor Hallucis Longus  ', 'tttttttttttttttt', 'Right', '2018/08/25', '12', 'LOWER', 'ddddddddddddddddddddddddddddddddddddd', 100006, '2018-08-25 20:00:18', 'right lower limb fracture', ''),
(21, ' Extensor Hollucis Longus  ', 'eeeeeeeeeeeeee', 'Left', '2018/08/25', '12', 'LOWER', 'ddddddddddddddddddddddddddddddddddddd', 100007, '2018-08-25 20:00:18', 'right lower limb fracture', ''),
(22, ' Gastorcnemius ', 'ggggggggggggg', 'Left', '2018/08/25', '12', 'LOWER', 'ddddddddddddddddddddddddddddddddddddd', 100007, '2018-08-25 20:00:18', 'right lower limb fracture', ''),
(23, ' Hip Extensors  ', 'tttttttttttttttt', 'Right', '2018/08/25', '12', 'LOWER', 'ddddddddddddddddddddddddddddddddddddd', 100007, '2018-08-25 20:00:18', 'right lower limb fracture', ''),
(24, ' Shoulder Extensors ', 'ggggggggggggg', 'Left', '2018/08/25', '234', 'UPPER', 'aaaaaaaaaaaaaaa', 100008, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(25, ' Pronators Of Forearm ', 'aaaaaaaaaaaaa', 'Right', '2018/08/25', '234', 'UPPER', 'aaaaaaaaaaaaaaa', 100008, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(26, ' Shoulder Flexors ', 'tttttttttttttttt', 'Left', '2018/08/25', '234', 'UPPER', 'aaaaaaaaaaaaaaa', 100008, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(27, ' Pronators Of Forearm ', 'aaaaaaaaaaaaa', 'Left', '2018/08/25', '234', 'UPPER', 'aaaaaaaaaaaaaaa', 100009, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(28, ' Finger Flexors ', 'ggggggggggggg', 'Right', '2018/08/25', '234', 'UPPER', 'aaaaaaaaaaaaaaa', 100009, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(29, ' Flexor Hallucis Longus  ', 'eeeeeeeeeeeeee', 'Right', '2018/08/25', '234', 'LOWER', 'aaaaaaaaaaaaaaa', 100010, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(30, ' Gastorcnemius ', 'ggggggggggggg', 'Right', '2018/08/25', '234', 'LOWER', 'aaaaaaaaaaaaaaa', 100010, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(31, ' Flexor Digitorum Longus  ', 'ggggggggggggg', 'Right', '2018/08/25', '234', 'LOWER', 'aaaaaaaaaaaaaaa', 100010, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(32, ' Hip Extensors  ', 'ggggggggggggg', 'Right', '2018/08/25', '234', 'LOWER', 'aaaaaaaaaaaaaaa', 100010, '2018-08-25 22:10:52', 'right lower limb fracture', ''),
(33, ' Flexor Hallucis Longus  ', 'eeeeeeeeeeeeee', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100011, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(34, ' Hip Extensors  ', 'ggggggggggggg', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100011, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(35, ' Hamstrings ', 'ggggggggggggg', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100011, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(36, ' Hip Internal Rotators ', 'ggggggggggggg', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100011, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(37, ' Hip External Rotators  ', 'ggggggggggggg', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100011, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(38, ' Hip Flexors ', 'aaaaaaaaaaaaaa', 'Right', '2018/08/31', '12', 'LOWER', '', 100012, '2018-08-31 19:48:56', '', ''),
(39, ' Hip External Rotators  ', 'ggggggggggggggg', 'Right', '2018/08/31', '12', 'LOWER', '', 100012, '2018-08-31 19:48:56', '', ''),
(40, ' Hip Extensors  ', 'nn', 'Right', '2018/08/31', '12', 'LOWER', '', 100012, '2018-08-31 19:48:56', '', ''),
(41, ' Hip Internal Rotators ', 'aaaaaaaaaaaaa', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100013, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(42, ' Hip External Rotators  ', 'ggggggggggggg', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100013, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(43, ' Flexor Digitorum Longus  ', 'eeeeeeeeeeeeee', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100013, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa');

-- --------------------------------------------------------

--
-- Table structure for table `upper`
--

CREATE TABLE `upper` (
  `id` int(11) NOT NULL,
  `tp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upper`
--

INSERT INTO `upper` (`id`, `tp`) VALUES
(1, 'Finger Extensor'),
(2, 'Finger Flexors'),
(3, 'Wrist Extensors'),
(4, 'Wrist Flexors'),
(5, 'Supinators Of Forearm'),
(6, 'Pronators Of Forearm'),
(7, 'Elbow Extensors'),
(8, 'Elbow Flexors'),
(9, 'Shoulder Extensors'),
(10, 'Shoulder Flexors'),
(11, 'Shoulder Abductors'),
(12, 'Shoulder Internal Rotators'),
(13, 'Shoulder External Rotators'),
(14, 'Elevator Of Shoulder Girdle'),
(15, 'Back Extensors');

-- --------------------------------------------------------

--
-- Table structure for table `upperlimb`
--

CREATE TABLE `upperlimb` (
  `id` int(11) NOT NULL,
  `Finger Extensor` varchar(255) NOT NULL,
  `Finger Flexors` varchar(255) NOT NULL,
  `Wrist Extensors` varchar(255) NOT NULL,
  `Wrist Flexors` varchar(255) NOT NULL,
  `Supinators Of Forearm` varchar(255) NOT NULL,
  `Pronators Of Forearm` varchar(255) NOT NULL,
  `Elbow Extensors` varchar(255) NOT NULL,
  `Elbow Flexors` varchar(255) NOT NULL,
  `Shoulder Extensors` varchar(255) NOT NULL,
  `Shoulder Flexors` varchar(255) NOT NULL,
  `Shoulder Abductors` varchar(255) NOT NULL,
  `Shoulder Internal Rotators` varchar(255) NOT NULL,
  `Shoulder External Rotators` varchar(255) NOT NULL,
  `Elevator Of Shoulder Girdle` varchar(255) NOT NULL,
  `Back Extensors` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `date`) VALUES
(1, 'Admin', 'Admin@gmail.com', 'Admin', '2018-08-05 21:43:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asp`
--
ALTER TABLE `asp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idtwo` (`idtwo`);

--
-- Indexes for table `asp1`
--
ALTER TABLE `asp1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asp2`
--
ALTER TABLE `asp2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asp4`
--
ALTER TABLE `asp4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lower`
--
ALTER TABLE `lower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowerlimb`
--
ALTER TABLE `lowerlimb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phynum` (`patientnum`);

--
-- Indexes for table `physio`
--
ALTER TABLE `physio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_num`
--
ALTER TABLE `receipt_num`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upper`
--
ALTER TABLE `upper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upperlimb`
--
ALTER TABLE `upperlimb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asp`
--
ALTER TABLE `asp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `asp1`
--
ALTER TABLE `asp1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `asp2`
--
ALTER TABLE `asp2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `asp4`
--
ALTER TABLE `asp4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lower`
--
ALTER TABLE `lower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lowerlimb`
--
ALTER TABLE `lowerlimb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `physio`
--
ALTER TABLE `physio`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `receipt_num`
--
ALTER TABLE `receipt_num`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `upper`
--
ALTER TABLE `upper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `upperlimb`
--
ALTER TABLE `upperlimb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
