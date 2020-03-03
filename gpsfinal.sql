-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 05:43 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gpsfinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignvehical`
--

CREATE TABLE IF NOT EXISTS `assignvehical` (
`id` int(5) NOT NULL,
  `a_id` int(5) DEFAULT NULL COMMENT 'this is admin id',
  `user_id` varchar(50) DEFAULT NULL COMMENT 'this is user id when device add then add but user id is null but when assign vehical then update the multiple user id with comma',
  `device_id` int(20) DEFAULT NULL COMMENT 'assign vehical id coming from devicedetails',
  `vehical_imi` varchar(20) DEFAULT NULL COMMENT 'vehical imi coming from device details , this is sim imi no',
  `vehical_name` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `assignvehical`
--

INSERT INTO `assignvehical` (`id`, `a_id`, `user_id`, `device_id`, `vehical_imi`, `vehical_name`, `date`) VALUES
(23, 1, '1222,lss111', 10, '7398191690', 'Truck', '2017-01-12 10:43:59'),
(24, 1, '1222,lss111', 11, '8604040635', ' Ambulance', '2017-01-12 10:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`id` int(11) NOT NULL,
  `s_id` int(5) DEFAULT NULL COMMENT 'this is super admin id',
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `heading1` text,
  `heading2` text,
  `heading3` text,
  `description` text
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `s_id`, `name`, `title`, `image`, `status`, `date`, `heading1`, `heading2`, `heading3`, `description`) VALUES
(18, 2, ' 45z        ', ' r51      ', '1321534481Gps-Tracking-System_new.jpg', 'Active', '2017-01-04 11:17:36', 'Gpstracking System ', 'fdfgd', ' sdff', NULL),
(19, 2, ' 454     ', ' 5445     ', '18375schoolerp4.png', 'Active', '2017-01-05 04:58:35', ' Gps tracking  1', ' Gps tracking  2', '   Gps tracking  3', NULL),
(20, 2, ' 4545      ', ' 4545      ', '14413schoolerp.png', 'Active', '2017-01-05 04:59:08', ' Gps Tracking  ', ' Gps Tracking  ', '   Gps Tracking  ', NULL),
(21, 2, ' 4545                        ', ' 4545                        ', '37481schoolerp1.png', 'Active', '2017-01-05 04:59:36', ' Gps Tracking  ', ' Gps Tracking  ', '   Gps Tracking  ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `devicedetails`
--

CREATE TABLE IF NOT EXISTS `devicedetails` (
`id` int(5) NOT NULL,
  `a_id` int(5) NOT NULL COMMENT 'this is admin id',
  `instalationdate` datetime DEFAULT NULL,
  `deviceid` varchar(50) DEFAULT NULL,
  `devicetype` int(5) DEFAULT NULL,
  `deviceimi` varchar(50) DEFAULT NULL,
  `simphoneno` varchar(50) DEFAULT NULL,
  `simimi` varchar(50) DEFAULT NULL,
  `simselection` varchar(50) DEFAULT NULL,
  `simoperator` int(50) DEFAULT NULL,
  `vehicaltype` int(5) NOT NULL,
  `vehicalnumber` varchar(50) DEFAULT NULL,
  `vehicaldetails` varchar(50) DEFAULT NULL,
  `devicesoldby` int(50) DEFAULT NULL,
  `deviceinstalledby` int(10) DEFAULT NULL,
  `connecting_status` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `devicedetails`
--

INSERT INTO `devicedetails` (`id`, `a_id`, `instalationdate`, `deviceid`, `devicetype`, `deviceimi`, `simphoneno`, `simimi`, `simselection`, `simoperator`, `vehicaltype`, `vehicalnumber`, `vehicaldetails`, `devicesoldby`, `deviceinstalledby`, `connecting_status`, `status`, `date`) VALUES
(10, 1, '2017-01-12 00:00:00', ' 00007398191690', 6, '00007398191690 ', ' 00007398191690 ', '0000000007398191690', 'user', 3, 1, 'up-55462038 ', ' 121212 ', 3, 1, 'connected', NULL, '2017-01-14 10:41:10'),
(11, 1, '2017-01-12 00:00:00', ' 121313', 6, '000008604040635', ' 000008604040635', '000008604040635', 'user', 3, 3, 'up-55l1918', ' 13213', 3, 1, 'disconnected', NULL, '2017-01-12 10:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `devicetype`
--

CREATE TABLE IF NOT EXISTS `devicetype` (
`id` int(5) NOT NULL,
  `s_id` int(5) DEFAULT NULL COMMENT 'this is super admin id',
  `displayname` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `devicetype`
--

INSERT INTO `devicetype` (`id`, `s_id`, `displayname`, `ip`, `port`, `description`, `image`, `status`, `date`) VALUES
(6, 2, ' new Device', '12.12.1234', ' 9000', ' hi fdgfdhg fghgfhgh', '19044Stock.png', 'Active', '2017-01-06 16:11:17'),
(7, 2, ' gt06', ' 131323', '12', ' 2323', NULL, 'Active', '2017-01-18 11:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
`id` int(5) NOT NULL,
  `a_id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text,
  `desigination` varchar(50) DEFAULT NULL COMMENT 'i.e installer, technical, seller',
  `date` datetime(6) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `a_id`, `name`, `dob`, `phone`, `email`, `address`, `desigination`, `date`, `status`) VALUES
