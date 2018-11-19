

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
(80, 'PRED_16', '1000016', 'Other', '', '');

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
(90, 'PRED_16', '1000016', 'Other', '', '');

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
  `occupational` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assesment`
--

INSERT INTO `assesment` (`id`, `name`, `DOB`, `num`, `rec`, `treatment`, `history`, `medication`, `dt`, `occupational`) VALUES
(1, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000005', '2018-11-03', 'Past medical ', 'medications goes here', '2018-11-17', 'occupational profile goes'),
(2, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000006', '2018-11-10', 'medical history', 'medications goes here', '2018-11-08', 'occupational profile'),
(3, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000007', '2018-11-11', 'Past medical surgical hx', 'medications goes here', '2018-11-03', 'occupational profile'),
(4, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '1000008', '2018-11-08', 'lkiolk', 'asder', '2018-11-22', 'mkiol'),
(5, 'Sofine Fegolli', '2018-10-06', 'PRED_11', '1000011', '2018-11-09', 'jknj', 'jjj', '2018-11-16', 'njk'),
(6, 'Yakubu Damilola', '2018-10-14', 'PRED_10', '1000012', '2018-11-09', 'wdas', 'medications goes here', '2018-11-15', 'occupational profile'),
(7, 'Riyah Ololade', '1212-12-12', 'PRED_16', '1000015', '2018-11-09', 'gh', 'medications goes here', '2018-11-10', 'gfeg'),
(8, 'Riyah Ololade', '1212-12-12', 'PRED_16', '1000016', '2018-11-09', 'fds', 'efd', '2018-11-08', 'sda');

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
(161, 'PRED_16', '1000016', 'LE Function', 'Poor', '', 'Selective muscle movement and control');

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
(32, 'PRED_16', '1000016', 'Social participation', 'impared', '');

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
(7, 'PRED_16', '1000016', 'family goals', 'gfsd', 'sdf', 'sdf', 'sfc', 'sdf', 'sdf', 'John Adewale');

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
(42, 'PRED_16', '1000016', 'Endurance/activity tolerance', 'Reduced', '', '');

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
(1, 1000019);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `ADL`
--
ALTER TABLE `ADL`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `assesment`
--
ALTER TABLE `assesment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `functional`
--
ALTER TABLE `functional`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `leisure`
--
ALTER TABLE `leisure`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pattern`
--
ALTER TABLE `pattern`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
