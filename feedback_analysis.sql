-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 12:04 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_analysis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblanswer`
--

CREATE TABLE `tblanswer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblanswer`
--

INSERT INTO `tblanswer` (`AnswerID`, `QuestionID`, `Answer`) VALUES
(1, 1, 'Yes or No'),
(2, 2, '1 to 10'),
(3, 3, 'Very likely\r\nLikely\r\nUnlikely\r\nVery unlikely'),
(4, 4, 'Yes or No'),
(5, 5, 'Yes or No');

-- --------------------------------------------------------

--
-- Table structure for table `tblquestion`
--

CREATE TABLE `tblquestion` (
  `QuestionID` int(11) NOT NULL,
  `SurveyId` int(11) NOT NULL,
  `QuestionType` varchar(30) NOT NULL,
  `Question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquestion`
--

INSERT INTO `tblquestion` (`QuestionID`, `SurveyId`, `QuestionType`, `Question`) VALUES
(1, 1, 'General question', 'Do you find that our staff is family-friendly?'),
(2, 1, 'Choice question', 'How would you rate the value of our food?'),
(3, 1, 'Choice question', 'How likely is it that you would come back?'),
(4, 1, 'General question', 'Are our hours convenient?'),
(5, 1, 'General question', 'If you use a wheelchair, did you find the staff and facilities accommodating?');

-- --------------------------------------------------------

--
-- Table structure for table `tblsurvey`
--

CREATE TABLE `tblsurvey` (
  `SurveyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsurvey`
--

INSERT INTO `tblsurvey` (`SurveyId`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `UserAge` int(2) NOT NULL,
  `UserGender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`UserID`, `UserName`, `UserAge`, `UserGender`) VALUES
(1, 'Babalo', 15, 'Female'),
(2, 'Ayabonga', 21, 'Male'),
(3, 'Khwezi', 11, 'Male'),
(4, 'Ntombizethu', 45, 'Female'),
(5, 'Chulumanco', 34, 'Female'),
(6, 'Nthuthu', 20, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `tblusersanswer`
--

CREATE TABLE `tblusersanswer` (
  `UserAnswerID` int(11) NOT NULL,
  `AnswerID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Response` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusersanswer`
--

INSERT INTO `tblusersanswer` (`UserAnswerID`, `AnswerID`, `UserID`, `Response`) VALUES
(1, 1, 1, 'Yes\r\n6\r\nLikely\r\nYes\r\n'),
(2, 2, 2, 'Yes\r\n9\r\nVery likely\r\nYes\r\nYes'),
(3, 3, 3, 'No\r\n1\r\nUnlikely\r\nNo\r\n'),
(4, 4, 4, 'Yes\r\n5\r\nLikely\r\nYes\r\nYes'),
(5, 5, 5, 'No\r\n2\r\nVery unlikely\r\nYes\r\nNo'),
(6, 6, 6, 'Yes\r\n10\r\nVery likely\r\nYes\r\nYes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblanswer`
--
ALTER TABLE `tblanswer`
  ADD PRIMARY KEY (`AnswerID`);

--
-- Indexes for table `tblquestion`
--
ALTER TABLE `tblquestion`
  ADD UNIQUE KEY `QuestionID` (`QuestionID`) USING BTREE;

--
-- Indexes for table `tblsurvey`
--
ALTER TABLE `tblsurvey`
  ADD UNIQUE KEY `SurveyID` (`SurveyId`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `tblusersanswer`
--
ALTER TABLE `tblusersanswer`
  ADD UNIQUE KEY `UserAnswerID` (`UserAnswerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