(1, 1, 'vikash', '1989-08-10', '8604040635', 'admin@gmail.com', '                                                                                                                                                                                                                                                                                                  c- 56 kurmanchal nagar indira nagar lko                                                                 \r\n                                                                        \r\n                                                                        \r\n                                                                        \r\n                                                                        \r\n                                                                ', 'Installer', '2017-01-06 17:57:02.000000', NULL),
(3, 1, 'ererer', '2017-01-17', '23234232323', 'admin@gmail.com', '                                                                                                                                                                                                                              \r\n                ererer                                                       \r\n                                                                        \r\n                                                                ', 'Sales', '2017-01-06 17:56:47.000000', NULL),
(4, 1, 'dret', '2017-04-16', '8604040635', 'newd@gmail.com', '                                                                                                                                                \r\n                   ghuytuty                                                     \r\n                                                                ', 'Sales', '2017-01-06 17:56:55.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`id` int(5) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `product_info` varchar(100) NOT NULL,
  `amount` decimal(13,5) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'completed,pending',
  `pay_date` datetime NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `user_name`, `email`, `phone`, `product_info`, `amount`, `status`, `pay_date`, `date`) VALUES
(1, '', 'vikash', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'pending', '2016-11-26 15:34:30', '2016-11-26 15:34:30'),
(5, 'e0573f9d4ef3b7432f35', 'vikash', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'failed', '2016-11-26 15:48:40', '2016-11-26 15:48:40'),
(6, '9915d16df65875ce1e0b', 'vikash', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'failed', '2016-11-26 15:54:28', '2016-11-26 15:54:28'),
(7, '009a9d72acf040675d4a', 'vikash', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'failed', '2016-11-26 15:55:30', '2016-11-26 15:55:30'),
(8, '875581b88d1a149e0fdf', 'vikash', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'failed', '2016-11-26 15:58:20', '2016-11-26 15:58:20'),
(9, '14c6c00fd0f8bd493b6b', 'vikash', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'pending', '2016-11-30 17:52:19', '2016-11-30 17:52:19'),
(10, '3f6593506395ba5c35dd', 'qwqw', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'pending', '2016-11-30 17:57:19', '2016-11-30 17:57:19'),
(11, '19c9aa0a5071dc38398d', 'vikash', 'admin@gmail.com', '8604040635', 'Iphone 6C - 16GB', '50.00000', 'pending', '2016-11-30 18:55:28', '2016-11-30 18:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
`id` int(10) NOT NULL,
  `permission_id` int(10) DEFAULT NULL COMMENT 'i.e. permission role id',
  `module_function_name` varchar(100) DEFAULT NULL COMMENT 'i.e. permission name which is save on comma',
  `status` varchar(50) DEFAULT NULL COMMENT 'i.e. Active And Deactivated',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `permission_id`, `module_function_name`, `status`, `date`) VALUES
