-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2017 at 03:56 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progati`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_info`
--

CREATE TABLE `access_info` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `login_period` datetime NOT NULL,
  `logout_period` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_info`
--

INSERT INTO `access_info` (`user_id`, `login_period`, `logout_period`) VALUES
(1, '2017-08-20 15:01:11', '0000-00-00 00:00:00'),
(1, '2017-08-20 15:33:12', '2017-08-20 17:10:52'),
(1, '2017-08-20 16:09:35', '0000-00-00 00:00:00'),
(1, '2017-08-20 16:18:59', '0000-00-00 00:00:00'),
(1, '2017-08-20 17:10:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(10) UNSIGNED NOT NULL,
  `datetime` date NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `holder_name` varchar(255) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `init_balance` decimal(10,2) NOT NULL,
  `pre_balance` int(100) NOT NULL,
  `showroom_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `datetime`, `bank_name`, `holder_name`, `account_number`, `init_balance`, `pre_balance`, `showroom_id`) VALUES
(2, '2017-08-14', 'Brac_Bank_Ltd', 'Maruf Hasan', '123456', '0.00', 2500, 'godown'),
(3, '2017-08-16', 'Sonali_Bank_Limited', 'Test - 1', '5236987412', '0.00', 4500, 'godown'),
(4, '2017-08-16', 'Sonali_Bank_Limited', 'Test user', '52369871223', '0.00', 1000, '01');

-- --------------------------------------------------------

--
-- Table structure for table `bonus_structure`
--

