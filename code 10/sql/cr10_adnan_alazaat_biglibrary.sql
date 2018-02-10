-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2018 at 03:18 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_adnan_alazaat_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_id` int(11) NOT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `surname` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_id`, `last_name`, `surname`) VALUES
(1, 'jorj', 'jorgone'),
(2, 'ahmed', 'hamed'),
(3, 'samer', 'kabaz'),
(4, 'ramez', 'alsalkh'),
(5, 'yahea', 'abdeen'),
(6, 'nabel', 'sreii'),
(7, 'nabeh', 'bri'),
(8, 'jorg', 'grdahe'),
(9, 'fisal', 'alkasem'),
(10, 'david', 'via');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `ISBN_code` int(11) DEFAULT NULL,
  `Title` varchar(55) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `short_description` varchar(55) DEFAULT NULL,
  `status` varchar(55) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `fk_publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `type`, `ISBN_code`, `Title`, `publish_date`, `short_description`, `status`, `picture`, `fk_author_id`, `fk_publisher_id`) VALUES
(1, 'book', 1234567890, 'Big_Words', '2018-01-05', 'good', 'available', 'http://prodimage.images-bn.com/pimages/9780061127595_p0_v3_s1200x630.jpg', 1, 1),
(2, 'cd', 1234567891, 'Dylan', '2017-01-01', 'good', 'available', 'https://lh6.googleusercontent.com/o9wBLZBFOvGfvgQ3JlU-MUJMlBU0I-GgbqEzmm9-Icg1rZWR91LtnNAGtLW3BoFOGJllYpcl7R3kOaTIpFS-Vdy5B-lXSPBQBVJb7oPZZnN8VtN6infy2yYVdPZqn9SD2KbPVQIU', 2, 2),
(3, 'dvd', 1234567892, 'City lights', '2016-01-01', 'good', 'available', 'https://lh5.googleusercontent.com/NcceU_0L067O97K94W_G-5R1uUc8NVli1M3Ai4I50V7olCPjHx9-HHA2cJWpDjKSVREgQYcqXGLaJuaHFv1cI90avFBcoX0tHK6MAU5umkTKLT5tupm3TFd9bx8iFYlN68UYTdJ2 ', 3, 3),
(4, 'dvd', 1234567893, 'Lawrence of Arabia', '2015-01-05', 'good', 'reserved', 'https://lh3.googleusercontent.com/-dRuOH2GzS_RpKdqY1cK0qQZbifOlsRtkJsMVOBxMGUSNPiqtDPAsCTdR19SL0zp14oJ-yG9B8QkASLpFGnAPDXBUx7PUEp3hSnr3-GG6ionE9nB-S-b7x4l2nO24GcOxTzLeU0P ', 4, 4),
(5, 'cd', 1234567894, 'Diamond Life', '2011-04-03', 'good', 'reserved', 'https://lh4.googleusercontent.com/-QEpPd7P3zI8NQXN7TYzx8g2GuTU5PAFH_FSKewOG9fOjNYb21Rfh4eMEDQNLCto8uupzJ_kN21a5XprX0dFLcrnHNq5fpig2TKBOLOSb9bXe0a3fK1cqJs9vBPTLqAtm7Mo46lv', 5, 5),
(6, 'book', 1234567895, 'kinder', '2010-01-01', 'good', 'reserved', 'https://lh3.googleusercontent.com/LhNtKnTFu35kGdjMRMZ9M8CqFCoBEeFupa7Bci5nQ75Z7pOlhF9v_pwLB6vsxsdXNg67Pm99Jh2XtTyzw5ghaZUtaXM8ZVadlb0mx-TOOaJ1qG-FfO8PF_5NoRafwvEmV4LjhJ4W ', 6, 6),
(7, 'book', 1234567896, 'Foundation', '2005-04-02', 'good', 'reserved', 'https://lh6.googleusercontent.com/DGBSQtjtIPnGVopFGTl9yITpH9qoV_fS1gi2islbeWCLDyiySSgvaull9Aw-CKzKm4b5xmF98i_rtDUxZnyWKhpjDArzyM2JNjT_6CRsgI-oJpsnPvaL1Ytxx5FVPQacJRvIB9ar', 7, 7),
(8, 'dvd', 1234567897, 'The 15:17 to Paris', '2004-02-03', 'good', 'available', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY0NjUzNjYwOV5BMl5BanBnXkFtZTgwMzY1MDM0NDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg ', 8, 8),
(9, 'dvd', 1234567898, 'Black Panther', '2001-03-02', 'good', 'available', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_SY1000_CR0,0,674,1000_AL_.jpg ', 9, 9),
(10, 'dvd', 1234567899, 'kinder', '2018-04-01', 'good', 'available', 'http://2.bp.blogspot.com/-BVKDQyHuFhI/T5So-I-DtJI/AAAAAAAAAv0/XppxykGUjy0/s1600/Dog+in+boots.jpg ', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  `size` enum('big','medium','small') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `address`, `size`) VALUES
(1, 'omer', 'wien', 'medium'),
(2, 'tmaer', 'linz', 'big'),
(3, 'ronaldo', 'madrid', 'medium'),
(4, 'messi', 'barshalona', 'small'),
(5, 'tevez', 'columea', 'big'),
(6, 'jafer', 'syrian', 'big'),
(7, 'fisal', 'afagnstan', 'big'),
(8, 'ahmed', 'makdonia', 'small'),
(9, 'samer', 'bolonya', 'small'),
(10, 'roro', 'jahez', 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Registration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `Registration_date`) VALUES
(4, 'ahmed', 'hasen', 'ahmed@hotmail.com', 'c60021d4e94778f96930398b2515949189b6347bfdbf886cee45d33', '2018-02-09 16:50:23'),
(6, 'adnan', 'alazaaat', 'adnan@hotmail.com', 'e0bc60c82713f64ef8a57c0c40d02ce24fd0141d5cc3086259c19b1', '2018-02-09 19:13:49'),
(7, 'adnan', 'aza', 'alazaat-a@hotmail.com', 'e0bc60c82713f64ef8a57c0c40d02ce24fd0141d5cc3086259c19b1e62a62bea', '2018-02-09 19:20:57'),
(8, 'omar', 'azaat', 'omar@hotmail.com', 'e0bc60c82713f64ef8a57c0c40d02ce24fd0141d5cc3086259c19b1e62a62bea', '2018-02-09 19:28:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`Author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
