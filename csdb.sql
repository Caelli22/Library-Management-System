-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2023 at 12:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`first_name`, `last_name`, `email`, `password`) VALUES
('admin', 'admin', 'admin', '1234'),
('bobong', 'kinitan', 'bobong', 'bobong'),
('jm', 'enriquez', 'jm@enriquez.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `bookdb`
--

CREATE TABLE `bookdb` (
  `barcode` varchar(255) NOT NULL,
  `title` varchar(128) NOT NULL,
  `author` varchar(128) NOT NULL,
  `category` varchar(128) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `available` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookdb`
--

INSERT INTO `bookdb` (`barcode`, `title`, `author`, `category`, `pages`, `ISBN`, `available`) VALUES
('9780099525370', '10th Anniversary', 'James Patterson', 'Mystery', '323', '9780099525360', 'yes'),
('9780857503503', 'Jack Reacher', 'Lee Child', 'Crime Fiction', '500', '9780857503503', 'yes'),
('9789718957035', 'El Filibusterismo', 'Jose Rizal', 'History', '366', '9718957030', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `status` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `book` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`status`, `name`, `book`, `time`, `date`) VALUES
('Borrow', 'Dannyllo', '10th Anniversary', '09:20:00', '05-10-2023'),
('Return', 'Dannyllo', '10th Anniversary', '09:20:00', '05-10-2023'),
('Borrow', 'Dave Bryan', '10th Anniversary', '09:58:41', '05-10-2023'),
('Return', 'Dave Bryan', '10th Anniversary', '10:00:57', '05-10-2023'),
('Borrow', 'Dave Bryan', 'Jack Reacher', '10:03:22', '05-10-2023'),
('Borrow', 'Dannyllo', 'El Filibusterismo', '10:03:55', '05-10-2023'),
('Return', 'Dave Bryan', 'Jack Reacher', '10:12:33', '05-10-2023'),
('Return', 'Dannyllo', 'El Filibusterismo', '17:50:22', '07-23-2023'),
('Borrow', 'Bryan', 'El Filibusterismo', '17:56:30', '07-23-2023'),
('Return', 'Bryan', 'El Filibusterismo', '17:56:30', '07-23-2023'),
('Borrow', 'Dave Bryan', ' ', '17:54:13', '10-14-2023'),
('Return', 'Dave Bryan', '10th Anniversary', '17:55:08', '10-14-2023'),
('Return', 'Dave Bryan', '', '17:55:08', '10-14-2023'),
('Borrow', 'Dave Bryan', '10th Anniversary', '17:56:15', '10-14-2023'),
('Return', 'Dave Bryan', '10th Anniversary', '17:56:15', '10-14-2023');

-- --------------------------------------------------------

--
-- Table structure for table `student_account`
--

CREATE TABLE `student_account` (
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `student_number` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_account`
--

INSERT INTO `student_account` (`first_name`, `last_name`, `email`, `password`, `student_number`) VALUES
('Dave Bryan', 'Ico', 'davebryanico@gmail.com', '1234', 'SUM202101777');

-- --------------------------------------------------------

--
-- Table structure for table `sum202101777`
--

CREATE TABLE `sum202101777` (
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `pages` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `borrow_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `borrowerId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookdb`
--
ALTER TABLE `bookdb`
  ADD PRIMARY KEY (`barcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
