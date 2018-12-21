

--
-- Database: `fmcphy_fitness`
--
CREATE DATABASE IF NOT EXISTS `fmcphy_fitness` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmcphy_fitness`;

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
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rec` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`id`, `rollnum`, `name`, `age`, `dob`, `complaint`, `date_access`, `history_source`, `history`, `present_treat`, `major_ills`, `drug_history`, `surgical_history`, `family_history`, `time`, `rec`) VALUES
(1, '', 'yakubu', 12, '2018-11-07', '', '2018-11-08', '', '', 'others', 'aaaa', 'aaa', 'aaa', 'aaa', '2018-11-29 14:36:10', ''),
(2, 'roll-201fit', 'yakubu', 12, '2018-11-07', '', '2018-11-08', '', '', 'others', 'aaaa', 'aaa', 'aaa', 'aaa', '2018-11-29 14:38:07', ''),
(3, 'roll-202fit', 'yakubu', 12, '2018-11-02', 'ssss', '2018-11-09', 'sss', 'sssss', 'others', 'ssssssss', 'sss', 'sss', 'ssssss', '2018-11-29 14:39:52', ''),
(4, 'PRED_16', 'Riyah Ololade', 3, '1212-12-12', 'present complaint', '2018-12-07', 'Present bruise', 'klmk', 'Heart disease', 'knmjk', 'drug history', 'surgical history', 'social history', '2018-12-05 21:27:27', ''),
(5, 'PRED_16', 'Riyah Ololade', 3, '1212-12-12', 'present complaint', '2018-12-09', 'Present bruise', 'aslmdfsa', 'Asthma', 'kjnubjhub', 'drug history', 'surgical history', 'social history', '2018-12-06 04:34:08', '100000003'),
(6, 'pred_16', 'Riyah Ololade', 2, '1212-12-12', 'ds', '2018-12-13', 'asa', 'sd', 'Asthma', 'sd', 'sd', 'sd', 'sd', '2018-12-06 04:44:38', '100000004');

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
  `means` varchar(70) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment2`
--

INSERT INTO `assessment2` (`id`, `rollnum`, `part_fit`, `duration`, `r4stop`, `r4fit`, `others`, `signature`, `ddate`, `height`, `weight`, `bmi`, `vitals`, `bp`, `pr`, `waist`, `hip`, `ratio`, `heartrate`, `plan`, `means`, `rec`) VALUES
(1, 'roll-202fit', 'no', ' 2 days', 'ss', 'want to improve my shape', '', ' ', 'fdsgs', '12', '12', ' 12', '12', '12', '12', '', '12', '12', '12', 'sdgdgfdfdfd', 'sfdfdgg', ''),
(2, 'roll-202fit', 'no', ' 2 days', 'ss', 'want to improve my shape', '', ' ', 'fdsgs', '12', '12', ' 12', '12', '12', '12', '', '12', '12', '12', 'sdgdgfdfdfd', 'sfdfdgg', ''),
(3, 'roll-202fit', 'no', ' 2 days', 'ss', 'to regain my previous shape after child birth', 'sss', ' ', 'sss', '12', '12', ' 12', '12', '12', '12', '12', '12', '12', '12', 'asssssss', 'asssssss', ''),
(7, 'PRED_16', 'no', ' pain duration', 'fsffd', 'want to improve my shape', 'lkmk', ' ooo', 'sddsad', 'sad', '3kg', ' sd', 'sd', 'sad', 'sd', 'ds', 'sd', 'sad', 'sd', 'dfsfd', 'dfse', '100000002'),
(8, 'PRED_16', 'no', ' pain duration', 'fsffd', 'want to improve my shape', 'lkmk', ' ooo', 'sddsad', 'sad', '3kg', ' sd', 'sd', 'sad', 'sd', 'ds', 'sd', 'sad', 'sd', 'dfsfd', 'dfse', '100000002'),
(9, 'PRED_16', 'yes', ' pain duration', 'fsffd', 'to regain my previous shape after child birth', 'lm klmkl', ' ooo', 'sddsad', 'sad', '3kg', ' sd', 'sd', 'sad', 'sd', 'ds', 'sd', 'sad', 'sd', 'kjnjknj', 'nm n nj', '100000003');

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
(10, '1243', '0001', 'AGE 50 + rate = 5'),
(11, 'PRED_16', '100000008', 'AGE 15-20 rate = 3'),
(12, 'PRED_16', '100000008', 'AGE 21-30 rate = 4'),
(13, 'PRED_16', '100000008', 'AGE 31-40 rate = 4'),
(14, 'PRED_16', '100000008', 'AGE 41-50 rate = 2'),
(15, 'PRED_16', '100000008', 'AGE 50 + rate = 5');

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
  `age` varchar(300) NOT NULL,
  `height` varchar(7) NOT NULL,
  `weight` varchar(7) NOT NULL,
  `pain` varchar(255) NOT NULL,
  `shortness` varchar(255) NOT NULL,
  `dizziness` varchar(255) NOT NULL,
  `orthopnea` varchar(225) NOT NULL,
  `edema` varchar(255) NOT NULL,
  `palpitations` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rec` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `rollnum`, `ddate`, `firstname`, `lastname`, `address`, `city`, `state`, `zip`, `homephone`, `bussinessphone`, `age`, `height`, `weight`, `pain`, `shortness`, `dizziness`, `orthopnea`, `edema`, `palpitations`, `date`, `rec`) VALUES
(1, 'roll-202fit', '10/04/2018', 'oguns tolu', 'OPEYEMI', '6 goshen street afobaje estate ota', 'abbeokuta', 'ogun', '110253', '08083004959', '394544699868346', 'aa', '12', '12', 'no', 'yes', 'yes', 'no', 'unsure', 'unsure', '2018-11-29 16:48:57', ''),
(2, 'PRED_16', '2018-12-16', 'Riyah Ololade', '', 'abeokuta', 'adfda', 'Ogun', 'sa', 'sdasd', 'sdds', '1212-12-12', 'sad', '3kg', 'yes', 'unsure', 'unsure', 'yes', 'unsure', 'unsure', '2018-12-06 05:54:27', '100000008');

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
  `regular` varchar(25) NOT NULL,
  `type` varchar(255) NOT NULL,
  `day` varchar(150) NOT NULL,
  `eat` varchar(255) NOT NULL,
  `like` varchar(150) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire2`
--

INSERT INTO `questionnaire2` (`id`, `rollnum`, `intermittent`, `heart`, `breath`, `smoke`, `drink`, `health`, `exercise`, `regular`, `type`, `day`, `eat`, `like`, `time`, `rec`) VALUES
(1, 'roll-202fit', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'yes', '12333', '40000', '4', 'Feel better', '2018-11-29 17:46:26', ''),
(2, 'roll-202fit', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '12333', '40000', '4', ' Look better', '2018-11-29 17:51:01', ''),
(3, 'roll-202fit', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'no', 'yes', '12333', '40000', '4', ' Look better', '2018-11-29 17:54:45', ''),
(4, 'roll-202fit', '', '', '', '', '', '', '', '', '12333', '40000', '4', 'Gain weight', '2018-11-29 19:42:43', ''),
(5, 'roll-202fit', '', '', '', '', '', '', '', 'yes', '12333', '40000', '4', 'Feel better', '2018-11-29 19:50:21', ''),
(6, 'roll-202fit', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', '3333', '40000', '4', ' Look better', '2018-11-29 20:02:41', ''),
(7, 'PRED_16', 'yes', 'unsure', 'unsure', 'no', 'no', 'no', 'yes', 'no', 'sd', 'sd', 'sd', 'Gain weight', '2018-12-06 06:03:13', '100000008');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire3`
--

CREATE TABLE `questionnaire3` (
  `id` int(11) NOT NULL,
  `rollnum` varchar(30) NOT NULL,
  `name` varchar(70) NOT NULL,
  `clinicnum` varchar(12) NOT NULL,
  `age` varchar(400) NOT NULL,
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
  `leisure` varchar(30) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire3`
--

INSERT INTO `questionnaire3` (`id`, `rollnum`, `name`, `clinicnum`, `age`, `gender`, `occupation`, `address`, `phone`, `lying`, `walking`, `driving`, `standing`, `kneeling`, `bending`, `walkinghrs`, `sleepinghrs`, `leisure`, `rec`) VALUES
(1, '0', 'yakubu', '30495', '12', 'm', 'work', '6 goshen street afobaje estate ota', '08030960928', '2', '23', '2 ', '2', '2', '2', '2', '2', '2', ''),
(2, 'PRED_16', 'Riyah Ololade', '9', '1212-12-12', 'm', 'Trader', 'abeokuta', '08134193440', '7', '3', '2 ', '4', '6', '6', '6', '3', 'xddvg', '100000008');

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
  `typeofsnack` varchar(70) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire4`
--

INSERT INTO `questionnaire4` (`id`, `rollnum`, `alcohol`, `quantity`, `measurement`, `nonalcohol`, `amount`, `nonalcmear`, `smoking`, `packets`, `stimulants`, `cups_nuts`, `eating`, `freq`, `typeofsnack`, `rec`) VALUES
(1, 'roll-202fit', 'Palm wine', '123', 'Short', '', '33', '', 'None', '33', 'Coffee', '', '3333', '3333', '12333', ''),
(2, 'roll-202fit', 'Palm wine', '123', 'Glass', 'Fruit juice', '33', 'Bottles', 'Cigar', '33', 'kolanut', '33', '3333', '3333', '12333', ''),
(7, 'PRED_16', 'Hot drink', '1', 'Short', 'Soft drinks', '9', 'Glass', '', '9', 'none', '2', '6', '6', 'Sale', '100000008');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `num` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `num`) VALUES
(0, 100000009);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assessment2`
--
ALTER TABLE `assessment2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exerate`
--
ALTER TABLE `exerate`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questionnaire2`
--
ALTER TABLE `questionnaire2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questionnaire3`
--
ALTER TABLE `questionnaire3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questionnaire4`
--
ALTER TABLE `questionnaire4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `fmcphy_gen`
--
CREATE DATABASE IF NOT EXISTS `fmcphy_gen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmcphy_gen`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `user` varchar(2000) NOT NULL,
  `pass` varchar(2000) NOT NULL,
  `type` varchar(2000) NOT NULL,
  `name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `pass`, `type`, `name`) VALUES
(1, 'admin', 'admin', 'front desk', ''),
(2, 'root', 'admin2', 'phy', 'John Adewale'),
(3, 'adesina', '111', 'ped', 'Dr Adesina Oguntoyinbo'),
(4, 'adesina', '111', 'ped', 'Dr Adesina Oguntoyinbo'),
(5, 'yd', '11111111', 'Neurology', 'Yakubu Damilola opeyemi'),
(6, 'bola', 'damilola', 'Front Desk', 'Semiu Bolanle'),
(7, 'ade', '11111111', 'Occupation', 'ade');

-- --------------------------------------------------------

--
-- Table structure for table `patient_num`
--

CREATE TABLE `patient_num` (
  `id` int(255) NOT NULL,
  `num` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_num`
--

INSERT INTO `patient_num` (`id`, `num`) VALUES
(1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `p_id` varchar(10) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `eval_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `name`, `p_id`, `DOB`, `eval_date`) VALUES
(3, 'Yakubu Damilola', 'PRED_10', '2018-10-14', '2018-10-13'),
(4, 'Sofine Fegolli', 'PRED_11', '1998-03-12', '2018-10-21'),
(6, 'Salisu Ganiu', 'PRED_14', '2018-11-09', '2018-11-10'),
(7, 'Adebayo Abdulmumeen', 'PRED_15', '1989-10-12', ''),
(8, 'Riyah Ololade', 'PRED_16', '1212-12-12', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_num`
--
ALTER TABLE `patient_num`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_num`
--
ALTER TABLE `patient_num`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `fmcphy_neu`
--
CREATE DATABASE IF NOT EXISTS `fmcphy_neu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmcphy_neu`;

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `findings` varchar(2000) NOT NULL,
  `impression` varchar(2000) NOT NULL,
  `treatment` varchar(2000) NOT NULL,
  `means` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`id`, `num`, `rec`, `findings`, `impression`, `treatment`, `means`) VALUES
(1, 'pred_10', '100024', 'JHB', 'DXFRDF', 'YGUYH', 'FGCF');

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
  `bedmobility` varchar(2000) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asp`
--

INSERT INTO `asp` (`id`, `idtwo`, `alert`, `respiratory`, `cognition`, `neglect`, `communication`, `swallow`, `pain`, `bedmobility`, `nhis`, `rec`) VALUES
(1, 'pred_10', 'voice', 'rr', 'no', 'present', 'no', 'no', '4', ' fsbgs', '009', '100020');

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
  `designation` varchar(40) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(18, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-12-28', 'consent to exam obtained', 'ooo', '05/12/2018', '12:22:12pm', 'Adio', 'fmc', '100022'),
(19, 'pred_10', 'Yakubu Damilola', 'abeokuta', '009', '898', '2018-10-14', 'male', '09090909090', '2018-12-13', 'unable to consent', 'ooo', '05/12/2018', '12:24:15pm', 'Adio', 'fmc', '100024');

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
  `rel_info` longtext NOT NULL,
  `nhis` varchar(200) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(12, 'pred_10', 'hcp', 'pmh', 'dh', 'lives with spouse', 'smoking', 'flat', 'no', 2, 'Downstiars', 6, 2, 3, 'independent', 'sticks 1/2', 'jhvbj ', '009', '100024');

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
  `indexscore` varchar(1200) NOT NULL,
  `actiontaken` text NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `rec` varchar(2300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(8, 'pred_10', 'Yes', 'no', 'yes', 'Upstiars', 'yes', '', ' jhb bjn', '009', '100024');

-- --------------------------------------------------------

--
-- Table structure for table `aspques`
--

CREATE TABLE `aspques` (
  `id` int(255) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspques`
--

INSERT INTO `aspques` (`id`, `question`, `answer`, `nhis`, `num`, `rec`) VALUES
(1, 'BP', '99', '009', 'pred_10', '100020'),
(2, 'HR', '99', '009', 'pred_10', '100020'),
(3, 'Oxygen Saturation', '90', '009', 'pred_10', '100020'),
(4, 'Level of connsiousness', '99', '009', 'pred_10', '100020'),
(5, 'BP DIASTOTIC 80-99', '', '009', 'pred_10', '100024'),
(6, 'BP SYSTOTIC 100-180', '', '009', 'pred_10', '100024'),
(7, 'HR 50-100', '', '009', 'pred_10', '100024'),
(8, 'Oxygen Saturation', '', '009', 'pred_10', '100024');

-- --------------------------------------------------------

--
-- Table structure for table `aspques2`
--

