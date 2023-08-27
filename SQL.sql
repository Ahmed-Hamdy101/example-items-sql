-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2023 at 11:15 AM
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `sku` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`sku`, `product_name`, `img`) VALUES
(101, '4MEx', 'IMG/img/shirts/1.jpg'),
(102, 'MIKE', 'IMG/img/shirts/shirt-102.jpg'),
(103, '4MIKE', 'IMG/img/shirts/shirt-103.jpg'),
(104, 'FORMIKE', 'IMG/img/shirts/shirt-104.jpg'),
(105, 'Code', 'IMG/img/shirts/shirt-109.jpg'),
(106, 'HTML5', 'IMG/img/shirts/shirt-110.jpg'),
(107, 'CSS 3', 'IMG/img/shirts/shirt-111.jpg'),
(108, 'HTML', 'IMG/img/shirts/shirt-112.jpg'),
(109, 'CSS 3', 'IMG/img/shirts/shirt-113.jpg'),
(111, '<?PHP ?>', 'IMG/img/shirts/shirt-114.jpg'),
(112, ' </code>', 'IMG/img/shirts/shirt-115.jpg'),
(113, '<?PHP ?>', 'IMG/img/shirts/shirt-116.jpg'),
(114, 'GET[\'HTTP\']', 'IMG/img/shirts/shirt-117.jpg'),
(115, 'MIKE', 'IMG/img/shirts/shirt-118.jpg'),
(116, 'CSS 3', 'IMG/img/shirts/shirt-119.jpg'),
(117, 'HTML 5', 'IMG/img/shirts/shirt-120.jpg'),
(118, 'POST[\'ME\']', 'IMG/img/shirts/shirt-121.jpg'),
(119, '<?PHP>', 'IMG/img/shirts/shirt-122.jpg'),
(120, 'MIke', 'IMG/img/shirts/shirt-123.jpg'),
(121, '$Variable', 'IMG/img/shirts/shirt-124.jpg'),
(122, 'CSS 3', 'IMG/img/shirts/shirt-125.jpg'),
(123, '!DOCTYPE', 'IMG/img/shirts/shirt-126.jpg'),
(124, 'MIKE', 'IMG/img/shirts/shirt-127.jpg'),
(125, 'GET[\'HTTPS\']', 'IMG/img/shirts/shirt-128.jpg'),
(126, 'GET[\'HTTPS\']', 'IMG/img/shirts/shirt-129.jpg'),
(127, 'HTML 5', 'IMG/img/shirts/shirt-130.jpg'),
(128, ' 4MIKE', 'IMG/img/shirts/shirt-131.jpg'),
(129, ' MIKE', 'IMG/img/shirts/shirt-132.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `product_sku` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`product_sku`, `size_id`) VALUES
(101, 1),
(101, 2),
(101, 3),
(101, 4),
(102, 1),
(102, 2),
(102, 3),
(102, 4),
(103, 1),
(103, 2),
(103, 3),
(103, 4),
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(105, 1),
(105, 2),
(105, 3),
(105, 4),
(106, 1),
(106, 2),
(106, 3),
(106, 4),
(107, 1),
(107, 2),
(107, 3),
(107, 4),
(108, 1),
(108, 2),
(108, 3),
(108, 4),
(109, 1),
(109, 2),
(109, 3),
(109, 4),
(111, 1),
(111, 2),
(111, 3),
(111, 4),
(112, 1),
(112, 2),
(112, 3),
(112, 4),
(113, 1);

-- --------------------------------------------------------
/*
 STEP 3  ADD THE COMAMMAND
 INSERT INTO `sizes` (`id`, `sizes`, `orders`)
 VALUES
 (1, 'Small', 10),
 (2, 'Medium', 20),
 (3, 'Large', 30),
 (4, 'X-Large', 40);
*/
 /*
 TO SOLVE THE PROBLEM  U  CAN'T ADD  OR UPDATE CHILD ROW
-- STEP 0 ADD   Product data
-- STEP 1
 - Every thing should be clear  without entire Data !
-- STEP 2 ADD THE FOLLOWING COMAMMAND
 */


CREATE TABLE `sizes` (
  `id` int(11)  NULL,
  `sizes` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders` int(11) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `product_size`
( `product_sku` INT(11)  NULL ,
  `size_id` INT(11)  NULL
 )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `product_size` ADD FOREIGN KEY (`product_sku`) REFERENCES `product`(`sku`);

 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(101,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(101,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(101,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(101,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(102,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(102,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(102,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(102,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(103,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(103,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(103,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(103,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(104,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(104,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(104,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(104,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(105,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(105,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(105,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(105,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(106,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(106,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(106,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(106,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(107,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(107,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(107,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(107,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(108,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(108,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(108,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(108,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(109,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(109,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(109,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(109,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(110,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(110,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(110,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(110,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(111,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(111,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(111,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(111,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(112,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(112,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(112,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(112,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(113,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(113,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(113,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(113,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(114,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(114,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(114,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(114,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(115,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(115,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(115,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(115,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(116,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(116,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(116,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(116,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(117,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(117,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(117,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(117,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(118,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(118,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(118,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(118,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(119,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(119,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(119,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(119,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(120,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(120,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(120,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(120,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(121,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(121,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(121,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(121,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(122,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(122,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(122,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(122,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(123,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(123,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(123,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(123,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(124,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(124,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(124,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(124,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(125,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(125,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(125,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(125,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(126,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(126,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(126,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(126,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(127,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(127,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(127,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(127,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(128,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(128,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(128,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(128,4);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(129,1);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(129,2);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(129,3);
 INSERT INTO `product_size`(`product_sku`,`size_id`) VALUES(129,4);
