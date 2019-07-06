-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 08:55 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safestepz`
--

-- --------------------------------------------------------

--
-- Table structure for table `bridgedetails`
--

CREATE TABLE `bridgedetails` (
  `StationName` text NOT NULL,
  `BridgeNo` varchar(3) NOT NULL,
  `ConstructedYear` varchar(4) NOT NULL,
  `Capacity` varchar(3) NOT NULL,
  `Status` text NOT NULL,
  `ThresholdLimit` varchar(3) NOT NULL,
  `UpperThresholdLimit` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridgedetails`
--

INSERT INTO `bridgedetails` (`StationName`, `BridgeNo`, `ConstructedYear`, `Capacity`, `Status`, `ThresholdLimit`, `UpperThresholdLimit`) VALUES
('Andheri', 'A1', '2003', '250', 'Overloaded', '275', '300'),
('Andheri', 'A2', '2008', '280', 'Normal', '300', '320'),
('Borivali', 'B1', '2014', '250', 'Overloaded', '270', '300'),
('Borivali', 'B2', '2007', '125', 'Normal', '155', '170'),
('Bandra', 'BA1', '1997', '250', 'Normal', '275', '290'),
('Bandra', 'BA2', '2008', '230', 'Overloaded', '220', '240'),
('Bhayander', 'BH1', '2012', '250', 'Overloaded', '270', '300'),
('Bhayander', 'BH2', '1999', '150', 'Normal', '170', '210'),
('Vasai', 'BS1', '1992', '125', 'Overloaded', '155', '170'),
('Vasai', 'BS2', '2002', '175', 'Overloaded', '180', '200'),
('Churchgate', 'C1', '1989', '300', 'Normal', '320', '340'),
('Churchgate', 'C2', '2003', '286', 'Normal', '310', '327'),
('Dadar', 'D1', '1982', '280', 'Overloaded', '265', '292'),
('Dadar', 'D2', '2005', '300', 'Normal', '328', '341'),
('Elphinstone', 'E1', '1972', '265', 'Overloaded', '257', '280'),
('Elphinstone', 'E2', '2003', '280', 'Normal', '297', '324'),
('Mumbai Central', 'M1', '2002', '170', 'Normal', '177', '190'),
('Mumbai Central', 'M2', '2009', '230', 'Overloaded', '245', '260'),
('Virar', 'V1', '1996', '220', 'Overloaded', '210', '230'),
('Virar', 'V2', '2001', '135', 'Normal', '150', '180');

-- --------------------------------------------------------

--
-- Table structure for table `governmentdetails`
--

