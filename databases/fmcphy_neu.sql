-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2018 at 07:59 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `fmcphy_neu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `id` int(250) NOT NULL auto_increment,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `findings` varchar(2000) NOT NULL,
  `impression` varchar(2000) NOT NULL,
  `treatment` varchar(2000) NOT NULL,
  `means` varchar(2000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`id`, `num`, `rec`, `findings`, `impression`, `treatment`, `means`) VALUES
(1, 'physio_18', '100021', 'desds', 'fsdg', 'rgf', 'grdf'),
(2, 'physio_18', '100022', 'ddggg', 'rrr', 'yhuk', 'jmkk');

-- --------------------------------------------------------

--
-- Table structure for table `asp`
--

CREATE TABLE `asp` (
  `id` int(11) NOT NULL auto_increment,
  `idtwo` varchar(70) NOT NULL,
  `alert` varchar(30) NOT NULL,
  `respiratory` varchar(50) NOT NULL,
  `cognition` varchar(30) NOT NULL,
  `neglect` varchar(30) NOT NULL,
  `communication` varchar(30) NOT NULL,
  `swallow` varchar(30) NOT NULL,
  `pain` varchar(100) NOT NULL,
  `bedmobility` varchar(2000) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idtwo` (`idtwo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `asp`
--

INSERT INTO `asp` (`id`, `idtwo`, `alert`, `respiratory`, `cognition`, `neglect`, `communication`, `swallow`, `pain`, `bedmobility`, `nhis`, `rec`) VALUES
(1, 'pred_10', 'voice', 'rr', 'no', 'present', 'no', 'no', '4', ' fsbgs', '009', '100020'),
(2, 'physio_18', 'voice', '5', 'no', 'present', 'no', 'no', '1', ' koo', 'nhis18', '100021');

-- --------------------------------------------------------

--
-- Table structure for table `asp1`
--

CREATE TABLE `asp1` (
  `id` int(11) NOT NULL auto_increment,
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
  `designation` varchar(40) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `asp1`
--

INSERT INTO `asp1` (`id`, `idtwo`, `patientname`, `address`, `nhs_no`, `hosp_no`, `dob`, `gender`, `phone`, `addmision_date`, `condition_type`, `signature`, `en_date`, `en_time`, `staffname`, `designation`, `rec`) VALUES
(1, 'phy-215', 'Yakubu Damilola', 'abeokuta', 'NHIS-100', '898', '2018-10-04', 'female', '09090909090', '2018-10-11', 'consent to exam obtained', 'ooo', '24/10/2018', '09:53:16am', 'Adio', 'fmc', ''),
(2, 'phy-201', 'Yakubu Damilola', 'abeokuta', 'NHIS-100', '898', '2018-10-04', 'male', '09090909090', '2018-10-25', 'consent to exam obtained', 'ooo', '24/10/2018', '11:08:15am', 'Adio', 'fmc', ''),
(3, 'phy-202', 'Yakubu Damilola', 'abeokuta', 'NHIS-100', 'KK', '2018-10-04', 'male', '9090909090909', '2018-10-04', 'consent to exam obtained', 'MMM', '24/10/2018', '12:02:30pm', 'NNN', 'OLO', ''),
(4, 'phy-203', 'Yakubu Damilola', 'abeokuta', 'NHIS-100', '898', '2018-10-04', 'male', '09090909090', '2018-10-18', 'unable to consent', 'ooo', '24/10/2018', '02:31:13pm', 'Adio', 'fmc', ''),
(5, 'phy-204', 'Yakubu Damilola', 'abeokuta', 'NHIS-100', '898', '2018-10-04', 'female', '09090909090', '2018-10-04', 'consent to exam obtained', 'ooo', '24/10/2018', '02:42:55pm', 'Adio', 'fmc', ''),
(6, 'phy-205', '', '', '', '898', '', 'male', '09090909090', '2018-11-23', 'consent to exam obtained', 'hgv', '16/11/2018', '12:38:18pm', 'Adio', 'fmc', ''),
(7, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-16', 'unable to consent', 'ooo', '16/11/2018', '01:25:35pm', 'Adio', 'fmc', ''),
(8, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-23', 'unable to consent', 'ooo', '16/11/2018', '01:42:21pm', 'Adio', 'fmc', '100017'),
(10, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-23', 'unable to consent', 'ooo', '16/11/2018', '01:47:03pm', 'Adio', 'fmc', '100017'),
(11, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-23', 'unable to consent', 'ooo', '16/11/2018', '01:47:52pm', 'Adio', 'fmc', '100017'),
(12, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-02', 'consent to exam obtained', 'ooo', '16/11/2018', '01:49:59pm', 'Adio', 'fmc', '100017'),
(13, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-02', 'consent to exam obtained', 'ooo', '16/11/2018', '01:49:59pm', 'Adio', 'fmc', '100017'),
(14, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-02', 'consent to exam obtained', 'ooo', '16/11/2018', '01:49:59pm', 'Adio', 'fmc', '100017'),
(15, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-17', 'unable to consent', 'ooo', '17/11/2018', '02:06:58am', 'Adio', 'fmc', '100018'),
(16, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-17', 'unable to consent', 'ooo', '17/11/2018', '02:07:36am', 'Adio', 'fmc', '100019'),
(17, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-11-16', 'unable to consent', 'ooo', '17/11/2018', '02:59:16am', 'Adio', 'fmc', '100020'),
(18, 'physio_18', 'WISDOM', 'tyy', 'nhis18', 'hspno18', '2018-02-07', 'male', '789', '2018-11-09', 'consent to exam obtained', 'kh', '18/11/2018', '07:02:03pm', 'ty', 'tr', '100021'),
(19, 'physio_18', 'WISDOM', 'dffsd', 'tgdd', 'rgd', '2018-02-07', 'male', '222', '2018-11-16', 'unable to consent', 'df', '18/11/2018', '07:44:07pm', 'sdf', 'dfds', '100022');

-- --------------------------------------------------------

--
-- Table structure for table `asp2`
--

CREATE TABLE `asp2` (
  `id` int(11) NOT NULL auto_increment,
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
  `rel_info` longtext NOT NULL,
  `nhis` varchar(200) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `asp2`
--

INSERT INTO `asp2` (`id`, `idtwo`, `hcp`, `pmh`, `dh`, `sh`, `habit`, `accomodation`, `stairs`, `handrails`, `wc`, `no_of_child`, `no_of_pregnancy`, `wives`, `mobility`, `aids`, `rel_info`, `nhis`, `rec`) VALUES
(1, 'phy-215', 'hcp', 'pmh', 'dh', 'lives with spouse', 'drinking', 'bungalow', 'no', 0, 'Downstiars', 6, 2, 3, 'normal', 'none', ' other relevant information', 'NHIS-100', ''),
(2, 'phy-215', 'hcp', 'pmh', 'dh', 'lives with spouse', 'drinking', 'bungalow', 'no', 0, 'Downstiars', 6, 2, 3, 'normal', 'none', ' other relevant information', 'NHIS-100', ''),
(3, 'phy-201', 'hcp', 'pmh', 'dh', 'lives with spouse', 'smoking', 'flat', 'no', 2, 'Downstiars', 6, 2, 3, 'independent', 'sticks 1/2', 'sss ', 'NHIS-100', ''),
(4, 'phy-202', 'hh', 'bb', 'ol', 'lives with relatives', 'smoking', 'flat', 'no', 2, 'Downstiars', 2, 9, 2, 'independent', 'none', ' hhh', 'NHIS-100', ''),
(5, 'phy-203', 'hcp', 'pmh', 'dh', 'lives with spouse', 'smoking', 'bungalow', 'no', 2, 'Downstiars', 6, 2, 3, 'normal', 'sticks 1/2', ' other information goes here', 'NHIS-100', ''),
(6, 'phy-204', 'hcp', 'pmh', 'dh', 'lives with relatives', 'smoking', 'flat', 'no', 2, 'Downstiars', 6, 2, 3, 'independent', 'frame', ' 666', 'NHIS-100', ''),
(7, 'pred_10', 'hcp', 'pmh', 'dh', 'lives with spouse', 'drinking', 'bungalow', 'no', 2, 'Downstiars', 6, 2, 3, 'independent', 'none', ' efr', '009', ''),
(8, 'pred_10', 'hcp', 'pmh', 'dh', 'lives with spouse', 'smoking', 'flat', 'no', 2, 'Downstiars', 6, 2, 3, 'independent', 'frame with wheel', ' fdscs', '009', '100017'),
(9, 'pred_10', 'hcp', 'pmh', 'dh', 'lives with spouse', 'smoking', 'flat', 'no', 2, 'Downstiars', 6, 2, 3, 'independent', 'frame with wheel', ' fdscs', '009', '100017'),
(10, 'pred_10', 'hcp', 'pmh', 'dh', 'lives with spouse', 'CHOOSE HABIT', 'CHOOSE TYPE OF HOUSE', 'no', 2, 'Downstiars', 6, 2, 3, 'assistance of 1/2', 'frame', 'bn m ', '009', '100019'),
(11, 'pred_10', 'hcp', 'pmh', 'dh', 'lives with spouse', 'smoking', 'bungalow', 'no', 2, 'Downstiars', 6, 2, 3, 'independent', 'sticks 1/2', ' jjkn', '009', '100020'),
(12, 'physio_18', '78', '78', 'r5', 'lives with spouse', 'drinking', 'CHOOSE TYPE OF HOUSE', 'no', 0, 'Downstiars', 8, 7, 1, 'normal', 'none', ' iuu', 'nhis18', '100021'),
(13, 'physio_18', 'dsf', 'dsfds', 'r5', 'lives with relatives', 'drinking', 'bungalow', 'no', 2, 'Downstiars', 2, 7, 1, 'independent', 'frame with wheel', ' esw', 'tgdd', '100022'),
(14, 'physio_18', 'dsf', 'dsfds', 'r5', 'lives with relatives', 'drinking', 'bungalow', 'no', 2, 'Downstiars', 2, 7, 1, 'independent', 'frame with wheel', ' esw', 'tgdd', '100022');

-- --------------------------------------------------------

--
-- Table structure for table `asp4`
--

CREATE TABLE `asp4` (
  `id` int(11) NOT NULL auto_increment,
  `idtwo` varchar(30) NOT NULL,
  `complications` varchar(12) NOT NULL,
  `contractures` varchar(12) NOT NULL,
  `shoulderpain` varchar(12) NOT NULL,
  `sittingbal` varchar(12) NOT NULL,
  `independent` varchar(12) NOT NULL,
  `indexscore` varchar(1200) NOT NULL,
  `actiontaken` text NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `rec` varchar(2300) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `asp4`
--

INSERT INTO `asp4` (`id`, `idtwo`, `complications`, `contractures`, `shoulderpain`, `sittingbal`, `independent`, `indexscore`, `actiontaken`, `nhis`, `rec`) VALUES
(1, 'phy-201', 'no', 'no', 'no', 'Downstiars', 'no', 'assistance of 1/2', ' action taken', 'NHIS-100', ''),
(2, 'phy-204', 'no', 'no', 'no', 'Downstiars', 'no', 'CHOOSE A SCORE', ' ', 'NHIS-100', ''),
(3, 'phy-204', 'no', 'no', 'no', 'Downstiars', 'no', 'CHOOSE A SCORE', ' ', '', ''),
(4, 'phy-204', 'no', 'no', 'no', 'Downstiars', 'no', 'CHOOSE A SCORE', ' ', '', ''),
(5, 'pred_10', 'no', 'no', 'no', 'Downstiars', 'no', 'CHOOSE A SCORE', 'fg ', '009', ''),
(7, 'pred_10', 'no', 'no', 'yes', 'Downstiars', 'no', '', ' vghbjknml', '009', '100020'),
(8, 'physio_18', 'no', 'no', 'no', 'Downstiars', 'no', '', ' ', 'nhis18', '100021'),
(9, 'physio_18', 'no', 'no', 'no', 'Downstiars', 'no', '', ' ', 'nhis18', '100021'),
(10, 'physio_18', '', '', '', '', '', '', '', '', '100021'),
(11, 'physio_18', '', '', '', '', '', '', '', '', '100021'),
(12, 'physio_18', 'no', 'no', 'no', 'Downstiars', 'no', '', ' dfd', 'tgdd', '100022');

-- --------------------------------------------------------

--
-- Table structure for table `aspques`
--

CREATE TABLE `aspques` (
  `id` int(255) NOT NULL auto_increment,
  `question` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `aspques`
--

INSERT INTO `aspques` (`id`, `question`, `answer`, `nhis`, `num`, `rec`) VALUES
(1, 'BP', '99', '009', 'pred_10', '100020'),
(2, 'HR', '99', '009', 'pred_10', '100020'),
(3, 'Oxygen Saturation', '90', '009', 'pred_10', '100020'),
(4, 'Level of connsiousness', '99', '009', 'pred_10', '100020'),
(5, 'BP', '105', 'nhis18', 'physio_18', '100021'),
(6, 'HR', '56', 'nhis18', 'physio_18', '100021'),
(7, 'Oxygen Saturation', '98', 'nhis18', 'physio_18', '100021'),
(8, 'Level of connsiousness', '8', 'nhis18', 'physio_18', '100021'),
(9, 'BP', '99', 'tgdd', 'physio_18', '100022'),
(10, 'HR', '90', 'tgdd', 'physio_18', '100022'),
(11, 'Oxygen Saturation', '90', 'tgdd', 'physio_18', '100022'),
(12, 'Level of connsiousness', '10', 'tgdd', 'physio_18', '100022'),
(13, 'BP', '99', 'tgdd', 'physio_18', '100022'),
(14, 'HR', '90', 'tgdd', 'physio_18', '100022'),
(15, 'Oxygen Saturation', '90', 'tgdd', 'physio_18', '100022'),
(16, 'Level of connsiousness', '10', 'tgdd', 'physio_18', '100022'),
(17, 'BP', '99', 'tgdd', 'physio_18', '100022'),
(18, 'HR', '90', 'tgdd', 'physio_18', '100022'),
(19, 'Oxygen Saturation', '90', 'tgdd', 'physio_18', '100022'),
(20, 'Level of connsiousness', '10', 'tgdd', 'physio_18', '100022'),
(21, 'BP', '99', 'tgdd', 'physio_18', '100022'),
(22, 'HR', '99', 'tgdd', 'physio_18', '100022'),
(23, 'Oxygen Saturation', '99', 'tgdd', 'physio_18', '100022'),
(24, 'Level of connsiousness', '99', 'tgdd', 'physio_18', '100022'),
(25, 'BP', '99', 'tgdd', 'physio_18', '100022'),
(26, 'HR', '99', 'tgdd', 'physio_18', '100022'),
(27, 'Oxygen Saturation', '99', 'tgdd', 'physio_18', '100022'),
(28, 'Level of connsiousness', '99', 'tgdd', 'physio_18', '100022'),
(29, 'BP', '99', 'tgdd', 'physio_18', '100022'),
(30, 'HR', '99', 'tgdd', 'physio_18', '100022'),
(31, 'Oxygen Saturation', '99', 'tgdd', 'physio_18', '100022'),
(32, 'Level of connsiousness', '99', 'tgdd', 'physio_18', '100022');

-- --------------------------------------------------------

--
-- Table structure for table `aspques2`
--

CREATE TABLE `aspques2` (
  `id` int(255) NOT NULL auto_increment,
  `tp` varchar(200) NOT NULL,
  `issue` varchar(200) NOT NULL,
  `ans` varchar(20000) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `aspques2`
--

INSERT INTO `aspques2` (`id`, `tp`, `issue`, `ans`, `nhis`, `num`, `rec`) VALUES
(1, 'LEFT UPPER LIMB', 'Range of Motion', 'aa', '009', 'pred_10', '100020'),
(2, 'LEFT UPPER LIMB', 'Muscle tone', 'val', '009', 'pred_10', '100020'),
(3, 'LEFT UPPER LIMB', 'Power of Muscle', 'fgch', '009', 'pred_10', '100020'),
(4, 'LEFT UPPER LIMB', 'sensation', 'val', '009', 'pred_10', '100020'),
(5, 'RIGHT UPPER LIMB', 'Range of Motion', 'val', '009', 'pred_10', '100020'),
(6, 'RIGHT UPPER LIMB', 'Muscle tone', 'y6', '009', 'pred_10', '100020'),
(7, 'RIGHT UPPER LIMB', 'Power of Muscle', 'val', '009', 'pred_10', '100020'),
(8, 'RIGHT UPPER LIMB', 'sensation', 'fgch', '009', 'pred_10', '100020'),
(9, 'LEFT LOWER LIMB', 'Range of Motion', 'y6', '009', 'pred_10', '100020'),
(10, 'LEFT LOWER LIMB', 'Muscle tone', 'val', '009', 'pred_10', '100020'),
(11, 'LEFT LOWER LIMB', 'Power of Muscle', 'val', '009', 'pred_10', '100020'),
(12, 'LEFT LOWER LIMB', 'sensation', 'y6', '009', 'pred_10', '100020'),
(13, 'RIGHT LOWER LIMB', 'Range of Motion', 'val', '009', 'pred_10', '100020'),
(14, 'RIGHT LOWER LIMB', 'Muscle tone', 'te', '009', 'pred_10', '100020'),
(15, 'RIGHT LOWER LIMB', 'Power of Muscle', 'cc', '009', 'pred_10', '100020'),
(16, 'RIGHT LOWER LIMB', 'sensation', 'y6', '009', 'pred_10', '100020'),
(17, 'LEFT UPPER LIMB', 'Range of Motion', '6', 'nhis18', 'physio_18', '100021'),
(18, 'LEFT UPPER LIMB', 'Muscle tone', '7', 'nhis18', 'physio_18', '100021'),
(19, 'LEFT UPPER LIMB', 'Power of Muscle', '8', 'nhis18', 'physio_18', '100021'),
(20, 'LEFT UPPER LIMB', 'sensation', '7', 'nhis18', 'physio_18', '100021'),
(21, 'RIGHT UPPER LIMB', 'Range of Motion', '7', 'nhis18', 'physio_18', '100021'),
(22, 'RIGHT UPPER LIMB', 'Muscle tone', '6', 'nhis18', 'physio_18', '100021'),
(23, 'RIGHT UPPER LIMB', 'Power of Muscle', '8', 'nhis18', 'physio_18', '100021'),
(24, 'RIGHT UPPER LIMB', 'sensation', '9', 'nhis18', 'physio_18', '100021'),
(25, 'LEFT LOWER LIMB', 'Range of Motion', '8', 'nhis18', 'physio_18', '100021'),
(26, 'LEFT LOWER LIMB', 'Muscle tone', '7', 'nhis18', 'physio_18', '100021'),
(27, 'LEFT LOWER LIMB', 'Power of Muscle', '6', 'nhis18', 'physio_18', '100021'),
(28, 'LEFT LOWER LIMB', 'sensation', '5', 'nhis18', 'physio_18', '100021'),
(29, 'RIGHT LOWER LIMB', 'Range of Motion', '8', 'nhis18', 'physio_18', '100021'),
(30, 'RIGHT LOWER LIMB', 'Muscle tone', '6', 'nhis18', 'physio_18', '100021'),
(31, 'RIGHT LOWER LIMB', 'Power of Muscle', '7', 'nhis18', 'physio_18', '100021'),
(32, 'RIGHT LOWER LIMB', 'sensation', '6', 'nhis18', 'physio_18', '100021'),
(33, 'LEFT UPPER LIMB', 'Range of Motion', 'sd', 'tgdd', 'physio_18', '100022'),
(34, 'LEFT UPPER LIMB', 'Muscle tone', 'ty', 'tgdd', 'physio_18', '100022'),
(35, 'LEFT UPPER LIMB', 'Power of Muscle', 'rty', 'tgdd', 'physio_18', '100022'),
(36, 'LEFT UPPER LIMB', 'sensation', '5ett34', 'tgdd', 'physio_18', '100022'),
(37, 'RIGHT UPPER LIMB', 'Range of Motion', '4w5t4', 'tgdd', 'physio_18', '100022'),
(38, 'RIGHT UPPER LIMB', 'Muscle tone', '45rg', 'tgdd', 'physio_18', '100022'),
(39, 'RIGHT UPPER LIMB', 'Power of Muscle', '3rf', 'tgdd', 'physio_18', '100022'),
(40, 'RIGHT UPPER LIMB', 'sensation', '3r2f', 'tgdd', 'physio_18', '100022'),
(41, 'LEFT LOWER LIMB', 'Range of Motion', '', 'tgdd', 'physio_18', '100022'),
(42, 'LEFT LOWER LIMB', 'Muscle tone', '', 'tgdd', 'physio_18', '100022'),
(43, 'LEFT LOWER LIMB', 'Power of Muscle', '', 'tgdd', 'physio_18', '100022'),
(44, 'LEFT LOWER LIMB', 'sensation', '', 'tgdd', 'physio_18', '100022'),
(45, 'RIGHT LOWER LIMB', 'Range of Motion', '', 'tgdd', 'physio_18', '100022'),
(46, 'RIGHT LOWER LIMB', 'Muscle tone', '', 'tgdd', 'physio_18', '100022'),
(47, 'RIGHT LOWER LIMB', 'Power of Muscle', '', 'tgdd', 'physio_18', '100022'),
(48, 'RIGHT LOWER LIMB', 'sensation', '', 'tgdd', 'physio_18', '100022'),
(49, 'LEFT UPPER LIMB', 'Range of Motion', 'sd', 'tgdd', 'physio_18', '100022'),
(50, 'LEFT UPPER LIMB', 'Muscle tone', 'ty', 'tgdd', 'physio_18', '100022'),
(51, 'LEFT UPPER LIMB', 'Power of Muscle', 'rty', 'tgdd', 'physio_18', '100022'),
(52, 'LEFT UPPER LIMB', 'sensation', '5ett34', 'tgdd', 'physio_18', '100022'),
(53, 'RIGHT UPPER LIMB', 'Range of Motion', '4w5t4', 'tgdd', 'physio_18', '100022'),
(54, 'RIGHT UPPER LIMB', 'Muscle tone', '45rg', 'tgdd', 'physio_18', '100022'),
(55, 'RIGHT UPPER LIMB', 'Power of Muscle', '3rf', 'tgdd', 'physio_18', '100022'),
(56, 'RIGHT UPPER LIMB', 'sensation', '3r2f', 'tgdd', 'physio_18', '100022'),
(57, 'LEFT LOWER LIMB', 'Range of Motion', '', 'tgdd', 'physio_18', '100022'),
(58, 'LEFT LOWER LIMB', 'Muscle tone', '', 'tgdd', 'physio_18', '100022'),
(59, 'LEFT LOWER LIMB', 'Power of Muscle', '', 'tgdd', 'physio_18', '100022'),
(60, 'LEFT LOWER LIMB', 'sensation', '', 'tgdd', 'physio_18', '100022'),
(61, 'RIGHT LOWER LIMB', 'Range of Motion', '', 'tgdd', 'physio_18', '100022'),
(62, 'RIGHT LOWER LIMB', 'Muscle tone', '', 'tgdd', 'physio_18', '100022'),
(63, 'RIGHT LOWER LIMB', 'Power of Muscle', '', 'tgdd', 'physio_18', '100022'),
(64, 'RIGHT LOWER LIMB', 'sensation', '', 'tgdd', 'physio_18', '100022'),
(65, 'LEFT UPPER LIMB', 'Range of Motion', 'sd', 'tgdd', 'physio_18', '100022'),
(66, 'LEFT UPPER LIMB', 'Muscle tone', 'ty', 'tgdd', 'physio_18', '100022'),
(67, 'LEFT UPPER LIMB', 'Power of Muscle', 'rty', 'tgdd', 'physio_18', '100022'),
(68, 'LEFT UPPER LIMB', 'sensation', '5ett34', 'tgdd', 'physio_18', '100022'),
(69, 'RIGHT UPPER LIMB', 'Range of Motion', '4w5t4', 'tgdd', 'physio_18', '100022'),
(70, 'RIGHT UPPER LIMB', 'Muscle tone', '45rg', 'tgdd', 'physio_18', '100022'),
(71, 'RIGHT UPPER LIMB', 'Power of Muscle', '3rf', 'tgdd', 'physio_18', '100022'),
(72, 'RIGHT UPPER LIMB', 'sensation', '3r2f', 'tgdd', 'physio_18', '100022'),
(73, 'LEFT LOWER LIMB', 'Range of Motion', 'ee', 'tgdd', 'physio_18', '100022'),
(74, 'LEFT LOWER LIMB', 'Muscle tone', 'wwqq', 'tgdd', 'physio_18', '100022'),
(75, 'LEFT LOWER LIMB', 'Power of Muscle', 'qq', 'tgdd', 'physio_18', '100022'),
(76, 'LEFT LOWER LIMB', 'sensation', 'gg', 'tgdd', 'physio_18', '100022'),
(77, 'RIGHT LOWER LIMB', 'Range of Motion', '33', 'tgdd', 'physio_18', '100022'),
(78, 'RIGHT LOWER LIMB', 'Muscle tone', 'hh', 'tgdd', 'physio_18', '100022'),
(79, 'RIGHT LOWER LIMB', 'Power of Muscle', 'vv', 'tgdd', 'physio_18', '100022'),
(80, 'RIGHT LOWER LIMB', 'sensation', 'ee', 'tgdd', 'physio_18', '100022'),
(81, 'LEFT UPPER LIMB', 'Range of Motion', '6', 'tgdd', 'physio_18', '100022'),
(82, 'LEFT UPPER LIMB', 'Muscle tone', '6', 'tgdd', 'physio_18', '100022'),
(83, 'LEFT UPPER LIMB', 'Power of Muscle', '4', 'tgdd', 'physio_18', '100022'),
(84, 'LEFT UPPER LIMB', 'sensation', '6', 'tgdd', 'physio_18', '100022'),
(85, 'RIGHT UPPER LIMB', 'Range of Motion', '5', 'tgdd', 'physio_18', '100022'),
(86, 'RIGHT UPPER LIMB', 'Muscle tone', '4', 'tgdd', 'physio_18', '100022'),
(87, 'RIGHT UPPER LIMB', 'Power of Muscle', '3', 'tgdd', 'physio_18', '100022'),
(88, 'RIGHT UPPER LIMB', 'sensation', '6', 'tgdd', 'physio_18', '100022'),
(89, 'LEFT LOWER LIMB', 'Range of Motion', '35', 'tgdd', 'physio_18', '100022'),
(90, 'LEFT LOWER LIMB', 'Muscle tone', '6', 'tgdd', 'physio_18', '100022'),
(91, 'LEFT LOWER LIMB', 'Power of Muscle', '6', 'tgdd', 'physio_18', '100022'),
(92, 'LEFT LOWER LIMB', 'sensation', '8', 'tgdd', 'physio_18', '100022'),
(93, 'RIGHT LOWER LIMB', 'Range of Motion', '2', 'tgdd', 'physio_18', '100022'),
(94, 'RIGHT LOWER LIMB', 'Muscle tone', '1', 'tgdd', 'physio_18', '100022'),
(95, 'RIGHT LOWER LIMB', 'Power of Muscle', '4', 'tgdd', 'physio_18', '100022'),
(96, 'RIGHT LOWER LIMB', 'sensation', '3', 'tgdd', 'physio_18', '100022'),
(97, 'LEFT UPPER LIMB', 'Range of Motion', '6', 'tgdd', 'physio_18', '100022'),
(98, 'LEFT UPPER LIMB', 'Muscle tone', '6', 'tgdd', 'physio_18', '100022'),
(99, 'LEFT UPPER LIMB', 'Power of Muscle', '4', 'tgdd', 'physio_18', '100022'),
(100, 'LEFT UPPER LIMB', 'sensation', '6', 'tgdd', 'physio_18', '100022'),
(101, 'RIGHT UPPER LIMB', 'Range of Motion', '5', 'tgdd', 'physio_18', '100022'),
(102, 'RIGHT UPPER LIMB', 'Muscle tone', '4', 'tgdd', 'physio_18', '100022'),
(103, 'RIGHT UPPER LIMB', 'Power of Muscle', '3', 'tgdd', 'physio_18', '100022'),
(104, 'RIGHT UPPER LIMB', 'sensation', '6', 'tgdd', 'physio_18', '100022'),
(105, 'LEFT LOWER LIMB', 'Range of Motion', '35', 'tgdd', 'physio_18', '100022'),
(106, 'LEFT LOWER LIMB', 'Muscle tone', '6', 'tgdd', 'physio_18', '100022'),
(107, 'LEFT LOWER LIMB', 'Power of Muscle', '6', 'tgdd', 'physio_18', '100022'),
(108, 'LEFT LOWER LIMB', 'sensation', '8', 'tgdd', 'physio_18', '100022'),
(109, 'RIGHT LOWER LIMB', 'Range of Motion', '2', 'tgdd', 'physio_18', '100022'),
(110, 'RIGHT LOWER LIMB', 'Muscle tone', '1', 'tgdd', 'physio_18', '100022'),
(111, 'RIGHT LOWER LIMB', 'Power of Muscle', '4', 'tgdd', 'physio_18', '100022'),
(112, 'RIGHT LOWER LIMB', 'sensation', '3', 'tgdd', 'physio_18', '100022'),
(113, 'LEFT UPPER LIMB', 'Range of Motion', '6', 'tgdd', 'physio_18', '100022'),
(114, 'LEFT UPPER LIMB', 'Muscle tone', '6', 'tgdd', 'physio_18', '100022'),
(115, 'LEFT UPPER LIMB', 'Power of Muscle', '4', 'tgdd', 'physio_18', '100022'),
(116, 'LEFT UPPER LIMB', 'sensation', '6', 'tgdd', 'physio_18', '100022'),
(117, 'RIGHT UPPER LIMB', 'Range of Motion', '5', 'tgdd', 'physio_18', '100022'),
(118, 'RIGHT UPPER LIMB', 'Muscle tone', '4', 'tgdd', 'physio_18', '100022'),
(119, 'RIGHT UPPER LIMB', 'Power of Muscle', '3', 'tgdd', 'physio_18', '100022'),
(120, 'RIGHT UPPER LIMB', 'sensation', '6', 'tgdd', 'physio_18', '100022'),
(121, 'LEFT LOWER LIMB', 'Range of Motion', '35', 'tgdd', 'physio_18', '100022'),
(122, 'LEFT LOWER LIMB', 'Muscle tone', '6', 'tgdd', 'physio_18', '100022'),
(123, 'LEFT LOWER LIMB', 'Power of Muscle', '6', 'tgdd', 'physio_18', '100022'),
(124, 'LEFT LOWER LIMB', 'sensation', '8', 'tgdd', 'physio_18', '100022'),
(125, 'RIGHT LOWER LIMB', 'Range of Motion', '2', 'tgdd', 'physio_18', '100022'),
(126, 'RIGHT LOWER LIMB', 'Muscle tone', '1', 'tgdd', 'physio_18', '100022'),
(127, 'RIGHT LOWER LIMB', 'Power of Muscle', '4', 'tgdd', 'physio_18', '100022'),
(128, 'RIGHT LOWER LIMB', 'sensation', '3', 'tgdd', 'physio_18', '100022');

-- --------------------------------------------------------

--
-- Table structure for table `lower`
--

CREATE TABLE `lower` (
  `id` int(11) NOT NULL auto_increment,
  `tp` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
  `id` int(11) NOT NULL auto_increment,
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
  `date` varchar(12) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `lowerlimb`
--


-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `id` int(255) NOT NULL auto_increment,
  `question` varchar(200) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `object`
--

INSERT INTO `object` (`id`, `question`, `answer`, `nhis`, `num`, `rec`) VALUES
(1, 'turning over', '2', 'NHIS-100', 'phy-201', ''),
(2, 'lying or sitting', '3', 'NHIS-100', 'phy-201', ''),
(3, 'sitting balance', '3', 'NHIS-100', 'phy-201', ''),
(4, 'sitting to standing', '4', 'NHIS-100', 'phy-201', ''),
(5, 'standing', '2', 'NHIS-100', 'phy-201', ''),
(6, 'transfer', '4', 'NHIS-100', 'phy-201', ''),
(7, 'Walking indoor', '3', 'NHIS-100', 'phy-201', ''),
(8, 'stairs', '1', 'NHIS-100', 'phy-201', ''),
(9, 'turning over', '1', 'NHIS-100', 'phy-204', ''),
(10, 'lying or sitting', '2', 'NHIS-100', 'phy-204', ''),
(11, 'sitting balance', '3', 'NHIS-100', 'phy-204', ''),
(12, 'sitting to standing', '3', 'NHIS-100', 'phy-204', ''),
(13, 'standing', '3', 'NHIS-100', 'phy-204', ''),
(14, 'transfer', '4', 'NHIS-100', 'phy-204', ''),
(15, 'Walking indoor', '4', 'NHIS-100', 'phy-204', ''),
(16, 'stairs', '2', 'NHIS-100', 'phy-204', ''),
(17, 'turning over', '0', '', 'phy-204', ''),
(18, 'lying or sitting', '0', '', 'phy-204', ''),
(19, 'sitting balance', '0', '', 'phy-204', ''),
(20, 'sitting to standing', '0', '', 'phy-204', ''),
(21, 'standing', '0', '', 'phy-204', ''),
(22, 'transfer', '0', '', 'phy-204', ''),
(23, 'Walking indoor', '0', '', 'phy-204', ''),
(24, 'stairs', '0', '', 'phy-204', ''),
(25, 'turning over', '1', '009', 'pred_10', ''),
(26, 'lying or sitting', '3', '009', 'pred_10', ''),
(27, 'sitting balance', '3', '009', 'pred_10', ''),
(28, 'sitting to standing', '0', '009', 'pred_10', ''),
(29, 'standing', '4', '009', 'pred_10', ''),
(30, 'transfer', '0', '009', 'pred_10', ''),
(31, 'Walking indoor', '0', '009', 'pred_10', ''),
(32, 'stairs', '3', '009', 'pred_10', ''),
(33, 'turning over', 'assistance of one people', '009', 'pred_10', '100020'),
(34, 'lying or sitting', 'requires supervision or verbal instruction', '009', 'pred_10', '100020'),
(35, 'sitting balance', 'requires an aid or an appliance', '009', 'pred_10', '100020'),
(36, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100020'),
(37, 'standing', 'Unable to perform', '009', 'pred_10', '100020'),
(38, 'transfer', 'assistance of one people', '009', 'pred_10', '100020'),
(39, 'Walking indoor', 'requires supervision or verbal instruction', '009', 'pred_10', '100020'),
(40, 'stairs', 'assistance of one people', '009', 'pred_10', '100020'),
(41, 'turning over', 'assistance of one people', '009', 'pred_10', '100020'),
(42, 'lying or sitting', 'requires supervision or verbal instruction', '009', 'pred_10', '100020'),
(43, 'sitting balance', 'requires an aid or an appliance', '009', 'pred_10', '100020'),
(44, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100020'),
(45, 'standing', 'Unable to perform', '009', 'pred_10', '100020'),
(46, 'transfer', 'assistance of one people', '009', 'pred_10', '100020'),
(47, 'Walking indoor', 'requires supervision or verbal instruction', '009', 'pred_10', '100020'),
(48, 'stairs', 'assistance of one people', '009', 'pred_10', '100020'),
(49, 'turning over', 'assistance of two people', 'nhis18', 'physio_18', '100021'),
(50, 'lying or sitting', 'assistance of one people', 'nhis18', 'physio_18', '100021'),
(51, 'sitting balance', 'requires an aid or an appliance', 'nhis18', 'physio_18', '100021'),
(52, 'sitting to standing', 'requires supervision or verbal instruction', 'nhis18', 'physio_18', '100021'),
(53, 'standing', 'assistance of one people', 'nhis18', 'physio_18', '100021'),
(54, 'transfer', 'assistance of two people', 'nhis18', 'physio_18', '100021'),
(55, 'Walking indoor', 'Unable to perform', 'nhis18', 'physio_18', '100021'),
(56, 'stairs', 'Unable to perform', 'nhis18', 'physio_18', '100021'),
(57, 'turning over', 'assistance of two people', 'nhis18', 'physio_18', '100021'),
(58, 'lying or sitting', 'assistance of one people', 'nhis18', 'physio_18', '100021'),
(59, 'sitting balance', 'requires an aid or an appliance', 'nhis18', 'physio_18', '100021'),
(60, 'sitting to standing', 'requires supervision or verbal instruction', 'nhis18', 'physio_18', '100021'),
(61, 'standing', 'assistance of one people', 'nhis18', 'physio_18', '100021'),
(62, 'transfer', 'assistance of two people', 'nhis18', 'physio_18', '100021'),
(63, 'Walking indoor', 'Unable to perform', 'nhis18', 'physio_18', '100021'),
(64, 'stairs', 'Unable to perform', 'nhis18', 'physio_18', '100021'),
(65, '', '', '', 'physio_18', '100021'),
(66, '', '', '', 'physio_18', '100021'),
(67, '', '', '', 'physio_18', '100021'),
(68, '', '', '', 'physio_18', '100021'),
(69, '', '', '', 'physio_18', '100021'),
(70, '', '', '', 'physio_18', '100021'),
(71, '', '', '', 'physio_18', '100021'),
(72, '', '', '', 'physio_18', '100021'),
(73, '', '', '', 'physio_18', '100021'),
(74, '', '', '', 'physio_18', '100021'),
(75, '', '', '', 'physio_18', '100021'),
(76, '', '', '', 'physio_18', '100021'),
(77, '', '', '', 'physio_18', '100021'),
(78, '', '', '', 'physio_18', '100021'),
(79, '', '', '', 'physio_18', '100021'),
(80, '', '', '', 'physio_18', '100021'),
(81, 'turning over', 'requires an aid or an appliance', 'tgdd', 'physio_18', '100022'),
(82, 'lying or sitting', 'Unable to perform', 'tgdd', 'physio_18', '100022'),
(83, 'sitting balance', 'Unable to perform', 'tgdd', 'physio_18', '100022'),
(84, 'sitting to standing', 'Unable to perform', 'tgdd', 'physio_18', '100022'),
(85, 'standing', 'Unable to perform', 'tgdd', 'physio_18', '100022'),
(86, 'transfer', 'Unable to perform', 'tgdd', 'physio_18', '100022'),
(87, 'Walking indoor', 'Unable to perform', 'tgdd', 'physio_18', '100022'),
(88, 'stairs', 'Unable to perform', 'tgdd', 'physio_18', '100022');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL auto_increment,
  `patientnum` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `DOB` varchar(300) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `physician` varchar(100) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `ref` varchar(250) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `phynum` (`patientnum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patientnum`, `name`, `DOB`, `address`, `sex`, `physician`, `ward`, `ref`, `date`) VALUES
(1, '12', 'young', '27', '6 goshen street afobaje estate ota', 'female', 'adebowale', '5b', 'FMC (12001020)', '2018-08-25 19:48:40'),
(5, '556', 'olutayo', '45', '6 goshen street afobaje estate ota ', 'male', 'dr. jinaid', '46', 'fever', '2018-08-14 10:15:47'),
(6, '234', 'yakubu', '27', 'abeokuta', 'male', 'sdfasag', '5b', 'fever', '2018-08-10 07:36:43'),
(7, '303', 'adebowale', '27', '6 t afobaje estate ota', 'male', '0558504933', '5b', 'fever', '2018-09-24 15:40:43'),
(8, '670', 'adewal', '48', '6 goshen street afobaje estate ota', 'male', '45679', '5b', 'uth', '2018-10-05 10:48:36'),
(9, '0', '', '0', 'hhhngfb', 'male', '', 'dggv', '', '2018-10-09 15:52:13'),
(10, 'NHIS-100', 'Yakubu Damilola', '2018-10-04', 'abeokuta', 'male', '001', '2', 'Gen Hospital Ijaye', '2018-10-24 07:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `physio`
--

CREATE TABLE `physio` (
  `id` int(250) NOT NULL auto_increment,
  `user` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `dt` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
  `id` int(200) NOT NULL auto_increment,
  `receipt_no` int(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `receipt_no`) VALUES
(1, 100022);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_num`
--

CREATE TABLE `receipt_num` (
  `id` int(200) NOT NULL auto_increment,
  `num` int(123) NOT NULL,
  `rec` int(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
  `id` int(200) NOT NULL auto_increment,
  `issue` varchar(200) NOT NULL,
  `plain` varchar(200) NOT NULL,
  `limb` varchar(200) NOT NULL,
  `dt` varchar(10) NOT NULL,
  `num` varchar(200) NOT NULL,
  `tp` varchar(100) NOT NULL,
  `analysis` text NOT NULL,
  `receipt` int(100) NOT NULL,
  `time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `diagnosis` varchar(50000) NOT NULL,
  `physio` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

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
(43, ' Flexor Digitorum Longus  ', 'eeeeeeeeeeeeee', 'Right', '2018/08/31', '234', 'LOWER', 'jjjjj', 100013, '2018-08-31 23:39:45', 'left lower limb fracture', 'Ganiyu Adisa'),
(44, ' Extensor Hollucis Longus  ', 'vd', 'Right', '2018/11/13', 'pred_10', 'LOWER', 'njk', 100014, '2018-11-13 10:17:14', 'dfsfs', 'John Mark'),
(45, ' Flexor Hallucis Longus  ', 'sdf', 'Right', '2018/11/13', 'pred_10', 'LOWER', 'njk', 100014, '2018-11-13 10:17:14', 'dfsfs', 'John Mark'),
(46, ' Hamstrings ', 'vd', 'Right', '2018/11/13', 'pred_10', 'LOWER', 'njk', 100014, '2018-11-13 10:17:14', 'dfsfs', 'John Mark'),
(47, ' Flexor Digitorum Longus  ', 'ada', 'Right', '2018/11/13', 'pred_10', 'LOWER', 'njk', 100015, '2018-11-13 10:17:14', 'dfsfs', 'John Mark'),
(48, ' Gastorcnemius ', 'rwfr', 'Right', '2018/11/13', 'pred_10', 'LOWER', 'njk', 100015, '2018-11-13 10:17:14', 'dfsfs', 'John Mark'),
(49, ' Hip External Rotators  ', 'jthygf', 'Right', '2018/11/13', 'pred_10', 'LOWER', 'njk', 100015, '2018-11-13 10:17:14', 'dfsfs', 'John Mark'),
(50, ' Hip Extensors  ', 'yjhgtf', 'Right', '2018/11/13', 'pred_10', 'LOWER', 'njk', 100015, '2018-11-13 10:17:14', 'dfsfs', 'John Mark');

-- --------------------------------------------------------

--
-- Table structure for table `upper`
--

CREATE TABLE `upper` (
  `id` int(11) NOT NULL auto_increment,
  `tp` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

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
  `id` int(11) NOT NULL auto_increment,
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
  `date` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `upperlimb`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `date`) VALUES
(1, 'Admin', 'Admin@gmail.com', 'Admin', '2018-08-05 21:43:12');