(2, 3, 'user_edit,user_delete,user_update,admin_edit,admin_delete,admin_update', 'Active', '2016-12-20 11:48:52'),
(3, 0, '0', 'Deactivated', '2016-12-20 11:49:27'),
(5, 0, '0', 'Deactivated', '2016-12-20 11:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `permission_name`
--

CREATE TABLE IF NOT EXISTS `permission_name` (
`id` int(5) NOT NULL,
  `s_id` int(10) DEFAULT NULL COMMENT 'i.e. super admin id',
  `name` varchar(100) DEFAULT NULL COMMENT 'i.e. permission name ',
  `status` varchar(50) DEFAULT NULL COMMENT 'status should be Active and Deactivated',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `permission_name`
--

INSERT INTO `permission_name` (`id`, `s_id`, `name`, `status`, `date`) VALUES
(3, 2, ' Gold', 'Active', '2016-12-20 10:33:13'),
(4, 2, 'Silver', 'Active', '2016-12-20 10:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `porat_user`
--

CREATE TABLE IF NOT EXISTS `porat_user` (
`id` int(10) NOT NULL,
  `a_id` int(10) DEFAULT NULL COMMENT 'this is admin id',
  `user_id` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `mobile_app` int(2) DEFAULT '0' COMMENT 'i.e. 0 for deactivate , 1 for activated',
  `portal_login` int(2) NOT NULL DEFAULT '0' COMMENT 'i.e. 0 for deactive , 1 for activate',
  `portalexpirydate` varchar(50) DEFAULT NULL COMMENT 'i.e portal expiry date',
  `user_image` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `fleet_size` varchar(100) DEFAULT NULL,
  `must_set_password` int(2) NOT NULL DEFAULT '0' COMMENT 'i.e. 0 for deactivate , 1 for activate',
  `date_formate` text COMMENT 'user date formate',
  `timezone` text COMMENT 'users time zone like asia/kolkata',
  `date` datetime NOT NULL,
  `status` varchar(50) DEFAULT 'Active' COMMENT 'status would be Active,Deactivated,Expired'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `porat_user`
--

INSERT INTO `porat_user` (`id`, `a_id`, `user_id`, `username`, `password`, `usertype`, `phone`, `dob`, `email`, `gender`, `mobile_app`, `portal_login`, `portalexpirydate`, `user_image`, `address`, `fleet_size`, `must_set_password`, `date_formate`, `timezone`, `date`, `status`) VALUES
(2, 1, 'asd', 'rwe5rert', '1323ertertert', 'Main', '2147483647', '1/8/1989 ', 'dau.freebird@gmail.com', 'mail', 1, 1, NULL, NULL, '      c-56 kurmanchal nagar indira nagar lko    ', '123', 0, NULL, '(UTC)Coordinated Universal Time', '2016-11-30 17:59:10', 'Active'),
(3, 1, 'asd1', NULL, NULL, 'Sub', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '0000-00-00 00:00:00', 'Active'),
(4, 1, 'lss111', '121313', '123', 'Main', '2147483647', '2016-10-10', 'dau.freebird@gmail.com', 'mail', 1, 1, NULL, NULL, '   1212', '1212', 0, NULL, '(UTC)Casablanca', '2016-12-03 11:23:31', 'Active'),
(5, 1, '1222', 'vikash', '123@123', 'Main', '2147483647', '2016-10-10', 'dau.freebird@gmail.com', 'mail', 1, 1, NULL, NULL, '   dretetetert', '', 0, NULL, '(UTC)Casablanca', '2016-12-03 11:22:21', 'Active'),
(6, 1, 'baldau', 'baldau chaurasiya', '123@123', 'Main', '123456789', '01-18-2017', 'dau.freebird@gmail.com', 'mail', 1, 1, NULL, NULL, '   fygrtytry', '12', 0, NULL, 'Asia/Calcutta', '2017-01-16 19:33:32', 'Active'),
(7, 1, 'baldau1', 'baldauchaurasiay', '1234', 'Main', '123456789', '01-18-2017', 'dau.freebird@gmail.com', 'mail', 1, 1, NULL, NULL, '   eqeqe', '12', 1, 'm-d-Y', 'Asia/Calcutta', '2017-01-16 19:40:17', 'Active'),
(8, 1, 'baldau2', 'baldau chaurasiya', '123@123', 'Main', '123456789', '01-18-2017', 'dau.freebird@gmail.com', 'mail', 1, 1, '12-12-12', NULL, '   aeqe', '1212', 1, 'm-d-Y', 'Asia/Calcutta', '2017-01-16 19:43:38', 'Active'),
(9, 1, 'baldau3', 'lss', 'lss1234', 'Main', '123456789', '06-20-2017', 'dau.freebird@gmail.com', 'mail', NULL, 1, NULL, NULL, '   121212', '1212', 1, 'm-d-Y', 'Asia/Calcutta', '2017-01-16 19:45:23', 'Active'),
(10, 1, 'aasads', 'lss', 'lss1234', 'Main', '2147483647', '01-18-2017', 'ad@fgmail.com', 'mail', NULL, 1, '01-25-2017', NULL, '   fgrdfg', '12', 1, 'm-d-Y', 'Asia/Calcutta', '2017-01-16 19:47:04', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
`id` int(10) NOT NULL,
  `extra_info` varchar(100) DEFAULT NULL COMMENT 'here save any extra information on device',
  `latitude` double DEFAULT NULL COMMENT 'here save the latitude this is N or S',
  `longitude` double DEFAULT NULL COMMENT 'here save the longitude this is E or weast',
  `user_name` varchar(100) DEFAULT NULL COMMENT 'this is the device name like tk-103',
  `phone_number` int(20) NOT NULL COMMENT 'this is the imi number with phone number',
  `session_id` int(20) DEFAULT NULL COMMENT 'this is login user session id',
  `speed` double DEFAULT NULL COMMENT 'here save the spid ',
  `direction` double DEFAULT NULL COMMENT 'this is the direction of  gps device',
  `distance` varchar(100) DEFAULT NULL COMMENT 'total distance of gps device to traget location',
  `gps_time` datetime DEFAULT NULL COMMENT 'this is the gps time',
  `milage` double NOT NULL COMMENT 'this is milage'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `latitude` text,
`id` int(11) NOT NULL,
  `device_id` int(5) DEFAULT NULL COMMENT 'i.e. devicedetails table primary id',
  `longitude` text,
  `imino` text,
  `time` date DEFAULT NULL,
  `time1` time DEFAULT NULL COMMENT 'i.e. time function ecplode the date and save the time '
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`latitude`, `id`, `device_id`, `longitude`, `imino`, `time`, `time1`) VALUES
('26.866667', 33, 10, '80.966667', '7398191690', '2017-01-17', '15:00:24'),
('27.876667', 34, 11, '81.976667', '8604040635', '2017-01-17', '03:00:24'),
('26.866667', 35, 11, '80.966667', '8604040635', '2017-01-17', '05:09:24'),
('26.866668', 36, 10, '80.966668', '7398191690', '2017-01-17', '15:11:24'),
('28.650000', 37, 11, '77.283333', '8604040635', '2017-01-17', '14:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `simoperator`
--

CREATE TABLE IF NOT EXISTS `simoperator` (
`id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL COMMENT 'this is super admin id',
  `name` varchar(50) DEFAULT NULL,
  `apn` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `simoperator`
--

INSERT INTO `simoperator` (`id`, `s_id`, `name`, `apn`, `status`, `date`) VALUES
(3, 2, 'Airtel', 'Airtelgprs.com ', 'Active', '2017-01-06 16:50:53'),
(4, 2, 'bsnl', ' bsnlnet', 'Active', '2017-01-18 11:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE IF NOT EXISTS `sitesetting` (
`id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL COMMENT 'this is  super admin id ',
  `title` varchar(50) DEFAULT NULL,
  `livechat` longtext,
  `date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `s_id`, `title`, `livechat`, `date`, `status`) VALUES
(3, 2, 'Vikash', '     <script type="text/javascript"> var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date(); (function(){ var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0]; s1.async=true; s1.src=''https://embed.tawk.to/582bec5b651e34097a90f68c/default''; s1.charset=''UTF-8''; s1.setAttribute(''crossorigin'',''*''); s0.parentNode.insertBefore(s1,s0); })(); </script>          ', '2016-11-17 11:52:02', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(5) NOT NULL,
  `s_id` int(5) DEFAULT NULL COMMENT 'this is super admin id',
  `permission` int(10) DEFAULT NULL COMMENT 'this is permission id',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `s_id`, `permission`, `username`, `password`, `type`, `phone`, `address`, `email`, `gender`, `status`, `added_date`) VALUES
(1, 2, 3, 'lss', 'c3dfae1015ce81481d5b948ec558ece4', 'admin', '8604040635', '      qwqeqeqe            ', 'admin@gmail.com', 'mail', 'Active', '2016-12-20 12:22:18'),
(2, NULL, 0, 'superadmin', 'c3dfae1015ce81481d5b948ec558ece4', 'superadmin', '', '', '', '0000-00-00', 'Active', '2016-12-14 00:00:00'),
(6, 2, 4, 'baldau1234', 'c3dfae1015ce81481d5b948ec558ece4', 'admin', '8604040635', '      reteterter      ', 'newd@gmail.com', 'mail', 'Active', '2016-12-20 12:20:12'),
(7, 2, 3, 'vikash1', '202cb962ac59075b964b07152d234b70', 'admin', '8604040635', ' 4e3343  ', 'admin@gmail.com', 'unknown', 'Active', '2017-01-18 11:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `vehicaltype`
--

CREATE TABLE IF NOT EXISTS `vehicaltype` (
`id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL COMMENT 'this is admin id',
  `vehicalname` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vehicaltype`
--

INSERT INTO `vehicaltype` (`id`, `s_id`, `vehicalname`, `status`, `date`) VALUES
(1, 2, 'Truck', 'Active', '2017-01-06 17:20:57'),
(3, 2, ' Ambulance', 'Active', '2017-01-06 17:21:05'),
(4, 2, ' Indigo', 'Active', '2017-01-06 17:21:16'),
(5, 2, ' car', 'Active', '2017-01-18 11:47:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignvehical`
--
ALTER TABLE `assignvehical`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devicedetails`
--
ALTER TABLE `devicedetails`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devicetype`
--
ALTER TABLE `devicetype`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_name`
--
ALTER TABLE `permission_name`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `porat_user`
--
ALTER TABLE `porat_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simoperator`
--
ALTER TABLE `simoperator`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicaltype`
--
ALTER TABLE `vehicaltype`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignvehical`
--
ALTER TABLE `assignvehical`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `devicedetails`
--
ALTER TABLE `devicedetails`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `devicetype`
--
ALTER TABLE `devicetype`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permission_name`
--
ALTER TABLE `permission_name`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `porat_user`
--
ALTER TABLE `porat_user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `simoperator`
--
ALTER TABLE `simoperator`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `vehicaltype`
--
ALTER TABLE `vehicaltype`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
