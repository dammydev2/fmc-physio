

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
(1, 'admin', 'admin', 'front', ''),
(2, 'root', 'admin2', 'phy', 'John Adewale'),
(3, 'adesina', '111', 'ped', 'Dr Adesina Oguntoyinbo'),
(4, 'adesina', '111', 'ped', 'Dr Adesina Oguntoyinbo'),
(5, 'yd', '11111111', 'Neurology', 'Yakubu Damilola opeyemi'),
(6, 'bola', 'damilola', 'Front Desk', 'Semiu Bolanle');

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
