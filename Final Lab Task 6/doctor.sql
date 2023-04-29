-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 11:34 PM
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
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `appointment_id` int(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `appointment_time` text NOT NULL,
  `appointment_date` varchar(255) NOT NULL,
  `appointment_status` varchar(255) NOT NULL,
  `appointment_type` varchar(255) NOT NULL,
  `appointment_reason` text NOT NULL,
  `appointment_notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`date`, `appointment_id`, `patient_name`, `appointment_time`, `appointment_date`, `appointment_status`, `appointment_type`, `appointment_reason`, `appointment_notes`) VALUES
('2023-04-09 01:32:07', 6431, 'Mahin', '07:37', '2023-04-21', 'pending', 'normal', 'pain', 'not serious'),
('2023-04-08 04:24:00', 2147483647, 'ELIN', '10:22', '2023-04-27', 'pending', 'normal', 'fgfdg', 'not serious');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` text NOT NULL,
  `problems` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`username`, `email`, `phone`, `address`, `type`, `problems`) VALUES
('New', 'new@gmail.com', '01718295733', 'New', 'patient', 'assign'),
('another', 'antoher@gmail.com', '1234233', 'fhdfhsg', 'ghfh', 'ewqtr');

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `record_id` int(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `record_date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `record_type` varchar(255) NOT NULL,
  `record_notes` varchar(255) NOT NULL,
  `previous_problems` varchar(255) NOT NULL,
  `previous_reservation_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_records`
--

INSERT INTO `patient_records` (`record_id`, `patient_name`, `record_date`, `record_type`, `record_notes`, `previous_problems`, `previous_reservation_date`) VALUES
(643089, 'Turja', '2023-04-08 03:23:42.079255', 'Pending', 'hypertension', 'Headache', '2023-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `adress`, `type`, `date`) VALUES
(1, 'Ayush', 'sajama874', 'shahriermahin@yahoo.com', '+8801718295833', '', 'doctor', '2023-04-07 17:14:14.108822'),
(2, 'Doctor Alin', '12345', 'hossainshahrier.sh@gmail.com', '01718295836', 'Hill view R/A,Road 6,Block-B', 'doctor', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