CREATE TABLE `aspques2` (
  `id` int(255) NOT NULL,
  `tp` varchar(200) NOT NULL,
  `issue` varchar(200) NOT NULL,
  `ans` varchar(20000) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(17, 'LEFT UPPER LIMB', 'Range of Motion', '', '009', 'pred_10', '100024'),
(18, 'LEFT UPPER LIMB', 'Muscle tone', '', '009', 'pred_10', '100024'),
(19, 'LEFT UPPER LIMB', 'Power of Muscle', '', '009', 'pred_10', '100024'),
(20, 'LEFT UPPER LIMB', 'sensation', '', '009', 'pred_10', '100024'),
(21, 'LEFT UPPER LIMB', 'reflexes', '', '009', 'pred_10', '100024'),
(22, 'LEFT UPPER LIMB', 'proprioception', '', '009', 'pred_10', '100024'),
(23, 'LEFT UPPER LIMB', '', '', '009', 'pred_10', '100024'),
(24, 'RIGHT UPPER LIMB', 'Range of Motion', '', '009', 'pred_10', '100024'),
(25, 'RIGHT UPPER LIMB', 'Muscle tone', '', '009', 'pred_10', '100024'),
(26, 'RIGHT UPPER LIMB', 'Power of Muscle', '', '009', 'pred_10', '100024'),
(27, 'RIGHT UPPER LIMB', 'sensation', '', '009', 'pred_10', '100024'),
(28, 'RIGHT UPPER LIMB', 'reflexes', '', '009', 'pred_10', '100024'),
(29, 'RIGHT UPPER LIMB', 'proprioception', '', '009', 'pred_10', '100024'),
(30, 'RIGHT UPPER LIMB', '', '', '009', 'pred_10', '100024'),
(31, 'LEFT LOWER LIMB', 'Range of Motion', '', '009', 'pred_10', '100024'),
(32, 'LEFT LOWER LIMB', 'Muscle tone', '', '009', 'pred_10', '100024');

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
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `id` int(255) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `nhis` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `rec` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(49, 'turning over', 'Unable to perform', '009', 'pred_10', '100024'),
(50, 'lying or siting', 'Unable to perform', '009', 'pred_10', '100024'),
(51, 'sitting balance', 'Unable to perform', '009', 'pred_10', '100024'),
(52, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100024'),
(53, 'standing', 'Unable to perform', '009', 'pred_10', '100024'),
(54, 'transfer', 'Unable to perform', '009', 'pred_10', '100024'),
(55, 'Walking indoor', 'Unable to perform', '009', 'pred_10', '100024'),
(56, 'stairs', 'Unable to perform', '009', 'pred_10', '100024'),
(57, 'turning over', 'Unable to perform', '009', 'pred_10', '100024'),
(58, 'lying or siting', 'Unable to perform', '009', 'pred_10', '100024'),
(59, 'sitting balance', 'Unable to perform', '009', 'pred_10', '100024'),
(60, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100024'),
(61, 'standing', 'Unable to perform', '009', 'pred_10', '100024'),
(62, 'transfer', 'Unable to perform', '009', 'pred_10', '100024'),
(63, 'Walking indoor', 'Unable to perform', '009', 'pred_10', '100024'),
(64, 'stairs', 'Unable to perform', '009', 'pred_10', '100024'),
(65, 'turning over', 'Unable to perform', '009', 'pred_10', '100024'),
(66, 'lying or siting', 'Unable to perform', '009', 'pred_10', '100024'),
(67, 'sitting balance', 'Unable to perform', '009', 'pred_10', '100024'),
(68, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100024'),
(69, 'standing', 'Unable to perform', '009', 'pred_10', '100024'),
(70, 'transfer', 'Unable to perform', '009', 'pred_10', '100024'),
(71, 'Walking indoor', 'Unable to perform', '009', 'pred_10', '100024'),
(72, 'stairs', 'Unable to perform', '009', 'pred_10', '100024'),
(73, 'turning over', 'Unable to perform', '009', 'pred_10', '100024'),
(74, 'lying or siting', 'Unable to perform', '009', 'pred_10', '100024'),
(75, 'sitting balance', 'Unable to perform', '009', 'pred_10', '100024'),
(76, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100024'),
(77, 'standing', 'Unable to perform', '009', 'pred_10', '100024'),
(78, 'transfer', 'Unable to perform', '009', 'pred_10', '100024'),
(79, 'Walking indoor', 'Unable to perform', '009', 'pred_10', '100024'),
(80, 'stairs', 'Unable to perform', '009', 'pred_10', '100024'),
(81, 'turning over', 'Unable to perform', '009', 'pred_10', '100024'),
(82, 'lying or siting', 'Unable to perform', '009', 'pred_10', '100024'),
(83, 'sitting balance', 'Unable to perform', '009', 'pred_10', '100024'),
(84, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100024'),
(85, 'standing', 'Unable to perform', '009', 'pred_10', '100024'),
(86, 'transfer', 'Unable to perform', '009', 'pred_10', '100024'),
(87, 'Walking indoor', 'Unable to perform', '009', 'pred_10', '100024'),
(88, 'stairs', 'Unable to perform', '009', 'pred_10', '100024'),
(89, 'turning over', 'Unable to perform', '009', 'pred_10', '100024'),
(90, 'lying or siting', 'Unable to perform', '009', 'pred_10', '100024'),
(91, 'sitting balance', 'Unable to perform', '009', 'pred_10', '100024'),
(92, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100024'),
(93, 'standing', 'Unable to perform', '009', 'pred_10', '100024'),
(94, 'transfer', 'Unable to perform', '009', 'pred_10', '100024'),
(95, 'Walking indoor', 'Unable to perform', '009', 'pred_10', '100024'),
(96, 'stairs', 'Unable to perform', '009', 'pred_10', '100024'),
(97, 'turning over', 'Unable to perform', '009', 'pred_10', '100024'),
(98, 'lying or siting', 'Unable to perform', '009', 'pred_10', '100024'),
(99, 'sitting balance', 'Unable to perform', '009', 'pred_10', '100024'),
(100, 'sitting to standing', 'Unable to perform', '009', 'pred_10', '100024'),
(101, 'standing', 'Unable to perform', '009', 'pred_10', '100024'),
(102, 'transfer', 'Unable to perform', '009', 'pred_10', '100024'),
(103, 'Walking indoor', 'Unable to perform', '009', 'pred_10', '100024'),
(104, 'stairs', 'Unable to perform', '009', 'pred_10', '100024');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patientnum` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `DOB` varchar(300) NOT NULL,
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
(1, 100024);

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
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `aspques`
--
ALTER TABLE `aspques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aspques2`
--
ALTER TABLE `aspques2`
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
-- Indexes for table `object`
--
ALTER TABLE `object`
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
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asp`
--
ALTER TABLE `asp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `asp1`
--
ALTER TABLE `asp1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `asp2`
--
ALTER TABLE `asp2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `asp4`
--
ALTER TABLE `asp4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aspques`
--
ALTER TABLE `aspques`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aspques2`
--
ALTER TABLE `aspques2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `fmcphy_occp`
--
CREATE DATABASE IF NOT EXISTS `fmcphy_occp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmcphy_occp`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `num`, `rec`, `issue`, `answer`, `comment`) VALUES
(1, 'PRED_10', '1000005', 'Self-feeding', 'Min Asst', ''),
(2, 'PRED_10', '1000005', 'Hygiene/grooming', 'DeMax Asst', ''),
(3, 'PRED_10', '1000005', 'Upper body(UB) bathing', 'Supervision', ''),
(4, 'PRED_10', '1000005', 'Upper Body dressing', 'Min Asst', ''),
(5, 'PRED_10', '1000005', 'Bathing/shower', 'Supervision', ''),
(6, 'PRED_10', '1000005', 'Toilet transfer', 'Mod Asst', ''),
(7, 'PRED_10', '1000005', 'Toileting skills', 'Supervision', ''),
(8, 'PRED_10', '1000005', 'Functional mobility', 'Mod Asst', ''),
(9, 'PRED_10', '1000005', 'Personal device Care', 'Dependent', ''),
(10, 'PRED_10', '1000005', 'Other', 'other here', ''),
(11, 'PRED_10', '1000006', 'Self-feeding', 'Min Asst', 'comment'),
(12, 'PRED_10', '1000006', 'Hygiene/grooming', 'DeMax Asst', 'aasxdc'),
(13, 'PRED_10', '1000006', 'Upper body(UB) bathing', 'Mod Asst', 'ghjbn'),
(14, 'PRED_10', '1000006', 'Upper Body dressing', 'DeMax Asst', 'yuj'),
(15, 'PRED_10', '1000006', 'Bathing/shower', 'Mod Asst', 'ijh'),
(16, 'PRED_10', '1000006', 'Toilet transfer', 'Mod Asst', 'asxc'),
(17, 'PRED_10', '1000006', 'Toileting skills', 'Dependent', 'qwed'),
(18, 'PRED_10', '1000006', 'Functional mobility', 'Dependent', 'azxsmnjh'),
(19, 'PRED_10', '1000006', 'Personal device Care', 'Min Asst', 'vbgtyh'),
(20, 'PRED_10', '1000006', 'Other', '', 'oplk'),
(21, 'PRED_10', '1000007', 'Self-feeding', 'Mod Asst', 'ooo'),
(22, 'PRED_10', '1000007', 'Hygiene/grooming', 'Min Asst', 'sajnds'),
(23, 'PRED_10', '1000007', 'Upper body(UB) bathing', 'independent', 'sdaeqd'),
(24, 'PRED_10', '1000007', 'Upper Body dressing', 'Supervision', 'sad dasa'),
(25, 'PRED_10', '1000007', 'Bathing/shower', 'DeMax Asst', 'sadas'),
(26, 'PRED_10', '1000007', 'Toilet transfer', 'Mod Asst', 'asd'),
(27, 'PRED_10', '1000007', 'Toileting skills', 'Dependent', 'scas'),
(28, 'PRED_10', '1000007', 'Functional mobility', 'Dependent', 'sdc'),
(29, 'PRED_10', '1000007', 'Personal device Care', 'DeMax Asst', ''),
(30, 'PRED_10', '1000007', 'Other', '', ''),
(31, 'PRED_11', '1000008', 'Self-feeding', 'DeMax Asst', 'gvyuhvjb'),
(32, 'PRED_11', '1000008', 'Hygiene/grooming', 'independent', 'dxfgxhh'),
(33, 'PRED_11', '1000008', 'Upper body(UB) bathing', 'DeMax Asst', 'jhbuhbuhy'),
(34, 'PRED_11', '1000008', 'Upper Body dressing', 'Mod Asst', 'weszrdfx'),
(35, 'PRED_11', '1000008', 'Bathing/shower', 'Supervision', 'hgvjbm hgj'),
(36, 'PRED_11', '1000008', 'Toilet transfer', 'DeMax Asst', 'szdfx'),
(37, 'PRED_11', '1000008', 'Toileting skills', 'Dependent', 'ytgh'),
(38, 'PRED_11', '1000008', 'Functional mobility', 'Dependent', 'ujmyhn'),
(39, 'PRED_11', '1000008', 'Personal device Care', 'Dependent', 'oiujkmnh'),
(40, 'PRED_11', '1000008', 'Other', 'vghgh', 'ecftghv'),
(41, 'PRED_11', '1000011', 'Self-feeding', 'Min Asst', ''),
(42, 'PRED_11', '1000011', 'Hygiene/grooming', 'Dependent', ''),
(43, 'PRED_11', '1000011', 'Upper body(UB) bathing', 'Dependent', ''),
(44, 'PRED_11', '1000011', 'Upper Body dressing', 'Dependent', ''),
(45, 'PRED_11', '1000011', 'Bathing/shower', 'Dependent', ''),
(46, 'PRED_11', '1000011', 'Toilet transfer', 'Dependent', ''),
(47, 'PRED_11', '1000011', 'Toileting skills', 'Dependent', ''),
(48, 'PRED_11', '1000011', 'Functional mobility', 'Dependent', ''),
(49, 'PRED_11', '1000011', 'Personal device Care', 'Dependent', ''),
(50, 'PRED_11', '1000011', 'Other', '', ''),
(51, 'PRED_10', '1000012', 'Self-feeding', 'Mod Asst', ''),
(52, 'PRED_10', '1000012', 'Hygiene/grooming', 'Min Asst', 'bnh'),
(53, 'PRED_10', '1000012', 'Upper body(UB) bathing', 'Min Asst', 'jjjb'),
(54, 'PRED_10', '1000012', 'Upper Body dressing', 'Mod Asst', ''),
(55, 'PRED_10', '1000012', 'Bathing/shower', 'Min Asst', 'hvbj'),
(56, 'PRED_10', '1000012', 'Toilet transfer', 'Min Asst', ''),
(57, 'PRED_10', '1000012', 'Toileting skills', 'Mod Asst', ''),
(58, 'PRED_10', '1000012', 'Functional mobility', 'Dependent', ''),
(59, 'PRED_10', '1000012', 'Personal device Care', 'Dependent', ''),
(60, 'PRED_10', '1000012', 'Other', '', ''),
(61, 'PRED_16', '1000015', 'Self-feeding', 'Dependent', ''),
(62, 'PRED_16', '1000015', 'Hygiene/grooming', 'Dependent', ''),
(63, 'PRED_16', '1000015', 'Upper body(UB) bathing', 'Dependent', ''),
(64, 'PRED_16', '1000015', 'Upper Body dressing', 'Dependent', ''),
(65, 'PRED_16', '1000015', 'Bathing/shower', 'Dependent', ''),
(66, 'PRED_16', '1000015', 'Toilet transfer', 'Dependent', ''),
(67, 'PRED_16', '1000015', 'Toileting skills', 'Dependent', ''),
(68, 'PRED_16', '1000015', 'Functional mobility', 'Dependent', ''),
(69, 'PRED_16', '1000015', 'Personal device Care', 'Dependent', ''),
(70, 'PRED_16', '1000015', 'Other', '', ''),
(71, 'PRED_16', '1000016', 'Self-feeding', 'Dependent', ''),
(72, 'PRED_16', '1000016', 'Hygiene/grooming', 'Dependent', ''),
(73, 'PRED_16', '1000016', 'Upper body(UB) bathing', 'Dependent', ''),
(74, 'PRED_16', '1000016', 'Upper Body dressing', 'Dependent', ''),
(75, 'PRED_16', '1000016', 'Bathing/shower', 'Dependent', ''),
(76, 'PRED_16', '1000016', 'Toilet transfer', 'Dependent', ''),
(77, 'PRED_16', '1000016', 'Toileting skills', 'Dependent', ''),
(78, 'PRED_16', '1000016', 'Functional mobility', 'Dependent', ''),
(79, 'PRED_16', '1000016', 'Personal device Care', 'Dependent', ''),
(80, 'PRED_16', '1000016', 'Other', '', ''),
(81, 'PRED_16', '1000020', 'Self-feeding', 'Dependent', ''),
(82, 'PRED_16', '1000020', 'Hygiene/grooming', 'Dependent', ''),
(83, 'PRED_16', '1000020', 'Upper body(UB) bathing', 'Mod Asst', ''),
(84, 'PRED_16', '1000020', 'Upper Body dressing', 'Supervision', ''),
(85, 'PRED_16', '1000020', 'Bathing/shower', 'Modified independent', ''),
(86, 'PRED_16', '1000020', 'Toilet transfer', 'Dependent', ''),
(87, 'PRED_16', '1000020', 'Toileting skills', 'Dependent', ''),
(88, 'PRED_16', '1000020', 'Functional mobility', 'Dependent', ''),
(89, 'PRED_16', '1000020', 'Personal device Care', 'Supervision', ''),
(90, 'PRED_16', '1000020', 'Lower body dressing', 'Dependent', ''),
(91, 'PRED_16', '1000020', 'Other', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ADL`
--

CREATE TABLE `ADL` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ADL`
--

INSERT INTO `ADL` (`id`, `num`, `rec`, `issue`, `answer`, `comment`) VALUES
(1, 'PRED_10', '1000005', 'Kitchen survival skills', 'DeMax Asst', 'kitchen survival skills'),
(2, 'PRED_10', '1000005', 'Meal preparation', 'Supervision', 'sss'),
(3, 'PRED_10', '1000005', 'Shopping', 'DeMax Asst', ''),
(4, 'PRED_10', '1000005', 'Laundry', 'Min Asst', ''),
(5, 'PRED_10', '1000005', 'Light housekeeping', 'Dependent', 'Adfrgtgtg'),
(6, 'PRED_10', '1000005', 'Community mobility', 'DeMax Asst', 'Post'),
(7, 'PRED_10', '1000005', 'Financial mgmt', 'Mod Asst', ''),
(8, 'PRED_10', '1000005', 'Care of others', 'Supervision', ''),
(9, 'PRED_10', '1000005', 'Religious observance', 'Dependent', ''),
(10, 'PRED_10', '1000005', 'Other', 'other here', ''),
(11, 'PRED_10', '1000005', 'Kitchen survival skills', 'DeMax Asst', 'kitchen survival skills'),
(12, 'PRED_10', '1000005', 'Meal preparation', 'Supervision', 'sss'),
(13, 'PRED_10', '1000005', 'Shopping', 'DeMax Asst', ''),
(14, 'PRED_10', '1000005', 'Laundry', 'Min Asst', ''),
(15, 'PRED_10', '1000005', 'Light housekeeping', 'Dependent', 'Adfrgtgtg'),
(16, 'PRED_10', '1000005', 'Community mobility', 'DeMax Asst', 'Post'),
(17, 'PRED_10', '1000005', 'Financial mgmt', 'Mod Asst', ''),
(18, 'PRED_10', '1000005', 'Care of others', 'Supervision', ''),
(19, 'PRED_10', '1000005', 'Religious observance', 'Dependent', ''),
(20, 'PRED_10', '1000005', 'Other', 'other here', ''),
(21, 'PRED_10', '1000006', 'Kitchen survival skills', 'Mod Asst', 'kmnhj'),
(22, 'PRED_10', '1000006', 'Meal preparation', 'Mod Asst', 'erfd'),
(23, 'PRED_10', '1000006', 'Shopping', 'Mod Asst', 'ujxsafvgb'),
(24, 'PRED_10', '1000006', 'Laundry', 'Min Asst', ''),
(25, 'PRED_10', '1000006', 'Light housekeeping', 'independent', ''),
(26, 'PRED_10', '1000006', 'Community mobility', 'Dependent', 'gajsjk'),
(27, 'PRED_10', '1000006', 'Financial mgmt', 'Supervision', 'olki'),
(28, 'PRED_10', '1000006', 'Care of others', 'Min Asst', 'tyhfr'),
(29, 'PRED_10', '1000006', 'Religious observance', 'Dependent', 'refd'),
(30, 'PRED_10', '1000006', 'Other', '', ''),
(31, 'PRED_10', '1000007', 'Kitchen survival skills', 'DeMax Asst', 'comment'),
(32, 'PRED_10', '1000007', 'Meal preparation', 'Mod Asst', 'vbgn'),
(33, 'PRED_10', '1000007', 'Shopping', 'Dependent', ''),
(34, 'PRED_10', '1000007', 'Laundry', 'Min Asst', 'uijuj'),
(35, 'PRED_10', '1000007', 'Light housekeeping', 'independent', ''),
(36, 'PRED_10', '1000007', 'Community mobility', 'Supervision', 'comment'),
(37, 'PRED_10', '1000007', 'Financial mgmt', 'Dependent', 'yuwqsdsa'),
(38, 'PRED_10', '1000007', 'Care of others', 'Dependent', 'ased'),
(39, 'PRED_10', '1000007', 'Religious observance', 'Min Asst', 'mkl'),
(40, 'PRED_10', '1000007', 'Other', '', ''),
(41, 'PRED_11', '1000008', 'Kitchen survival skills', 'Mod Asst', ''),
(42, 'PRED_11', '1000008', 'Meal preparation', 'Min Asst', ''),
(43, 'PRED_11', '1000008', 'Shopping', 'Dependent', ''),
(44, 'PRED_11', '1000008', 'Laundry', 'Dependent', ''),
(45, 'PRED_11', '1000008', 'Light housekeeping', 'Dependent', ''),
(46, 'PRED_11', '1000008', 'Community mobility', 'Dependent', ''),
(47, 'PRED_11', '1000008', 'Financial mgmt', 'Dependent', ''),
(48, 'PRED_11', '1000008', 'Care of others', 'Dependent', ''),
(49, 'PRED_11', '1000008', 'Religious observance', 'Dependent', ''),
(50, 'PRED_11', '1000008', 'Other', '', ''),
(51, 'PRED_11', '1000011', 'Kitchen survival skills', 'Dependent', ''),
(52, 'PRED_11', '1000011', 'Meal preparation', 'Dependent', ''),
(53, 'PRED_11', '1000011', 'Shopping', 'Dependent', ''),
(54, 'PRED_11', '1000011', 'Laundry', 'Dependent', ''),
(55, 'PRED_11', '1000011', 'Light housekeeping', 'Dependent', ''),
(56, 'PRED_11', '1000011', 'Community mobility', 'Dependent', ''),
(57, 'PRED_11', '1000011', 'Financial mgmt', 'Dependent', ''),
(58, 'PRED_11', '1000011', 'Care of others', 'Dependent', ''),
(59, 'PRED_11', '1000011', 'Religious observance', 'Dependent', ''),
(60, 'PRED_11', '1000011', 'Other', '', ''),
(61, 'PRED_10', '1000012', 'Kitchen survival skills', 'Mod Asst', ''),
(62, 'PRED_10', '1000012', 'Meal preparation', 'Mod Asst', ''),
(63, 'PRED_10', '1000012', 'Shopping', 'Dependent', ''),
(64, 'PRED_10', '1000012', 'Laundry', 'Dependent', ''),
(65, 'PRED_10', '1000012', 'Light housekeeping', 'Dependent', ''),
(66, 'PRED_10', '1000012', 'Community mobility', 'Dependent', ''),
(67, 'PRED_10', '1000012', 'Financial mgmt', 'Dependent', ''),
(68, 'PRED_10', '1000012', 'Care of others', 'Dependent', 'ewad'),
(69, 'PRED_10', '1000012', 'Religious observance', 'Mod Asst', 'eff'),
(70, 'PRED_10', '1000012', 'Other', '', 'wrgf'),
(71, 'PRED_16', '1000015', 'Kitchen survival skills', 'Dependent', ''),
(72, 'PRED_16', '1000015', 'Meal preparation', 'Dependent', ''),
(73, 'PRED_16', '1000015', 'Shopping', 'Dependent', ''),
(74, 'PRED_16', '1000015', 'Laundry', 'Dependent', ''),
(75, 'PRED_16', '1000015', 'Light housekeeping', 'Dependent', ''),
(76, 'PRED_16', '1000015', 'Community mobility', 'Dependent', ''),
(77, 'PRED_16', '1000015', 'Financial mgmt', 'Dependent', ''),
(78, 'PRED_16', '1000015', 'Care of others', 'Dependent', ''),
(79, 'PRED_16', '1000015', 'Religious observance', 'Dependent', ''),
(80, 'PRED_16', '1000015', 'Other', '', ''),
(81, 'PRED_16', '1000016', 'Kitchen survival skills', 'Dependent', ''),
(82, 'PRED_16', '1000016', 'Meal preparation', 'Dependent', ''),
(83, 'PRED_16', '1000016', 'Shopping', 'Dependent', ''),
(84, 'PRED_16', '1000016', 'Laundry', 'Dependent', ''),
(85, 'PRED_16', '1000016', 'Light housekeeping', 'Dependent', ''),
(86, 'PRED_16', '1000016', 'Community mobility', 'Dependent', ''),
(87, 'PRED_16', '1000016', 'Financial mgmt', 'Dependent', ''),
(88, 'PRED_16', '1000016', 'Care of others', 'Dependent', ''),
(89, 'PRED_16', '1000016', 'Religious observance', 'Dependent', ''),
(90, 'PRED_16', '1000016', 'Other', '', ''),
(91, 'PRED_16', '1000020', 'Kitchen survival skills', 'Dependent', ''),
(92, 'PRED_16', '1000020', 'Meal preparation', 'Dependent', ''),
(93, 'PRED_16', '1000020', 'Shopping', 'Dependent', ''),
(94, 'PRED_16', '1000020', 'Laundry', 'Dependent', ''),
(95, 'PRED_16', '1000020', 'Light housekeeping', 'Dependent', ''),
(96, 'PRED_16', '1000020', 'Community mobility', 'Dependent', ''),
(97, 'PRED_16', '1000020', 'Financial mgmt', 'Dependent', ''),
(98, 'PRED_16', '1000020', 'Care of others', 'Dependent', ''),
(99, 'PRED_16', '1000020', 'Religious observance', 'Dependent', ''),
(100, 'PRED_16', '1000020', 'Other', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `assesment`
--

CREATE TABLE `assesment` (
  `id` int(255) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `DOB` varchar(2000) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `treatment` varchar(2000) NOT NULL,
  `history` varchar(2000) NOT NULL,
  `medication` varchar(2000) NOT NULL,
  `dt` varchar(10) NOT NULL,
  `occupational` varchar(2000) NOT NULL,
  `diagnosis` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assesment`
--

INSERT INTO `assesment` (`id`, `name`, `DOB`, `num`, `rec`, `treatment`, `history`, `medication`, `dt`, `occupational`, `diagnosis`) VALUES
(1, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000005', '2018-11-03', 'Past medical ', 'medications goes here', '2018-11-17', 'occupational profile goes', ''),
(2, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000006', '2018-11-10', 'medical history', 'medications goes here', '2018-11-08', 'occupational profile', ''),
(3, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000007', '2018-11-11', 'Past medical surgical hx', 'medications goes here', '2018-11-03', 'occupational profile', ''),
(4, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '1000008', '2018-11-08', 'lkiolk', 'asder', '2018-11-22', 'mkiol', ''),
(5, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '1000011', '2018-11-09', 'jknj', 'jjj', '2018-11-16', 'njk', ''),
(6, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000012', '2018-11-09', 'wdas', 'medications goes here', '2018-11-15', 'occupational profile', ''),
(7, 'Riyah Ololade', '1212-12-12', 'PRED_16', '1000015', '2018-11-09', 'gh', 'medications goes here', '2018-11-10', 'gfeg', ''),
(8, 'Riyah Ololade', '1212-12-12', 'PRED_16', '1000016', '2018-11-09', 'fds', 'efd', '2018-11-08', 'sda', ''),
(9, 'Riyah Ololade', '1212-12-12', 'PRED_16', '1000020', '2018-12-08', 'past medical history here', 'medications goes here', '2018-12-22', 'occupational profile here', 'diagnosis here');

-- --------------------------------------------------------

--
-- Table structure for table `functional`
--

CREATE TABLE `functional` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `tp` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `functional`
--

INSERT INTO `functional` (`id`, `num`, `rec`, `issue`, `answer`, `comment`, `tp`) VALUES
(1, 'PRED_10', '1000006', '(b) Emotional regulation (behavior, coping, etc)', 'not impared', '', 'Functional Cognition'),
(2, 'PRED_10', '1000006', 'Short term Memory', 'impared', 'iuhjiu', 'Functional Cognition'),
(3, 'PRED_10', '1000006', 'Long term Memory', 'impared', 'ijio42', 'Visual motor/perception'),
(4, 'PRED_10', '1000006', 'Attention', 'not impared', 'w;lqkreowq', 'Memory'),
(5, 'PRED_10', '1000006', 'Problem Solving', 'not impared', '', 'Memory'),
(6, 'PRED_10', '1000006', 'Safety awareness', 'impared', '', 'Memory'),
(7, 'PRED_10', '1000006', 'Vision/hearing', 'impared', 'sadfe', 'Memory'),
(8, 'PRED_10', '1000006', 'Speech', 'not impared', '', 'Memory'),
(9, 'PRED_10', '1000006', 'Speech', '4', '', 'Memory'),
(10, 'PRED_10', '1000006', 'RUE', 'limited', '', 'Memory'),
(11, 'PRED_10', '1000006', 'LUE', 'impared', 'csfe', 'Range of motion'),
(12, 'PRED_10', '1000006', 'RUE', '1', 'kmwamdwq', 'Range of motion'),
(13, 'PRED_10', '1000006', 'LUE', '2+', '', 'Strength'),
(14, 'PRED_10', '1000006', 'RUE', 'intact', '', 'Strength'),
(15, 'PRED_10', '1000006', 'LUE', 'impared', '', 'Sensation'),
(16, 'PRED_10', '1000006', 'RUE', 'increased', '', 'Sensation'),
(17, 'PRED_10', '1000006', 'LUE', 'reduced', 'kmlok', 'Muscle Tone'),
(18, 'PRED_10', '1000006', 'RUE', 'Poor', '', 'Muscle Tone'),
(19, 'PRED_10', '1000006', 'LUE', 'Fair', '', 'Fine coordination'),
(20, 'PRED_10', '1000006', 'RUE', 'Good', 'adw', 'Fine coordination'),
(21, 'PRED_10', '1000006', 'LUE', 'Poor', 'sad', 'Selective muscle movement and control'),
(22, 'PRED_10', '1000006', 'Coordination/bilateral integration', 'Poor', '', 'Selective muscle movement and control'),
(23, 'PRED_10', '1000006', 'LE Function', 'Fair', '', 'Selective muscle movement and control'),
(24, 'PRED_10', '1000007', '(b) Emotional regulation (behavior, coping, etc)', 'not impared', 'emotional regulation', 'Functional Cognition'),
(25, 'PRED_10', '1000007', 'Short term Memory', 'not impared', 'short memory', 'Functional Cognition'),
(26, 'PRED_10', '1000007', 'Long term Memory', 'not impared', 'long term memory', 'Visual motor/perception'),
(27, 'PRED_10', '1000007', 'Attention', 'impared', 'attention here', 'Memory'),
(28, 'PRED_10', '1000007', 'Problem Solving', 'impared', 'problem solving', 'Memory'),
(29, 'PRED_10', '1000007', 'Safety awareness', 'not impared', 'awareness ', 'Memory'),
(30, 'PRED_10', '1000007', 'Vision/hearing', 'impared', 'vision comment', 'Memory'),
(31, 'PRED_10', '1000007', 'Speech', 'not impared', 'speech comment', 'Memory'),
(32, 'PRED_10', '1000007', 'Speech', '5', 'verbal rating', 'Memory'),
(33, 'PRED_10', '1000007', 'RUE', 'limited', '', 'Memory'),
(34, 'PRED_10', '1000007', 'LUE', 'impared', '', 'Range of motion'),
(35, 'PRED_10', '1000007', 'RUE', '3', 'rue', 'Range of motion'),
(36, 'PRED_10', '1000007', 'LUE', '2+', '', 'Strength'),
(37, 'PRED_10', '1000007', 'RUE', 'impared', '', 'Strength'),
(38, 'PRED_10', '1000007', 'LUE', 'intact', '', 'Sensation'),
(39, 'PRED_10', '1000007', 'RUE', 'normal', 'hh', 'Sensation'),
(40, 'PRED_10', '1000007', 'LUE', 'increased', '', 'Muscle Tone'),
(41, 'PRED_10', '1000007', 'RUE', 'Poor', '', 'Muscle Tone'),
(42, 'PRED_10', '1000007', 'LUE', 'Good', 'dsljnfds', 'Fine coordination'),
(43, 'PRED_10', '1000007', 'RUE', 'Poor', 'sadfsv', 'Fine coordination'),
(44, 'PRED_10', '1000007', 'LUE', 'Fair', '', 'Selective muscle movement and control'),
(45, 'PRED_10', '1000007', 'Coordination/bilateral integration', 'Poor', 'ascvb sdf', 'Selective muscle movement and control'),
(46, 'PRED_10', '1000007', 'LE Function', 'Good', '', 'Selective muscle movement and control'),
(47, 'PRED_11', '1000008', '(b) Emotional regulation (behavior, coping, etc)', 'not impared', '', 'Functional Cognition'),
(48, 'PRED_11', '1000008', 'Short term Memory', 'impared', '', 'Functional Cognition'),
(49, 'PRED_11', '1000008', 'Long term Memory', 'impared', '', 'Visual motor/perception'),
(50, 'PRED_11', '1000008', 'Attention', 'impared', '', 'Memory'),
(51, 'PRED_11', '1000008', 'Problem Solving', 'impared', '', 'Memory'),
(52, 'PRED_11', '1000008', 'Safety awareness', 'impared', '', 'Memory'),
(53, 'PRED_11', '1000008', 'Vision/hearing', 'not impared', '', 'Memory'),
(54, 'PRED_11', '1000008', 'Speech', 'impared', '', 'Memory'),
(55, 'PRED_11', '1000008', 'Speech', '7', '', 'Memory'),
(56, 'PRED_11', '1000008', 'RUE', 'full', '', 'Memory'),
(57, 'PRED_11', '1000008', 'LUE', 'impared', '', 'Range of motion'),
(58, 'PRED_11', '1000008', 'RUE', '3+', '', 'Range of motion'),
(59, 'PRED_11', '1000008', 'LUE', '1', '', 'Strength'),
(60, 'PRED_11', '1000008', 'RUE', 'impared', '', 'Strength'),
(61, 'PRED_11', '1000008', 'LUE', 'intact', '', 'Sensation'),
(62, 'PRED_11', '1000008', 'RUE', 'normal', '', 'Sensation'),
(63, 'PRED_11', '1000008', 'LUE', 'normal', '', 'Muscle Tone'),
(64, 'PRED_11', '1000008', 'RUE', 'Poor', '', 'Muscle Tone'),
(65, 'PRED_11', '1000008', 'LUE', 'Poor', '', 'Fine coordination'),
(66, 'PRED_11', '1000008', 'RUE', 'Poor', '', 'Fine coordination'),
(67, 'PRED_11', '1000008', 'LUE', 'Poor', '', 'Selective muscle movement and control'),
(68, 'PRED_11', '1000008', 'Coordination/bilateral integration', 'Fair', '', 'Selective muscle movement and control'),
(69, 'PRED_11', '1000008', 'LE Function', 'Good', '', 'Selective muscle movement and control'),
(70, 'PRED_11', '1000011', '(b) Emotional regulation (behavior, coping, etc)', 'impared', '', 'Functional Cognition'),
(71, 'PRED_11', '1000011', 'Short term Memory', 'impared', '', 'Functional Cognition'),
(72, 'PRED_11', '1000011', 'Long term Memory', 'impared', '', 'Visual motor/perception'),
(73, 'PRED_11', '1000011', 'Attention', 'impared', '', 'Memory'),
(74, 'PRED_11', '1000011', 'Problem Solving', 'impared', '', 'Memory'),
(75, 'PRED_11', '1000011', 'Safety awareness', 'impared', '', 'Memory'),
(76, 'PRED_11', '1000011', 'Vision/hearing', 'impared', '', 'Memory'),
(77, 'PRED_11', '1000011', 'Speech', 'impared', '', 'Memory'),
(78, 'PRED_11', '1000011', 'Speech', '0', '', 'Memory'),
(79, 'PRED_11', '1000011', 'RUE', 'full', '', 'Memory'),
(80, 'PRED_11', '1000011', 'LUE', 'impared', '', 'Range of motion'),
(81, 'PRED_11', '1000011', 'RUE', '1', '', 'Range of motion'),
(82, 'PRED_11', '1000011', 'LUE', '1', '', 'Strength'),
(83, 'PRED_11', '1000011', 'RUE', 'intact', '', 'Strength'),
(84, 'PRED_11', '1000011', 'LUE', 'intact', '', 'Sensation'),
(85, 'PRED_11', '1000011', 'RUE', 'normal', '', 'Sensation'),
(86, 'PRED_11', '1000011', 'LUE', 'normal', '', 'Muscle Tone'),
(87, 'PRED_11', '1000011', 'RUE', 'Poor', '', 'Muscle Tone'),
(88, 'PRED_11', '1000011', 'LUE', 'Poor', '', 'Fine coordination'),
(89, 'PRED_11', '1000011', 'RUE', 'Poor', '', 'Fine coordination'),
(90, 'PRED_11', '1000011', 'LUE', 'Poor', '', 'Selective muscle movement and control'),
(91, 'PRED_11', '1000011', 'Coordination/bilateral integration', 'Poor', '', 'Selective muscle movement and control'),
(92, 'PRED_11', '1000011', 'LE Function', 'Poor', '', 'Selective muscle movement and control'),
(93, 'PRED_10', '1000012', '(b) Emotional regulation (behavior, coping, etc)', 'not impared', '', 'Functional Cognition'),
(94, 'PRED_10', '1000012', 'Short term Memory', 'impared', '', 'Functional Cognition'),
(95, 'PRED_10', '1000012', 'Long term Memory', 'impared', '', 'Visual motor/perception'),
(96, 'PRED_10', '1000012', 'Attention', 'impared', '', 'Memory'),
(97, 'PRED_10', '1000012', 'Problem Solving', 'impared', '', 'Memory'),
(98, 'PRED_10', '1000012', 'Safety awareness', 'not impared', '', 'Memory'),
(99, 'PRED_10', '1000012', 'Vision/hearing', 'impared', '', 'Memory'),
(100, 'PRED_10', '1000012', 'Speech', 'impared', '', 'Memory'),
(101, 'PRED_10', '1000012', 'Speech', '4', 'ere', 'Memory'),
(102, 'PRED_10', '1000012', 'RUE', 'full', '', 'Memory'),
(103, 'PRED_10', '1000012', 'LUE', 'impared', '', 'Range of motion'),
(104, 'PRED_10', '1000012', 'RUE', '2+', '', 'Range of motion'),
(105, 'PRED_10', '1000012', 'LUE', '2+', '', 'Strength'),
(106, 'PRED_10', '1000012', 'RUE', 'impared', '', 'Strength'),
(107, 'PRED_10', '1000012', 'LUE', 'intact', '', 'Sensation'),
(108, 'PRED_10', '1000012', 'RUE', 'increased', '', 'Sensation'),
(109, 'PRED_10', '1000012', 'LUE', 'normal', '', 'Muscle Tone'),
(110, 'PRED_10', '1000012', 'RUE', 'Fair', '', 'Muscle Tone'),
(111, 'PRED_10', '1000012', 'LUE', 'Poor', '', 'Fine coordination'),
(112, 'PRED_10', '1000012', 'RUE', 'Poor', '', 'Fine coordination'),
(113, 'PRED_10', '1000012', 'LUE', 'Fair', '', 'Selective muscle movement and control'),
(114, 'PRED_10', '1000012', 'Coordination/bilateral integration', 'Poor', '', 'Selective muscle movement and control'),
(115, 'PRED_10', '1000012', 'LE Function', 'Poor', '', 'Selective muscle movement and control'),
(116, 'PRED_16', '1000015', '(b) Emotional regulation (behavior, coping, etc)', 'impared', '', 'Functional Cognition'),
(117, 'PRED_16', '1000015', 'Short term Memory', 'impared', '', 'Functional Cognition'),
(118, 'PRED_16', '1000015', 'Long term Memory', 'impared', '', 'Visual motor/perception'),
(119, 'PRED_16', '1000015', 'Attention', 'impared', '', 'Memory'),
(120, 'PRED_16', '1000015', 'Problem Solving', 'impared', '', 'Memory'),
(121, 'PRED_16', '1000015', 'Safety awareness', 'impared', '', 'Memory'),
(122, 'PRED_16', '1000015', 'Vision/hearing', 'impared', '', 'Memory'),
(123, 'PRED_16', '1000015', 'Speech', 'impared', '', 'Memory'),
(124, 'PRED_16', '1000015', 'Speech', '0', '', 'Memory'),
(125, 'PRED_16', '1000015', 'RUE', 'full', '', 'Memory'),
(126, 'PRED_16', '1000015', 'LUE', 'impared', '', 'Range of motion'),
(127, 'PRED_16', '1000015', 'RUE', '1', '', 'Range of motion'),
(128, 'PRED_16', '1000015', 'LUE', '1', '', 'Strength'),
(129, 'PRED_16', '1000015', 'RUE', 'intact', '', 'Strength'),
(130, 'PRED_16', '1000015', 'LUE', 'intact', '', 'Sensation'),
(131, 'PRED_16', '1000015', 'RUE', 'normal', '', 'Sensation'),
(132, 'PRED_16', '1000015', 'LUE', 'normal', '', 'Muscle Tone'),
(133, 'PRED_16', '1000015', 'RUE', 'Poor', '', 'Muscle Tone'),
(134, 'PRED_16', '1000015', 'LUE', 'Poor', '', 'Fine coordination'),
(135, 'PRED_16', '1000015', 'RUE', 'Poor', '', 'Fine coordination'),
(136, 'PRED_16', '1000015', 'LUE', 'Poor', '', 'Selective muscle movement and control'),
(137, 'PRED_16', '1000015', 'Coordination/bilateral integration', 'Poor', '', 'Selective muscle movement and control'),
(138, 'PRED_16', '1000015', 'LE Function', 'Poor', '', 'Selective muscle movement and control'),
(139, 'PRED_16', '1000016', '(b) Emotional regulation (behavior, coping, etc)', 'impared', '', 'Functional Cognition'),
(140, 'PRED_16', '1000016', 'Short term Memory', 'impared', '', 'Functional Cognition'),
(141, 'PRED_16', '1000016', 'Long term Memory', 'impared', '', 'Visual motor/perception'),
(142, 'PRED_16', '1000016', 'Attention', 'impared', '', 'Memory'),
(143, 'PRED_16', '1000016', 'Problem Solving', 'impared', '', 'Memory'),
(144, 'PRED_16', '1000016', 'Safety awareness', 'impared', '', 'Memory'),
(145, 'PRED_16', '1000016', 'Vision/hearing', 'impared', '', 'Memory'),
(146, 'PRED_16', '1000016', 'Speech', 'impared', '', 'Memory'),
(147, 'PRED_16', '1000016', 'Speech', '0', '', 'Memory'),
(148, 'PRED_16', '1000016', 'RUE', 'full', '', 'Memory'),
(149, 'PRED_16', '1000016', 'LUE', 'impared', '', 'Range of motion'),
(150, 'PRED_16', '1000016', 'RUE', '1', '', 'Range of motion'),
(151, 'PRED_16', '1000016', 'LUE', '1', '', 'Strength'),
(152, 'PRED_16', '1000016', 'RUE', 'intact', '', 'Strength'),
(153, 'PRED_16', '1000016', 'LUE', 'intact', '', 'Sensation'),
(154, 'PRED_16', '1000016', 'RUE', 'normal', '', 'Sensation'),
(155, 'PRED_16', '1000016', 'LUE', 'normal', '', 'Muscle Tone'),
(156, 'PRED_16', '1000016', 'RUE', 'Poor', '', 'Muscle Tone'),
(157, 'PRED_16', '1000016', 'LUE', 'Poor', '', 'Fine coordination'),
(158, 'PRED_16', '1000016', 'RUE', 'Poor', '', 'Fine coordination'),
(159, 'PRED_16', '1000016', 'LUE', 'Poor', '', 'Selective muscle movement and control'),
(160, 'PRED_16', '1000016', 'Coordination/bilateral integration', 'Poor', '', 'Selective muscle movement and control'),
(161, 'PRED_16', '1000016', 'LE Function', 'Poor', '', 'Selective muscle movement and control'),
(162, 'PRED_16', '1000020', '(b) Emotional regulation (behavior, coping, etc)', 'impared', '', 'Functional Cognition'),
(163, 'PRED_16', '1000020', 'Visual motor/perception', 'impared', '', 'Functional Cognition'),
(164, 'PRED_16', '1000020', 'Short term Memory', 'impared', '', 'Visual motor/perception'),
(165, 'PRED_16', '1000020', 'Long term Memory', 'impared', '', 'Memory'),
(166, 'PRED_16', '1000020', 'Attention', 'impared', '', 'Visual motor/perception'),
(167, 'PRED_16', '1000020', 'Problem Solving', 'impared', '', 'Memory'),
(168, 'PRED_16', '1000020', 'Safety awareness', 'impared', '', 'Memory'),
(169, 'PRED_16', '1000020', 'Vision/hearing', 'impared', '', 'Memory'),
(170, 'PRED_16', '1000020', 'Speech', 'impared', '', 'Memory'),
(171, 'PRED_16', '1000020', 'Pain 1', '0', '', 'Memory'),
(172, 'PRED_16', '1000020', 'Pain 2', '0', '', 'Memory'),
(173, 'PRED_16', '1000020', 'Pain 3', '0', '', 'Memory'),
(174, 'PRED_16', '1000020', 'Pain 4', '0', '', 'Memory'),
(175, 'PRED_16', '1000020', 'PAIN 5', '0', '', 'Memory'),
(176, 'PRED_16', '1000020', 'RUE', 'full', '', 'Memory'),
(177, 'PRED_16', '1000020', 'LUE', 'impared', '', 'Memory'),
(178, 'PRED_16', '1000020', 'RUE', '0', '', 'Range of motion'),
(179, 'PRED_16', '1000020', 'LUE', '0', '', 'Range of motion'),
(180, 'PRED_16', '1000020', 'RUE', 'intact', '', 'Strength'),
(181, 'PRED_16', '1000020', 'LUE', 'intact', '', 'Strength'),
(182, 'PRED_16', '1000020', 'RUE', 'normal', '', 'Sensation'),
(183, 'PRED_16', '1000020', 'LUE', 'normal', '', 'Sensation'),
(184, 'PRED_16', '1000020', 'RUE', 'Poor', '', 'Muscle Tone'),
(185, 'PRED_16', '1000020', 'LUE', 'Poor', '', 'Muscle Tone'),
(186, 'PRED_16', '1000020', 'RUE', 'Poor', '', 'Fine coordination'),
(187, 'PRED_16', '1000020', 'LUE', 'Poor', '', 'Fine coordination'),
(188, 'PRED_16', '1000020', 'Coordination/bilateral integration', 'Poor', '', 'Selective muscle movement and control'),
(189, 'PRED_16', '1000020', 'LE Function', 'Poor', '', 'Selective muscle movement and control');

-- --------------------------------------------------------

--
-- Table structure for table `leisure`
--

CREATE TABLE `leisure` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leisure`
--

INSERT INTO `leisure` (`id`, `num`, `rec`, `issue`, `answer`, `comment`) VALUES
(1, 'PRED_10', '1000006', 'Education (formal and informal)', 'not impared', ''),
(2, 'PRED_10', '1000006', 'Work Employment/Volunteer', 'not impared', ''),
(3, 'PRED_10', '1000006', 'Leisure participation', 'impared', ''),
(4, 'PRED_10', '1000006', 'Social participation', 'not impared', ''),
(5, 'PRED_10', '1000006', 'Education (formal and informal)', 'impared', 'education impaired comment'),
(6, 'PRED_10', '1000006', 'Work Employment/Volunteer', 'not impared', 'work comment'),
(7, 'PRED_10', '1000006', 'Leisure participation', 'impared', 'leisure comment'),
(8, 'PRED_10', '1000006', 'Social participation', 'not impared', 'social comment'),
(9, 'PRED_10', '1000007', 'Education (formal and informal)', 'not impared', 'education comment ghere'),
(10, 'PRED_10', '1000007', 'Work Employment/Volunteer', 'not impared', 'work comment here'),
(11, 'PRED_10', '1000007', 'Leisure participation', 'impared', 'leisure participation'),
(12, 'PRED_10', '1000007', 'Social participation', 'not impared', 'bbnh'),
(13, 'PRED_11', '1000008', 'Education (formal and informal)', 'impared', ''),
(14, 'PRED_11', '1000008', 'Work Employment/Volunteer', 'impared', ''),
(15, 'PRED_11', '1000008', 'Leisure participation', 'impared', ''),
(16, 'PRED_11', '1000008', 'Social participation', 'impared', ''),
(17, 'PRED_11', '1000011', 'Education (formal and informal)', 'impared', ''),
(18, 'PRED_11', '1000011', 'Work Employment/Volunteer', 'impared', ''),
(19, 'PRED_11', '1000011', 'Leisure participation', 'impared', ''),
(20, 'PRED_11', '1000011', 'Social participation', 'impared', ''),
(21, 'PRED_10', '1000012', 'Education (formal and informal)', 'not impared', ''),
(22, 'PRED_10', '1000012', 'Work Employment/Volunteer', 'not impared', 'rgfr'),
(23, 'PRED_10', '1000012', 'Leisure participation', 'impared', 'rgfw'),
(24, 'PRED_10', '1000012', 'Social participation', 'not impared', ''),
(25, 'PRED_16', '1000015', 'Education (formal and informal)', 'impared', ''),
(26, 'PRED_16', '1000015', 'Work Employment/Volunteer', 'impared', ''),
(27, 'PRED_16', '1000015', 'Leisure participation', 'impared', ''),
(28, 'PRED_16', '1000015', 'Social participation', 'impared', ''),
(29, 'PRED_16', '1000016', 'Education (formal and informal)', 'impared', ''),
(30, 'PRED_16', '1000016', 'Work Employment/Volunteer', 'impared', ''),
(31, 'PRED_16', '1000016', 'Leisure participation', 'impared', ''),
(32, 'PRED_16', '1000016', 'Social participation', 'impared', ''),
(33, 'PRED_16', '1000020', 'Education (formal and informal)', 'Not applicable', ''),
(34, 'PRED_16', '1000020', 'Work Employment/Volunteer', 'impaired', 'fvgh'),
(35, 'PRED_16', '1000020', 'Leisure participation', 'Not applicable', ''),
(36, 'PRED_16', '1000020', 'Social participation', 'not impaired', 'kjnjh');

-- --------------------------------------------------------

--
-- Table structure for table `mental`
--

CREATE TABLE `mental` (
  `id` int(255) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `Gender` varchar(12) NOT NULL,
  `Code` varchar(2000) NOT NULL,
  `Ethnicity` varchar(2000) NOT NULL,
  `Health` varchar(2000) NOT NULL,
  `Asseccor` varchar(2000) NOT NULL,
  `Designation` varchar(2000) NOT NULL,
  `first` varchar(2000) NOT NULL,
  `dt` varchar(2000) NOT NULL,
  `setting` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mental`
--

INSERT INTO `mental` (`id`, `name`, `DOB`, `num`, `rec`, `Gender`, `Code`, `Ethnicity`, `Health`, `Asseccor`, `Designation`, `first`, `dt`, `setting`) VALUES
(1, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '1000009', 'Male', '009', 'Isoko', 'Migrane', 'Ade Wale', 'Occupational Therapist', '2018-11-24', '2018-11-11', 'treatment setting'),
(2, '', '', '', '', '', 'ewjnkf', '', 'rfg', 'fwce', 'Occupational Therapist', '2018-11-30', '2018-11-16', 'uhgij'),
(3, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000010', 'Male', '009', '', 'Migrane', 'Ade Wale', 'Occupational Therapist', '2018-11-17', '2018-11-18', 'dss'),
(4, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000013', 'Male', '009', '', 'Migrane', 'Ade Wale', 'OOT Support staff', '2018-11-03', '2018-11-11', 'setting'),
(5, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000014', 'Male', '009', 'Isoko', 'Migrane', 'Ade Wale', 'Occupational Therapist', '2018-11-18', '2018-11-10', 'setting'),
(6, 'Riyah Ololade', '1212-12-12', 'PRED_16', '1000017', 'Male', '009', 'Isoko', 'Migrane', 'Ade Wale', 'Occupational Therapist', '2018-11-23', '2018-11-10', 'fvrs'),
(7, 'Salisu Ganiu', '2018-11-09', 'PRED_14', '1000018', '', '009', 'Isoko', 'Migrane', 'John Adewale', 'Occupational Therapist', '2018-11-17', '2018-11-11', 'das'),
(8, 'Riyah Ololade', '1212-12-12', 'PRED_16', '1000019', 'Male', '009', '', 'Migrane', 'John Adewale', '', '2018-11-24', '2018-11-10', 'das');

-- --------------------------------------------------------

--
-- Table structure for table `motivation`
--

CREATE TABLE `motivation` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `question` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `tp` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motivation`
--

INSERT INTO `motivation` (`id`, `num`, `rec`, `question`, `answer`, `tp`) VALUES
(1, 'PRED_11', '1000009', 'Shows awareness of strengths & limitations', 'Facilitates occupational participation', 'motivation'),
(2, 'PRED_11', '1000009', 'Shows pride/seeks challenges', 'Not seen', 'motivation'),
(3, 'PRED_11', '1000009', 'Shows curiosity and demonstrates interest', 'Allows occupational participation', 'motivation'),
(4, 'PRED_11', '1000009', 'Identiï¬es preferences/is goal-oriented', 'Inhibits occupational participation', 'motivation'),
(5, 'PRED_11', '1000009', 'Shows awareness of strengths & limitations', 'Facilitates occupational participation', 'Pattern'),
(6, 'PRED_11', '1000009', 'Shows pride/seeks challenges', 'Not seen', 'Pattern'),
(7, 'PRED_11', '1000009', 'Shows curiosity and demonstrates interest', 'Allows occupational participation', 'Pattern'),
(8, 'PRED_11', '1000009', 'Identiï¬es preferences/is goal-oriented', 'Inhibits occupational participation', 'Pattern'),
(9, 'PRED_11', '1000009', 'Uses appropriate non-verbal expression', 'Restricts occupational participation', 'Comm'),
(10, 'PRED_11', '1000009', 'Initiates and sustains appropriate conversation', 'Facilitates occupational participation', 'Comm'),
(11, 'PRED_11', '1000009', 'Uses appropriate vocal expression', 'Allows occupational participation', 'Comm'),
(12, 'PRED_11', '1000009', 'Relates to and co-operates with others', 'Facilitates occupational participation', 'Comm'),
(13, 'PRED_11', '1000009', 'Chooses/uses equipment appropriately', 'Facilitates occupational participation', 'Process'),
(14, 'PRED_11', '1000009', 'Maintains focus throughout task/sequence', 'Allows occupational participation', 'Process'),
(15, 'PRED_11', '1000009', 'Works in an orderly fashion', 'Inhibits occupational participation', 'Process'),
(16, 'PRED_11', '1000009', 'Modiï¬es actions to overcome problems', 'Not seen', 'Process'),
(17, 'PRED_11', '1000009', 'Mobilises independently', 'Facilitates occupational participation', 'Motor'),
(18, 'PRED_11', '1000009', 'Manipulates tools and materials easily', 'Not seen', 'Motor'),
(19, 'PRED_11', '1000009', 'Uses appropriate strength and effort', 'Allows occupational participation', 'Motor'),
(20, 'PRED_11', '1000009', 'Maintains energy and appropriate pace', 'Inhibits occupational participation', 'Motor'),
(21, 'PRED_11', '1000009', 'Space offers stimulus and comfort', 'Facilitates occupational participation', 'Entertainment'),
(22, 'PRED_11', '1000009', 'Resources allow safety and independence', 'Restricts occupational participation', 'Entertainment'),
(23, 'PRED_11', '1000009', 'Social interaction provides support', 'Allows occupational participation', 'Entertainment'),
(24, 'PRED_11', '1000009', 'Demands of activity match abilities/interests', 'Inhibits occupational participation', 'Entertainment'),
(25, '', '', 'Shows awareness of strengths & limitations', 'Not seen', 'motivation'),
(26, '', '', 'Shows pride/seeks challenges', 'Not seen', 'motivation'),
(27, '', '', 'Shows curiosity and demonstrates interest', 'Not seen', 'motivation'),
(28, '', '', 'Identiï¬es preferences/is goal-oriented', 'Not seen', 'motivation'),
(29, '', '', 'Maintains routine habits (ADL)', 'Not seen', 'Pattern'),
(30, '', '', 'Remains settled/copes with disruption/change', 'Not seen', 'Pattern'),
(31, '', '', 'Becomes actively involved with task/group', 'Not seen', 'Pattern'),
(32, '', '', 'Fulfills responsibilities in the session', 'Not seen', 'Pattern'),
(33, '', '', 'Uses appropriate non-verbal expression', 'Not seen', 'Comm'),
(34, '', '', 'Initiates and sustains appropriate conversation', 'Not seen', 'Comm'),
(35, '', '', 'Uses appropriate vocal expression', 'Not seen', 'Comm'),
(36, '', '', 'Relates to and co-operates with others', 'Not seen', 'Comm'),
(37, '', '', 'Chooses/uses equipment appropriately', 'Not seen', 'Process'),
(38, '', '', 'Maintains focus throughout task/sequence', 'Not seen', 'Process'),
(39, '', '', 'Works in an orderly fashion', 'Not seen', 'Process'),
(40, '', '', 'Modiï¬es actions to overcome problems', 'Not seen', 'Process'),
(41, '', '', 'Mobilises independently', 'Not seen', 'Motor'),
(42, '', '', 'Manipulates tools and materials easily', 'Not seen', 'Motor'),
(43, '', '', 'Uses appropriate strength and effort', 'Not seen', 'Motor'),
(44, '', '', 'Maintains energy and appropriate pace', 'Not seen', 'Motor'),
(45, '', '', 'Space offers stimulus and comfort', 'Not seen', 'Entertainment'),
(46, '', '', 'Resources allow safety and independence', 'Not seen', 'Entertainment'),
(47, '', '', 'Social interaction provides support', 'Not seen', 'Entertainment'),
(48, '', '', 'Demands of activity match abilities/interests', 'Not seen', 'Entertainment'),
(49, 'PRED_10', '1000010', 'SApprisal of ability', 'Inhibits occupational participation', 'motivation'),
(50, 'PRED_10', '1000010', 'SExpectation of success', 'Restricts occupational participation', 'motivation'),
(51, 'PRED_10', '1000010', 'interest', 'Facilitates occupational participation', 'motivation'),
(52, 'PRED_10', '1000010', 'Choices', 'Allows occupational participation', 'motivation'),
(53, 'PRED_10', '1000010', 'Routine', 'Allows occupational participation', 'Pattern'),
(54, 'PRED_10', '1000010', 'Adaptability', 'Facilitates occupational participation', 'Pattern'),
(55, 'PRED_10', '1000010', 'Roles', 'Inhibits occupational participation', 'Pattern'),
(56, 'PRED_10', '1000010', 'Responsibility', 'Restricts occupational participation', 'Pattern'),
(57, 'PRED_10', '1000010', 'Non verbal skills', 'Facilitates occupational participation', 'Comm'),
(58, 'PRED_10', '1000010', 'conversation', 'Allows occupational participation', 'Comm'),
(59, 'PRED_10', '1000010', 'vocal expression', 'Inhibits occupational participation', 'Comm'),
(60, 'PRED_10', '1000010', 'Relationships', 'Restricts occupational participation', 'Comm'),
(61, 'PRED_10', '1000010', 'Knowledge', 'Facilitates occupational participation', 'Process'),
(62, 'PRED_10', '1000010', 'Timing', 'Allows occupational participation', 'Process'),
(63, 'PRED_10', '1000010', 'Organization', 'Restricts occupational participation', 'Process'),
(64, 'PRED_10', '1000010', 'Problem solving', 'Inhibits occupational participation', 'Process'),
(65, 'PRED_10', '1000010', 'Posture and Mobilty', 'Allows occupational participation', 'Motor'),
(66, 'PRED_10', '1000010', 'Cordination', 'Facilitates occupational participation', 'Motor'),
(67, 'PRED_10', '1000010', 'strength and effort', 'Inhibits occupational participation', 'Motor'),
(68, 'PRED_10', '1000010', 'Energy', 'Restricts occupational participation', 'Motor'),
(69, 'PRED_10', '1000010', 'Physical space', 'Facilitates occupational participation', 'Entertainment'),
(70, 'PRED_10', '1000010', 'Physical Resources', 'Allows occupational participation', 'Entertainment'),
(71, 'PRED_10', '1000010', 'Social groups', 'Facilitates occupational participation', 'Entertainment'),
(72, 'PRED_10', '1000010', 'Operational Demands', 'Restricts occupational participation', 'Entertainment'),
(73, 'PRED_10', '1000013', 'Shows awareness of strengths & limitations', 'Facilitates occupational participation', 'motivation'),
(74, 'PRED_10', '1000013', 'Shows pride/seeks challenges', 'Allows occupational participation', 'motivation'),
(75, 'PRED_10', '1000013', 'Shows curiosity and demonstrates interest', 'Allows occupational participation', 'motivation'),
(76, 'PRED_10', '1000013', 'Identiï¬es preferences/is goal-oriented', 'Allows occupational participation', 'motivation'),
(77, 'PRED_10', '1000013', 'Maintains routine habits (ADL)', 'Not seen', 'Pattern'),
(78, 'PRED_10', '1000013', 'Remains settled/copes with disruption/change', 'Allows occupational participation', 'Pattern'),
(79, 'PRED_10', '1000013', 'Becomes actively involved with task/group', 'Allows occupational participation', 'Pattern'),
(80, 'PRED_10', '1000013', 'Fulfills responsibilities in the session', 'Inhibits occupational participation', 'Pattern'),
(81, 'PRED_10', '1000013', 'Uses appropriate non-verbal expression', 'Facilitates occupational participation', 'Comm'),
(82, 'PRED_10', '1000013', 'Initiates and sustains appropriate conversation', 'Allows occupational participation', 'Comm'),
(83, 'PRED_10', '1000013', 'Uses appropriate vocal expression', 'Allows occupational participation', 'Comm'),
(84, 'PRED_10', '1000013', 'Relates to and co-operates with others', 'Allows occupational participation', 'Comm'),
(85, 'PRED_10', '1000013', 'Chooses/uses equipment appropriately', 'Facilitates occupational participation', 'Process'),
(86, 'PRED_10', '1000013', 'Maintains focus throughout task/sequence', 'Inhibits occupational participation', 'Process'),
(87, 'PRED_10', '1000013', 'Works in an orderly fashion', 'Allows occupational participation', 'Process'),
(88, 'PRED_10', '1000013', 'Modiï¬es actions to overcome problems', 'Inhibits occupational participation', 'Process'),
(89, 'PRED_10', '1000013', 'Mobilises independently', 'Allows occupational participation', 'Motor'),
(90, 'PRED_10', '1000013', 'Manipulates tools and materials easily', 'Facilitates occupational participation', 'Motor'),
(91, 'PRED_10', '1000013', 'Uses appropriate strength and effort', 'Allows occupational participation', 'Motor'),
(92, 'PRED_10', '1000013', 'Maintains energy and appropriate pace', 'Allows occupational participation', 'Motor'),
(93, 'PRED_10', '1000013', 'Space offers stimulus and comfort', 'Facilitates occupational participation', 'Entertainment'),
(94, 'PRED_10', '1000013', 'Resources allow safety and independence', 'Inhibits occupational participation', 'Entertainment'),
(95, 'PRED_10', '1000013', 'Social interaction provides support', 'Allows occupational participation', 'Entertainment'),
(96, 'PRED_10', '1000013', 'Demands of activity match abilities/interests', 'Not seen', 'Entertainment'),
(97, 'PRED_10', '1000014', 'Apprisal of ability', 'Allows occupational participation', 'motivation'),
(98, 'PRED_10', '1000014', 'Expectation of success', 'Facilitates occupational participation', 'motivation'),
(99, 'PRED_10', '1000014', 'interest', 'Inhibits occupational participation', 'motivation'),
(100, 'PRED_10', '1000014', 'Choices', 'Allows occupational participation', 'motivation'),
(101, 'PRED_10', '1000014', 'Routine', 'Allows occupational participation', 'Pattern'),
(102, 'PRED_10', '1000014', 'Adaptability', 'Inhibits occupational participation', 'Pattern'),
(103, 'PRED_10', '1000014', 'Roles', 'Facilitates occupational participation', 'Pattern'),
(104, 'PRED_10', '1000014', 'Responsibility', 'Inhibits occupational participation', 'Pattern'),
(105, 'PRED_10', '1000014', 'Non verbal skills', 'Allows occupational participation', 'Comm'),
(106, 'PRED_10', '1000014', 'conversation', 'Inhibits occupational participation', 'Comm'),
(107, 'PRED_10', '1000014', 'vocal expression', 'Facilitates occupational participation', 'Comm'),
(108, 'PRED_10', '1000014', 'Relationships', 'Allows occupational participation', 'Comm'),
(109, 'PRED_10', '1000014', 'Knowledge', 'Allows occupational participation', 'Process'),
(110, 'PRED_10', '1000014', 'Timing', 'Inhibits occupational participation', 'Process'),
(111, 'PRED_10', '1000014', 'Organization', 'Allows occupational participation', 'Process'),
(112, 'PRED_10', '1000014', 'Problem solving', 'Facilitates occupational participation', 'Process'),
(113, 'PRED_10', '1000014', 'Posture and Mobilty', 'Allows occupational participation', 'Motor'),
(114, 'PRED_10', '1000014', 'Cordination', 'Inhibits occupational participation', 'Motor'),
(115, 'PRED_10', '1000014', 'strength and effort', 'Inhibits occupational participation', 'Motor'),
(116, 'PRED_10', '1000014', 'Energy', 'Allows occupational participation', 'Motor'),
(117, 'PRED_10', '1000014', 'Physical space', 'Inhibits occupational participation', 'Entertainment'),
(118, 'PRED_10', '1000014', 'Physical Resources', 'Allows occupational participation', 'Entertainment'),
(119, 'PRED_10', '1000014', 'Social groups', 'Inhibits occupational participation', 'Entertainment'),
(120, 'PRED_10', '1000014', 'Operational Demands', 'Inhibits occupational participation', 'Entertainment'),
(121, 'PRED_16', '1000017', 'Shows awareness of strengths & limitations', 'Not seen', 'motivation'),
(122, 'PRED_16', '1000017', 'Shows pride/seeks challenges', 'Not seen', 'motivation'),
(123, 'PRED_16', '1000017', 'Shows curiosity and demonstrates interest', 'Not seen', 'motivation'),
(124, 'PRED_16', '1000017', 'Identiï¬es preferences/is goal-oriented', 'Not seen', 'motivation'),
(125, 'PRED_16', '1000017', 'Maintains routine habits (ADL)', 'Not seen', 'Pattern'),
(126, 'PRED_16', '1000017', 'Remains settled/copes with disruption/change', 'Not seen', 'Pattern'),
(127, 'PRED_16', '1000017', 'Becomes actively involved with task/group', 'Not seen', 'Pattern'),
(128, 'PRED_16', '1000017', 'Fulfills responsibilities in the session', 'Not seen', 'Pattern'),
(129, 'PRED_16', '1000017', 'Uses appropriate non-verbal expression', 'Not seen', 'Comm'),
(130, 'PRED_16', '1000017', 'Initiates and sustains appropriate conversation', 'Not seen', 'Comm'),
(131, 'PRED_16', '1000017', 'Uses appropriate vocal expression', 'Not seen', 'Comm'),
(132, 'PRED_16', '1000017', 'Relates to and co-operates with others', 'Not seen', 'Comm'),
(133, 'PRED_16', '1000017', 'Chooses/uses equipment appropriately', 'Not seen', 'Process'),
(134, 'PRED_16', '1000017', 'Maintains focus throughout task/sequence', 'Not seen', 'Process'),
(135, 'PRED_16', '1000017', 'Works in an orderly fashion', 'Not seen', 'Process'),
(136, 'PRED_16', '1000017', 'Modiï¬es actions to overcome problems', 'Not seen', 'Process'),
(137, 'PRED_16', '1000017', 'Mobilises independently', 'Not seen', 'Motor'),
(138, 'PRED_16', '1000017', 'Manipulates tools and materials easily', 'Not seen', 'Motor'),
(139, 'PRED_16', '1000017', 'Uses appropriate strength and effort', 'Not seen', 'Motor'),
(140, 'PRED_16', '1000017', 'Maintains energy and appropriate pace', 'Not seen', 'Motor'),
(141, 'PRED_16', '1000017', 'Space offers stimulus and comfort', 'Not seen', 'Entertainment'),
(142, 'PRED_16', '1000017', 'Resources allow safety and independence', 'Not seen', 'Entertainment'),
(143, 'PRED_16', '1000017', 'Social interaction provides support', 'Not seen', 'Entertainment'),
(144, 'PRED_16', '1000017', 'Demands of activity match abilities/interests', 'Not seen', 'Entertainment'),
(145, 'PRED_14', '1000018', 'Shows awareness of strengths & limitations', 'Not seen', 'motivation'),
(146, 'PRED_14', '1000018', 'Shows pride/seeks challenges', 'Not seen', 'motivation'),
(147, 'PRED_14', '1000018', 'Shows curiosity and demonstrates interest', 'Not seen', 'motivation'),
(148, 'PRED_14', '1000018', 'Identiï¬es preferences/is goal-oriented', 'Not seen', 'motivation'),
(149, 'PRED_14', '1000018', 'Maintains routine habits (ADL)', 'Not seen', 'Pattern'),
(150, 'PRED_14', '1000018', 'Remains settled/copes with disruption/change', 'Not seen', 'Pattern'),
(151, 'PRED_14', '1000018', 'Becomes actively involved with task/group', 'Not seen', 'Pattern'),
(152, 'PRED_14', '1000018', 'Fulfills responsibilities in the session', 'Not seen', 'Pattern'),
(153, 'PRED_14', '1000018', 'Uses appropriate non-verbal expression', 'Not seen', 'Comm'),
(154, 'PRED_14', '1000018', 'Initiates and sustains appropriate conversation', 'Not seen', 'Comm'),
(155, 'PRED_14', '1000018', 'Uses appropriate vocal expression', 'Not seen', 'Comm'),
(156, 'PRED_14', '1000018', 'Relates to and co-operates with others', 'Not seen', 'Comm'),
(157, 'PRED_14', '1000018', 'Chooses/uses equipment appropriately', 'Not seen', 'Process'),
(158, 'PRED_14', '1000018', 'Maintains focus throughout task/sequence', 'Not seen', 'Process'),
(159, 'PRED_14', '1000018', 'Works in an orderly fashion', 'Not seen', 'Process'),
(160, 'PRED_14', '1000018', 'Modiï¬es actions to overcome problems', 'Not seen', 'Process'),
(161, 'PRED_14', '1000018', 'Mobilises independently', 'Not seen', 'Motor'),
(162, 'PRED_14', '1000018', 'Manipulates tools and materials easily', 'Not seen', 'Motor'),
(163, 'PRED_14', '1000018', 'Uses appropriate strength and effort', 'Not seen', 'Motor'),
(164, 'PRED_14', '1000018', 'Maintains energy and appropriate pace', 'Not seen', 'Motor'),
(165, 'PRED_14', '1000018', 'Space offers stimulus and comfort', 'Not seen', 'Entertainment'),
(166, 'PRED_14', '1000018', 'Resources allow safety and independence', 'Not seen', 'Entertainment'),
(167, 'PRED_14', '1000018', 'Social interaction provides support', 'Not seen', 'Entertainment'),
(168, 'PRED_14', '1000018', 'Demands of activity match abilities/interests', 'Not seen', 'Entertainment'),
(169, 'PRED_16', '1000019', 'Apprisal of ability', 'Facilitates occupational participation', 'motivation'),
(170, 'PRED_16', '1000019', 'Expectation of success', 'Facilitates occupational participation', 'motivation'),
(171, 'PRED_16', '1000019', 'interest', 'Facilitates occupational participation', 'motivation'),
(172, 'PRED_16', '1000019', 'Choices', 'Facilitates occupational participation', 'motivation'),
(173, 'PRED_16', '1000019', 'Routine', 'Facilitates occupational participation', 'Pattern'),
(174, 'PRED_16', '1000019', 'Adaptability', 'Facilitates occupational participation', 'Pattern'),
(175, 'PRED_16', '1000019', 'Roles', 'Facilitates occupational participation', 'Pattern'),
(176, 'PRED_16', '1000019', 'Responsibility', 'Facilitates occupational participation', 'Pattern'),
(177, 'PRED_16', '1000019', 'Non verbal skills', 'Facilitates occupational participation', 'Comm'),
(178, 'PRED_16', '1000019', 'conversation', 'Facilitates occupational participation', 'Comm'),
(179, 'PRED_16', '1000019', 'vocal expression', 'Facilitates occupational participation', 'Comm'),
(180, 'PRED_16', '1000019', 'Relationships', 'Facilitates occupational participation', 'Comm'),
(181, 'PRED_16', '1000019', 'Knowledge', 'Facilitates occupational participation', 'Process'),
(182, 'PRED_16', '1000019', 'Timing', 'Facilitates occupational participation', 'Process'),
(183, 'PRED_16', '1000019', 'Organization', 'Facilitates occupational participation', 'Process'),
(184, 'PRED_16', '1000019', 'Problem solving', 'Facilitates occupational participation', 'Process'),
(185, 'PRED_16', '1000019', 'Posture and Mobilty', 'Facilitates occupational participation', 'Motor'),
(186, 'PRED_16', '1000019', 'Cordination', 'Facilitates occupational participation', 'Motor'),
(187, 'PRED_16', '1000019', 'strength and effort', 'Facilitates occupational participation', 'Motor'),
(188, 'PRED_16', '1000019', 'Energy', 'Facilitates occupational participation', 'Motor'),
(189, 'PRED_16', '1000019', 'Physical space', 'Facilitates occupational participation', 'Entertainment'),
(190, 'PRED_16', '1000019', 'Physical Resources', 'Facilitates occupational participation', 'Entertainment'),
(191, 'PRED_16', '1000019', 'Social groups', 'Facilitates occupational participation', 'Entertainment'),
(192, 'PRED_16', '1000019', 'Operational Demands', 'Facilitates occupational participation', 'Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `nxt`
--

CREATE TABLE `nxt` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `assessment` varchar(2000) NOT NULL,
  `occupation` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nxt`
--

INSERT INTO `nxt` (`id`, `num`, `rec`, `assessment`, `occupation`) VALUES
(1, 'PRED_10', '1000009', 'Environment analysis', 'Occupation being assessed'),
(4, 'PRED_10', '1000010', 'Environment analysis', 'Occupation being assessed'),
(5, 'PRED_10', '1000013', 'Environment analysis', 'Occupation being assessed'),
(6, 'PRED_10', '1000014', 'Environment analysis', 'Occupation being assessed'),
(7, 'PRED_16', '1000017', 'Environment analysis', 'Occupation being assessed'),
(8, 'PRED_14', '1000018', 'Environment analysis', 'Occupation being assessed'),
(9, 'PRED_16', '1000019', 'Environment analysis', 'Occupation being assessed');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `patient` varchar(2000) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `analysis` varchar(2000) NOT NULL,
  `short_goal` varchar(2000) NOT NULL,
  `long_goals` varchar(2000) NOT NULL,
  `OT` varchar(2000) NOT NULL,
  `frequency` varchar(2000) NOT NULL,
  `theraphist` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `num`, `rec`, `patient`, `comment`, `analysis`, `short_goal`, `long_goals`, `OT`, `frequency`, `theraphist`) VALUES
(1, 'PRED_10', '1000006', 'family goals', 'analysis', '', 'short goals', 'long goals', 'OT', 'duration', ''),
(2, 'PRED_10', '1000006', 'family goals', 'the comment', 'jjj', 'short goals', 'long goals', 'OT', 'duration', ''),
(3, 'PRED_10', '1000007', 'family goals', 'comment goes here', 'analysis of occupational performance', 'shorth term goals', 'long term goals', 'OT intervention', 'frequency of duration ', 'Ganiyu Kareem'),
(4, 'PRED_11', '1000008', 'remjv', 'fadvea', 'erevwe', 'eferqomo', 'kjn jkef', 'jiadu', 'sdkj', 'Sanni Saliu'),
(5, 'PRED_10', '1000012', 'family goals', 'comments', 'analysis of occupational performance', 'short term goals', 'long term goals', 'rr', 'ee', 'Damilola'),
(6, 'PRED_16', '1000015', 'family goals', 'dsv e', 'bgbfd', 'fgfds ', 'sdfsd', 'sdfsd', 'sfgs', 'John Adewale'),
(7, 'PRED_16', '1000016', 'family goals', 'gfsd', 'sdf', 'sdf', 'sfc', 'sdf', 'sdf', 'John Adewale'),
(8, 'PRED_16', '1000020', 'family goals', '', 'DLZMFKDAFN', 'LKSDMFAS', 'LAKSDMFK', 'KJNASDKJ', 'LKMSADA', 'ade');

-- --------------------------------------------------------

--
-- Table structure for table `pattern`
--

CREATE TABLE `pattern` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `question` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `tp` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`id`, `num`, `rec`, `issue`, `answer`, `comment`, `tp`) VALUES
(1, 'PRED_10', '1000006', 'Sit', 'impared', 'bnm', 'Posture'),
(2, 'PRED_10', '1000006', 'Sit', 'impared', '', 'Balance static'),
(3, 'PRED_10', '1000006', 'Sit', 'impared', '', 'Balance static'),
(4, 'PRED_10', '1000006', 'Sit', 'impared', 'opopo', 'Balance dynamic'),
(5, 'PRED_10', '1000006', 'Sit', 'not impared', 'lll', 'Balance dynamic'),
(6, 'PRED_10', '1000006', 'Endurance/activity tolerance', 'Reduced', '', ''),
(7, 'PRED_10', '1000007', 'Sit', 'impared', 'stand kjkkl', 'Posture'),
(8, 'PRED_10', '1000007', 'Sit', 'impared', 'balance sdtatic', 'Balance static'),
(9, 'PRED_10', '1000007', 'Sit', 'impared', '', 'Balance static'),
(10, 'PRED_10', '1000007', 'Sit', 'impared', 'afeq', 'Balance dynamic'),
(11, 'PRED_10', '1000007', 'Sit', 'not impared', 'cadfea', 'Balance dynamic'),
(12, 'PRED_10', '1000007', 'Endurance/activity tolerance', 'normal', 'efce', ''),
(13, 'PRED_11', '1000008', 'Sit', 'impared', '', 'Posture'),
(14, 'PRED_11', '1000008', 'Sit', 'impared', '', 'Balance static'),
(15, 'PRED_11', '1000008', 'Sit', 'impared', '', 'Balance static'),
(16, 'PRED_11', '1000008', 'Sit', 'impared', '', 'Balance dynamic'),
(17, 'PRED_11', '1000008', 'Sit', 'impared', '', 'Balance dynamic'),
(18, 'PRED_11', '1000008', 'Endurance/activity tolerance', 'Reduced', '', ''),
(19, 'PRED_11', '1000011', 'Sit', 'impared', '', 'Posture'),
(20, 'PRED_11', '1000011', 'Sit', 'impared', '', 'Balance static'),
(21, 'PRED_11', '1000011', 'Sit', 'impared', '', 'Balance static'),
(22, 'PRED_11', '1000011', 'Sit', 'impared', '', 'Balance dynamic'),
(23, 'PRED_11', '1000011', 'Sit', 'impared', '', 'Balance dynamic'),
(24, 'PRED_11', '1000011', 'Endurance/activity tolerance', 'Reduced', '', ''),
(25, 'PRED_10', '1000012', 'Sit', 'not impared', '', 'Posture'),
(26, 'PRED_10', '1000012', 'Sit', 'impared', '', 'Balance static'),
(27, 'PRED_10', '1000012', 'Sit', 'impared', '', 'Balance static'),
(28, 'PRED_10', '1000012', 'Sit', 'impared', '', 'Balance dynamic'),
(29, 'PRED_10', '1000012', 'Sit', 'impared', '', 'Balance dynamic'),
(30, 'PRED_10', '1000012', 'Endurance/activity tolerance', 'normal', 'hjbj', ''),
(31, 'PRED_16', '1000015', 'Sit', 'impared', '', 'Posture'),
(32, 'PRED_16', '1000015', 'Sit', 'impared', '', 'Balance static'),
(33, 'PRED_16', '1000015', 'Sit', 'impared', '', 'Balance static'),
(34, 'PRED_16', '1000015', 'Sit', 'impared', '', 'Balance dynamic'),
(35, 'PRED_16', '1000015', 'Sit', 'impared', '', 'Balance dynamic'),
(36, 'PRED_16', '1000015', 'Endurance/activity tolerance', 'Reduced', '', ''),
(37, 'PRED_16', '1000016', 'Sit', 'impared', '', 'Posture'),
(38, 'PRED_16', '1000016', 'Sit', 'impared', '', 'Balance static'),
(39, 'PRED_16', '1000016', 'Sit', 'impared', '', 'Balance static'),
(40, 'PRED_16', '1000016', 'Sit', 'impared', '', 'Balance dynamic'),
(41, 'PRED_16', '1000016', 'Sit', 'impared', '', 'Balance dynamic'),
(42, 'PRED_16', '1000016', 'Endurance/activity tolerance', 'Reduced', '', ''),
(43, 'PRED_16', '1000020', 'Sit', 'impaired', '', 'Posture'),
(44, 'PRED_16', '1000020', 'Sit', 'impaired', '', 'Balance static'),
(45, 'PRED_16', '1000020', 'Sit', 'impaired', '', 'Balance static'),
(46, 'PRED_16', '1000020', 'Sit', 'impaired', '', 'Balance dynamic'),
(47, 'PRED_16', '1000020', 'Sit', 'impaired', '', 'Balance dynamic'),
(48, 'PRED_16', '1000020', 'Endurance/activity tolerance', 'Reduced', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(255) NOT NULL,
  `rec_num` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `rec_num`) VALUES
(1, 1000020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ADL`
--
ALTER TABLE `ADL`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assesment`
--
ALTER TABLE `assesment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functional`
--
ALTER TABLE `functional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leisure`
--
ALTER TABLE `leisure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mental`
--
ALTER TABLE `mental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motivation`
--
ALTER TABLE `motivation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nxt`
--
ALTER TABLE `nxt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pattern`
--
ALTER TABLE `pattern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `ADL`
--
ALTER TABLE `ADL`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `assesment`
--
ALTER TABLE `assesment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `functional`
--
ALTER TABLE `functional`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `leisure`
--
ALTER TABLE `leisure`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `mental`
--
ALTER TABLE `mental`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `motivation`
--
ALTER TABLE `motivation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `nxt`
--
ALTER TABLE `nxt`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pattern`
--
ALTER TABLE `pattern`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `fmcphy_OG`
--
CREATE DATABASE IF NOT EXISTS `fmcphy_OG` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmcphy_OG`;

-- --------------------------------------------------------

--
-- Table structure for table `chest`
--

CREATE TABLE `chest` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `moverment` varchar(2000) NOT NULL,
  `list` varchar(2000) NOT NULL,
  `breathing` varchar(2000) NOT NULL,
  `cough` varchar(2000) NOT NULL,
  `sputum` varchar(2000) NOT NULL,
  `describe` varchar(2000) NOT NULL,
  `physio` varchar(2000) NOT NULL,
  `information` varchar(2000) NOT NULL,
  `medication` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chest`
--

INSERT INTO `chest` (`id`, `num`, `rec`, `moverment`, `list`, `breathing`, `cough`, `sputum`, `describe`, `physio`, `information`, `medication`) VALUES
(1, 'PRED_16', '100005', 'yes', 'the list is here', 'No', 'yes', 'No', 'the sputum color', 'Yakubu Damilola', 'related information is here', 'the route is here');

-- --------------------------------------------------------

--
-- Table structure for table `comm`
--

CREATE TABLE `comm` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `describe` varchar(2000) NOT NULL,
  `physio` varchar(2000) NOT NULL,
  `related` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comm`
--

INSERT INTO `comm` (`id`, `num`, `rec`, `describe`, `physio`, `related`) VALUES
(1, 'PRED_16', '100005', 'the communication difficulties', 'Yakubu Damilola', 'The other related information is here'),
(2, 'PRED_16', '100005', '', 'Yakubu Damilola', 'related information is here');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `concerns` varchar(2000) NOT NULL,
  `physio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `num`, `rec`, `concerns`, `physio`) VALUES
(1, '100005', '', 'issue regarding condition', 'Yakubu Damilola'),
(2, 'PRED_16', '100005', 'issue regarding condition', 'Yakubu Damilola'),
(3, 'pred_16', '100006', 'mnj ', 'Yakubu Damilola'),
(4, 'PRED_11', '100007', 'nb ', 'Yakubu Damilola');

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `goals` varchar(2000) NOT NULL,
  `physio` varchar(2000) NOT NULL,
  `plan` varchar(2000) NOT NULL,
  `means` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `num`, `rec`, `goals`, `physio`, `plan`, `means`) VALUES
(2, 'PRED_16', '100005', 'goals of therapy', 'Yakubu Damilola', 'Plan of treatment goes here', 'means of treatment goes here');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `parity` varchar(1000) NOT NULL,
  `boys` varchar(10) NOT NULL,
  `girls` varchar(10) NOT NULL,
  `twins` varchar(10) NOT NULL,
  `pregnancies` varchar(10) NOT NULL,
  `duration` varchar(1000) NOT NULL,
  `complications` varchar(1000) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `term` varchar(1000) NOT NULL,
  `term_coment` varchar(1000) NOT NULL,
  `labour` varchar(2000) NOT NULL,
  `labour_comment` varchar(2000) NOT NULL,
  `physio` varchar(1000) NOT NULL,
  `related` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `num`, `rec`, `parity`, `boys`, `girls`, `twins`, `pregnancies`, `duration`, `complications`, `comment`, `term`, `term_coment`, `labour`, `labour_comment`, `physio`, `related`) VALUES
(1, 'PRED_16', '100005', '', 'parity', '2', '3', '0', 'no', '2 years', 'no', 'nil', 'Yes', 'full term pregnancy', 'Yes', 'normal', 'Yakubu Damilola');

-- --------------------------------------------------------

--
-- Table structure for table `limb`
--

CREATE TABLE `limb` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `limb` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `limb`
--

INSERT INTO `limb` (`id`, `num`, `rec`, `limb`) VALUES
(1, 'PRED_16', '100005', ''),
(2, 'PRED_16', '100005', ''),
(3, 'PRED_16', '100005', ''),
(4, 'PRED_16', '100005', 'upper limb Left'),
(5, 'PRED_16', '100005', 'Lower limb Right'),
(6, 'PRED_16', '100005', 'Lower limb Left');

-- --------------------------------------------------------

--
-- Table structure for table `muscles`
--

CREATE TABLE `muscles` (
  `id` int(255) NOT NULL,
  `frequency` varchar(2000) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `muscles` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `muscles`
--

INSERT INTO `muscles` (`id`, `frequency`, `num`, `rec`, `muscles`) VALUES
(1, 'vvds', 'PRED_16', '100005', ''),
(2, 'vvds', 'PRED_16', '100005', ''),
(3, 'vvds', 'PRED_16', '100005', ''),
(4, 'vvds', 'PRED_16', '100005', ''),
(5, 'jhn k', 'PRED_16', '100005', 'Lower limb right'),
(6, 'jhn k', 'PRED_16', '100005', 'upper limb Right'),
(7, 'jhn k', 'PRED_16', '100005', 'Lower limb Left'),
(8, 'jhn k', 'PRED_16', '100005', 'upper limb left'),
(9, 'jhn k', 'PRED_16', '100005', 'Headache');

-- --------------------------------------------------------

--
-- Table structure for table `previous`
--

CREATE TABLE `previous` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `health` varchar(2000) NOT NULL,
  `apply` varchar(2000) NOT NULL,
  `information` varchar(2000) NOT NULL,
  `durable` varchar(2000) NOT NULL,
  `explain` varchar(2000) NOT NULL,
  `physio` varchar(2000) NOT NULL,
  `history` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `previous`
--

INSERT INTO `previous` (`id`, `num`, `rec`, `health`, `apply`, `information`, `durable`, `explain`, `physio`, `history`) VALUES
(1, 'PRED_16', '100005', 'Good', 'Allergies', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history'),
(2, 'PRED_16', '100005', 'Good', 'Asthma /Breathing Difficulties', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history'),
(3, 'PRED_16', '100005', 'Good', 'Bronchitis', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history'),
(4, 'PRED_16', '100005', 'Good', 'Fever', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history'),
(5, 'PRED_16', '100005', 'Good', 'Night Pain', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history'),
(6, 'PRED_16', '100005', 'Good', 'Osteoarthritis', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history'),
(7, 'PRED_16', '100005', 'Good', 'Heart Disease', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history'),
(8, 'PRED_16', '100005', 'Good', 'Parkinsonâ€™s Disease', 'other information regarding health', 'Yes', 'explanation on equipment', 'Yakubu Damilola', 'medical history');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(200) NOT NULL,
  `rec_num` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `rec_num`) VALUES
(1, 100007);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `spouse` varchar(2000) NOT NULL,
  `age` varchar(2000) NOT NULL,
  `occupation` varchar(2000) NOT NULL,
  `P_occupation` varchar(2000) NOT NULL,
  `apartment` varchar(2000) NOT NULL,
  `smoke` varchar(200) NOT NULL,
  `drink` varchar(2000) NOT NULL,
  `physio` varchar(2000) NOT NULL,
  `related` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `num`, `rec`, `spouse`, `age`, `occupation`, `P_occupation`, `apartment`, `smoke`, `drink`, `physio`, `related`) VALUES
(2, 'PRED_16', '100005', 'Adewale Adeola', '22', 'Trader', 'Farmer', 'Bungalow', 'Yes', 'No', 'Yakubu Damilola', 'related informatoon is here');

-- --------------------------------------------------------

--
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `id` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `num` varchar(200) NOT NULL,
  `DOB` varchar(200) NOT NULL,
  `eval` varchar(10) NOT NULL,
  `marital` varchar(200) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_1`
--

INSERT INTO `table_1` (`id`, `name`, `rec`, `num`, `DOB`, `eval`, `marital`, `duration`, `address`) VALUES
(1, ' Sofine Fegolli ', '100002', 'PRED_11', '1998-03-12', '2018-12-21', 'single', '', 'Abeokuta'),
(2, ' Riyah Ololade ', '100003', 'PRED_16', '1212-12-12', '2018-12-16', 'single', '2 years', 'Abeokuta'),
(3, ' Yakubu Damilola ', '100004', 'PRED_10', '2018-10-14', '2018-12-14', 'single', '2 years', 'Abeokuta'),
(4, ' Riyah Ololade ', '100005', 'PRED_16', '1212-12-12', '2018-12-14', 'single', '2 years', 'Abeokuta'),
(5, ' Riyah Ololade ', '100006', 'pred_16', '1212-12-12', '2018-12-13', 'kjn', 'jn', 'nm'),
(6, ' Sofine Fegolli ', '100007', 'PRED_11', '1998-03-12', '2018-12-06', 'jnj', 'n hj', 'hj');

-- --------------------------------------------------------

--
-- Table structure for table `table_2`
--

CREATE TABLE `table_2` (
  `id` int(255) NOT NULL,
  `reason` varchar(2000) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `conditions` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_2`
--

INSERT INTO `table_2` (`id`, `reason`, `num`, `rec`, `conditions`) VALUES
(3, 'bruise', 'PRED_16', '100005', ''),
(4, 'bruise', 'PRED_16', '100005', 'Nausea and vomiting'),
(5, 'bruise', 'PRED_16', '100005', 'Musculoskeletal problems'),
(6, 'bruise', 'PRED_16', '100005', 'Cramps');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int(255) NOT NULL,
  `prior` varchar(2000) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `treatment` varchar(2000) NOT NULL,
  `explain` varchar(2000) NOT NULL,
  `dt` varchar(2000) NOT NULL,
  `physio` varchar(2000) NOT NULL,
  `history` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id`, `prior`, `num`, `rec`, `treatment`, `explain`, `dt`, `physio`, `history`) VALUES
(1, 'yes', 'PRED_16', '100005', '', 'explanation on diagnostic', '2018-12-15', 'Yakubu Damilola', 'the subjective history'),
(2, 'yes', 'PRED_16', '100005', '', 'explanation on diagnostic', '2018-12-15', 'Yakubu Damilola', 'the subjective history'),
(3, 'yes', 'PRED_16', '100005', '', 'explanation on diagnostic', '2018-12-15', 'Yakubu Damilola', 'the subjective history'),
(4, 'yes', 'PRED_16', '100005', '', 'explanation on diagnostic', '2018-12-15', 'Yakubu Damilola', 'the subjective history'),
(5, 'yes', 'PRED_16', '100005', 'MRI', 'explanation on diagnostics', '2018-12-08', 'Yakubu Damilola', 'subjective history'),
(6, 'yes', 'PRED_16', '100005', 'EMG/Nerve conduction test', 'explanation on diagnostics', '2018-12-08', 'Yakubu Damilola', 'subjective history'),
(7, 'yes', 'PRED_16', '100005', '', 'explanation on diagnostics', '2018-12-08', 'Yakubu Damilola', 'subjective history'),
(8, '', 'pred_16', '100006', '', '', '', 'Yakubu Damilola', ''),
(9, '', 'PRED_11', '100007', '', '', '', 'Yakubu Damilola', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chest`
--
ALTER TABLE `chest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comm`
--
ALTER TABLE `comm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limb`
--
ALTER TABLE `limb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muscles`
--
ALTER TABLE `muscles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `previous`
--
ALTER TABLE `previous`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1`
--
ALTER TABLE `table_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2`
--
ALTER TABLE `table_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chest`
--
ALTER TABLE `chest`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comm`
--
ALTER TABLE `comm`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `limb`
--
ALTER TABLE `limb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `muscles`
--
ALTER TABLE `muscles`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `previous`
--
ALTER TABLE `previous`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_2`
--
ALTER TABLE `table_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `fmcphy_ortho`
--
CREATE DATABASE IF NOT EXISTS `fmcphy_ortho` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmcphy_ortho`;

-- --------------------------------------------------------

--
-- Table structure for table `additional`
--

CREATE TABLE `additional` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(100) NOT NULL,
  `additional` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additional`
--

INSERT INTO `additional` (`id`, `num`, `rec`, `additional`) VALUES
(1, 'PRED_10', '100009', 'Headache'),
(2, 'PRED_10', '100009', 'loss of balance'),
(3, 'PRED_10', '100009', 'nausea'),
(4, 'PRED_10', '100009', 'Additional symptoms entered here'),
(5, 'PRED_10', '100009', 'Headache'),
(6, 'PRED_10', '100009', 'Radiating pain to UEs'),
(7, 'PRED_10', '100009', 'numbness'),
(8, 'PRED_10', '100009', 'nausea'),
(9, 'PRED_10', '100009', ''),
(10, 'PRED_10', '100009', 'numbness'),
(11, 'PRED_10', '100009', 'nausea'),
(12, 'PRED_10', '100009', ''),
(13, 'PRED_10', '100009', 'Radiating pain to UEs'),
(14, 'PRED_10', '100009', 'nausea'),
(15, 'PRED_10', '100009', ''),
(16, 'PRED_10', '100009', 'Headache'),
(17, 'PRED_10', '100009', 'nausea'),
(18, 'PRED_10', '100009', ''),
(19, 'PRED_10', '100013', 'numbness'),
(20, 'PRED_10', '100013', ''),
(21, 'PRED_11', '100014', 'Radiating pain to UEs'),
(22, 'PRED_11', '100014', ''),
(23, 'PRED_11', '100015', 'Headache'),
(24, 'PRED_11', '100015', 'Radiating pain to UEs'),
(25, 'PRED_11', '100015', 'loss of balance'),
(26, 'PRED_11', '100015', 'nausea'),
(27, 'PRED_11', '100015', 'Additional symptoms entered here'),
(28, 'PRED_16', '100016', 'numbness'),
(29, 'PRED_16', '100016', ''),
(30, 'PRED_16', '100016', 'Radiating pain to UEs'),
(31, 'PRED_16', '100016', 'nausea'),
(32, 'PRED_16', '100016', '');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `dt` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`id`, `num`, `rec`, `name`, `dt`) VALUES
(2, 'PRED_10', '100013', 'Yakubu Damilola', '2018-11-09'),
(3, 'PRED_11', '100015', 'Yakubu Damilola', '2018-11-10'),
(4, 'PRED_16', '100016', 'ade', '2018-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `endurance`
--

CREATE TABLE `endurance` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `test` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `endurance` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endurance`
--

INSERT INTO `endurance` (`id`, `num`, `rec`, `test`, `answer`, `endurance`) VALUES
(1, 'PRED_10', '100009', 'Slump Test', '+ve', 'end'),
(2, 'PRED_10', '100009', 'Straight Leg Raise Test', '-ve', 'end'),
(3, 'PRED_10', '100009', 'Cram Test', '+ve', 'end'),
(4, 'PRED_10', '100009', 'Sign of the Buttock Test', '-ve', 'end'),
(5, 'PRED_10', '100009', 'Prone Knee Bending Test', '+ve', 'end'),
(6, 'PRED_10', '100009', 'Valsalvaâ€™s Maneuver Test', '-ve', 'end'),
(7, 'PRED_10', '100009', 'Segmental Instability Test', '-ve', 'end'),
(8, 'PRED_10', '100009', 'Anterior Lumbar Instability Test', '-ve', 'end'),
(9, 'PRED_10', '100009', 'One-legged Standing Lumbar Extension Test', '+ve', 'end'),
(10, 'PRED_10', '100009', 'Quadrant Test', '+ve', 'end'),
(11, 'PRED_10', '100009', 'Trendelenberg Test', '+ve', 'end'),
(12, 'PRED_10', '100009', 'Compression / Distraction', '-ve', 'end'),
(13, 'PRED_10', '100009', 'Other special test', 'others goes here', 'end'),
(14, 'PRED_10', '100009', 'Slump Test', '-ve', '90'),
(15, 'PRED_10', '100009', 'Straight Leg Raise Test', '-ve', '90'),
(16, 'PRED_10', '100009', 'Cram Test', '+ve', '90'),
(17, 'PRED_10', '100009', 'Sign of the Buttock Test', '+ve', '90'),
(18, 'PRED_10', '100009', 'Prone Knee Bending Test', '+ve', '90'),
(19, 'PRED_10', '100009', 'Valsalvaâ€™s Maneuver Test', '+ve', '90'),
(20, 'PRED_10', '100009', 'Segmental Instability Test', '+ve', '90'),
(21, 'PRED_10', '100009', 'Anterior Lumbar Instability Test', '-ve', '90'),
(22, 'PRED_10', '100009', 'One-legged Standing Lumbar Extension Test', '+ve', '90'),
(23, 'PRED_10', '100009', 'Quadrant Test', '+ve', '90'),
(24, 'PRED_10', '100009', 'Trendelenberg Test', '-ve', '90'),
(25, 'PRED_10', '100009', 'Compression / Distraction', '+ve', '90'),
(26, 'PRED_10', '100009', 'Other special test', '', '90'),
(27, 'PRED_10', '100013', 'Slump Test', '+ve', '90'),
(28, 'PRED_10', '100013', 'Straight Leg Raise Test', '+ve', '90'),
(29, 'PRED_10', '100013', 'Cram Test', '+ve', '90'),
(30, 'PRED_10', '100013', 'Sign of the Buttock Test', '+ve', '90'),
(31, 'PRED_10', '100013', 'Prone Knee Bending Test', '+ve', '90'),
(32, 'PRED_10', '100013', 'Valsalvaâ€™s Maneuver Test', '+ve', '90'),
(33, 'PRED_10', '100013', 'Segmental Instability Test', '+ve', '90'),
(34, 'PRED_10', '100013', 'Anterior Lumbar Instability Test', '+ve', '90'),
(35, 'PRED_10', '100013', 'One-legged Standing Lumbar Extension Test', '+ve', '90'),
(36, 'PRED_10', '100013', 'Quadrant Test', '+ve', '90'),
(37, 'PRED_10', '100013', 'Trendelenberg Test', '+ve', '90'),
(38, 'PRED_10', '100013', 'Compression / Distraction', '+ve', '90'),
(39, 'PRED_10', '100013', 'Other special test', '', '90'),
(40, 'PRED_11', '100014', 'Slump Test', '+ve', 'ss'),
(41, 'PRED_11', '100014', 'Straight Leg Raise Test', '+ve', 'ss'),
(42, 'PRED_11', '100014', 'Cram Test', '+ve', 'ss'),
(43, 'PRED_11', '100014', 'Sign of the Buttock Test', '+ve', 'ss'),
(44, 'PRED_11', '100014', 'Prone Knee Bending Test', '+ve', 'ss'),
(45, 'PRED_11', '100014', 'Valsalvaâ€™s Maneuver Test', '+ve', 'ss'),
(46, 'PRED_11', '100014', 'Segmental Instability Test', '+ve', 'ss'),
(47, 'PRED_11', '100014', 'Anterior Lumbar Instability Test', '+ve', 'ss'),
(48, 'PRED_11', '100014', 'One-legged Standing Lumbar Extension Test', '+ve', 'ss'),
(49, 'PRED_11', '100014', 'Quadrant Test', '+ve', 'ss'),
(50, 'PRED_11', '100014', 'Trendelenberg Test', '+ve', 'ss'),
(51, 'PRED_11', '100014', 'Compression / Distraction', '+ve', 'ss'),
(52, 'PRED_11', '100014', 'Other special test', '', 'ss'),
(53, 'PRED_11', '100015', 'Slump Test', '-ve', 'end'),
(54, 'PRED_11', '100015', 'Straight Leg Raise Test', '+ve', 'end'),
(55, 'PRED_11', '100015', 'Cram Test', '+ve', 'end'),
(56, 'PRED_11', '100015', 'Sign of the Buttock Test', '+ve', 'end'),
(57, 'PRED_11', '100015', 'Prone Knee Bending Test', '+ve', 'end'),
(58, 'PRED_11', '100015', 'Valsalvaâ€™s Maneuver Test', '-ve', 'end'),
(59, 'PRED_11', '100015', 'Segmental Instability Test', '-ve', 'end'),
(60, 'PRED_11', '100015', 'Anterior Lumbar Instability Test', '+ve', 'end'),
(61, 'PRED_11', '100015', 'One-legged Standing Lumbar Extension Test', '+ve', 'end'),
(62, 'PRED_11', '100015', 'Quadrant Test', '+ve', 'end'),
(63, 'PRED_11', '100015', 'Trendelenberg Test', '+ve', 'end'),
(64, 'PRED_11', '100015', 'Compression / Distraction', '+ve', 'end'),
(65, 'PRED_11', '100015', 'Other special test', '', 'end'),
(66, 'PRED_16', '100016', 'Slump Test', '+ve', '90'),
(67, 'PRED_16', '100016', 'Straight Leg Raise Test', '+ve', '90'),
(68, 'PRED_16', '100016', 'Cram Test', '+ve', '90'),
(69, 'PRED_16', '100016', 'Sign of the Buttock Test', '+ve', '90'),
(70, 'PRED_16', '100016', 'Prone Knee Bending Test', '+ve', '90'),
(71, 'PRED_16', '100016', 'Valsalvaâ€™s Maneuver Test', '+ve', '90'),
(72, 'PRED_16', '100016', 'Segmental Instability Test', '+ve', '90'),
(73, 'PRED_16', '100016', 'Anterior Lumbar Instability Test', '+ve', '90'),
(74, 'PRED_16', '100016', 'One-legged Standing Lumbar Extension Test', '+ve', '90'),
(75, 'PRED_16', '100016', 'Quadrant Test', '+ve', '90'),
(76, 'PRED_16', '100016', 'Trendelenberg Test', '+ve', '90'),
(77, 'PRED_16', '100016', 'Compression / Distraction', '+ve', '90'),
(78, 'PRED_16', '100016', 'Other special test', '', '90'),
(79, 'PRED_16', '100016', 'Slump Test', '+ve', '90'),
(80, 'PRED_16', '100016', 'Straight Leg Raise Test', '+ve', '90'),
(81, 'PRED_16', '100016', 'Cram Test', '+ve', '90'),
(82, 'PRED_16', '100016', 'Sign of the Buttock Test', '+ve', '90'),
(83, 'PRED_16', '100016', 'Prone Knee Bending Test', '+ve', '90'),
(84, 'PRED_16', '100016', 'Valsalvaâ€™s Maneuver Test', '+ve', '90'),
(85, 'PRED_16', '100016', 'Segmental Instability Test', '+ve', '90'),
(86, 'PRED_16', '100016', 'Anterior Lumbar Instability Test', '+ve', '90'),
(87, 'PRED_16', '100016', 'One-legged Standing Lumbar Extension Test', '+ve', '90'),
(88, 'PRED_16', '100016', 'Quadrant Test', '+ve', '90'),
(89, 'PRED_16', '100016', 'Trendelenberg Test', '+ve', '90'),
(90, 'PRED_16', '100016', 'Compression / Distraction', '+ve', '90'),
(91, 'PRED_16', '100016', 'Other special test', '', '90');

-- --------------------------------------------------------

--
-- Table structure for table `gait`
--

CREATE TABLE `gait` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `weight` varchar(2000) NOT NULL,
  `assistive` varchar(20005) NOT NULL,
  `assistance` varchar(2000) NOT NULL,
  `distance` varchar(2000) NOT NULL,
  `pro` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gait`
--

INSERT INTO `gait` (`id`, `num`, `rec`, `weight`, `assistive`, `assistance`, `distance`, `pro`) VALUES
(1, 'PRED_10', '100009', '', '', 'assis', 'prooo', ''),
(2, 'PRED_10', '100009', '', 'jjj', 'iol', 'prooo', 'www'),
(3, 'PRED_10', '100009', '', 'jjj', 'assis', 'prooo', 'www'),
(4, 'PRED_10', '100013', '', 'jjj', 'assis', 'prooo', 'www'),
(5, 'PRED_11', '100014', 'partial', 'efd', 'sef', 'ef', 'ef'),
(6, 'PRED_11', '100015', 'full', 'jjj', 'assis', 'prooo', 'www'),
(7, 'PRED_16', '100016', 'full', 'klmkl', 'assis', 'prooo', 'www'),
(8, 'PRED_16', '100016', '', '', '', '', ''),
(9, 'PRED_16', '100016', '', '', '', '', ''),
(10, 'PRED_16', '100016', '', '', '', '', ''),
(11, 'PRED_16', '100016', '', '', '', '', ''),
(12, 'PRED_16', '100016', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gait_2`
--

CREATE TABLE `gait_2` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `posture` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gait_2`
--

INSERT INTO `gait_2` (`id`, `num`, `rec`, `posture`) VALUES
(1, 'PRED_10', '100009', 'Decrease heel toe gait'),
(2, 'PRED_10', '100009', 'Decrease base of support'),
(3, 'PRED_10', '100009', 'Shuffling gait'),
(4, 'PRED_10', '100009', 'Waddling Cadence (Fast/Slow)'),
(5, 'PRED_10', '100009', 'Festinating'),
(6, 'PRED_10', '100009', ''),
(7, 'PRED_10', '100009', 'Decrease reciprocal arm swing'),
(8, 'PRED_10', '100009', 'Decrease base of support'),
(9, 'PRED_10', '100009', 'Waddling Cadence (Fast/Slow)'),
(10, 'PRED_10', '100009', 'Festinating'),
(11, 'PRED_10', '100009', ''),
(12, 'PRED_10', '100013', 'Decrease reciprocal arm swing'),
(13, 'PRED_10', '100013', 'Festinating'),
(14, 'PRED_10', '100013', ''),
(15, 'PRED_11', '100014', ''),
(16, 'PRED_11', '100015', 'Decrease heel toe gait'),
(17, 'PRED_11', '100015', 'Antalgic gait'),
(18, 'PRED_11', '100015', 'Shuffling gait'),
(19, 'PRED_11', '100015', ''),
(20, 'PRED_16', '100016', ''),
(21, 'PRED_16', '100016', ''),
(22, 'PRED_16', '100016', ''),
(23, 'PRED_16', '100016', ''),
(24, 'PRED_16', '100016', '');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `home` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `num`, `rec`, `home`) VALUES
(1, '', '', 'Cane'),
(2, '', '', 'Wheelchair'),
(3, '', '', 'Bath/Shower Seat'),
(4, '', '', ''),
(5, 'PRED_10', '100009', 'Walker'),
(6, 'PRED_10', '100009', 'Cane'),
(7, 'PRED_10', '100009', 'Wheelchair'),
(8, 'PRED_10', '100009', ''),
(9, 'PRED_10', '100009', 'Walker'),
(10, 'PRED_10', '100009', 'Cane'),
(11, 'PRED_10', '100009', 'Wheelchair'),
(12, 'PRED_10', '100009', ''),
(13, 'PRED_10', '100009', 'Walker'),
(14, 'PRED_10', '100009', 'Cane'),
(15, 'PRED_10', '100009', ''),
(16, 'PRED_10', '100009', 'Walker'),
(17, 'PRED_10', '100009', 'Cane'),
(18, 'PRED_10', '100009', 'Wheelchair'),
(19, 'PRED_10', '100009', ''),
(20, 'PRED_10', '100013', 'Cane'),
(21, 'PRED_10', '100013', 'Wheelchair'),
(22, 'PRED_10', '100013', ''),
(23, 'PRED_11', '100014', ''),
(24, 'PRED_11', '100014', 'Cane'),
(25, 'PRED_11', '100014', ''),
(26, 'PRED_11', '100015', 'Walker'),
(27, 'PRED_11', '100015', 'Cane'),
(28, 'PRED_11', '100015', 'Wheelchair'),
(29, 'PRED_11', '100015', ''),
(30, 'PRED_16', '100016', 'Walker'),
(31, 'PRED_16', '100016', '');

-- --------------------------------------------------------

--
-- Table structure for table `last`
--

CREATE TABLE `last` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `mobility` varchar(2000) NOT NULL,
  `Palpation` varchar(2000) NOT NULL,
  `Functional` varchar(2000) NOT NULL,
  `Sensation` varchar(2000) NOT NULL,
  `Treatment` varchar(2000) NOT NULL,
  `Response` varchar(2000) NOT NULL,
  `Asseesment` varchar(2000) NOT NULL,
  `Rehab` varchar(2000) NOT NULL,
  `Short_goal` varchar(2000) NOT NULL,
  `Long_goal` varchar(2000) NOT NULL,
  `frequency` varchar(2000) NOT NULL,
  `Duration` varchar(2000) NOT NULL,
  `Modalities` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `last`
--

INSERT INTO `last` (`id`, `num`, `rec`, `mobility`, `Palpation`, `Functional`, `Sensation`, `Treatment`, `Response`, `Asseesment`, `Rehab`, `Short_goal`, `Long_goal`, `frequency`, `Duration`, `Modalities`) VALUES
(1, 'PRED_10', '100009', 'scapular mobility', 'fff', 'action', '', 'cdsf ', 'not tolerated', 'assesment', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds'),
(2, 'PRED_10', '100009', 'scapular mobility', 'fff', 'aa', '', 'qw', 'complain', 'aaa', 'sds', 'goals', 'goals2', 'vvds', 'eegggggggggyyhjhjiokp;.mmjj', 'dfds'),
(3, 'PRED_10', '100013', 'scapular mobility', 'fff', 'hvbjm', '', 'jkn', 'complain', 'ihujkn', 'sds', 'goals', 'goals2', 'jm ', 'ee', 'dfds'),
(4, 'PRED_10', '100013', '', '2018-11-10', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'PRED_11', '100014', 'sd', 'sdf', '', '', 'sdf', 'well tolerated', '', 'aSD', 'aDFw', 'ad', 'AD', 'aD', 'ADF'),
(6, 'PRED_11', '100015', 'scapular mobility', 'fff', 'rg', '', 'cdsf ', 'not tolerated', 'ef', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds');

-- --------------------------------------------------------

--
-- Table structure for table `living`
--

CREATE TABLE `living` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `living` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `living`
--

INSERT INTO `living` (`id`, `num`, `rec`, `living`) VALUES
(1, '', '', 'Independent'),
(2, '', '', 'Unwilling to assist with program'),
(3, 'PRED_10', '100009', 'Independent'),
(4, 'PRED_10', '100009', 'Caregiver'),
(5, 'PRED_10', '100009', 'Able to assist with program'),
(6, 'PRED_10', '100009', 'Unwilling to assist with program'),
(7, 'PRED_10', '100009', 'Independent'),
(8, 'PRED_10', '100009', 'Unwilling to assist with program'),
(9, 'PRED_10', '100009', 'Independent'),
(10, 'PRED_10', '100009', 'Unwilling to assist with program'),
(11, 'PRED_10', '100009', 'Independent'),
(12, 'PRED_10', '100009', 'Unwilling to assist with program'),
(13, 'PRED_10', '100013', 'Able to assist with program'),
(14, 'PRED_10', '100013', 'Unwilling to assist with program'),
(15, 'PRED_11', '100014', 'Caregiver'),
(16, 'PRED_11', '100015', 'Independent'),
(17, 'PRED_11', '100015', 'Caregiver'),
(18, 'PRED_11', '100015', 'Able to assist with program'),
(19, 'PRED_11', '100015', 'Unwilling to assist with program'),
(20, 'PRED_16', '100016', 'Caregiver'),
(21, 'PRED_16', '100016', 'Unable to assist with program');

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `medical` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`id`, `num`, `rec`, `medical`) VALUES
(1, '', '', 'Cardiac'),
(2, '', '', 'Fractures'),
(3, '', '', 'Falls'),
(4, '', '', 'Other past medical history'),
(5, 'PRED_10', '100009', 'CVA'),
(6, 'PRED_10', '100009', 'Hypertension'),
(7, 'PRED_10', '100009', 'Cancer'),
(8, 'PRED_10', '100009', 'Osteoporosis'),
(9, 'PRED_10', '100009', ''),
(10, 'PRED_10', '100009', 'Cardiac'),
(11, 'PRED_10', '100009', 'NIDDM/IDDM'),
(12, 'PRED_10', '100009', 'Falls'),
(13, 'PRED_10', '100009', ''),
(14, 'PRED_10', '100009', 'CVA'),
(15, 'PRED_10', '100009', 'Hypertension'),
(16, 'PRED_10', '100009', ''),
(17, 'PRED_10', '100009', 'CVA'),
(18, 'PRED_10', '100009', 'Hypertension'),
(19, 'PRED_10', '100009', 'Falls'),
(20, 'PRED_10', '100009', 'Other past medical history'),
(21, 'PRED_10', '100013', 'CVA'),
(22, 'PRED_10', '100013', 'Hypertension'),
(23, 'PRED_10', '100013', ''),
(24, 'PRED_11', '100014', ''),
(25, 'PRED_11', '100014', 'NIDDM/IDDM'),
(26, 'PRED_11', '100014', ''),
(27, 'PRED_11', '100015', 'NIDDM/IDDM'),
(28, 'PRED_11', '100015', 'CVA'),
(29, 'PRED_11', '100015', 'Hypertension'),
(30, 'PRED_11', '100015', ''),
(31, 'PRED_16', '100016', 'CVA'),
(32, 'PRED_16', '100016', 'Hypertension'),
(33, 'PRED_16', '100016', 'Cancer'),
(34, 'PRED_16', '100016', '');

-- --------------------------------------------------------

--
-- Table structure for table `mobility`
--

CREATE TABLE `mobility` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `mobility` varchar(2000) NOT NULL,
  `Palpation` varchar(2000) NOT NULL,
  `Functional` varchar(2000) NOT NULL,
  `Sensation` varchar(2000) NOT NULL,
  `Treatment` varchar(2000) NOT NULL,
  `Response` varchar(2000) NOT NULL,
  `Asseesment` varchar(2000) NOT NULL,
  `Rehab` varchar(2000) NOT NULL,
  `Short_goal` varchar(2000) NOT NULL,
  `Long_goal` varchar(2000) NOT NULL,
  `frequency` varchar(2000) NOT NULL,
  `Duration` varchar(2000) NOT NULL,
  `Modalities` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobility`
--

INSERT INTO `mobility` (`id`, `num`, `rec`, `mobility`, `Palpation`, `Functional`, `Sensation`, `Treatment`, `Response`, `Asseesment`, `Rehab`, `Short_goal`, `Long_goal`, `frequency`, `Duration`, `Modalities`) VALUES
(1, '', '', 'scapular mobility', 'fff', 'jkglfsnlifgn', '', 'cdsf ', 'not tolerated', 'fdsd', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds'),
(2, 'PRED_10', '100009', 'scapular mobility', 'fff', 'jknjjk', '', 'cdsf ', 'not tolerated', 'svvdfea', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds'),
(3, 'PRED_10', '100009', 'scapular mobility', 'fff', 'fff', '', 'hh', 'complain', 'aaa', 'sds', 'goals', 'goals2', 'vvds', 'eegggggggggyyhjhjiokp;.mmjj', 'dfds'),
(4, 'PRED_10', '100013', 'scapular mobility', 'fff', 'ijnk', '', 'cdsf ', 'not tolerated', 'iuhjkn', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds'),
(5, 'PRED_11', '100014', 'sfdsf', 'fs', '', '', 'sdf', 'well tolerated', '', 'wf', 'fsev', 'rvf', 'vra', 'avr', 'vwa'),
(6, 'PRED_11', '100015', 'scapular mobility', 'fff', 'et', '', 'cdsf ', 'not tolerated', 'sfd', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds'),
(7, 'PRED_16', '100016', 'scapular mobility', 'fff', 'fsv', '', 'cdsf ', 'not tolerated', 'fz', 'sdz', 'sd', 'sdz', 'sd', 'sd', 'sd'),
(8, 'PRED_16', '100016', 'scapular mobility', 'fff', 'hjbjh', '', 'cdsf ', 'complain', 'sdvsa', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds');

-- --------------------------------------------------------

--
-- Table structure for table `mobility_2`
--

CREATE TABLE `mobility_2` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `test` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `comments` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobility_2`
--

INSERT INTO `mobility_2` (`id`, `num`, `rec`, `test`, `answer`, `comments`) VALUES
(1, 'PRED_10', '100009', 'Rolling', 'Minimal assistance', 'comments goes here'),
(2, 'PRED_10', '100009', 'Scooting', 'independent', 'comments goes here'),
(3, 'PRED_10', '100009', 'Supine to Sit', 'contact guard assist', 'comments goes here'),
(4, 'PRED_10', '100009', 'Sit to Stand', 'moderate assistance', 'comments goes here'),
(5, 'PRED_10', '100009', 'Wheel Chair use', 'contact guard assist', 'comments goes here'),
(6, 'PRED_10', '100009', 'Other Deviations', 'other here', 'comments goes here'),
(7, 'PRED_10', '100009', 'Static standing', 'BAD', 'comments goes here'),
(8, 'PRED_10', '100009', 'Static sitting', 'FAIR', 'comments goes here'),
(9, 'PRED_10', '100009', 'Dynamic standing', 'GOOD', 'comments goes here'),
(10, 'PRED_10', '100009', 'Dynamic sitting', 'GOOD', 'comments goes here'),
(11, 'PRED_10', '100009', 'Functional Reach', 'FAIR', 'comments goes here'),
(12, 'PRED_10', '100009', 'Single leg balance', 'FAIR', 'comments goes here'),
(13, 'PRED_10', '100009', 'Romberg test', 'GOOD', 'comments goes here'),
(14, 'PRED_10', '100009', 'other', '3', 'comments goes here'),
(15, 'PRED_10', '100009', 'Rolling', 'Minimal assistance', 'aaa'),
(16, 'PRED_10', '100009', 'Scooting', 'contact guard assist', 'aaa'),
(17, 'PRED_10', '100009', 'Supine to Sit', 'standby assist', 'aaa'),
(18, 'PRED_10', '100009', 'Sit to Stand', 'contact guard assist', 'aaa'),
(19, 'PRED_10', '100009', 'Wheel Chair use', 'Minimal assistance', 'aaa'),
(20, 'PRED_10', '100009', 'Other Deviations', 'other here', 'aaa'),
(21, 'PRED_10', '100009', 'Static standing', 'GOOD', 'aaa'),
(22, 'PRED_10', '100009', 'Static sitting', 'GOOD', 'aaa'),
(23, 'PRED_10', '100009', 'Dynamic standing', 'GOOD', 'aaa'),
(24, 'PRED_10', '100009', 'Dynamic sitting', 'BAD', 'aaa'),
(25, 'PRED_10', '100009', 'Functional Reach', 'BAD', 'aaa'),
(26, 'PRED_10', '100009', 'Single leg balance', 'GOOD', 'aaa'),
(27, 'PRED_10', '100009', 'Romberg test', 'GOOD', 'aaa'),
(28, 'PRED_10', '100009', 'other', '', 'aaa'),
(29, 'PRED_10', '100013', 'Rolling', 'standby assist', ''),
(30, 'PRED_10', '100013', 'Scooting', 'contact guard assist', ''),
(31, 'PRED_10', '100013', 'Supine to Sit', 'independent', ''),
(32, 'PRED_10', '100013', 'Sit to Stand', 'Minimal assistance', ''),
(33, 'PRED_10', '100013', 'Wheel Chair use', 'independent', ''),
(34, 'PRED_10', '100013', 'Other Deviations', 'other here', ''),
(35, 'PRED_10', '100013', 'Static standing', 'FAIR', ''),
(36, 'PRED_10', '100013', 'Static sitting', 'GOOD', ''),
(37, 'PRED_10', '100013', 'Dynamic standing', 'BAD', ''),
(38, 'PRED_10', '100013', 'Dynamic sitting', 'GOOD', ''),
(39, 'PRED_10', '100013', 'Functional Reach', 'FAIR', ''),
(40, 'PRED_10', '100013', 'Single leg balance', 'GOOD', ''),
(41, 'PRED_10', '100013', 'Romberg test', 'FAIR', ''),
(42, 'PRED_10', '100013', 'other', 'other here', ''),
(43, 'PRED_11', '100014', 'Rolling', 'independent', 'sfd'),
(44, 'PRED_11', '100014', 'Scooting', 'independent', 'sfd'),
(45, 'PRED_11', '100014', 'Supine to Sit', 'independent', 'sfd'),
(46, 'PRED_11', '100014', 'Sit to Stand', 'independent', 'sfd'),
(47, 'PRED_11', '100014', 'Wheel Chair use', 'independent', 'sfd'),
(48, 'PRED_11', '100014', 'Other Deviations', '', 'sfd'),
(49, 'PRED_11', '100014', 'Static standing', 'GOOD', 'sfd'),
(50, 'PRED_11', '100014', 'Static sitting', 'GOOD', 'sfd'),
(51, 'PRED_11', '100014', 'Dynamic standing', 'GOOD', 'sfd'),
(52, 'PRED_11', '100014', 'Dynamic sitting', 'GOOD', 'sfd'),
(53, 'PRED_11', '100014', 'Functional Reach', 'GOOD', 'sfd'),
(54, 'PRED_11', '100014', 'Single leg balance', 'GOOD', 'sfd'),
(55, 'PRED_11', '100014', 'Romberg test', 'GOOD', 'sfd'),
(56, 'PRED_11', '100014', 'other', '', 'sfd'),
(57, 'PRED_11', '100015', 'Rolling', 'standby assist', 'jhgb'),
(58, 'PRED_11', '100015', 'Scooting', 'contact guard assist', 'jhgb'),
(59, 'PRED_11', '100015', 'Supine to Sit', 'contact guard assist', 'jhgb'),
(60, 'PRED_11', '100015', 'Sit to Stand', 'moderate assistance', 'jhgb'),
(61, 'PRED_11', '100015', 'Wheel Chair use', 'maximum assistance', 'jhgb'),
(62, 'PRED_11', '100015', 'Other Deviations', 'other here', 'jhgb'),
(63, 'PRED_11', '100015', 'Static standing', 'FAIR', 'jhgb'),
(64, 'PRED_11', '100015', 'Static sitting', 'GOOD', 'jhgb'),
(65, 'PRED_11', '100015', 'Dynamic standing', 'GOOD', 'jhgb'),
(66, 'PRED_11', '100015', 'Dynamic sitting', 'GOOD', 'jhgb'),
(67, 'PRED_11', '100015', 'Functional Reach', 'FAIR', 'jhgb'),
(68, 'PRED_11', '100015', 'Single leg balance', 'BAD', 'jhgb'),
(69, 'PRED_11', '100015', 'Romberg test', 'GOOD', 'jhgb'),
(70, 'PRED_11', '100015', 'other', 'other here', 'jhgb'),
(71, 'PRED_16', '100016', 'Rolling', 'independent', ''),
(72, 'PRED_16', '100016', 'Scooting', 'independent', ''),
(73, 'PRED_16', '100016', 'Supine to Sit', 'independent', ''),
(74, 'PRED_16', '100016', 'Sit to Stand', 'independent', ''),
(75, 'PRED_16', '100016', 'Wheel Chair use', 'independent', ''),
(76, 'PRED_16', '100016', 'Other Deviations', '', ''),
(77, 'PRED_16', '100016', 'Static standing', 'GOOD', ''),
(78, 'PRED_16', '100016', 'Static sitting', 'GOOD', ''),
(79, 'PRED_16', '100016', 'Dynamic standing', 'GOOD', ''),
(80, 'PRED_16', '100016', 'Dynamic sitting', 'GOOD', ''),
(81, 'PRED_16', '100016', 'Functional Reach', 'GOOD', ''),
(82, 'PRED_16', '100016', 'Single leg balance', 'GOOD', ''),
(83, 'PRED_16', '100016', 'Romberg test', 'GOOD', ''),
(84, 'PRED_16', '100016', 'other', '', ''),
(85, 'PRED_16', '100016', 'Rolling', 'independent', ''),
(86, 'PRED_16', '100016', 'Scooting', 'independent', ''),
(87, 'PRED_16', '100016', 'Supine to Sit', 'independent', ''),
(88, 'PRED_16', '100016', 'Sit to Stand', 'independent', ''),
(89, 'PRED_16', '100016', 'Wheel Chair use', 'independent', ''),
(90, 'PRED_16', '100016', 'Other Deviations', '', ''),
(91, 'PRED_16', '100016', 'Static standing', 'GOOD', ''),
(92, 'PRED_16', '100016', 'Static sitting', 'GOOD', ''),
(93, 'PRED_16', '100016', 'Dynamic standing', 'GOOD', ''),
(94, 'PRED_16', '100016', 'Dynamic sitting', 'GOOD', ''),
(95, 'PRED_16', '100016', 'Functional Reach', 'GOOD', ''),
(96, 'PRED_16', '100016', 'Single leg balance', 'GOOD', ''),
(97, 'PRED_16', '100016', 'Romberg test', 'GOOD', ''),
(98, 'PRED_16', '100016', 'other', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posture`
--

CREATE TABLE `posture` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `mobility` varchar(2000) NOT NULL,
  `Neurological` varchar(2000) NOT NULL,
  `Paresthesias` varchar(2000) NOT NULL,
  `Sensation` varchar(2000) NOT NULL,
  `Proprioception` varchar(2000) NOT NULL,
  `tone` varchar(2000) NOT NULL,
  `Reflexes` varchar(2000) NOT NULL,
  `other` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posture`
--

INSERT INTO `posture` (`id`, `num`, `rec`, `mobility`, `Neurological`, `Paresthesias`, `Sensation`, `Proprioception`, `tone`, `Reflexes`, `other`) VALUES
(1, 'PRED_10', '100009', 'scapular mobility', 'neurological', 'parenthesis', 'sensation', 'proprioception', 'hypotonic', 'reflex', 'other'),
(2, 'PRED_10', '100009', 'scapular mobility', 'neurological', 'parenthesis', 'sensation', 'proprioception', 'hypotonic', 'reflex', 'other'),
(3, 'PRED_10', '100009', 'scapular mobility', 'neurological', 'parenthesis', 'sensation', 'proprioception', 'hypotonic', 'reflex', 'other'),
(4, 'PRED_10', '100013', 'scapular mobility', 'neurological', 'parenthesis', 'sensation', 'proprioception', 'normal tonic', 'reflex', 'other'),
(5, 'PRED_11', '100014', 'sdf', 'sd', 'sd', 'sda', 'sd', 'hypertonic', 'asd', 'ads'),
(6, 'PRED_11', '100015', 'scapular mobility', 'neurological', 'parenthesis', 'sensation', 'proprioception', 'normal tonic', 'reflex', 'other'),
(7, 'PRED_16', '100016', 'scapular mobility', 'neurological', 'parenthesis', 'sensation', 'proprioception', 'normal tonic', 'reflex', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `posture_2`
--

CREATE TABLE `posture_2` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `posture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posture_2`
--

INSERT INTO `posture_2` (`id`, `num`, `rec`, `posture`) VALUES
(1, 'PRED_10', '100009', 'No Abnormality'),
(2, 'PRED_10', '100009', 'Scoliosis'),
(3, 'PRED_10', '100009', 'Discrepancy'),
(4, 'PRED_10', '100009', ''),
(5, 'PRED_10', '100009', 'Genu Valgum/Varus/Recurvatum'),
(6, 'PRED_10', '100009', 'Leg Length'),
(7, 'PRED_10', '100009', 'Discrepancy'),
(8, 'PRED_10', '100009', 'Lordosis'),
(9, 'PRED_10', '100009', ''),
(10, 'PRED_10', '100009', 'Forward Head'),
(11, 'PRED_10', '100009', 'Scoliosis'),
(12, 'PRED_10', '100009', 'Leg Length'),
(13, 'PRED_10', '100009', 'Discrepancy'),
(14, 'PRED_10', '100009', ''),
(15, 'PRED_10', '100013', 'Genu Valgum/Varus/Recurvatum'),
(16, 'PRED_10', '100013', 'Discrepancy'),
(17, 'PRED_10', '100013', ''),
(18, 'PRED_11', '100014', 'Genu Valgum/Varus/Recurvatum'),
(19, 'PRED_11', '100014', ''),
(20, 'PRED_11', '100015', 'Genu Valgum/Varus/Recurvatum'),
(21, 'PRED_11', '100015', 'Leg Length'),
(22, 'PRED_11', '100015', 'Discrepancy'),
(23, 'PRED_11', '100015', ''),
(24, 'PRED_16', '100016', 'Genu Valgum/Varus/Recurvatum'),
(25, 'PRED_16', '100016', 'Leg Length'),
(26, 'PRED_16', '100016', '');

-- --------------------------------------------------------

--
-- Table structure for table `posture_3`
--

CREATE TABLE `posture_3` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `posture` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posture_3`
--

INSERT INTO `posture_3` (`id`, `num`, `rec`, `posture`) VALUES
(1, '', '', 'Genu Valgum/Varus/Recurvatum'),
(2, '', '', 'Discrepancy'),
(3, '', '', ''),
(4, 'PRED_10', '100009', 'Forward Head'),
(5, 'PRED_10', '100009', 'Genu Valgum/Varus/Recurvatum'),
(6, 'PRED_10', '100009', 'Leg Length'),
(7, 'PRED_10', '100009', 'Discrepancy'),
(8, 'PRED_10', '100009', ''),
(9, 'PRED_10', '100009', 'Genu Valgum/Varus/Recurvatum'),
(10, 'PRED_10', '100009', 'Discrepancy'),
(11, 'PRED_10', '100009', ''),
(12, 'PRED_10', '100013', 'Genu Valgum/Varus/Recurvatum'),
(13, 'PRED_10', '100013', 'Discrepancy'),
(14, 'PRED_10', '100013', ''),
(15, 'PRED_11', '100014', 'Genu Valgum/Varus/Recurvatum'),
(16, 'PRED_11', '100014', ''),
(17, 'PRED_11', '100015', 'Forward Head'),
(18, 'PRED_11', '100015', 'Scoliosis'),
(19, 'PRED_11', '100015', 'Leg Length'),
(20, 'PRED_11', '100015', 'Discrepancy'),
(21, 'PRED_11', '100015', ''),
(22, 'PRED_16', '100016', 'Genu Valgum/Varus/Recurvatum'),
(23, 'PRED_16', '100016', 'Leg Length'),
(24, 'PRED_16', '100016', 'Discrepancy'),
(25, 'PRED_16', '100016', ''),
(26, 'PRED_16', '100016', 'Genu Valgum/Varus/Recurvatum'),
(27, 'PRED_16', '100016', 'Leg Length'),
(28, 'PRED_16', '100016', 'Discrepancy'),
(29, 'PRED_16', '100016', '');

-- --------------------------------------------------------

--
-- Table structure for table `precautions`
--

CREATE TABLE `precautions` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `precautions` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `precautions`
--

INSERT INTO `precautions` (`id`, `num`, `rec`, `precautions`) VALUES
(1, '', '', 'Use Gait Belt'),
(2, '', '', 'Contracture'),
(3, '', '', 'Bowel/Bladder'),
(4, '', '', 'Endurance'),
(5, '', '', ''),
(6, 'PRED_10', '100009', 'Use Gait Belt'),
(7, 'PRED_10', '100009', 'Fall Precautions'),
(8, 'PRED_10', '100009', 'THR Precautions'),
(9, 'PRED_10', '100009', 'Other Functional Limitations'),
(10, 'PRED_10', '100009', 'Amputation'),
(11, 'PRED_10', '100009', 'Hearing'),
(12, 'PRED_10', '100009', 'Contracture'),
(13, 'PRED_10', '100009', 'Bowel/Bladder'),
(14, 'PRED_10', '100009', 'Endurance'),
(15, 'PRED_10', '100009', ''),
(16, 'PRED_10', '100009', 'Use Gait Belt'),
(17, 'PRED_10', '100009', 'Other Functional Limitations'),
(18, 'PRED_10', '100009', ''),
(19, 'PRED_10', '100009', 'THR Precautions'),
(20, 'PRED_10', '100009', 'Amputation'),
(21, 'PRED_10', '100009', 'Hearing'),
(22, 'PRED_10', '100009', 'Endurance'),
(23, 'PRED_10', '100009', ''),
(24, 'PRED_10', '100009', 'Other Functional Limitations'),
(25, 'PRED_10', '100009', 'Amputation'),
(26, 'PRED_10', '100009', 'Contracture'),
(27, 'PRED_10', '100009', 'Bowel/Bladder'),
(28, 'PRED_10', '100009', 'Endurance'),
(29, 'PRED_10', '100009', ''),
(30, 'PRED_10', '100013', 'Hearing'),
(31, 'PRED_10', '100013', 'Ambulation'),
(32, 'PRED_10', '100013', ''),
(33, 'PRED_11', '100014', ''),
(34, 'PRED_11', '100014', 'Fall Precautions'),
(35, 'PRED_11', '100014', ''),
(36, 'PRED_11', '100015', 'THR Precautions'),
(37, 'PRED_11', '100015', 'Amputation'),
(38, 'PRED_11', '100015', 'Hearing'),
(39, 'PRED_11', '100015', 'Bowel/Bladder'),
(40, 'PRED_11', '100015', 'Endurance'),
(41, 'PRED_11', '100015', ''),
(42, 'PRED_16', '100016', '');

-- --------------------------------------------------------

--
-- Table structure for table `range_1`
--

CREATE TABLE `range_1` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(10000) NOT NULL,
  `carom` varchar(1000) NOT NULL,
  `cprom` varchar(10000) NOT NULL,
  `cend` varchar(1000) NOT NULL,
  `tarom` varchar(1000) NOT NULL,
  `tprom` varchar(1000) NOT NULL,
  `tend` varchar(2000) NOT NULL,
  `comments` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `range_1`
--

INSERT INTO `range_1` (`id`, `num`, `rec`, `issue`, `carom`, `cprom`, `cend`, `tarom`, `tprom`, `tend`, `comments`) VALUES
(1, 'PRED_10', '100009', 'Flexion', 'aa', 'cc', 'ss', 'ww', 'dd', 'vv', 'hhhh'),
(2, 'PRED_10', '100009', 'Extension', 'cc', 'vv', 'bb', 'xx', 'aa', 'dd', 'hhhh'),
(3, 'PRED_10', '100009', 'L Side Bend', 'we', 'dc', 'ee', 're', 'qq', 'as', 'hhhh'),
(4, 'PRED_10', '100009', 'R Side Bend', 'xx', 'cd', 'vv', 'mn', 'vv', 'xs', 'hhhh'),
(5, 'PRED_10', '100009', 'L Rotation', 'aa', 'ww', 'qw', 'fv', 'gg', 'ee', 'hhhh'),
(6, 'PRED_10', '100009', 'R Rotation', 'aw', 'ed', 'er', 'ee', 'dd', 'dd', 'hhhh'),
(7, 'PRED_10', '100009', 'Flexion', 'aa', 'cc', 'ghn', 'ed', 'vfg', 'km', 'gggg'),
(8, 'PRED_10', '100009', 'Extension', 'aa', 'ghjg', 'ss', 'ed', 'ws', 'km', 'gggg'),
(9, 'PRED_10', '100009', 'L Side Bend', 'aa', 'cc', 'ghn', 'ed', 'dd', 'km', 'gggg'),
(10, 'PRED_10', '100009', 'R Side Bend', 'aa', 'cc', 'ghn', 'ed', 'ws', 'gg', 'gggg'),
(11, 'PRED_10', '100009', 'L Rotation', 'aa', 'ghjg', 'ghn', 'ww', 'vfg', 'vv', 'gggg'),
(12, 'PRED_10', '100009', 'R Rotation', 'aa', 'rr', 'ss', 'edsw', 'ws', 'vv', 'gggg'),
(13, 'PRED_10', '100009', 'Flexion', 'aa', 'cc', 'ss', 'ed', 'dd', 'km', ''),
(14, 'PRED_10', '100009', 'Extension', '', '', '', 'ww', 'vfg', 'km', ''),
(15, 'PRED_10', '100009', 'L Side Bend', '', '', 'ss', '', '', '', ''),
(16, 'PRED_10', '100009', 'R Side Bend', '', 'cc', '', '', '', '', ''),
(17, 'PRED_10', '100009', 'L Rotation', '', '', 'ss', '', '', '', ''),
(18, 'PRED_10', '100009', 'R Rotation', '', '', '', '', '', '', ''),
(19, 'PRED_10', '100013', 'Flexion', '', 'cc', '', '', '', '', ''),
(20, 'PRED_10', '100013', 'Extension', '', '', 'ss', '', '', '', ''),
(21, 'PRED_10', '100013', 'L Side Bend', '', '', '', '', '', '', ''),
(22, 'PRED_10', '100013', 'R Side Bend', '', '', '', '', '', '', ''),
(23, 'PRED_10', '100013', 'L Rotation', '', '', '', 'ed', '', '', ''),
(24, 'PRED_10', '100013', 'R Rotation', '', '', '', '', '', '', ''),
(25, 'PRED_11', '100014', 'Flexion', '', '', '', '', '', '', ''),
(26, 'PRED_11', '100014', 'Extension', '', '', '', '', '', '', ''),
(27, 'PRED_11', '100014', 'L Side Bend', '', '', '', '', '', '', ''),
(28, 'PRED_11', '100014', 'R Side Bend', '', '', '', '', '', '', ''),
(29, 'PRED_11', '100014', 'L Rotation', '', '', '', '', '', '', ''),
(30, 'PRED_11', '100014', 'R Rotation', '', '', '', '', '', '', ''),
(31, 'PRED_11', '100015', 'Flexion', 'aa', '', '', '', '', '', ''),
(32, 'PRED_11', '100015', 'Extension', '', 'cc', '', '', '', '', ''),
(33, 'PRED_11', '100015', 'L Side Bend', '', '', '', '', '', '', ''),
(34, 'PRED_11', '100015', 'R Side Bend', '', '', '', 'ed', '', '', ''),
(35, 'PRED_11', '100015', 'L Rotation', '', '', '', '', 'dd', '', ''),
(36, 'PRED_11', '100015', 'R Rotation', '', '', 'ss', '', '', '', ''),
(37, 'PRED_16', '100016', 'Flexion', '', '', '', '', '', '', ''),
(38, 'PRED_16', '100016', 'Extension', '', '', '', '', '', '', ''),
(39, 'PRED_16', '100016', 'L Side Bend', '', '', '', '', '', '', ''),
(40, 'PRED_16', '100016', 'R Side Bend', '', '', '', '', '', '', ''),
(41, 'PRED_16', '100016', 'L Rotation', '', '', '', '', '', '', ''),
(42, 'PRED_16', '100016', 'R Rotation', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `range_2`
--

CREATE TABLE `range_2` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(10000) NOT NULL,
  `carom` varchar(1000) NOT NULL,
  `cprom` varchar(10000) NOT NULL,
  `cend` varchar(1000) NOT NULL,
  `tarom` varchar(1000) NOT NULL,
  `tprom` varchar(1000) NOT NULL,
  `tend` varchar(2000) NOT NULL,
  `comments` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `range_2`
--

INSERT INTO `range_2` (`id`, `num`, `rec`, `issue`, `carom`, `cprom`, `cend`, `tarom`, `tprom`, `tend`, `comments`) VALUES
(1, 'PRED_10', '100009', 'Flexion', 'aa', 'rr', 'ghn', 'ed', 'ws', 'km', 'Other comments here'),
(2, 'PRED_10', '100009', 'Extension', 'we', 'vb', 'dc', 'er', 'dc', 'se', 'Other comments here'),
(3, 'PRED_10', '100009', 'Abduction', 'we', 'aw', 'er', 'km', 'hj', 'fr', 'Other comments here'),
(4, 'PRED_10', '100009', 'Adduction', 'sed', 'cf', 'vfg', 'dse', 'lok', 'drf', 'Other comments here'),
(5, 'PRED_10', '100009', 'IR', 'dcf', ' vrs', 'esd', 'wes', 'sdx', 'dc', 'Other comments here'),
(6, 'PRED_10', '100009', 'ER', 'swd', 'cdf', 'vb', 'bg', 'de', 'vf', 'Other comments here'),
(7, 'PRED_10', '100009', 'Elbow Flexion', 'swe', 'cdf', 'vfgb', 'erf', 'dsc', 'cvfd', 'Other comments here'),
(8, 'PRED_10', '100009', 'Elbow Extension', 'wsed', 'asx', 'xcd', 'vfc', 'vbg', 'nhm', 'Other comments here'),
(9, 'PRED_10', '100009', 'Wrist Flexion', 'sed', 'cdx', 'asz', 'cdf', 'ed', 'sd', 'Other comments here'),
(10, 'PRED_10', '100009', 'Wrist Extension', 'bg', 'lo', 'km', 'frd', 'hj', 'fv', 'Other comments here'),
(11, 'PRED_10', '100009', 'Flexion', 'aa', 'rr', 'ghn', 'ed', 'vfg', 'km', 'nmlkl.'),
(12, 'PRED_10', '100009', 'Extension', 'aa', 'rr', 'ghn', 'ed', 'vfg', 'km', 'nmlkl.'),
(13, 'PRED_10', '100009', 'Abduction', 'aa', 'rr', 'ghn', 'ed', 'dd', 'km', 'nmlkl.'),
(14, 'PRED_10', '100009', 'Adduction', 'aa', 'rr', 'erf', 'ww', 'vfg', 'km', 'nmlkl.'),
(15, 'PRED_10', '100009', 'IR', 'aa', 'cc', 'ghn', 'ed', 'dd', 'vv', 'nmlkl.'),
(16, 'PRED_10', '100009', 'ER', 'aa', 'rr', 'ghn', 'ww', 'vfg', 'km', 'nmlkl.'),
(17, 'PRED_10', '100009', 'Elbow Flexion', 'aa', 'rr', 'ss', 'ed', 'vfg', 'vv', 'nmlkl.'),
(18, 'PRED_10', '100009', 'Elbow Extension', 'aa', 'cc', 'ghn', 'ww', 'vfg', 'km', 'nmlkl.'),
(19, 'PRED_10', '100009', 'Wrist Flexion', 'aa', 'rr', 'ghn', 'ww', 'dd', 'vv', 'nmlkl.'),
(20, 'PRED_10', '100009', 'Wrist Extension', 'aa', 'cc', 'ghn', 'ed', 'dd', 'vv', 'nmlkl.'),
(21, 'PRED_10', '100009', 'Flexion', '', '', '', '', '', '', ''),
(22, 'PRED_10', '100009', 'Extension', '', '', '', '', '', '', ''),
(23, 'PRED_10', '100009', 'Abduction', '', '', '', 'ed', '', '', ''),
(24, 'PRED_10', '100009', 'Adduction', 'aa', '', '', '', 'vfg', '', ''),
(25, 'PRED_10', '100009', 'IR', '', 'rr', '', '', '', '', ''),
(26, 'PRED_10', '100009', 'ER', '', '', '', '', '', 'vv', ''),
(27, 'PRED_10', '100009', 'Elbow Flexion', '', '', '', '', '', 'vv', ''),
(28, 'PRED_10', '100009', 'Elbow Extension', '', '', '', '', 'vfg', '', ''),
(29, 'PRED_10', '100009', 'Wrist Flexion', '', '', '', '', '', '', ''),
(30, 'PRED_10', '100009', 'Wrist Extension', '', '', '', 'ww', '', '', ''),
(31, 'PRED_10', '100013', 'Flexion', '', 'rr', '', '', '', '', ''),
(32, 'PRED_10', '100013', 'Extension', '', '', '', '', '', '', ''),
(33, 'PRED_10', '100013', 'Abduction', 'aa', '', '', '', '', '', ''),
(34, 'PRED_10', '100013', 'Adduction', '', '', '', '', '', '', ''),
(35, 'PRED_10', '100013', 'IR', 'aa', '', '', '', '', '', ''),
(36, 'PRED_10', '100013', 'ER', '', '', '', '', '', '', ''),
(37, 'PRED_10', '100013', 'Elbow Flexion', '', '', '', '', '', '', ''),
(38, 'PRED_10', '100013', 'Elbow Extension', '', '', '', '', '', '', ''),
(39, 'PRED_10', '100013', 'Wrist Flexion', '', '', '', '', '', '', ''),
(40, 'PRED_10', '100013', 'Wrist Extension', '', '', '', '', '', '', ''),
(41, 'PRED_11', '100014', 'Flexion', '', '', '', '', '', '', ''),
(42, 'PRED_11', '100014', 'Extension', '', '', '', '', '', '', ''),
(43, 'PRED_11', '100014', 'Abduction', '', '', '', '', '', '', ''),
(44, 'PRED_11', '100014', 'Adduction', '', '', '', '', '', '', ''),
(45, 'PRED_11', '100014', 'IR', '', '', '', '', '', '', ''),
(46, 'PRED_11', '100014', 'ER', '', '', '', '', '', '', ''),
(47, 'PRED_11', '100014', 'Elbow Flexion', '', '', '', '', '', '', ''),
(48, 'PRED_11', '100014', 'Elbow Extension', '', '', '', '', '', '', ''),
(49, 'PRED_11', '100014', 'Wrist Flexion', '', '', '', '', '', '', ''),
(50, 'PRED_11', '100014', 'Wrist Extension', '', '', '', '', '', '', ''),
(51, 'PRED_11', '100015', 'Flexion', 'aa', '', '', '', '', '', 'comments for ROM here'),
(52, 'PRED_11', '100015', 'Extension', '', '', '', '', '', '', 'comments for ROM here'),
(53, 'PRED_11', '100015', 'Abduction', '', '', 'ss', '', '', '', 'comments for ROM here'),
(54, 'PRED_11', '100015', 'Adduction', '', '', '', '', '', '', 'comments for ROM here'),
(55, 'PRED_11', '100015', 'IR', '', '', '', 'ww', '', '', 'comments for ROM here'),
(56, 'PRED_11', '100015', 'ER', '', 'rr', 'ghn', '', '', '', 'comments for ROM here'),
(57, 'PRED_11', '100015', 'Elbow Flexion', 'aa', '', '', '', '', '', 'comments for ROM here'),
(58, 'PRED_11', '100015', 'Elbow Extension', '', 'cc', '', 'ed', '', '', 'comments for ROM here'),
(59, 'PRED_11', '100015', 'Wrist Flexion', '', '', 'ss', '', '', '', 'comments for ROM here'),
(60, 'PRED_11', '100015', 'Wrist Extension', '', 'cc', 'ss', '', '', '', 'comments for ROM here'),
(61, 'PRED_16', '100016', 'Flexion', '', '', '', '', '', '', ''),
(62, 'PRED_16', '100016', 'Extension', '', '', '', '', '', '', ''),
(63, 'PRED_16', '100016', 'Abduction', '', '', '', '', '', '', ''),
(64, 'PRED_16', '100016', 'Adduction', '', '', '', '', '', '', ''),
(65, 'PRED_16', '100016', 'IR', '', '', '', '', '', '', ''),
(66, 'PRED_16', '100016', 'ER', '', '', '', '', '', '', ''),
(67, 'PRED_16', '100016', 'Elbow Flexion', '', '', '', '', '', '', ''),
(68, 'PRED_16', '100016', 'Elbow Extension', '', '', '', '', '', '', ''),
(69, 'PRED_16', '100016', 'Wrist Flexion', '', '', '', '', '', '', ''),
(70, 'PRED_16', '100016', 'Wrist Extension', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `range_3`
--

CREATE TABLE `range_3` (
  `id` int(255) NOT NULL,
  `num` varchar(2000) NOT NULL,
  `rec` varchar(2000) NOT NULL,
  `issue` varchar(10000) NOT NULL,
  `carom` varchar(1000) NOT NULL,
  `cprom` varchar(10000) NOT NULL,
  `cend` varchar(1000) NOT NULL,
  `tarom` varchar(1000) NOT NULL,
  `tprom` varchar(1000) NOT NULL,
  `tend` varchar(2000) NOT NULL,
  `comments` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `range_3`
--

INSERT INTO `range_3` (`id`, `num`, `rec`, `issue`, `carom`, `cprom`, `cend`, `tarom`, `tprom`, `tend`, `comments`) VALUES
(1, 'PRED_10', '100009', 'Flexion', 'aa', 'ghjg', 'erf', 'edsw', 'vfg', 'gg', 'The place for other comments'),
(2, 'PRED_10', '100009', 'Extension', 'sc', 'vf', 'dc', 'fv', 'lo', 'mm', 'The place for other comments'),
(3, 'PRED_10', '100009', 'Abduction', 'we', 'cf', 'vf', 'vb', 'de', 'cd', 'The place for other comments'),
(4, 'PRED_10', '100009', 'Adduction', 'awq', 'aa', 'dc', 'es', 'fd', 'de', 'The place for other comments'),
(5, 'PRED_10', '100009', 'IR', 'xz', 'xc', 'cc', 'nj', 'vf', 'ss', 'The place for other comments'),
(6, 'PRED_10', '100009', 'ER', 'as', 'ws', 'cc', 'xc', 'xz', 'cv', 'The place for other comments'),
(7, 'PRED_10', '100009', 'Knee Flexion', 'cc', 'mn', 'vb', 'cx', 'aa', 'nm', 'The place for other comments'),
(8, 'PRED_10', '100009', 'Knee Extension', 'dx', 'ss', 'az', 'xc', 'aw', 'cd', 'The place for other comments'),
(9, 'PRED_10', '100009', 'Ankle Flexion', 'xc', 'cv', 'vb', 'bg', 'ee', 'bb', 'The place for other comments'),
(10, 'PRED_10', '100009', 'Ankle Extension', 'cd', 'vv', 'vc', 'mn', 'vb', 'vf', 'The place for other comments'),
(11, 'PRED_10', '100009', 'Ankle Inversion', 'ed', 'we', 'dd', 'cv', 'sx', 'cc', 'The place for other comments'),
(12, 'PRED_10', '100009', 'Ankle Eversion', 'vf', 'nn', 'lo', 'er', 'ng', 'fv', 'The place for other comments'),
(13, 'PRED_10', '100009', 'Flexion', 'aa', 'cc', 'ss', 'ed', 'dd', 'km', 'kkmkm'),
(14, 'PRED_10', '100009', 'Extension', 'aa', 'cc', 'ss', 'ww', 'vfg', 'km', 'kkmkm'),
(15, 'PRED_10', '100009', 'Abduction', 'aa', 'cc', 'ghn', 'ed', 'vfg', 'km', 'kkmkm'),
(16, 'PRED_10', '100009', 'Adduction', 'aa', 'ghjg', 'ss', 'ww', 'vfg', 'km', 'kkmkm'),
(17, 'PRED_10', '100009', 'IR', 'aa', 'rr', 'ghn', 'ed', 'vfg', 'km', 'kkmkm'),
(18, 'PRED_10', '100009', 'ER', 'aa', 'cc', 'ss', 'ed', 'vfg', 'vv', 'kkmkm'),
(19, 'PRED_10', '100009', 'Knee Flexion', 'aa', 'cc', 'ghn', 'ed', 'vfg', 'km', 'kkmkm'),
(20, 'PRED_10', '100009', 'Knee Extension', 'aa', 'cc', 'ghn', 'ww', 'dd', 'vv', 'kkmkm'),
(21, 'PRED_10', '100009', 'Ankle Flexion', 'aa', 'rr', 'ghn', 'ed', 'vfg', 'km', 'kkmkm'),
(22, 'PRED_10', '100009', 'Ankle Extension', 'aa', 'cc', 'ss', 'ed', 'dd', 'vv', 'kkmkm'),
(23, 'PRED_10', '100009', 'Ankle Inversion', 'aa', 'cc', 'ghn', 'ed', 'vfg', 'vv', 'kkmkm'),
(24, 'PRED_10', '100009', 'Ankle Eversion', 'aa', 'rr', 'ghn', 'ww', 'dd', 'km', 'kkmkm'),
(25, 'PRED_10', '100009', 'Flexion', '', 'cc', '', '', '', '', ''),
(26, 'PRED_10', '100009', 'Extension', 'aa', '', '', '', '', '', ''),
(27, 'PRED_10', '100009', 'Abduction', '', 'cc', '', 'ed', 'vfg', '', ''),
(28, 'PRED_10', '100009', 'Adduction', '', '', '', '', 'vfg', '', ''),
(29, 'PRED_10', '100009', 'IR', '', '', '', '', '', '', ''),
(30, 'PRED_10', '100009', 'ER', '', '', '', '', '', '', ''),
(31, 'PRED_10', '100009', 'Knee Flexion', '', '', '', 'edsw', 'vfg', '', ''),
(32, 'PRED_10', '100009', 'Knee Extension', '', '', '', '', '', '', ''),
(33, 'PRED_10', '100009', 'Ankle Flexion', '', '', '', '', '', '', ''),
(34, 'PRED_10', '100009', 'Ankle Extension', '', '', '', '', '', '', ''),
(35, 'PRED_10', '100009', 'Ankle Inversion', 'aa', '', '', '', '', '', ''),
(36, 'PRED_10', '100009', 'Ankle Eversion', '', 'cc', '', '', '', '', ''),
(37, 'PRED_10', '100013', 'Flexion', '', '', '', '', '', '', ''),
(38, 'PRED_10', '100013', 'Extension', '', 'cc', '', '', '', '', ''),
(39, 'PRED_10', '100013', 'Abduction', '', '', '', 'ed', '', '', ''),
(40, 'PRED_10', '100013', 'Adduction', '', '', '', '', '', '', ''),
(41, 'PRED_10', '100013', 'IR', '', '', '', '', 'vfg', '', ''),
(42, 'PRED_10', '100013', 'ER', '', '', '', '', '', '', ''),
(43, 'PRED_10', '100013', 'Knee Flexion', '', '', '', '', '', '', ''),
(44, 'PRED_10', '100013', 'Knee Extension', '', '', '', '', '', '', ''),
(45, 'PRED_10', '100013', 'Ankle Flexion', '', '', '', '', 'ws', '', ''),
(46, 'PRED_10', '100013', 'Ankle Extension', '', '', '', '', '', '', ''),
(47, 'PRED_10', '100013', 'Ankle Inversion', '', '', '', '', '', '', ''),
(48, 'PRED_10', '100013', 'Ankle Eversion', '', '', '', '', '', '', ''),
(49, 'PRED_11', '100014', 'Flexion', '', '', '', '', '', '', ''),
(50, 'PRED_11', '100014', 'Extension', '', '', '', '', '', '', ''),
(51, 'PRED_11', '100014', 'Abduction', '', '', '', '', '', '', ''),
(52, 'PRED_11', '100014', 'Adduction', '', '', '', '', '', '', ''),
(53, 'PRED_11', '100014', 'IR', '', '', '', '', '', '', ''),
(54, 'PRED_11', '100014', 'ER', '', '', '', '', '', '', ''),
(55, 'PRED_11', '100014', 'Knee Flexion', '', '', '', '', '', '', ''),
(56, 'PRED_11', '100014', 'Knee Extension', '', '', '', '', '', '', ''),
(57, 'PRED_11', '100014', 'Ankle Flexion', '', '', '', '', '', '', ''),
(58, 'PRED_11', '100014', 'Ankle Extension', '', '', '', '', '', '', ''),
(59, 'PRED_11', '100014', 'Ankle Inversion', '', '', '', '', '', '', ''),
(60, 'PRED_11', '100014', 'Ankle Eversion', '', '', '', '', '', '', ''),
(61, 'PRED_11', '100015', 'Flexion', 'aa', '', '', '', '', '', ''),
(62, 'PRED_11', '100015', 'Extension', '', '', '', '', '', '', ''),
(63, 'PRED_11', '100015', 'Abduction', '', '', '', '', '', '', ''),
(64, 'PRED_11', '100015', 'Adduction', 'aa', 'cc', '', '', '', '', ''),
(65, 'PRED_11', '100015', 'IR', '', '', 'ss', '', '', '', ''),
(66, 'PRED_11', '100015', 'ER', '', '', '', '', '', '', ''),
(67, 'PRED_11', '100015', 'Knee Flexion', '', '', '', '', '', '', ''),
(68, 'PRED_11', '100015', 'Knee Extension', '', '', 'ss', '', '', '', ''),
(69, 'PRED_11', '100015', 'Ankle Flexion', '', '', '', 'ed', '', '', ''),
(70, 'PRED_11', '100015', 'Ankle Extension', '', '', 'ghn', '', '', '', ''),
(71, 'PRED_11', '100015', 'Ankle Inversion', '', '', '', '', '', '', ''),
(72, 'PRED_11', '100015', 'Ankle Eversion', '', '', '', '', '', '', ''),
(73, 'PRED_16', '100016', 'Flexion', '', '', '', '', '', '', ''),
(74, 'PRED_16', '100016', 'Extension', '', '', '', '', '', '', ''),
(75, 'PRED_16', '100016', 'Abduction', '', '', '', '', '', '', ''),
(76, 'PRED_16', '100016', 'Adduction', '', '', '', '', '', '', ''),
(77, 'PRED_16', '100016', 'IR', '', '', '', '', '', '', ''),
(78, 'PRED_16', '100016', 'ER', '', '', '', '', '', '', ''),
(79, 'PRED_16', '100016', 'Knee Flexion', '', '', '', '', '', '', ''),
(80, 'PRED_16', '100016', 'Knee Extension', '', '', '', '', '', '', ''),
(81, 'PRED_16', '100016', 'Ankle Flexion', '', '', '', '', '', '', ''),
(82, 'PRED_16', '100016', 'Ankle Extension', '', '', '', '', '', '', ''),
(83, 'PRED_16', '100016', 'Ankle Inversion', '', '', '', '', '', '', ''),
(84, 'PRED_16', '100016', 'Ankle Eversion', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(200) NOT NULL,
  `rec_num` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `rec_num`) VALUES
(1, 100016);

-- --------------------------------------------------------

--
-- Table structure for table `special`
--

CREATE TABLE `special` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `Circumference` varchar(2000) NOT NULL,
  `Endurance` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special`
--

INSERT INTO `special` (`id`, `num`, `rec`, `Circumference`, `Endurance`) VALUES
(1, 'PRED_10', '100009', '3.14m', '90'),
(2, 'PRED_10', '100009', '3.14m', '90'),
(3, 'PRED_10', '100009', '3.14m', '90'),
(4, 'PRED_10', '100013', '3.14m', '90'),
(5, 'PRED_11', '100014', 'dsf', 'sdv'),
(6, 'PRED_11', '100015', '3.14m', '90'),
(7, 'PRED_16', '100016', '3.14m', '90');

-- --------------------------------------------------------

--
-- Table structure for table `special_2`
--

CREATE TABLE `special_2` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `test` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_2`
--

INSERT INTO `special_2` (`id`, `num`, `rec`, `test`, `answer`) VALUES
(1, 'PRED_10', '100009', 'Distraction Test', '-ve'),
(2, 'PRED_10', '100009', 'Compression Test', '-ve'),
(3, 'PRED_10', '100009', 'Spurling Test', '+ve'),
(4, 'PRED_10', '100009', 'Movement Test', '-ve'),
(5, 'PRED_10', '100009', 'Empty Can Test', '+ve'),
(6, 'PRED_10', '100009', 'Sulcus Test', '-ve'),
(7, 'PRED_10', '100009', 'Drop Arm Test', '+ve'),
(8, 'PRED_10', '100009', 'Valgus Test', '-ve'),
(9, 'PRED_10', '100009', 'Varus Test', '+ve'),
(10, 'PRED_10', '100009', 'Tinel Test', '+ve'),
(11, 'PRED_10', '100009', 'Tinelâ€™s Test', '-ve'),
(12, 'PRED_10', '100009', 'Reverse Phalenâ€™s Test', '+ve'),
(13, 'PRED_10', '100009', 'Compression Test', '-ve'),
(14, 'PRED_10', '100009', 'Faberâ€™s Test', '+ve'),
(15, 'PRED_10', '100009', 'Elyâ€™s Test', '-ve'),
(16, 'PRED_10', '100009', 'Gaeslen Test', '-ve'),
(17, 'PRED_10', '100009', 'Valgus Test', '-ve'),
(18, 'PRED_10', '100009', 'Varus Test', '+ve'),
(19, 'PRED_10', '100009', 'Anterior Drawal Test', '-ve'),
(20, 'PRED_10', '100009', 'Posterior Drawal Test', '-ve'),
(21, 'PRED_10', '100009', 'Patella Grind Test', '+ve'),
(22, 'PRED_10', '100009', 'Talar Tilt Test', '-ve'),
(23, 'PRED_10', '100009', 'Anterior Drawal Test', '-ve'),
(24, 'PRED_10', '100009', 'External Rotator Test', '-ve'),
(25, 'PRED_10', '100009', 'Distraction Test', '+ve'),
(26, 'PRED_10', '100009', 'Compression Test', '+ve'),
(27, 'PRED_10', '100009', 'Spurling Test', '+ve'),
(28, 'PRED_10', '100009', 'Movement Test', '+ve'),
(29, 'PRED_10', '100009', 'Empty Can Test', '+ve'),
(30, 'PRED_10', '100009', 'Sulcus Test', '+ve'),
(31, 'PRED_10', '100009', 'Drop Arm Test', '+ve'),
(32, 'PRED_10', '100009', 'Valgus Test', '+ve'),
(33, 'PRED_10', '100009', 'Varus Test', '+ve'),
(34, 'PRED_10', '100009', 'Tinel Test', '+ve'),
(35, 'PRED_10', '100009', 'Tinelâ€™s Test', '+ve'),
(36, 'PRED_10', '100009', 'Reverse Phalenâ€™s Test', '+ve'),
(37, 'PRED_10', '100009', 'Compression Test', '+ve'),
(38, 'PRED_10', '100009', 'Faberâ€™s Test', '+ve'),
(39, 'PRED_10', '100009', 'Elyâ€™s Test', '+ve'),
(40, 'PRED_10', '100009', 'Gaeslen Test', '+ve'),
(41, 'PRED_10', '100009', 'Valgus Test', '+ve'),
(42, 'PRED_10', '100009', 'Varus Test', '+ve'),
(43, 'PRED_10', '100009', 'Anterior Drawal Test', '+ve'),
(44, 'PRED_10', '100009', 'Posterior Drawal Test', '+ve'),
(45, 'PRED_10', '100009', 'Patella Grind Test', '+ve'),
(46, 'PRED_10', '100009', 'Talar Tilt Test', '+ve'),
(47, 'PRED_10', '100009', 'Anterior Drawal Test', '+ve'),
(48, 'PRED_10', '100009', 'External Rotator Test', '+ve'),
(49, 'PRED_10', '100009', 'Distraction Test', '+ve'),
(50, 'PRED_10', '100009', 'Compression Test', '+ve'),
(51, 'PRED_10', '100009', 'Spurling Test', '+ve'),
(52, 'PRED_10', '100009', 'Movement Test', '+ve'),
(53, 'PRED_10', '100009', 'Empty Can Test', '+ve'),
(54, 'PRED_10', '100009', 'Sulcus Test', '+ve'),
(55, 'PRED_10', '100009', 'Drop Arm Test', '+ve'),
(56, 'PRED_10', '100009', 'Valgus Test', '+ve'),
(57, 'PRED_10', '100009', 'Varus Test', '+ve'),
(58, 'PRED_10', '100009', 'Tinel Test', '+ve'),
(59, 'PRED_10', '100009', 'Tinelâ€™s Test', '-ve'),
(60, 'PRED_10', '100009', 'Reverse Phalenâ€™s Test', '-ve'),
(61, 'PRED_10', '100009', 'Compression Test', '+ve'),
(62, 'PRED_10', '100009', 'Faberâ€™s Test', '+ve'),
(63, 'PRED_10', '100009', 'Elyâ€™s Test', '+ve'),
(64, 'PRED_10', '100009', 'Gaeslen Test', '+ve'),
(65, 'PRED_10', '100009', 'Valgus Test', '-ve'),
(66, 'PRED_10', '100009', 'Varus Test', '-ve'),
(67, 'PRED_10', '100009', 'Anterior Drawal Test', '+ve'),
(68, 'PRED_10', '100009', 'Posterior Drawal Test', '+ve'),
(69, 'PRED_10', '100009', 'Patella Grind Test', '+ve'),
(70, 'PRED_10', '100009', 'Talar Tilt Test', '+ve'),
(71, 'PRED_10', '100009', 'Anterior Drawal Test', '+ve'),
(72, 'PRED_10', '100009', 'External Rotator Test', '+ve'),
(73, 'PRED_10', '100013', 'Distraction Test', '-ve'),
(74, 'PRED_10', '100013', 'Compression Test', '+ve'),
(75, 'PRED_10', '100013', 'Spurling Test', '+ve'),
(76, 'PRED_10', '100013', 'Movement Test', '+ve'),
(77, 'PRED_10', '100013', 'Empty Can Test', '+ve'),
(78, 'PRED_10', '100013', 'Sulcus Test', '+ve'),
(79, 'PRED_10', '100013', 'Drop Arm Test', '+ve'),
(80, 'PRED_10', '100013', 'Valgus Test', '+ve'),
(81, 'PRED_10', '100013', 'Varus Test', '+ve'),
(82, 'PRED_10', '100013', 'Tinel Test', '+ve'),
(83, 'PRED_10', '100013', 'Tinelâ€™s Test', '+ve'),
(84, 'PRED_10', '100013', 'Reverse Phalenâ€™s Test', '+ve'),
(85, 'PRED_10', '100013', 'Compression Test', '+ve'),
(86, 'PRED_10', '100013', 'Faberâ€™s Test', '+ve'),
(87, 'PRED_10', '100013', 'Elyâ€™s Test', '+ve'),
(88, 'PRED_10', '100013', 'Gaeslen Test', '+ve'),
(89, 'PRED_10', '100013', 'Valgus Test', '+ve'),
(90, 'PRED_10', '100013', 'Varus Test', '+ve'),
(91, 'PRED_10', '100013', 'Anterior Drawal Test', '+ve'),
(92, 'PRED_10', '100013', 'Posterior Drawal Test', '+ve'),
(93, 'PRED_10', '100013', 'Patella Grind Test', '+ve'),
(94, 'PRED_10', '100013', 'Talar Tilt Test', '+ve'),
(95, 'PRED_10', '100013', 'Anterior Drawal Test', '+ve'),
(96, 'PRED_10', '100013', 'External Rotator Test', '+ve'),
(97, 'PRED_11', '100014', 'Distraction Test', '+ve'),
(98, 'PRED_11', '100014', 'Compression Test', '+ve'),
(99, 'PRED_11', '100014', 'Spurling Test', '+ve'),
(100, 'PRED_11', '100014', 'Movement Test', '+ve'),
(101, 'PRED_11', '100014', 'Empty Can Test', '+ve'),
(102, 'PRED_11', '100014', 'Sulcus Test', '+ve'),
(103, 'PRED_11', '100014', 'Drop Arm Test', '+ve'),
(104, 'PRED_11', '100014', 'Valgus Test', '+ve'),
(105, 'PRED_11', '100014', 'Varus Test', '+ve'),
(106, 'PRED_11', '100014', 'Tinel Test', '+ve'),
(107, 'PRED_11', '100014', 'Tinelâ€™s Test', '+ve'),
(108, 'PRED_11', '100014', 'Reverse Phalenâ€™s Test', '+ve'),
(109, 'PRED_11', '100014', 'Compression Test', '+ve'),
(110, 'PRED_11', '100014', 'Faberâ€™s Test', '+ve'),
(111, 'PRED_11', '100014', 'Elyâ€™s Test', '+ve'),
(112, 'PRED_11', '100014', 'Gaeslen Test', '+ve'),
(113, 'PRED_11', '100014', 'Valgus Test', '+ve'),
(114, 'PRED_11', '100014', 'Varus Test', '+ve'),
(115, 'PRED_11', '100014', 'Anterior Drawal Test', '+ve'),
(116, 'PRED_11', '100014', 'Posterior Drawal Test', '+ve'),
(117, 'PRED_11', '100014', 'Patella Grind Test', '+ve'),
(118, 'PRED_11', '100014', 'Talar Tilt Test', '+ve'),
(119, 'PRED_11', '100014', 'Anterior Drawal Test', '+ve'),
(120, 'PRED_11', '100014', 'External Rotator Test', '+ve'),
(121, 'PRED_11', '100015', 'Distraction Test', '-ve'),
(122, 'PRED_11', '100015', 'Compression Test', '-ve'),
(123, 'PRED_11', '100015', 'Spurling Test', '+ve'),
(124, 'PRED_11', '100015', 'Movement Test', '+ve'),
(125, 'PRED_11', '100015', 'Empty Can Test', '+ve'),
(126, 'PRED_11', '100015', 'Sulcus Test', '+ve'),
(127, 'PRED_11', '100015', 'Drop Arm Test', '+ve'),
(128, 'PRED_11', '100015', 'Valgus Test', '-ve'),
(129, 'PRED_11', '100015', 'Varus Test', '+ve'),
(130, 'PRED_11', '100015', 'Tinel Test', '+ve'),
(131, 'PRED_11', '100015', 'Tinelâ€™s Test', '-ve'),
(132, 'PRED_11', '100015', 'Reverse Phalenâ€™s Test', '+ve'),
(133, 'PRED_11', '100015', 'Compression Test', '+ve'),
(134, 'PRED_11', '100015', 'Faberâ€™s Test', '-ve'),
(135, 'PRED_11', '100015', 'Elyâ€™s Test', '+ve'),
(136, 'PRED_11', '100015', 'Gaeslen Test', '+ve'),
(137, 'PRED_11', '100015', 'Valgus Test', '+ve'),
(138, 'PRED_11', '100015', 'Varus Test', '+ve'),
(139, 'PRED_11', '100015', 'Anterior Drawal Test', '+ve'),
(140, 'PRED_11', '100015', 'Posterior Drawal Test', '+ve'),
(141, 'PRED_11', '100015', 'Patella Grind Test', '+ve'),
(142, 'PRED_11', '100015', 'Talar Tilt Test', '+ve'),
(143, 'PRED_11', '100015', 'Anterior Drawal Test', '+ve'),
(144, 'PRED_11', '100015', 'External Rotator Test', '+ve'),
(145, 'PRED_16', '100016', 'Distraction Test', '+ve'),
(146, 'PRED_16', '100016', 'Compression Test', '+ve'),
(147, 'PRED_16', '100016', 'Spurling Test', '+ve'),
(148, 'PRED_16', '100016', 'Movement Test', '+ve'),
(149, 'PRED_16', '100016', 'Empty Can Test', '+ve'),
(150, 'PRED_16', '100016', 'Sulcus Test', '+ve'),
(151, 'PRED_16', '100016', 'Drop Arm Test', '+ve'),
(152, 'PRED_16', '100016', 'Valgus Test', '+ve'),
(153, 'PRED_16', '100016', 'Varus Test', '+ve'),
(154, 'PRED_16', '100016', 'Tinel Test', '+ve'),
(155, 'PRED_16', '100016', 'Tinelâ€™s Test', '+ve'),
(156, 'PRED_16', '100016', 'Reverse Phalenâ€™s Test', '+ve'),
(157, 'PRED_16', '100016', 'Compression Test', '+ve'),
(158, 'PRED_16', '100016', 'Faberâ€™s Test', '+ve'),
(159, 'PRED_16', '100016', 'Elyâ€™s Test', '+ve'),
(160, 'PRED_16', '100016', 'Gaeslen Test', '+ve'),
(161, 'PRED_16', '100016', 'Valgus Test', '+ve'),
(162, 'PRED_16', '100016', 'Varus Test', '+ve'),
(163, 'PRED_16', '100016', 'Anterior Drawal Test', '+ve'),
(164, 'PRED_16', '100016', 'Posterior Drawal Test', '+ve'),
(165, 'PRED_16', '100016', 'Patella Grind Test', '+ve'),
(166, 'PRED_16', '100016', 'Talar Tilt Test', '+ve'),
(167, 'PRED_16', '100016', 'Anterior Drawal Test', '+ve'),
(168, 'PRED_16', '100016', 'External Rotator Test', '+ve');

-- --------------------------------------------------------

--
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `id` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `DOB` varchar(200) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `dt` varchar(10) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `onset` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `goals` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_1`
--

INSERT INTO `table_1` (`id`, `name`, `DOB`, `num`, `rec`, `dt`, `diagnosis`, `onset`, `occupation`, `goals`) VALUES
(1, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100009', '2018-10-05', 'heavy bruise', '2018-10-12', 'Trader', 'Bruise to heal'),
(2, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100009', '2018-10-19', 'heavy bruise', '2018-11-03', 'Trader', 'Bruise to heal'),
(3, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100009', '2018-10-21', 'heavy bruise', '2018-10-13', 'Trader', 'Bruise to heal'),
(4, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100009', '2018-10-14', 'heavy bruise', '2018-10-13', 'Trader', 'Bruise to heal'),
(5, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100009', '2018-10-12', 'heavy bruise', '2018-10-12', 'Trader', 'Bruise to heal'),
(6, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100011', '2018-11-17', 'heavy bruise', '2018-11-11', 'Trader', 'Bruise to heal'),
(7, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100012', '2018-11-10', 'heavy bruise', '2018-11-04', 'Trader', 'Bruise to heal'),
(8, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '100013', '2018-11-09', 'heavy bruise', '2018-11-24', 'Trader', 'Bruise to heal'),
(9, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '100014', '2018-11-08', 'cdas', '2018-11-08', 'sdf', 'fvdsz'),
(10, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '100015', '2018-11-09', 'heavy bruise', '2018-11-09', 'Trader', 'Bruise to heal'),
(11, 'Riyah Ololade', '1212-12-12', 'PRED_16', '100016', '2018-12-13', 'heavy bruise', '', 'Trader', 'Bruise to heal');

-- --------------------------------------------------------

--
-- Table structure for table `table_2`
--

CREATE TABLE `table_2` (
  `id` int(255) NOT NULL,
  `num` varchar(1000) NOT NULL,
  `rec` varchar(1000) NOT NULL,
  `BP` varchar(1000) NOT NULL,
  `heart` varchar(1000) NOT NULL,
  `respiration` varchar(1000) NOT NULL,
  `complaint` varchar(1000) NOT NULL,
  `history` varchar(1000) NOT NULL,
  `symptoms` varchar(1000) NOT NULL,
  `onset` varchar(2000) NOT NULL,
  `pain` varchar(2000) NOT NULL,
  `des` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_2`
--

INSERT INTO `table_2` (`id`, `num`, `rec`, `BP`, `heart`, `respiration`, `complaint`, `history`, `symptoms`, `onset`, `pain`, `des`) VALUES
(1, 'PRED_10', '100009', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Intermittent'),
(2, 'PRED_10', '100009', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Intermittent'),
(3, 'PRED_10', '100009', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Constant'),
(4, 'PRED_10', '100009', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Constant'),
(5, 'PRED_10', '100009', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Dull'),
(6, 'PRED_10', '100013', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Constant'),
(7, 'PRED_11', '100014', 'hfds', 'rg', 'gr', 'rfv', 'fevw', 'vfr', 'ver', 'vfe', 'Constant'),
(8, 'PRED_11', '100015', '90', '80', '44', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Constant'),
(9, 'PRED_16', '100016', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Dull'),
(10, 'PRED_16', '100016', '90', '80', '99', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Intermittent');

-- --------------------------------------------------------

--
-- Table structure for table `table_3`
--

CREATE TABLE `table_3` (
  `id` int(255) NOT NULL,
  `num` varchar(100) NOT NULL,
  `rec` varchar(100) NOT NULL,
  `worse` varchar(200) NOT NULL,
  `best` varchar(200) NOT NULL,
  `current` varchar(200) NOT NULL,
  `duration` varchar(2000) NOT NULL,
  `aggrevating` varchar(2000) NOT NULL,
  `allevating` varchar(2000) NOT NULL,
  `behaviour` varchar(2000) NOT NULL,
  `medication` varchar(2000) NOT NULL,
  `home` varchar(2000) NOT NULL,
  `measures` varchar(2000) NOT NULL,
  `joint` varchar(2000) NOT NULL,
  `flexibility` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_3`
--

INSERT INTO `table_3` (`id`, `num`, `rec`, `worse`, `best`, `current`, `duration`, `aggrevating`, `allevating`, `behaviour`, `medication`, `home`, `measures`, `joint`, `flexibility`) VALUES
(1, '', '', '4', '6', '6', 'pain duration', 'aggreviating factor', 'alleviating factor', 'symptom', 'allergies', 'Array', 'measures', 'clearing', 'flexibility'),
(2, 'PRED_10', '100009', '5', '4', '3', 'pain duration', 'aggreviating factor', 'alleviating factor', 'symptom', 'allergies', 'Array', 'measures', 'clearing', 'flexibility'),
(3, 'PRED_10', '100009', '4', '4', '4', 'pain duration', 'aggravating factor', 'alleviating factor', 'symptom 24H', 'allergies', 'Array', 'measures', 'clearing', 'flexibility'),
(4, 'PRED_10', '100009', '3', '3', '4', 'pain duration', 'aggreviating factor', 'alleviating factor', 'symptom', 'allergies', 'Array', 'measures', 'clearing', 'flexibility'),
(5, 'PRED_10', '100009', '5', '3', '3', 'pain duration', 'aggreviating factor', 'alleviating factor', 'symptom 24H', 'allergies', 'Array', 'measures', 'clearing', 'flexibility'),
(6, 'PRED_10', '100013', '3', '0', '7', 'pain duration', 'aggravating factor', 'alleviating factor', 'symptom', 'allergies', 'Array', 'measures', 'clearing', 'flexibility'),
(7, 'PRED_11', '100014', '0', '0', '0', 'FS', 'SFD', 'FSCV', 'VA', 'WAV', 'Array', 'VASF', 'SVD', 'VSD'),
(8, 'PRED_11', '100014', '4', '4', '0', 'BUHJ', 'SDF', 'DF', 'FSE', 'FSA', 'Array', 'SFD', 'SD', 'SDV'),
(9, 'PRED_11', '100015', '5', '4', '4', 'pain duration', 'aggreviating factor', 'alleviating factor', 'symptom', 'allergies', 'Array', 'measures', 'clearing', 'flexibility'),
(10, 'PRED_16', '100016', '0', '0', '0', 'pain duration', 'aggreviating factor', 'alleviating factor', 'symptom', 'allergies', 'Array', 'measures', 'clearing', 'flexibility');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional`
--
ALTER TABLE `additional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endurance`
--
ALTER TABLE `endurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gait`
--
ALTER TABLE `gait`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gait_2`
--
ALTER TABLE `gait_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last`
--
ALTER TABLE `last`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `living`
--
ALTER TABLE `living`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobility`
--
ALTER TABLE `mobility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobility_2`
--
ALTER TABLE `mobility_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posture`
--
ALTER TABLE `posture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posture_2`
--
ALTER TABLE `posture_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posture_3`
--
ALTER TABLE `posture_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precautions`
--
ALTER TABLE `precautions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `range_1`
--
ALTER TABLE `range_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `range_2`
--
ALTER TABLE `range_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `range_3`
--
ALTER TABLE `range_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_2`
--
ALTER TABLE `special_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1`
--
ALTER TABLE `table_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2`
--
ALTER TABLE `table_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3`
--
ALTER TABLE `table_3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional`
--
ALTER TABLE `additional`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `endurance`
--
ALTER TABLE `endurance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `gait`
--
ALTER TABLE `gait`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gait_2`
--
ALTER TABLE `gait_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `last`
--
ALTER TABLE `last`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `living`
--
ALTER TABLE `living`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mobility`
--
ALTER TABLE `mobility`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mobility_2`
--
ALTER TABLE `mobility_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `posture`
--
ALTER TABLE `posture`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posture_2`
--
ALTER TABLE `posture_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posture_3`
--
ALTER TABLE `posture_3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `precautions`
--
ALTER TABLE `precautions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `range_1`
--
ALTER TABLE `range_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `range_2`
--
ALTER TABLE `range_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `range_3`
--
ALTER TABLE `range_3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `special`
--
ALTER TABLE `special`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `special_2`
--
ALTER TABLE `special_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `table_2`
--
ALTER TABLE `table_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_3`
--
ALTER TABLE `table_3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `fmcphy_ped`
--
CREATE DATABASE IF NOT EXISTS `fmcphy_ped` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmcphy_ped`;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(200) NOT NULL,
  `num` varchar(100) NOT NULL,
  `complain` varchar(100) NOT NULL,
  `physio` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `rec` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `num`, `complain`, `physio`, `info`, `rec`) VALUES
(1, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'Yakubu opeyemi', 'Other information Here', 0),
(2, 'PRED_10', 'mobility', 'Yakubu opeyemi', 'Other information Here', 0),
(3, 'PRED_10', 'feeding', 'Yakubu opeyemi', 'Other information Here', 0),
(4, 'PRED_10', 'Behaviour', 'Yakubu opeyemi', 'Other information Here', 0),
(5, 'PRED_10', 'Gross Motor', 'Yakubu opeyemi', 'Other information Here', 0),
(6, 'PRED_10', 'bone', 'Yakubu opeyemi', 'Other information Here', 0),
(7, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'Yakubu opeyemi', 'kkkk', 100001),
(8, 'PRED_10', 'mobility', 'Yakubu opeyemi', 'kkkk', 100001),
(9, 'PRED_10', 'feeding', 'Yakubu opeyemi', 'kkkk', 100001),
(10, 'PRED_10', 'speech', 'Yakubu opeyemi', 'kkkk', 100001),
(11, 'PRED_10', 'Language', 'Yakubu opeyemi', 'kkkk', 100001),
(12, 'PRED_10', '', 'Yakubu opeyemi', 'kkkk', 100001),
(13, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'Ogbeni Opeyemi', 'Related informations', 100002),
(14, 'PRED_10', 'speech', 'Ogbeni Opeyemi', 'Related informations', 100002),
(15, 'PRED_10', 'Language', 'Ogbeni Opeyemi', 'Related informations', 100002),
(16, 'PRED_10', '', 'Ogbeni Opeyemi', 'Related informations', 100002),
(17, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'Yakubu opeyemi', '', 100003),
(18, 'PRED_10', 'Language', 'Yakubu opeyemi', '', 100003),
(19, 'PRED_10', '', 'Yakubu opeyemi', '', 100003),
(20, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'Yakubu opeyemi', 'ada', 100004),
(21, 'PRED_10', 'Language', 'Yakubu opeyemi', 'ada', 100004),
(22, 'PRED_10', '', 'Yakubu opeyemi', 'ada', 100004),
(23, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'Yakubu opeyemi', 'lkdfmleia', 100005),
(24, 'PRED_10', 'mobility', 'Yakubu opeyemi', 'lkdfmleia', 100005),
(25, 'PRED_10', 'Language', 'Yakubu opeyemi', 'lkdfmleia', 100005),
(26, 'PRED_10', '', 'Yakubu opeyemi', 'lkdfmleia', 100005),
(27, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'Yakubu opeyemi', 'aaa', 100006),
(28, 'PRED_10', 'Language', 'Yakubu opeyemi', 'aaa', 100006),
(29, 'PRED_10', '', 'Yakubu opeyemi', 'aaa', 100006),
(30, 'PRED_10', 'mobility', 'Yakubu opeyemi', 'nnn', 100007),
(31, 'PRED_10', 'Language', 'Yakubu opeyemi', 'nnn', 100007),
(32, 'PRED_10', '', 'Yakubu opeyemi', 'nnn', 100007),
(33, 'PRED_10', 'Fine Motor (handwriting, buttoning)', 'John Mark', 'iuedni', 100013),
(34, 'PRED_10', 'speech', 'John Mark', 'iuedni', 100013),
(35, 'PRED_10', '', 'John Mark', 'iuedni', 100013),
(36, 'PRED_10', '', 'ade', '', 100014);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `issue` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `num`, `rec`, `issue`, `answer`, `comment`) VALUES
(1, 'PRED_10', '100005', 'Does your child attend school?', 'yes', 'abeokuta'),
(2, 'PRED_10', '100005', 'has your child ever repeat a grade?', 'no', ''),
(3, 'PRED_10', '100005', 'Does your child have special education or theraohy services in school?', 'no', ''),
(4, 'PRED_10', '100005', 'Has your child receive theraphy anywhere else?', '', ''),
(5, 'PRED_10', '100006', 'Does your child attend school?', 'yes', 'abeokuta'),
(6, 'PRED_10', '100006', 'has your child ever repeat a grade?', 'no', ''),
(7, 'PRED_10', '100006', 'Does your child have special education or theraohy services in school?', 'no', ''),
(8, 'PRED_10', '100006', 'Has your child receive theraphy anywhere else?', 'no', ''),
(9, 'PRED_11', '100007', 'Does your child attend school?', 'yes', 'idi aba'),
(10, 'PRED_11', '100007', 'has your child ever repeat a grade?', 'no', ''),
(11, 'PRED_11', '100007', 'Does your child have special education or theraohy services in school?', 'no', ''),
(12, 'PRED_11', '100007', 'Has your child receive theraphy anywhere else?', 'no', ''),
(13, 'PRED_10', '100013', 'Does your child attend school?', 'yes', 'habhanh'),
(14, 'PRED_10', '100013', 'has your child ever repeat a grade?', 'no', ''),
(15, 'PRED_10', '100013', 'Does your child have special education or theraohy services in school?', 'no', ''),
(16, 'PRED_10', '100013', 'Has your child receive theraphy anywhere else?', 'yes', ''),
(17, 'PRED_10', '100014', 'Does your child attend school?', '', ''),
(18, 'PRED_10', '100014', 'has your child ever repeat a grade?', '', ''),
(19, 'PRED_10', '100014', 'Does your child have special education or theraohy services in school?', '', ''),
(20, 'PRED_10', '100014', 'Has your child receive theraphy anywhere else?', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `education2`
--

CREATE TABLE `education2` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `often` varchar(100) NOT NULL,
  `lg` varchar(100) NOT NULL,
  `grp` varchar(100) NOT NULL,
  `sp_comment` varchar(200) NOT NULL,
  `tp_service` varchar(200) NOT NULL,
  `whom` varchar(200) NOT NULL,
  `tp_comment` varchar(200) NOT NULL,
  `religious` varchar(200) NOT NULL,
  `goal` varchar(200) NOT NULL,
  `physio` varchar(200) NOT NULL,
  `related` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education2`
--

INSERT INTO `education2` (`id`, `num`, `grade`, `often`, `lg`, `grp`, `sp_comment`, `tp_service`, `whom`, `tp_comment`, `religious`, `goal`, `physio`, `related`, `rec`) VALUES
(1, 'PRED_10', 'nursery', 'not at all', 'not applicable', 'pre-nursery', 'nil', 'General Hospital, Ijaye', 'doctor', 'Additional info on theraphy service', 'no', 'To be able to walk again', 'Yakubu opeyemi', 'Additional information on theraphy', ''),
(5, 'PRED_10', 'nursery', 'not at all', 'not applicable', 'pre-nursery', 'nil', 'General Hospital, Ijaye', 'doctor', 'Additional info on theraphy service', 'no', 'To be able to walk again', 'Yakubu opeyemi', 'aaa', ''),
(6, 'PRED_10', 'nursery', 'not at all', 'not applicable', 'pre-nursery', 'nil', 'General Hospital, Ijaye', 'doctor', 'Additional info on theraphy service', 'no', 'To be able to walk again', 'Yakubu opeyemi', 'aaa', '100007'),
(7, 'PRED_10', 'nursery', 'not at all', 'not applicable', 'pre-nursery', 'nil', 'General Hospital, Ijaye', 'doctor', 'Additional info on theraphy service', 'no', 'To be able to walk again', 'John Mark', 'nm kj', '100013'),
(8, 'PRED_10', '', '', '', '', '', '', '', '', '', '', 'ade', '', '100014');

-- --------------------------------------------------------

--
-- Table structure for table `growth_1`
--

CREATE TABLE `growth_1` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `des` varchar(400) NOT NULL,
  `physio` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `rec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `growth_1`
--

INSERT INTO `growth_1` (`id`, `num`, `des`, `physio`, `info`, `rec`) VALUES
(1, 'PRED_10', 'Mostly quite', 'Yakubu opeyemi', 'Other information', '100002'),
(2, 'PRED_10', 'Tires easily', 'Yakubu opeyemi', 'Other information', '100002'),
(3, 'PRED_10', 'Talks constantly', 'Yakubu opeyemi', 'Other information', '100002'),
(4, 'PRED_10', 'clumsy', 'Yakubu opeyemi', 'Other information', '100002'),
(5, 'PRED_10', 'happy', 'Yakubu opeyemi', 'Other information', '100002'),
(6, 'PRED_10', 'impulsive', 'Yakubu opeyemi', 'Other information', '100002'),
(7, 'PRED_10', 'overly active', 'Yakubu opeyemi', 'Other information', '100002'),
(8, 'PRED_10', 'overreacts frequently', 'Yakubu opeyemi', 'Other information', '100002'),
(9, 'PRED_10', 'shy', 'Yakubu opeyemi', 'Other information', '100002'),
(10, 'PRED_10', 'Restless', 'Yakubu opeyemi', 'Other information', '100002'),
(11, 'PRED_10', 'Craves touch', 'Yakubu opeyemi', 'Other information', '100002'),
(12, 'PRED_10', 'Get frustrated easily', 'Yakubu opeyemi', 'Other information', '100002'),
(13, 'PRED_10', 'stubborn', 'Yakubu opeyemi', 'Other information', '100002'),
(14, 'PRED_10', 'Has temper tantrums', 'Yakubu opeyemi', 'Other information', '100002'),
(15, 'PRED_10', 'Difficulty speaking', 'Yakubu opeyemi', 'Other information', '100002'),
(16, 'PRED_10', 'Has nervours habits', 'Yakubu opeyemi', 'Other information', '100002'),
(17, 'PRED_10', 'Has unusual fears', 'Yakubu opeyemi', 'Other information', '100002'),
(18, 'PRED_10', 'Avoids touch', 'Yakubu opeyemi', 'Other information', '100002'),
(19, 'PRED_10', 'Has poor attention span', 'Yakubu opeyemi', 'Other information', '100002'),
(20, 'PRED_10', 'Difficulty learning new task', 'Yakubu opeyemi', 'Other information', '100002'),
(21, 'PRED_10', 'Other information', 'Yakubu opeyemi', 'Other information', '100002'),
(22, 'PRED_10', 'Restless', 'Ogbeni Opeyemi', '', '100003'),
(23, 'PRED_10', 'Craves touch', 'Ogbeni Opeyemi', '', '100003'),
(24, 'PRED_10', 'Has nervours habits', 'Ogbeni Opeyemi', '', '100003'),
(25, 'PRED_10', 'Difficulty learning new task', 'Ogbeni Opeyemi', '', '100003'),
(26, 'PRED_10', '', 'Ogbeni Opeyemi', '', '100003'),
(27, 'PRED_10', 'happy', 'Yakubu opeyemi', 'efef', '100004'),
(28, 'PRED_10', 'Get frustrated easily', 'Yakubu opeyemi', 'efef', '100004'),
(29, 'PRED_10', 'Has unusual fears', 'Yakubu opeyemi', 'efef', '100004'),
(30, 'PRED_10', '', 'Yakubu opeyemi', 'efef', '100004'),
(31, 'PRED_10', 'Mostly quite', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(32, 'PRED_10', 'Difficulty speaking', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(33, 'PRED_10', 'Difficulty learning new task', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(34, 'PRED_10', '', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(35, 'PRED_10', 'shy', 'Yakubu opeyemi', 'fff', '100006'),
(36, 'PRED_10', 'Difficulty speaking', 'Yakubu opeyemi', 'fff', '100006'),
(37, 'PRED_10', 'Has nervours habits', 'Yakubu opeyemi', 'fff', '100006'),
(38, 'PRED_10', 'Difficulty learning new task', 'Yakubu opeyemi', 'fff', '100006'),
(39, 'PRED_10', 'Other information', 'Yakubu opeyemi', 'fff', '100006'),
(40, 'PRED_10', 'clumsy', 'Yakubu opeyemi', 'lll', '100007'),
(41, 'PRED_10', 'Has nervours habits', 'Yakubu opeyemi', 'lll', '100007'),
(42, 'PRED_10', 'Difficulty learning new task', 'Yakubu opeyemi', 'lll', '100007'),
(43, 'PRED_10', '', 'Yakubu opeyemi', 'lll', '100007'),
(44, 'PRED_10', 'clumsy', 'df vf', 'f ', '100013'),
(45, 'PRED_10', 'Has nervours habits', 'df vf', 'f ', '100013'),
(46, 'PRED_10', '', 'df vf', 'f ', '100013'),
(47, 'PRED_10', 'happy', 'ade', '', '100014'),
(48, 'PRED_10', 'Get frustrated easily', 'ade', '', '100014'),
(49, 'PRED_10', '', 'ade', '', '100014');

-- --------------------------------------------------------

--
-- Table structure for table `growth_2`
--

CREATE TABLE `growth_2` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `physio` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `rec` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `growth_2`
--

INSERT INTO `growth_2` (`id`, `num`, `question`, `answer`, `physio`, `info`, `rec`) VALUES
(1, 'PRED_10', 'Roll over from stomach to back', '3', 'Yakubu opeyemi', 'Other information', '100002'),
(2, 'PRED_10', 'Roll over from back to stomach', '2', 'Yakubu opeyemi', 'Other information', '100002'),
(3, 'PRED_10', 'sit independently', '1', 'Yakubu opeyemi', 'Other information', '100002'),
(4, 'PRED_10', 'crawl', '6 months', 'Yakubu opeyemi', 'Other information', '100002'),
(5, 'PRED_10', 'walk holding unto furniture', '2', 'Yakubu opeyemi', 'Other information', '100002'),
(6, 'PRED_10', 'walk independently', '1', 'Yakubu opeyemi', 'Other information', '100002'),
(7, 'PRED_10', 'speak first word', '2', 'Yakubu opeyemi', 'Other information', '100002'),
(8, 'PRED_10', 'speak in two words sentence', '1.4months', 'Yakubu opeyemi', 'Other information', '100002'),
(9, 'PRED_10', 'Drink from cup', '2', 'Yakubu opeyemi', 'Other information', '100002'),
(10, 'PRED_10', 'use a spoon', '1', 'Yakubu opeyemi', 'Other information', '100002'),
(11, 'PRED_10', 'Dress independently', '2', 'Yakubu opeyemi', 'Other information', '100002'),
(12, 'PRED_10', 'Toilet train', '1', 'Yakubu opeyemi', 'Other information', '100002'),
(13, 'PRED_10', 'Roll over from stomach to back', '3', 'Ogbeni Opeyemi', '', '100003'),
(14, 'PRED_10', 'Roll over from back to stomach', '3', 'Ogbeni Opeyemi', '', '100003'),
(15, 'PRED_10', 'sit independently', '3', 'Ogbeni Opeyemi', '', '100003'),
(16, 'PRED_10', 'crawl', '3', 'Ogbeni Opeyemi', '', '100003'),
(17, 'PRED_10', 'walk holding unto furniture', '3', 'Ogbeni Opeyemi', '', '100003'),
(18, 'PRED_10', 'walk independently', '3', 'Ogbeni Opeyemi', '', '100003'),
(19, 'PRED_10', 'speak first word', '3', 'Ogbeni Opeyemi', '', '100003'),
(20, 'PRED_10', 'speak in two words sentence', '0', 'Ogbeni Opeyemi', '', '100003'),
(21, 'PRED_10', 'Drink from cup', '3', 'Ogbeni Opeyemi', '', '100003'),
(22, 'PRED_10', 'use a spoon', '3', 'Ogbeni Opeyemi', '', '100003'),
(23, 'PRED_10', 'Dress independently', '0', 'Ogbeni Opeyemi', '', '100003'),
(24, 'PRED_10', 'Toilet train', '0', 'Ogbeni Opeyemi', '', '100003'),
(25, 'PRED_10', 'Roll over from stomach to back', '3', 'Yakubu opeyemi', 'efef', '100004'),
(26, 'PRED_10', 'Roll over from back to stomach', '3', 'Yakubu opeyemi', 'efef', '100004'),
(27, 'PRED_10', 'sit independently', '3', 'Yakubu opeyemi', 'efef', '100004'),
(28, 'PRED_10', 'crawl', '3', 'Yakubu opeyemi', 'efef', '100004'),
(29, 'PRED_10', 'walk holding unto furniture', '3', 'Yakubu opeyemi', 'efef', '100004'),
(30, 'PRED_10', 'walk independently', '2', 'Yakubu opeyemi', 'efef', '100004'),
(31, 'PRED_10', 'speak first word', '3', 'Yakubu opeyemi', 'efef', '100004'),
(32, 'PRED_10', 'speak in two words sentence', '3', 'Yakubu opeyemi', 'efef', '100004'),
(33, 'PRED_10', 'Drink from cup', '3', 'Yakubu opeyemi', 'efef', '100004'),
(34, 'PRED_10', 'use a spoon', '3', 'Yakubu opeyemi', 'efef', '100004'),
(35, 'PRED_10', 'Dress independently', '3', 'Yakubu opeyemi', 'efef', '100004'),
(36, 'PRED_10', 'Toilet train', '3', 'Yakubu opeyemi', 'efef', '100004'),
(37, 'PRED_10', 'Roll over from stomach to back', '3', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(38, 'PRED_10', 'Roll over from back to stomach', '3', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(39, 'PRED_10', 'sit independently', '3', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(40, 'PRED_10', 'crawl', '3', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(41, 'PRED_10', 'walk holding unto furniture', '3', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(42, 'PRED_10', 'walk independently', '3', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(43, 'PRED_10', 'speak first word', '2', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(44, 'PRED_10', 'speak in two words sentence', '1.2', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(45, 'PRED_10', 'Drink from cup', '4', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(46, 'PRED_10', 'use a spoon', '2', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(47, 'PRED_10', 'Dress independently', '4', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(48, 'PRED_10', 'Toilet train', '2', 'Yakubu opeyemi', 'kjwencwn', '100005'),
(49, 'PRED_10', 'Roll over from stomach to back', '3', 'Yakubu opeyemi', 'fff', '100006'),
(50, 'PRED_10', 'Roll over from back to stomach', '2', 'Yakubu opeyemi', 'fff', '100006'),
(51, 'PRED_10', 'sit independently', '2', 'Yakubu opeyemi', 'fff', '100006'),
(52, 'PRED_10', 'crawl', '1', 'Yakubu opeyemi', 'fff', '100006'),
(53, 'PRED_10', 'walk holding unto furniture', '5', 'Yakubu opeyemi', 'fff', '100006'),
(54, 'PRED_10', 'walk independently', '1', 'Yakubu opeyemi', 'fff', '100006'),
(55, 'PRED_10', 'speak first word', '3', 'Yakubu opeyemi', 'fff', '100006'),
(56, 'PRED_10', 'speak in two words sentence', '3', 'Yakubu opeyemi', 'fff', '100006'),
(57, 'PRED_10', 'Drink from cup', '4', 'Yakubu opeyemi', 'fff', '100006'),
(58, 'PRED_10', 'use a spoon', '2', 'Yakubu opeyemi', 'fff', '100006'),
(59, 'PRED_10', 'Dress independently', '3', 'Yakubu opeyemi', 'fff', '100006'),
(60, 'PRED_10', 'Toilet train', '4', 'Yakubu opeyemi', 'fff', '100006'),
(61, 'PRED_10', 'Roll over from stomach to back', '3', 'Yakubu opeyemi', 'lll', '100007'),
(62, 'PRED_10', 'Roll over from back to stomach', '2', 'Yakubu opeyemi', 'lll', '100007'),
(63, 'PRED_10', 'sit independently', '1', 'Yakubu opeyemi', 'lll', '100007'),
(64, 'PRED_10', 'crawl', '4', 'Yakubu opeyemi', 'lll', '100007'),
(65, 'PRED_10', 'walk holding unto furniture', '2', 'Yakubu opeyemi', 'lll', '100007'),
(66, 'PRED_10', 'walk independently', '2', 'Yakubu opeyemi', 'lll', '100007'),
(67, 'PRED_10', 'speak first word', '3', 'Yakubu opeyemi', 'lll', '100007'),
(68, 'PRED_10', 'speak in two words sentence', '3', 'Yakubu opeyemi', 'lll', '100007'),
(69, 'PRED_10', 'Drink from cup', '1', 'Yakubu opeyemi', 'lll', '100007'),
(70, 'PRED_10', 'use a spoon', '3', 'Yakubu opeyemi', 'lll', '100007'),
(71, 'PRED_10', 'Dress independently', '3', 'Yakubu opeyemi', 'lll', '100007'),
(72, 'PRED_10', 'Toilet train', '3', 'Yakubu opeyemi', 'lll', '100007'),
(73, 'PRED_10', 'Roll over from stomach to back', 'other here', 'John Mark', 'grbrbs', '100013'),
(74, 'PRED_10', 'Roll over from back to stomach', '3', 'John Mark', 'grbrbs', '100013'),
(75, 'PRED_10', 'sit independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(76, 'PRED_10', 'crawl', 'other here', 'John Mark', 'grbrbs', '100013'),
(77, 'PRED_10', 'walk holding unto furniture', '3', 'John Mark', 'grbrbs', '100013'),
(78, 'PRED_10', 'walk independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(79, 'PRED_10', 'speak first word', 'fdg', 'John Mark', 'grbrbs', '100013'),
(80, 'PRED_10', 'speak in two words sentence', 'other here', 'John Mark', 'grbrbs', '100013'),
(81, 'PRED_10', 'Drink from cup', 'tbgyby', 'John Mark', 'grbrbs', '100013'),
(82, 'PRED_10', 'use a spoon', 'tge er', 'John Mark', 'grbrbs', '100013'),
(83, 'PRED_10', 'Dress independently', 'sfsd', 'John Mark', 'grbrbs', '100013'),
(84, 'PRED_10', 'Toilet train', 'sfvdfs', 'John Mark', 'grbrbs', '100013'),
(85, 'PRED_10', 'Roll over from stomach to back', 'other here', 'John Mark', 'grbrbs', '100013'),
(86, 'PRED_10', 'Roll over from back to stomach', '3', 'John Mark', 'grbrbs', '100013'),
(87, 'PRED_10', 'sit independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(88, 'PRED_10', 'crawl', 'other here', 'John Mark', 'grbrbs', '100013'),
(89, 'PRED_10', 'walk holding unto furniture', '3', 'John Mark', 'grbrbs', '100013'),
(90, 'PRED_10', 'walk independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(91, 'PRED_10', 'speak first word', 'fdg', 'John Mark', 'grbrbs', '100013'),
(92, 'PRED_10', 'speak in two words sentence', 'other here', 'John Mark', 'grbrbs', '100013'),
(93, 'PRED_10', 'Drink from cup', 'tbgyby', 'John Mark', 'grbrbs', '100013'),
(94, 'PRED_10', 'use a spoon', 'tge er', 'John Mark', 'grbrbs', '100013'),
(95, 'PRED_10', 'Dress independently', 'sfsd', 'John Mark', 'grbrbs', '100013'),
(96, 'PRED_10', 'Toilet train', 'sfvdfs', 'John Mark', 'grbrbs', '100013'),
(97, 'PRED_10', 'Roll over from stomach to back', 'other here', 'John Mark', 'grbrbs', '100013'),
(98, 'PRED_10', 'Roll over from back to stomach', '3', 'John Mark', 'grbrbs', '100013'),
(99, 'PRED_10', 'sit independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(100, 'PRED_10', 'crawl', 'other here', 'John Mark', 'grbrbs', '100013'),
(101, 'PRED_10', 'walk holding unto furniture', '3', 'John Mark', 'grbrbs', '100013'),
(102, 'PRED_10', 'walk independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(103, 'PRED_10', 'speak first word', 'fdg', 'John Mark', 'grbrbs', '100013'),
(104, 'PRED_10', 'speak in two words sentence', 'other here', 'John Mark', 'grbrbs', '100013'),
(105, 'PRED_10', 'Drink from cup', 'tbgyby', 'John Mark', 'grbrbs', '100013'),
(106, 'PRED_10', 'use a spoon', 'tge er', 'John Mark', 'grbrbs', '100013'),
(107, 'PRED_10', 'Dress independently', 'sfsd', 'John Mark', 'grbrbs', '100013'),
(108, 'PRED_10', 'Toilet train', 'sfvdfs', 'John Mark', 'grbrbs', '100013'),
(109, 'PRED_10', 'Roll over from stomach to back', 'other here', 'John Mark', 'grbrbs', '100013'),
(110, 'PRED_10', 'Roll over from back to stomach', '3', 'John Mark', 'grbrbs', '100013'),
(111, 'PRED_10', 'sit independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(112, 'PRED_10', 'crawl', 'other here', 'John Mark', 'grbrbs', '100013'),
(113, 'PRED_10', 'walk holding unto furniture', '3', 'John Mark', 'grbrbs', '100013'),
(114, 'PRED_10', 'walk independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(115, 'PRED_10', 'speak first word', 'fdg', 'John Mark', 'grbrbs', '100013'),
(116, 'PRED_10', 'speak in two words sentence', 'other here', 'John Mark', 'grbrbs', '100013'),
(117, 'PRED_10', 'Drink from cup', 'tbgyby', 'John Mark', 'grbrbs', '100013'),
(118, 'PRED_10', 'use a spoon', 'tge er', 'John Mark', 'grbrbs', '100013'),
(119, 'PRED_10', 'Dress independently', 'sfsd', 'John Mark', 'grbrbs', '100013'),
(120, 'PRED_10', 'Toilet train', 'sfvdfs', 'John Mark', 'grbrbs', '100013'),
(121, 'PRED_10', 'Roll over from stomach to back', 'other here', 'John Mark', 'grbrbs', '100013'),
(122, 'PRED_10', 'Roll over from back to stomach', '3', 'John Mark', 'grbrbs', '100013'),
(123, 'PRED_10', 'sit independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(124, 'PRED_10', 'crawl', 'other here', 'John Mark', 'grbrbs', '100013'),
(125, 'PRED_10', 'walk holding unto furniture', '3', 'John Mark', 'grbrbs', '100013'),
(126, 'PRED_10', 'walk independently', 'others goes here', 'John Mark', 'grbrbs', '100013'),
(127, 'PRED_10', 'speak first word', 'fdg', 'John Mark', 'grbrbs', '100013'),
(128, 'PRED_10', 'speak in two words sentence', 'other here', 'John Mark', 'grbrbs', '100013'),
(129, 'PRED_10', 'Drink from cup', 'tbgyby', 'John Mark', 'grbrbs', '100013'),
(130, 'PRED_10', 'use a spoon', 'tge er', 'John Mark', 'grbrbs', '100013'),
(131, 'PRED_10', 'Dress independently', 'sfsd', 'John Mark', 'grbrbs', '100013'),
(132, 'PRED_10', 'Toilet train', 'sfvdfs', 'John Mark', 'grbrbs', '100013'),
(133, 'PRED_10', 'Roll over from stomach to back', 'rwfteq', 'df vf', 'f ', '100013'),
(134, 'PRED_10', 'Roll over from back to stomach', 'rgverw', 'df vf', 'f ', '100013'),
(135, 'PRED_10', 'sit independently', 'sada', 'df vf', 'f ', '100013'),
(136, 'PRED_10', 'crawl', 'jyny', 'df vf', 'f ', '100013'),
(137, 'PRED_10', 'walk holding unto furniture', 'edewar', 'df vf', 'f ', '100013'),
(138, 'PRED_10', 'walk independently', 'erfterw', 'df vf', 'f ', '100013'),
(139, 'PRED_10', 'speak first word', 'grwtv', 'df vf', 'f ', '100013'),
(140, 'PRED_10', 'speak in two words sentence', 'erqewq', 'df vf', 'f ', '100013'),
(141, 'PRED_10', 'Drink from cup', 'rtvtrw', 'df vf', 'f ', '100013'),
(142, 'PRED_10', 'use a spoon', 'erwcre', 'df vf', 'f ', '100013'),
(143, 'PRED_10', 'Dress independently', 'wqecwq', 'df vf', 'f ', '100013'),
(144, 'PRED_10', 'Toilet train', 'wqefqwfer', 'df vf', 'f ', '100013'),
(145, 'PRED_10', 'Roll over from stomach to back', 'rwfteq', 'df vf', 'f ', '100013'),
(146, 'PRED_10', 'Roll over from back to stomach', 'rgverw', 'df vf', 'f ', '100013'),
(147, 'PRED_10', 'sit independently', 'sada', 'df vf', 'f ', '100013'),
(148, 'PRED_10', 'crawl', 'jyny', 'df vf', 'f ', '100013'),
(149, 'PRED_10', 'walk holding unto furniture', 'edewar', 'df vf', 'f ', '100013'),
(150, 'PRED_10', 'walk independently', 'erfterw', 'df vf', 'f ', '100013'),
(151, 'PRED_10', 'speak first word', 'grwtv', 'df vf', 'f ', '100013'),
(152, 'PRED_10', 'speak in two words sentence', 'erqewq', 'df vf', 'f ', '100013'),
(153, 'PRED_10', 'Drink from cup', 'rtvtrw', 'df vf', 'f ', '100013'),
(154, 'PRED_10', 'use a spoon', 'erwcre', 'df vf', 'f ', '100013'),
(155, 'PRED_10', 'Dress independently', 'wqecwq', 'df vf', 'f ', '100013'),
(156, 'PRED_10', 'Toilet train', 'wqefqwfer', 'df vf', 'f ', '100013'),
(157, 'PRED_10', 'Roll over from stomach to back', 'other here', 'ade', '', '100014'),
(158, 'PRED_10', 'Roll over from back to stomach', '3', 'ade', '', '100014'),
(159, 'PRED_10', 'sit independently', 'other here', 'ade', '', '100014'),
(160, 'PRED_10', 'crawl', 'other here', 'ade', '', '100014'),
(161, 'PRED_10', 'walk holding unto furniture', 'others goes here', 'ade', '', '100014'),
(162, 'PRED_10', 'walk independently', 'other here', 'ade', '', '100014'),
(163, 'PRED_10', 'speak first word', 'other here', 'ade', '', '100014'),
(164, 'PRED_10', 'speak in two words sentence', 'other here', 'ade', '', '100014'),
(165, 'PRED_10', 'Drink from cup', 'other here', 'ade', '', '100014'),
(166, 'PRED_10', 'use a spoon', 'others goes here', 'ade', '', '100014'),
(167, 'PRED_10', 'Dress independently', 'other here', 'ade', '', '100014'),
(168, 'PRED_10', 'Toilet train', 'other here', 'ade', '', '100014');

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
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `physio` varchar(200) NOT NULL,
  `related` varchar(200) NOT NULL,
  `medication` varchar(2000) NOT NULL,
  `communication` varchar(2000) NOT NULL,
  `date_notices` varchar(10) NOT NULL,
  `language` varchar(20) NOT NULL,
  `rec` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `num`, `physio`, `related`, `medication`, `communication`, `date_notices`, `language`, `rec`) VALUES
(1, 'PRED_10', 'Yakubu opeyemi', 'Related information here', 'The mediactions being used is here', 'No communication difficulty', '2018-10-13', 'Yoruba', ''),
(2, 'PRED_10', 'Yakubu opeyemi', 'Other related informations here', 'Medications go here', 'No communication difficulty', '2018-10-26', 'Yoruba', '100002'),
(3, 'PRED_10', 'Ogbeni Opeyemi', '', '', '', '', '', '100003'),
(4, 'PRED_10', 'Yakubu opeyemi', 'fe', 'ddd', 'terg', '2018-10-20', 'Yoruba', '100004'),
(5, 'PRED_10', 'Yakubu opeyemi', 'related information on communication history', 'medications', 'communication difficuty', '2018-10-21', 'Yoruba', '100005'),
(6, 'PRED_10', 'Yakubu opeyemi', 'dd', 'medications', 'description', '2018-10-21', 'Yoruba', '100006'),
(7, 'PRED_10', 'Yakubu opeyemi', 'aided', 'other medications', 'no communication difficulty', '2018-10-20', 'Yoruba', '100007'),
(8, 'PRED_10', 'John Mark', 'dcdsf', 'fdasf', 'dfasf', '2018-11-16', 'Yoruba', '100013'),
(9, 'PRED_10', 'ade', '', '', '', '', '', '100014');

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
(6, 234, 'yakubu', 27, 'abeokuta', 'male', 'sdfasag', '5b', 'fever', '2018-08-10 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `patient_num`
--

CREATE TABLE `patient_num` (
  `id` int(200) NOT NULL,
  `num` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_num`
--

INSERT INTO `patient_num` (`id`, `num`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `precaution`
--

CREATE TABLE `precaution` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `rec` varchar(200) NOT NULL,
  `physio` varchar(200) NOT NULL,
  `related` text NOT NULL,
  `issue` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `comment` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `precaution`
--

INSERT INTO `precaution` (`id`, `num`, `rec`, `physio`, `related`, `issue`, `answer`, `comment`) VALUES
(1, 'PRED_10', '100002', 'Yakubu opeyemi', 'related information', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" readonly class=\"form-control\" id=\"exampleInputEmail1', 'yes', 'factors here'),
(2, 'PRED_10', '100002', 'Yakubu opeyemi', 'related information', 'Does your child have food allergies?', 'yes', 'allegieries'),
(3, 'PRED_10', '100002', 'Yakubu opeyemi', 'related information', 'Does your child have any moverment restrictions?', 'yes', 'restrict'),
(4, 'PRED_10', '100003', 'Ogbeni Opeyemi', '', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" readonly class=\"form-control\" id=\"exampleInputEmail1', 'yes', ''),
(5, 'PRED_10', '100003', 'Ogbeni Opeyemi', '', 'Does your child have food allergies?', 'no', ''),
(6, 'PRED_10', '100003', 'Ogbeni Opeyemi', '', 'Does your child have any moverment restrictions?', 'no', ''),
(7, 'PRED_10', '100004', 'Yakubu opeyemi', 'fewrf', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" readonly class=\"form-control\" id=\"exampleInputEmail1', 'yes', ''),
(8, 'PRED_10', '100004', 'Yakubu opeyemi', 'fewrf', 'Does your child have food allergies?', 'no', ''),
(9, 'PRED_10', '100004', 'Yakubu opeyemi', 'fewrf', 'Does your child have any moverment restrictions?', 'no', ''),
(10, 'PRED_10', '100005', 'Yakubu opeyemi', 'reated information on contradictions', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" readonly ', 'no', ''),
(11, 'PRED_10', '100005', 'Yakubu opeyemi', 'reated information on contradictions', 'Does your child have food allergies?', 'yes', 'the allegeries'),
(12, 'PRED_10', '100005', 'Yakubu opeyemi', 'reated information on contradictions', 'Does your child have any moverment restrictions?', 'no', ''),
(13, 'PRED_10', '100006', 'Yakubu opeyemi', 'ccc', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" ', 'yes', 'habhanh'),
(14, 'PRED_10', '100006', 'Yakubu opeyemi', 'ccc', 'Does your child have food allergies?', 'no', ''),
(15, 'PRED_10', '100006', 'Yakubu opeyemi', 'ccc', 'Does your child have any moverment restrictions?', 'no', 'habhanh'),
(16, 'PRED_10', '100007', 'Yakubu opeyemi', 'aaa', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" ', 'no', ''),
(17, 'PRED_10', '100007', 'Yakubu opeyemi', 'aaa', 'Does your child have food allergies?', 'no', ''),
(18, 'PRED_10', '100007', 'Yakubu opeyemi', 'aaa', 'Does your child have any moverment restrictions?', 'no', ''),
(19, 'PRED_10', '100013', 'John Mark', 'rsgv r', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" ', 'yes', ''),
(20, 'PRED_10', '100013', 'John Mark', 'rsgv r', 'Does your child have food allergies?', 'no', ''),
(21, 'PRED_10', '100013', 'John Mark', 'rsgv r', 'Does your child have any moverment restrictions?', 'yes', ''),
(22, 'PRED_10', '100014', 'ade', '', 'are there any factors that may complicate your childs ability to participate in the theraphy?\" ', '', ''),
(23, 'PRED_10', '100014', 'ade', '', 'Does your child have food allergies?', '', ''),
(24, 'PRED_10', '100014', 'ade', '', 'Does your child have any moverment restrictions?', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `preg`
--

CREATE TABLE `preg` (
  `id` int(200) NOT NULL,
  `num` varchar(200) NOT NULL,
  `lenght` varchar(100) NOT NULL,
  `weight` varchar(200) NOT NULL,
  `rec` varchar(100) NOT NULL,
  `physio` varchar(1000) NOT NULL,
  `related` text NOT NULL,
  `issue` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `comment` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preg`
--

INSERT INTO `preg` (`id`, `num`, `lenght`, `weight`, `rec`, `physio`, `related`, `issue`, `answer`, `comment`) VALUES
(1, 'PRED_10', '1.2m', '3kg', '100002', 'Yakubu opeyemi', 'Other information on marriage', '', '', ''),
(2, 'PRED_10', '1.2m', '3kg', '100002', 'Yakubu opeyemi', 'Other information on marriage', '', '', ''),
(3, 'PRED_10', '1.2m', '3kg', '100002', 'Yakubu opeyemi', 'Other information on marriage', '', '', ''),
(4, 'PRED_10', '1.2m', '3kg', '100002', 'Ogbeni Opeyemi', 'other information about pregnancy', 'Were there any complication during pregnancy', 'yes', 'kkkk'),
(5, 'PRED_10', '1.2m', '3kg', '100002', 'Ogbeni Opeyemi', 'other information about pregnancy', 'was the pregnancy full term', 'no', 'complication'),
(6, 'PRED_10', '1.2m', '3kg', '100002', 'Ogbeni Opeyemi', 'other information about pregnancy', 'was labour and delivery normal', 'no', 'complication'),
(7, 'PRED_10', '1.2m', '3kg', '100003', 'Ogbeni Opeyemi', '', 'Were there any complication during pregnancy', 'yes', ''),
(8, 'PRED_10', '1.2m', '3kg', '100003', 'Ogbeni Opeyemi', '', 'was the pregnancy full term', 'no', ''),
(9, 'PRED_10', '1.2m', '3kg', '100003', 'Ogbeni Opeyemi', '', 'was labour and delivery normal', 'no', ''),
(10, 'PRED_10', '1.2m', '3kg', '100004', 'Yakubu opeyemi', 'faesve', 'Were there any complication during pregnancy', 'no', ''),
(11, 'PRED_10', '1.2m', '3kg', '100004', 'Yakubu opeyemi', 'faesve', 'was the pregnancy full term', 'yes', ''),
(12, 'PRED_10', '1.2m', '3kg', '100004', 'Yakubu opeyemi', 'faesve', 'was labour and delivery normal', 'no', 'awqwew'),
(13, 'PRED_10', '1.2m', '3kg', '100005', 'Yakubu opeyemi', 'related information', 'Were there any complication during pregnancy', 'no', ''),
(14, 'PRED_10', '1.2m', '3kg', '100005', 'Yakubu opeyemi', 'related information', 'was the pregnancy full term', 'yes', ''),
(15, 'PRED_10', '1.2m', '3kg', '100005', 'Yakubu opeyemi', 'related information', 'was labour and delivery normal', 'no', 'habhanh'),
(16, 'PRED_10', '1.2m', '3kg', '100006', 'Yakubu opeyemi', 'aaa', 'Were there any complication during pregnancy', 'yes', 'habhanh'),
(17, 'PRED_10', '1.2m', '3kg', '100006', 'Yakubu opeyemi', 'aaa', 'was the pregnancy full term', 'yes', ''),
(18, 'PRED_10', '1.2m', '3kg', '100006', 'Yakubu opeyemi', 'aaa', 'was labour and delivery normal', 'no', ''),
(19, 'PRED_10', '1.2m', '3kg', '100007', 'Yakubu opeyemi', 'mmm', 'Were there any complication during pregnancy', 'yes', ''),
(20, 'PRED_10', '1.2m', '3kg', '100007', 'Yakubu opeyemi', 'mmm', 'was the pregnancy full term', 'no', ''),
(21, 'PRED_10', '1.2m', '3kg', '100007', 'Yakubu opeyemi', 'mmm', 'was labour and delivery normal', 'no', ''),
(22, 'PRED_10', '1.2m', '3kg', '100013', 'John Mark', 'fsgsr', 'Were there any complication during pregnancy', 'yes', 'habhanh'),
(23, 'PRED_10', '1.2m', '3kg', '100013', 'John Mark', 'fsgsr', 'was the pregnancy full term', 'no', 'habhanh'),
(24, 'PRED_10', '1.2m', '3kg', '100013', 'John Mark', 'fsgsr', 'was labour and delivery normal', 'yes', 'habhanh'),
(25, 'PRED_10', 'Not Applicable', '3kg', '100014', 'ade', '', 'Were there any complication during pregnancy', '', ''),
(26, 'PRED_10', 'Not Applicable', '3kg', '100014', 'ade', '', 'was the pregnancy full term', '', ''),
(27, 'PRED_10', 'Not Applicable', '3kg', '100014', 'ade', '', 'was labour and delivery normal', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prev_1`
--

CREATE TABLE `prev_1` (
  `id` int(255) NOT NULL,
  `num` varchar(100) NOT NULL,
  `health` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `physio` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `rec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prev_1`
--

INSERT INTO `prev_1` (`id`, `num`, `health`, `des`, `physio`, `info`, `rec`) VALUES
(1, 'PRED_10', 'Good', 'allergies', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(2, 'PRED_10', 'Good', 'encephalitis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(3, 'PRED_10', 'Good', 'multiple scierosis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(4, 'PRED_10', 'Good', 'Rheumatic fever', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(5, 'PRED_10', 'Good', 'Asthma / breathing difficulties', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(6, 'PRED_10', 'Good', 'Enlarged Glands', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(7, 'PRED_10', 'Good', 'Nausea/vomiting', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(8, 'PRED_10', 'Good', 'Ringing of the ear', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(9, 'PRED_10', 'Good', 'Bronchitis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(10, 'PRED_10', 'Good', 'Fever', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(11, 'PRED_10', 'Good', 'Night pain', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(12, 'PRED_10', 'Good', 'Seizures/Epilepsy', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(13, 'PRED_10', 'Good', 'cancer', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(14, 'PRED_10', 'Good', 'Head injury', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(15, 'PRED_10', 'Good', 'Osteoarthritis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(16, 'PRED_10', 'Good', 'Smoking history', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(17, 'PRED_10', 'Good', 'Chicken pox', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(18, 'PRED_10', 'Good', 'heart Disease', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(19, 'PRED_10', 'Good', 'Peacemaker', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(20, 'PRED_10', 'Good', 'Stroke/TIA', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(21, 'PRED_10', 'Good', 'Chronic colds', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(22, 'PRED_10', 'Good', 'High blood Pressure', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(23, 'PRED_10', 'Good', 'Parkinson Disease', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(24, 'PRED_10', 'Good', 'surgeries', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(25, 'PRED_10', 'Good', 'chronic laryngitis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(26, 'PRED_10', 'Good', 'hypoglycemia', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(27, 'PRED_10', 'Good', 'physical abnormalities', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(28, 'PRED_10', 'Good', 'thyroid disease', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(29, 'PRED_10', 'Good', 'cogenital defects', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(30, 'PRED_10', 'Good', 'measeles', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(31, 'PRED_10', 'Good', 'pnemonia', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(32, 'PRED_10', 'Good', 'tonsilitis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(33, 'PRED_10', 'Good', 'depresion', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(34, 'PRED_10', 'Good', 'meningitis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(35, 'PRED_10', 'Good', 'polio', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(36, 'PRED_10', 'Good', 'tuberculosis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(37, 'PRED_10', 'Good', 'diabetis type I and II', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(38, 'PRED_10', 'Good', 'metal implant', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(39, 'PRED_10', 'Good', 'pregnancy', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(40, 'PRED_10', 'Good', 'whopping cough', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(41, 'PRED_10', 'Good', 'dizziness/fainting', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(42, 'PRED_10', 'Good', 'mumps', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(43, 'PRED_10', 'Good', 'rheumatoid Arthritis', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(44, 'PRED_10', 'Good', 'Other information', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(45, 'PRED_10', 'Good', 'Rheumatic fever', 'Yakubu opeyemi', '', '100003'),
(46, 'PRED_10', 'Good', 'Osteoarthritis', 'Yakubu opeyemi', '', '100003'),
(47, 'PRED_10', 'Good', 'physical abnormalities', 'Yakubu opeyemi', '', '100003'),
(48, 'PRED_10', 'Good', '', 'Yakubu opeyemi', '', '100003'),
(49, 'PRED_10', 'Good', 'multiple scierosis', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(50, 'PRED_10', 'Good', 'Head injury', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(51, 'PRED_10', 'Good', 'Stroke/TIA', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(52, 'PRED_10', 'Good', 'hypoglycemia', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(53, 'PRED_10', 'Good', 'depresion', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(54, 'PRED_10', 'Good', 'whopping cough', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(55, 'PRED_10', 'Good', '', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(56, 'PRED_10', 'Good', 'multiple scierosis', 'Yakubu opeyemi', 'jefrv', '100005'),
(57, 'PRED_10', 'Good', 'Nausea/vomiting', 'Yakubu opeyemi', 'jefrv', '100005'),
(58, 'PRED_10', 'Good', 'hypoglycemia', 'Yakubu opeyemi', 'jefrv', '100005'),
(59, 'PRED_10', 'Good', 'Other information', 'Yakubu opeyemi', 'jefrv', '100005'),
(60, 'PRED_10', 'Good', 'multiple scierosis', 'Yakubu opeyemi', 'aaa', '100006'),
(61, 'PRED_10', 'Good', 'Nausea/vomiting', 'Yakubu opeyemi', 'aaa', '100006'),
(62, 'PRED_10', 'Good', 'Peacemaker', 'Yakubu opeyemi', 'aaa', '100006'),
(63, 'PRED_10', 'Good', '', 'Yakubu opeyemi', 'aaa', '100006'),
(64, 'PRED_10', 'Good', 'allergies', 'Yakubu opeyemi', 'aaa', '100007'),
(65, 'PRED_10', 'Good', 'Enlarged Glands', 'Yakubu opeyemi', 'aaa', '100007'),
(66, 'PRED_10', 'Good', 'chronic laryngitis', 'Yakubu opeyemi', 'aaa', '100007'),
(67, 'PRED_10', 'Good', 'pnemonia', 'Yakubu opeyemi', 'aaa', '100007'),
(68, 'PRED_10', 'Good', 'diabetis type I and II', 'Yakubu opeyemi', 'aaa', '100007'),
(69, 'PRED_10', 'Good', 'mumps', 'Yakubu opeyemi', 'aaa', '100007'),
(70, 'PRED_10', 'Good', '', 'Yakubu opeyemi', 'aaa', '100007'),
(71, 'PRED_10', 'Good', 'Ringing of the ear', 'John Mark', 'fv ef', '100013'),
(72, 'PRED_10', 'Good', 'Head injury', 'John Mark', 'fv ef', '100013'),
(73, 'PRED_10', 'Good', 'Stroke/TIA', 'John Mark', 'fv ef', '100013'),
(74, 'PRED_10', 'Good', 'hypoglycemia', 'John Mark', 'fv ef', '100013'),
(75, 'PRED_10', 'Good', 'depresion', 'John Mark', 'fv ef', '100013'),
(76, 'PRED_10', 'Good', '', 'John Mark', 'fv ef', '100013'),
(77, 'PRED_10', 'Good', '', 'ade', '', '100014');

-- --------------------------------------------------------

--
-- Table structure for table `prev_2`
--

CREATE TABLE `prev_2` (
  `id` int(255) NOT NULL,
  `num` varchar(100) NOT NULL,
  `other` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `physio` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `rec` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prev_2`
--

INSERT INTO `prev_2` (`id`, `num`, `other`, `comment`, `physio`, `info`, `rec`) VALUES
(1, 'PRED_10', 'Earache/Ear defection', 'Ear defects', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(2, 'PRED_10', 'Earing difficulties', 'Aided', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(3, 'PRED_10', 'PE ear tubes inserted', 'Eye drop', 'Yakubu opeyemi', 'Medical history goes here', '100002'),
(4, 'PRED_10', 'Earache/Ear defection', '', 'Yakubu opeyemi', '', '100003'),
(5, 'PRED_10', 'PE ear tubes inserted', '', 'Yakubu opeyemi', '', '100003'),
(6, 'PRED_10', '', 'habhanh', 'Yakubu opeyemi', '', '100003'),
(7, 'PRED_10', 'Earache/Ear defection', '', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(8, 'PRED_10', 'PE ear tubes inserted', '', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(9, 'PRED_10', '', '', 'Yakubu opeyemi', 'kjlkjkl.', '100004'),
(10, 'PRED_10', 'Earache/Ear defection', 'habhanh', 'Yakubu opeyemi', 'jefrv', '100005'),
(11, 'PRED_10', 'Earing difficulties', 'aided', 'Yakubu opeyemi', 'jefrv', '100005'),
(12, 'PRED_10', 'Vision problems', '', 'Yakubu opeyemi', 'jefrv', '100005'),
(13, 'PRED_10', 'Earache/Ear defection', 'habhanh', 'Yakubu opeyemi', 'aaa', '100006'),
(14, 'PRED_10', 'have you ever purchased or rented durable Medical Equipment, orthortics, prosthetics or supplies?', '', 'Yakubu opeyemi', 'aaa', '100006'),
(15, 'PRED_10', '', '', 'Yakubu opeyemi', 'aaa', '100006'),
(16, 'PRED_10', 'Earache/Ear defection', '', 'Yakubu opeyemi', 'aaa', '100007'),
(17, 'PRED_10', 'Earing difficulties', 'aided', 'Yakubu opeyemi', 'aaa', '100007'),
(18, 'PRED_10', 'PE ear tubes inserted', '', 'Yakubu opeyemi', 'aaa', '100007'),
(19, 'PRED_10', 'Earache/Ear defection', 'habhanh', 'John Mark', 'fv ef', '100013'),
(20, 'PRED_10', 'Earing difficulties', 'factors here', 'John Mark', 'fv ef', '100013'),
(21, 'PRED_10', 'have you ever purchased or rented durable Medical Equipment, orthortics, prosthetics or supplies?', '', 'John Mark', 'fv ef', '100013'),
(22, 'PRED_10', 'have you ever purchased or rented durable Medical Equipment, orthortics, prosthetics or supplies?', '', 'ade', '', '100014'),
(23, 'PRED_10', '', '', 'ade', '', '100014'),
(24, 'PRED_10', '', '', 'ade', '', '100014');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(200) NOT NULL,
  `rec_num` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `rec_num`) VALUES
(1, 100014);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `fnamw` varchar(200) NOT NULL,
  `fage` int(10) NOT NULL,
  `focc` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `mage` int(10) NOT NULL,
  `mocc` varchar(200) NOT NULL,
  `adopt` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `marry` varchar(20) NOT NULL,
  `live` varchar(20) NOT NULL,
  `rec` varchar(10) NOT NULL,
  `physio` varchar(20) NOT NULL,
  `related` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `num`, `fnamw`, `fage`, `focc`, `mname`, `mage`, `mocc`, `adopt`, `age`, `marry`, `live`, `rec`, `physio`, `related`) VALUES
(1, 'PRED_10', 'Adebayo Olaitan', 37, 'Lawyer', 'Adebayo Shade', 20, 'Trader', 'yes', '3', 'Remarried', 'Father and Mother', '100002', 'Yakubu opeyemi', 'Other social related information'),
(2, 'PRED_10', 'Adebayo Olaitan', 12, 'Lawyer', 'Adebayo Shade', 4, 'Trader', 'yes', '3', 'living together', 'Father and Mother', '100003', 'Yakubu opeyemi', ''),
(3, 'PRED_10', 'Adebayo Olaitan', 20, 'Lawyer', 'Adebayo Shade', 33, 'Trader', 'yes', '3', 'married', 'Father and Mother', '100004', 'Yakubu opeyemi', 'ewr'),
(4, 'PRED_10', 'Adebayo Olaitan', 30, 'Lawyer', 'Adebayo Shade', 14, 'Trader', 'yes', '2', 'married', 'Father and Mother', '100005', 'Ogbeni Opeyemi', 'Social hostory related information'),
(5, 'PRED_10', 'Adebayo Olaitan', 22, 'Lawyer', 'Adebayo Shade', 11, 'Trader', 'yes', '3', 'living together', 'Father and Mother', '100006', 'Yakubu opeyemi', 'other information'),
(6, 'PRED_10', 'Adebayo Olaitan', 23, 'Lawyer', 'Adebayo Shade', 12, 'Trader', 'yes', '4', 'married', 'Father and Mother', '100007', 'Yakubu opeyemi', 'other relaterd information'),
(7, 'PRED_10', 'Adebayo Olaitan', 12, 'Lawyer', 'Adebayo Shade', 23, 'Trader', 'no', '', 'married', 'Father and Mother', '100013', 'John Mark', 'fda'),
(8, 'PRED_10', 'Adebayo Olaitan', 2, 'Lawyer', 'Adebayo Shade', 1, 'Trader', 'yes', '', '', '', '100014', 'ade', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjective`
--

CREATE TABLE `subjective` (
  `id` int(100) NOT NULL,
  `num` varchar(200) NOT NULL,
  `reason` varchar(1000) NOT NULL,
  `prior` varchar(1000) NOT NULL,
  `specify` varchar(1000) NOT NULL,
  `exp` varchar(10000) NOT NULL,
  `appointment` varchar(10000) NOT NULL,
  `physio` varchar(200) NOT NULL,
  `subject` varchar(10000) NOT NULL,
  `rec` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjective`
--

INSERT INTO `subjective` (`id`, `num`, `reason`, `prior`, `specify`, `exp`, `appointment`, `physio`, `subject`, `rec`) VALUES
(1, 'PRED_10', 'malaria', 'yes', 'lala', 'jujujuju', '2018-10-11', 'Yakubu opeyemi', 'dadadadadadadadad', 0),
(2, 'PRED_10', 'ddd', 'yes', 'ggg', 'ww', '2018-10-12', 'qq', 'ee', 0),
(3, 'PRED_10', 'klklk', 'yes', 'lala', 'asase', '2018-10-13', 'Yakubu opeyemi', 'Additional Information here', 100001),
(4, 'PRED_10', 'bruise', 'no', '', '', '2018-10-14', 'Ogbeni Opeyemi', 'Additional subjective Info goes here', 100002),
(5, 'PRED_10', 'bruise', 'yes', 'bruise', 'explanation', '2018-10-10', 'Ogbeni Opeyemi', 'other informations', 100003),
(6, 'PRED_10', 'bruise', 'no', '', '', '2018-10-19', 'Yakubu opeyemi', 'werfvreq', 100004),
(7, 'PRED_10', 'bruise', 'no', '', '', '2018-10-20', 'Yakubu opeyemi', 'jedfil', 100005),
(8, 'PRED_10', 'bruise', 'no', '', '', '2018-10-06', 'Yakubu opeyemi', 'jbhb', 100006),
(9, 'PRED_10', 'bruise', 'no', '', '', '2018-10-13', 'Yakubu opeyemi', 'lll', 100007),
(10, 'PRED_10', 'bruise', 'no', '', '', '2018-11-10', 'John Mark', 'gh', 100013),
(11, 'PRED_10', 'bruise', 'no', '', '', '2018-11-10', 'John Mark', 'gh', 100013),
(12, 'PRED_10', 'bruise', 'no', '', '', '2018-11-18', 'John Mark', 'sd', 100013),
(13, 'PRED_10', 'bruise', 'no', '', '', '2018-12-23', 'ade', 'uhibkihnjku', 100014);

-- --------------------------------------------------------

--
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `id` int(200) NOT NULL,
  `num` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `rec` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_1`
--

INSERT INTO `table_1` (`id`, `num`, `name`, `DOB`, `rec`) VALUES
(1, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 0),
(2, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 0),
(3, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 0),
(4, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100001),
(5, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100001),
(6, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100001),
(7, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100001),
(8, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100001),
(9, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100002),
(10, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100003),
(11, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100004),
(12, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100005),
(13, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100006),
(14, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100007),
(15, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100008),
(16, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100009),
(17, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100010),
(18, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100011),
(19, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100012),
(20, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100013),
(21, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100014);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education2`
--
ALTER TABLE `education2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `growth_1`
--
ALTER TABLE `growth_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `growth_2`
--
ALTER TABLE `growth_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_num`
--
ALTER TABLE `patient_num`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precaution`
--
ALTER TABLE `precaution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preg`
--
ALTER TABLE `preg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prev_1`
--
ALTER TABLE `prev_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prev_2`
--
ALTER TABLE `prev_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjective`
--
ALTER TABLE `subjective`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1`
--
ALTER TABLE `table_1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `education2`
--
ALTER TABLE `education2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `growth_1`
--
ALTER TABLE `growth_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `growth_2`
--
ALTER TABLE `growth_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patient_num`
--
ALTER TABLE `patient_num`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `precaution`
--
ALTER TABLE `precaution`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `preg`
--
ALTER TABLE `preg`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `prev_1`
--
ALTER TABLE `prev_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `prev_2`
--
ALTER TABLE `prev_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjective`
--
ALTER TABLE `subjective`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