CREATE TABLE `governmentdetails` (
  `GovernmentID` varchar(15) NOT NULL,
  `YearOfJoining` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `governmentdetails`
--

INSERT INTO `governmentdetails` (`GovernmentID`, `YearOfJoining`) VALUES
('G-18956748', '1994'),
('G-18956750', '1995'),
('G-18956752', '1996'),
('G-18956756', '2004'),
('G-18956754', '2001'),
('G-18956760', '1993'),
('G-18956761', '2007'),
('G-18956762', '2010'),
('G-18956763', '2008'),
('G-18956764', '2013');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `FullName` text NOT NULL,
  `Age` varchar(3) NOT NULL,
  `Gender` text NOT NULL,
  `EmailID` varchar(40) NOT NULL,
  `AadharNo` varchar(12) NOT NULL,
  `GovernmentID` varchar(15) NOT NULL,
  `Password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`FullName`, `Age`, `Gender`, `EmailID`, `AadharNo`, `GovernmentID`, `Password`) VALUES
('Sanchit Singh', '18', 'M', 'sanchitsingh0409@gmail.com', '281919688758', 'G-18956748', '9869505118'),
('Akash Rajpurohit', '18', 'M', 'akashrajpurohit.009@gmail.com', '678943129561', 'G-18956750', '8698015453'),
('Raj Kotadia', '19', 'M', 'rajkotadia15@gmail.com', '174456008921', 'G-18956752', '9773995480'),
('Piyush Shah', '18', 'M', 'piyushshah007@gmail.com', '801719688758', 'G-18956754', '8165723417'),
('Rohit Zaveri', '19', 'M', 'zaveri.rohit@gmail.com', '281919685491', 'G-18956756', '9889446123'),
('Shreyans', '18', 'M', 'shreyans@gmail.com', '123456789123', 'G-18956764', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `timedetails`
--

CREATE TABLE `timedetails` (
  `BridgeNo` varchar(5) NOT NULL,
  `SrNo` varchar(4) NOT NULL,
  `StationName` varchar(15) NOT NULL,
  `Time` varchar(8) NOT NULL,
  `NoOfPerson` int(3) NOT NULL,
  `Day` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timedetails`
--

INSERT INTO `timedetails` (`BridgeNo`, `SrNo`, `StationName`, `Time`, `NoOfPerson`, `Day`) VALUES
('A1', '129', 'Andheri', '6-8 AM', 240, 'Today'),
('A1', '130', 'Andheri', '8-10 AM', 255, 'Today'),
('A1', '131', 'Andheri', '10-12 AM', 200, 'Today'),
('A1', '132', 'Andheri', '12-2 PM', 180, 'Today'),
('A1', '133', 'Andheri', '2-4 PM', 150, 'Today'),
('A1', '134', 'Andheri', '4-6 PM', 200, 'Today'),
('A1', '135', 'Andheri', '6-8 PM', 260, 'Today'),
('A1', '136', 'Andheri', '8-10 PM', 400, 'Today'),
('A1', '137', 'Andheri', '6-8 AM', 232, 'Yesterday'),
('A1', '138', 'Andheri', '8-10 AM', 260, 'Yesterday'),
('A1', '139', 'Andheri', '10-12 AM', 230, 'Yesterday'),
('A1', '140', 'Andheri', '12-2 PM', 170, 'Yesterday'),
('A1', '141', 'Andheri', '2-4 PM', 152, 'Yesterday'),
('A1', '142', 'Andheri', '4-6 PM', 235, 'Yesterday'),
('A1', '143', 'Andheri', '6-8 PM', 250, 'Yesterday'),
('A1', '144', 'Andheri', '8-10 PM', 260, 'Yesterday'),
('A2', '145', 'Andheri', '6-8 AM', 270, 'Today'),
('A2', '146', 'Andheri', '8-10 AM', 285, 'Today'),
('A2', '147', 'Andheri', '10-12 AM', 240, 'Today'),
('A2', '148', 'Andheri', '12-2 PM', 235, 'Today'),
('A2', '149', 'Andheri', '2-4 PM', 220, 'Today'),
('A2', '150', 'Andheri', '4-6 PM', 245, 'Today'),
('A2', '151', 'Andheri', '6-8 PM', 260, 'Today'),
('A2', '152', 'Andheri', '8-10 PM', 280, 'Today'),
('A2', '153', 'Andheri', '6-8 AM', 280, 'Yesterday'),
('A2', '154', 'Andheri', '8-10 AM', 265, 'Yesterday'),
('A2', '155', 'Andheri', '10-12 AM', 235, 'Yesterday'),
('A2', '156', 'Andheri', '12-2 PM', 239, 'Yesterday'),
('A2', '157', 'Andheri', '2-4 PM', 224, 'Yesterday'),
('A2', '158', 'Andheri', '4-6 PM', 255, 'Yesterday'),
('A2', '159', 'Andheri', '6-8 PM', 265, 'Yesterday'),
('A2', '160', 'Andheri', '8-10 PM', 275, 'Yesterday'),
('B1', '1', 'Borivali', '6-8 AM', 125, 'Today'),
('B1', '10', 'Borivali', '8-10 AM', 145, 'Yesterday'),
('B1', '11', 'Borivali', '10-12 AM', 130, 'Yesterday'),
('B1', '12', 'Borivali', '12-2 PM', 235, 'Yesterday'),
('B1', '13', 'Borivali', '2-4 PM', 225, 'Yesterday'),
('B1', '14', 'Borivali', '4-6 PM', 190, 'Yesterday'),
('B1', '15', 'Borivali', '6-8 PM', 195, 'Yesterday'),
('B1', '16', 'Borivali', '8-10 PM', 190, 'Yesterday'),
('B1', '2', 'Borivali', '8-10 AM', 500, 'Today'),
('B1', '3', 'Borivali', '10-12 AM', 135, 'Today'),
('B1', '4', 'Borivali', '12-2 PM', 225, 'Today'),
('B1', '5', 'Borivali', '2-4 PM', 255, 'Today'),
('B1', '6', 'Borivali', '4-6 PM', 170, 'Today'),
('B1', '7', 'Borivali', '6-8 PM', 195, 'Today'),
('B1', '8', 'Borivali', '8-10 PM', 180, 'Today'),
('B1', '9', 'Borivali', '6-8 AM', 135, 'Yesterday'),
('B2', '17', 'Borivali', '6-8 AM', 120, 'Today'),
('B2', '18', 'Borivali', '8-10 AM', 145, 'Today'),
('B2', '19', 'Borivali', '10-12 AM', 135, 'Today'),
('B2', '20', 'Borivali', '12-2 PM', 143, 'Today'),
('B2', '21', 'Borivali', '2-4 PM', 127, 'Today'),
('B2', '22', 'Borivali', '4-6 PM', 157, 'Today'),
('B2', '23', 'Borivali', '6-8 PM', 166, 'Today'),
('B2', '24', 'Borivali', '8-10 PM', 168, 'Today'),
('B2', '25', 'Borivali', '6-8 AM', 110, 'Yesterday'),
('B2', '26', 'Borivali', '8-10 AM', 150, 'Yesterday'),
('B2', '27', 'Borivali', '10-12 AM', 143, 'Yesterday'),
('B2', '28', 'Borivali', '12-2 PM', 133, 'Yesterday'),
('B2', '29', 'Borivali', '2-4 PM', 122, 'Yesterday'),
('B2', '30', 'Borivali', '4-6 PM', 162, 'Yesterday'),
('B2', '31', 'Borivali', '6-8 PM', 160, 'Yesterday'),
('B2', '32', 'Borivali', '8-10 PM', 175, 'Yesterday'),
('BA1', '161', 'Bandra', '6-8 AM', 245, 'Today'),
('BA1', '162', 'Bandra', '8-10 AM', 250, 'Today'),
('BA1', '163', 'Bandra', '10-12 AM', 235, 'Today'),
('BA1', '164', 'Bandra', '12-2 PM', 225, 'Today'),
('BA1', '165', 'Bandra', '2-4 PM', 215, 'Today'),
('BA1', '166', 'Bandra', '4-6 PM', 250, 'Today'),
('BA1', '167', 'Bandra', '6-8 PM', 265, 'Today'),
('BA1', '168', 'Bandra', '8-10 PM', 280, 'Today'),
('BA1', '169', 'Bandra', '6-8 AM', 240, 'Yesterday'),
('BA1', '170', 'Bandra', '8-10 AM', 255, 'Yesterday'),
('BA1', '171', 'Bandra', '10-12 AM', 245, 'Yesterday'),
('BA1', '172', 'Bandra', '12-2 PM', 218, 'Yesterday'),
('BA1', '173', 'Bandra', '2-4 PM', 224, 'Yesterday'),
('BA1', '174', 'Bandra', '4-6 PM', 257, 'Yesterday'),
('BA1', '175', 'Bandra', '6-8 PM', 259, 'Yesterday'),
('BA1', '176', 'Bandra', '8-10 PM', 285, 'Yesterday'),
('BA2', '177', 'Bandra', '6-8 AM', 230, 'Today'),
('BA2', '178', 'Bandra', '8-10 AM', 245, 'Today'),
('BA2', '179', 'Bandra', '10-12 AM', 235, 'Today'),
('BA2', '180', 'Bandra', '12-2 PM', 213, 'Today'),
('BA2', '181', 'Bandra', '2-4 PM', 207, 'Today'),
('BA2', '182', 'Bandra', '4-6 PM', 240, 'Today'),
('BA2', '183', 'Bandra', '6-8 PM', 266, 'Today'),
('BA2', '184', 'Bandra', '8-10 PM', 268, 'Today'),
('BA2', '185', 'Bandra', '6-8 AM', 234, 'Yesterday'),
('BA2', '186', 'Bandra', '8-10 AM', 250, 'Yesterday'),
('BA2', '187', 'Bandra', '10-12 AM', 245, 'Yesterday'),
('BA2', '188', 'Bandra', '12-2 PM', 209, 'Yesterday'),
('BA2', '189', 'Bandra', '2-4 PM', 219, 'Yesterday'),
('BA2', '190', 'Bandra', '4-6 PM', 245, 'Yesterday'),
('BA2', '191', 'Bandra', '6-8 PM', 254, 'Yesterday'),
('BA2', '192', 'Bandra', '8-10 PM', 260, 'Yesterday'),
('BH1', '100', 'Bhayander', '12-2 PM', 215, 'Today'),
('BH1', '101', 'Bhayander', '2-4 PM', 205, 'Today'),
('BH1', '102', 'Bhayander', '4-6 PM', 220, 'Today'),
('BH1', '103', 'Bhayander', '6-8 PM', 235, 'Today'),
('BH1', '104', 'Bhayander', '8-10 PM', 250, 'Today'),
('BH1', '105', 'Bhayander', '6-8 AM', 245, 'Yesterday'),
('BH1', '106', 'Bhayander', '8-10 AM', 240, 'Yesterday'),
('BH1', '107', 'Bhayander', '10-12 AM', 243, 'Yesterday'),
('BH1', '108', 'Bhayander', '12-2 PM', 225, 'Yesterday'),
('BH1', '109', 'Bhayander', '2-4 PM', 215, 'Yesterday'),
('BH1', '110', 'Bhayander', '4-6 PM', 240, 'Yesterday'),
('BH1', '111', 'Bhayander', '6-8 PM', 245, 'Yesterday'),
('BH1', '112', 'Bhayander', '8-10 PM', 258, 'Yesterday'),
('BH1', '97', 'Bhayander', '6-8 AM', 350, 'Today'),
('BH1', '98', 'Bhayander', '8-10 AM', 250, 'Today'),
('BH1', '99', 'Bhayander', '10-12 AM', 235, 'Today'),
('BH2', '113', 'Bhayander', '6-8 AM', 140, 'Today'),
('BH2', '114', 'Bhayander', '8-10 AM', 165, 'Today'),
('BH2', '115', 'Bhayander', '10-12 AM', 155, 'Today'),
('BH2', '116', 'Bhayander', '12-2 PM', 143, 'Today'),
('BH2', '117', 'Bhayander', '2-4 PM', 157, 'Today'),
('BH2', '118', 'Bhayander', '4-6 PM', 157, 'Today'),
('BH2', '119', 'Bhayander', '6-8 PM', 166, 'Today'),
('BH2', '120', 'Bhayander', '8-10 PM', 168, 'Today'),
('BH2', '121', 'Bhayander', '6-8 AM', 148, 'Yesterday'),
('BH2', '122', 'Bhayander', '8-10 AM', 148, 'Yesterday'),
('BH2', '123', 'Bhayander', '10-12 AM', 161, 'Yesterday'),
('BH2', '124', 'Bhayander', '12-2 PM', 151, 'Yesterday'),
('BH2', '125', 'Bhayander', '2-4 PM', 139, 'Yesterday'),
('BH2', '126', 'Bhayander', '4-6 PM', 160, 'Yesterday'),
('BH2', '127', 'Bhayander', '6-8 PM', 173, 'Yesterday'),
('BH2', '128', 'Bhayander', '8-10 PM', 158, 'Yesterday'),
('BS1', '33', 'Vasai', '6-8 AM', 150, 'Today'),
('BS1', '34', 'Vasai', '8-10 AM', 300, 'Today'),
('BS1', '35', 'Vasai', '10-12 AM', 135, 'Today'),
('BS1', '36', 'Vasai', '12-2 PM', 125, 'Today'),
('BS1', '37', 'Vasai', '2-4 PM', 100, 'Today'),
('BS1', '38', 'Vasai', '4-6 PM', 145, 'Today'),
('BS1', '39', 'Vasai', '6-8 PM', 150, 'Today'),
('BS1', '40', 'Vasai', '8-10 PM', 155, 'Today'),
('BS1', '41', 'Vasai', '6-8 AM', 155, 'Yesterday'),
('BS1', '42', 'Vasai', '8-10 AM', 140, 'Yesterday'),
('BS1', '43', 'Vasai', '10-12 AM', 138, 'Yesterday'),
('BS1', '44', 'Vasai', '12-2 PM', 120, 'Yesterday'),
('BS1', '45', 'Vasai', '2-4 PM', 107, 'Yesterday'),
('BS1', '46', 'Vasai', '4-6 PM', 155, 'Yesterday'),
('BS1', '47', 'Vasai', '6-8 PM', 146, 'Yesterday'),
('BS1', '48', 'Vasai', '8-10 PM', 159, 'Yesterday'),
('BS2', '49', 'Vasai', '6-8 AM', 180, 'Today'),
('BS2', '50', 'Vasai', '8-10 AM', 165, 'Today'),
('BS2', '51', 'Vasai', '10-12 AM', 145, 'Today'),
('BS2', '52', 'Vasai', '12-2 PM', 130, 'Today'),
('BS2', '53', 'Vasai', '2-4 PM', 125, 'Today'),
('BS2', '54', 'Vasai', '4-6 PM', 145, 'Today'),
('BS2', '55', 'Vasai', '6-8 PM', 160, 'Today'),
('BS2', '56', 'Vasai', '8-10 PM', 175, 'Today'),
('BS2', '57', 'Vasai', '6-8 AM', 173, 'Yesterday'),
('BS2', '58', 'Vasai', '8-10 AM', 170, 'Yesterday'),
('BS2', '59', 'Vasai', '10-12 AM', 140, 'Yesterday'),
('BS2', '60', 'Vasai', '12-2 PM', 110, 'Yesterday'),
('BS2', '61', 'Vasai', '2-4 PM', 135, 'Yesterday'),
('BS2', '62', 'Vasai', '4-6 PM', 140, 'Yesterday'),
('BS2', '63', 'Vasai', '6-8 PM', 150, 'Yesterday'),
('BS2', '64', 'Vasai', '8-10 PM', 189, 'Yesterday'),
('C1', '257', 'Churchgate', '6-8 AM', 275, 'Today'),
('C1', '258', 'Churchgate', '8-10 AM', 280, 'Today'),
('C1', '259', 'Churchgate', '10-12 AM', 255, 'Today'),
('C1', '260', 'Churchgate', '12-2 PM', 255, 'Today'),
('C1', '261', 'Churchgate', '2-4 PM', 245, 'Today'),
('C1', '262', 'Churchgate', '4-6 PM', 270, 'Today'),
('C1', '263', 'Churchgate', '6-8 PM', 275, 'Today'),
('C1', '264', 'Churchgate', '8-10 PM', 290, 'Today'),
('C1', '265', 'Churchgate', '6-8 AM', 260, 'Yesterday'),
('C1', '266', 'Churchgate', '8-10 AM', 274, 'Yesterday'),
('C1', '267', 'Churchgate', '10-12 AM', 260, 'Yesterday'),
('C1', '268', 'Churchgate', '12-2 PM', 245, 'Yesterday'),
('C1', '269', 'Churchgate', '2-4 PM', 255, 'Yesterday'),
('C1', '270', 'Churchgate', '4-6 PM', 260, 'Yesterday'),
('C1', '271', 'Churchgate', '6-8 PM', 285, 'Yesterday'),
('C1', '272', 'Churchgate', '8-10 PM', 287, 'Yesterday'),
('C2', '273', 'Churchgate', '6-8 AM', 250, 'Today'),
('C2', '274', 'Churchgate', '8-10 AM', 275, 'Today'),
('C2', '275', 'Churchgate', '10-12 AM', 265, 'Today'),
('C2', '276', 'Churchgate', '12-2 PM', 243, 'Today'),
('C2', '277', 'Churchgate', '2-4 PM', 247, 'Today'),
('C2', '278', 'Churchgate', '4-6 PM', 260, 'Today'),
('C2', '279', 'Churchgate', '6-8 PM', 266, 'Today'),
('C2', '280', 'Churchgate', '8-10 PM', 278, 'Today'),
('C2', '281', 'Churchgate', '6-8 AM', 270, 'Yesterday'),
('C2', '282', 'Churchgate', '8-10 AM', 280, 'Yesterday'),
('C2', '283', 'Churchgate', '10-12 AM', 260, 'Yesterday'),
('C2', '284', 'Churchgate', '12-2 PM', 239, 'Yesterday'),
('C2', '285', 'Churchgate', '2-4 PM', 240, 'Yesterday'),
('C2', '286', 'Churchgate', '4-6 PM', 267, 'Yesterday'),
('C2', '287', 'Churchgate', '6-8 PM', 276, 'Yesterday'),
('C2', '288', 'Churchgate', '8-10 PM', 283, 'Yesterday'),
('D1', '193', 'Dadar', '6-8 AM', 255, 'Today'),
('D1', '194', 'Dadar', '8-10 AM', 275, 'Today'),
('D1', '195', 'Dadar', '10-12 AM', 255, 'Today'),
('D1', '196', 'Dadar', '12-2 PM', 235, 'Today'),
('D1', '197', 'Dadar', '2-4 PM', 225, 'Today'),
('D1', '198', 'Dadar', '4-6 PM', 250, 'Today'),
('D1', '199', 'Dadar', '6-8 PM', 265, 'Today'),
('D1', '200', 'Dadar', '8-10 PM', 285, 'Today'),
('D1', '201', 'Dadar', '6-8 AM', 250, 'Yesterday'),
('D1', '202', 'Dadar', '8-10 AM', 260, 'Yesterday'),
('D1', '203', 'Dadar', '10-12 AM', 245, 'Yesterday'),
('D1', '204', 'Dadar', '12-2 PM', 245, 'Yesterday'),
('D1', '205', 'Dadar', '2-4 PM', 230, 'Yesterday'),
('D1', '206', 'Dadar', '4-6 PM', 265, 'Yesterday'),
('D1', '207', 'Dadar', '6-8 PM', 275, 'Yesterday'),
('D1', '208', 'Dadar', '8-10 PM', 278, 'Yesterday'),
('D2', '209', 'Dadar', '6-8 AM', 250, 'Today'),
('D2', '210', 'Dadar', '8-10 AM', 265, 'Today'),
('D2', '211', 'Dadar', '10-12 AM', 245, 'Today'),
('D2', '212', 'Dadar', '12-2 PM', 230, 'Today'),
('D2', '213', 'Dadar', '2-4 PM', 220, 'Today'),
('D2', '214', 'Dadar', '4-6 PM', 250, 'Today'),
('D2', '215', 'Dadar', '6-8 PM', 276, 'Today'),
('D2', '216', 'Dadar', '8-10 PM', 288, 'Today'),
('D2', '217', 'Dadar', '6-8 AM', 254, 'Yesterday'),
('D2', '218', 'Dadar', '8-10 AM', 255, 'Yesterday'),
('D2', '219', 'Dadar', '10-12 AM', 248, 'Yesterday'),
('D2', '220', 'Dadar', '12-2 PM', 237, 'Yesterday'),
('D2', '221', 'Dadar', '2-4 PM', 210, 'Yesterday'),
('D2', '222', 'Dadar', '4-6 PM', 267, 'Yesterday'),
('D2', '223', 'Dadar', '6-8 PM', 266, 'Yesterday'),
('D2', '224', 'Dadar', '8-10 PM', 282, 'Yesterday'),
('E1', '225', 'Elphinstone', '6-8 AM', 255, 'Today'),
('E1', '226', 'Elphinstone', '8-10 AM', 270, 'Today'),
('E1', '227', 'Elphinstone', '10-12 AM', 245, 'Today'),
('E1', '228', 'Elphinstone', '12-2 PM', 225, 'Today'),
('E1', '229', 'Elphinstone', '2-4 PM', 215, 'Today'),
('E1', '230', 'Elphinstone', '4-6 PM', 260, 'Today'),
('E1', '231', 'Elphinstone', '6-8 PM', 275, 'Today'),
('E1', '232', 'Elphinstone', '8-10 PM', 280, 'Today'),
('E1', '233', 'Elphinstone', '6-8 AM', 250, 'Yesterday'),
('E1', '234', 'Elphinstone', '8-10 AM', 267, 'Yesterday'),
('E1', '235', 'Elphinstone', '10-12 AM', 255, 'Yesterday'),
('E1', '236', 'Elphinstone', '12-2 PM', 235, 'Yesterday'),
('E1', '237', 'Elphinstone', '2-4 PM', 218, 'Yesterday'),
('E1', '238', 'Elphinstone', '4-6 PM', 252, 'Yesterday'),
('E1', '239', 'Elphinstone', '6-8 PM', 285, 'Yesterday'),
('E1', '240', 'Elphinstone', '8-10 PM', 276, 'Yesterday'),
('E2', '241', 'Elphinstone', '6-8 AM', 250, 'Today'),
('E2', '242', 'Elphinstone', '8-10 AM', 265, 'Today'),
('E2', '243', 'Elphinstone', '10-12 AM', 245, 'Today'),
('E2', '244', 'Elphinstone', '12-2 PM', 233, 'Today'),
('E2', '245', 'Elphinstone', '2-4 PM', 227, 'Today'),
('E2', '246', 'Elphinstone', '4-6 PM', 257, 'Today'),
('E2', '247', 'Elphinstone', '6-8 PM', 266, 'Today'),
('E2', '248', 'Elphinstone', '8-10 PM', 278, 'Today'),
('E2', '249', 'Elphinstone', '6-8 AM', 255, 'Yesterday'),
('E2', '250', 'Elphinstone', '8-10 AM', 260, 'Yesterday'),
('E2', '251', 'Elphinstone', '10-12 AM', 255, 'Yesterday'),
('E2', '252', 'Elphinstone', '12-2 PM', 248, 'Yesterday'),
('E2', '253', 'Elphinstone', '2-4 PM', 235, 'Yesterday'),
('E2', '254', 'Elphinstone', '4-6 PM', 260, 'Yesterday'),
('E2', '255', 'Elphinstone', '6-8 PM', 280, 'Yesterday'),
('E2', '256', 'Elphinstone', '8-10 PM', 272, 'Yesterday'),
('M1', '289', 'Mumbai Central', '6-8 AM', 165, 'Today'),
('M1', '290', 'Mumbai Central', '8-10 AM', 170, 'Today'),
('M1', '291', 'Mumbai Central', '10-12 AM', 145, 'Today'),
('M1', '292', 'Mumbai Central', '12-2 PM', 145, 'Today'),
('M1', '293', 'Mumbai Central', '2-4 PM', 155, 'Today'),
('M1', '294', 'Mumbai Central', '4-6 PM', 170, 'Today'),
('M1', '295', 'Mumbai Central', '6-8 PM', 195, 'Today'),
('M1', '296', 'Mumbai Central', '8-10 PM', 180, 'Today'),
('M1', '297', 'Mumbai Central', '6-8 AM', 155, 'Yesterday'),
('M1', '298', 'Mumbai Central', '8-10 AM', 175, 'Yesterday'),
('M1', '299', 'Mumbai Central', '10-12 AM', 140, 'Yesterday'),
('M1', '300', 'Mumbai Central', '12-2 PM', 148, 'Yesterday'),
('M1', '301', 'Mumbai Central', '2-4 PM', 142, 'Yesterday'),
('M1', '302', 'Mumbai Central', '4-6 PM', 175, 'Yesterday'),
('M1', '303', 'Mumbai Central', '6-8 PM', 186, 'Yesterday'),
('M1', '304', 'Mumbai Central', '8-10 PM', 187, 'Yesterday'),
('M2', '305', 'Mumbai Central', '6-8 AM', 180, 'Today'),
('M2', '306', 'Mumbai Central', '8-10 AM', 205, 'Today'),
('M2', '307', 'Mumbai Central', '10-12 AM', 175, 'Today'),
('M2', '308', 'Mumbai Central', '12-2 PM', 153, 'Today'),
('M2', '309', 'Mumbai Central', '2-4 PM', 147, 'Today'),
('M2', '310', 'Mumbai Central', '4-6 PM', 157, 'Today'),
('M2', '311', 'Mumbai Central', '6-8 PM', 166, 'Today'),
('M2', '312', 'Mumbai Central', '8-10 PM', 178, 'Today'),
('M2', '313', 'Mumbai Central', '6-8 AM', 190, 'Yesterday'),
('M2', '314', 'Mumbai Central', '8-10 AM', 200, 'Yesterday'),
('M2', '315', 'Mumbai Central', '10-12 AM', 185, 'Yesterday'),
('M2', '316', 'Mumbai Central', '12-2 PM', 158, 'Yesterday'),
('M2', '317', 'Mumbai Central', '2-4 PM', 139, 'Yesterday'),
('M2', '318', 'Mumbai Central', '4-6 PM', 167, 'Yesterday'),
('M2', '319', 'Mumbai Central', '6-8 PM', 172, 'Yesterday'),
('M2', '320', 'Mumbai Central', '8-10 PM', 173, 'Yesterday'),
('V1', '65', 'Virar', '6-8 AM', 200, 'Today'),
('V1', '66', 'Virar', '8-10 AM', 210, 'Today'),
('V1', '67', 'Virar', '10-12 AM', 175, 'Today'),
('V1', '68', 'Virar', '12-2 PM', 140, 'Today'),
('V1', '69', 'Virar', '2-4 PM', 150, 'Today'),
('V1', '70', 'Virar', '4-6 PM', 180, 'Today'),
('V1', '71', 'Virar', '6-8 PM', 195, 'Today'),
('V1', '72', 'Virar', '8-10 PM', 200, 'Today'),
('V1', '73', 'Virar', '6-8 AM', 180, 'Yesterday'),
('V1', '74', 'Virar', '8-10 AM', 200, 'Yesterday'),
('V1', '75', 'Virar', '10-12 AM', 200, 'Yesterday'),
('V1', '76', 'Virar', '12-2 PM', 150, 'Yesterday'),
('V1', '77', 'Virar', '2-4 PM', 130, 'Yesterday'),
('V1', '78', 'Virar', '4-6 PM', 170, 'Yesterday'),
('V1', '79', 'Virar', '6-8 PM', 200, 'Yesterday'),
('V1', '80', 'Virar', '8-10 PM', 220, 'Yesterday'),
('V2', '81', 'Virar', '6-8 AM', 150, 'Today'),
('V2', '82', 'Virar', '8-10 AM', 147, 'Today'),
('V2', '83', 'Virar', '10-12 AM', 140, 'Today'),
('V2', '84', 'Virar', '12-2 PM', 105, 'Today'),
('V2', '85', 'Virar', '2-4 PM', 111, 'Today'),
('V2', '86', 'Virar', '4-6 PM', 125, 'Today'),
('V2', '87', 'Virar', '6-8 PM', 155, 'Today'),
('V2', '88', 'Virar', '8-10 PM', 165, 'Today'),
('V2', '89', 'Virar', '6-8 AM', 162, 'Yesterday'),
('V2', '90', 'Virar', '8-10 AM', 145, 'Yesterday'),
('V2', '91', 'Virar', '10-12 AM', 132, 'Yesterday'),
('V2', '92', 'Virar', '12-2 PM', 125, 'Yesterday'),
('V2', '93', 'Virar', '2-4 PM', 117, 'Yesterday'),
('V2', '94', 'Virar', '4-6 PM', 145, 'Yesterday'),
('V2', '95', 'Virar', '6-8 PM', 150, 'Yesterday'),
('V2', '96', 'Virar', '8-10 PM', 161, 'Yesterday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bridgedetails`
--
ALTER TABLE `bridgedetails`
  ADD PRIMARY KEY (`BridgeNo`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`GovernmentID`);

--
-- Indexes for table `timedetails`
--
ALTER TABLE `timedetails`
  ADD PRIMARY KEY (`BridgeNo`,`SrNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
