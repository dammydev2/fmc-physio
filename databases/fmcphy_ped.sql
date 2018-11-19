

--
-- Database: `fmcphy_ped`
--

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
(35, 'PRED_10', '', 'John Mark', 'iuedni', 100013);

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
(16, 'PRED_10', '100013', 'Has your child receive theraphy anywhere else?', 'yes', '');

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
(7, 'PRED_10', 'nursery', 'not at all', 'not applicable', 'pre-nursery', 'nil', 'General Hospital, Ijaye', 'doctor', 'Additional info on theraphy service', 'no', 'To be able to walk again', 'John Mark', 'nm kj', '100013');

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
(46, 'PRED_10', '', 'df vf', 'f ', '100013');

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
(156, 'PRED_10', 'Toilet train', 'wqefqwfer', 'df vf', 'f ', '100013');

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
(8, 'PRED_10', 'John Mark', 'dcdsf', 'fdasf', 'dfasf', '2018-11-16', 'Yoruba', '100013');

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
(21, 'PRED_10', '100013', 'John Mark', 'rsgv r', 'Does your child have any moverment restrictions?', 'yes', '');

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
(24, 'PRED_10', '1.2m', '3kg', '100013', 'John Mark', 'fsgsr', 'was labour and delivery normal', 'yes', 'habhanh');

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
(76, 'PRED_10', 'Good', '', 'John Mark', 'fv ef', '100013');

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
(21, 'PRED_10', 'have you ever purchased or rented durable Medical Equipment, orthortics, prosthetics or supplies?', '', 'John Mark', 'fv ef', '100013');

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
(1, 100013);

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
(7, 'PRED_10', 'Adebayo Olaitan', 12, 'Lawyer', 'Adebayo Shade', 23, 'Trader', 'no', '', 'married', 'Father and Mother', '100013', 'John Mark', 'fda');

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
(12, 'PRED_10', 'bruise', 'no', '', '', '2018-11-18', 'John Mark', 'sd', 100013);

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
(20, 'PRED_10', 'Yakubu Damilola', 'PRED_10', 100013);

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
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `education2`
--
ALTER TABLE `education2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `growth_1`
--
ALTER TABLE `growth_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `growth_2`
--
ALTER TABLE `growth_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient_num`
--
ALTER TABLE `patient_num`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `precaution`
--
ALTER TABLE `precaution`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `preg`
--
ALTER TABLE `preg`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `prev_1`
--
ALTER TABLE `prev_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `prev_2`
--
ALTER TABLE `prev_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subjective`
--
ALTER TABLE `subjective`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
