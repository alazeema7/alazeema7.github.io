-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2013 at 12:58 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `order`) VALUES
(10, 'Food', 'uploads/1370261157_food-grey.png', -1),
(11, 'Cake', 'uploads/1370261164_cake_13.png', -1),
(12, 'Drinks', 'uploads/1370261186_cocktail.png', -1),
(13, 'Pizza', 'uploads/1370261201_pizza_box-y.png', -1),
(15, 'Fashion', 'uploads/1370353106_Fashion_Icon_3D_rev.png', 0),
(16, 'Computers', 'uploads/1370353075_MyComputer.png', 0),
(17, 'Garden', 'uploads/1370353093_icontexto-green-01.png', 0),
(18, 'Cars', 'uploads/1370353147_aiga_taxi.png', -1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `received` tinyint(1) NOT NULL DEFAULT '0',
  `payment_id` varchar(255) NOT NULL,
  `paid` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `content`, `date`, `received`, `payment_id`, `paid`) VALUES
(17, 'Shoes ~ 1;T-Shirt ~ 1;Shirt ~ 1;', '2013-06-04 12:22:37', 1, 'PAY-3SB53539CT746031WKGW3D3Q', ''),
(18, 'Shoes ~ 1;Schoolbag ~ 2;', '2013-06-04 12:25:42', 0, 'PAY-1HM01647CB591650XKGW3FGQ', ''),
(19, 'Shoes ~ 2;T-Shirt ~ 2;Shirt ~ 1;', '2013-06-04 12:32:22', 1, 'PAY-7J739816V1697200SKGW3IKQ', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(32128) NOT NULL,
  `image` varchar(512) NOT NULL,
  `description` varchar(256) NOT NULL,
  `id_category` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `id_category`, `order`) VALUES
(39, 'Shoes', '14', 'uploads/1370355001_Shoe_512x512.png', 'Very comfortable', 15, 0),
(40, 'T-Shirt', '9', 'uploads/1370355070_t-shirt.png', 'Light and comfortable', 15, 0),
(41, 'Shirt', '12', 'uploads/1370355066_gnome-settings-theme.png', 'Simple shirt', 15, 0),
(42, 'Schoolbag', '19', 'uploads/1370355048_Schoolbag-girl-128.png', 'Glamour bag', 15, 0),
(43, 'Nike', '17', 'uploads/1370355014_nike.png', '', 15, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
