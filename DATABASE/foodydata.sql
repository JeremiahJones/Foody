-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2016 at 04:43 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `resturants`
--

CREATE TABLE IF NOT EXISTS `resturants` (
  `ID` int(2) NOT NULL DEFAULT '0',
  `Name` varchar(27) DEFAULT NULL,
  `Address` varchar(28) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` int(5) DEFAULT NULL,
  `Phone` varchar(14) DEFAULT NULL,
  `Type` varchar(14) DEFAULT NULL,
  `Price` int(2) DEFAULT NULL,
  `Rating` int(1) DEFAULT NULL,
  `fastFood` int(1) NOT NULL,
  `Picture` char(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resturants`
--

INSERT INTO `resturants` (`ID`, `Name`, `Address`, `City`, `State`, `Zip`, `Phone`, `Type`, `Price`, `Rating`, `fastFood`, `Picture`) VALUES
(1, 'Tony Caputo''s Market & Deli', '215 Central Campus Dr.', 'Salt Lake City', 'UT', 84112, '(801) 583-8801', 'Italian', 10, 3, 0, 'images/1.jpg'),
(2, 'Sono Sushi Express', '1318 E 200 S', 'Salt Lake City', 'UT', 84102, '(801) 582-2800', 'Japanese', 16, 2, 1, 'images/2.jpg'),
(3, 'Sawadee Thai Restaurant', '754 S Temple', 'Salt Lake City', 'UT', 84102, '(801) 328-8424', 'Thai', 14, 3, 0, 'images/3.jpg'),
(4, 'Hunan Chinese Restaurant', '2068 Harrison Blvd', 'Ogden', 'UT', 84401, '(801) 621-0787', 'Chinese', 12, 1, 0, 'images/4.jpg'),
(5, 'Lee''s Mongolian BBQ', '2866 Washington Blvd', 'Ogden', 'UT', 84403, '(801) 621-9120', 'BBQ', 15, 4, 0, 'images/5.jpg'),
(6, 'The Sonora Grill', '2310 Kiesel Ave', 'Ogden', 'UT', 84401, '(801) 393-1999', 'Mexican', 17, 4, 0, 'images/6.jpg'),
(7, 'Alvaros Mexican Food', '471 N 1680 E', 'St. George', 'UT', 84790, '(435) 656-5746', 'Mexican', 10, 3, 0, 'images/7.jpg'),
(8, 'Buca di Beppo', '1812 Red Cliffs Dr.', 'St. George', 'UT', 84790, '(435) 627-6832', 'Italian', 20, 4, 0, 'images/8.jpg'),
(9, 'Mongolian BBQ', '250 Red Cliffs Dr.', 'St. George', 'UT', 84790, '(435) 656-1880', 'BBQ', 17, 4, 0, 'images/9.jpg'),
(10, 'Sunshine Nutrition', '111 W 535 S', 'Cedar City', 'UT', 84720, '(435) 586-4889', 'Nutrition', 8, 3, 0, 'images/10.jpg'),
(11, 'Brodys Mexican Restaurant', '1166 S. Sage D.', 'Cedar City', 'UT', 84720, '(435) 531-8773', 'Mexican', 10, 2, 0, 'images/11.jpg'),
(12, 'Freestyle Pizza #2', '755 S Main St', 'Cedar City', 'UT', 84720, '(435) 865-0404', 'Pizza', 16, 3, 1, 'images/12.jpg'),
(13, 'Bombay House', '463 N University Ave', 'Provo', 'UT', 84601, '(801) 373-6677', 'Indian', 20, 4, 0, 'images/13.jpg'),
(14, 'Tucanos Brazilian Grill', '4801 N University Ave ', 'Provo', 'UT', 84604, '(801) 224-4774', 'Brazilian', 28, 5, 0, 'images/14.jpg'),
(15, 'Station 22 Cafe', '22 Center St', 'Provo', 'UT', 84601, '(801) 607-1803', 'Cafe', 14, 3, 0, 'images/15.jpg'),
(16, 'Kohinoor', '75 S State St', 'Orem', 'UT', 84058, '(801) 226-6666', 'Indian', 18, 4, 0, 'images/16.jpg'),
(17, 'Pho Plus', '908 S State St', 'Orem', 'UT', 84097, '(801) 765-8808', 'Vietnamese', 12, 2, 0, 'images/17.jpg'),
(18, 'Yamato Japanese Restaurant', '1074 S State St', 'Orem', 'UT', 84097, '(801) 227-7100', 'Japanese', 16, 3, 0, 'images/18.jpg'),
(19, 'Thai House Cuisine', '288 W Main St', 'Lehi', 'UT', 84043, '(801) 766-4420', 'Thai', 13, 3, 0, 'images/19.jpg'),
(20, 'Greek Souvlaki', '2975 Club House Dr', 'Lehi', 'UT', 84043, '(801) 768-9090', 'Greek', 11, 2, 0, 'images/20.jpg'),
(21, 'Texas Roadhouse', '1402 E Main St', 'Lehi', 'UT', 84043, '(801) 768-4474', 'Steak', 16, 5, 0, 'images/21.jpg'),
(22, 'La Chaca Mexican Grill', '742 Center St', 'Midvale', 'UT', 84047, '(801) 562-0440', 'Mexican', 19, 3, 0, 'images/22.jpg'),
(23, 'Midvale Mining Co Rest.', '390 East 7200 South', 'Midvale', 'UT', 84047, '(801) 255-5511', 'American', 15, 4, 0, 'images/23.jpg'),
(24, 'Joe Morley''s BBQ', '100 Center St', 'Midvale', 'UT', 84047, '(801) 255-8928', 'BBQ', 20, 5, 0, 'images/24.jpg'),
(25, 'Village Pizza', '3545 Ranches Pkwy', 'Saratoga Springs', 'UT', 84005, '(801) 789-8455', 'Pizza', 12, 2, 0, 'images/25.jpg'),
(26, 'Pizza Hut', '1513 N Redwood Rd', 'Saratoga Springs', 'UT', 84045, '(801) 766-1337', 'Pizza', 14, 2, 1, 'images/26.jpg'),
(27, 'Kneaders Bakery & Cafe', '1482 N Redwood Rd', 'Saratoga Springs', 'UT', 84043, '(801) 407-8363', 'Sandwich', 8, 4, 0, 'images/27.jpg'),
(28, 'Snake Creek Grill', '650 W 100 S', 'Heber City', 'UT', 84032, '(435) 654-2133', 'American', 10, 3, 0, 'images/28.jpg'),
(29, 'Dragon Star', '587 S Main St', 'Heber City', 'UT', 84032, '(435) 657-2262', 'Chinese', 15, 2, 0, 'images/29.jpg'),
(30, 'Dairy Keen', '199 S Main St', 'Heber City', 'UT', 84032, '(435) 654-5336', 'American', 9, 3, 1, 'images/30.jpg'),
(31, 'Riverhorse on Main', '540 Main St', 'Park City', 'UT', 84060, '(435) 649-3536', 'American', 22, 4, 0, 'images/31.jpg'),
(32, 'Bangkok Thai On Main', '605 Main St,', 'Park City', 'UT', 84060, '(435) 649-8424', 'Thai', 29, 5, 0, 'images/32.jpg'),
(33, 'Grappa Italian Restaurant', '151 Main St', 'Park City', 'UT', 84060, '(435) 645-0636', 'Italian', 15, 3, 0, 'images/33.jpg'),
(34, 'Tandoori Oven', '720 E 1000 N', 'Logan', 'UT', 84321, '(435) 750-6836', 'Indian', 13, 3, 0, 'images/34.jpg'),
(35, 'Logan''s Heroes', '101 S Main St', 'Logan', 'UT', 84321, '(435) 750-0110', 'Sandwich', 8, 3, 0, 'images/35.jpg'),
(36, 'Gaucho Grill', '633 S Main St', 'Logan', 'UT', 84321, '(435) 750-6555', 'Steak', 20, 4, 0, 'images/36.jpg'),
(37, 'Blue Bay Chinese Cuisine', '1883 Fort Union Blvd.', 'Cottonwood Heights', 'UT', 84121, '(801) 944-4412', 'Chinese', 15, 5, 0, 'images/37.jpg'),
(38, 'Zaferan Cafe', '2578 Bengal Blvd.', 'Cottonwood Heights', 'UT', 84121, '(801) 944-6234', 'Persian', 17, 5, 0, 'images/38.jpg'),
(39, 'Market Street Grill', '2985 E Cottonwood Pkwy', 'Cottonwood Heights', 'UT', 84121, '(801) 942-8860', 'Japanese', 13, 3, 0, 'images/39.jpg'),
(40, 'The Happy Sumo', '6572 Big Cottonwood Cyn Rd', 'Cottonwood Heights', 'UT', 84121, '(801) 733-9661', 'Japanese', 17, 4, 1, 'images/40.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `userId` int(3) NOT NULL,
  `id` int(3) NOT NULL,
  `review` varchar(100) NOT NULL,
  `pending` int(1) NOT NULL,
  PRIMARY KEY (`userId`,`id`),
  KEY `id` (`id`),
  KEY `userId` (`userId`,`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`userId`, `id`, `review`, `pending`) VALUES
(1, 1, 'Awesome!', 0),
(1, 2, 'The service was very good.', 0),
(1, 3, 'Awesome!', 0),
(1, 4, 'Awesome!', 0),
(1, 5, 'The Food is great!', 0),
(1, 6, 'Awesome!', 0),
(1, 7, 'Awesome!', 0),
(1, 8, 'Awesome!', 0),
(1, 9, 'Awesome!', 0),
(1, 10, 'Awesome!', 0),
(1, 11, 'Awesome!', 0),
(1, 12, 'Awesome!', 0),
(1, 13, 'Awesome!', 0),
(1, 14, 'Awesome!', 0),
(1, 15, 'Awesome!', 0),
(1, 16, 'Awesome!', 0),
(1, 17, 'Awesome!', 0),
(1, 18, 'Awesome!', 0),
(1, 19, 'Awesome!', 0),
(1, 20, 'Awesome!', 0),
(1, 21, 'Awesome!', 0),
(1, 22, 'Awesome!', 0),
(1, 23, 'Awesome!', 0),
(1, 24, 'Great BBQ food!', 0),
(1, 25, 'Awesome!', 0),
(1, 26, 'Awesome!', 0),
(1, 27, 'Awesome!', 0),
(1, 28, 'Awesome!', 0),
(1, 29, 'Awesome!', 0),
(1, 30, 'Awesome!', 0),
(1, 31, 'Awesome!', 0),
(1, 32, 'Awesome!', 0),
(1, 33, 'Awesome!', 0),
(1, 34, 'Awesome!', 0),
(1, 35, 'Awesome!', 0),
(1, 36, 'Awesome!', 0),
(1, 37, 'Awesome!', 0),
(1, 38, 'Awesome!', 0),
(1, 39, 'Awesome!', 0),
(1, 40, 'Awesome!', 0),
(2, 5, 'Awesome!', 0),
(2, 21, 'Great steaks!!', 0),
(2, 24, 'This place is awesome! ', 0),
(6, 21, 'Best steaks around', 0),
(6, 29, 'This place has great Chinese!', 0),
(8, 16, 'Smells like curry', 0),
(10, 32, 'It was decent for the price', 2),
(12, 4, 'Yikes!', 0),
(20, 6, 'I really enjoyed my meal', 0),
(20, 31, 'Definitely worth the cost', 0),
(23, 38, 'I really enjoyed my meal', 2),
(25, 31, 'This place was great!', 0),
(28, 23, 'decent', 0),
(28, 36, 'yummm', 0),
(31, 38, 'Purtty gud', 2),
(33, 30, 'mediocre\r\n', 0),
(35, 7, 'Tasted Great!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `ag` int(3) NOT NULL,
  `admin` int(1) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `email`, `password`, `address`, `ag`, `admin`) VALUES
(1, 'ksully', 'keithsully2000@hotmail.com', 'ksully', '3491 west ott dr', 28, 1),
(2, 'GoUtes', 'utes@utah.edu', 'utes', 'slc', 25, 0),
(3, 'bob', 'bob@gmail.com', 'asdf', '234 west', 29, 0),
(4, 'steve', 'steve@gmail.com', 'keith', '6454 south temple', 0, 0),
(5, 'keith', 'keithsully.fit@gmail.com', 'keith', '345', 0, 0),
(6, 'Jimmy', 'jimmy@utah.com', 'johns', '341 west', 23, 0),
(8, 'Donnie', 'donnie@gmail.com', 'donnie', '2315 North SLC', 32, 0),
(10, 'Tommy', 'tommy@gmail.com', 'tommy', '478 north Lehi', 42, 0),
(12, 'Brian', 'brian@gmail.com', 'keith', '1134 north', 25, 0),
(15, '', '', '', '', 0, 0),
(20, 'Robert', 'robbyhart@gmail.com', 'robby', '9182 west', 30, 0),
(23, 'admin', 'admin@foody.com', 'admin', 'here', 33, 1),
(25, 'Bryan', 'sol@gmail.com', 'bryan', '234 north', 23, 1),
(28, 'Username', 'email@email.com', 'Password', 'JIMMY STREET', 12, 1),
(31, 'Jorge', 'wert_crimson@yahoo.com', 'Jorge', 'jorge street', 21, 0),
(33, 'jerry', 'wert)ocjlkaj@hotmail.com', 'jerry', 'jimmy town', 29, 0),
(35, 'jonny', 'jonny@hotmail.com', 'jonny1', '1232 s 80 w', 25, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`id`) REFERENCES `resturants` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
