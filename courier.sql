-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 12:55 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `aid` int(10) NOT NULL,
  `aname` varchar(25) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `lmark` varchar(25) NOT NULL,
  `mob` int(10) NOT NULL,
  `altmob` int(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `availab` varchar(10) NOT NULL,
  `sdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`aid`, `aname`, `adres`, `lmark`, `mob`, `altmob`, `email`, `availab`, `sdate`) VALUES
(34, 'aaaaaaaa', 'aaaaaaaa', 'aaaaaaaaa', 0, 0, 'CALEBANTONY1@GMAIL.COM', 'fulltime', '2013-04-21'),
(37, 'stanley', 'kottayam', 'palli', 2147483647, 2147483647, 'stephen@gmail.com', 'fulltime', '2016-04-21'),
(38, 'kiran', 'ernakulam', 'near service centre', 2147483647, 2147483647, 'kiran@gmail.com', 'fulltime', '2017-04-21'),
(39, 'celin', 'amaravathi', 'near new bridge', 2147483647, 2147483647, 'celin@gmail.com', 'fulltime', '2017-04-21'),
(40, 'reymond', 'thevera', 'bus stand', 2147483647, 2147483647, 'reymond@gmail.com', 'fulltime', '2017-04-21'),
(41, 'anada', 'kakkanda', 'veedinta front', 2147483647, 2147483647, 'anand@gmail.com', 'fulltime', '2017-04-21'),
(42, 'aliyan', 'bolgatty', 'veedinta front', 2147483647, 2147483647, 'anand@gmail.com', 'fulltime', '2020-04-21'),
(43, 'nid', 'jjjj', 'jjjj', 2147483647, 2147483647, 'anand@gmail.com', 'fulltime', '2020-04-21'),
(44, 'celi', 'fk', 'ss', 2147483647, 2147483647, 'celin@gmail.com', 'fulltime', '2020-04-21'),
(45, 'shunnisend', 'avanta veed', 'veedinta front', 2147483647, 2147483647, 'shunni@gmail.com', 'fulltime', '2006-06-21'),
(46, 'malu', 'kakkand', 'edakochi bus stand', 2147483647, 2147483647, 'shunni@gmail.com', 'fulltime', '2006-06-21'),
(47, 'lal', 'kozhikode', 'edakochi bus stand', 2147483647, 2147483647, 'shunni@gmail.com', 'fulltime', '2007-06-21'),
(48, 'reethu', 'thammana', 'veed', 2147483647, 1212232341, 'shunni@gmail.com', 'fulltime', '2007-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `consig`
--

CREATE TABLE `consig` (
  `cnid` int(11) NOT NULL,
  `iname` varchar(25) NOT NULL,
  `idesc` varchar(50) NOT NULL,
  `quantity` int(10) NOT NULL,
  `cat` varchar(20) NOT NULL,
  `sid` int(10) NOT NULL,
  `rid` int(10) NOT NULL,
  `status` varchar(25) NOT NULL,
  `pymt` varchar(20) NOT NULL,
  `deli_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consig`
--

INSERT INTO `consig` (`cnid`, `iname`, `idesc`, `quantity`, `cat`, `sid`, `rid`, `status`, `pymt`, `deli_date`) VALUES
(26, 'orange', '2 kilo', 4, 'normal', 34, 23, 'delivered', 'pending', '2021-04-13'),
(27, 'laptop', 'good working condition', 1, 'speedcourier', 37, 24, 'delivered', '200', '2021-06-07'),
(28, 'laptop', 'good working condition', 1, 'speedcourier', 38, 25, 'processing delivery', '400', '0000-00-00'),
(29, 'food', 'fresh food', 1, 'normal', 39, 26, 'delivered', '800', '2021-06-02'),
(30, 'mobile cover', 'good quality', 2, 'normal', 40, 27, 'delivered', '123', '2021-04-20'),
(31, 'power bank', 'good ', 2, 'speedcourier', 41, 28, 'delivered', '2233', '2021-06-07'),
(32, 'laptop', '2 kilo', 2, 'normal', 42, 29, 'delivered', '222', '2021-04-20'),
(33, 'food', '2 kilo', 1, 'normal', 43, 30, 'delivered', '22', '2021-06-07'),
(34, 'food', '2 kilo', 1, 'normal', 43, 30, 'delivered', '22', '2021-06-07'),
(35, 'kappa', '2 kilo', 2, 'normal', 44, 31, 'delivered', '26', '2021-06-07'),
(36, 'power bank', 'good apple iphone', 5, 'normal', 45, 32, 'delivered', '455', '2021-06-06'),
(37, 'mango', 'fresh', 2, 'normal', 46, 33, 'processing delivery', '2333', '0000-00-00'),
(38, 'power bank', 'good apple iphone', 1, 'normal', 47, 34, 'delivered', '150', '2021-06-07'),
(39, 'vellakka', 'good apple iphone', 2, 'normal', 48, 35, 'processing delivery', '500', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `empid` int(20) NOT NULL,
  `empname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `empadr` varchar(50) NOT NULL,
  `empmobile` bigint(20) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `doj` date NOT NULL,
  `pass` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`empid`, `empname`, `email`, `empadr`, `empmobile`, `gender`, `doj`, `pass`, `dob`) VALUES