CREATE TABLE `bonus_structure` (
  `id` int(10) UNSIGNED NOT NULL,
  `eid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fields` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` decimal(10,2) NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `datetime` date NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `datetime`, `category`, `slug`, `type`) VALUES
(6, '2017-08-03', 'Cement', 'cement', 'Cement'),
(7, '2017-08-03', 'Rod', 'rod', 'Rod'),
(8, '2017-08-03', 'Tiles & Ceramics', 'tiles-&-ceramics', 'Tiles & Ceramics'),
(9, '2017-08-15', 'Corporate sim', 'corporate-sim', 'Telecommunication'),
(10, '2017-08-16', 'BSRM', 'bsrm', 'Rod');

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `spender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `showroom_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`id`, `date`, `type`, `purpose`, `amount`, `spender`, `remarks`, `showroom_id`) VALUES
(1, '2017-08-03', 'General Cost', 'TA/DA Cost', '500.00', 'Rony Debnath', '', 'godown'),
(3, '2017-08-09', 'Official Cost', 'Truck Fuel Cost', '5000.00', 'test', '', 'godown'),
(4, '2017-08-09', 'Official Cost', 'Electric Bill', '200.00', 'test', '', 'godown'),
(5, '2017-08-09', 'Official Cost', 'Mobil Bill', '150.00', 'test', '', 'godown'),
(6, '2017-08-09', 'General Cost', 'TA/DA Cost', '500.00', 'test', '', 'godown'),
(7, '2017-08-09', 'General Cost', 'Resident Cost', '522.00', 'test', '', 'godown'),
(8, '2017-08-14', 'General Cost', 'TA/DA Cost', '200.00', 'Netrokuna, Jibon', '', 'godown'),
(9, '2017-08-01', 'General Cost', 'TA/DA Cost', '1500.00', 'hello', ' Good', 'godown'),
(10, '2017-08-12', 'General Cost', 'TA/DA Cost', '123.00', 'Test', 'This is a test Cost', 'godown'),
(11, '2017-08-17', 'physical_cost', 'Test Purpose', '852.00', 'Test', 'Physical Cost', 'godown');

-- --------------------------------------------------------

--
-- Table structure for table `deduction_structure`
--

CREATE TABLE `deduction_structure` (
  `id` int(10) UNSIGNED NOT NULL,
  `eid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fields` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deduction_structure`
--

INSERT INTO `deduction_structure` (`id`, `eid`, `fields`, `amount`, `remarks`, `status`) VALUES
(1, '1111', 'Advanced Pay', '500.00', '', ''),
(2, '1111', 'Professional Tax ', '0.00', '', ''),
(3, '1111', 'Loan', '0.00', '', ''),
(4, '1111', 'Provisional Fund', '0.00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `distribute_record`
--

CREATE TABLE `distribute_record` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `do_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `showroom_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `distribute_record`
--

INSERT INTO `distribute_record` (`id`, `date`, `do_no`, `showroom_id`, `product_name`, `quantity`, `amount`) VALUES
(1, '2017-07-04', 'D102', '01', 'Holcim', '20', '10000.00'),
(2, '2017-07-04', ' D-123', '02', 'Holcim', '25', '12500.00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `emp_id` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `present_address` text COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` text COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employee_salary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `showroom_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `date`, `emp_id`, `name`, `joining_date`, `gender`, `mobile`, `email`, `present_address`, `permanent_address`, `designation`, `employee_salary`, `path`, `status`, `showroom_id`) VALUES
(2, '2017-08-09', 1111, 'Demo Name', '2017-08-09', 'Male', '01775219457', '', 'Mymensingh', 'Mymensingh', 'Director', '', 'public/employee/employee_17555_1111.png', 'active', 'godown');

-- --------------------------------------------------------

--
-- Table structure for table `front_product`
--

CREATE TABLE `front_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_product`
--

INSERT INTO `front_product` (`id`, `date`, `category`, `image`) VALUES
(3, '2017-07-02', 'cement', 'public/upload/product/ru6doc9t21P85.jpg'),
(4, '2017-07-02', 'cement', 'public/upload/product/805douP3r7c4t.jpg'),
(5, '2017-07-02', 'cement', 'public/upload/product/001uro5dP4tc2.jpg'),
(6, '2017-07-02', 'cement', 'public/upload/product/5t1oP573rd1uc.jpg'),
(7, '2017-07-02', 'cement', 'public/upload/product/0r21Po3u9ctd2.jpg'),
(8, '2017-07-02', 'cement', 'public/upload/product/ot89800u5Prdc.png'),
(9, '2017-07-02', 'steel', 'public/upload/product/c28rt8P72dou6.png'),
(10, '2017-07-02', 'steel', 'public/upload/product/P6r6u54o5c0dt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) UNSIGNED NOT NULL,
  `gallery_date` date NOT NULL,
  `gallery_title` varchar(255) NOT NULL,
  `gallery_path` varchar(255) NOT NULL,
  `position` int(255) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `trash` varchar(10) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `gallery_date`, `gallery_title`, `gallery_path`, `position`, `album`, `trash`) VALUES
(4, '0000-00-00', 'Image', 'public/gallery/gallery9251.JPG', 3, NULL, 'false'),
(5, '0000-00-00', 'Image', 'public/gallery/gallery7405.JPG', 5, NULL, 'true'),
(6, '0000-00-00', 'Image', 'public/gallery/gallery5559.jpg', 8, NULL, 'false'),
(7, '0000-00-00', 'Image', 'public/gallery/gallery3496.jpg', 2, NULL, 'false'),
(8, '0000-00-00', 'Image', 'public/gallery/gallery9279.jpg', 1, NULL, 'false'),
(9, '0000-00-00', 'Image', 'public/gallery/gallery6928.png', 6, NULL, 'false'),
(10, '0000-00-00', 'Image', 'public/gallery/gallery1617.jpg', 9, NULL, 'false'),
(11, '0000-00-00', 'Image', 'public/gallery/gallery1832.png', 10, NULL, 'false'),
(12, '0000-00-00', 'Image', 'public/gallery/gallery5998.png', 7, NULL, 'false'),
(13, '0000-00-00', 'Image', 'public/gallery/gallery8270.png', 4, NULL, 'false'),
(14, '0000-00-00', 'Image', 'public/gallery/gallery8003.jpg', 0, NULL, 'false'),
(15, '0000-00-00', 'Image', 'public/gallery/gallery9060.jpg', 0, NULL, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `godowns`
--

CREATE TABLE `godowns` (
  `id` int(10) UNSIGNED NOT NULL,
  `place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `supervisor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incentive_structure`
--

CREATE TABLE `incentive_structure` (
  `id` int(10) UNSIGNED NOT NULL,
  `eid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fields` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` decimal(10,2) NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `incentive_structure`
--

INSERT INTO `incentive_structure` (`id`, `eid`, `fields`, `percentage`, `remarks`, `status`) VALUES
(6, '1111', 'HRA', '10.00', 'Unknown', ''),
(7, '1111', 'DA', '10.00', 'Unknown', ''),
(8, '1111', 'TA', '10.00', 'Unknown', ''),
(9, '1111', 'CCA', '10.00', 'Unknown', ''),
(10, '1111', 'Medical', '10.00', 'Unknown', '');

-- --------------------------------------------------------

--
-- Table structure for table `initial_transaction`
--

CREATE TABLE `initial_transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `member` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `receive` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `account_no` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `contact_info` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `address` text COLLATE utf8_croatian_ci NOT NULL,
  `loan_type` varchar(100) COLLATE utf8_croatian_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `loan_by` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_croatian_ci NOT NULL DEFAULT 'Open',
  `remarks` text COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `date`, `type`, `name`, `branch`, `account_no`, `contact_info`, `address`, `loan_type`, `amount`, `loan_by`, `status`, `remarks`) VALUES
(6, '2017-08-13', 'Person', 'Demo Name test', '', '', '01985698785', 'test test', 'Received', '100.00', 'test test', 'Closed', '2222'),
(9, '2017-08-13', 'Bank', 'Janata_Bank_Ltd', 'Mymensingh', '52698574587', '01965868574', 'Mymensingh', 'Paid', '500000.00', 'Demo', 'Open', '11111'),
(10, '2017-08-13', 'Person', 'Test 1', '', '', '01523654857', 'test 1', 'Paid', '500000.00', 'test 1', 'Open', 'This is test data.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `messages_date` varchar(20) NOT NULL,
  `messages_name` varchar(250) NOT NULL,
  `messages_mobile` varchar(50) NOT NULL,
  `messages_text` text NOT NULL,
  `messages_condition` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `products` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `price` varchar(11) COLLATE utf8_croatian_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `upazila` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `delivary_date` date NOT NULL,
  `order_by` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `address` text COLLATE utf8_croatian_ci NOT NULL,
  `remark` text COLLATE utf8_croatian_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_croatian_ci NOT NULL COMMENT 'pending/complete',
  `showroom_id` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `company`, `products`, `price`, `amount`, `mobile_number`, `district`, `upazila`, `delivary_date`, `order_by`, `address`, `remark`, `status`, `showroom_id`) VALUES
(3, 'Shelly Odonnell', 'Stanton Pace Co', 'Eum quibusdam sed et error anim qui sunt cum dolor error omnis id accusantium at quo atque eu dolorum', '366', 'Libero odit veniam enim dolor nisi nulla quibusdam voluptas', '876', 'Rajbari', 'Baliakandi ', '2017-07-27', 'Abdullah', 'Aut ab laudantium, explicabo. Quasi recusandae. Officia sunt eaque et quo reiciendis temporibus odit voluptates saepe eligendi.', 'Qui in libero sed cillum quae cum sunt qui illum, voluptatem error delectus, voluptas saepe.', 'pending', '01'),
(4, 'Chantale Mccall', 'Duran Blanchard Traders', 'Ex voluptas odit ab ex vitae expedita ut dolores accusantium adipisci non error dolor neque', '16', 'Ullamco rerum corporis esse laudantium nostrud et quae voluptatibus modi quaerat labore quae vitae vel ut ut in', '425', 'Chandpur', 'Chandpur Sadar', '2017-07-26', 'Abdullah', 'Et quia ut est in eu accusamus esse, ut exercitationem odit ea laudantium, dolorum blanditiis id mollitia iste.', 'Aliquip fugiat, consequatur, ea nisi magna id fugiat, expedita unde consequuntur id, omnis.', 'pending', '01'),
(5, 'Fiona Edwards', 'Mosley and Hines Associates', 'Voluptatem', '838', '500 Bag', '126', 'Sherpur', 'Jhenaigati ', '2017-07-27', 'Abdullah', 'Voluptas nisi nesciunt, omnis error qui corrupti, reprehenderit, reprehenderit a libero quis.', 'In cumque qui nemo cillum autem tempora maxime esse, id, cumque.', 'pending', '01'),
(6, 'Gregory Alston', 'Daniels Munoz Co', 'Consequat Sint qui ut qui facere beatae aperiam omnis deleniti voluptatem temporibus quas', '723', 'Dolor consectetur sint id eos dolore sit quia', '871', 'Thakurgaon', 'Thakurgaon Sadar ', '2017-07-27', 'Abdullah', 'Ullam qui consequatur? Sit, vel rerum deleniti consequatur odit atque dolorum.', 'Tenetur quas asperiores in labore non proident, tempora vitae est anim est.', 'pending', '01'),
(8, 'Beau Wise', 'Oneil Berg Trading', 'Obcaecati et excepteur vel pariatur Optio odio iste', '210', '50', '80', 'Bagerhat', 'Bagerhat Sadar', '2017-07-30', '0001', 'Anim voluptatum pariatur Sed incidunt consequatur est', 'Quos velit ratione in voluptate omnis autem in lorem cumque voluptatem in', 'pending', '01');

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` int(50) UNSIGNED NOT NULL,
  `opening` date NOT NULL,
  `code` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `proprietor` varchar(255) NOT NULL,
  `contact` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `type` varchar(45) NOT NULL,
  `ctype` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'active' COMMENT 'active or deactivate',
  `showroom_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `opening`, `code`, `name`, `proprietor`, `contact`, `zone`, `area`, `address`, `email`, `username`, `password`, `photo`, `type`, `ctype`, `status`, `showroom_id`) VALUES
(1, '2017-08-03', '0001', 'Nirman Traders', 'Md. Tuhin', '01712720453', 'Mymensingh', 'Mymensingh Sodar', 'Aqua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(2, '2017-08-03', '0002', 'Alif Ent.', 'Asaduzzaman', '01724198950', 'Mymensingh', 'Mymensingh Sodar', 'Aqua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(3, '2017-08-03', '0003', 'Dulal Traders', 'Md. Dulal', '01711144673', 'Mymensingh', 'Mymensingh Sodar', 'Shankipara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(4, '2017-08-03', '0004', 'Rian Ent.', 'Md. Mustafa', '01715119862', 'Mymensingh', 'Mymensingh Sodar', 'Vatikashor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(5, '2017-08-03', '0005', 'Anik Mukti Enterprise', 'Harun Ur Rosid', '01911765452', 'Mymensingh', 'Mymensingh Sodar', 'Police Line', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(6, '2017-08-03', '0006', 'Tamim Traders', 'Saiful Islam', '01727017330', 'Mymensingh', 'Mymensingh Sodar', 'Aqua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(7, '2017-08-03', '0007', 'Tarikot Steel', 'Aminul Islam', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(8, '2017-08-03', '0008', 'Rasel Enterprise', 'Delwar', '01718176185', 'Mymensingh', 'Mymensingh Sodar', 'Akua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(9, '2017-08-03', '0009', 'Robin Ent.', 'Md. Niro', '01728743453', 'Mymensingh', 'Mymensingh Sodar', 'Bolashpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(10, '2017-08-03', '0010', 'Abdillah & Son''s', 'Md. Jakir Hosain', '01670405617', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(11, '2017-08-03', '0011', 'Hazi Ent.', 'Md. Suvas', '01839469969', 'Mymensingh', 'Mymensingh Sodar', 'Digharkanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(12, '2017-08-03', '0012', 'Kasem Traders', 'Kashem Khan', '01713571703', 'Mymensingh', 'Mymensingh Sodar', 'Sankipara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(13, '2017-08-03', '0013', 'M.A.H Enterprise', '', '01710582466', 'Mymensingh', 'Mymensingh Sodar', 'Aqua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(14, '2017-08-03', '0014', 'Manik Ent.', 'Md. Hira', '01716459274', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(15, '2017-08-03', '0015', 'Sordar Traders', 'Mahbub Sordar', '01688858436', 'Mymensingh', 'Mymensingh Sodar', 'Baghmara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(16, '2017-08-03', '0016', 'Tushar Ent.', 'Belal Ahmed', '01715226478', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(17, '2017-08-03', '0017', 'Rasel Enterprise', 'Rasel', '01718718992', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(18, '2017-08-03', '0018', 'Tania Enterprise', 'Fayjur Rahman', '01712366698', 'Mymensingh', 'Mymensingh Sodar', 'Kathgola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(19, '2017-08-03', '0019', 'Asha Traders', 'Delip/Arif', '01720539350', 'Mymensingh', 'Mymensingh Sodar', 'Jamtola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(20, '2017-08-03', '0020', 'Hanif Traders', 'Md Belal Hosain', '01715010084', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(21, '2017-08-03', '0021', 'Meer Trading', '', '01714085302', 'Mymensingh', 'Mymensingh Sodar', 'Zila School more', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(22, '2017-08-03', '0022', 'Jalal Traders', 'Jalal Uddin', '01732322323', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(23, '2017-08-03', '0023', 'Bhai Bhai Traders', 'Azhar Uddin', '01711783318', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(24, '2017-08-03', '0024', 'Sohel Ent', '', '00', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(25, '2017-08-03', '0025', 'Raihan Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chukaitola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(26, '2017-08-03', '0026', 'Shah Bugdadia', '', '01717838726', 'Mymensingh', 'Mymensingh Sodar', 'Sankipara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(27, '2017-08-03', '0027', 'Chan Mia Store', '', '01823472886', 'Mymensingh', 'Mymensingh Sodar', 'Akua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(28, '2017-08-03', '0028', 'Sumon Traders', '', '01913466319', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(29, '2017-08-03', '0029', 'Sarif Enterprise', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(30, '2017-08-03', '0030', 'Bhi Bhi Traders New', '', '01716257375', 'Mymensingh', 'Mymensingh Sodar', 'Sutiakhali', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(31, '2017-08-03', '0031', 'Labiba Ent.', '', '01726015086', 'Mymensingh', 'Mymensingh Sodar', 'Sankipara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(32, '2017-08-03', '0032', 'Mustafa Traders', '', '01933731740', 'Mymensingh', 'Mymensingh Sodar', 'Akua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(33, '2017-08-03', '0033', 'Nafiz Enterprise', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Gohalilkandi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(34, '2017-08-03', '0034', 'Fazlur Rahman', 'Fazlur Rahman', '01711515104', 'Mymensingh', 'Mymensingh Sodar', 'Aqua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(35, '2017-08-03', '0035', 'Bhi Bhi Traders Bypas', '', '01713549918', 'Mymensingh', 'Mymensingh Sodar', 'Bypass', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(36, '2017-08-03', '0036', 'Tajul Enterprise', '', '01624676500', 'Mymensingh', 'Mymensingh Sodar', 'Vatikashor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(37, '2017-08-03', '0037', 'BMA Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'BAU Shesmore', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(38, '2017-08-03', '0038', 'Taher Medicine', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Ghunti', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(39, '2017-08-03', '0039', 'Arafat Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chukaitola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(40, '2017-08-03', '0040', 'Anwar Enterprise Ashraf', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Akua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(41, '2017-08-03', '0041', 'Mokhless & Brother''s', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Kanchijuli', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(42, '2017-08-03', '0042', 'Ador Enterprise', '', '01728875822', 'Mymensingh', 'Mymensingh Sodar', 'Akua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(43, '2017-08-03', '0043', 'Akonda Traders', 'Md. Suhag', '01712476905', 'Mymensingh', 'Mymensingh Sodar', 'Churkhai', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(44, '2017-08-03', '0044', 'Polash Traders', '', '01711940846', 'Mymensingh', 'Mymensingh Sodar', 'Akua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(45, '2017-08-03', '0045', 'Hazi Muslem Uddin', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Bora Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(46, '2017-08-03', '0046', 'Kashem Traders BAU', '', '01722081918', 'Mymensingh', 'Mymensingh Sodar', 'BAU Shesmore', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(47, '2017-08-03', '0047', 'Maa Enterprise New', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Rahmotpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(48, '2017-08-03', '0048', 'Nesa Ent.', '', '01774715183', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(49, '2017-08-03', '0049', 'Omar Farukh Ent.', '', '01722000662', 'Mymensingh', 'Mymensingh Sodar', 'Kachijhuli', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(50, '2017-08-03', '0050', 'Momen Trading', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chotobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(51, '2017-08-03', '0051', 'New Constroction', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(52, '2017-08-03', '0052', 'Bappy Traders', '', '01714788656', 'Mymensingh', 'Mymensingh Sodar', 'Natok Ghorlane', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(53, '2017-08-03', '0053', 'Prothom Ent.', '', '01943625929', 'Mymensingh', 'Mymensingh Sodar', 'Tinkona Pukur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(54, '2017-08-03', '0054', 'Hazi Asmot Ali', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(55, '2017-08-03', '0055', 'Kutir Design', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Dewkhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(56, '2017-08-03', '0056', 'Niaz Ent.', '', '01711114008', 'Mymensingh', 'Mymensingh Sodar', 'Baghmara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(57, '2017-08-03', '0057', 'Suruzzaman & Co.', '', '01711619330', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(58, '2017-08-03', '0058', 'FS Enterprise', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Bora Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(59, '2017-08-03', '0059', 'Islam Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'College Road', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(60, '2017-08-03', '0060', 'Hima Enterprise', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Dapunia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(61, '2017-08-03', '0061', 'Arif Enterprise', '', '01724198950', 'Mymensingh', 'Mymensingh Sodar', 'kachijuli', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(62, '2017-08-03', '0062', 'Bismillah Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Kewatkhali', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(63, '2017-08-03', '0063', 'Julkarnayn Ent.', '', '01911909066', 'Mymensingh', 'Mymensingh Sodar', 'Kachijhuli', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(64, '2017-08-03', '0064', 'Sayem Ent.', '', '01719263346', 'Mymensingh', 'Mymensingh Sodar', 'Kaotkhali', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(65, '2017-08-03', '0065', 'Maa Ent.', '', '01728796284', 'Mymensingh', 'Mymensingh Sodar', 'katgola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(66, '2017-08-03', '0066', 'Doyel Ent.', '', '01712225918', 'Mymensingh', 'Mymensingh Sodar', 'Aqua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(67, '2017-08-03', '0067', 'Moulana & Bro', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Sadar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(68, '2017-08-03', '0068', 'Prodip Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(69, '2017-08-03', '0069', 'Agroni Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(70, '2017-08-03', '0070', 'A R Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shankipara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(71, '2017-08-03', '0071', 'Khan Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Patgodam', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(72, '2017-08-03', '0072', 'Khairul Saheb', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Golkibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(73, '2017-08-03', '0073', 'Sufia Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Aqua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(74, '2017-08-03', '0074', 'Zaman & Co.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Dhopahola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(75, '2017-08-03', '0075', 'Karim Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(76, '2017-08-03', '0076', 'Mahdi Enterprise', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Kristopur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(77, '2017-08-03', '0077', 'Jonota Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(78, '2017-08-03', '0078', 'Deloar Ent.', '', '01716507352', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(79, '2017-08-03', '0079', 'Sarkar Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(80, '2017-08-03', '0080', 'Bonna Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Vatikashor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(81, '2017-08-03', '0081', 'Jhinuk Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chitagoong', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(82, '2017-08-03', '0082', 'Alis Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(83, '2017-08-03', '0083', 'National Marketing', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Distribution', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(84, '2017-08-03', '0084', 'Bhai Bhai Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(85, '2017-08-03', '0085', 'Amin Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(86, '2017-08-03', '0086', 'Elious Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(87, '2017-08-03', '0087', 'Harun Enterprise', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Golkibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(88, '2017-08-03', '0088', 'Ahmed Machineries', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(89, '2017-08-03', '0089', 'Mazba traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Tangail B.Stand', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(90, '2017-08-03', '0090', 'Shapla Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(91, '2017-08-03', '0091', 'Swaran Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(92, '2017-08-03', '0092', 'Sumaiya Steel', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'P129', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(93, '2017-08-03', '0093', 'Al-Amin Motors', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'New Market', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(94, '2017-08-03', '0094', 'Swapon Mistri', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'P131', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(95, '2017-08-03', '0095', 'Kafia Enterprise', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(96, '2017-08-03', '0096', 'Rumi Vai', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Kalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(97, '2017-08-03', '0097', 'Eng. Sohrab Hosain', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'P134', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(98, '2017-08-03', '0098', 'Sumon Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(99, '2017-08-03', '0099', 'Habibur Rahman', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'P136', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(100, '2017-08-03', '0100', 'Master Uttom Chak.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Kalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(101, '2017-08-03', '0101', 'M A Rahim', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Mohonganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(102, '2017-08-03', '0102', 'Fazlur Rahman', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Agroni Bank', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(103, '2017-08-03', '0103', 'Abdul Sukur Mozibor', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'P140', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(104, '2017-08-03', '0104', 'Islam Cariar', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Kachpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(105, '2017-08-03', '0105', 'Shova Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Bolashpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(106, '2017-08-03', '0106', 'BT Corporation', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(107, '2017-08-03', '0107', 'AKM Shamsudin', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(108, '2017-08-03', '0108', 'Dara Shsheb', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Aquq', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(109, '2017-08-03', '0109', 'Mondol Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Digharkanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(110, '2017-08-03', '0110', 'N.S Corporation', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Akua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(111, '2017-08-03', '0111', 'Jobada Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'SardaGhoshRoad', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(112, '2017-08-03', '0112', 'Ahad & Bro.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Khagdohor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(113, '2017-08-03', '0113', 'Nur Islam', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Aquq', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(114, '2017-08-03', '0114', 'SS Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Kathgola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(115, '2017-08-03', '0115', 'Sohag Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(116, '2017-08-03', '0116', 'Mehedi Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Maskanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(117, '2017-08-03', '0117', 'Lopa Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Chorpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(118, '2017-08-03', '0118', 'Abdulah Trad', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'BAU', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(119, '2017-08-03', '0119', 'Tajul Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'P258', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(120, '2017-08-03', '0120', 'Al-Amin Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Sankiopara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(121, '2017-08-03', '0121', 'Nice Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'MoynarMor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(122, '2017-08-03', '0122', 'Rayhan Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'GonshaMor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(123, '2017-08-03', '0123', 'R.H Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Dapunia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(124, '2017-08-03', '0124', 'JT Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', '', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(125, '2017-08-03', '0125', 'Elious & Bro.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Borobazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(126, '2017-08-03', '0126', 'MM Uddin', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Aquq', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(127, '2017-08-03', '0127', 'Shihab Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Stadium', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(128, '2017-08-03', '0128', 'Ripon Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Morakhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(129, '2017-08-03', '0129', 'Jahangir Enterprise', 'Jahangir Bhi', '01912581167', 'Sherpur', 'Nakla', 'Nokla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(130, '2017-08-03', '0130', 'Shompa Traders', '', '01712381466', 'Jamalpur', 'Boxigonj', 'Boxigonj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(131, '2017-08-03', '0131', 'Dudu Enterprise', 'Dudu Bhi', '01756515515', 'Jamalpur', 'Melandoha', 'Menlandoho', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(132, '2017-08-03', '0132', 'Hazi Enterprise', 'Mintu Bhi', '01728341830', 'Sherpur', 'Nakla', 'Nokla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(133, '2017-08-03', '0133', 'Jony Enterprise', 'Jony Bhi', '01716172907', 'Sherpur', 'Nakla', 'Nokla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(134, '2017-08-03', '0134', 'Mufazzal Hazi', '', '00', 'Jamalpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(135, '2017-08-03', '0135', 'Anisur Enterprise', '', '00', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(136, '2017-08-03', '0136', 'Mim Traders', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(137, '2017-08-03', '0137', 'Rakhi Enterprise', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(138, '2017-08-03', '0138', 'Abir Trad Center', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(139, '2017-08-03', '0139', 'MR Traders', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(140, '2017-08-03', '0140', 'Ranuru Beg', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(141, '2017-08-03', '0141', 'SS Traders', '', '0', 'Jamalpur', 'Nandina', 'Nandina', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(142, '2017-08-03', '0142', 'Asha Traders', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(143, '2017-08-03', '0143', 'Anowar Enterprise', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(144, '2017-08-03', '0144', 'Sayad Ent.', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(145, '2017-08-03', '0145', 'K.B Traders', '', '0', 'Jamalpur', 'Melandoha', 'Melandoho', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(146, '2017-08-03', '0146', 'Shanto Enterprise', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(147, '2017-08-03', '0147', 'B.S Traders', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(148, '2017-08-03', '0148', 'Moon Traders', '', '0', 'Jamalpur', 'Nalitabari', 'Nalitabari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(149, '2017-08-03', '0149', 'Faruk Enterprise', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(150, '2017-08-03', '0150', 'HR Enterprise', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(151, '2017-08-03', '0151', 'Mustafizur Rahman', '', '0', 'Jamalpur', 'sorishabari', 'Sorishabari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(152, '2017-08-03', '0152', 'H.R Enterprise', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(153, '2017-08-03', '0153', 'Pavel Enterprise', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(154, '2017-08-03', '0154', 'Sotota Traders', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(155, '2017-08-03', '0155', 'Habib Traders', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(156, '2017-08-03', '0156', 'Suhan Traders', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(157, '2017-08-03', '0157', 'Suhag & Brothers', '', '0', 'Sherpur', 'Sherpur', 'Sherpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(158, '2017-08-03', '0158', 'Hemendro Sing', '', '0', 'Jamalpur', 'Jamalpur', 'Jamalpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(159, '2017-08-03', '0159', 'Haque Traders', 'Saidul Haque', '01716627500', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(160, '2017-08-03', '0160', 'Master Traders', 'Ali Ajgor', '01713536324', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(161, '2017-08-03', '0161', 'Shapla Machinerise', 'Anwar Hosain', '01711441526', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(162, '2017-08-03', '0162', 'Biplob Trad Center', 'Biplob', '01712471544', 'Mymensingh', 'Haluaghat', 'Nagla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(163, '2017-08-03', '0163', 'Bhai Bhai Traders', '', '01915487585', 'Mymensingh', 'Mymensingh Sodar', 'BridgeMor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(164, '2017-08-03', '0164', 'Maria Ent.', 'Mamun', '01915676647', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(165, '2017-08-03', '0165', 'Hira Hardware', 'Dulal', '01954833102', 'Mymensingh', 'Dhobaura', 'Dhobaura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(166, '2017-08-03', '0166', 'Zaman Enterprise', 'Tomal', '01711670425', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(167, '2017-08-03', '0167', 'Waskoroni Ent.', 'Nazrul islam', '01714715788', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(168, '2017-08-03', '0168', 'Sahin Traders', 'Sahin bhi', '01716499110', 'Mymensingh', 'Haluaghat', 'Dhurail Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(169, '2017-08-03', '0169', 'Sarkar Traders', 'Mosarof Hosain', '01740833054', 'Mymensingh', 'Mymensingh Sodar', 'Joybangla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(170, '2017-08-03', '0170', 'Khan Ent.', 'Sahjahan Khan', '01718256474', 'Mymensingh', 'Haluaghat', 'Haluaghat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(171, '2017-08-03', '0171', 'Israfil Traders', 'Israfil', '01713503986', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(172, '2017-08-03', '0172', 'Tin Tara Ent.', 'Sayeem', '01755565191', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(173, '2017-08-03', '0173', 'Mondol Ent.', 'Saidul Bhi', '01718722784', 'Mymensingh', 'Haluaghat', 'Nagla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(174, '2017-08-03', '0174', 'Hasan Enterprise', 'Hasan', '01763608685', 'Mymensingh', 'Haluaghat', 'Haluaghat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(175, '2017-08-03', '0175', 'Master Traders', 'Jewel', '01729649805', 'Mymensingh', 'Haluaghat', 'Shakhuai', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(176, '2017-08-03', '0176', 'Seba Traders', 'Ruhul Amin', '01731420995', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(177, '2017-08-03', '0177', 'Likhon Ent.', 'Bhojon', '01716181389', 'Mymensingh', 'Haluaghat', 'Shakuai', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(178, '2017-08-03', '0178', 'Asha Traders', 'Mofiz', '01812317042', 'Mymensingh', 'Haluaghat', 'Haluaghat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(179, '2017-08-03', '0179', 'Kabir Ent.', 'Kabirul Islam', '01716459969', 'Mymensingh', 'Dhobaura', 'Dhobaura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(180, '2017-08-03', '0180', 'Ariful Traders', '', '01921474120', 'Mymensingh', 'Fulpur', 'Boula Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(181, '2017-08-03', '0181', 'Bhi Bhi Traders', 'Monjurul Haque', '01910098416', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(182, '2017-08-03', '0182', 'Mufazzal Parts', 'Mufazzal', '01712920020', 'Mymensingh', 'Dhobaura', 'Munshirhat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(183, '2017-08-03', '0183', 'Mojibur Traders', '', '01912077307', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(184, '2017-08-03', '0184', 'Eva Store', '', '01760177177', 'Mymensingh', 'Dhobaura', 'Kudaldhor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(185, '2017-08-03', '0185', 'Ripon Saha Enterprise', 'Ripon Saha', '01733112810', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(186, '2017-08-03', '0186', 'Rafi Enterprise', 'Josim', '01711674670', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(187, '2017-08-03', '0187', 'Bhi Bhi Traders', '', '01713571794', 'Mymensingh', 'Tarakanda', 'Kendua, Tarknda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(188, '2017-08-03', '0188', 'Laboni Antor Ent.', '', '01917567076', 'Mymensingh', 'Dhobaura', 'Dhubaura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(189, '2017-08-03', '0189', 'Tasin Ent.', 'Rofiqul Haque', '01777222202', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(190, '2017-08-03', '0190', 'Khokon Traders', 'Khukon', '01727910410', 'Mymensingh', 'Haluaghat', 'Batta Bazar, Nagla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(191, '2017-08-03', '0191', 'Shingha Traders', '', '01770393031', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(192, '2017-08-03', '0192', 'Shuvo Traders', '', '01716208955', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(193, '2017-08-03', '0193', 'Sisir Senitary', '', '01713522879', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(194, '2017-08-03', '0194', 'Harun Store', 'Harun', '01753373376', 'Mymensingh', 'Tarakanda', 'Sutarpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(195, '2017-08-03', '0195', 'Bhi Bhi Senitari', '', '01971181826', 'Mymensingh', 'Tarakanda', 'Mullabari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(196, '2017-08-03', '0196', 'Maa Hardware', 'Kalam', '0', 'Mymensingh', 'Fulpur', 'Halua (Mekiakanda)', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(197, '2017-08-03', '0197', 'Hasan Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'BridgeMor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(198, '2017-08-03', '0198', 'Fatema Traders', '', '0', 'Mymensingh', 'Tarakanda', 'Gopalpur bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(199, '2017-08-03', '0199', 'Talukder Ent.', '', '0', 'Mymensingh', 'Tarakanda', 'Kendua, Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(200, '2017-08-03', '0200', 'Shurma Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(201, '2017-08-03', '0201', 'Altab Hossain', '', '01736994344', 'Mymensingh', 'Mymensingh Sodar', 'Joybangla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(202, '2017-08-03', '0202', 'Bhai Bhai Traders', '', '01759631645', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(203, '2017-08-03', '0203', 'Mishu Ent.', '', '0', 'Mymensingh', 'Tarakanda', 'Rohimganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(204, '2017-08-03', '0204', 'Tamim Traders Hal.', '', '0', 'Mymensingh', 'Haluaghat', 'Haluaghat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(205, '2017-08-03', '0205', 'Khan Machinaries', '', '0', 'Mymensingh', 'Haluaghat', 'Nagla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(206, '2017-08-03', '0206', 'Sufia Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(207, '2017-08-03', '0207', 'Shika Trading', '', '0', 'Mymensingh', 'Tarakanda', 'Vaitkandi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(208, '2017-08-03', '0208', 'Khan Traders Batta', '', '0', 'Mymensingh', 'Haluaghat', 'Batta Bazar, Nagla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(209, '2017-08-03', '0209', 'Laxmi Store', '', '0', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(210, '2017-08-03', '0210', 'Ayub Khan Traders', '', '0', 'Mymensingh', 'Dhobaura', 'Munshirhat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(211, '2017-08-03', '0211', 'Habu Mia', '', '0', 'Mymensingh', 'Dhobaura', 'Dhobaura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(212, '2017-08-03', '0212', 'Fakir Brother''s', '', '0', 'Mymensingh', 'Dhobaura', 'Dhobaura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(213, '2017-08-03', '0213', 'Akonda Ent.', '', '0', 'Mymensingh', 'Dhobaura', 'Kudaldhor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(214, '2017-08-03', '0214', 'Haque Senitary', '', '0', 'Mymensingh', 'Dhobaura', 'Guatola, Dhobaura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(215, '2017-08-03', '0215', 'Shamim Traders', '', '0', 'Mymensingh', 'Dhobaura', 'Guatola, Dhobaura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(216, '2017-08-03', '0216', 'Nazim Ent.', '', '0', 'Mymensingh', 'Fulpur', 'Bushaganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(217, '2017-08-03', '0217', 'Bushra Ent.', 'Md. Milon', '01865908880', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(218, '2017-08-03', '0218', 'Hazera Traders', '', '01729980697', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(219, '2017-08-03', '0219', 'Bismillah Sanitary', '', '01730196383', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(220, '2017-08-03', '0220', 'Bismillah Enterprise', 'Motiur Raham', '01712279398', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(221, '2017-08-03', '0221', 'Sohel Enterprise', '', '01716205660', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(222, '2017-08-03', '0222', 'Sagor Hardware', '', '01728796918', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(223, '2017-08-03', '0223', 'Shamim Enterprise', 'Shamim', '01927685901', 'Mymensingh', 'Haluaghat', 'Koroytoly', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(224, '2017-08-03', '0224', 'Anamul Traders', 'Anamul', '0', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(225, '2017-08-03', '0225', 'Rafiq Saheb (holcm', 'Rafique', '0', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(226, '2017-08-03', '0226', 'Hasan Traders', '', '01763608685', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(227, '2017-08-03', '0227', 'Adom Enterprise', '', '01740570264', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(228, '2017-08-03', '0228', 'Sorna Traders', '', '01713861798', 'Mymensingh', 'fulpur', 'Gopalpur bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(229, '2017-08-03', '0229', 'Taj Enterprise', 'Mizan', '01868715905', 'Mymensingh', 'Tarakanda', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(230, '2017-08-03', '0230', 'MS Ent.', 'Soriful Islam', '01820541944', 'Mymensingh', 'Haluaghat', 'Haluaghat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(231, '2017-08-03', '0231', 'Jannatul Ent.', '', '0', 'Mymensingh', 'Tarakanda', 'Vaitkandi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(232, '2017-08-03', '0232', 'Mirza Traders', 'Monjurul Haque', '01712791817', 'Mymensingh', 'Haluaghat', 'Haluaghat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(233, '2017-08-03', '0233', 'Mayer Dua Ent.', '', '01759852188', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(234, '2017-08-03', '0234', 'Tain Enterprise', '', '01716627500', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(235, '2017-08-03', '0235', 'Muzaddia', '', '01711456096', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(236, '2017-08-03', '0236', 'S.A Traders', 'Bazlur Rahman', '01911710590', 'Mymensingh', 'Tarakanda', 'Tarakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(237, '2017-08-03', '0237', 'Shanto Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(238, '2017-08-03', '0238', 'Shubarna Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(239, '2017-08-03', '0239', 'Sabbir Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(240, '2017-08-03', '0240', 'MS Ent.', '', '0', 'Mymensingh', 'Haluaghat', 'Haluaghat', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(241, '2017-08-03', '0241', 'Azahar Traders', '', '01718653748', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(242, '2017-08-03', '0242', 'Srishti Traders', 'Azizul Haque', '01789469190', 'Mymensingh', 'Mymensingh Sodar', 'ChorKalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(243, '2017-08-03', '0243', 'Razu Ent.', '', '0', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(244, '2017-08-03', '0244', 'Alauddin Traders', '', '0', 'Mymensingh', 'Dhobaura', 'Kolshindur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(245, '2017-08-03', '0245', 'FK Traders', '', '0', 'Mymensingh', 'Fulpur', 'Fulpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(246, '2017-08-03', '0246', 'Mukti Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(247, '2017-08-03', '0247', 'Ovi Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(248, '2017-08-03', '0248', 'Jisan Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(249, '2017-08-03', '0249', 'Janata Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(250, '2017-08-03', '0250', 'Maa Traders', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(251, '2017-08-03', '0251', 'Sayam Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Poranganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(252, '2017-08-03', '0252', 'Maa Ent.', '', '0', 'Mymensingh', 'Mymensingh Sodar', 'Shombhuganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(253, '2017-08-03', '0253', 'BG Traders', 'Badol Ghosh', '01552491842', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(254, '2017-08-03', '0254', 'Robiul Traders', 'Robiul Islam', '01716888829', 'Mymensingh', 'Muktagacha', 'Chachua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(255, '2017-08-03', '0255', 'Bandhu Traders', 'Md. Ayub Ali', '01713508916', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(256, '2017-08-03', '0256', 'Ab. Jalil', 'Ab. Jalil', '01920194845', 'Mymensingh', 'Muktagacha', 'Bidyaganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(257, '2017-08-03', '0257', 'Haque Traders', 'Azizul Haque Jewel', '01718684248', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(258, '2017-08-03', '0258', 'Sarkar Traders', 'Nazrul Islam', '01716879194', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(259, '2017-08-03', '0259', 'Rafiq Traders', 'Rafique', '01726354433', 'Mymensingh', 'Muktagacha', 'Kalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(260, '2017-08-03', '0260', 'Ab.Khalak', 'Ab. Khalek', '01925570315', 'Mymensingh', 'Muktagacha', 'Biddyaganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(261, '2017-08-03', '0261', 'Forazi Traders', 'Arsadul', '01989350959', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(262, '2017-08-03', '0262', 'Irfan Traders', 'Md. Toslim', '01715291103', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(263, '2017-08-03', '0263', 'New Paul Traders', 'Babul Paul', '01711510907', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(264, '2017-08-03', '0264', 'Dui Ratna Traders', 'Anis', '01723477670', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(265, '2017-08-03', '0265', 'Mofijul Ent.', 'Mofizul Islam', '01720347786', 'Mymensingh', 'Muktagacha', 'Khamar Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(266, '2017-08-03', '0266', 'Hazi Rafij Uddin Ent.', 'Mizan', '01712481955', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(267, '2017-08-03', '0267', 'Ponchom Builders', 'Rouf', '01777764119', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(268, '2017-08-03', '0268', 'Rahman & Sons', 'Liton', '01914355552', 'Mymensingh', 'Muktagacha', 'Bidyaganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(269, '2017-08-03', '0269', 'Paul Traders', 'Ronjit Paul', '01712046796', 'Mymensingh', 'Muktagacha', 'Chachua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(270, '2017-08-03', '0270', 'Motaleb Ent.', 'Motaleb', '01712262760', 'Mymensingh', 'Muktagacha', 'Chachua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(271, '2017-08-03', '0271', 'Bazlu Traders', 'Bazlu', '01720925876', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(272, '2017-08-03', '0272', 'Tapu Enterprise', 'Dilip Saha', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(273, '2017-08-03', '0273', 'Shuvo Traders', '', '01718813860', 'Mymensingh', 'Muktagacha', 'Moshiur nagor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(274, '2017-08-03', '0274', 'Faria Enterprise', '', '01718541057', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(275, '2017-08-03', '0275', 'Talukder Ent.', 'Kamruzaman taluk.', '01716712546', 'Mymensingh', 'Muktagacha', 'Kalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(276, '2017-08-03', '0276', 'Sayem Enterprise', '', '00', 'Mymensingh', 'Muktagacha', 'Biddyaganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(277, '2017-08-03', '0277', 'Chowdhuri Ent.', '', '0', 'Mymensingh', 'Muktagacha', 'Pyarpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(278, '2017-08-03', '0278', 'Rajib Traders', 'Rajib', '01712525365', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(279, '2017-08-03', '0279', 'BN Traders', '', '01713528624', 'Mymensingh', 'Muktagacha', 'Rahmatpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01');
INSERT INTO `parties` (`id`, `opening`, `code`, `name`, `proprietor`, `contact`, `zone`, `area`, `address`, `email`, `username`, `password`, `photo`, `type`, `ctype`, `status`, `showroom_id`) VALUES
(280, '2017-08-03', '0280', 'Nodvi Traders', '', '00', 'Mymensingh', 'Mymensingh', 'Khagdohor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(281, '2017-08-03', '0281', 'Siam, Khilgati', '', '00', 'Mymensingh', 'Muktagacha', 'Khilgati', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(282, '2017-08-03', '0282', 'Mojibur Traders', '', '01711900413', 'Mymensingh', 'Muktagacha', 'Vharuakhali', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(283, '2017-08-03', '0283', 'Sen Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Khamar Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(284, '2017-08-03', '0284', 'M.R Steel', '', '0', 'Mymensingh', 'Muktagacha', 'Khagdohor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(285, '2017-08-03', '0285', 'Rasel Ent.', '', '0', 'Mymensingh', 'Muktagacha', 'Begunbari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(286, '2017-08-03', '0286', 'Golden Steel', '', '0', 'Mymensingh', 'Muktagacha', 'Chachua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(287, '2017-08-03', '0287', 'Sobuj Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(288, '2017-08-03', '0288', 'Rana Traders-2', '', '00', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(289, '2017-08-03', '0289', 'Hasan Enterprise', '', '01719284053', 'Mymensingh', 'Muktagacha', 'Biddyaganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(290, '2017-08-03', '0290', 'Zaman Traders', '', '01713587694', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(291, '2017-08-03', '0291', 'Taher Enterprise', '', '0', 'Mymensingh', 'Muktagacha', 'Bottola, Muk', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(292, '2017-08-03', '0292', 'Sajid Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Chachua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(293, '2017-08-03', '0293', 'Jobayer Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(294, '2017-08-03', '0294', 'Bhi Bon Senitari', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(295, '2017-08-03', '0295', 'Rukon Traders', 'Rukon Uddullah', '01934445736', 'Mymensingh', 'Muktagacha', 'Khamar Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(296, '2017-08-03', '0296', 'Nirman Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(297, '2017-08-03', '0297', 'Munni Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Kalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(298, '2017-08-03', '0298', 'Halim (Jewel) Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Ghoradhap', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(299, '2017-08-03', '0299', 'Master Traders', '', '01947812842', 'Mymensingh', 'Muktagacha', 'Kalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(300, '2017-08-03', '0300', 'Raihan Traders', 'Md. Raihan', '01940477160', 'Mymensingh', 'Muktagacha', 'Khamar Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(301, '2017-08-03', '0301', 'Bismillah Traders', '', '00', 'Mymensingh', 'Muktagacha', 'Khamar Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(302, '2017-08-03', '0302', 'Mayardua Ent.', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(303, '2017-08-03', '0303', 'Tamim Ent.', 'Al-amin', '01921277901', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(304, '2017-08-03', '0304', 'Dip puja Enterprise', '', '01711612188', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(305, '2017-08-03', '0305', 'M.S Enterprise', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(306, '2017-08-03', '0306', 'R.K Enterprise', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(307, '2017-08-03', '0307', 'M.Hasan Enterprise', 'Mahmudul Hasan', '01720092187', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(308, '2017-08-03', '0308', 'Tara Traders', 'Tara bhi', '0', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(309, '2017-08-03', '0309', 'Bismillah Traders', '', '00', 'Mymensingh', 'Muktagacha', 'Sotrasia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(310, '2017-08-03', '0310', 'Islam Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Kalibari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(311, '2017-08-03', '0311', 'Fahad Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(312, '2017-08-03', '0312', 'Mulla Enterprise', 'Md. Akash', '01717712331', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(313, '2017-08-03', '0313', 'Sumon Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(314, '2017-08-03', '0314', 'Gofur Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(315, '2017-08-03', '0315', 'Muktagasa Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(316, '2017-08-03', '0316', 'Laila Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(317, '2017-08-03', '0317', 'Mirza Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(318, '2017-08-03', '0318', 'Moon Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(319, '2017-08-03', '0319', 'Popy Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(320, '2017-08-03', '0320', 'Jinia Ent.', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(321, '2017-08-03', '0321', 'Muktagasa B. M.', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(322, '2017-08-03', '0322', 'Nas Ent.', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(323, '2017-08-03', '0323', 'Rakib Traders', 'Sohidul', '01713574753', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(324, '2017-08-03', '0324', 'Siam Ent.', 'Muksedur Rahman', '01757321262', 'Mymensingh', 'Muktagacha', 'Astodhar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(325, '2017-08-03', '0325', 'Bhi Bhi Traders', '', '00', 'Mymensingh', 'Muktagacha', 'Muktagacha', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(326, '2017-08-03', '0326', 'Rana Enterprise', 'Rana', '01713519957', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(327, '2017-08-03', '0327', 'Nishat Traders', '', '0', 'Mymensingh', 'Muktagacha', 'Muktagasa', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(328, '2017-08-03', '0328', 'Manik Traders', 'Joynal Abedin', '01728250747', 'Mymensingh', 'Trishal', 'Porabari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(329, '2017-08-03', '0329', 'Karim Traders', 'Ab. Karim', '01922643052', 'Mymensingh', 'Trishal', 'Raghamara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(330, '2017-08-03', '0330', 'Jahangir Enterprise', 'Jahangir Alom', '01721530493', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(331, '2017-08-03', '0331', 'Rashid Traders', 'Hazi Ab. Tarek', '01712064646', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(332, '2017-08-03', '0332', 'Loknath Ent.', 'Anjan Chandra', '01812120621', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(333, '2017-08-03', '0333', 'Swaran Ent.', 'Md. Sahabuddin', '01729466156', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(334, '2017-08-03', '0334', 'Bhai Bhai Traders', 'Saiful Islam', '01739590477', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(335, '2017-08-03', '0335', 'MF Enterprise', '', '01713523445', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(336, '2017-08-03', '0336', 'HB Traders', 'Md. Motaleb', '01713960832', 'Mymensingh', 'Trishal', 'Porabari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(337, '2017-08-03', '0337', 'Habib Traders', 'Habibur Rahman', '01782644417', 'Mymensingh', 'Trishal', 'Raghamara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(338, '2017-08-03', '0338', 'Manik Sanitary', 'Md. Manik', '01728177840', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(339, '2017-08-03', '0339', 'Mizan & Brothers', 'Mizan', '01715035610', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(340, '2017-08-03', '0340', 'Hira Enterprise', '', '01711130348', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(341, '2017-08-03', '0341', 'MS Ent.', '', '01705560057', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(342, '2017-08-03', '0342', 'Latif Traders', 'Anamul Karim', '01716284382', 'Mymensingh', 'Mymensingh', 'Churkhai', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(343, '2017-08-03', '0343', 'Mojid Traders', '', '01718050194', 'Mymensingh', 'Trishal', 'Churkhai', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(344, '2017-08-03', '0344', 'Habib Traders', '', '01672629550', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(345, '2017-08-03', '0345', 'Raju Senitary Mart', '', '01713515424', 'Mymensingh', 'Trishal', 'Gufakuri, Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(346, '2017-08-03', '0346', 'Sarwar Traders', '', '00', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(347, '2017-08-03', '0347', 'Nazrul Traders', '', '00', 'Mymensingh', 'Trishal', 'Sanki vanga', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(348, '2017-08-03', '0348', 'Kajol Enterprise', 'Anwar Hossain', '01917854116', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(349, '2017-08-03', '0349', 'Rabeya Enterprise', '', '0', 'Mymensingh', 'Mymensingh', 'Shikarikanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(350, '2017-08-03', '0350', 'Risad Enterprise', '', '0', 'Mymensingh', 'Trishal', 'Porabari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(351, '2017-08-03', '0351', 'Kawser Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(352, '2017-08-03', '0352', 'Alvi Traders', '', '0', 'Mymensingh', 'Trishal', 'Churkhai', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(353, '2017-08-03', '0353', 'Lintha Ent.', 'Md. Fazlu Haque', '01712779511', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(354, '2017-08-03', '0354', 'I R Enterprise', 'Md. Jewel', '01730929625', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(355, '2017-08-03', '0355', 'MK Traders', '', '0', 'Mymensingh', 'Trishal', 'Boylor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(356, '2017-08-03', '0356', 'Hafiz Enterprise', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(357, '2017-08-03', '0357', 'Akota Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(358, '2017-08-03', '0358', 'Sarker Ent.', '', '01711313524', 'Mymensingh', 'Trishal', 'Dhanikhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(359, '2017-08-03', '0359', 'Siam Ent.', '', '00', 'Mymensingh', 'Trishal', 'Dhola, Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(360, '2017-08-03', '0360', 'Alom Ent.', 'Md. Alam Kabir', '01743809212', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(361, '2017-08-03', '0361', 'Bhi Bhi Traders', '', '01716014161', 'Mymensingh', 'Trishal', 'Churkhai', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(362, '2017-08-03', '0362', 'Ripon Ent.', 'Jolilur Rahman', '01771908620', 'Mymensingh', 'Trishal', 'Boylor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(363, '2017-08-03', '0363', 'Babul Traders', '', '0', 'Mymensingh', 'Trishal', 'Raghamara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(364, '2017-08-03', '0364', 'Jisan Ent.', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(365, '2017-08-03', '0365', 'Bhutto Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(366, '2017-08-03', '0366', 'Hasib Ent.', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(367, '2017-08-03', '0367', 'Sayma Ent.', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(368, '2017-08-03', '0368', 'Jewel Enterprise', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(369, '2017-08-03', '0369', 'Shubra Ent.', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(370, '2017-08-03', '0370', 'Islam Ent.', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(371, '2017-08-03', '0371', 'Aiyoub Ali', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(372, '2017-08-03', '0372', 'Asraf Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(373, '2017-08-03', '0373', 'Liton Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(374, '2017-08-03', '0374', 'Khairul Traders', '', '0', 'Mymensingh', 'Trishal', 'Dhurdhuria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(375, '2017-08-03', '0375', 'Muhammad Ali', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(376, '2017-08-03', '0376', 'Konika Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(377, '2017-08-03', '0377', 'Muslem Kitnashok', '', '0', 'Mymensingh', 'Trishal', 'Bogarbazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(378, '2017-08-03', '0378', 'Atiqul Traders', '', '0', 'Mymensingh', 'Trishal', 'Horirampur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(379, '2017-08-03', '0379', 'Rahim Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal p', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(380, '2017-08-03', '0380', 'Nasir Uddin Ent.', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(381, '2017-08-03', '0381', 'Kabir Traders', '', '0', 'Mymensingh', 'Trishal', 'Boilor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(382, '2017-08-03', '0382', 'Sohorowardy Member', '', '0', 'Mymensingh', 'Trishal', 'Bogarbazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(383, '2017-08-03', '0383', 'Mustafa Traders', '', '0', 'Mymensingh', 'Trishal', 'Boilor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(384, '2017-08-03', '0384', 'Al-Amin Traders', '', '0', 'Mymensingh', 'Trishal', 'ShikariKanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(385, '2017-08-03', '0385', 'Sarker Traders', '', '0', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(386, '2017-08-03', '0386', 'Rokeya Enterprise', '', '01713648564', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(387, '2017-08-03', '0387', 'Mustakim Trading', '', '01798593103', 'Mymensingh', 'Trishal', 'Bypas', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(388, '2017-08-03', '0388', 'Prottoy Traders', '', '0', 'Mymensingh', 'Trishal', 'Raghamara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(389, '2017-08-03', '0389', 'Beauty Traders', 'Bachu', '01716181651', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(390, '2017-08-03', '0390', 'Pak Panjaton', 'Ab. Mojid', '01779645850', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(391, '2017-08-03', '0391', 'Choudhury Ent.', '', '01717068430', 'Mymensingh', 'Trishal', 'Trishal', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(392, '2017-08-03', '0392', 'Jony Enterprise', '', '01716130505', 'Mymensingh', 'Mymensingh', 'Dapunia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(393, '2017-08-03', '0393', 'Delwar Ent.', 'Md. Abul', '01710650409', 'Mymensingh', 'Fulbaria', 'Acim', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(394, '2017-08-03', '0394', 'Sarkar Commercial', 'Md. Majnu', '01735450829', 'Mymensingh', 'Fulbaria', 'Acim', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(395, '2017-08-03', '0395', 'S Alom & Bro', 'Md. Solayman', '01711327588', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(396, '2017-08-03', '0396', 'Hazi Ent.', 'Biddut bhi', '01681297268', 'Mymensingh', 'Fulbaria', 'Kasorganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(397, '2017-08-03', '0397', 'Habib Traders', 'Md. Habib', '01748905122', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(398, '2017-08-03', '0398', 'Asik Ent.', 'Tara Mia', '01767463813', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(399, '2017-08-03', '0399', 'Apu Traders', 'Samsul Haque', '01711514484', 'Mymensingh', 'Fulbaria', 'Shivganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(400, '2017-08-03', '0400', 'Ismam Traders', 'Md. Raihan', '01713961161', 'Mymensingh', 'Fulbaria', 'Kasorganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(401, '2017-08-03', '0401', 'Sarkar Traders', 'Md. Azahar', '01713519071', 'Mymensingh', 'Fulbaria', 'Kasorganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(402, '2017-08-03', '0402', 'Modina Traders', '', '01723132847', 'Mymensingh', 'Mymensingh', 'Dapunia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(403, '2017-08-03', '0403', 'Musabbir & Brother', '', '01749664506', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(404, '2017-08-03', '0404', 'Master Traders', '', '01730958897', 'Mymensingh', 'Fulbaria', 'Keshorganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(405, '2017-08-03', '0405', 'Mithi Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Achim', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(406, '2017-08-03', '0406', 'Renis Enterprise', '', '0', 'Mymensingh', 'Fulbaria', 'Keshorganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(407, '2017-08-03', '0407', 'Iqbal Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(408, '2017-08-03', '0408', 'Jonota Traders', 'Habibur Rahman', '01716772193', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(409, '2017-08-03', '0409', 'Meer & Son''s', '', '0', 'Mymensingh', 'Fulbaria', 'Dosmail, Ful', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(410, '2017-08-03', '0410', 'Hasan Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Keshorganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(411, '2017-08-03', '0411', 'Rajia Enterprise', '', '0', 'Mymensingh', 'Fulbaria', 'Keshorganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(412, '2017-08-03', '0412', 'Hiamony Enterprise', '', '01759012499', 'Mymensingh', 'Fulbaria', 'Raghunathpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(413, '2017-08-03', '0413', 'Sotota Traders', '', '0', 'Mymensingh', 'Mymensingh', 'Dapunia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(414, '2017-08-03', '0414', 'Tania Ent.', '', '01713585762', 'Mymensingh', 'Fulbaria', 'Achim', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(415, '2017-08-03', '0415', 'Mahim Ent.', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(416, '2017-08-03', '0416', 'Suja & Bro.', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(417, '2017-08-03', '0417', 'Bagdad Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(418, '2017-08-03', '0418', 'Helal Trading', '', '0', 'Mymensingh', 'Fulbaria', 'Acim', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(419, '2017-08-03', '0419', 'Bhai Bhai Traders', 'Md. Mazid', '01727604245', 'Mymensingh', 'Fulbaria', 'Shivganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(420, '2017-08-03', '0420', 'Tri Rotna Trad', 'Babu Bhi', '01776611095', 'Mymensingh', 'Fulbaria', 'Boruka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(421, '2017-08-03', '0421', 'Islam Traders', '', '01620394315', 'Mymensingh', 'Fulbaria', 'Boruka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(422, '2017-08-03', '0422', 'Mirza Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(423, '2017-08-03', '0423', 'Nur Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(424, '2017-08-03', '0424', 'Farukh Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(425, '2017-08-03', '0425', 'Tajul Ent.', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(426, '2017-08-03', '0426', 'Hazi Ibrahim', '', '0', 'Mymensingh', 'Fulbaria', 'Fulbaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(427, '2017-08-03', '0427', 'Suruzzaman Ent.', '', '0', 'Mymensingh', 'Fulbaria', 'Daokhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(428, '2017-08-03', '0428', 'Saroar Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Daokhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(429, '2017-08-03', '0429', 'Nice Traders', '', '0', 'Mymensingh', 'Fulbaria', 'Daokhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(430, '2017-08-03', '0430', 'Towha Traders', '', '0', 'Mymensingh', 'Mymensingh', 'Dapunia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(431, '2017-08-03', '0431', 'Asha Traders', 'Md. Nazu', '01731674556', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(432, '2017-08-03', '0432', 'Sarkar Traders', 'Latif Sarkar', '01719604314', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(433, '2017-08-03', '0433', 'Jakir Ent.', 'Jakir Hosain', '01913506192', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(434, '2017-08-03', '0434', 'S.S Traders', 'Milon Saha', '01710040080', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(435, '2017-08-03', '0435', 'Mitali Ent.', 'Sahjahan', '01716507395', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(436, '2017-08-03', '0436', 'Ghosh Traders', 'Pranotos Ghosh', '01823002708', 'Netrokona', 'Purbodhola', 'Jaria', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(437, '2017-08-03', '0437', 'Salu Enterprise', 'Jhon Mia', '01719337269', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(438, '2017-08-03', '0438', 'Hazi Habibur Rahman', 'Sarif Mia', '01741024200', 'Netrokona', 'Durgapur', 'Jhanjail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(439, '2017-08-03', '0439', 'Kanice Traders', 'Mahbub Alom', '01724847280', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(440, '2017-08-03', '0440', 'Ayojon Traders', 'Selim Mia', '01725622528', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(441, '2017-08-03', '0441', 'Mono singh', 'Dhonu Sing', '01716631782', 'Netrokona', 'Netrokona', 'Thakrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(442, '2017-08-03', '0442', 'Talukder Ent.', 'Angur Talukder', '01712500872', 'Netrokona', 'Mohonganj', 'Mohonganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(443, '2017-08-03', '0443', 'Reza Construction', 'Md. Manik', '01716057238', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(444, '2017-08-03', '0444', 'Rowshon Ent.', 'Mustaf Fakir', '01716213275', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(445, '2017-08-03', '0445', 'Modina Traders', 'Jahid', '00', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(446, '2017-08-03', '0446', 'Masud Ent.', 'Masud', '01711931814', 'Netrokona', 'Netrokona', 'Kashiganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(447, '2017-08-03', '0447', 'Humayun Traders', 'Humayon', '01713506245', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(448, '2017-08-03', '0448', 'Kasem Traders', 'Hazi kasem mia', '01713566298', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(449, '2017-08-03', '0449', 'Sarkar Traders', 'Shuvo Mia', '01942169912', 'Netrokona', 'Purbodhola', 'Purbodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(450, '2017-08-03', '0450', 'Kiron Traders', 'Gopal Babu', '01927378657', 'Netrokona', 'Purbodhola', 'Purbodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(451, '2017-08-03', '0451', 'Rofiq Hardware', 'Md. Rafique', '01734404484', 'Netrokona', 'Durgapur', 'Najirpur, Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(452, '2017-08-03', '0452', 'Maa Baba Ent.', 'Ab. Hai', '01721974718', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(453, '2017-08-03', '0453', 'Chunnu Traders', 'Chunnu mia', '01764168826', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(454, '2017-08-03', '0454', 'Akhi Ent.', 'Sojib', '01961296074', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(455, '2017-08-03', '0455', 'Tarafder Traders', 'Ringku', '01720962081', 'Netrokona', 'Netrokona', 'Kashiganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(456, '2017-08-03', '0456', 'Khan Enterprise', 'Masud khan', '01712472843', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(457, '2017-08-03', '0457', 'Shah Sultan Ent.', '', '01720247624', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(458, '2017-08-03', '0458', 'Khalak Reza Ent.', 'Masud', '01720018435', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(459, '2017-08-03', '0459', 'Hasem Enterprise', 'Tamim', '01937477554', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(460, '2017-08-03', '0460', 'Arshad Traders', 'Arshad', '01720095018', 'Netrokona', 'Durgapur', 'Jhanjail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(461, '2017-08-03', '0461', 'Islamia Traders', '', '01973897788', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(462, '2017-08-03', '0462', 'Sopon Enterprise', 'Tapon Ghosh', '01719747258', 'Netrokona', 'Netrokona', 'Purbodhala', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(463, '2017-08-03', '0463', 'Datta Traders', 'Kobita Datta', '01711931813', 'Netrokona', 'Durgapur', 'Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(464, '2017-08-03', '0464', 'Rifat Traders', 'Saiful Mia', '01713547737', 'Netrokona', 'Durgapur', 'Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(465, '2017-08-03', '0465', 'Nazim Enterprise', 'Nazim', '01715372500', 'Netrokona', 'Purbodhola', 'Purbadhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(466, '2017-08-03', '0466', 'Meem Traders', 'Rofique', '01719469702', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(467, '2017-08-03', '0467', 'Showeb Enterprise', '', '01716386943', 'Netrokona', 'Atpara', 'Atpara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(468, '2017-08-03', '0468', 'Shakh Brothers', 'Rofique', '01725114176', 'Netrokona', 'Durgapur', 'Kumudganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(469, '2017-08-03', '0469', 'Hazi Ent.', 'Salam mia', '01946221905', 'Netrokona', 'Durgapur', 'Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(470, '2017-08-03', '0470', 'Doyal Vander', 'Sumit Bonik', '01715120780', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(471, '2017-08-03', '0471', 'Neepun Traders', 'Jillur Bhi', '01716939446', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(472, '2017-08-03', '0472', 'Tanim Enterprise', 'Md. Tanim', '01717353529', 'Netrokona', 'Barhatta', 'Barhatta', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(473, '2017-08-03', '0473', 'Saidul Traders', 'Saidul', '01952768722', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(474, '2017-08-03', '0474', 'Toba Traders', '', '01714880964', 'Netrokona', 'Netrokona', 'Gutura Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(475, '2017-08-03', '0475', 'Polash Enterprise', 'Md. Poalah', '01990305519', 'Netrokona', 'Purbodhola', 'Pubodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(476, '2017-08-03', '0476', 'Emon Enterprise', '', '0', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(477, '2017-08-03', '0477', 'Kabir Ent.', '', '01911033312', 'Netrokona', 'Kolmakanda', 'Kolmakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(478, '2017-08-03', '0478', 'Alom  Traders', '', '01717579603', 'Netrokona', 'Modan', 'Modon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(479, '2017-08-03', '0479', 'Anjon Hardware', '', '01917734324', 'Netrokona', 'Modan', 'Modon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(480, '2017-08-03', '0480', 'Motiur Rahman', 'Mukul Mia', '01711353732', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(481, '2017-08-03', '0481', 'Ma Traders', '', '01716802887', 'Netrokona', 'Barhatta', 'Baushi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(482, '2017-08-03', '0482', 'Shakh Traders', 'Mustafa Kamal', '01914919052', 'Netrokona', 'Purbodhola', 'Fazilpur, Pub', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(483, '2017-08-03', '0483', 'Jannatul Enterprise', '', '01721860207', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(484, '2017-08-03', '0484', 'Riad & Brother''s', 'Md. Bachu', '01748939563', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(485, '2017-08-03', '0485', 'Muna Enterprise', '', '01735484903', 'Netrokona', 'Purbodhola', 'Purbodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(486, '2017-08-03', '0486', 'Rahmot Traders', 'Md. Babul Mia', '01724828171', 'Netrokona', 'Purbodhola', 'Purbodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(487, '2017-08-03', '0487', 'Monsur Traders', '', '01724828171', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(488, '2017-08-03', '0488', 'Amina Ent.', 'Md. Milon', '01712877628', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(489, '2017-08-03', '0489', 'Sah Business', '', '01729632055', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(490, '2017-08-03', '0490', 'Muklas & Brothrs', 'Mizan', '0', 'Netrokona', 'Barhatta', 'Barhatta', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(491, '2017-08-03', '0491', 'Azmeri Builders', 'Zilani', '0', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(492, '2017-08-03', '0492', 'Jalalabad Ent.', 'Kamal Bhi', '01712646651', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(493, '2017-08-03', '0493', 'Jewel Ent.', 'Badsha mia', '01740869071', 'Netrokona', 'Netrokona', 'Thakrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(494, '2017-08-03', '0494', 'Sarkar Traders', 'Alom Sarkar', '01926628572', 'Netrokona', 'Durgapur', 'Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(495, '2017-08-03', '0495', 'Aronna Traders', 'Robel', '01733173019', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(496, '2017-08-03', '0496', 'Roshid Dhali', 'Roshid', '01711077513', 'Netrokona', 'Durgapur', 'Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(497, '2017-08-03', '0497', 'Modina Traders', '', '01714880964', 'Netrokona', 'Netrokona', 'Gutura Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(498, '2017-08-03', '0498', 'Tojim Enterprise', '', '01712639066', 'Netrokona', 'Netrokona', 'Hironpur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(499, '2017-08-03', '0499', 'Boyshakhi Ent.', 'Munna', '01740956941', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(500, '2017-08-03', '0500', 'Roni Reyad Ent.', 'Md. Roni', '01735881444', 'Netrokona', 'Purbodhola', 'Hugla Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(501, '2017-08-03', '0501', 'Soudia Enterprise', '', '0', 'Netrokona', 'Durgapur', 'Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(502, '2017-08-03', '0502', 'Shaba Enterprise', 'Sujon Saha', '0', 'Netrokona', 'Kolmakanda', 'Komlakanda', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(503, '2017-08-03', '0503', 'Khan Traders', 'Selim Khan', '0', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(504, '2017-08-03', '0504', 'Robin Traders', 'Saiful Mia', '01726937574', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(505, '2017-08-03', '0505', 'Abdur Rouf Trad', 'Rouf', '01795903000', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(506, '2017-08-03', '0506', 'Talukder Traders', 'Selim Talukdar', '01717499677', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(507, '2017-08-03', '0507', 'Vadro Traders', 'Suvash Vodro', '01711464865', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(508, '2017-08-03', '0508', 'Khan Traders', 'Selim Khan', '01711699783', 'Netrokona', 'Durgapur', 'Jhanjail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(509, '2017-08-03', '0509', 'Hazi Ent.', 'Parves', '01946221905', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(510, '2017-08-03', '0510', 'Sen Traders', 'Ronjeet Sen', '0', 'Netrokona', 'Durgapur', 'Durgapur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(511, '2017-08-03', '0511', 'Habib Ent.', 'Md. Habib', '01712583787', 'Netrokona', 'Purbodhola', 'Purbodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(512, '2017-08-03', '0512', 'Salam Ent.', 'Ab, salam', '01974086119', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(513, '2017-08-03', '0513', 'Rubaya Ent.', '', '01716249496', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(514, '2017-08-03', '0514', 'Brothers Trede', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(515, '2017-08-03', '0515', 'Anik Treders', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(516, '2017-08-03', '0516', 'Sikha Construction', 'Farid', '01711007681', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(517, '2017-08-03', '0517', 'Jahanara Ent.', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(518, '2017-08-03', '0518', 'Hossain Ent.', '', '0', 'Netrokona', 'Netrokona', 'Netrokuna', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(519, '2017-08-03', '0519', 'Narayan Sarkar', '', '0', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(520, '2017-08-03', '0520', 'Anwar Ent.', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(521, '2017-08-03', '0521', 'Bonik Ent.', '', '0', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(522, '2017-08-03', '0522', 'Talukder Traders', '', '0', 'Netrokona', 'Purbodhola', 'Purbodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(523, '2017-08-03', '0523', 'Amin Trades', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(524, '2017-08-03', '0524', 'Jhalak Ent.', '', '0', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(525, '2017-08-03', '0525', 'Bhai Bhai Traders', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(526, '2017-08-03', '0526', 'Sumit Nolok Ent.', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(527, '2017-08-03', '0527', 'MM Salim', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(528, '2017-08-03', '0528', 'Meem Traders', '', '0', 'Netrokona', 'Barhatta', 'Barhattra', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(529, '2017-08-03', '0529', 'Maa Enterprise', '', '0', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(530, '2017-08-03', '0530', 'FS Ent.', '', '0', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(531, '2017-08-03', '0531', 'Al-Haque Traders', '', '0', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(532, '2017-08-03', '0532', 'Bhai Bhai Traders', '', '0', 'Netrokona', 'Modan', 'Modon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(533, '2017-08-03', '0533', 'Farukh Traders', '', '0', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(534, '2017-08-03', '0534', 'Apu Ent.', '', '0', 'Netrokona', 'Netrokona', 'Netrakona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(535, '2017-08-03', '0535', 'Azad & Bro.', '', '0', 'Netrokona', 'Purbodhola', 'Purbodhola', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(536, '2017-08-03', '0536', 'Talukder Ent.', '', '0', 'Netrokona', 'Netrokona', 'Bawshi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(537, '2017-08-03', '0537', 'Bondhon Traders', '', '0', 'Netrokona', 'Netrokona', 'Bawshi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(538, '2017-08-03', '0538', 'Chunnu Mia', '', '0', 'Netrokona', 'Netrokona', 'Netrokuna', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(539, '2017-08-03', '0539', 'Padma Traders', '', '0', 'Netrokona', 'Netrokona', 'Shamganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(540, '2017-08-03', '0540', 'Nirman Traders', '', '0', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(541, '2017-08-03', '0541', 'Sohag Ent.', '', '0', 'Netrokona', 'Barhatta', 'Bawshi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(542, '2017-08-03', '0542', 'Lamia Ent.', '', '0', 'Netrokona', 'Barhatta', 'Bawshi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(543, '2017-08-03', '0543', 'Arif Enterprise', '', '0', 'Netrokona', 'Barhatta', 'Bawshi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(544, '2017-08-03', '0544', 'Nizam Traders', '', '0', 'Netrokona', 'Netrokona', 'Netrokuna', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(545, '2017-08-03', '0545', 'Maa Traders', '', '0', 'Netrokona', 'Netrokona', 'Netrokona', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(546, '2017-08-03', '0546', 'Sara Traders', '', '0', 'Netrokona', 'Netrokona', 'Netrokuna', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(547, '2017-08-03', '0547', 'Azahar Traders', '', '0', 'Netrokona', 'Barhatta', 'Barhattra', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(548, '2017-08-03', '0548', 'Maa Traders', 'Md. Parves', '01712393449', 'Mymensingh', 'Gaffargaon', 'Gaffargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(549, '2017-08-03', '0549', 'Bhai Bhai Builders', 'Md. Babul', '01712861276', 'Mymensingh', 'Trishal', 'Rampur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(550, '2017-08-03', '0550', 'Nazrul Islam', 'Md. Suruj', '01713591746', 'Mymensingh', 'Trishal', 'Balipara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(551, '2017-08-03', '0551', 'Joynal & Sons', 'Md. Joynal', '01712620936', 'Mymensingh', 'Gaffargaon', 'Gaffargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(552, '2017-08-03', '0552', 'Talukdar Enterprise', 'Md. Ab. Samad', '01711571532', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(553, '2017-08-03', '0553', 'Haque Traders', 'Md. Samsul Haque', '01712954265', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(554, '2017-08-03', '0554', 'Farukh Traders', 'Md. Farukh', '01726090841', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(555, '2017-08-03', '0555', 'Dhali Ent.', 'Md. Akter Hosain', '01743631781', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(556, '2017-08-03', '0556', 'GK Ent.', 'Mahbub Alom', '01726090841', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(557, '2017-08-03', '0557', 'HR Ent.', 'Md. Romjan Ali', '01727594111', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(558, '2017-08-03', '0558', 'Tarin Steel', '', '01714277469', 'Mymensingh', 'Bhaluka', 'Sedstore', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(559, '2017-08-03', '0559', 'Lifa Enterprise', 'Md. Farukh', '01770347985', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(560, '2017-08-03', '0560', 'Chowdhori Ent.', '', '01730196553', 'Mymensingh', 'Gaffargaon', 'Shak Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(561, '2017-08-03', '0561', 'Dulal Engineering', '', '01727782765', 'Mymensingh', 'Bhaluka', 'Bhuyan bari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(562, '2017-08-03', '0562', 'Ma Traders', '', '01726952193', 'Mymensingh', 'Bhaluka', 'Dahirgaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01');
INSERT INTO `parties` (`id`, `opening`, `code`, `name`, `proprietor`, `contact`, `zone`, `area`, `address`, `email`, `username`, `password`, `photo`, `type`, `ctype`, `status`, `showroom_id`) VALUES
(563, '2017-08-03', '0563', 'Toma Traders', '', '00', 'Mymensingh', 'Gaffargaon', 'Mukhi Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(564, '2017-08-03', '0564', 'Sohel Bhi Bhaluka', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(565, '2017-08-03', '0565', 'Pathan Trades', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(566, '2017-08-03', '0566', 'Morshed Bhi', '', '0', 'Mymensingh', 'Bhaluka', 'Masterbari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(567, '2017-08-03', '0567', 'Foysal Traders', '', '0', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(568, '2017-08-03', '0568', 'Hamida Traders', '', '0', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(569, '2017-08-03', '0569', 'Seedstore Enterprise', '', '01711676456', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(570, '2017-08-03', '0570', 'Hazi Hasmot Ali', 'Md. Samsuddin', '01716143008', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(571, '2017-08-03', '0571', 'Sathi Steel', '', '01783834002', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(572, '2017-08-03', '0572', 'Bhaluka Enterprise', 'Md. Ab. Salam', '01711232011', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(573, '2017-08-03', '0573', 'Bhi Bhi # Porshi', '', '0', 'Mymensingh', 'Gaffargaon', 'Porshipara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(574, '2017-08-03', '0574', 'Maa Traders', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(575, '2017-08-03', '0575', 'Shad Ent.', '', '01712552540', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(576, '2017-08-03', '0576', 'Jalal Traders', 'Md.Jalal', '01920097774', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(577, '2017-08-03', '0577', 'Jewel Ent.', 'Md. Jewel', '01711314547', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(578, '2017-08-03', '0578', 'Jahan Traders', 'Md. Sarwar Hosain', '01715479876', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(579, '2017-08-03', '0579', 'Mazharul Trad', 'Mazharul Islam', '01712771158', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(580, '2017-08-03', '0580', 'Siam Ent.', '', '01716201494', 'Mymensingh', 'Bhaluka', 'Hazir Bazar.B', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(581, '2017-08-03', '0581', 'Shikder Enterprise', '', '00', 'Mymensingh', 'Bhaluka', 'Tamat Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(582, '2017-08-03', '0582', 'Babul Traders', 'Md. Babul mia', '01720974009', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(583, '2017-08-03', '0583', 'M.M Enterprise', '', '0', 'Mymensingh', 'Trishal', 'Rampur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(584, '2017-08-03', '0584', 'Jony Enterprese', '', '01711116726', 'Mymensingh', 'Gaffargaon', 'Pagla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(585, '2017-08-03', '0585', 'Iftab Ahamed Trad.', '', '01730169964', 'Mymensingh', 'Bhaluka', 'Bord Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(586, '2017-08-03', '0586', 'Sanim Enterprise', '', '00', 'Mymensingh', 'Trishal', 'Dhanikhula', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(587, '2017-08-03', '0587', 'Tripty Steel', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(588, '2017-08-03', '0588', 'Muslem Traders', '', '01913412520', 'Mymensingh', 'Trishal', 'Kalirbazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(589, '2017-08-03', '0589', 'Humayun Traders', '', '01914631185', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(590, '2017-08-03', '0590', 'Jebin Enterprise', '', '01717270613', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(591, '2017-08-03', '0591', 'Sumaiya Ent.', '', '01718331306', 'Mymensingh', 'Bhaluka', 'Bord Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(592, '2017-08-03', '0592', 'Bhi Bhi Traders', '', '01711144680', 'Mymensingh', 'Gaffargaon', 'Pagla', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(593, '2017-08-03', '0593', 'Abdullah & Brother''s', 'Md. Abdullah', '01724520825', 'Mymensingh', 'Trishal', 'Bogar Bazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(594, '2017-08-03', '0594', 'Nazrul Treders', 'Nazrul Islam', '01712616080', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(595, '2017-08-03', '0595', 'Munni Steel', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(596, '2017-08-03', '0596', 'Motin Steel', '', '01731561955', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(597, '2017-08-03', '0597', 'Imran Traders', '', '0', 'Mymensingh', 'Bhaluka', 'Uthura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(598, '2017-08-03', '0598', 'Ismail Traders', '', '01714413433', 'Mymensingh', 'Bhaluka', 'Masterbari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(599, '2017-08-03', '0599', 'Mayer Dua Ent.', '', '0', 'Mymensingh', 'Bhaluka', 'Sheedstor', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(600, '2017-08-03', '0600', 'Tanjin Traders', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(601, '2017-08-03', '0601', 'Ria Enterprise', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(602, '2017-08-03', '0602', 'Satota Traders', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(603, '2017-08-03', '0603', 'Koli Ent.', '', '01850057051', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(604, '2017-08-03', '0604', 'Somir Ent.', '', '0', 'Mymensingh', 'Bhaluka', 'Bhaluka', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(605, '2017-08-03', '0605', 'Motin Dealer', '', '0', 'Mymensingh', 'Bhaluka', 'Mollikbari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(606, '2017-08-03', '0606', 'Kolpona Ent.', '', '01712112013', 'Mymensingh', 'Bhaluka', 'Mollikbari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(607, '2017-08-03', '0607', 'Lotif & Sons', '', '0', 'Mymensingh', 'Gaffargaon', 'Gafargaon', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(608, '2017-08-03', '0608', 'Janata Treders', 'Anamul Islam', '01711372455', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(609, '2017-08-03', '0609', 'Sonali Traders', 'Ronjit Pondit', '01716093428', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(610, '2017-08-03', '0610', 'Jononi Traders', 'Tarun Chakraborti', '01713587390', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(611, '2017-08-03', '0611', 'Talukder Trading', 'Mahfuzur Rahman', '01711519130', 'Mymensingh', 'Ishwarganj', 'Dhanmohol', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(612, '2017-08-03', '0612', 'Haque & Brothers', 'Samsul Haque', '01713586844', 'Mymensingh', 'Ishwarganj', '18Bari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(613, '2017-08-03', '0613', 'Asad Traders', 'Asadul Islam', '01712477180', 'Mymensingh', 'Ishwarganj', 'Tarundia', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(614, '2017-08-03', '0614', 'Sarkar Traders', 'Hannan Sarkar', '01713540645', 'Mymensingh', 'Nandail', 'Jhalua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(615, '2017-08-03', '0615', 'Shuvo Traders', 'Hamidur Rahman', '01712283375', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(616, '2017-08-03', '0616', 'Mayerdua Senitary', 'Monwar Hosain', '01719927121', 'Netrokona', 'Kendua', 'Kendua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(617, '2017-08-03', '0617', 'Naz Enterprise', 'Sarwar Hosain', '01710094418', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(618, '2017-08-03', '0618', 'Liza Traders', 'Ab, Samad', '01716090352', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(619, '2017-08-03', '0619', 'Saiful Traders', 'Saiful bhi', '01918201747', 'Mymensingh', 'Ishwarganj', 'Sohagi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(620, '2017-08-03', '0620', 'S.R. Steel', 'Sumon', '01715038804', 'Mymensingh', 'Ishwarganj', 'Konapara Ishwnj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(621, '2017-08-03', '0621', 'Piyas Enterprise', 'Kanchon bhuyan', '01714053625', 'Mymensingh', 'Ishwarganj', '18Bari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(622, '2017-08-03', '0622', 'A.B Enterprise', 'Ripon Bhi', '01716014161', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(623, '2017-08-03', '0623', 'Redoy Enterprise', 'Bachu', '01716579729', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(624, '2017-08-03', '0624', 'Masud Traders', '', '01712698374', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(625, '2017-08-03', '0625', 'Akhi Enter New', '', '01714404418', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(626, '2017-08-03', '0626', 'Shahnaz Enter.', '', '01713514777', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(627, '2017-08-03', '0627', 'Somola Traders', 'Josim uddin', '01716579728', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(628, '2017-08-03', '0628', 'Hazi Enterprise', 'Khurshed', '01733278486', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(629, '2017-08-03', '0629', 'Talukder Enterprise', 'Babul Talukder', '01724129730', 'Mymensingh', 'Ishwarganj', 'Sohagi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(630, '2017-08-03', '0630', 'Hazi Master Trad.', 'Ripon Bhi', '01716373205', 'Mymensingh', 'Nandail', 'Maizbag', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(631, '2017-08-03', '0631', 'Suraya Ent.', 'Asraf Bhi', '01711050338', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(632, '2017-08-03', '0632', 'Shofiq Traders', 'Sofique', '01720015671', 'Mymensingh', 'Ishwarganj', 'Gondabazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(633, '2017-08-03', '0633', 'Nitu Enterprise', '', '01928871606', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(634, '2017-08-03', '0634', 'Esha Enterprise', '', '0', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(635, '2017-08-03', '0635', 'Razzak Traders', '', '01713516274', 'Mymensingh', 'Gouripur', 'Bhuyanbari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(636, '2017-08-03', '0636', 'Swapon Enterprise', '', '0', 'Mymensingh', 'Ishwarganj', 'Sohagi', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(637, '2017-08-03', '0637', 'Salema Traders', '', '0', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(638, '2017-08-03', '0638', 'Chairman Enterprise', '', '0', 'Mymensingh', 'Ishwarganj', 'Uchakhila', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(639, '2017-08-03', '0639', 'Masfi Traders', '', '01714611349', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(640, '2017-08-03', '0640', 'Mohini Enterprise', '', '01720077955', 'Mymensingh', 'Gouripur', 'Gazipur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(641, '2017-08-03', '0641', 'Munna Traders', 'Kayum Bhi', '01718058711', 'Mymensingh', 'Maizbag', 'Maizbag', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(642, '2017-08-03', '0642', 'Laxman Banik', 'Laxman Bonik', '01711538919', 'Mymensingh', '18Bari', '18Bari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(643, '2017-08-03', '0643', 'Rabaya Ent.', 'Bappy', '01711705790', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(644, '2017-08-03', '0644', 'Dilshad Ent.', 'Samsu Mohajon', '01716680700', 'Netrokona', 'Kendua', 'Kendua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(645, '2017-08-03', '0645', 'Maa Traders', 'Badol Bhi', '01712143415', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(646, '2017-08-03', '0646', 'Maa Enterprise', '', '00', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(647, '2017-08-03', '0647', 'Hashem Ent.', 'Mizan', '01711667286', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(648, '2017-08-03', '0648', 'Amin Traders', '', '0', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(649, '2017-08-03', '0649', 'Kayser Traders', '', '01725579724', 'Mymensingh', 'Koltapara', 'Koltapara', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(650, '2017-08-03', '0650', 'Tania Ent.', 'Sopon', '01711164699', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(651, '2017-08-03', '0651', 'Johir & Sons', '', '01711195239', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(652, '2017-08-03', '0652', 'Ahmed Machineries', '', '01732613986', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(653, '2017-08-03', '0653', 'Bhai Bhai Traders', 'Sayeed Bhi', '01725136425', 'Mymensingh', 'Kanarampur', 'Kanarampur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(654, '2017-08-03', '0654', 'Mayardua Ent.', 'Hasem', '0', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(655, '2017-08-03', '0655', 'Ali Enterprise', 'Selim', '01711456180', 'Mymensingh', '18Bari', '18Bari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(656, '2017-08-03', '0656', 'Tania Tamim Ent.', 'Mozammel Haque', '01713563636', 'Mymensingh', 'Uchakhila', 'Uchakhila', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(657, '2017-08-03', '0657', 'Sagor Ent.', '', '0', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(658, '2017-08-03', '0658', 'Mazad & Bro', '', '0', 'Mymensingh', '18Bari', '18Bari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(659, '2017-08-03', '0659', 'Bijoy Enterprise', '', '0', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(660, '2017-08-03', '0660', 'Bhuiyan Hardwere', '', '0', 'Mymensingh', 'Gouripur', 'Gouripur', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(661, '2017-08-03', '0661', 'Akhi Ent.', '', '01714404418', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(662, '2017-08-03', '0662', 'Popular Traders', '', '0', 'Mymensingh', 'Roailbar', 'Roailbar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(663, '2017-08-03', '0663', 'Mintu Traders', '', '0', 'Mymensingh', 'Maizbag', 'Maizbag', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(664, '2017-08-03', '0664', 'Ripon Ent.', '', '01711007467', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(665, '2017-08-03', '0665', 'Promy Traders', '', '0', 'Netrokona', 'Kendua', 'Kendua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(666, '2017-08-03', '0666', 'Shamsunnahar Trad', '', '0', 'Mymensingh', 'Nandail', 'Nandail', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(667, '2017-08-03', '0667', 'Khan Traders', '', '0', 'Mymensingh', 'Kendua', 'Kendua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(668, '2017-08-03', '0668', 'Khairul Traders', '', '0', 'Mymensingh', 'Purura', 'Purura', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(669, '2017-08-03', '0669', 'MR Traders', '', '01716635357', 'Mymensingh', 'Ishwarganj', 'Ishwarganj', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(670, '2017-08-03', '0670', 'Rubal Traders', '', '01760822304', 'Netrokona', 'Kendua', 'Kendua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(671, '2017-08-03', '0671', 'Sah Traders', '', '0', 'Netrokona', 'Chirangbazar', 'Chirangbazar', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(672, '2017-08-03', '0672', 'Muslam Traders', '', '0', 'Mymensingh', '18Bari', '18Bari', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(673, '2017-08-03', '0673', 'Sarkar Hardware', 'Dipok Sarkar', '0', 'Netrokona', 'Kendua', 'Kendua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(674, '2017-08-03', '0673', 'Sarkar Hardware', 'Dipok Sarkar', '0', 'Netrokona', 'Kendua', 'Kendua', '', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(683, '2017-08-15', '001', 'Holcim Cement Bd. Ltd.', '', '01762-68898', '', '', 'Dhaka', 'hol147@gmail.com', '', '', '', 'company', '', 'active', ''),
(684, '2017-08-15', '002', 'Heidelberg Cement Bd. Ltd.', '', '01762-68898', '', '', 'Dhaka', 'heidelbertcem@gmail.com', '', '', '', 'company', '', 'active', ''),
(685, '2017-08-15', '003', 'Premier Cement Mills Ltd.', '', '01762-68898', '', '', 'Dhaka', 'pcml@gmail.com', '', '', '', 'company', '', 'active', ''),
(686, '2017-08-15', '004', 'Siam City Cement Bd. Ltd.', '', '01762-68898', '', '', 'Dhaka', 'sccbd@gmail.com', '', '', '', 'company', '', 'active', ''),
(687, '2017-08-15', '005', 'Bangladesh Rerolling Mills Ltd.', '', '01762-68898', '', '', 'Chittagong', 'bsrm@gmail.com', '', '', '', 'company', '', 'active', ''),
(688, '2017-08-15', '006', 'PHP Ispat Ltd.', '', '01762-68898', '', '', 'Chittagong', 'php@gmail.com', '', '', '', 'company', '', 'active', ''),
(689, '2017-08-15', '0674', 'Jibon Enterprise', 'Mr. Jibon', '01762688994', 'Netrokona', 'Netrakona-S', 'Netrokuna', '', 'superadmin', 'superadmin', 'private/images/default.png', 'client', 'do', 'active', 'godown'),
(690, '2017-08-15', '0675', 'Sonjit Enterprise', 'Sonjit Sutradhor', '01934042382', 'Mymensingh', 'Mymensingh Sodar', '54 Bora Bazar, Mymensingh', 'kaushikghosh430@gmail.com', '', '', 'private/images/default.png', 'client', 'do', 'active', '01'),
(691, '2017-08-15', '0676', 'Test', 'Test', '01234567890', 'Joypurhat', 'Joypurhat S', 'Mymensingh', 'ronycse9@gmail.com', '', '', 'private/images/default.png', 'client', 'do', 'active', 'godown'),
(693, '2017-08-16', '007', 'Seven UP', '', '01777777777', '', '', 'Mymensingh', 'sevenup@gmail.com', '', '', '', 'company', '', 'active', ''),
(695, '2017-08-16', '008', 'Test', '', '01234567890', '', '', 'Mymensingh', 'test@gmail.com', '', '', '', 'company', '', 'active', ''),
(696, '2017-08-17', '009', 'RAJA', '', '01775219457', '', '', '', '', '', '', '', 'company', '', 'active', ''),
(697, '2017-08-17', '010', 'FITL', '', '01234567890', '', '', 'Mymensingh', 'fitdevteam@gmail.com', '', '', '', 'company', '', 'active', ''),
(698, '2017-08-20', '0677', 'FITL', 'Sohel Vai', '01234567890', 'Mymensingh', 'Mymensingh Sodar', 'Mymensingh', 'fitdevteam@gmail.com', '', '', 'public/upload/client/client_676945.png', 'client', 'do', 'active', 'godown');

-- --------------------------------------------------------

--
-- Table structure for table `partybalance`
--

CREATE TABLE `partybalance` (
  `id` int(50) NOT NULL,
  `code` varchar(45) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `balance` decimal(10,2) NOT NULL COMMENT 'Vendors: +(balance) = Receivable and -(balance) = Payable amount. Client: +(balance) = Payable and -(balance) = Receivable amount',
  `credit_limit` decimal(10,2) NOT NULL COMMENT 'only for client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partybalance`
--

INSERT INTO `partybalance` (`id`, `code`, `brand`, `balance`, `credit_limit`) VALUES
(1, '0001', 'scan', '242414.00', '0.00'),
(2, '0001', 'insee', '59500.00', '0.00'),
(3, '0002', 'scan', '132050.00', '0.00'),
(4, '0002', 'premier', '404694.00', '0.00'),
(5, '0003', 'scan', '72500.00', '0.00'),
(6, '0003', 'premier', '2200.00', '0.00'),
(7, '0003', 'bsrm', '-492.00', '0.00'),
(8, '0004', 'scan', '-173095.00', '0.00'),
(9, '0005', 'scan', '180000.00', '0.00'),
(10, '0005', 'premier', '260113.00', '0.00'),
(11, '0006', 'scan', '417000.00', '0.00'),
(12, '0006', 'insee', '21500.00', '0.00'),
(13, '0007', 'scan', '10055.00', '0.00'),
(14, '0007', 'premier', '93800.00', '0.00'),
(15, '0007', 'insee', '91975.00', '0.00'),
(16, '0008', 'holcim', '159600.00', '0.00'),
(17, '0008', 'scan', '71740.00', '0.00'),
(18, '0008', 'bsrm', '44320.00', '0.00'),
(19, '0009', 'scan', '141400.00', '0.00'),
(20, '0009', 'premier', '104500.00', '0.00'),
(21, '0010', 'premier', '52800.00', '0.00'),
(22, '0010', 'bsrm', '6002.00', '0.00'),
(23, '0011', 'scan', '795000.00', '0.00'),
(24, '0011', 'premier', '424396.00', '0.00'),
(25, '0011', 'insee', '63000.00', '0.00'),
(26, '0012', 'scan', '-59390.00', '0.00'),
(27, '0013', 'scan', '145074.00', '0.00'),
(28, '0013', 'premier', '269720.00', '0.00'),
(29, '0013', 'bsrm', '106510.00', '0.00'),
(30, '0014', 'holcim', '180600.00', '0.00'),
(31, '0014', 'scan', '319900.00', '0.00'),
(32, '0014', 'premier', '360400.00', '0.00'),
(33, '0014', 'insee', '164400.00', '0.00'),
(34, '0014', 'bsrm', '2056.00', '0.00'),
(35, '0015', 'holcim', '231850.00', '0.00'),
(36, '0015', 'scan', '114000.00', '0.00'),
(37, '0015', 'insee', '409000.00', '0.00'),
(38, '0016', 'scan', '97060.00', '0.00'),
(39, '0016', 'premier', '281357.00', '0.00'),
(40, '0016', 'bsrm', '-33.00', '0.00'),
(41, '0017', 'scan', '206750.00', '0.00'),
(42, '0017', 'premier', '123180.00', '0.00'),
(43, '0018', 'premier', '117624.00', '0.00'),
(44, '0019', 'premier', '4172.00', '0.00'),
(45, '0020', 'scan', '172200.00', '0.00'),
(46, '0020', 'premier', '185100.00', '0.00'),
(47, '0021', 'scan', '55000.00', '0.00'),
(48, '0021', 'insee', '362750.00', '0.00'),
(49, '0022', 'scan', '233732.00', '0.00'),
(50, '0022', 'premier', '161800.00', '0.00'),
(51, '0023', 'premier', '55200.00', '0.00'),
(52, '0024', 'bsrm', '11293.00', '0.00'),
(53, '0025', 'insee', '99800.00', '0.00'),
(54, '0026', 'holcim', '500.00', '0.00'),
(55, '0026', 'scan', '388542.00', '0.00'),
(56, '0026', 'bsrm', '15684.00', '0.00'),
(57, '0027', 'scan', '211420.00', '0.00'),
(58, '0027', 'insee', '212500.00', '0.00'),
(59, '0027', 'bsrm', '115000.00', '0.00'),
(60, '0028', 'holcim', '-25000.00', '0.00'),
(61, '0028', 'scan', '142450.00', '0.00'),
(62, '0029', 'scan', '17600.00', '0.00'),
(63, '0029', 'premier', '2060.00', '0.00'),
(64, '0030', 'premier', '147500.00', '0.00'),
(65, '0031', 'holcim', '104232.00', '0.00'),
(66, '0031', 'scan', '-47800.00', '0.00'),
(67, '0031', 'bsrm', '94000.00', '0.00'),
(68, '0032', 'scan', '606450.00', '0.00'),
(69, '0033', 'scan', '42750.00', '0.00'),
(70, '0035', 'scan', '-6100.00', '0.00'),
(71, '0040', 'scan', '200.00', '0.00'),
(72, '0042', 'scan', '5400.00', '0.00'),
(73, '0043', 'scan', '128000.00', '0.00'),
(74, '0044', 'scan', '800.00', '0.00'),
(75, '0045', 'scan', '-93200.00', '0.00'),
(76, '0046', 'scan', '-7150.00', '0.00'),
(77, '0047', 'premier', '54040.00', '0.00'),
(78, '0048', 'holcim', '49173.00', '0.00'),
(79, '0048', 'scan', '142540.00', '0.00'),
(80, '0048', 'premier', '164600.00', '0.00'),
(81, '0049', 'premier', '10400.00', '0.00'),
(82, '0050', 'scan', '194000.00', '0.00'),
(83, '0051', 'scan', '72400.00', '0.00'),
(84, '0052', 'scan', '26500.00', '0.00'),
(85, '0053', 'scan', '1675.00', '0.00'),
(86, '0053', 'premier', '215000.00', '0.00'),
(87, '0054', 'insee', '6460.00', '0.00'),
(88, '0055', 'premier', '-36680.00', '0.00'),
(89, '0056', 'scan', '100170.00', '0.00'),
(90, '0056', 'premier', '776411.00', '0.00'),
(91, '0056', 'insee', '367900.00', '0.00'),
(92, '0057', 'premier', '2379.00', '0.00'),
(93, '0060', 'premier', '-40140.00', '0.00'),
(94, '0061', 'premier', '76500.00', '0.00'),
(95, '0062', 'holcim', '32300.00', '0.00'),
(96, '0062', 'premier', '43100.00', '0.00'),
(97, '0063', 'holcim', '45000.00', '0.00'),
(98, '0063', 'premier', '24450.00', '0.00'),
(99, '0063', 'insee', '20000.00', '0.00'),
(100, '0064', 'holcim', '87600.00', '0.00'),
(101, '0064', 'premier', '59800.00', '0.00'),
(102, '0064', 'insee', '39500.00', '0.00'),
(103, '0065', 'premier', '11300.00', '0.00'),
(104, '0066', 'insee', '67500.00', '0.00'),
(105, '0067', 'holcim', '1271915.00', '0.00'),
(106, '0068', 'holcim', '3800.00', '0.00'),
(107, '0068', 'scan', '38600.00', '0.00'),
(108, '0068', 'premier', '20200.00', '0.00'),
(109, '0069', 'scan', '11117.00', '0.00'),
(110, '0070', 'holcim', '43500.00', '0.00'),
(111, '0071', 'scan', '4550.00', '0.00'),
(112, '0072', 'bsrm', '84776.00', '0.00'),
(113, '0073', 'holcim', '159600.00', '0.00'),
(114, '0074', 'premier', '4600.00', '0.00'),
(115, '0074', 'bsrm', '2900.00', '0.00'),
(116, '0075', 'scan', '46700.00', '0.00'),
(117, '0076', 'holcim', '43000.00', '0.00'),
(118, '0077', 'bsrm', '10439.00', '0.00'),
(119, '0078', 'holcim', '29400.00', '0.00'),
(120, '0079', 'holcim', '14500.00', '0.00'),
(121, '0080', 'bsrm', '23119.00', '0.00'),
(122, '0081', 'scan', '7700.00', '0.00'),
(123, '0082', 'scan', '35284.00', '0.00'),
(124, '0083', 'bsrm', '19700.00', '0.00'),
(125, '0084', 'bsrm', '26900.00', '0.00'),
(126, '0085', 'holcim', '50774.00', '0.00'),
(127, '0086', 'bsrm', '31700.00', '0.00'),
(128, '0087', 'holcim', '25389.00', '0.00'),
(129, '0088', 'bsrm', '7100.00', '0.00'),
(130, '0089', 'holcim', '1389.00', '0.00'),
(131, '0090', 'bsrm', '25900.00', '0.00'),
(132, '0091', 'bsrm', '19100.00', '0.00'),
(133, '0092', 'bsrm', '2600.00', '0.00'),
(134, '0093', 'scan', '71988.00', '0.00'),
(135, '0094', 'holcim', '15240.00', '0.00'),
(136, '0095', 'holcim', '52384.00', '0.00'),
(137, '0096', 'bsrm', '8013.00', '0.00'),
(138, '0097', 'bsrm', '80099.00', '0.00'),
(139, '0098', 'bsrm', '17790.00', '0.00'),
(140, '0099', 'bsrm', '3037.00', '0.00'),
(141, '0100', 'bsrm', '2000.00', '0.00'),
(142, '0101', 'bsrm', '6090.00', '0.00'),
(143, '0102', 'bsrm', '6190.00', '0.00'),
(144, '0103', 'bsrm', '13500.00', '0.00'),
(145, '0104', 'bsrm', '30000.00', '0.00'),
(146, '0105', 'scan', '23450.00', '0.00'),
(147, '0106', 'bsrm', '3200.00', '0.00'),
(148, '0107', 'holcim', '22600.00', '0.00'),
(149, '0108', 'holcim', '52450.00', '0.00'),
(150, '0109', 'holcim', '80000.00', '0.00'),
(151, '0109', 'scan', '206100.00', '0.00'),
(152, '0110', 'premier', '114790.00', '0.00'),
(153, '0111', 'holcim', '131662.00', '0.00'),
(154, '0111', 'bsrm', '32600.00', '0.00'),
(155, '0112', 'holcim', '128000.00', '0.00'),
(156, '0113', 'holcim', '48675.00', '0.00'),
(157, '0114', 'holcim', '46500.00', '0.00'),
(158, '0115', 'bsrm', '480.00', '0.00'),
(159, '0116', 'scan', '280710.00', '0.00'),
(160, '0117', 'holcim', '93750.00', '0.00'),
(161, '0118', 'premier', '142500.00', '0.00'),
(162, '0119', 'holcim', '11500.00', '0.00'),
(163, '0120', 'holcim', '91800.00', '0.00'),
(164, '0120', 'bsrm', '17600.00', '0.00'),
(165, '0121', 'holcim', '32900.00', '0.00'),
(166, '0122', 'bsrm', '4000.00', '0.00'),
(167, '0123', 'premier', '7000.00', '0.00'),
(168, '0124', 'scan', '114655.00', '0.00'),
(169, '0124', 'premier', '114400.00', '0.00'),
(170, '0125', 'premier', '44000.00', '0.00'),
(171, '0126', 'scan', '488153.00', '0.00'),
(172, '0127', 'scan', '131445.00', '0.00'),
(173, '0128', 'premier', '17900.00', '0.00'),
(174, '0129', 'insee', '44690.00', '0.00'),
(175, '0130', 'holcim', '160000.00', '0.00'),
(176, '0130', 'scan', '191500.00', '0.00'),
(177, '0132', 'scan', '2000.00', '0.00'),
(178, '0132', 'insee', '2400.00', '0.00'),
(179, '0133', 'scan', '8500.00', '0.00'),
(180, '0134', 'scan', '800.00', '0.00'),
(181, '0136', 'scan', '223350.00', '0.00'),
(182, '0137', 'holcim', '216750.00', '0.00'),
(183, '0138', 'bsrm', '178200.00', '0.00'),
(184, '0139', 'bsrm', '7922.00', '0.00'),
(185, '0140', 'holcim', '21500.00', '0.00'),
(186, '0141', 'holcim', '126900.00', '0.00'),
(187, '0141', 'scan', '160000.00', '0.00'),
(188, '0142', 'holcim', '166100.00', '0.00'),
(189, '0143', 'scan', '94200.00', '0.00'),
(190, '0144', 'scan', '11770.00', '0.00'),
(191, '0145', 'bsrm', '2400.00', '0.00'),
(192, '0146', 'bsrm', '50300.00', '0.00'),
(193, '0147', 'scan', '103200.00', '0.00'),
(194, '0148', 'premier', '62950.00', '0.00'),
(195, '0148', 'insee', '2000.00', '0.00'),
(196, '0150', 'insee', '40000.00', '0.00'),
(197, '0151', 'scan', '28184.00', '0.00'),
(198, '0152', 'insee', '1100.00', '0.00'),
(199, '0153', 'insee', '18400.00', '0.00'),
(200, '0154', 'insee', '1400.00', '0.00'),
(201, '0155', 'insee', '1000.00', '0.00'),
(202, '0156', 'insee', '26050.00', '0.00'),
(203, '0157', 'insee', '1300.00', '0.00'),
(204, '0158', 'insee', '12500.00', '0.00'),
(205, '0159', 'holcim', '6200.00', '0.00'),
(206, '0159', 'premier', '417592.00', '0.00'),
(207, '0159', 'bsrm', '86461.00', '0.00'),
(208, '0160', 'premier', '36800.00', '0.00'),
(209, '0161', 'premier', '176115.00', '0.00'),
(210, '0162', 'holcim', '185600.00', '0.00'),
(211, '0162', 'scan', '300.00', '0.00'),
(212, '0162', 'premier', '313600.00', '0.00'),
(213, '0162', 'insee', '63370.00', '0.00'),
(214, '0163', 'premier', '231571.00', '0.00'),
(215, '0163', 'insee', '202750.00', '0.00'),
(216, '0163', 'bsrm', '28000.00', '0.00'),
(217, '0164', 'premier', '128800.00', '0.00'),
(218, '0165', 'premier', '710260.00', '0.00'),
(219, '0166', 'holcim', '106400.00', '0.00'),
(220, '0166', 'premier', '60000.00', '0.00'),
(221, '0167', 'holcim', '174050.00', '0.00'),
(222, '0167', 'premier', '51060.00', '0.00'),
(223, '0168', 'holcim', '246050.00', '0.00'),
(224, '0168', 'premier', '411550.00', '0.00'),
(225, '0169', 'premier', '66384.00', '0.00'),
(226, '0170', 'holcim', '661305.00', '0.00'),
(227, '0170', 'scan', '240650.00', '0.00'),
(228, '0170', 'premier', '306246.00', '0.00'),
(229, '0171', 'holcim', '226800.00', '0.00'),
(230, '0171', 'premier', '17200.00', '0.00'),
(231, '0171', 'bsrm', '51609.00', '0.00'),
(232, '0172', 'holcim', '133800.00', '0.00'),
(233, '0172', 'scan', '237750.00', '0.00'),
(234, '0172', 'premier', '504150.00', '0.00'),
(235, '0172', 'insee', '56900.00', '0.00'),
(236, '0172', 'bsrm', '11223.00', '0.00'),
(237, '0173', 'holcim', '9400.00', '0.00'),
(238, '0173', 'premier', '3600.00', '0.00'),
(239, '0174', 'holcim', '351800.00', '0.00'),
(240, '0174', 'premier', '119300.00', '0.00'),
(241, '0175', 'holcim', '204335.00', '0.00'),
(242, '0175', 'premier', '179277.00', '0.00'),
(243, '0176', 'holcim', '92400.00', '0.00'),
(244, '0176', 'scan', '815.00', '0.00'),
(245, '0176', 'premier', '167000.00', '0.00'),
(246, '0176', 'insee', '204560.00', '0.00'),
(247, '0177', 'holcim', '75000.00', '0.00'),
(248, '0177', 'premier', '32600.00', '0.00'),
(249, '0178', 'holcim', '128260.00', '0.00'),
(250, '0178', 'scan', '103200.00', '0.00'),
(251, '0178', 'premier', '1200.00', '0.00'),
(252, '0179', 'holcim', '216550.00', '0.00'),
(253, '0179', 'scan', '52250.00', '0.00'),
(254, '0179', 'premier', '2400.00', '0.00'),
(255, '0180', 'premier', '154012.00', '0.00'),
(256, '0181', 'holcim', '159900.00', '0.00'),
(257, '0181', 'premier', '2040.00', '0.00'),
(258, '0183', 'premier', '-3000.00', '0.00'),
(259, '0184', 'premier', '-100.00', '0.00'),
(260, '0185', 'holcim', '941000.00', '0.00'),
(261, '0185', 'premier', '254230.00', '0.00'),
(262, '0186', 'holcim', '500.00', '0.00'),
(263, '0186', 'premier', '-3700.00', '0.00'),
(264, '0187', 'premier', '55870.00', '0.00'),
(265, '0188', 'premier', '169432.00', '0.00'),
(266, '0189', 'holcim', '113300.00', '0.00'),
(267, '0189', 'scan', '1950.00', '0.00'),
(268, '0189', 'premier', '5372.00', '0.00'),
(269, '0190', 'premier', '194710.00', '0.00'),
(270, '0191', 'holcim', '48490.00', '0.00'),
(271, '0191', 'premier', '640.00', '0.00'),
(272, '0192', 'holcim', '22200.00', '0.00'),
(273, '0192', 'premier', '-1200.00', '0.00'),
(274, '0193', 'premier', '113010.00', '0.00'),
(275, '0194', 'premier', '218500.00', '0.00'),
(276, '0195', 'premier', '-800.00', '0.00'),
(277, '0196', 'premier', '13800.00', '0.00'),
(278, '0197', 'premier', '89950.00', '0.00'),
(279, '0198', 'premier', '28228.00', '0.00'),
(280, '0200', 'premier', '74000.00', '0.00'),
(281, '0201', 'premier', '87760.00', '0.00'),
(282, '0202', 'premier', '280700.00', '0.00'),
(283, '0203', 'premier', '128600.00', '0.00'),
(284, '0204', 'holcim', '-421400.00', '0.00'),
(285, '0205', 'holcim', '389750.00', '0.00'),
(286, '0205', 'premier', '62040.00', '0.00'),
(287, '0206', 'premier', '55300.00', '0.00'),
(288, '0207', 'holcim', '178850.00', '0.00'),
(289, '0207', 'premier', '160686.80', '0.00'),
(290, '0208', 'premier', '182282.00', '0.00'),
(291, '0210', 'holcim', '48300.00', '0.00'),
(292, '0210', 'premier', '73750.00', '0.00'),
(293, '0211', 'holcim', '74700.00', '0.00'),
(294, '0212', 'scan', '-300.00', '0.00'),
(295, '0213', 'premier', '31800.00', '0.00'),
(296, '0214', 'premier', '175000.00', '0.00'),
(297, '0215', 'premier', '40000.00', '0.00'),
(298, '0216', 'premier', '136800.00', '0.00'),
(299, '0217', 'premier', '100300.00', '0.00'),
(300, '0218', 'premier', '44100.00', '0.00'),
(301, '0219', 'premier', '154600.00', '0.00'),
(302, '0220', 'holcim', '48000.00', '0.00'),
(303, '0220', 'premier', '16100.00', '0.00'),
(304, '0221', 'premier', '23600.00', '0.00'),
(305, '0222', 'premier', '87604.00', '0.00'),
(306, '0224', 'premier', '107400.00', '0.00'),
(307, '0225', 'holcim', '28000.00', '0.00'),
(308, '0227', 'premier', '57562.00', '0.00'),
(309, '0228', 'premier', '6200.00', '0.00'),
(310, '0229', 'premier', '126200.00', '0.00'),
(311, '0230', 'holcim', '278220.00', '0.00'),
(312, '0230', 'premier', '155600.00', '0.00'),
(313, '0231', 'premier', '103800.00', '0.00'),
(314, '0232', 'holcim', '654350.00', '0.00'),
(315, '0232', 'scan', '496154.00', '0.00'),
(316, '0232', 'premier', '119200.00', '0.00'),
(317, '0232', 'bsrm', '370905.00', '0.00'),
(318, '0233', 'holcim', '1947042.00', '0.00'),
(319, '0233', 'premier', '798500.00', '0.00'),
(320, '0234', 'premier', '68600.00', '0.00'),
(321, '0235', 'insee', '96510.00', '0.00'),
(322, '0236', 'scan', '12000.00', '0.00'),
(323, '0237', 'premier', '9100.00', '0.00'),
(324, '0238', 'premier', '85586.00', '0.00'),
(325, '0239', 'holcim', '58150.00', '0.00'),
(326, '0240', 'holcim', '76400.00', '0.00'),
(327, '0241', 'holcim', '8150.00', '0.00'),
(328, '0242', 'premier', '70800.00', '0.00'),
(329, '0243', 'holcim', '16589.00', '0.00'),
(330, '0244', 'premier', '104700.00', '0.00'),
(331, '0245', 'scan', '3650.00', '0.00'),
(332, '0245', 'bsrm', '23133.00', '0.00'),
(333, '0246', 'holcim', '6600.00', '0.00'),
(334, '0247', 'holcim', '47000.00', '0.00'),
(335, '0247', 'premier', '107800.00', '0.00'),
(336, '0248', 'premier', '20000.00', '0.00'),
(337, '0249', 'premier', '1034.00', '0.00'),
(338, '0250', 'premier', '20600.00', '0.00'),
(339, '0251', 'bsrm', '15000.00', '0.00'),
(340, '0252', 'holcim', '20000.00', '0.00'),
(341, '0253', 'holcim', '254238.00', '0.00'),
(342, '0253', 'scan', '420400.00', '0.00'),
(343, '0253', 'premier', '2288.00', '0.00'),
(344, '0253', 'bsrm', '-3900.00', '0.00'),
(345, '0254', 'holcim', '784000.00', '0.00'),
(346, '0254', 'scan', '447400.00', '0.00'),
(347, '0254', 'premier', '136800.00', '0.00'),
(348, '0255', 'holcim', '861875.00', '0.00'),
(349, '0255', 'scan', '580600.00', '0.00'),
(350, '0255', 'premier', '97400.00', '0.00'),
(351, '0256', 'holcim', '180950.00', '0.00'),
(352, '0256', 'premier', '675.00', '0.00'),
(353, '0256', 'insee', '31000.00', '0.00'),
(354, '0257', 'holcim', '2000.00', '0.00'),
(355, '0257', 'scan', '-200.00', '0.00'),
(356, '0258', 'holcim', '67750.00', '0.00'),
(357, '0258', 'scan', '26490.00', '0.00'),
(358, '0258', 'premier', '84050.00', '0.00'),
(359, '0258', 'insee', '58000.00', '0.00'),
(360, '0259', 'holcim', '160400.00', '0.00'),
(361, '0259', 'scan', '425780.00', '0.00'),
(362, '0259', 'premier', '-6400.00', '0.00'),
(363, '0260', 'holcim', '-7800.00', '0.00'),
(364, '0261', 'premier', '94150.00', '0.00'),
(365, '0261', 'insee', '4000.00', '0.00'),
(366, '0262', 'holcim', '727518.00', '0.00'),
(367, '0262', 'scan', '10800.00', '0.00'),
(368, '0262', 'insee', '305700.00', '0.00'),
(369, '0263', 'holcim', '925400.00', '0.00'),
(370, '0263', 'premier', '9400.00', '0.00'),
(371, '0264', 'scan', '29020.00', '0.00'),
(372, '0264', 'premier', '81000.00', '0.00'),
(373, '0264', 'insee', '24200.00', '0.00'),
(374, '0265', 'holcim', '666950.00', '0.00'),
(375, '0265', 'scan', '180000.00', '0.00'),
(376, '0265', 'premier', '68900.00', '0.00'),
(377, '0266', 'holcim', '68700.00', '0.00'),
(378, '0266', 'premier', '312600.00', '0.00'),
(379, '0267', 'scan', '266100.00', '0.00'),
(380, '0267', 'premier', '959988.00', '0.00'),
(381, '0267', 'insee', '400.00', '0.00'),
(382, '0267', 'bsrm', '102717.00', '0.00'),
(383, '0268', 'holcim', '23200.00', '0.00'),
(384, '0268', 'premier', '39000.00', '0.00'),
(385, '0268', 'insee', '172300.00', '0.00'),
(386, '0268', 'bsrm', '4136.00', '0.00'),
(387, '0269', 'holcim', '380500.00', '0.00'),
(388, '0269', 'scan', '179750.00', '0.00'),
(389, '0270', 'holcim', '31200.00', '0.00'),
(390, '0270', 'premier', '-10000.00', '0.00'),
(391, '0270', 'insee', '10000.00', '0.00'),
(392, '0271', 'holcim', '240190.00', '0.00'),
(393, '0271', 'premier', '47800.00', '0.00'),
(394, '0272', 'premier', '-10100.00', '0.00'),
(395, '0272', 'insee', '36000.00', '0.00'),
(396, '0273', 'premier', '18276.00', '0.00'),
(397, '0274', 'insee', '55500.00', '0.00'),
(398, '0275', 'holcim', '605900.00', '0.00'),
(399, '0275', 'scan', '446800.00', '0.00'),
(400, '0276', 'premier', '29592.00', '0.00'),
(401, '0277', 'insee', '80950.00', '0.00'),
(402, '0278', 'scan', '9220.00', '0.00'),
(403, '0278', 'premier', '4800.00', '0.00'),
(404, '0278', 'insee', '38000.00', '0.00'),
(405, '0279', 'premier', '57860.00', '0.00'),
(406, '0280', 'premier', '198500.00', '0.00'),
(407, '0280', 'insee', '168140.00', '0.00'),
(408, '0281', 'premier', '327507.00', '0.00'),
(409, '0282', 'holcim', '21600.00', '0.00'),
(410, '0283', 'holcim', '-3425.00', '0.00'),
(411, '0284', 'premier', '41440.00', '0.00'),
(412, '0285', 'holcim', '235800.00', '0.00'),
(413, '0285', 'premier', '294420.00', '0.00'),
(414, '0286', 'holcim', '500.00', '0.00'),
(415, '0286', 'scan', '5600.00', '0.00'),
(416, '0287', 'holcim', '3000.00', '0.00'),
(417, '0287', 'premier', '4340.00', '0.00'),
(418, '0288', 'premier', '85100.00', '0.00'),
(419, '0288', 'insee', '66000.00', '0.00'),
(420, '0289', 'holcim', '532600.00', '0.00'),
(421, '0289', 'insee', '38000.00', '0.00'),
(422, '0290', 'holcim', '98250.00', '0.00'),
(423, '0290', 'scan', '827550.00', '0.00'),
(424, '0290', 'bsrm', '-707000.00', '0.00'),
(425, '0291', 'scan', '15200.00', '0.00'),
(426, '0291', 'premier', '8600.00', '0.00'),
(427, '0292', 'holcim', '36730.00', '0.00'),
(428, '0292', 'scan', '160800.00', '0.00'),
(429, '0293', 'premier', '5600.00', '0.00'),
(430, '0293', 'insee', '75600.00', '0.00'),
(431, '0294', 'scan', '28000.00', '0.00'),
(432, '0294', 'premier', '8508.00', '0.00'),
(433, '0294', 'insee', '157600.00', '0.00'),
(434, '0296', 'premier', '81840.00', '0.00'),
(435, '0297', 'scan', '23000.00', '0.00'),
(436, '0297', 'premier', '400.00', '0.00'),
(437, '0298', 'holcim', '428000.00', '0.00'),
(438, '0298', 'bsrm', '89.00', '0.00'),
(439, '0299', 'holcim', '122200.00', '0.00'),
(440, '0302', 'premier', '15800.00', '0.00'),
(441, '0303', 'premier', '305000.00', '0.00'),
(442, '0303', 'insee', '90000.00', '0.00'),
(443, '0305', 'premier', '50000.00', '0.00'),
(444, '0306', 'premier', '147400.00', '0.00'),
(445, '0307', 'premier', '129200.00', '0.00'),
(446, '0307', 'insee', '150000.00', '0.00'),
(447, '0308', 'premier', '42400.00', '0.00'),
(448, '0309', 'scan', '-3750.00', '0.00'),
(449, '0310', 'scan', '12500.00', '0.00'),
(450, '0310', 'premier', '14800.00', '0.00'),
(451, '0310', 'bsrm', '450.00', '0.00'),
(452, '0311', 'holcim', '298950.00', '0.00'),
(453, '0312', 'premier', '103700.00', '0.00'),
(454, '0313', 'scan', '35350.00', '0.00'),
(455, '0314', 'bsrm', '118500.00', '0.00'),
(456, '0315', 'holcim', '33300.00', '0.00'),
(457, '0316', 'holcim', '15100.00', '0.00'),
(458, '0317', 'holcim', '6116.00', '0.00'),
(459, '0318', 'holcim', '17700.00', '0.00'),
(460, '0319', 'bsrm', '19600.00', '0.00'),
(461, '0320', 'bsrm', '26500.00', '0.00'),
(462, '0321', 'scan', '2000.00', '0.00'),
(463, '0322', 'premier', '2500.00', '0.00'),
(464, '0323', 'premier', '41540.00', '0.00'),
(465, '0324', 'holcim', '133900.00', '0.00'),
(466, '0324', 'premier', '15045.00', '0.00'),
(467, '0325', 'premier', '50400.00', '0.00'),
(468, '0326', 'holcim', '89500.00', '0.00'),
(469, '0326', 'scan', '129290.00', '0.00'),
(470, '0326', 'insee', '86000.00', '0.00'),
(471, '0327', 'premier', '5000.00', '0.00'),
(472, '0328', 'premier', '65000.00', '0.00'),
(473, '0329', 'holcim', '42300.00', '0.00'),
(474, '0329', 'scan', '90750.00', '0.00'),
(475, '0329', 'premier', '102908.00', '0.00'),
(476, '0330', 'holcim', '144000.00', '0.00'),
(477, '0330', 'scan', '80000.00', '0.00'),
(478, '0331', 'scan', '383460.00', '0.00'),
(479, '0331', 'premier', '108324.00', '0.00'),
(480, '0332', 'holcim', '2000.00', '0.00'),
(481, '0332', 'scan', '240700.00', '0.00'),
(482, '0332', 'premier', '164216.00', '0.00'),
(483, '0332', 'insee', '246600.00', '0.00'),
(484, '0333', 'holcim', '149000.00', '0.00'),
(485, '0333', 'premier', '11300.00', '0.00'),
(486, '0333', 'insee', '88000.00', '0.00'),
(487, '0333', 'bsrm', '33000.00', '0.00'),
(488, '0334', 'holcim', '177550.00', '0.00'),
(489, '0334', 'premier', '46318.00', '0.00'),
(490, '0335', 'premier', '102764.00', '0.00'),
(491, '0336', 'holcim', '37000.00', '0.00'),
(492, '0337', 'scan', '82785.00', '0.00'),
(493, '0337', 'premier', '91221.00', '0.00'),
(494, '0338', 'holcim', '154000.00', '0.00'),
(495, '0338', 'premier', '121200.00', '0.00'),
(496, '0339', 'holcim', '-2000.00', '0.00'),
(497, '0339', 'scan', '57670.00', '0.00'),
(498, '0339', 'insee', '221800.00', '0.00'),
(499, '0340', 'holcim', '66036.00', '0.00'),
(500, '0340', 'premier', '35700.00', '0.00'),
(501, '0340', 'insee', '69500.00', '0.00'),
(502, '0341', 'scan', '9500.00', '0.00'),
(503, '0341', 'premier', '5600.00', '0.00'),
(504, '0341', 'insee', '3000.00', '0.00'),
(505, '0342', 'premier', '48900.00', '0.00'),
(506, '0342', 'insee', '234800.00', '0.00'),
(507, '0343', 'scan', '1000.00', '0.00'),
(508, '0343', 'premier', '830.00', '0.00'),
(509, '0344', 'holcim', '58500.00', '0.00'),
(510, '0344', 'scan', '201950.00', '0.00'),
(511, '0344', 'premier', '5000.00', '0.00'),
(512, '0344', 'bsrm', '-14873.40', '0.00'),
(513, '0346', 'holcim', '66500.00', '0.00'),
(514, '0346', 'scan', '16600.00', '0.00'),
(515, '0348', 'premier', '21000.00', '0.00'),
(516, '0349', 'premier', '35000.00', '0.00'),
(517, '0350', 'holcim', '-500.00', '0.00'),
(518, '0351', 'holcim', '22550.00', '0.00'),
(519, '0351', 'scan', '5000.00', '0.00'),
(520, '0351', 'premier', '-520.00', '0.00'),
(521, '0352', 'premier', '54950.00', '0.00'),
(522, '0353', 'holcim', '4900.00', '0.00'),
(523, '0353', 'premier', '3760.00', '0.00'),
(524, '0354', 'holcim', '588894.00', '0.00'),
(525, '0354', 'scan', '5068.00', '0.00'),
(526, '0355', 'bsrm', '4500.00', '0.00'),
(527, '0356', 'holcim', '106960.00', '0.00'),
(528, '0356', 'scan', '118750.00', '0.00'),
(529, '0356', 'bsrm', '118750.00', '0.00'),
(530, '0357', 'holcim', '110800.00', '0.00'),
(531, '0357', 'bsrm', '168809.00', '0.00'),
(532, '0359', 'premier', '68600.00', '0.00'),
(533, '0360', 'holcim', '391650.00', '0.00'),
(534, '0360', 'insee', '37800.00', '0.00'),
(535, '0361', 'premier', '149440.00', '0.00'),
(536, '0361', 'bsrm', '71887.00', '0.00'),
(537, '0362', 'scan', '3150.00', '0.00'),
(538, '0362', 'premier', '97620.00', '0.00'),
(539, '0363', 'bsrm', '1950.00', '0.00'),
(540, '0364', 'holcim', '93475.00', '0.00'),
(541, '0364', 'bsrm', '93975.00', '0.00'),
(542, '0365', 'holcim', '42068.00', '0.00'),
(543, '0366', 'holcim', '15000.00', '0.00'),
(544, '0366', 'bsrm', '65000.00', '0.00'),
(545, '0367', 'holcim', '101400.00', '0.00'),
(546, '0367', 'bsrm', '101400.00', '0.00'),
(547, '0368', 'holcim', '32576.00', '0.00'),
(548, '0369', 'holcim', '45337.00', '0.00'),
(549, '0369', 'bsrm', '45337.00', '0.00'),
(550, '0370', 'holcim', '30106.00', '0.00'),
(551, '0371', 'holcim', '40289.00', '0.00'),
(552, '0372', 'holcim', '70100.00', '0.00'),
(553, '0373', 'holcim', '71650.00', '0.00'),
(554, '0373', 'bsrm', '71650.00', '0.00'),
(555, '0374', 'premier', '3600.00', '0.00'),
(556, '0374', 'bsrm', '5350.00', '0.00'),
(557, '0375', 'bsrm', '4700.00', '0.00'),
(558, '0376', 'bsrm', '23520.00', '0.00'),
(559, '0377', 'holcim', '12575.00', '0.00'),
(560, '0378', 'bsrm', '2650.00', '0.00'),
(561, '0379', 'bsrm', '24000.00', '0.00'),
(562, '0380', 'premier', '8400.00', '0.00'),
(563, '0381', 'scan', '1350.00', '0.00'),
(564, '0382', 'holcim', '559125.00', '0.00'),
(565, '0382', 'premier', '376300.00', '0.00'),
(566, '0385', 'scan', '20320.00', '0.00'),
(567, '0385', 'bsrm', '12530.00', '0.00'),
(568, '0386', 'premier', '-1970.00', '0.00'),
(569, '0388', 'holcim', '150800.00', '0.00'),
(570, '0388', 'premier', '-40000.00', '0.00'),
(571, '0389', 'holcim', '75350.00', '0.00'),
(572, '0390', 'holcim', '84500.00', '0.00'),
(573, '0390', 'scan', '191900.00', '0.00'),
(574, '0391', 'premier', '12600.00', '0.00'),
(575, '0392', 'holcim', '206750.00', '0.00'),
(576, '0392', 'scan', '531050.00', '0.00'),
(577, '0392', 'premier', '54600.00', '0.00'),
(578, '0392', 'bsrm', '1249299.00', '0.00'),
(579, '0393', 'holcim', '627650.00', '0.00'),
(580, '0393', 'scan', '1200.00', '0.00'),
(581, '0393', 'premier', '35500.00', '0.00'),
(582, '0393', 'insee', '41400.00', '0.00'),
(583, '0394', 'holcim', '460600.00', '0.00'),
(584, '0394', 'premier', '100.00', '0.00'),
(585, '0394', 'bsrm', '9096.00', '0.00'),
(586, '0395', 'holcim', '-222414.00', '0.00'),
(587, '0395', 'scan', '277600.00', '0.00'),
(588, '0395', 'premier', '280000.00', '0.00'),
(589, '0396', 'holcim', '38200.00', '0.00'),
(590, '0396', 'scan', '178385.00', '0.00'),
(591, '0396', 'premier', '3200.00', '0.00'),
(592, '0397', 'holcim', '394850.00', '0.00'),
(593, '0397', 'scan', '411481.00', '0.00'),
(594, '0397', 'premier', '-4300.00', '0.00'),
(595, '0397', 'insee', '458800.00', '0.00'),
(596, '0397', 'bsrm', '100355.00', '0.00'),
(597, '0398', 'scan', '33980.00', '0.00'),
(598, '0398', 'premier', '209400.00', '0.00'),
(599, '0398', 'insee', '55000.00', '0.00'),
(600, '0398', 'bsrm', '4700.00', '0.00'),
(601, '0399', 'holcim', '202600.00', '0.00'),
(602, '0399', 'scan', '12290.00', '0.00'),
(603, '0399', 'premier', '83300.00', '0.00'),
(604, '0400', 'holcim', '565250.00', '0.00'),
(605, '0400', 'premier', '19700.00', '0.00'),
(606, '0400', 'bsrm', '1397.00', '0.00'),
(607, '0401', 'holcim', '680410.00', '0.00'),
(608, '0401', 'scan', '-6600.00', '0.00'),
(609, '0401', 'premier', '-28000.00', '0.00'),
(610, '0401', 'bsrm', '180769.00', '0.00'),
(611, '0402', 'holcim', '11750.00', '0.00'),
(612, '0402', 'scan', '-1200.00', '0.00'),
(613, '0402', 'insee', '1200.00', '0.00'),
(614, '0403', 'holcim', '58730.00', '0.00'),
(615, '0403', 'scan', '-223190.00', '0.00'),
(616, '0403', 'premier', '71400.00', '0.00'),
(617, '0403', 'bsrm', '-498800.00', '0.00'),
(618, '0404', 'holcim', '253430.00', '0.00'),
(619, '0404', 'premier', '81200.00', '0.00'),
(620, '0405', 'holcim', '263100.00', '0.00'),
(621, '0405', 'scan', '-42000.00', '0.00'),
(622, '0406', 'holcim', '56800.00', '0.00'),
(623, '0407', 'holcim', '604600.00', '0.00'),
(624, '0408', 'holcim', '128400.00', '0.00'),
(625, '0408', 'insee', '10000.00', '0.00'),
(626, '0409', 'bsrm', '3459.00', '0.00'),
(627, '0410', 'holcim', '43750.00', '0.00'),
(628, '0410', 'scan', '1000.00', '0.00'),
(629, '0411', 'holcim', '117600.00', '0.00'),
(630, '0412', 'holcim', '234800.00', '0.00'),
(631, '0413', 'bsrm', '10000.00', '0.00'),
(632, '0414', 'holcim', '251200.00', '0.00'),
(633, '0414', 'scan', '-55200.00', '0.00'),
(634, '0415', 'premier', '10500.00', '0.00'),
(635, '0415', 'bsrm', '340100.00', '0.00'),
(636, '0416', 'holcim', '1850.00', '0.00'),
(637, '0417', 'holcim', '10800.00', '0.00'),
(638, '0418', 'holcim', '40000.00', '0.00'),
(639, '0419', 'holcim', '8600.00', '0.00'),
(640, '0419', 'scan', '35800.00', '0.00'),
(641, '0419', 'premier', '218000.00', '0.00'),
(642, '0419', 'insee', '68000.00', '0.00'),
(643, '0419', 'bsrm', '19158.00', '0.00'),
(644, '0420', 'holcim', '1000.00', '0.00'),
(645, '0420', 'premier', '321300.00', '0.00'),
(646, '0421', 'premier', '-800.00', '0.00'),
(647, '0422', 'holcim', '27518.00', '0.00'),
(648, '0423', 'holcim', '27079.00', '0.00'),
(649, '0424', 'holcim', '3000.00', '0.00'),
(650, '0425', 'holcim', '20800.00', '0.00'),
(651, '0426', 'holcim', '7778.00', '0.00'),
(652, '0427', 'premier', '21200.00', '0.00'),
(653, '0427', 'bsrm', '5800.00', '0.00'),
(654, '0428', 'premier', '52600.00', '0.00'),
(655, '0429', 'holcim', '21700.00', '0.00'),
(656, '0430', 'scan', '15530.00', '0.00'),
(657, '0430', 'premier', '72700.00', '0.00'),
(658, '0431', 'holcim', '76400.00', '0.00'),
(659, '0431', 'premier', '161080.00', '0.00'),
(660, '0431', 'insee', '543800.00', '0.00'),
(661, '0432', 'holcim', '574550.00', '0.00'),
(662, '0432', 'scan', '403180.00', '0.00'),
(663, '0432', 'premier', '118700.00', '0.00'),
(664, '0432', 'insee', '382750.00', '0.00'),
(665, '0433', 'premier', '227656.00', '0.00'),
(666, '0433', 'insee', '69280.00', '0.00'),
(667, '0434', 'holcim', '105200.00', '0.00'),
(668, '0434', 'scan', '6930.00', '0.00'),
(669, '0434', 'premier', '10800.00', '0.00'),
(670, '0434', 'insee', '382550.00', '0.00'),
(671, '0435', 'insee', '106000.00', '0.00'),
(672, '0436', 'premier', '55200.00', '0.00'),
(673, '0437', 'premier', '56200.00', '0.00'),
(674, '0437', 'insee', '47000.00', '0.00'),
(675, '0438', 'premier', '5350.00', '0.00'),
(676, '0438', 'insee', '432650.00', '0.00'),
(677, '0439', 'premier', '-19570.00', '0.00'),
(678, '0439', 'insee', '407300.00', '0.00'),
(679, '0440', 'premier', '92500.00', '0.00'),
(680, '0440', 'insee', '92900.00', '0.00'),
(681, '0441', 'premier', '-10508.00', '0.00'),
(682, '0442', 'premier', '1188474.00', '0.00'),
(683, '0443', 'premier', '724094.00', '0.00'),
(684, '0444', 'premier', '110834.00', '0.00'),
(685, '0444', 'insee', '332600.00', '0.00'),
(686, '0445', 'insee', '34300.00', '0.00'),
(687, '0446', 'premier', '8340.00', '0.00'),
(688, '0447', 'premier', '78300.00', '0.00'),
(689, '0447', 'insee', '81000.00', '0.00'),
(690, '0448', 'premier', '82220.00', '0.00'),
(691, '0449', 'premier', '148600.00', '0.00'),
(692, '0450', 'holcim', '1000.00', '0.00'),
(693, '0450', 'premier', '330470.00', '0.00'),
(694, '0451', 'premier', '206200.00', '0.00'),
(695, '008', 'premier', '-1400000.00', '0.00'),
(696, '0453', 'premier', '24700.00', '0.00'),
(697, '0454', 'holcim', '38900.00', '0.00'),
(698, '0454', 'premier', '150900.00', '0.00'),
(699, '0454', 'insee', '185000.00', '0.00'),
(700, '0455', 'holcim', '42000.00', '0.00'),
(701, '0455', 'premier', '276628.00', '0.00'),
(702, '0455', 'insee', '28000.00', '0.00'),
(703, '0456', 'holcim', '158000.00', '0.00'),
(704, '0456', 'premier', '179300.00', '0.00'),
(705, '0456', 'insee', '367000.00', '0.00'),
(706, '0457', 'insee', '73750.00', '0.00'),
(707, '0458', 'insee', '7400.00', '0.00'),
(708, '0460', 'premier', '-56200.00', '0.00'),
(709, '0461', 'premier', '37200.00', '0.00'),
(710, '0462', 'premier', '211600.00', '0.00'),
(711, '0463', 'premier', '87196.00', '0.00'),
(712, '0464', 'holcim', '147000.00', '0.00'),
(713, '0464', 'premier', '458018.00', '0.00'),
(714, '0465', 'premier', '48150.00', '0.00'),
(715, '0466', 'premier', '400.00', '0.00'),
(716, '0466', 'insee', '1000.00', '0.00'),
(717, '0467', 'premier', '23600.00', '0.00'),
(718, '0467', 'insee', '131000.00', '0.00'),
(719, '0468', 'premier', '178320.00', '0.00'),
(720, '0468', 'insee', '122000.00', '0.00'),
(721, '0469', 'premier', '46000.00', '0.00'),
(722, '0470', 'holcim', '-598850.00', '0.00'),
(723, '0470', 'premier', '-700.00', '0.00'),
(724, '0470', 'bsrm', '-363034.00', '0.00'),
(725, '0471', 'holcim', '221500.00', '0.00'),
(726, '0472', 'premier', '18200.00', '0.00'),
(727, '0473', 'premier', '41200.00', '0.00'),
(728, '0474', 'premier', '29692.00', '0.00'),
(729, '0475', 'premier', '190424.00', '0.00'),
(730, '0476', 'insee', '18500.00', '0.00'),
(731, '0477', 'premier', '295768.00', '0.00'),
(732, '0478', 'insee', '38000.00', '0.00'),
(733, '0478', 'bsrm', '19100.00', '0.00'),
(734, '0479', 'insee', '178000.00', '0.00'),
(735, '0480', 'holcim', '52575.00', '0.00'),
(736, '0480', 'premier', '3200.00', '0.00'),
(737, '0481', 'premier', '74600.00', '0.00'),
(738, '0483', 'insee', '113600.00', '0.00'),
(739, '0484', 'premier', '125500.00', '0.00'),
(740, '0485', 'premier', '97000.00', '0.00'),
(741, '0486', 'premier', '60000.00', '0.00'),
(742, '0487', 'holcim', '51400.00', '0.00'),
(743, '0487', 'premier', '65000.00', '0.00'),
(744, '0488', 'scan', '305045.00', '0.00'),
(745, '0488', 'premier', '77800.00', '0.00'),
(746, '0488', 'insee', '141000.00', '0.00'),
(747, '0489', 'scan', '128060.00', '0.00'),
(748, '0489', 'premier', '163400.00', '0.00'),
(749, '0490', 'premier', '109150.00', '0.00'),
(750, '0491', 'premier', '28800.00', '0.00'),
(751, '0492', 'scan', '254957.00', '0.00'),
(752, '0493', 'premier', '71700.00', '0.00'),
(753, '0494', 'premier', '115000.00', '0.00'),
(754, '0495', 'insee', '238600.00', '0.00'),
(755, '0496', 'holcim', '18700.00', '0.00'),
(756, '0497', 'premier', '7450.00', '0.00'),
(757, '0499', 'insee', '164500.00', '0.00'),
(758, '0500', 'premier', '7000.00', '0.00'),
(759, '0501', 'premier', '28700.00', '0.00'),
(760, '0502', 'premier', '2800.00', '0.00'),
(761, '0503', 'scan', '35315.00', '0.00'),
(762, '0504', 'insee', '11100.00', '0.00'),
(763, '0505', 'premier', '1000.00', '0.00'),
(764, '0506', 'premier', '8200.00', '0.00'),
(765, '0507', 'scan', '16790.00', '0.00'),
(766, '0507', 'premier', '4000.00', '0.00'),
(767, '0508', 'premier', '3000.00', '0.00'),
(768, '0509', 'premier', '36500.00', '0.00'),
(769, '0509', 'insee', '29000.00', '0.00'),
(770, '0510', 'premier', '60813.00', '0.00'),
(771, '0511', 'premier', '155050.00', '0.00'),
(772, '0512', 'scan', '84080.00', '0.00'),
(773, '0512', 'premier', '18800.00', '0.00'),
(774, '0513', 'insee', '240000.00', '0.00'),
(775, '0514', 'scan', '160300.00', '0.00'),
(776, '0514', 'bsrm', '91650.00', '0.00'),
(777, '0515', 'bsrm', '35128.00', '0.00'),
(778, '0516', 'scan', '74200.00', '0.00'),
(779, '0517', 'scan', '94700.00', '0.00'),
(780, '0518', 'bsrm', '16100.00', '0.00'),
(781, '0519', 'bsrm', '25100.00', '0.00'),
(782, '0520', 'holcim', '52950.00', '0.00'),
(783, '0520', 'bsrm', '62900.00', '0.00'),
(784, '0521', 'holcim', '4200.00', '0.00'),
(785, '0522', 'bsrm', '39000.00', '0.00'),
(786, '0523', 'holcim', '126355.00', '0.00'),
(787, '0524', 'holcim', '4654.00', '0.00'),
(788, '0525', 'bsrm', '55500.00', '0.00'),
(789, '0526', 'scan', '59100.00', '0.00'),
(790, '0526', 'bsrm', '67750.00', '0.00'),
(791, '0527', 'bsrm', '4200.00', '0.00'),
(792, '0528', 'holcim', '35150.00', '0.00'),
(793, '0529', 'bsrm', '17000.00', '0.00'),
(794, '0530', 'scan', '164600.00', '0.00'),
(795, '0531', 'scan', '103700.00', '0.00'),
(796, '0531', 'premier', '285100.00', '0.00'),
(797, '0532', 'bsrm', '72400.00', '0.00'),
(798, '0533', 'holcim', '35800.00', '0.00'),
(799, '0534', 'holcim', '62100.00', '0.00'),
(800, '0535', 'premier', '46600.00', '0.00'),
(801, '0536', 'premier', '35400.00', '0.00'),
(802, '0537', 'premier', '29700.00', '0.00'),
(803, '0538', 'premier', '34900.00', '0.00'),
(804, '0539', 'holcim', '31050.00', '0.00'),
(805, '0539', 'premier', '52700.00', '0.00'),
(806, '0540', 'scan', '80500.00', '0.00'),
(807, '0541', 'premier', '8400.00', '0.00'),
(808, '0542', 'premier', '78300.00', '0.00'),
(809, '0543', 'premier', '4800.00', '0.00'),
(810, '0544', 'premier', '85300.00', '0.00'),
(811, '0545', 'premier', '33400.00', '0.00'),
(812, '0546', 'premier', '19930.00', '0.00'),
(813, '0547', 'premier', '23400.00', '0.00'),
(814, '0548', 'scan', '465100.00', '0.00'),
(815, '0548', 'premier', '-3900.00', '0.00'),
(816, '0548', 'bsrm', '4512.25', '0.00'),
(817, '0549', 'holcim', '1000.00', '0.00'),
(818, '0549', 'premier', '338876.00', '0.00'),
(819, '0550', 'scan', '11200.00', '0.00'),
(820, '0550', 'premier', '70000.00', '0.00'),
(821, '0551', 'scan', '646300.00', '0.00'),
(822, '0552', 'scan', '-4950.00', '0.00'),
(823, '0553', 'scan', '145072.00', '0.00'),
(824, '0554', 'premier', '390920.00', '0.00'),
(825, '0555', 'scan', '112315.00', '0.00'),
(826, '0556', 'scan', '337200.00', '0.00'),
(827, '0556', 'insee', '838900.00', '0.00'),
(828, '0557', 'holcim', '168000.00', '0.00'),
(829, '0557', 'scan', '80725.00', '0.00'),
(830, '0557', 'premier', '264500.00', '0.00'),
(831, '0557', 'insee', '174000.00', '0.00'),
(832, '0557', 'bsrm', '32016.00', '0.00'),
(833, '0558', 'premier', '153100.00', '0.00'),
(834, '0559', 'scan', '372490.00', '0.00'),
(835, '0560', 'premier', '22774.00', '0.00'),
(836, '0561', 'premier', '129200.00', '0.00'),
(837, '0561', 'insee', '95500.00', '0.00'),
(838, '0562', 'premier', '74000.00', '0.00'),
(839, '0563', 'premier', '2400.00', '0.00'),
(840, '0566', 'premier', '114000.00', '0.00'),
(841, '0567', 'holcim', '200.00', '0.00'),
(842, '0567', 'scan', '120900.00', '0.00'),
(843, '0568', 'scan', '17400.00', '0.00'),
(844, '0569', 'scan', '-8800.00', '0.00'),
(845, '0569', 'bsrm', '38700.00', '0.00'),
(846, '0570', 'scan', '36950.00', '0.00'),
(847, '0570', 'insee', '355500.00', '0.00'),
(848, '0571', 'scan', '17575.00', '0.00'),
(849, '0572', 'scan', '94150.00', '0.00'),
(850, '0575', 'premier', '169100.00', '0.00'),
(851, '0576', 'scan', '-975.00', '0.00'),
(852, '0577', 'scan', '37610.00', '0.00'),
(853, '0578', 'scan', '10340.00', '0.00'),
(854, '0579', 'premier', '155750.00', '0.00'),
(855, '0580', 'premier', '34068.00', '0.00'),
(856, '0581', 'premier', '90150.00', '0.00'),
(857, '0582', 'premier', '29000.00', '0.00'),
(858, '0583', 'scan', '200.00', '0.00'),
(859, '0584', 'premier', '78000.00', '0.00'),
(860, '0585', 'premier', '63500.00', '0.00'),
(861, '0586', 'premier', '152400.00', '0.00'),
(862, '0588', 'premier', '94000.00', '0.00'),
(863, '0589', 'scan', '61205.00', '0.00'),
(864, '0590', 'premier', '3200.00', '0.00'),
(865, '0591', 'premier', '1200.00', '0.00'),
(866, '0592', 'premier', '17000.00', '0.00'),
(867, '0593', 'holcim', '71250.00', '0.00'),
(868, '0593', 'premier', '136600.00', '0.00'),
(869, '0594', 'scan', '81710.00', '0.00'),
(870, '0595', 'scan', '92000.00', '0.00'),
(871, '0596', 'scan', '41385.00', '0.00'),
(872, '0597', 'bsrm', '4450.00', '0.00'),
(873, '0598', 'bsrm', '25800.00', '0.00'),
(874, '0599', 'bsrm', '14500.00', '0.00'),
(875, '0600', 'bsrm', '11450.00', '0.00'),
(876, '0601', 'bsrm', '8650.00', '0.00'),
(877, '0602', 'bsrm', '39600.00', '0.00'),
(878, '0603', 'bsrm', '67950.00', '0.00'),
(879, '0604', 'bsrm', '9000.00', '0.00'),
(880, '0605', 'premier', '36400.00', '0.00'),
(881, '0606', 'premier', '80200.00', '0.00'),
(882, '0607', 'scan', '2555.00', '0.00'),
(883, '0609', 'holcim', '95.00', '0.00'),
(884, '0609', 'premier', '9.00', '0.00'),
(885, '0609', 'insee', '66.00', '0.00'),
(886, '0610', 'premier', '185.00', '0.00'),
(887, '0611', 'insee', '551.00', '0.00'),
(888, '0612', 'holcim', '166.00', '0.00'),
(889, '0612', 'scan', '89.00', '0.00'),
(890, '0612', 'premier', '165.00', '0.00'),
(891, '0613', 'premier', '103.00', '0.00'),
(892, '0614', 'holcim', '172.00', '0.00'),
(893, '0614', 'premier', '1.00', '0.00'),
(894, '0615', 'premier', '82.00', '0.00'),
(895, '0615', 'bsrm', '1.00', '0.00'),
(896, '0616', 'holcim', '208.00', '0.00'),
(897, '0616', 'premier', '661.00', '0.00'),
(898, '0617', 'premier', '131.00', '0.00'),
(899, '0618', 'premier', '267.00', '0.00'),
(900, '0619', 'premier', '71.00', '0.00'),
(901, '0620', 'premier', '218.00', '0.00'),
(902, '0622', 'premier', '73.00', '0.00'),
(903, '0623', 'premier', '175.00', '0.00'),
(904, '0624', 'premier', '27.00', '0.00'),
(905, '0625', 'holcim', '220.00', '0.00'),
(906, '0625', 'premier', '126.00', '0.00'),
(907, '0625', 'insee', '143.00', '0.00'),
(908, '0626', 'premier', '245.00', '0.00'),
(909, '0627', 'premier', '101.00', '0.00'),
(910, '0628', 'premier', '0.00', '0.00'),
(911, '0629', 'premier', '9.00', '0.00'),
(912, '0630', 'premier', '27.00', '0.00'),
(913, '0631', 'premier', '0.00', '0.00'),
(914, '0632', 'premier', '17.00', '0.00'),
(915, '0633', 'premier', '135.00', '0.00'),
(916, '0634', 'premier', '131.00', '0.00'),
(917, '0635', 'premier', '94.00', '0.00'),
(918, '0636', 'premier', '87.00', '0.00'),
(919, '0637', 'premier', '134.00', '0.00'),
(920, '0638', 'holcim', '12.00', '0.00'),
(921, '0639', 'premier', '92.00', '0.00'),
(922, '0640', 'premier', '101.00', '0.00'),
(923, '0641', 'premier', '2.00', '0.00'),
(924, '0642', 'holcim', '13.00', '0.00'),
(925, '0642', 'bsrm', '20.00', '0.00'),
(926, '0643', 'scan', '46.00', '0.00'),
(927, '0643', 'premier', '1.00', '0.00'),
(928, '0643', 'insee', '481.00', '0.00'),
(929, '0644', 'premier', '141.00', '0.00'),
(930, '0645', 'premier', '900.00', '0.00'),
(931, '0646', 'premier', '100.00', '0.00'),
(932, '0647', 'premier', '80.00', '0.00'),
(933, '0648', 'premier', '1.00', '0.00'),
(934, '0649', 'premier', '0.00', '0.00'),
(935, '0650', 'premier', '86.00', '0.00'),
(936, '0651', 'premier', '162.00', '0.00'),
(937, '0652', 'premier', '2.00', '0.00'),
(938, '0653', 'premier', '7.00', '0.00'),
(939, '0654', 'holcim', '64.00', '0.00'),
(940, '0655', 'holcim', '240.00', '0.00'),
(941, '0655', 'scan', '298.00', '0.00'),
(942, '0655', 'premier', '567.00', '0.00'),
(943, '0655', 'insee', '88.00', '0.00'),
(944, '0655', 'bsrm', '163.00', '0.00'),
(945, '0656', 'holcim', '8.00', '0.00'),
(946, '0657', 'bsrm', '6.00', '0.00'),
(947, '0658', 'bsrm', '2.00', '0.00'),
(948, '0659', 'bsrm', '50.00', '0.00'),
(949, '0660', 'bsrm', '8.00', '0.00'),
(950, '0661', 'premier', '4.00', '0.00'),
(951, '0662', 'bsrm', '8.00', '0.00'),
(952, '0663', 'premier', '1.00', '0.00'),
(953, '0664', 'premier', '442.00', '0.00'),
(954, '0665', 'scan', '8.00', '0.00'),
(955, '0666', 'bsrm', '6.00', '0.00'),
(956, '0667', 'bsrm', '7.00', '0.00'),
(957, '0668', 'bsrm', '7.00', '0.00'),
(958, '0669', 'premier', '14.00', '0.00'),
(959, '0670', 'premier', '90.00', '0.00'),
(960, '0671', 'premier', '15.00', '0.00'),
(961, '0672', 'holcim', '12.00', '0.00'),
(962, '001', '', '1310000.00', '0.00'),
(963, '002', '', '6000000.00', '0.00'),
(964, '003', '', '3150000.00', '0.00'),
(965, '004', '', '2500000.00', '0.00'),
(966, '005', '', '5000000.00', '0.00'),
(967, '006', '', '4000000.00', '0.00'),
(968, '0674', 'premier-cement-mills-limited', '-100000.00', '500000.00'),
(969, '0675', 'holcim-cement-bd.-ltd.', '-100000.00', '500000.00'),
(970, '0675', 'heidelberg-cement-(bd)-ltd.', '0.00', '400000.00'),
(971, '0675', 'premier-cement-mills-limited', '100000.00', '300000.00'),
(972, '0002', 'holcim-cement-bd.-ltd.', '132050.00', '100000.00'),
(973, '0002', 'premier-cement-mills-limited', '404694.00', '200000.00'),
(974, '0676', 'holcim-cement-bd.-ltd.', '-50000.00', '99999999.99'),
(977, '007', '', '5000.00', '0.00'),
(979, '008', '', '-1400000.00', '0.00'),
(980, '009', '', '745000.00', '0.00'),
(981, '010', '', '-800.00', '0.00'),
(982, '0677', 'holcim-cement-bd.-ltd.', '-49.00', '800000.00');

-- --------------------------------------------------------

--
-- Table structure for table `partymeta`
--

CREATE TABLE `partymeta` (
  `id` int(10) UNSIGNED NOT NULL,
  `party_code` varchar(45) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partymeta`
--

INSERT INTO `partymeta` (`id`, `party_code`, `meta_key`, `meta_value`) VALUES
(1, '0001', 'client_type', 'do'),
(2, '0002', 'client_type', 'do'),
(3, '0003', 'client_type', 'do'),
(4, '0004', 'client_type', 'do'),
(5, '0005', 'client_type', 'do'),
(6, '0006', 'client_type', 'do'),
(7, '0007', 'client_type', 'do'),
(8, '0008', 'client_type', 'do'),
(9, '0009', 'client_type', 'do'),
(10, '0010', 'client_type', 'do'),
(11, '0011', 'client_type', 'do'),
(12, '0012', 'client_type', 'do'),
(13, '0013', 'client_type', 'do'),
(14, '0014', 'client_type', 'do'),
(15, '0015', 'client_type', 'do'),
(16, '0016', 'client_type', 'do'),
(17, '0017', 'client_type', 'do'),
(18, '0018', 'client_type', 'do'),
(19, '0019', 'client_type', 'do'),
(20, '0020', 'client_type', 'do'),
(21, '0021', 'client_type', 'do'),
(22, '0022', 'client_type', 'do'),
(23, '0023', 'client_type', 'do'),
(24, '0024', 'client_type', 'do'),
(25, '0025', 'client_type', 'do'),
(26, '0026', 'client_type', 'do'),
(27, '0027', 'client_type', 'do'),
(28, '0028', 'client_type', 'do'),
(29, '0029', 'client_type', 'do'),
(30, '0030', 'client_type', 'do'),
(31, '0031', 'client_type', 'do'),
(32, '0032', 'client_type', 'do'),
(33, '0033', 'client_type', 'do'),
(34, '0034', 'client_type', 'do'),
(35, '0035', 'client_type', 'do'),
(36, '0036', 'client_type', 'do'),
(37, '0037', 'client_type', 'do'),
(38, '0038', 'client_type', 'do'),
(39, '0039', 'client_type', 'do'),
(40, '0040', 'client_type', 'do'),
(41, '0041', 'client_type', 'do'),
(42, '0042', 'client_type', 'do'),
(43, '0043', 'client_type', 'do'),
(44, '0044', 'client_type', 'do'),
(45, '0045', 'client_type', 'do'),
(46, '0046', 'client_type', 'do'),
(47, '0047', 'client_type', 'do'),
(48, '0048', 'client_type', 'do'),
(49, '0049', 'client_type', 'do'),
(50, '0050', 'client_type', 'do'),
(51, '0051', 'client_type', 'do'),
(52, '0052', 'client_type', 'do'),
(53, '0053', 'client_type', 'do'),
(54, '0054', 'client_type', 'do'),
(55, '0055', 'client_type', 'do'),
(56, '0056', 'client_type', 'do'),
(57, '0057', 'client_type', 'do'),
(58, '0058', 'client_type', 'do'),
(59, '0059', 'client_type', 'do'),
(60, '0060', 'client_type', 'do'),
(61, '0061', 'client_type', 'do'),
(62, '0062', 'client_type', 'do'),
(63, '0063', 'client_type', 'do'),
(64, '0064', 'client_type', 'do'),
(65, '0065', 'client_type', 'do'),
(66, '0066', 'client_type', 'do'),
(67, '0067', 'client_type', 'do'),
(68, '0068', 'client_type', 'do'),
(69, '0069', 'client_type', 'do'),
(70, '0070', 'client_type', 'do'),
(71, '0071', 'client_type', 'do'),
(72, '0072', 'client_type', 'do'),
(73, '0073', 'client_type', 'do'),
(74, '0074', 'client_type', 'do'),
(75, '0075', 'client_type', 'do'),
(76, '0076', 'client_type', 'do'),
(77, '0077', 'client_type', 'do'),
(78, '0078', 'client_type', 'do'),
(79, '0079', 'client_type', 'do'),
(80, '0080', 'client_type', 'do'),
(81, '0081', 'client_type', 'do'),
(82, '0082', 'client_type', 'do'),
(83, '0083', 'client_type', 'do'),
(84, '0084', 'client_type', 'do'),
(85, '0085', 'client_type', 'do'),
(86, '0086', 'client_type', 'do'),
(87, '0087', 'client_type', 'do'),
(88, '0088', 'client_type', 'do'),
(89, '0089', 'client_type', 'do'),
(90, '0090', 'client_type', 'do'),
(91, '0091', 'client_type', 'do'),
(92, '0092', 'client_type', 'do'),
(93, '0093', 'client_type', 'do'),
(94, '0094', 'client_type', 'do'),
(95, '0095', 'client_type', 'do'),
(96, '0096', 'client_type', 'do'),
(97, '0097', 'client_type', 'do'),
(98, '0098', 'client_type', 'do'),
(99, '0099', 'client_type', 'do'),
(100, '0100', 'client_type', 'do'),
(101, '0101', 'client_type', 'do'),
(102, '0102', 'client_type', 'do'),
(103, '0103', 'client_type', 'do'),
(104, '0104', 'client_type', 'do'),
(105, '0105', 'client_type', 'do'),
(106, '0106', 'client_type', 'do'),
(107, '0107', 'client_type', 'do'),
(108, '0108', 'client_type', 'do'),
(109, '0109', 'client_type', 'do'),
(110, '0110', 'client_type', 'do'),
(111, '0111', 'client_type', 'do'),
(112, '0112', 'client_type', 'do'),
(113, '0113', 'client_type', 'do'),
(114, '0114', 'client_type', 'do'),
(115, '0115', 'client_type', 'do'),
(116, '0116', 'client_type', 'do'),
(117, '0117', 'client_type', 'do'),
(118, '0118', 'client_type', 'do'),
(119, '0119', 'client_type', 'do'),
(120, '0120', 'client_type', 'do'),
(121, '0121', 'client_type', 'do'),
(122, '0122', 'client_type', 'do'),
(123, '0123', 'client_type', 'do'),
(124, '0124', 'client_type', 'do'),
(125, '0125', 'client_type', 'do'),
(126, '0126', 'client_type', 'do'),
(127, '0127', 'client_type', 'do'),
(128, '0128', 'client_type', 'do'),
(129, '0129', 'client_type', 'do'),
(130, '0130', 'client_type', 'do'),
(131, '0131', 'client_type', 'do'),
(132, '0132', 'client_type', 'do'),
(133, '0133', 'client_type', 'do'),
(134, '0134', 'client_type', 'do'),
(135, '0135', 'client_type', 'do'),
(136, '0136', 'client_type', 'do'),
(137, '0137', 'client_type', 'do'),
(138, '0138', 'client_type', 'do'),
(139, '0139', 'client_type', 'do'),
(140, '0140', 'client_type', 'do'),
(141, '0141', 'client_type', 'do'),
(142, '0142', 'client_type', 'do'),
(143, '0143', 'client_type', 'do'),
(144, '0144', 'client_type', 'do'),
(145, '0145', 'client_type', 'do'),
(146, '0146', 'client_type', 'do'),
(147, '0147', 'client_type', 'do'),
(148, '0148', 'client_type', 'do'),
(149, '0149', 'client_type', 'do'),
(150, '0150', 'client_type', 'do'),
(151, '0151', 'client_type', 'do'),
(152, '0152', 'client_type', 'do'),
(153, '0153', 'client_type', 'do'),
(154, '0154', 'client_type', 'do'),
(155, '0155', 'client_type', 'do'),
(156, '0156', 'client_type', 'do'),
(157, '0157', 'client_type', 'do'),
(158, '0158', 'client_type', 'do'),
(159, '0159', 'client_type', 'do'),
(160, '0160', 'client_type', 'do'),
(161, '0161', 'client_type', 'do'),
(162, '0162', 'client_type', 'do'),
(163, '0163', 'client_type', 'do'),
(164, '0164', 'client_type', 'do'),
(165, '0165', 'client_type', 'do'),
(166, '0166', 'client_type', 'do'),
(167, '0167', 'client_type', 'do'),
(168, '0168', 'client_type', 'do'),
(169, '0169', 'client_type', 'do'),
(170, '0170', 'client_type', 'do'),
(171, '0171', 'client_type', 'do'),
(172, '0172', 'client_type', 'do'),
(173, '0173', 'client_type', 'do'),
(174, '0174', 'client_type', 'do'),
(175, '0175', 'client_type', 'do'),
(176, '0176', 'client_type', 'do'),
(177, '0177', 'client_type', 'do'),
(178, '0178', 'client_type', 'do'),
(179, '0179', 'client_type', 'do'),
(180, '0180', 'client_type', 'do'),
(181, '0181', 'client_type', 'do'),
(182, '0182', 'client_type', 'do'),
(183, '0183', 'client_type', 'do'),
(184, '0184', 'client_type', 'do'),
(185, '0185', 'client_type', 'do'),
(186, '0186', 'client_type', 'do'),
(187, '0187', 'client_type', 'do'),
(188, '0188', 'client_type', 'do'),
(189, '0189', 'client_type', 'do'),
(190, '0190', 'client_type', 'do'),
(191, '0191', 'client_type', 'do'),
(192, '0192', 'client_type', 'do'),
(193, '0193', 'client_type', 'do'),
(194, '0194', 'client_type', 'do'),
(195, '0195', 'client_type', 'do'),
(196, '0196', 'client_type', 'do'),
(197, '0197', 'client_type', 'do'),
(198, '0198', 'client_type', 'do'),
(199, '0199', 'client_type', 'do'),
(200, '0200', 'client_type', 'do'),
(201, '0201', 'client_type', 'do'),
(202, '0202', 'client_type', 'do'),
(203, '0203', 'client_type', 'do'),
(204, '0204', 'client_type', 'do'),
(205, '0205', 'client_type', 'do'),
(206, '0206', 'client_type', 'do'),
(207, '0207', 'client_type', 'do'),
(208, '0208', 'client_type', 'do'),
(209, '0209', 'client_type', 'do'),
(210, '0210', 'client_type', 'do'),
(211, '0211', 'client_type', 'do'),
(212, '0212', 'client_type', 'do'),
(213, '0213', 'client_type', 'do'),
(214, '0214', 'client_type', 'do'),
(215, '0215', 'client_type', 'do'),
(216, '0216', 'client_type', 'do'),
(217, '0217', 'client_type', 'do'),
(218, '0218', 'client_type', 'do'),
(219, '0219', 'client_type', 'do'),
(220, '0220', 'client_type', 'do'),
(221, '0221', 'client_type', 'do'),
(222, '0222', 'client_type', 'do'),
(223, '0223', 'client_type', 'do'),
(224, '0224', 'client_type', 'do'),
(225, '0225', 'client_type', 'do'),
(226, '0226', 'client_type', 'do'),
(227, '0227', 'client_type', 'do'),
(228, '0228', 'client_type', 'do'),
(229, '0229', 'client_type', 'do'),
(230, '0230', 'client_type', 'do'),
(231, '0231', 'client_type', 'do'),
(232, '0232', 'client_type', 'do'),
(233, '0233', 'client_type', 'do'),
(234, '0234', 'client_type', 'do'),
(235, '0235', 'client_type', 'do'),
(236, '0236', 'client_type', 'do'),
(237, '0237', 'client_type', 'do'),
(238, '0238', 'client_type', 'do'),
(239, '0239', 'client_type', 'do'),
(240, '0240', 'client_type', 'do'),
(241, '0241', 'client_type', 'do'),
(242, '0242', 'client_type', 'do'),
(243, '0243', 'client_type', 'do'),
(244, '0244', 'client_type', 'do'),
(245, '0245', 'client_type', 'do'),
(246, '0246', 'client_type', 'do'),
(247, '0247', 'client_type', 'do'),
(248, '0248', 'client_type', 'do'),
(249, '0249', 'client_type', 'do'),
(250, '0250', 'client_type', 'do'),
(251, '0251', 'client_type', 'do'),
(252, '0252', 'client_type', 'do'),
(253, '0253', 'client_type', 'do'),
(254, '0254', 'client_type', 'do'),
(255, '0255', 'client_type', 'do'),
(256, '0256', 'client_type', 'do'),
(257, '0257', 'client_type', 'do'),
(258, '0258', 'client_type', 'do'),
(259, '0259', 'client_type', 'do'),
(260, '0260', 'client_type', 'do'),
(261, '0261', 'client_type', 'do'),
(262, '0262', 'client_type', 'do'),
(263, '0263', 'client_type', 'do'),
(264, '0264', 'client_type', 'do'),
(265, '0265', 'client_type', 'do'),
(266, '0266', 'client_type', 'do'),
(267, '0267', 'client_type', 'do'),
(268, '0268', 'client_type', 'do'),
(269, '0269', 'client_type', 'do'),
(270, '0270', 'client_type', 'do'),
(271, '0271', 'client_type', 'do'),
(272, '0272', 'client_type', 'do'),
(273, '0273', 'client_type', 'do'),
(274, '0274', 'client_type', 'do'),
(275, '0275', 'client_type', 'do'),
(276, '0276', 'client_type', 'do'),
(277, '0277', 'client_type', 'do'),
(278, '0278', 'client_type', 'do'),
(279, '0279', 'client_type', 'do'),
(280, '0280', 'client_type', 'do'),
(281, '0281', 'client_type', 'do'),
(282, '0282', 'client_type', 'do'),
(283, '0283', 'client_type', 'do'),
(284, '0284', 'client_type', 'do'),
(285, '0285', 'client_type', 'do'),
(286, '0286', 'client_type', 'do'),
(287, '0287', 'client_type', 'do'),
(288, '0288', 'client_type', 'do'),
(289, '0289', 'client_type', 'do'),
(290, '0290', 'client_type', 'do'),
(291, '0291', 'client_type', 'do'),
(292, '0292', 'client_type', 'do'),
(293, '0293', 'client_type', 'do'),
(294, '0294', 'client_type', 'do'),
(295, '0295', 'client_type', 'do'),
(296, '0296', 'client_type', 'do'),
(297, '0297', 'client_type', 'do'),
(298, '0298', 'client_type', 'do'),
(299, '0299', 'client_type', 'do'),
(300, '0300', 'client_type', 'do'),
(301, '0301', 'client_type', 'do'),
(302, '0302', 'client_type', 'do'),
(303, '0303', 'client_type', 'do'),
(304, '0304', 'client_type', 'do'),
(305, '0305', 'client_type', 'do'),
(306, '0306', 'client_type', 'do'),
(307, '0307', 'client_type', 'do'),
(308, '0308', 'client_type', 'do'),
(309, '0309', 'client_type', 'do'),
(310, '0310', 'client_type', 'do'),
(311, '0311', 'client_type', 'do'),
(312, '0312', 'client_type', 'do'),
(313, '0313', 'client_type', 'do'),
(314, '0314', 'client_type', 'do'),
(315, '0315', 'client_type', 'do'),
(316, '0316', 'client_type', 'do'),
(317, '0317', 'client_type', 'do'),
(318, '0318', 'client_type', 'do'),
(319, '0319', 'client_type', 'do'),
(320, '0320', 'client_type', 'do'),
(321, '0321', 'client_type', 'do'),
(322, '0322', 'client_type', 'do'),
(323, '0323', 'client_type', 'do'),
(324, '0324', 'client_type', 'do'),
(325, '0325', 'client_type', 'do'),
(326, '0326', 'client_type', 'do'),
(327, '0327', 'client_type', 'do'),
(328, '0328', 'client_type', 'do'),
(329, '0329', 'client_type', 'do'),
(330, '0330', 'client_type', 'do'),
(331, '0331', 'client_type', 'do'),
(332, '0332', 'client_type', 'do'),
(333, '0333', 'client_type', 'do'),
(334, '0334', 'client_type', 'do'),
(335, '0335', 'client_type', 'do'),
(336, '0336', 'client_type', 'do'),
(337, '0337', 'client_type', 'do'),
(338, '0338', 'client_type', 'do'),
(339, '0339', 'client_type', 'do'),
(340, '0340', 'client_type', 'do'),
(341, '0341', 'client_type', 'do'),
(342, '0342', 'client_type', 'do'),
(343, '0343', 'client_type', 'do'),
(344, '0344', 'client_type', 'do'),
(345, '0345', 'client_type', 'do'),
(346, '0346', 'client_type', 'do'),
(347, '0347', 'client_type', 'do'),
(348, '0348', 'client_type', 'do'),
(349, '0349', 'client_type', 'do'),
(350, '0350', 'client_type', 'do'),
(351, '0351', 'client_type', 'do'),
(352, '0352', 'client_type', 'do'),
(353, '0353', 'client_type', 'do'),
(354, '0354', 'client_type', 'do'),
(355, '0355', 'client_type', 'do'),
(356, '0356', 'client_type', 'do'),
(357, '0357', 'client_type', 'do'),
(358, '0358', 'client_type', 'do'),
(359, '0359', 'client_type', 'do'),
(360, '0360', 'client_type', 'do'),
(361, '0361', 'client_type', 'do'),
(362, '0362', 'client_type', 'do'),
(363, '0363', 'client_type', 'do'),
(364, '0364', 'client_type', 'do'),
(365, '0365', 'client_type', 'do'),
(366, '0366', 'client_type', 'do'),
(367, '0367', 'client_type', 'do'),
(368, '0368', 'client_type', 'do'),
(369, '0369', 'client_type', 'do'),
(370, '0370', 'client_type', 'do'),
(371, '0371', 'client_type', 'do'),
(372, '0372', 'client_type', 'do'),
(373, '0373', 'client_type', 'do'),
(374, '0374', 'client_type', 'do'),
(375, '0375', 'client_type', 'do'),
(376, '0376', 'client_type', 'do'),
(377, '0377', 'client_type', 'do'),
(378, '0378', 'client_type', 'do'),
(379, '0379', 'client_type', 'do'),
(380, '0380', 'client_type', 'do'),
(381, '0381', 'client_type', 'do'),
(382, '0382', 'client_type', 'do'),
(383, '0383', 'client_type', 'do'),
(384, '0384', 'client_type', 'do'),
(385, '0385', 'client_type', 'do'),
(386, '0386', 'client_type', 'do'),
(387, '0387', 'client_type', 'do'),
(388, '0388', 'client_type', 'do'),
(389, '0389', 'client_type', 'do'),
(390, '0390', 'client_type', 'do'),
(391, '0391', 'client_type', 'do'),
(392, '0392', 'client_type', 'do'),
(393, '0393', 'client_type', 'do'),
(394, '0394', 'client_type', 'do'),
(395, '0395', 'client_type', 'do'),
(396, '0396', 'client_type', 'do'),
(397, '0397', 'client_type', 'do'),
(398, '0398', 'client_type', 'do'),
(399, '0399', 'client_type', 'do'),
(400, '0400', 'client_type', 'do'),
(401, '0401', 'client_type', 'do'),
(402, '0402', 'client_type', 'do'),
(403, '0403', 'client_type', 'do'),
(404, '0404', 'client_type', 'do'),
(405, '0405', 'client_type', 'do'),
(406, '0406', 'client_type', 'do'),
(407, '0407', 'client_type', 'do'),
(408, '0408', 'client_type', 'do'),
(409, '0409', 'client_type', 'do'),
(410, '0410', 'client_type', 'do'),
(411, '0411', 'client_type', 'do'),
(412, '0412', 'client_type', 'do'),
(413, '0413', 'client_type', 'do'),
(414, '0414', 'client_type', 'do'),
(415, '0415', 'client_type', 'do'),
(416, '0416', 'client_type', 'do'),
(417, '0417', 'client_type', 'do'),
(418, '0418', 'client_type', 'do'),
(419, '0419', 'client_type', 'do'),
(420, '0420', 'client_type', 'do'),
(421, '0421', 'client_type', 'do'),
(422, '0422', 'client_type', 'do'),
(423, '0423', 'client_type', 'do'),
(424, '0424', 'client_type', 'do'),
(425, '0425', 'client_type', 'do'),
(426, '0426', 'client_type', 'do'),
(427, '0427', 'client_type', 'do'),
(428, '0428', 'client_type', 'do'),
(429, '0429', 'client_type', 'do'),
(430, '0430', 'client_type', 'do'),
(431, '0431', 'client_type', 'do'),
(432, '0432', 'client_type', 'do'),
(433, '0433', 'client_type', 'do'),
(434, '0434', 'client_type', 'do'),
(435, '0435', 'client_type', 'do'),
(436, '0436', 'client_type', 'do'),
(437, '0437', 'client_type', 'do'),
(438, '0438', 'client_type', 'do'),
(439, '0439', 'client_type', 'do'),
(440, '0440', 'client_type', 'do'),
(441, '0441', 'client_type', 'do'),
(442, '0442', 'client_type', 'do'),
(443, '0443', 'client_type', 'do'),
(444, '0444', 'client_type', 'do'),
(445, '0445', 'client_type', 'do'),
(446, '0446', 'client_type', 'do'),
(447, '0447', 'client_type', 'do'),
(448, '0448', 'client_type', 'do'),
(449, '0449', 'client_type', 'do'),
(450, '0450', 'client_type', 'do'),
(451, '0451', 'client_type', 'do'),
(452, '0452', 'client_type', 'do'),
(453, '0453', 'client_type', 'do'),
(454, '0454', 'client_type', 'do'),
(455, '0455', 'client_type', 'do'),
(456, '0456', 'client_type', 'do'),
(457, '0457', 'client_type', 'do'),
(458, '0458', 'client_type', 'do'),
(459, '0459', 'client_type', 'do'),
(460, '0460', 'client_type', 'do'),
(461, '0461', 'client_type', 'do'),
(462, '0462', 'client_type', 'do'),
(463, '0463', 'client_type', 'do'),
(464, '0464', 'client_type', 'do'),
(465, '0465', 'client_type', 'do'),
(466, '0466', 'client_type', 'do'),
(467, '0467', 'client_type', 'do'),
(468, '0468', 'client_type', 'do'),
(469, '0469', 'client_type', 'do'),
(470, '0470', 'client_type', 'do'),
(471, '0471', 'client_type', 'do'),
(472, '0472', 'client_type', 'do'),
(473, '0473', 'client_type', 'do'),
(474, '0474', 'client_type', 'do'),
(475, '0475', 'client_type', 'do'),
(476, '0476', 'client_type', 'do'),
(477, '0477', 'client_type', 'do'),
(478, '0478', 'client_type', 'do'),
(479, '0479', 'client_type', 'do'),
(480, '0480', 'client_type', 'do'),
(481, '0481', 'client_type', 'do'),
(482, '0482', 'client_type', 'do'),
(483, '0483', 'client_type', 'do'),
(484, '0484', 'client_type', 'do'),
(485, '0485', 'client_type', 'do'),
(486, '0486', 'client_type', 'do'),
(487, '0487', 'client_type', 'do'),
(488, '0488', 'client_type', 'do'),
(489, '0489', 'client_type', 'do'),
(490, '0490', 'client_type', 'do'),
(491, '0491', 'client_type', 'do'),
(492, '0492', 'client_type', 'do'),
(493, '0493', 'client_type', 'do'),
(494, '0494', 'client_type', 'do'),
(495, '0495', 'client_type', 'do'),
(496, '0496', 'client_type', 'do'),
(497, '0497', 'client_type', 'do'),
(498, '0498', 'client_type', 'do'),
(499, '0499', 'client_type', 'do'),
(500, '0500', 'client_type', 'do'),
(501, '0501', 'client_type', 'do'),
(502, '0502', 'client_type', 'do'),
(503, '0503', 'client_type', 'do'),
(504, '0504', 'client_type', 'do'),
(505, '0505', 'client_type', 'do'),
(506, '0506', 'client_type', 'do'),
(507, '0507', 'client_type', 'do'),
(508, '0508', 'client_type', 'do'),
(509, '0509', 'client_type', 'do'),
(510, '0510', 'client_type', 'do'),
(511, '0511', 'client_type', 'do'),
(512, '0512', 'client_type', 'do'),
(513, '0513', 'client_type', 'do'),
(514, '0514', 'client_type', 'do'),
(515, '0515', 'client_type', 'do'),
(516, '0516', 'client_type', 'do'),
(517, '0517', 'client_type', 'do'),
(518, '0518', 'client_type', 'do'),
(519, '0519', 'client_type', 'do'),
(520, '0520', 'client_type', 'do'),
(521, '0521', 'client_type', 'do'),
(522, '0522', 'client_type', 'do'),
(523, '0523', 'client_type', 'do'),
(524, '0524', 'client_type', 'do'),
(525, '0525', 'client_type', 'do'),
(526, '0526', 'client_type', 'do'),
(527, '0527', 'client_type', 'do'),
(528, '0528', 'client_type', 'do'),
(529, '0529', 'client_type', 'do'),
(530, '0530', 'client_type', 'do'),
(531, '0531', 'client_type', 'do'),
(532, '0532', 'client_type', 'do'),
(533, '0533', 'client_type', 'do'),
(534, '0534', 'client_type', 'do'),
(535, '0535', 'client_type', 'do'),
(536, '0536', 'client_type', 'do'),
(537, '0537', 'client_type', 'do'),
(538, '0538', 'client_type', 'do'),
(539, '0539', 'client_type', 'do'),
(540, '0540', 'client_type', 'do'),
(541, '0541', 'client_type', 'do'),
(542, '0542', 'client_type', 'do'),
(543, '0543', 'client_type', 'do'),
(544, '0544', 'client_type', 'do'),
(545, '0545', 'client_type', 'do'),
(546, '0546', 'client_type', 'do'),
(547, '0547', 'client_type', 'do'),
(548, '0548', 'client_type', 'do'),
(549, '0549', 'client_type', 'do'),
(550, '0550', 'client_type', 'do'),
(551, '0551', 'client_type', 'do'),
(552, '0552', 'client_type', 'do'),
(553, '0553', 'client_type', 'do'),
(554, '0554', 'client_type', 'do'),
(555, '0555', 'client_type', 'do'),
(556, '0556', 'client_type', 'do'),
(557, '0557', 'client_type', 'do'),
(558, '0558', 'client_type', 'do'),
(559, '0559', 'client_type', 'do'),
(560, '0560', 'client_type', 'do'),
(561, '0561', 'client_type', 'do'),
(562, '0562', 'client_type', 'do'),
(563, '0563', 'client_type', 'do'),
(564, '0564', 'client_type', 'do'),
(565, '0565', 'client_type', 'do'),
(566, '0566', 'client_type', 'do'),
(567, '0567', 'client_type', 'do'),
(568, '0568', 'client_type', 'do'),
(569, '0569', 'client_type', 'do'),
(570, '0570', 'client_type', 'do'),
(571, '0571', 'client_type', 'do'),
(572, '0572', 'client_type', 'do'),
(573, '0573', 'client_type', 'do'),
(574, '0574', 'client_type', 'do'),
(575, '0575', 'client_type', 'do'),
(576, '0576', 'client_type', 'do'),
(577, '0577', 'client_type', 'do'),
(578, '0578', 'client_type', 'do'),
(579, '0579', 'client_type', 'do'),
(580, '0580', 'client_type', 'do'),
(581, '0581', 'client_type', 'do'),
(582, '0582', 'client_type', 'do'),
(583, '0583', 'client_type', 'do'),
(584, '0584', 'client_type', 'do'),
(585, '0585', 'client_type', 'do'),
(586, '0586', 'client_type', 'do'),
(587, '0587', 'client_type', 'do'),
(588, '0588', 'client_type', 'do'),
(589, '0589', 'client_type', 'do'),
(590, '0590', 'client_type', 'do'),
(591, '0591', 'client_type', 'do'),
(592, '0592', 'client_type', 'do'),
(593, '0593', 'client_type', 'do'),
(594, '0594', 'client_type', 'do'),
(595, '0595', 'client_type', 'do'),
(596, '0596', 'client_type', 'do'),
(597, '0597', 'client_type', 'do'),
(598, '0598', 'client_type', 'do'),
(599, '0599', 'client_type', 'do'),
(600, '0600', 'client_type', 'do'),
(601, '0601', 'client_type', 'do'),
(602, '0602', 'client_type', 'do'),
(603, '0603', 'client_type', 'do'),
(604, '0604', 'client_type', 'do'),
(605, '0605', 'client_type', 'do'),
(606, '0606', 'client_type', 'do'),
(607, '0607', 'client_type', 'do'),
(608, '0608', 'client_type', 'do'),
(609, '0609', 'client_type', 'do'),
(610, '0610', 'client_type', 'do'),
(611, '0611', 'client_type', 'do'),
(612, '0612', 'client_type', 'do'),
(613, '0613', 'client_type', 'do'),
(614, '0614', 'client_type', 'do'),
(615, '0615', 'client_type', 'do'),
(616, '0616', 'client_type', 'do'),
(617, '0617', 'client_type', 'do'),
(618, '0618', 'client_type', 'do'),
(619, '0619', 'client_type', 'do'),
(620, '0620', 'client_type', 'do'),
(621, '0621', 'client_type', 'do'),
(622, '0622', 'client_type', 'do'),
(623, '0623', 'client_type', 'do'),
(624, '0624', 'client_type', 'do'),
(625, '0625', 'client_type', 'do'),
(626, '0626', 'client_type', 'do'),
(627, '0627', 'client_type', 'do'),
(628, '0628', 'client_type', 'do'),
(629, '0629', 'client_type', 'do'),
(630, '0630', 'client_type', 'do'),
(631, '0631', 'client_type', 'do'),
(632, '0632', 'client_type', 'do'),
(633, '0633', 'client_type', 'do'),
(634, '0634', 'client_type', 'do'),
(635, '0635', 'client_type', 'do'),
(636, '0636', 'client_type', 'do'),
(637, '0637', 'client_type', 'do'),
(638, '0638', 'client_type', 'do'),
(639, '0639', 'client_type', 'do'),
(640, '0640', 'client_type', 'do'),
(641, '0641', 'client_type', 'do'),
(642, '0642', 'client_type', 'do'),
(643, '0643', 'client_type', 'do'),
(644, '0644', 'client_type', 'do'),
(645, '0645', 'client_type', 'do'),
(646, '0646', 'client_type', 'do'),
(647, '0647', 'client_type', 'do'),
(648, '0648', 'client_type', 'do'),
(649, '0649', 'client_type', 'do'),
(650, '0650', 'client_type', 'do'),
(651, '0651', 'client_type', 'do'),
(652, '0652', 'client_type', 'do'),
(653, '0653', 'client_type', 'do'),
(654, '0654', 'client_type', 'do'),
(655, '0655', 'client_type', 'do'),
(656, '0656', 'client_type', 'do'),
(657, '0657', 'client_type', 'do'),
(658, '0658', 'client_type', 'do'),
(659, '0659', 'client_type', 'do'),
(660, '0660', 'client_type', 'do'),
(661, '0661', 'client_type', 'do'),
(662, '0662', 'client_type', 'do'),
(663, '0663', 'client_type', 'do'),
(664, '0664', 'client_type', 'do'),
(665, '0665', 'client_type', 'do'),
(666, '0666', 'client_type', 'do'),
(667, '0667', 'client_type', 'do'),
(668, '0668', 'client_type', 'do'),
(669, '0669', 'client_type', 'do'),
(670, '0670', 'client_type', 'do'),
(671, '0671', 'client_type', 'do'),
(672, '0672', 'client_type', 'do'),
(673, '0673', 'client_type', 'do'),
(677, '0674', 'client_type', 'do'),
(678, '0675', 'client_type', 'do'),
(679, '0676', 'client_type', 'do'),
(680, '010', 'opening_balance', '-10'),
(681, '0677', 'client_type', 'do'),
(682, '0677', 'opening_balance', '-10');

-- --------------------------------------------------------

--
-- Table structure for table `partytransaction`
--

CREATE TABLE `partytransaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_at` date NOT NULL,
  `party_code` varchar(45) NOT NULL,
  `party_brand` varchar(100) NOT NULL,
  `previous_balance` decimal(10,2) NOT NULL COMMENT 'Vendors: +(balance) = Receivable and -(balance) = Payable amount. Client: +(balance) = Payable and -(balance) = Receivable amount',
  `paid` decimal(10,2) NOT NULL,
  `current_balance` decimal(10,2) NOT NULL COMMENT 'Vendors: +(balance) = Receivable and -(balance) = Payable amount. Client: +(balance) = Payable and -(balance) = Receivable amount',
  `transaction_via` varchar(45) NOT NULL,
  `relation` varchar(255) NOT NULL COMMENT 'sale transaction format is: ''sale:voucher'' and cash transaction is ''transaction''',
  `remark` text NOT NULL,
  `comission` varchar(45) NOT NULL DEFAULT 'due',
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partytransaction`
--

INSERT INTO `partytransaction` (`id`, `transaction_at`, `party_code`, `party_brand`, `previous_balance`, `paid`, `current_balance`, `transaction_via`, `relation`, `remark`, `comission`, `status`) VALUES
(1, '2017-08-20', '0677', 'holcim-cement-bd.-ltd.', '-10.00', '400.00', '-29.00', 'cash', 'sales:PCPL-2017/000005', 'sale', 'due', 'receivable'),
(2, '2017-08-20', '0677', 'holcim-cement-bd.-ltd.', '-29.00', '400.00', '-49.00', 'cash', 'sales:PCPL-2017/000006', 'sale', 'due', 'receivable'),
(3, '2017-08-20', '010', '', '400.00', '400.00', '800.00', 'cash', 'transaction', '', 'due', 'payable');

-- --------------------------------------------------------

--
-- Table structure for table `partytransactionmeta`
--

CREATE TABLE `partytransactionmeta` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `privilege_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `date`, `privilege_name`, `module_name`, `access`) VALUES
(1, '2017-06-21', 'user', 'employee', '[]'),
(2, '2017-06-22', 'user', 'products', '["edit","delete"]'),
(3, '2017-06-21', 'user', 'showroom', '["delete"]'),
(4, '2017-07-03', 'user', 'client', '["upgrade","view","edit"]'),
(5, '2017-06-22', 'user', 'bank_account', '["edit"]'),
(6, '2017-06-22', 'user', 'sale', '["view"]'),
(7, '2017-06-22', 'user', 'bank_transaction', '["edit"]'),
(8, '2017-08-20', 'field_officer', 'sale', '["view"]'),
(9, '2017-08-20', 'field_officer', 'bank_account', '["edit"]'),
(10, '2017-08-20', 'field_officer', 'client', '["upgrade","view"]');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `product_cat`, `subcategory`, `purchase_price`, `sale_price`, `unit`, `status`) VALUES
(11, 'Holcim Strong Structure', 'Holcim Strong Structure', 'Cement', 'Holcim Cement Bd. Ltd.', '410.00', '410.00', 'Bag', 1),
(12, 'Premier PCC', 'Premier PCC', 'Cement', 'Premier Cement Mills Limited', '425.00', '425.00', 'Bag', 1),
(13, 'Scan Cement', 'Scan Cement', 'Cement', 'Heidelberg Cement (Bd) Ltd.', '450.00', '450.00', 'Bag', 1),
(14, 'BSRM Ultima', 'BSRM Ultima', 'Rod', 'BSRM', '50.00', '55.00', 'Kg', 1),
(15, 'BSRM XTream', 'BSRM XTream', 'Rod', 'BSRM', '60.00', '62.00', 'Kg', 1),
(16, 'BSRM Ultimate', 'BSRM-Ultimate', 'Rod', 'BSRM', '100.00', '200.00', 'Kg', 1),
(17, 'BSRM Ultima', 'BSRM-Ultima', 'Rod', 'BSRM', '0.00', '0.00', 'Kg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_records`
--

CREATE TABLE `salary_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `eid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fields` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `amounts` decimal(10,2) NOT NULL,
  `remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_records`
--

INSERT INTO `salary_records` (`id`, `date`, `eid`, `fields`, `amounts`, `remarks`, `status`) VALUES
(1, '2017-08-09', '1111', 'basic', '5000.00', 'basic', ''),
(2, '2017-08-09', '1111', 'HRA', '500.00', 'insentive', ''),
(3, '2017-08-09', '1111', 'DA', '500.00', 'insentive', ''),
(4, '2017-08-09', '1111', 'TA', '500.00', 'insentive', ''),
(5, '2017-08-09', '1111', 'CCA', '500.00', 'insentive', ''),
(6, '2017-08-09', '1111', 'Medical', '500.00', 'insentive', ''),
(7, '2017-08-09', '1111', 'Extra', '0.00', 'insentive', ''),
(8, '2017-08-09', '1111', 'basic', '5000.00', 'basic', ''),
(9, '2017-08-09', '1111', 'HRA', '500.00', 'insentive', ''),
(10, '2017-08-09', '1111', 'DA', '500.00', 'insentive', ''),
(11, '2017-08-09', '1111', 'TA', '500.00', 'insentive', ''),
(12, '2017-08-09', '1111', 'CCA', '500.00', 'insentive', ''),
(13, '2017-08-09', '1111', 'Medical', '500.00', 'insentive', ''),
(14, '2017-08-09', '1111', 'Extra', '0.00', 'insentive', ''),
(15, '2017-08-09', '1111', 'Advanced Pay', '500.00', 'deduction', ''),
(16, '2017-08-09', '1111', 'Professional Tax ', '0.00', 'deduction', ''),
(17, '2017-08-09', '1111', 'Loan', '0.00', 'deduction', ''),
(18, '2017-08-09', '1111', 'Provisional Fund', '0.00', 'deduction', ''),
(19, '2017-08-09', '1111', 'Extra', '0.00', 'deduction', ''),
(20, '2017-08-17', '1111', 'basic', '5000.00', 'basic', ''),
(21, '2017-08-17', '1111', 'HRA', '500.00', 'insentive', ''),
(22, '2017-08-17', '1111', 'DA', '500.00', 'insentive', ''),
(23, '2017-08-17', '1111', 'TA', '500.00', 'insentive', ''),
(24, '2017-08-17', '1111', 'CCA', '500.00', 'insentive', ''),
(25, '2017-08-17', '1111', 'Medical', '500.00', 'insentive', ''),
(26, '2017-08-17', '1111', 'Extra', '0.00', 'insentive', ''),
(27, '2017-08-17', '1111', 'Advanced Pay', '500.00', 'deduction', ''),
(28, '2017-08-17', '1111', 'Professional Tax ', '0.00', 'deduction', ''),
(29, '2017-08-17', '1111', 'Loan', '0.00', 'deduction', ''),
(30, '2017-08-17', '1111', 'Provisional Fund', '0.00', 'deduction', ''),
(31, '2017-08-17', '1111', 'Extra', '0.00', 'deduction', '');

-- --------------------------------------------------------

--
-- Table structure for table `salary_structure`
--

CREATE TABLE `salary_structure` (
  `id` int(10) UNSIGNED NOT NULL,
  `eid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `basic` decimal(10,2) NOT NULL,
  `incentive` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `deduction` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `bonus` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salary_structure`
--

INSERT INTO `salary_structure` (`id`, `eid`, `basic`, `incentive`, `deduction`, `bonus`) VALUES
(2, '1111', '5000.00', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `sapitems`
--

CREATE TABLE `sapitems` (
  `id` int(11) UNSIGNED NOT NULL,
  `sap_at` date NOT NULL,
  `voucher_no` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_price` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `godown_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL COMMENT 'sale or purchase',
  `showroom_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sap_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `do_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sapitems`
--

INSERT INTO `sapitems` (`id`, `sap_at`, `voucher_no`, `product_code`, `brand`, `purchase_price`, `sale_price`, `quantity`, `unit`, `discount`, `godown_code`, `remark`, `status`, `showroom_id`, `sap_type`, `do_type`) VALUES
(1, '2017-08-19', 'PCPL-2017/000001', 'Holcim Strong Structure', 'Holcim Cement Bd. Ltd.', '410', '410.00', 1, 'Bag', '0.00', 'godown', '', 'sale', 'godown', 'do', ''),
(2, '2017-08-19', 'PCPL-2017/000001', 'Holcim Strong Structure', 'Holcim Cement Bd. Ltd.', '410', '410.00', 1, 'Bag', '0.00', 'godown', '', 'sale', 'godown', 'do', ''),
(3, '2017-08-19', 'PCPL-2017/000003', 'Holcim Strong Structure', 'Holcim Cement Bd. Ltd.', '410', '410.00', 10, 'Bag', '0.00', 'godown', '', 'sale', 'godown', 'do', ''),
(4, '2017-08-20', 'PCPL-2017/000001', 'Holcim Strong Structure', 'Holcim Cement Bd. Ltd.', '410', '410.00', 1, 'Bag', '0.00', 'godown', '', 'sale', 'godown', 'do', ''),
(5, '2017-08-20', 'PCPL-2017/000005', 'Holcim Strong Structure', 'Holcim Cement Bd. Ltd.', '410', '410.00', 1, 'Bag', '0.00', 'godown', '', 'sale', 'godown', 'do', ''),
(6, '2017-08-20', 'PCPL-2017/000006', 'Holcim Strong Structure', 'Holcim Cement Bd. Ltd.', '410', '410.00', 1, 'Bag', '0.00', 'godown', '', 'sale', 'godown', 'do', '');

-- --------------------------------------------------------

--
-- Table structure for table `sapmeta`
--

CREATE TABLE `sapmeta` (
  `id` int(11) UNSIGNED NOT NULL,
  `voucher_no` varchar(45) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sapmeta`
--

INSERT INTO `sapmeta` (`id`, `voucher_no`, `meta_key`, `meta_value`) VALUES
(1, 'PCPL-2017/000001', 'company', ''),
(2, 'PCPL-2017/000001', 'truck_no', '12369'),
(3, 'PCPL-2017/000001', 'dn_no', '987'),
(4, 'PCPL-2017/000001', 'truck_quantity', '1'),
(5, 'PCPL-2017/000001', 'truck_amount', '1'),
(6, 'PCPL-2017/000001', 'truck_total', '1.00'),
(7, 'PCPL-2017/000001', 'commission_quantity', '1'),
(8, 'PCPL-2017/000001', 'commission_amount', '1'),
(9, 'PCPL-2017/000001', 'commission_total', '1.00'),
(10, 'PCPL-2017/000001', 'labour_cost', '10'),
(11, 'PCPL-2017/000001', 'truck_rent', '1.00'),
(12, 'PCPL-2017/000001', 'company', ''),
(13, 'PCPL-2017/000001', 'truck_no', ''),
(14, 'PCPL-2017/000001', 'dn_no', ''),
(15, 'PCPL-2017/000001', 'truck_quantity', '1'),
(16, 'PCPL-2017/000001', 'truck_amount', '01'),
(17, 'PCPL-2017/000001', 'truck_total', '1.00'),
(18, 'PCPL-2017/000001', 'commission_quantity', '1'),
(19, 'PCPL-2017/000001', 'commission_amount', '01'),
(20, 'PCPL-2017/000001', 'commission_total', '1.00'),
(21, 'PCPL-2017/000001', 'labour_cost', '0'),
(22, 'PCPL-2017/000001', 'truck_rent', '1.00'),
(23, 'PCPL-2017/000003', 'company', ''),
(24, 'PCPL-2017/000003', 'truck_no', '123'),
(25, 'PCPL-2017/000003', 'dn_no', '456'),
(26, 'PCPL-2017/000003', 'truck_quantity', '10'),
(27, 'PCPL-2017/000003', 'truck_amount', '5'),
(28, 'PCPL-2017/000003', 'truck_total', '50.00'),
(29, 'PCPL-2017/000003', 'commission_quantity', '10'),
(30, 'PCPL-2017/000003', 'commission_amount', '7'),
(31, 'PCPL-2017/000003', 'commission_total', '70.00'),
(32, 'PCPL-2017/000003', 'labour_cost', '100'),
(33, 'PCPL-2017/000003', 'truck_rent', '50.00'),
(34, 'PCPL-2017/000001', 'company', '010'),
(35, 'PCPL-2017/000001', 'truck_no', '12369'),
(36, 'PCPL-2017/000001', 'dn_no', '987'),
(37, 'PCPL-2017/000001', 'truck_quantity', '1'),
(38, 'PCPL-2017/000001', 'truck_amount', '1'),
(39, 'PCPL-2017/000001', 'truck_total', '1.00'),
(40, 'PCPL-2017/000001', 'commission_quantity', '1'),
(41, 'PCPL-2017/000001', 'commission_amount', '1'),
(42, 'PCPL-2017/000001', 'commission_total', '1.00'),
(43, 'PCPL-2017/000001', 'labour_cost', '10'),
(44, 'PCPL-2017/000001', 'truck_rent', '1.00'),
(45, 'PCPL-2017/000005', 'company', ''),
(46, 'PCPL-2017/000005', 'truck_no', '123699'),
(47, 'PCPL-2017/000005', 'dn_no', '32199'),
(48, 'PCPL-2017/000005', 'truck_quantity', '1'),
(49, 'PCPL-2017/000005', 'truck_amount', '1'),
(50, 'PCPL-2017/000005', 'truck_total', '1.00'),
(51, 'PCPL-2017/000005', 'commission_quantity', '1'),
(52, 'PCPL-2017/000005', 'commission_amount', '1'),
(53, 'PCPL-2017/000005', 'commission_total', '1.00'),
(54, 'PCPL-2017/000005', 'labour_cost', '10'),
(55, 'PCPL-2017/000005', 'truck_rent', '1.00'),
(56, 'PCPL-2017/000006', 'company', '001'),
(57, 'PCPL-2017/000006', 'truck_no', '123697'),
(58, 'PCPL-2017/000006', 'dn_no', '987777'),
(59, 'PCPL-2017/000006', 'truck_quantity', '1'),
(60, 'PCPL-2017/000006', 'truck_amount', '0'),
(61, 'PCPL-2017/000006', 'truck_total', '0.00'),
(62, 'PCPL-2017/000006', 'commission_quantity', '1'),
(63, 'PCPL-2017/000006', 'commission_amount', '0'),
(64, 'PCPL-2017/000006', 'commission_total', '0.00'),
(65, 'PCPL-2017/000006', 'labour_cost', '10'),
(66, 'PCPL-2017/000006', 'truck_rent', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `saprecords`
--

CREATE TABLE `saprecords` (
  `id` int(11) UNSIGNED NOT NULL,
  `sap_at` date NOT NULL,
  `change_at` date NOT NULL,
  `voucher_no` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `party_code` varchar(45) NOT NULL,
  `address` text NOT NULL,
  `showroom_code` varchar(45) NOT NULL,
  `total_bill` decimal(10,2) NOT NULL,
  `total_discount` decimal(10,2) NOT NULL,
  `party_balance` decimal(10,2) NOT NULL COMMENT 'positive balance => Payable and negative balance => Receivable',
  `paid` decimal(10,2) NOT NULL,
  `method` varchar(45) NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(45) NOT NULL COMMENT 'sale or purchase',
  `showroom_id` varchar(255) NOT NULL,
  `sap_type` varchar(255) NOT NULL,
  `sale_type` varchar(255) DEFAULT NULL,
  `do_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saprecords`
--

INSERT INTO `saprecords` (`id`, `sap_at`, `change_at`, `voucher_no`, `party_code`, `address`, `showroom_code`, `total_bill`, `total_discount`, `party_balance`, `paid`, `method`, `remark`, `status`, `showroom_id`, `sap_type`, `sale_type`, `do_type`) VALUES
(2, '2017-08-19', '0000-00-00', 'PCPL-2017/000001', '0001', '', 'godown', '409.00', '0.00', '-10.00', '400.00', 'cash', '', 'sale', 'godown', 'do', NULL, ''),
(3, '2017-08-19', '0000-00-00', 'PCPL-2017/000003', '0001', '', 'godown', '4150.00', '0.00', '-19.00', '8000.00', 'cash', '', 'sale', 'godown', 'do', NULL, ''),
(4, '2017-08-20', '0000-00-00', 'PCPL-2017/000001', '0677', '', 'godown', '419.00', '0.00', '-10.00', '400.00', 'cash', '', 'sale', 'godown', 'do', NULL, ''),
(5, '2017-08-20', '0000-00-00', 'PCPL-2017/000005', '0677', '', 'godown', '419.00', '0.00', '-10.00', '400.00', 'cash', '', 'sale', 'godown', 'do', NULL, ''),
(6, '2017-08-20', '0000-00-00', 'PCPL-2017/000006', '0677', '', 'godown', '420.00', '0.00', '-29.00', '400.00', 'cash', '', 'sale', 'godown', 'do', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0f7ac3c63f7ae58b175d927d0b1ff0fa', '192.168.1.101', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 1503230337, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:12:"login_period";s:22:"2017-08-20 16:09:35 pm";s:4:"name";s:16:"Freelance IT Lab";s:5:"email";s:24:"freelanceitlab@gmail.com";s:8:"username";s:10:"superadmin";s:6:"mobile";s:11:"01775219457";s:9:"privilege";s:5:"admin";s:5:"image";s:34:"public/profiles/freelanceitlab.png";s:6:"branch";s:6:"godown";s:6:"holder";s:5:"admin";s:8:"loggedin";b:1;}'),
('5d51f3b8405a6ba4798b64086bdc4f00', '192.168.1.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 1503229208, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:12:"login_period";s:22:"2017-08-20 14:04:00 pm";s:4:"name";s:16:"Freelance IT Lab";s:5:"email";s:24:"freelanceitlab@gmail.com";s:8:"username";s:10:"superadmin";s:6:"mobile";s:11:"01775219457";s:9:"privilege";s:5:"admin";s:5:"image";s:34:"public/profiles/freelanceitlab.png";s:6:"branch";s:6:"godown";s:6:"holder";s:5:"admin";s:8:"loggedin";b:1;}'),
('77cc37cbfccf0c3426c8f08354f3a47a', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0', 1503230857, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:12:"login_period";s:22:"2017-08-20 16:18:59 pm";s:4:"name";s:16:"Freelance IT Lab";s:5:"email";s:24:"freelanceitlab@gmail.com";s:8:"username";s:10:"superadmin";s:6:"mobile";s:11:"01775219457";s:9:"privilege";s:5:"admin";s:5:"image";s:34:"public/profiles/freelanceitlab.png";s:6:"branch";s:6:"godown";s:6:"holder";s:5:"admin";s:8:"loggedin";b:1;}'),
('b50940c3db694fbf6bb52fa8139e7572', '192.168.1.101', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 1503230458, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:12:"login_period";s:22:"2017-08-20 17:10:54 pm";s:4:"name";s:16:"Freelance IT Lab";s:5:"email";s:24:"freelanceitlab@gmail.com";s:8:"username";s:10:"superadmin";s:6:"mobile";s:11:"01775219457";s:9:"privilege";s:5:"admin";s:5:"image";s:34:"public/profiles/freelanceitlab.png";s:6:"branch";s:6:"godown";s:6:"holder";s:5:"admin";s:8:"loggedin";b:1;}'),
('d41712745b3f2c79e4968a3e92fda0d1', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0', 1503224281, 'a:12:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:12:"login_period";s:22:"2017-08-20 14:04:44 pm";s:4:"name";s:16:"Freelance IT Lab";s:5:"email";s:24:"freelanceitlab@gmail.com";s:8:"username";s:10:"superadmin";s:6:"mobile";s:11:"01775219457";s:9:"privilege";s:5:"admin";s:5:"image";s:34:"public/profiles/freelanceitlab.png";s:6:"branch";s:6:"godown";s:6:"holder";s:5:"admin";s:8:"loggedin";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE `showroom` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `showroom_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supervisor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`id`, `name`, `showroom_id`, `type`, `supervisor`, `mobile`, `address`, `balance`) VALUES
(2, 'M/S R.R Trading & Co.', '02', 'All', 'Noni Gopal', '01762688999', '44 Bora Bazar, Mymensingh', '100000.00'),
(19, 'Test123', '03', 'Rod', 'Demo Name', '01856985745', 'Mymensingh', '0.00'),
(20, 'Test123', '03', 'Cement', 'Demo Name', '01856985745', 'Mymensingh', '0.00'),
(21, 'Test123', '03', 'Tiles & Ceramics', 'Demo Name', '01856985745', 'Mymensingh', '0.00'),
(22, 'Test', '22', 'Rod', 'asa', '12121212', 'qwqwq', '2323.00'),
(23, 'Test', '22', 'Transport', 'asa', '12121212', 'qwqwq', '2323.00'),
(24, 'Test', '22', 'Digital Scale', 'asa', '12121212', 'qwqwq', '2323.00');

-- --------------------------------------------------------

--
-- Table structure for table `sister_concern`
--

CREATE TABLE `sister_concern` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sister_concern`
--

INSERT INTO `sister_concern` (`id`, `date`, `image`) VALUES
(12, '2017-07-03', 'public/upload/sister_concern/Cs6Src5tn5er00_e9oni.png'),
(13, '2017-07-03', 'public/upload/sister_concern/n9iene_6cS39Csr3tro2.png'),
(14, '2017-07-03', 'public/upload/sister_concern/r5tri8Ss9e07c_nneC1o.png'),
(15, '2017-07-03', 'public/upload/sister_concern/nc9ro6Senst9_32ireC7.png'),
(16, '2017-07-03', 'public/upload/sister_concern/6s3crt5ier23n_oSn6Ce.png'),
(18, '2017-07-03', 'public/upload/sister_concern/4n_tios697ce1eCnSrr0.png'),
(19, '2017-07-03', 'public/upload/sister_concern/e2o9n8n7St1e7scriCr_.png'),
(20, '2017-07-03', 'public/upload/sister_concern/sS6i48C5or_tnncr5e4e.png'),
(21, '2017-07-03', 'public/upload/sister_concern/n2sC1icre6ot3Sn72_er.png'),
(23, '2017-07-03', 'public/upload/sister_concern/r_Ci2oe3e58s4cr5Sntn.png');

-- --------------------------------------------------------

--
-- Table structure for table `sitemeta`
--

CREATE TABLE `sitemeta` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `meta_type` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `meta_value` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `sitemeta`
--

INSERT INTO `sitemeta` (`id`, `meta_key`, `meta_type`, `meta_value`) VALUES
(16, 'md_mobile', 'general-settings', '01624390079'),
(17, 'director_mobile', 'general-settings', '01775219457'),
(18, 'cost_type', 'cost_type', 'General Cost'),
(19, 'cost_type', 'cost_type', 'Official Cost'),
(20, 'cost_type', 'cost_type', 'Furniture Cost'),
(21, 'cost_type', 'cost_type', 'Entertainment Cost'),
(22, 'cost_purpose', 'General Cost', 'TA/DA Cost'),
(23, 'cost_purpose', 'General Cost', 'Resident Cost'),
(25, 'cost_purpose', 'Official Cost', 'Truck Fuel Cost'),
(26, 'cost_purpose', 'Official Cost', 'Electric Bill'),
(27, 'cost_purpose', 'Official Cost', 'Mobil Bill'),
(28, 'cost_purpose', 'Official Cost', 'Internet Bill '),
(29, 'godown', 'initial_balance', '4000'),
(30, 'cost_type', 'cost_type', 'Payment to Employee'),
(31, 'cost_type', 'cost_type', 'Truck Fare');

-- --------------------------------------------------------

--
-- Table structure for table `sms_record`
--

CREATE TABLE `sms_record` (
  `id` int(11) UNSIGNED NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_time` time NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_characters` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_messages` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delivery_report` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_record`
--

INSERT INTO `sms_record` (`id`, `delivery_date`, `delivery_time`, `mobile`, `message`, `total_characters`, `total_messages`, `delivery_report`) VALUES
(1, '2017-06-22', '13:44:59', '01787388880', 'Thanks for purchasing, your have paid 200000Tk in cash and your current balance is 172500Tk Receivable', '102', '1', '1'),
(2, '2017-06-22', '15:03:56', '01787388880', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 770650Tk Payable', '94', '1', '1'),
(3, '2017-06-22', '15:30:34', '01787388880', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 1540650Tk Payable', '95', '1', '1'),
(4, '2017-06-22', '15:44:07', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(5, '2017-06-22', '15:44:08', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(6, '2017-06-22', '15:44:09', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(7, '2017-06-22', '15:44:09', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(8, '2017-06-22', '15:44:10', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(9, '2017-06-22', '15:44:10', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(10, '2017-06-22', '15:44:10', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(11, '2017-06-22', '15:44:10', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(12, '2017-06-22', '15:44:10', '01921787634', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 170000Tk Payable', '94', '1', '1'),
(13, '2017-07-01', '10:35:42', '01775219457', 'Thanks for purchasing, your have paid 0Tk in cash and your current balance is 6000Tk Payable', '92', '1', '1'),
(14, '2017-07-01', '10:51:10', '01775219457', 'Thanks for purchasing, your have purchas Holcim( 10 ) and paid 0Tk in cash and your current balance is 22500Tk Payable', '118', '1', '1'),
(15, '2017-07-01', '10:53:34', '01775219457', 'Thanks for purchasing, your have purchas Holcim(2 2) and paid 56000Tk in cash and your current balance is 32400Tk Receivable', '124', '1', '1'),
(16, '2017-07-01', '10:54:57', '01775219457', 'Thanks for purchasing, your have purchas Holcim(2 Bag) and paid 0Tk in cash and your current balance is 31300Tk Receivable', '122', '1', '1'),
(17, '2017-07-01', '13:43:01', '01787388880', 'Dear client, your payment 500000TK successfully paid. Your current balance is 1695640 Payable', '93', '1', '1'),
(18, '2017-07-01', '13:47:02', '01775219457', 'Dear client, your payment 0TK successfully paid. Your current balance is 31300 Receivable', '89', '1', '1'),
(19, '2017-07-03', '10:09:14', '01775219457', 'Thanks for purchasing, your have purchas Holcim(10 Bag) and paid 500Tk in cash and your current balance is 5000Tk Payable', '121', '1', '1'),
(20, '2017-07-04', '12:27:05', '01912226436', 'Thanks for purchasing, your have purchas Tiger(50 Bag) and paid 0Tk in cash and your current balance is 478420Tk Payable', '120', '1', '1'),
(21, '2017-07-04', '13:33:23', '01912226436', 'Dear client, your payment 56000TK successfully paid. Your current balance is 422420TK Payable', '93', '1', '1'),
(22, '2017-07-04', '13:38:21', '01912226436', 'Dear client, your payment 56000TK successfully paid. Your current balance is 422420TK Payable', '93', '1', '1'),
(23, '2017-07-04', '13:44:45', '01775219457', 'Dear client, your payment 50000TK successfully paid. Your current balance is 45000TK Receivable', '95', '1', '1'),
(24, '2017-07-04', '13:53:56', '01912226436', 'Dear client, your payment 50000TK successfully paid. Your current balance is 472420TK Receivable', '96', '1', '1'),
(25, '2017-07-27', '16:14:26', '01921787634', 'Dear client, your payment 5000TK successfully paid. Your current balance is 5000TK Receivable', '93', '1', '1'),
(26, '2017-07-27', '16:14:30', '01624390079', 'TK 5000has being collected from Rony Debnath at 07.27.2017, 04:14 pm', '68', '1', '1'),
(27, '2017-07-27', '16:14:41', '01775219457', 'TK 5000has being collected from Rony Debnath at 07.27.2017, 04:14 pm', '68', '1', '1'),
(28, '2017-07-31', '17:49:15', '01775219457', 'Dear client, your payment 1000TK successfully paid. Your current balance is 4000TK Payable at Holcim', '100', '1', '1'),
(29, '2017-07-31', '17:49:19', '01624390079', 'TK 1000 has being collected from Unknown at 07.31.2017, 05:49 pm', '64', '1', '1'),
(30, '2017-07-31', '17:49:23', '01775219457', 'TK 1000 has being collected from Unknown at 07.31.2017, 05:49 pm', '64', '1', '1'),
(31, '2017-08-07', '13:02:34', '01624390079', 'TK 50000 has being collected from FITL at 08.07.2017, 01:02 pm', '62', '1', '1'),
(32, '2017-08-07', '13:02:39', '01775219457', 'TK 50000 has being collected from FITL at 08.07.2017, 01:02 pm', '62', '1', '1'),
(33, '2017-08-08', '16:40:51', '01712720453', 'Thanks for purchasing, your have paid 11000Tk in  and your current balance is 0Tk Payable', '89', '1', '1'),
(34, '2017-08-09', '16:46:58', '01624390079', 'TK 5000 has being collected from FITL at 08.09.2017, 04:46 pm', '61', '1', '1'),
(35, '2017-08-09', '16:47:06', '01775219457', 'TK 5000 has being collected from FITL at 08.09.2017, 04:46 pm', '61', '1', '1'),
(36, '2017-08-09', '17:14:06', '01775219457', 'TK 500 has being collected from FITL at 08.09.2017, 05:13 pm', '60', '1', '1'),
(37, '2017-08-09', '17:16:38', '01921787634', 'yty', '33', '1', '1'),
(38, '2017-08-09', '17:18:02', '01624390079', 'TK 500 has being collected from FITL at 08.09.2017, 05:17 pm', '60', '1', '1'),
(39, '2017-08-09', '17:18:22', '01775219457', 'TK 500 has being collected from FITL at 08.09.2017, 05:18 pm', '60', '1', '1'),
(40, '2017-08-09', '17:20:15', '01712720453', 'Thanks for purchasing, your have paid 2750Tk in cash and your current balance is 0Tk Payable', '92', '1', '1'),
(41, '2017-08-14', '19:02:45', '01711327588', 'Dear client, your payment 20000TK successfully paid. Your current balance is 222414TK Receivable at Holcim', '106', '1', '1'),
(42, '2017-08-14', '19:02:46', '01624390079', 'TK 20000 has being collected from S Alom & Bro at 08.14.2017, 07:02 pm', '70', '1', '1'),
(43, '2017-08-14', '19:02:47', '01775219457', 'TK 20000 has being collected from S Alom & Bro at 08.14.2017, 07:02 pm', '70', '1', '1'),
(44, '2017-08-19', '12:54:25', '01624390079', 'TK 300 has being collected from FITL at 08.19.2017, 12:54 pm', '60', '1', '1'),
(45, '2017-08-19', '12:54:34', '01775219457', 'TK 300 has being collected from FITL at 08.19.2017, 12:54 pm', '60', '1', '1'),
(46, '2017-08-19', '13:14:55', '01624390079', 'TK 9 has being collected from FITL at 08.19.2017, 01:14 pm', '58', '1', '1'),
(47, '2017-08-19', '13:15:01', '01775219457', 'TK 9 has being collected from FITL at 08.19.2017, 01:14 pm', '58', '1', '1'),
(48, '2017-08-19', '13:22:39', '01624390079', 'TK 100 has being collected from FITL at 08.19.2017, 01:22 pm', '60', '1', '1'),
(49, '2017-08-19', '13:22:43', '01775219457', 'TK 100 has being collected from FITL at 08.19.2017, 01:22 pm', '60', '1', '1'),
(50, '2017-08-19', '14:04:32', '01624390079', 'TK 1 has being collected from FITL at 08.19.2017, 02:04 pm', '58', '1', '1'),
(51, '2017-08-19', '14:04:36', '01775219457', 'TK 1 has being collected from FITL at 08.19.2017, 02:04 pm', '58', '1', '1'),
(52, '2017-08-19', '14:55:53', '01624390079', 'TK 1 has being collected from FITL at 08.19.2017, 02:55 pm', '58', '1', '1'),
(53, '2017-08-19', '14:56:00', '01775219457', 'TK 1 has being collected from FITL at 08.19.2017, 02:55 pm', '58', '1', '1'),
(54, '2017-08-19', '16:42:32', '01624390079', 'TK 20 has being collected from FITL at 08.19.2017, 04:42 pm', '59', '1', '1'),
(55, '2017-08-19', '16:42:38', '01775219457', 'TK 20 has being collected from FITL at 08.19.2017, 04:42 pm', '59', '1', '1'),
(56, '2017-08-19', '16:48:25', '01624390079', 'TK 5 has being collected from FITL at 08.19.2017, 04:48 pm', '58', '1', '1'),
(57, '2017-08-19', '16:48:35', '01775219457', 'TK 5 has being collected from FITL at 08.19.2017, 04:48 pm', '58', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(10) UNSIGNED NOT NULL,
  `do_no` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `do_in` int(100) NOT NULL,
  `do_out` int(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `godown` varchar(100) NOT NULL,
  `showroom_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `do_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `do_no`, `category`, `subcategory`, `product_code`, `product_name`, `quantity`, `do_in`, `do_out`, `unit`, `purchase_price`, `sell_price`, `godown`, `showroom_id`, `type`, `do_type`) VALUES
(1, '', 'ROD', 'BSRM', 'Demo', 'Demo', 61, 0, 0, 'Bag', '500.00', '550.00', 'godown', 'godown', 'retail', ''),
(2, 'D102', 'ROD', 'BSRM', 'Demo', 'Demo', 0, 1500, 150, 'Bag', '500.00', '550.00', 'godown', 'godown', 'do', 'Cover'),
(3, '2566', 'Cement', 'Holcim', '123', 'Holcim', 0, 50, 0, 'Bag', '500.00', '550.00', 'godown', 'godown', 'do', 'Cover'),
(4, '', 'Cement', 'Holcim', '123', 'Holcim', 2, 0, 0, 'Bag', '500.00', '550.00', 'godown', 'godown', 'retail', ''),
(5, '', 'Cement', 'Scan', 'Scan-Cement', 'Scan Cement', 45, 0, 0, 'Bag', '500.00', '550.00', 'godown', 'godown', 'retail', ''),
(6, 'k-001', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 2000, 25, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(7, 'P-001', 'Cement', 'Premier Cement Mills Limited', 'Premier PCC', 'Premier Pcc', 0, 2000, 0, 'Bag', '425.00', '425.00', 'godown', 'godown', 'do', 'Cover'),
(8, '852', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 5000, 2, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(9, 'k-005', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 2000, 1, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Open'),
(10, '852', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 800, 2, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(11, '50501', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 500, 0, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(12, 'R-897456', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 87520, 0, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(13, '2121', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 3434, 1, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(14, 'R-101', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 1, 0, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(15, 'R-102', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 1, 0, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover'),
(16, 'R-101', 'Cement', 'Holcim Cement Bd. Ltd.', 'Holcim Strong Structure', 'Holcim Strong Structure', 0, 800, 0, 'Bag', '410.00', '410.00', 'godown', 'godown', 'do', 'Cover');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subcategory` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `date`, `category`, `subcategory`, `slug`) VALUES
(15, '2017-08-15', 'Cement', 'Holcim Cement Bd. Ltd.', 'holcim-cement-bd.-ltd.'),
(16, '2017-08-15', 'cement', 'Heidelberg Cement (Bd) Ltd.', 'heidelberg-cement-(bd)-ltd.'),
(17, '2017-08-15', 'cement', 'Premier Cement Mills Limited', 'premier-cement-mills-limited'),
(18, '2017-08-15', 'cement', 'Siam City Cement Bd. Ltd.', 'siam-city-cement-bd.-ltd.'),
(19, '2017-08-15', 'Rod', 'Bangladesh Rerolling Mills Ltd', 'bangladesh-rerolling-mills-ltd'),
(20, '2017-08-15', 'rod', 'PHP Ispat Ltd.', 'php-ispat-ltd.'),
(21, '2017-08-16', 'rod', 'BSRM', 'bsrm');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `bank` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_by` varchar(100) NOT NULL,
  `remarks` text NOT NULL,
  `showroom_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `transaction_date`, `bank`, `account_number`, `transaction_type`, `amount`, `transaction_by`, `remarks`, `showroom_id`) VALUES
(6, '2017-08-16', 'Brac_Bank_Ltd', '123456', 'Credit', '500.00', 'test', 'test', 'godown'),
(7, '2017-08-16', 'Sonali_Bank_Limited', '5236987412', 'Debit', '500.00', 'test', 'test', 'godown'),
(8, '2017-08-16', 'Sonali_Bank_Limited', '52369871223', 'Credit', '100.00', 'test', 'test', '01'),
(9, '2017-08-16', 'Sonali_Bank_Limited', '52369871223', 'Debit', '100.00', 'test', 'test', '01'),
(10, '2017-08-20', 'Brac_Bank_Ltd', '123456', 'Debit', '2000.00', 'self', 'Unknown', 'godown');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `opening` datetime NOT NULL,
  `name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `maritial_status` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `about` text NOT NULL,
  `website` varchar(100) NOT NULL,
  `facecbook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `privilege` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `opening`, `name`, `l_name`, `gender`, `birthday`, `maritial_status`, `position`, `about`, `website`, `facecbook`, `twitter`, `email`, `username`, `password`, `privilege`, `image`, `mobile`, `branch`) VALUES
(1, '2017-06-01 10:44:15', 'Freelance IT Lab', '', '', '', '', '', '', '', '', '', 'freelanceitlab@gmail.com', 'superadmin', '262478f2a0b13b0532b5fddd18822a0f', 'admin', 'public/profiles/freelanceitlab.png', '01775219457', 'godown'),
(2, '2017-06-18 02:51:41', 'user2017', '', '', '', '', '', '', '', '', '', 'user@2017.com', 'user2017', 'b10784b7e4c46cd5fd916eb892528467', 'user', 'public/profiles/user2017.png', '01735189235', 'godown'),
(3, '2017-07-26 02:50:49', 'Abdullah', '', '', '', '', '', '', '', '', '', 'asdfasdf@asdfsdaf.com', 'abdullah', 'd1c8e2f2e80ac400644cf8a8ccb351ec', 'field_officer', 'public/profiles/abdullah.jpg', '01725698741', '01'),
(5, '2017-08-07 01:04:49', 'Freelance IT Lab-2', '', '', '', '', '', '', '', '', '', 'superadmin2016@freelanceitlab.com', 'superadmin', '262478f2a0b13b0532b5fddd18822a0f', 'user', 'public/profiles/superadmin.png', '0190*******', 'godown'),
(6, '2017-08-16 01:22:57', 'test123', '', '', '', '', '', '', '', '', '', 'test123@yahoo.com', 'test123', '8c27ddafdc51dccdf94bfcecd05a32f1', 'user', 'public/profiles/test123.png', '01254785748', '01');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_comments`
--

CREATE TABLE `visitor_comments` (
  `id` int(100) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus_structure`
--
ALTER TABLE `bonus_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_structure`
--
ALTER TABLE `deduction_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distribute_record`
--
ALTER TABLE `distribute_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_product`
--
ALTER TABLE `front_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `godowns`
--
ALTER TABLE `godowns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incentive_structure`
--
ALTER TABLE `incentive_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `initial_transaction`
--
ALTER TABLE `initial_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partybalance`
--
ALTER TABLE `partybalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partymeta`
--
ALTER TABLE `partymeta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `partytransaction`
--
ALTER TABLE `partytransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partytransactionmeta`
--
ALTER TABLE `partytransactionmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_records`
--
ALTER TABLE `salary_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_structure`
--
ALTER TABLE `salary_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapitems`
--
ALTER TABLE `sapitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapmeta`
--
ALTER TABLE `sapmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saprecords`
--
ALTER TABLE `saprecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sister_concern`
--
ALTER TABLE `sister_concern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemeta`
--
ALTER TABLE `sitemeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_record`
--
ALTER TABLE `sms_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_comments`
--
ALTER TABLE `visitor_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bonus_structure`
--
ALTER TABLE `bonus_structure`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cost`
--
ALTER TABLE `cost`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `deduction_structure`
--
ALTER TABLE `deduction_structure`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `distribute_record`
--
ALTER TABLE `distribute_record`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `front_product`
--
ALTER TABLE `front_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `godowns`
--
ALTER TABLE `godowns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `incentive_structure`
--
ALTER TABLE `incentive_structure`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `initial_transaction`
--
ALTER TABLE `initial_transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;
--
-- AUTO_INCREMENT for table `partybalance`
--
ALTER TABLE `partybalance`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=983;
--
-- AUTO_INCREMENT for table `partymeta`
--
ALTER TABLE `partymeta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;
--
-- AUTO_INCREMENT for table `partytransaction`
--
ALTER TABLE `partytransaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `partytransactionmeta`
--
ALTER TABLE `partytransactionmeta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `salary_records`
--
ALTER TABLE `salary_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `salary_structure`
--
ALTER TABLE `salary_structure`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sapitems`
--
ALTER TABLE `sapitems`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sapmeta`
--
ALTER TABLE `sapmeta`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `saprecords`
--
ALTER TABLE `saprecords`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `showroom`
--
ALTER TABLE `showroom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sister_concern`
--
ALTER TABLE `sister_concern`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `sitemeta`
--
ALTER TABLE `sitemeta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `sms_record`
--
ALTER TABLE `sms_record`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `visitor_comments`
--
ALTER TABLE `visitor_comments`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
