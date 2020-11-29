-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2020 at 02:57 AM
-- Server version: 5.6.49-cll-lve
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
-- Database: `porsche_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_notification_g1`
--

CREATE TABLE `activity_notification_g1` (
  `activity_notification_id` bigint(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(20) DEFAULT NULL,
  `from_rank` int(11) NOT NULL DEFAULT '0',
  `to_rank` int(11) DEFAULT '0',
  `subject` varchar(100) NOT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_notification_g1`
--

INSERT INTO `activity_notification_g1` (`activity_notification_id`, `timestamp`, `type`, `from_rank`, `to_rank`, `subject`, `message`) VALUES
(1, '2020-03-21 22:54:02', 'knowledge', 1, 1, 'Knowledge Report', 'Congratulations! - excellently '),
(2, '2020-03-21 22:54:02', 'knowledge', 2, 5, 'Knowledge Report.', 'Good Work! - very well'),
(3, '2020-03-23 01:40:03', 'knowledge', 6, 8, 'Knowledge Report.', 'Well Done! - well'),
(4, '2020-03-23 01:40:03', 'knowledge', 9, 20, 'Knowledge Report.', 'Sorry, but your performance is low. But I’m sure you can do better next time!'),
(5, '2020-03-21 22:54:02', 'test_drive', 1, 1, 'Test Drive Report', 'Congratulations! - excellently '),
(6, '2020-03-21 22:54:02', 'test_drive', 2, 5, 'Test Drive Report.', 'Good Work! - very well'),
(7, '2020-03-23 01:40:03', 'test_drive', 6, 8, 'Test Drive Report.', 'Well Done! - well'),
(8, '2020-03-23 01:40:03', 'test_drive', 9, 20, 'Test Drive Report.', 'Sorry, but your performance is low. But I’m sure you can do better next time!'),
(9, '2020-03-21 22:54:02', 'scoreboard', 1, 1, 'Scoreboard Report', 'Congratulations! - excellently '),
(10, '2020-03-21 22:54:02', 'scoreboard', 2, 5, 'Scoreboard Report.', 'Congratulation! You did Better in mission.'),
(11, '2020-03-23 01:40:03', 'scoreboard', 9, 20, 'Scoreboard Report.', 'Sorry! Your performance is low. Do well next time.'),
(12, '2020-03-23 01:40:03', 'scoreboard', 6, 8, 'Scoreboard Report.', 'Congratulation! You did Good in Mission.'),
(13, '2020-03-21 22:54:02', 'sales', 1, 1, 'Sales Report', 'Congratulations! - excellently '),
(14, '2020-03-21 22:54:02', 'sales', 2, 5, 'Sales Report.', 'Good Work! - very well'),
(15, '2020-03-23 01:40:03', 'sales', 6, 8, 'Sales Report.', 'test!'),
(20, '2020-05-16 14:34:34', 'Test Drive', 2, 3, 'Test Drive Report', 'Notification for Test Drive'),
(21, '2020-11-26 16:41:53', 'Sales', 1, 4, 'Car sales activity', 'You are one step ahead with car sales');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `profile_img` varchar(100) NOT NULL,
  `password_recover_otp` varchar(6) NOT NULL,
  `otp_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `admin_username`, `admin_password`, `profile_img`, `password_recover_otp`, `otp_date_time`) VALUES
(1, 'Surplusplay', 'farahrizwan4@gmail.com', 'surplusplayadmin', '$2y$12$2olB9BChEmhYVr35xZeRDOHlgaJfUAHHbCM4sc3ibjyqowhF.heqm', 'flag-se@2x.png', '6v0tsq', '2020-11-26 05:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `avg_know_grade_g1`
--

CREATE TABLE `avg_know_grade_g1` (
  `avg_know_grade_id` bigint(20) NOT NULL,
  `game_id` int(11) DEFAULT '0',
  `avg_frm_percent` int(11) DEFAULT '0',
  `avg_to_percent` int(11) DEFAULT '0',
  `avg_grade` varchar(2) DEFAULT NULL,
  `avg_grade_desc` varchar(200) DEFAULT NULL,
  `know_level_img` varchar(250) DEFAULT NULL,
  `know_qz_img` varchar(250) DEFAULT NULL,
  `is_attempt` varchar(1) DEFAULT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avg_know_grade_g1`
--

INSERT INTO `avg_know_grade_g1` (`avg_know_grade_id`, `game_id`, `avg_frm_percent`, `avg_to_percent`, `avg_grade`, `avg_grade_desc`, `know_level_img`, `know_qz_img`, `is_attempt`, `create_date_time`) VALUES
(1, 1, 89, 100, 'A', 'A', 'A1.png', 'A.gif', 'y', NULL),
(2, 1, 77, 88, 'B', 'B', 'B1.png', 'B.gif', 'y', NULL),
(3, 1, 66, 76, 'C', 'C', 'C1.png', 'C.gif', 'y', NULL),
(4, 1, 41, 65, 'D', 'D', 'D1.png', 'D.gif', 'y', NULL),
(5, 1, 0, 40, 'E', 'E', 'E1.png', 'E.gif', 'y', NULL),
(19, 1, 0, 0, 'F', 'F', 'F1.png', 'F.gif', 'n', '2020-05-16 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `budget_car_test_g1`
--

CREATE TABLE `budget_car_test_g1` (
  `budget_id` bigint(20) NOT NULL,
  `timestamp` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `userident` varchar(200) DEFAULT NULL,
  `game_id` int(11) DEFAULT '0',
  `level_id` int(11) DEFAULT '0',
  `mission_id` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `period` varchar(50) DEFAULT NULL,
  `date_from` varchar(200) DEFAULT NULL,
  `date_to` varchar(200) DEFAULT NULL,
  `amount_car_regi` int(11) NOT NULL DEFAULT '0',
  `quantity_car_regi` int(11) NOT NULL DEFAULT '0',
  `amount_test_drive` int(11) NOT NULL DEFAULT '0',
  `quantity_test_drive` int(11) NOT NULL DEFAULT '0',
  `budget_on` varchar(150) DEFAULT NULL,
  `day_to_complete` varchar(11) DEFAULT NULL,
  `mission_start_datetime` varchar(150) DEFAULT NULL,
  `car_budget_status` varchar(20) DEFAULT NULL,
  `car_budget_complete_datetime` varchar(150) DEFAULT NULL,
  `car_budget_complete_duration` varchar(250) DEFAULT NULL,
  `car_reg_duration` varchar(150) DEFAULT NULL,
  `testdrive_budget_status` varchar(20) DEFAULT NULL,
  `testdrive_budget_complete_datetime` varchar(150) DEFAULT NULL,
  `testdrive_budget_complete_duration` varchar(250) DEFAULT NULL,
  `test_drive_duration` varchar(150) DEFAULT NULL,
  `create_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email_test_drive_status` int(11) NOT NULL DEFAULT '0',
  `mission_email_status` int(11) NOT NULL DEFAULT '0',
  `email_sales_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget_car_test_g1`
--

INSERT INTO `budget_car_test_g1` (`budget_id`, `timestamp`, `username`, `userident`, `game_id`, `level_id`, `mission_id`, `year`, `period`, `date_from`, `date_to`, `amount_car_regi`, `quantity_car_regi`, `amount_test_drive`, `quantity_test_drive`, `budget_on`, `day_to_complete`, `mission_start_datetime`, `car_budget_status`, `car_budget_complete_datetime`, `car_budget_complete_duration`, `car_reg_duration`, `testdrive_budget_status`, `testdrive_budget_complete_datetime`, `testdrive_budget_complete_duration`, `test_drive_duration`, `create_date_time`, `email_test_drive_status`, `mission_email_status`, `email_sales_status`) VALUES
(1, '05/16/2020 09:05:38 pm', 'shubham kamble', 'SSP1018', 1, 0, 1, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:41:48', 'completed', '2020-05-16 15:43:18', '0D 0H 1M 29S ', '89', 'completed', '2020-05-16 15:43:22', '0D 0H 1M 33S ', '93', '2020-05-16 15:35:38', 1, 1, 1),
(2, '05/16/2020 09:06:10 pm', 'shubham kamble', 'SSP1018', 1, 0, 2, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:43:22', 'completed', '2020-05-16 15:43:33', '0D 0H 0M 10S ', '10', 'completed', '2020-05-16 15:43:42', '0D 0H 0M 19S ', '19', '2020-05-16 15:36:10', 1, 1, 1),
(3, '05/16/2020 09:06:37 pm', 'shubham kamble', 'SSP1018', 1, 0, 3, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:43:44', 'completed', '2020-05-16 15:43:53', '0D 0H 0M 8S ', '8', 'completed', '2020-05-16 15:44:04', '0D 0H 0M 20S ', '20', '2020-05-16 15:36:37', 1, 1, 1),
(4, '05/16/2020 09:07:00 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 1, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:44:35', 'completed', '2020-05-16 15:44:44', '0D 0H 0M 9S ', '9', 'completed', '2020-05-16 15:45:02', '0D 0H 0M 27S ', '27', '2020-05-16 15:37:00', 1, 1, 1),
(5, '05/16/2020 09:07:09 pm', 'shubham kamble', 'SSP1018', 1, 0, 4, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '2', '2020-05-16 15:44:04', 'completed', '2020-05-16 15:44:31', '0D 0H 0M 26S ', '26', 'completed', '2020-05-16 15:44:36', '0D 0H 0M 31S ', '31', '2020-05-16 15:37:09', 1, 1, 1),
(6, '05/16/2020 09:07:31 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 2, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:45:03', 'completed', '2020-05-16 15:46:02', '0D 0H 0M 58S ', '58', 'completed', '2020-05-16 15:45:29', '0D 0H 0M 25S ', '25', '2020-05-16 15:37:31', 1, 1, 1),
(7, '05/16/2020 09:07:41 pm', 'shubham kamble', 'SSP1018', 1, 0, 5, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:44:36', 'completed', '2020-05-16 15:44:50', '0D 0H 0M 13S ', '13', 'completed', '2020-05-16 15:44:57', '0D 0H 0M 20S ', '20', '2020-05-16 15:37:41', 1, 1, 1),
(8, '05/16/2020 09:07:58 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 3, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '1', '2020-05-16 15:46:02', 'completed', '2020-05-16 15:47:47', '0D 0H 1M 44S ', '104', 'completed', '2020-05-16 15:47:56', '0D 0H 1M 53S ', '113', '2020-05-16 15:37:58', 1, 1, 1),
(9, '05/16/2020 09:08:08 pm', 'shubham kamble', 'SSP1018', 1, 0, 6, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '1', '2020-05-16 15:44:57', 'completed', '2020-05-16 15:45:23', '0D 0H 0M 25S ', '25', 'completed', '2020-05-16 15:45:36', '0D 0H 0M 38S ', '38', '2020-05-16 15:38:08', 1, 1, 1),
(10, '05/16/2020 09:08:35 pm', 'shubham kamble', 'SSP1018', 1, 0, 7, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '1', '2020-05-16 15:45:36', 'completed', '2020-05-16 15:45:58', '0D 0H 0M 21S ', '21', 'completed', '2020-05-16 15:46:50', '0D 0H 1M 13S ', '73', '2020-05-16 15:38:35', 1, 1, 1),
(11, '05/16/2020 09:08:38 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 4, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:47:56', 'completed', '2020-05-16 15:48:14', '0D 0H 0M 17S ', '17', 'completed', '2020-05-16 15:48:09', '0D 0H 0M 12S ', '12', '2020-05-16 15:38:38', 1, 1, 1),
(12, '05/16/2020 09:08:49 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 1, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:46:51', 'completed', '2020-05-16 15:52:29', '0D 17H 46M 39S ', '63999', 'completed', '2020-05-16 15:47:08', '0D 17H 41M 18S ', '63678', '2020-05-16 15:38:49', 1, 1, 1),
(13, '05/16/2020 09:09:06 pm', 'shubham kamble', 'SSP1018', 1, 0, 8, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '1', '2020-05-16 15:46:50', 'completed', '2020-05-16 15:47:22', '0D 0H 0M 31S ', '31', 'completed', '2020-05-16 15:47:32', '0D 0H 0M 41S ', '41', '2020-05-16 15:39:06', 1, 1, 1),
(14, '05/16/2020 09:09:25 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 5, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '1', '2020-05-16 15:48:15', 'completed', '2020-05-16 15:48:21', '0D 0H 0M 5S ', '5', 'completed', '2020-05-16 15:48:28', '0D 0H 0M 12S ', '12', '2020-05-16 15:39:25', 1, 1, 1),
(15, '05/16/2020 09:09:39 pm', 'shubham kamble', 'SSP1018', 1, 0, 9, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '2', '2020-05-16 15:47:32', 'completed', '2020-05-16 15:47:44', '0D 0H 0M 9S ', '9', 'completed', '2020-05-16 15:47:49', '0D 0H 0M 16S ', '16', '2020-05-16 15:39:39', 1, 1, 1),
(16, '05/16/2020 09:09:44 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 2, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:52:29', 'completed', '2020-05-16 15:52:44', '0D 17H 41M 14S ', '63674', 'completed', '2020-05-16 15:53:51', '0D 17H 41M 41S ', '63701', '2020-05-16 15:39:44', 1, 1, 1),
(17, '05/16/2020 09:09:53 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 6, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '1', '2020-05-16 15:48:29', 'completed', '2020-05-16 15:48:43', '0D 0H 0M 13S ', '13', 'completed', '2020-05-16 15:48:38', '0D 0H 0M 8S ', '8', '2020-05-16 15:39:53', 1, 1, 1),
(18, '05/16/2020 09:10:12 pm', 'shubham kamble', 'SSP1018', 1, 0, 10, 2020, '', '', '', 0, 2, 0, 1, 'Quantity', '1', '2020-05-16 15:47:49', 'completed', '2020-05-16 15:48:25', '0D 0H 0M 35S ', '35', 'completed', '2020-05-16 15:48:05', '0D 0H 0M 15S ', '15', '2020-05-16 15:40:12', 1, 1, 1),
(19, '05/16/2020 09:10:24 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 7, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:48:43', 'completed', '2020-05-16 15:48:50', '0D 0H 0M 7S ', '7', 'completed', '2020-05-16 15:49:00', '0D 0H 0M 16S ', '16', '2020-05-16 15:40:24', 1, 1, 1),
(20, '05/16/2020 09:10:30 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 3, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:53:54', 'completed', '2020-05-16 15:54:35', '0D 17H 41M 42S ', '63702', 'completed', '2020-05-16 15:54:05', '0D 17H 41M 13S ', '63673', '2020-05-16 15:40:30', 1, 1, 1),
(21, '05/16/2020 09:10:32 pm', 'shubham kamble', 'SSP1018', 1, 0, 11, 2020, '', '', '', 0, 2, 0, 1, 'Quantity', '2', '2020-05-16 15:48:25', 'completed', '2020-05-16 15:48:40', '0D 0H 0M 14S ', '14', 'completed', '2020-05-16 15:48:46', '0D 0H 0M 20S ', '20', '2020-05-16 15:40:32', 1, 1, 1),
(22, '05/16/2020 09:11:03 pm', 'shubham kamble', 'SSP1018', 1, 0, 12, 2020, '', '', '', 0, 2, 0, 2, 'Quantity', '2', '2020-05-16 15:48:47', 'completed', '2020-05-16 15:53:44', '0D 0H 4M 57S ', '297', 'completed', '2020-05-16 15:53:34', '0D 0H 4M 47S ', '287', '2020-05-16 15:41:03', 1, 1, 1),
(23, '05/16/2020 09:11:06 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 8, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:49:00', 'completed', '2020-05-16 15:49:16', '0D 0H 0M 15S ', '15', 'completed', '2020-05-16 15:49:42', '0D 0H 0M 41S ', '41', '2020-05-16 15:41:06', 1, 1, 1),
(24, '05/16/2020 09:11:22 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 4, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-05-16 15:54:35', 'completed', '2020-11-26 11:42:48', '193D 20H 48M 12S ', '16750092', 'completed', '2020-11-26 11:42:59', '193D 20H 48M 23S ', '16750103', '2020-05-16 15:41:22', 1, 1, 1),
(25, '05/16/2020 09:11:35 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 9, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:49:42', 'completed', '2020-05-16 15:49:58', '0D 0H 0M 15S ', '15', 'completed', '2020-05-16 15:49:54', '0D 0H 0M 11S ', '11', '2020-05-16 15:41:35', 1, 1, 1),
(26, '05/16/2020 09:12:04 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 10, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:49:59', 'completed', '2020-05-16 15:50:05', '0D 0H 0M 5S ', '5', 'completed', '2020-05-16 15:50:12', '0D 0H 0M 12S ', '12', '2020-05-16 15:42:04', 1, 1, 1),
(27, '05/16/2020 09:12:26 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 5, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-11-26 11:43:00', 'completed', '2020-11-26 12:15:51', '0D 0H 32M 49S ', '1969', 'completed', '2020-11-26 12:15:57', '0D 0H 32M 55S ', '1975', '2020-05-16 15:42:26', 1, 1, 1),
(28, '05/16/2020 09:12:33 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 11, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:50:12', 'completed', '2020-05-16 15:50:26', '0D 0H 0M 13S ', '13', 'completed', '2020-05-16 15:50:22', '0D 0H 0M 9S ', '9', '2020-05-16 15:42:33', 1, 1, 1),
(29, '05/16/2020 09:13:08 pm', 'Satyam Kuril', 'SSP1019', 1, 0, 12, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-05-16 15:50:26', 'completed', '2020-05-16 15:50:33', '0D 0H 0M 6S ', '6', 'completed', '2020-05-16 15:50:43', '0D 0H 0M 16S ', '16', '2020-05-16 15:43:08', 1, 1, 1),
(30, '05/16/2020 09:13:55 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 6, 2020, '', '', '', 0, 1, 0, 1, 'Quantity', '1', '2020-11-26 12:15:57', 'completed', '2020-11-26 12:49:44', '0D 0H 33M 51S ', '2031', 'completed', '2020-11-26 12:50:01', '0D 0H 34M 8S ', '2048', '2020-05-16 15:43:55', 1, 1, 1),
(31, '06/10/2020 06:02:47 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 1, 2020, 'July', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-06-10 12:34:43', 'completed', '2020-11-26 08:30:59', '168D 20H 56M 14S ', '14590574', 'completed', '2020-11-26 08:31:14', '168D 20H 56M 29S ', '14590589', '2020-06-10 12:32:47', 1, 1, 1),
(32, '06/10/2020 06:03:11 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 2, 2020, 'July', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-11-26 08:31:15', 'completed', '2020-11-26 09:00:59', '0D 0H 29M 42S ', '1782', 'completed', '2020-11-26 09:00:55', '0D 0H 29M 38S ', '1778', '2020-06-10 12:33:11', 1, 1, 1),
(33, '06/10/2020 06:03:40 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 3, 2020, 'July', '', '', 0, 1, 0, 2, 'Quantity', '1', '2020-11-26 09:01:00', 'completed', '2020-11-26 09:10:19', '0D 0H 9M 18S ', '558', 'completed', '2020-11-26 09:10:42', '0D 0H 9M 40S ', '580', '2020-06-10 12:33:40', 1, 1, 1),
(34, '06/10/2020 06:04:00 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 4, 2020, 'July', '', '', 0, 1, 0, 2, 'Quantity', '2', '2020-11-26 09:10:42', 'completed', '2020-11-26 09:24:41', '0D 0H 13M 58S ', '838', 'completed', '2020-11-26 09:24:50', '0D 0H 14M 6S ', '846', '2020-06-10 12:34:00', 1, 1, 1),
(35, '11/26/2020 07:31:58 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 5, 2020, '', '', '', 0, 4, 0, 2, 'Quantity', '5', '2020-11-26 14:09:20', 'completed', '2020-11-26 16:10:16', '0D 2H 0M 54S ', '7254', 'completed', '2020-11-26 16:09:43', '0D 2H 0M 21S ', '7221', '2020-11-26 14:01:58', 1, 1, 1),
(36, '11/26/2020 07:32:39 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 6, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-26 16:10:16', 'completed', '2020-11-26 16:12:47', '0D 0H 2M 30S ', '150', 'completed', '2020-11-26 16:11:10', '0D 0H 0M 53S ', '53', '2020-11-26 14:02:39', 1, 1, 1),
(37, '11/26/2020 07:36:50 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 7, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-26 14:10:15', 'completed', '2020-11-26 14:17:45', '0D 0H 7M 28S ', '448', 'completed', '2020-11-26 14:24:55', '0D 0H 14M 44S ', '884', '2020-11-26 14:06:50', 1, 1, 1),
(38, '11/26/2020 07:37:12 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 7, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-26 16:12:48', 'completed', '2020-11-26 20:27:21', '0D 4H 14M 32S ', '15272', 'started', NULL, NULL, NULL, '2020-11-26 14:07:12', 0, 0, 1),
(39, '11/26/2020 07:38:24 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 8, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-26 14:24:55', 'completed', '2020-11-26 15:16:38', '0D 0H 51M 42S ', '3102', 'completed', '2020-11-26 15:16:43', '0D 0H 51M 47S ', '3107', '2020-11-26 14:08:24', 1, 1, 1),
(40, '11/26/2020 07:38:41 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 8, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 14:08:41', 0, 0, 0),
(41, '11/26/2020 07:39:08 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 9, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-26 15:16:44', 'completed', '2020-11-26 15:52:41', '0D 0H 35M 55S ', '2155', 'started', NULL, NULL, NULL, '2020-11-26 14:09:08', 0, 0, 1),
(42, '11/26/2020 07:39:31 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 9, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 14:09:31', 0, 0, 0),
(43, '11/26/2020 07:39:56 pm', 'Sharda Borekar', 'SSP1020', 1, 0, 10, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 14:09:56', 0, 0, 0),
(44, '11/26/2020 07:40:19 pm', 'Rizwan Farah', 'SSP1021', 1, 0, 10, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 14:10:19', 0, 0, 0),
(45, '11/26/2020 10:06:26 pm', 'at surplusplay', 'SSP1022', 1, 0, 1, 2020, 'November', '2020-11-26', '2020-03-01', 0, 4, 0, 8, 'Quantity', '4', '2020-11-26 16:43:30', 'started', NULL, NULL, NULL, 'started', NULL, NULL, NULL, '2020-11-26 16:36:26', 0, 0, 0),
(46, '11/27/2020 03:46:16 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 1, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-27 10:23:46', 'completed', '2020-11-27 10:25:40', '0D 0H 1M 53S ', '113', 'completed', '2020-11-27 10:26:03', '0D 0H 2M 16S ', '136', '2020-11-27 10:16:16', 1, 1, 1),
(47, '11/27/2020 03:46:56 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 2, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-27 10:26:03', 'completed', '2020-11-27 10:31:16', '0D 0H 5M 12S ', '312', 'completed', '2020-11-27 10:31:30', '0D 0H 5M 26S ', '326', '2020-11-27 10:16:56', 1, 1, 1),
(48, '11/27/2020 03:47:45 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 3, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-27 10:31:30', 'started', NULL, NULL, NULL, 'started', NULL, NULL, NULL, '2020-11-27 10:17:45', 0, 0, 0),
(49, '11/27/2020 03:48:58 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 4, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:18:58', 0, 0, 0),
(50, '11/27/2020 03:49:17 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 5, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:19:17', 0, 0, 0),
(51, '11/27/2020 03:50:05 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 6, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:20:05', 0, 0, 0),
(52, '11/27/2020 03:50:50 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 7, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:20:50', 0, 0, 0),
(53, '11/27/2020 03:51:14 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 8, 2020, '', '', '', 0, 1, 0, 5, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:21:14', 0, 0, 0),
(54, '11/27/2020 03:51:53 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 9, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:21:53', 0, 0, 0),
(55, '11/27/2020 03:52:30 pm', 'Peter Danielsen', 'SSP1023', 1, 0, 10, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:22:30', 0, 0, 0),
(56, '11/27/2020 04:03:45 pm', 'Peter Laursen', 'SSP1024', 1, 0, 1, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-27 10:39:14', 'completed', '2020-11-27 10:40:40', '0D 0H 1M 25S ', '85', 'completed', '2020-11-27 10:40:47', '0D 0H 1M 32S ', '92', '2020-11-27 10:33:45', 1, 1, 1),
(57, '11/27/2020 04:04:05 pm', 'Peter Laursen', 'SSP1024', 1, 0, 2, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', '2020-11-27 10:40:47', 'started', NULL, NULL, NULL, 'started', NULL, NULL, NULL, '2020-11-27 10:34:05', 0, 0, 0),
(58, '11/27/2020 04:04:42 pm', 'Peter Laursen', 'SSP1024', 1, 0, 3, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:34:42', 0, 0, 0),
(59, '11/27/2020 04:05:09 pm', 'Peter Laursen', 'SSP1024', 1, 0, 4, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:35:09', 0, 0, 0),
(60, '11/27/2020 04:05:37 pm', 'Peter Laursen', 'SSP1024', 1, 0, 5, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:35:37', 0, 0, 0),
(61, '11/27/2020 04:06:08 pm', 'Peter Laursen', 'SSP1024', 1, 0, 6, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:36:08', 0, 0, 0),
(62, '11/27/2020 04:07:03 pm', 'Peter Laursen', 'SSP1024', 1, 0, 7, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:37:03', 0, 0, 0),
(63, '11/27/2020 04:07:49 pm', 'Peter Laursen', 'SSP1024', 1, 0, 8, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:37:49', 0, 0, 0),
(64, '11/27/2020 04:08:10 pm', 'Peter Laursen', 'SSP1024', 1, 0, 9, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:38:10', 0, 0, 0),
(65, '11/27/2020 04:08:40 pm', 'Peter Laursen', 'SSP1024', 1, 0, 10, 2020, '', '', '', 0, 1, 0, 2, 'Quantity', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 10:38:40', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `subs_id` varchar(20) NOT NULL,
  `category_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `subs_id`, `category_name`) VALUES
(2, 'SUB1002', 'PORSCHE');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('08a9f8e23bc463dde19ff05fe6669204100f4a4d', '109.247.209.76', 1606470272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437303135303b67616d655f69647c693a313b656d61696c7c733a32373a226174672e736861726461626f72656b617240676d61696c2e636f6d223b757365727c733a373a2253535031303230223b66697273745f6e616d657c733a363a22536861726461223b6c6173745f6e616d657c733a373a22426f72656b6172223b726f6c655f69647c733a313a2235223b),
('0b8db43bbacf633f2c3629818206daeea5ed0efe', '82.134.29.26', 1606505194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530353135303b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b6c6576656c5f67616d655f69647c693a313b696e76656e746f72795f67616d655f69647c693a313b),
('15d967188f9019a980ced1ac63f785ebad19d016', '82.134.29.26', 1606473180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437333138303b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b757365725f67616d655f69647c693a313b6275645f6d697373696f6e5f69647c733a383a22565468544d773d3d223b6d697373696f6e5f67616d655f69647c693a313b67616d655f69647c693a313b656d61696c7c733a32363a22737572706c7573706c61792e7465737440676d61696c2e636f6d223b757365727c733a373a2253535031303233223b66697273745f6e616d657c733a353a225065746572223b6c6173745f6e616d657c733a393a2244616e69656c73656e223b726f6c655f69647c733a323a223435223b),
('1666904bf9f67e364dc6e6edc2b43fd05977ad3c', '82.134.29.26', 1606505150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530353135303b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b6c6576656c5f67616d655f69647c693a313b696e76656e746f72795f67616d655f69647c693a313b67616d655f69647c693a313b656d61696c7c733a32323a2265636761627269656c73656e40676d61696c2e636f6d223b757365727c733a373a2253535031303234223b66697273745f6e616d657c733a353a225065746572223b6c6173745f6e616d657c733a373a224c61757273656e223b726f6c655f69647c733a313a2235223b),
('1a3af000b0f83bae066f62b4d296c0dfab5ced04', '82.134.29.26', 1606472216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437323231363b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b757365725f67616d655f69647c693a313b6275645f6d697373696f6e5f69647c733a343a22556a773d223b6d697373696f6e5f67616d655f69647c693a313b),
('1a45924386c6cce0a3044f355201677964315a00', '82.134.29.26', 1606472517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437323531373b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b757365725f67616d655f69647c693a313b6275645f6d697373696f6e5f69647c733a343a225554513d223b6d697373696f6e5f67616d655f69647c693a313b),
('29b9f6ee84302d7cf3bf13797c17038b0ad6b562', '18.206.55.76', 1606478443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383434333b),
('31e5f7714fec4f3ad3f9cb1b6871328ef881bcdf', '18.206.55.76', 1606478490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383439303b),
('3d7a63c97d3fd2b31243af602173776acb2a2682', '82.134.29.26', 1606504621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530343632313b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b6c6576656c5f67616d655f69647c693a313b696e76656e746f72795f67616d655f69647c693a313b67616d655f69647c693a313b656d61696c7c733a32323a2265636761627269656c73656e40676d61696c2e636f6d223b757365727c733a373a2253535031303234223b66697273745f6e616d657c733a353a225065746572223b6c6173745f6e616d657c733a373a224c61757273656e223b726f6c655f69647c733a313a2235223b),
('4fa6249d946ea7c384e5b4168a9bb8f3608ed2d1', '109.247.209.76', 1606470150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437303135303b67616d655f69647c693a313b656d61696c7c733a32353a226174672e72697a77616e666172616840676d61696c2e636f6d223b757365727c733a373a2253535031303231223b66697273745f6e616d657c733a363a2252697a77616e223b6c6173745f6e616d657c733a353a224661726168223b726f6c655f69647c733a323a223435223b),
('6757b47f56efb4055195d3cc0ec9f4181f44e307', '52.58.51.176', 1606478489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383438393b),
('7a2bae0ec02ed98d7659f80c02389fedfa4afcd6', '82.134.29.26', 1606478046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383034363b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b757365725f67616d655f69647c693a313b6275645f6d697373696f6e5f69647c733a383a224132344259513d3d223b6d697373696f6e5f67616d655f69647c693a313b67616d655f69647c693a313b656d61696c7c733a32323a2265636761627269656c73656e40676d61696c2e636f6d223b757365727c733a373a2253535031303234223b66697273745f6e616d657c733a353a225065746572223b6c6173745f6e616d657c733a373a224c61757273656e223b726f6c655f69647c733a313a2235223b),
('85c06fa78aa043b3c6e59b76b425d04a84cab95e', '109.247.209.76', 1606474630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437343631393b),
('8a689dd95f5c46b008b35e0d077329eceda00147', '14.96.64.128', 1606474573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437343537333b),
('97c190b9eb238c9a75e9a484dd507d92bc6b8cb6', '14.96.64.128', 1606474656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437343635363b),
('ae9e34aa3a37a4a2cce688668d77e082528cf998', '82.134.29.26', 1606478046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383034363b656d61696c7c733a32323a2265636761627269656c73656e40676d61696c2e636f6d223b757365727c733a373a2253535031303234223b66697273745f6e616d657c733a353a225065746572223b6c6173745f6e616d657c733a373a224c61757273656e223b726f6c655f69647c733a313a2235223b),
('b5125e8717451a59d3f74182e60a922353733832', '92.27.217.125', 1606478633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383533353b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b),
('b55249591b0d0330888b124cfbbf6be92b588e88', '52.58.51.176', 1606478491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437383439313b),
('bc021638e277204eb25df49f09da4ba511e450b7', '82.134.29.26', 1606473490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437333439303b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b757365725f67616d655f69647c693a313b6275645f6d697373696f6e5f69647c733a343a225654413d223b6d697373696f6e5f67616d655f69647c693a313b67616d655f69647c693a313b656d61696c7c733a32363a22737572706c7573706c61792e7465737440676d61696c2e636f6d223b757365727c733a373a2253535031303233223b66697273745f6e616d657c733a353a225065746572223b6c6173745f6e616d657c733a393a2244616e69656c73656e223b726f6c655f69647c733a323a223435223b),
('c24c9b432eda821ab8897b6fed84e99b2d740746', '85.166.190.138', 1606474603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437343630333b),
('cb8a56efb9f6112a923126537e076e0658ea5b72', '82.134.29.26', 1606502055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530323035353b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b6c6576656c5f67616d655f69647c693a313b696e76656e746f72795f67616d655f69647c693a313b),
('fec12e70a7a7dec6475a13ace9a4d4a55c65e9e5', '82.134.29.26', 1606472839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437323833393b61646d696e5f6e616d657c733a31363a22737572706c7573706c617961646d696e223b70726f66696c655f696d677c733a31343a22666c61672d73654032782e706e67223b61646d696e5f6e6d7c733a31313a22537572706c7573706c6179223b69647c733a313a2231223b757365725f67616d655f69647c693a313b6275645f6d697373696f6e5f69647c733a383a22565468544d773d3d223b6d697373696f6e5f67616d655f69647c693a313b67616d655f69647c693a313b656d61696c7c733a32363a22737572706c7573706c61792e7465737440676d61696c2e636f6d223b757365727c733a373a2253535031303233223b66697273745f6e616d657c733a353a225065746572223b6c6173745f6e616d657c733a393a2244616e69656c73656e223b726f6c655f69647c733a323a223435223b);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `comp_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `comp_logo`) VALUES
(1, 'Cargill Privat Limited', 'Cargill.png'),
(2, 'Koch Industries Privat Limited', 'SSP.png'),
(4, 'Deloitte Privat Limited', 'Matalan.png'),
(5, 'Ernst & Young Privat Limited', 'Ernst & Young copy.png'),
(7, 'Cox Enterprises Privat Limited', 'Wilko.png'),
(8, 'Fidelity Investments Privat Limited', 'UNipart.png'),
(9, 'Bechtel Privat Limited', 'Bechtel copy.png'),
(10, 'Staples Privat Limited', 'Iceland copy.png'),
(11, 'Greenergy Privat Limited', 'Greenergy.png'),
(12, 'Iceland Privat Limited', 'Iceland copy.png'),
(13, 'Bestway Group Privat Limited', 'Bestway_ copy.png'),
(14, 'SSP Privat Limited', 'SSP.png'),
(15, 'Wilko Privat Limited', 'Wilko.png'),
(16, 'Specsavers Privat Limited', 'Specsavers.png'),
(17, 'Matalan Privat Limited', 'Matalan.png'),
(18, 'Unipart Privat Limited', 'UNipart.png'),
(19, 'Kelda Group Privat Limited', 'Kelda_Group.png'),
(20, 'Best Buy Co., Inc.', 'best-buy copy.png'),
(21, 'Kesslers International Group', 'Kesslers.png'),
(22, 'CBRL Group Inc.', 'CBRL.png'),
(23, 'Kind Consumer Limited', 'Kind_Consumer.png'),
(24, 'LLM Communications', 'LLM.png'),
(25, 'Frende Salgssenter - Karstad&Gjeitrem ASK', '0.png'),
(26, 'Applied Materials, Inc.', 'Applied.png'),
(27, 'abc', '1.png'),
(28, 'tata', 'group-4@3x.png');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `game_name` varchar(150) NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `subs_id`, `game_name`, `create_date_time`) VALUES
(1, 'SUB1002', 'Porsche 654', '2020-05-06 16:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `game_trans_g1`
--

CREATE TABLE `game_trans_g1` (
  `game_trans_id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL,
  `game_trans_date` varchar(20) DEFAULT NULL,
  `trans_type` varchar(50) DEFAULT NULL,
  `userident` varchar(20) DEFAULT NULL,
  `is_new_noti` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_trans_g1`
--

INSERT INTO `game_trans_g1` (`game_trans_id`, `game_id`, `level_id`, `mission_id`, `game_trans_date`, `trans_type`, `userident`, `is_new_noti`) VALUES
(1, 1, NULL, 1, '2020/05/16', 'knowledge test', 'SSP1018', 0),
(2, 1, NULL, 1, '2020-05-16 15:43:17', 'car registration', 'SSP1018', 0),
(3, 1, NULL, 1, '2020-05-16 15:43:22', 'test drive', 'SSP1018', 0),
(4, 1, NULL, 2, '2020-05-16 15:43:31', 'car registration', 'SSP1018', 0),
(5, 1, NULL, 2, '2020-05-16 15:43:39', 'test drive', 'SSP1018', 0),
(6, 1, NULL, 3, '2020-05-16 15:43:53', 'car registration', 'SSP1018', 0),
(7, 1, NULL, 3, '2020-05-16 15:44:04', 'test drive', 'SSP1018', 0),
(8, 1, NULL, 4, '2020-05-16 15:44:31', 'car registration', 'SSP1018', 0),
(9, 1, NULL, 4, '2020-05-16 15:44:36', 'test drive', 'SSP1018', 0),
(10, 1, NULL, 1, '2020-05-16 15:44:42', 'car registration', 'SSP1019', 0),
(11, 1, NULL, 5, '2020-05-16 15:44:44', 'car registration', 'SSP1018', 0),
(12, 1, NULL, 5, '2020-05-16 15:44:51', 'car registration', 'SSP1018', 0),
(13, 1, NULL, 1, '2020-05-16 15:44:52', 'test drive', 'SSP1019', 0),
(14, 1, NULL, 5, '2020-05-16 15:44:57', 'test drive', 'SSP1018', 0),
(15, 1, NULL, 1, '2020-05-16 15:45:02', 'test drive', 'SSP1019', 0),
(16, 1, NULL, 2, '2020-05-16 15:45:11', 'test drive', 'SSP1019', 0),
(17, 1, NULL, 2, '2020-05-16 15:45:21', 'test drive', 'SSP1019', 0),
(18, 1, NULL, 6, '2020-05-16 15:45:23', 'car registration', 'SSP1018', 0),
(19, 1, NULL, 6, '2020-05-16 15:45:28', 'car registration', 'SSP1018', 0),
(20, 1, NULL, 6, '2020-05-16 15:45:35', 'test drive', 'SSP1018', 0),
(21, 1, NULL, 7, '2020-05-16 15:45:58', 'car registration', 'SSP1018', 0),
(22, 1, NULL, 2, '2020-05-16 15:46:01', 'car registration', 'SSP1019', 0),
(23, 1, NULL, 7, '2020-05-16 15:46:04', 'test drive', 'SSP1018', 0),
(24, 1, NULL, 7, '2020-05-16 15:46:50', 'test drive', 'SSP1018', 0),
(25, 1, NULL, 1, '2020-05-16 15:47:08', 'test drive', 'SSP1020', 0),
(26, 1, NULL, 8, '2020-05-16 15:47:22', 'car registration', 'SSP1018', 0),
(27, 1, NULL, 8, '2020-05-16 15:47:27', 'test drive', 'SSP1018', 0),
(28, 1, NULL, 8, '2020-05-16 15:47:32', 'test drive', 'SSP1018', 0),
(29, 1, NULL, 9, '2020-05-16 15:47:41', 'car registration', 'SSP1018', 0),
(30, 1, NULL, 3, '2020-05-16 15:47:47', 'car registration', 'SSP1019', 0),
(31, 1, NULL, 9, '2020-05-16 15:47:49', 'test drive', 'SSP1018', 0),
(32, 1, NULL, 3, '2020-05-16 15:47:51', 'test drive', 'SSP1019', 0),
(33, 1, NULL, 3, '2020-05-16 15:47:55', 'test drive', 'SSP1019', 0),
(34, 1, NULL, 10, '2020-05-16 15:47:57', 'car registration', 'SSP1018', 0),
(35, 1, NULL, 10, '2020-05-16 15:48:04', 'test drive', 'SSP1018', 0),
(36, 1, NULL, 4, '2020-05-16 15:48:05', 'test drive', 'SSP1019', 0),
(37, 1, NULL, 4, '2020-05-16 15:48:08', 'test drive', 'SSP1019', 0),
(38, 1, NULL, 10, '2020-05-16 15:48:10', 'test drive', 'SSP1018', 0),
(39, 1, NULL, 4, '2020-05-16 15:48:14', 'car registration', 'SSP1019', 0),
(40, 1, NULL, 10, '2020-05-16 15:48:19', 'test drive', 'SSP1018', 0),
(41, 1, NULL, 5, '2020-05-16 15:48:20', 'car registration', 'SSP1019', 0),
(42, 1, NULL, 5, '2020-05-16 15:48:24', 'test drive', 'SSP1019', 0),
(43, 1, NULL, 10, '2020-05-16 15:48:25', 'car registration', 'SSP1018', 0),
(44, 1, NULL, 5, '2020-05-16 15:48:28', 'test drive', 'SSP1019', 0),
(45, 1, NULL, 6, '2020-05-16 15:48:34', 'test drive', 'SSP1019', 0),
(46, 1, NULL, 11, '2020-05-16 15:48:34', 'car registration', 'SSP1018', 0),
(47, 1, NULL, 6, '2020-05-16 15:48:38', 'test drive', 'SSP1019', 0),
(48, 1, NULL, 11, '2020-05-16 15:48:40', 'car registration', 'SSP1018', 0),
(49, 1, NULL, 6, '2020-05-16 15:48:42', 'car registration', 'SSP1019', 0),
(50, 1, NULL, 11, '2020-05-16 15:48:46', 'test drive', 'SSP1018', 0),
(51, 1, NULL, 7, '2020-05-16 15:48:50', 'car registration', 'SSP1019', 0),
(52, 1, NULL, 7, '2020-05-16 15:48:55', 'test drive', 'SSP1019', 0),
(53, 1, NULL, 7, '2020-05-16 15:48:59', 'test drive', 'SSP1019', 0),
(54, 1, NULL, 8, '2020-05-16 15:49:10', 'test drive', 'SSP1019', 0),
(55, 1, NULL, 8, '2020-05-16 15:49:15', 'car registration', 'SSP1019', 0),
(56, 1, NULL, 8, '2020-05-16 15:49:19', 'car registration', 'SSP1019', 0),
(57, 1, NULL, 8, '2020-05-16 15:49:29', 'car registration', 'SSP1019', 0),
(58, 1, NULL, 8, '2020-05-16 15:49:41', 'test drive', 'SSP1019', 0),
(59, 1, NULL, 9, '2020-05-16 15:49:49', 'test drive', 'SSP1019', 0),
(60, 1, NULL, 9, '2020-05-16 15:49:53', 'test drive', 'SSP1019', 0),
(61, 1, NULL, 9, '2020-05-16 15:49:57', 'car registration', 'SSP1019', 0),
(62, 1, NULL, 10, '2020-05-16 15:50:04', 'car registration', 'SSP1019', 0),
(63, 1, NULL, 10, '2020-05-16 15:50:08', 'test drive', 'SSP1019', 0),
(64, 1, NULL, 10, '2020-05-16 15:50:11', 'test drive', 'SSP1019', 0),
(65, 1, NULL, 2, '2020/05/16', 'knowledge test', 'SSP1018', 0),
(66, 1, NULL, 11, '2020-05-16 15:50:18', 'test drive', 'SSP1019', 0),
(67, 1, NULL, 11, '2020-05-16 15:50:21', 'test drive', 'SSP1019', 0),
(68, 1, NULL, 11, '2020-05-16 15:50:25', 'car registration', 'SSP1019', 0),
(69, 1, NULL, 12, '2020-05-16 15:50:33', 'car registration', 'SSP1019', 0),
(70, 1, NULL, 12, '2020-05-16 15:50:40', 'test drive', 'SSP1019', 0),
(71, 1, NULL, 3, '2020/05/16', 'knowledge test', 'SSP1018', 0),
(72, 1, NULL, 12, '2020-05-16 15:50:42', 'test drive', 'SSP1019', 0),
(73, 1, NULL, 3, '2020/05/16', 'knowledge test', 'SSP1018', 0),
(74, 1, NULL, 4, '2020/05/16', 'knowledge test', 'SSP1018', 0),
(75, 1, NULL, 5, '2020/05/16', 'knowledge test', 'SSP1018', 0),
(76, 1, NULL, 5, '2020/05/16', 'knowledge test', 'SSP1018', 0),
(77, 1, NULL, 1, '2020-05-16 15:52:28', 'car registration', 'SSP1020', 0),
(78, 1, NULL, 2, '2020-05-16 15:52:38', 'car registration', 'SSP1020', 0),
(79, 1, NULL, 2, '2020-05-16 15:53:02', 'test drive', 'SSP1020', 0),
(80, 1, NULL, 12, '2020-05-16 15:53:22', 'car registration', 'SSP1018', 0),
(81, 1, NULL, 12, '2020-05-16 15:53:29', 'test drive', 'SSP1018', 0),
(82, 1, NULL, 12, '2020-05-16 15:53:34', 'test drive', 'SSP1018', 0),
(83, 1, NULL, 12, '2020-05-16 15:53:43', 'car registration', 'SSP1018', 0),
(84, 1, NULL, 2, '2020-05-16 15:53:51', 'test drive', 'SSP1020', 0),
(85, 1, NULL, 3, '2020-05-16 15:54:05', 'test drive', 'SSP1020', 0),
(86, 1, NULL, 3, '2020-05-16 15:54:12', 'test drive', 'SSP1020', 0),
(87, 1, NULL, 3, '2020-05-16 15:54:30', 'test drive', 'SSP1020', 0),
(88, 1, NULL, 3, '2020-05-16 15:54:34', 'car registration', 'SSP1020', 0),
(89, 1, NULL, 1, '2020/09/02', 'knowledge test', 'SSP1021', 0),
(90, 1, NULL, 3, '2020/09/02', 'knowledge test', 'SSP1020', 0),
(91, 1, NULL, 1, '2020-11-26 08:30:58', 'car registration', 'SSP1021', 0),
(92, 1, NULL, 1, '2020-11-26 08:31:06', 'test drive', 'SSP1021', 0),
(93, 1, NULL, 1, '2020-11-26 08:31:14', 'test drive', 'SSP1021', 0),
(94, 1, NULL, 2, '2020-11-26 09:00:51', 'test drive', 'SSP1021', 0),
(95, 1, NULL, 2, '2020-11-26 09:00:55', 'test drive', 'SSP1021', 0),
(96, 1, NULL, 2, '2020-11-26 09:00:59', 'car registration', 'SSP1021', 0),
(97, 1, NULL, 3, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(98, 1, NULL, 3, '2020-11-26 09:10:19', 'car registration', 'SSP1021', 0),
(99, 1, NULL, 3, '2020-11-26 09:10:23', 'car registration', 'SSP1021', 0),
(100, 1, NULL, 3, '2020-11-26 09:10:27', 'car registration', 'SSP1021', 0),
(101, 1, NULL, 3, '2020-11-26 09:10:36', 'test drive', 'SSP1021', 0),
(102, 1, NULL, 3, '2020-11-26 09:10:41', 'test drive', 'SSP1021', 0),
(103, 1, NULL, 4, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(104, 1, NULL, 4, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(105, 1, NULL, 4, '2020-11-26 09:24:40', 'car registration', 'SSP1021', 0),
(106, 1, NULL, 4, '2020-11-26 09:24:45', 'test drive', 'SSP1021', 0),
(107, 1, NULL, 4, '2020-11-26 09:24:49', 'test drive', 'SSP1021', 0),
(108, 1, NULL, 2, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(109, 1, NULL, 1, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(110, 1, NULL, 2, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(111, 1, NULL, 4, '2020-11-26 11:42:48', 'car registration', 'SSP1020', 0),
(112, 1, NULL, 4, '2020-11-26 11:42:53', 'car registration', 'SSP1020', 0),
(113, 1, NULL, 4, '2020-11-26 11:42:59', 'test drive', 'SSP1020', 0),
(114, 1, NULL, 3, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(115, 1, NULL, 5, '2020-11-26 12:15:51', 'car registration', 'SSP1020', 0),
(116, 1, NULL, 5, '2020-11-26 12:15:56', 'test drive', 'SSP1020', 0),
(117, 1, NULL, 6, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(118, 1, NULL, 5, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(119, 1, NULL, 6, '2020-11-26 12:49:44', 'car registration', 'SSP1020', 0),
(120, 1, NULL, 6, '2020-11-26 12:50:01', 'test drive', 'SSP1020', 0),
(121, 1, NULL, 4, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(122, 1, NULL, 4, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(123, 1, NULL, 3, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(124, 1, NULL, 7, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(125, 1, NULL, 7, '2020-11-26 14:17:44', 'car registration', 'SSP1020', 0),
(126, 1, NULL, 7, '2020-11-26 14:24:36', 'car registration', 'SSP1020', 0),
(127, 1, NULL, 7, '2020-11-26 14:24:45', 'test drive', 'SSP1020', 0),
(128, 1, NULL, 7, '2020-11-26 14:24:55', 'test drive', 'SSP1020', 0),
(129, 1, NULL, 8, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(130, 1, NULL, 2, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(131, 1, NULL, 5, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(132, 1, NULL, 7, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(133, 1, NULL, 5, '2020/11/26', 'knowledge test', 'SSP1021', 0),
(134, 1, NULL, 8, '2020-11-26 15:03:03', 'test drive', 'SSP1020', 0),
(135, 1, NULL, 6, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(136, 1, NULL, 8, '2020-11-26 15:16:38', 'car registration', 'SSP1020', 0),
(137, 1, NULL, 8, '2020-11-26 15:16:43', 'test drive', 'SSP1020', 0),
(138, 1, NULL, 8, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(139, 1, NULL, 8, '2020/11/26', 'knowledge test', 'SSP1020', 0),
(140, 1, NULL, 9, '2020-11-26 15:52:41', 'car registration', 'SSP1020', 0),
(141, 1, NULL, 5, '2020-11-26 16:09:21', 'test drive', 'SSP1021', 0),
(142, 1, NULL, 5, '2020-11-26 16:09:31', 'car registration', 'SSP1021', 0),
(143, 1, NULL, 5, '2020-11-26 16:09:36', 'car registration', 'SSP1021', 0),
(144, 1, NULL, 5, '2020-11-26 16:09:42', 'test drive', 'SSP1021', 0),
(145, 1, NULL, 5, '2020-11-26 16:09:50', 'test drive', 'SSP1021', 0),
(146, 1, NULL, 5, '2020-11-26 16:10:02', 'test drive', 'SSP1021', 0),
(147, 1, NULL, 5, '2020-11-26 16:10:11', 'car registration', 'SSP1021', 0),
(148, 1, NULL, 5, '2020-11-26 16:10:16', 'car registration', 'SSP1021', 0),
(149, 1, NULL, 6, '2020-11-26 16:11:06', 'test drive', 'SSP1021', 0),
(150, 1, NULL, 6, '2020-11-26 16:11:10', 'test drive', 'SSP1021', 0),
(151, 1, NULL, 6, '2020-11-26 16:11:16', 'test drive', 'SSP1021', 0),
(152, 1, NULL, 6, '2020-11-26 16:11:20', 'test drive', 'SSP1021', 0),
(153, 1, NULL, 6, '2020-11-26 16:11:30', 'test drive', 'SSP1021', 0),
(154, 1, NULL, 6, '2020-11-26 16:11:33', 'test drive', 'SSP1021', 0),
(155, 1, NULL, 6, '2020-11-26 16:11:38', 'test drive', 'SSP1021', 0),
(156, 1, NULL, 6, '2020-11-26 16:11:44', 'test drive', 'SSP1021', 0),
(157, 1, NULL, 6, '2020-11-26 16:11:51', 'test drive', 'SSP1021', 0),
(158, 1, NULL, 6, '2020-11-26 16:11:54', 'test drive', 'SSP1021', 0),
(159, 1, NULL, 6, '2020-11-26 16:12:47', 'car registration', 'SSP1021', 0),
(160, 1, NULL, 3, '2020/11/27', 'knowledge test', 'SSP1021', 1),
(161, 1, NULL, 7, '2020-11-26 20:27:21', 'car registration', 'SSP1021', 1),
(162, 1, NULL, 1, '2020/11/27', 'knowledge test', 'SSP1023', 1),
(163, 1, NULL, 1, '2020-11-27 10:25:40', 'car registration', 'SSP1023', 1),
(164, 1, NULL, 1, '2020-11-27 10:25:43', 'car registration', 'SSP1023', 1),
(165, 1, NULL, 1, '2020-11-27 10:25:48', 'car registration', 'SSP1023', 1),
(166, 1, NULL, 1, '2020-11-27 10:25:57', 'test drive', 'SSP1023', 1),
(167, 1, NULL, 1, '2020-11-27 10:26:02', 'test drive', 'SSP1023', 1),
(168, 1, NULL, 2, '2020/11/27', 'knowledge test', 'SSP1023', 1),
(169, 1, NULL, 2, '2020-11-27 10:31:16', 'car registration', 'SSP1023', 1),
(170, 1, NULL, 2, '2020-11-27 10:31:25', 'test drive', 'SSP1023', 1),
(171, 1, NULL, 2, '2020-11-27 10:31:30', 'test drive', 'SSP1023', 1),
(172, 1, NULL, 1, '2020/11/27', 'knowledge test', 'SSP1024', 1),
(173, 1, NULL, 1, '2020-11-27 10:40:39', 'car registration', 'SSP1024', 1),
(174, 1, NULL, 1, '2020-11-27 10:40:44', 'test drive', 'SSP1024', 1),
(175, 1, NULL, 1, '2020-11-27 10:40:46', 'test drive', 'SSP1024', 1),
(176, 1, NULL, 2, '2020/11/28', 'knowledge test', 'SSP1024', 1),
(177, 1, NULL, 2, '2020/11/28', 'knowledge test', 'SSP1024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grade_g1`
--

CREATE TABLE `grade_g1` (
  `grade_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `from_percentage` int(11) DEFAULT '0',
  `to_percentage` int(11) NOT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `badge_image` varchar(250) NOT NULL,
  `is_attempt` varchar(1) DEFAULT NULL,
  `congrats_img` varchar(100) DEFAULT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_g1`
--

INSERT INTO `grade_g1` (`grade_id`, `game_id`, `level_id`, `from_percentage`, `to_percentage`, `grade`, `description`, `badge_image`, `is_attempt`, `congrats_img`, `create_date_time`) VALUES
(1, 1, 1, 89, 100, '0', 'A', 'A.png', 'y', 'A.png', NULL),
(2, 0, 1, 77, 88, '0', 'B', 'B.png', 'y', 'B.png', NULL),
(3, 0, 1, 66, 76, '0', 'C', 'C.png', 'y', 'C.png', NULL),
(4, 0, 1, 41, 65, '0', 'D', 'D.png', 'y', 'D.png', NULL),
(5, 1, 1, 0, 40, '0', 'E', 'E.png', 'y', 'E.png', NULL),
(6, 1, 1, 0, 0, '0', 'F', 'F.png', 'n', 'F.png', NULL),
(28, 1, 0, 25, 25, 'A', 'test', 'badge-20200516194708.png', 'y', 'congrats-20200516194708.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interval_notification_g1`
--

CREATE TABLE `interval_notification_g1` (
  `interval_notification_id` bigint(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notification_date` date DEFAULT NULL,
  `notification_time` time DEFAULT NULL,
  `notification_interval` varchar(20) DEFAULT NULL,
  `time_zone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interval_notification_g1`
--

INSERT INTO `interval_notification_g1` (`interval_notification_id`, `subject`, `message`, `timestamp`, `notification_date`, `notification_time`, `notification_interval`, `time_zone`) VALUES
(1, 'Notification message', 'Meeting at 5pm', '2020-05-04 19:25:42', '2020-03-15', '04:12:15', 'Only Once', 'GMT'),
(8, 'knowledge report', 'Excellent !', '2020-05-15 15:11:46', '0000-00-00', '20:00:00', 'Yearly', 'IST'),
(9, 'sales report', 'Good Work', '2020-05-15 15:02:16', '0000-00-00', '00:00:00', 'Only Once', 'IST'),
(10, 'Sales', 'Sales report', '2020-05-16 14:33:06', '2020-05-17', '15:00:00', 'Only Once', 'CET'),
(11, 'Car Registration', 'You are one step ahead with your car registration mission', '2020-11-26 16:40:48', '2020-11-27', '17:40:00', 'Daily', 'CET');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_g1`
--

CREATE TABLE `inventory_g1` (
  `id` int(11) NOT NULL,
  `product_no` varchar(30) NOT NULL,
  `brand_name` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `car_model` varchar(250) NOT NULL,
  `cost` int(11) NOT NULL,
  `quanity` int(11) NOT NULL,
  `is_new` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_g1`
--

INSERT INTO `inventory_g1` (`id`, `product_no`, `brand_name`, `type`, `car_model`, `cost`, `quanity`, `is_new`, `year`) VALUES
(5, '718 Cayman', 'Porsche', 'GTS Coupe', '718 Cayman S', 81950, 1, 0, 2019),
(6, '911', 'Porsche', 'Carrera 4S Cabriolet', 'The new 911 Carrera', 134750, 1, 1, 2020),
(7, 'Cayenne', 'Porsche', 'S Coupe AWD', 'Cayenne Turbo S E-Hybrid', 89950, 1, 0, 2020),
(8, 'Macan', 'Porsche', 'Turbo AWD', 'The new 911 Carrera 4 Cabriolet', 84950, 1, 1, 2020),
(9, 'Panamera', 'Porsche', 'Turbo S E-Hybrid Executive AWD', 'Panamera Turbo S E-Hybrid', 199450, 1, 0, 2020),
(10, 'Taycan', 'Porsche', 'Turbo S', 'Taycan 4S', 186350, 1, 0, 2020),
(11, '718 Boxster', 'Porsche', 'GTS Roadster', '718 Boxster S', 84050, 1, 1, 2019),
(12, 'Panamera', 'Porsche', 'Turbo S E-Hybrid Executive AWD', 'Panamera 10 Years Edition', 199450, 1, 0, 2020),
(13, 'Macan', 'Porsche', 'S AWD', 'The new Macan GTS', 199450, 1, 0, 2020),
(18, 'porsche122', 'porcshge', 'porsche', 'porsche', 15000, 2, 1, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_badge_mapping_g1`
--

CREATE TABLE `knowledge_badge_mapping_g1` (
  `badge_mapping_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `userident` varchar(20) DEFAULT NULL,
  `all_percentage` int(11) NOT NULL DEFAULT '0',
  `grade` varchar(11) DEFAULT NULL,
  `grade_id` int(11) NOT NULL DEFAULT '0',
  `badge_knowlevel_image` varchar(200) DEFAULT NULL,
  `badge_qz_img` varchar(250) DEFAULT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knowledge_badge_mapping_g1`
--

INSERT INTO `knowledge_badge_mapping_g1` (`badge_mapping_id`, `game_id`, `userident`, `all_percentage`, `grade`, `grade_id`, `badge_knowlevel_image`, `badge_qz_img`, `create_date_time`) VALUES
(1, 1, 'SSP1018', 29, 'E', 5, 'E1.png', 'E.gif', NULL),
(2, 1, 'SSP1019', 0, NULL, 0, 'F1.png', 'F.gif', NULL),
(3, 1, 'SSP1020', 27, 'E', 5, 'E1.png', 'E.gif', NULL),
(4, 1, 'SSP1021', 39, 'E', 5, 'E1.png', 'E.gif', NULL),
(5, 1, 'SSP1022', 0, NULL, 0, 'F1.png', 'F.gif', NULL),
(6, 1, 'SSP1023', 38, 'E', 5, 'E1.png', 'E.gif', NULL),
(7, 1, 'SSP1024', 46, 'D', 4, 'D1.png', 'D.gif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_g1`
--

CREATE TABLE `level_g1` (
  `level_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `from_date` varchar(50) NOT NULL,
  `to_date` varchar(50) NOT NULL,
  `grades` varchar(10) NOT NULL,
  `result` varchar(10) NOT NULL,
  `attendance` varchar(10) NOT NULL,
  `certifcate` varchar(10) NOT NULL,
  `diploma` varchar(10) NOT NULL,
  `create_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_g1`
--

INSERT INTO `level_g1` (`level_id`, `game_id`, `title`, `from_date`, `to_date`, `grades`, `result`, `attendance`, `certifcate`, `diploma`, `create_date_time`) VALUES
(1, 1, 'Level First', '2020-01-23', '2020-12-12', 'No', 'Yes', 'No', 'No', 'Yes', '2020-05-16 15:17:14'),
(2, 1, 'Level Two', '2020-01-01', '2020-12-31', 'Yes', 'No', 'No', 'No', 'No', '2020-02-26 06:28:51'),
(3, 1, 'Level Three', '2020-01-01', '2020-12-31', 'Yes', 'No', 'No', 'No', 'No', '2020-02-26 06:28:51'),
(21, 1, 'Level 5', '', '', 'Yes', 'Yes', 'No', 'Yes', 'No', '2020-05-16 14:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `level_knowledge_g1`
--

CREATE TABLE `level_knowledge_g1` (
  `knowledge_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL DEFAULT '0',
  `knowledge_type` varchar(200) NOT NULL,
  `know_file_name` varchar(300) NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_knowledge_g1`
--

INSERT INTO `level_knowledge_g1` (`knowledge_id`, `game_id`, `level_id`, `mission_id`, `knowledge_type`, `know_file_name`, `create_date_time`) VALUES
(10, 1, 1, 1, 'video', 'coursequiz1.mp4', '2020-02-26 06:38:05'),
(11, 1, 1, 2, 'video', 'coursequiz2.mp4', '2020-02-26 06:38:05'),
(12, 1, 1, 3, 'video', 'coursequiz3.mp4', '2020-02-26 06:38:05'),
(13, 1, 1, 4, 'video', 'coursequiz4.mp4', '2020-02-26 06:38:05'),
(14, 1, 1, 5, 'video', 'coursequiz5.mp4', '2020-02-26 06:38:05'),
(15, 1, 1, 7, 'video', 'coursequiz7.mp4', '2020-02-26 06:38:05'),
(16, 1, 1, 8, 'video', 'coursequiz8.mp4', '2020-02-26 06:38:05'),
(17, 1, 1, 9, 'video', 'coursequiz9.mp4', '2020-02-26 06:38:05'),
(18, 1, 1, 10, 'video', 'coursequiz10.mp4', '2020-02-26 06:38:05'),
(19, 1, 1, 11, 'video', 'coursequiz11.mp4', '2020-02-26 06:38:05'),
(20, 1, 1, 12, 'video', 'coursequiz12.mp4', '2020-02-26 06:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `mission_duration_g1`
--

CREATE TABLE `mission_duration_g1` (
  `mission_dur_id` bigint(20) NOT NULL,
  `userident` varchar(50) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `budget_id` int(11) NOT NULL,
  `budget_status` varchar(50) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `last_completion_day` varchar(150) NOT NULL,
  `spend_time_minutes` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mission_duration_g1`
--

INSERT INTO `mission_duration_g1` (`mission_dur_id`, `userident`, `game_id`, `level_id`, `mission_id`, `budget_id`, `budget_status`, `start_datetime`, `end_datetime`, `last_completion_day`, `spend_time_minutes`) VALUES
(1, 'SSP1018', 1, 0, 1, 1, 'completed', '2020-05-16 15:41:48', '2020-05-16 15:43:22', '0D 0H 1M 33S ', 93),
(2, 'SSP1018', 1, 0, 2, 2, 'completed', '2020-05-16 15:43:22', '2020-05-16 15:43:42', '0D 0H 0M 19S ', 19),
(3, 'SSP1018', 1, 0, 3, 3, 'completed', '2020-05-16 15:43:44', '2020-05-16 15:44:04', '0D 0H 0M 20S ', 20),
(4, 'SSP1019', 1, 0, 1, 4, 'completed', '2020-05-16 15:44:35', '2020-05-16 15:45:02', '0D 0H 0M 27S ', 27),
(5, 'SSP1018', 1, 0, 4, 5, 'completed', '2020-05-16 15:44:04', '2020-05-16 15:44:36', '0D 0H 0M 31S ', 31),
(6, 'SSP1019', 1, 0, 2, 6, 'completed', '2020-05-16 15:45:03', '2020-05-16 15:46:02', '0D 0H 0M 58S ', 58),
(7, 'SSP1018', 1, 0, 5, 7, 'completed', '2020-05-16 15:44:36', '2020-05-16 15:44:57', '0D 0H 0M 20S ', 20),
(8, 'SSP1019', 1, 0, 3, 8, 'completed', '2020-05-16 15:46:02', '2020-05-16 15:47:56', '0D 0H 1M 53S ', 113),
(9, 'SSP1018', 1, 0, 6, 9, 'completed', '2020-05-16 15:44:57', '2020-05-16 15:45:36', '0D 0H 0M 38S ', 38),
(10, 'SSP1018', 1, 0, 7, 10, 'completed', '2020-05-16 15:45:36', '2020-05-16 15:46:50', '0D 0H 1M 13S ', 73),
(11, 'SSP1019', 1, 0, 4, 11, 'completed', '2020-05-16 15:47:56', '2020-05-16 15:48:14', '0D 0H 0M 17S ', 17),
(12, 'SSP1020', 1, 0, 1, 12, 'completed', '2020-05-16 15:46:51', '2020-05-16 15:52:29', '0D 17H 46M 39S ', 63999),
(13, 'SSP1018', 1, 0, 8, 13, 'completed', '2020-05-16 15:46:50', '2020-05-16 15:47:32', '0D 0H 0M 41S ', 41),
(14, 'SSP1019', 1, 0, 5, 14, 'completed', '2020-05-16 15:48:15', '2020-05-16 15:48:28', '0D 0H 0M 12S ', 12),
(15, 'SSP1018', 1, 0, 9, 15, 'completed', '2020-05-16 15:47:32', '2020-05-16 15:47:49', '0D 0H 0M 16S ', 16),
(16, 'SSP1020', 1, 0, 2, 16, 'completed', '2020-05-16 15:52:29', '2020-05-16 15:53:51', '0D 17H 41M 41S ', 63701),
(17, 'SSP1019', 1, 0, 6, 17, 'completed', '2020-05-16 15:48:29', '2020-05-16 15:48:43', '0D 0H 0M 13S ', 13),
(18, 'SSP1018', 1, 0, 10, 18, 'completed', '2020-05-16 15:47:49', '2020-05-16 15:48:25', '0D 0H 0M 35S ', 35),
(19, 'SSP1019', 1, 0, 7, 19, 'completed', '2020-05-16 15:48:43', '2020-05-16 15:49:00', '0D 0H 0M 16S ', 16),
(20, 'SSP1020', 1, 0, 3, 20, 'completed', '2020-05-16 15:53:54', '2020-05-16 15:54:35', '0D 17H 41M 42S ', 63702),
(21, 'SSP1018', 1, 0, 11, 21, 'completed', '2020-05-16 15:48:25', '2020-05-16 15:48:46', '0D 0H 0M 20S ', 20),
(22, 'SSP1018', 1, 0, 12, 22, 'completed', '2020-05-16 15:48:47', '2020-05-16 15:53:44', '0D 0H 4M 57S ', 297),
(23, 'SSP1019', 1, 0, 8, 23, 'completed', '2020-05-16 15:49:00', '2020-05-16 15:49:42', '0D 0H 0M 41S ', 41),
(24, 'SSP1020', 1, 0, 4, 24, 'completed', '2020-05-16 15:54:35', '2020-11-26 11:42:59', '193D 20H 48M 23S ', 16750103),
(25, 'SSP1019', 1, 0, 9, 25, 'completed', '2020-05-16 15:49:42', '2020-05-16 15:49:58', '0D 0H 0M 15S ', 15),
(26, 'SSP1019', 1, 0, 10, 26, 'completed', '2020-05-16 15:49:59', '2020-05-16 15:50:12', '0D 0H 0M 12S ', 12),
(27, 'SSP1020', 1, 0, 5, 27, 'completed', '2020-11-26 11:43:00', '2020-11-26 12:15:57', '0D 0H 32M 55S ', 1975),
(28, 'SSP1019', 1, 0, 11, 28, 'completed', '2020-05-16 15:50:12', '2020-05-16 15:50:26', '0D 0H 0M 13S ', 13),
(29, 'SSP1019', 1, 0, 12, 29, 'completed', '2020-05-16 15:50:26', '2020-05-16 15:51:39', '', 0),
(30, 'SSP1020', 1, 0, 6, 30, 'completed', '2020-11-26 12:15:57', '2020-11-26 13:58:41', '', 0),
(31, 'SSP1021', 1, 0, 1, 31, 'completed', '2020-06-10 12:34:43', '2020-11-26 08:31:14', '168D 20H 56M 29S ', 14590589),
(32, 'SSP1021', 1, 0, 2, 32, 'completed', '2020-11-26 08:31:15', '2020-11-26 09:00:59', '0D 0H 29M 42S ', 1782),
(33, 'SSP1021', 1, 0, 3, 33, 'completed', '2020-11-26 09:01:00', '2020-11-26 09:10:42', '0D 0H 9M 40S ', 580),
(34, 'SSP1021', 1, 0, 4, 34, 'completed', '2020-11-26 09:10:42', '2020-11-26 13:08:47', '', 0),
(35, 'SSP1021', 1, 0, 5, 35, 'completed', '2020-11-26 14:09:20', '2020-11-26 16:10:16', '0D 2H 0M 54S ', 7254),
(36, 'SSP1021', 1, 0, 6, 36, 'completed', '2020-11-26 16:10:16', '2020-11-26 16:12:47', '0D 0H 2M 30S ', 150),
(37, 'SSP1020', 1, 0, 7, 37, 'completed', '2020-11-26 14:10:15', '2020-11-26 14:24:55', '0D 0H 14M 44S ', 884),
(38, 'SSP1021', 1, 0, 7, 38, 'started', '2020-11-26 16:12:48', '0000-00-00 00:00:00', '', 0),
(39, 'SSP1020', 1, 0, 8, 39, 'completed', '2020-11-26 14:24:55', '2020-11-26 15:16:43', '0D 0H 51M 47S ', 3107),
(40, 'SSP1021', 1, 0, 8, 40, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(41, 'SSP1020', 1, 0, 9, 41, 'started', '2020-11-26 15:16:44', '0000-00-00 00:00:00', '', 0),
(42, 'SSP1021', 1, 0, 9, 42, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(43, 'SSP1020', 1, 0, 10, 43, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(44, 'SSP1021', 1, 0, 10, 44, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(45, 'SSP1022', 1, 0, 1, 45, 'started', '2020-11-26 16:43:30', '0000-00-00 00:00:00', '', 0),
(46, 'SSP1023', 1, 0, 1, 46, 'completed', '2020-11-27 10:23:46', '2020-11-27 10:26:03', '0D 0H 2M 16S ', 136),
(47, 'SSP1023', 1, 0, 2, 47, 'completed', '2020-11-27 10:26:03', '2020-11-27 10:31:30', '0D 0H 5M 26S ', 326),
(48, 'SSP1023', 1, 0, 3, 48, 'started', '2020-11-27 10:31:30', '0000-00-00 00:00:00', '', 0),
(49, 'SSP1023', 1, 0, 4, 49, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(50, 'SSP1023', 1, 0, 5, 50, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(51, 'SSP1023', 1, 0, 6, 51, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(52, 'SSP1023', 1, 0, 7, 52, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(53, 'SSP1023', 1, 0, 8, 53, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(54, 'SSP1023', 1, 0, 9, 54, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(55, 'SSP1023', 1, 0, 10, 55, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(56, 'SSP1024', 1, 0, 1, 56, 'completed', '2020-11-27 10:39:14', '2020-11-27 10:40:47', '0D 0H 1M 32S ', 92),
(57, 'SSP1024', 1, 0, 2, 57, 'started', '2020-11-27 10:40:47', '0000-00-00 00:00:00', '', 0),
(58, 'SSP1024', 1, 0, 3, 58, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(59, 'SSP1024', 1, 0, 4, 59, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(60, 'SSP1024', 1, 0, 5, 60, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(61, 'SSP1024', 1, 0, 6, 61, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(62, 'SSP1024', 1, 0, 7, 62, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(63, 'SSP1024', 1, 0, 8, 63, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(64, 'SSP1024', 1, 0, 9, 64, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(65, 'SSP1024', 1, 0, 10, 65, 'assigned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mission_g1`
--

CREATE TABLE `mission_g1` (
  `mission_id` bigint(20) NOT NULL,
  `level_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `city_image` varchar(100) NOT NULL,
  `background_color` varchar(200) NOT NULL,
  `city_name` varchar(200) NOT NULL,
  `mission_step` varchar(100) NOT NULL,
  `total_question` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `per_correct_question_point` int(11) NOT NULL,
  `time_limit` varchar(20) NOT NULL,
  `from_date` varchar(20) NOT NULL,
  `to_date` varchar(20) NOT NULL,
  `result` varchar(20) NOT NULL,
  `rule_document` varchar(200) NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mission_g1`
--

INSERT INTO `mission_g1` (`mission_id`, `level_id`, `game_id`, `city_image`, `background_color`, `city_name`, `mission_step`, `total_question`, `total_points`, `per_correct_question_point`, `time_limit`, `from_date`, `to_date`, `result`, `rule_document`, `create_date_time`) VALUES
(1, 1, 1, 'BERGEN_1.png', 'black', 'BERGEN', 'first', 7, 14, 2, '2', '2020-01-08', '2020-01-15', 'No', '0', NULL),
(2, 1, 1, 'BERLIN_1.png', '', 'BERLIN', 'Second', 6, 12, 2, '2', '', '', '', '', NULL),
(3, 1, 1, 'MILAN_1.png', '', 'MILAN', 'Third', 6, 12, 2, '2', '', '', '', '', NULL),
(4, 1, 1, 'ISTANBUL_1.png', '', 'ISTANBUL', 'Fourth', 6, 12, 2, '2', '', '', '', '', NULL),
(5, 1, 1, 'DUBAI_1.png', '', 'DUBAI', 'Five', 6, 12, 2, '2', '', '', '', '', NULL),
(6, 1, 1, 'TASKKENT_1.png', '', 'TASKKENT', 'Six', 6, 12, 2, '2', '', '', '', '', NULL),
(7, 1, 1, 'ISLAMABAD_1.png', '', 'ISLAMABAD', 'Seven', 6, 12, 2, '2', '', '', '', '', NULL),
(8, 1, 1, 'NEW_DELHI_1.png', '', 'NEW DELHI', 'Eight', 6, 12, 2, '2', '', '', '', '', NULL),
(9, 1, 1, 'BANGKOK_1.png', '', 'BANGKOK', 'Nine', 6, 12, 2, '2', '', '', '', '', NULL),
(10, 1, 1, 'SINGAPORE_1.png', '', 'SINGAPORE', 'Ten', 6, 12, 2, '2', '', '', '', '', NULL),
(11, 1, 1, 'BEIJING_1.png', '', 'BEIJING', 'Eleven', 6, 12, 2, '2', '', '', '', '', NULL),
(12, 1, 1, 'TOKYO.jpg', '', 'TOKYO', 'Twelve', 6, 12, 2, '2', '', '', 'No', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricelist_g1`
--

CREATE TABLE `pricelist_g1` (
  `id` int(11) NOT NULL,
  `product_no` varchar(30) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `car_model` varchar(250) NOT NULL,
  `price` varchar(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricelist_g1`
--

INSERT INTO `pricelist_g1` (`id`, `product_no`, `brand`, `type`, `car_model`, `price`, `year`) VALUES
(5, '718 Cayman', 'T23', 'GTS Coupe', '718 Cayman S', '81950', 2019),
(6, '911', 'Porsche\r\n', 'Carrera 4S Cabriolet', 'The new 911 Carrera', '134750', 2020),
(7, 'Cayenne', 'Porsche', 'S Coupe AWD', 'Cayenne Turbo S E-Hybrid', '89950', 2020),
(8, 'Macan', 'Porsche', 'Turbo AWD', 'The new 911 Carrera 4 Cabriolet', '84950', 2020),
(9, 'Panamera', 'Porsche', 'Turbo S E-Hybrid Executive AWD', 'Panamera Turbo S E-Hybrid', '199450', 2020),
(10, 'Taycan', 'Porsche', 'Turbo S', 'Taycan 4S', '186350', 2020),
(11, '718 Boxster', 'Porsche', 'GTS Roadster', '718 Boxster S', '84050', 2019),
(12, 'Panamera', 'Porsche', 'Turbo S E-Hybrid Executive AWD', 'Panamera 10 Years Edition', '199450', 2020),
(13, 'Macan', 'Porsche', 'S AWD', 'The new Macan GTS', '199450', 2020),
(19, 'Knhjsbcjs555', 'Porche', 'porsche', 'porcshe2', '450000', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m1`
--

CREATE TABLE `question_g1_m1` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m1`
--

INSERT INTO `question_g1_m1` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 1, '', '', ' Porsche was founded in and has headquarters in what southern German city?', '', 'Berlin', 'Stuttgart', 'Wolfsburg', 'Bremen', '', '', 'B', '', NULL),
(2, 1, 1, 1, '', '', 'Which generation is this 911?\r\n', '', '997', '993', '996', '964', '', '', 'B', '', NULL),
(3, 1, 1, 1, '', '', '\r\n\r\nIn which decade was Porsche founded?', '', '1930', '1910', '1920', '1920', '', '', 'A', '\r\n', NULL),
(4, 1, 1, 1, '', '', 'Who founded Porsche?', '', 'Ferdinand Porsche', 'Kristof Porsche', 'Franz Porsche', 'Leopold Porsche', '', '', 'A', '', NULL),
(5, 1, 1, 1, '', '', '\r\nWhich years was the Porsche 959 available for sale?', '', '1987-1988', '1986-1989', '1985-1992', '1985-1990', '', '', 'B', '', NULL),
(6, 1, 1, 1, '', '', '\r\nWhich Porsche model did actor James Dean die in?', '', '550 Spyder', '360 Cisitalia', '912', '911', '', '', 'A', '', NULL),
(8, 1, 0, 1, '', '', 'porsche location', '', 'delhi', 'new york', 'beijing', 'sttugard', '', '', 'D', 'company location.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m2`
--

CREATE TABLE `question_g1_m2` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m2`
--

INSERT INTO `question_g1_m2` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 2, '', '', 'What size engine does a 2004-2005 Porsche Carerra GT have?', '', '5.7L 8-cylinder', '6.2L 8-cylinder', '6.2L 10-cylinder', '5.7L 10-cylinder', '', '', 'D', '', NULL),
(2, 1, 1, 2, '', '', 'Which vehicle has the most horsepower?', '', '2012 Porsche Panamera Turbo', '2006 Porsche Cayman S', '2008 Porsche Cayenne Turbo S', '1997 Porsche 911 Turbo S', '', '', 'C', '', NULL),
(3, 1, 1, 2, '', '', 'Which Porsche model was NOT sold during the 1990\'s?', '', '930', '993', '944', '968', '', '', 'A', '', NULL),
(4, 1, 1, 2, '', '', '\r\nWhich is a true statement?', '', 'Porsche is a subsidiary of Volkswagen', 'Volkswagen and Porsche are not associated anymore', 'Volkswagen is a subsidiary of Porsche', 'None of these', '', '', 'A', '', NULL),
(5, 1, 1, 2, '', '', 'Which car has the fastest 0-60 time?', '', '2004 Porsche 911 GT3', '1986 Porsche 911 Turbo', '2013 Porsche Boxster S PDK', '2011 Porsche Panamera Turbo', '', '', 'D', '', NULL),
(6, 1, 1, 2, '', '', 'Which Porsche model has only 2 doors?', '', 'Macan', 'Cayman', 'Panamera', 'Cayenne', '', '', 'B', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m3`
--

CREATE TABLE `question_g1_m3` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m3`
--

INSERT INTO `question_g1_m3` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 3, '', '', ' What is the base MSRP for a 2014 Porsche 918 Spyder?', '', '$990,000', '$845,000', '$1,125,000', '$765,000', '', '', 'B', '', NULL),
(2, 1, 1, 3, '', '', 'Which is NOT a Porsche racing model?', '', '996', '908', '936', '961', '', '', 'A', '', NULL),
(3, 1, 1, 3, '', '', 'What does PCCB stand for on Porsche models?', '', 'Porsche Carbon Composite Brake', 'None of these', 'Porsche Ceramic Composite Brake', 'Porsche Certified Composite Brakes\r\n', '', '', 'C', '', NULL),
(4, 1, 1, 3, '', '', 'What size engine does a 1996 Porsche 911 GT1 Strassenversion have?', '', '6.2L 10-cylinder', '3.2L 6-cylinder', '5.7L 8-cylinder', '3.8L 6-cylinder', '', '', 'B', '', NULL),
(5, 1, 1, 3, '', '', 'According to the case what countries are manufactured Porsche\'s cars?', '', 'EE.UU –Finland', 'Germany –Finland', 'China –Germany', 'EE.UU- Germany\r\n', '', '', 'B', '', NULL),
(7, 1, 1, 3, '', '', 'When was the boxster roadster introduced?', '', '1996', '1989', '1995', '1987', '', '', 'A', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m4`
--

CREATE TABLE `question_g1_m4` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m4`
--

INSERT INTO `question_g1_m4` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 4, '', '', 'Why purchased \"put option\" had a high cost?', '', 'Because you need to pay taxes', 'It hadn’t a high cost, in fact is a way to save money', 'Because you must to pay an extra value for the government', 'Because there\'s an extra value that you have to pay to financial entity', '', '', 'D', '', NULL),
(2, 1, 1, 4, '', '', 'In what year was design Porche\'s logo?', '', '1948', '1948', '1958', 'None of the Above', '', '', 'A', '', NULL),
(3, 1, 1, 4, '', '', 'What are the 3 principal types of vehicles that Porsche has?', '', 'Boxster, 911, Cayenee', 'Caryenee, Boxster, 901', 'Cashnee, 911 serie, Boxsner', 'None of the Above', '', '', 'A', '', NULL),
(4, 1, 1, 4, '', '', 'Name the road-biased version of Porsche’s iconic 911 Carrera 2.7 RS?', '', 'Touring', 'Lux', 'Comfort', 'None of the Above', '', '', 'A', '', NULL),
(5, 1, 1, 4, '', '', 'What nickname was given to the rear spoiler on the original Porsche 911 Turbo?', '', 'Whale tail', 'Duck tail', 'Tea tray', 'Both A and B', '', '', 'C', '', NULL),
(6, 1, 1, 4, '', '', 'What is this – very-1970s – Porsche interior trim option called?', '', 'Chess', 'Pacha', 'Schwarz und Weiss', 'None of the above', '', '', 'B', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m5`
--

CREATE TABLE `question_g1_m5` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m5`
--

INSERT INTO `question_g1_m5` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 5, '', '', 'Which was the first Porsche with four-wheel drive?', '', '959', '597', 'None of the above', '964 Carrera 4', '', '', 'D', '', NULL),
(2, 1, 1, 5, '', '', 'Name this hardcore version of the Porsche 911 (993)?', '', 'GT2', 'Carrera RS', 'Turbo S', 'None of the Above', '', '', 'A', '', NULL),
(3, 1, 1, 5, '', '', 'What is the Porsche model code for the second-generation Boxster?', '', '986', '991', '987', 'None of the Above', '', '', 'C', '', NULL),
(4, 1, 1, 5, '', '', 'How quickly will Porsche 918 Spyder lap the Nurburgring?', '', '6min 50sec\r\n', '6min 57sec', '7min 01sec', 'None of the Above', '', '', 'A', '', NULL),
(5, 1, 1, 5, '', '', 'The new Porsche 911R shares its engine with which other 911?', '', 'GT3 RS', 'Turbo', 'Carrera GTS', 'None of the Above', '', '', 'A', '', NULL),
(6, 1, 1, 5, '', '', 'When was the first car bearing the brand name Porsche officially approved?', '', '1932', '1948', '1925', '1898\r\n', '', '', 'B', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m6`
--

CREATE TABLE `question_g1_m6` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m6`
--

INSERT INTO `question_g1_m6` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 6, '', '', 'In which decade was Porsche founded?', '', '1930', '1910', '1920\r\n', '1930', '', '', 'A', '', NULL),
(2, 1, 1, 6, '', '', 'Which Porsche model did actor James Dean die in?', '', '550 Spyder', '360 Cisitalia', '912', '911', '', '', 'A', '', NULL),
(3, 1, 1, 6, '', '', 'Which Porsche model was NOT sold during the 1990\'s?', '', '930', '993', '944', '968', '', '', 'A', '', NULL),
(4, 1, 1, 6, '', '', 'Which Porsche model has only 2 doors?', '', 'Macan', 'Cayman', 'Panamera', 'Cayenne', '', '', 'B', '', NULL),
(5, 1, 1, 6, '', '', 'What is the base MSRP for a 2014 Porsche 918 Spyder?', '', '$990,000', '$845,000', '$1,125,000', '$765,000', '', '', 'B', '', NULL),
(6, 1, 1, 6, '', '', 'What does PCCB stand for on Porsche models?', '', 'Porsche Carbon Composite Brake', 'None of these', 'Porsche Ceramic Composite Brake', 'Porsche Certified Composite Brakes\r\n', '', '', 'C', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m7`
--

CREATE TABLE `question_g1_m7` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m7`
--

INSERT INTO `question_g1_m7` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 7, '', '', 'When was the boxster roadster introduced?', '', '1996', '1989', '1995', '1987\r\n', '', '', 'A', '', NULL),
(2, 1, 1, 7, '', '', 'In what year was design Porche\'s logo?', '', '1948', '1938', '1958', 'None of these', '', '', 'A', '', NULL),
(3, 1, 1, 7, '', '', 'Name the road-biased version of Porsche’s iconic 911 Carrera 2.7 RS?', '', 'Touring', 'Lux', 'Comfort', 'None of these', '', '', 'A', '', NULL),
(4, 1, 1, 7, '', '', 'What is this – very-1970s – Porsche interior trim option called?', '', 'Chess', 'Pacha', 'Schwarz und Weiss', 'None of these', '', '', 'B', '', NULL),
(5, 1, 1, 7, '', '', 'Name this hardcore version of the Porsche 911 (993)?', '', 'GT2', 'Carrera RS', 'Turbo S', 'None of these', '', '', 'A', '', NULL),
(6, 1, 1, 7, '', '', 'How quickly will Porsche 918 Spyder lap the Nurburgring?', '', '6min 50sec', '6min 57sec', '7min 01sec', 'None of the above', '', '', 'B', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m8`
--

CREATE TABLE `question_g1_m8` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m8`
--

INSERT INTO `question_g1_m8` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 8, '', '', 'When was the first car bearing the brand name Porsche officially approved?', '', '1932', '1948', '1925', '1898\r\n', '', '', 'B', '', NULL),
(2, 1, 1, 8, '', '', '  Porsche was founded in and has headquarters in what southern German city?\r\n', '', 'Berlin', 'Stuttgart', 'Wolfsburg', 'Bremen', '', '', 'B', '', NULL),
(3, 1, 1, 8, '', '', 'The new Porsche 911R shares its engine with which other 911?', '', 'GT3 RS', 'Turbo', 'Carrera GTS', 'None of these', '', '', 'A', '', NULL),
(4, 1, 1, 8, '', '', 'Who founded Porsche?', '', 'Ferdinand Porsche', 'Kristof Porsche', 'Franz Porsche', 'Leopold Porsche', '', '', 'A', '', NULL),
(5, 1, 1, 8, '', '', 'How quickly will Porsche 918 Spyder lap the Nurburgring?', '', '6min 50sec', '6min 57sec', '7min 01sec', 'None of these', '', '', 'B', '', NULL),
(6, 1, 1, 8, '', '', 'Which Porsche model did actor James Dean die in?', '', '550 Spyder', '360 Cisitalia', '912', '911', '', '', 'A', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m9`
--

CREATE TABLE `question_g1_m9` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m9`
--

INSERT INTO `question_g1_m9` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 9, '', '', 'What is the Porsche model code for the second-generation Boxster?', '', '986', '991', '987', 'None of the above', '', '', 'C', '', NULL),
(2, 1, 1, 9, '', '', 'What size engine does a 2004-2005 Porsche Carerra GT have?', '', '5.7L 8-cylinder', '6.2L 8-cylinder', '6.2L 10-cylinder', '5.7L 10-cylinder', '', '', 'D', '', NULL),
(3, 1, 1, 9, '', '', 'Which was the first Porsche with four-wheel drive?', '', '959', '597', '964 Carrera 4', 'None of these', '', '', 'B', '', NULL),
(4, 1, 1, 9, '', '', 'Which vehicle has the most horsepower?', '', '2012 Porsche Panamera Turbo', '2006 Porsche Cayman S', '2008 Porsche Cayenne Turbo S', '1997 Porsche 911 Turbo S', '', '', 'C', '', NULL),
(5, 1, 1, 9, '', '', 'What is this – very-1970s – Porsche interior trim option called?', '', 'Chess', 'Pacha', 'Schwarz und Weiss', 'None of these', '', '', 'B', '', NULL),
(6, 1, 1, 9, '', '', 'Why purchased \"put option\" had a high cost?', '', 'Because you need to pay taxes', 'It hadn’t a high cost, in fact is a way to save money', 'Because you must to pay an extra value for the government', 'Because there\'s an extra value that you have to pay to financial entity', '', '', 'D', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m10`
--

CREATE TABLE `question_g1_m10` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m10`
--

INSERT INTO `question_g1_m10` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 10, '', '', 'Which generation is this 911?', '', '997', '993', '996', '964', '', '', 'B', '', NULL),
(2, 1, 1, 10, '', '', 'Who founded Porsche?', '', 'Ferdinand Porsche', 'Kristof Porsche', 'Franz Porsche', 'Leopold Porsche', '', '', 'A', '', NULL),
(3, 1, 1, 10, '', '', 'What size engine does a 2004-2005 Porsche Carerra GT have?', '', '5.7L 8-cylinder', '6.2L 8-cylinder', '6.2L 10-cylinder', '5.7L 10-cylinder', '', '', 'D', '', NULL),
(4, 1, 1, 10, '', '', 'Which is a true statement?', '', 'Porsche is a subsidiary of Volkswagen', 'Volkswagen and Porsche are not associated anymore', 'Volkswagen is a subsidiary of Porsche', 'None of these', '', '', 'A', '', NULL),
(5, 1, 1, 10, '', '', 'What is the base MSRP for a 2014 Porsche 918 Spyder?', '', '$990,000 ', '$845,000', '$1,125,000', '$765,000', '', '', 'B', '', NULL),
(6, 1, 1, 10, '', '', 'According to the case what countries are manufactured Porsche\'s cars?', '', 'EE.UU –Finland', 'Germany –Finland', 'China –Germany', 'EE.UU- Germany', '', '', 'B', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m11`
--

CREATE TABLE `question_g1_m11` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m11`
--

INSERT INTO `question_g1_m11` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 11, '', '', 'Why purchased \"put option\" had a high cost?', '', 'Because you need to pay taxes', 'It hadn’t a high cost, in fact is a way to save money', 'Because you must to pay an extra value for the government', 'Because there\'s an extra value that you have to pay to financial entity', '', '', 'D', '', NULL),
(2, 1, 1, 11, '', '', 'What are the 3 principal types of vehicles that Porsche has?', '', 'Boxster, 911, Cayenee', 'Caryenee, Boxster, 901', 'Cashnee, 911 serie, Boxsner', 'None of these', '', '', 'A', '', NULL),
(3, 1, 1, 11, '', '', 'What nickname was given to the rear spoiler on the original Porsche 911 Turbo?', '', 'Whale tail', 'Duck tail', 'Tea tray', 'None of these', '', '', 'C', '', NULL),
(4, 1, 1, 11, '', '', 'Name this hardcore version of the Porsche 911 (993)?', '', 'GT2', 'Carrera RS', 'Turbo S', 'None of these', '', '', 'A', '', NULL),
(5, 1, 1, 11, '', '', 'How quickly will Porsche 918 Spyder lap the Nurburgring?', '', '6min 50sec', '6min 57sec', '7min 01sec', 'None of these', '', '', 'B', '', NULL),
(6, 1, 1, 11, '', '', 'When was the first car bearing the brand name Porsche officially approved?', '', '1932', '1948', '1925', '1898', '', '', 'B', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_g1_m12`
--

CREATE TABLE `question_g1_m12` (
  `question_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `question_type` varchar(200) NOT NULL,
  `option_type` varchar(200) NOT NULL,
  `question_label` text NOT NULL,
  `question_image` varchar(200) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `option_e` varchar(200) NOT NULL,
  `option_f` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `answer_explaination` text NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_g1_m12`
--

INSERT INTO `question_g1_m12` (`question_id`, `game_id`, `level_id`, `mission_id`, `question_type`, `option_type`, `question_label`, `question_image`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `option_f`, `correct_answer`, `answer_explaination`, `create_date_time`) VALUES
(1, 1, 1, 12, '', '', 'In which decade was Porsche founded?', '', '1930', '1910', '1920', '1930', '', '', 'A', '', NULL),
(2, 1, 1, 12, '', '', 'What size engine does a 2004-2005 Porsche Carerra GT have?', '', '5.7L 8-cylinder', '6.2L 8-cylinder', '6.2L 10-cylinder', '5.7L 10-cylinder', '', '', 'D', '', NULL),
(3, 1, 1, 12, '', '', 'Which Porsche model was NOT sold during the 1990\'s?', '', '930', '993', '944', '968', '', '', 'A', '', NULL),
(4, 1, 1, 12, '', '', 'Which car has the fastest 0-60 time?', '', '2004 Porsche 911 GT3', '1986 Porsche 911 Turbo', '2013 Porsche Boxster S PDK', '2011 Porsche Panamera Turbo', '', '', 'D', '', NULL),
(5, 1, 1, 12, '', '', 'According to the case what countries are manufactured Porsche\'s cars?', '', 'EE.UU –Finland', 'Germany –Finland', 'China –Germany', 'EE.UU- Germany', '', '', 'B', '', NULL),
(6, 1, 1, 12, '', '', 'In what year was design Porche\'s logo?', '', '1948', '1938', '1958', 'None of the above', '', '', 'A', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_trans_g1`
--

CREATE TABLE `question_trans_g1` (
  `ques_trans_id` bigint(20) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `userident` varchar(20) NOT NULL,
  `ques_trans_date` varchar(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `question_no` int(11) NOT NULL DEFAULT '0',
  `given_answer` varchar(20) DEFAULT NULL,
  `answer_status` varchar(20) DEFAULT NULL,
  `answer_point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_trans_g1`
--

INSERT INTO `question_trans_g1` (`ques_trans_id`, `trans_id`, `game_id`, `level_id`, `mission_id`, `userident`, `ques_trans_date`, `start_time`, `end_time`, `question_no`, `given_answer`, `answer_status`, `answer_point`) VALUES
(1, 52, 1, 0, 1, 'SSP1018', ' 16-05-2020 21.12.21', NULL, NULL, 1, 'B', 'Correct ', 2),
(2, 52, 1, 0, 1, 'SSP1018', ' 16-05-2020 21.12.43', NULL, NULL, 3, 'A', 'Correct ', 2),
(3, 52, 1, 0, 1, 'SSP1018', ' 16-05-2020 21.12.45', NULL, NULL, 2, 'B', 'Correct ', 2),
(4, 52, 1, 0, 1, 'SSP1018', ' 16-05-2020 21.12.49', NULL, NULL, 8, 'D', 'Correct ', 2),
(5, 52, 1, 0, 1, 'SSP1018', ' 16-05-2020 21.12.51', NULL, NULL, 5, 'B', 'Correct ', 2),
(6, 52, 1, 0, 1, 'SSP1018', ' 16-05-2020 21.12.54', NULL, NULL, 4, 'A', 'Correct ', 2),
(7, 52, 1, 0, 1, 'SSP1018', ' 16-05-2020 21.12.57', NULL, NULL, 6, 'A', 'Correct ', 2),
(8, 53, 1, 0, 2, 'SSP1018', ' 16-05-2020 21.20.03', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(9, 53, 1, 0, 2, 'SSP1018', ' 16-05-2020 21.20.05', NULL, NULL, 6, 'D', 'InCorrect ', 0),
(10, 53, 1, 0, 2, 'SSP1018', ' 16-05-2020 21.20.08', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(11, 53, 1, 0, 2, 'SSP1018', ' 16-05-2020 21.20.10', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(12, 53, 1, 0, 2, 'SSP1018', ' 16-05-2020 21.20.12', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(13, 53, 1, 0, 2, 'SSP1018', ' 16-05-2020 21.20.15', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(14, 54, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.29', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(15, 54, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.31', NULL, NULL, 1, 'B', 'Correct ', 2),
(16, 54, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.33', NULL, NULL, 2, 'A', 'Correct ', 2),
(17, 54, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.36', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(18, 54, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.39', NULL, NULL, 7, 'A', 'Correct ', 2),
(19, 54, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.41', NULL, NULL, 4, 'B', 'Correct ', 2),
(20, 55, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.52', NULL, NULL, 7, 'B', 'InCorrect ', 0),
(21, 55, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.54', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(22, 55, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.56', NULL, NULL, 3, 'A', 'InCorrect ', 0),
(23, 55, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.20.59', NULL, NULL, 1, 'B', 'Correct ', 2),
(24, 55, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.21.01', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(25, 55, 1, 0, 3, 'SSP1018', ' 16-05-2020 21.21.03', NULL, NULL, 4, 'B', 'Correct ', 2),
(26, 56, 1, 0, 4, 'SSP1018', ' 16-05-2020 21.21.12', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(27, 56, 1, 0, 4, 'SSP1018', ' 16-05-2020 21.21.14', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(28, 56, 1, 0, 4, 'SSP1018', ' 16-05-2020 21.21.19', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(29, 56, 1, 0, 4, 'SSP1018', ' 16-05-2020 21.21.22', NULL, NULL, 2, 'A', 'Correct ', 2),
(30, 56, 1, 0, 4, 'SSP1018', ' 16-05-2020 21.21.25', NULL, NULL, 4, 'C', 'InCorrect ', 0),
(31, 56, 1, 0, 4, 'SSP1018', ' 16-05-2020 21.21.28', NULL, NULL, 1, 'D', 'Correct ', 2),
(32, 57, 1, 0, 5, 'SSP1018', ' 16-05-2020 21.21.38', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(33, 57, 1, 0, 5, 'SSP1018', ' 16-05-2020 21.21.43', NULL, NULL, 3, 'A', 'InCorrect ', 0),
(34, 57, 1, 0, 5, 'SSP1018', ' 16-05-2020 21.21.45', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(35, 57, 1, 0, 5, 'SSP1018', ' 16-05-2020 21.21.53', NULL, NULL, 5, '', 'InCorrect ', 0),
(36, 57, 1, 0, 5, 'SSP1018', ' 16-05-2020 21.21.53', NULL, NULL, 2, '', 'InCorrect ', 0),
(37, 58, 1, 0, 1, 'SSP1021', ' 02-09-2020 15.40.15', NULL, NULL, 8, 'B', 'InCorrect ', 0),
(38, 58, 1, 0, 1, 'SSP1021', ' 02-09-2020 15.40.16', NULL, NULL, 2, 'B', 'Correct ', 2),
(39, 58, 1, 0, 1, 'SSP1021', ' 02-09-2020 15.40.18', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(40, 58, 1, 0, 1, 'SSP1021', ' 02-09-2020 15.40.20', NULL, NULL, 4, 'A', 'Correct ', 2),
(41, 58, 1, 0, 1, 'SSP1021', ' 02-09-2020 15.40.21', NULL, NULL, 6, 'B', 'InCorrect ', 0),
(42, 58, 1, 0, 1, 'SSP1021', ' 02-09-2020 15.40.23', NULL, NULL, 1, 'D', 'InCorrect ', 0),
(43, 58, 1, 0, 1, 'SSP1021', ' 02-09-2020 15.40.24', NULL, NULL, 3, 'D', 'InCorrect ', 0),
(44, 59, 1, 0, 3, 'SSP1020', ' 02-09-2020 15.45.13', NULL, NULL, 4, 'B', 'Correct ', 2),
(45, 59, 1, 0, 3, 'SSP1020', ' 02-09-2020 15.45.15', NULL, NULL, 1, 'B', 'Correct ', 2),
(46, 59, 1, 0, 3, 'SSP1020', ' 02-09-2020 15.45.18', NULL, NULL, 7, 'D', 'InCorrect ', 0),
(47, 59, 1, 0, 3, 'SSP1020', ' 02-09-2020 15.45.20', NULL, NULL, 3, 'D', 'InCorrect ', 0),
(48, 59, 1, 0, 3, 'SSP1020', ' 02-09-2020 15.45.22', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(49, 59, 1, 0, 3, 'SSP1020', ' 02-09-2020 15.45.24', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(50, 61, 1, 0, 3, 'SSP1021', ' 26-11-2020 14.39.51', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(51, 61, 1, 0, 3, 'SSP1021', ' 26-11-2020 14.39.53', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(52, 61, 1, 0, 3, 'SSP1021', ' 26-11-2020 14.39.55', NULL, NULL, 7, 'D', 'InCorrect ', 0),
(53, 61, 1, 0, 3, 'SSP1021', ' 26-11-2020 14.39.57', NULL, NULL, 3, 'A', 'InCorrect ', 0),
(54, 61, 1, 0, 3, 'SSP1021', ' 26-11-2020 14.39.59', NULL, NULL, 1, 'B', 'Correct ', 2),
(55, 61, 1, 0, 3, 'SSP1021', ' 26-11-2020 14.40.02', NULL, NULL, 4, 'B', 'Correct ', 2),
(56, 62, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.43.13', NULL, NULL, 6, 'D', 'InCorrect ', 0),
(57, 62, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.43.16', NULL, NULL, 3, 'A', 'Correct ', 2),
(58, 62, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.43.18', NULL, NULL, 5, 'B', 'InCorrect ', 0),
(59, 62, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.43.19', NULL, NULL, 4, 'C', 'InCorrect ', 0),
(60, 62, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.43.21', NULL, NULL, 1, 'B', 'InCorrect ', 0),
(61, 62, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.43.23', NULL, NULL, 2, 'A', 'Correct ', 2),
(62, 63, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.53.57', NULL, NULL, 3, 'D', 'InCorrect ', 0),
(63, 63, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.53.59', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(64, 63, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.54.00', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(65, 63, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.54.01', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(66, 63, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.54.03', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(67, 63, 1, 0, 4, 'SSP1021', ' 26-11-2020 14.54.04', NULL, NULL, 1, 'B', 'InCorrect ', 0),
(68, 65, 1, 0, 2, 'SSP1021', ' 26-11-2020 15.15.58', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(69, 65, 1, 0, 2, 'SSP1021', ' 26-11-2020 15.16.00', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(70, 65, 1, 0, 2, 'SSP1021', ' 26-11-2020 15.16.02', NULL, NULL, 5, 'D', 'Correct ', 2),
(71, 65, 1, 0, 2, 'SSP1021', ' 26-11-2020 15.16.04', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(72, 65, 1, 0, 2, 'SSP1021', ' 26-11-2020 15.16.06', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(73, 65, 1, 0, 2, 'SSP1021', ' 26-11-2020 15.16.07', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(74, 66, 1, 0, 1, 'SSP1020', ' 26-11-2020 16.59.05', NULL, NULL, 8, 'C', 'InCorrect ', 0),
(75, 66, 1, 0, 1, 'SSP1020', ' 26-11-2020 16.59.07', NULL, NULL, 2, 'A', 'InCorrect ', 0),
(76, 66, 1, 0, 1, 'SSP1020', ' 26-11-2020 16.59.08', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(77, 66, 1, 0, 1, 'SSP1020', ' 26-11-2020 16.59.10', NULL, NULL, 3, 'A', 'Correct ', 2),
(78, 66, 1, 0, 1, 'SSP1020', ' 26-11-2020 16.59.12', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(79, 66, 1, 0, 1, 'SSP1020', ' 26-11-2020 16.59.13', NULL, NULL, 6, 'C', 'InCorrect ', 0),
(80, 66, 1, 0, 1, 'SSP1020', ' 26-11-2020 16.59.15', NULL, NULL, 1, 'B', 'Correct ', 2),
(81, 67, 1, 0, 2, 'SSP1020', ' 26-11-2020 17.10.22', NULL, NULL, 3, 'A', 'Correct ', 2),
(82, 67, 1, 0, 2, 'SSP1020', ' 26-11-2020 17.10.24', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(83, 67, 1, 0, 2, 'SSP1020', ' 26-11-2020 17.10.26', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(84, 67, 1, 0, 2, 'SSP1020', ' 26-11-2020 17.10.28', NULL, NULL, 2, 'A', 'InCorrect ', 0),
(85, 67, 1, 0, 2, 'SSP1020', ' 26-11-2020 17.10.30', NULL, NULL, 5, 'C', 'InCorrect ', 0),
(86, 67, 1, 0, 2, 'SSP1020', ' 26-11-2020 17.10.32', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(87, 68, 1, 0, 3, 'SSP1020', ' 26-11-2020 17.43.47', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(88, 68, 1, 0, 3, 'SSP1020', ' 26-11-2020 17.43.51', NULL, NULL, 4, 'B', 'Correct ', 2),
(89, 68, 1, 0, 3, 'SSP1020', ' 26-11-2020 17.43.54', NULL, NULL, 7, 'A', 'Correct ', 2),
(90, 68, 1, 0, 3, 'SSP1020', ' 26-11-2020 17.43.57', NULL, NULL, 3, 'C', 'Correct ', 2),
(91, 68, 1, 0, 3, 'SSP1020', ' 26-11-2020 17.44.02', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(92, 68, 1, 0, 3, 'SSP1020', ' 26-11-2020 17.44.21', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(93, 69, 1, 0, 6, 'SSP1020', ' 26-11-2020 18.14.12', NULL, NULL, 5, 'B', 'Correct ', 2),
(94, 69, 1, 0, 6, 'SSP1020', ' 26-11-2020 18.14.14', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(95, 69, 1, 0, 6, 'SSP1020', ' 26-11-2020 18.14.16', NULL, NULL, 6, 'B', 'InCorrect ', 0),
(96, 69, 1, 0, 6, 'SSP1020', ' 26-11-2020 18.14.18', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(97, 69, 1, 0, 6, 'SSP1020', ' 26-11-2020 18.14.20', NULL, NULL, 4, 'B', 'Correct ', 2),
(98, 69, 1, 0, 6, 'SSP1020', ' 26-11-2020 18.14.22', NULL, NULL, 1, 'B', 'InCorrect ', 0),
(99, 70, 1, 0, 5, 'SSP1020', ' 26-11-2020 18.17.13', NULL, NULL, 3, 'A', 'InCorrect ', 0),
(100, 70, 1, 0, 5, 'SSP1020', ' 26-11-2020 18.17.16', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(101, 70, 1, 0, 5, 'SSP1020', ' 26-11-2020 18.17.20', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(102, 70, 1, 0, 5, 'SSP1020', ' 26-11-2020 18.17.32', NULL, NULL, 5, 'B', 'InCorrect ', 0),
(103, 70, 1, 0, 5, 'SSP1020', ' 26-11-2020 18.17.38', NULL, NULL, 1, 'B', 'InCorrect ', 0),
(104, 70, 1, 0, 5, 'SSP1020', ' 26-11-2020 18.17.47', NULL, NULL, 2, 'C', 'InCorrect ', 0),
(105, 71, 1, 0, 4, 'SSP1020', ' 26-11-2020 18.22.50', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(106, 71, 1, 0, 4, 'SSP1020', ' 26-11-2020 18.22.51', NULL, NULL, 1, 'D', 'Correct ', 2),
(107, 71, 1, 0, 4, 'SSP1020', ' 26-11-2020 18.22.53', NULL, NULL, 3, 'D', 'InCorrect ', 0),
(108, 71, 1, 0, 4, 'SSP1020', ' 26-11-2020 18.22.54', NULL, NULL, 2, 'D', 'InCorrect ', 0),
(109, 71, 1, 0, 4, 'SSP1020', ' 26-11-2020 18.22.55', NULL, NULL, 6, 'D', 'InCorrect ', 0),
(110, 71, 1, 0, 4, 'SSP1020', ' 26-11-2020 18.22.57', NULL, NULL, 4, 'D', 'InCorrect ', 0),
(111, 73, 1, 0, 4, 'SSP1021', ' 26-11-2020 18.37.55', NULL, NULL, 3, 'A', 'Correct ', 2),
(112, 73, 1, 0, 4, 'SSP1021', ' 26-11-2020 18.37.57', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(113, 73, 1, 0, 4, 'SSP1021', ' 26-11-2020 18.37.58', NULL, NULL, 2, 'A', 'Correct ', 2),
(114, 73, 1, 0, 4, 'SSP1021', ' 26-11-2020 18.38.00', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(115, 73, 1, 0, 4, 'SSP1021', ' 26-11-2020 18.38.01', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(116, 73, 1, 0, 4, 'SSP1021', ' 26-11-2020 18.38.03', NULL, NULL, 4, 'A', 'Correct ', 2),
(117, 74, 1, 0, 3, 'SSP1021', ' 26-11-2020 18.38.24', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(118, 74, 1, 0, 3, 'SSP1021', ' 26-11-2020 18.38.25', NULL, NULL, 2, 'A', 'Correct ', 2),
(119, 74, 1, 0, 3, 'SSP1021', ' 26-11-2020 18.38.27', NULL, NULL, 3, 'A', 'InCorrect ', 0),
(120, 74, 1, 0, 3, 'SSP1021', ' 26-11-2020 18.38.28', NULL, NULL, 4, 'A', 'InCorrect ', 0),
(121, 74, 1, 0, 3, 'SSP1021', ' 26-11-2020 18.38.30', NULL, NULL, 7, 'A', 'Correct ', 2),
(122, 74, 1, 0, 3, 'SSP1021', ' 26-11-2020 18.38.31', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(123, 76, 1, 0, 7, 'SSP1020', ' 26-11-2020 19.40.31', NULL, NULL, 3, 'C', 'InCorrect ', 0),
(124, 76, 1, 0, 7, 'SSP1020', ' 26-11-2020 19.40.33', NULL, NULL, 6, 'C', 'InCorrect ', 0),
(125, 76, 1, 0, 7, 'SSP1020', ' 26-11-2020 19.40.34', NULL, NULL, 1, 'D', 'InCorrect ', 0),
(126, 76, 1, 0, 7, 'SSP1020', ' 26-11-2020 19.40.35', NULL, NULL, 2, 'D', 'InCorrect ', 0),
(127, 76, 1, 0, 7, 'SSP1020', ' 26-11-2020 19.40.36', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(128, 76, 1, 0, 7, 'SSP1020', ' 26-11-2020 19.40.38', NULL, NULL, 4, 'D', 'InCorrect ', 0),
(129, 77, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.53.43', NULL, NULL, 3, '', 'InCorrect ', 0),
(130, 77, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.53.46', NULL, NULL, 1, '', 'InCorrect ', 0),
(131, 77, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.53.48', NULL, NULL, 6, '', 'InCorrect ', 0),
(132, 78, 1, 0, 8, 'SSP1020', ' 26-11-2020 19.55.09', NULL, NULL, 6, 'B', 'InCorrect ', 0),
(133, 78, 1, 0, 8, 'SSP1020', ' 26-11-2020 19.55.11', NULL, NULL, 1, 'B', 'Correct ', 2),
(134, 78, 1, 0, 8, 'SSP1020', ' 26-11-2020 19.55.12', NULL, NULL, 2, 'B', 'Correct ', 2),
(135, 78, 1, 0, 8, 'SSP1020', ' 26-11-2020 19.55.14', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(136, 78, 1, 0, 8, 'SSP1020', ' 26-11-2020 19.55.16', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(137, 78, 1, 0, 8, 'SSP1020', ' 26-11-2020 19.55.18', NULL, NULL, 5, 'B', 'Correct ', 2),
(138, 79, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.59.41', NULL, NULL, 5, 'B', 'InCorrect ', 0),
(139, 79, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.59.43', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(140, 79, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.59.44', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(141, 79, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.59.46', NULL, NULL, 2, 'A', 'InCorrect ', 0),
(142, 79, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.59.48', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(143, 79, 1, 0, 2, 'SSP1020', ' 26-11-2020 19.59.49', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(144, 80, 1, 0, 3, 'SSP1020', ' 26-11-2020 20.02.06', NULL, NULL, 4, 'A', 'InCorrect ', 0),
(145, 81, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.12.37', NULL, NULL, 4, 'A', 'Correct ', 2),
(146, 81, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.12.38', NULL, NULL, 6, 'B', 'Correct ', 2),
(147, 81, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.12.39', NULL, NULL, 5, 'B', 'InCorrect ', 0),
(148, 81, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.12.40', NULL, NULL, 1, 'D', 'Correct ', 2),
(149, 81, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.12.41', NULL, NULL, 3, 'C', 'Correct ', 2),
(150, 81, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.12.42', NULL, NULL, 2, 'A', 'Correct ', 2),
(151, 83, 1, 0, 7, 'SSP1020', ' 26-11-2020 20.16.27', NULL, NULL, 4, 'A', 'InCorrect ', 0),
(152, 83, 1, 0, 7, 'SSP1020', ' 26-11-2020 20.16.35', NULL, NULL, 6, 'B', 'Correct ', 2),
(153, 83, 1, 0, 7, 'SSP1020', ' 26-11-2020 20.16.38', NULL, NULL, 1, 'A', 'Correct ', 2),
(154, 83, 1, 0, 7, 'SSP1020', ' 26-11-2020 20.16.42', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(155, 83, 1, 0, 7, 'SSP1020', ' 26-11-2020 20.16.45', NULL, NULL, 3, 'A', 'Correct ', 2),
(156, 83, 1, 0, 7, 'SSP1020', ' 26-11-2020 20.16.48', NULL, NULL, 5, 'C', 'InCorrect ', 0),
(157, 84, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.26.40', NULL, NULL, 6, 'B', 'Correct ', 2),
(158, 84, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.26.41', NULL, NULL, 1, 'D', 'Correct ', 2),
(159, 84, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.26.43', NULL, NULL, 2, 'A', 'Correct ', 2),
(160, 84, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.26.44', NULL, NULL, 3, 'C', 'Correct ', 2),
(161, 84, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.26.47', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(162, 84, 1, 0, 5, 'SSP1021', ' 26-11-2020 20.26.48', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(163, 86, 1, 0, 6, 'SSP1020', ' 26-11-2020 20.34.16', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(164, 86, 1, 0, 6, 'SSP1020', ' 26-11-2020 20.34.19', NULL, NULL, 4, 'A', 'InCorrect ', 0),
(165, 86, 1, 0, 6, 'SSP1020', ' 26-11-2020 20.34.20', NULL, NULL, 1, 'A', 'Correct ', 2),
(166, 86, 1, 0, 6, 'SSP1020', ' 26-11-2020 20.34.22', NULL, NULL, 6, 'C', 'Correct ', 2),
(167, 86, 1, 0, 6, 'SSP1020', ' 26-11-2020 20.34.23', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(168, 86, 1, 0, 6, 'SSP1020', ' 26-11-2020 20.34.25', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(169, 88, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.20', NULL, NULL, 4, 'B', 'InCorrect ', 0),
(170, 88, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.22', NULL, NULL, 1, 'D', 'InCorrect ', 0),
(171, 88, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.23', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(172, 88, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.24', NULL, NULL, 6, 'D', 'InCorrect ', 0),
(173, 88, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.26', NULL, NULL, 2, 'B', 'Correct ', 2),
(174, 88, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.28', NULL, NULL, 5, 'D', 'InCorrect ', 0),
(175, 89, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.37', NULL, NULL, 3, 'A', 'Correct ', 2),
(176, 89, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.39', NULL, NULL, 4, 'C', 'InCorrect ', 0),
(177, 89, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.40', NULL, NULL, 6, 'A', 'Correct ', 2),
(178, 89, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.42', NULL, NULL, 1, 'C', 'InCorrect ', 0),
(179, 89, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.43', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(180, 89, 1, 0, 8, 'SSP1020', ' 26-11-2020 20.48.45', NULL, NULL, 2, 'C', 'InCorrect ', 0),
(181, 91, 1, 0, 3, 'SSP1021', ' 27-11-2020 01.55.47', NULL, NULL, 2, 'A', 'Correct ', 2),
(182, 91, 1, 0, 3, 'SSP1021', ' 27-11-2020 01.55.49', NULL, NULL, 4, 'C', 'InCorrect ', 0),
(183, 91, 1, 0, 3, 'SSP1021', ' 27-11-2020 01.55.52', NULL, NULL, 5, 'B', 'Correct ', 2),
(184, 91, 1, 0, 3, 'SSP1021', ' 27-11-2020 01.55.54', NULL, NULL, 3, 'A', 'InCorrect ', 0),
(185, 91, 1, 0, 3, 'SSP1021', ' 27-11-2020 01.55.57', NULL, NULL, 7, 'D', 'InCorrect ', 0),
(186, 91, 1, 0, 3, 'SSP1021', ' 27-11-2020 01.56.00', NULL, NULL, 1, 'A', 'InCorrect ', 0),
(187, 93, 1, 0, 1, 'SSP1023', ' 27-11-2020 15.54.13', NULL, NULL, 2, 'A', 'InCorrect ', 0),
(188, 93, 1, 0, 1, 'SSP1023', ' 27-11-2020 15.54.18', NULL, NULL, 8, 'D', 'Correct ', 2),
(189, 93, 1, 0, 1, 'SSP1023', ' 27-11-2020 15.54.21', NULL, NULL, 5, 'B', 'Correct ', 2),
(190, 93, 1, 0, 1, 'SSP1023', ' 27-11-2020 15.54.25', NULL, NULL, 6, 'D', 'InCorrect ', 0),
(191, 93, 1, 0, 1, 'SSP1023', ' 27-11-2020 15.54.29', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(192, 93, 1, 0, 1, 'SSP1023', ' 27-11-2020 15.54.32', NULL, NULL, 4, 'D', 'InCorrect ', 0),
(193, 93, 1, 0, 1, 'SSP1023', ' 27-11-2020 15.54.35', NULL, NULL, 1, 'B', 'Correct ', 2),
(194, 94, 1, 0, 2, 'SSP1023', ' 27-11-2020 15.59.24', NULL, NULL, 1, 'B', 'InCorrect ', 0),
(195, 94, 1, 0, 2, 'SSP1023', ' 27-11-2020 15.59.26', NULL, NULL, 3, 'A', 'Correct ', 2),
(196, 94, 1, 0, 2, 'SSP1023', ' 27-11-2020 15.59.30', NULL, NULL, 5, 'D', 'Correct ', 2),
(197, 94, 1, 0, 2, 'SSP1023', ' 27-11-2020 15.59.33', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(198, 94, 1, 0, 2, 'SSP1023', ' 27-11-2020 15.59.35', NULL, NULL, 4, 'D', 'InCorrect ', 0),
(199, 94, 1, 0, 2, 'SSP1023', ' 27-11-2020 15.59.37', NULL, NULL, 2, 'A', 'InCorrect ', 0),
(200, 95, 1, 0, 1, 'SSP1024', ' 27-11-2020 16.09.38', NULL, NULL, 2, 'B', 'Correct ', 2),
(201, 95, 1, 0, 1, 'SSP1024', ' 27-11-2020 16.09.41', NULL, NULL, 3, 'A', 'Correct ', 2),
(202, 95, 1, 0, 1, 'SSP1024', ' 27-11-2020 16.09.45', NULL, NULL, 5, 'B', 'Correct ', 2),
(203, 95, 1, 0, 1, 'SSP1024', ' 27-11-2020 16.09.54', NULL, NULL, 6, 'D', 'InCorrect ', 0),
(204, 95, 1, 0, 1, 'SSP1024', ' 27-11-2020 16.09.57', NULL, NULL, 1, 'B', 'Correct ', 2),
(205, 95, 1, 0, 1, 'SSP1024', ' 27-11-2020 16.10.02', NULL, NULL, 8, 'D', 'Correct ', 2),
(206, 95, 1, 0, 1, 'SSP1024', ' 27-11-2020 16.10.04', NULL, NULL, 4, 'D', 'InCorrect ', 0),
(207, 96, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.05.15', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(208, 96, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.05.17', NULL, NULL, 1, 'C', 'InCorrect ', 0),
(209, 96, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.05.19', NULL, NULL, 5, 'D', 'Correct ', 2),
(210, 96, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.05.21', NULL, NULL, 6, 'D', 'InCorrect ', 0),
(211, 96, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.05.23', NULL, NULL, 4, 'D', 'InCorrect ', 0),
(212, 96, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.05.25', NULL, NULL, 3, 'B', 'InCorrect ', 0),
(213, 97, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.55.52', NULL, NULL, 5, 'A', 'InCorrect ', 0),
(214, 97, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.55.54', NULL, NULL, 3, 'A', 'Correct ', 2),
(215, 97, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.55.56', NULL, NULL, 1, 'C', 'InCorrect ', 0),
(216, 97, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.55.58', NULL, NULL, 6, 'A', 'InCorrect ', 0),
(217, 97, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.56.00', NULL, NULL, 2, 'B', 'InCorrect ', 0),
(218, 97, 1, 0, 2, 'SSP1024', ' 28-11-2020 00.56.02', NULL, NULL, 4, 'C', 'InCorrect ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt_g1`
--

CREATE TABLE `quiz_attempt_g1` (
  `quiz_attmp_id` bigint(20) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `userident` varchar(20) DEFAULT NULL,
  `total_score_points` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `badge_image` varchar(200) DEFAULT NULL,
  `congrats_img` varchar(100) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_attempt` varchar(1) DEFAULT NULL,
  `email_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_attempt_g1`
--

INSERT INTO `quiz_attempt_g1` (`quiz_attmp_id`, `trans_id`, `game_id`, `level_id`, `mission_id`, `userident`, `total_score_points`, `percentage`, `grade_id`, `badge_image`, `congrats_img`, `start_date`, `end_date`, `is_attempt`, `email_status`) VALUES
(1, 52, 1, 0, 1, 'SSP1018', 12, 86, 2, 'B.png', 'B.png', NULL, NULL, 'y', 1),
(2, 53, 1, 0, 2, 'SSP1018', 0, 0, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(3, 54, 1, 0, 3, 'SSP1018', 8, 67, 3, 'C.png', 'C.png', NULL, NULL, 'y', 1),
(4, 55, 1, 0, 3, 'SSP1018', 2, 17, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(5, 56, 1, 0, 4, 'SSP1018', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(6, 57, 1, 0, 5, 'SSP1018', 0, 0, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(7, 57, 1, 0, 5, 'SSP1018', 0, 0, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(8, 58, 1, 0, 1, 'SSP1021', 4, 29, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(9, 59, 1, 0, 3, 'SSP1020', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(10, 61, 1, 0, 3, 'SSP1021', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(11, 62, 1, 0, 4, 'SSP1021', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(12, 63, 1, 0, 4, 'SSP1021', 0, 0, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(13, 65, 1, 0, 2, 'SSP1021', 2, 17, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(14, 66, 1, 0, 1, 'SSP1020', 4, 29, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(15, 67, 1, 0, 2, 'SSP1020', 2, 17, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(16, 68, 1, 0, 3, 'SSP1020', 6, 50, 4, 'D.png', 'D.png', NULL, NULL, 'y', 1),
(17, 69, 1, 0, 6, 'SSP1020', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(18, 70, 1, 0, 5, 'SSP1020', 0, 0, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(19, 71, 1, 0, 4, 'SSP1020', 2, 17, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(20, 73, 1, 0, 4, 'SSP1021', 6, 50, 4, 'D.png', 'D.png', NULL, NULL, 'y', 1),
(21, 74, 1, 0, 3, 'SSP1021', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(22, 76, 1, 0, 7, 'SSP1020', 0, 0, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(23, 78, 1, 0, 8, 'SSP1020', 6, 50, 4, 'D.png', 'D.png', NULL, NULL, 'y', 1),
(24, 79, 1, 0, 2, 'SSP1020', 0, 0, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(25, 81, 1, 0, 5, 'SSP1021', 10, 83, 2, 'B.png', 'B.png', NULL, NULL, 'y', 1),
(26, 83, 1, 0, 7, 'SSP1020', 6, 50, 4, 'D.png', 'D.png', NULL, NULL, 'y', 1),
(27, 84, 1, 0, 5, 'SSP1021', 8, 67, 3, 'C.png', 'C.png', NULL, NULL, 'y', 1),
(28, 86, 1, 0, 6, 'SSP1020', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(29, 88, 1, 0, 8, 'SSP1020', 2, 17, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(30, 89, 1, 0, 8, 'SSP1020', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(31, 91, 1, 0, 3, 'SSP1021', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(32, 93, 1, 0, 1, 'SSP1023', 6, 43, 4, 'D.png', 'D.png', NULL, NULL, 'y', 1),
(33, 94, 1, 0, 2, 'SSP1023', 4, 33, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(34, 95, 1, 0, 1, 'SSP1024', 10, 71, 3, 'C.png', 'C.png', NULL, NULL, 'y', 1),
(35, 96, 1, 0, 2, 'SSP1024', 2, 17, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1),
(36, 97, 1, 0, 2, 'SSP1024', 2, 17, 5, 'E.png', 'E.png', NULL, NULL, 'y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_trans_count_g1`
--

CREATE TABLE `quiz_trans_count_g1` (
  `trans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_trans_count_g1`
--

INSERT INTO `quiz_trans_count_g1` (`trans_id`) VALUES
(97);

-- --------------------------------------------------------

--
-- Table structure for table `rank_knowledge_g1`
--

CREATE TABLE `rank_knowledge_g1` (
  `know_ranking_id` bigint(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL DEFAULT '0',
  `userident` varchar(20) DEFAULT NULL,
  `rank_no` int(11) NOT NULL DEFAULT '0',
  `know_completion_count` int(11) NOT NULL DEFAULT '0',
  `sum_all_mission` int(11) NOT NULL DEFAULT '0',
  `percentage` int(11) NOT NULL DEFAULT '0',
  `mission1` int(11) NOT NULL DEFAULT '0',
  `points1` int(11) NOT NULL DEFAULT '0',
  `percent_m1` int(11) NOT NULL DEFAULT '0',
  `mission2` int(11) NOT NULL DEFAULT '0',
  `points2` int(11) NOT NULL DEFAULT '0',
  `percent_m2` int(11) NOT NULL DEFAULT '0',
  `mission3` int(11) NOT NULL DEFAULT '0',
  `points3` int(11) NOT NULL DEFAULT '0',
  `percent_m3` int(11) NOT NULL DEFAULT '0',
  `mission4` int(11) NOT NULL DEFAULT '0',
  `points4` int(11) NOT NULL DEFAULT '0',
  `percent_m4` int(11) NOT NULL DEFAULT '0',
  `mission5` int(11) NOT NULL DEFAULT '0',
  `points5` int(11) NOT NULL DEFAULT '0',
  `percent_m5` int(11) NOT NULL DEFAULT '0',
  `mission6` int(11) NOT NULL DEFAULT '0',
  `points6` int(11) NOT NULL DEFAULT '0',
  `percent_m6` int(11) NOT NULL DEFAULT '0',
  `mission7` int(11) NOT NULL DEFAULT '0',
  `points7` int(11) NOT NULL DEFAULT '0',
  `percent_m7` int(11) NOT NULL DEFAULT '0',
  `mission8` int(11) NOT NULL DEFAULT '0',
  `points8` int(11) NOT NULL DEFAULT '0',
  `percent_m8` int(11) NOT NULL DEFAULT '0',
  `mission9` int(11) NOT NULL DEFAULT '0',
  `points9` int(11) NOT NULL DEFAULT '0',
  `percent_m9` int(11) NOT NULL DEFAULT '0',
  `mission10` int(11) NOT NULL DEFAULT '0',
  `points10` int(11) NOT NULL DEFAULT '0',
  `percent_m10` int(11) NOT NULL DEFAULT '0',
  `mission11` int(11) NOT NULL DEFAULT '0',
  `points11` int(11) NOT NULL DEFAULT '0',
  `percent_m11` int(11) NOT NULL DEFAULT '0',
  `mission12` int(11) NOT NULL DEFAULT '0',
  `points12` int(11) NOT NULL DEFAULT '0',
  `percent_m12` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank_knowledge_g1`
--

INSERT INTO `rank_knowledge_g1` (`know_ranking_id`, `game_id`, `level_id`, `userident`, `rank_no`, `know_completion_count`, `sum_all_mission`, `percentage`, `mission1`, `points1`, `percent_m1`, `mission2`, `points2`, `percent_m2`, `mission3`, `points3`, `percent_m3`, `mission4`, `points4`, `percent_m4`, `mission5`, `points5`, `percent_m5`, `mission6`, `points6`, `percent_m6`, `mission7`, `points7`, `percent_m7`, `mission8`, `points8`, `percent_m8`, `mission9`, `points9`, `percent_m9`, `mission10`, `points10`, `percent_m10`, `mission11`, `points11`, `percent_m11`, `mission12`, `points12`, `percent_m12`) VALUES
(1, 1, 0, 'SSP1018', 3, 7, 12, 0, 1, 100, 86, 4, 94, 0, 3, 96, 17, 2, 98, 33, 2, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 'SSP1019', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 0, 'SSP1020', 1, 14, 19, 0, 4, 94, 29, 5, 92, 0, 1, 100, 50, 3, 96, 17, 3, 96, 0, 1, 100, 33, 1, 100, 50, 1, 100, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 0, 'SSP1021', 2, 10, 11, 0, 5, 92, 29, 2, 98, 17, 2, 98, 33, 1, 100, 50, 1, 100, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 0, 'SSP1022', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, 0, 'SSP1023', 5, 2, 4, 0, 3, 96, 43, 1, 100, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 0, 'SSP1024', 4, 3, 5, 0, 2, 98, 71, 3, 96, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rank_sale_g1`
--

CREATE TABLE `rank_sale_g1` (
  `sale_ranking_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `userident` varchar(20) NOT NULL,
  `rank_no` int(11) NOT NULL DEFAULT '0',
  `sale_completion_count` int(11) NOT NULL DEFAULT '0',
  `sum_all_mission_sales` int(11) NOT NULL DEFAULT '0',
  `mission1` int(11) NOT NULL DEFAULT '0',
  `points1` int(11) NOT NULL DEFAULT '0',
  `mission2` int(11) NOT NULL DEFAULT '0',
  `points2` int(11) NOT NULL DEFAULT '0',
  `mission3` int(11) NOT NULL DEFAULT '0',
  `points3` int(11) NOT NULL DEFAULT '0',
  `mission4` int(11) NOT NULL DEFAULT '0',
  `points4` int(11) NOT NULL DEFAULT '0',
  `mission5` int(11) NOT NULL DEFAULT '0',
  `points5` int(11) NOT NULL DEFAULT '0',
  `mission6` int(11) NOT NULL DEFAULT '0',
  `points6` int(11) NOT NULL DEFAULT '0',
  `mission7` int(11) NOT NULL DEFAULT '0',
  `points7` int(11) NOT NULL DEFAULT '0',
  `mission8` int(11) NOT NULL DEFAULT '0',
  `points8` int(11) NOT NULL DEFAULT '0',
  `mission9` int(11) NOT NULL DEFAULT '0',
  `points9` int(11) NOT NULL DEFAULT '0',
  `mission10` int(11) NOT NULL DEFAULT '0',
  `points10` int(11) NOT NULL DEFAULT '0',
  `mission11` int(11) NOT NULL DEFAULT '0',
  `points11` int(11) NOT NULL DEFAULT '0',
  `mission12` int(11) NOT NULL DEFAULT '0',
  `points12` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank_sale_g1`
--

INSERT INTO `rank_sale_g1` (`sale_ranking_id`, `game_id`, `level_id`, `userident`, `rank_no`, `sale_completion_count`, `sum_all_mission_sales`, `mission1`, `points1`, `mission2`, `points2`, `mission3`, `points3`, `mission4`, `points4`, `mission5`, `points5`, `mission6`, `points6`, `mission7`, `points7`, `mission8`, `points8`, `mission9`, `points9`, `mission10`, `points10`, `mission11`, `points11`, `mission12`, `points12`) VALUES
(1, 1, 0, 'SSP1018', 2, 12, 29, 5, 92, 1, 100, 4, 94, 3, 96, 1, 100, 4, 94, 2, 98, 2, 98, 3, 96, 1, 100, 2, 98, 1, 100),
(2, 1, 0, 'SSP1019', 1, 12, 28, 6, 90, 4, 94, 1, 100, 2, 98, 3, 96, 1, 100, 4, 94, 1, 100, 1, 100, 2, 98, 1, 100, 2, 98),
(3, 1, 0, 'SSP1020', 3, 9, 25, 3, 96, 5, 92, 3, 96, 1, 100, 2, 98, 3, 96, 3, 96, 3, 96, 2, 98, 0, 0, 0, 0, 0, 0),
(4, 1, 0, 'SSP1021', 4, 7, 17, 2, 98, 2, 98, 2, 98, 4, 94, 4, 94, 2, 98, 1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 0, 'SSP1022', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, 0, 'SSP1023', 5, 2, 4, 1, 100, 3, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 0, 'SSP1024', 6, 1, 4, 4, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rank_scoreboard_g1`
--

CREATE TABLE `rank_scoreboard_g1` (
  `scoreboard_id` bigint(20) NOT NULL,
  `game_id` int(11) DEFAULT '0',
  `level_id` int(11) DEFAULT '0',
  `userident` varchar(20) DEFAULT NULL,
  `rank_no` int(11) NOT NULL DEFAULT '0',
  `previous_rank_no` int(11) NOT NULL DEFAULT '0',
  `mission_completion_count` int(11) NOT NULL DEFAULT '0',
  `sum_all_mission_count` int(11) NOT NULL DEFAULT '0',
  `mission1` int(11) NOT NULL DEFAULT '0',
  `previous_mission1` int(11) NOT NULL DEFAULT '0',
  `points1` int(11) NOT NULL DEFAULT '0',
  `mission2` int(11) DEFAULT '0',
  `previous_mission2` int(11) NOT NULL DEFAULT '0',
  `points2` int(11) NOT NULL DEFAULT '0',
  `mission3` int(11) DEFAULT '0',
  `previous_mission3` int(11) NOT NULL DEFAULT '0',
  `points3` int(11) NOT NULL DEFAULT '0',
  `mission4` int(11) NOT NULL DEFAULT '0',
  `previous_mission4` int(11) NOT NULL DEFAULT '0',
  `points4` int(11) NOT NULL DEFAULT '0',
  `mission5` int(11) NOT NULL DEFAULT '0',
  `previous_mission5` int(11) NOT NULL DEFAULT '0',
  `points5` int(11) NOT NULL DEFAULT '0',
  `mission6` int(11) NOT NULL DEFAULT '0',
  `previous_mission6` int(11) NOT NULL DEFAULT '0',
  `points6` int(11) NOT NULL DEFAULT '0',
  `mission7` int(11) NOT NULL DEFAULT '0',
  `previous_mission7` int(11) NOT NULL DEFAULT '0',
  `points7` int(11) NOT NULL DEFAULT '0',
  `mission8` int(11) NOT NULL DEFAULT '0',
  `previous_mission8` int(11) NOT NULL DEFAULT '0',
  `points8` int(11) NOT NULL DEFAULT '0',
  `mission9` int(11) NOT NULL DEFAULT '0',
  `previous_mission9` int(11) NOT NULL DEFAULT '0',
  `points9` int(11) NOT NULL DEFAULT '0',
  `mission10` int(11) NOT NULL DEFAULT '0',
  `previous_mission10` int(11) NOT NULL DEFAULT '0',
  `points10` int(11) NOT NULL DEFAULT '0',
  `mission11` int(11) NOT NULL DEFAULT '0',
  `previous_mission11` int(11) NOT NULL,
  `points11` int(11) NOT NULL DEFAULT '0',
  `mission12` int(11) NOT NULL DEFAULT '0',
  `previous_mission12` int(11) NOT NULL DEFAULT '0',
  `points12` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank_scoreboard_g1`
--

INSERT INTO `rank_scoreboard_g1` (`scoreboard_id`, `game_id`, `level_id`, `userident`, `rank_no`, `previous_rank_no`, `mission_completion_count`, `sum_all_mission_count`, `mission1`, `previous_mission1`, `points1`, `mission2`, `previous_mission2`, `points2`, `mission3`, `previous_mission3`, `points3`, `mission4`, `previous_mission4`, `points4`, `mission5`, `previous_mission5`, `points5`, `mission6`, `previous_mission6`, `points6`, `mission7`, `previous_mission7`, `points7`, `mission8`, `previous_mission8`, `points8`, `mission9`, `previous_mission9`, `points9`, `mission10`, `previous_mission10`, `points10`, `mission11`, `previous_mission11`, `points11`, `mission12`, `previous_mission12`, `points12`) VALUES
(1, 1, 0, 'SSP1018', 2, 2, 12, 24, 3, 0, 96, 1, 0, 100, 1, 0, 100, 3, 0, 96, 2, 0, 98, 3, 0, 96, 2, 0, 98, 1, 0, 100, 2, 0, 98, 2, 0, 98, 2, 0, 98, 2, 0, 98),
(2, 1, 0, 'SSP1019', 1, 1, 12, 17, 1, 0, 100, 2, 0, 98, 2, 0, 98, 2, 0, 98, 1, 0, 100, 2, 0, 98, 1, 0, 100, 2, 0, 98, 1, 0, 100, 1, 0, 100, 1, 0, 100, 1, 0, 100),
(3, 1, 0, 'SSP1020', 3, 3, 8, 28, 5, 0, 92, 5, 0, 92, 4, 0, 94, 4, 0, 94, 3, 0, 96, 1, 0, 100, 3, 0, 96, 3, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 0, 'SSP1021', 4, 4, 6, 22, 6, 0, 90, 4, 0, 94, 3, 0, 96, 1, 0, 100, 4, 0, 94, 4, 0, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 0, 'SSP1022', 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, 0, 'SSP1023', 5, 5, 2, 7, 4, 0, 94, 3, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 0, 'SSP1024', 6, 6, 1, 2, 2, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rank_test_drive_g1`
--

CREATE TABLE `rank_test_drive_g1` (
  `test_drive_ranking_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `userident` varchar(20) NOT NULL,
  `rank_no` int(11) NOT NULL DEFAULT '0',
  `test_drive_completion_count` int(11) NOT NULL DEFAULT '0',
  `sum_all_test_drive_count` int(11) NOT NULL DEFAULT '0',
  `mission1` int(11) NOT NULL DEFAULT '0',
  `points1` int(11) NOT NULL DEFAULT '0',
  `mission2` int(11) NOT NULL DEFAULT '0',
  `points2` int(11) NOT NULL DEFAULT '0',
  `mission3` int(11) NOT NULL DEFAULT '0',
  `points3` int(11) NOT NULL DEFAULT '0',
  `mission4` int(11) NOT NULL DEFAULT '0',
  `points4` int(11) NOT NULL DEFAULT '0',
  `mission5` int(11) NOT NULL DEFAULT '0',
  `points5` int(11) NOT NULL DEFAULT '0',
  `mission6` int(11) NOT NULL DEFAULT '0',
  `points6` int(11) NOT NULL DEFAULT '0',
  `mission7` int(11) NOT NULL DEFAULT '0',
  `points7` int(11) NOT NULL DEFAULT '0',
  `mission8` int(11) NOT NULL DEFAULT '0',
  `points8` int(11) NOT NULL DEFAULT '0',
  `mission9` int(11) NOT NULL DEFAULT '0',
  `points9` int(11) NOT NULL DEFAULT '0',
  `mission10` int(11) NOT NULL DEFAULT '0',
  `points10` int(11) NOT NULL DEFAULT '0',
  `mission11` int(11) NOT NULL DEFAULT '0',
  `points11` int(11) NOT NULL DEFAULT '0',
  `mission12` int(11) NOT NULL DEFAULT '0',
  `points12` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank_test_drive_g1`
--

INSERT INTO `rank_test_drive_g1` (`test_drive_ranking_id`, `game_id`, `level_id`, `userident`, `rank_no`, `test_drive_completion_count`, `sum_all_test_drive_count`, `mission1`, `points1`, `mission2`, `points2`, `mission3`, `points3`, `mission4`, `points4`, `mission5`, `points5`, `mission6`, `points6`, `mission7`, `points7`, `mission8`, `points8`, `mission9`, `points9`, `mission10`, `points10`, `mission11`, `points11`, `mission12`, `points12`) VALUES
(1, 1, 0, 'SSP1018', 2, 12, 29, 6, 90, 2, 98, 2, 98, 3, 96, 3, 96, 2, 98, 2, 98, 2, 98, 2, 98, 2, 98, 1, 100, 2, 98),
(2, 1, 0, 'SSP1019', 1, 12, 22, 3, 96, 3, 96, 1, 100, 1, 100, 1, 100, 4, 94, 1, 100, 3, 96, 1, 100, 1, 100, 2, 98, 1, 100),
(3, 1, 0, 'SSP1020', 3, 8, 22, 4, 94, 5, 92, 4, 94, 2, 98, 2, 98, 1, 100, 3, 96, 1, 100, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 0, 'SSP1021', 4, 6, 17, 2, 98, 1, 100, 3, 96, 4, 94, 4, 94, 3, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 0, 'SSP1022', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, 0, 'SSP1023', 5, 2, 5, 1, 100, 4, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 0, 'SSP1024', 6, 1, 5, 5, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_g1`
--

CREATE TABLE `role_g1` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_g1`
--

INSERT INTO `role_g1` (`role_id`, `role_name`) VALUES
(4, 'Manager'),
(5, 'Player');

-- --------------------------------------------------------

--
-- Table structure for table `sale_transaction`
--

CREATE TABLE `sale_transaction` (
  `sale_trans_id` bigint(20) NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL,
  `import_batch_no` varchar(30) DEFAULT NULL,
  `trans_type` varchar(300) DEFAULT NULL,
  `dato_og_tid` datetime DEFAULT NULL,
  `kontrakt_nr` varchar(200) DEFAULT NULL,
  `product_id` varchar(200) DEFAULT NULL,
  `aarspremie` int(11) DEFAULT NULL,
  `produkt_type_id` varchar(200) DEFAULT NULL,
  `produkt_type` varchar(200) DEFAULT NULL,
  `userident` varchar(200) DEFAULT NULL,
  `marked_segment` varchar(200) DEFAULT NULL,
  `selskap` varchar(200) DEFAULT NULL,
  `nysalg` varchar(200) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `sub_id` varchar(30) DEFAULT NULL,
  `car_year` int(11) NOT NULL,
  `reg_type` int(1) NOT NULL,
  `product_from` varchar(50) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `car_model` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_transaction`
--

INSERT INTO `sale_transaction` (`sale_trans_id`, `create_date_time`, `import_batch_no`, `trans_type`, `dato_og_tid`, `kontrakt_nr`, `product_id`, `aarspremie`, `produkt_type_id`, `produkt_type`, `userident`, `marked_segment`, `selskap`, `nysalg`, `quantity`, `sub_id`, `car_year`, `reg_type`, `product_from`, `game_id`, `level_id`, `mission_id`, `car_model`) VALUES
(1, NULL, NULL, NULL, '2020-05-16 15:43:17', NULL, 'Porche', 450000, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 1, 'porcshe2'),
(2, NULL, NULL, NULL, '2020-05-16 15:43:22', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 1, 'Panamera Turbo S E-Hybrid'),
(3, NULL, NULL, NULL, '2020-05-16 15:43:31', NULL, 'Porsche', 134750, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 2, 'The new 911 Carrera'),
(4, NULL, NULL, NULL, '2020-05-16 15:43:39', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 2, 'The new 911 Carrera 4 Cabriolet'),
(5, NULL, NULL, NULL, '2020-05-16 15:43:53', NULL, 'Porsche', 89950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 3, 'Cayenne Turbo S E-Hybrid'),
(6, NULL, NULL, NULL, '2020-05-16 15:44:04', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 3, 'The new Macan GTS'),
(7, NULL, NULL, NULL, '2020-05-16 15:44:31', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 4, 'The new Macan GTS'),
(8, NULL, NULL, NULL, '2020-05-16 15:44:36', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 4, 'The new 911 Carrera 4 Cabriolet'),
(9, NULL, NULL, NULL, '2020-05-16 15:44:42', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 1, 'The new 911 Carrera 4 Cabriolet'),
(10, NULL, NULL, NULL, '2020-05-16 15:44:44', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 5, 'The new Macan GTS'),
(11, NULL, NULL, NULL, '2020-05-16 15:44:51', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 5, 'Panamera Turbo S E-Hybrid'),
(12, NULL, NULL, NULL, '2020-05-16 15:44:52', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 1, 'Panamera Turbo S E-Hybrid'),
(13, NULL, NULL, NULL, '2020-05-16 15:44:57', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 5, 'Panamera Turbo S E-Hybrid'),
(14, NULL, NULL, NULL, '2020-05-16 15:45:02', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 1, 'Panamera Turbo S E-Hybrid'),
(15, NULL, NULL, NULL, '2020-05-16 15:45:11', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 2, 'The new Macan GTS'),
(16, NULL, NULL, NULL, '2020-05-16 15:45:21', NULL, 'Porsche', 84050, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2019, 2, 'Price List', 1, 0, 2, '718 Boxster S'),
(17, NULL, NULL, NULL, '2020-05-16 15:45:23', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 6, 'The new Macan GTS'),
(18, NULL, NULL, NULL, '2020-05-16 15:45:28', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 6, 'The new 911 Carrera 4 Cabriolet'),
(19, NULL, NULL, NULL, '2020-05-16 15:45:35', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'The new Macan GTS'),
(20, NULL, NULL, NULL, '2020-05-16 15:45:58', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 7, 'The new Macan GTS'),
(21, NULL, NULL, NULL, '2020-05-16 15:46:01', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 2, 'The new Macan GTS'),
(22, NULL, NULL, NULL, '2020-05-16 15:46:04', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 7, 'The new Macan GTS'),
(23, NULL, NULL, NULL, '2020-05-16 15:46:50', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 7, 'The new 911 Carrera 4 Cabriolet'),
(24, NULL, NULL, NULL, '2020-05-16 15:47:08', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 1, 'The new Macan GTS'),
(25, NULL, NULL, NULL, '2020-05-16 15:47:22', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 8, 'Panamera Turbo S E-Hybrid'),
(26, NULL, NULL, NULL, '2020-05-16 15:47:27', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 8, 'Panamera 10 Years Edition'),
(27, NULL, NULL, NULL, '2020-05-16 15:47:32', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 8, 'Panamera Turbo S E-Hybrid'),
(28, NULL, NULL, NULL, '2020-05-16 15:47:41', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 9, 'The new 911 Carrera 4 Cabriolet'),
(29, NULL, NULL, NULL, '2020-05-16 15:47:47', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 3, 'Panamera Turbo S E-Hybrid'),
(30, NULL, NULL, NULL, '2020-05-16 15:47:49', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 9, 'Panamera 10 Years Edition'),
(31, NULL, NULL, NULL, '2020-05-16 15:47:51', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 3, 'Panamera 10 Years Edition'),
(32, NULL, NULL, NULL, '2020-05-16 15:47:55', NULL, 'Porsche', 89950, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 3, 'Cayenne Turbo S E-Hybrid'),
(33, NULL, NULL, NULL, '2020-05-16 15:47:57', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 10, 'The new 911 Carrera 4 Cabriolet'),
(34, NULL, NULL, NULL, '2020-05-16 15:48:04', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 10, 'The new 911 Carrera 4 Cabriolet'),
(35, NULL, NULL, NULL, '2020-05-16 15:48:05', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 4, 'Panamera Turbo S E-Hybrid'),
(36, NULL, NULL, NULL, '2020-05-16 15:48:08', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 4, 'The new 911 Carrera 4 Cabriolet'),
(37, NULL, NULL, NULL, '2020-05-16 15:48:10', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 10, 'Panamera 10 Years Edition'),
(38, NULL, NULL, NULL, '2020-05-16 15:48:14', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 4, 'Panamera 10 Years Edition'),
(39, NULL, NULL, NULL, '2020-05-16 15:48:19', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 10, 'Panamera Turbo S E-Hybrid'),
(40, NULL, NULL, NULL, '2020-05-16 15:48:20', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 5, 'Panamera 10 Years Edition'),
(41, NULL, NULL, NULL, '2020-05-16 15:48:24', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 5, 'Panamera Turbo S E-Hybrid'),
(42, NULL, NULL, NULL, '2020-05-16 15:48:25', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 10, 'The new 911 Carrera 4 Cabriolet'),
(43, NULL, NULL, NULL, '2020-05-16 15:48:28', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 5, 'Panamera Turbo S E-Hybrid'),
(44, NULL, NULL, NULL, '2020-05-16 15:48:34', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'Panamera 10 Years Edition'),
(45, NULL, NULL, NULL, '2020-05-16 15:48:34', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 11, 'The new Macan GTS'),
(46, NULL, NULL, NULL, '2020-05-16 15:48:38', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 6, 'Panamera 10 Years Edition'),
(47, NULL, NULL, NULL, '2020-05-16 15:48:40', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '2', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 11, 'Panamera 10 Years Edition'),
(48, NULL, NULL, NULL, '2020-05-16 15:48:42', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 6, 'Panamera Turbo S E-Hybrid'),
(49, NULL, NULL, NULL, '2020-05-16 15:48:46', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 11, 'Panamera 10 Years Edition'),
(50, NULL, NULL, NULL, '2020-05-16 15:48:50', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 7, 'Panamera 10 Years Edition'),
(51, NULL, NULL, NULL, '2020-05-16 15:48:55', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 7, 'Panamera Turbo S E-Hybrid'),
(52, NULL, NULL, NULL, '2020-05-16 15:48:59', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 7, 'Panamera 10 Years Edition'),
(53, NULL, NULL, NULL, '2020-05-16 15:49:10', NULL, 'Porsche', 134750, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 8, 'The new 911 Carrera'),
(54, NULL, NULL, NULL, '2020-05-16 15:49:15', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 8, 'The new 911 Carrera 4 Cabriolet'),
(55, NULL, NULL, NULL, '2020-05-16 15:49:19', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 8, 'Panamera Turbo S E-Hybrid'),
(56, NULL, NULL, NULL, '2020-05-16 15:49:29', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 8, 'Panamera 10 Years Edition'),
(57, NULL, NULL, NULL, '2020-05-16 15:49:41', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 8, 'The new Macan GTS'),
(58, NULL, NULL, NULL, '2020-05-16 15:49:49', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 9, 'Taycan 4S'),
(59, NULL, NULL, NULL, '2020-05-16 15:49:53', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 9, 'The new Macan GTS'),
(60, NULL, NULL, NULL, '2020-05-16 15:49:57', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 9, 'Panamera Turbo S E-Hybrid'),
(61, NULL, NULL, NULL, '2020-05-16 15:50:04', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 10, 'The new Macan GTS'),
(62, NULL, NULL, NULL, '2020-05-16 15:50:08', NULL, 'Porche', 450000, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 10, 'porcshe2'),
(63, NULL, NULL, NULL, '2020-05-16 15:50:11', NULL, 'porcshge', 15000, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 10, 'porsche'),
(64, NULL, NULL, NULL, '2020-05-16 15:50:18', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 11, 'The new 911 Carrera 4 Cabriolet'),
(65, NULL, NULL, NULL, '2020-05-16 15:50:21', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 11, 'The new Macan GTS'),
(66, NULL, NULL, NULL, '2020-05-16 15:50:25', NULL, 'Porsche', 89950, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 11, 'Cayenne Turbo S E-Hybrid'),
(67, NULL, NULL, NULL, '2020-05-16 15:50:33', NULL, 'Porsche', 89950, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 12, 'Cayenne Turbo S E-Hybrid'),
(68, NULL, NULL, NULL, '2020-05-16 15:50:40', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 12, 'Panamera 10 Years Edition'),
(69, NULL, NULL, NULL, '2020-05-16 15:50:42', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1019', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 12, 'Panamera 10 Years Edition'),
(70, NULL, NULL, NULL, '2020-05-16 15:52:28', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 1, 'The new Macan GTS'),
(71, NULL, NULL, NULL, '2020-05-16 15:52:38', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 2, 'The new 911 Carrera 4 Cabriolet'),
(72, NULL, NULL, NULL, '2020-05-16 15:53:02', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 2, 'The new Macan GTS'),
(73, NULL, NULL, NULL, '2020-05-16 15:53:22', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 12, 'The new Macan GTS'),
(74, NULL, NULL, NULL, '2020-05-16 15:53:29', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 12, 'The new Macan GTS'),
(75, NULL, NULL, NULL, '2020-05-16 15:53:34', NULL, 'porcshge', 15000, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 12, 'porsche'),
(76, NULL, NULL, NULL, '2020-05-16 15:53:43', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1018', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 12, 'The new Macan GTS'),
(77, NULL, NULL, NULL, '2020-05-16 15:53:51', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 2, 'Panamera Turbo S E-Hybrid'),
(78, NULL, NULL, NULL, '2020-05-16 15:54:05', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 3, 'The new 911 Carrera 4 Cabriolet'),
(79, NULL, NULL, NULL, '2020-05-16 15:54:12', NULL, 'Porche', 450000, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 3, 'porcshe2'),
(80, NULL, NULL, NULL, '2020-05-16 15:54:30', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 3, 'Panamera Turbo S E-Hybrid'),
(81, NULL, NULL, NULL, '2020-05-16 15:54:34', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 3, 'The new Macan GTS'),
(82, NULL, NULL, NULL, '2020-11-26 08:30:58', NULL, 'Porche', 450000, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 1, 'porcshe2'),
(83, NULL, NULL, NULL, '2020-11-26 08:31:06', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 1, 'The new Macan GTS'),
(84, NULL, NULL, NULL, '2020-11-26 08:31:14', NULL, 'T23', 81950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2019, 2, 'Price List', 1, 0, 1, '718 Cayman S'),
(85, NULL, NULL, NULL, '2020-11-26 09:00:51', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 2, 'Panamera 10 Years Edition'),
(86, NULL, NULL, NULL, '2020-11-26 09:00:55', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 2, 'The new 911 Carrera 4 Cabriolet'),
(87, NULL, NULL, NULL, '2020-11-26 09:00:59', NULL, 'Porche', 450000, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 2, 'porcshe2'),
(88, NULL, NULL, NULL, '2020-11-26 09:10:19', NULL, 'Porsche', 89950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 3, 'Cayenne Turbo S E-Hybrid'),
(89, NULL, NULL, NULL, '2020-11-26 09:10:23', NULL, 'Porsche', 89950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 3, 'Cayenne Turbo S E-Hybrid'),
(90, NULL, NULL, NULL, '2020-11-26 09:10:27', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 3, 'The new 911 Carrera 4 Cabriolet'),
(91, NULL, NULL, NULL, '2020-11-26 09:10:36', NULL, 'Porsche', 134750, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 3, 'The new 911 Carrera'),
(92, NULL, NULL, NULL, '2020-11-26 09:10:41', NULL, 'Porsche', 134750, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 3, 'The new 911 Carrera'),
(93, NULL, NULL, NULL, '2020-11-26 09:24:40', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 4, 'Panamera 10 Years Edition'),
(94, NULL, NULL, NULL, '2020-11-26 09:24:45', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 4, 'Panamera Turbo S E-Hybrid'),
(95, NULL, NULL, NULL, '2020-11-26 09:24:49', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 4, 'Panamera Turbo S E-Hybrid'),
(96, NULL, NULL, NULL, '2020-11-26 11:42:48', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 4, 'The new 911 Carrera 4 Cabriolet'),
(97, NULL, NULL, NULL, '2020-11-26 11:42:53', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 4, 'Panamera 10 Years Edition'),
(98, NULL, NULL, NULL, '2020-11-26 11:42:59', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 4, 'The new 911 Carrera 4 Cabriolet'),
(99, NULL, NULL, NULL, '2020-11-26 12:15:51', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 5, 'The new Macan GTS'),
(100, NULL, NULL, NULL, '2020-11-26 12:15:56', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 5, 'The new Macan GTS'),
(101, NULL, NULL, NULL, '2020-11-26 12:49:44', NULL, 'Porsche', 84052, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2019, 1, 'Inventory', 1, 0, 6, '718 Boxster S'),
(102, NULL, NULL, NULL, '2020-11-26 12:50:01', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'The new 911 Carrera 4 Cabriolet'),
(103, NULL, NULL, NULL, '2020-11-26 14:17:44', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 7, 'The new Macan GTS'),
(104, NULL, NULL, NULL, '2020-11-26 14:24:36', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 7, 'The new Macan GTS'),
(105, NULL, NULL, NULL, '2020-11-26 14:24:45', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1020', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 7, 'Taycan 4S'),
(106, NULL, NULL, NULL, '2020-11-26 14:24:55', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 7, 'The new 911 Carrera 4 Cabriolet'),
(107, NULL, NULL, NULL, '2020-11-26 15:03:03', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 8, 'The new Macan GTS'),
(108, NULL, NULL, NULL, '2020-11-26 15:16:38', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 8, 'Panamera Turbo S E-Hybrid'),
(109, NULL, NULL, NULL, '2020-11-26 15:16:43', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1020', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 8, 'Taycan 4S'),
(110, NULL, NULL, NULL, '2020-11-26 15:52:41', NULL, 'Porsche', 84050, NULL, NULL, 'SSP1020', NULL, NULL, '1', 1, 'SUB1002', 2019, 1, 'Inventory', 1, 0, 9, '718 Boxster S'),
(111, NULL, NULL, NULL, '2020-11-26 16:09:21', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 5, 'Panamera Turbo S E-Hybrid'),
(112, NULL, NULL, NULL, '2020-11-26 16:09:31', NULL, 'Porsche', 84050, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2019, 1, 'Price List', 1, 0, 5, '718 Boxster S'),
(113, NULL, NULL, NULL, '2020-11-26 16:09:36', NULL, 'Porsche', 84050, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2019, 1, 'Inventory', 1, 0, 5, '718 Boxster S'),
(114, NULL, NULL, NULL, '2020-11-26 16:09:42', NULL, 'Porche', 450000, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 5, 'porcshe2'),
(115, NULL, NULL, NULL, '2020-11-26 16:09:50', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1021', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 5, 'Taycan 4S'),
(116, NULL, NULL, NULL, '2020-11-26 16:10:02', NULL, 'Porsche', 190009450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 5, 'Panamera 10 Years Edition'),
(117, NULL, NULL, NULL, '2020-11-26 16:10:11', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 5, 'Taycan 4S'),
(118, NULL, NULL, NULL, '2020-11-26 16:10:16', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '2', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 5, 'The new Macan GTS'),
(119, NULL, NULL, NULL, '2020-11-26 16:11:06', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'Taycan 4S'),
(120, NULL, NULL, NULL, '2020-11-26 16:11:10', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'The new 911 Carrera 4 Cabriolet'),
(121, NULL, NULL, NULL, '2020-11-26 16:11:16', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 6, 'Panamera 10 Years Edition'),
(122, NULL, NULL, NULL, '2020-11-26 16:11:20', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'The new Macan GTS'),
(123, NULL, NULL, NULL, '2020-11-26 16:11:30', NULL, 'Porsche', 89950, NULL, NULL, 'SSP1021', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 6, 'Cayenne Turbo S E-Hybrid'),
(124, NULL, NULL, NULL, '2020-11-26 16:11:33', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'Taycan 4S'),
(125, NULL, NULL, NULL, '2020-11-26 16:11:38', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'Panamera 10 Years Edition'),
(126, NULL, NULL, NULL, '2020-11-26 16:11:44', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 6, 'The new 911 Carrera 4 Cabriolet'),
(127, NULL, NULL, NULL, '2020-11-26 16:11:51', NULL, 'Porsche', 84050, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2019, 2, 'Price List', 1, 0, 6, '718 Boxster S'),
(128, NULL, NULL, NULL, '2020-11-26 16:11:54', NULL, 'Porsche', 186350, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 6, 'Taycan 4S'),
(129, NULL, NULL, NULL, '2020-11-26 16:12:47', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 6, 'The new 911 Carrera 4 Cabriolet'),
(130, NULL, NULL, NULL, '2020-11-26 20:27:21', NULL, 'Porche', 450000, NULL, NULL, 'SSP1021', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 7, 'porcshe2'),
(131, NULL, NULL, NULL, '2020-11-27 10:25:40', NULL, 'Porche', 450000, NULL, NULL, 'SSP1023', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 1, 'porcshe2'),
(132, NULL, NULL, NULL, '2020-11-27 10:25:43', NULL, 'porcshge', 15000, NULL, NULL, 'SSP1023', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 1, 'porsche'),
(133, NULL, NULL, NULL, '2020-11-27 10:25:48', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1023', NULL, NULL, '2', 1, 'SUB1002', 2020, 1, 'Inventory', 1, 0, 1, 'Panamera 10 Years Edition'),
(134, NULL, NULL, NULL, '2020-11-27 10:25:57', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1023', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 1, 'The new Macan GTS'),
(135, NULL, NULL, NULL, '2020-11-27 10:26:02', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1023', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 1, 'Panamera Turbo S E-Hybrid'),
(136, NULL, NULL, NULL, '2020-11-27 10:31:16', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1023', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 2, 'The new 911 Carrera 4 Cabriolet'),
(137, NULL, NULL, NULL, '2020-11-27 10:31:25', NULL, 'porcshge', 15000, NULL, NULL, 'SSP1023', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 2, 'porsche'),
(138, NULL, NULL, NULL, '2020-11-27 10:31:30', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1023', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 2, 'The new Macan GTS'),
(139, NULL, NULL, NULL, '2020-11-27 10:40:39', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1024', NULL, NULL, '1', 1, 'SUB1002', 2020, 1, 'Price List', 1, 0, 1, 'The new 911 Carrera 4 Cabriolet'),
(140, NULL, NULL, NULL, '2020-11-27 10:40:44', NULL, 'Porsche', 199450, NULL, NULL, 'SSP1024', NULL, NULL, '2', 1, 'SUB1002', 2020, 2, 'Inventory', 1, 0, 1, 'Panamera Turbo S E-Hybrid'),
(141, NULL, NULL, NULL, '2020-11-27 10:40:46', NULL, 'Porsche', 84950, NULL, NULL, 'SSP1024', NULL, NULL, '1', 1, 'SUB1002', 2020, 2, 'Price List', 1, 0, 1, 'The new 911 Carrera 4 Cabriolet');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` bigint(20) NOT NULL,
  `sub_id` varchar(20) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `sub_id`, `category_name`, `create_date_time`) VALUES
(2, 'SUB1002', 'PORSCHE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_count`
--

CREATE TABLE `subscription_count` (
  `sub_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_count`
--

INSERT INTO `subscription_count` (`sub_id`) VALUES
('5k');

-- --------------------------------------------------------

--
-- Table structure for table `userident_count_g1`
--

CREATE TABLE `userident_count_g1` (
  `current_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userident_count_g1`
--

INSERT INTO `userident_count_g1` (`current_count`) VALUES
(1024);

-- --------------------------------------------------------

--
-- Table structure for table `user_list_g1`
--

CREATE TABLE `user_list_g1` (
  `id` bigint(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `result_list_name` varchar(50) DEFAULT NULL,
  `login_name` varchar(200) DEFAULT NULL,
  `userident` varchar(200) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `team` varchar(250) DEFAULT NULL,
  `user_group_id` varchar(200) DEFAULT NULL,
  `result_list_id` varchar(200) DEFAULT NULL,
  `role_id` varchar(20) DEFAULT NULL,
  `create_date_time` timestamp NULL DEFAULT NULL,
  `password_recover_otp` varchar(10) DEFAULT NULL,
  `otp_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_list_g1`
--

INSERT INTO `user_list_g1` (`id`, `date_time`, `result_list_name`, `login_name`, `userident`, `first_name`, `last_name`, `company`, `email`, `password`, `team`, `user_group_id`, `result_list_id`, `role_id`, `create_date_time`, `password_recover_otp`, `otp_date_time`) VALUES
(1, '2020-05-17 04:05:08', NULL, 'SSP1018', 'SSP1018', 'shubham', 'kamble', NULL, 'atg.shubhamkamble@gmail.com', '$2y$12$H1xzcw2GzX4dUelOhlRyr.jCInYpf.NXFnesK/AeG9sY/n2JgFbXe', NULL, NULL, NULL, '4,5,', NULL, NULL, NULL),
(2, '2020-05-17 04:06:26', NULL, 'SSP1019', 'SSP1019', 'Satyam', 'Kuril', NULL, 'satyamkuril143@gmail.com', '$2y$12$JOx9SvP1vvyG8AaCdX6YeeehQvC8qHFAQlHaZUqGMC7BNiqiJRrCW', NULL, NULL, NULL, '5', NULL, NULL, NULL),
(3, '2020-11-26 11:24:15', NULL, 'SSP1020', 'SSP1020', 'Sharda', 'Borekar', NULL, 'atg.shardaborekar@gmail.com', '$2y$12$jd0fHkDWyvTjT9QT6vwFHOmkkkOI.WWD.G1y4ZUOoWhCtTWuWMiPm', NULL, NULL, NULL, '5', NULL, 'gfowmc', '2020-11-26 04:58:37'),
(4, '2020-09-02 10:08:43', NULL, 'SSP1021', 'SSP1021', 'Rizwan', 'Farah', NULL, 'atg.rizwanfarah@gmail.com', '$2y$12$mt1ePc1DsxLtpGArgElYT.rrbwa7ZSSCq4QqfS2Y.pV9R5Knn8WUq', NULL, NULL, NULL, '4,5,', NULL, '2stwxa', '2020-09-02 03:42:50'),
(5, '2020-11-27 05:03:23', NULL, 'SSP1022', 'SSP1022', 'at', 'surplusplay', NULL, 'at.surplusplay@gmail.com', '$2y$12$m4mOR8jnwjO.SY6vLb6yBO84ddBTsdqGgCBr39b1Nu5CUnvQvPJdS', NULL, NULL, NULL, '4,5,', NULL, NULL, NULL),
(6, '2020-11-27 22:45:42', NULL, 'SSP1023', 'SSP1023', 'Peter', 'Danielsen', NULL, 'surplusplay.test@gmail.com', '$2y$12$A65fXzVfhPu/uQVR5kAMPu0LORdPeNXG3RjthjlfUOOY5zII/1yoC', NULL, NULL, NULL, '4,5,', NULL, NULL, NULL),
(7, '2020-11-27 23:03:20', NULL, 'SSP1024', 'SSP1024', 'Peter', 'Laursen', NULL, 'ecgabrielsen@gmail.com', '$2y$12$vLv5xft7YZ5vYtPIzJPyy.fKujm0/6nDlRbtyqAOTXqycbAG5Pzr2', NULL, NULL, NULL, '5', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_notification_g1`
--
ALTER TABLE `activity_notification_g1`
  ADD PRIMARY KEY (`activity_notification_id`);

--
-- Indexes for table `avg_know_grade_g1`
--
ALTER TABLE `avg_know_grade_g1`
  ADD PRIMARY KEY (`avg_know_grade_id`);

--
-- Indexes for table `budget_car_test_g1`
--
ALTER TABLE `budget_car_test_g1`
  ADD PRIMARY KEY (`budget_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `game_trans_g1`
--
ALTER TABLE `game_trans_g1`
  ADD PRIMARY KEY (`game_trans_id`);

--
-- Indexes for table `grade_g1`
--
ALTER TABLE `grade_g1`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `interval_notification_g1`
--
ALTER TABLE `interval_notification_g1`
  ADD PRIMARY KEY (`interval_notification_id`);

--
-- Indexes for table `inventory_g1`
--
ALTER TABLE `inventory_g1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledge_badge_mapping_g1`
--
ALTER TABLE `knowledge_badge_mapping_g1`
  ADD PRIMARY KEY (`badge_mapping_id`);

--
-- Indexes for table `level_g1`
--
ALTER TABLE `level_g1`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `level_knowledge_g1`
--
ALTER TABLE `level_knowledge_g1`
  ADD PRIMARY KEY (`knowledge_id`);

--
-- Indexes for table `mission_duration_g1`
--
ALTER TABLE `mission_duration_g1`
  ADD PRIMARY KEY (`mission_dur_id`);

--
-- Indexes for table `mission_g1`
--
ALTER TABLE `mission_g1`
  ADD PRIMARY KEY (`mission_id`);

--
-- Indexes for table `pricelist_g1`
--
ALTER TABLE `pricelist_g1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_g1_m1`
--
ALTER TABLE `question_g1_m1`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m2`
--
ALTER TABLE `question_g1_m2`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m3`
--
ALTER TABLE `question_g1_m3`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m4`
--
ALTER TABLE `question_g1_m4`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m5`
--
ALTER TABLE `question_g1_m5`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m6`
--
ALTER TABLE `question_g1_m6`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m7`
--
ALTER TABLE `question_g1_m7`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m8`
--
ALTER TABLE `question_g1_m8`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m9`
--
ALTER TABLE `question_g1_m9`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m10`
--
ALTER TABLE `question_g1_m10`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m11`
--
ALTER TABLE `question_g1_m11`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_g1_m12`
--
ALTER TABLE `question_g1_m12`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_trans_g1`
--
ALTER TABLE `question_trans_g1`
  ADD PRIMARY KEY (`ques_trans_id`);

--
-- Indexes for table `quiz_attempt_g1`
--
ALTER TABLE `quiz_attempt_g1`
  ADD PRIMARY KEY (`quiz_attmp_id`);

--
-- Indexes for table `rank_knowledge_g1`
--
ALTER TABLE `rank_knowledge_g1`
  ADD PRIMARY KEY (`know_ranking_id`);

--
-- Indexes for table `rank_sale_g1`
--
ALTER TABLE `rank_sale_g1`
  ADD PRIMARY KEY (`sale_ranking_id`);

--
-- Indexes for table `rank_scoreboard_g1`
--
ALTER TABLE `rank_scoreboard_g1`
  ADD PRIMARY KEY (`scoreboard_id`);

--
-- Indexes for table `rank_test_drive_g1`
--
ALTER TABLE `rank_test_drive_g1`
  ADD PRIMARY KEY (`test_drive_ranking_id`);

--
-- Indexes for table `role_g1`
--
ALTER TABLE `role_g1`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale_transaction`
--
ALTER TABLE `sale_transaction`
  ADD PRIMARY KEY (`sale_trans_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_list_g1`
--
ALTER TABLE `user_list_g1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_notification_g1`
--
ALTER TABLE `activity_notification_g1`
  MODIFY `activity_notification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `avg_know_grade_g1`
--
ALTER TABLE `avg_know_grade_g1`
  MODIFY `avg_know_grade_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `budget_car_test_g1`
--
ALTER TABLE `budget_car_test_g1`
  MODIFY `budget_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `game_trans_g1`
--
ALTER TABLE `game_trans_g1`
  MODIFY `game_trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `grade_g1`
--
ALTER TABLE `grade_g1`
  MODIFY `grade_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `interval_notification_g1`
--
ALTER TABLE `interval_notification_g1`
  MODIFY `interval_notification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inventory_g1`
--
ALTER TABLE `inventory_g1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `knowledge_badge_mapping_g1`
--
ALTER TABLE `knowledge_badge_mapping_g1`
  MODIFY `badge_mapping_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `level_g1`
--
ALTER TABLE `level_g1`
  MODIFY `level_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `level_knowledge_g1`
--
ALTER TABLE `level_knowledge_g1`
  MODIFY `knowledge_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mission_duration_g1`
--
ALTER TABLE `mission_duration_g1`
  MODIFY `mission_dur_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `mission_g1`
--
ALTER TABLE `mission_g1`
  MODIFY `mission_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pricelist_g1`
--
ALTER TABLE `pricelist_g1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `question_g1_m1`
--
ALTER TABLE `question_g1_m1`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `question_g1_m2`
--
ALTER TABLE `question_g1_m2`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m3`
--
ALTER TABLE `question_g1_m3`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question_g1_m4`
--
ALTER TABLE `question_g1_m4`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m5`
--
ALTER TABLE `question_g1_m5`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m6`
--
ALTER TABLE `question_g1_m6`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m7`
--
ALTER TABLE `question_g1_m7`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m8`
--
ALTER TABLE `question_g1_m8`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m9`
--
ALTER TABLE `question_g1_m9`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m10`
--
ALTER TABLE `question_g1_m10`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m11`
--
ALTER TABLE `question_g1_m11`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_g1_m12`
--
ALTER TABLE `question_g1_m12`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_trans_g1`
--
ALTER TABLE `question_trans_g1`
  MODIFY `ques_trans_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `quiz_attempt_g1`
--
ALTER TABLE `quiz_attempt_g1`
  MODIFY `quiz_attmp_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `rank_knowledge_g1`
--
ALTER TABLE `rank_knowledge_g1`
  MODIFY `know_ranking_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rank_sale_g1`
--
ALTER TABLE `rank_sale_g1`
  MODIFY `sale_ranking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rank_scoreboard_g1`
--
ALTER TABLE `rank_scoreboard_g1`
  MODIFY `scoreboard_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rank_test_drive_g1`
--
ALTER TABLE `rank_test_drive_g1`
  MODIFY `test_drive_ranking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_g1`
--
ALTER TABLE `role_g1`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sale_transaction`
--
ALTER TABLE `sale_transaction`
  MODIFY `sale_trans_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_list_g1`
--
ALTER TABLE `user_list_g1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
