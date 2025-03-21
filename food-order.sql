-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2025 at 09:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

CREATE DATABASE IF NOT EXISTS `food-order`;
USE `food-order`;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `first_name`, `last_name`, `email`, `phone`, `message`) VALUES
(1, 'faiyyaz hangad', 'hangad', 'faiyazhangad143@gmail.com', '999999999', 'its working \r\n'),
(2, 'faiyyaz ', 'hangad', 'faiyazhangad143@gmail.com', '999999999', 'its working good  bro\r\n'),
(3, 'faiyyaz hangad', 'hangad', 'faiyazhangad143@gmail.com', '999999999', 'papa ki pari '),
(4, 'sumaiyya maner', 'maner', 'sumaiyyamaner@gmail.com', '09975690569', 'jsSJsjS'),
(5, 'Faiyyaz', 'hhhhhhh', 'mnj@gmail.com', '999999999999999999999', 'don');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(29, 'faiyyaz hangad', 'faizu', 'b39bf0d484378478927713ecc5312041'),
(32, 'sumaiya Maner', 'sumaiyya', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(19, 'Pizza', 'Food_Category_679.jpg', 'Yes', 'Yes'),
(20, 'Burger', 'Food_Category_462.jpg', 'Yes', 'Yes'),
(22, 'tandori chicken ', 'Food_Category_705.jpg', 'Yes', 'Yes'),
(23, 'Biryani', 'Food_Category_846.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(2, 'Best Burger', 'Best Burger With Lots Of Cheese', 100.00, 'Food-Name-3172.jpg', 13, 'Yes', 'Yes'),
(3, 'MoMo', 'Chicken Dumpllings ', 200.00, 'Food-Name-5002.jpg', 10, 'Yes', 'Yes'),
(4, 'Smoky Pizza', 'Best Smoky Pizza In The Town', 300.00, 'Food-Name-7525.jpg', 10, 'Yes', 'Yes'),
(5, 'Kabab ', 'best chicken kabab in the miraj', 50.00, 'Food-Name-8542.jpg', 10, 'Yes', 'Yes'),
(6, 'tandori chicken', 'this is yhe best tendori chicken in the miuraj ', 70.00, 'Food-Name-8495.jpg', 19, 'Yes', 'Yes'),
(7, 'Biryani', 'Delicious Juicy', 120.00, 'Food-Name-8301.jpg', 23, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(4, 'Smoky Pizza', 300.00, 1, 300.00, '2024-02-20 06:00:40', 'Delivered', 'misba hangad', '8830279127', 'faiyazhangad143@gmail.com', 'budhwar peth hangad galli miraj'),
(5, 'Dumpllings', 200.00, 4, 800.00, '2024-02-20 06:50:09', 'Delivered', 'sohail khatib ', '9970741510', 'ajasimali111@gmail.com', 'aman nagar miraj'),
(6, 'Smoky Pizza', 300.00, 2, 600.00, '2024-02-20 10:39:31', 'Delivered', 'sumaiya maner', '8830279127', 'Paramountservices@gmail.com', 'papa ki pari\r\n'),
(7, 'Best Burger', 100.00, 2, 200.00, '2024-02-21 12:25:35', 'Delivered', 'salma hangad ', '8600497807', 'hangadfaiyaz@gmail.com', 'budhwar peth hangad galli miraj '),
(8, 'Kabab ', 50.00, 3, 150.00, '2024-02-22 03:33:59', 'Delivered', 'sumaiya maner ', '9970741510', 'ajasimali111@gmail.com', 'aman nagar '),
(9, 'tandori chicken', 70.00, 4, 280.00, '2024-02-22 04:30:31', 'Delivered', 'dastagir shaukh', '9970741510', 'faiyazhangad143@gmail.com', 'hmwbxhbmcbewmhgchg'),
(10, 'tandori chicken', 70.00, 2, 140.00, '2024-02-22 04:44:00', 'Delivered', 'zishan ', '8830279127', 'abc@gmail.com', 'hangad galli miraj'),
(11, 'Best Burger', 100.00, 4, 400.00, '2024-02-25 11:14:25', 'Delivered', 'ali patwegar', '8830279127', 'abc@gmail.com', 'baner pune\r\n'),
(12, 'tandori chicken', 70.00, -1, -70.00, '2024-02-29 04:05:05', 'Delivered', 'Faiyyaz Badroddin Hangad ', '8830279127', 'hangadfaiyaz@gmail.com', 'miraj'),
(13, 'Biryani', 120.00, 5, 600.00, '2024-02-29 04:17:48', 'Delivered', 'Wahid ', '9970741510', 'Paramountservices@gmail.com', 'Pune'),
(14, 'tandori chicken', 70.00, 2, 140.00, '2024-03-09 07:46:41', 'Delivered', 'akib ismail magdum', '8830279127', 'ajasimali111@gmail.com', 'dhapodi pune '),
(15, 'Biryani', 120.00, 1, 120.00, '2024-04-02 09:10:01', 'Delivered', 'kamran sayyed ', '8888888', 'faiyazhangad143@gmail.com', 'hangad galli miraj '),
(16, 'Best Burger', 100.00, 1, 100.00, '2024-05-28 04:33:56', 'Ordered', 'faiyyaz hangad ', '8888888', 'faiyazhangad143@gmail.com', 'im from the miraj and checking the website '),
(17, 'Best Burger', 100.00, 3, 300.00, '2024-05-28 04:57:29', 'Delivered', 'faiyyaz hangad ', '8888888', 'faiyazhangad143@gmail.com', 'hangad galli miraj');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(27, 'sumaiyya', 'sumaiyya@gmail.com', '$2y$10$PFmynIK0s9kCWl.tmaVr/.mIA68mVJe6HbK1avLk2NbPXh/fWZtzG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
