-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 07:45 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_id`, `product_name`, `quantity`, `price`) VALUES
(2, 1520150575, 'Moong Dal', 1, 71),
(4, 1520150575, 'Channa', 1, 65),
(5, 1520150575, 'Rash Cream', 1, 55),
(6, 1520751919, 'Sona-Masoori-Rice', 1, 84),
(9, 1520751919, 'Fortune-Sunflower', 1, 498),
(10, 1520751919, 'Channa', 1, 65),
(11, 1520751919, 'Fry Pan', 1, 399),
(12, 1520751919, 'Tropicana', 1, 65),
(13, 1520751919, 'Samsung J2', 1, 6799),
(14, 1520756501, 'Toor Dal', 1, 39),
(15, 1520756501, 'Rash Cream', 1, 55),
(16, 1520757219, 'Fry Pan', 1, 399),
(17, 1520757219, 'Frooti', 1, 63),
(18, 1520757378, 'Tropicana', 1, 65),
(19, 1520757464, 'Aquafina', 1, 18),
(20, 1520757464, 'Baby Lotion', 1, 185),
(21, 1520757464, 'Cookware', 1, 299),
(22, 1521874889, 'Parryss-Sugar', 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_desc`) VALUES
(3, 'Groceries', 'this is groceries category'),
(6, 'Household', 'This is household category'),
(7, 'Personal Care', 'this is personal care category'),
(8, 'Packaged Foods', 'This is packaged food category'),
(9, 'Beverages', 'this is beverages'),
(11, 'Electronics', 'Thisis electronics category');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipcode` int(6) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `cardtype` varchar(30) NOT NULL,
  `cardnumber` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `customer_id`, `amount`, `firstname`, `lastname`, `address`, `city`, `state`, `zipcode`, `phone`, `email`, `cardtype`, `cardnumber`, `cvv`, `month`, `year`) VALUES
(5, 1520757464, 552, 'vikasj', 'sinha', 'd-58', 'noida', 'up', 232323, 2323232323, 'vikash.sinha101@gmail.com', 'visa', '234234234', 343, 4, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_category` varchar(30) NOT NULL,
  `p_sub_category` varchar(40) NOT NULL,
  `p_description` text NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `p_name`, `p_category`, `p_sub_category`, `p_description`, `price`, `sale_price`, `image`) VALUES
(2, 'Toor Dal', 'Groceries', 'Dals & Pulses', 'This is toor dal', 55, 40, '1522126687_15.png'),
(3, 'Fry Pan', 'Household', 'cookware', 'This is fripan', 499, 449, '1522129315_hh7.png'),
(4, 'Baby Lotion', 'Personal Care', 'Baby shop', 'KLJ HFKJH ASDKJFH KJSAD HFKJLSDAFJK', 195, 185, '1522129415_aa.jpg'),
(5, 'Frooti', 'Beverages', 'Cold Drink', '', 90, 87, 'default.png'),
(6, 'Cookware', 'Household', 'cookware', 'asdasdasd', 399, 299, 'default.png'),
(7, 'Rash Cream', 'Personal Care', 'Baby shop', 'asdfasd', 59, 55, 'default.png'),
(8, 'Channa', 'Groceries', 'Dals & Pulses', 'asdsa', 67, 65, 'default.png'),
(9, 'Moong Dal', 'Groceries', 'Dals & Pulses', 'Moong Dal', 78, 71, 'default.png'),
(10, 'Sona-Masoori-Rice', 'Groceries', 'Dals & Pulses', '', 89, 84, 'default.png'),
(13, 'Parryss-Sugar', 'Packaged Foods', 'Baby food', 'asd', 55, 32, 'default.png'),
(14, 'Aquafina', 'Packaged Foods', 'water', 'qdeqd', 20, 18, 'default.png'),
(15, 'Frooti', 'Beverages', 'Cold Drink', 'dfg', 66, 63, 'default.png'),
(16, 'Tropicana', 'Beverages', 'Cold Drink', 'sdf', 66, 65, 'default.png'),
(17, 'Samsung J2', 'Electronics', 'Mobile', '', 6999, 6799, 'default.png'),
(18, 'Aquafina', 'Packaged Foods', 'water', 'qdeqd', 20, 17, 'default.png'),
(25, 'test product ', 'Groceries', 'Dals & Pulses', 'test product ', 66, 55, 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `sub_cat_name` varchar(30) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `sub_cat_name`, `cat_name`, `description`) VALUES
(2, 'Dals & Pulses', 'Groceries', 'This is dal and pulses'),
(3, 'cookware', 'Household', 'this is cookware '),
(4, 'almonds', 'Groceries', 'this is almond'),
(5, 'Cashews', 'Groceries', 'th is is cashews'),
(6, 'Dust Pans', 'Household', 'this is dust pans'),
(7, 'Scrubbers', 'Household', 'Th is is scrubbers'),
(8, 'Baby shop', 'Personal Care', 'This areis personal c'),
(9, 'Mukhwas', 'Groceries', '\r\nThis is demo'),
(11, 'Cold Drink', 'Beverages', 'csmcv'),
(12, 'Mobile', 'Electronics', 'This is mobile'),
(13, 'Cosmetic', 'Personal Care', 'aed'),
(14, 'Baby food', 'Packaged Foods', 'this is baby food'),
(15, 'Desert item', 'Packaged Foods', 'asdfa'),
(16, 'water', 'Packaged Foods', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `todayoffer`
--

CREATE TABLE `todayoffer` (
  `id` int(11) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_category` varchar(30) NOT NULL,
  `p_sub_category` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `image` varchar(40) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todayoffer`
--

INSERT INTO `todayoffer` (`id`, `p_name`, `p_category`, `p_sub_category`, `price`, `sale_price`, `image`) VALUES
(1, 'Sona-Masoori-Rice', 'Groceries', 'Dals & Pulses', 88, 81, 'default.png'),
(2, 'Milky-Mist-Paneer', 'Groceries', 'Dals & Pulses', 45, 30, 'default.png'),
(3, 'Basmati-Rice', 'Groceries', 'Dals & Pulses', 105, 80, 'default.png'),
(4, 'Fortune-Sunflower', 'Groceries', 'Dals & Pulses', 500, 498, 'default.png'),
(5, 'Nestle-A-Slim', 'Groceries', 'almonds', 77, 67, 'default.png'),
(6, 'Bread-Sandwich', 'Groceries', 'Cashews', 45, 43, 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todayoffer`
--
ALTER TABLE `todayoffer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `todayoffer`
--
ALTER TABLE `todayoffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
