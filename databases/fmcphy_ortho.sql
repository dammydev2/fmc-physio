
--
-- Database: `fmcphy_ortho`
--

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
(27, 'PRED_11', '100015', 'Additional symptoms entered here');

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
(3, 'PRED_11', '100015', 'Yakubu Damilola', '2018-11-10');

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
(65, 'PRED_11', '100015', 'Other special test', '', 'end');

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
(6, 'PRED_11', '100015', 'full', 'jjj', 'assis', 'prooo', 'www');

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
(19, 'PRED_11', '100015', '');

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
(29, 'PRED_11', '100015', '');

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
(19, 'PRED_11', '100015', 'Unwilling to assist with program');

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
(30, 'PRED_11', '100015', '');

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
(6, 'PRED_11', '100015', 'scapular mobility', 'fff', 'et', '', 'cdsf ', 'not tolerated', 'sfd', 'sds', 'goals', 'goals2', 'vvds', 'ee', 'dfds');

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
(70, 'PRED_11', '100015', 'other', 'other here', 'jhgb');

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
(6, 'PRED_11', '100015', 'scapular mobility', 'neurological', 'parenthesis', 'sensation', 'proprioception', 'normal tonic', 'reflex', 'other');

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
(23, 'PRED_11', '100015', '');

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
(21, 'PRED_11', '100015', '');

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
(41, 'PRED_11', '100015', '');

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
(36, 'PRED_11', '100015', 'R Rotation', '', '', 'ss', '', '', '', '');

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
(60, 'PRED_11', '100015', 'Wrist Extension', '', 'cc', 'ss', '', '', '', 'comments for ROM here');

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
(72, 'PRED_11', '100015', 'Ankle Eversion', '', '', '', '', '', '', '');

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
(1, 100015);

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
(6, 'PRED_11', '100015', '3.14m', '90');

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
(144, 'PRED_11', '100015', 'External Rotator Test', '+ve');

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
(10, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '100015', '2018-11-09', 'heavy bruise', '2018-11-09', 'Trader', 'Bruise to heal');

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
(8, 'PRED_11', '100015', '90', '80', '44', 'Chief complaint', 'Present bruise', 'The current symptoms', 'the onset', 'the pain', 'Constant');

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
(9, 'PRED_11', '100015', '5', '4', '4', 'pain duration', 'aggreviating factor', 'alleviating factor', 'symptom', 'allergies', 'Array', 'measures', 'clearing', 'flexibility');

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `endurance`
--
ALTER TABLE `endurance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `gait`
--
ALTER TABLE `gait`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gait_2`
--
ALTER TABLE `gait_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `last`
--
ALTER TABLE `last`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `living`
--
ALTER TABLE `living`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mobility`
--
ALTER TABLE `mobility`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mobility_2`
--
ALTER TABLE `mobility_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `posture`
--
ALTER TABLE `posture`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posture_2`
--
ALTER TABLE `posture_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posture_3`
--
ALTER TABLE `posture_3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `precautions`
--
ALTER TABLE `precautions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `range_1`
--
ALTER TABLE `range_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `range_2`
--
ALTER TABLE `range_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `range_3`
--
ALTER TABLE `range_3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `special`
--
ALTER TABLE `special`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `special_2`
--
ALTER TABLE `special_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_2`
--
ALTER TABLE `table_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_3`
--
ALTER TABLE `table_3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