(1, 'caleb', 'caleb@1234', 'edakochi', 6789965432, 'm', '2021-03-11', 'caleb', '2021-03-16'),
(2, 'amalpriya idukkigold', 'amarnath@gmail', 'rajakkad edukkiiiiiiiiiiiiiiiii', 8976439047, 'm', '2021-03-25', 'amalpriya', '2021-03-03'),
(9, 'joseph rinoy', 'joseph@gmai.com', 'avanta veed', 9087765, 'm', '2021-04-15', 'zzzggg', '2021-03-31'),
(11, 'christeena', 'christeen@gmail.com', 'thrissur', 3333333333, 'm', '2021-04-12', 'christeena', '2021-04-16'),
(12, 'joeph', 'jose@gmail.com', 'kochi', 344444, 'm', '2021-04-01', '44444444', '2021-04-03'),
(13, 'joeph', 'jose@gmail.com', 'kochi', 344444, 'm', '2021-04-01', '44444444', '2021-04-03'),
(14, 'joeph', 'jose222@gmail.com', 'kochi', 344444, 'm', '2021-04-01', '44444444', '2021-04-03'),
(20, 'reethu', 'reetthu@gmail.com', 'thammanam', 9938977677, 'f', '2021-04-21', 'reethu', '2021-04-27'),
(22, 'nikhil', 'nikhil@gmail.com', 'kochi', 8976678789, 'm', '2021-06-07', 'nikhil', '2021-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `rid` int(10) NOT NULL,
  `rname` varchar(25) NOT NULL,
  `radres` varchar(50) NOT NULL,
  `lmark` varchar(25) NOT NULL,
  `mob` int(10) NOT NULL,
  `altmob` int(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `availab` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receiver`
--

INSERT INTO `receiver` (`rid`, `rname`, `radres`, `lmark`, `mob`, `altmob`, `email`, `availab`) VALUES
(23, 'shahdhi', 'ddddddd', 'ddddddd', 3333, 3333333, 'CALEBANTONY1@GMAIL.COM', 'fulltime'),
(24, 'bibith', 'pathanamthitta', 'house', 2147483647, 2147483647, 'bibith@gmail.com', 'fulltime'),
(25, 'rahul', 'kothamaghalam', 'bus stand', 2147483647, 2147483647, 'rahul@gmail.com', 'fulltime'),
(26, 'anusree', 'ernakulam', 'near textile shop', 2147483647, 2147483647, 'anusreeeeee09@gmail.com', 'fulltime'),
(27, 'nikhil', 'kakkand', 'blogerhome', 2147483647, 2147483647, 'nik@gmail.com', '9-4'),
(28, 'antony vl antony', 'kakkanda', 'veedinta front', 2147483647, 2147483647, 'caleee@gmail.COM', '9-4'),
(29, 'valiyyy', 'kakkanda', 'edakochi bus stand', 2147483647, 2147483647, '33333@gmail.com', 'fulltime'),
(30, 'rahul', 'njnjn', 'jnjnj', 2147483647, 2147483647, 'chami@gmail.com', 'fulltime'),
(31, 'haritha', 'bolgatty', 'edakochi bus stand', 2147483647, 2147483647, 'suk@gmail.com', 'fulltime'),
(32, 'shunnirec', 'bolgatty', 'veedinta front', 2147483647, 2147483647, 'shunnirec@gmail.com', 'fulltime'),
(33, 'paul', 'delhi', 'junction', 2147483647, 2147483647, 'paul@gmail.com', 'fulltime'),
(34, 'akhik', 'kakkanda', 'veedinta front', 2147483647, 2147483647, 'akhik@gmail.com', 'fulltime'),
(35, 'joshni', 'thammanam', 'blogerhome', 2147483647, 2147483647, 'joshni@gmail.com', 'fulltime');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `cid` int(20) NOT NULL,
  `emp` int(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`cid`, `emp`, `type`, `tid`) VALUES
(33, 20, 'd', 37),
(32, 11, 'p', 38),
(33, 11, 'p', 39),
(32, 11, 'd', 40),
(36, 22, 'p', 41),
(36, 22, 'd', 42),
(33, 22, 'p', 43),
(31, 22, 'p', 44),
(33, 22, 'd', 45),
(27, 22, 'd', 46),
(37, 22, 'p', 47),
(31, 22, 'd', 48),
(38, 22, 'p', 49),
(39, 22, 'p', 50),
(38, 22, 'd', 51);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `utype` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `email`, `pass`, `utype`) VALUES
('admin', 'admin@123', 'admin', 'a'),
('amar', 'amar@amar', 'amar', 'c'),
('amalpriya', 'amarnath@gmail', 'amalpriya', 'e'),
('anand', 'anand@gmail.com', 'anand', 'c'),
('anusree', 'anuravi@gmail.com', 'anuravi', 'e'),
('brinta', 'brinta@123', 'brinta', 'c'),
('caleb', 'caleb@1234', 'caleb', 'e'),
('celin', 'celin@gmail.com', 'celin', 'c'),
('christeena', 'christeen@gmail.com', 'christeena', 'e'),
('joseph', 'joseph@gmai.com', 'zzzggg', 'e'),
('kiran', 'kiran@gmail.com', 'kiran', 'c'),
('nikhil', 'nikhil@gmail.com', 'nikhil', 'e'),
('reethu', 'reetthu@gmail.com', 'reethu', 'e'),
('reymond', 'reymond@gmail.com', '8989', 'c'),
('shunni', 'shunni@gmail.com', 'shunni', 'c'),
('sonja', 'sonja@gmail.com', '37778878888', 'e'),
('stanley', 'stanley@gmail.com', 'stanley', 'c'),
('stanley', 'stephen@gmail.com', 'stan', 'c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `consig`
--
ALTER TABLE `consig`
  ADD PRIMARY KEY (`cnid`),
  ADD KEY `kp` (`sid`),
  ADD KEY `pk` (`rid`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `emp` (`emp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `consig`
--
ALTER TABLE `consig`
  MODIFY `cnid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `empid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `receiver`
--
ALTER TABLE `receiver`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consig`
--
ALTER TABLE `consig`
  ADD CONSTRAINT `kp` FOREIGN KEY (`sid`) REFERENCES `address` (`aid`),
  ADD CONSTRAINT `pk` FOREIGN KEY (`rid`) REFERENCES `receiver` (`rid`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `consig` (`cnid`),
  ADD CONSTRAINT `emp` FOREIGN KEY (`emp`) REFERENCES `employe` (`empid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
