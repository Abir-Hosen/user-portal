-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2019 at 10:35 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `user_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `allowance` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `address`, `phone`, `email`, `birthdate`, `password`, `role`, `allowance`) VALUES
(6, 'Md.', 'Admin', 'Dhaka, Bangladesh', '01888888888', 'admin@localhost.local', '1988-01-01', '$2a$10$OWP55zYAuwuuja0JH5q0Le7jkrnHjpIut6EOLjrdo7nJNz2DrOswe', 'admin', 1),
(7, 'Abir Hosen', 'Ashik', 'Mymensingh, Bangladesh', '01744103965', 'abir@bitmascot.com', '1995-09-04', '$2a$10$Kp4DIzmzwlH3AFJwikrueuqi3P.nw/6uINThPhFPCV8wA5lV64KOa', 'user', 1),
(8, 'Abir', 'Ashik', 'Mymensingh, Bangladesh', '01744103965', 'abc@bitmascot.com', '1992-06-23', '$2a$10$pZPJ9SAp7mOVJmIlUY7P3OFC9J0wWo0JqkpZ/MbMLzQgtKrWHaFD6', 'user', 1),
(9, 'Ashraful Islam', ' Islam', 'Noakhali, Chittagong', '01776982094', 'ashraful@bitmascot.com', '1995-06-13', '$2a$10$QzwpvJH5IRbOgeOUhjaPm.V7QFKJSkIqcqQGYcVyEVxuoWddgnsyy', 'user', 1),
(10, 'Nigar', 'Sultana', 'Chittagong, Bangladesh', '01744103963', 'nigar71.mumu@bitmascot.com', '1995-06-27', '$2a$10$vlbpyLkT3GrE32IflgVLP.wT8ObOFIPqal9UPq2cgkv0FMinYr/cu', 'user', 1),
(11, 'Kamrul', 'Hasan', 'Dhaka, Bangladesh', '01749403965', 'kamrul@bitmascot.com', '1997-07-22', '$2a$10$XHV66BtguupgaY18QejEOODJV0t9GnMT2YsmXejwTd1pJYwG9DEmS', 'user', 1),
(12, 'ambar', 'Mumu', 'Chittagong, Bangladesh', '01888888886', 'ambar@bitmascot.com', '1996-08-16', '$2a$10$QaVRnk2gimhkOeDdQqMvRuuZ3auaqaNu/zjfubgv/7hg03QVQ5Tm6', 'user', 1),
(13, 'kashmir', 'bibi', 'Chittagong, Bangladesh', '017667666667', 'kashmir@bitmascot.com', '1998-01-05', '$2a$10$quUqrNL/rXMY7tsw4gBtSuduG4PXAxdLbBo1yVSUUXbCCuERv4N4u', 'user', 1),
(14, 'sultana', 'tana', 'dhaka', '01632902071', 'sultana@bitmascot.com', '1999-02-02', '$2a$10$uGMkV5jpoKst.CACBdQZHOEmrRCb1fsUbpI7m5qmuB3iaRJ4ko0a2', 'user', 1),
(15, 'nisha', 'chowdhury', 'dhaka', '01888888878', 'nisha@bitmascot.com', '1997-03-05', '$2a$10$GlTuy5qFAW4z0iwZzg6OhOLmyfGuDJV1bbUohwCvSjg6lCu5L6/TK', 'user', 1),
(16, 'tasnim', 'mim', 'dhaka', '018683333868', 'tasnim@bitmascot.com', '2000-03-08', '$2a$10$g7d5kHlcQiB.PILZCHDdte/hmkevZGS1Z6w9ANbpztl19N5g1L1m.', 'user', 1),
(17, 'urida', 'sultana', 'Chittagong, Bangladesh', '01746777787', 'urida@bitmascot.com', '2000-11-16', '$2a$10$2He/jTpi76ryyCpW7r33Qej0ZIfYwx9czKSQQGPhBODHKpL/4HF/G', 'user', 1),
(18, '0li', 'ullah', 'chittagong', '01862222267', 'oli@bitmascot.com', '2001-03-16', '$2a$10$ZHSDUmk8SG5dm5dTKjvizeeQZvigAbUBO6/bPq01bSKPNI.JRkqOW', 'user', 1),
(19, 'sifat', 'ullah', 'chittagong', '01865283731', 'sifat@bitmascot.com', '1996-01-31', '$2a$10$WcBKHvU06LH2HLVwur4GSOU5i5ymrwpJiYC0v9zNYlePc0RKykdXe', 'user', 1),
(20, 'jahin', 'kamal', 'dhaka', '01777777676', 'jahin@bitmascot.com', '2000-05-05', '$2a$10$GgUxhqxF9Ja5z.5vLjeV.eI/ydsy05FJJj0cQKGyPlH0wqpJMgfQC', 'user', 1),
(21, 'salim', 'ullah', 'chittagong', '01715349360', 'salim@bitmascot.com', '1980-01-31', '$2a$10$mx9XSkIf9bP53SFSmc8KMOxELmcC/BAUjwlWsjYo5pCb9NFTQE9lO', 'user', 1),
(22, 'hanif', 'badshah', 'dhaka', '01813686843', 'hanif@bitmascot.com', '1975-11-27', '$2a$10$BVfLHQ5/IxbLQ7cUoyi/keC/U8sXvoYUiWSkCAudqF3YAgqKzIRxq', 'user', 1),
(23, 'ambar', 'jamil', 'chittagong', '01819232345', 'jamil@bitmascot.com', '1984-08-16', '$2a$10$zd7roBMDVvvmGhnBihHX1.TT3vrmycq78il/DVajfjOZ91nyWLBbC', 'user', 1),
(24, 'abdur', 'rajjak', 'mymsingh', '01715222424', 'abdur@bitmascot.com', '1970-02-04', '$2a$10$5sUmapwlq/dXg3U0r5WbAeBWbebnvZ7NZbGlmCZ.a5X0MMI5oHX96', 'user', 1),
(25, 'arif', 'saha', 'comilla', '01715676765', 'arif@bitmascot.com', '1980-03-13', '$2a$10$9xGsVtN8IobTxcua0A8woO908hXBKtqKcqG9iUwxH0EvW/8DyxdHq', 'user', 1),
(26, 'yunus', 'hossain', 'chittagong', '01999878787', 'yunus@bitmascot.com', '1976-03-10', '$2a$10$OFofIjXwXpMQYyRhz8Ylpe1Lo7nzoat0gLYHyLFuwweE/btQSrmQW', 'user', 1),
(27, 'habiba', 'jannat', 'chittagong', '01878090712', 'eva@bitmascot.com', '1995-03-11', '$2a$10$mLM7uRA0La8KS9zACOTOh.By6Ejz9kksmSb4n8NwmiRf/k51oWKSm', 'user', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
