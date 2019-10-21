-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2019 at 04:35 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_Id` int(11) NOT NULL,
  `Author_Name` varchar(40) NOT NULL,
  `Experience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_Id`, `Author_Name`, `Experience`) VALUES
(1, 'A', 20),
(2, 'B', 25),
(3, 'C', 10),
(4, 'D', 15);

-- --------------------------------------------------------

--
-- Stand-in structure for view `bdview`
-- (See below for the actual view)
--
CREATE TABLE `bdview` (
`Book_Id` int(10)
,`Book_Name` varchar(50)
,`Author_Name` varchar(40)
,`Subject_Code` varchar(10)
,`Rack_No` int(11)
,`Value` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_Id` int(10) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Subject_Code` varchar(10) NOT NULL,
  `Rack_No` int(11) NOT NULL,
  `Author_Id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_Id`, `Book_Name`, `Subject_Code`, `Rack_No`, `Author_Id`, `value`) VALUES
(1, 'Algorithm', 'DAA', 1, 1, 0),
(2, 'MySQL', 'DBMS', 2, 2, 0),
(3, 'Operating Systems', 'OS', 3, 3, 0),
(4, 'Data Structure', 'DAA', 1, 1, 0),
(5, 'Computer', 'COA', 4, 4, 0),
(6, 'Mongo', 'DBMS', 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `Lib_Id` int(11) NOT NULL,
  `Lib_Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`Lib_Id`, `Lib_Salary`) VALUES
(101, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Mem_Id` int(11) NOT NULL,
  `Mem_Dept` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Mem_Id`, `Mem_Dept`) VALUES
(301, 'IT'),
(302, 'COMPS'),
(303, 'EXTC'),
(304, 'ETRX'),
(305, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_Id` int(11) NOT NULL,
  `Staff_Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_Id`, `Staff_Salary`) VALUES
(201, 30000),
(202, 20000),
(203, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Trans_Id` int(11) NOT NULL,
  `Quantity` tinyint(1) NOT NULL,
  `Trans_Date` date NOT NULL,
  `Book_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Trans_Type` varchar(10) NOT NULL,
  `Fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Trans_Id`, `Quantity`, `Trans_Date`, `Book_Id`, `User_Id`, `Trans_Type`, `Fine`) VALUES
(1, 1, '2019-01-01', 1, 101, 'Purchase', 0),
(2, 1, '2019-01-01', 2, 101, 'Purchase', 0),
(3, 1, '2019-01-01', 3, 101, 'Purchase', 0),
(4, 1, '2019-01-01', 4, 101, 'Purchase', 0),
(5, 1, '2019-01-01', 5, 101, 'Purchase', 0),
(6, 1, '2019-01-01', 6, 101, 'Purchase', 0),
(7, -1, '2019-03-20', 4, 303, 'Issue out', 0),
(8, -1, '2019-03-26', 2, 301, 'Issue out', 0),
(9, -1, '2019-03-29', 2, 304, 'Issue out', 0),
(10, -1, '2019-04-01', 1, 304, 'Issue out', 0),
(11, -1, '2019-04-02', 3, 305, 'Issue out', 0),
(12, -1, '2019-04-04', 6, 304, 'Issue out', 0),
(13, 1, '2019-04-12', 2, 301, 'Issue in', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_Id` int(11) NOT NULL,
  `User_Name` varchar(40) NOT NULL,
  `User_Password` varchar(20) NOT NULL,
  `User_PhNo` varchar(10) NOT NULL,
  `User_Grp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Id`, `User_Name`, `User_Password`, `User_PhNo`, `User_Grp`) VALUES
(101, 'Mona Desai', 'mona', '1234567890', 1),
(201, 'Ayushi Desai', 'ayushi', '1111111111', 2),
(202, 'Yashvi Desai', 'yashvi', '2222222222', 2),
(203, 'Parth Dosani', 'parth', '3333333333', 2),
(301, 'Jon', 'abc@301', '3013013013', 3),
(302, 'Arya', 'abc@302', '3023023023', 3),
(303, 'Sansa', 'abc@303', '3033033033', 3),
(304, 'Bran', 'abc@304', '3043043043', 3),
(305, 'Rickon', 'abc@305', '3053053053', 3);

-- --------------------------------------------------------

--
-- Structure for view `bdview`
--
DROP TABLE IF EXISTS `bdview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bdview`  AS  select `book`.`Book_Id` AS `Book_Id`,`book`.`Book_Name` AS `Book_Name`,`author`.`Author_Name` AS `Author_Name`,`book`.`Subject_Code` AS `Subject_Code`,`book`.`Rack_No` AS `Rack_No`,`book`.`value` AS `Value` from (`book` left join `author` on((`book`.`Author_Id` = `author`.`Author_Id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_Id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_Id`),
  ADD KEY `Author_Id` (`Author_Id`),
  ADD KEY `Author_Id_2` (`Author_Id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`Lib_Id`),
  ADD UNIQUE KEY `Lib_Id` (`Lib_Id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Mem_Id`),
  ADD UNIQUE KEY `Id` (`Mem_Id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_Id`),
  ADD UNIQUE KEY `Staff_Id` (`Staff_Id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Trans_Id`),
  ADD KEY `Book_Code` (`Book_Id`),
  ADD KEY `Id` (`User_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_Id`),
  ADD UNIQUE KEY `User_PhNo` (`User_PhNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Author_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `Book_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Mem_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `Trans_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `author` (`Author_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `librarian`
--
ALTER TABLE `librarian`
  ADD CONSTRAINT `librarian_ibfk_1` FOREIGN KEY (`Lib_Id`) REFERENCES `users` (`User_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`Mem_Id`) REFERENCES `users` (`User_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Staff_Id`) REFERENCES `users` (`User_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`Book_Id`) REFERENCES `book` (`Book_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`User_Id`) REFERENCES `users` (`User_Id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
