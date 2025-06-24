-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2025 at 11:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trendy`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `user_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `id`, `quantity`, `user_email`) VALUES
(1, 1, 1, 'abc@example.com'),
(12, 4, 1, 'arramrishika8@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `clothstore`
--

CREATE TABLE `clothstore` (
  `customer_id` int(2) NOT NULL,
  `first_name` varchar(9) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `email` varchar(29) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(27) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `state` varchar(17) DEFAULT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothstore`
--

INSERT INTO `clothstore` (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `date_of_birth`, `address`, `city`, `state`, `zip_code`, `country`, `created_at`, `password`) VALUES
(1, 'Divya', 'Das', 'divya.das1@example.com', '9876543137', 'Female', '1998-11-16', '37 Lotus Ave', 'Kolkata', 'West Bengal', '700001', 'IN', '2024-06-01 04:30:00', 'divya739'),
(2, 'Vikas', 'Yadav', 'vikas.yadav2@example.com', '9876543461', 'Male', '2003-04-09', '84 Gandhi Marg', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 04:35:00', 'vikas177'),
(3, 'Vikas', 'Joshi', 'vikas.joshi3@example.com', '9876543827', 'Male', '1985-05-16', '84 Gandhi Marg', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 04:40:00', 'vikas674'),
(4, 'Divya', 'Das', 'divya.das4@example.com', '9876543440', 'Female', '1996-01-02', '19 Park Lane', 'Kolkata', 'West Bengal', '700001', 'IN', '2024-06-01 04:45:00', 'divya432'),
(5, 'Sneha', 'Kumar', 'sneha.kumar5@example.com', '9876543807', 'Male', '2006-04-04', '31 Park Lane', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 04:50:00', 'sneha298'),
(6, 'Sneha', 'Yadav', 'sneha.yadav6@example.com', '9876543387', 'Male', '2016-12-05', '68 MG Road', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 04:55:00', 'sneha703'),
(7, 'Neha', 'Kumar', 'neha.kumar7@example.com', '9876543629', 'Female', '1990-03-03', '36 Park Lane', 'Chennai', 'Tamil Nadu', '600001', 'IN', '2024-06-01 05:00:00', 'neha328'),
(8, 'Vikas', 'Mehta', 'vikas.mehta8@example.com', '9876543340', 'Male', '1992-12-27', '88 Lotus Ave', 'Kolkata', 'West Bengal', '700001', 'IN', '2024-06-01 05:05:00', 'vikas838'),
(9, 'Asha', 'Kumar', 'asha.kumar9@example.com', '9876543822', 'Male', '1986-05-25', '44 MG Road', 'Jaipur', 'Rajasthan', '302001', 'IN', '2024-06-01 05:10:00', 'asha426'),
(10, 'Neha', 'Mehta', 'neha.mehta10@example.com', '9876543270', 'Female', '1991-03-17', '47 Park Lane', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 05:15:00', 'neha522'),
(11, 'Neha', 'Patel', 'neha.patel11@example.com', '9876543507', 'Male', '1998-12-17', '92 Lotus Ave', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 05:20:00', 'neha823'),
(12, 'Vikas', 'Patel', 'vikas.patel12@example.com', '9876543210', 'Male', '1986-03-13', '2 Park Lane', 'Kolkata', 'West Bengal', '700001', 'IN', '2024-06-01 05:25:00', 'vikas700'),
(13, 'Divya', 'Mehta', 'divya.mehta13@example.com', '9876543781', 'Female', '2004-12-20', '14 Gandhi Marg', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 05:30:00', 'divya310'),
(14, 'Kunal', 'Kumar', 'kunal.kumar14@example.com', '9876543802', 'Female', '2015-01-09', '63 Gandhi Marg', 'Bangalore', 'Karnataka', '560001', 'IN', '2024-06-01 05:35:00', 'kunal249'),
(15, 'Priya', 'Verma', 'priya.verma15@example.com', '9876543841', 'Male', '1996-05-07', '43 Gandhi Marg', 'Kochi', 'Kerala', '682001', 'IN', '2024-06-01 05:40:00', 'priya319'),
(16, 'Vikas', 'Patel', 'vikas.patel16@example.com', '9876543247', 'Female', '1986-01-21', '27 Lotus Ave', 'Kochi', 'Kerala', '682001', 'IN', '2024-06-01 05:45:00', 'vikas370'),
(17, 'Vikas', 'Patel', 'vikas.patel17@example.com', '9876543697', 'Male', '2008-12-08', '62 Park Lane', 'Hyderabad', 'Telangana', '500081', 'IN', '2024-06-01 05:50:00', 'vikas809'),
(18, 'Amit', 'Patel', 'amit.patel18@example.com', '9876543690', 'Male', '1991-01-30', '81 Gandhi Marg', 'Ahmedabad', 'Gujarat', '380001', 'IN', '2024-06-01 05:55:00', 'amit785'),
(19, 'Asha', 'Nair', 'asha.nair19@example.com', '9876543374', 'Female', '2015-04-01', '18 Gandhi Marg', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 06:00:00', 'asha801'),
(20, 'Sneha', 'Sharma', 'sneha.sharma20@example.com', '9876543179', 'Male', '2011-05-06', '5 Lotus Ave', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 06:05:00', 'sneha500'),
(21, 'Divya', 'Verma', 'divya.verma21@example.com', '9876543932', 'Female', '2011-06-14', '46 Gandhi Marg', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 06:10:00', 'divya820'),
(22, 'Priya', 'Rao', 'priya.rao22@example.com', '9876543533', 'Female', '1986-12-12', '71 Park Lane', 'Kochi', 'Kerala', '682001', 'IN', '2024-06-01 06:15:00', 'priya987'),
(23, 'Priya', 'Sharma', 'priya.sharma23@example.com', '9876543768', 'Male', '2004-04-23', '90 Gandhi Marg', 'Mysore', 'Karnataka', '570001', 'IN', '2024-06-01 06:20:00', 'priya418'),
(24, 'Divya', 'Rao', 'divya.rao24@example.com', '9876543785', 'Female', '1992-08-30', '31 Park Lane', 'Ahmedabad', 'Gujarat', '380001', 'IN', '2024-06-01 06:25:00', 'divya974'),
(25, 'Kunal', 'Yadav', 'kunal.yadav25@example.com', '9876543111', 'Male', '1988-08-07', '82 Park Lane', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 06:30:00', 'kunal965'),
(26, 'Neha', 'Rao', 'neha.rao26@example.com', '9876543486', 'Male', '2014-11-21', '30 Gandhi Marg', 'Ahmedabad', 'Gujarat', '380001', 'IN', '2024-06-01 06:35:00', 'neha680'),
(27, 'Priya', 'Sharma', 'priya.sharma27@example.com', '9876543851', 'Female', '2016-10-26', '77 Park Lane', 'Jaipur', 'Rajasthan', '302001', 'IN', '2024-06-01 06:40:00', 'priya573'),
(28, 'Asha', 'Nair', 'asha.nair28@example.com', '9876543521', 'Female', '2019-02-10', '42 Gandhi Marg', 'Mysore', 'Karnataka', '570001', 'IN', '2024-06-01 06:45:00', 'asha143'),
(29, 'Asha', 'Mehta', 'asha.mehta29@example.com', '9876543157', 'Female', '2002-07-26', '93 Gandhi Marg', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 06:50:00', 'asha759'),
(30, 'Rohan', 'Nair', 'rohan.nair30@example.com', '9876543289', 'Male', '2013-12-01', '26 Gandhi Marg', 'Ahmedabad', 'Gujarat', '380001', 'IN', '2024-06-01 06:55:00', 'rohan837'),
(31, 'Priya', 'Verma', 'priya.verma31@example.com', '9876543535', 'Female', '2011-01-05', '10 MG Road', 'Mysore', 'Karnataka', '570001', 'IN', '2024-06-01 07:00:00', 'priya798'),
(32, 'Priya', 'Sharma', 'priya.sharma32@example.com', '9876543787', 'Male', '2009-11-15', '29 Lotus Ave', 'Bangalore', 'Karnataka', '560001', 'IN', '2024-06-01 07:05:00', 'priya890'),
(33, 'Kunal', 'Das', 'kunal.das33@example.com', '9876543278', 'Male', '2002-09-06', '93 MG Road', 'Kolkata', 'West Bengal', '700001', 'IN', '2024-06-01 07:10:00', 'kunal284'),
(34, 'Divya', 'Verma', 'divya.verma34@example.com', '9876543540', 'Male', '1996-06-09', '68 Lotus Ave', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 07:15:00', 'divya105'),
(35, 'Sneha', 'Nair', 'sneha.nair35@example.com', '9876543866', 'Male', '1994-11-17', '7 MG Road', 'Mysore', 'Karnataka', '570001', 'IN', '2024-06-01 07:20:00', 'sneha242'),
(36, 'Vikas', 'Rao', 'vikas.rao36@example.com', '9876543806', 'Female', '1988-07-27', '45 Gandhi Marg', 'Jaipur', 'Rajasthan', '302001', 'IN', '2024-06-01 07:25:00', 'vikas320'),
(37, 'Neha', 'Joshi', 'neha.joshi37@example.com', '9876543684', 'Female', '2004-06-25', '5 Gandhi Marg', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 07:30:00', 'neha228'),
(38, 'Neha', 'Sharma', 'neha.sharma38@example.com', '9876543493', 'Female', '1999-07-31', '11 Gandhi Marg', 'Kochi', 'Kerala', '682001', 'IN', '2024-06-01 07:35:00', 'neha406'),
(39, 'Rohan', 'Rao', 'rohan.rao39@example.com', '9876543289', 'Male', '2016-03-31', '91 Gandhi Marg', 'Kolkata', 'West Bengal', '700001', 'IN', '2024-06-01 07:40:00', 'rohan755'),
(40, 'Priya', 'Rao', 'priya.rao40@example.com', '9876543103', 'Female', '1988-10-20', '91 Gandhi Marg', 'Bangalore', 'Karnataka', '560001', 'IN', '2024-06-01 07:45:00', 'priya478'),
(41, 'Amit', 'Sharma', 'amit.sharma41@example.com', '9876543559', 'Male', '1992-05-06', '63 Gandhi Marg', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 07:50:00', 'amit711'),
(42, 'Ravi', 'Kumar', 'ravi.kumar42@example.com', '9876543407', 'Female', '1993-12-04', '5 Gandhi Marg', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 07:55:00', 'ravi445'),
(43, 'Neha', 'Joshi', 'neha.joshi43@example.com', '9876543770', 'Female', '2014-10-02', '73 Park Lane', 'Ahmedabad', 'Gujarat', '380001', 'IN', '2024-06-01 08:00:00', 'neha323'),
(44, 'Ravi', 'Joshi', 'ravi.joshi44@example.com', '9876543762', 'Female', '2006-04-08', '49 MG Road', 'Delhi', 'Delhi', '110001', 'IN', '2024-06-01 08:05:00', 'ravi723'),
(45, 'Rohan', 'Sharma', 'rohan.sharma45@example.com', '9876543438', 'Male', '1987-06-15', '15 Gandhi Marg', 'Hyderabad', 'Telangana', '500081', 'IN', '2024-06-01 08:10:00', 'rohan476'),
(46, 'Sneha', 'Verma', 'sneha.verma46@example.com', '9876543299', 'Male', '1997-06-09', '55 Park Lane', 'Bangalore', 'Karnataka', '560001', 'IN', '2024-06-01 08:15:00', 'sneha715'),
(47, 'Asha', 'Patel', 'asha.patel47@example.com', '9876543126', 'Female', '2004-05-28', '28 MG Road', 'Ahmedabad', 'Gujarat', '380001', 'IN', '2024-06-01 08:20:00', 'asha642'),
(48, 'Priya', 'Nair', 'priya.nair48@example.com', '9876543698', 'Female', '2015-04-12', '90 Lotus Ave', 'Hyderabad', 'Telangana', '500081', 'IN', '2024-06-01 08:25:00', 'priya511'),
(49, 'Neha', 'Joshi', 'neha.joshi49@example.com', '9876543666', 'Male', '2015-06-15', '8 Gandhi Marg', 'Pune', 'Maharashtra', '411014', 'IN', '2024-06-01 08:30:00', 'neha854'),
(50, 'Rohan', 'Das', 'rohan.das50@example.com', '9876543883', 'Female', '2000-02-08', '92 Park Lane', 'Ahmedabad', 'Gujarat', '380001', 'IN', '2024-06-01 08:35:00', 'rohan859'),
(51, 'ARRAM', 'RISHIKA', 'arramrishika8@gmail.com', '09381515213', 'Female', '2007-03-08', '55-2-409/2 Bank colony Beem', 'Hanamkonda', 'Telangana', '506001', 'India', '2025-06-20 10:59:49', ''),
(52, 'ARRAM', 'RISHIKA', 'arramrishika8@gmail.com', '09381515213', 'Female', '2007-03-08', '55-2-409/2 Bank colony Beem', 'Hanamkonda', 'Telangana', '506001', 'India', '2025-06-20 10:59:51', ''),
(53, 'ARRAM', 'RISHIKA', 'arramrishika8@gmail.com', '09381515213', 'Female', '2007-03-08', '55-2-409/2 Bank colony Beem', 'Hanamkonda', 'Telangana', '506001', 'India', '2025-06-20 11:01:52', ''),
(54, 'ARRAM', 'RISHIKA', 'arramrishika8@gmail.com', '09381515213', 'Female', '2007-03-08', '55-2-409/2 Bank colony Beem', 'Hanamkonda', 'Telangana', '506001', 'India', '2025-06-20 11:01:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_email`, `item_id`, `quantity`, `payment_mode`, `address`, `order_date`) VALUES
(1, 'arramrishika8@gmail.com', 1, 1, 'COD', '55-2-409/2 Bank colony Beemaram hnk', '2025-06-24 06:21:41'),
(2, 'arramrishika8@gmail.com', 23, 1, 'COD', '55-2-409/2 Bank colony Beemaram hnk', '2025-06-24 06:21:41'),
(3, 'arramrishika8@gmail.com', 1, 1, 'COD', '55-2-409/2, Bank colony', '2025-06-24 06:25:14'),
(4, 'arramrishika8@gmail.com', 1, 1, 'COD', '55-2-409/2 Bank colony Beemaram hnk', '2025-06-24 06:26:28'),
(5, 'arramrishika8@gmail.com', 1, 1, 'COD', '55-2-409/2 Bank colony Beemaram hnk', '2025-06-24 07:19:25'),
(6, 'arramrishika8@gmail.com', 1, 1, 'COD', '55-2-409/2 Bank colony Beemaram hnk', '2025-06-24 07:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `products_sample`
--

CREATE TABLE `products_sample` (
  `id` int(2) NOT NULL,
  `type` varchar(11) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `brand` varchar(11) DEFAULT NULL,
  `image_address` varchar(23) DEFAULT NULL,
  `cost` decimal(6,2) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `size` varchar(4) DEFAULT NULL,
  `review` varchar(18) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `material` varchar(12) DEFAULT NULL,
  `availability` int(1) DEFAULT NULL,
  `discount_percent` int(2) DEFAULT NULL,
  `season` varchar(6) DEFAULT NULL,
  `occasion` varchar(7) DEFAULT NULL,
  `origin` varchar(7) DEFAULT NULL,
  `added_date` varchar(10) DEFAULT NULL,
  `seller` varchar(12) DEFAULT NULL,
  `fabric_care` varchar(21) DEFAULT NULL,
  `pattern` varchar(7) DEFAULT NULL,
  `fit` varchar(11) DEFAULT NULL,
  `sleeve_length` varchar(12) DEFAULT NULL,
  `neck_type` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products_sample`
--

INSERT INTO `products_sample` (`id`, `type`, `gender`, `brand`, `image_address`, `cost`, `color`, `size`, `review`, `rating`, `material`, `availability`, `discount_percent`, `season`, `occasion`, `origin`, `added_date`, `seller`, `fabric_care`, `pattern`, `fit`, `sleeve_length`, `neck_type`) VALUES
(1, 'Dress', 'Female', 'Levis', 'images/dress1.jpg', 4474.84, 'Black', 'XL', 'Excellent quality', 3.7, 'Cotton', 1, 0, 'Winter', 'Office', 'Spain', '2025-06-02', 'US Polo', 'Clean with damp cloth', 'Floral', 'Regular Fit', 'Full Sleeve', 'Boat Neck'),
(2, 'Saree', 'Unisex', 'Adidas', 'images/saree2.jpg', 2758.00, 'Yellow', '36', 'Excellent quality', 4.7, 'Cotton', 0, 5, 'Winter', 'Casual', 'India', '2025-06-03', 'Allen Solly', 'Hand wash only', 'Solid', 'Relaxed', 'None', 'Notch Lapel'),
(3, 'Blazer', 'Unisex', 'Raymond', 'images/blazer3.jpg', 4354.71, 'Green', 'XL', 'Nice fit', 3.6, 'Polyester', 1, 10, 'All', 'Office', 'Spain', '2025-06-04', 'Levis Outlet', 'Cold wash', 'Floral', 'Relaxed', '3/4 Sleeve', 'Notch Lapel'),
(4, 'Jacket', 'Male', 'Biba', 'images/jacket4.jpg', 2169.51, 'White', 'Free', 'Nice fit', 4.8, 'Cotton', 1, 15, 'Summer', 'Casual', 'France', '2025-06-05', 'Puma', 'Clean with damp cloth', 'Solid', 'Relaxed', '3/4 Sleeve', 'Round Neck'),
(5, 'Track Pants', 'Unisex', 'Levis', 'images/trackpants5.jpg', 3212.68, 'Red', 'L', 'Highly recommended', 3.9, 'Silk', 1, 20, 'Spring', 'Travel', 'India', '2025-06-06', 'Zara', 'Wash inside out', 'Printed', 'Slim Fit', 'Full Sleeve', 'Boat Neck'),
(6, 'Saree', 'Unisex', 'Allen Solly', 'images/saree6.jpg', 2405.22, 'Navy', 'S', 'Nice fit', 4.1, 'Silk', 1, 30, 'All', 'Party', 'Spain', '2025-06-07', 'Mango', 'Machine wash', 'Printed', 'Relaxed', 'Sleeveless', 'Round Neck'),
(7, 'Palazzo', 'Male', 'Adidas', 'images/palazzo7.jpg', 1942.96, 'Brown', 'M', 'Excellent quality', 4.4, 'Leather', 0, 10, 'Winter', 'Sports', 'India', '2025-06-08', 'Kalanjali', 'Hand wash only', 'Solid', 'Relaxed', 'Full Sleeve', 'None'),
(8, 'Track Pants', 'Kids', 'Allen Solly', 'images/trackpants8.jpg', 3684.27, 'Red', '32', 'Highly recommended', 3.8, 'Silk', 1, 25, 'All', 'Office', 'USA', '2025-06-09', 'Biba Store', 'Dry clean only', 'Floral', 'Regular Fit', 'None', 'Collar'),
(9, 'Blazer', 'Female', 'Allen Solly', 'images/blazer9.jpg', 1905.48, 'Blue', 'XL', 'Highly recommended', 4.8, 'Denim', 1, 25, 'Summer', 'Sports', 'Germany', '2025-06-10', 'Nike Store', 'Clean with damp cloth', 'Printed', 'Regular Fit', '3/4 Sleeve', 'Boat Neck'),
(10, 'Kurti', 'Kids', 'Raymond', 'images/kurti10.jpg', 2665.33, 'Cream', 'L', 'Excellent quality', 3.9, 'Cotton', 0, 5, 'All', 'Ethnic', 'India', '2025-06-11', 'Raymond', 'Clean with damp cloth', 'Zari', 'Relaxed', 'Full Sleeve', 'V-Neck'),
(11, 'Top', 'Female', 'Allen Solly', 'images/top11.jpg', 4896.49, 'Green', '42', 'Worth the price', 4.5, 'Cotton', 0, 10, 'Spring', 'Casual', 'France', '2025-06-12', 'H&M', 'Dry clean only', 'Solid', 'Slim Fit', 'Full Sleeve', 'V-Neck'),
(12, 'Palazzo', 'Female', 'Allen Solly', 'images/palazzo12.jpg', 1929.50, 'Yellow', '40', 'Stylish look', 3.5, 'Viscose', 0, 15, 'Summer', 'Office', 'India', '2025-06-13', 'Kalanjali', 'Dry clean only', 'Zari', 'Loose', 'Short Sleeve', 'None'),
(13, 'Jeans', 'Kids', 'Zara', 'images/jeans13.jpg', 622.28, 'Yellow', '36', 'Nice fit', 3.6, 'Viscose', 1, 30, 'Spring', 'Sports', 'Italy', '2025-06-14', 'H&M', 'Hand wash only', 'Striped', 'Slim Fit', 'Full Sleeve', 'Round Neck'),
(14, 'T-Shirt', 'Male', 'Kalanjali', 'images/t-shirt14.jpg', 2700.54, 'Blue', '36', 'Excellent quality', 3.6, 'Leather', 0, 30, 'All', 'Office', 'Spain', '2025-06-15', 'Adidas', 'Clean with damp cloth', 'Printed', 'Regular Fit', 'None', 'None'),
(15, 'Track Pants', 'Unisex', 'Mango', 'images/trackpants15.jpg', 1303.50, 'Red', 'L', 'Highly recommended', 3.9, 'Cotton Blend', 1, 5, 'Summer', 'Ethnic', 'Italy', '2025-06-16', 'Raymond', 'Hand wash only', 'Solid', 'Relaxed', '3/4 Sleeve', 'Collar'),
(16, 'Blazer', 'Kids', 'Zara', 'images/blazer16.jpg', 3851.18, 'Navy', '32', 'Worth the price', 3.7, 'Cotton Blend', 1, 25, 'Winter', 'Office', 'France', '2025-06-17', 'Adidas', 'Hand wash only', 'Floral', 'Loose', 'None', 'Notch Lapel'),
(17, 'Saree', 'Unisex', 'US Polo', 'images/saree17.jpg', 2857.67, 'White', '34', 'Excellent quality', 4.1, 'Viscose', 0, 0, 'Summer', 'Festive', 'USA', '2025-06-18', 'W Store', 'Cold wash', 'Striped', 'Slim Fit', 'None', 'Notch Lapel'),
(18, 'Saree', 'Kids', 'W', 'images/saree18.jpg', 4484.26, 'Navy', '34', 'Nice fit', 3.8, 'Wool Blend', 1, 15, 'Winter', 'Travel', 'Spain', '2025-06-19', 'Puma', 'Dry clean only', 'Zari', 'Loose', 'None', 'None'),
(19, 'Track Pants', 'Female', 'H&M', 'images/trackpants19.jpg', 761.63, 'Grey', 'S', 'Very comfortable', 3.9, 'Cotton Blend', 1, 5, 'Summer', 'Casual', 'Germany', '2025-06-20', 'W Store', 'Wash inside out', 'Printed', 'Relaxed', 'Short Sleeve', 'Round Neck'),
(20, 'Saree', 'Male', 'Levis', 'images/saree20.jpg', 1394.75, 'Blue', 'M', 'Very comfortable', 4.6, 'Wool Blend', 1, 15, 'Winter', 'Party', 'USA', '2025-06-21', 'Levis Outlet', 'Machine wash', 'Striped', 'Relaxed', 'Sleeveless', 'Collar'),
(21, 'Palazzo', 'Unisex', 'Puma', 'images/palazzo21.jpg', 1713.92, 'Green', '32', 'Excellent quality', 4.1, 'Polyester', 1, 0, 'Summer', 'Festive', 'Germany', '2025-06-22', 'Nike Store', 'Dry clean only', 'Zari', 'Loose', 'None', 'V-Neck'),
(22, 'Kurti', 'Male', 'Allen Solly', 'images/kurti22.jpg', 3451.41, 'Red', '34', 'Stylish look', 3.8, 'Denim', 1, 20, 'All', 'Party', 'Italy', '2025-06-23', 'Mango', 'Cold wash', 'Floral', 'Regular Fit', 'Short Sleeve', 'V-Neck'),
(23, 'Dress', 'Male', 'Biba', 'images/dress23.jpg', 2038.72, 'Cream', '40', 'Worth the price', 3.8, 'Cotton Blend', 1, 0, 'Spring', 'Festive', 'Spain', '2025-06-24', 'Mango', 'Wash inside out', 'Floral', 'Relaxed', 'Short Sleeve', 'V-Neck'),
(24, 'T-Shirt', 'Male', 'Levis', 'images/t-shirt24.jpg', 1647.46, 'Navy', 'L', 'Nice fit', 5.0, 'Denim', 1, 5, 'Winter', 'Casual', 'Spain', '2025-06-25', 'Puma', 'Delicate cycle wash', 'Floral', 'Loose', 'Sleeveless', 'V-Neck'),
(25, 'Jeans', 'Male', 'Puma', 'images/jeans25.jpg', 1786.04, 'Cream', '36', 'Stylish look', 3.6, 'Viscose', 1, 20, 'Winter', 'Ethnic', 'Italy', '2025-06-26', 'Biba Store', 'Hand wash only', 'Printed', 'Relaxed', 'Sleeveless', 'Collar'),
(26, 'Jeans', 'Female', 'Biba', 'images/jeans26.jpg', 1079.22, 'Pink', 'S', 'Excellent quality', 4.1, 'Viscose', 1, 30, 'Summer', 'Ethnic', 'Italy', '2025-06-27', 'Kalanjali', 'Clean with damp cloth', 'Solid', 'Slim Fit', 'Sleeveless', 'Collar'),
(27, 'Top', 'Female', 'Raymond', 'images/top27.jpg', 1248.18, 'Navy', 'Free', 'Stylish look', 4.0, 'Polyester', 1, 5, 'Winter', 'Festive', 'Italy', '2025-06-28', 'Kalanjali', 'Clean with damp cloth', 'Solid', 'Slim Fit', 'None', 'Boat Neck'),
(28, 'T-Shirt', 'Male', 'Zara', 'images/t-shirt28.jpg', 1698.57, 'Green', '42', 'Stylish look', 3.6, 'Cotton Blend', 1, 0, 'Winter', 'Party', 'India', '2025-06-29', 'US Polo', 'Clean with damp cloth', 'Zari', 'Loose', 'Sleeveless', 'Crew Neck'),
(29, 'T-Shirt', 'Unisex', 'Raymond', 'images/t-shirt29.jpg', 3265.12, 'Navy', 'XL', 'Stylish look', 5.0, 'Polyester', 1, 15, 'All', 'Sports', 'USA', '2025-06-30', 'W Store', 'Machine wash', 'Solid', 'Relaxed', 'None', 'None'),
(30, 'Jeans', 'Unisex', 'Biba', 'images/jeans30.jpg', 1562.35, 'Blue', 'XL', 'Highly recommended', 4.1, 'Denim', 0, 30, 'Summer', 'Casual', 'India', '2025-07-01', 'Kalanjali', 'Clean with damp cloth', 'Solid', 'Loose', '3/4 Sleeve', 'Crew Neck'),
(31, 'Saree', 'Male', 'Biba', 'images/saree31.jpg', 4506.54, 'Pink', '34', 'Nice fit', 3.9, 'Cotton Blend', 1, 0, 'Summer', 'Casual', 'Spain', '2025-07-02', 'Raymond', 'Wash inside out', 'Zari', 'Relaxed', 'Full Sleeve', 'None'),
(32, 'Palazzo', 'Male', 'Raymond', 'images/palazzo32.jpg', 1859.58, 'Green', '34', 'Very comfortable', 4.0, 'Viscose', 1, 20, 'Spring', 'Festive', 'Spain', '2025-07-03', 'Raymond', 'Clean with damp cloth', 'Floral', 'Relaxed', 'Short Sleeve', 'Notch Lapel'),
(33, 'Jeans', 'Unisex', 'Kalanjali', 'images/jeans33.jpg', 1775.83, 'Cream', 'XL', 'Nice fit', 3.9, 'Viscose', 0, 10, 'Spring', 'Casual', 'Spain', '2025-07-04', 'Zara', 'Machine wash', 'Striped', 'Loose', 'None', 'None'),
(34, 'T-Shirt', 'Kids', 'Kalanjali', 'images/t-shirt34.jpg', 1509.13, 'Red', '40', 'Excellent quality', 4.0, 'Viscose', 0, 5, 'Winter', 'Ethnic', 'India', '2025-07-05', 'H&M', 'Hand wash only', 'Solid', 'Loose', '3/4 Sleeve', 'Round Neck'),
(35, 'Saree', 'Unisex', 'Mango', 'images/saree35.jpg', 4783.59, 'White', 'M', 'Stylish look', 4.6, 'Cotton Blend', 1, 0, 'Winter', 'Festive', 'Italy', '2025-07-06', 'Levis Outlet', 'Clean with damp cloth', 'Striped', 'Relaxed', '3/4 Sleeve', 'Notch Lapel'),
(36, 'Saree', 'Male', 'US Polo', 'images/saree36.jpg', 4537.70, 'Blue', 'L', 'Very comfortable', 4.5, 'Viscose', 0, 15, 'All', 'Travel', 'Spain', '2025-07-07', 'Raymond', 'Clean with damp cloth', 'Printed', 'Relaxed', '3/4 Sleeve', 'None'),
(37, 'Palazzo', 'Female', 'Levis', 'images/palazzo37.jpg', 2731.07, 'Red', '40', 'Very comfortable', 4.5, 'Viscose', 1, 10, 'Spring', 'Office', 'Italy', '2025-07-08', 'Puma', 'Clean with damp cloth', 'Striped', 'Loose', 'None', 'Round Neck'),
(38, 'Dress', 'Kids', 'Zara', 'images/dress38.jpg', 667.68, 'Navy', 'Free', 'Nice fit', 4.9, 'Polyester', 0, 5, 'Spring', 'Ethnic', 'Germany', '2025-07-09', 'US Polo', 'Delicate cycle wash', 'Floral', 'Slim Fit', 'Sleeveless', 'Boat Neck'),
(39, 'Blazer', 'Unisex', 'Allen Solly', 'images/blazer39.jpg', 4846.53, 'Blue', 'L', 'Very comfortable', 3.8, 'Leather', 1, 10, 'Winter', 'Sports', 'Spain', '2025-07-10', 'Kalanjali', 'Dry clean only', 'Floral', 'Regular Fit', 'Sleeveless', 'Boat Neck'),
(40, 'Track Pants', 'Male', 'H&M', 'images/trackpants40.jpg', 1458.22, 'Yellow', '42', 'Excellent quality', 4.0, 'Silk', 1, 30, 'Summer', 'Ethnic', 'Germany', '2025-07-11', 'Kalanjali', 'Clean with damp cloth', 'Striped', 'Slim Fit', 'Sleeveless', 'V-Neck'),
(41, 'Palazzo', 'Male', 'Allen Solly', 'images/palazzo41.jpg', 2824.21, 'Black', '36', 'Nice fit', 4.1, 'Wool Blend', 1, 30, 'Summer', 'Ethnic', 'USA', '2025-07-12', 'Zara', 'Dry clean only', 'Zari', 'Regular Fit', 'Sleeveless', 'V-Neck'),
(42, 'Palazzo', 'Unisex', 'Levis', 'images/palazzo42.jpg', 4916.27, 'Blue', 'Free', 'Worth the price', 3.6, 'Silk', 1, 5, 'Spring', 'Sports', 'France', '2025-07-13', 'Raymond', 'Machine wash', 'Solid', 'Loose', 'None', 'Collar'),
(43, 'Saree', 'Kids', 'Zara', 'images/saree43.jpg', 1759.11, 'Navy', 'S', 'Highly recommended', 4.6, 'Viscose', 1, 5, 'All', 'Travel', 'Italy', '2025-07-14', 'H&M', 'Hand wash only', 'Printed', 'Loose', 'None', 'Crew Neck'),
(44, 'Top', 'Kids', 'US Polo', 'images/top44.jpg', 3846.52, 'Pink', '40', 'Worth the price', 3.6, 'Denim', 1, 15, 'Summer', 'Casual', 'Italy', '2025-07-15', 'Puma', 'Hand wash only', 'Printed', 'Regular Fit', 'Full Sleeve', 'Round Neck'),
(45, 'Shirt', 'Kids', 'Nike', 'images/shirt45.jpg', 1572.35, 'White', 'S', 'Worth the price', 3.7, 'Cotton Blend', 1, 0, 'Summer', 'Casual', 'Germany', '2025-07-16', 'Levis Outlet', 'Machine wash', 'Striped', 'Relaxed', '3/4 Sleeve', 'Collar'),
(46, 'Palazzo', 'Unisex', 'Levis', 'images/palazzo46.jpg', 2581.67, 'Black', 'Free', 'Highly recommended', 4.0, 'Wool Blend', 0, 25, 'All', 'Office', 'India', '2025-07-17', 'US Polo', 'Hand wash only', 'Solid', 'Slim Fit', '3/4 Sleeve', 'Collar'),
(47, 'Top', 'Kids', 'Adidas', 'images/top47.jpg', 3330.29, 'Black', 'L', 'Very comfortable', 3.8, 'Wool Blend', 1, 25, 'Winter', 'Sports', 'USA', '2025-07-18', 'Levis Outlet', 'Delicate cycle wash', 'Solid', 'Relaxed', 'Short Sleeve', 'Notch Lapel'),
(48, 'Saree', 'Female', 'Kalanjali', 'images/saree48.jpg', 2513.64, 'Pink', 'Free', 'Worth the price', 3.9, 'Denim', 1, 20, 'Winter', 'Formal', 'USA', '2025-07-19', 'W Store', 'Delicate cycle wash', 'Zari', 'Relaxed', '3/4 Sleeve', 'Crew Neck'),
(49, 'Palazzo', 'Male', 'Biba', 'images/palazzo49.jpg', 1863.58, 'White', 'L', 'Stylish look', 4.1, 'Leather', 1, 30, 'All', 'Formal', 'USA', '2025-07-20', 'Biba Store', 'Wash inside out', 'Zari', 'Relaxed', 'Short Sleeve', 'None'),
(50, 'Jacket', 'Unisex', 'W', 'images/jacket50.jpg', 4177.31, 'Red', 'L', 'Stylish look', 4.1, 'Wool Blend', 1, 5, 'Winter', 'Office', 'USA', '2025-07-21', 'H&M', 'Hand wash only', 'Solid', 'Regular Fit', 'Short Sleeve', 'None');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `clothstore`
--
ALTER TABLE `clothstore`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products_sample`
--
ALTER TABLE `products_sample`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clothstore`
--
ALTER TABLE `clothstore`
  MODIFY `customer_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products_sample` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
