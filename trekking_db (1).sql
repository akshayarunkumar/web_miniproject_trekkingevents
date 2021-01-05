-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 05, 2021 at 07:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trekking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`name`, `email`, `text`) VALUES
('Suraj Gowda K T', 'surajgowdakt@gmail.com', 'save to db trekking');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `text`) VALUES
('Suraj Gowda K T', 'surajgowdakt@gmail.com', 'dsfdsf'),
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `hname` varchar(40) NOT NULL,
  `accomodation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hid`, `pid`, `hname`, `accomodation`) VALUES
(1, 1, 'Hotel Gokul', '3 star Facilities'),
(2, 1, 'Swathi Delicasy', '3 star Facilities'),
(3, 1, 'SK FishLand', '3 star Facilities'),
(4, 2, 'Hotel Orchid', '3 star Facilities'),
(5, 2, 'Hotel Golden palm', '3 star Facilities'),
(6, 2, 'Hotel Prestige', '3 star Facilities'),
(7, 3, 'ITC Hotel', '3 star Facilities'),
(8, 3, 'Lemon Tea Hotel', '3 star Facilities'),
(9, 3, 'Radisson Hotel', '3 star Facilities'),
(20, 11, 'Surya Residency', '3 star Facilities'),
(21, 11, 'Regenta Hotel', '3 star Facilities'),
(22, 12, 'Dawanam hotel', '3 star Facilities'),
(23, 12, 'Signature Inn', '3 star Facilities');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `distane` varchar(40) NOT NULL,
  `natureof` text NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `distane`, `natureof`, `description`) VALUES
(1, ' Araku Valley Trek', 'Altitude: 910 meters', 'Mountain View', 'One of the best hikes in India, this trek is an expanse of green which brings the traveler closer to nature with the passing of each turn. Located on the Eastern Ghats, this trek is spread across an area of 36kms. Bora Caves and Katiki Waterfalls are among the major highlights of this trek, which takes the hiker to the highest peak in Andhra Pradesh.\r\n\r\nAltitude: 910 meters\r\nDuration: one day\r\nBest season: October- February'),
(2, 'Rajmachi Trek', 'Altitude: 826 meters', 'Mountain/Pilgrimage', 'With the destination that is one of the most popular forts of the Lonavala region, this trek promises the adventure seekers a thrill that comprises of both adventure and views which are a thing to behold throughout life.\r\n\r\nOne of the best experiences of the Western Ghats, this trek is developing as quite a famous tourist spot too. The distinguished view of the Kondana caves along the trek is one of the distinguishing features of the trek.\r\n\r\nAltitude: 826 meters\r\nDuration: one day\r\nBest season: June and September'),
(3, ' Kodachadri Trek', 'Altitude: 1,343 meters', 'Mountain View', 'The southern spectrum of the Indian subcontinent possesses a number of the trekking places which are exceptional in their own forms. Among the famous treks of south India, the Kodachadri trek holds a prominent position with its beauty and diversity of landscapes. Hidlumane falls is one of the famous pit stops along the trek.\r\n\r\nAltitude: 1,343 meters\r\nDuration: 2 days\r\nBest season: October – January'),
(11, 'Kanchenjunga Base Camp Trek', 'Altitude: 8,586 meters', 'Mountain Hiking', 'One of the awe-inspiring treks of the country, this trek is among the most sought after by the trekkers from around the world. Though a little challenging, the trek is exceptional by the means of its thrills and sights. Lakes, dense forests, tribal villages, and varied landscapes, the trek has it all.\r\n\r\nAltitude: 8,586 meters\r\nDuration: 8 days\r\nBest season: Mid March – June and Mid September – October'),
(12, 'Kumara Parvath Trek', 'Altitude: 1,712 meters', 'Mountain Hiking', 'The trek that takes you to the second highest peak in Kodagu whilst making you an audience with the most picturesque views and enthralling experiences is the Kumara Parvath trek. The trek is not a cake walk but is among one of the best trekking places in India.\r\n\r\nAltitude: 1,712 meters\r\nDuration: 3 – 4 hours\r\nBest season: October – February');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hid`),
  ADD UNIQUE KEY `hname` (`hname`),
  ADD KEY `hotel_ibfk_1` (`pid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `places` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
