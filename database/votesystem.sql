-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 07:50 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'FPI/CPE/17/022', '$2y$10$Leysg6szh9YKpKogJCPaquwDIgduedmlNKBA0VPDSIFwPNQeq6c6q', 'Kamal', 'Oladele', 'IMG_20190210_212320597.jpg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 'SUNDAY MATTHEW', 'AJAYI', 'sunday pres.jpg', ''),
(19, 8, 'AWOLOLA MICHAEL', 'IYANUOLUWA', 'profile.jpg', ''),
(24, 9, 'EFRETUEI SAMUEL', 'OKON', 'jasper pres.jpg', ''),
(25, 8, 'ISRAEL TEMILOLUWA', 'FAPOHUNDA-PETER', 'profile.jpg', ''),
(27, 10, 'SILAS SEUN', 'OLORUNFEMI', '', ''),
(28, 10, 'ADEOMO VICTOR', 'GOROTI', 'ADEOMO.jpg', ''),
(33, 14, 'OLUWAGBEMIGA AREOYE', 'KUTI', '', ''),
(35, 13, 'CHINEDU CHRISTOPHER', 'OPARA', '', ''),
(37, 15, 'BLESSING', 'ELISHA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Vice President', 1, 2),
(9, 'President', 1, 1),
(10, 'Treasurer', 1, 3),
(11, 'General Secretary', 1, 4),
(12, 'Assisant General Secretary', 1, 5),
(13, 'Social Director', 1, 6),
(14, 'Sport Director', 1, 7),
(15, 'Public Relation Officer (PRO)', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `matric_no` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `matric_no`, `password`, `firstname`, `lastname`, `photo`) VALUES
(26, 'P2HOvXQtpAIw5dT', 'FPI/CPE/18/1-001', '$2y$10$MlrkYoVYTb8hz8m2SA6Di.lzjAKNacmjt8eFZhGTluu3wUNqEPDQ6', 'MERCY OKANMIYINOLUWA', 'ADEJAYAN', ''),
(27, 'wHhTs7fblD9dViB', 'FPI/CPE/18/1-002', '$2y$10$rtcehPA/vaou6uBqau4EpuKTBKutp9cK23dWzV36s8SuL04lGXSwG', 'MICHEAL IYANUOLUWA', 'AWOLOLA', ''),
(28, '9puksGw1dhO2JXQ', 'FPI/CPE/18/1-003', '$2y$10$MQALXrhC5ImWbSzo.6d3u.vmk6/hbXt9s9WjLOZTepXiZmcEYCipi', 'BLESSING OLUWASEGUN', 'ELISHA', ''),
(29, 'KoTwH4IR1plrDZ9', 'FPI/CPE/18/1-004', '$2y$10$jqfK2bcGPVf4VxcNLQ3HaeYkl/19uqd2L36xf3ybRyFCmbVrWZhqW', 'STEPHEN', 'EYE', ''),
(30, '2OYgKZyUbD71sWn', 'FPI/CPE/18/1-005', '$2y$10$/WlZcpx2fFFWe3A.wZlNju1DimvgTJZ1FXlf8ekXSaY00JGP5G6/W', 'PETER ISREAL', 'FAPOHUNDA', ''),
(31, 'jbwuoHApiZJQCXK', 'FPI/CPE/18/1-006', '$2y$10$TvCUf5vuHeUiv3a0h3IQb.KF60ig1DxIT2/hITdN79e1GFzT20vji', 'FRANCIS', 'IKUEDOWO', ''),
(32, 'jcxopkIe5lqXhsA', 'FPI/CPE/18/1-007', '$2y$10$3XWs54SEZkWLYHfct/I//O6/OHOKOX9IO4znGfbcGoMfZ3dQ5xCtK', 'FEMI OMOTAYO', 'FARIOGUN', ''),
(33, 'SuDgF4taLplwM6f', 'FPI/CPE/17/1-005', '$2y$10$lntvBP8ygZ13SPTsgkTN0OCH.p9qX7baXghKFVeVfi/8B0ynQn2ly', 'ANTHONY', 'AKOMOLAFE', ''),
(34, 'mw1EZgUGVAFpaSb', 'FPI/CPE/17/1-006', '$2y$10$Jw/KK38b7vapLI98Uh3fIupYGZn/E47bqkT1NcgUaDO9HctHXB82K', 'ABIOLA', 'ALALADE', ''),
(35, 'pJw9CYntogHMls8', 'FPI/CPE/17/1-011', '$2y$10$sT7pfXRBdwQgtpG/8yUlAOKP.J8.DbrH3LD0hNc.Yr.RyIIlxeNAq', 'OLUWATOMIKE', 'FAPOHUNDA', ''),
(36, 'msFW8TVDO4uQbE2', 'FPI/CPE/17/1-012', '$2y$10$vhNr7UuxyeaETANSwn3h/OywPKUe1H9O8t0roOIIogS3ZT50HhBMy', 'MICHAEL', 'MADU', ''),
(37, 'k3WYPq95RjSLKea', 'FPI/CPE/17/1-013', '$2y$10$bXtAjUCEDYqOGzApR9zok.bkvqLq2rcxq07gduwV3sc.HqfqvGGBW', 'OLALEKAN', 'ODUMAKIN', ''),
(38, 'yGwz4hYjq8PH63r', 'FPI/CPE/17/1-014', '$2y$10$C5hP1FiWhUiINWPPuqkk8OpXjD6bFbxcDPy9erM0BLndiiuZOTzj.', 'DANIEL', 'OLAKUNLE', ''),
(39, 'TqEsxkDWaFCJX38', 'FPI/CPE/17/022', '$2y$10$lFluBnAYXpmM4o0biCaxk.0HNUm88Qw18dUEPhXOOPadIKuqLpDHu', 'Kamal', 'Oladele', ''),
(40, '', 'FPI/CPE/17/001', 'ADEBAYO', 'WOLE', 'ADEBAYO', ''),
(41, '', 'FPI/CPE/17/003', 'AKINJISOLA', 'MICHAEL', 'AKINJISOLA', ''),
(42, '', 'FPI/CPE/17/004', 'AKINSUNLOLA', 'OLUWADOLAPO', 'AKINSUNLOLA', ''),
(43, '', 'FPI/CPE/17/005', 'AKINTELURE', 'DAVID OMOTAYO', 'AKINTELURE', ''),
(44, '', 'FPI/CPE/17/006', 'AMULEYA', 'SAMUEL AYOMIDE', 'AMULEYA', ''),
(45, '', 'FPI/CPE/17/009', 'CLEMENT', 'PHILIP CHUKWUKA', 'CLEMENT', ''),
(46, '', 'FPI/CPE/17/010', 'FABIYI', 'OLUWADAMILARE', 'FABIYI', ''),
(47, '', 'FPI/CPE/17/011', 'IDOWU', 'TOBI SAMSON', 'IDOWU', ''),
(48, '', 'FPI/CPE/17/013', 'KADE', 'TEMIDAYO', 'KADE', ''),
(49, '', 'FPI/CPE/17/014', 'KALATAMSINLAEMI', 'PRAISE', 'KALATAMSINLAEMI', ''),
(50, '', 'FPI/CPE/17/017', 'OGUNSANYA', 'DIMEJI OLAMIDE', 'OGUNSANYA', ''),
(51, '', 'FPI/CPE/17/018', 'OGUNTUASE', 'EMMANUEL', 'OGUNTUASE', ''),
(52, '', 'FPI/CPE/17/019', 'OJO', 'BOBOLA JAMES', 'OJO', ''),
(53, '', 'FPI/CPE/17/020', 'OKUNOLA', 'ISAIAH OLUWAFEMI', 'OKUNOLA', ''),
(54, '', 'FPI/CPE/17/021', 'OLADELE', 'JAMALDEEN', 'OLADELE', ''),
(55, '', 'FPI/CPE/17/023', 'OLAJIDE', 'HALLELUYAH MICHEAL', 'OLAJIDE', ''),
(56, '', 'FPI/CPE/17/024', 'OLASOJI', 'AUGUSTINE OLAJIDE', 'OLASOJI', ''),
(57, '', 'FPI/CPE/17/025', 'OLUROTIMI', 'JOSHUA AYODEJI', 'OLUROTIMI', ''),
(58, '', 'FPI/CPE/17/026', 'OLUWOLE', 'TOMIWA EMMANUEL', 'OLUWOLE', ''),
(59, '', 'FPI/CPE/17/027', 'ONI', 'SAMUEL KAYODE', 'ONI', ''),
(60, '', 'FPI/CPE/17/028', 'ORISILE', 'OLUWAFEMI PAUL', 'ORISILE', ''),
(61, '', 'FPI/CPE/17/029', 'OWOSENI', 'SAHEED OLAMIDE', 'OWOSENI', ''),
(62, '', 'FPI/CPE/17/030', 'SALIFU', 'MERCY', 'SALIFU', ''),
(63, '', 'FPI/CPE/18/002', 'ADEOSUN', 'BABATUNDE', 'ADEOSUN', ''),
(64, '', 'FPI/CPE/18/001', 'ADEBISI', 'ADEBAYO', 'ADEBISI', ''),
(65, '', 'FPI/CPE/18/004', 'AKINFOLARIN', 'DAMILOLA', 'AKINFOLARIN', ''),
(66, '', 'FPI/CPE/18/003', 'AJAYI', 'SUNDAY MICHAEL', 'AJAYI', ''),
(67, '', 'FPI/CPE/18/005', 'AKINLAMI', 'DAMILOLA', 'AKINLAMI', ''),
(68, '', 'FPI/CPE/18/006', 'ALONGE', 'OLUWAFEMI', 'ALONGE', ''),
(69, '', 'FPI/CPE/18/007', 'AWE', 'BLESSING OLUWADAMILARE', 'AWE', ''),
(70, '', 'FPI/CPE/18/008', 'AYESORO', 'DANIEL', 'AYESORO', ''),
(71, '', 'FPI/CPE/18/009', 'AYODELE', 'KEHINDE DANIEEL', 'AYODELE', ''),
(72, '', 'FPI/CPE/18/010', 'BAANUSOLORUN', 'OYENIYI', 'BAANUSOLORUN', ''),
(73, '', 'FPI/CPE/18/011', 'BOLAJI', 'OLUWADAMILARE JETHRO', 'BOLAJI', ''),
(74, '', 'FPI/CPE/18/012', 'GOROTI', 'ADEOMO VICTOR', 'GOROTI', ''),
(75, '', 'FPI/CPE/18/013', 'JAIRUS', 'VICTOR SEGUN', 'JAIRUS', ''),
(76, '', 'FPI/CPE/18/014', 'JOSHUA', 'JOSEPH IYANUOLUWA', 'JOSHUA', ''),
(77, '', 'FPI/CPE/18/015', 'KOLAPO', 'EMMANUEL OLAMIDE', 'KOLAPO', ''),
(78, '', 'FPI/CPE/18/016', 'KOMOLAFE', 'SAMUEL FOLORUNSHO', 'KOMOLAFE', ''),
(79, '', 'FPI/CPE/18/017', 'KUTI', 'OLUWAGBEMIGA AREOLA', 'KUTI', ''),
(80, '', 'FPI/CPE/18/018', 'KUWOYE', 'DAMILARE', 'KUWOYE', ''),
(81, '', 'FPI/CPE/18/019', 'MATHEW', 'AYOOLA KABIRU', 'MATHEW', ''),
(82, '', 'FPI/CPE/18/020', 'ODEWALE', 'ABDULAHI OPEYEMI', 'ODEWALE', ''),
(83, '', 'FPI/CPE/18/021', 'OGE', 'JOSIAH TUNMISE', 'OGE', ''),
(84, '', 'FPI/CPE/18/022', 'OGUNGBEMIRO', 'FEMI ISREAL', 'OGUNGBEMIRO', ''),
(85, '', 'FPI/CPE/18/023', 'OGUNMOLA', 'DAVID', 'OGUNMOLA', ''),
(86, '', 'FPI/CPE/18/024', 'OKON', 'EFRETUEI SAMUEL', 'OKON', ''),
(87, '', 'FPI/CPE/18/025', 'OLORUNFEMI', 'SILAS SEUN', 'OLORUNFEMI', ''),
(88, '', 'FPI/CPE/18/026', 'ONIYA', 'ALEX OLUMIDE', 'ONIYA', ''),
(89, '', 'FPI/CPE/18/027', 'OPARA', 'CHINEDU CHRISTOPHER', 'OPARA', ''),
(90, '', 'FPI/CPE/18/028', 'OWOLABI', 'BUSAYO TOSIN', 'OWOLABI', ''),
(91, '', 'FPI/CPE/18/029', 'RAFIU', 'AHMED LEKAN', 'RAFIU', ''),
(92, '', 'FPI/CPE/18/030', 'SAMAGBEYI', 'OPEYEMI FAVOUR', 'SAMAGBEYI', ''),
(93, '', 'FPI/CPE/18/031', 'SUBULOYE', 'OYEWALE RAPHEAL', 'SUBULOYE', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
