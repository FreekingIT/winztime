-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 31, 2021 at 11:35 AM
-- Server version: 5.7.35
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winztime_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(22) DEFAULT NULL,
  `last_name` varchar(22) DEFAULT NULL,
  `address` text NOT NULL,
  `buildingno` varchar(222) DEFAULT NULL,
  `countries_id` int(11) NOT NULL,
  `city` text NOT NULL,
  `zipcode` int(111) DEFAULT NULL,
  `delivery_phone` text NOT NULL,
  `default_address` int(1) NOT NULL,
  `addresstype_home` int(1) DEFAULT NULL,
  `addresstype_office` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `first_name`, `last_name`, `address`, `buildingno`, `countries_id`, `city`, `zipcode`, `delivery_phone`, `default_address`, `addresstype_home`, `addresstype_office`, `created_at`, `updated_at`) VALUES
(1, 64, 'Abir', 'Jaber', 'Al furjan', 'Azizi feiroz apt 508', 0, 'Dubai', NULL, '567594147', 1, 1, 1, '2021-07-13 14:28:40', '2021-07-23 13:38:46'),
(2, 73, 'Fatima', 'Mustafa', 'Abc', '123', 0, 'Sharjah', NULL, '123456789', 0, 1, NULL, '2021-07-14 10:32:17', '2021-08-05 15:23:53'),
(3, 69, 'tst', 'test', 'test', 'testq', 0, 'Abu Dhabi', NULL, '987654321', 1, 1, NULL, '2021-07-15 13:51:58', '2021-07-15 13:51:58'),
(4, 65, 'Batool', 'Zehra', '123 street', 'Al barsha tower', 0, 'Dubai', NULL, '000000000', 1, 1, NULL, '2021-07-15 13:55:15', '2021-07-15 13:55:15'),
(5, 62, 'farhan', 'qureshi', 'abc', 'abc.xyz', 0, 'Abu Dhabi', NULL, '123123123', 1, 1, NULL, '2021-07-15 13:56:42', '2021-07-15 13:56:42'),
(7, 57, 'Ali', 'Jaber', '7', 'Azizi Feirouz building 508', 0, 'Dubai', NULL, '502801120', 1, 1, NULL, '2021-07-17 17:01:54', '2021-07-17 17:01:54'),
(8, 84, 'Sydney', 'Fernandes', 'Al falak', 'Thuraya tower', 0, 'Dubai', NULL, '509903867', 1, 1, NULL, '2021-07-22 15:31:57', '2021-07-22 15:31:57'),
(10, 88, 'hammad', 'iqbal', 'rabia city', 'gulshan e iqbal block 8', 0, 'Dubai', NULL, '12345678910', 1, 1, NULL, '2021-07-28 14:48:04', '2021-07-28 14:48:04'),
(11, 74, 'Faiq', 'Ali', '100 N central expressway 613 richardson tx', 'VILLA 2', 0, 'Dubai', NULL, '3082256060', 1, 1, 1, '2021-07-28 15:07:41', '2021-08-05 16:14:50'),
(12, 93, 'Hjhg', 'Hjjj', 'Fuhchc', 'Hfxyx', 0, 'Sharjah', NULL, '9803150996', 1, 1, NULL, '2021-07-29 15:30:52', '2021-07-29 15:30:52'),
(13, 54, 'khan2', 'bhai2', '25245 Stadium Drive', '123asd12sd', 0, 'Sharjah', NULL, '(201) 555-0123', 1, 1, NULL, '2021-08-05 13:21:16', '2021-08-05 13:21:16'),
(14, 73, 'add', 'ads', 'asds', 'fsds', 0, 'Abu Dhabi', NULL, '18726382575', 1, 1, NULL, '2021-08-05 15:23:53', '2021-08-05 15:23:53'),
(15, 96, 'test', 'test', '7097 Lincoln St.  Torrington, CT 06790', 'Buldingno2 2nd floor', 0, 'Dubai', NULL, '03102450220', 1, 1, 1, '2021-08-09 12:48:24', '2021-08-09 12:53:59'),
(16, 70, 'Sheheryar', 'Khan', 'B-142 Block 2 Gulshan e Iqbal', 'sdfsfds', 0, 'Dubai', NULL, '+923009239575', 1, 1, NULL, '2021-08-15 11:18:24', '2021-08-15 11:18:24'),
(18, 107, 'test', 'test', 'test', '123 testing', 0, 'Dubai', NULL, '0599123456', 1, 1, NULL, '2021-08-16 13:15:19', '2021-08-16 13:15:19'),
(19, 111, 'Sharoz', 'Alam', 'streeet 1', 'Villa 2', 0, 'Dubai', NULL, '03102450220', 1, 1, NULL, '2021-08-23 09:14:13', '2021-08-23 09:14:13'),
(20, 115, 'omair', 'ahmed', 'Techno Hub 2, Silicon Oasis', 'al murad tower 806', 0, 'Dubai', NULL, '+971545580042', 1, 1, NULL, '2021-08-23 14:51:22', '2021-08-23 14:51:22'),
(21, 120, 'B', 'Z', '123 street', 'Building no 2', 0, 'Dubai', NULL, '3039086119', 1, 1, NULL, '2021-08-24 12:13:12', '2021-08-24 12:13:12'),
(22, 121, 'Batool', 'Zehra', 'Okay street', 'Building no 2', 0, 'Dubai', NULL, '3035672996', 1, 1, NULL, '2021-08-25 07:56:32', '2021-08-25 07:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(11) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(11) NOT NULL,
  `nonce` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8mb4_unicode_ci,
  `expires_impressions` int(11) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`, `banners_slug`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', '6', '9', '', NULL, 0, '2020-07-23 00:00:00', NULL, '2020-04-05 01:10:00', NULL, 1, 'category', '', '2019-09-23 14:53:34', NULL),
(2, 'Banner 2', '4', '11', '', NULL, 0, '2020-06-02 00:00:00', NULL, '2020-04-05 01:10:00', NULL, 1, 'category', '', '2019-09-23 14:53:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT '0',
  `banners_clicked` int(11) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

CREATE TABLE `block_ips` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `campaign_code` text NOT NULL,
  `no_customers` int(11) DEFAULT NULL,
  `no_of_orders` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `product_id`, `reward_id`, `type_id`, `campaign_code`, `no_customers`, `no_of_orders`, `status`, `created_at`, `updated_at`) VALUES
(5, 'SOLD', '2021-03-01 00:00:00', '2021-03-31 00:00:00', 46, 4, 4, 'tiQDp1OGuZm92xPn', 0, 30, 0, '2020-07-06 06:58:39', '2021-07-11 14:32:52'),
(6, 'Gucci Bag (Gucci GG)', '2021-06-21 00:00:00', '2021-07-30 00:00:00', 43, 3, 0, 'xQPHDT6Q0ZIil9eB', 24, 240, 0, '2021-06-20 11:16:33', '2021-08-02 12:52:49'),
(7, 'TAG HEUER AQUARACER Watch', '2021-05-18 00:00:00', '2021-05-20 00:00:00', 13, 2, 1, 'ZOlsZb0SlpEFtNTY', 18, 180, 0, '2020-07-05 10:03:32', '2021-08-02 08:14:55'),
(8, 'Samsung Mobile S21	', '2021-06-28 00:00:00', '2021-09-01 00:00:00', 7, 1, 0, 'NixO8QQPy1rijZhB', 25, 250, 1, '2021-06-20 11:16:59', '2021-08-02 12:59:35'),
(9, 'AED 10,000 Worth of Gold', '2021-06-28 00:00:00', '2021-09-01 00:00:00', 12, 5, 0, 'utzhTZWful8EPLkW', 19, 185, 1, '2021-06-28 19:47:48', '2021-08-30 08:09:58'),
(10, 'AED 5,000 Worth Of Gold', '2021-06-28 00:00:00', '2021-08-15 00:00:00', 45, 6, 0, 'uVFUAFs78ZP9Y1oV', 10, 95, 0, '2021-06-28 19:49:05', '2021-08-02 09:04:31'),
(11, 'Skydiving Voucher', '2021-03-01 00:00:00', '2021-09-01 00:00:00', 42, 4, 4, 'jI9LT5l6DJWz01z0', 10, 95, 1, '2020-07-06 06:58:39', '2021-08-30 06:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cardnumber` varchar(200) NOT NULL,
  `cardholder` varchar(222) NOT NULL,
  `expirydate` text NOT NULL,
  `securitycode` text NOT NULL,
  `card_img` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `user_id`, `cardnumber`, `cardholder`, `expirydate`, `securitycode`, `card_img`, `created_at`, `updated_at`) VALUES
(36, 9, '4242 4242 4242 4242', 'Sharooz alam', '02/22', '', 'visa', '2021-01-26 21:10:38', '2021-01-26 21:10:38'),
(38, 37, '4242 4242 4242 4242', 'sharoz', '02/22', '', 'visa', '2021-03-06 11:09:21', '2021-03-06 11:09:21'),
(39, 37, '4242 4242 4242 4242', 'sharoz alam', '02/22', '', 'visa', '2021-03-06 11:10:03', '2021-03-06 11:10:03'),
(40, 38, '4242 4242 4242 4242', 'test', '12/22', '', 'visa', '2021-03-21 06:59:01', '2021-03-21 06:59:01'),
(41, 38, '4242 4242 4242 4242', 'test', '12/22', '', 'visa', '2021-03-21 07:00:21', '2021-03-21 07:00:21'),
(42, 39, '4242 4242 4242 4242', 'test', '12/22', '', 'visa', '2021-03-21 07:29:12', '2021-03-21 07:29:12'),
(43, 39, '4242 4242 4242 4242', 'test', '12/22', '', 'visa', '2021-03-21 07:29:54', '2021-03-21 07:29:54'),
(46, 41, '123456789', 'aaa', '01/22', '', 'visa', '2021-03-23 06:56:24', '2021-03-23 06:56:24'),
(47, 41, '123456789', 'aaa', '01/22', '', 'visa', '2021-03-23 06:56:25', '2021-03-23 06:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '258', '257', 0, NULL, NULL, NULL, 'men-s', 1, '2019-09-19 12:08:12', '2019-10-01 14:57:00'),
(2, '260', '259', 0, NULL, NULL, NULL, 'women-s', 1, '2019-09-19 12:10:26', '2019-10-01 14:57:26'),
(3, '262', '261', 0, NULL, NULL, NULL, 'kid-s', 1, '2019-09-19 12:10:47', '2019-10-01 14:58:48'),
(4, '263', '264', 3, NULL, NULL, NULL, 'boy-s-clothing', 1, '2019-09-19 12:12:48', '2019-10-01 14:59:13'),
(5, '266', '265', 3, NULL, NULL, NULL, 'girl-s-clothing', 1, '2019-09-19 12:13:12', '2019-10-01 14:59:46'),
(6, '268', '267', 3, NULL, NULL, NULL, 'kid-s-shoes', 1, '2019-09-19 12:13:52', '2019-10-01 15:00:09'),
(7, '270', '269', 1, NULL, NULL, NULL, 'men-s-accessories', 1, '2019-09-19 12:18:22', '2019-10-01 15:00:34'),
(8, '272', '271', 1, NULL, NULL, NULL, 'men-s-jeans', 1, '2019-09-19 12:19:14', '2019-10-01 15:00:46'),
(9, '274', '273', 1, NULL, NULL, NULL, 'men-s-shirts', 1, '2019-09-19 12:20:19', '2019-10-01 15:01:17'),
(10, '276', '275', 1, NULL, NULL, NULL, 'men-s-shoes', 1, '2019-09-19 12:20:38', '2019-10-01 15:01:27'),
(11, '278', '277', 2, NULL, NULL, NULL, 'women-s-accessories', 1, '2019-09-19 12:30:13', '2019-10-01 15:01:57'),
(12, '279', '280', 2, NULL, NULL, NULL, 'women-s-bottoms', 1, '2019-09-19 12:30:45', '2019-10-01 15:02:10'),
(13, '282', '281', 2, NULL, NULL, NULL, 'women-s-tops', 1, '2019-09-19 12:31:30', '2019-10-01 15:02:39'),
(14, '284', '283', 2, NULL, NULL, NULL, 'women-s-winter-wear', 1, '2019-09-19 12:31:54', '2019-10-01 15:02:50'),
(15, '286', '285', 2, NULL, NULL, NULL, 'women-s-shoes', 1, '2019-09-19 12:32:17', '2019-10-01 15:03:12'),
(16, '426', '425', 0, NULL, NULL, NULL, 'house-hold', 1, '2019-09-25 15:29:59', '2019-10-01 15:03:24'),
(17, '6', '7', 16, NULL, NULL, NULL, 'house-hold-1', 1, '2020-03-20 15:37:49', NULL),
(18, '6', '7', 17, NULL, NULL, NULL, 'house-hold-1-1', 1, '2020-03-20 15:38:35', NULL),
(19, '6', '7', 18, NULL, NULL, NULL, 'house-hold-1-1-1', 1, '2020-03-20 15:39:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Men\'s'),
(2, 2, 1, 'Women\'s'),
(3, 3, 1, 'Kid\'s'),
(4, 4, 1, 'Boy\'s Clothing'),
(5, 5, 1, 'Girl\'s Clothing'),
(6, 6, 1, 'Kid\'s Shoes'),
(7, 7, 1, 'Men\'s Accessories'),
(8, 8, 1, 'Men\'s Jeans'),
(9, 9, 1, 'Men\'s Shirts'),
(10, 10, 1, 'Men\'s Shoes'),
(11, 11, 1, 'Women\'s Accessories'),
(12, 12, 1, 'Women\'s Bottoms'),
(13, 13, 1, 'Women\'s Tops'),
(14, 14, 1, 'Women\'s Winter Wear'),
(15, 15, 1, 'Women\'s Shoes'),
(16, 16, 1, 'House Hold'),
(33, 17, 1, 'House Hold 1'),
(35, 18, 1, 'House Hold 1.1'),
(37, 19, 1, 'House Hold 1.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `id` int(11) NOT NULL,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `compare`
--

INSERT INTO `compare` (`id`, `product_ids`, `customer_id`) VALUES
(1, 2, 6),
(2, 1, 6),
(3, 3, 6),
(4, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, '1', '/shop', '14', '2020-04-01 15:01:56', 1, 1, '1'),
(2, '2', '/shop', '15', '2020-04-01 15:03:34', 1, 1, '2'),
(3, 'banner1', '/shop', '444', '2019-09-08 18:43:34', 1, 1, '3'),
(4, 'banner1', '/shop', '445', '2019-09-08 18:43:42', 1, 1, '4'),
(5, 'banner1', '/shop', '446', '2019-09-08 18:44:15', 1, 1, '5'),
(6, 'banner2_3_4', '/shop', '28', '2019-09-10 08:50:55', 1, 1, '6'),
(7, 'banner2_3_4', '/shop', '29', '2019-09-10 08:54:18', 1, 1, '7'),
(8, 'banner2_3_4', '/shop', '30', '2019-09-10 08:54:28', 1, 1, '8'),
(9, 'banner2_3_4', '/shop', '31', '2019-09-10 08:54:38', 1, 1, '9'),
(10, 'banner5_6', '/shop', '32', '2019-09-10 09:31:13', 1, 1, '10'),
(11, 'banner5_6', '/shop', '33', '2019-09-10 09:31:24', 1, 1, '11'),
(12, 'banner5_6', '/shop', '34', '2019-09-10 09:31:35', 1, 1, '12'),
(13, 'banner5_6', '/shop', '35', '2019-09-10 09:32:18', 1, 1, '13'),
(14, 'banner5_6', '/shop', '36', '2019-09-10 09:32:28', 1, 1, '14'),
(15, 'banner7_8', '/shop', '38', '2019-09-10 09:52:02', 1, 1, '15'),
(16, 'banner7_8', '/shop', '37', '2019-09-10 09:52:29', 1, 1, '16'),
(17, 'banner7_8', '/shop', '39', '2019-09-10 09:47:56', 1, 1, '17'),
(18, 'banner7_8', '/shop', '40', '2019-09-10 09:48:05', 1, 1, '18'),
(19, 'banner9', '/shop', '41', '2019-09-10 10:19:03', 1, 1, '19'),
(20, 'banner9', '/shop', '42', '2019-09-10 10:19:13', 1, 1, '20'),
(21, 'banner10_11_12', '/shop', '44', '2019-09-10 10:26:12', 1, 1, '21'),
(22, 'banner10_11_12', '/shop', '43', '2019-09-10 10:26:30', 1, 1, '22'),
(23, 'banner10_11_12', '/shop', '45', '2019-09-10 10:26:41', 1, 1, '23'),
(24, 'banner10_11_12', '/shop', '46', '2019-09-10 10:26:54', 1, 1, '24'),
(25, 'banner13_14_15', '/shop', '47', '2019-09-10 11:01:09', 1, 1, '25'),
(26, 'banner13_14_15', '/shop', '48', '2019-09-10 11:01:27', 1, 1, '26'),
(27, 'banner13_14_15', '/shop', '49', '2019-09-10 11:02:12', 1, 1, '27'),
(28, 'banner13_14_15', '/shop', '536', '2019-09-10 11:02:23', 1, 1, '28'),
(29, 'banner13_14_15', '/shop', '51', '2019-09-10 11:02:36', 1, 1, '29'),
(30, 'banner16_17', '/shop', '52', '2019-09-10 11:19:45', 1, 1, '30'),
(31, 'banner16_17', '/shop', '53', '2019-09-10 11:19:58', 1, 1, '31'),
(32, 'banner16_17', '/shop', '54', '2019-09-10 11:21:00', 1, 1, '32'),
(33, 'banner18_19', '/shop', '55', '2019-09-10 11:30:35', 1, 1, '33'),
(34, 'banner18_19', '/shop', '56', '2019-09-10 11:30:49', 1, 1, '34'),
(35, 'banner18_19', '/shop', '57', '2019-09-10 11:31:04', 1, 1, '35'),
(36, 'banner18_19', '/shop', '58', '2019-09-10 11:31:20', 1, 1, '36'),
(37, 'banner18_19', '/shop', '59', '2019-09-10 11:31:54', 1, 1, '37'),
(38, 'banner18_19', '/shop', '60', '2019-09-10 11:32:06', 1, 1, '38'),
(39, 'ad_banner1', '/shop', '13', '2019-09-11 06:17:45', 1, 1, '39'),
(40, 'ad_banner2', '/shop', '12', '2019-09-11 06:17:58', 1, 1, '40'),
(81, 'ad_banner3', '/shop', '12', '2020-02-26 02:10:11', 1, 1, '41'),
(82, 'ad_banner3', '/shop', '107', '2020-02-26 04:08:08', 1, 2, '41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, NULL),
(2, 'Albania', 'AL', 'ALB', 1, NULL),
(3, 'Algeria', 'DZ', 'DZA', 1, NULL),
(4, 'American Samoa', 'AS', 'ASM', 1, NULL),
(5, 'Andorra', 'AD', 'AND', 1, NULL),
(6, 'Angola', 'AO', 'AGO', 1, NULL),
(7, 'Anguilla', 'AI', 'AIA', 1, NULL),
(8, 'Antarctica', 'AQ', 'ATA', 1, NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, NULL),
(10, 'Argentina', 'AR', 'ARG', 1, NULL),
(11, 'Armenia', 'AM', 'ARM', 1, NULL),
(12, 'Aruba', 'AW', 'ABW', 1, NULL),
(13, 'Australia', 'AU', 'AUS', 1, NULL),
(14, 'Austria', 'AT', 'AUT', 5, NULL),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, NULL),
(16, 'Bahamas', 'BS', 'BHS', 1, NULL),
(17, 'Bahrain', 'BH', 'BHR', 1, NULL),
(18, 'Bangladesh', 'BD', 'BGD', 1, NULL),
(19, 'Barbados', 'BB', 'BRB', 1, NULL),
(20, 'Belarus', 'BY', 'BLR', 1, NULL),
(21, 'Belgium', 'BE', 'BEL', 1, NULL),
(22, 'Belize', 'BZ', 'BLZ', 1, NULL),
(23, 'Benin', 'BJ', 'BEN', 1, NULL),
(24, 'Bermuda', 'BM', 'BMU', 1, NULL),
(25, 'Bhutan', 'BT', 'BTN', 1, NULL),
(26, 'Bolivia', 'BO', 'BOL', 1, NULL),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, NULL),
(28, 'Botswana', 'BW', 'BWA', 1, NULL),
(29, 'Bouvet Island', 'BV', 'BVT', 1, NULL),
(30, 'Brazil', 'BR', 'BRA', 1, NULL),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, NULL),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, NULL),
(33, 'Bulgaria', 'BG', 'BGR', 1, NULL),
(34, 'Burkina Faso', 'BF', 'BFA', 1, NULL),
(35, 'Burundi', 'BI', 'BDI', 1, NULL),
(36, 'Cambodia', 'KH', 'KHM', 1, NULL),
(37, 'Cameroon', 'CM', 'CMR', 1, NULL),
(38, 'Canada', 'CA', 'CAN', 1, NULL),
(39, 'Cape Verde', 'CV', 'CPV', 1, NULL),
(40, 'Cayman Islands', 'KY', 'CYM', 1, NULL),
(41, 'Central African Republic', 'CF', 'CAF', 1, NULL),
(42, 'Chad', 'TD', 'TCD', 1, NULL),
(43, 'Chile', 'CL', 'CHL', 1, NULL),
(44, 'China', 'CN', 'CHN', 1, NULL),
(45, 'Christmas Island', 'CX', 'CXR', 1, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, NULL),
(47, 'Colombia', 'CO', 'COL', 1, NULL),
(48, 'Comoros', 'KM', 'COM', 1, NULL),
(49, 'Congo', 'CG', 'COG', 1, NULL),
(50, 'Cook Islands', 'CK', 'COK', 1, NULL),
(51, 'Costa Rica', 'CR', 'CRI', 1, NULL),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, NULL),
(53, 'Croatia', 'HR', 'HRV', 1, NULL),
(54, 'Cuba', 'CU', 'CUB', 1, NULL),
(55, 'Cyprus', 'CY', 'CYP', 1, NULL),
(56, 'Czech Republic', 'CZ', 'CZE', 1, NULL),
(57, 'Denmark', 'DK', 'DNK', 1, NULL),
(58, 'Djibouti', 'DJ', 'DJI', 1, NULL),
(59, 'Dominica', 'DM', 'DMA', 1, NULL),
(60, 'Dominican Republic', 'DO', 'DOM', 1, NULL),
(61, 'East Timor', 'TP', 'TMP', 1, NULL),
(62, 'Ecuador', 'EC', 'ECU', 1, NULL),
(63, 'Egypt', 'EG', 'EGY', 1, NULL),
(64, 'El Salvador', 'SV', 'SLV', 1, NULL),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, NULL),
(66, 'Eritrea', 'ER', 'ERI', 1, NULL),
(67, 'Estonia', 'EE', 'EST', 1, NULL),
(68, 'Ethiopia', 'ET', 'ETH', 1, NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, NULL),
(70, 'Faroe Islands', 'FO', 'FRO', 1, NULL),
(71, 'Fiji', 'FJ', 'FJI', 1, NULL),
(72, 'Finland', 'FI', 'FIN', 1, NULL),
(73, 'France', 'FR', 'FRA', 1, NULL),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, NULL),
(75, 'French Guiana', 'GF', 'GUF', 1, NULL),
(76, 'French Polynesia', 'PF', 'PYF', 1, NULL),
(77, 'French Southern Territories', 'TF', 'ATF', 1, NULL),
(78, 'Gabon', 'GA', 'GAB', 1, NULL),
(79, 'Gambia', 'GM', 'GMB', 1, NULL),
(80, 'Georgia', 'GE', 'GEO', 1, NULL),
(81, 'Germany', 'DE', 'DEU', 5, NULL),
(82, 'Ghana', 'GH', 'GHA', 1, NULL),
(83, 'Gibraltar', 'GI', 'GIB', 1, NULL),
(84, 'Greece', 'GR', 'GRC', 1, NULL),
(85, 'Greenland', 'GL', 'GRL', 1, NULL),
(86, 'Grenada', 'GD', 'GRD', 1, NULL),
(87, 'Guadeloupe', 'GP', 'GLP', 1, NULL),
(88, 'Guam', 'GU', 'GUM', 1, NULL),
(89, 'Guatemala', 'GT', 'GTM', 1, NULL),
(90, 'Guinea', 'GN', 'GIN', 1, NULL),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, NULL),
(92, 'Guyana', 'GY', 'GUY', 1, NULL),
(93, 'Haiti', 'HT', 'HTI', 1, NULL),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, NULL),
(95, 'Honduras', 'HN', 'HND', 1, NULL),
(96, 'Hong Kong', 'HK', 'HKG', 1, NULL),
(97, 'Hungary', 'HU', 'HUN', 1, NULL),
(98, 'Iceland', 'IS', 'ISL', 1, NULL),
(99, 'India', 'IN', 'IND', 1, NULL),
(100, 'Indonesia', 'ID', 'IDN', 1, NULL),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, NULL),
(102, 'Iraq', 'IQ', 'IRQ', 1, NULL),
(103, 'Ireland', 'IE', 'IRL', 1, NULL),
(104, 'Israel', 'IL', 'ISR', 1, NULL),
(105, 'Italy', 'IT', 'ITA', 1, NULL),
(106, 'Jamaica', 'JM', 'JAM', 1, NULL),
(107, 'Japan', 'JP', 'JPN', 1, NULL),
(108, 'Jordan', 'JO', 'JOR', 1, NULL),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, NULL),
(110, 'Kenya', 'KE', 'KEN', 1, NULL),
(111, 'Kiribati', 'KI', 'KIR', 1, NULL),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, NULL),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, NULL),
(114, 'Kuwait', 'KW', 'KWT', 1, NULL),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, NULL),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, NULL),
(117, 'Latvia', 'LV', 'LVA', 1, NULL),
(118, 'Lebanon', 'LB', 'LBN', 1, NULL),
(119, 'Lesotho', 'LS', 'LSO', 1, NULL),
(120, 'Liberia', 'LR', 'LBR', 1, NULL),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, NULL),
(122, 'Liechtenstein', 'LI', 'LIE', 1, NULL),
(123, 'Lithuania', 'LT', 'LTU', 1, NULL),
(124, 'Luxembourg', 'LU', 'LUX', 1, NULL),
(125, 'Macau', 'MO', 'MAC', 1, NULL),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, NULL),
(127, 'Madagascar', 'MG', 'MDG', 1, NULL),
(128, 'Malawi', 'MW', 'MWI', 1, NULL),
(129, 'Malaysia', 'MY', 'MYS', 1, NULL),
(130, 'Maldives', 'MV', 'MDV', 1, NULL),
(131, 'Mali', 'ML', 'MLI', 1, NULL),
(132, 'Malta', 'MT', 'MLT', 1, NULL),
(133, 'Marshall Islands', 'MH', 'MHL', 1, NULL),
(134, 'Martinique', 'MQ', 'MTQ', 1, NULL),
(135, 'Mauritania', 'MR', 'MRT', 1, NULL),
(136, 'Mauritius', 'MU', 'MUS', 1, NULL),
(137, 'Mayotte', 'YT', 'MYT', 1, NULL),
(138, 'Mexico', 'MX', 'MEX', 1, NULL),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, NULL),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, NULL),
(141, 'Monaco', 'MC', 'MCO', 1, NULL),
(142, 'Mongolia', 'MN', 'MNG', 1, NULL),
(143, 'Montserrat', 'MS', 'MSR', 1, NULL),
(144, 'Morocco', 'MA', 'MAR', 1, NULL),
(145, 'Mozambique', 'MZ', 'MOZ', 1, NULL),
(146, 'Myanmar', 'MM', 'MMR', 1, NULL),
(147, 'Namibia', 'NA', 'NAM', 1, NULL),
(148, 'Nauru', 'NR', 'NRU', 1, NULL),
(149, 'Nepal', 'NP', 'NPL', 1, NULL),
(150, 'Netherlands', 'NL', 'NLD', 1, NULL),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, NULL),
(152, 'New Caledonia', 'NC', 'NCL', 1, NULL),
(153, 'New Zealand', 'NZ', 'NZL', 1, NULL),
(154, 'Nicaragua', 'NI', 'NIC', 1, NULL),
(155, 'Niger', 'NE', 'NER', 1, NULL),
(156, 'Nigeria', 'NG', 'NGA', 1, NULL),
(157, 'Niue', 'NU', 'NIU', 1, NULL),
(158, 'Norfolk Island', 'NF', 'NFK', 1, NULL),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, NULL),
(160, 'Norway', 'NO', 'NOR', 1, NULL),
(161, 'Oman', 'OM', 'OMN', 1, NULL),
(162, 'Pakistan', 'PK', 'PAK', 1, NULL),
(163, 'Palau', 'PW', 'PLW', 1, NULL),
(164, 'Panama', 'PA', 'PAN', 1, NULL),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, NULL),
(166, 'Paraguay', 'PY', 'PRY', 1, NULL),
(167, 'Peru', 'PE', 'PER', 1, NULL),
(168, 'Philippines', 'PH', 'PHL', 1, NULL),
(169, 'Pitcairn', 'PN', 'PCN', 1, NULL),
(170, 'Poland', 'PL', 'POL', 1, NULL),
(171, 'Portugal', 'PT', 'PRT', 1, NULL),
(172, 'Puerto Rico', 'PR', 'PRI', 1, NULL),
(173, 'Qatar', 'QA', 'QAT', 1, NULL),
(174, 'Reunion', 'RE', 'REU', 1, NULL),
(175, 'Romania', 'RO', 'ROM', 1, NULL),
(176, 'Russian Federation', 'RU', 'RUS', 1, NULL),
(177, 'Rwanda', 'RW', 'RWA', 1, NULL),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, NULL),
(179, 'Saint Lucia', 'LC', 'LCA', 1, NULL),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, NULL),
(181, 'Samoa', 'WS', 'WSM', 1, NULL),
(182, 'San Marino', 'SM', 'SMR', 1, NULL),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, NULL),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, NULL),
(185, 'Senegal', 'SN', 'SEN', 1, NULL),
(186, 'Seychelles', 'SC', 'SYC', 1, NULL),
(187, 'Sierra Leone', 'SL', 'SLE', 1, NULL),
(188, 'Singapore', 'SG', 'SGP', 4, NULL),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, NULL),
(190, 'Slovenia', 'SI', 'SVN', 1, NULL),
(191, 'Solomon Islands', 'SB', 'SLB', 1, NULL),
(192, 'Somalia', 'SO', 'SOM', 1, NULL),
(193, 'South Africa', 'ZA', 'ZAF', 1, NULL),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, NULL),
(195, 'Spain', 'ES', 'ESP', 3, NULL),
(196, 'Sri Lanka', 'LK', 'LKA', 1, NULL),
(197, 'St. Helena', 'SH', 'SHN', 1, NULL),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, NULL),
(199, 'Sudan', 'SD', 'SDN', 1, NULL),
(200, 'Suriname', 'SR', 'SUR', 1, NULL),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, NULL),
(202, 'Swaziland', 'SZ', 'SWZ', 1, NULL),
(203, 'Sweden', 'SE', 'SWE', 1, NULL),
(204, 'Switzerland', 'CH', 'CHE', 1, NULL),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, NULL),
(206, 'Taiwan', 'TW', 'TWN', 1, NULL),
(207, 'Tajikistan', 'TJ', 'TJK', 1, NULL),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, NULL),
(209, 'Thailand', 'TH', 'THA', 1, NULL),
(210, 'Togo', 'TG', 'TGO', 1, NULL),
(211, 'Tokelau', 'TK', 'TKL', 1, NULL),
(212, 'Tonga', 'TO', 'TON', 1, NULL),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, NULL),
(214, 'Tunisia', 'TN', 'TUN', 1, NULL),
(215, 'Turkey', 'TR', 'TUR', 1, NULL),
(216, 'Turkmenistan', 'TM', 'TKM', 1, NULL),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, NULL),
(218, 'Tuvalu', 'TV', 'TUV', 1, NULL),
(219, 'Uganda', 'UG', 'UGA', 1, NULL),
(220, 'Ukraine', 'UA', 'UKR', 1, NULL),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, NULL),
(222, 'United Kingdom', 'GB', 'GBR', 1, NULL),
(223, 'United States', 'US', 'USA', 2, NULL),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, NULL),
(225, 'Uruguay', 'UY', 'URY', 1, NULL),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, NULL),
(227, 'Vanuatu', 'VU', 'VUT', 1, NULL),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, NULL),
(229, 'Venezuela', 'VE', 'VEN', 1, NULL),
(230, 'Viet Nam', 'VN', 'VNM', 1, NULL),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, NULL),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, NULL),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, NULL),
(234, 'Western Sahara', 'EH', 'ESH', 1, NULL),
(235, 'Yemen', 'YE', 'YEM', 1, NULL),
(236, 'Yugoslavia', 'YU', 'YUG', 1, NULL),
(237, 'Zaire', 'ZR', 'ZAR', 1, NULL),
(238, 'Zambia', 'ZM', 'ZMB', 1, NULL),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupans_id`, `code`, `date_created`, `date_modified`, `description`, `discount_type`, `amount`, `expiry_date`, `usage_count`, `individual_use`, `product_ids`, `exclude_product_ids`, `usage_limit`, `usage_limit_per_user`, `limit_usage_to_x_items`, `free_shipping`, `product_categories`, `excluded_product_categories`, `exclude_sale_items`, `minimum_amount`, `maximum_amount`, `email_restrictions`, `used_by`, `created_at`, `updated_at`) VALUES
(1, 'Sample Coupon Cart Discount', NULL, NULL, NULL, 'fixed_cart', 10, '2021-08-31 00:00:00', 0, 0, '', '', NULL, NULL, 0, 0, '', '', 0, 30.00, 1000.00, '', ',11', '2019-09-18 12:27:34', '2019-09-24 16:48:00'),
(2, 'Sample Coupon Cart Percent Discount', NULL, NULL, NULL, 'percent', 10, '1970-01-01 00:00:00', 0, 0, '', '', 10, 5, 0, 0, '', '', 0, 20.00, 1000.00, '', ',10', '2019-09-18 12:28:36', '2019-09-18 12:33:03'),
(3, 'Sample Coupon Product Discount', NULL, NULL, NULL, 'fixed_product', 20, '2022-05-31 00:00:00', 0, 0, '', '', NULL, NULL, 0, 0, '', '', 0, 20.00, 1000.00, '', ',9', '2019-09-18 12:29:37', NULL),
(4, 'WT-15', NULL, NULL, NULL, 'percent_product', 15, '2021-08-31 00:00:00', 0, 1, '', '', NULL, NULL, 0, 0, '', '', 0, 10.00, 99999999.99, '', '', '2019-09-18 12:32:02', '2021-08-01 12:20:23'),
(6, '123456', NULL, NULL, '<p>TEST TEST TEST</p>', 'percent_product', 10, '2021-09-22 00:00:00', 0, 0, '', '', NULL, NULL, 0, 0, '', '', 0, 100.00, 100.00, '', '', '2021-06-30 09:00:09', NULL),
(8, 'TK50', NULL, NULL, NULL, 'percent', 50, '2022-02-28 00:00:00', 0, 1, '', '', NULL, NULL, 0, 0, '', '', 0, 10.00, 99999999.99, '', '', '2021-08-26 15:47:40', NULL),
(7, 'TK25', NULL, NULL, NULL, 'percent', 25, '2022-02-28 00:00:00', 0, 1, '', '', NULL, NULL, 0, 1, '', '', 0, 10.00, 99999999.99, '', '', '2021-08-26 15:35:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_current` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'Dhiram', 'AED', 'AED', '', NULL, NULL, '1', '2021-02-01 07:52:31', '2021-02-01 07:52:31', 1.00000000, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

CREATE TABLE `currency_record` (
  `id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(1, 'AED', 'United Arab Emirates Dirham'),
(2, 'AFN', 'Afghan Afghani'),
(3, 'ALL', 'Albanian Lek'),
(4, 'AMD', 'Armenian Dram'),
(5, 'ANG', 'Netherlands Antillean Guilder'),
(6, 'AOA', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'AZN', 'Azerbaijani Manat'),
(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark'),
(12, 'BBD', 'Barbadian Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(14, 'BGN', 'Bulgarian Lev'),
(15, 'BHD', 'Bahraini Dinar'),
(16, 'BIF', 'Burundian Franc'),
(17, 'BMD', 'Bermudan Dollar'),
(18, 'BND', 'Brunei Dollar'),
(19, 'BOB', 'Bolivian Boliviano'),
(20, 'BRL', 'Brazilian Real'),
(21, 'BSD', 'Bahamian Dollar'),
(22, 'BTC', 'Bitcoin'),
(23, 'BTN', 'Bhutanese Ngultrum'),
(24, 'BWP', 'Botswanan Pula'),
(25, 'BYN', 'Belarusian Ruble'),
(26, 'BZD', 'Belize Dollar'),
(27, 'CAD', 'Canadian Dollar'),
(28, 'CDF', 'Congolese Franc'),
(29, 'CHF', 'Swiss Franc'),
(30, 'CLF', 'Chilean Unit of Account (UF)'),
(31, 'CLP', 'Chilean Peso'),
(32, 'CNH', 'Chinese Yuan (Offshore)'),
(33, 'CNY', 'Chinese Yuan'),
(34, 'COP', 'Colombian Peso'),
(35, 'CRC', 'Costa Rican Colón'),
(36, 'CUC', 'Cuban Convertible Peso'),
(37, 'CUP', 'Cuban Peso'),
(38, 'CVE', 'Cape Verdean Escudo'),
(39, 'CZK', 'Czech Republic Koruna'),
(40, 'DJF', 'Djiboutian Franc'),
(41, 'DKK', 'Danish Krone'),
(42, 'DOP', 'Dominican Peso'),
(43, 'DZD', 'Algerian Dinar'),
(44, 'EGP', 'Egyptian Pound'),
(45, 'ERN', 'Eritrean Nakfa'),
(46, 'ETB', 'Ethiopian Birr'),
(47, 'EUR', 'Euro'),
(48, 'FJD', 'Fijian Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(50, 'GBP', 'British Pound Sterling'),
(51, 'GEL', 'Georgian Lari'),
(52, 'GGP', 'Guernsey Pound'),
(53, 'GHS', 'Ghanaian Cedi'),
(54, 'GIP', 'Gibraltar Pound'),
(55, 'GMD', 'Gambian Dalasi'),
(56, 'GNF', 'Guinean Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanaese Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(65, 'ILS', 'Israeli New Sheqel'),
(66, 'IMP', 'Manx pound'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Icelandic Króna'),
(71, 'JEP', 'Jersey Pound'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KGS', 'Kyrgystani Som'),
(77, 'KHR', 'Cambodian Riel'),
(78, 'KMF', 'Comorian Franc'),
(79, 'KPW', 'North Korean Won'),
(80, 'KRW', 'South Korean Won'),
(81, 'KWD', 'Kuwaiti Dinar'),
(82, 'KYD', 'Cayman Islands Dollar'),
(83, 'KZT', 'Kazakhstani Tenge'),
(84, 'LAK', 'Laotian Kip'),
(85, 'LBP', 'Lebanese Pound'),
(86, 'LKR', 'Sri Lankan Rupee'),
(87, 'LRD', 'Liberian Dollar'),
(88, 'LSL', 'Lesotho Loti'),
(89, 'LYD', 'Libyan Dinar'),
(90, 'MAD', 'Moroccan Dirham'),
(91, 'MDL', 'Moldovan Leu'),
(92, 'MGA', 'Malagasy Ariary'),
(93, 'MKD', 'Macedonian Denar'),
(94, 'MMK', 'Myanma Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macanese Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya (pre-2018)'),
(98, 'MRU', 'Mauritanian Ouguiya'),
(99, 'MUR', 'Mauritian Rupee'),
(100, 'MVR', 'Maldivian Rufiyaa'),
(101, 'MWK', 'Malawian Kwacha'),
(102, 'MXN', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZN', 'Mozambican Metical'),
(105, 'NAD', 'Namibian Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Córdoba'),
(108, 'NOK', 'Norwegian Krone'),
(109, 'NPR', 'Nepalese Rupee'),
(110, 'NZD', 'New Zealand Dollar'),
(111, 'OMR', 'Omani Rial'),
(112, 'PAB', 'Panamanian Balboa'),
(113, 'PEN', 'Peruvian Nuevo Sol'),
(114, 'PGK', 'Papua New Guinean Kina'),
(115, 'PHP', 'Philippine Peso'),
(116, 'PKR', 'Pakistani Rupee'),
(117, 'PLN', 'Polish Zloty'),
(118, 'PYG', 'Paraguayan Guarani'),
(119, 'QAR', 'Qatari Rial'),
(120, 'RON', 'Romanian Leu'),
(121, 'RSD', 'Serbian Dinar'),
(122, 'RUB', 'Russian Ruble'),
(123, 'RWF', 'Rwandan Franc'),
(124, 'SAR', 'Saudi Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychellois Rupee'),
(127, 'SDG', 'Sudanese Pound'),
(128, 'SEK', 'Swedish Krona'),
(129, 'SGD', 'Singapore Dollar'),
(130, 'SHP', 'Saint Helena Pound'),
(131, 'SLL', 'Sierra Leonean Leone'),
(132, 'SOS', 'Somali Shilling'),
(133, 'SRD', 'Surinamese Dollar'),
(134, 'SSP', 'South Sudanese Pound'),
(135, 'STD', 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'STN', 'São Tomé and Príncipe Dobra'),
(137, 'SVC', 'Salvadoran Colón'),
(138, 'SYP', 'Syrian Pound'),
(139, 'SZL', 'Swazi Lilangeni'),
(140, 'THB', 'Thai Baht'),
(141, 'TJS', 'Tajikistani Somoni'),
(142, 'TMT', 'Turkmenistani Manat'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRY', 'Turkish Lira'),
(146, 'TTD', 'Trinidad and Tobago Dollar'),
(147, 'TWD', 'New Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukrainian Hryvnia'),
(150, 'UGX', 'Ugandan Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYU', 'Uruguayan Peso'),
(153, 'UZS', 'Uzbekistan Som'),
(154, 'VEF', 'Venezuelan Bolívar Fuerte'),
(155, 'VND', 'Vietnamese Dong'),
(156, 'VUV', 'Vanuatu Vatu'),
(157, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver Ounce'),
(160, 'XAU', 'Gold Ounce'),
(161, 'XCD', 'East Caribbean Dollar'),
(162, 'XDR', 'Special Drawing Rights'),
(163, 'XOF', 'CFA Franc BCEAO'),
(164, 'XPD', 'Palladium Ounce'),
(165, 'XPF', 'CFP Franc'),
(166, 'XPT', 'Platinum Ounce'),
(167, 'YER', 'Yemeni Rial'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZMW', 'Zambian Kwacha'),
(170, 'ZWL', 'Zimbabwean Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

CREATE TABLE `current_theme` (
  `id` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `top_offer` int(11) NOT NULL DEFAULT '1',
  `login` int(11) NOT NULL DEFAULT '1',
  `transitions` int(11) NOT NULL,
  `banner_two` int(11) NOT NULL,
  `customers_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `top_offer`, `login`, `transitions`, `banner_two`, `customers_id`, `session_id`) VALUES
(1, 10, 1, 3, 10, '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":2,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":4,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":5,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":6,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":7,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":8,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":9,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":10,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":11,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":12,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 1, 1, 1, 3, 1, 1, 1, 5, 1, '', '5d2ZmpgcBADkan2oZmcfhicKaQKQqEE5cA8NIPfC');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_newsletter` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `user_id`, `customers_fax`, `customers_newsletter`, `fb_id`, `google_id`, `auth_id_tiwilo`, `created_at`, `updated_at`) VALUES
(4, 111, NULL, NULL, NULL, '103426774279324636522', NULL, NULL, NULL),
(5, 112, NULL, NULL, NULL, '117499952913651418738', NULL, NULL, NULL),
(6, 113, NULL, NULL, NULL, '101907596557064290527', NULL, NULL, NULL),
(7, 114, NULL, NULL, NULL, '104578661523060090380', NULL, NULL, NULL),
(8, 115, NULL, NULL, NULL, '115112431979718496049', NULL, NULL, NULL),
(11, 117, NULL, NULL, NULL, '103846312938244859190', NULL, NULL, NULL),
(12, 120, NULL, NULL, NULL, '101907596557064290527', NULL, NULL, NULL),
(13, 122, NULL, NULL, NULL, '112607377434603060647', NULL, NULL, NULL),
(14, 123, NULL, NULL, NULL, '107572409082779877914', NULL, NULL, NULL),
(15, 124, NULL, NULL, NULL, '101264462224461962683', NULL, NULL, NULL),
(16, 125, NULL, NULL, NULL, '101907596557064290527', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(1, 0, '31', 1, 67.00, '2020-08-06', 0, '3mJUp24zWooDah2VlOYlhGba120sAfdQonXXHaa2'),
(2, 0, '32', 3, 81.00, '2020-09-02', 0, 'IenAoOJI3oxYqLIBHN2QJgZBsQJNLYxeyNFMkC9h'),
(3, 0, '1', 1, 85.00, '2020-09-02', 0, 'IenAoOJI3oxYqLIBHN2QJgZBsQJNLYxeyNFMkC9h'),
(4, 0, '1', 4, 85.00, '2020-09-03', 0, 'nLax83eaS74APgI24KMfddIOj6tXDXdNAXuNNNNO'),
(5, 0, '1', 1, 85.00, '2020-09-03', 0, '4AF7bvjBD53cidIhCiVNFbpusBhuz3XtY6y21C7t'),
(6, 0, '1', 56, 85.00, '2020-09-06', 0, 'Xgm9WMKsjQzvkdNJHFu9YzGpZrklaD6tCcXOoWGT'),
(7, 5, '1', 1, 85.00, '2020-09-06', 0, 'mzBVapKVPUYf8JKgQj5kq0H45rTGXPCCwQDJ8SgO'),
(10, 6, '1', 5, 85.00, '2020-10-01', 0, 'ZG6suKlwBsxzMLSqKVz0eKPzCX7DIan8JwzvYXyE'),
(11, 0, '1', 1, 85.00, '2020-09-13', 0, '0r8jOcku7Cyw4it5H8aCf9FrTKe6SvW8ff3gfkFr'),
(12, 1, '2', 1, 60.00, '2020-09-13', 0, 'OcqO8Dmra6gBPETW25xXRyVDlMYSJiMZRB44oQ7v'),
(13, 1, '1', 2, 85.00, '2020-09-13', 0, 'OcqO8Dmra6gBPETW25xXRyVDlMYSJiMZRB44oQ7v'),
(14, 0, '1', 1, 85.00, '2020-09-14', 0, 'w4275gI2xWr2VqmNdLp3rPqU91Wl0S5qjbqXGPS9'),
(15, 0, '1', 2, 85.00, '2020-09-14', 0, 'gv6tu0ipnQcI0T4pjodkEX9sOdK3grFStjiFJakx'),
(16, 0, '1', 1, 85.00, '2020-09-14', 0, 'FDqPu5I42GyDiLFUKDYpVmWKATwSz3kw2X0yHpzr'),
(17, 0, '1', 1, 85.00, '2020-09-15', 0, 'Eyu6dCNAFmWUhpkkZIM7xNcFWPYWS6DUnIGgPtew'),
(18, 0, '1', 1, 85.00, '2020-09-15', 0, 'EVLhMq4qgZ3K45L2XWsgFaSSeedj6EuTxQOG3uIT'),
(19, 0, '1', 3, 85.00, '2020-09-16', 0, 'Nn1UupKVlVdeY66NjaprIHDib7d5c4zG4SUfyCBd'),
(20, 0, '1', 1, 85.00, '2020-09-17', 0, 'n2E3MowXAnRHiEqypG0QtgQPmiagQXwtnDWKu2p8'),
(22, 0, '32', 1, 81.00, '2020-09-17', 0, 'NUA147p7ckRaI7blC8Nwe4krTMMfjWN47dfppYpI'),
(23, 0, '1', 1, 85.00, '2020-09-17', 0, 'kUf2Qz8KIhRIgbxZiuD3X3pklWrVmYymVFof7ssF'),
(24, 0, '2', 1, 60.00, '2020-09-17', 0, 'kUf2Qz8KIhRIgbxZiuD3X3pklWrVmYymVFof7ssF'),
(25, 0, '1', 2, 85.00, '2020-09-17', 0, 'g0a6DWLJkYMgpOG4VLMVssUvt8eyAjqPSVMjgzT1'),
(26, 0, '29', 1, 49.00, '2020-09-20', 0, 'sjhHi9MHXo3Ps3SXdlrhmuyuWeCTLHCJHJFlGLhK'),
(27, 0, '1', 1, 85.00, '2020-09-20', 0, 'S5ne3o1ol254l1UikHFf6yQ0Bps5x9zsnWqfDyFU'),
(28, 0, '3', 2, 55.00, '2020-09-20', 0, 'S5ne3o1ol254l1UikHFf6yQ0Bps5x9zsnWqfDyFU'),
(36, 0, '1', 2, 85.00, '2020-09-21', 0, 'EdUIEtEYbFMmefpRKIKbTlzNOLNGtwtKWPed2J3X'),
(41, 0, '2', 1, 60.00, '2020-09-21', 0, 'X0uWp8Gm9EoPC5HRID3pEooxIpqBsUTUw1CtJ6EJ'),
(42, 0, '1', 1, 85.00, '2020-09-21', 0, '1Sqqs4KRe03btEnBi51CKYQRKiDCaoThG8vaVPnX'),
(50, 0, '2', 1, 60.00, '2020-09-27', 0, 'SDC4yy77XsN6CztgT4sARou2W2EkVVNfOZtIkx4M'),
(53, 0, '2', 1, 60.00, '2020-09-28', 0, 'vU5qdgdP7cXKSiL6uBFdTB3i1XYHJ4AL2bOJlekp'),
(54, 0, '1', 1, 85.00, '2020-09-28', 0, 'vU5qdgdP7cXKSiL6uBFdTB3i1XYHJ4AL2bOJlekp'),
(58, 11, '2', 1, 60.00, '2020-09-29', 1, 'CpD0bdqu6Sx8sP6A0Fy0IyRWLf7x4XLH1dzaUXE1'),
(60, 11, '1', 1, 85.00, '2020-09-29', 0, 'CpD0bdqu6Sx8sP6A0Fy0IyRWLf7x4XLH1dzaUXE1'),
(61, 11, '2', 1, 60.00, '2020-09-29', 0, 'CpD0bdqu6Sx8sP6A0Fy0IyRWLf7x4XLH1dzaUXE1'),
(62, 11, '3', 1, 55.00, '2020-09-29', 0, 'CpD0bdqu6Sx8sP6A0Fy0IyRWLf7x4XLH1dzaUXE1'),
(64, 0, '1', 1, 85.00, '2020-09-29', 0, 'N34kyfvoCo9gGkRYqIEIAhaBWUSAdi0L3aw1oUoB'),
(65, 0, '1', 3, 85.00, '2020-09-29', 0, 'QRCOg4XwATRfQBA65XgyNAIUpE97GjlDKweJNUG5'),
(66, 0, '3', 1, 55.00, '2020-09-29', 0, 'QRCOg4XwATRfQBA65XgyNAIUpE97GjlDKweJNUG5'),
(69, 12, '1', 1, 85.00, '2020-09-29', 1, 'PDswGPVszu1Da54IFH1nNOzResVYzz7jzx52f06H'),
(70, 12, '2', 1, 60.00, '2020-09-29', 1, 'PDswGPVszu1Da54IFH1nNOzResVYzz7jzx52f06H'),
(71, 12, '3', 1, 55.00, '2020-09-29', 1, 'PDswGPVszu1Da54IFH1nNOzResVYzz7jzx52f06H'),
(72, 12, '1', 1, 85.00, '2020-09-30', 1, '58CQRdlvfvaVvkBRBRa4pBDAnbGv9hTTMawSmjEV'),
(73, 12, '2', 1, 60.00, '2020-09-30', 1, '58CQRdlvfvaVvkBRBRa4pBDAnbGv9hTTMawSmjEV'),
(74, 12, '3', 1, 55.00, '2020-09-30', 1, '58CQRdlvfvaVvkBRBRa4pBDAnbGv9hTTMawSmjEV'),
(75, 0, '1', 1, 85.00, '2020-09-30', 0, 'wmA9kqXAum4YBxVKbI0setJzezGQcibjPx1Myy0Z'),
(76, 0, '1', 1, 85.00, '2020-09-30', 0, 'M926Xa09Dv86XmIeh5W1IbPE4ESc7OixtVp48GxY'),
(77, 0, '2', 1, 60.00, '2020-09-30', 0, 'M926Xa09Dv86XmIeh5W1IbPE4ESc7OixtVp48GxY'),
(78, 0, '3', 1, 55.00, '2020-09-30', 0, 'M926Xa09Dv86XmIeh5W1IbPE4ESc7OixtVp48GxY'),
(85, 12, '1', 1, 85.00, '2020-09-30', 0, 'RnwSgiAs57dEWrdvMkPu55LKnUJQvM8B6YMRmW4p'),
(86, 12, '2', 1, 60.00, '2020-09-30', 0, 'RnwSgiAs57dEWrdvMkPu55LKnUJQvM8B6YMRmW4p'),
(87, 12, '3', 1, 55.00, '2020-09-30', 0, 'RnwSgiAs57dEWrdvMkPu55LKnUJQvM8B6YMRmW4p'),
(88, 0, '3', 2, 55.00, '2020-10-01', 0, 'gNpXBTv4IifO25Uzk8XzZILd0RpBRJnHag1MjhqV'),
(89, 0, '1', 1, 85.00, '2020-10-01', 0, 'gNpXBTv4IifO25Uzk8XzZILd0RpBRJnHag1MjhqV'),
(91, 0, '1', 4, 85.00, '2020-10-01', 0, 'nQvhh39a7TsbBgVLWwco4SgxkduNMuzqhYRTCvxK'),
(92, 0, '2', 21, 60.00, '2020-10-01', 0, 'nQvhh39a7TsbBgVLWwco4SgxkduNMuzqhYRTCvxK'),
(93, 0, '3', 4, 55.00, '2020-10-01', 0, 'nQvhh39a7TsbBgVLWwco4SgxkduNMuzqhYRTCvxK'),
(97, 13, '1', 1, 85.00, '2020-10-01', 0, '8vf9tMWuXyKAwL4NC1lMrgLlyFp3ywRsw2pYXRsE'),
(98, 0, '1', 2, 85.00, '2020-10-01', 0, 'KIASaANOVchY1B47qamfrNx24qtUBN57NCBS7kFV'),
(99, 0, '2', 2, 60.00, '2020-10-01', 0, 'KIASaANOVchY1B47qamfrNx24qtUBN57NCBS7kFV'),
(100, 0, '1', 1, 85.00, '2020-10-01', 0, 'UBIGJWXUHSmuMFqDKuVzhqCD5yUbannn6rZzNy5x'),
(101, 0, '2', 1, 60.00, '2020-10-01', 0, 'UBIGJWXUHSmuMFqDKuVzhqCD5yUbannn6rZzNy5x'),
(102, 0, '1', 1, 85.00, '2020-10-01', 0, 'fZQBxmrg0BTuXvc7rlED9QeQOy9eQ21tycbe1TNQ'),
(103, 0, '1', 4, 85.00, '2020-10-04', 0, '4Tjz6AnlJhkR2MJimlR2jnjkbBPlqgM0lS1MilQ3'),
(104, 0, '1', 1, 85.00, '2020-10-04', 0, 'kYcNSatouOke50nizdMv1vmpSiHzkX7ZvZAJIeCA'),
(105, 0, '1', 1, 85.00, '2020-10-04', 0, 'jm2e5blZS4YqdYjFiMU26a9RItYTBKsLRCqv5KhZ'),
(106, 0, '2', 3, 60.00, '2020-10-04', 0, 'jm2e5blZS4YqdYjFiMU26a9RItYTBKsLRCqv5KhZ'),
(107, 0, '3', 2, 55.00, '2020-10-04', 0, 'jm2e5blZS4YqdYjFiMU26a9RItYTBKsLRCqv5KhZ'),
(108, 0, '1', 2, 85.00, '2020-10-04', 0, 'xZZXxsgi0ljiuRVzGmeoiYnWQjy5BHtoqv3lpgzG'),
(114, 0, '1', 14, 85.00, '2020-10-06', 0, 'ouL5k8uOTwBYrHHoNzfkRDAnWuLq4P1DPSFPukN4'),
(115, 0, '2', 4, 60.00, '2020-10-06', 0, 'ouL5k8uOTwBYrHHoNzfkRDAnWuLq4P1DPSFPukN4'),
(116, 0, '3', 2, 55.00, '2020-10-06', 0, 'ouL5k8uOTwBYrHHoNzfkRDAnWuLq4P1DPSFPukN4'),
(117, 0, '1', 3, 85.00, '2020-10-06', 0, '1ggLiX5k5z7VAqYSPunw1G3uUQlVNYD6s7PRWLKi'),
(119, 0, '1', 1, 85.00, '2020-10-08', 0, '8Ort2qW1AO1UbRqAgiKzSmKnEasT5cC3hMjcfcP1'),
(121, 0, '2', 1, 60.00, '2020-10-08', 0, '8Ort2qW1AO1UbRqAgiKzSmKnEasT5cC3hMjcfcP1'),
(122, 0, '2', 1, 60.00, '2020-10-08', 0, 'loabrtl9rozDboFLtVwNFdsvLH6zPZdQdcFTTmJq'),
(123, 0, '3', 1, 55.00, '2020-10-08', 0, 'loabrtl9rozDboFLtVwNFdsvLH6zPZdQdcFTTmJq'),
(127, 0, '2', 1, 60.00, '2020-10-11', 0, 'LiHBCZ09pAcZJN24cJ3WNlhvZEAPiPHLlwpHfZun'),
(128, 0, '2', 1, 60.00, '2020-10-11', 0, 'qKcd1RCtzuMJvpM23rvZbR7BdqXqSEIaFEZDkbt2'),
(129, 0, '2', 1, 60.00, '2020-10-11', 0, 'KcpQ6TOGpCWfYhAlWw8NtmE2n0ag8gzjN8q3fCER'),
(130, 0, '3', 1, 55.00, '2020-10-11', 0, 'KcpQ6TOGpCWfYhAlWw8NtmE2n0ag8gzjN8q3fCER'),
(131, 0, '2', 1, 60.00, '2020-10-11', 0, '78uL1IGfEdbpBRm6uXt0yl2kLOriz2JAngulN4yK'),
(132, 0, '3', 1, 55.00, '2020-10-11', 0, '78uL1IGfEdbpBRm6uXt0yl2kLOriz2JAngulN4yK'),
(133, 0, '2', 1, 60.00, '2020-10-11', 0, 'tboJEZ39pAUlt7hgwF4UFw6iIp1mQo2a5b8JToBU'),
(134, 0, '2', 1, 60.00, '2020-10-11', 0, '0P1sLYIbcs2tiI9eC22NVz8Z9dJDy3iD01K0yLpP'),
(136, 0, '2', 1, 60.00, '2020-10-12', 0, '7IBUXLTOgnZwY4UzG79qaq8bGF7KQffIZRZ8EE0A'),
(137, 0, '2', 1, 60.00, '2020-10-12', 0, 'NF1yMLHaNCseFgsSmVtLniHy0T7zfiCwOfpPzFo1'),
(138, 0, '3', 2, 55.00, '2020-10-12', 0, 'NF1yMLHaNCseFgsSmVtLniHy0T7zfiCwOfpPzFo1'),
(139, 0, '2', 1, 60.00, '2020-10-12', 0, 'HUtGDF7e173wWW0FsMMhNcdddEBuYla4AKPRv3OJ'),
(140, 0, '2', 1, 60.00, '2020-10-12', 0, '0t6tGBALIjQGPUld8TeqV7eX3oF8yySuaRqo5IQB'),
(141, 0, '1', 2, 85.00, '2020-10-12', 0, 'HUtGDF7e173wWW0FsMMhNcdddEBuYla4AKPRv3OJ'),
(142, 0, '2', 8, 60.00, '2020-10-12', 0, 'vthuav57RFaEiaerlFrPvrrFqZROJwPZ7NJcsrcn'),
(143, 0, '1', 4, 85.00, '2020-10-12', 0, 'vthuav57RFaEiaerlFrPvrrFqZROJwPZ7NJcsrcn'),
(144, 0, '2', 1, 60.00, '2020-10-12', 0, 'p7SBCsTypT8AV8YwOhIoNrVcyeWBSpd3xukbU6fW'),
(145, 0, '2', 1, 60.00, '2020-10-12', 0, '2We0fAUmvwceQm632rzqkU3g3ZooauZKBvbh7taB'),
(146, 0, '2', 1, 60.00, '2020-10-13', 0, '2CxKZUVgpPNPV9JOr3dYNNuRjPcKh8vXVsYReanI'),
(147, 0, '2', 1, 60.00, '2020-10-13', 0, 'eEXJRCsDxDhk2d3bQK84JEVG39V0Hxu0uKbYEKBq'),
(150, 0, '2', 1, 60.00, '2020-10-14', 0, 'qRQHKftQW0Uq2eS22BrBojSOXSDvUbqZO6q5q0p1'),
(151, 0, '2', 1, 60.00, '2020-10-14', 0, 'FPE2AaI6RuC2jpf58cDGimg4jok5FIcKh10zDDky'),
(156, 0, '2', 1, 60.00, '2020-10-14', 0, 'yF6Q3ljGMlUDdTrJfWTpOy3C73nlGuw74zMBGGfd'),
(157, 0, '3', 1, 55.00, '2020-10-14', 0, 'yF6Q3ljGMlUDdTrJfWTpOy3C73nlGuw74zMBGGfd'),
(158, 0, '1', 1, 85.00, '2020-10-14', 0, 'yF6Q3ljGMlUDdTrJfWTpOy3C73nlGuw74zMBGGfd'),
(159, 0, '2', 1, 60.00, '2020-10-14', 0, 'dL0vn5HuLHTkhzd1bekOELNamI7r7ammlGxW05QM'),
(160, 0, '2', 2, 60.00, '2020-10-15', 0, 'E6vbeKxGFakH9V8Rad7ZWUjmsQARmKGUzFzeV220'),
(161, 0, '3', 2, 55.00, '2020-10-15', 0, 'E6vbeKxGFakH9V8Rad7ZWUjmsQARmKGUzFzeV220'),
(162, 0, '1', 1, 85.00, '2020-10-15', 0, 'E6vbeKxGFakH9V8Rad7ZWUjmsQARmKGUzFzeV220'),
(163, 0, '2', 1, 60.00, '2020-10-15', 0, '9DOv6fnSu2cP1Fg9J1Yvz8xfvhbjMvQS8la8FreM'),
(164, 0, '3', 1, 55.00, '2020-10-15', 0, '9DOv6fnSu2cP1Fg9J1Yvz8xfvhbjMvQS8la8FreM'),
(165, 0, '2', 1, 60.00, '2020-10-15', 0, '3bBYChpctO5t9FCnkXm7qG28unWNhMquGRjIxmiz'),
(174, 0, '3', 1, 55.00, '2020-10-17', 0, 'Spldb5ysPb5udg2qXzl75Ao95sW6hcGT4UNKk5Ct'),
(177, 0, '3', 7, 55.00, '2020-10-18', 0, '2oYTYXDR7z2ulQbnoBspbN64Nm0Sqf4fRwPbPTzO'),
(182, 0, '2', 1, 60.00, '2020-10-18', 0, 'O5ki3g327kXtAyooHKA0E9iV3hHgZq6UURaR1g2P'),
(183, 0, '2', 1, 60.00, '2020-10-18', 0, 'hriVXohLYrocHpNZLnP0FR08iXDdalJbB9Yhyuq9'),
(184, 0, '2', 5, 60.00, '2020-10-18', 0, '2oYTYXDR7z2ulQbnoBspbN64Nm0Sqf4fRwPbPTzO'),
(185, 0, '1', 1, 85.00, '2020-10-18', 0, '2oYTYXDR7z2ulQbnoBspbN64Nm0Sqf4fRwPbPTzO'),
(186, 0, '3', 2, 55.00, '2020-10-18', 0, 'hriVXohLYrocHpNZLnP0FR08iXDdalJbB9Yhyuq9'),
(187, 0, '2', 5, 60.00, '2020-10-18', 0, 'PpW8Paf1x16CmLkQkJelsly4atytj20MijobRCEu'),
(189, 0, '2', 1, 60.00, '2020-10-18', 0, 'Ag5KEhNwLG2E6gNDwbD2Y2GPErljOF8jzFlTlL5Q'),
(190, 0, '3', 2, 55.00, '2020-10-18', 0, 'Ag5KEhNwLG2E6gNDwbD2Y2GPErljOF8jzFlTlL5Q'),
(191, 0, '1', 3, 85.00, '2020-10-18', 0, 'Ag5KEhNwLG2E6gNDwbD2Y2GPErljOF8jzFlTlL5Q'),
(199, 0, '2', 4, 60.00, '2020-10-19', 0, 'zAn0w5tlWYyoRKrEtOlVZetFMsNCDLrnilwNURtM'),
(200, 0, '3', 4, 55.00, '2020-10-19', 0, 'zAn0w5tlWYyoRKrEtOlVZetFMsNCDLrnilwNURtM'),
(201, 0, '3', 1, 55.00, '2020-10-19', 0, 'gjZo1mUeZ1OBLLAQwKVZe4uoMvsRMh7ZtcujFezl'),
(202, 0, '2', 1, 60.00, '2020-10-19', 0, 'gjZo1mUeZ1OBLLAQwKVZe4uoMvsRMh7ZtcujFezl'),
(204, 0, '2', 8, 60.00, '2020-10-19', 0, 'bt4T7TMLEYQAKQDE0hBa1FOhvtFDgtY5yYloPVEo'),
(205, 0, '3', 3, 55.00, '2020-10-19', 0, 'bt4T7TMLEYQAKQDE0hBa1FOhvtFDgtY5yYloPVEo'),
(206, 0, '2', 2, 60.00, '2020-10-19', 0, '4mzu9zSeBWkYBsLglq3AXfwLEXVZfobvzXxpdktH'),
(211, 0, '2', 3, 60.00, '2020-10-19', 0, 'NjmAoMYfx9ItrUQh1urVw4IEViQ4xndibbNcrV06'),
(212, 0, '2', 3, 60.00, '2020-10-19', 0, 'HsJo685KSMyg7rN3gToTBkUc1DwQdgBMSz6moIEn'),
(215, 0, '2', 1, 60.00, '2020-10-21', 0, 'nAfZsne9vjSnzVE2WkCbs89ISuWczmh7Tk7apABz'),
(216, 0, '3', 1, 55.00, '2020-10-21', 0, 'dr3nZzT6D40FykAuaI8VKiuLJYeJFWkX66dHkz3v'),
(217, 0, '2', 1, 60.00, '2020-10-22', 0, 'sWO3IuDseJjgoOmX58dMENt3wdqhJGLXk2m2m6Gq'),
(218, 0, '2', 2, 60.00, '2020-10-22', 0, 'DM7Q9S4iQvJ0cLPgtpxKVc34tWsqd80q6uB0w0GQ'),
(220, 0, '1', 1, 85.00, '2020-10-22', 0, 'DM7Q9S4iQvJ0cLPgtpxKVc34tWsqd80q6uB0w0GQ'),
(221, 0, '2', 1, 60.00, '2020-10-25', 0, 'K4eyr1xW2g9Fw4RsnmqAE8UVVsz6GVUmZUfVCA8c'),
(222, 0, '2', 4, 60.00, '2020-10-25', 0, 'gJVbbHLXTf9nNXHiIiDpIz1gr1OrrTJOHdrmu52j'),
(224, 0, '1', 1, 85.00, '2020-10-25', 0, 'gJVbbHLXTf9nNXHiIiDpIz1gr1OrrTJOHdrmu52j'),
(225, 0, '2', 3, 60.00, '2020-10-25', 0, '1uTBRA8M3sNONwM7ZYGJAZBI8ztGKjXzF12SH0x3'),
(226, 0, '3', 4, 55.00, '2020-10-25', 0, '1uTBRA8M3sNONwM7ZYGJAZBI8ztGKjXzF12SH0x3'),
(229, 0, '2', 3, 60.00, '2020-10-26', 0, '3ZIqe4jqzXzeUO4K6pG2mGgo1uWp86Tr2iZozFle'),
(230, 6, '2', 1, 60.00, '2020-10-26', 0, 'ZG6suKlwBsxzMLSqKVz0eKPzCX7DIan8JwzvYXyE'),
(231, 6, '3', 1, 55.00, '2020-10-26', 0, 'ZG6suKlwBsxzMLSqKVz0eKPzCX7DIan8JwzvYXyE'),
(232, 0, '2', 5, 60.00, '2020-10-26', 0, 'kZsDEhnPJuPoPgJPnGIdYwHDLkw8omYdRJwTvw0r'),
(233, 0, '3', 5, 55.00, '2020-10-26', 0, 'kZsDEhnPJuPoPgJPnGIdYwHDLkw8omYdRJwTvw0r'),
(234, 0, '1', 5, 85.00, '2020-10-26', 0, 'kZsDEhnPJuPoPgJPnGIdYwHDLkw8omYdRJwTvw0r'),
(237, 0, '2', 1, 60.00, '2020-10-26', 0, 'TDjQ0STEsqi449e6RjhOcrNQVbvr5pzoNva3hK6Q'),
(238, 0, '2', 2, 60.00, '2020-10-28', 0, 'bPWAzRfCxOUNjvrPQN0zmQRkO12NVjCj6MrL0h6O'),
(239, 0, '3', 1, 55.00, '2020-10-28', 0, 'bPWAzRfCxOUNjvrPQN0zmQRkO12NVjCj6MrL0h6O'),
(241, 0, '2', 1, 60.00, '2020-11-01', 0, 'MQHqPcUE4yMU8i2dTaWIQEKE0NhoLn3ULptgoHxN'),
(249, 0, '2', 3, 60.00, '2020-11-02', 0, '1n533233l9b2SFFMU9Vqmyv6YZ2tjfxhYY9kgL7P'),
(253, 0, '2', 1, 60.00, '2020-11-02', 0, 'tIlG7E8Nul8budKupoC4pomACuB8hVpSy7CpJBFC'),
(255, 0, '2', 1, 60.00, '2020-11-02', 0, 'rUbGoVtwUSCKQegtF4mgAXzXbbfSzoisNj7fWfy2'),
(259, 0, '2', 1, 60.00, '2020-11-02', 0, '9SuvFIEZiPCA76w5xtQoJ2xDxBTTP01U6T5uarq9'),
(264, 0, '2', 1, 60.00, '2020-11-04', 0, 'xcbzt1y7nvZoIMrXduCjQ4cIBWZH4jvkZerup1K4'),
(265, 0, '2', 1, 60.00, '2020-11-04', 0, 'XaeW2yUwjknCeKxnBZGbq1Neq35G4eT0qjWtPOcH'),
(266, 0, '3', 2, 55.00, '2020-11-04', 0, 'XaeW2yUwjknCeKxnBZGbq1Neq35G4eT0qjWtPOcH'),
(268, 0, '2', 4, 60.00, '2020-11-08', 0, 'gdjPklwiNBcVWNxAXUihQUWc4f1rMR6tM4MfjIb3'),
(269, 0, '3', 1, 55.00, '2020-11-08', 0, 'gdjPklwiNBcVWNxAXUihQUWc4f1rMR6tM4MfjIb3'),
(279, 0, '2', 1, 60.00, '2020-11-10', 0, 'Tls3r4YoRvoVxynPldKufAgq452OzXYjI2exB4Fm'),
(280, 0, '2', 1, 60.00, '2020-11-10', 0, 'yrXr3qH0Q8RcjMyhJQA0XPwhN6EZRnGrxIO6V7V5'),
(281, 0, '3', 1, 55.00, '2020-11-10', 0, 'yrXr3qH0Q8RcjMyhJQA0XPwhN6EZRnGrxIO6V7V5'),
(284, 0, '2', 1, 60.00, '2020-11-15', 0, 'ouXAIOjPuD3FST1O7zcchzMQB6vNYWOz1eJGBqkr'),
(286, 0, '2', 2, 60.00, '2020-11-16', 0, '4VWCF3j92nSmeHBYFuWaWz2iOJO8uUYTaJ7ceHfk'),
(290, 0, '2', 1, 60.00, '2020-11-17', 0, 'vrcsauG07u9dIJ3PqjXfjvFQwqlWkaVztSd4mVg3'),
(291, 0, '2', 1, 60.00, '2020-11-19', 0, '0yswbDscn6sAjpgD4R7kEJbp0S1UpZSpXJvhqpWH'),
(293, 0, '2', 1, 60.00, '2020-11-19', 0, 'PjlPZ8iHwxy6pl0Ac2i4JTnzdEUB8yKkuN9PQPqI'),
(294, 0, '2', 1, 60.00, '2020-11-19', 0, 'oGACzdXbICYefUkBhFfVIP3blbo303LzUjSTpCKa'),
(296, 17, '2', 2, 60.00, '2020-11-19', 0, '1bsjbXxcrR6BMLTlZVmbNRUSon2oz1VBFeBOR2P7'),
(297, 18, '2', 1, 60.00, '2020-11-19', 0, 'zd2uKO2MvCmgYIEpYNnONdEHrV3EtJ85OJKYiB2H'),
(300, 8, '2', 1, 60.00, '2020-11-21', 0, 'AAiFyZAxCZAv6G6BYzaU80u8MQI3UW7XHOwf16Rh'),
(302, 0, '2', 2, 60.00, '2020-11-22', 0, 'QQYQYgrafUGBo0r5VRJOe5lKUNgbu6gqqvIb5EKb'),
(303, 0, '2', 1, 60.00, '2020-11-22', 0, '5ZRIceeSueecKN0mx4CA4E18oUt2VcKnMM5yCtpI'),
(304, 0, '3', 1, 55.00, '2020-11-22', 0, '5ZRIceeSueecKN0mx4CA4E18oUt2VcKnMM5yCtpI'),
(333, 0, '2', 1, 60.00, '2020-12-09', 0, 'lpsNeabqmtCJdpQPqGCxqtvKAoRzY8wcplIiAovw'),
(334, 0, '3', 1, 55.00, '2020-12-09', 0, 'lpsNeabqmtCJdpQPqGCxqtvKAoRzY8wcplIiAovw'),
(340, 0, '2', 1, 60.00, '2020-12-13', 0, 'TRUSjlVn6Hd4BbQ1Lz3JRIqQ4kRLgL7OojpmnYBD'),
(341, 0, '3', 1, 55.00, '2020-12-13', 0, '4T5zh0zSrsumhn4dSdYtMp53eOuAqFayyUBPmnLK'),
(370, 0, '2', 5, 60.00, '2020-12-24', 0, 'sWuQyq30NvJJCEvxr38tJcEeh9otf1qnASTDuXvK'),
(371, 0, '3', 1, 55.00, '2020-12-24', 0, 'sWuQyq30NvJJCEvxr38tJcEeh9otf1qnASTDuXvK'),
(382, 0, '2', 1, 60.00, '2020-12-30', 0, '6vUnkOd1tTsx2gSpUke4AuQC0fHRZCfP8Kfybvmg'),
(478, 0, '2', 1, 60.00, '2021-02-01', 0, 'LJxhfgmfHXEvxH1bIsumxPee6C450tk4m7pwZcGU'),
(481, 0, '2', 1, 216.00, '2021-02-01', 0, 'DdhX50XfjRYh4r614PITt93S1mtjlIPaH2go1qhd'),
(485, 0, '3', 1, 198.00, '2021-02-11', 0, 'dZC8t2Wq3G6177AAb0oNvb9B5Eo1J4x3TDCjlooU'),
(486, 0, '2', 1, 216.00, '2021-02-13', 0, '6wUoUYo7UnA5Wj0lIbMzO5VPkp9nozqsDMQ1CcjE'),
(487, 0, '2', 2, 216.00, '2021-02-16', 0, 'crfSQX6t3uJZyA45W1msQKG12k0rLHh6COMwPf5p'),
(488, 0, '2', 4, 216.00, '2021-02-16', 0, 'JrcnxRSBscKcHEMguIeRyNirDUd1oFcrgHSPPyAx'),
(489, 0, '2', 1, 216.00, '2021-02-16', 0, 'mccphqmvmbKRh0vFLP5hdtsJjeUwmHSmXPEnoDCC'),
(492, 9, '7', 1, 25.00, '2021-02-21', 1, 'lqOBcxdhlFu4ZD1OFCUPJvr1duQMgDGNZFRJePtN'),
(494, 0, '7', 1, 25.00, '2021-02-24', 0, 'tWKQrRM6EqADjIXpjOt5rfiLakMrN8TQw4S8hdEC'),
(495, 0, '13', 4, 22.00, '2021-02-24', 0, 'tWKQrRM6EqADjIXpjOt5rfiLakMrN8TQw4S8hdEC'),
(496, 0, '7', 1, 25.00, '2021-02-24', 0, '9gf8ZQWQbOsUg3qWhWVN2flyC5VGBWaLP9LRLNx3'),
(502, 9, '7', 2, 300.00, '2021-03-03', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(504, 0, '7', 1, 300.00, '2021-03-03', 0, 'jmk8excWftONZ4wflWPPfw5uNWEk3VbVIpp6eJHY'),
(505, 36, '7', 1, 300.00, '2021-03-03', 0, 'icPjfVIqKIIiXmK5z5KBpAzJtRBI9BT7TP1GPALA'),
(507, 9, '13', 2, 22.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(508, 9, '13', 2, 22.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(509, 9, '13', 1, 22.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(510, 9, '7', 2, 300.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(511, 9, '7', 1, 300.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(512, 9, '7', 2, 300.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(513, 9, '7', 1, 300.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(514, 9, '7', 2, 300.00, '2021-03-04', 1, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(515, 37, '7', 2, 300.00, '2021-03-06', 1, 'g1Nalhms6sPRGLFfLMyxgw79XohZUr49dwuklAO2'),
(517, 37, '13', 1, 22.00, '2021-03-07', 1, 'g1Nalhms6sPRGLFfLMyxgw79XohZUr49dwuklAO2'),
(518, 37, '13', 1, 22.00, '2021-03-07', 1, 'g1Nalhms6sPRGLFfLMyxgw79XohZUr49dwuklAO2'),
(521, 9, '13', 1, 500.00, '2021-03-07', 1, 'c5O26ATu8Z2RU385EnRmtclK9nHxtfWPzIEvRqXi'),
(522, 37, '13', 1, 500.00, '2021-03-07', 1, 'mD0lX1zqenPtYWJ5LkompEj06RfctCsRKS73Qu5C'),
(525, 37, '7', 1, 300.00, '2021-03-08', 1, 'ai5fSTzQBR2LQNblXhcCxFfMwDGwn26PPUpmbavy'),
(526, 37, '7', 1, 300.00, '2021-03-08', 1, 'ai5fSTzQBR2LQNblXhcCxFfMwDGwn26PPUpmbavy'),
(527, 37, '7', 1, 300.00, '2021-03-08', 1, 'ai5fSTzQBR2LQNblXhcCxFfMwDGwn26PPUpmbavy'),
(528, 37, '7', 1, 300.00, '2021-03-08', 1, 'ai5fSTzQBR2LQNblXhcCxFfMwDGwn26PPUpmbavy'),
(529, 9, '7', 1, 300.00, '2021-03-08', 1, 'FXjq01DlmnBnULxMOkfzdAOBQSxEgybf8uiARDXm'),
(530, 9, '7', 2, 300.00, '2021-03-08', 1, 'sgBjADBTgN85B1NaXl9sT0BdHVpfjeIQuu8agBFp'),
(531, 37, '7', 1, 300.00, '2021-03-08', 1, 'NyiBuYVe1tB7EqZJfKCgHCSQaJoFxzOqaHR8GGXB'),
(533, 0, '7', 1, 300.00, '2021-03-16', 0, 'yfxorjFh8lk9ok40wFQp91pu7iBwFN3y5psewwY1'),
(534, 37, '7', 1, 300.00, '2021-03-16', 0, 'KB7cCpOeHWJ9mIrFO3gdb13b4xMuIxGpK9eQfN8r'),
(535, 9, '7', 1, 300.00, '2021-03-18', 1, 'LqOtnJ5oaJxf2lTMVGAYwMZN2hk06MkB2vEpnkjs'),
(536, 9, '13', 1, 500.00, '2021-03-21', 1, '5XpKyRetsujLDWIKSO2sPGBe9GpantsULY6P0IdG'),
(537, 9, '13', 1, 500.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(538, 9, '13', 1, 500.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(539, 9, '13', 2, 500.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(540, 9, '7', 2, 300.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(541, 9, '13', 1, 500.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(542, 9, '7', 1, 300.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(543, 9, '13', 1, 500.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(544, 9, '7', 1, 300.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(545, 9, '13', 1, 500.00, '2021-03-21', 1, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(546, 38, '7', 2, 300.00, '2021-03-21', 1, 'XzwqWu5MCRqgXIlKvI9UOBZHo2WWJpGAvMudaOof'),
(547, 38, '13', 3, 500.00, '2021-03-21', 1, 'XzwqWu5MCRqgXIlKvI9UOBZHo2WWJpGAvMudaOof'),
(548, 38, '7', 1, 300.00, '2021-03-21', 1, 'XzwqWu5MCRqgXIlKvI9UOBZHo2WWJpGAvMudaOof'),
(550, 39, '7', 1, 300.00, '2021-03-21', 1, 'pVB06pdniyxlWrBHl9xWhr62pJX5I6uPZoWXBn5M'),
(551, 39, '13', 1, 500.00, '2021-03-21', 1, 'pVB06pdniyxlWrBHl9xWhr62pJX5I6uPZoWXBn5M'),
(553, 40, '7', 1, 300.00, '2021-03-23', 1, 'LE4v9AoA4eaMOY6sqlmEd7eMA3eMamULzrtEtB0z'),
(554, 41, '7', 1, 300.00, '2021-03-23', 1, '4q5SYlJHGHNSq7SQ1wFXBG0bAXpZE0xzCrwfFcUV'),
(555, 0, '7', 1, 300.00, '2021-03-24', 0, 'TVzeEuY9uy4PGo7LHuIiIfJYpQCxDGtH26x2NCc0'),
(556, 0, '13', 1, 500.00, '2021-03-24', 0, 'TVzeEuY9uy4PGo7LHuIiIfJYpQCxDGtH26x2NCc0'),
(560, 0, '7', 1, 300.00, '2021-03-25', 0, 'sPeHy74Ok9eRHqbxPHVtv8gW23LgBAJHJV8Ucxfo'),
(561, 0, '7', 1, 300.00, '2021-03-25', 0, 'kP3kxIG2RiG35sE4Q0mh09PaNjTJdhBFsj1dP32N'),
(562, 9, '7', 1, 300.00, '2021-03-27', 1, 'KUkiGl3uQfRBz359tVp4Ymm0FDydAvUNn4pCcyJR'),
(563, 42, '7', 2, 300.00, '2021-03-30', 0, 'i0FqqmnabWvPO4kegmFtD9NHilk6JcBF2whTGrUz'),
(564, 0, '7', 1, 300.00, '2021-03-30', 0, 'jOI9gq8zMNdXMGuU5W5wXcr8xDeI0OuncDITfBHM'),
(575, 9, '7', 1, 300.00, '2021-03-31', 1, 'LPcQMy4DfOdMNtBc9AaffSD0zCwWJ9fR1P06dBH9'),
(576, 9, '13', 1, 500.00, '2021-03-31', 1, 'LPcQMy4DfOdMNtBc9AaffSD0zCwWJ9fR1P06dBH9'),
(578, 0, '7', 1, 300.00, '2021-04-11', 0, '0fzENBrq72MMDKnCO8Phf9OJ2Ikm4uPqtPHvivwa'),
(579, 9, '7', 1, 300.00, '2021-04-13', 1, 'ZrQOIl5AUwRAUXfhXYxmFPMWm1JUWI6knYBJRtwu'),
(580, 0, '13', 1, 500.00, '2021-04-14', 0, 'tFpXFq5HzmXSeoMS1RHNfRsSYbzUowZeOgRfBLoh'),
(581, 9, '13', 1, 500.00, '2021-04-14', 1, '8yfDAbi55TLtLI9RVSDUBfNyCAVdsQY1TcnYpra7'),
(583, 9, '7', 1, 300.00, '2021-04-14', 1, 'z4iKiHxNVKDswsC6Cdp6hkiEp2ZqNmDVOTcR3uKR'),
(584, 9, '7', 1, 300.00, '2021-04-14', 1, '8yfDAbi55TLtLI9RVSDUBfNyCAVdsQY1TcnYpra7'),
(585, 0, '13', 1, 500.00, '2021-04-15', 0, '0oGcwDygUmmuRaXAdViJ0DfBSKxsM1m2Q3PHrssx'),
(586, 9, '7', 1, 300.00, '2021-04-15', 1, 'bTTq2LhBvzQijsRirC8sMeB1Y0wk36EvPQP4F4jz'),
(589, 9, '7', 1, 300.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(590, 0, '7', 1, 300.00, '2021-04-18', 0, '0D6vjmO9dyWMyWLzmeyaPdBZCf9R1ELM7Imtc6TP'),
(591, 9, '7', 1, 300.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(592, 9, '7', 1, 300.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(593, 9, '13', 1, 500.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(594, 9, '13', 1, 500.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(595, 9, '7', 1, 300.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(596, 9, '13', 1, 500.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(597, 9, '13', 1, 500.00, '2021-04-19', 1, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(598, 0, '13', 1, 500.00, '2021-04-19', 0, 'WoUszKVPPYWNcGKPVqjCrKw9UPhSKr2B6o3IqCxQ'),
(599, 9, '7', 1, 300.00, '2021-04-22', 1, '8Q7nhGtYBPnWiy6VrLtfPhWMo6C8lQKpvoyUEeUM'),
(600, 9, '7', 1, 300.00, '2021-04-22', 1, '8Q7nhGtYBPnWiy6VrLtfPhWMo6C8lQKpvoyUEeUM'),
(601, 9, '7', 1, 300.00, '2021-04-22', 1, '8Q7nhGtYBPnWiy6VrLtfPhWMo6C8lQKpvoyUEeUM'),
(602, 9, '7', 1, 300.00, '2021-04-22', 1, '8Q7nhGtYBPnWiy6VrLtfPhWMo6C8lQKpvoyUEeUM'),
(603, 9, '7', 1, 300.00, '2021-04-22', 1, '8Q7nhGtYBPnWiy6VrLtfPhWMo6C8lQKpvoyUEeUM'),
(606, 9, '7', 1, 300.00, '2021-04-25', 1, 'vYqnjt1QcpamnJntRn6ZklS4U3egDdMLUgCJ79Qp'),
(609, 9, '7', 2, 300.00, '2021-04-26', 1, 'QH2VXlvn8zZyJ3RG2RfTWCHrC9u3V4CHdje8gMP4'),
(611, 9, '13', 2, 500.00, '2021-04-26', 1, 'QH2VXlvn8zZyJ3RG2RfTWCHrC9u3V4CHdje8gMP4'),
(613, 9, '7', 1, 300.00, '2021-04-27', 1, 'ZPot0AcGWqJAH3V9ZwHX2vF2pccHbiU9DnSkqmcm'),
(614, 9, '13', 1, 500.00, '2021-04-28', 1, 'l01ez8wDSSC4dbt8SYrQBWo7N35xrtqgm5rU6tYx'),
(615, 9, '7', 1, 300.00, '2021-04-29', 1, '9MdKVHVX9vRnm4pvky8yf7QxIxoGf8VQ9MuV8g7b'),
(619, 0, '7', 1, 300.00, '2021-05-02', 0, 'ES5adtDvZpkDQaLv2054kdAD4VAA2c0DI8Bh59hN'),
(620, 0, '13', 1, 500.00, '2021-05-02', 0, 'ES5adtDvZpkDQaLv2054kdAD4VAA2c0DI8Bh59hN'),
(622, 9, '7', 1, 300.00, '2021-05-03', 1, '5W5oDgAU3cQhvLPAAkMNGChSKQZBarKijKnetYPC'),
(626, 43, '7', 1, 300.00, '2021-05-03', 1, 'md54xWOmnevCsrszNdFrzw2mq8NrlfqqXox9KkTn'),
(628, 43, '7', 1, 300.00, '2021-05-04', 1, 'uXNj838SbIPxU0HHWTlMXkDUj5Nw1GFDGIrOCtEB'),
(629, 43, '13', 1, 500.00, '2021-05-04', 1, 'uXNj838SbIPxU0HHWTlMXkDUj5Nw1GFDGIrOCtEB'),
(630, 9, '7', 1, 300.00, '2021-05-05', 1, 'GwaxHvVr4CjGOjJMGy4giHmDM1Ob3m9XxeUOwJS1'),
(631, 9, '7', 1, 300.00, '2021-05-05', 1, 'GwaxHvVr4CjGOjJMGy4giHmDM1Ob3m9XxeUOwJS1'),
(632, 9, '13', 1, 500.00, '2021-05-05', 1, 'GwaxHvVr4CjGOjJMGy4giHmDM1Ob3m9XxeUOwJS1'),
(633, 43, '7', 1, 300.00, '2021-05-05', 1, 'T6nNVnI9DBOzPFVqBwoAgIBTSZkWiMihHVwHhD9k'),
(634, 9, '7', 1, 300.00, '2021-05-06', 1, 'ADvfnxENEs0RACfBhCj4D48x7ZrTql5I95sJKpwe'),
(635, 9, '7', 1, 300.00, '2021-05-06', 1, 'ADvfnxENEs0RACfBhCj4D48x7ZrTql5I95sJKpwe'),
(636, 9, '13', 1, 500.00, '2021-05-06', 1, 'ADvfnxENEs0RACfBhCj4D48x7ZrTql5I95sJKpwe'),
(638, 9, '13', 1, 500.00, '2021-05-08', 1, 'YpsSZYIfCBBZi4Q8woTE8O7tjx38AWrnZfuHocZ3'),
(639, 43, '7', 1, 300.00, '2021-05-08', 1, '2gPScNUg7wnhuH0Tmlb6UVXay6SIQTe866fdWP2q'),
(640, 43, '7', 1, 300.00, '2021-05-10', 1, 'PajBtADiAbOkCxbxXZXuqT5nh9mznh5jKXVK10KU'),
(641, 43, '7', 1, 300.00, '2021-05-10', 1, 'PajBtADiAbOkCxbxXZXuqT5nh9mznh5jKXVK10KU'),
(646, 49, '7', 1, 300.00, '2021-05-11', 1, 'xPPmrELANW4tydnBLkDsyP1bkDfMxDW9Fa65GUjz'),
(655, 47, '7', 2, 300.00, '2021-05-17', 0, 'X7OUF6mqv2xySUdtEFcAsgOkK9CQyT2wFkDvAGUq'),
(656, 47, '13', 1, 500.00, '2021-05-17', 0, 'X7OUF6mqv2xySUdtEFcAsgOkK9CQyT2wFkDvAGUq'),
(661, 50, '7', 1, 300.00, '2021-05-17', 1, 'lWJajq65Lg16km2IVq0VSXUI7GwgBXdVM9Rqwiu5'),
(662, 0, '13', 1, 500.00, '2021-05-18', 0, 'igVCQshPuv8IqsCvvXXs0Nq3q7hTUkEI45StiTCo'),
(663, 0, '7', 1, 300.00, '2021-05-18', 0, 'igVCQshPuv8IqsCvvXXs0Nq3q7hTUkEI45StiTCo'),
(666, 0, '13', 2, 500.00, '2021-05-18', 0, 'Kbq5BFFpRbjE0aU5r7jSQbcGw9PdmXxFVswdPD7u'),
(668, 0, '7', 1, 300.00, '2021-05-18', 0, 'mmubRWNkRW3swZ7wm0kp49eGgoVMUe6pruBsf64s'),
(670, 0, '7', 1, 300.00, '2021-05-18', 0, 'txF4sJIoJrQkjtIQ3AK6adV8t1dxGsDol33b2xbI'),
(671, 0, '13', 3, 500.00, '2021-05-19', 0, 'ZC8fTZ1ojUvW5ytrt3xuTB7mMg3a2zInwOodCDUr'),
(672, 9, '7', 1, 300.00, '2021-05-19', 1, 'vsoHSHMzluPvfHZU4bhyPp7hOqDRspiZMvBJT8Z8'),
(678, 9, '13', 2, 500.00, '2021-05-19', 1, 'vsoHSHMzluPvfHZU4bhyPp7hOqDRspiZMvBJT8Z8'),
(679, 9, '13', 1, 500.00, '2021-05-19', 1, 'vsoHSHMzluPvfHZU4bhyPp7hOqDRspiZMvBJT8Z8'),
(680, 9, '13', 1, 500.00, '2021-05-20', 1, 'Tmfc9fRgCWclpoczTMlvrkKV6fEHPk0neymySlUW'),
(681, 9, '7', 1, 300.00, '2021-05-20', 1, 'Tmfc9fRgCWclpoczTMlvrkKV6fEHPk0neymySlUW'),
(682, 9, '13', 1, 500.00, '2021-05-20', 1, '50RzvBmdtk3IL1sQfXqPw0gt3mCcZxOEydz4KWzL'),
(683, 9, '13', 1, 500.00, '2021-05-20', 1, '50RzvBmdtk3IL1sQfXqPw0gt3mCcZxOEydz4KWzL'),
(684, 9, '13', 2, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(686, 9, '13', 1, 500.00, '2021-05-20', 1, '11CmFjCU1JXpTX1JE2IR1wwHcnCeNl0doYieWxBO'),
(687, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(688, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(689, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(690, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(691, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(692, 9, '7', 2, 300.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(693, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(694, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(695, 9, '7', 1, 300.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(696, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(697, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(698, 9, '13', 1, 500.00, '2021-05-20', 1, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(699, 9, '7', 1, 300.00, '2021-05-23', 1, 'SiWeWoCdSBcxiYEsbah7BBB0ugm3ET4cZvgKmbEk'),
(700, 9, '13', 1, 500.00, '2021-05-23', 1, 'SiWeWoCdSBcxiYEsbah7BBB0ugm3ET4cZvgKmbEk'),
(701, 52, '7', 1, 300.00, '2021-05-23', 1, 'JKzF7bCrKYSh4J1iJYtvrxk15JHsQ5nKX3F9BZs5'),
(702, 9, '13', 1, 500.00, '2021-05-23', 0, '55qkvLxGKu1KgMRRNE2rmQKNUHFs5RimTuGBu6hs'),
(703, 9, '7', 1, 300.00, '2021-05-23', 0, '55qkvLxGKu1KgMRRNE2rmQKNUHFs5RimTuGBu6hs'),
(705, 0, '13', 0, 500.00, '2021-06-13', 0, '9yb3H4e8YMtb28zsqDdulipfexLIOzAae0GErQXA'),
(706, 0, '13', 1, 500.00, '2021-06-13', 0, 'PPXzQbAoTdnppQvqzHJf4VDdm5FVOAqdwWNXN2Lv'),
(712, 0, '13', 1, 500.00, '2021-06-15', 0, 'BUwbSZY8OqBuRoTgDmMlS4fcbmTOGOlovuUMsA22'),
(715, 54, '13', 2, 500.00, '2021-06-16', 1, 'idq9USWJw6xoOAYNFreSOUT1IkwjAe6khFd5tKl7'),
(717, 52, '13', 2, 500.00, '2021-06-17', 1, 'OilgpAz8gmbzM5tR36WhbOOIszaUoo3Y2vlRKFFM'),
(718, 52, '7', 1, 300.00, '2021-06-17', 1, 'OilgpAz8gmbzM5tR36WhbOOIszaUoo3Y2vlRKFFM'),
(720, 52, '7', 2, 300.00, '2021-06-20', 1, '4l4ZM3ayPIAfaaKcTDb2aEog5W6JVrYzQSEhzw39'),
(721, 52, '13', 1, 500.00, '2021-06-17', 1, 'OilgpAz8gmbzM5tR36WhbOOIszaUoo3Y2vlRKFFM'),
(722, 52, '9', 2, 15.00, '2021-06-20', 1, '4l4ZM3ayPIAfaaKcTDb2aEog5W6JVrYzQSEhzw39'),
(723, 52, '7', 8, 300.00, '2021-06-22', 1, 'z3nsxbT4RCtuZYMvMJFVSOKzsiYsaLWxMxTWEaLt'),
(725, 54, '10', 3, 28.00, '2021-06-21', 1, 'YEYZREFwBuhQ6rsdIUUxdDhJCcLd5N7kACsOwDoW'),
(726, 52, '9', 3, 15.00, '2021-06-22', 1, 'z3nsxbT4RCtuZYMvMJFVSOKzsiYsaLWxMxTWEaLt'),
(727, 52, '13', 2, 500.00, '2021-06-22', 1, 'z3nsxbT4RCtuZYMvMJFVSOKzsiYsaLWxMxTWEaLt'),
(731, 52, '9', 1, 15.00, '2021-06-24', 1, '9tMn9dHIwAKismQ3nHq71UcHsDiaIOcVBcnn2evb'),
(735, 52, '10', 1, 28.00, '2021-06-24', 1, 'iTyUDabbvSic0Zbpt2Pn910jJHAqU04ajAZCpR22'),
(736, 52, '10', 1, 28.00, '2021-06-27', 1, 'Os6bXpsiYPVkHTiKqz0khH99AxkjoLUa7Stx4Icx'),
(737, 0, '9', 1, 15.00, '2021-06-28', 0, 'fzdQYT45w0OywK15fBgmEDXIqvXu7frsFdSPJYab'),
(738, 0, '13', 1, 500.00, '2021-06-28', 0, 'fzdQYT45w0OywK15fBgmEDXIqvXu7frsFdSPJYab'),
(743, 0, '43', 1, 375.00, '2021-06-29', 0, '0foNKd8xi2fZmRlqriUZjzb6YYGLqTCYozhG52Ur'),
(744, 0, '13', 1, 400.00, '2021-06-29', 0, '0foNKd8xi2fZmRlqriUZjzb6YYGLqTCYozhG52Ur'),
(747, 54, '7', 2, 95.00, '2021-06-29', 1, 'AJXzsh4j6jt4ddVYAMyVyQs1lAIfwsPSRbtZK1kY'),
(755, 54, '7', 1, 95.00, '2021-06-29', 1, 'EZVkd15rNTeQIipLuZGDkelHQUUHOo16qLAefcxM'),
(756, 52, '7', 1, 95.00, '2021-06-29', 1, 'KNt1Jk3Mb8Jz82iFmdtkIXyIitA7RnaKvmM5At1Q'),
(757, 54, '7', 2, 95.00, '2021-06-29', 1, 'CY8UR0WEduMGeWO0GG0EzKlkTFdAIyMdlBShWV7D'),
(769, 55, '12', 1, 500.00, '2021-07-01', 1, 'gVQAeUJqAYWqPF7lqxH4aCX24k1UDcThlFUhYEGr'),
(770, 54, '12', 5, 500.00, '2021-07-03', 1, 'CY8UR0WEduMGeWO0GG0EzKlkTFdAIyMdlBShWV7D'),
(774, 55, '12', 2, 500.00, '2021-07-04', 1, 'HzS0JQnWCDZLXpP4mQxUgJVMJpBNsRg4P2jcPmZF'),
(783, 59, '12', 1, 500.00, '2021-07-05', 1, 'ZNOhsk2LFhOHMoxS5PgQvTXaddFvXd3z48eSaXiS'),
(795, 54, '7', 2, 95.00, '2021-07-05', 1, 'xiYMctQoLetiemB7QcSbTWgLdYIfuwt1JXAYfDw5'),
(810, 0, '12', 1, 500.00, '2021-07-05', 0, 'QSe2g8OIdZa6FbsgZ9IxfGvzZFqZHnD3NdvSyuuo'),
(811, 0, '7', 1, 95.00, '2021-07-05', 0, 'QSe2g8OIdZa6FbsgZ9IxfGvzZFqZHnD3NdvSyuuo'),
(812, 0, '13', 2, 400.00, '2021-07-05', 0, 'QSe2g8OIdZa6FbsgZ9IxfGvzZFqZHnD3NdvSyuuo'),
(819, 0, '12', 1, 500.00, '2021-07-05', 0, 'YbfqMTsS5bA6SwLlgxSItufdumtpj5BIaHuOahTA'),
(822, 0, '12', 1, 500.00, '2021-07-05', 0, 'LVCJksCWO3sdXOO9VxUGfyJiwkMuldoYD1319la0'),
(827, 57, '43', 1, 375.00, '2021-07-05', 1, 'F8FzzamHXjKIrG6lAjpWcAeoTVAe94QmORqgKYJ3'),
(829, 60, '13', 1, 400.00, '2021-07-05', 0, 'IK36JOJxTaORjUtoz14mWUUFOIjRxgUN0R50rhvu'),
(830, 59, '13', 1, 400.00, '2021-07-05', 1, 'ZNOhsk2LFhOHMoxS5PgQvTXaddFvXd3z48eSaXiS'),
(831, 54, '12', 1, 500.00, '2021-07-05', 1, 'xiYMctQoLetiemB7QcSbTWgLdYIfuwt1JXAYfDw5'),
(832, 54, '13', 1, 400.00, '2021-07-05', 1, 'xiYMctQoLetiemB7QcSbTWgLdYIfuwt1JXAYfDw5'),
(841, 61, '12', 1, 500.00, '2021-07-06', 1, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(842, 61, '7', 1, 95.00, '2021-07-06', 1, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(843, 61, '13', 1, 400.00, '2021-07-06', 1, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(844, 61, '13', 1, 400.00, '2021-07-06', 1, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(845, 61, '13', 1, 400.00, '2021-07-06', 1, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(846, 61, '7', 1, 95.00, '2021-07-06', 1, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(847, 54, '12', 1, 500.00, '2021-07-06', 1, 'RE5BXIG9LQmr8c7xuvDsm5CSuTEiZDaLtvUUMygS'),
(848, 54, '13', 1, 400.00, '2021-07-06', 1, 'RE5BXIG9LQmr8c7xuvDsm5CSuTEiZDaLtvUUMygS'),
(849, 54, '12', 1, 500.00, '2021-07-06', 1, 'RE5BXIG9LQmr8c7xuvDsm5CSuTEiZDaLtvUUMygS'),
(850, 54, '42', 1, 200.00, '2021-07-06', 1, 'RE5BXIG9LQmr8c7xuvDsm5CSuTEiZDaLtvUUMygS'),
(851, 52, '7', 2, 95.00, '2021-07-06', 1, 'Zt8rVQeTwnn3jtkTJugLjHveczSymG6LlkMp4VKS'),
(853, 54, '12', 6, 500.00, '2021-07-06', 1, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(855, 54, '7', 1, 95.00, '2021-07-06', 1, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(856, 54, '13', 1, 400.00, '2021-07-06', 1, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(857, 54, '12', 1, 500.00, '2021-07-06', 1, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(858, 54, '13', 2, 400.00, '2021-07-06', 1, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(859, 54, '12', 1, 500.00, '2021-07-06', 1, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(860, 54, '7', 1, 95.00, '2021-07-06', 1, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(861, 52, '12', 1, 500.00, '2021-07-06', 1, 'KThypTkKot9wMC1EuJO08Kch6bswslOhVEXZWhqH'),
(862, 52, '12', 1, 500.00, '2021-07-06', 1, 'KThypTkKot9wMC1EuJO08Kch6bswslOhVEXZWhqH'),
(863, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(864, 59, '12', 1, 500.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(865, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(866, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(867, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(869, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(870, 52, '12', 1, 500.00, '2021-07-06', 1, '6smJxzRdjd6gXKc4TDZ23vIX6CSSDY51lWioxftq'),
(871, 59, '13', 3, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(872, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(873, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(874, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(875, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(876, 0, '7', 2, 95.00, '2021-07-06', 0, 'JRyfDvQcUcSPzhhCMLzY9DbvL47KBkbw2z5u3AML'),
(877, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(878, 59, '12', 1, 500.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(879, 59, '12', 1, 500.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(880, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(881, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(882, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(883, 59, '13', 1, 400.00, '2021-07-06', 1, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(891, 0, '13', 1, 400.00, '2021-07-06', 0, 'F44rFcl6gZWGYbj2TVWTmafNJ9PMn7xGAKAAgwCW'),
(895, 52, '12', 3, 500.00, '2021-07-06', 1, '4LGNVEZnaDfhTf4lBJd70m0TsVuzJfP74xagL0FE'),
(896, 52, '7', 1, 95.00, '2021-07-06', 1, '4LGNVEZnaDfhTf4lBJd70m0TsVuzJfP74xagL0FE'),
(898, 52, '42', 1, 200.00, '2021-07-06', 1, '4LGNVEZnaDfhTf4lBJd70m0TsVuzJfP74xagL0FE'),
(899, 54, '42', 1, 200.00, '2021-07-06', 1, 'o3KZDsgs5jMaQP30cCMOQ8NNBBrXUVaOWQl9UBBv'),
(903, 54, '7', 1, 95.00, '2021-07-06', 1, 'o3KZDsgs5jMaQP30cCMOQ8NNBBrXUVaOWQl9UBBv'),
(904, 54, '12', 1, 500.00, '2021-07-06', 1, 'o3KZDsgs5jMaQP30cCMOQ8NNBBrXUVaOWQl9UBBv'),
(907, 52, '13', 1, 400.00, '2021-07-06', 1, '4LGNVEZnaDfhTf4lBJd70m0TsVuzJfP74xagL0FE'),
(908, 52, '7', 1, 95.00, '2021-07-06', 1, '4LGNVEZnaDfhTf4lBJd70m0TsVuzJfP74xagL0FE'),
(909, 52, '12', 1, 500.00, '2021-07-06', 1, '4LGNVEZnaDfhTf4lBJd70m0TsVuzJfP74xagL0FE'),
(913, 59, '13', 2, 400.00, '2021-07-06', 1, 'WtqW9NCxOrHwVU79KZdiEmRXpetpyGXFaE6FVBmV'),
(914, 59, '13', 1, 400.00, '2021-07-06', 1, 'WtqW9NCxOrHwVU79KZdiEmRXpetpyGXFaE6FVBmV'),
(915, 59, '13', 1, 400.00, '2021-07-06', 1, 'WtqW9NCxOrHwVU79KZdiEmRXpetpyGXFaE6FVBmV'),
(923, 0, '13', 1, 400.00, '2021-07-06', 0, 'jxa6qOuYgjqtZZSyDgNqAaFxfL8FoWD3t1bvY3l9'),
(924, 65, '13', 1, 400.00, '2021-07-06', 1, 'keZPYYC1fKoVZjp8PbvenI3LQweWPj4ePcb2eDYE'),
(928, 0, '7', 1, 95.00, '2021-07-06', 0, 'Z9YYKWyeGpBIq5HETNoUxm3noNSPmeF7lTn1vGlB'),
(929, 66, '43', 2, 375.00, '2021-07-06', 1, '1GbY4Dks1v3vmg37fok0qy1RWWiMpeCsuJ5QD5QD'),
(930, 66, '42', 2, 200.00, '2021-07-06', 1, '1GbY4Dks1v3vmg37fok0qy1RWWiMpeCsuJ5QD5QD'),
(931, 66, '13', 1, 400.00, '2021-07-06', 1, '1GbY4Dks1v3vmg37fok0qy1RWWiMpeCsuJ5QD5QD'),
(932, 54, '13', 1, 400.00, '2021-07-06', 1, 'Doc2CLjzKtfUPgvI4M8Y59TJJlspuzwFFvzLpnru'),
(933, 0, '12', 1, 500.00, '2021-07-06', 0, '0dT3tPai9pEbxAGjuIjMSUlCBmYlmUCoIid7znDn'),
(934, 68, '13', 1, 400.00, '2021-07-07', 1, 'ZXvOyd6bX5Lp07qI2FADrnKcTupoalV1nRGn4QdQ'),
(935, 68, '7', 1, 95.00, '2021-07-07', 1, 'ZXvOyd6bX5Lp07qI2FADrnKcTupoalV1nRGn4QdQ'),
(939, 54, '12', 2, 500.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(947, 56, '43', 2, 375.00, '2021-07-07', 1, 'cosUtQcxu6FxmxkJQtYz0m22FoISsgV500LslM89'),
(948, 56, '42', 1, 200.00, '2021-07-07', 1, 'cosUtQcxu6FxmxkJQtYz0m22FoISsgV500LslM89'),
(949, 56, '12', 1, 500.00, '2021-07-07', 1, 'cosUtQcxu6FxmxkJQtYz0m22FoISsgV500LslM89'),
(950, 70, '7', 1, 95.00, '2021-07-07', 0, 'hs4THiG0AHm2A9mm7axvZ4b3n8nl0Nv0tvnu9lBS'),
(951, 0, '12', 1, 500.00, '2021-07-07', 0, 'MM2duHmNRDQqC3PTWmP09oMp8PYog2ipdqPLN9gp'),
(953, 59, '12', 1, 500.00, '2021-07-07', 0, 'L98evNLOH7IOD05isizra1tUyH0hszoKOX2Wa0jO'),
(954, 65, '7', 1, 95.00, '2021-07-07', 1, 'Kg9G7NUDXY4VljVquzC8q7ClSMljQ2jLxLrlDh7N'),
(955, 63, '12', 9, 500.00, '2021-07-07', 1, 'vQe2UkWshaM55dg0s5ORCMVF5gf1HvlaDb8ytJKj'),
(956, 52, '12', 3, 500.00, '2021-07-07', 1, 'mPNf8aFKKDvuUjFnGIKIairY7EQZ319SP16odUa8'),
(958, 54, '7', 1, 95.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(959, 54, '7', 1, 95.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(960, 54, '13', 1, 400.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(961, 54, '43', 1, 375.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(962, 54, '7', 1, 95.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(963, 54, '13', 1, 400.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(964, 54, '43', 1, 375.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(965, 54, '7', 1, 95.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(966, 54, '7', 1, 95.00, '2021-07-07', 1, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(967, 65, '13', 1, 400.00, '2021-07-07', 1, 'qG8fFQSbsOoZf0BC2GB0B0B3w8TRMjrCkHYCcGHv'),
(971, 65, '13', 1, 400.00, '2021-07-07', 1, 'bbV3yUCw4aQEcOEKznhILRJkhvdd3oXGTD5DnOQD'),
(972, 71, '12', 1, 500.00, '2021-07-08', 1, 'yMzJc1U2MiAGni1jhdEqC6fElMBLN1wZt825WJ1Q'),
(980, 54, '13', 1, 400.00, '2021-07-08', 1, 'le4ZT9P175euZZtAs3rXXs9YYdE0OeXGWGylIjtW'),
(981, 71, '13', 1, 400.00, '2021-07-08', 1, 'TrmYjJhofNTyxQ5Erp33CRfBLCGZ0GpTSPVtLjdi'),
(982, 71, '7', 2, 95.00, '2021-07-08', 1, 'TrmYjJhofNTyxQ5Erp33CRfBLCGZ0GpTSPVtLjdi'),
(993, 54, '45', 1, 400.00, '2021-07-08', 1, 'le4ZT9P175euZZtAs3rXXs9YYdE0OeXGWGylIjtW'),
(994, 54, '7', 1, 95.00, '2021-07-08', 1, 'qvwpUGknSDZIo21w0YLTdvRA9uCP6NTExLWte6BQ'),
(995, 68, '13', 1, 400.00, '2021-07-08', 1, '8z0pIZ01IV8t2BKKG9ltNrD71JifL5YFmpsoXQAd'),
(996, 54, '45', 2, 400.00, '2021-07-08', 1, 'le4ZT9P175euZZtAs3rXXs9YYdE0OeXGWGylIjtW'),
(997, 54, '45', 3, 400.00, '2021-07-08', 1, 'le4ZT9P175euZZtAs3rXXs9YYdE0OeXGWGylIjtW'),
(998, 65, '43', 1, 375.00, '2021-07-08', 1, 'Rdgk7fK5vd3N0ZMlOJejcUmImR6js238QCeFbtEb'),
(999, 54, '45', 1, 400.00, '2021-07-08', 1, 'le4ZT9P175euZZtAs3rXXs9YYdE0OeXGWGylIjtW'),
(1001, 69, '45', 1, 400.00, '2021-07-08', 1, 'NZvf2QgYCXzozrsYz01XgUaZLk9PhN51fmDA2elw'),
(1002, 54, '12', 1, 500.00, '2021-07-08', 1, 'O8dzZlzewdqgN7kj8NzNmdX8rYLBOXl5Dr3jnNGv'),
(1005, 0, '7', 15, 95.00, '2021-07-08', 0, 'c8CC8LSQXAaPNRaFLb5SzLc2XoAmw8xxI29MIyjw'),
(1006, 0, '7', 12, 95.00, '2021-07-08', 0, 'eGKfk80qzuNkvxH0BjfBimJwu1NZZDmEmy6AGX9E'),
(1007, 54, '12', 1, 500.00, '2021-07-08', 1, 'O8dzZlzewdqgN7kj8NzNmdX8rYLBOXl5Dr3jnNGv'),
(1009, 69, '45', 1, 400.00, '2021-07-08', 1, 'NZvf2QgYCXzozrsYz01XgUaZLk9PhN51fmDA2elw'),
(1010, 69, '45', 2, 400.00, '2021-07-08', 1, 'NZvf2QgYCXzozrsYz01XgUaZLk9PhN51fmDA2elw'),
(1011, 69, '45', 3, 400.00, '2021-07-08', 1, 'qo6REgZhhBQfJCNGfOq1yhlNf2AkGnS46ni0uI2v'),
(1012, 54, '7', 1, 95.00, '2021-07-08', 1, 'O8dzZlzewdqgN7kj8NzNmdX8rYLBOXl5Dr3jnNGv'),
(1013, 71, '13', 3, 400.00, '2021-07-08', 1, 'RIwwZgAYsQSHt8Aerf9FLylgM9uHl1rkeb1PKQZz'),
(1014, 65, '7', 1, 95.00, '2021-07-08', 1, '6LshCyhhQpDnX4Qof0doK8yFcq6PSP3uZMuy4dAr'),
(1015, 57, '13', 1, 400.00, '2021-07-08', 1, '3jtvjSu9vtgUjbxKfjlptcjWod5niTsArrBCD7G4'),
(1017, 65, '45', 2, 400.00, '2021-07-08', 1, '6LshCyhhQpDnX4Qof0doK8yFcq6PSP3uZMuy4dAr'),
(1018, 73, '12', 5, 500.00, '2021-07-08', 1, 'CHFdDNcUVwF5j9K2pwWK2Rehwh3oApaFZmnDWLWN'),
(1019, 73, '7', 1, 95.00, '2021-07-08', 1, 'CHFdDNcUVwF5j9K2pwWK2Rehwh3oApaFZmnDWLWN'),
(1020, 65, '42', 1, 200.00, '2021-07-08', 1, '6LshCyhhQpDnX4Qof0doK8yFcq6PSP3uZMuy4dAr'),
(1021, 65, '43', 1, 375.00, '2021-07-08', 1, '6LshCyhhQpDnX4Qof0doK8yFcq6PSP3uZMuy4dAr'),
(1022, 73, '12', 4, 500.00, '2021-07-08', 1, 'CHFdDNcUVwF5j9K2pwWK2Rehwh3oApaFZmnDWLWN'),
(1023, 65, '42', 2, 200.00, '2021-07-08', 1, 'POLngD1WDSIiuC0WWGhKhemFViLlTKXxzfm75loh'),
(1026, 54, '7', 1, 95.00, '2021-07-08', 1, 'O8dzZlzewdqgN7kj8NzNmdX8rYLBOXl5Dr3jnNGv'),
(1027, 54, '13', 3, 400.00, '2021-07-08', 1, 'ahjI84nAxHrFrWNRzuC7gqSePa9lHmwHpSfHNAVF'),
(1029, 73, '13', 1, 400.00, '2021-07-08', 1, 'zmGluTW3M3YIdgbh2aos6JqGLgHTvNaFzGXnTa2N'),
(1030, 73, '43', 1, 375.00, '2021-07-08', 1, 'zmGluTW3M3YIdgbh2aos6JqGLgHTvNaFzGXnTa2N'),
(1031, 73, '42', 1, 200.00, '2021-07-08', 1, 'zmGluTW3M3YIdgbh2aos6JqGLgHTvNaFzGXnTa2N'),
(1032, 73, '45', 1, 400.00, '2021-07-08', 1, 'zmGluTW3M3YIdgbh2aos6JqGLgHTvNaFzGXnTa2N'),
(1033, 73, '7', 1, 95.00, '2021-07-08', 1, 'zmGluTW3M3YIdgbh2aos6JqGLgHTvNaFzGXnTa2N'),
(1036, 73, '12', 1, 500.00, '2021-07-08', 1, 'fckQXUzft2KguU6r54QRA54grltZJz2sFwufWTIm'),
(1037, 73, '45', 2, 400.00, '2021-07-08', 1, 'fckQXUzft2KguU6r54QRA54grltZJz2sFwufWTIm'),
(1038, 65, '45', 1, 400.00, '2021-07-08', 1, 'g71XaGJm4Ts9H5EanMdZuZJAKVopJQN4Eyci1sNI'),
(1039, 52, '7', 3, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1040, 65, '42', 6, 200.00, '2021-07-08', 1, 'EE8A4HluxMWWu7oQr205Sf5Ym23Ghw1MbvgBbeoG'),
(1041, 0, '13', 1, 400.00, '2021-07-08', 0, '08BRdOeglxosZlxucj1yhiAmcol9119RZToU6rEq'),
(1042, 52, '13', 1, 400.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1043, 52, '43', 1, 375.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1044, 52, '12', 1, 500.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1045, 52, '7', 1, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1046, 52, '7', 1, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1047, 65, '13', 5, 400.00, '2021-07-08', 1, 'nG1kw9Nhr7hVJH5weZXoTwpoHCnGvkgoaK7cmBC9'),
(1048, 52, '13', 1, 400.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1049, 52, '12', 1, 500.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1050, 52, '7', 1, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1051, 73, '12', 1, 500.00, '2021-07-08', 1, 'MyIbA0hCGq3FbR7Yg1iRPgjNsPMVBCsgYKyr5i6N'),
(1052, 73, '45', 1, 400.00, '2021-07-08', 1, 'MyIbA0hCGq3FbR7Yg1iRPgjNsPMVBCsgYKyr5i6N'),
(1053, 65, '12', 1, 500.00, '2021-07-08', 1, 'Fn9jszISjuShr7zHB4nTKhx5KR8KofRjTSvDUL6l'),
(1054, 52, '43', 1, 375.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1055, 69, '45', 1, 400.00, '2021-07-08', 1, 'qo6REgZhhBQfJCNGfOq1yhlNf2AkGnS46ni0uI2v'),
(1056, 52, '13', 1, 400.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1057, 52, '12', 2, 500.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1058, 52, '12', 2, 500.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1059, 52, '7', 2, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1060, 52, '7', 2, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1061, 52, '7', 1, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1062, 65, '12', 1, 500.00, '2021-07-08', 1, 'Fn9jszISjuShr7zHB4nTKhx5KR8KofRjTSvDUL6l'),
(1063, 52, '7', 1, 95.00, '2021-07-08', 1, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1064, 0, '7', 1, 95.00, '2021-07-08', 0, 'pnCwoR3X62UdAIXbyvW9klzlmYnZyli4aND8xsvZ'),
(1065, 65, '45', 1, 400.00, '2021-07-08', 1, 'Fn9jszISjuShr7zHB4nTKhx5KR8KofRjTSvDUL6l'),
(1066, 65, '43', 2, 375.00, '2021-07-08', 1, 'S06LixynFLzyeIb6oTgG6LGz4v52V3yvtAMSGXxN'),
(1067, 73, '42', 1, 200.00, '2021-07-08', 1, 'EdOxzApxMX43UqJ2vDhTBD8AJuFThmugWSfaFtZL'),
(1068, 52, '13', 2, 400.00, '2021-07-08', 0, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(1069, 68, '45', 1, 400.00, '2021-07-08', 1, '8z0pIZ01IV8t2BKKG9ltNrD71JifL5YFmpsoXQAd'),
(1071, 63, '42', 3, 200.00, '2021-07-08', 0, 'VSW9ITXsgJ6balpze4MUk1X2tc5l17mc7yxtxO4h'),
(1073, 54, '42', 1, 200.00, '2021-07-09', 1, '3dolfzCuJygIABzwo1lT4TkmSSYSLYz6CgfOsFwk'),
(1074, 54, '42', 2, 200.00, '2021-07-09', 1, '3dolfzCuJygIABzwo1lT4TkmSSYSLYz6CgfOsFwk'),
(1075, 72, '42', 1, 200.00, '2021-07-11', 1, 'dD977pozQ7kYaaYUufHXBievzYnViPfaxCN4SIRd'),
(1076, 72, '45', 1, 400.00, '2021-07-11', 1, 'dD977pozQ7kYaaYUufHXBievzYnViPfaxCN4SIRd'),
(1078, 74, '45', 1, 400.00, '2021-07-11', 0, 'I2t0reXVtikgQlL9Gv1ck6iFVLXAJwtqgJqcchsW'),
(1079, 74, '12', 1, 500.00, '2021-07-11', 0, 'I2t0reXVtikgQlL9Gv1ck6iFVLXAJwtqgJqcchsW'),
(1080, 74, '7', 1, 95.00, '2021-07-11', 0, 'I2t0reXVtikgQlL9Gv1ck6iFVLXAJwtqgJqcchsW'),
(1081, 54, '45', 1, 400.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1082, 73, '12', 4, 500.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1083, 73, '45', 1, 400.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1084, 54, '45', 1, 400.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1085, 73, '43', 1, 375.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1087, 69, '42', 1, 200.00, '2021-07-11', 1, 'ZkioxjIDsWnnBVOyUHh7UMbY4sUumvjFvEYNLEqd'),
(1088, 69, '42', 1, 200.00, '2021-07-11', 1, 'GOjdn0GoEvgGX9oOCXVdEDFI98Gt8yCBDTJ0ZteA'),
(1089, 69, '45', 1, 400.00, '2021-07-11', 1, 'GOjdn0GoEvgGX9oOCXVdEDFI98Gt8yCBDTJ0ZteA'),
(1096, 73, '45', 1, 400.00, '2021-07-11', 1, 'Bv5D3iFImpmWZXDyhBywIx0IgQdPNh9QArNHtpzI'),
(1097, 73, '12', 1, 500.00, '2021-07-11', 1, 'Bv5D3iFImpmWZXDyhBywIx0IgQdPNh9QArNHtpzI'),
(1098, 73, '42', 1, 200.00, '2021-07-11', 1, '2mILidgCHir845vSenxOeENB58gCTF5IMPbRCU4u'),
(1099, 54, '12', 1, 500.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1103, 73, '42', 6, 200.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1104, 73, '45', 5, 400.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1106, 73, '45', 2, 400.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1107, 73, '12', 3, 500.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1108, 73, '43', 2, 375.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1109, 73, '42', 1, 200.00, '2021-07-11', 1, '4UJ3JREMlTC8QtcTcabrYLDlQFU82i5Oc1OwPu18'),
(1110, 54, '7', 2, 95.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1111, 54, '7', 2, 95.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1112, 73, '45', 1, 400.00, '2021-07-11', 1, 'QdrM4NBcZh1tWPECU8vywiKwCP9MR0wqHnSahMwb'),
(1113, 73, '7', 1, 95.00, '2021-07-11', 1, 'QdrM4NBcZh1tWPECU8vywiKwCP9MR0wqHnSahMwb'),
(1114, 54, '45', 1, 400.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1115, 73, '45', 1, 400.00, '2021-07-11', 1, 'QdrM4NBcZh1tWPECU8vywiKwCP9MR0wqHnSahMwb'),
(1116, 73, '12', 1, 500.00, '2021-07-11', 1, 'QdrM4NBcZh1tWPECU8vywiKwCP9MR0wqHnSahMwb'),
(1118, 54, '12', 1, 500.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1119, 54, '12', 1, 500.00, '2021-07-11', 1, '0rxXOBjdK1JWmDGnMOfZRwGp09hNh4lUH90lLyNL'),
(1120, 69, '45', 1, 400.00, '2021-07-11', 1, 'GOjdn0GoEvgGX9oOCXVdEDFI98Gt8yCBDTJ0ZteA'),
(1121, 69, '45', 2, 400.00, '2021-07-11', 1, 'GOjdn0GoEvgGX9oOCXVdEDFI98Gt8yCBDTJ0ZteA'),
(1124, 72, '7', 1, 95.00, '2021-07-11', 0, 'rRmaw4mSmczIB3DmxljzkSHz2wNx6YyUXCgMPZrz'),
(1125, 72, '45', 1, 400.00, '2021-07-11', 0, 'rRmaw4mSmczIB3DmxljzkSHz2wNx6YyUXCgMPZrz'),
(1126, 72, '42', 1, 200.00, '2021-07-11', 0, 'rRmaw4mSmczIB3DmxljzkSHz2wNx6YyUXCgMPZrz'),
(1127, 72, '13', 1, 400.00, '2021-07-11', 0, 'rRmaw4mSmczIB3DmxljzkSHz2wNx6YyUXCgMPZrz'),
(1128, 72, '43', 1, 375.00, '2021-07-11', 0, 'rRmaw4mSmczIB3DmxljzkSHz2wNx6YyUXCgMPZrz'),
(1134, 54, '12', 1, 500.00, '2021-07-11', 1, '29yzmYuw5bSetOuXCzDqPbOnVu3207eApL4WPxin'),
(1138, 69, '42', 1, 200.00, '2021-07-12', 1, 'pozuD6CwbWV9AgGvgy3ngW2MN89L89PIAUfgrDFN'),
(1139, 69, '42', 1, 200.00, '2021-07-12', 1, 'pozuD6CwbWV9AgGvgy3ngW2MN89L89PIAUfgrDFN'),
(1141, 0, '45', 1, 400.00, '2021-07-12', 0, 'uyELQbYPXTCEy5n9fC2VadkXAbq21jBjalScfPlB'),
(1142, 0, '12', 1, 500.00, '2021-07-12', 0, 'uyELQbYPXTCEy5n9fC2VadkXAbq21jBjalScfPlB'),
(1143, 0, '45', 2, 400.00, '2021-07-12', 0, 'lQSwbg9fevkuOZvcmIBxjbGl0AYaZxL2k6rXzODW'),
(1144, 54, '45', 3, 400.00, '2021-07-12', 1, '29yzmYuw5bSetOuXCzDqPbOnVu3207eApL4WPxin'),
(1145, 54, '7', 1, 95.00, '2021-07-12', 1, '29yzmYuw5bSetOuXCzDqPbOnVu3207eApL4WPxin'),
(1148, 54, '45', 1, 400.00, '2021-07-12', 1, '29yzmYuw5bSetOuXCzDqPbOnVu3207eApL4WPxin'),
(1149, 54, '7', 1, 95.00, '2021-07-12', 1, '29yzmYuw5bSetOuXCzDqPbOnVu3207eApL4WPxin'),
(1150, 69, '42', 5, 200.00, '2021-07-12', 1, 'Nhk9rRPZBg1l3nQ0MZ0HgPeQmYhX49AXgpDNPYWT'),
(1151, 69, '45', 3, 400.00, '2021-07-12', 1, 'Nhk9rRPZBg1l3nQ0MZ0HgPeQmYhX49AXgpDNPYWT'),
(1152, 69, '7', 2, 95.00, '2021-07-12', 1, 'Nhk9rRPZBg1l3nQ0MZ0HgPeQmYhX49AXgpDNPYWT'),
(1153, 69, '12', 2, 500.00, '2021-07-12', 1, 'Nhk9rRPZBg1l3nQ0MZ0HgPeQmYhX49AXgpDNPYWT'),
(1154, 73, '45', 2, 400.00, '2021-07-12', 1, 'eTBuygPn4amATkd97KxyvaPzGD85xiG5blrLKM8X'),
(1155, 73, '12', 2, 500.00, '2021-07-12', 1, 'eTBuygPn4amATkd97KxyvaPzGD85xiG5blrLKM8X'),
(1156, 73, '7', 1, 95.00, '2021-07-12', 1, 'eTBuygPn4amATkd97KxyvaPzGD85xiG5blrLKM8X'),
(1157, 73, '13', 1, 400.00, '2021-07-12', 1, 'eTBuygPn4amATkd97KxyvaPzGD85xiG5blrLKM8X'),
(1158, 57, '7', 1, 95.00, '2021-07-12', 1, 'LO3JMrYN0zRLVAiXnYfFdrbmtpA0Yjd7gfA3IFgi'),
(1160, 57, '42', 1, 200.00, '2021-07-12', 1, 'LO3JMrYN0zRLVAiXnYfFdrbmtpA0Yjd7gfA3IFgi'),
(1161, 69, '42', 1, 200.00, '2021-07-12', 1, 'aAEqrEmYUBKIioZxQ7cMVcTG8GPC2YCpP9ngfGBJ');
INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(1162, 65, '7', 5, 95.00, '2021-07-13', 1, 'sEMoOgmmcUJwtdnxTGeCQR8LCTzFK6WyTBEeLDV7'),
(1164, 73, '42', 2, 200.00, '2021-07-13', 1, 'ctyniUrt4Uo7DkQp7nxHuqxTLHKvDtqPQmXUEWF1'),
(1165, 73, '45', 5, 400.00, '2021-07-13', 1, 'ctyniUrt4Uo7DkQp7nxHuqxTLHKvDtqPQmXUEWF1'),
(1166, 0, '12', 1, 500.00, '2021-07-13', 0, 'izO88SjhLXzupw7DsILzC7zjbxzvrFCKDUpM0FrE'),
(1170, 64, '43', 1, 375.00, '2021-07-13', 1, 'lxNeGN0voJmegqqbhmy37NQdmJl3hBKnfk4Wayvi'),
(1171, 64, '43', 1, 375.00, '2021-07-13', 1, 'WhFVcgOR2ko6diOEHKztamA9h17xAPhy992aPBKk'),
(1172, 0, '12', 1, 500.00, '2021-07-13', 0, 'DZmjJXwDjH3AcfJ0zyM9UrqX4VlyaKhgt3lTjOQq'),
(1173, 0, '12', 2, 500.00, '2021-07-13', 0, 'MyxEjQbO7UKMhOLUvGKdQs0hKi9vQog1kXczCuNh'),
(1174, 0, '13', 1, 400.00, '2021-07-13', 0, '3iZPNEEhuGkHURtBmhC65jdUZKx8QXAqFfso8LxQ'),
(1175, 0, '12', 3, 500.00, '2021-07-14', 0, 'SJbxlaFdDpqHxQNUM6VcjzIwi4nXsBFwwK86T3Px'),
(1176, 0, '12', 2, 500.00, '2021-07-14', 0, '6ncjJTybVzAjxDuNM8U8cmXienQ2CFjP5NvHJXws'),
(1178, 0, '13', 1, 400.00, '2021-07-14', 0, 'R36EP9hC1H3F3Y346Ar38hdXFta1Q3TB7q2MEPkT'),
(1179, 0, '42', 1, 200.00, '2021-07-14', 0, 'JWDqMmrN3LHIQ4PC2gCaCWzuarGxaHciUCCPXKDz'),
(1180, 0, '42', 1, 200.00, '2021-07-14', 0, 'ZBJyfALVDM2eIo0LMcLEk1X4WlPcBbWdDOQHf3X9'),
(1184, 0, '13', 1, 400.00, '2021-07-15', 0, 'aqLnZ3KdpeEyFiw3uk8ialZWv644Wz8akS8WYwDQ'),
(1185, 0, '12', 1, 500.00, '2021-07-15', 0, 'iUfyHWjaSeCIhPtRMmvg2tlmGlmGnPHVc8drHOfm'),
(1186, 0, '12', 1, 500.00, '2021-07-15', 0, 'zpFJ3RQvjOZA9zaXIeHSGRRqtrO4QJZeFquP1IKz'),
(1187, 69, '42', 3, 200.00, '2021-07-15', 1, 'x91rNPMVkhILKCluPvhSrnv00h81aGcxacR4u9Ut'),
(1188, 69, '13', 4, 400.00, '2021-07-15', 1, 'x91rNPMVkhILKCluPvhSrnv00h81aGcxacR4u9Ut'),
(1189, 62, '45', 2, 400.00, '2021-07-15', 1, '4VIt08C3kEh14oCVwsC9i6cIVOIfMSAm2Jlcm8tf'),
(1190, 69, '43', 4, 375.00, '2021-07-15', 1, 'x91rNPMVkhILKCluPvhSrnv00h81aGcxacR4u9Ut'),
(1191, 54, '12', 3, 500.00, '2021-07-15', 1, 'KQElkeuYZskZYBo0FB7CwuF4UdIiYIXcVSYiV5zX'),
(1192, 0, '12', 2, 500.00, '2021-07-15', 0, 'pGFXDQvrzMgXw5N05bkoKERiX1UGYj1bQhs8oLr8'),
(1193, 0, '12', 1, 500.00, '2021-07-15', 0, '70LOAfZzwycPvTxWsxKFrlWG2BosxnsCP9HFsqkA'),
(1194, 0, '12', 1, 500.00, '2021-07-15', 0, 'fnBTOyFrMwO5V9IPIaHLxZyIvA9giPOa6X739KrJ'),
(1195, 0, '12', 5, 500.00, '2021-07-16', 0, 'EFErP6C8sGmE5BBUuvsuuWTJXTv528XgEADA06G3'),
(1196, 0, '12', 1, 500.00, '2021-07-16', 0, 'ljLH0mTAQTqbjy9yDa6MCu3Xld9l7ToQvBlT2WY9'),
(1197, 0, '13', 1, 400.00, '2021-07-16', 0, 'veIZlXhLFXfFs6AfKumzoAai1BYCZsN4NdlnG1Vo'),
(1198, 0, '12', 1, 500.00, '2021-07-16', 0, 'bLt4DFI0mqM1nKReE5AcqoydojcuBfMa94DXMJwW'),
(1199, 0, '12', 4, 500.00, '2021-07-16', 0, '3Lp8iQ7e2rhfRHcX9X1T82NMTJ3ppSVb0ihx29AC'),
(1200, 0, '12', 3, 500.00, '2021-07-16', 0, 'jlZ0IOPdF0oU4eoIqmCHsD09gBFrspaqouGoQW5o'),
(1202, 0, '43', 2, 375.00, '2021-07-17', 0, 'DMTQFR68ERpo4g8tWQTbMAl4qFT9RUbf8B2vqPfV'),
(1203, 0, '12', 1, 500.00, '2021-07-17', 0, 'tBnmh7NzzJFyl9frzxZOBqLoD49j4ZVjiKDXcOdW'),
(1204, 0, '12', 2, 500.00, '2021-07-17', 0, 'aQAI8hbne8vlZHpfdCgu4Nbelo1a98UhEqee63Qe'),
(1205, 0, '42', 1, 200.00, '2021-07-17', 0, '24m49XP5Wg2KeQEl6yFH9qr62HLSntvNWpZshhHR'),
(1206, 0, '12', 1, 500.00, '2021-07-17', 0, 'TzNB8Kuxrq2wkpkKKhphW8qW6mBbRSFFLSV7XjEw'),
(1208, 0, '12', 4, 500.00, '2021-07-17', 0, 'GXmJZ72V1rqdWpzd3UeABrKJgcF9746ay0un5PNB'),
(1209, 0, '12', 3, 500.00, '2021-07-18', 0, 'mUFsHm7Qk6J3o3A07NULCWRnp2o91SpZva6XVV6A'),
(1210, 0, '12', 2, 500.00, '2021-07-18', 0, '4GSTb0r72nQtrBVCjdGrozOMxpdZLiaxEnSzCI4P'),
(1211, 0, '12', 2, 95.00, '2021-07-18', 0, 'KLG41eyjG6Bh2HL2lafwYU3rO6fI5oNeYyDImWWN'),
(1212, 0, '13', 1, 100.00, '2021-07-19', 0, 'elMnD79T85TLCt6v6HPiVvNhPms75uD7qtSwyYt7'),
(1213, 0, '7', 1, 30.00, '2021-07-19', 0, 'elMnD79T85TLCt6v6HPiVvNhPms75uD7qtSwyYt7'),
(1214, 0, '12', 17, 95.00, '2021-07-19', 0, 'HLM1WZ8syguN4QU7qb1iPUg18O08tJhAQSJFcnKA'),
(1215, 0, '12', 3, 95.00, '2021-07-19', 0, 'TDoUz6PmaCYyJrPUVc4DpYVaKjWKZE5T3yQyuvhQ'),
(1216, 0, '12', 1, 95.00, '2021-07-19', 0, 'qxl6Xa9fQIyKJ0Nvk9e841nZTuHhBwL8viDKd3KA'),
(1217, 0, '12', 2, 95.00, '2021-07-20', 0, 'pIKKzmyo4oCOYTz0VddgRrPQ4bqCwa3DKOCth5p5'),
(1218, 0, '12', 1, 95.00, '2021-07-20', 0, 'PftpLdbGSGd6LXAJTT8UKotZHv7oo8cDqVjds8HT'),
(1219, 0, '12', 1, 95.00, '2021-07-20', 0, '55P4gKXX3fAUO0aocTizRHVXOA5Ci7OKCyEBP6En'),
(1220, 0, '12', 1, 95.00, '2021-07-20', 0, 'thqjMzHHQ8u1JDehJLXzbVKZiS2ThxJErQjeEAOG'),
(1221, 0, '12', 1, 95.00, '2021-07-21', 0, 'qSmiBYQcW1X5oxvo1GmdVMc66XvVDSWz7TVtLCqh'),
(1222, 0, '12', 1, 95.00, '2021-07-21', 0, 'Att99yM9TqIoNZWTPPpvqfrDKGhi2w4JWV06HwHn'),
(1224, 82, '7', 1, 30.00, '2021-07-21', 0, '5wvNKPDAatk188ZYovC3QoARj1PPrJ7VMFpAC43p'),
(1226, 0, '12', 1, 95.00, '2021-07-21', 0, 'xo6sygibmCWWYHCA5SjwA2b1hGalUdkXDwLXTAwn'),
(1227, 0, '12', 1, 95.00, '2021-07-21', 0, 'dZjm7Xjzau7pxNBSv970Q3zdkYQvmlJJEj96ucr5'),
(1228, 0, '42', 1, 50.00, '2021-07-22', 0, 'dZ7vUfLnCp7dB441S1TTwULRwSlsuPLP316Lpw71'),
(1229, 0, '45', 1, 100.00, '2021-07-22', 0, 'dZ7vUfLnCp7dB441S1TTwULRwSlsuPLP316Lpw71'),
(1230, 0, '42', 1, 50.00, '2021-07-22', 0, 'IQE6GmerPtnHFy8jq3eWBAppEfj1hIG7554gGyUs'),
(1231, 0, '12', 1, 95.00, '2021-07-22', 0, 'GrqzjrxGgjJZ5MtkRg9Q4E5wr561h3rp0algvTcO'),
(1232, 0, '12', 1, 95.00, '2021-07-22', 0, '6esCS778HubWYbxcO0bgyR2Y5TQNyflPl9NWobza'),
(1235, 0, '12', 3, 95.00, '2021-07-22', 0, 'l8QAMOcqYJkHrXPxyFIZpoLAVUl10Np1fdPpm1QV'),
(1236, 0, '12', 5, 95.00, '2021-07-22', 0, 'YuKFfpMmanjzCAXhSbMnfcnWuHHtiVfHVTZcJvu4'),
(1237, 0, '12', 1, 95.00, '2021-07-23', 0, 'anGGZRVAHAE5T0IRueSE9J9VxFKLEqd2nAHuwcBL'),
(1238, 0, '12', 1, 95.00, '2021-07-23', 0, '670iUZ9CuP9Gv04x7nKIQBCV8dZ7bGp5odvnG3vM'),
(1239, 0, '12', 18, 95.00, '2021-07-23', 0, 'I6QnmfZd6j0BijcgsOfhgcfNNMivBqABD7dnHHeL'),
(1240, 0, '12', 2, 95.00, '2021-07-23', 0, 'znAATXdcxfAS6tAZFAauUeu444fICw6OPc5bHFvA'),
(1241, 0, '12', 2, 95.00, '2021-07-23', 0, 'GrWd1byiwnoRCI6phrbW2PRawL0b48cnPl5myHVc'),
(1242, 0, '12', 3, 95.00, '2021-07-23', 0, 'cYc7DJQAbCnVp4CfWHEw5dUztTZ9Zx7sMKzXnwbn'),
(1243, 0, '12', 1, 95.00, '2021-07-23', 0, 'LsBFCgGQK97PXH5OEvnY2wGUT34KZ99bhTGeXm98'),
(1245, 0, '12', 1, 95.00, '2021-07-23', 0, '8vVU4OzkHKLUtYsrOmrkaDuHVmbeYEUPiCA1Muq2'),
(1246, 67, '43', 1, 75.00, '2021-07-23', 0, 'h4iwhrIHJ5OJETyVxnB1FryCPzpjMI9qedsCSWIs'),
(1247, 0, '12', 1, 95.00, '2021-07-23', 0, '9GqmtqVhaKsdqBgyNlucjrDpRqKOXdxlRS7fBueE'),
(1248, 0, '12', 3, 95.00, '2021-07-23', 0, '2K36OB8Ne0t6OsJeI32qwquWgByah4u0Ik4mCVoG'),
(1249, 0, '12', 1, 95.00, '2021-07-23', 0, 'i6THuWTw4rMa5uuxEKzSkbGBNTV5ccg7FBuw726G'),
(1250, 0, '12', 1, 95.00, '2021-07-24', 0, 'vps6GuV7LyTe2EjnRHNZ2ehycWoyRfSE55Mvk4xO'),
(1251, 0, '12', 1, 95.00, '2021-07-24', 0, '7R7aMprop1QsbxlRVX1uNMvABmU1LXTBWFC3tAd7'),
(1252, 0, '12', 1, 95.00, '2021-07-24', 0, 'RFqvoOYONNHMagbgh4KBMXeXgjQXdkW7GwTNqmeI'),
(1253, 0, '42', 1, 50.00, '2021-07-24', 0, 'GXJ2oG1pwhl7QelRgXBD1EtArOU3tZHAy9dkgI80'),
(1254, 0, '12', 2, 95.00, '2021-07-24', 0, 'GXJ2oG1pwhl7QelRgXBD1EtArOU3tZHAy9dkgI80'),
(1256, 0, '12', 1, 95.00, '2021-07-24', 0, 'Rs4fe1aQliYx9RDz401lhL5XBpMxiMnMVpnlYsmZ'),
(1257, 69, '42', 1, 50.00, '2021-07-25', 0, 't3MRaF0z1kjo1eizYDzMbbAKqFFac0qvgRrUykCT'),
(1259, 0, '12', 1, 95.00, '2021-07-25', 0, 'o7gzv1uF2ufiL6QIUplrUgFE6EeMtKpd3WLKBzqW'),
(1260, 0, '7', 1, 30.00, '2021-07-25', 0, 'Ux6iWUqlQrkikm9VnDG0gU8VS5q2CcEXJzYRzrg7'),
(1261, 0, '45', 1, 100.00, '2021-07-25', 0, 'Ux6iWUqlQrkikm9VnDG0gU8VS5q2CcEXJzYRzrg7'),
(1262, 0, '45', 1, 100.00, '2021-07-25', 0, 'uKbxqsbv96PX6OUS5Da9qCd9vphGFJT74Q37B58d'),
(1264, 0, '45', 1, 100.00, '2021-07-25', 0, '0DfUdY3B5ubB8eHyNU9ylhVskMwcuIDEWTPKCMoW'),
(1265, 68, '12', 1, 95.00, '2021-07-25', 0, 'W0hhuRYmow7P54U89nEJJNNzA1nP3NEBSK0FYNOR'),
(1266, 0, '45', 1, 100.00, '2021-07-25', 0, 'o7gzv1uF2ufiL6QIUplrUgFE6EeMtKpd3WLKBzqW'),
(1268, 0, '12', 1, 95.00, '2021-07-25', 0, '81ErbOVvEuFl4cXs2M6Cgrp1mQi7Mzkzc6mNHB1w'),
(1269, 0, '12', 1, 95.00, '2021-07-25', 0, 'd6RB4D46dcpCj1TvLG3GSV1x7etGScJRViHE2qik'),
(1271, 0, '12', 1, 95.00, '2021-07-25', 0, 'nnuwR2vMvRMFIgFZPucDPrlHZArA9JkvIBDvIHrO'),
(1272, 0, '12', 1, 95.00, '2021-07-25', 0, 'rkf4KhNXQK5tUYbkpi14fHJEQLJUOXCE7THjXOi9'),
(1274, 64, '7', 1, 30.00, '2021-07-26', 1, 'ppKs8X3POL0FCTZDkCHNptXhRDjUhGZxTRNvlmdF'),
(1275, 84, '7', 1, 30.00, '2021-07-26', 1, 'PfQusBAAv38TiiWNhONyXG4rnFkV3Obu0yzU1VJp'),
(1276, 0, '12', 1, 95.00, '2021-07-26', 0, 'ZfgGYCBs80f9Ce9f6zpWQjf8RVdwLmfjCEZIddSX'),
(1277, 0, '12', 95, 95.00, '2021-07-26', 0, '2cOtD6BLOkQWetAvgUqplK5lnwad0k4OZXBb1Kyt'),
(1278, 0, '12', 1, 95.00, '2021-07-26', 0, 'NbGcc9x4qY4oAS4FlwVidf60TgoLUotDkiLhKRND'),
(1279, 0, '12', 1, 95.00, '2021-07-27', 0, 'OhNs8UCccrg1V0Aq5BNfDFEDukmQK6G1SbIvdQjM'),
(1280, 0, '45', 1, 100.00, '2021-07-27', 0, 'U28jgy6s1Ppi71CtYMmFzSufkzCGLb8aZVd2kzaS'),
(1281, 65, '12', 1, 95.00, '2021-07-27', 0, 'TiLV4AmENVBdUndYSkUh8DrzUMxXuggbrG5Nocq3'),
(1282, 0, '42', 1, 50.00, '2021-07-27', 0, 'PRsGuBT55IE2jp88wXVSBCiMXZr54qTDspqhFUPx'),
(1285, 0, '12', 1, 95.00, '2021-07-27', 0, 'SCOEMZJG5OKne5jB1WBY930I60icSApKivZetYRs'),
(1286, 0, '12', 1, 95.00, '2021-07-28', 0, '0Uu0HjaHjB2Gmz7tQfEEn7YwtvNN1BZJQ9own7Ij'),
(1287, 0, '12', 2, 95.00, '2021-07-28', 0, 'f0hKkDTf5LPsSp3X01VXwOYVmHzVlMhLvva2QDOC'),
(1288, 88, '45', 11, 100.00, '2021-07-28', 0, 'dYeInjedcl5kqwjaUFU3iuLw3uUGilSZteUsRzS6'),
(1289, 0, '12', 1, 95.00, '2021-07-28', 0, 'gpWteHzrDQ4j08usL8Ospo4omlvDFuk7MdHFKsQo'),
(1290, 0, '12', 1, 95.00, '2021-07-28', 0, '7RRS3NaYsIIMwLvaFxXvOfRzwLd50YKFJAQh5UTP'),
(1291, 0, '12', 1, 95.00, '2021-07-28', 0, 'mCZQQSRIpD32KMeFUHxDgXI0PUYTO9K6re1olCLq'),
(1292, 65, '13', 1, 100.00, '2021-07-28', 0, 'CHpkZ7fgw3ZxMctQjL3WbrH48YpKW2kLj2loT2r9'),
(1293, 0, '12', 1, 95.00, '2021-07-28', 0, 'CSuwoSxry9dQneCRzk5sfVzPWXoLsBJx6wLKlmIX'),
(1294, 0, '12', 2, 95.00, '2021-07-28', 0, '2cJQ9XPXySqQhMKiseuh30Xil6tcROL06LKFfEJ0'),
(1295, 0, '12', 1, 95.00, '2021-07-28', 0, 'dQo9BNnjQ2hJ2PxMq6d3JNF5cqXhV67JeGRpf9ID'),
(1296, 0, '12', 1, 95.00, '2021-07-28', 0, 'vfB0jfgXIwKa0th7TJLVEyLNXmGDOg4rEt83ZPQY'),
(1297, 0, '43', 1, 75.00, '2021-07-28', 0, 'OOG2PKWxijZfvY2LvJ01SnBW0scNTM22AKebcMdb'),
(1298, 0, '42', 1, 50.00, '2021-07-28', 0, '00Z2IfQ7nU7YyjjiRMmz2LckDIP9PB7PdzUm3Sxr'),
(1299, 0, '12', 1, 95.00, '2021-07-29', 0, 'CfpNOB7nNU64Sk7VFInaAJMivzOEjCvQPJdzUqKa'),
(1300, 0, '12', 1, 95.00, '2021-07-29', 0, 'a6TWd72CmOgZD2iAnh4iWBeSB21i9JBnsazDrJp5'),
(1301, 91, '12', 1, 95.00, '2021-07-29', 0, 'Ogw3WpaSL8859yBjj8uzLze2BTlI8YYLa5SUdA4f'),
(1302, 91, '42', 1, 50.00, '2021-07-29', 0, 'Ogw3WpaSL8859yBjj8uzLze2BTlI8YYLa5SUdA4f'),
(1303, 90, '42', 1, 50.00, '2021-07-29', 0, '80nW215TvskJZDBdrjDBqsezIqkMNBOA6hyRIXOP'),
(1308, 93, '45', 2, 100.00, '2021-07-29', 0, '1a5WWS76t89xCGLLfRasBcHReifUef1MBQmFT1cN'),
(1309, 93, '42', 1, 50.00, '2021-07-29', 0, '1a5WWS76t89xCGLLfRasBcHReifUef1MBQmFT1cN'),
(1310, 0, '42', 2, 50.00, '2021-07-29', 0, 'uRArWbZQzT4reTPi3wHQbNJCdo6kHp2fj8JzmZMH'),
(1312, 0, '42', 1, 50.00, '2021-07-31', 0, 'BZXxDdJwTM8adyMMbescMlxTDJL5ni9aIJ9HC2qV'),
(1313, 0, '42', 1, 50.00, '2021-07-31', 0, 'AfCk9EKeaSu3J68X8oqPMNuavtOSfJw7Dm6bdiHx'),
(1314, 0, '42', 1, 50.00, '2021-08-02', 0, 'aOdrMfCpiSBZtWo9LtZd1LOppiCvrh40U0m4w3uf'),
(1317, 0, '42', 1, 50.00, '2021-08-04', 0, 'my8Zmy1TvyHREJs1HO7CkTLn5RzBhYHQOmmhHbfv'),
(1318, 0, '12', 1, 95.00, '2021-08-05', 0, '4d1vxzneSSYq0suxcHaKlPPR6OFGxRIq2UqmB3gg'),
(1319, 73, '12', 1, 95.00, '2021-08-05', 0, 'TaenKvixFoi4xhAoSBw1ACQQGPdfR44wqgh3VlBJ'),
(1320, 74, '42', 2, 50.00, '2021-08-05', 0, 'Xsa0K72l9P3ZMD45F6letvVYy94dfCHrFJVK85zg'),
(1321, 0, '42', 3, 50.00, '2021-08-05', 0, 'fwyZTZxYiyQJ2uRU7olA7Qeu5uJ1Hi1hbUFGtTmt'),
(1322, 0, '42', 1, 50.00, '2021-08-07', 0, 'WPxSzbKCcmxAloMQL5VhJe3vHc6NVLwepsClKVye'),
(1323, 54, '42', 4, 50.00, '2021-08-10', 1, '2L0ocivIkUKeDYO98ndeBDT2o1ziHJfZsQKRBTJW'),
(1324, 54, '12', 6, 95.00, '2021-08-10', 1, '2L0ocivIkUKeDYO98ndeBDT2o1ziHJfZsQKRBTJW'),
(1325, 54, '7', 8, 30.00, '2021-08-10', 1, '2L0ocivIkUKeDYO98ndeBDT2o1ziHJfZsQKRBTJW'),
(1326, 0, '7', 1, 30.00, '2021-08-11', 0, 'pFABMSDfvWFlOVNOtrNeIX1ooPkvSxa182AvRGTg'),
(1328, 0, '42', 1, 50.00, '2021-08-11', 0, 'pFABMSDfvWFlOVNOtrNeIX1ooPkvSxa182AvRGTg'),
(1330, 105, '42', 1, 50.00, '2021-08-12', 0, 'dAO2AfiuwKqwirrKsgmD9k85aYYgMKjXBoUYd7v0'),
(1332, 0, '12', 1, 95.00, '2021-08-14', 0, 'fDcTFE6ejstFtlajYU1pgsMkNPto9xDLICGIK7bk'),
(1333, 0, '42', 1, 50.00, '2021-08-14', 0, 'F7kbbzNcaNLZF4e9jS0x07O6COfjuvPS4lsNs1U1'),
(1335, 106, '42', 1, 50.00, '2021-08-15', 0, 'dlNvKbJRiMqegJzrk1Ffen6SSmN7dfsEIbJuQGmJ'),
(1336, 0, '12', 1, 95.00, '2021-08-15', 0, 'g7Frz1q7LWFQQRjV9JDZyJ33MSwDLxQn8oWpoJAl'),
(1337, 0, '12', 1, 95.00, '2021-08-15', 0, 'zMcG6h0i8UpJhfoEOZYEVE5sDPUtGyhigkMT9qGo'),
(1338, 70, '42', 1, 50.00, '2021-08-15', 0, 'z6cTWTCyM99cn6qdQNoAUAK1f5pGRLqtyxYGCYDM'),
(1339, 67, '12', 1, 95.00, '2021-08-15', 0, 'sC4PPx24ceFdQbSZiKGLWWSneMB6X9F3P9cg3gXO'),
(1340, 0, '12', 1, 95.00, '2021-08-15', 0, 'kGBWBxrBhlcKz36HTX9jd19Ge4rFAPMAvzDDxSOg'),
(1341, 54, '42', 1, 50.00, '2021-08-15', 0, 'QxWXHVdWxwhw1fY2FopYf9nmEUC9iztv3CItnsB0'),
(1342, 81, '12', 1, 95.00, '2021-08-15', 0, '4ssNM6sy6uMBVo17U7viaq6lD1BhsVg2CSvgyrIH'),
(1343, 107, '42', 2, 50.00, '2021-08-16', 0, 'qDwnE3wBw14GQcMoPP7ZGKfgLxvIPbgqFD8oRPb5'),
(1344, 0, '7', 1, 30.00, '2021-08-16', 0, 'ypddjVQ7tRgg0Ti1QRLUDuuezSSIOkGOcgCaSu0i'),
(1347, 0, '12', 1, 95.00, '2021-08-19', 0, 'DP0T8XgpjKSjs3B9JWsYXd3FSSvOGObS9tkJJoVL'),
(1348, 0, '42', 1, 50.00, '2021-08-19', 0, 'DP0T8XgpjKSjs3B9JWsYXd3FSSvOGObS9tkJJoVL'),
(1350, 113, '42', 2, 50.00, '2021-08-23', 0, 'YSDBebpadaIQdDQp5dAjpkpNQIUxPg8ikfwbxTPz'),
(1351, 114, '42', 1, 50.00, '2021-08-23', 0, 'TuLng8WRW1ZDVDJoDOy5gqO7Q5ZHOat42D2oUU0j'),
(1353, 115, '42', 1, 50.00, '2021-08-23', 0, 'MmIWwRy7F7Hjjrr0VmXkACEKIT4hZjz9NP3YuK71'),
(1354, 117, '42', 1, 50.00, '2021-08-23', 0, 'DIcYyRd2p425moUMt877v5pJLsr7H03Hn9p5xCP4'),
(1356, 111, '42', 1, 50.00, '2021-08-23', 0, '4WqEB2nNsCpajBKppWlO0b6J400Gq1zYA4tDR7V5'),
(1357, 120, '42', 1, 50.00, '2021-08-24', 0, 'nuUlf5l4hq90dg2i80yzT2tbgcATjdQdKv7xbeti'),
(1358, 84, '12', 1, 95.00, '2021-08-24', 0, 'UQx5qBytVeSH5DTOhiQOoIQnjEJOEW3gPTBI3i3S'),
(1359, 121, '12', 2, 95.00, '2021-08-25', 0, 'nbUh4KPE8XTiAha0fJ2A6JxCYai0u1b81LiHVgpM'),
(1363, 0, '42', 1, 40.00, '2021-08-27', 0, 'NsSz8UuG8KtTQpM3qPbJboRPoAblPjtT3LpIcneh'),
(1364, 0, '42', 1, 40.00, '2021-08-29', 0, 'XsCtl7Gs8k26FNhbhz7dOJGhkRX21j5cNZYTXMe6'),
(1365, 120, '12', 1, 75.00, '2021-08-29', 0, 'mp3VyiIzkb6BCRVzX1tnsB3Qz7vd6ZRvi5iWwpbk'),
(1366, 0, '42', 1, 40.00, '2021-08-29', 0, 'X2O8qvWgl3it5u5XT5qKbOXIX4NxzzyjFYlC6Flf'),
(1367, 0, '42', 1, 40.00, '2021-08-29', 0, 'xKh0QGQBfrBVVEnOgrq1Z4wOY1PiX7vP9o5bs7wK'),
(1368, 125, '42', 1, 40.00, '2021-08-29', 0, 'AvgWLcYgZRMh2SCxNk4muBqxjEF9desTItUUohCZ'),
(1369, 0, '42', 1, 40.00, '2021-08-29', 0, 'ImNJzkcw7XInFZdPTuV5jQXEdswPMMIDfuuczS4z');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_basket_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_values_id`, `session_id`) VALUES
(1, 493, 9, '13', 2, 5, 'uURk6nyE91QIVaw95GfLMSz1COmUvNPNLQxMKdD9'),
(2, 495, 0, '13', 2, 5, 'tWKQrRM6EqADjIXpjOt5rfiLakMrN8TQw4S8hdEC'),
(6, 507, 9, '13', 2, 5, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(7, 508, 9, '13', 2, 5, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(8, 509, 9, '13', 2, 5, 'Bd92MA5hy9XOUC1Skt2S7MapB9n5VoSMnRum7KHf'),
(10, 517, 37, '13', 2, 5, 'g1Nalhms6sPRGLFfLMyxgw79XohZUr49dwuklAO2'),
(11, 518, 37, '13', 2, 5, 'g1Nalhms6sPRGLFfLMyxgw79XohZUr49dwuklAO2'),
(14, 521, 9, '13', 2, 5, 'c5O26ATu8Z2RU385EnRmtclK9nHxtfWPzIEvRqXi'),
(15, 522, 37, '13', 2, 5, 'mD0lX1zqenPtYWJ5LkompEj06RfctCsRKS73Qu5C'),
(16, 536, 9, '13', 2, 5, '5XpKyRetsujLDWIKSO2sPGBe9GpantsULY6P0IdG'),
(17, 537, 9, '13', 2, 5, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(18, 538, 9, '13', 2, 5, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(19, 539, 9, '13', 2, 5, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(20, 541, 9, '13', 2, 5, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(21, 543, 9, '13', 2, 5, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(22, 545, 9, '13', 2, 5, 'WFMaXOWYf4wgI2IkfKJraC1DDItCGncMzFYRO897'),
(23, 547, 38, '13', 2, 5, 'XzwqWu5MCRqgXIlKvI9UOBZHo2WWJpGAvMudaOof'),
(25, 551, 39, '13', 2, 5, 'pVB06pdniyxlWrBHl9xWhr62pJX5I6uPZoWXBn5M'),
(26, 556, 0, '13', 2, 5, 'TVzeEuY9uy4PGo7LHuIiIfJYpQCxDGtH26x2NCc0'),
(33, 576, 9, '13', 2, 5, 'LPcQMy4DfOdMNtBc9AaffSD0zCwWJ9fR1P06dBH9'),
(34, 580, 0, '13', 2, 5, 'tFpXFq5HzmXSeoMS1RHNfRsSYbzUowZeOgRfBLoh'),
(35, 581, 9, '13', 2, 5, '8yfDAbi55TLtLI9RVSDUBfNyCAVdsQY1TcnYpra7'),
(36, 585, 0, '13', 2, 5, '0oGcwDygUmmuRaXAdViJ0DfBSKxsM1m2Q3PHrssx'),
(37, 587, 9, '13', 2, 5, 'uo3EUlPuNEKuABHclI3WB1xa1gf0Ft4udnKKX24w'),
(39, 593, 9, '13', 2, 5, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(40, 594, 9, '13', 2, 5, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(41, 596, 9, '13', 2, 5, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(42, 597, 9, '13', 2, 5, 'oFryH0mt48lCX4tw57sbLgYpLZfZMtN1DG9hZFHg'),
(43, 598, 0, '13', 2, 5, 'WoUszKVPPYWNcGKPVqjCrKw9UPhSKr2B6o3IqCxQ'),
(45, 611, 9, '13', 2, 5, 'QH2VXlvn8zZyJ3RG2RfTWCHrC9u3V4CHdje8gMP4'),
(46, 614, 9, '13', 2, 5, 'l01ez8wDSSC4dbt8SYrQBWo7N35xrtqgm5rU6tYx'),
(49, 620, 0, '13', 2, 5, 'ES5adtDvZpkDQaLv2054kdAD4VAA2c0DI8Bh59hN'),
(53, 629, 43, '13', 2, 5, 'uXNj838SbIPxU0HHWTlMXkDUj5Nw1GFDGIrOCtEB'),
(54, 632, 9, '13', 2, 5, 'GwaxHvVr4CjGOjJMGy4giHmDM1Ob3m9XxeUOwJS1'),
(55, 636, 9, '13', 2, 5, 'ADvfnxENEs0RACfBhCj4D48x7ZrTql5I95sJKpwe'),
(56, 638, 9, '13', 2, 5, 'YpsSZYIfCBBZi4Q8woTE8O7tjx38AWrnZfuHocZ3'),
(64, 656, 47, '13', 2, 5, 'X7OUF6mqv2xySUdtEFcAsgOkK9CQyT2wFkDvAGUq'),
(67, 662, 0, '13', 2, 5, 'igVCQshPuv8IqsCvvXXs0Nq3q7hTUkEI45StiTCo'),
(70, 666, 0, '13', 2, 5, 'Kbq5BFFpRbjE0aU5r7jSQbcGw9PdmXxFVswdPD7u'),
(73, 671, 0, '13', 2, 5, 'ZC8fTZ1ojUvW5ytrt3xuTB7mMg3a2zInwOodCDUr'),
(76, 678, 9, '13', 2, 5, 'vsoHSHMzluPvfHZU4bhyPp7hOqDRspiZMvBJT8Z8'),
(77, 679, 9, '13', 2, 5, 'vsoHSHMzluPvfHZU4bhyPp7hOqDRspiZMvBJT8Z8'),
(78, 680, 9, '13', 2, 5, 'egO1uFyqkNRhWgSGdUINoYeSl7yCCm3gU9mqlLIq'),
(79, 682, 9, '13', 2, 5, '50RzvBmdtk3IL1sQfXqPw0gt3mCcZxOEydz4KWzL'),
(80, 683, 9, '13', 2, 5, '50RzvBmdtk3IL1sQfXqPw0gt3mCcZxOEydz4KWzL'),
(81, 684, 9, '13', 2, 5, '50RzvBmdtk3IL1sQfXqPw0gt3mCcZxOEydz4KWzL'),
(82, 685, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(83, 686, 9, '13', 2, 5, '11CmFjCU1JXpTX1JE2IR1wwHcnCeNl0doYieWxBO'),
(84, 687, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(85, 688, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(86, 689, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(87, 690, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(88, 691, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(89, 693, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(90, 694, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(91, 696, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(92, 697, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(93, 698, 9, '13', 2, 5, 'UmKHYKQ2FcRx5FJhsFbKadFrrsMkDlsGixZxojUI'),
(94, 700, 9, '13', 2, 5, 'SiWeWoCdSBcxiYEsbah7BBB0ugm3ET4cZvgKmbEk'),
(95, 702, 9, '13', 2, 5, '55qkvLxGKu1KgMRRNE2rmQKNUHFs5RimTuGBu6hs'),
(96, 705, 0, '13', 2, 5, '9yb3H4e8YMtb28zsqDdulipfexLIOzAae0GErQXA'),
(97, 706, 0, '13', 2, 5, 'PPXzQbAoTdnppQvqzHJf4VDdm5FVOAqdwWNXN2Lv'),
(99, 708, 52, '13', 2, 5, 'TX1G5HmIEnOG6bAjosJR0Ki7JBZIB1TXMnhnNfyA'),
(102, 712, 0, '13', 2, 5, 'BUwbSZY8OqBuRoTgDmMlS4fcbmTOGOlovuUMsA22'),
(104, 714, 54, '13', 2, 5, 'qARBV6rflc8ksx67nVoUuxbx4BnAJ15mw7r3bWp2'),
(105, 715, 54, '13', 2, 5, 'idq9USWJw6xoOAYNFreSOUT1IkwjAe6khFd5tKl7'),
(106, 717, 52, '13', 2, 5, 'OilgpAz8gmbzM5tR36WhbOOIszaUoo3Y2vlRKFFM'),
(108, 721, 52, '13', 2, 5, 'OilgpAz8gmbzM5tR36WhbOOIszaUoo3Y2vlRKFFM'),
(109, 727, 52, '13', 2, 5, 'z3nsxbT4RCtuZYMvMJFVSOKzsiYsaLWxMxTWEaLt'),
(111, 738, 0, '13', 2, 5, 'fzdQYT45w0OywK15fBgmEDXIqvXu7frsFdSPJYab'),
(112, 740, 56, '13', 2, 5, '4N16ZJWYwAGHnyCCoZB1mTKN6aadjFA9nM6vmW24'),
(113, 744, 0, '13', 2, 5, '0foNKd8xi2fZmRlqriUZjzb6YYGLqTCYozhG52Ur'),
(122, 778, 54, '13', 2, 5, '8kRAB6Qn9fX0rjVOOssKvdQxih3VY7K1HjRmwLsc'),
(134, 812, 0, '13', 2, 5, 'QSe2g8OIdZa6FbsgZ9IxfGvzZFqZHnD3NdvSyuuo'),
(137, 815, 52, '13', 2, 5, '3o6RzsBnWb2NHR8obRHPLUQ5Qk7wTGATPERCUIIQ'),
(143, 829, 60, '13', 2, 5, 'IK36JOJxTaORjUtoz14mWUUFOIjRxgUN0R50rhvu'),
(144, 830, 59, '13', 2, 5, 'ZNOhsk2LFhOHMoxS5PgQvTXaddFvXd3z48eSaXiS'),
(145, 832, 54, '13', 2, 5, 'xiYMctQoLetiemB7QcSbTWgLdYIfuwt1JXAYfDw5'),
(148, 843, 61, '13', 2, 5, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(149, 844, 61, '13', 2, 5, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(150, 845, 61, '13', 2, 5, 'HVwsl0cd7IepuuGStc5YRCCRW3z86b8QjsWQzRZ4'),
(151, 848, 54, '13', 2, 5, 'RE5BXIG9LQmr8c7xuvDsm5CSuTEiZDaLtvUUMygS'),
(153, 856, 54, '13', 2, 5, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(154, 858, 54, '13', 2, 5, 'KQYVaTIxKcjo1oLPJYB4JXYbXAOdE9fPiCjg7fNv'),
(155, 863, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(156, 865, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(157, 866, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(158, 867, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(160, 869, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(161, 871, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(162, 872, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(163, 873, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(164, 874, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(165, 875, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(166, 877, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(167, 880, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(168, 881, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(169, 882, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(170, 883, 59, '13', 2, 5, '3ZG91wbyNqiYgI7zHMfaU2ZTVJHbfeF4tU0IkUTz'),
(172, 891, 0, '13', 2, 5, 'F44rFcl6gZWGYbj2TVWTmafNJ9PMn7xGAKAAgwCW'),
(177, 907, 52, '13', 2, 5, '4LGNVEZnaDfhTf4lBJd70m0TsVuzJfP74xagL0FE'),
(178, 910, 54, '13', 2, 5, 'RqnwJ3vNDZ9JgbEf7df1EMHKEdboHK8A7dgjei5d'),
(179, 913, 59, '13', 2, 5, 'WtqW9NCxOrHwVU79KZdiEmRXpetpyGXFaE6FVBmV'),
(180, 914, 59, '13', 2, 5, 'WtqW9NCxOrHwVU79KZdiEmRXpetpyGXFaE6FVBmV'),
(181, 915, 59, '13', 2, 5, 'WtqW9NCxOrHwVU79KZdiEmRXpetpyGXFaE6FVBmV'),
(183, 920, 65, '13', 2, 5, 'M8zVFXZTiEWDW32RoW6XUzIxMjc8d1Bedc3Xbemt'),
(185, 923, 0, '13', 2, 5, 'jxa6qOuYgjqtZZSyDgNqAaFxfL8FoWD3t1bvY3l9'),
(186, 924, 65, '13', 2, 5, 'keZPYYC1fKoVZjp8PbvenI3LQweWPj4ePcb2eDYE'),
(188, 931, 66, '13', 2, 5, '1GbY4Dks1v3vmg37fok0qy1RWWiMpeCsuJ5QD5QD'),
(189, 932, 54, '13', 2, 5, 'Doc2CLjzKtfUPgvI4M8Y59TJJlspuzwFFvzLpnru'),
(190, 934, 68, '13', 2, 5, 'ZXvOyd6bX5Lp07qI2FADrnKcTupoalV1nRGn4QdQ'),
(191, 937, 54, '13', 2, 5, 'EGkM7RJmLWAtGiF5sYLSbRjyJIWf27UlIxCFoj2H'),
(199, 960, 54, '13', 2, 5, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(200, 963, 54, '13', 2, 5, 'o7glYoFCnJkgAVCGvNhXkgXH9mcel1CJX9zErwJc'),
(201, 967, 65, '13', 2, 5, 'qG8fFQSbsOoZf0BC2GB0B0B3w8TRMjrCkHYCcGHv'),
(204, 971, 65, '13', 2, 5, 'bbV3yUCw4aQEcOEKznhILRJkhvdd3oXGTD5DnOQD'),
(207, 980, 54, '13', 2, 5, 'le4ZT9P175euZZtAs3rXXs9YYdE0OeXGWGylIjtW'),
(208, 981, 71, '13', 2, 5, 'TrmYjJhofNTyxQ5Erp33CRfBLCGZ0GpTSPVtLjdi'),
(210, 995, 68, '13', 2, 5, '8z0pIZ01IV8t2BKKG9ltNrD71JifL5YFmpsoXQAd'),
(211, 1013, 71, '13', 2, 5, 'RIwwZgAYsQSHt8Aerf9FLylgM9uHl1rkeb1PKQZz'),
(212, 1015, 57, '13', 2, 5, '3jtvjSu9vtgUjbxKfjlptcjWod5niTsArrBCD7G4'),
(213, 1027, 54, '13', 2, 5, 'Ft41dWHM9xT7qrVrbjzIy8VgoLooTnMHGM8R36W3'),
(214, 1029, 73, '13', 2, 5, 'zmGluTW3M3YIdgbh2aos6JqGLgHTvNaFzGXnTa2N'),
(215, 1041, 0, '13', 2, 5, '08BRdOeglxosZlxucj1yhiAmcol9119RZToU6rEq'),
(216, 1042, 52, '13', 2, 5, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(217, 1047, 65, '13', 2, 5, 'nG1kw9Nhr7hVJH5weZXoTwpoHCnGvkgoaK7cmBC9'),
(218, 1048, 52, '13', 2, 5, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(219, 1056, 52, '13', 2, 5, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(220, 1068, 52, '13', 2, 5, 'ttCMr69hRhP8Q0NdN90qbYBMyirOCsuxdWgFpDjv'),
(221, 1127, 72, '13', 2, 5, 'rRmaw4mSmczIB3DmxljzkSHz2wNx6YyUXCgMPZrz'),
(223, 1157, 73, '13', 2, 5, 'eTBuygPn4amATkd97KxyvaPzGD85xiG5blrLKM8X'),
(224, 1174, 0, '13', 2, 5, '3iZPNEEhuGkHURtBmhC65jdUZKx8QXAqFfso8LxQ'),
(225, 1178, 0, '13', 2, 5, 'R36EP9hC1H3F3Y346Ar38hdXFta1Q3TB7q2MEPkT'),
(226, 1184, 0, '13', 2, 5, 'aqLnZ3KdpeEyFiw3uk8ialZWv644Wz8akS8WYwDQ'),
(227, 1188, 69, '13', 2, 5, 'x91rNPMVkhILKCluPvhSrnv00h81aGcxacR4u9Ut'),
(228, 1197, 0, '13', 2, 5, 'veIZlXhLFXfFs6AfKumzoAai1BYCZsN4NdlnG1Vo'),
(229, 1212, 0, '13', 2, 5, 'elMnD79T85TLCt6v6HPiVvNhPms75uD7qtSwyYt7'),
(230, 1292, 65, '13', 2, 5, 'CHpkZ7fgw3ZxMctQjL3WbrH48YpKW2kLj2loT2r9');

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(1, '2021-08-22 14:18:00', 1, '2021-08-22 14:18:00', NULL, 1),
(2, '2021-08-22 14:19:02', 1, '2021-08-22 14:19:02', NULL, 1),
(3, '2021-08-22 15:24:43', 1, '2021-08-22 15:24:43', NULL, 1),
(4, '2021-08-22 16:24:50', 1, '2021-08-22 16:24:50', NULL, 1),
(5, '2021-08-22 16:38:51', 1, '2021-08-22 16:38:51', NULL, 1),
(6, '2021-08-23 11:09:24', 1, '2021-08-23 11:09:24', NULL, 1),
(7, '2021-08-23 15:52:27', 1, '2021-08-23 15:52:27', NULL, 1),
(8, '2021-08-23 16:47:53', 1, '2021-08-23 16:47:53', NULL, 1),
(9, '2021-08-24 10:54:41', 1, '2021-08-24 10:54:41', NULL, 1),
(10, '2021-08-24 12:06:11', 1, '2021-08-24 12:06:11', NULL, 1),
(11, '2021-08-24 13:04:54', 1, '2021-08-24 13:04:54', NULL, 1),
(12, '2021-08-24 15:16:56', 1, '2021-08-24 15:16:56', NULL, 1),
(13, '2021-08-24 16:16:28', 1, '2021-08-24 16:16:28', NULL, 1),
(14, '2021-08-24 17:17:27', 1, '2021-08-24 17:17:27', NULL, 1),
(15, '2021-08-24 17:24:47', 1, '2021-08-24 17:24:47', NULL, 1),
(16, '2021-08-29 16:27:32', 1, '2021-08-29 16:27:32', NULL, 1),
(108, '2021-08-23 10:32:28', 20, '2021-08-22 14:18:45', NULL, 1),
(109, '2021-08-24 12:01:19', 6, '2021-08-23 15:05:34', NULL, 1),
(110, '2021-08-22 15:56:30', 2, '2021-08-22 15:46:11', NULL, 1),
(111, '2021-08-24 10:54:16', 10, '2021-08-22 16:38:23', NULL, 1),
(112, '2021-08-23 10:46:54', 5, '2021-08-22 16:39:19', NULL, 1),
(113, '2021-08-24 13:43:20', 3, '2021-08-23 11:24:02', NULL, 1),
(117, '2021-08-30 17:21:33', 8, '2021-08-24 13:11:01', '2021-08-24 01:19:00', 1),
(118, '2021-08-24 12:03:17', 3, '2021-08-24 10:55:46', NULL, 1),
(120, '2021-08-29 16:26:24', 5, '2021-08-24 16:59:09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_instructions`
--

CREATE TABLE `delivery_instructions` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_instructions`
--

INSERT INTO `delivery_instructions` (`id`, `address_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 11, 'Hello', '1', '2021-07-05 14:08:28', '2021-07-05 14:08:28'),
(3, 12, 'test', '1', '2021-07-05 16:19:06', '2021-07-05 16:19:06'),
(4, 14, 'asdasdad', '1', '2021-07-06 00:20:50', '2021-07-06 00:20:50'),
(6, 21, 'hello', '1', '2021-07-06 18:37:23', '2021-07-06 18:37:23'),
(8, 30, 'Hello', '1', '2021-07-07 13:39:01', '2021-07-07 13:39:01'),
(9, 37, 'Hello', '1', '2021-07-07 16:49:56', '2021-07-07 16:49:56'),
(11, 40, 'I survived!', '1', '2021-07-07 19:14:04', '2021-07-07 19:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `device_type` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latittude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `operating_system` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `browser_info` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`flash_sale_id`, `products_id`, `flash_sale_products_price`, `flash_sale_date_added`, `flash_sale_last_modified`, `flash_start_date`, `flash_expires_date`, `flash_status`, `created_at`, `updated_at`) VALUES
(1, 5, 30.00, 0, 0, 1568133900, 1706633100, 0, '2019-09-17 15:51:32', '2020-10-04 12:53:17'),
(3, 16, 35.00, 0, 0, 1567620000, 1701367200, 0, '2019-09-17 05:07:07', '2019-10-01 15:59:13'),
(4, 20, 70.00, 0, 0, 1568139300, 1682878500, 0, '2019-09-17 05:23:37', '2019-10-01 15:56:36'),
(5, 28, 65.00, 0, 0, 1568201400, 1669807800, 0, '2019-09-18 10:45:49', '2019-10-01 15:52:07'),
(6, 28, 65.00, 0, 0, 1568201400, 1669807800, 0, '2019-09-19 14:10:52', '2019-10-01 15:52:07'),
(7, 20, 70.00, 0, 0, 1568096100, 1682835300, 0, '2019-09-19 14:49:36', '2019-10-01 15:56:36'),
(8, 16, 35.00, 0, 0, 1567576800, 1701324000, 0, '2019-09-19 15:08:20', '2019-10-01 15:59:13'),
(10, 5, 30.00, 0, 0, 1568090700, 1706589900, 0, '2019-09-19 15:42:46', '2020-10-04 12:53:17'),
(11, 5, 30.00, 0, 0, 1568090700, 1706589900, 0, '2019-09-19 15:49:57', '2020-10-04 12:53:17'),
(12, 33, 20.00, 0, 0, 1568135700, 1569777300, 1, '2019-09-19 16:23:50', NULL),
(13, 5, 30.00, 0, 0, 1568090700, 1706589900, 0, '2019-09-24 14:23:20', '2020-10-04 12:53:17'),
(14, 34, 30.00, 0, 0, 1568046600, 1569861000, 1, '2019-09-25 15:43:49', NULL),
(15, 35, 30.00, 0, 0, 1568133900, 1569861900, 0, '2019-09-25 15:46:31', '2019-09-25 15:47:48'),
(16, 35, 30.00, 0, 0, 1568090700, 1569818700, 1, '2019-09-25 15:47:48', NULL),
(17, 28, 65.00, 0, 0, 1568201400, 1669807800, 1, '2019-10-01 15:52:07', NULL),
(18, 20, 70.00, 0, 0, 1568096100, 1682835300, 1, '2019-10-01 15:56:36', NULL),
(19, 16, 35.00, 0, 0, 1567576800, 1701324000, 1, '2019-10-01 15:59:13', NULL),
(21, 5, 30.00, 0, 0, 1568090700, 1706589900, 0, '2019-10-01 16:15:21', '2020-10-04 12:53:17'),
(22, 5, 30.00, 0, 0, 1568090700, 1706589900, 0, '2020-10-04 12:53:17', '2020-10-04 12:53:17'),
(23, 5, 30.00, 0, 0, 1568090700, 1706589900, 1, '2020-10-04 12:53:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(11) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '0', 'AED');

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

CREATE TABLE `front_end_theme_content` (
  `id` int(11) NOT NULL,
  `top_offers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transitions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_two` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `top_offers`, `login`, `transitions`, `banners_two`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`) VALUES
(1, '[{ \"id\": 1, \"name\": \"Top Offer\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Top Offer\" }]', '[ { \"id\":1, \"name\":\"Login Page One\" }, { \"id\":2, \"name\":\"Login Page Two\" } ]', '[ { \"id\":1, \"name\":\"Transition Zoomin\" }, { \"id\":2, \"name\":\"Transition Flashing\" }, { \"id\":3, \"name\":\"Transition Shine\" }, { \"id\":4, \"name\":\"Transition Circle\" }, { \"id\":5, \"name\":\"Transition Opacity\" } ]', '[ { \"id\": 1, \"name\": \"Banner One\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Banner One\" }, { \"id\": 2, \"name\": \"Banner Two\", \"image\": \"images/prototypes/banner2.jpg\", \"alt\": \"Banner Two\" }, { \"id\": 3, \"name\": \"Banner Three\", \"image\": \"images/prototypes/banner3.jpg\", \"alt\": \"Banner Three\" }, { \"id\": 4, \"name\": \"Banner Four\", \"image\": \"images/prototypes/banner4.jpg\", \"alt\": \"Banner Four\" }, { \"id\": 5, \"name\": \"Banner Five\", \"image\": \"images/prototypes/banner5.jpg\", \"alt\": \"Banner Five\" }, { \"id\": 6, \"name\": \"Banner Six\", \"image\": \"images/prototypes/banner6.jpg\", \"alt\": \"Banner Six\" }, { \"id\": 7, \"name\": \"Banner Seven\", \"image\": \"images/prototypes/banner7.jpg\", \"alt\": \"Banner Seven\" }, { \"id\": 8, \"name\": \"Banner Eight\", \"image\": \"images/prototypes/banner8.jpg\", \"alt\": \"Banner Eight\" }, { \"id\": 9, \"name\": \"Banner Nine\", \"image\": \"images/prototypes/banner9.jpg\", \"alt\": \"Banner Nine\" }, { \"id\": 10, \"name\": \"Banner Ten\", \"image\": \"images/prototypes/banner10.jpg\", \"alt\": \"Banner Ten\" }, { \"id\": 11, \"name\": \"Banner Eleven\", \"image\": \"images/prototypes/banner11.jpg\", \"alt\": \"Banner Eleven\" }, { \"id\": 12, \"name\": \"Banner Twelve\", \"image\": \"images/prototypes/banner12.jpg\", \"alt\": \"Banner Twelve\" }, { \"id\": 13, \"name\": \"Banner Thirteen\", \"image\": \"images/prototypes/banner13.jpg\", \"alt\": \"Banner Thirteen\" }, { \"id\": 14, \"name\": \"Banner Fourteen\", \"image\": \"images/prototypes/banner14.jpg\", \"alt\": \"Banner Fourteen\" }, { \"id\": 15, \"name\": \"Banner Fifteen\", \"image\": \"images/prototypes/banner15.jpg\", \"alt\": \"Banner Fifteen\" }, { \"id\": 16, \"name\": \"Banner Sixteen\", \"image\": \"images/prototypes/banner16.jpg\", \"alt\": \"Banner Sixteen\" }, { \"id\": 17, \"name\": \"Banner Seventeen\", \"image\": \"images/prototypes/banner17.jpg\", \"alt\": \"Banner Seventeen\" }, { \"id\": 18, \"name\": \"Banner Eighteen\", \"image\": \"images/prototypes/banner18.jpg\", \"alt\": \"Banner Eighteen\" }, { \"id\": 19, \"name\": \"Banner Nineteen\", \"image\": \"images/prototypes/banner19.jpg\", \"alt\": \"Banner Nineteen\" } ]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Header One\",\r\n\"image\": \"images/prototypes/header1.jpg\",\r\n\"alt\" : \"header One\" \r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Header Two\",\r\n\"image\": \"images/prototypes/header2.jpg\",\r\n\"alt\" : \"header Two\" \r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Header Three\",\r\n\"image\": \"images/prototypes/header3.jpg\",\r\n\"alt\" : \"header Three\" \r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Header Four\",\r\n\"image\": \"images/prototypes/header4.jpg\",\r\n\"alt\" : \"header Four\" \r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Header Five\",\r\n\"image\": \"images/prototypes/header5.jpg\",\r\n\"alt\" : \"header Five\" \r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Header Six\",\r\n\"image\": \"images/prototypes/header6.jpg\",\r\n\"alt\" : \"header Six\" \r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Header Seven\",\r\n\"image\": \"images/prototypes/header7.jpg\",\r\n\"alt\" : \"header Seven\" \r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Header Eight\",\r\n\"image\": \"images/prototypes/header8.jpg\",\r\n\"alt\" : \"header Eight\" \r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Header Nine\",\r\n\"image\": \"images/prototypes/header9.jpg\",\r\n\"alt\" : \"header Nine\" \r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Header Ten\",\r\n\"image\": \"images/prototypes/header10.jpg\",\r\n\"alt\" : \"header Ten\" \r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Bootstrap Carousel Content Full Screen\",\r\n\"image\": \"images/prototypes/carousal1.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Bootstrap Carousel Content Full Width\",\r\n\"image\": \"images/prototypes/carousal2.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Width\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\r\n\"image\": \"images/prototypes/carousal3.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Bootstrap Carousel Content with Navigation\",\r\n\"image\": \"images/prototypes/carousal4.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\r\n\"image\": \"images/prototypes/carousal5.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Banner One\",\r\n\"image\": \"images/prototypes/banner1.jpg\",\r\n\"alt\": \"Banner One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Banner Two\",\r\n\"image\": \"images/prototypes/banner2.jpg\",\r\n\"alt\": \"Banner Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Banner Three\",\r\n\"image\": \"images/prototypes/banner3.jpg\",\r\n\"alt\": \"Banner Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Banner Four\",\r\n\"image\": \"images/prototypes/banner4.jpg\",\r\n\"alt\": \"Banner Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Banner Five\",\r\n\"image\": \"images/prototypes/banner5.jpg\",\r\n\"alt\": \"Banner Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Banner Six\",\r\n\"image\": \"images/prototypes/banner6.jpg\",\r\n\"alt\": \"Banner Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Banner Seven\",\r\n\"image\": \"images/prototypes/banner7.jpg\",\r\n\"alt\": \"Banner Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Banner Eight\",\r\n\"image\": \"images/prototypes/banner8.jpg\",\r\n\"alt\": \"Banner Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Banner Nine\",\r\n\"image\": \"images/prototypes/banner9.jpg\",\r\n\"alt\": \"Banner Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Banner Ten\",\r\n\"image\": \"images/prototypes/banner10.jpg\",\r\n\"alt\": \"Banner Ten\"\r\n},\r\n{\r\n\"id\": 11,\r\n\"name\": \"Banner Eleven\",\r\n\"image\": \"images/prototypes/banner11.jpg\",\r\n\"alt\": \"Banner Eleven\"\r\n},\r\n{\r\n\"id\": 12,\r\n\"name\": \"Banner Twelve\",\r\n\"image\": \"images/prototypes/banner12.jpg\",\r\n\"alt\": \"Banner Twelve\"\r\n},\r\n{\r\n\"id\": 13,\r\n\"name\": \"Banner Thirteen\",\r\n\"image\": \"images/prototypes/banner13.jpg\",\r\n\"alt\": \"Banner Thirteen\"\r\n},\r\n{\r\n\"id\": 14,\r\n\"name\": \"Banner Fourteen\",\r\n\"image\": \"images/prototypes/banner14.jpg\",\r\n\"alt\": \"Banner Fourteen\"\r\n},\r\n{\r\n\"id\": 15,\r\n\"name\": \"Banner Fifteen\",\r\n\"image\": \"images/prototypes/banner15.jpg\",\r\n\"alt\": \"Banner Fifteen\"\r\n},\r\n{\r\n\"id\": 16,\r\n\"name\": \"Banner Sixteen\",\r\n\"image\": \"images/prototypes/banner16.jpg\",\r\n\"alt\": \"Banner Sixteen\"\r\n},\r\n{\r\n\"id\": 17,\r\n\"name\": \"Banner Seventeen\",\r\n\"image\": \"images/prototypes/banner17.jpg\",\r\n\"alt\": \"Banner Seventeen\"\r\n},\r\n{\r\n\"id\": 18,\r\n\"name\": \"Banner Eighteen\",\r\n\"image\": \"images/prototypes/banner18.jpg\",\r\n\"alt\": \"Banner Eighteen\"\r\n},\r\n{\r\n\"id\": 19,\r\n\"name\": \"Banner Nineteen\",\r\n\"image\": \"images/prototypes/banner19.jpg\",\r\n\"alt\": \"Banner Nineteen\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Footer One\",\r\n\"image\": \"images/prototypes/footer1.png\",\r\n\"alt\" : \"Footer One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Footer Two\",\r\n\"image\": \"images/prototypes/footer2.png\",\r\n\"alt\" : \"Footer Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Footer Three\",\r\n\"image\": \"images/prototypes/footer3.png\",\r\n\"alt\" : \"Footer Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Footer Four\",\r\n\"image\": \"images/prototypes/footer4.png\",\r\n\"alt\" : \"Footer Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Footer Five\",\r\n\"image\": \"images/prototypes/footer5.png\",\r\n\"alt\" : \"Footer Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Footer Six\",\r\n\"image\": \"images/prototypes/footer6.png\",\r\n\"alt\" : \"Footer Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Footer Seven\",\r\n\"image\": \"images/prototypes/footer7.png\",\r\n\"alt\" : \"Footer Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Footer Eight\",\r\n\"image\": \"images/prototypes/footer8.png\",\r\n\"alt\" : \"Footer Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Footer Nine\",\r\n\"image\": \"images/prototypes/footer9.png\",\r\n\"alt\" : \"Footer Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Footer Ten\",\r\n\"image\": \"images/prototypes/footer10.png\",\r\n\"alt\" : \"Footer Ten\"\r\n}\r\n]', '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":2,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":4,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":5,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":6,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":7,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":8,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":9,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":10,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":11,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":12,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[ { \"id\":1, \"name\":\"News One\" }, { \"id\":2, \"name\":\"News Two\" } ]', '[  \r\n{  \r\n\"id\":1,\r\n\"name\":\"Product Detail Page One\"\r\n},\r\n{  \r\n\"id\":2,\r\n\"name\":\"Product Detail Page Two\"\r\n},\r\n{  \r\n\"id\":3,\r\n\"name\":\"Product Detail Page Three\"\r\n},\r\n{  \r\n\"id\":4,\r\n\"name\":\"Product Detail Page Four\"\r\n},\r\n{  \r\n\"id\":5,\r\n\"name\":\"Product Detail Page Five\"\r\n},\r\n{  \r\n\"id\":6,\r\n\"name\":\"Product Detail Page Six\"\r\n}\r\n\r\n]', '[ { \"id\":1, \"name\":\"Shop Page One\" }, { \"id\":2, \"name\":\"Shop Page Two\" }, { \"id\":3, \"name\":\"Shop Page Three\" }, { \"id\":4, \"name\":\"Shop Page Four\" }, { \"id\":5, \"name\":\"Shop Page Five\" } ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `home_banners_id` int(100) NOT NULL,
  `banner_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL DEFAULT '1',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`home_banners_id`, `banner_name`, `language_id`, `text`, `image`, `created_at`, `updated_at`) VALUES
(0, 'banners_1', 1, '<div class=\\\"row\\\">\r\n								<div class=\\\"col-md-5\\\">\r\n								</div>\r\n								<div class=\\\"col-md-6\\\">\r\n									<h1>Win</h1>\r\n									<h3>Apple Iphone 12</h3>\r\n									<p>Buy our product &amp; make Iphone 12 yours!</p>\r\n									<a href=\\\"javascript:;\\\" class=\\\"btn\\\"><span>Details</span></a>\r\n								</div>\r\n							</div>', 628, '2021-05-24 01:41:41', '2021-05-24 01:41:41'),
(0, 'banners_2', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> TRENDING</h2>\r\n        <h4>Fashion Wear</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 12, '2021-05-24 01:41:41', '2021-05-24 01:41:41'),
(0, 'banners_3', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> BIG SALE</h2>\r\n        <h4>Women Clothing</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"Shop Now\\\">Shop Now</a>\r\n        </div>  \r\n      </div>', 539, '2021-05-24 01:41:41', '2021-05-24 01:41:41'),
(0, 'banners_1', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 13, '2020-04-02 15:51:35', '2020-04-02 15:51:35'),
(0, 'banners_2', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 12, '2020-04-02 15:51:35', '2020-04-02 15:51:35'),
(0, 'banners_3', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 539, '2020-04-02 15:51:35', '2020-04-02 15:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

CREATE TABLE `http_call_record` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'IbHQO10809.jpg', 1, NULL, NULL, NULL),
(3, 'XUF1110211.png', 1, NULL, NULL, NULL),
(4, '0S9Uj10711.png', 1, NULL, NULL, NULL),
(5, '49YbL10411.png', 1, NULL, NULL, NULL),
(6, 'CaFTE08806.png', 1, NULL, NULL, NULL),
(7, 'VMd4l08506.png', 1, NULL, NULL, NULL),
(8, 'VYuRY08406.png', 1, NULL, NULL, NULL),
(9, '6whCt08506.jpg', 1, NULL, NULL, NULL),
(10, 'WJUPV08506.jpg', 1, NULL, NULL, NULL),
(11, 'e7eWv08306.jpg', 1, NULL, NULL, NULL),
(12, 'Yit5K08206.jpg', 1, NULL, NULL, NULL),
(13, 'btHwa08706.jpg', 1, NULL, NULL, NULL),
(14, 'YMYem08206.jpg', 1, NULL, NULL, NULL),
(15, 'UGx6208106.jpg', 1, NULL, NULL, NULL),
(16, 'bxnJY08206.jpg', 1, NULL, NULL, NULL),
(17, 'Lzysd08606.jpg', 1, NULL, NULL, NULL),
(18, 'iOCyM08406.jpg', 1, NULL, NULL, NULL),
(19, 'nKtCS10408.jpg', 1, NULL, NULL, NULL),
(20, '1rpGI10408.jpg', 1, NULL, NULL, NULL),
(21, 'fuZZQ10908.jpg', 1, NULL, NULL, NULL),
(22, 'nFwns10208.jpg', 1, NULL, NULL, NULL),
(23, 'S7egL10508.jpg', 1, NULL, NULL, NULL),
(24, '6HK8810808.jpg', 1, NULL, NULL, NULL),
(25, 'lHhLc10508.jpg', 1, NULL, NULL, NULL),
(26, 'FAQXJ10808.jpg', 1, NULL, NULL, NULL),
(27, 'qeaXb10708.jpg', 1, NULL, NULL, NULL),
(28, 'pc7OR10108.jpg', 1, NULL, NULL, NULL),
(29, '4iGAB10408.jpg', 1, NULL, NULL, NULL),
(30, 'MImPw10908.jpg', 1, NULL, NULL, NULL),
(31, 'X2FFc10408.jpg', 1, NULL, NULL, NULL),
(32, 'RDy6w10209.jpg', 1, NULL, NULL, NULL),
(33, 'BD0pB10609.jpg', 1, NULL, NULL, NULL),
(34, 'TiZmT10609.jpg', 1, NULL, NULL, NULL),
(35, 'gvSzZ10609.jpg', 1, NULL, NULL, NULL),
(36, 'ZskKH10209.jpg', 1, NULL, NULL, NULL),
(37, 'HHMIU10209.jpg', 1, NULL, NULL, NULL),
(38, 'i6m8Y10109.jpg', 1, NULL, NULL, NULL),
(39, 'G5JbM10109.jpg', 1, NULL, NULL, NULL),
(40, 'lDYLZ10109.jpg', 1, NULL, NULL, NULL),
(41, 'a9gid10810.jpg', 1, NULL, NULL, NULL),
(42, 'FBsl810310.jpg', 1, NULL, NULL, NULL),
(43, 'TQHh910310.jpg', 1, NULL, NULL, NULL),
(44, 'KdvHm10610.jpg', 1, NULL, NULL, NULL),
(45, 'CSPTw10810.jpg', 1, NULL, NULL, NULL),
(46, 'w1bCe10710.jpg', 1, NULL, NULL, NULL),
(47, 'Jn03g10811.jpg', 1, NULL, NULL, NULL),
(48, 'UD1eE10411.jpg', 1, NULL, NULL, NULL),
(49, 'nFx9F10711.jpg', 1, NULL, NULL, NULL),
(50, 'ZKyEe10811.jpg', 1, NULL, NULL, NULL),
(51, 'YVab810211.jpg', 1, NULL, NULL, NULL),
(52, 'UJELm10511.jpg', 1, NULL, NULL, NULL),
(53, 'JrqCh10411.jpg', 1, NULL, NULL, NULL),
(54, 'gwULS10411.jpg', 1, NULL, NULL, NULL),
(55, 'PWvbj10711.jpg', 1, NULL, NULL, NULL),
(56, 'mU1fw10111.jpg', 1, NULL, NULL, NULL),
(57, 'sUXLY10711.jpg', 1, NULL, NULL, NULL),
(58, 't2tHr10911.jpg', 1, NULL, NULL, NULL),
(59, 'grG9M10611.jpg', 1, NULL, NULL, NULL),
(60, 'nCUtL10811.jpg', 1, NULL, NULL, NULL),
(61, 'Im3MP10612.jpg', 1, NULL, NULL, NULL),
(62, 'L2KRw10412.jpg', 1, NULL, NULL, NULL),
(63, 'bfwnd10612.jpg', 1, NULL, NULL, NULL),
(64, 'ZGVQ310912.png', 1, NULL, NULL, NULL),
(65, 'IVJos10612.png', 1, NULL, NULL, NULL),
(66, 'K0RzI10912.png', 1, NULL, NULL, NULL),
(67, 'GMndX10212.png', 1, NULL, NULL, NULL),
(68, '92UoU10912.png', 1, NULL, NULL, NULL),
(69, 'R913310312.png', 1, NULL, NULL, NULL),
(70, 'Sq0yK10912.png', 1, NULL, NULL, NULL),
(71, 'Ytqae10412.png', 1, NULL, NULL, NULL),
(72, 'A0KBI10412.png', 1, NULL, NULL, NULL),
(73, 'f5l5x10612.png', 1, NULL, NULL, NULL),
(74, 'T5v1s10612.png', 1, NULL, NULL, NULL),
(75, 'nyisU10112.png', 1, NULL, NULL, NULL),
(76, 'UioPp10612.png', 1, NULL, NULL, NULL),
(77, 'Xx8nL10712.png', 1, NULL, NULL, NULL),
(78, 'iKgxC10712.png', 1, NULL, NULL, NULL),
(79, 'IocF910112.png', 1, NULL, NULL, NULL),
(80, 'X3byA10112.png', 1, NULL, NULL, NULL),
(81, '1o0wF10812.png', 1, NULL, NULL, NULL),
(82, 'VODK910712.png', 1, NULL, NULL, NULL),
(257, 'A1S9C19708.png', 1, NULL, NULL, NULL),
(258, 'IhmdY19708.jpg', 1, NULL, NULL, NULL),
(259, '20nV819208.png', 1, NULL, NULL, NULL),
(260, '3DDqm19808.jpg', 1, NULL, NULL, NULL),
(261, 'Ma53619508.png', 1, NULL, NULL, NULL),
(262, '1N5lx19108.jpg', 1, NULL, NULL, NULL),
(263, 'm67vJ19608.jpg', 1, NULL, NULL, NULL),
(264, 'onxBS19208.png', 1, NULL, NULL, NULL),
(265, 'Epkb419908.png', 1, NULL, NULL, NULL),
(266, 'yq7Uj19908.jpg', 1, NULL, NULL, NULL),
(267, '4Cg3c19608.png', 1, NULL, NULL, NULL),
(268, 'cXJMf19808.jpg', 1, NULL, NULL, NULL),
(269, '0hsWz19508.png', 1, NULL, NULL, NULL),
(270, '0PIiD19808.jpg', 1, NULL, NULL, NULL),
(271, 'ldLJf19208.png', 1, NULL, NULL, NULL),
(272, 'jRHM719108.jpg', 1, NULL, NULL, NULL),
(273, 'I1gzM19408.png', 1, NULL, NULL, NULL),
(274, 'JCyV619708.jpg', 1, NULL, NULL, NULL),
(275, 'HVCxT19108.png', 1, NULL, NULL, NULL),
(276, 'PLELY19408.jpg', 1, NULL, NULL, NULL),
(277, 'BoeDL19408.png', 1, NULL, NULL, NULL),
(278, 'CLmuf19708.jpg', 1, NULL, NULL, NULL),
(279, 'ZVy6T19808.jpg', 1, NULL, NULL, NULL),
(280, 'wYb7s19908.png', 1, NULL, NULL, NULL),
(281, 'XdnOS19308.png', 1, NULL, NULL, NULL),
(282, 'jdXhv19208.jpg', 1, NULL, NULL, NULL),
(283, '4LFTq19608.png', 1, NULL, NULL, NULL),
(284, 'KbJoX19608.jpg', 1, NULL, NULL, NULL),
(285, '3YJgr19308.png', 1, NULL, NULL, NULL),
(286, 'sDlxw19408.jpg', 1, NULL, NULL, NULL),
(287, 'LXeLb19908.jpg', 1, NULL, NULL, NULL),
(288, 'uhwNl19708.jpg', 1, NULL, NULL, NULL),
(289, 'A8tpH19408.jpg', 1, NULL, NULL, NULL),
(290, 'i0ux819508.jpg', 1, NULL, NULL, NULL),
(291, 'WqoFo19208.jpg', 1, NULL, NULL, NULL),
(292, 'AHbI419308.jpg', 1, NULL, NULL, NULL),
(293, 'a455C19308.jpg', 1, NULL, NULL, NULL),
(294, 'wPXR419508.jpg', 1, NULL, NULL, NULL),
(295, 'yiOVx19908.jpg', 1, NULL, NULL, NULL),
(296, 'xoOJv19608.jpg', 1, NULL, NULL, NULL),
(297, 'MfQ4H19108.jpg', 1, NULL, NULL, NULL),
(298, 'Ldxgn19609.jpg', 1, NULL, NULL, NULL),
(299, 'EH8cD19409.jpg', 1, NULL, NULL, NULL),
(300, '9j0ay19709.jpg', 1, NULL, NULL, NULL),
(301, 'pCDlz19109.jpg', 1, NULL, NULL, NULL),
(302, '9xygZ19809.jpg', 1, NULL, NULL, NULL),
(303, 'DSMOD19709.jpg', 1, NULL, NULL, NULL),
(304, 'ORnu519309.jpg', 1, NULL, NULL, NULL),
(305, 'aOtwc19909.jpg', 1, NULL, NULL, NULL),
(306, '6YsTj19909.jpg', 1, NULL, NULL, NULL),
(307, 'mXDLS19409.jpg', 1, NULL, NULL, NULL),
(308, 'OT0oU19309.jpg', 1, NULL, NULL, NULL),
(309, 'dgrQM19109.jpg', 1, NULL, NULL, NULL),
(310, 'pwD0319609.jpg', 1, NULL, NULL, NULL),
(311, 'toR1u19909.jpg', 1, NULL, NULL, NULL),
(312, 'DkrSs19810.jpg', 1, NULL, NULL, NULL),
(313, 'g6Owy19810.jpg', 1, NULL, NULL, NULL),
(314, 'KnBr519710.jpg', 1, NULL, NULL, NULL),
(315, 'TWvJK19410.jpg', 1, NULL, NULL, NULL),
(316, '7LsVG19310.jpg', 1, NULL, NULL, NULL),
(317, 'YLMOh19210.jpg', 1, NULL, NULL, NULL),
(318, '0kXac19210.jpg', 1, NULL, NULL, NULL),
(319, 'tJqpf19810.jpg', 1, NULL, NULL, NULL),
(320, 'WCd6y19910.jpg', 1, NULL, NULL, NULL),
(321, 'O4Zbk19710.jpg', 1, NULL, NULL, NULL),
(322, 'JUSJa19210.jpg', 1, NULL, NULL, NULL),
(323, 'n4Gmy19810.jpg', 1, NULL, NULL, NULL),
(324, '8mjRf19210.jpg', 1, NULL, NULL, NULL),
(325, 'I4Pux19210.jpg', 1, NULL, NULL, NULL),
(326, '0sKGd19310.jpg', 1, NULL, NULL, NULL),
(327, 'l1xuY19110.jpg', 1, NULL, NULL, NULL),
(328, '9LpEr19110.jpg', 1, NULL, NULL, NULL),
(329, 'nsvRx19410.jpg', 1, NULL, NULL, NULL),
(330, '7n3HJ19410.jpg', 1, NULL, NULL, NULL),
(331, 'vx6QW19610.jpg', 1, NULL, NULL, NULL),
(332, 'e8tKu19210.jpg', 1, NULL, NULL, NULL),
(333, 'iDMNz19310.jpg', 1, NULL, NULL, NULL),
(334, 'doDBr19210.jpg', 1, NULL, NULL, NULL),
(335, 'b4lEc19910.jpg', 1, NULL, NULL, NULL),
(336, 'Xwlth19610.jpg', 1, NULL, NULL, NULL),
(337, 'luQnk19210.jpg', 1, NULL, NULL, NULL),
(338, '6h8UU19710.jpg', 1, NULL, NULL, NULL),
(339, 'viEGg19911.jpg', 1, NULL, NULL, NULL),
(340, '2Ggn319911.jpg', 1, NULL, NULL, NULL),
(341, 'm0yNj19911.jpg', 1, NULL, NULL, NULL),
(342, 'Dzd2519111.jpg', 1, NULL, NULL, NULL),
(343, '1ig7319811.jpg', 1, NULL, NULL, NULL),
(344, 'iTQ7j19211.jpg', 1, NULL, NULL, NULL),
(345, 'TSTeu19611.jpg', 1, NULL, NULL, NULL),
(346, '72L9l19911.jpg', 1, NULL, NULL, NULL),
(347, 'mWix319411.jpg', 1, NULL, NULL, NULL),
(348, 'hi3PN19511.jpg', 1, NULL, NULL, NULL),
(349, 'i8sDd19911.jpg', 1, NULL, NULL, NULL),
(350, 'phUDg19511.jpg', 1, NULL, NULL, NULL),
(351, '3jHHY19511.jpg', 1, NULL, NULL, NULL),
(352, '9fyvN19411.jpg', 1, NULL, NULL, NULL),
(353, 'HxGza19611.jpg', 1, NULL, NULL, NULL),
(354, 'nJ44l19411.jpg', 1, NULL, NULL, NULL),
(355, 'nQlqE19511.jpg', 1, NULL, NULL, NULL),
(356, 'swNSy19911.jpg', 1, NULL, NULL, NULL),
(357, 'sMdMm19611.jpg', 1, NULL, NULL, NULL),
(358, 'mr5Yt19211.jpg', 1, NULL, NULL, NULL),
(359, 'cbPj519211.jpg', 1, NULL, NULL, NULL),
(360, 'csgAQ19111.jpg', 1, NULL, NULL, NULL),
(361, 'rfEnb19911.jpg', 1, NULL, NULL, NULL),
(362, '52rY219211.jpg', 1, NULL, NULL, NULL),
(363, 'YvzxH19111.jpg', 1, NULL, NULL, NULL),
(364, '36jAr19511.jpg', 1, NULL, NULL, NULL),
(365, '0Ygma19611.jpg', 1, NULL, NULL, NULL),
(366, 'z3bmL19111.jpg', 1, NULL, NULL, NULL),
(367, 'yPQ6h19111.jpg', 1, NULL, NULL, NULL),
(368, 'I8Kak19711.jpg', 1, NULL, NULL, NULL),
(369, '3P1Yv19211.jpg', 1, NULL, NULL, NULL),
(370, 'FMst219511.jpg', 1, NULL, NULL, NULL),
(371, 'MwDiB19411.jpg', 1, NULL, NULL, NULL),
(372, 'T5YSn19111.jpg', 1, NULL, NULL, NULL),
(373, 'XxPsZ19411.jpg', 1, NULL, NULL, NULL),
(374, 'FCnb919311.jpg', 1, NULL, NULL, NULL),
(375, 'j7Tq119211.jpg', 1, NULL, NULL, NULL),
(376, '2WDAU19811.jpg', 1, NULL, NULL, NULL),
(377, 'JoP4W19611.jpg', 1, NULL, NULL, NULL),
(378, '3MBuE19511.jpg', 1, NULL, NULL, NULL),
(379, '3Z4tF19611.jpg', 1, NULL, NULL, NULL),
(380, 'boehz19211.jpg', 1, NULL, NULL, NULL),
(381, 'nb2iB19311.jpg', 1, NULL, NULL, NULL),
(382, 'N9rcj19811.jpg', 1, NULL, NULL, NULL),
(383, 'qbKF719611.jpg', 1, NULL, NULL, NULL),
(384, 'J2XYc19411.jpg', 1, NULL, NULL, NULL),
(385, 'OAQ7919311.jpg', 1, NULL, NULL, NULL),
(386, 'AHkbG19811.jpg', 1, NULL, NULL, NULL),
(387, 'LRiDA19411.jpg', 1, NULL, NULL, NULL),
(388, 'QWlDN19611.jpg', 1, NULL, NULL, NULL),
(389, 'VEodV19811.jpg', 1, NULL, NULL, NULL),
(390, 'mjyBU19111.jpg', 1, NULL, NULL, NULL),
(391, 'QL8Lj19911.jpg', 1, NULL, NULL, NULL),
(392, 'Ticne19811.jpg', 1, NULL, NULL, NULL),
(393, '1sjR619111.jpg', 1, NULL, NULL, NULL),
(394, 'cv1rs19611.jpg', 1, NULL, NULL, NULL),
(395, 'MVmBl19211.jpg', 1, NULL, NULL, NULL),
(396, 'TLetF19511.jpg', 1, NULL, NULL, NULL),
(397, 'XMnpu19311.jpg', 1, NULL, NULL, NULL),
(398, 'WbV9019511.jpg', 1, NULL, NULL, NULL),
(399, 'U01j519111.jpg', 1, NULL, NULL, NULL),
(400, 'AEP0C19311.jpg', 1, NULL, NULL, NULL),
(401, 'n9FE219911.jpg', 1, NULL, NULL, NULL),
(402, 'CEOYM19611.jpg', 1, NULL, NULL, NULL),
(403, 'VHCwl19811.jpg', 1, NULL, NULL, NULL),
(404, 'dMNk819711.jpg', 1, NULL, NULL, NULL),
(405, '64a7R19711.jpg', 1, NULL, NULL, NULL),
(406, 'v3tvW19111.jpg', 1, NULL, NULL, NULL),
(407, '5PC3y19811.jpg', 1, NULL, NULL, NULL),
(408, 'U3hD619711.jpg', 1, NULL, NULL, NULL),
(409, 'EbCku19411.jpg', 1, NULL, NULL, NULL),
(410, 'kWSbk19511.jpg', 1, NULL, NULL, NULL),
(411, 'LIhLe19311.jpg', 1, NULL, NULL, NULL),
(412, 'K7HHF19111.jpg', 1, NULL, NULL, NULL),
(413, '4sd9A19111.jpg', 1, NULL, NULL, NULL),
(414, 'HmhjH19711.jpg', 1, NULL, NULL, NULL),
(415, 'lCzZV19811.jpg', 1, NULL, NULL, NULL),
(416, 'MgCKq19711.jpg', 1, NULL, NULL, NULL),
(417, 'ol2sB24311.jpg', 1, NULL, NULL, NULL),
(418, 'NySmM24311.jpg', 1, NULL, NULL, NULL),
(419, '5xN6v24411.jpg', 1, NULL, NULL, NULL),
(420, 'CWYQi24511.jpg', 1, NULL, NULL, NULL),
(421, 'laefk24511.jpg', 1, NULL, NULL, NULL),
(422, '6ykQ424511.jpg', 1, NULL, NULL, NULL),
(423, 'BAG2K24312.jpg', 1, NULL, NULL, NULL),
(424, 'wG9GE24612.jpg', 1, NULL, NULL, NULL),
(425, 'iRgnE25611.png', 1, NULL, NULL, NULL),
(426, 'ifpU725811.jpg', 1, NULL, NULL, NULL),
(427, 'rzdmu25612.png', 1, NULL, NULL, NULL),
(428, 'uNZd125612.png', 1, NULL, NULL, NULL),
(430, 'blSUS27710.jpg', 1, NULL, NULL, NULL),
(431, 'vURED27710.jpg', 1, NULL, NULL, NULL),
(432, 'Ft15D27610.jpg', 1, NULL, NULL, NULL),
(433, 'ILNqR27110.jpg', 1, NULL, NULL, NULL),
(434, 'oSENw27310.jpg', 1, NULL, NULL, NULL),
(435, 'g96za27410.jpg', 1, NULL, NULL, NULL),
(436, 'yVA2Q27110.jpg', 1, NULL, NULL, NULL),
(437, 'vDsMN27610.jpg', 1, NULL, NULL, NULL),
(438, 'rL6XQ27310.jpg', 1, NULL, NULL, NULL),
(439, 'A1s7V27110.jpg', 1, NULL, NULL, NULL),
(440, 'mo6Yk27410.jpg', 1, NULL, NULL, NULL),
(441, 'cUhfM27110.jpg', 1, NULL, NULL, NULL),
(442, '8EBLr27610.jpg', 1, NULL, NULL, NULL),
(443, 'c449I27810.jpg', 1, NULL, NULL, NULL),
(444, 'reUJM27310.jpg', 1, NULL, NULL, NULL),
(445, 'ciRFe27710.jpg', 1, NULL, NULL, NULL),
(446, '2nx0h27410.jpg', 1, NULL, NULL, NULL),
(447, 'CLA2s27610.jpg', 1, NULL, NULL, NULL),
(448, 'qotAc27710.jpg', 1, NULL, NULL, NULL),
(449, 'souUX27810.jpg', 1, NULL, NULL, NULL),
(450, 'z3Qtc27512.png', 1, NULL, NULL, NULL),
(451, 'y74yW01108.jpg', 1, NULL, NULL, NULL),
(452, 'gTr9301908.jpg', 1, NULL, NULL, NULL),
(453, '4A9AD01801.jpg', 1, NULL, NULL, NULL),
(454, 'ZPmjN01301.jpg', 1, NULL, NULL, NULL),
(455, 'ypwlO01601.jpg', 1, NULL, NULL, NULL),
(456, 'YAaqM01901.jpg', 1, NULL, NULL, NULL),
(457, 'LTvGM01301.jpg', 1, NULL, NULL, NULL),
(458, '8zBL302407.png', 1, NULL, NULL, NULL),
(459, 'kzLG219201.jpg', 1, NULL, NULL, NULL),
(460, '4wDb519601.jpg', 1, NULL, NULL, NULL),
(461, 'roLuh19801.jpg', 1, NULL, NULL, NULL),
(462, '7OI5e19501.jpg', 1, NULL, NULL, NULL),
(463, 'SHVFB19501.jpg', 1, NULL, NULL, NULL),
(464, 'dn1K219901.jpg', 1, NULL, NULL, NULL),
(495, 'jzm9Z19603.jpg', 1, NULL, NULL, NULL),
(494, 'JiDWS19303.jpg', 1, NULL, NULL, NULL),
(493, 'VXmx319303.jpg', 1, NULL, NULL, NULL),
(492, '7zlLI19903.jpg', 1, NULL, NULL, NULL),
(491, 'U361f19603.jpg', 1, NULL, NULL, NULL),
(490, 'IjJ4x19202.jpg', 1, NULL, NULL, NULL),
(489, 'aqK6Q19402.jpg', 1, NULL, NULL, NULL),
(488, 'Apd1i19902.jpg', 1, NULL, NULL, NULL),
(487, 'e8Uh519302.jpg', 1, NULL, NULL, NULL),
(486, 'sQWL719202.jpg', 1, NULL, NULL, NULL),
(485, 'i0UZO19402.jpg', 1, NULL, NULL, NULL),
(484, 'gt4aI19102.jpg', 1, NULL, NULL, NULL),
(483, 'RE0II19402.jpg', 1, NULL, NULL, NULL),
(496, 'ZGQzk20811.jpg', 1, NULL, NULL, NULL),
(497, 'NpNrm20611.jpg', 1, NULL, NULL, NULL),
(498, 'XPgIC20911.jpg', 1, NULL, NULL, NULL),
(499, 'VmtxP20911.jpg', 1, NULL, NULL, NULL),
(500, 'QAdqa20111.jpg', 1, NULL, NULL, NULL),
(501, 'wQGHA20911.jpg', 1, NULL, NULL, NULL),
(502, 'R0yLD20611.jpg', 1, NULL, NULL, NULL),
(503, 'GKLNM20111.jpg', 1, NULL, NULL, NULL),
(504, 'zm4sn20811.jpg', 1, NULL, NULL, NULL),
(505, 'ug42t20411.jpg', 1, NULL, NULL, NULL),
(506, '21hNs20511.jpg', 1, NULL, NULL, NULL),
(507, 'cgm7r20911.jpg', 1, NULL, NULL, NULL),
(508, 'BdrR320111.jpg', 1, NULL, NULL, NULL),
(509, '228jM20511.jpg', 1, NULL, NULL, NULL),
(510, 'L1lXk20111.jpg', 1, NULL, NULL, NULL),
(511, 'GrSV020311.jpg', 1, NULL, NULL, NULL),
(512, 'gOyKf20211.jpg', 1, NULL, NULL, NULL),
(513, 'fj2pW20711.jpg', 1, NULL, NULL, NULL),
(514, '8pXSd20211.jpg', 1, NULL, NULL, NULL),
(515, 'dMGvd20411.jpg', 1, NULL, NULL, NULL),
(516, '6DbzH20711.jpg', 1, NULL, NULL, NULL),
(517, '2lM7y20211.jpg', 1, NULL, NULL, NULL),
(518, 'kgVrx20811.jpg', 1, NULL, NULL, NULL),
(519, 'XCslh20311.jpg', 1, NULL, NULL, NULL),
(520, '9dgQ020511.jpg', 1, NULL, NULL, NULL),
(521, 'pZ1bH20411.jpg', 1, NULL, NULL, NULL),
(522, 'xl9k720411.jpg', 1, NULL, NULL, NULL),
(523, '7cNGq20711.jpg', 1, NULL, NULL, NULL),
(524, 'qcLGW20311.jpg', 1, NULL, NULL, NULL),
(525, 'uatVd20111.jpg', 1, NULL, NULL, NULL),
(526, '2segQ20911.jpg', 1, NULL, NULL, NULL),
(527, 'dbzAF20511.jpg', 1, NULL, NULL, NULL),
(528, 'ruFRW20511.jpg', 1, NULL, NULL, NULL),
(529, '8qJMb20712.jpg', 1, NULL, NULL, NULL),
(530, '4kD3S20412.jpg', 1, NULL, NULL, NULL),
(531, 'FbFX320512.jpg', 1, NULL, NULL, NULL),
(532, 'xv5F720212.jpg', 1, NULL, NULL, NULL),
(533, 'WDeDC20512.jpg', 1, NULL, NULL, NULL),
(534, '287xt20312.jpg', 1, NULL, NULL, NULL),
(629, 'PprAB30305.png', 3, NULL, NULL, NULL),
(671, 'lVOpd08802.jpg', 3, NULL, NULL, NULL),
(538, 'FuDHg25712.png', 1, NULL, NULL, NULL),
(539, '5t74g02911.jpg', 1, NULL, NULL, NULL),
(540, 'oMhJn01412.jpg', 1, NULL, NULL, NULL),
(541, 'ejEki01112.jpg', 1, NULL, NULL, NULL),
(542, '4vQ4P01812.jpg', 1, NULL, NULL, NULL),
(543, 'fhaJj01512.jpg', 1, NULL, NULL, NULL),
(673, 'gr7x324411.jpg', 3, NULL, NULL, NULL),
(675, 'yW6nx24111.jpg', 3, NULL, NULL, NULL),
(548, 'SPrKV15810.png', 1, NULL, NULL, NULL),
(549, 'd9LiP15910.png', 1, NULL, NULL, NULL),
(550, 'Bkudy15110.png', 1, NULL, NULL, NULL),
(630, 'h4A9x30205.jpg', 3, NULL, NULL, NULL),
(631, 'LDAEh30405.jpg', 3, NULL, NULL, NULL),
(632, '9ahXv30905.png', 3, NULL, NULL, NULL),
(633, 'aShfw30205.png', 3, NULL, NULL, NULL),
(634, 'PUpyg30605.jpg', 3, NULL, NULL, NULL),
(635, 'nxu4D30405.png', 3, NULL, NULL, NULL),
(649, 'Dxtr228907.png', 3, NULL, NULL, NULL),
(637, 'HvB3h30905.png', 3, NULL, NULL, NULL),
(638, 'hbue030405.png', 3, NULL, NULL, NULL),
(639, 'HXJpD30805.png', 3, NULL, NULL, NULL),
(650, 'yjwn328807.png', 3, NULL, NULL, NULL),
(566, 'M0stn02709.jpg', 3, NULL, NULL, NULL),
(570, 'IzIjT18612.jpg', 3, NULL, NULL, NULL),
(627, 'ewfXD24212.png', 3, NULL, NULL, NULL),
(628, 'OSUZI24106.jpg', 3, NULL, NULL, NULL),
(641, 'KeVGZ30305.png', 3, NULL, NULL, NULL),
(642, 'p53KU30905.png', 3, NULL, NULL, NULL),
(643, 'GAbT930705.png', 3, NULL, NULL, NULL),
(644, 'eASsh30905.png', 3, NULL, NULL, NULL),
(645, 'Ne7Vg30605.png', 3, NULL, NULL, NULL),
(646, 'ZGTCm30705.png', 3, NULL, NULL, NULL),
(647, 'coYnP31909.png', 3, NULL, NULL, NULL),
(648, 'j2u0g31509.png', 3, NULL, NULL, NULL),
(651, 'L26Aq28307.png', 3, NULL, NULL, NULL),
(652, 'nQ7xm28207.png', 3, NULL, NULL, NULL),
(653, 'qMaId28407.png', 3, NULL, NULL, NULL),
(654, 'Ti0e828907.png', 3, NULL, NULL, NULL),
(655, 'hWkh401912.png', 3, NULL, NULL, NULL),
(664, 'CaTF606503.jpg', 3, NULL, NULL, NULL),
(665, 'ZagNy06503.jpg', 3, NULL, NULL, NULL),
(666, 'Zr1nw06103.jpg', 3, NULL, NULL, NULL),
(672, 'JUuFx24310.jpg', 3, NULL, NULL, NULL),
(668, 'YP20406903.jpg', 3, NULL, NULL, NULL),
(663, 'tVllU05905.png', 3, NULL, NULL, NULL),
(669, 'I5ZTI06703.jpg', 3, NULL, NULL, NULL),
(670, 'UY3aH06303.jpg', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, 'ACTUAL', 20, 30, 'images/media/2019/06/IbHQO10809.jpg', NULL, NULL),
(7, 6, 'ACTUAL', 273, 240, 'images/media/2019/09/CaFTE08806.png', NULL, NULL),
(8, 7, 'ACTUAL', 64, 64, 'images/media/2019/09/VMd4l08506.png', NULL, NULL),
(9, 8, 'ACTUAL', 164, 161, 'images/media/2019/09/VYuRY08406.png', NULL, NULL),
(10, 9, 'ACTUAL', 277, 370, 'images/media/2019/09/6whCt08506.jpg', NULL, NULL),
(11, 10, 'ACTUAL', 277, 370, 'images/media/2019/09/WJUPV08506.jpg', NULL, NULL),
(12, 11, 'ACTUAL', 278, 370, 'images/media/2019/09/e7eWv08306.jpg', NULL, NULL),
(13, 12, 'ACTUAL', 430, 1599, 'images/media/2019/09/Yit5K08206.jpg', NULL, NULL),
(14, 13, 'ACTUAL', 236, 1171, 'images/media/2019/09/btHwa08706.jpg', NULL, NULL),
(15, 14, 'ACTUAL', 177, 369, 'images/media/2019/09/YMYem08206.jpg', NULL, NULL),
(16, 15, 'ACTUAL', 179, 369, 'images/media/2019/09/UGx6208106.jpg', NULL, NULL),
(17, 16, 'ACTUAL', 418, 833, 'images/media/2019/09/bxnJY08206.jpg', NULL, NULL),
(18, 17, 'ACTUAL', 418, 834, 'images/media/2019/09/Lzysd08606.jpg', NULL, NULL),
(19, 18, 'ACTUAL', 418, 834, 'images/media/2019/09/iOCyM08406.jpg', NULL, NULL),
(20, 19, 'ACTUAL', 425, 1600, 'images/media/2019/09/nKtCS10408.jpg', NULL, NULL),
(21, 20, 'ACTUAL', 425, 1600, 'images/media/2019/09/1rpGI10408.jpg', NULL, NULL),
(22, 21, 'ACTUAL', 425, 1600, 'images/media/2019/09/fuZZQ10908.jpg', NULL, NULL),
(23, 22, 'ACTUAL', 421, 1170, 'images/media/2019/09/nFwns10208.jpg', NULL, NULL),
(24, 23, 'ACTUAL', 421, 1170, 'images/media/2019/09/S7egL10508.jpg', NULL, NULL),
(25, 24, 'ACTUAL', 421, 1170, 'images/media/2019/09/6HK8810808.jpg', NULL, NULL),
(26, 25, 'ACTUAL', 418, 833, 'images/media/2019/09/lHhLc10508.jpg', NULL, NULL),
(27, 26, 'ACTUAL', 418, 834, 'images/media/2019/09/FAQXJ10808.jpg', NULL, NULL),
(28, 27, 'ACTUAL', 418, 834, 'images/media/2019/09/qeaXb10708.jpg', NULL, NULL),
(29, 28, 'ACTUAL', 298, 769, 'images/media/2019/09/pc7OR10108.jpg', NULL, NULL),
(30, 29, 'ACTUAL', 548, 370, 'images/media/2019/09/4iGAB10408.jpg', NULL, NULL),
(31, 30, 'ACTUAL', 217, 366, 'images/media/2019/09/MImPw10908.jpg', NULL, NULL),
(32, 31, 'ACTUAL', 217, 366, 'images/media/2019/09/X2FFc10408.jpg', NULL, NULL),
(33, 32, 'ACTUAL', 228, 269, 'images/media/2019/09/RDy6w10209.jpg', NULL, NULL),
(34, 33, 'ACTUAL', 228, 269, 'images/media/2019/09/BD0pB10609.jpg', NULL, NULL),
(35, 34, 'ACTUAL', 228, 268, 'images/media/2019/09/TiZmT10609.jpg', NULL, NULL),
(36, 35, 'ACTUAL', 229, 269, 'images/media/2019/09/gvSzZ10609.jpg', NULL, NULL),
(37, 36, 'ACTUAL', 489, 569, 'images/media/2019/09/ZskKH10209.jpg', NULL, NULL),
(38, 37, 'ACTUAL', 211, 270, 'images/media/2019/09/HHMIU10209.jpg', NULL, NULL),
(39, 38, 'ACTUAL', 452, 571, 'images/media/2019/09/i6m8Y10109.jpg', NULL, NULL),
(40, 39, 'ACTUAL', 211, 270, 'images/media/2019/09/G5JbM10109.jpg', NULL, NULL),
(41, 40, 'ACTUAL', 211, 570, 'images/media/2019/09/lDYLZ10109.jpg', NULL, NULL),
(42, 41, 'ACTUAL', 297, 568, 'images/media/2019/09/a9gid10810.jpg', NULL, NULL),
(43, 42, 'ACTUAL', 298, 567, 'images/media/2019/09/FBsl810310.jpg', NULL, NULL),
(44, 43, 'ACTUAL', 211, 270, 'images/media/2019/09/TQHh910310.jpg', NULL, NULL),
(45, 44, 'ACTUAL', 451, 570, 'images/media/2019/09/KdvHm10610.jpg', NULL, NULL),
(46, 45, 'ACTUAL', 210, 270, 'images/media/2019/09/CSPTw10810.jpg', NULL, NULL),
(47, 46, 'ACTUAL', 451, 270, 'images/media/2019/09/w1bCe10710.jpg', NULL, NULL),
(48, 47, 'ACTUAL', 490, 370, 'images/media/2019/09/Jn03g10811.jpg', NULL, NULL),
(49, 48, 'ACTUAL', 230, 370, 'images/media/2019/09/UD1eE10411.jpg', NULL, NULL),
(50, 49, 'ACTUAL', 230, 370, 'images/media/2019/09/nFx9F10711.jpg', NULL, NULL),
(51, 50, 'ACTUAL', 230, 370, 'images/media/2019/09/ZKyEe10811.jpg', NULL, NULL),
(52, 51, 'ACTUAL', 230, 370, 'images/media/2019/09/YVab810211.jpg', NULL, NULL),
(53, 52, 'ACTUAL', 259, 770, 'images/media/2019/09/UJELm10511.jpg', NULL, NULL),
(54, 53, 'ACTUAL', 258, 770, 'images/media/2019/09/JrqCh10411.jpg', NULL, NULL),
(55, 54, 'ACTUAL', 547, 370, 'images/media/2019/09/gwULS10411.jpg', NULL, NULL),
(56, 55, 'ACTUAL', 208, 465, 'images/media/2019/09/PWvbj10711.jpg', NULL, NULL),
(57, 56, 'ACTUAL', 208, 465, 'images/media/2019/09/mU1fw10111.jpg', NULL, NULL),
(58, 57, 'ACTUAL', 210, 270, 'images/media/2019/09/sUXLY10711.jpg', NULL, NULL),
(59, 58, 'ACTUAL', 210, 270, 'images/media/2019/09/t2tHr10911.jpg', NULL, NULL),
(60, 59, 'ACTUAL', 210, 370, 'images/media/2019/09/grG9M10611.jpg', NULL, NULL),
(61, 60, 'ACTUAL', 210, 370, 'images/media/2019/09/nCUtL10811.jpg', NULL, NULL),
(62, 61, 'ACTUAL', 418, 885, 'images/media/2019/09/Im3MP10612.jpg', NULL, NULL),
(63, 62, 'ACTUAL', 418, 885, 'images/media/2019/09/L2KRw10412.jpg', NULL, NULL),
(64, 63, 'ACTUAL', 418, 885, 'images/media/2019/09/bfwnd10612.jpg', NULL, NULL),
(65, 64, 'ACTUAL', 64, 64, 'images/media/2019/09/ZGVQ310912.png', NULL, NULL),
(66, 65, 'ACTUAL', 64, 64, 'images/media/2019/09/IVJos10612.png', NULL, NULL),
(67, 66, 'ACTUAL', 64, 64, 'images/media/2019/09/K0RzI10912.png', NULL, NULL),
(68, 67, 'ACTUAL', 64, 64, 'images/media/2019/09/GMndX10212.png', NULL, NULL),
(69, 68, 'ACTUAL', 64, 64, 'images/media/2019/09/92UoU10912.png', NULL, NULL),
(70, 69, 'ACTUAL', 64, 64, 'images/media/2019/09/R913310312.png', NULL, NULL),
(71, 70, 'ACTUAL', 64, 64, 'images/media/2019/09/Sq0yK10912.png', NULL, NULL),
(72, 71, 'ACTUAL', 64, 64, 'images/media/2019/09/Ytqae10412.png', NULL, NULL),
(73, 72, 'ACTUAL', 64, 64, 'images/media/2019/09/A0KBI10412.png', NULL, NULL),
(74, 73, 'ACTUAL', 64, 64, 'images/media/2019/09/f5l5x10612.png', NULL, NULL),
(75, 74, 'ACTUAL', 273, 240, 'images/media/2019/09/T5v1s10612.png', NULL, NULL),
(76, 75, 'ACTUAL', 273, 240, 'images/media/2019/09/nyisU10112.png', NULL, NULL),
(77, 76, 'ACTUAL', 273, 240, 'images/media/2019/09/UioPp10612.png', NULL, NULL),
(78, 77, 'ACTUAL', 273, 240, 'images/media/2019/09/Xx8nL10712.png', NULL, NULL),
(79, 78, 'ACTUAL', 273, 240, 'images/media/2019/09/iKgxC10712.png', NULL, NULL),
(80, 79, 'ACTUAL', 273, 240, 'images/media/2019/09/IocF910112.png', NULL, NULL),
(81, 80, 'ACTUAL', 273, 240, 'images/media/2019/09/X3byA10112.png', NULL, NULL),
(82, 81, 'ACTUAL', 273, 240, 'images/media/2019/09/1o0wF10812.png', NULL, NULL),
(83, 82, 'ACTUAL', 273, 240, 'images/media/2019/09/VODK910712.png', NULL, NULL),
(258, 257, 'ACTUAL', 64, 64, 'images/media/2019/09/A1S9C19708.png', NULL, NULL),
(259, 258, 'ACTUAL', 284, 250, 'images/media/2019/09/IhmdY19708.jpg', NULL, NULL),
(260, 259, 'ACTUAL', 64, 64, 'images/media/2019/09/20nV819208.png', NULL, NULL),
(261, 260, 'ACTUAL', 284, 250, 'images/media/2019/09/3DDqm19808.jpg', NULL, NULL),
(262, 261, 'ACTUAL', 64, 64, 'images/media/2019/09/Ma53619508.png', NULL, NULL),
(263, 262, 'ACTUAL', 284, 250, 'images/media/2019/09/1N5lx19108.jpg', NULL, NULL),
(264, 263, 'ACTUAL', 284, 250, 'images/media/2019/09/m67vJ19608.jpg', NULL, NULL),
(265, 264, 'ACTUAL', 64, 64, 'images/media/2019/09/onxBS19208.png', NULL, NULL),
(266, 265, 'ACTUAL', 64, 64, 'images/media/2019/09/Epkb419908.png', NULL, NULL),
(267, 266, 'ACTUAL', 284, 250, 'images/media/2019/09/yq7Uj19908.jpg', NULL, NULL),
(268, 267, 'ACTUAL', 64, 64, 'images/media/2019/09/4Cg3c19608.png', NULL, NULL),
(269, 268, 'ACTUAL', 284, 250, 'images/media/2019/09/cXJMf19808.jpg', NULL, NULL),
(270, 269, 'ACTUAL', 64, 64, 'images/media/2019/09/0hsWz19508.png', NULL, NULL),
(271, 270, 'ACTUAL', 284, 250, 'images/media/2019/09/0PIiD19808.jpg', NULL, NULL),
(272, 271, 'ACTUAL', 64, 64, 'images/media/2019/09/ldLJf19208.png', NULL, NULL),
(273, 272, 'ACTUAL', 284, 250, 'images/media/2019/09/jRHM719108.jpg', NULL, NULL),
(274, 273, 'ACTUAL', 64, 64, 'images/media/2019/09/I1gzM19408.png', NULL, NULL),
(275, 274, 'ACTUAL', 284, 250, 'images/media/2019/09/JCyV619708.jpg', NULL, NULL),
(276, 275, 'ACTUAL', 64, 64, 'images/media/2019/09/HVCxT19108.png', NULL, NULL),
(277, 276, 'ACTUAL', 284, 250, 'images/media/2019/09/PLELY19408.jpg', NULL, NULL),
(278, 277, 'ACTUAL', 64, 64, 'images/media/2019/09/BoeDL19408.png', NULL, NULL),
(279, 278, 'ACTUAL', 284, 250, 'images/media/2019/09/CLmuf19708.jpg', NULL, NULL),
(280, 279, 'ACTUAL', 284, 250, 'images/media/2019/09/ZVy6T19808.jpg', NULL, NULL),
(281, 280, 'ACTUAL', 64, 64, 'images/media/2019/09/wYb7s19908.png', NULL, NULL),
(282, 281, 'ACTUAL', 64, 64, 'images/media/2019/09/XdnOS19308.png', NULL, NULL),
(283, 282, 'ACTUAL', 284, 250, 'images/media/2019/09/jdXhv19208.jpg', NULL, NULL),
(284, 283, 'ACTUAL', 64, 64, 'images/media/2019/09/4LFTq19608.png', NULL, NULL),
(285, 284, 'ACTUAL', 284, 250, 'images/media/2019/09/KbJoX19608.jpg', NULL, NULL),
(286, 285, 'ACTUAL', 64, 64, 'images/media/2019/09/3YJgr19308.png', NULL, NULL),
(287, 286, 'ACTUAL', 284, 250, 'images/media/2019/09/sDlxw19408.jpg', NULL, NULL),
(288, 287, 'ACTUAL', 1024, 1024, 'images/media/2019/09/LXeLb19908.jpg', NULL, NULL),
(289, 288, 'ACTUAL', 1024, 1024, 'images/media/2019/09/uhwNl19708.jpg', NULL, NULL),
(290, 289, 'ACTUAL', 1024, 1024, 'images/media/2019/09/A8tpH19408.jpg', NULL, NULL),
(291, 290, 'ACTUAL', 1024, 1024, 'images/media/2019/09/i0ux819508.jpg', NULL, NULL),
(292, 291, 'ACTUAL', 1024, 1024, 'images/media/2019/09/WqoFo19208.jpg', NULL, NULL),
(293, 292, 'ACTUAL', 1024, 1024, 'images/media/2019/09/AHbI419308.jpg', NULL, NULL),
(294, 293, 'ACTUAL', 1024, 1024, 'images/media/2019/09/a455C19308.jpg', NULL, NULL),
(295, 294, 'ACTUAL', 1024, 1024, 'images/media/2019/09/wPXR419508.jpg', NULL, NULL),
(296, 295, 'ACTUAL', 1024, 1024, 'images/media/2019/09/yiOVx19908.jpg', NULL, NULL),
(297, 296, 'ACTUAL', 1024, 1024, 'images/media/2019/09/xoOJv19608.jpg', NULL, NULL),
(298, 297, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MfQ4H19108.jpg', NULL, NULL),
(299, 298, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Ldxgn19609.jpg', NULL, NULL),
(300, 299, 'ACTUAL', 1024, 1024, 'images/media/2019/09/EH8cD19409.jpg', NULL, NULL),
(301, 300, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9j0ay19709.jpg', NULL, NULL),
(302, 301, 'ACTUAL', 1024, 1024, 'images/media/2019/09/pCDlz19109.jpg', NULL, NULL),
(303, 302, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9xygZ19809.jpg', NULL, NULL),
(304, 303, 'ACTUAL', 1024, 1024, 'images/media/2019/09/DSMOD19709.jpg', NULL, NULL),
(305, 304, 'ACTUAL', 1024, 1024, 'images/media/2019/09/ORnu519309.jpg', NULL, NULL),
(306, 305, 'ACTUAL', 1024, 1024, 'images/media/2019/09/aOtwc19909.jpg', NULL, NULL),
(307, 306, 'ACTUAL', 1024, 1024, 'images/media/2019/09/6YsTj19909.jpg', NULL, NULL),
(308, 307, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mXDLS19409.jpg', NULL, NULL),
(309, 308, 'ACTUAL', 1024, 1024, 'images/media/2019/09/OT0oU19309.jpg', NULL, NULL),
(310, 309, 'ACTUAL', 1024, 1024, 'images/media/2019/09/dgrQM19109.jpg', NULL, NULL),
(311, 310, 'ACTUAL', 1024, 1024, 'images/media/2019/09/pwD0319609.jpg', NULL, NULL),
(312, 311, 'ACTUAL', 1024, 1024, 'images/media/2019/09/toR1u19909.jpg', NULL, NULL),
(313, 312, 'ACTUAL', 1024, 1024, 'images/media/2019/09/DkrSs19810.jpg', NULL, NULL),
(314, 313, 'ACTUAL', 1024, 1024, 'images/media/2019/09/g6Owy19810.jpg', NULL, NULL),
(315, 314, 'ACTUAL', 1024, 1024, 'images/media/2019/09/KnBr519710.jpg', NULL, NULL),
(316, 315, 'ACTUAL', 1024, 1024, 'images/media/2019/09/TWvJK19410.jpg', NULL, NULL),
(317, 316, 'ACTUAL', 1024, 1024, 'images/media/2019/09/7LsVG19310.jpg', NULL, NULL),
(318, 317, 'ACTUAL', 1024, 1024, 'images/media/2019/09/YLMOh19210.jpg', NULL, NULL),
(319, 318, 'ACTUAL', 1024, 1024, 'images/media/2019/09/0kXac19210.jpg', NULL, NULL),
(320, 319, 'ACTUAL', 1024, 1024, 'images/media/2019/09/tJqpf19810.jpg', NULL, NULL),
(321, 320, 'ACTUAL', 1024, 1024, 'images/media/2019/09/WCd6y19910.jpg', NULL, NULL),
(322, 321, 'ACTUAL', 1024, 1024, 'images/media/2019/09/O4Zbk19710.jpg', NULL, NULL),
(323, 322, 'ACTUAL', 1024, 1024, 'images/media/2019/09/JUSJa19210.jpg', NULL, NULL),
(324, 323, 'ACTUAL', 1024, 1024, 'images/media/2019/09/n4Gmy19810.jpg', NULL, NULL),
(325, 324, 'ACTUAL', 1024, 1024, 'images/media/2019/09/8mjRf19210.jpg', NULL, NULL),
(326, 325, 'ACTUAL', 1024, 1024, 'images/media/2019/09/I4Pux19210.jpg', NULL, NULL),
(327, 326, 'ACTUAL', 1024, 1024, 'images/media/2019/09/0sKGd19310.jpg', NULL, NULL),
(328, 327, 'ACTUAL', 1024, 1024, 'images/media/2019/09/l1xuY19110.jpg', NULL, NULL),
(329, 328, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9LpEr19110.jpg', NULL, NULL),
(330, 329, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nsvRx19410.jpg', NULL, NULL),
(331, 330, 'ACTUAL', 1024, 1024, 'images/media/2019/09/7n3HJ19410.jpg', NULL, NULL),
(332, 331, 'ACTUAL', 1024, 1024, 'images/media/2019/09/vx6QW19610.jpg', NULL, NULL),
(333, 332, 'ACTUAL', 1024, 1024, 'images/media/2019/09/e8tKu19210.jpg', NULL, NULL),
(334, 333, 'ACTUAL', 1024, 1024, 'images/media/2019/09/iDMNz19310.jpg', NULL, NULL),
(335, 334, 'ACTUAL', 1024, 1024, 'images/media/2019/09/doDBr19210.jpg', NULL, NULL),
(336, 335, 'ACTUAL', 1024, 1024, 'images/media/2019/09/b4lEc19910.jpg', NULL, NULL),
(337, 336, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Xwlth19610.jpg', NULL, NULL),
(338, 337, 'ACTUAL', 1024, 1024, 'images/media/2019/09/luQnk19210.jpg', NULL, NULL),
(339, 338, 'ACTUAL', 1024, 1024, 'images/media/2019/09/6h8UU19710.jpg', NULL, NULL),
(340, 339, 'ACTUAL', 1024, 1024, 'images/media/2019/09/viEGg19911.jpg', NULL, NULL),
(341, 340, 'ACTUAL', 1024, 1024, 'images/media/2019/09/2Ggn319911.jpg', NULL, NULL),
(342, 341, 'ACTUAL', 1024, 1024, 'images/media/2019/09/m0yNj19911.jpg', NULL, NULL),
(343, 342, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Dzd2519111.jpg', NULL, NULL),
(344, 343, 'ACTUAL', 1024, 1024, 'images/media/2019/09/1ig7319811.jpg', NULL, NULL),
(345, 344, 'ACTUAL', 1024, 1024, 'images/media/2019/09/iTQ7j19211.jpg', NULL, NULL),
(346, 345, 'ACTUAL', 1024, 1024, 'images/media/2019/09/TSTeu19611.jpg', NULL, NULL),
(347, 346, 'ACTUAL', 1024, 1024, 'images/media/2019/09/72L9l19911.jpg', NULL, NULL),
(348, 347, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mWix319411.jpg', NULL, NULL),
(349, 348, 'ACTUAL', 1024, 1024, 'images/media/2019/09/hi3PN19511.jpg', NULL, NULL),
(350, 349, 'ACTUAL', 1024, 1024, 'images/media/2019/09/i8sDd19911.jpg', NULL, NULL),
(351, 350, 'ACTUAL', 1024, 1024, 'images/media/2019/09/phUDg19511.jpg', NULL, NULL),
(352, 351, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3jHHY19511.jpg', NULL, NULL),
(353, 352, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9fyvN19411.jpg', NULL, NULL),
(354, 353, 'ACTUAL', 1024, 1024, 'images/media/2019/09/HxGza19611.jpg', NULL, NULL),
(355, 354, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nJ44l19411.jpg', NULL, NULL),
(356, 355, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nQlqE19511.jpg', NULL, NULL),
(357, 356, 'ACTUAL', 1024, 1024, 'images/media/2019/09/swNSy19911.jpg', NULL, NULL),
(358, 357, 'ACTUAL', 1024, 1024, 'images/media/2019/09/sMdMm19611.jpg', NULL, NULL),
(359, 358, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mr5Yt19211.jpg', NULL, NULL),
(360, 359, 'ACTUAL', 1024, 1024, 'images/media/2019/09/cbPj519211.jpg', NULL, NULL),
(361, 360, 'ACTUAL', 1024, 1024, 'images/media/2019/09/csgAQ19111.jpg', NULL, NULL),
(362, 361, 'ACTUAL', 1024, 1024, 'images/media/2019/09/rfEnb19911.jpg', NULL, NULL),
(363, 362, 'ACTUAL', 1024, 1024, 'images/media/2019/09/52rY219211.jpg', NULL, NULL),
(364, 363, 'ACTUAL', 1024, 1024, 'images/media/2019/09/YvzxH19111.jpg', NULL, NULL),
(365, 364, 'ACTUAL', 1024, 1024, 'images/media/2019/09/36jAr19511.jpg', NULL, NULL),
(366, 365, 'ACTUAL', 1024, 1024, 'images/media/2019/09/0Ygma19611.jpg', NULL, NULL),
(367, 366, 'ACTUAL', 1024, 1024, 'images/media/2019/09/z3bmL19111.jpg', NULL, NULL),
(368, 367, 'ACTUAL', 1024, 1024, 'images/media/2019/09/yPQ6h19111.jpg', NULL, NULL),
(369, 368, 'ACTUAL', 1024, 1024, 'images/media/2019/09/I8Kak19711.jpg', NULL, NULL),
(370, 369, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3P1Yv19211.jpg', NULL, NULL),
(371, 370, 'ACTUAL', 1024, 1024, 'images/media/2019/09/FMst219511.jpg', NULL, NULL),
(372, 371, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MwDiB19411.jpg', NULL, NULL),
(373, 372, 'ACTUAL', 1024, 1024, 'images/media/2019/09/T5YSn19111.jpg', NULL, NULL),
(374, 373, 'ACTUAL', 1024, 1024, 'images/media/2019/09/XxPsZ19411.jpg', NULL, NULL),
(375, 374, 'ACTUAL', 1024, 1024, 'images/media/2019/09/FCnb919311.jpg', NULL, NULL),
(376, 375, 'ACTUAL', 1024, 1024, 'images/media/2019/09/j7Tq119211.jpg', NULL, NULL),
(377, 376, 'ACTUAL', 1024, 1024, 'images/media/2019/09/2WDAU19811.jpg', NULL, NULL),
(378, 377, 'ACTUAL', 1024, 1024, 'images/media/2019/09/JoP4W19611.jpg', NULL, NULL),
(379, 378, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3MBuE19511.jpg', NULL, NULL),
(380, 379, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3Z4tF19611.jpg', NULL, NULL),
(381, 380, 'ACTUAL', 1024, 1024, 'images/media/2019/09/boehz19211.jpg', NULL, NULL),
(382, 381, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nb2iB19311.jpg', NULL, NULL),
(383, 382, 'ACTUAL', 1024, 1024, 'images/media/2019/09/N9rcj19811.jpg', NULL, NULL),
(384, 383, 'ACTUAL', 1024, 1024, 'images/media/2019/09/qbKF719611.jpg', NULL, NULL),
(385, 384, 'ACTUAL', 1024, 1024, 'images/media/2019/09/J2XYc19411.jpg', NULL, NULL),
(386, 385, 'ACTUAL', 1024, 1024, 'images/media/2019/09/OAQ7919311.jpg', NULL, NULL),
(387, 386, 'ACTUAL', 1024, 1024, 'images/media/2019/09/AHkbG19811.jpg', NULL, NULL),
(388, 387, 'ACTUAL', 1024, 1024, 'images/media/2019/09/LRiDA19411.jpg', NULL, NULL),
(389, 388, 'ACTUAL', 1024, 1024, 'images/media/2019/09/QWlDN19611.jpg', NULL, NULL),
(390, 389, 'ACTUAL', 1024, 1024, 'images/media/2019/09/VEodV19811.jpg', NULL, NULL),
(391, 390, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mjyBU19111.jpg', NULL, NULL),
(392, 391, 'ACTUAL', 1024, 1024, 'images/media/2019/09/QL8Lj19911.jpg', NULL, NULL),
(393, 392, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Ticne19811.jpg', NULL, NULL),
(394, 393, 'ACTUAL', 1024, 1024, 'images/media/2019/09/1sjR619111.jpg', NULL, NULL),
(395, 394, 'ACTUAL', 1024, 1024, 'images/media/2019/09/cv1rs19611.jpg', NULL, NULL),
(396, 395, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MVmBl19211.jpg', NULL, NULL),
(397, 396, 'ACTUAL', 1024, 1024, 'images/media/2019/09/TLetF19511.jpg', NULL, NULL),
(398, 397, 'ACTUAL', 1024, 1024, 'images/media/2019/09/XMnpu19311.jpg', NULL, NULL),
(399, 398, 'ACTUAL', 1024, 1024, 'images/media/2019/09/WbV9019511.jpg', NULL, NULL),
(400, 399, 'ACTUAL', 1024, 1024, 'images/media/2019/09/U01j519111.jpg', NULL, NULL),
(401, 400, 'ACTUAL', 1024, 1024, 'images/media/2019/09/AEP0C19311.jpg', NULL, NULL),
(402, 401, 'ACTUAL', 1024, 1024, 'images/media/2019/09/n9FE219911.jpg', NULL, NULL),
(403, 402, 'ACTUAL', 1024, 1024, 'images/media/2019/09/CEOYM19611.jpg', NULL, NULL),
(404, 403, 'ACTUAL', 1024, 1024, 'images/media/2019/09/VHCwl19811.jpg', NULL, NULL),
(405, 404, 'ACTUAL', 1024, 1024, 'images/media/2019/09/dMNk819711.jpg', NULL, NULL),
(406, 405, 'ACTUAL', 1024, 1024, 'images/media/2019/09/64a7R19711.jpg', NULL, NULL),
(407, 406, 'ACTUAL', 1024, 1024, 'images/media/2019/09/v3tvW19111.jpg', NULL, NULL),
(408, 407, 'ACTUAL', 1024, 1024, 'images/media/2019/09/5PC3y19811.jpg', NULL, NULL),
(409, 408, 'ACTUAL', 1024, 1024, 'images/media/2019/09/U3hD619711.jpg', NULL, NULL),
(410, 409, 'ACTUAL', 1024, 1024, 'images/media/2019/09/EbCku19411.jpg', NULL, NULL),
(411, 410, 'ACTUAL', 1024, 1024, 'images/media/2019/09/kWSbk19511.jpg', NULL, NULL),
(412, 411, 'ACTUAL', 1024, 1024, 'images/media/2019/09/LIhLe19311.jpg', NULL, NULL),
(413, 412, 'ACTUAL', 1024, 1024, 'images/media/2019/09/K7HHF19111.jpg', NULL, NULL),
(414, 413, 'ACTUAL', 1024, 1024, 'images/media/2019/09/4sd9A19111.jpg', NULL, NULL),
(415, 414, 'ACTUAL', 1024, 1024, 'images/media/2019/09/HmhjH19711.jpg', NULL, NULL),
(416, 415, 'ACTUAL', 1024, 1024, 'images/media/2019/09/lCzZV19811.jpg', NULL, NULL),
(417, 416, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MgCKq19711.jpg', NULL, NULL),
(418, 417, 'ACTUAL', 1024, 1024, 'images/media/2019/09/ol2sB24311.jpg', NULL, NULL),
(419, 418, 'ACTUAL', 1024, 1024, 'images/media/2019/09/NySmM24311.jpg', NULL, NULL),
(420, 419, 'ACTUAL', 1024, 1024, 'images/media/2019/09/5xN6v24411.jpg', NULL, NULL),
(421, 420, 'ACTUAL', 1024, 1024, 'images/media/2019/09/CWYQi24511.jpg', NULL, NULL),
(422, 421, 'ACTUAL', 1024, 1024, 'images/media/2019/09/laefk24511.jpg', NULL, NULL),
(423, 422, 'ACTUAL', 1024, 1024, 'images/media/2019/09/6ykQ424511.jpg', NULL, NULL),
(424, 423, 'ACTUAL', 1024, 1024, 'images/media/2019/09/BAG2K24312.jpg', NULL, NULL),
(425, 424, 'ACTUAL', 1024, 1024, 'images/media/2019/09/wG9GE24612.jpg', NULL, NULL),
(426, 425, 'ACTUAL', 64, 64, 'images/media/2019/09/iRgnE25611.png', NULL, NULL),
(427, 426, 'ACTUAL', 284, 250, 'images/media/2019/09/ifpU725811.jpg', NULL, NULL),
(428, 427, 'ACTUAL', 768, 1366, 'images/media/2019/09/rzdmu25612.png', NULL, NULL),
(429, 428, 'ACTUAL', 768, 1366, 'images/media/2019/09/uNZd125612.png', NULL, NULL),
(431, 430, 'ACTUAL', 421, 1170, 'images/media/2019/09/blSUS27710.jpg', NULL, NULL),
(432, 431, 'ACTUAL', 421, 1170, 'images/media/2019/09/vURED27710.jpg', NULL, NULL),
(433, 432, 'ACTUAL', 421, 1170, 'images/media/2019/09/Ft15D27610.jpg', NULL, NULL),
(434, 433, 'ACTUAL', 421, 1600, 'images/media/2019/09/ILNqR27110.jpg', NULL, NULL),
(435, 434, 'ACTUAL', 421, 1600, 'images/media/2019/09/oSENw27310.jpg', NULL, NULL),
(436, 435, 'ACTUAL', 421, 1600, 'images/media/2019/09/g96za27410.jpg', NULL, NULL),
(437, 436, 'ACTUAL', 387, 770, 'images/media/2019/09/yVA2Q27110.jpg', NULL, NULL),
(438, 437, 'ACTUAL', 387, 770, 'images/media/2019/09/vDsMN27610.jpg', NULL, NULL),
(439, 438, 'ACTUAL', 387, 770, 'images/media/2019/09/rL6XQ27310.jpg', NULL, NULL),
(440, 439, 'ACTUAL', 418, 885, 'images/media/2019/09/A1s7V27110.jpg', NULL, NULL),
(441, 440, 'ACTUAL', 418, 885, 'images/media/2019/09/mo6Yk27410.jpg', NULL, NULL),
(442, 441, 'ACTUAL', 418, 885, 'images/media/2019/09/cUhfM27110.jpg', NULL, NULL),
(443, 442, 'ACTUAL', 179, 370, 'images/media/2019/09/8EBLr27610.jpg', NULL, NULL),
(444, 443, 'ACTUAL', 179, 370, 'images/media/2019/09/c449I27810.jpg', NULL, NULL),
(445, 444, 'ACTUAL', 277, 370, 'images/media/2019/09/reUJM27310.jpg', NULL, NULL),
(446, 445, 'ACTUAL', 277, 370, 'images/media/2019/09/ciRFe27710.jpg', NULL, NULL),
(447, 446, 'ACTUAL', 277, 370, 'images/media/2019/09/2nx0h27410.jpg', NULL, NULL),
(448, 447, 'ACTUAL', 240, 370, 'images/media/2019/09/CLA2s27610.jpg', NULL, NULL),
(449, 448, 'ACTUAL', 240, 370, 'images/media/2019/09/qotAc27710.jpg', NULL, NULL),
(450, 449, 'ACTUAL', 240, 370, 'images/media/2019/09/souUX27810.jpg', NULL, NULL),
(451, 450, 'ACTUAL', 270, 693, 'images/media/2019/09/z3Qtc27512.png', NULL, NULL),
(452, 451, 'ACTUAL', 446, 728, 'images/media/2019/10/y74yW01108.jpg', NULL, NULL),
(453, 452, 'ACTUAL', 20, 30, 'images/media/2019/10/gTr9301908.jpg', NULL, NULL),
(454, 453, 'ACTUAL', 421, 1600, 'images/media/2019/10/4A9AD01801.jpg', NULL, NULL),
(455, 454, 'ACTUAL', 421, 1600, 'images/media/2019/10/ZPmjN01301.jpg', NULL, NULL),
(456, 455, 'ACTUAL', 421, 1600, 'images/media/2019/10/ypwlO01601.jpg', NULL, NULL),
(457, 456, 'ACTUAL', 220, 370, 'images/media/2019/10/YAaqM01901.jpg', NULL, NULL),
(458, 457, 'ACTUAL', 220, 370, 'images/media/2019/10/LTvGM01301.jpg', NULL, NULL),
(459, 458, 'ACTUAL', 512, 512, 'images/media/2019/10/8zBL302407.png', NULL, NULL),
(460, 459, 'ACTUAL', 425, 1600, 'images/media/2020/02/kzLG219201.jpg', NULL, NULL),
(461, 460, 'ACTUAL', 425, 1600, 'images/media/2020/02/4wDb519601.jpg', NULL, NULL),
(462, 459, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail1582120480kzLG219201.jpg', NULL, NULL),
(463, 460, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail15821204804wDb519601.jpg', NULL, NULL),
(464, 459, 'MEDIUM', 106, 400, 'images/media/2020/02/medium1582120480kzLG219201.jpg', NULL, NULL),
(465, 460, 'MEDIUM', 106, 400, 'images/media/2020/02/medium15821204804wDb519601.jpg', NULL, NULL),
(466, 459, 'LARGE', 239, 900, 'images/media/2020/02/large1582120480kzLG219201.jpg', NULL, NULL),
(467, 460, 'LARGE', 239, 900, 'images/media/2020/02/large15821204804wDb519601.jpg', NULL, NULL),
(468, 461, 'ACTUAL', 425, 1600, 'images/media/2020/02/roLuh19801.jpg', NULL, NULL),
(469, 461, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail1582120482roLuh19801.jpg', NULL, NULL),
(470, 461, 'MEDIUM', 106, 400, 'images/media/2020/02/medium1582120482roLuh19801.jpg', NULL, NULL),
(471, 461, 'LARGE', 239, 900, 'images/media/2020/02/large1582120482roLuh19801.jpg', NULL, NULL),
(472, 462, 'ACTUAL', 421, 1170, 'images/media/2020/02/7OI5e19501.jpg', NULL, NULL),
(473, 462, 'THUMBNAIL', 54, 150, 'images/media/2020/02/thumbnail15821204927OI5e19501.jpg', NULL, NULL),
(474, 462, 'MEDIUM', 144, 400, 'images/media/2020/02/medium15821204937OI5e19501.jpg', NULL, NULL),
(475, 462, 'LARGE', 324, 900, 'images/media/2020/02/large15821204937OI5e19501.jpg', NULL, NULL),
(476, 463, 'ACTUAL', 421, 1170, 'images/media/2020/02/SHVFB19501.jpg', NULL, NULL),
(477, 463, 'THUMBNAIL', 54, 150, 'images/media/2020/02/thumbnail1582120493SHVFB19501.jpg', NULL, NULL),
(478, 463, 'MEDIUM', 144, 400, 'images/media/2020/02/medium1582120494SHVFB19501.jpg', NULL, NULL),
(479, 463, 'LARGE', 324, 900, 'images/media/2020/02/large1582120494SHVFB19501.jpg', NULL, NULL),
(480, 464, 'ACTUAL', 421, 1170, 'images/media/2020/02/dn1K219901.jpg', NULL, NULL),
(481, 464, 'THUMBNAIL', 54, 150, 'images/media/2020/02/thumbnail1582120496dn1K219901.jpg', NULL, NULL),
(482, 464, 'MEDIUM', 144, 400, 'images/media/2020/02/medium1582120496dn1K219901.jpg', NULL, NULL),
(483, 464, 'LARGE', 324, 900, 'images/media/2020/02/large1582120496dn1K219901.jpg', NULL, NULL),
(559, 494, 'ACTUAL', 418, 833, 'images/media/2020/02/JiDWS19303.jpg', NULL, NULL),
(558, 493, 'ACTUAL', 418, 834, 'images/media/2020/02/VXmx319303.jpg', NULL, NULL),
(557, 492, 'THUMBNAIL', 72, 150, 'images/media/2020/02/thumbnail15821245307zlLI19903.jpg', NULL, NULL),
(556, 491, 'THUMBNAIL', 73, 150, 'images/media/2020/02/thumbnail1582124530U361f19603.jpg', NULL, NULL),
(555, 492, 'ACTUAL', 177, 369, 'images/media/2020/02/7zlLI19903.jpg', NULL, NULL),
(554, 491, 'ACTUAL', 179, 369, 'images/media/2020/02/U361f19603.jpg', NULL, NULL),
(553, 490, 'MEDIUM', 189, 400, 'images/media/2020/02/medium1582123325IjJ4x19202.jpg', NULL, NULL),
(552, 490, 'THUMBNAIL', 71, 150, 'images/media/2020/02/thumbnail1582123325IjJ4x19202.jpg', NULL, NULL),
(551, 490, 'ACTUAL', 418, 885, 'images/media/2020/02/IjJ4x19202.jpg', NULL, NULL),
(550, 489, 'MEDIUM', 189, 400, 'images/media/2020/02/medium1582123325aqK6Q19402.jpg', NULL, NULL),
(549, 489, 'THUMBNAIL', 71, 150, 'images/media/2020/02/thumbnail1582123325aqK6Q19402.jpg', NULL, NULL),
(548, 488, 'MEDIUM', 189, 400, 'images/media/2020/02/medium1582123325Apd1i19902.jpg', NULL, NULL),
(547, 489, 'ACTUAL', 418, 885, 'images/media/2020/02/aqK6Q19402.jpg', NULL, NULL),
(544, 487, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582123057e8Uh519302.jpg', NULL, NULL),
(545, 488, 'ACTUAL', 418, 885, 'images/media/2020/02/Apd1i19902.jpg', NULL, NULL),
(546, 488, 'THUMBNAIL', 71, 150, 'images/media/2020/02/thumbnail1582123325Apd1i19902.jpg', NULL, NULL),
(543, 487, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582123057e8Uh519302.jpg', NULL, NULL),
(542, 487, 'ACTUAL', 418, 834, 'images/media/2020/02/e8Uh519302.jpg', NULL, NULL),
(541, 486, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582123056sQWL719202.jpg', NULL, NULL),
(540, 486, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582123056sQWL719202.jpg', NULL, NULL),
(537, 485, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582123056i0UZO19402.jpg', NULL, NULL),
(539, 486, 'ACTUAL', 418, 834, 'images/media/2020/02/sQWL719202.jpg', NULL, NULL),
(538, 485, 'MEDIUM', 201, 400, 'images/media/2020/02/medium1582123056i0UZO19402.jpg', NULL, NULL),
(536, 485, 'ACTUAL', 418, 833, 'images/media/2020/02/i0UZO19402.jpg', NULL, NULL),
(533, 483, 'THUMBNAIL', 73, 150, 'images/media/2020/02/thumbnail1582123055RE0II19402.jpg', NULL, NULL),
(534, 484, 'ACTUAL', 177, 369, 'images/media/2020/02/gt4aI19102.jpg', NULL, NULL),
(535, 484, 'THUMBNAIL', 72, 150, 'images/media/2020/02/thumbnail1582123055gt4aI19102.jpg', NULL, NULL),
(532, 483, 'ACTUAL', 179, 369, 'images/media/2020/02/RE0II19402.jpg', NULL, NULL),
(560, 493, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582124531VXmx319303.jpg', NULL, NULL),
(561, 494, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582124531JiDWS19303.jpg', NULL, NULL),
(562, 493, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582124531VXmx319303.jpg', NULL, NULL),
(563, 494, 'MEDIUM', 201, 400, 'images/media/2020/02/medium1582124531JiDWS19303.jpg', NULL, NULL),
(564, 495, 'ACTUAL', 418, 834, 'images/media/2020/02/jzm9Z19603.jpg', NULL, NULL),
(565, 495, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582124532jzm9Z19603.jpg', NULL, NULL),
(566, 495, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582124532jzm9Z19603.jpg', NULL, NULL),
(567, 496, 'ACTUAL', 259, 770, 'images/media/2020/02/ZGQzk20811.jpg', NULL, NULL),
(568, 497, 'ACTUAL', 258, 770, 'images/media/2020/02/NpNrm20611.jpg', NULL, NULL),
(569, 497, 'THUMBNAIL', 50, 150, 'images/media/2020/02/thumbnail1582198137NpNrm20611.jpg', NULL, NULL),
(570, 496, 'THUMBNAIL', 50, 150, 'images/media/2020/02/thumbnail1582198137ZGQzk20811.jpg', NULL, NULL),
(571, 496, 'MEDIUM', 135, 400, 'images/media/2020/02/medium1582198137ZGQzk20811.jpg', NULL, NULL),
(572, 497, 'MEDIUM', 134, 400, 'images/media/2020/02/medium1582198137NpNrm20611.jpg', NULL, NULL),
(573, 498, 'ACTUAL', 548, 370, 'images/media/2020/02/XPgIC20911.jpg', NULL, NULL),
(574, 498, 'THUMBNAIL', 150, 101, 'images/media/2020/02/thumbnail1582198138XPgIC20911.jpg', NULL, NULL),
(575, 498, 'MEDIUM', 400, 270, 'images/media/2020/02/medium1582198138XPgIC20911.jpg', NULL, NULL),
(576, 499, 'ACTUAL', 297, 770, 'images/media/2020/02/VmtxP20911.jpg', NULL, NULL),
(577, 500, 'ACTUAL', 547, 370, 'images/media/2020/02/QAdqa20111.jpg', NULL, NULL),
(578, 499, 'THUMBNAIL', 58, 150, 'images/media/2020/02/thumbnail1582198509VmtxP20911.jpg', NULL, NULL),
(579, 500, 'THUMBNAIL', 150, 101, 'images/media/2020/02/thumbnail1582198509QAdqa20111.jpg', NULL, NULL),
(580, 499, 'MEDIUM', 154, 400, 'images/media/2020/02/medium1582198509VmtxP20911.jpg', NULL, NULL),
(581, 500, 'MEDIUM', 400, 271, 'images/media/2020/02/medium1582198509QAdqa20111.jpg', NULL, NULL),
(582, 501, 'ACTUAL', 220, 370, 'images/media/2020/02/wQGHA20911.jpg', NULL, NULL),
(583, 502, 'ACTUAL', 220, 370, 'images/media/2020/02/R0yLD20611.jpg', NULL, NULL),
(584, 501, 'THUMBNAIL', 89, 150, 'images/media/2020/02/thumbnail1582198510wQGHA20911.jpg', NULL, NULL),
(585, 502, 'THUMBNAIL', 89, 150, 'images/media/2020/02/thumbnail1582198510R0yLD20611.jpg', NULL, NULL),
(586, 503, 'ACTUAL', 230, 270, 'images/media/2020/02/GKLNM20111.jpg', NULL, NULL),
(587, 503, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail1582198670GKLNM20111.jpg', NULL, NULL),
(588, 504, 'ACTUAL', 230, 270, 'images/media/2020/02/zm4sn20811.jpg', NULL, NULL),
(589, 504, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail1582198670zm4sn20811.jpg', NULL, NULL),
(590, 505, 'ACTUAL', 230, 270, 'images/media/2020/02/ug42t20411.jpg', NULL, NULL),
(591, 505, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail1582198671ug42t20411.jpg', NULL, NULL),
(592, 506, 'ACTUAL', 230, 270, 'images/media/2020/02/21hNs20511.jpg', NULL, NULL),
(593, 506, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail158219867121hNs20511.jpg', NULL, NULL),
(594, 507, 'ACTUAL', 490, 569, 'images/media/2020/02/cgm7r20911.jpg', NULL, NULL),
(595, 507, 'THUMBNAIL', 129, 150, 'images/media/2020/02/thumbnail1582198672cgm7r20911.jpg', NULL, NULL),
(596, 507, 'MEDIUM', 344, 400, 'images/media/2020/02/medium1582198672cgm7r20911.jpg', NULL, NULL),
(597, 508, 'ACTUAL', 211, 270, 'images/media/2020/02/BdrR320111.jpg', NULL, NULL),
(598, 508, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail1582198790BdrR320111.jpg', NULL, NULL),
(599, 509, 'ACTUAL', 452, 570, 'images/media/2020/02/228jM20511.jpg', NULL, NULL),
(600, 510, 'ACTUAL', 211, 270, 'images/media/2020/02/L1lXk20111.jpg', NULL, NULL),
(601, 510, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail1582198791L1lXk20111.jpg', NULL, NULL),
(602, 509, 'THUMBNAIL', 119, 150, 'images/media/2020/02/thumbnail1582198791228jM20511.jpg', NULL, NULL),
(603, 509, 'MEDIUM', 317, 400, 'images/media/2020/02/medium1582198791228jM20511.jpg', NULL, NULL),
(604, 511, 'ACTUAL', 211, 570, 'images/media/2020/02/GrSV020311.jpg', NULL, NULL),
(605, 511, 'THUMBNAIL', 56, 150, 'images/media/2020/02/thumbnail1582198792GrSV020311.jpg', NULL, NULL),
(606, 511, 'MEDIUM', 148, 400, 'images/media/2020/02/medium1582198792GrSV020311.jpg', NULL, NULL),
(607, 512, 'ACTUAL', 298, 567, 'images/media/2020/02/gOyKf20211.jpg', NULL, NULL),
(608, 512, 'THUMBNAIL', 79, 150, 'images/media/2020/02/thumbnail1582198889gOyKf20211.jpg', NULL, NULL),
(609, 513, 'ACTUAL', 298, 566, 'images/media/2020/02/fj2pW20711.jpg', NULL, NULL),
(610, 512, 'MEDIUM', 210, 400, 'images/media/2020/02/medium1582198889gOyKf20211.jpg', NULL, NULL),
(611, 513, 'THUMBNAIL', 79, 150, 'images/media/2020/02/thumbnail1582198889fj2pW20711.jpg', NULL, NULL),
(612, 513, 'MEDIUM', 211, 400, 'images/media/2020/02/medium1582198889fj2pW20711.jpg', NULL, NULL),
(613, 514, 'ACTUAL', 211, 270, 'images/media/2020/02/8pXSd20211.jpg', NULL, NULL),
(614, 514, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail15821990078pXSd20211.jpg', NULL, NULL),
(615, 515, 'ACTUAL', 451, 569, 'images/media/2020/02/dMGvd20411.jpg', NULL, NULL),
(616, 515, 'THUMBNAIL', 119, 150, 'images/media/2020/02/thumbnail1582199007dMGvd20411.jpg', NULL, NULL),
(617, 515, 'MEDIUM', 317, 400, 'images/media/2020/02/medium1582199007dMGvd20411.jpg', NULL, NULL),
(618, 516, 'ACTUAL', 451, 270, 'images/media/2020/02/6DbzH20711.jpg', NULL, NULL),
(619, 516, 'THUMBNAIL', 150, 90, 'images/media/2020/02/thumbnail15821990086DbzH20711.jpg', NULL, NULL),
(620, 516, 'MEDIUM', 400, 239, 'images/media/2020/02/medium15821990086DbzH20711.jpg', NULL, NULL),
(621, 517, 'ACTUAL', 211, 270, 'images/media/2020/02/2lM7y20211.jpg', NULL, NULL),
(622, 517, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail15821990082lM7y20211.jpg', NULL, NULL),
(623, 518, 'ACTUAL', 230, 370, 'images/media/2020/02/kgVrx20811.jpg', NULL, NULL),
(624, 518, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail1582199127kgVrx20811.jpg', NULL, NULL),
(625, 519, 'ACTUAL', 488, 368, 'images/media/2020/02/XCslh20311.jpg', NULL, NULL),
(626, 519, 'THUMBNAIL', 150, 113, 'images/media/2020/02/thumbnail1582199127XCslh20311.jpg', NULL, NULL),
(627, 519, 'MEDIUM', 400, 302, 'images/media/2020/02/medium1582199127XCslh20311.jpg', NULL, NULL),
(628, 520, 'ACTUAL', 230, 370, 'images/media/2020/02/9dgQ020511.jpg', NULL, NULL),
(629, 520, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail15821991289dgQ020511.jpg', NULL, NULL),
(630, 521, 'ACTUAL', 230, 370, 'images/media/2020/02/pZ1bH20411.jpg', NULL, NULL),
(631, 521, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail1582199128pZ1bH20411.jpg', NULL, NULL),
(632, 522, 'ACTUAL', 230, 370, 'images/media/2020/02/xl9k720411.jpg', NULL, NULL),
(633, 522, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail1582199129xl9k720411.jpg', NULL, NULL),
(634, 523, 'ACTUAL', 211, 470, 'images/media/2020/02/7cNGq20711.jpg', NULL, NULL),
(635, 523, 'THUMBNAIL', 67, 150, 'images/media/2020/02/thumbnail15821993277cNGq20711.jpg', NULL, NULL),
(636, 523, 'MEDIUM', 180, 400, 'images/media/2020/02/medium15821993277cNGq20711.jpg', NULL, NULL),
(637, 524, 'ACTUAL', 210, 468, 'images/media/2020/02/qcLGW20311.jpg', NULL, NULL),
(638, 524, 'THUMBNAIL', 67, 150, 'images/media/2020/02/thumbnail1582199327qcLGW20311.jpg', NULL, NULL),
(639, 524, 'MEDIUM', 179, 400, 'images/media/2020/02/medium1582199327qcLGW20311.jpg', NULL, NULL),
(640, 525, 'ACTUAL', 210, 272, 'images/media/2020/02/uatVd20111.jpg', NULL, NULL),
(641, 525, 'THUMBNAIL', 116, 150, 'images/media/2020/02/thumbnail1582199328uatVd20111.jpg', NULL, NULL),
(642, 526, 'ACTUAL', 211, 270, 'images/media/2020/02/2segQ20911.jpg', NULL, NULL),
(643, 526, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail15821993282segQ20911.jpg', NULL, NULL),
(644, 527, 'ACTUAL', 211, 369, 'images/media/2020/02/dbzAF20511.jpg', NULL, NULL),
(645, 527, 'THUMBNAIL', 86, 150, 'images/media/2020/02/thumbnail1582199329dbzAF20511.jpg', NULL, NULL),
(646, 528, 'ACTUAL', 210, 369, 'images/media/2020/02/ruFRW20511.jpg', NULL, NULL),
(647, 528, 'THUMBNAIL', 85, 150, 'images/media/2020/02/thumbnail1582199330ruFRW20511.jpg', NULL, NULL),
(648, 529, 'ACTUAL', 430, 1599, 'images/media/2020/02/8qJMb20712.jpg', NULL, NULL),
(649, 529, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail15822003748qJMb20712.jpg', NULL, NULL),
(650, 530, 'ACTUAL', 236, 1171, 'images/media/2020/02/4kD3S20412.jpg', NULL, NULL),
(651, 530, 'THUMBNAIL', 30, 150, 'images/media/2020/02/thumbnail15822003754kD3S20412.jpg', NULL, NULL),
(652, 530, 'MEDIUM', 81, 400, 'images/media/2020/02/medium15822003754kD3S20412.jpg', NULL, NULL),
(653, 530, 'LARGE', 181, 900, 'images/media/2020/02/large15822003754kD3S20412.jpg', NULL, NULL),
(654, 531, 'ACTUAL', 179, 369, 'images/media/2020/02/FbFX320512.jpg', NULL, NULL),
(655, 531, 'THUMBNAIL', 73, 150, 'images/media/2020/02/thumbnail1582201134FbFX320512.jpg', NULL, NULL),
(656, 532, 'ACTUAL', 418, 834, 'images/media/2020/02/xv5F720212.jpg', NULL, NULL),
(657, 533, 'ACTUAL', 418, 833, 'images/media/2020/02/WDeDC20512.jpg', NULL, NULL),
(658, 532, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582201251xv5F720212.jpg', NULL, NULL),
(659, 533, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582201251WDeDC20512.jpg', NULL, NULL),
(660, 532, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582201251xv5F720212.jpg', NULL, NULL),
(661, 533, 'MEDIUM', 201, 400, 'images/media/2020/02/medium1582201251WDeDC20512.jpg', NULL, NULL),
(662, 534, 'ACTUAL', 418, 834, 'images/media/2020/02/287xt20312.jpg', NULL, NULL),
(663, 534, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582201252287xt20312.jpg', NULL, NULL),
(664, 534, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582201252287xt20312.jpg', NULL, NULL),
(940, 630, 'MEDIUM', 189, 400, 'images/media/2021/05/medium1622382997h4A9x30205.jpg', NULL, NULL),
(939, 630, 'THUMBNAIL', 71, 150, 'images/media/2021/05/thumbnail1622382997h4A9x30205.jpg', NULL, NULL),
(936, 630, 'ACTUAL', 552, 1170, 'images/media/2021/05/h4A9x30205.jpg', NULL, NULL),
(937, 629, 'ACTUAL', 156, 156, 'images/media/2021/05/PprAB30305.png', NULL, NULL),
(938, 629, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622382997PprAB30305.png', NULL, NULL),
(1031, 673, 'ACTUAL', 160, 160, 'images/media/2021/08/gr7x324411.jpg', NULL, NULL),
(1029, 671, 'ACTUAL', 318, 1170, 'images/media/2021/07/lVOpd08802.jpg', NULL, NULL),
(673, 538, 'ACTUAL', 16, 16, 'images/media/2020/03/FuDHg25712.png', NULL, NULL),
(674, 539, 'ACTUAL', 885, 1673, 'images/media/2020/04/5t74g02911.jpg', NULL, NULL),
(675, 539, 'THUMBNAIL', 79, 150, 'images/media/2020/04/thumbnail15858260845t74g02911.jpg', NULL, NULL),
(676, 539, 'MEDIUM', 212, 400, 'images/media/2020/04/medium15858260855t74g02911.jpg', NULL, NULL),
(677, 539, 'LARGE', 476, 900, 'images/media/2020/04/large15858260855t74g02911.jpg', NULL, NULL),
(678, 540, 'ACTUAL', 768, 1920, 'images/media/2020/09/oMhJn01412.jpg', NULL, NULL),
(679, 540, 'THUMBNAIL', 60, 150, 'images/media/2020/09/thumbnail1598961863oMhJn01412.jpg', NULL, NULL),
(680, 540, 'MEDIUM', 160, 400, 'images/media/2020/09/medium1598961863oMhJn01412.jpg', NULL, NULL),
(681, 540, 'LARGE', 360, 900, 'images/media/2020/09/large1598961863oMhJn01412.jpg', NULL, '2020-09-01 16:04:23'),
(682, 541, 'ACTUAL', 768, 1920, 'images/media/2020/09/ejEki01112.jpg', NULL, NULL),
(683, 541, 'THUMBNAIL', 60, 150, 'images/media/2020/09/thumbnail1598961889ejEki01112.jpg', NULL, NULL),
(684, 541, 'MEDIUM', 160, 400, 'images/media/2020/09/medium1598961889ejEki01112.jpg', NULL, NULL),
(685, 542, 'ACTUAL', 768, 1920, 'images/media/2020/09/4vQ4P01812.jpg', NULL, NULL),
(686, 541, 'LARGE', 360, 900, 'images/media/2020/09/large1598961889ejEki01112.jpg', NULL, '2020-09-01 16:04:49'),
(687, 542, 'THUMBNAIL', 60, 150, 'images/media/2020/09/thumbnail15989618894vQ4P01812.jpg', NULL, NULL),
(688, 542, 'MEDIUM', 160, 400, 'images/media/2020/09/medium15989618894vQ4P01812.jpg', NULL, NULL),
(689, 542, 'LARGE', 360, 900, 'images/media/2020/09/large15989618894vQ4P01812.jpg', NULL, '2020-09-01 16:04:49'),
(690, 543, 'ACTUAL', 768, 1920, 'images/media/2020/09/fhaJj01512.jpg', NULL, NULL),
(691, 543, 'THUMBNAIL', 60, 150, 'images/media/2020/09/thumbnail1598961890fhaJj01512.jpg', NULL, NULL),
(692, 543, 'MEDIUM', 160, 400, 'images/media/2020/09/medium1598961890fhaJj01512.jpg', NULL, NULL),
(693, 543, 'LARGE', 360, 900, 'images/media/2020/09/large1598961890fhaJj01512.jpg', NULL, '2020-09-01 16:04:50'),
(1033, 675, 'ACTUAL', 172, 172, 'images/media/2021/08/yW6nx24111.jpg', NULL, NULL),
(704, 548, 'ACTUAL', 70, 70, 'images/media/2020/09/SPrKV15810.png', NULL, NULL),
(705, 549, 'ACTUAL', 70, 70, 'images/media/2020/09/d9LiP15910.png', NULL, NULL),
(706, 550, 'ACTUAL', 70, 70, 'images/media/2020/09/Bkudy15110.png', NULL, NULL),
(972, 644, 'THUMBNAIL', 19, 150, 'images/media/2021/05/thumbnail1622383000eASsh30905.png', NULL, NULL),
(971, 643, 'THUMBNAIL', 150, 113, 'images/media/2021/05/thumbnail1622383000GAbT930705.png', NULL, NULL),
(970, 644, 'ACTUAL', 26, 208, 'images/media/2021/05/eASsh30905.png', NULL, NULL),
(941, 630, 'LARGE', 425, 900, 'images/media/2021/05/large1622382997h4A9x30205.jpg', NULL, '2021-05-30 00:56:37'),
(942, 631, 'ACTUAL', 318, 1172, 'images/media/2021/05/LDAEh30405.jpg', NULL, NULL),
(943, 631, 'THUMBNAIL', 41, 150, 'images/media/2021/05/thumbnail1622382998LDAEh30405.jpg', NULL, NULL),
(944, 632, 'ACTUAL', 32, 32, 'images/media/2021/05/9ahXv30905.png', NULL, NULL),
(945, 631, 'MEDIUM', 109, 400, 'images/media/2021/05/medium1622382998LDAEh30405.jpg', NULL, NULL),
(946, 631, 'LARGE', 244, 900, 'images/media/2021/05/large1622382998LDAEh30405.jpg', NULL, '2021-05-30 00:56:38'),
(947, 633, 'ACTUAL', 510, 470, 'images/media/2021/05/aShfw30205.png', NULL, NULL),
(948, 633, 'THUMBNAIL', 150, 138, 'images/media/2021/05/thumbnail1622382998aShfw30205.png', NULL, NULL),
(949, 633, 'MEDIUM', 400, 369, 'images/media/2021/05/medium1622382998aShfw30205.png', NULL, NULL),
(950, 634, 'ACTUAL', 551, 1169, 'images/media/2021/05/PUpyg30605.jpg', NULL, NULL),
(951, 635, 'ACTUAL', 60, 60, 'images/media/2021/05/nxu4D30405.png', NULL, NULL),
(952, 634, 'THUMBNAIL', 71, 150, 'images/media/2021/05/thumbnail1622382999PUpyg30605.jpg', NULL, NULL),
(953, 634, 'MEDIUM', 189, 400, 'images/media/2021/05/medium1622382999PUpyg30605.jpg', NULL, NULL),
(954, 634, 'LARGE', 424, 900, 'images/media/2021/05/large1622382999PUpyg30605.jpg', NULL, '2021-05-30 00:56:39'),
(983, 650, 'ACTUAL', 164, 240, 'images/media/2021/06/yjwn328807.png', NULL, NULL),
(982, 649, 'ACTUAL', 164, 240, 'images/media/2021/06/Dxtr228907.png', NULL, NULL),
(957, 637, 'ACTUAL', 172, 172, 'images/media/2021/05/HvB3h30905.png', NULL, NULL),
(958, 638, 'ACTUAL', 172, 172, 'images/media/2021/05/hbue030405.png', NULL, NULL),
(959, 637, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622382999HvB3h30905.png', NULL, NULL),
(960, 638, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622382999hbue030405.png', NULL, NULL),
(961, 639, 'ACTUAL', 172, 172, 'images/media/2021/05/HXJpD30805.png', NULL, NULL),
(985, 650, 'THUMBNAIL', 103, 150, 'images/media/2021/06/thumbnail1624893533yjwn328807.png', NULL, NULL),
(963, 639, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622383000HXJpD30805.png', NULL, NULL),
(984, 649, 'THUMBNAIL', 103, 150, 'images/media/2021/06/thumbnail1624893533Dxtr228907.png', NULL, NULL),
(965, 641, 'ACTUAL', 172, 172, 'images/media/2021/05/KeVGZ30305.png', NULL, NULL),
(966, 642, 'ACTUAL', 204, 110, 'images/media/2021/05/p53KU30905.png', NULL, NULL),
(967, 641, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622383000KeVGZ30305.png', NULL, NULL),
(968, 642, 'THUMBNAIL', 150, 81, 'images/media/2021/05/thumbnail1622383000p53KU30905.png', NULL, NULL),
(969, 643, 'ACTUAL', 189, 142, 'images/media/2021/05/GAbT930705.png', NULL, NULL),
(744, 566, 'ACTUAL', 768, 1920, 'images/media/2021/02/M0stn02709.jpg', NULL, NULL),
(745, 566, 'THUMBNAIL', 60, 150, 'images/media/2021/02/thumbnail1612259951M0stn02709.jpg', NULL, NULL),
(746, 566, 'MEDIUM', 160, 400, 'images/media/2021/02/medium1612259952M0stn02709.jpg', NULL, NULL),
(747, 566, 'LARGE', 360, 900, 'images/media/2021/02/large1612259952M0stn02709.jpg', NULL, '2021-02-02 14:59:12'),
(757, 570, 'ACTUAL', 600, 600, 'images/media/2021/02/IzIjT18612.jpg', NULL, NULL),
(758, 570, 'THUMBNAIL', 150, 150, 'images/media/2021/02/thumbnail1613651395IzIjT18612.jpg', NULL, NULL),
(759, 570, 'MEDIUM', 400, 400, 'images/media/2021/02/medium1613651395IzIjT18612.jpg', NULL, NULL),
(928, 627, 'ACTUAL', 330, 1090, 'images/media/2021/05/ewfXD24212.png', NULL, NULL),
(929, 627, 'THUMBNAIL', 45, 150, 'images/media/2021/05/thumbnail1621845441ewfXD24212.png', NULL, NULL),
(930, 627, 'MEDIUM', 121, 400, 'images/media/2021/05/medium1621845441ewfXD24212.png', NULL, NULL),
(931, 627, 'LARGE', 272, 900, 'images/media/2021/05/large1621845441ewfXD24212.png', NULL, '2021-05-24 07:37:21'),
(932, 628, 'ACTUAL', 318, 1172, 'images/media/2021/05/OSUZI24106.jpg', NULL, NULL),
(933, 628, 'THUMBNAIL', 41, 150, 'images/media/2021/05/thumbnail1621866479OSUZI24106.jpg', NULL, NULL),
(934, 628, 'MEDIUM', 109, 400, 'images/media/2021/05/medium1621866479OSUZI24106.jpg', NULL, NULL),
(935, 628, 'LARGE', 244, 900, 'images/media/2021/05/large1621866479OSUZI24106.jpg', NULL, '2021-05-24 01:27:59'),
(973, 645, 'ACTUAL', 602, 545, 'images/media/2021/05/Ne7Vg30605.png', NULL, NULL),
(974, 646, 'ACTUAL', 300, 300, 'images/media/2021/05/ZGTCm30705.png', NULL, NULL),
(975, 646, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622383001ZGTCm30705.png', NULL, NULL),
(976, 645, 'THUMBNAIL', 150, 136, 'images/media/2021/05/thumbnail1622383001Ne7Vg30605.png', NULL, NULL),
(977, 645, 'MEDIUM', 400, 362, 'images/media/2021/05/medium1622383001Ne7Vg30605.png', NULL, NULL),
(978, 648, 'ACTUAL', 172, 172, 'images/media/2021/05/j2u0g31509.png', NULL, NULL),
(979, 647, 'ACTUAL', 172, 172, 'images/media/2021/05/coYnP31909.png', NULL, NULL),
(980, 648, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622440346j2u0g31509.png', NULL, NULL),
(981, 647, 'THUMBNAIL', 150, 150, 'images/media/2021/05/thumbnail1622440346coYnP31909.png', NULL, NULL),
(986, 651, 'ACTUAL', 164, 240, 'images/media/2021/06/L26Aq28307.png', NULL, NULL),
(987, 651, 'THUMBNAIL', 103, 150, 'images/media/2021/06/thumbnail1624893534L26Aq28307.png', NULL, NULL),
(988, 652, 'ACTUAL', 164, 240, 'images/media/2021/06/nQ7xm28207.png', NULL, NULL),
(989, 652, 'THUMBNAIL', 103, 150, 'images/media/2021/06/thumbnail1624893534nQ7xm28207.png', NULL, NULL),
(990, 653, 'ACTUAL', 164, 240, 'images/media/2021/06/qMaId28407.png', NULL, NULL),
(991, 654, 'ACTUAL', 164, 240, 'images/media/2021/06/Ti0e828907.png', NULL, NULL),
(992, 653, 'THUMBNAIL', 103, 150, 'images/media/2021/06/thumbnail1624893534qMaId28407.png', NULL, NULL),
(993, 654, 'THUMBNAIL', 103, 150, 'images/media/2021/06/thumbnail1624893534Ti0e828907.png', NULL, NULL),
(994, 655, 'ACTUAL', 172, 172, 'images/media/2021/07/hWkh401912.png', NULL, NULL),
(995, 655, 'THUMBNAIL', 150, 150, 'images/media/2021/07/thumbnail1625128732hWkh401912.png', NULL, NULL),
(1022, 664, 'ACTUAL', 318, 1170, 'images/media/2021/07/CaTF606503.jpg', NULL, NULL),
(1023, 665, 'ACTUAL', 318, 1170, 'images/media/2021/07/ZagNy06503.jpg', NULL, NULL),
(1024, 666, 'ACTUAL', 318, 1170, 'images/media/2021/07/Zr1nw06103.jpg', NULL, NULL),
(1030, 672, 'ACTUAL', 160, 160, 'images/media/2021/08/JUuFx24310.jpg', NULL, NULL),
(1026, 668, 'ACTUAL', 318, 1170, 'images/media/2021/07/YP20406903.jpg', NULL, NULL),
(1027, 669, 'ACTUAL', 318, 1170, 'images/media/2021/07/I5ZTI06703.jpg', NULL, NULL),
(1028, 670, 'ACTUAL', 318, 1170, 'images/media/2021/07/UY3aH06303.jpg', NULL, NULL),
(1021, 663, 'ACTUAL', 510, 470, 'images/media/2021/07/tVllU05905.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 's101', 1000, 1, 60.00, 'in', '2019-09-17 15:44:55', NULL),
(2, 1, 0, 's102', 1000, 6, 20.00, 'in', '2019-09-18 11:19:17', NULL),
(3, 1, 0, 's103', 1000, 13, 25.00, 'in', '2019-09-18 11:21:15', NULL),
(4, 1, 0, 's104', 1000, 13, 25.00, 'in', '2019-09-18 11:21:47', NULL),
(5, 1, 0, 's105', 1000, 13, 25.00, 'in', '2019-09-18 11:23:33', NULL),
(6, 1, 0, 's106', 1000, 19, 20.00, 'in', '2019-09-18 11:25:25', NULL),
(7, 1, 0, 's107', 1000, 29, 55.00, 'in', '2019-09-18 11:27:45', NULL),
(8, 1, 0, 'S108', 1000, 2, 45.00, 'in', '2019-09-18 11:28:54', NULL),
(9, 1, 0, 'S108', 1000, 3, 30.00, 'in', '2019-09-18 11:29:33', NULL),
(10, 1, 0, 'S109', 500, 4, 70.00, 'in', '2019-09-18 11:30:16', NULL),
(11, 1, 0, 'S109', 500, 4, 70.00, 'in', '2019-09-18 11:30:51', NULL),
(12, 1, 0, 'S110', 500, 4, 70.00, 'in', '2019-09-18 11:31:11', NULL),
(13, 1, 0, 'S111', 1000, 5, 30.00, 'in', '2019-09-18 11:31:55', NULL),
(14, 1, 0, 's112', 1000, 7, 18.00, 'in', '2019-09-18 11:32:40', NULL),
(15, 1, 0, 's113', 500, 8, 20.00, 'in', '2019-09-18 11:33:24', NULL),
(16, 1, 0, 's114', 500, 8, 20.00, 'in', '2019-09-18 11:34:05', NULL),
(17, 1, 0, 's115', 500, 8, 20.00, 'in', '2019-09-18 11:34:55', NULL),
(18, 1, 0, 's116', 1000, 9, 10.00, 'in', '2019-09-18 11:35:45', NULL),
(19, 1, 0, 's116', 1000, 10, 20.00, 'in', '2019-09-18 11:37:40', NULL),
(20, 1, 0, 's117', 500, 11, 15.00, 'in', '2019-09-18 11:38:23', NULL),
(21, 1, 0, 's117', 500, 11, 15.00, 'in', '2019-09-18 11:39:52', NULL),
(22, 1, 0, 's117', 500, 11, 15.00, 'in', '2019-09-18 11:40:41', NULL),
(23, 1, 0, 's118', 1000, 12, 15.00, 'in', '2019-09-18 11:41:33', NULL),
(24, 1, 0, 's119', 200, 14, 30.00, 'in', '2019-09-18 11:42:17', NULL),
(25, 1, 0, 's120', 500, 15, 35.00, 'in', '2019-09-18 11:42:54', NULL),
(26, 1, 0, 's121', 600, 16, 40.00, 'in', '2019-09-18 11:43:31', NULL),
(27, 1, 0, 's121', 800, 17, 15.00, 'in', '2019-09-18 11:44:29', NULL),
(28, 1, 0, 's122', 600, 18, 30.00, 'in', '2019-09-18 11:45:18', NULL),
(29, 1, 0, 's123', 900, 20, 60.00, 'in', '2019-09-18 11:46:28', NULL),
(30, 1, 0, 's124', 400, 21, 55.00, 'in', '2019-09-18 11:47:22', NULL),
(31, 1, 0, 's124', 300, 21, 55.00, 'in', '2019-09-18 11:47:38', NULL),
(32, 1, 0, 's125', 800, 22, 70.00, 'in', '2019-09-18 11:48:18', NULL),
(33, 1, 0, 's125', 400, 24, 50.00, 'in', '2019-09-18 11:49:44', NULL),
(34, 1, 0, 's128', 300, 24, 50.00, 'in', '2019-09-18 11:50:05', NULL),
(35, 1, 0, 's129', 800, 25, 60.00, 'in', '2019-09-18 11:50:52', NULL),
(36, 1, 0, 's130', 800, 26, 80.00, 'in', '2019-09-18 11:51:28', NULL),
(37, 1, 0, 's131', 900, 27, 55.00, 'in', '2019-09-18 11:52:33', NULL),
(38, 1, 0, 's131', 500, 28, 70.00, 'in', '2019-09-18 11:53:08', NULL),
(39, 1, 0, 's132', 500, 28, 70.00, 'in', '2019-09-18 11:53:26', NULL),
(40, 1, 0, 's133', 1100, 30, 105.00, 'in', '2019-09-18 11:53:52', NULL),
(41, 1, 0, 's134', 900, 31, 52.00, 'in', '2019-09-18 11:54:19', NULL),
(42, 1, 0, 's135', 1200, 32, 71.00, 'in', '2019-09-18 11:54:44', NULL),
(43, 0, 1568989337, '', 1, 32, 0.00, 'out', NULL, NULL),
(44, 0, 1568989349, '', 1, 32, 0.00, 'out', NULL, NULL),
(45, 0, 1568989974, '', 1, 32, 0.00, 'out', NULL, NULL),
(46, 0, 1569219521, '', 1, 29, 0.00, 'out', NULL, NULL),
(47, 0, 1569219840, '', 1, 29, 0.00, 'out', NULL, NULL),
(48, 0, 1569220035, '', 1, 29, 0.00, 'out', NULL, NULL),
(49, 0, 1569220106, '', 1, 29, 0.00, 'out', NULL, NULL),
(50, 0, 1569220168, '', 1, 29, 0.00, 'out', NULL, NULL),
(51, 0, 1569220495, '', 1, 29, 0.00, 'out', NULL, NULL),
(52, 0, 1569330243, '', 1, 26, 0.00, 'out', NULL, NULL),
(53, 0, 1569330243, '', 1, 27, 0.00, 'out', NULL, NULL),
(54, 0, 1569330243, '', 3, 30, 0.00, 'out', NULL, NULL),
(55, 0, 1569330243, '', 2, 31, 0.00, 'out', NULL, NULL),
(56, 0, 1569486590, '', 1, 32, 0.00, 'out', NULL, NULL),
(57, 0, 1569495585, '', 1, 19, 0.00, 'out', NULL, NULL),
(58, 0, 1569495585, '', 1, 29, 0.00, 'out', NULL, NULL),
(59, 0, 1569495911, '', 1, 1, 0.00, 'out', NULL, NULL),
(60, 0, 1569496301, '', 1, 29, 0.00, 'out', NULL, NULL),
(61, 0, 1569496712, '', 1, 29, 0.00, 'out', NULL, NULL),
(62, 0, 1569497195, '', 3, 32, 0.00, 'out', NULL, NULL),
(63, 0, 1569497197, '', 3, 32, 0.00, 'out', NULL, NULL),
(64, 0, 1569503812, '', 1, 8, 0.00, 'out', NULL, NULL),
(65, 0, 1569583044, '', 1, 26, 0.00, 'out', NULL, NULL),
(66, 0, 1569583044, '', 1, 27, 0.00, 'out', NULL, NULL),
(67, 0, 1569583044, '', 1, 30, 0.00, 'out', NULL, NULL),
(68, 0, 1569583044, '', 1, 31, 0.00, 'out', NULL, NULL),
(69, 0, 1569607915, '', 1, 14, 0.00, 'out', NULL, NULL),
(70, 0, 1569655219, '', 1, 27, 0.00, 'out', NULL, NULL),
(71, 0, 1569655219, '', 1, 29, 0.00, 'out', NULL, NULL),
(72, 0, 1569655219, '', 1, 32, 0.00, 'out', NULL, NULL),
(73, 0, 1569655219, '', 1, 6, 0.00, 'out', NULL, NULL),
(74, 0, 1569692983, '', 1, 31, 0.00, 'out', NULL, NULL),
(75, 0, 1569834237, '', 1, 18, 0.00, 'out', NULL, NULL),
(76, 0, 1569843699, '', 1, 3, 0.00, 'out', NULL, NULL),
(77, 0, 1569901100, '', 1, 18, 0.00, 'out', NULL, NULL),
(78, 0, 1569901100, '', 1, 25, 0.00, 'out', NULL, NULL),
(79, 0, 1569901100, '', 1, 26, 0.00, 'out', NULL, NULL),
(80, 0, 1569901100, '', 1, 3, 0.00, 'out', NULL, NULL),
(81, 0, 1569901100, '', 1, 6, 0.00, 'out', NULL, NULL),
(82, 0, 1569913767, '', 1, 3, 0.00, 'out', NULL, NULL),
(83, 0, 1569913767, '', 6, 30, 0.00, 'out', NULL, NULL),
(84, 0, 1569913767, '', 1, 6, 0.00, 'out', NULL, NULL),
(85, 0, 1569935181, '', 1, 13, 0.00, 'out', NULL, NULL),
(86, 0, 1570024696, '', 1, 18, 0.00, 'out', NULL, NULL),
(87, 0, 1570083856, '', 2, 4, 0.00, 'out', NULL, NULL),
(88, 0, 1570085481, '', 1, 18, 0.00, 'out', NULL, NULL),
(89, 0, 1570095995, '', 1, 18, 0.00, 'out', NULL, NULL),
(90, 0, 1570095995, '', 1, 25, 0.00, 'out', NULL, NULL),
(91, 0, 1570282489, '', 1, 29, 0.00, 'out', NULL, NULL),
(92, 0, 1570360230, '', 1, 2, 0.00, 'out', NULL, NULL),
(93, 0, 1570372049, '', 1, 1, 0.00, 'out', NULL, NULL),
(94, 0, 1570434540, '', 1, 26, 0.00, 'out', NULL, NULL),
(95, 0, 1570434540, '', 1, 27, 0.00, 'out', NULL, NULL),
(96, 0, 1570434541, '', 1, 29, 0.00, 'out', NULL, NULL),
(97, 0, 1570434541, '', 1, 30, 0.00, 'out', NULL, NULL),
(98, 0, 1570434541, '', 1, 31, 0.00, 'out', NULL, NULL),
(99, 0, 1570434541, '', 1, 32, 0.00, 'out', NULL, NULL),
(100, 0, 1570456145, '', 3, 6, 0.00, 'out', NULL, NULL),
(101, 0, 1570776834, '', 1, 2, 0.00, 'out', NULL, NULL),
(102, 0, 1570777371, '', 1, 29, 0.00, 'out', NULL, NULL),
(103, 0, 1570794856, '', 1, 4, 0.00, 'out', NULL, NULL),
(104, 0, 1570843860, '', 2, 31, 0.00, 'out', NULL, NULL),
(105, 0, 1570978655, '', 1, 30, 0.00, 'out', NULL, NULL),
(106, 0, 1570978655, '', 1, 31, 0.00, 'out', NULL, NULL),
(107, 0, 1570978655, '', 1, 32, 0.00, 'out', NULL, NULL),
(108, 0, 1571013156, '', 1, 30, 0.00, 'out', NULL, NULL),
(109, 0, 1571388785, '', 1, 30, 0.00, 'out', NULL, NULL),
(110, 0, 1571388785, '', 1, 31, 0.00, 'out', NULL, NULL),
(111, 0, 1571403810, '', 1, 1, 0.00, 'out', NULL, NULL),
(112, 0, 1571483054, '', 1, 25, 0.00, 'out', NULL, NULL),
(113, 0, 1571483054, '', 1, 27, 0.00, 'out', NULL, NULL),
(114, 0, 1571492712, '', 1, 31, 0.00, 'out', NULL, NULL),
(115, 0, 1571492712, '', 1, 32, 0.00, 'out', NULL, NULL),
(116, 0, 1571609798, '', 141, 29, 0.00, 'out', NULL, NULL),
(117, 0, 1571609798, '', 1, 30, 0.00, 'out', NULL, NULL),
(118, 0, 1571609798, '', 1, 6, 0.00, 'out', NULL, NULL),
(119, 0, 1571749086, '', 1, 30, 0.00, 'out', NULL, NULL),
(120, 0, 1571749086, '', 1, 31, 0.00, 'out', NULL, NULL),
(121, 0, 1571758880, '', 2, 1, 0.00, 'out', NULL, NULL),
(122, 0, 1571829621, '', 1, 32, 0.00, 'out', NULL, NULL),
(123, 0, 1571898183, '', 1, 32, 0.00, 'out', NULL, NULL),
(124, 0, 1571914913, '', 1, 1, 0.00, 'out', NULL, NULL),
(125, 0, 1571925502, '', 3, 1, 0.00, 'out', NULL, NULL),
(126, 0, 1572090563, '', 1, 31, 0.00, 'out', NULL, NULL),
(127, 0, 1572155904, '', 2, 1, 0.00, 'out', NULL, NULL),
(128, 0, 1572258276, '', 1, 26, 0.00, 'out', NULL, NULL),
(129, 0, 1572439226, '', 1, 32, 0.00, 'out', NULL, NULL),
(130, 0, 1572439526, '', 1, 31, 0.00, 'out', NULL, NULL),
(131, 0, 1572443429, '', 1, 29, 0.00, 'out', NULL, NULL),
(132, 0, 1572443429, '', 3, 31, 0.00, 'out', NULL, NULL),
(133, 0, 1572449034, '', 1, 30, 0.00, 'out', NULL, NULL),
(134, 0, 1572449034, '', 1, 31, 0.00, 'out', NULL, NULL),
(135, 0, 1572552652, '', 1, 1, 0.00, 'out', NULL, NULL),
(136, 0, 1572552652, '', 2, 30, 0.00, 'out', NULL, NULL),
(137, 0, 1572611252, '', 1, 21, 0.00, 'out', NULL, NULL),
(138, 0, 1572611252, '', 2, 25, 0.00, 'out', NULL, NULL),
(139, 0, 1572611252, '', 1, 27, 0.00, 'out', NULL, NULL),
(140, 0, 1572677571, '', 18, 15, 0.00, 'out', NULL, NULL),
(141, 0, 1572694686, '', 3, 1, 0.00, 'out', NULL, NULL),
(142, 0, 1572704623, '', 1, 14, 0.00, 'out', NULL, NULL),
(143, 0, 1572704623, '', 1, 15, 0.00, 'out', NULL, NULL),
(144, 0, 1572704623, '', 1, 17, 0.00, 'out', NULL, NULL),
(145, 0, 1572704623, '', 1, 32, 0.00, 'out', NULL, NULL),
(146, 0, 1572729539, '', 1, 4, 0.00, 'out', NULL, NULL),
(147, 0, 1572868871, '', 1, 30, 0.00, 'out', NULL, NULL),
(148, 0, 1573019664, '', 1, 29, 0.00, 'out', NULL, NULL),
(149, 0, 1573019664, '', 2, 30, 0.00, 'out', NULL, NULL),
(150, 0, 1573019664, '', 3, 32, 0.00, 'out', NULL, NULL),
(151, 0, 1573049636, '', 1, 31, 0.00, 'out', NULL, NULL),
(152, 0, 1573104846, '', 20, 2, 0.00, 'out', NULL, NULL),
(153, 0, 1573109729, '', 1, 31, 0.00, 'out', NULL, NULL),
(154, 0, 1573303350, '', 1, 26, 0.00, 'out', NULL, NULL),
(155, 0, 1573303350, '', 1, 30, 0.00, 'out', NULL, NULL),
(156, 0, 1573322647, '', 1, 31, 0.00, 'out', NULL, NULL),
(157, 0, 1573389364, '', 1, 19, 0.00, 'out', NULL, NULL),
(158, 0, 1573540158, '', 1, 25, 0.00, 'out', NULL, NULL),
(159, 0, 1573546969, '', 1, 7, 0.00, 'out', NULL, NULL),
(160, 0, 1573567460, '', 1, 30, 0.00, 'out', NULL, NULL),
(161, 0, 1573567460, '', 1, 16, 0.00, 'out', NULL, NULL),
(162, 0, 1573567460, '', 1, 1, 0.00, 'out', NULL, NULL),
(163, 0, 1573604913, '', 1, 31, 0.00, 'out', NULL, NULL),
(164, 0, 1573604913, '', 1, 30, 0.00, 'out', NULL, NULL),
(165, 0, 1573604913, '', 1, 18, 0.00, 'out', NULL, NULL),
(166, 0, 1573626564, '', 1, 29, 0.00, 'out', NULL, NULL),
(167, 0, 1573717478, '', 1, 31, 0.00, 'out', NULL, NULL),
(168, 0, 1573717478, '', 1, 7, 0.00, 'out', NULL, NULL),
(169, 0, 1573786155, '', 2, 32, 0.00, 'out', NULL, NULL),
(170, 0, 1573786155, '', 1, 31, 0.00, 'out', NULL, NULL),
(171, 0, 1573836405, '', 1, 31, 0.00, 'out', NULL, NULL),
(172, 0, 1573836412, '', 1, 31, 0.00, 'out', NULL, NULL),
(173, 0, 1573847140, '', 1, 7, 0.00, 'out', NULL, NULL),
(174, 0, 1573862019, '', 2, 4, 0.00, 'out', NULL, NULL),
(175, 0, 1573900015, '', 1, 31, 0.00, 'out', NULL, NULL),
(176, 0, 1573904738, '', 1, 31, 0.00, 'out', NULL, NULL),
(177, 0, 1573987089, '', 1, 16, 0.00, 'out', NULL, NULL),
(178, 0, 1573990606, '', 1, 19, 0.00, 'out', NULL, NULL),
(179, 0, 1573998674, '', 1, 7, 0.00, 'out', NULL, NULL),
(180, 0, 1574000044, '', 1, 7, 0.00, 'out', NULL, NULL),
(181, 0, 1574016045, '', 1, 2, 0.00, 'out', NULL, NULL),
(182, 0, 1574073052, '', 1, 3, 0.00, 'out', NULL, NULL),
(183, 0, 1574094449, '', 1, 32, 0.00, 'out', NULL, NULL),
(184, 0, 1574169388, '', 16, 25, 0.00, 'out', NULL, NULL),
(185, 0, 1574179456, '', 1, 16, 0.00, 'out', NULL, NULL),
(186, 0, 1574179456, '', 1, 5, 0.00, 'out', NULL, NULL),
(187, 0, 1574203349, '', 2, 2, 0.00, 'out', NULL, NULL),
(188, 0, 1574235415, '', 2, 13, 0.00, 'out', NULL, NULL),
(189, 0, 1574235415, '', 2, 13, 0.00, 'out', NULL, NULL),
(190, 0, 1574235415, '', 2, 13, 0.00, 'out', NULL, NULL),
(191, 0, 1574235415, '', 1, 10, 0.00, 'out', NULL, NULL),
(192, 0, 1574241518, '', 1, 32, 0.00, 'out', NULL, NULL),
(193, 0, 1574241518, '', 1, 16, 0.00, 'out', NULL, NULL),
(194, 0, 1574247963, '', 1, 29, 0.00, 'out', NULL, NULL),
(195, 0, 1574268584, '', 1, 16, 0.00, 'out', NULL, NULL),
(196, 0, 1574289244, '', 1, 31, 0.00, 'out', NULL, NULL),
(197, 0, 1574407295, '', 1, 6, 0.00, 'out', NULL, NULL),
(198, 0, 1574407295, '', 1, 2, 0.00, 'out', NULL, NULL),
(199, 0, 1574407295, '', 1, 1, 0.00, 'out', NULL, NULL),
(200, 0, 1574407486, '', 1, 32, 0.00, 'out', NULL, NULL),
(201, 0, 1574407608, '', 1, 31, 0.00, 'out', NULL, NULL),
(202, 0, 1574426845, '', 1, 5, 0.00, 'out', NULL, NULL),
(203, 0, 1574439821, '', 1, 16, 0.00, 'out', NULL, NULL),
(204, 0, 1574491861, '', 1, 7, 0.00, 'out', NULL, NULL),
(205, 0, 1574498456, '', 1, 16, 0.00, 'out', NULL, NULL),
(206, 0, 1574501037, '', 1, 25, 0.00, 'out', NULL, NULL),
(207, 0, 1574501037, '', 1, 31, 0.00, 'out', NULL, NULL),
(208, 0, 1574502841, '', 1, 20, 0.00, 'out', NULL, NULL),
(209, 0, 1574525009, '', 1, 14, 0.00, 'out', NULL, NULL),
(210, 0, 1574549701, '', 2, 32, 0.00, 'out', NULL, NULL),
(211, 0, 1574600758, '', 1, 26, 0.00, 'out', NULL, NULL),
(212, 0, 1574600758, '', 1, 6, 0.00, 'out', NULL, NULL),
(213, 0, 1574600758, '', 1, 6, 0.00, 'out', NULL, NULL),
(214, 0, 1574600758, '', 1, 6, 0.00, 'out', NULL, NULL),
(215, 0, 1574617644, '', 1, 20, 0.00, 'out', NULL, NULL),
(216, 0, 1574617644, '', 6, 5, 0.00, 'out', NULL, NULL),
(217, 0, 1574660060, '', 1, 4, 0.00, 'out', NULL, NULL),
(218, 0, 1574671640, '', 1, 32, 0.00, 'out', NULL, NULL),
(219, 0, 1574672118, '', 1, 32, 0.00, 'out', NULL, NULL),
(220, 0, 1574672118, '', 1, 30, 0.00, 'out', NULL, NULL),
(221, 0, 1574708863, '', 10, 7, 0.00, 'out', NULL, NULL),
(222, 0, 1574708863, '', 1, 5, 0.00, 'out', NULL, NULL),
(223, 0, 1574817007, '', 1, 26, 0.00, 'out', NULL, NULL),
(224, 0, 1574817007, '', 2, 7, 0.00, 'out', NULL, NULL),
(225, 0, 1574837720, '', 2, 13, 0.00, 'out', NULL, NULL),
(226, 0, 1574837720, '', 1, 6, 0.00, 'out', NULL, NULL),
(227, 0, 1574837720, '', 2, 8, 0.00, 'out', NULL, NULL),
(228, 0, 1575042026, '', 1, 18, 0.00, 'out', NULL, NULL),
(229, 0, 1575042026, '', 1, 16, 0.00, 'out', NULL, NULL),
(230, 0, 1575279457, '', 1, 5, 0.00, 'out', NULL, NULL),
(231, 0, 1575282889, '', 3, 32, 0.00, 'out', NULL, NULL),
(232, 0, 1575282889, '', 1, 31, 0.00, 'out', NULL, NULL),
(233, 0, 1575282889, '', 1, 25, 0.00, 'out', NULL, NULL),
(234, 0, 1575282889, '', 1, 25, 0.00, 'out', NULL, NULL),
(235, 0, 1575284561, '', 1, 27, 0.00, 'out', NULL, NULL),
(236, 0, 1575310274, '', 2, 3, 0.00, 'out', NULL, NULL),
(237, 0, 1575320895, '', 5, 32, 0.00, 'out', NULL, NULL),
(238, 0, 1575389841, '', 1, 5, 0.00, 'out', NULL, NULL),
(239, 0, 1575391920, '', 1, 26, 0.00, 'out', NULL, NULL),
(240, 0, 1575511999, '', 1, 16, 0.00, 'out', NULL, NULL),
(241, 0, 1575516964, '', 1, 7, 0.00, 'out', NULL, NULL),
(242, 0, 1575516964, '', 1, 32, 0.00, 'out', NULL, NULL),
(243, 0, 1575639208, '', 1, 7, 0.00, 'out', NULL, NULL),
(244, 0, 1575651764, '', 5, 30, 0.00, 'out', NULL, NULL),
(245, 0, 1575707053, '', 2, 16, 0.00, 'out', NULL, NULL),
(246, 0, 1575735520, '', 1, 1, 0.00, 'out', NULL, NULL),
(247, 0, 1575785138, '', 1, 26, 0.00, 'out', NULL, NULL),
(248, 0, 1575785234, '', 1, 5, 0.00, 'out', NULL, NULL),
(249, 0, 1575912081, '', 1, 32, 0.00, 'out', NULL, NULL),
(250, 0, 1575912081, '', 1, 26, 0.00, 'out', NULL, NULL),
(251, 0, 1575977074, '', 1, 16, 0.00, 'out', NULL, NULL),
(252, 0, 1576021697, '', 1, 30, 0.00, 'out', NULL, NULL),
(253, 0, 1576021697, '', 1, 29, 0.00, 'out', NULL, NULL),
(254, 0, 1576021697, '', 1, 29, 0.00, 'out', NULL, NULL),
(255, 0, 1576021697, '', 1, 29, 0.00, 'out', NULL, NULL),
(256, 0, 1576021697, '', 1, 29, 0.00, 'out', NULL, NULL),
(257, 0, 1576021697, '', 1, 29, 0.00, 'out', NULL, NULL),
(258, 0, 1576021697, '', 1, 29, 0.00, 'out', NULL, NULL),
(259, 0, 1576021697, '', 10, 15, 0.00, 'out', NULL, NULL),
(260, 0, 1576021697, '', 1, 14, 0.00, 'out', NULL, NULL),
(261, 0, 1576021697, '', 1, 7, 0.00, 'out', NULL, NULL),
(262, 0, 1576039820, '', 1, 32, 0.00, 'out', NULL, NULL),
(263, 0, 1576039820, '', 1, 31, 0.00, 'out', NULL, NULL),
(264, 0, 1576040383, '', 1, 2, 0.00, 'out', NULL, NULL),
(265, 0, 1576059584, '', 1, 16, 0.00, 'out', NULL, NULL),
(266, 0, 1576087705, '', 1, 16, 0.00, 'out', NULL, NULL),
(267, 0, 1576087705, '', 1, 6, 0.00, 'out', NULL, NULL),
(268, 0, 1576087705, '', 1, 6, 0.00, 'out', NULL, NULL),
(269, 0, 1576087705, '', 1, 6, 0.00, 'out', NULL, NULL),
(270, 0, 1576087705, '', 1, 5, 0.00, 'out', NULL, NULL),
(271, 0, 1576088572, '', 1, 7, 0.00, 'out', NULL, NULL),
(272, 0, 1576113611, '', 3, 30, 0.00, 'out', NULL, NULL),
(273, 0, 1576165616, '', 1, 15, 0.00, 'out', NULL, NULL),
(274, 0, 1576166371, '', 1, 16, 0.00, 'out', NULL, NULL),
(275, 0, 1576194737, '', 1, 1, 0.00, 'out', NULL, NULL),
(276, 0, 1576254744, '', 1, 25, 0.00, 'out', NULL, NULL),
(277, 0, 1576255034, '', 1, 32, 0.00, 'out', NULL, NULL),
(278, 0, 1576275675, '', 1, 31, 0.00, 'out', NULL, NULL),
(279, 0, 1576275675, '', 1, 30, 0.00, 'out', NULL, NULL),
(280, 0, 1576387099, '', 1, 31, 0.00, 'out', NULL, NULL),
(281, 0, 1576400925, '', 1, 9, 0.00, 'out', NULL, NULL),
(282, 0, 1576488861, '', 1, 7, 0.00, 'out', NULL, NULL),
(283, 0, 1576561367, '', 1, 7, 0.00, 'out', NULL, NULL),
(284, 0, 1576647950, '', 1, 17, 0.00, 'out', NULL, NULL),
(285, 0, 1576647950, '', 1, 6, 0.00, 'out', NULL, NULL),
(286, 0, 1576647950, '', 1, 26, 0.00, 'out', NULL, NULL),
(287, 0, 1576648495, '', 1, 20, 0.00, 'out', NULL, NULL),
(288, 0, 1576777516, '', 1, 7, 0.00, 'out', NULL, NULL),
(289, 0, 1576784131, '', 1, 19, 0.00, 'out', NULL, NULL),
(290, 0, 1576855212, '', 1, 31, 0.00, 'out', NULL, NULL),
(291, 0, 1576855212, '', 1, 1, 0.00, 'out', NULL, NULL),
(292, 0, 1576887758, '', 2, 7, 0.00, 'out', NULL, NULL),
(293, 0, 1576919571, '', 1, 32, 0.00, 'out', NULL, NULL),
(294, 0, 1576919571, '', 1, 31, 0.00, 'out', NULL, NULL),
(295, 0, 1576919571, '', 1, 1, 0.00, 'out', NULL, NULL),
(296, 0, 1576952280, '', 1, 32, 0.00, 'out', NULL, NULL),
(297, 0, 1576995820, '', 2, 5, 0.00, 'out', NULL, NULL),
(298, 0, 1577084553, '', 4, 25, 0.00, 'out', NULL, NULL),
(299, 0, 1577084553, '', 1, 20, 0.00, 'out', NULL, NULL),
(300, 0, 1577084553, '', 1, 5, 0.00, 'out', NULL, NULL),
(301, 0, 1577084553, '', 1, 3, 0.00, 'out', NULL, NULL),
(302, 0, 1577092122, '', 1, 32, 0.00, 'out', NULL, NULL),
(303, 0, 1577165955, '', 1, 30, 0.00, 'out', NULL, NULL),
(304, 0, 1577165955, '', 1, 16, 0.00, 'out', NULL, NULL),
(305, 0, 1577165955, '', 1, 5, 0.00, 'out', NULL, NULL),
(306, 0, 1577183541, '', 1, 25, 0.00, 'out', NULL, NULL),
(307, 0, 1577183541, '', 1, 7, 0.00, 'out', NULL, NULL),
(308, 0, 1577183541, '', 1, 1, 0.00, 'out', NULL, NULL),
(309, 0, 1577220849, '', 1, 6, 0.00, 'out', NULL, NULL),
(310, 0, 1577220849, '', 1, 6, 0.00, 'out', NULL, NULL),
(311, 0, 1577220849, '', 1, 6, 0.00, 'out', NULL, NULL),
(312, 0, 1577220849, '', 1, 3, 0.00, 'out', NULL, NULL),
(313, 0, 1577232355, '', 1, 26, 0.00, 'out', NULL, NULL),
(314, 0, 1577309528, '', 1, 3, 0.00, 'out', NULL, NULL),
(315, 0, 1577309528, '', 1, 2, 0.00, 'out', NULL, NULL),
(316, 0, 1577399804, '', 1, 25, 0.00, 'out', NULL, NULL),
(317, 0, 1577427000, '', 7, 16, 0.00, 'out', NULL, NULL),
(318, 0, 1577694839, '', 1, 29, 0.00, 'out', NULL, NULL),
(319, 0, 1577879428, '', 1, 25, 0.00, 'out', NULL, NULL),
(320, 0, 1577899480, '', 1, 20, 0.00, 'out', NULL, NULL),
(321, 0, 1577962270, '', 1, 16, 0.00, 'out', NULL, NULL),
(322, 0, 1577999779, '', 1, 31, 0.00, 'out', NULL, NULL),
(323, 0, 1578004183, '', 1, 16, 0.00, 'out', NULL, NULL),
(324, 0, 1578004183, '', 1, 7, 0.00, 'out', NULL, NULL),
(325, 0, 1578009172, '', 1, 15, 0.00, 'out', NULL, NULL),
(326, 0, 1578009172, '', 1, 14, 0.00, 'out', NULL, NULL),
(327, 0, 1578047158, '', 2, 30, 0.00, 'out', NULL, NULL),
(328, 0, 1578091142, '', 1, 16, 0.00, 'out', NULL, NULL),
(329, 0, 1578121379, '', 1, 7, 0.00, 'out', NULL, NULL),
(330, 0, 1578176747, '', 3, 7, 0.00, 'out', NULL, NULL),
(331, 0, 1578178745, '', 1, 32, 0.00, 'out', NULL, NULL),
(332, 0, 1578178745, '', 1, 7, 0.00, 'out', NULL, NULL),
(333, 0, 1578243843, '', 1, 16, 0.00, 'out', NULL, NULL),
(334, 0, 1578243843, '', 1, 7, 0.00, 'out', NULL, NULL),
(335, 0, 1578255122, '', 1, 16, 0.00, 'out', NULL, NULL),
(336, 0, 1578255122, '', 7, 5, 0.00, 'out', NULL, NULL),
(337, 0, 1578257579, '', 1, 7, 0.00, 'out', NULL, NULL),
(338, 0, 1578257579, '', 1, 7, 0.00, 'out', NULL, NULL),
(339, 0, 1578309700, '', 1, 7, 0.00, 'out', NULL, NULL),
(340, 0, 1578318438, '', 1, 22, 0.00, 'out', NULL, NULL),
(341, 0, 1578319486, '', 4, 16, 0.00, 'out', NULL, NULL),
(342, 0, 1578319486, '', 1, 7, 0.00, 'out', NULL, NULL),
(343, 0, 1578319486, '', 1, 5, 0.00, 'out', NULL, NULL),
(344, 0, 1578329414, '', 1, 32, 0.00, 'out', NULL, NULL),
(345, 0, 1578329414, '', 1, 31, 0.00, 'out', NULL, NULL),
(346, 0, 1578397348, '', 1, 7, 0.00, 'out', NULL, NULL),
(347, 0, 1578405053, '', 1, 32, 0.00, 'out', NULL, NULL),
(348, 0, 1578405053, '', 1, 31, 0.00, 'out', NULL, NULL),
(349, 0, 1578416195, '', 1, 27, 0.00, 'out', NULL, NULL),
(350, 0, 1578416195, '', 1, 25, 0.00, 'out', NULL, NULL),
(351, 0, 1578417377, '', 1, 7, 0.00, 'out', NULL, NULL),
(352, 0, 1578428158, '', 1, 14, 0.00, 'out', NULL, NULL),
(353, 0, 1578428158, '', 1, 9, 0.00, 'out', NULL, NULL),
(354, 0, 1578428158, '', 1, 6, 0.00, 'out', NULL, NULL),
(355, 0, 1578430683, '', 1, 25, 0.00, 'out', NULL, NULL),
(356, 0, 1578466182, '', 1, 6, 0.00, 'out', NULL, NULL),
(357, 0, 1578501008, '', 1, 29, 0.00, 'out', NULL, NULL),
(358, 0, 1578501008, '', 1, 29, 0.00, 'out', NULL, NULL),
(359, 0, 1578501008, '', 1, 29, 0.00, 'out', NULL, NULL),
(360, 0, 1578501008, '', 1, 29, 0.00, 'out', NULL, NULL),
(361, 0, 1578501008, '', 1, 29, 0.00, 'out', NULL, NULL),
(362, 0, 1578501008, '', 1, 29, 0.00, 'out', NULL, NULL),
(363, 0, 1578573765, '', 1, 31, 0.00, 'out', NULL, NULL),
(364, 0, 1578581176, '', 1, 31, 0.00, 'out', NULL, NULL),
(365, 0, 1578586952, '', 1, 30, 0.00, 'out', NULL, NULL),
(366, 0, 1578732711, '', 1, 16, 0.00, 'out', NULL, NULL),
(367, 0, 1578732711, '', 1, 20, 0.00, 'out', NULL, NULL),
(368, 0, 1578740501, '', 2, 32, 0.00, 'out', NULL, NULL),
(369, 0, 1578740501, '', 2, 31, 0.00, 'out', NULL, NULL),
(370, 0, 1578811248, '', 1, 16, 0.00, 'out', NULL, NULL),
(371, 0, 1578903185, '', 1, 31, 0.00, 'out', NULL, NULL),
(372, 0, 1578976565, '', 1, 7, 0.00, 'out', NULL, NULL),
(373, 0, 1578977199, '', 1, 32, 0.00, 'out', NULL, NULL),
(374, 0, 1578998278, '', 1, 16, 0.00, 'out', NULL, NULL),
(375, 0, 1579000138, '', 1, 32, 0.00, 'out', NULL, NULL),
(376, 0, 1579021626, '', 1, 32, 0.00, 'out', NULL, NULL),
(377, 0, 1579021626, '', 1, 30, 0.00, 'out', NULL, NULL),
(378, 0, 1579021626, '', 1, 22, 0.00, 'out', NULL, NULL),
(379, 0, 1579021882, '', 1, 32, 0.00, 'out', NULL, NULL),
(380, 0, 1579021882, '', 1, 31, 0.00, 'out', NULL, NULL),
(381, 0, 1579041002, '', 10, 19, 0.00, 'out', NULL, NULL),
(382, 0, 1579041002, '', 10, 19, 0.00, 'out', NULL, NULL),
(383, 0, 1579041002, '', 10, 19, 0.00, 'out', NULL, NULL),
(384, 0, 1579083939, '', 1, 18, 0.00, 'out', NULL, NULL),
(385, 0, 1579088472, '', 1, 7, 0.00, 'out', NULL, NULL),
(386, 0, 1579088547, '', 3, 7, 0.00, 'out', NULL, NULL),
(387, 0, 1579157329, '', 2, 7, 0.00, 'out', NULL, NULL),
(388, 0, 1579157329, '', 1, 25, 0.00, 'out', NULL, NULL),
(389, 0, 1579175240, '', 1, 32, 0.00, 'out', NULL, NULL),
(390, 0, 1579183384, '', 1, 5, 0.00, 'out', NULL, NULL),
(391, 0, 1579244206, '', 1, 6, 0.00, 'out', NULL, NULL),
(392, 0, 1579244206, '', 1, 6, 0.00, 'out', NULL, NULL),
(393, 0, 1579244206, '', 1, 6, 0.00, 'out', NULL, NULL),
(394, 0, 1579271589, '', 1, 16, 0.00, 'out', NULL, NULL),
(395, 0, 1579517538, '', 1, 16, 0.00, 'out', NULL, NULL),
(396, 0, 1579543233, '', 1, 32, 0.00, 'out', NULL, NULL),
(397, 0, 1579545268, '', 1, 31, 0.00, 'out', NULL, NULL),
(398, 0, 1579545268, '', 3, 18, 0.00, 'out', NULL, NULL),
(399, 0, 1579591719, '', 1, 7, 0.00, 'out', NULL, NULL),
(400, 0, 1579629961, '', 1, 16, 0.00, 'out', NULL, NULL),
(401, 0, 1579659638, '', 1, 7, 0.00, 'out', NULL, NULL),
(402, 0, 1579729046, '', 1, 16, 0.00, 'out', NULL, NULL),
(403, 0, 1579729046, '', 2, 6, 0.00, 'out', NULL, NULL),
(404, 0, 1579729046, '', 2, 6, 0.00, 'out', NULL, NULL),
(405, 0, 1579729046, '', 2, 6, 0.00, 'out', NULL, NULL),
(406, 0, 1579792468, '', 1, 16, 0.00, 'out', NULL, NULL),
(407, 0, 1579830819, '', 1, 7, 0.00, 'out', NULL, NULL),
(408, 0, 1579861823, '', 1, 10, 0.00, 'out', NULL, NULL),
(409, 0, 1579861823, '', 4, 7, 0.00, 'out', NULL, NULL),
(410, 0, 1579883377, '', 1, 16, 0.00, 'out', NULL, NULL),
(411, 0, 1579883377, '', 1, 7, 0.00, 'out', NULL, NULL),
(412, 0, 1579938943, '', 1, 7, 0.00, 'out', NULL, NULL),
(413, 0, 1579946198, '', 1, 32, 0.00, 'out', NULL, NULL),
(414, 0, 1579995477, '', 4, 7, 0.00, 'out', NULL, NULL),
(415, 0, 1579995477, '', 2, 5, 0.00, 'out', NULL, NULL),
(416, 0, 1580100632, '', 2, 32, 0.00, 'out', NULL, NULL),
(417, 0, 1580177380, '', 1, 32, 0.00, 'out', NULL, NULL),
(418, 0, 1580229665, '', 1, 3, 0.00, 'out', NULL, NULL),
(419, 0, 1580240743, '', 1, 16, 0.00, 'out', NULL, NULL),
(420, 0, 1580374918, '', 1, 32, 0.00, 'out', NULL, NULL),
(421, 0, 1580374918, '', 2, 30, 0.00, 'out', NULL, NULL),
(422, 0, 1580374918, '', 1, 31, 0.00, 'out', NULL, NULL),
(423, 0, 1580390835, '', 1, 32, 0.00, 'out', NULL, NULL),
(424, 0, 1580606572, '', 1, 32, 0.00, 'out', NULL, NULL),
(425, 0, 1580638360, '', 1, 30, 0.00, 'out', NULL, NULL),
(426, 0, 1580652018, '', 1, 2, 0.00, 'out', NULL, NULL),
(427, 0, 1580652072, '', 1, 2, 0.00, 'out', NULL, NULL),
(428, 0, 1580813277, '', 1, 31, 0.00, 'out', NULL, NULL),
(429, 0, 1580814352, '', 1, 2, 0.00, 'out', NULL, NULL),
(430, 0, 1580816031, '', 1, 15, 0.00, 'out', NULL, NULL),
(431, 0, 1580816234, '', 1, 15, 0.00, 'out', NULL, NULL),
(432, 0, 1580816467, '', 1, 15, 0.00, 'out', NULL, NULL),
(433, 0, 1580816924, '', 1, 14, 0.00, 'out', NULL, NULL),
(434, 0, 1580817037, '', 1, 15, 0.00, 'out', NULL, NULL),
(435, 0, 1580904917, '', 1, 7, 0.00, 'out', NULL, NULL),
(436, 0, 1580905464, '', 1, 7, 0.00, 'out', NULL, NULL),
(437, 0, 1580932218, '', 1, 32, 0.00, 'out', NULL, NULL),
(438, 0, 1580940240, '', 1, 1, 0.00, 'out', NULL, NULL),
(439, 0, 1581033287, '', 1, 3, 0.00, 'out', NULL, NULL),
(440, 0, 1581090153, '', 1, 7, 0.00, 'out', NULL, NULL),
(441, 0, 1581233766, '', 1, 32, 0.00, 'out', NULL, NULL),
(442, 0, 1581247432, '', 2, 5, 0.00, 'out', NULL, NULL),
(443, 0, 1581303940, '', 1, 20, 0.00, 'out', NULL, NULL),
(444, 0, 1581303940, '', 1, 16, 0.00, 'out', NULL, NULL),
(445, 0, 1581343292, '', 2, 16, 0.00, 'out', NULL, NULL),
(446, 0, 1581366047, '', 1, 31, 0.00, 'out', NULL, NULL),
(447, 0, 1581384500, '', 1, 32, 0.00, 'out', NULL, NULL),
(448, 0, 1581405905, '', 1, 16, 0.00, 'out', NULL, NULL),
(449, 0, 1581405905, '', 1, 5, 0.00, 'out', NULL, NULL),
(450, 0, 1581411113, '', 1, 32, 0.00, 'out', NULL, NULL),
(451, 0, 1581411113, '', 1, 31, 0.00, 'out', NULL, NULL),
(452, 0, 1581456654, '', 1, 31, 0.00, 'out', NULL, NULL),
(453, 0, 1581456654, '', 1, 31, 0.00, 'out', NULL, NULL),
(454, 0, 1581517599, '', 1, 32, 0.00, 'out', NULL, NULL),
(455, 0, 1581517599, '', 1, 31, 0.00, 'out', NULL, NULL),
(456, 0, 1581518120, '', 1, 7, 0.00, 'out', NULL, NULL),
(457, 0, 1581535688, '', 1, 29, 0.00, 'out', NULL, NULL),
(458, 0, 1581535688, '', 1, 29, 0.00, 'out', NULL, NULL),
(459, 0, 1581535688, '', 1, 29, 0.00, 'out', NULL, NULL),
(460, 0, 1581535688, '', 1, 29, 0.00, 'out', NULL, NULL),
(461, 0, 1581535688, '', 1, 29, 0.00, 'out', NULL, NULL),
(462, 0, 1581535688, '', 1, 29, 0.00, 'out', NULL, NULL),
(463, 0, 1581584598, '', 1, 4, 0.00, 'out', NULL, NULL),
(464, 0, 1581599589, '', 5, 32, 0.00, 'out', NULL, NULL),
(465, 0, 1581622915, '', 1, 32, 0.00, 'out', NULL, NULL),
(466, 0, 1581623494, '', 1, 20, 0.00, 'out', NULL, NULL),
(467, 0, 1581623494, '', 3, 3, 0.00, 'out', NULL, NULL),
(468, 0, 1581675976, '', 1, 31, 0.00, 'out', NULL, NULL),
(469, 0, 1581675976, '', 1, 29, 0.00, 'out', NULL, NULL),
(470, 0, 1581675976, '', 1, 30, 0.00, 'out', NULL, NULL),
(471, 0, 1581705662, '', 1, 14, 0.00, 'out', NULL, NULL),
(472, 0, 1581706335, '', 1, 32, 0.00, 'out', NULL, NULL),
(473, 0, 1581706335, '', 1, 31, 0.00, 'out', NULL, NULL),
(474, 0, 1582020381, '', 14, 14, 0.00, 'out', NULL, NULL),
(475, 0, 1582138664, '', 1, 16, 0.00, 'out', NULL, NULL),
(476, 0, 1582172341, '', 1, 7, 0.00, 'out', NULL, NULL),
(477, 0, 1582172341, '', 1, 31, 0.00, 'out', NULL, NULL),
(478, 0, 1582172341, '', 1, 29, 0.00, 'out', NULL, NULL),
(479, 0, 1582194150, '', 1, 31, 0.00, 'out', NULL, NULL),
(480, 0, 1582194150, '', 1, 22, 0.00, 'out', NULL, NULL),
(481, 0, 1582218124, '', 1, 32, 0.00, 'out', NULL, NULL),
(482, 0, 1583205044, '', 1, 1, 0.00, 'out', NULL, NULL),
(483, 0, 1583230903, '', 1, 7, 0.00, 'out', NULL, NULL),
(484, 0, 1583247689, '', 1, 31, 0.00, 'out', NULL, NULL),
(485, 0, 1583337785, '', 1, 32, 0.00, 'out', NULL, NULL),
(486, 0, 1583838406, '', 1, 32, 0.00, 'out', NULL, NULL),
(487, 0, 1583846512, '', 1, 32, 0.00, 'out', NULL, NULL),
(488, 0, 1583846512, '', 1, 16, 0.00, 'out', NULL, NULL),
(489, 0, 1585679909, '', 1, 4, 0.00, 'out', NULL, NULL),
(490, 0, 1585679909, '', 2, 2, 0.00, 'out', NULL, NULL),
(491, 0, 1585752105, '', 1, 12, 0.00, 'out', NULL, NULL),
(492, 0, 1585752105, '', 60, 10, 0.00, 'out', NULL, NULL),
(493, 1, 0, '123', -920, 10, 10.00, 'in', '2020-04-01 06:54:08', NULL),
(494, 1, 0, '123', 20, 10, 10.00, 'in', '2020-04-01 06:55:22', NULL),
(495, 1, 0, '123', 11, 10, 2.00, 'in', '2020-04-01 06:56:49', NULL),
(496, 1, 0, '123', 1, 10, 1.00, 'in', '2020-04-01 06:57:27', NULL),
(497, 0, 1585753507, '', 1, 31, 0.00, 'out', NULL, NULL),
(498, 0, 1585753507, '', 1, 17, 0.00, 'out', NULL, NULL),
(499, 0, 1585756782, '', 1, 32, 0.00, 'out', NULL, NULL),
(500, 0, 1585757050, '', 1, 1, 0.00, 'out', NULL, NULL),
(501, 0, 1585765669, '', 6, 1, 0.00, 'out', NULL, NULL),
(502, 0, 1585766575, '', 1, 2, 0.00, 'out', NULL, NULL),
(503, 0, 1585766863, '', 1, 1, 0.00, 'out', NULL, NULL),
(504, 0, 1585828625, '', 1, 7, 0.00, 'out', NULL, NULL),
(505, 0, 1585845627, '', 1, 7, 0.00, 'out', NULL, NULL),
(506, 0, 1585845742, '', 1, 26, 0.00, 'out', NULL, NULL),
(507, 0, 1585846050, '', 1, 22, 0.00, 'out', NULL, NULL),
(508, 0, 1585846113, '', 1, 21, 0.00, 'out', NULL, NULL),
(509, 0, 1585846158, '', 1, 30, 0.00, 'out', NULL, NULL),
(510, 0, 1585846302, '', 1, 29, 0.00, 'out', NULL, NULL),
(511, 0, 1585846407, '', 1, 7, 0.00, 'out', NULL, NULL),
(512, 0, 1585847130, '', 3, 7, 0.00, 'out', NULL, NULL),
(513, 0, 1585925827, '', 1, 32, 0.00, 'out', NULL, NULL),
(514, 0, 1585925827, '', 1, 1, 0.00, 'out', NULL, NULL),
(515, 0, 1586019655, '', 1, 14, 0.00, 'out', NULL, NULL),
(516, 0, 1586019655, '', 1, 17, 0.00, 'out', NULL, NULL),
(517, 0, 1586022609, '', 1, 32, 0.00, 'out', NULL, NULL),
(518, 0, 1586022609, '', 1, 26, 0.00, 'out', NULL, NULL),
(519, 0, 1586022609, '', 1, 19, 0.00, 'out', NULL, NULL),
(520, 0, 1586022609, '', 1, 18, 0.00, 'out', NULL, NULL),
(521, 0, 1586022609, '', 1, 17, 0.00, 'out', NULL, NULL),
(522, 0, 1600676309, '', 1, 1, 0.00, 'out', '2020-09-21 08:18:29', NULL),
(523, 0, 1601212912, '', 1, 1, 0.00, 'out', '2020-09-27 13:21:52', NULL),
(524, 0, 1601213141, '', 1, 2, 0.00, 'out', '2020-09-27 13:25:41', NULL),
(525, 0, 1601372526, '', 1, 2, 0.00, 'out', '2020-09-29 09:42:06', NULL),
(526, 1, 0, NULL, 1, 1, 0.00, 'in', '2020-09-29 05:33:13', NULL),
(527, 1, 0, NULL, 1, 1, 0.00, 'in', '2020-09-29 05:33:16', NULL),
(528, 1, 0, NULL, 1, 2, 0.00, 'in', '2020-09-29 05:33:18', NULL),
(529, 1, 0, NULL, 1, 2, 0.00, 'in', '2020-09-29 05:33:22', NULL),
(530, 0, 1601401742, '', 1, 2, 0.00, 'out', '2020-09-29 17:49:02', NULL),
(531, 0, 1601401742, '', 1, 3, 0.00, 'out', '2020-09-29 17:49:02', NULL),
(532, 0, 1601401742, '', 1, 1, 0.00, 'out', '2020-09-29 17:49:02', NULL),
(533, 0, 1601448695, '', 1, 2, 0.00, 'out', '2020-09-30 06:51:35', NULL),
(534, 0, 1601448695, '', 1, 3, 0.00, 'out', '2020-09-30 06:51:35', NULL),
(535, 0, 1601448695, '', 1, 1, 0.00, 'out', '2020-09-30 06:51:35', NULL),
(536, 0, 1601465947, '', 2, 2, 0.00, 'out', '2020-09-30 11:39:07', NULL),
(537, 0, 1601465947, '', 1, 3, 0.00, 'out', '2020-09-30 11:39:07', NULL),
(538, 0, 1601465947, '', 1, 1, 0.00, 'out', '2020-09-30 11:39:07', NULL),
(539, 1, 0, NULL, 1, 2, 0.00, 'in', '2020-10-04 09:35:59', NULL),
(540, 1, 0, NULL, 1, 3, 0.00, 'in', '2020-10-04 09:35:59', NULL),
(541, 1, 0, NULL, 1, 1, 0.00, 'in', '2020-10-04 09:35:59', NULL),
(542, 1, 0, NULL, 1, 2, 0.00, 'in', '2020-10-04 09:36:02', NULL),
(543, 1, 0, NULL, 1, 3, 0.00, 'in', '2020-10-04 09:36:02', NULL),
(544, 1, 0, NULL, 1, 1, 0.00, 'in', '2020-10-04 09:36:02', NULL),
(545, 1, 0, NULL, 2, 2, 0.00, 'in', '2020-10-04 09:36:04', NULL),
(546, 1, 0, NULL, 1, 3, 0.00, 'in', '2020-10-04 09:36:04', NULL),
(547, 1, 0, NULL, 1, 1, 0.00, 'in', '2020-10-04 09:36:04', NULL),
(548, 0, 1601824234, '', 1, 1, 0.00, 'out', '2020-10-04 15:10:34', NULL),
(549, 0, 1606683623, '', 4, 2, 0.00, 'out', '2020-11-29 21:00:23', NULL),
(550, 0, 1606721483, '', 1, 2, 0.00, 'out', '2020-11-30 07:31:23', NULL),
(551, 0, 1606821426, '', 2, 2, 0.00, 'out', '2020-12-01 11:17:06', NULL),
(552, 0, 1608205908, '', 7, 2, 0.00, 'out', '2020-12-17 11:51:48', NULL),
(553, 0, 1608205908, '', 1, 3, 0.00, 'out', '2020-12-17 11:51:48', NULL),
(554, 0, 1608214964, '', 1, 1, 0.00, 'out', '2020-12-17 14:22:44', NULL),
(555, 0, 1608215275, '', 1, 1, 0.00, 'out', '2020-12-17 14:27:55', NULL),
(556, 0, 1608216201, '', 1, 2, 0.00, 'out', '2020-12-17 14:43:21', NULL),
(557, 0, 1608227059, '', 1, 2, 0.00, 'out', '2020-12-17 17:44:19', NULL),
(558, 0, 1608548688, '', 11, 2, 0.00, 'out', '2020-12-21 11:04:48', NULL),
(559, 0, 1608562449, '', 14, 2, 0.00, 'out', '2020-12-21 14:54:09', NULL),
(560, 0, 1608722807, '', 5, 1, 0.00, 'out', '2020-12-23 11:26:47', NULL),
(561, 0, 1608722807, '', 7, 2, 0.00, 'out', '2020-12-23 11:26:47', NULL),
(562, 0, 1608722807, '', 2, 3, 0.00, 'out', '2020-12-23 11:26:47', NULL),
(563, 0, 1608811778, '', 1, 2, 0.00, 'out', '2020-12-24 12:09:38', NULL),
(564, 0, 1608820338, '', 1, 2, 0.00, 'out', '2020-12-24 14:32:18', NULL),
(565, 0, 1608820338, '', 1, 3, 0.00, 'out', '2020-12-24 14:32:18', NULL),
(566, 0, 1608965379, '', 5, 2, 0.00, 'out', '2020-12-26 06:49:39', NULL),
(567, 0, 1608965379, '', 11, 3, 0.00, 'out', '2020-12-26 06:49:39', NULL),
(568, 0, 1608965719, '', 1, 2, 0.00, 'out', '2020-12-26 06:55:19', NULL),
(569, 0, 1609141043, '', 1, 2, 0.00, 'out', '2020-12-28 07:37:23', NULL),
(570, 0, 1609395679, '', 1, 1, 0.00, 'out', '2020-12-31 06:21:19', NULL),
(571, 0, 1609395679, '', 1, 2, 0.00, 'out', '2020-12-31 06:21:19', NULL),
(572, 0, 1609395795, '', 2, 2, 0.00, 'out', '2020-12-31 06:23:15', NULL),
(573, 0, 1609484568, '', 6, 2, 0.00, 'out', '2021-01-01 07:02:48', NULL),
(574, 0, 1609658887, '', 1, 2, 0.00, 'out', '2021-01-03 07:28:07', NULL),
(575, 0, 1609665414, '', 5, 2, 0.00, 'out', '2021-01-03 09:16:54', NULL),
(576, 0, 1609759200, '', 27, 2, 0.00, 'out', '2021-01-04 11:20:00', NULL),
(577, 0, 1609762572, '', 1, 2, 0.00, 'out', '2021-01-04 12:16:12', NULL),
(578, 0, 1609830270, '', 9, 2, 0.00, 'out', '2021-01-05 07:04:30', NULL),
(579, 0, 1610081870, '', 1, 2, 0.00, 'out', '2021-01-08 04:57:50', NULL),
(580, 1, 0, '123456789', 200, 1, 60.00, 'in', '2021-01-10 06:50:35', NULL),
(581, 0, 1610345615, '', 1, 2, 0.00, 'out', '2021-01-11 06:13:35', NULL),
(582, 0, 1610347074, '', 3, 2, 0.00, 'out', '2021-01-11 06:37:54', NULL),
(583, 0, 1613981432, '', 1, 7, 0.00, 'out', '2021-02-22 08:10:32', NULL),
(584, 0, 1614860589, '', 2, 7, 0.00, 'out', '2021-03-04 12:23:09', NULL),
(585, 0, 1614861313, '', 2, 13, 0.00, 'out', '2021-03-04 12:35:13', NULL),
(586, 0, 1614867945, '', 2, 13, 0.00, 'out', '2021-03-04 14:25:45', NULL),
(587, 0, 1614868265, '', 1, 13, 0.00, 'out', '2021-03-04 14:31:05', NULL),
(588, 0, 1614895653, '', 2, 7, 0.00, 'out', '2021-03-04 22:07:33', NULL),
(589, 0, 1614897422, '', 1, 7, 0.00, 'out', '2021-03-04 22:37:02', NULL),
(590, 0, 1614897579, '', 2, 7, 0.00, 'out', '2021-03-04 22:39:39', NULL),
(591, 0, 1614898075, '', 1, 7, 0.00, 'out', '2021-03-04 22:47:55', NULL),
(592, 0, 1614898437, '', 2, 7, 0.00, 'out', '2021-03-04 22:53:57', NULL),
(593, 0, 1615104647, '', 2, 7, 0.00, 'out', '2021-03-07 08:10:47', NULL),
(594, 0, 1615104820, '', 1, 13, 0.00, 'out', '2021-03-07 08:13:40', NULL),
(595, 0, 1615105685, '', 1, 13, 0.00, 'out', '2021-03-07 08:28:05', NULL),
(596, 3, 0, NULL, 1, 1, 0.00, 'in', '2021-03-07 06:22:28', NULL),
(597, 3, 0, NULL, 2, 2, 0.00, 'in', '2021-03-07 06:22:36', NULL),
(598, 3, 0, NULL, 4, 2, 0.00, 'in', '2021-03-07 06:22:41', NULL),
(599, 3, 0, NULL, 1, 2, 0.00, 'in', '2021-03-07 06:22:46', NULL),
(600, 0, 1615185380, '', 1, 13, 0.00, 'out', '2021-03-08 06:36:20', NULL),
(601, 0, 1615185693, '', 1, 13, 0.00, 'out', '2021-03-08 06:41:33', NULL),
(602, 0, 1615187299, '', 1, 7, 0.00, 'out', '2021-03-08 07:08:19', NULL),
(603, 0, 1615187590, '', 1, 7, 0.00, 'out', '2021-03-08 07:13:10', NULL),
(604, 0, 1615187650, '', 1, 7, 0.00, 'out', '2021-03-08 07:14:10', NULL),
(605, 0, 1615187696, '', 1, 7, 0.00, 'out', '2021-03-08 07:14:56', NULL),
(606, 0, 1615191566, '', 1, 7, 0.00, 'out', '2021-03-08 08:19:26', NULL),
(607, 0, 1615191888, '', 1, 7, 0.00, 'out', '2021-03-08 08:24:48', NULL),
(608, 0, 1615270838, '', 2, 7, 0.00, 'out', '2021-03-09 06:20:38', NULL),
(609, 0, 1616082552, '', 1, 7, 0.00, 'out', '2021-03-18 15:49:12', NULL),
(610, 0, 1616308605, '', 1, 13, 0.00, 'out', '2021-03-21 06:36:45', NULL),
(611, 0, 1616310971, '', 1, 13, 0.00, 'out', '2021-03-21 07:16:11', NULL),
(612, 0, 1616313250, '', 1, 13, 0.00, 'out', '2021-03-21 07:54:10', NULL),
(613, 0, 1616313422, '', 2, 13, 0.00, 'out', '2021-03-21 07:57:02', NULL),
(614, 0, 1616313519, '', 2, 7, 0.00, 'out', '2021-03-21 07:58:39', NULL),
(615, 0, 1616320675, '', 1, 13, 0.00, 'out', '2021-03-21 09:57:55', NULL),
(616, 0, 1616322515, '', 1, 13, 0.00, 'out', '2021-03-21 10:28:35', NULL),
(617, 0, 1616322516, '', 1, 7, 0.00, 'out', '2021-03-21 10:28:36', NULL),
(618, 0, 1616326880, '', 1, 13, 0.00, 'out', '2021-03-21 11:41:20', NULL),
(619, 0, 1616326880, '', 1, 7, 0.00, 'out', '2021-03-21 11:41:20', NULL),
(620, 0, 1616328189, '', 3, 13, 0.00, 'out', '2021-03-21 12:03:09', NULL),
(621, 0, 1616328189, '', 2, 7, 0.00, 'out', '2021-03-21 12:03:09', NULL),
(622, 0, 1616328375, '', 1, 7, 0.00, 'out', '2021-03-21 12:06:15', NULL),
(623, 0, 1616329817, '', 1, 13, 0.00, 'out', '2021-03-21 12:30:17', NULL),
(624, 0, 1616329817, '', 1, 7, 0.00, 'out', '2021-03-21 12:30:17', NULL),
(625, 0, 1616495582, '', 1, 7, 0.00, 'out', '2021-03-23 10:33:02', NULL),
(626, 0, 1616500622, '', 1, 7, 0.00, 'out', '2021-03-23 11:57:02', NULL),
(627, 0, 1617031152, '', 1, 7, 0.00, 'out', '2021-03-29 15:19:12', NULL),
(628, 0, 1617198886, '', 1, 7, 0.00, 'out', '2021-03-31 13:54:46', NULL),
(629, 0, 1617198934, '', 1, 13, 0.00, 'out', '2021-03-31 13:55:34', NULL),
(630, 0, 1618383718, '', 1, 7, 0.00, 'out', '2021-04-14 07:01:58', NULL),
(631, 0, 1618384576, '', 1, 13, 0.00, 'out', '2021-04-14 07:16:16', NULL),
(632, 0, 1618389644, '', 1, 7, 0.00, 'out', '2021-04-14 08:40:44', NULL),
(633, 0, 1618397415, '', 1, 7, 0.00, 'out', '2021-04-14 10:50:15', NULL),
(634, 0, 1618483919, '', 1, 7, 0.00, 'out', '2021-04-15 10:51:59', NULL),
(635, 0, 1618822011, '', 1, 7, 0.00, 'out', '2021-04-19 08:46:51', NULL),
(636, 0, 1618834536, '', 1, 7, 0.00, 'out', '2021-04-19 12:15:36', NULL),
(637, 0, 1618834593, '', 1, 13, 0.00, 'out', '2021-04-19 12:16:33', NULL),
(638, 0, 1618834593, '', 1, 7, 0.00, 'out', '2021-04-19 12:16:33', NULL),
(639, 0, 1618837376, '', 1, 13, 0.00, 'out', '2021-04-19 13:02:56', NULL),
(640, 0, 1618837793, '', 1, 7, 0.00, 'out', '2021-04-19 13:09:53', NULL),
(641, 0, 1618838118, '', 1, 13, 0.00, 'out', '2021-04-19 13:15:18', NULL),
(642, 0, 1618838373, '', 1, 13, 0.00, 'out', '2021-04-19 13:19:33', NULL),
(643, 0, 1619090435, '', 1, 7, 0.00, 'out', '2021-04-22 11:20:35', NULL),
(644, 0, 1619091073, '', 1, 7, 0.00, 'out', '2021-04-22 11:31:13', NULL),
(645, 0, 1619094770, '', 1, 7, 0.00, 'out', '2021-04-22 12:32:50', NULL),
(646, 0, 1619096747, '', 1, 7, 0.00, 'out', '2021-04-22 13:05:47', NULL),
(647, 0, 1619096969, '', 1, 7, 0.00, 'out', '2021-04-22 13:09:29', NULL),
(648, 0, 1619343881, '', 1, 7, 0.00, 'out', '2021-04-25 09:44:41', NULL),
(649, 0, 1619423738, '', 2, 13, 0.00, 'out', '2021-04-26 07:55:38', NULL),
(650, 0, 1619423738, '', 2, 7, 0.00, 'out', '2021-04-26 07:55:38', NULL),
(651, 0, 1619616010, '', 1, 7, 0.00, 'out', '2021-04-28 13:20:10', NULL),
(652, 0, 1619616103, '', 1, 13, 0.00, 'out', '2021-04-28 13:21:43', NULL),
(653, 0, 1619683710, '', 1, 7, 0.00, 'out', '2021-04-29 08:08:30', NULL),
(654, 0, 1620043221, '', 1, 7, 0.00, 'out', '2021-05-03 12:00:21', NULL),
(655, 0, 1620125260, '', 1, 13, 0.00, 'out', '2021-05-04 10:47:40', NULL),
(656, 0, 1620125260, '', 1, 7, 0.00, 'out', '2021-05-04 10:47:40', NULL),
(657, 0, 1620201259, '', 1, 7, 0.00, 'out', '2021-05-05 07:54:19', NULL),
(658, 0, 1620210378, '', 1, 7, 0.00, 'out', '2021-05-05 10:26:18', NULL),
(659, 0, 1620210477, '', 1, 7, 0.00, 'out', '2021-05-05 10:27:57', NULL),
(660, 0, 1620211120, '', 1, 13, 0.00, 'out', '2021-05-05 10:38:40', NULL),
(661, 0, 1620219102, '', 1, 7, 0.00, 'out', '2021-05-05 12:51:42', NULL),
(662, 0, 1620286946, '', 1, 7, 0.00, 'out', '2021-05-06 07:42:26', NULL),
(663, 0, 1620287681, '', 1, 7, 0.00, 'out', '2021-05-06 07:54:41', NULL),
(664, 0, 1620296967, '', 1, 13, 0.00, 'out', '2021-05-06 10:29:27', NULL),
(665, 0, 1620553323, '', 1, 7, 0.00, 'out', '2021-05-09 09:42:03', NULL),
(666, 0, 1620646313, '', 1, 13, 0.00, 'out', '2021-05-10 11:31:53', NULL),
(667, 0, 1620646495, '', 1, 7, 0.00, 'out', '2021-05-10 11:34:55', NULL),
(668, 0, 1620646734, '', 1, 7, 0.00, 'out', '2021-05-10 11:38:54', NULL),
(669, 0, 1620735596, '', 1, 7, 0.00, 'out', '2021-05-11 12:19:56', NULL),
(670, 0, 1621257172, '', 1, 7, 0.00, 'out', '2021-05-17 13:12:52', NULL),
(671, 0, 1621430280, '', 1, 7, 0.00, 'out', '2021-05-19 13:18:00', NULL),
(672, 0, 1621431976, '', 2, 13, 0.00, 'out', '2021-05-19 13:46:16', NULL),
(673, 0, 1621432763, '', 1, 13, 0.00, 'out', '2021-05-19 13:59:23', NULL),
(674, 0, 1621494685, '', 1, 13, 0.00, 'out', '2021-05-20 07:11:25', NULL),
(675, 0, 1621494685, '', 1, 7, 0.00, 'out', '2021-05-20 07:11:25', NULL),
(676, 0, 1621494826, '', 1, 13, 0.00, 'out', '2021-05-20 07:13:46', NULL),
(677, 0, 1621495255, '', 1, 13, 0.00, 'out', '2021-05-20 07:20:55', NULL),
(678, 0, 1621497671, '', 2, 13, 0.00, 'out', '2021-05-20 08:01:11', NULL),
(679, 0, 1621504395, '', 1, 13, 0.00, 'out', '2021-05-20 09:53:15', NULL),
(680, 3, 0, NULL, 200, 39, 200.00, 'in', '2021-05-20 02:27:01', NULL),
(681, 3, 0, NULL, 10, 39, 200.00, 'in', '2021-05-20 02:37:42', NULL),
(682, 0, 1621513932, '', 1, 13, 0.00, 'out', '2021-05-20 12:32:12', NULL),
(683, 0, 1621514321, '', 1, 13, 0.00, 'out', '2021-05-20 12:38:41', NULL),
(684, 0, 1621514659, '', 1, 13, 0.00, 'out', '2021-05-20 12:44:19', NULL),
(685, 0, 1621515117, '', 1, 13, 0.00, 'out', '2021-05-20 12:51:57', NULL),
(686, 0, 1621515657, '', 1, 13, 0.00, 'out', '2021-05-20 13:00:57', NULL),
(687, 0, 1621515923, '', 1, 13, 0.00, 'out', '2021-05-20 13:05:23', NULL),
(688, 0, 1621515923, '', 2, 7, 0.00, 'out', '2021-05-20 13:05:23', NULL),
(689, 0, 1621516288, '', 1, 13, 0.00, 'out', '2021-05-20 13:11:28', NULL),
(690, 0, 1621516288, '', 1, 7, 0.00, 'out', '2021-05-20 13:11:28', NULL),
(691, 0, 1621516665, '', 1, 13, 0.00, 'out', '2021-05-20 13:17:45', NULL),
(692, 0, 1621516817, '', 1, 13, 0.00, 'out', '2021-05-20 13:20:17', NULL),
(693, 0, 1621516997, '', 1, 13, 0.00, 'out', '2021-05-20 13:23:17', NULL),
(694, 4, 0, NULL, 200, 41, 50.00, 'in', '2021-05-20 05:59:56', NULL),
(695, 0, 1621759761, '', 1, 13, 0.00, 'out', '2021-05-23 08:49:21', NULL),
(696, 0, 1621759761, '', 1, 7, 0.00, 'out', '2021-05-23 08:49:21', NULL),
(697, 0, 1621762138, '', 1, 7, 0.00, 'out', '2021-05-23 09:28:58', NULL),
(698, 0, 1623939787, '', 2, 13, 0.00, 'out', '2021-06-17 14:23:07', NULL),
(699, 0, 1623939894, '', 1, 7, 0.00, 'out', '2021-06-17 14:24:54', NULL),
(700, 0, 1624184564, '', 1, 13, 0.00, 'out', '2021-06-20 10:22:44', NULL),
(701, 0, 1624184564, '', 2, 7, 0.00, 'out', '2021-06-20 10:22:44', NULL),
(702, 0, 1624184757, '', 2, 9, 0.00, 'out', '2021-06-20 10:25:57', NULL),
(703, 0, 1624523402, '', 2, 13, 0.00, 'out', '2021-06-24 08:30:02', NULL),
(704, 0, 1624523403, '', 8, 7, 0.00, 'out', '2021-06-24 08:30:03', NULL),
(705, 0, 1624523403, '', 3, 9, 0.00, 'out', '2021-06-24 08:30:03', NULL),
(706, 0, 1624784428, '', 1, 10, 0.00, 'out', '2021-06-27 09:00:28', NULL),
(707, 0, 1624784428, '', 1, 9, 0.00, 'out', '2021-06-27 09:00:28', NULL),
(708, 0, 1624953547, '', 2, 13, 0.00, 'out', '2021-06-29 07:59:07', NULL),
(709, 0, 1624953547, '', 2, 7, 0.00, 'out', '2021-06-29 07:59:07', NULL),
(710, 0, 1624960916, '', 1, 7, 0.00, 'out', '2021-06-29 10:01:56', NULL),
(711, 0, 1624964592, '', 1, 7, 0.00, 'out', '2021-06-29 11:03:12', NULL),
(712, 0, 1625148899, '', 1, 12, 0.00, 'out', '2021-07-01 14:14:59', NULL),
(713, 0, 1625306825, '', 5, 12, 0.00, 'out', '2021-07-03 10:07:05', NULL),
(714, 0, 1625306825, '', 2, 7, 0.00, 'out', '2021-07-03 10:07:05', NULL),
(715, 0, 1625386327, '', 2, 12, 0.00, 'out', '2021-07-04 08:12:07', NULL),
(716, 0, 1625490947, '', 1, 12, 0.00, 'out', '2021-07-05 13:15:47', NULL),
(717, 0, 1625501077, '', 1, 12, 0.00, 'out', '2021-07-05 16:04:37', NULL),
(718, 0, 1625501077, '', 1, 13, 0.00, 'out', '2021-07-05 16:04:37', NULL),
(719, 0, 1625501077, '', 2, 7, 0.00, 'out', '2021-07-05 16:04:37', NULL),
(720, 3, 0, NULL, 200, 42, 60.00, 'in', '2021-07-05 23:45:46', NULL),
(721, 3, 0, NULL, 200, 43, 60.00, 'in', '2021-07-05 23:46:18', NULL),
(722, 3, 0, NULL, 200, 44, 60.00, 'in', '2021-07-05 23:46:34', NULL),
(723, 0, 1625523735, '', 1, 12, 0.00, 'out', '2021-07-05 22:22:15', NULL),
(724, 0, 1625527322, '', 1, 7, 0.00, 'out', '2021-07-05 23:22:02', NULL),
(725, 0, 1625527465, '', 1, 13, 0.00, 'out', '2021-07-05 23:24:25', NULL),
(726, 0, 1625527856, '', 1, 13, 0.00, 'out', '2021-07-05 23:30:56', NULL),
(727, 0, 1625550613, '', 1, 13, 0.00, 'out', '2021-07-06 05:50:13', NULL),
(728, 0, 1625550613, '', 1, 7, 0.00, 'out', '2021-07-06 05:50:13', NULL),
(729, 0, 1625550994, '', 1, 12, 0.00, 'out', '2021-07-06 05:56:34', NULL),
(730, 0, 1625550994, '', 1, 13, 0.00, 'out', '2021-07-06 05:56:34', NULL),
(731, 0, 1625551303, '', 1, 12, 0.00, 'out', '2021-07-06 06:01:43', NULL),
(732, 0, 1625551710, '', 1, 42, 0.00, 'out', '2021-07-06 06:08:30', NULL),
(733, 0, 1625552753, '', 2, 7, 0.00, 'out', '2021-07-06 06:25:53', NULL),
(734, 0, 1625554615, '', 1, 12, 0.00, 'out', '2021-07-06 06:56:55', NULL),
(735, 0, 1625556018, '', 1, 7, 0.00, 'out', '2021-07-06 07:20:18', NULL),
(736, 0, 1625556316, '', 1, 12, 0.00, 'out', '2021-07-06 07:25:16', NULL),
(737, 0, 1625556316, '', 1, 13, 0.00, 'out', '2021-07-06 07:25:16', NULL),
(738, 0, 1625556505, '', 1, 12, 0.00, 'out', '2021-07-06 07:28:25', NULL),
(739, 0, 1625556505, '', 2, 13, 0.00, 'out', '2021-07-06 07:28:25', NULL),
(740, 0, 1625556505, '', 1, 7, 0.00, 'out', '2021-07-06 07:28:25', NULL),
(741, 0, 1625558374, '', 1, 12, 0.00, 'out', '2021-07-06 07:59:34', NULL),
(742, 0, 1625558653, '', 1, 12, 0.00, 'out', '2021-07-06 08:04:13', NULL),
(743, 0, 1625563521, '', 1, 13, 0.00, 'out', '2021-07-06 09:25:21', NULL),
(744, 0, 1625563659, '', 1, 13, 0.00, 'out', '2021-07-06 09:27:39', NULL),
(745, 0, 1625564100, '', 1, 12, 0.00, 'out', '2021-07-06 09:35:00', NULL),
(746, 0, 1625564435, '', 1, 13, 0.00, 'out', '2021-07-06 09:40:35', NULL),
(747, 0, 1625564899, '', 1, 13, 0.00, 'out', '2021-07-06 09:48:19', NULL),
(748, 0, 1625565147, '', 1, 13, 0.00, 'out', '2021-07-06 09:52:27', NULL),
(749, 0, 1625565510, '', 1, 13, 0.00, 'out', '2021-07-06 09:58:30', NULL),
(750, 0, 1625565952, '', 1, 12, 0.00, 'out', '2021-07-06 10:05:52', NULL),
(751, 0, 1625567035, '', 3, 13, 0.00, 'out', '2021-07-06 10:23:55', NULL),
(752, 0, 1625568069, '', 1, 13, 0.00, 'out', '2021-07-06 10:41:09', NULL),
(753, 0, 1625568133, '', 1, 13, 0.00, 'out', '2021-07-06 10:42:13', NULL),
(754, 0, 1625568278, '', 1, 13, 0.00, 'out', '2021-07-06 10:44:38', NULL),
(755, 0, 1625568608, '', 1, 13, 0.00, 'out', '2021-07-06 10:50:08', NULL),
(756, 0, 1625571447, '', 1, 12, 0.00, 'out', '2021-07-06 11:37:27', NULL),
(757, 0, 1625571447, '', 1, 13, 0.00, 'out', '2021-07-06 11:37:27', NULL),
(758, 0, 1625573838, '', 1, 12, 0.00, 'out', '2021-07-06 12:17:18', NULL),
(759, 0, 1625573921, '', 1, 13, 0.00, 'out', '2021-07-06 12:18:41', NULL),
(760, 0, 1625574023, '', 1, 13, 0.00, 'out', '2021-07-06 12:20:23', NULL),
(761, 0, 1625574084, '', 1, 13, 0.00, 'out', '2021-07-06 12:21:24', NULL),
(762, 0, 1625574328, '', 1, 13, 0.00, 'out', '2021-07-06 12:25:28', NULL),
(763, 0, 1625578181, '', 3, 12, 0.00, 'out', '2021-07-06 13:29:41', NULL),
(764, 0, 1625578181, '', 1, 42, 0.00, 'out', '2021-07-06 13:29:41', NULL),
(765, 0, 1625578181, '', 1, 7, 0.00, 'out', '2021-07-06 13:29:41', NULL),
(766, 0, 1625578698, '', 1, 12, 0.00, 'out', '2021-07-06 13:38:18', NULL),
(767, 0, 1625578698, '', 1, 42, 0.00, 'out', '2021-07-06 13:38:18', NULL),
(768, 0, 1625578698, '', 1, 7, 0.00, 'out', '2021-07-06 13:38:18', NULL),
(769, 0, 1625579612, '', 2, 13, 0.00, 'out', '2021-07-06 13:53:32', NULL),
(770, 3, 0, NULL, 2, 12, 0.00, 'in', '2021-07-06 03:53:54', NULL),
(771, 3, 0, NULL, 1, 12, 0.00, 'in', '2021-07-06 03:54:01', NULL),
(772, 0, 1625580409, '', 1, 13, 0.00, 'out', '2021-07-06 14:06:49', NULL),
(773, 0, 1625581702, '', 1, 12, 0.00, 'out', '2021-07-06 14:28:22', NULL),
(774, 0, 1625581702, '', 1, 13, 0.00, 'out', '2021-07-06 14:28:22', NULL),
(775, 0, 1625581702, '', 1, 7, 0.00, 'out', '2021-07-06 14:28:22', NULL),
(776, 0, 1625587288, '', 1, 12, 0.00, 'out', '2021-07-06 16:01:28', NULL),
(777, 0, 1625588512, '', 1, 13, 0.00, 'out', '2021-07-06 16:21:52', NULL),
(778, 0, 1625590325, '', 2, 42, 0.00, 'out', '2021-07-06 16:52:05', NULL),
(779, 0, 1625590325, '', 1, 13, 0.00, 'out', '2021-07-06 16:52:05', NULL),
(780, 0, 1625590325, '', 2, 43, 0.00, 'out', '2021-07-06 16:52:05', NULL),
(781, 0, 1625591698, '', 1, 13, 0.00, 'out', '2021-07-06 17:14:58', NULL),
(782, 0, 1625638959, '', 1, 13, 0.00, 'out', '2021-07-07 06:22:39', NULL),
(783, 0, 1625658719, '', 1, 12, 0.00, 'out', '2021-07-07 11:51:59', NULL),
(784, 0, 1625658719, '', 1, 42, 0.00, 'out', '2021-07-07 11:51:59', NULL),
(785, 0, 1625658719, '', 2, 43, 0.00, 'out', '2021-07-07 11:51:59', NULL),
(786, 0, 1625668826, '', 1, 7, 0.00, 'out', '2021-07-07 14:40:26', NULL),
(787, 0, 1625669625, '', 9, 12, 0.00, 'out', '2021-07-07 14:53:45', NULL),
(788, 0, 1625672295, '', 2, 12, 0.00, 'out', '2021-07-07 15:38:15', NULL),
(789, 0, 1625672620, '', 1, 7, 0.00, 'out', '2021-07-07 15:43:40', NULL),
(790, 0, 1625673319, '', 1, 7, 0.00, 'out', '2021-07-07 15:55:19', NULL),
(791, 0, 1625673788, '', 1, 13, 0.00, 'out', '2021-07-07 16:03:08', NULL),
(792, 0, 1625673889, '', 1, 43, 0.00, 'out', '2021-07-07 16:04:49', NULL),
(793, 0, 1625674251, '', 1, 7, 0.00, 'out', '2021-07-07 16:10:51', NULL),
(794, 0, 1625674631, '', 1, 13, 0.00, 'out', '2021-07-07 16:17:11', NULL),
(795, 0, 1625675758, '', 1, 43, 0.00, 'out', '2021-07-07 16:35:58', NULL),
(796, 0, 1625675865, '', 1, 7, 0.00, 'out', '2021-07-07 16:37:45', NULL),
(797, 0, 1625676300, '', 1, 7, 0.00, 'out', '2021-07-07 16:45:00', NULL),
(798, 0, 1625678229, '', 1, 13, 0.00, 'out', '2021-07-07 17:17:09', NULL),
(799, 0, 1625679806, '', 1, 13, 0.00, 'out', '2021-07-07 17:43:26', NULL),
(800, 0, 1625729921, '', 1, 12, 0.00, 'out', '2021-07-08 07:38:41', NULL),
(801, 0, 1625732460, '', 1, 13, 0.00, 'out', '2021-07-08 08:21:00', NULL),
(802, 0, 1625732630, '', 2, 7, 0.00, 'out', '2021-07-08 08:23:50', NULL);
INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(803, 3, 0, NULL, 200, 45, 60.00, 'in', '2021-07-08 10:53:59', NULL),
(804, 0, 1625736607, '', 1, 13, 0.00, 'out', '2021-07-08 09:30:07', NULL),
(805, 0, 1625737349, '', 1, 45, 0.00, 'out', '2021-07-08 09:42:29', NULL),
(806, 0, 1625737411, '', 1, 7, 0.00, 'out', '2021-07-08 09:43:31', NULL),
(807, 0, 1625737514, '', 1, 13, 0.00, 'out', '2021-07-08 09:45:14', NULL),
(808, 0, 1625737514, '', 1, 7, 0.00, 'out', '2021-07-08 09:45:14', NULL),
(809, 0, 1625737679, '', 1, 13, 0.00, 'out', '2021-07-08 09:47:59', NULL),
(810, 0, 1625737773, '', 2, 45, 0.00, 'out', '2021-07-08 09:49:33', NULL),
(811, 0, 1625738480, '', 3, 45, 0.00, 'out', '2021-07-08 10:01:20', NULL),
(812, 0, 1625738638, '', 1, 43, 0.00, 'out', '2021-07-08 10:03:58', NULL),
(813, 0, 1625738780, '', 1, 43, 0.00, 'out', '2021-07-08 10:06:20', NULL),
(814, 0, 1625738803, '', 1, 45, 0.00, 'out', '2021-07-08 10:06:43', NULL),
(815, 0, 1625739284, '', 1, 45, 0.00, 'out', '2021-07-08 10:14:44', NULL),
(816, 0, 1625740377, '', 1, 12, 0.00, 'out', '2021-07-08 10:32:57', NULL),
(817, 0, 1625741300, '', 1, 12, 0.00, 'out', '2021-07-08 10:48:20', NULL),
(818, 0, 1625742098, '', 1, 45, 0.00, 'out', '2021-07-08 11:01:38', NULL),
(819, 0, 1625742228, '', 2, 45, 0.00, 'out', '2021-07-08 11:03:48', NULL),
(820, 0, 1625743312, '', 1, 7, 0.00, 'out', '2021-07-08 11:21:52', NULL),
(821, 0, 1625745039, '', 1, 7, 0.00, 'out', '2021-07-08 11:50:39', NULL),
(822, 0, 1625745311, '', 3, 13, 0.00, 'out', '2021-07-08 11:55:11', NULL),
(823, 0, 1625745573, '', 1, 13, 0.00, 'out', '2021-07-08 11:59:33', NULL),
(824, 0, 1625745667, '', 2, 45, 0.00, 'out', '2021-07-08 12:01:07', NULL),
(825, 0, 1625746176, '', 5, 12, 0.00, 'out', '2021-07-08 12:09:36', NULL),
(826, 0, 1625746176, '', 1, 7, 0.00, 'out', '2021-07-08 12:09:36', NULL),
(827, 0, 1625746306, '', 1, 42, 0.00, 'out', '2021-07-08 12:11:46', NULL),
(828, 0, 1625746512, '', 1, 43, 0.00, 'out', '2021-07-08 12:15:12', NULL),
(829, 0, 1625746673, '', 2, 42, 0.00, 'out', '2021-07-08 12:17:53', NULL),
(830, 0, 1625746692, '', 4, 12, 0.00, 'out', '2021-07-08 12:18:12', NULL),
(831, 3, 0, NULL, 1, 13, 0.00, 'in', '2021-07-08 02:26:25', NULL),
(832, 0, 1625747221, '', 1, 7, 0.00, 'out', '2021-07-08 12:27:01', NULL),
(833, 0, 1625748238, '', 1, 42, 0.00, 'out', '2021-07-08 12:43:58', NULL),
(834, 0, 1625748238, '', 1, 45, 0.00, 'out', '2021-07-08 12:43:58', NULL),
(835, 0, 1625748238, '', 1, 13, 0.00, 'out', '2021-07-08 12:43:58', NULL),
(836, 0, 1625748238, '', 1, 7, 0.00, 'out', '2021-07-08 12:43:58', NULL),
(837, 0, 1625748238, '', 1, 43, 0.00, 'out', '2021-07-08 12:43:58', NULL),
(838, 0, 1625748258, '', 3, 13, 0.00, 'out', '2021-07-08 12:44:18', NULL),
(839, 0, 1625749090, '', 1, 45, 0.00, 'out', '2021-07-08 12:58:10', NULL),
(840, 0, 1625749184, '', 1, 12, 0.00, 'out', '2021-07-08 12:59:44', NULL),
(841, 0, 1625749184, '', 2, 45, 0.00, 'out', '2021-07-08 12:59:44', NULL),
(842, 0, 1625749280, '', 3, 12, 0.00, 'out', '2021-07-08 13:01:20', NULL),
(843, 0, 1625749439, '', 3, 7, 0.00, 'out', '2021-07-08 13:03:59', NULL),
(844, 0, 1625749738, '', 3, 45, 0.00, 'out', '2021-07-08 13:08:58', NULL),
(845, 0, 1625749908, '', 1, 13, 0.00, 'out', '2021-07-08 13:11:48', NULL),
(846, 0, 1625750070, '', 6, 42, 0.00, 'out', '2021-07-08 13:14:30', NULL),
(847, 0, 1625750200, '', 1, 43, 0.00, 'out', '2021-07-08 13:16:40', NULL),
(848, 3, 0, NULL, 6, 42, 0.00, 'in', '2021-07-08 03:17:32', NULL),
(849, 0, 1625750308, '', 1, 12, 0.00, 'out', '2021-07-08 13:18:28', NULL),
(850, 3, 0, NULL, 1, 12, 0.00, 'in', '2021-07-08 03:19:10', NULL),
(851, 0, 1625750422, '', 1, 7, 0.00, 'out', '2021-07-08 13:20:22', NULL),
(852, 0, 1625750527, '', 1, 7, 0.00, 'out', '2021-07-08 13:22:07', NULL),
(853, 0, 1625750605, '', 1, 13, 0.00, 'out', '2021-07-08 13:23:25', NULL),
(854, 0, 1625750722, '', 1, 12, 0.00, 'out', '2021-07-08 13:25:22', NULL),
(855, 0, 1625750722, '', 1, 7, 0.00, 'out', '2021-07-08 13:25:22', NULL),
(856, 0, 1625750932, '', 1, 12, 0.00, 'out', '2021-07-08 13:28:52', NULL),
(857, 0, 1625751078, '', 5, 13, 0.00, 'out', '2021-07-08 13:31:18', NULL),
(858, 0, 1625752419, '', 1, 12, 0.00, 'out', '2021-07-08 13:53:39', NULL),
(859, 0, 1625752699, '', 1, 43, 0.00, 'out', '2021-07-08 13:58:19', NULL),
(860, 0, 1625752759, '', 1, 45, 0.00, 'out', '2021-07-08 13:59:19', NULL),
(861, 0, 1625752833, '', 1, 13, 0.00, 'out', '2021-07-08 14:00:33', NULL),
(862, 0, 1625753864, '', 2, 12, 0.00, 'out', '2021-07-08 14:17:44', NULL),
(863, 0, 1625753949, '', 2, 12, 0.00, 'out', '2021-07-08 14:19:09', NULL),
(864, 0, 1625754378, '', 2, 7, 0.00, 'out', '2021-07-08 14:26:18', NULL),
(865, 0, 1625754465, '', 2, 7, 0.00, 'out', '2021-07-08 14:27:45', NULL),
(866, 0, 1625754607, '', 1, 7, 0.00, 'out', '2021-07-08 14:30:07', NULL),
(867, 0, 1625754659, '', 1, 12, 0.00, 'out', '2021-07-08 14:30:59', NULL),
(868, 0, 1625754673, '', 1, 7, 0.00, 'out', '2021-07-08 14:31:13', NULL),
(869, 0, 1625754765, '', 1, 45, 0.00, 'out', '2021-07-08 14:32:45', NULL),
(870, 0, 1625754794, '', 1, 45, 0.00, 'out', '2021-07-08 14:33:14', NULL),
(871, 0, 1625755002, '', 2, 43, 0.00, 'out', '2021-07-08 14:36:42', NULL),
(872, 0, 1625755072, '', 1, 42, 0.00, 'out', '2021-07-08 14:37:52', NULL),
(873, 0, 1625756159, '', 1, 45, 0.00, 'out', '2021-07-08 14:55:59', NULL),
(874, 0, 1625830080, '', 1, 42, 0.00, 'out', '2021-07-09 11:28:00', NULL),
(875, 0, 1625830849, '', 2, 42, 0.00, 'out', '2021-07-09 11:40:49', NULL),
(876, 0, 1625990107, '', 4, 12, 0.00, 'out', '2021-07-11 07:55:07', NULL),
(877, 0, 1625990107, '', 1, 45, 0.00, 'out', '2021-07-11 07:55:07', NULL),
(878, 0, 1625990228, '', 1, 45, 0.00, 'out', '2021-07-11 07:57:08', NULL),
(879, 0, 1625990335, '', 1, 45, 0.00, 'out', '2021-07-11 07:58:55', NULL),
(880, 0, 1625991528, '', 1, 42, 0.00, 'out', '2021-07-11 08:18:48', NULL),
(881, 0, 1625991710, '', 1, 42, 0.00, 'out', '2021-07-11 08:21:50', NULL),
(882, 0, 1625992756, '', 1, 45, 0.00, 'out', '2021-07-11 08:39:16', NULL),
(883, 0, 1626000082, '', 1, 12, 0.00, 'out', '2021-07-11 10:41:22', NULL),
(884, 0, 1626000082, '', 1, 42, 0.00, 'out', '2021-07-11 10:41:22', NULL),
(885, 0, 1626000082, '', 1, 45, 0.00, 'out', '2021-07-11 10:41:22', NULL),
(886, 0, 1626000082, '', 1, 43, 0.00, 'out', '2021-07-11 10:41:22', NULL),
(887, 0, 1626001748, '', 6, 42, 0.00, 'out', '2021-07-11 11:09:08', NULL),
(888, 0, 1626001748, '', 5, 45, 0.00, 'out', '2021-07-11 11:09:08', NULL),
(889, 0, 1626004853, '', 1, 12, 0.00, 'out', '2021-07-11 12:00:53', NULL),
(890, 0, 1626005166, '', 2, 7, 0.00, 'out', '2021-07-11 12:06:06', NULL),
(891, 0, 1626005261, '', 2, 7, 0.00, 'out', '2021-07-11 12:07:41', NULL),
(892, 0, 1626005776, '', 1, 42, 0.00, 'out', '2021-07-11 12:16:16', NULL),
(893, 0, 1626005776, '', 1, 45, 0.00, 'out', '2021-07-11 12:16:16', NULL),
(894, 0, 1626005984, '', 3, 12, 0.00, 'out', '2021-07-11 12:19:44', NULL),
(895, 0, 1626005984, '', 1, 42, 0.00, 'out', '2021-07-11 12:19:44', NULL),
(896, 0, 1626005984, '', 2, 45, 0.00, 'out', '2021-07-11 12:19:44', NULL),
(897, 0, 1626005984, '', 2, 43, 0.00, 'out', '2021-07-11 12:19:44', NULL),
(898, 0, 1626006373, '', 1, 45, 0.00, 'out', '2021-07-11 12:26:13', NULL),
(899, 0, 1626006373, '', 1, 7, 0.00, 'out', '2021-07-11 12:26:13', NULL),
(900, 0, 1626006732, '', 1, 45, 0.00, 'out', '2021-07-11 12:32:12', NULL),
(901, 0, 1626006907, '', 1, 12, 0.00, 'out', '2021-07-11 12:35:07', NULL),
(902, 0, 1626006907, '', 1, 45, 0.00, 'out', '2021-07-11 12:35:07', NULL),
(903, 0, 1626007561, '', 1, 12, 0.00, 'out', '2021-07-11 12:46:01', NULL),
(904, 0, 1626007869, '', 1, 12, 0.00, 'out', '2021-07-11 12:51:09', NULL),
(905, 0, 1626009619, '', 1, 45, 0.00, 'out', '2021-07-11 13:20:19', NULL),
(906, 0, 1626073452, '', 1, 42, 0.00, 'out', '2021-07-12 07:04:12', NULL),
(907, 0, 1626073452, '', 2, 45, 0.00, 'out', '2021-07-12 07:04:12', NULL),
(908, 0, 1626074180, '', 1, 42, 0.00, 'out', '2021-07-12 07:16:20', NULL),
(909, 0, 1626085121, '', 1, 12, 0.00, 'out', '2021-07-12 10:18:41', NULL),
(910, 0, 1626085848, '', 1, 45, 0.00, 'out', '2021-07-12 10:30:48', NULL),
(911, 0, 1626085848, '', 1, 7, 0.00, 'out', '2021-07-12 10:30:48', NULL),
(912, 0, 1626087638, '', 1, 45, 0.00, 'out', '2021-07-12 11:00:38', NULL),
(913, 0, 1626087638, '', 1, 7, 0.00, 'out', '2021-07-12 11:00:38', NULL),
(914, 0, 1626087765, '', 2, 12, 0.00, 'out', '2021-07-12 11:02:45', NULL),
(915, 0, 1626087765, '', 5, 42, 0.00, 'out', '2021-07-12 11:02:45', NULL),
(916, 0, 1626087765, '', 3, 45, 0.00, 'out', '2021-07-12 11:02:45', NULL),
(917, 0, 1626087765, '', 2, 7, 0.00, 'out', '2021-07-12 11:02:45', NULL),
(918, 0, 1626088092, '', 2, 12, 0.00, 'out', '2021-07-12 11:08:12', NULL),
(919, 0, 1626088092, '', 2, 45, 0.00, 'out', '2021-07-12 11:08:12', NULL),
(920, 0, 1626088093, '', 1, 13, 0.00, 'out', '2021-07-12 11:08:13', NULL),
(921, 0, 1626088093, '', 1, 7, 0.00, 'out', '2021-07-12 11:08:13', NULL),
(922, 0, 1626090568, '', 1, 7, 0.00, 'out', '2021-07-12 11:49:28', NULL),
(923, 0, 1626090845, '', 1, 42, 0.00, 'out', '2021-07-12 11:54:05', NULL),
(924, 0, 1626100590, '', 1, 42, 0.00, 'out', '2021-07-12 14:36:30', NULL),
(925, 0, 1626166036, '', 2, 42, 0.00, 'out', '2021-07-13 08:47:16', NULL),
(926, 0, 1626166036, '', 5, 45, 0.00, 'out', '2021-07-13 08:47:16', NULL),
(927, 3, 0, NULL, 2, 42, 0.00, 'in', '2021-07-12 23:35:11', NULL),
(928, 3, 0, NULL, 5, 45, 0.00, 'in', '2021-07-12 23:35:11', NULL),
(929, 0, 1626170000, '', 1, 43, 0.00, 'out', '2021-07-13 09:53:20', NULL),
(930, 0, 1626179383, '', 1, 43, 0.00, 'out', '2021-07-13 12:29:43', NULL),
(931, 0, 1626350004, '', 3, 42, 0.00, 'out', '2021-07-15 11:53:24', NULL),
(932, 0, 1626350081, '', 4, 13, 0.00, 'out', '2021-07-15 11:54:41', NULL),
(933, 0, 1626350148, '', 5, 7, 0.00, 'out', '2021-07-15 11:55:48', NULL),
(934, 0, 1626350218, '', 2, 45, 0.00, 'out', '2021-07-15 11:56:58', NULL),
(935, 0, 1626350260, '', 4, 43, 0.00, 'out', '2021-07-15 11:57:40', NULL),
(936, 0, 1626350325, '', 3, 12, 0.00, 'out', '2021-07-15 11:58:45', NULL),
(937, 3, 0, '6979769', 20, 46, 19.00, 'in', '2021-07-24 23:29:24', NULL),
(938, 0, 1627291361, '', 1, 7, 0.00, 'out', '2021-07-26 09:22:41', NULL),
(939, 0, 1627291864, '', 1, 7, 0.00, 'out', '2021-07-26 09:31:04', NULL),
(940, 0, 1628587432, '', 6, 12, 0.00, 'out', '2021-08-10 09:23:52', NULL),
(941, 0, 1628587432, '', 4, 42, 0.00, 'out', '2021-08-10 09:23:52', NULL),
(942, 0, 1628587432, '', 8, 7, 0.00, 'out', '2021-08-10 09:23:52', NULL),
(943, 3, 0, NULL, 5, 7, 0.00, 'in', '2021-08-15 02:22:52', NULL),
(944, 3, 0, NULL, 2, 45, 0.00, 'in', '2021-08-15 02:22:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_ref_id`, `products_id`, `attribute_id`) VALUES
(3, 13, 11),
(4, 13, 12),
(5, 13, 13),
(10, 4, 1),
(11, 4, 2),
(12, 4, 4),
(15, 8, 5),
(16, 8, 6),
(17, 8, 7),
(20, 11, 9),
(22, 11, 10),
(30, 21, 14),
(31, 21, 15),
(33, 24, 19),
(34, 24, 18),
(38, 28, 20),
(39, 28, 21),
(64, 8, 6),
(85, 13, 12),
(87, 4, 1),
(103, 4, 1),
(137, 21, 14),
(146, 4, 1),
(174, 4, 1),
(188, 13, 13),
(189, 13, 13),
(190, 13, 13),
(217, 4, 1),
(225, 13, 13),
(227, 8, 7),
(463, 4, 1),
(489, 4, 1),
(508, 21, 14);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc'),
(1058, 'Shop More'),
(1059, 'Me'),
(1060, 'View All'),
(1061, 'Featured'),
(1062, 'Shop Now'),
(1063, 'New Arrivals'),
(1064, 'Sort'),
(1065, 'Help & Support'),
(1066, 'Select Currency'),
(1067, 'Your Price'),
(1068, 'Billing'),
(1069, 'Ship to a different address?'),
(1070, 'Method'),
(1071, 'Summary'),
(1072, 'Discount'),
(1073, 'Error in initialization, maybe PayPal isnt supported or something else'),
(1074, 'Alert'),
(1075, 'Your Wishlist is Empty'),
(1076, 'Press heart icon on products to add them in wishlist'),
(1077, 'Wishlist'),
(1078, 'All Items'),
(1079, 'Account Info'),
(1080, 'You Must Be Logged in to use this Feature!'),
(1081, 'Remove from Wishlist'),
(1082, 'Sign Up'),
(1083, 'Reset Password'),
(1084, 'Invalid email or password'),
(1085, 'Recent Searches'),
(1086, 'Add to Wishlist'),
(1087, 'Discover Latest Trends'),
(1088, 'Add To My Wishlist'),
(1089, 'Start Shoping'),
(1090, 'A Smart Shopping Experience'),
(1091, 'Addresses'),
(1092, 'Account'),
(1093, 'DETAILS'),
(1094, 'Dark Mode'),
(1095, 'Enter a description'),
(1096, 'Grocery Store'),
(1097, 'Post Comment'),
(1098, 'Rate and write a review'),
(1099, 'Ratings & Reviews'),
(1100, 'Write a review'),
(1101, 'Your Rating'),
(1102, 'rating'),
(1103, 'rating and review'),
(1104, 'Coupon Codes List'),
(1105, 'Custom Orders'),
(1106, 'Ecommerce'),
(1107, 'Featured Products'),
(1108, 'House Hold 1'),
(1109, 'Newest Products'),
(1110, 'On Sale Products'),
(1111, 'Braintree'),
(1112, 'Hyperpay'),
(1113, 'Instamojo'),
(1114, 'PayTm'),
(1115, 'Paypal'),
(1116, 'Razor Pay'),
(1117, 'Stripe');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(11) NOT NULL,
  `label_value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, NULL, 1, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056),
(1706, 'cccc', 1, 1057),
(1708, 'Shop More', 1, 1058),
(1710, 'Discount', 1, 1072),
(1712, 'Error in initialization, maybe PayPal isnt supported or something else', 1, 1073),
(1714, 'Alert', 1, 1074),
(1716, 'Your Wishlist is Empty', 1, 1075),
(1718, 'Press heart icon on products to add them in wishlist', 1, 1076),
(1720, 'Wishlist', 1, 1077),
(1722, 'All Items', 1, 1078),
(1724, 'Account Info', 1, 1079),
(1726, 'You Must Be Logged in to use this Feature!', 1, 1080),
(1728, 'Remove from Wishlist', 1, 1081),
(1730, 'Sign Up', 1, 1082),
(1732, 'Reset Password', 1, 1083),
(1734, 'Invalid email or password', 1, 1084),
(1736, 'Recent Searches', 1, 1085),
(1738, 'Add to Wishlist', 1, 1086),
(1740, 'Discover Latest Trends', 1, 1087),
(1742, 'Add To My Wishlist', 1, 1088),
(1744, 'Start Shoping', 1, 1089),
(1746, 'A Smart Shopping Experience', 1, 1090),
(1748, 'Addresses', 1, 1091),
(1750, 'Account', 1, 1092),
(1752, 'DETAILS', 1, 1093),
(1754, 'Dark Mode', 1, 1094),
(1756, 'Enter a description', 1, 1095),
(1758, 'Grocery Store', 1, 1096),
(1760, 'Post Comment', 1, 1097),
(1762, 'Rate and write a review', 1, 1098),
(1764, 'Ratings & Reviews', 1, 1099),
(1766, 'Write a review', 1, 1100),
(1768, 'Your Rating', 1, 1101),
(1770, 'rating', 1, 1102),
(1772, 'rating and review', 1, 1103),
(1774, 'Coupon Codes List', 1, 1104),
(1776, 'Custom Orders', 1, 1105),
(1778, 'Ecommerce', 1, 1106),
(1780, 'Featured Products', 1, 1107),
(1782, 'House Hold 1', 1, 1108),
(1784, 'Newest Products', 1, 1109),
(1786, 'On Sale Products', 1, 1110),
(1788, 'Braintree', 1, 1111),
(1790, 'Hyperpay', 1, 1112),
(1792, 'Instamojo', 1, 1113),
(1794, 'PayTm', 1, 1114),
(1796, 'Paypal', 1, 1115),
(1798, 'Razor Pay', 1, 1116),
(1800, 'Stripe', 1, 1117),
(1802, 'Me', 1, 1059),
(1804, 'View All', 1, 1060),
(1806, 'Featured', 1, 1061),
(1808, 'Shop Now', 1, 1062),
(1810, 'New Arrivals', 1, 1063),
(1812, 'Sort', 1, 1064),
(1814, 'Help & Support', 1, 1065),
(1816, 'Select Currency', 1, 1066),
(1818, 'Your Price', 1, 1067),
(1820, 'Billing', 1, 1068),
(1822, 'Ship to a different address?', 1, 1069),
(1824, 'Method', 1, 1070),
(1826, 'Summary', 1, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `directory` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`, `status`) VALUES
(1, 'English', 'En', '1', NULL, 1, 'ltr', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_count` double DEFAULT NULL,
  `end_count` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `start_count`, `end_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Silver', 0, 1999, 1, '2021-05-03 22:18:15', '2021-05-03 22:18:15'),
(2, 'Gold', 2000, 3999, 1, '2021-03-14 11:54:49', '2021-03-14 11:54:49'),
(3, 'Platinum', 4000, 5999, 1, '2021-04-07 07:04:24', '2021-05-09 07:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(240, 12, 54, '2021-07-05 17:30:22'),
(241, 7, 54, '2021-07-05 17:30:30'),
(242, 13, 54, '2021-07-05 17:30:38'),
(253, 12, 71, '2021-07-08 11:45:52'),
(259, 12, 69, '2021-07-08 17:33:30'),
(265, 43, 73, '2021-07-11 12:11:51'),
(268, 7, 73, '2021-07-11 16:41:28'),
(272, 42, 73, '2021-08-05 17:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `lpoints`
--

CREATE TABLE `lpoints` (
  `id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `lpoints_amount` double NOT NULL,
  `lpoints_points` double NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1 will be orders\r\n2 will be referral\r\n',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lpoints`
--

INSERT INTO `lpoints` (`id`, `customers_id`, `orders_id`, `lpoints_amount`, `lpoints_points`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 64, 1, 10, 38, 1, 1, '2021-07-13 12:29:43', '2021-07-13 12:29:43'),
(2, 69, 2, 10, 60, 1, 1, '2021-07-15 11:53:24', '2021-07-15 11:53:24'),
(3, 69, 3, 10, 160, 1, 1, '2021-07-15 11:54:41', '2021-07-15 11:54:41'),
(4, 65, 4, 10, 48, 1, 1, '2021-07-15 11:55:48', '2021-07-15 11:55:48'),
(5, 62, 5, 10, 80, 1, 1, '2021-07-15 11:56:58', '2021-07-15 11:56:58'),
(6, 69, 6, 10, 150, 1, 1, '2021-07-15 11:57:40', '2021-07-15 11:57:40'),
(7, 54, 7, 10, 150, 1, 1, '2021-07-15 11:58:45', '2021-07-15 11:58:45'),
(8, 84, 8, 10, 3, 1, 1, '2021-07-26 09:22:41', '2021-07-26 09:22:41'),
(9, 64, 9, 10, 3, 1, 1, '2021-07-26 09:31:04', '2021-07-26 09:31:04'),
(10, 54, 10, 10, 101, 1, 1, '2021-08-10 09:23:51', '2021-08-10 09:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(11) NOT NULL,
  `user_types_id` tinyint(1) NOT NULL DEFAULT '0',
  `dashboard_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT '0',
  `categories_view` tinyint(1) NOT NULL DEFAULT '0',
  `categories_create` tinyint(1) NOT NULL DEFAULT '0',
  `categories_update` tinyint(1) NOT NULL DEFAULT '0',
  `categories_delete` tinyint(1) NOT NULL DEFAULT '0',
  `products_view` tinyint(1) NOT NULL DEFAULT '0',
  `products_create` tinyint(1) NOT NULL DEFAULT '0',
  `products_update` tinyint(1) NOT NULL DEFAULT '0',
  `products_delete` tinyint(1) NOT NULL DEFAULT '0',
  `news_view` tinyint(1) NOT NULL DEFAULT '0',
  `news_create` tinyint(1) NOT NULL DEFAULT '0',
  `news_update` tinyint(1) NOT NULL DEFAULT '0',
  `news_delete` tinyint(1) NOT NULL DEFAULT '0',
  `customers_view` tinyint(1) NOT NULL DEFAULT '0',
  `customers_create` tinyint(1) NOT NULL DEFAULT '0',
  `customers_update` tinyint(1) NOT NULL DEFAULT '0',
  `customers_delete` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_view` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_create` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_update` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_view` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_create` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_update` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_delete` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_view` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_send` tinyint(1) NOT NULL DEFAULT '0',
  `orders_view` tinyint(1) NOT NULL DEFAULT '0',
  `orders_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `reports_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT '0',
  `language_view` tinyint(1) NOT NULL DEFAULT '0',
  `language_create` tinyint(1) NOT NULL DEFAULT '0',
  `language_update` tinyint(1) NOT NULL DEFAULT '0',
  `language_delete` tinyint(1) NOT NULL DEFAULT '0',
  `profile_view` tinyint(1) NOT NULL DEFAULT '0',
  `profile_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_view` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_create` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_delete` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT '0',
  `add_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_media` tinyint(1) NOT NULL DEFAULT '0',
  `view_media` tinyint(1) NOT NULL DEFAULT '0',
  `delete_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_management` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_view` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_update` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`, `reviews_view`, `reviews_update`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(5, 14, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 5, '/', '/', 0, 0, NULL, NULL),
(2, 6, NULL, 0, 5, '/shop', '/shop', 0, 1, NULL, NULL),
(18, 4, 2, 0, 2, 'about-us', 'about-us', 0, 1, NULL, NULL),
(22, 9, NULL, 0, 5, '/contact', '/contact', 0, 0, NULL, NULL),
(23, 3, NULL, 0, 2, 'how-it-works', 'how-it-works', 0, 1, NULL, NULL),
(24, 8, NULL, 0, 1, 'http://134.119.189.170:90/lucramania/public/', 'http://134.119.189.170:90/lucramania/public/', 0, 0, NULL, NULL),
(25, 7, NULL, 0, 2, 'Community-Support', 'Community-Support', 0, 0, NULL, NULL),
(27, 5, NULL, 0, 2, 'winners', 'winners', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

CREATE TABLE `menu_translation` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 4, 'منزل'),
(11, 2, 1, 'Products'),
(12, 2, 4, 'تسوق'),
(33, 18, 1, 'About us'),
(34, 18, 4, 'معلومات عنا'),
(41, 22, 1, 'Contact Us'),
(42, 22, 4, 'اتصل بنا'),
(43, 23, 1, 'How it works'),
(44, 23, 4, 'كيف تعمل'),
(45, 24, 1, 'Campaigns'),
(46, 24, 4, 'الحملات'),
(47, 24, 5, 'Campaigns'),
(48, 2, 5, 'منتجات'),
(49, 25, 1, 'Community Support'),
(50, 25, 5, 'دعم المجتمع'),
(51, 23, 5, 'كيف تعمل'),
(52, 18, 5, 'حول'),
(53, 18, 6, 'abut us'),
(56, 23, 6, 'How it works'),
(57, 27, 1, 'Winners'),
(58, 27, 6, 'Winners'),
(59, 25, 6, 'Community Support');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_24_122557_create_address_book_table', 1),
(2, '2019_09_24_122557_create_alert_settings_table', 1),
(3, '2019_09_24_122557_create_api_calls_list_table', 1),
(4, '2019_09_24_122557_create_banners_history_table', 1),
(5, '2019_09_24_122557_create_banners_table', 1),
(6, '2019_09_24_122557_create_block_ips_table', 1),
(7, '2019_09_24_122557_create_categories_description_table', 1),
(8, '2019_09_24_122557_create_categories_role_table', 1),
(9, '2019_09_24_122557_create_categories_table', 1),
(10, '2019_09_24_122557_create_compare_table', 1),
(11, '2019_09_24_122557_create_constant_banners_table', 1),
(12, '2019_09_24_122557_create_countries_table', 1),
(13, '2019_09_24_122557_create_coupons_table', 1),
(14, '2019_09_24_122557_create_currencies_table', 1),
(15, '2019_09_24_122557_create_currency_record_table', 1),
(16, '2019_09_24_122557_create_current_theme_table', 1),
(17, '2019_09_24_122557_create_customers_basket_attributes_table', 1),
(18, '2019_09_24_122557_create_customers_basket_table', 1),
(19, '2019_09_24_122557_create_customers_info_table', 1),
(20, '2019_09_24_122557_create_customers_table', 1),
(21, '2019_09_24_122557_create_devices_table', 1),
(22, '2019_09_24_122557_create_flash_sale_table', 1),
(23, '2019_09_24_122557_create_flate_rate_table', 1),
(24, '2019_09_24_122557_create_front_end_theme_content_table', 1),
(25, '2019_09_24_122557_create_geo_zones_table', 1),
(26, '2019_09_24_122557_create_http_call_record_table', 1),
(27, '2019_09_24_122557_create_image_categories_table', 1),
(28, '2019_09_24_122557_create_images_table', 1),
(29, '2019_09_24_122557_create_inventory_detail_table', 1),
(30, '2019_09_24_122557_create_inventory_table', 1),
(31, '2019_09_24_122557_create_label_value_table', 1),
(32, '2019_09_24_122557_create_labels_table', 1),
(33, '2019_09_24_122557_create_languages_table', 1),
(34, '2019_09_24_122557_create_liked_products_table', 1),
(35, '2019_09_24_122557_create_manage_min_max_table', 1),
(36, '2019_09_24_122557_create_manage_role_table', 1),
(37, '2019_09_24_122557_create_manufacturers_info_table', 1),
(38, '2019_09_24_122557_create_manufacturers_table', 1),
(39, '2019_09_24_122557_create_news_categories_description_table', 1),
(40, '2019_09_24_122557_create_news_categories_table', 1),
(41, '2019_09_24_122557_create_news_description_table', 1),
(42, '2019_09_24_122557_create_news_table', 1),
(43, '2019_09_24_122557_create_news_to_news_categories_table', 1),
(44, '2019_09_24_122557_create_orders_products_attributes_table', 1),
(45, '2019_09_24_122557_create_orders_products_table', 1),
(46, '2019_09_24_122557_create_orders_status_description_table', 1),
(47, '2019_09_24_122557_create_orders_status_history_table', 1),
(48, '2019_09_24_122557_create_orders_status_table', 1),
(49, '2019_09_24_122557_create_orders_table', 1),
(50, '2019_09_24_122557_create_orders_total_table', 1),
(51, '2019_09_24_122557_create_pages_description_table', 1),
(52, '2019_09_24_122557_create_pages_table', 1),
(53, '2019_09_24_122557_create_payment_description_table', 1),
(54, '2019_09_24_122557_create_payment_methods_detail_table', 1),
(55, '2019_09_24_122557_create_payment_methods_table', 1),
(56, '2019_09_24_122557_create_permissions_table', 1),
(57, '2019_09_24_122557_create_products_attributes_table', 1),
(58, '2019_09_24_122557_create_products_description_table', 1),
(59, '2019_09_24_122557_create_products_images_table', 1),
(60, '2019_09_24_122557_create_products_options_descriptions_table', 1),
(61, '2019_09_24_122557_create_products_options_table', 1),
(62, '2019_09_24_122557_create_products_options_values_descriptions_table', 1),
(63, '2019_09_24_122557_create_products_options_values_table', 1),
(64, '2019_09_24_122557_create_products_shipping_rates_table', 1),
(65, '2019_09_24_122557_create_products_table', 1),
(66, '2019_09_24_122557_create_products_to_categories_table', 1),
(67, '2019_09_24_122557_create_reviews_description_table', 1),
(68, '2019_09_24_122557_create_reviews_table', 1),
(69, '2019_09_24_122557_create_sessions_table', 1),
(70, '2019_09_24_122557_create_settings_table', 1),
(71, '2019_09_24_122557_create_shipping_description_table', 1),
(72, '2019_09_24_122557_create_shipping_methods_table', 1),
(73, '2019_09_24_122557_create_sliders_images_table', 1),
(74, '2019_09_24_122557_create_specials_table', 1),
(75, '2019_09_24_122557_create_tax_class_table', 1),
(76, '2019_09_24_122557_create_tax_rates_table', 1),
(77, '2019_09_24_122557_create_units_descriptions_table', 1),
(78, '2019_09_24_122557_create_units_table', 1),
(79, '2019_09_24_122557_create_ups_shipping_table', 1),
(80, '2019_09_24_122557_create_user_to_address_table', 1),
(81, '2019_09_24_122557_create_user_types_table', 1),
(82, '2019_09_24_122557_create_users_table', 1),
(83, '2019_09_24_122557_create_whos_online_table', 1),
(84, '2019_09_24_122557_create_zones_table', 1),
(85, '2019_09_24_122557_create_zones_to_geo_zones_table', 1),
(86, '2019_12_11_070737_create_menus_table', 1),
(87, '2019_12_11_070821_create_menu_translation_table', 1),
(88, '2020_02_04_121358_top_offers', 1),
(89, '2020_03_25_141022_create_home_banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` text COLLATE utf8mb4_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `news_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`, `created_at`, `updated_at`) VALUES
(1, '419', '2020-04-05 01:10:00', NULL, 1, 1, 'world-business-news', '2019-09-18 15:17:41', '2020-09-21 07:10:12'),
(2, '420', '2020-04-05 01:10:00', NULL, 1, 0, 'witn-news', '2019-09-18 15:23:26', '2019-10-01 16:25:20'),
(3, '421', '2020-04-05 01:10:00', NULL, 1, 0, 'stock-exchange', '2019-09-24 16:02:25', '2019-10-01 16:25:44'),
(4, '447', '2020-04-05 01:10:00', NULL, 1, 1, 'manufacturing-tools', '2019-09-24 16:03:19', '2019-10-01 16:26:07'),
(5, '449', '2020-04-05 01:10:00', NULL, 1, 1, 'fashion-week', '2019-09-24 16:31:11', '2019-10-01 16:26:45'),
(6, '448', '2020-04-05 01:10:00', NULL, 1, 1, 'world-wide-networking', '2019-09-24 16:33:17', '2019-10-01 16:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(3, '417', '', 0, 1, NULL, '2020-04-01 05:10:03', 'tools-and-technology', 1, '2019-09-24 15:56:31', NULL),
(4, '418', '', 0, 4, NULL, '2020-04-01 05:10:27', 'business', 1, '2019-09-24 15:57:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(3, 3, 1, 'Tools and Technology'),
(4, 4, 1, 'Business'),
(5, 3, 4, 'الأدوات والتكنولوجيا'),
(6, 4, 4, 'اعمال');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci,
  `news_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_viewed` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`language_id`, `news_name`, `news_id`, `news_description`, `news_url`, `news_viewed`) VALUES
(1, 'World Business', 1, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'World Information Technology', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', 0),
(1, 'Stock Exchange', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', 0),
(1, 'Why to choose this app for your Project?', 4, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'Fashion Week', 5, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'Tool and Technology', 6, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(4, 'عالم الأعمال', 1, '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', '0', 0),
(4, 'عالم تكنولوجيا المعلومات', 2, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'تداول الاسهم', 3, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'لماذا تختار هذا التطبيق لمشروعك؟', 4, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'أسبوع الموضة', 5, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'الأداة والتكنولوجيا', 6, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(6, 'World Business', 1, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2019-09-18 15:17:41', '2020-09-21 07:10:12'),
(2, 3, '2019-09-18 15:23:26', '2019-10-01 16:25:20'),
(3, 4, '2019-09-24 16:02:25', '2019-10-01 16:25:44'),
(4, 3, '2019-09-24 16:03:19', '2019-10-01 16:26:07'),
(5, 4, '2019-09-24 16:31:11', '2019-10-01 16:26:45'),
(6, 3, '2019-09-24 16:33:17', '2019-10-01 16:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `lpoints_points` int(11) DEFAULT NULL,
  `spent_lpoints` double NOT NULL DEFAULT '0',
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci,
  `donation` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `email`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `lpoints_points`, `spent_lpoints`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`, `ordered_source`, `delivery_phone`, `billing_phone`, `transaction_id`, `donation`, `created_at`, `updated_at`) VALUES
(1, 0.00, 64, 'test test', NULL, 'test', 'test', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', '', 'abirjaber24@gmail.com', NULL, 'test test', NULL, 'test', 'test', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', NULL, 'test test', NULL, 'test', 'test', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-07-13 16:29:43', '2021-07-13 16:29:43', NULL, 'AED', NULL, 375.00, 38, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '987654321', '987654321', '0', 0, NULL, NULL),
(2, 0.00, 69, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', '', 'a.has158494@gmail.com', NULL, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', NULL, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-07-15 15:53:24', '2021-07-15 15:53:24', NULL, 'AED', NULL, 600.00, 60, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '987654321', '987654321', '0', 0, NULL, NULL),
(3, 0.00, 69, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', '', 'a.has158494@gmail.com', NULL, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', NULL, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-07-15 15:54:41', '2021-07-15 15:54:41', NULL, 'AED', NULL, 1600.00, 160, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '987654321', '987654321', '0', 0, NULL, NULL),
(6, 0.00, 69, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', '', 'a.has158494@gmail.com', NULL, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', NULL, 'tst test', NULL, 'test', 'testq', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-07-15 15:57:40', '2021-07-15 15:57:40', NULL, 'AED', NULL, 1500.00, 150, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '987654321', '987654321', '0', 0, NULL, NULL),
(7, 0.00, 54, 'test test', NULL, '7097 Lincoln St.  Torrington, CT 06790', 'Buldingno2 2nd floor', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', '', 'testdeveloper69@gmail.com', NULL, 'test test', NULL, '7097 Lincoln St.  Torrington, CT 06790', 'Buldingno2 2nd floor', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', NULL, 'test test', NULL, '7097 Lincoln St.  Torrington, CT 06790', 'Buldingno2 2nd floor', 'Abu Dhabi', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-07-15 15:58:45', '2021-07-15 15:58:45', NULL, 'AED', NULL, 1500.00, 150, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '123123123', '123123123', '0', 0, NULL, NULL),
(8, 0.00, 84, 'Sydney Fernandes', NULL, 'Al falak', 'Thuraya tower', 'Dubai', '', 'AL', 'United Arab Emirates', '', 'kingali24@hotmail.com', NULL, 'Sydney Fernandes', NULL, 'Al falak', 'Thuraya tower', 'Dubai', '', 'AL', 'United Arab Emirates', NULL, 'Sydney Fernandes', NULL, 'Al falak', 'Thuraya tower', 'Dubai', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-07-26 13:22:41', '2021-07-26 13:22:41', NULL, 'AED', NULL, 30.00, 3, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '509903867', '509903867', '9c52f62f-a070-4812-b2d0-4d83b81862c7', 0, NULL, NULL),
(9, 0.00, 64, 'Abir Jaber', NULL, 'Al furjan', 'Azizi feiroz apt 508', 'Dubai', '', 'AL', 'United Arab Emirates', '', 'abirjaber24@gmail.com', NULL, 'Abir Jaber', NULL, 'Al furjan', 'Azizi feiroz apt 508', 'Dubai', '', 'AL', 'United Arab Emirates', NULL, 'Abir Jaber', NULL, 'Al furjan', 'Azizi feiroz apt 508', 'Dubai', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-07-26 13:31:04', '2021-07-26 13:31:04', NULL, 'AED', NULL, 30.00, 3, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '567594147', '567594147', 'f9b7d671-fc6f-4b01-9376-a31657783a9b', 0, NULL, NULL),
(10, 0.00, 54, 'khan2 bhai2', NULL, '25245 Stadium Drive', '123asd12sd', 'Sharjah', '', 'AL', 'United Arab Emirates', '', 'testdeveloper69@gmail.com', NULL, 'khan2 bhai2', NULL, '25245 Stadium Drive', '123asd12sd', 'Sharjah', '', 'AL', 'United Arab Emirates', NULL, 'khan2 bhai2', NULL, '25245 Stadium Drive', '123asd12sd', 'Sharjah', '', 'AL', 'United Arab Emirates', 0, 'Cash on Delivery', '', '', '', '', '2021-08-10 13:23:51', '2021-08-10 13:23:51', NULL, 'AED', NULL, 1010.00, 101, 0, 0.00, 'none', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '(201) 555-0123', '(201) 555-0123', '0', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `campaign_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 43, 6, NULL, 'Purple Gym Towel', 375.00, 375.00, 1, 1),
(2, 2, 42, 11, NULL, 'Skipping Rope', 200.00, 600.00, 1, 3),
(3, 3, 13, 7, NULL, 'Gym Bottle', 400.00, 1600.00, 1, 4),
(6, 6, 43, 6, NULL, 'Purple Gym Towel', 375.00, 1500.00, 1, 4),
(7, 7, 12, 9, NULL, 'Gym Bag', 500.00, 1500.00, 1, 3),
(8, 8, 7, 8, NULL, 'Wrist Band', 30.00, 30.00, 1, 1),
(9, 9, 7, 8, NULL, 'Wrist Band', 30.00, 30.00, 1, 1),
(10, 10, 12, 9, NULL, 'Gym Bag', 95.00, 570.00, 1, 6),
(11, 10, 42, 11, NULL, 'Skipping Rope', 50.00, 200.00, 1, 4),
(12, 10, 7, 8, NULL, 'Wrist Band', 30.00, 240.00, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL,
  `public_flag` int(11) DEFAULT '0',
  `downloads_flag` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 0, 0, 2),
(2, 0, 0, 2),
(3, 0, 0, 2),
(4, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`) VALUES
(1, 1, 'Pending', 1),
(2, 2, 'Completed', 1),
(3, 3, 'Cancel', 1),
(4, 4, 'Return', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2021-07-01 06:14:58', 1, ''),
(2, 2, 1, '2021-07-03 02:07:04', 1, ''),
(3, 3, 1, '2021-07-04 12:12:07', 1, ''),
(4, 4, 1, '2021-07-05 05:15:47', 1, ''),
(5, 5, 1, '2021-07-05 05:16:13', 1, ''),
(6, 6, 1, '2021-07-05 05:19:37', 1, ''),
(7, 7, 1, '2021-07-05 05:20:12', 1, ''),
(8, 8, 1, '2021-07-05 05:21:32', 1, ''),
(9, 9, 1, '2021-07-05 05:22:35', 1, ''),
(10, 10, 1, '2021-07-05 05:23:33', 1, ''),
(11, 11, 1, '2021-07-05 05:31:52', 1, ''),
(12, 12, 1, '2021-07-05 08:04:37', 1, ''),
(13, 13, 1, '2021-07-06 02:22:15', 1, ''),
(14, 14, 1, '2021-07-06 02:27:36', 1, ''),
(15, 15, 1, '2021-07-06 03:22:02', 1, ''),
(16, 16, 1, '2021-07-06 03:24:25', 1, ''),
(17, 17, 1, '2021-07-06 03:26:05', 1, ''),
(18, 18, 1, '2021-07-06 03:30:56', 1, ''),
(19, 19, 1, '2021-07-06 03:31:48', 1, ''),
(20, 20, 1, '2021-07-06 09:50:13', 1, ''),
(21, 21, 1, '2021-07-06 09:55:16', 1, ''),
(22, 22, 1, '2021-07-06 09:56:34', 1, ''),
(23, 23, 1, '2021-07-06 09:59:29', 1, ''),
(24, 24, 1, '2021-07-06 10:01:43', 1, ''),
(25, 25, 1, '2021-07-06 10:02:28', 1, ''),
(26, 26, 1, '2021-07-06 10:02:40', 1, ''),
(27, 27, 1, '2021-07-06 10:03:41', 1, ''),
(28, 28, 1, '2021-07-06 10:04:27', 1, ''),
(29, 29, 1, '2021-07-06 10:05:35', 1, ''),
(30, 30, 1, '2021-07-06 10:07:59', 1, ''),
(31, 31, 1, '2021-07-06 10:08:30', 1, ''),
(32, 32, 1, '2021-07-06 10:25:53', 1, ''),
(33, 33, 1, '2021-07-06 10:56:55', 1, ''),
(34, 34, 1, '2021-07-06 11:11:16', 1, ''),
(35, 35, 1, '2021-07-06 11:13:34', 1, ''),
(36, 36, 1, '2021-07-06 11:15:13', 1, ''),
(37, 37, 1, '2021-07-06 11:15:17', 1, ''),
(38, 38, 1, '2021-07-06 11:20:18', 1, ''),
(39, 39, 1, '2021-07-06 11:25:16', 1, ''),
(40, 40, 1, '2021-07-06 11:27:47', 1, ''),
(41, 41, 1, '2021-07-06 11:28:25', 1, ''),
(42, 42, 1, '2021-07-06 11:59:34', 1, ''),
(43, 43, 1, '2021-07-06 12:01:07', 1, ''),
(44, 44, 1, '2021-07-06 12:02:29', 1, ''),
(45, 45, 1, '2021-07-06 12:04:13', 1, ''),
(46, 46, 1, '2021-07-06 01:25:21', 1, ''),
(47, 47, 1, '2021-07-06 01:27:39', 1, ''),
(48, 48, 1, '2021-07-06 01:35:00', 1, ''),
(49, 49, 1, '2021-07-06 01:36:39', 1, ''),
(50, 50, 1, '2021-07-06 01:36:56', 1, ''),
(51, 51, 1, '2021-07-06 01:37:08', 1, ''),
(52, 52, 1, '2021-07-06 01:37:43', 1, ''),
(53, 53, 1, '2021-07-06 01:39:01', 1, ''),
(54, 54, 1, '2021-07-06 01:39:27', 1, ''),
(55, 55, 1, '2021-07-06 01:40:35', 1, ''),
(56, 56, 1, '2021-07-06 01:48:19', 1, ''),
(57, 57, 1, '2021-07-06 01:52:27', 1, ''),
(58, 58, 1, '2021-07-06 01:54:47', 1, ''),
(59, 59, 1, '2021-07-06 01:58:30', 1, ''),
(60, 60, 1, '2021-07-06 02:05:52', 1, ''),
(61, 61, 1, '2021-07-06 02:23:55', 1, ''),
(62, 62, 1, '2021-07-06 02:32:51', 1, ''),
(63, 63, 1, '2021-07-06 02:33:31', 1, ''),
(64, 64, 1, '2021-07-06 02:34:00', 1, ''),
(65, 65, 1, '2021-07-06 02:34:10', 1, ''),
(66, 66, 1, '2021-07-06 02:34:58', 1, ''),
(67, 67, 1, '2021-07-06 02:35:02', 1, ''),
(68, 68, 1, '2021-07-06 02:36:18', 1, ''),
(69, 69, 1, '2021-07-06 02:38:55', 1, ''),
(70, 70, 1, '2021-07-06 02:39:57', 1, ''),
(71, 71, 1, '2021-07-06 02:40:54', 1, ''),
(72, 72, 1, '2021-07-06 02:41:09', 1, ''),
(73, 73, 1, '2021-07-06 02:42:13', 1, ''),
(74, 74, 1, '2021-07-06 02:44:38', 1, ''),
(75, 75, 1, '2021-07-06 02:47:50', 1, ''),
(76, 76, 1, '2021-07-06 02:48:03', 1, ''),
(77, 77, 1, '2021-07-06 02:50:08', 1, ''),
(78, 78, 1, '2021-07-06 02:51:41', 1, ''),
(79, 79, 1, '2021-07-06 02:58:18', 1, ''),
(80, 80, 1, '2021-07-06 03:00:39', 1, ''),
(81, 81, 1, '2021-07-06 03:01:39', 1, ''),
(82, 82, 1, '2021-07-06 03:06:10', 1, ''),
(83, 83, 1, '2021-07-06 03:37:27', 1, ''),
(84, 84, 1, '2021-07-06 04:17:18', 1, ''),
(85, 85, 1, '2021-07-06 04:18:41', 1, ''),
(86, 86, 1, '2021-07-06 04:19:21', 1, ''),
(87, 87, 1, '2021-07-06 04:20:22', 1, ''),
(88, 88, 1, '2021-07-06 04:21:23', 1, ''),
(89, 89, 1, '2021-07-06 04:25:28', 1, ''),
(90, 90, 1, '2021-07-06 05:29:41', 1, ''),
(91, 91, 1, '2021-07-06 05:38:18', 1, ''),
(92, 92, 1, '2021-07-06 05:53:32', 1, ''),
(93, 93, 1, '2021-07-06 06:06:48', 1, ''),
(94, 94, 1, '2021-07-06 06:28:22', 1, ''),
(95, 95, 1, '2021-07-06 08:01:28', 1, ''),
(96, 96, 1, '2021-07-06 08:21:52', 1, ''),
(97, 97, 1, '2021-07-06 08:52:05', 1, ''),
(98, 98, 1, '2021-07-06 09:14:58', 1, ''),
(99, 99, 1, '2021-07-07 10:22:39', 1, ''),
(100, 100, 1, '2021-07-07 03:51:59', 1, ''),
(101, 101, 1, '2021-07-07 06:40:26', 1, ''),
(102, 102, 1, '2021-07-07 06:53:45', 1, ''),
(103, 103, 1, '2021-07-07 07:38:15', 1, ''),
(104, 104, 1, '2021-07-07 07:38:41', 1, ''),
(105, 105, 1, '2021-07-07 07:43:40', 1, ''),
(106, 106, 1, '2021-07-07 07:55:19', 1, ''),
(107, 107, 1, '2021-07-07 08:00:44', 1, ''),
(108, 108, 1, '2021-07-07 08:03:08', 1, ''),
(109, 109, 1, '2021-07-07 08:04:49', 1, ''),
(110, 110, 1, '2021-07-07 08:10:51', 1, ''),
(111, 111, 1, '2021-07-07 08:17:11', 1, ''),
(112, 112, 1, '2021-07-07 08:35:58', 1, ''),
(113, 113, 1, '2021-07-07 08:37:45', 1, ''),
(114, 114, 1, '2021-07-07 08:45:00', 1, ''),
(115, 115, 1, '2021-07-07 09:17:09', 1, ''),
(116, 116, 1, '2021-07-07 09:43:26', 1, ''),
(117, 117, 1, '2021-07-08 11:38:41', 1, ''),
(118, 118, 1, '2021-07-08 12:21:00', 1, ''),
(119, 119, 1, '2021-07-08 12:23:50', 1, ''),
(120, 120, 1, '2021-07-08 01:30:07', 1, ''),
(121, 121, 1, '2021-07-08 01:42:29', 1, ''),
(122, 122, 1, '2021-07-08 01:43:31', 1, ''),
(123, 123, 1, '2021-07-08 01:44:38', 1, ''),
(124, 124, 1, '2021-07-08 01:45:14', 1, ''),
(125, 125, 1, '2021-07-08 01:45:44', 1, ''),
(126, 126, 1, '2021-07-08 01:47:59', 1, ''),
(127, 127, 1, '2021-07-08 01:49:33', 1, ''),
(128, 128, 1, '2021-07-08 01:50:01', 1, ''),
(129, 129, 1, '2021-07-08 01:50:48', 1, ''),
(130, 130, 1, '2021-07-08 01:53:11', 1, ''),
(131, 131, 1, '2021-07-08 02:01:20', 1, ''),
(132, 132, 1, '2021-07-08 02:03:58', 1, ''),
(133, 133, 1, '2021-07-08 02:04:45', 1, ''),
(134, 134, 1, '2021-07-08 02:06:20', 1, ''),
(135, 135, 1, '2021-07-08 02:06:43', 1, ''),
(136, 136, 1, '2021-07-08 02:09:16', 1, ''),
(137, 137, 1, '2021-07-08 02:09:22', 1, ''),
(138, 138, 1, '2021-07-08 02:10:33', 1, ''),
(139, 139, 1, '2021-07-08 02:11:59', 1, ''),
(140, 140, 1, '2021-07-08 02:13:36', 1, ''),
(141, 141, 1, '2021-07-08 02:14:36', 1, ''),
(142, 142, 1, '2021-07-08 02:14:44', 1, ''),
(143, 143, 1, '2021-07-08 02:16:43', 1, ''),
(144, 144, 1, '2021-07-08 02:19:24', 1, ''),
(145, 145, 1, '2021-07-08 02:27:51', 1, ''),
(146, 146, 1, '2021-07-08 02:31:18', 1, ''),
(147, 147, 1, '2021-07-08 02:31:27', 1, ''),
(148, 148, 1, '2021-07-08 02:31:48', 1, ''),
(149, 149, 1, '2021-07-08 02:32:57', 1, ''),
(150, 150, 1, '2021-07-08 02:40:35', 1, ''),
(151, 151, 1, '2021-07-08 02:41:34', 1, ''),
(152, 152, 1, '2021-07-08 02:48:20', 1, ''),
(153, 153, 1, '2021-07-08 03:01:38', 1, ''),
(154, 154, 1, '2021-07-08 03:01:42', 1, ''),
(155, 155, 1, '2021-07-08 03:03:48', 1, ''),
(156, 156, 1, '2021-07-08 03:21:52', 1, ''),
(157, 157, 1, '2021-07-08 03:23:23', 1, ''),
(158, 158, 1, '2021-07-08 03:24:57', 1, ''),
(159, 159, 1, '2021-07-08 03:26:54', 1, ''),
(160, 160, 1, '2021-07-08 03:29:30', 1, ''),
(161, 161, 1, '2021-07-08 03:50:39', 1, ''),
(162, 162, 1, '2021-07-08 03:55:11', 1, ''),
(163, 163, 1, '2021-07-08 03:59:33', 1, ''),
(164, 164, 1, '2021-07-08 04:01:07', 1, ''),
(165, 165, 1, '2021-07-08 04:09:36', 1, ''),
(166, 166, 1, '2021-07-08 04:11:46', 1, ''),
(167, 167, 1, '2021-07-08 04:15:12', 1, ''),
(168, 168, 1, '2021-07-08 04:17:53', 1, ''),
(169, 169, 1, '2021-07-08 04:18:12', 1, ''),
(170, 170, 1, '2021-07-08 04:27:01', 1, ''),
(171, 171, 1, '2021-07-08 04:43:58', 1, ''),
(172, 172, 1, '2021-07-08 04:44:18', 1, ''),
(173, 1, 1, '2021-07-08 04:58:10', 1, ''),
(174, 2, 1, '2021-07-08 04:59:44', 1, ''),
(175, 3, 1, '2021-07-08 05:01:20', 1, ''),
(176, 4, 1, '2021-07-08 05:03:58', 1, ''),
(177, 5, 1, '2021-07-08 05:08:58', 1, ''),
(178, 6, 1, '2021-07-08 05:11:48', 1, ''),
(179, 7, 1, '2021-07-08 05:14:30', 1, ''),
(180, 8, 1, '2021-07-08 05:15:24', 1, ''),
(181, 9, 1, '2021-07-08 05:15:26', 1, ''),
(182, 10, 1, '2021-07-08 05:16:40', 1, ''),
(183, 11, 1, '2021-07-08 05:18:28', 1, ''),
(184, 12, 1, '2021-07-08 05:19:03', 1, ''),
(185, 13, 1, '2021-07-08 05:20:22', 1, ''),
(186, 14, 1, '2021-07-08 05:22:07', 1, ''),
(187, 15, 1, '2021-07-08 05:22:36', 1, ''),
(188, 16, 1, '2021-07-08 05:23:25', 1, ''),
(189, 17, 1, '2021-07-08 05:25:22', 1, ''),
(190, 18, 1, '2021-07-08 05:28:52', 1, ''),
(191, 19, 1, '2021-07-08 05:31:18', 1, ''),
(192, 20, 1, '2021-07-08 05:53:39', 1, ''),
(193, 21, 1, '2021-07-08 05:53:42', 1, ''),
(194, 22, 1, '2021-07-08 05:55:12', 1, ''),
(195, 23, 1, '2021-07-08 05:58:19', 1, ''),
(196, 24, 1, '2021-07-08 05:59:19', 1, ''),
(197, 25, 1, '2021-07-08 06:00:33', 1, ''),
(198, 26, 1, '2021-07-08 06:17:44', 1, ''),
(199, 27, 1, '2021-07-08 06:19:09', 1, ''),
(200, 28, 1, '2021-07-08 06:26:17', 1, ''),
(201, 29, 1, '2021-07-08 06:27:07', 1, ''),
(202, 30, 1, '2021-07-08 06:27:45', 1, ''),
(203, 31, 1, '2021-07-08 06:30:07', 1, ''),
(204, 32, 1, '2021-07-08 06:30:59', 1, ''),
(205, 33, 1, '2021-07-08 06:31:13', 1, ''),
(206, 34, 1, '2021-07-08 06:32:45', 1, ''),
(207, 35, 1, '2021-07-08 06:33:14', 1, ''),
(208, 36, 1, '2021-07-08 06:36:41', 1, ''),
(209, 37, 1, '2021-07-08 06:37:52', 1, ''),
(210, 38, 1, '2021-07-08 06:55:59', 1, ''),
(211, 1, 1, '2021-07-09 03:28:00', 1, ''),
(212, 2, 1, '2021-07-09 03:40:49', 1, ''),
(213, 1, 1, '2021-07-11 11:55:07', 1, ''),
(214, 2, 1, '2021-07-11 11:57:08', 1, ''),
(215, 3, 1, '2021-07-11 11:58:55', 1, ''),
(216, 4, 1, '2021-07-11 12:02:39', 1, ''),
(217, 5, 1, '2021-07-11 12:02:50', 1, ''),
(218, 6, 1, '2021-07-11 12:03:06', 1, ''),
(219, 7, 1, '2021-07-11 12:03:28', 1, ''),
(220, 8, 1, '2021-07-11 12:18:48', 1, ''),
(221, 9, 1, '2021-07-11 12:21:50', 1, ''),
(222, 10, 1, '2021-07-11 12:39:16', 1, ''),
(223, 11, 1, '2021-07-11 02:41:22', 1, ''),
(224, 12, 1, '2021-07-11 03:09:08', 1, ''),
(225, 13, 1, '2021-07-11 04:00:52', 1, ''),
(226, 14, 1, '2021-07-11 04:06:06', 1, ''),
(227, 15, 1, '2021-07-11 04:07:41', 1, ''),
(228, 16, 1, '2021-07-11 04:16:16', 1, ''),
(229, 17, 1, '2021-07-11 04:19:44', 1, ''),
(230, 18, 1, '2021-07-11 04:26:13', 1, ''),
(231, 19, 1, '2021-07-11 04:32:12', 1, ''),
(232, 20, 1, '2021-07-11 04:35:07', 1, ''),
(233, 21, 1, '2021-07-11 04:41:09', 1, ''),
(234, 22, 1, '2021-07-11 04:46:01', 1, ''),
(235, 23, 1, '2021-07-11 04:51:09', 1, ''),
(236, 24, 1, '2021-07-11 05:20:19', 1, ''),
(237, 1, 1, '2021-07-12 11:04:12', 1, ''),
(238, 2, 1, '2021-07-12 11:16:20', 1, ''),
(239, 3, 1, '2021-07-12 02:18:41', 1, ''),
(240, 4, 1, '2021-07-12 02:30:48', 1, ''),
(241, 5, 1, '2021-07-12 02:56:13', 1, ''),
(242, 6, 1, '2021-07-12 02:58:06', 1, ''),
(243, 7, 1, '2021-07-12 03:00:38', 1, ''),
(244, 8, 1, '2021-07-12 03:02:45', 1, ''),
(245, 9, 1, '2021-07-12 03:08:12', 1, ''),
(246, 10, 1, '2021-07-12 03:49:28', 1, ''),
(247, 11, 1, '2021-07-12 03:54:05', 1, ''),
(248, 12, 1, '2021-07-12 06:36:30', 1, ''),
(249, 1, 1, '2021-07-13 12:47:16', 1, ''),
(250, 2, 1, '2021-07-13 01:53:20', 1, ''),
(251, 1, 1, '2021-07-13 04:29:43', 1, ''),
(252, 2, 1, '2021-07-15 03:53:24', 1, ''),
(253, 3, 1, '2021-07-15 03:54:41', 1, ''),
(254, 4, 1, '2021-07-15 03:55:48', 1, ''),
(255, 5, 1, '2021-07-15 03:56:58', 1, ''),
(256, 6, 1, '2021-07-15 03:57:40', 1, ''),
(257, 7, 1, '2021-07-15 03:58:45', 1, ''),
(258, 8, 1, '2021-07-26 01:22:41', 1, ''),
(259, 9, 1, '2021-07-26 01:31:04', 1, ''),
(260, 4, 2, '2021-08-01 05:19:54', 1, NULL),
(261, 3, 2, '2021-08-02 12:22:02', 1, NULL),
(262, 10, 1, '2021-08-10 01:23:51', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'privacy-policy', 1, 1),
(2, 'term-services', 1, 1),
(3, 'refund-policy', 1, 1),
(4, 'main-about', 1, 1),
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 2),
(7, 'refund-policy', 1, 2),
(8, 'about-us', 1, 2),
(9, 'ssssss', 0, 1),
(10, 'how-it-works', 1, 2),
(11, 'Community-Support', 1, 2),
(12, 'faqs', 1, 2),
(13, 'legal', 1, 2),
(14, 'covid-19', 1, 2),
(15, 'contact', 1, 2),
(16, 'winners', 1, 2),
(19, 'charities', 1, 2),
(17, 'charities', 1, 2),
(18, 'z-points', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', NULL, NULL, NULL, 1, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', NULL, NULL, NULL, 1, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', NULL, NULL, NULL, 1, 3),
(10, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n<li>Etiam eleifend ex eu interdum varius.</li>\r\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 1, 4),
(13, 'Privacy Policy', '<section class=\"main-section terms-section privacyPolicySec\">\r\n    <div class=\"container\">\r\n        <div class=\"privPolWrp\">\r\n            <h2>Winztime Privacy Policy</h2>\r\n            <p>This is the Winztime Personal Data Protection/ Privacy Policy which sets forth how Winztime manages, collects, uses and discloses your personal data. This Policy supplements, does not supersede, or replace, or any other consent you may have previously provided to Winztime with respect to your Personal Data.</p>\r\n            <p>Winztime may update the Policy to ensure that it is consistent with any changes in legal or regulatory requirements. When you submit information to us, or sign up as a customer on our website, or view any of the products or services offered by us, you agree and consent to the collection, use, and processing of the personal information, in the manner set forth in this Privacy Policy. Subject to your rights at law, you agree to be bound by the prevailing terms of the Personal Data Protection Policy as updated from time to time on our website.</p>\r\n            <div class=\"termWrap\">\r\n                <h3>Personal Data Policy</h3>\r\n                <p>The Personal Data Policy refers to any information whether recorded in a material form or not, from which the identity of a member gets apparent or can be reasonably and directly ascertained by the entity holding the information, or when put together with other information would directly and certainly identify a member.</p>\r\n                <p>When one creates a Winztime account, any personal information we collect may include your: Name, Email, Gender, Birthday, Mobile Number, and Delivery/Billing Address. When a member places an order, Winztime may collect information relevant to your preferred payment method. Winztime may collect, use, and disclose your Personal Data to certain third-parties identified below, for the following purposes:\r\n                </p>\r\n                <ul>\r\n                    <li>Fulfillment and delivery of products which members have purchased from Winztime and updating them on the status thereof;</li>\r\n                    <li>Processing a member’s orders, including processing thereof for payment;</li>\r\n                    <li>Providing members with relevant product information, responding to their queries and requests, and other customer support functions;</li>\r\n                    <li>Preventing, detecting, and investigating disputes or fraud, and analyzing and managing commercial risks;</li>\r\n                    <li>Analytics and tracking;</li>\r\n                    <li>Conducting market research and surveys to enable us to understand and determine customer preferences and demographics, to develop special offers, and marketing programs in relation to Winztime products and services, and to improve customer experience;</li>\r\n                    <li>Developing and providing members with additional products, services, and benefits, including promotions, loyalty and rewards programs;</li>\r\n                    <li>Purposes which are reasonably related to the aforesaid; and other legal purposes.</li>\r\n                </ul>\r\n            </div>\r\n            <div class=\"termWrap\">\r\n                <h3>Disclosure Of Personal Information</h3>\r\n                <p>We may disclose member’s personal information if we are required by law to do so or if you violate our Terms of Service.</p>\r\n            </div>\r\n            <div class=\"termWrap\">\r\n                <h3>Methods Utilized for Automated Access</h3>\r\n                <p>When members visit Winztime our company servers will automatically record information that their browser sends whenever they visit a website. This data may include:</p>\r\n                <ul>\r\n                    <li>Computer’s IP address</li>\r\n                    <li>Browser type</li>\r\n                    <li>Webpage they were visiting before coming to our site</li>\r\n                    <li>The pages within “Your company name” they visit</li>\r\n                    <li>The time spent on those pages, items and information searched for on our site, access times and dates, and other statistics.</li>\r\n                </ul>\r\n                <p>This information is collected for analysis and evaluation in order to help us improve our site and the services and products we provide. This data will not be used in association with any other Personal Data.</p>\r\n            </div>\r\n            <div class=\"termWrap\">\r\n                <h3>Data Protection</h3>\r\n                <p>To protect members personal information, we take reasonable precautions and follow industry best practices to make sure it is not inappropriately lost, misused, accessed, disclosed, altered or destroyed.</p>\r\n                <p>If you provide us with your credit card information, the information is encrypted using secure socket layer technology (SSL). Although no method of transmission over the Internet or electronic storage is 100% secure, we follow all PCI-DSS requirements and implement additional generally accepted industry standards.</p>\r\n            </div>\r\n            <div class=\"termWrap\">\r\n                <h3>Your Rights</h3>\r\n                <p>If a member intends to exercise their rights to make inquiries, access, update, erase, destroy copies of, or correct their Personal Data, withdraw consent to the collection, use or disclosure of their Personal Data, to obtain and electronically move, copy or transfer their data, or if a member believes that their privacy has been breached. In any manner, they may contact Winztime Company through the Contact Information provided below.</p>\r\n                <ul>\r\n                    <li>To withdraw consent from promotional emails: please click on the Unsubscribe link in the promotional emails.</li>\r\n                    <li>To withdraw consent from receiving promotional material with your order package: please email customer service, with the words \"PERSONAL DATA\" in the subject line, at the address provided below.</li>\r\n                </ul>\r\n                <p>Please be aware that once we receive confirmation that a member wishes to withdraw their consent for marketing or promotional materials/communication, it may take up to thirty (30) days for their withdrawal to be taken in our systems. Therefore, they may still receive marketing or promotional materials/communication during this time period. Please note that even if a member withdraws their consent for the receipt of marketing or promotional materials through a specific mode, Winztime may still contact members for other purposes in relation to the products and services that a member holds or have subscribed to with Winztime.</p>\r\n            </div>\r\n            <div class=\"termWrap\">\r\n                <h3>Contacting Us</h3>\r\n                <p>For any questions related to our Personal Data or about Winztime Privacy Policy, members may write to us at <a href=\"mailto:info@winztime.com\">info@winztime.com</a></p>\r\n            </div>\r\n        </div>\r\n        <div class=\"userAgreWrap\" id=\"userAgremMain\">\r\n            <h2>Winztime User Agreement</h2>\r\n            <p>Below given is the Preamble and General Terms, along with the Privacy Policy, Draw Terms User Agreement constitute the contract between You and Winztime.</p>\r\n            <div class=\"termWrap\">\r\n                <h3>1. Preamble</h3>\r\n                <ul>\r\n                    <li>1.1. Any party using the website and/or participating in a Campaign Draw agrees to be bound by this User Agreement. If one does not agree to the User Agreement, or any of its terms (including any amendments), then they should immediately cease using the website and not enter any Campaign Draw.</li>\r\n                    <li>1.2. This User Agreement is in effect as of 25 May 2021. We may amend it at any point in time without notice. The amendments will take effect once they have been displayed on the website. One must acknowledge and agree that it is their responsibility to review the User Agreement periodically to familiarize themselves with any modifications. A person’s continued use of the platform or any of our products, offerings and services, including Campaign Draws following any amendments shall be construed as acceptance of those amendments.</li>\r\n                </ul>\r\n            </div>\r\n            <div class=\"termWrap\">\r\n                <h3>2. General Terms and Conditions:</h3>\r\n                <h4>2.1. Eligibility For Membership:</h4>\r\n                <ul>\r\n                    <li>2.1.1. It is imperative for Winztime to ensure that our members get to enter into legally binding contracts and that minors do not purchase, use, or have access to unsuitable content. Membership and/or use of the website is not available to people under the age of 18 years. By using the website, one agrees that they are 18 years of age or over. Also, that all information they submit is accurate and truthful when registering any information with the website.</li>\r\n                    <li>2.1.2. Winztime reserves the right and at its sole discretion to refuse, limit, suspend or withdraw access to the website or the membership of any person if Winztime believes that person is under the age of 18 years or that any information given is not accurate or truthful, or for any other reason.</li>\r\n                    <li>2.1.3. The website is not available to persons whose membership has been refused, limited, suspended or withdrawn by Winztime.</li>\r\n                    <li>2.1.4. No person may register as a member on the website more than once.</li>\r\n                </ul>\r\n                <h4>2.2. Registration And Membership Obligations:</h4>\r\n                <ul>\r\n                    <li>2.2.1. In order to access the Services and utilize the website one is required to create an account and register information with Winztime in order to create a membership. One must agree that any information provided to Winztime in pursuant thereto will be complete and accurate. You will not register under the name of, nor attempt to enter the Membership under the name of, another person. You will not adopt a username that Winztime’s sole discretion, deem offensive. Winztime reserves the right to not allow XYZ to register if we believe that a person does not comply with these Terms.</li>\r\n                    <li>2.2.2. The members are responsible to promptly update details of their membership such that they are at all times considered true, accurate, current and complete. If they provide any information that is untrue, inaccurate, not current or incomplete or if Winztime suspects in that the information is untrue, inaccurate, not current or incomplete, or not in accordance with this User Agreement, Winztime has the right to suspend indefinitely, limit or withdraw the Membership and/or access to the website.</li>\r\n                    <li>2.2.3. When registering an account on the website in order to create membership, members are required to provide certain information; register a username and password for use of the website. To keep one\'s account secure they have to protect their account with reasonable means, and are responsible at all times for maintaining the confidentiality of, and restricting access to and use of, their account and password to the website. One must agree to accept responsibility for all activities that occur under their account with Winztime. If someone other than the member uses the website with their login information, they will be held accountable for all actions made in the member’s name. In the event of termination, they will no longer be authorized to access the website or Membership. Winztime reserves the right to use any means possible to enforce this termination. The member must undertake the responsibility to immediately notify Winztime of any unauthorized use of their membership or any other security breach.</li>\r\n                    <li>2.2.4. One may not, at any point in time, use any other person’s Membership. Members must agree to reimburse Winztime in full for any costs, expenses and damages caused by improper, unauthorized or illegal use of their Membership and password by them or any person obtaining access to the website.</li>\r\n                    <li>2.2.5. Members may not transfer or sell their Membership with Winztime to another party and they must undertake that they are solely responsible for all activity of the Membership.</li>\r\n                </ul>\r\n                <h4>2.3. Payment Gateway</h4>\r\n                <ul>\r\n                    <li>2.3.1. If a member makes a payment for Winztime Services on our website, the details they are asked to submit will be provided directly to our payment provider via a secure connection.</li>\r\n                    <li>2.3.2. The cardholder must retain a copy of transaction records and merchant policies and rules.</li>\r\n                    <li>2.3.3. Multiple transactions may result in multiple postings to the cardholder’s monthly statement.</li>\r\n                    <li>2.3.4. The product prices per unit displayed on the Winztime website are inclusive of VAT.</li>\r\n                    <li>2.3.5. Users may be charged in US Dollar (United States Dollar) or any other currency depending on where they are using the website from and what type of Credit Card they are using. In such cases, there may be slight discrepancies in values due to changes in foreign exchange rates.</li>\r\n                </ul>\r\n                <h4>2.4. Refund & Cancellation Policy</h4>\r\n                <ul>\r\n                    <li>2.4.1. All sales are final with no cancellation options.</li>\r\n                    <li>2.4.2. For any defective products, Winztime will offer members a replacement of the defective product only, subject to any warranties and/or guarantees provided by the manufacturer of the product. Winztime does not have any liability or responsibility in relation to any defect regarding a prize awarded as a result of a Campaign Draw.</li>\r\n                    <li>2.4.3. No other form of refund is permissible.</li>\r\n                </ul>\r\n                <h4>2.5. Digital Media</h4>\r\n                <ul>\r\n                    <li>2.5.1. Members must consent to the use of their name in the event they are the Winner of any of the Campaign Draws. This includes but is not limited to use of their name in the local and regional press, on the website and on any social (online) media profile associated with Winztime.</li>\r\n                    <li>2.5.2. Members must consent that Winztime has the right to use any and all digital records made by Winztime including, but not limited to, photographs, videos and call recordings of, the Prize, the Campaign Draw, the winning phone call and the collection of the Prize, on the website and on any social (online) media profile associated with Us. These digital records may include imagery and/or voice recordings of the Winner and/or their name.</li>\r\n                </ul>\r\n                <h4>2.6. Disclaimer for Third Party Applications</h4>\r\n                <ul>\r\n                    <li>2.6.1. The use of any third-party application is subject to any terms and conditions provided with such third-party application and is not governed by Winztime. The use of third-party applications is solely the member’s responsibility since Winztime does not govern the use of such third-party applications. Winztime is not responsible for any third-party applications and acknowledges that such applications may be modified or removed by their original publisher and/or respective rights owner at any time. Members must assume all responsibility and risk of use of any third-party applications (including any content therein) and Winztime hereby disclaims any and all liability to You or any third party related thereto.</li>\r\n                    <li>2.6.2. Winztime does not have any obligation to examine or scan third party applications, for any purpose, and is not responsible for the accuracy, completeness, appropriateness or legality of any third-party applications. The fact that a third-party application is available via any online website or otherwise is not an endorsement, authorization or representation of Winztime’s affiliation with any third party, nor is it an endorsement of such third-party application and You hereby waive, any legal or equitable rights or remedies You have or may have against Winztime with respect thereto. Winztime exercises no control over third party applications, products, services, software or any online website and We are not responsible for their performance, do not endorse them, and are not responsible or liable for any content, advertising, or other materials available through any third-party applications, products, services, software and any online website. We are not responsible or liable, directly or indirectly, for any damage or loss caused to any member by their use of or reliance on any goods or services available through the third-party applications, products, services, software and any online website.</li>\r\n                </ul>\r\n                <h4>2.7. Limitations of Liability</h4>\r\n                <ul>\r\n                    <li>2.7.1. To offer a reliable and enjoyable service Winztime needs to fix bugs, install updates and perform general diagnosis and maintenance. Thus, Winztime cannot guarantee that our website and services will always be uninterrupted, problem-free, free of omission, or error-free. To the extent allowed by law, content and function of the website, and Services, are provided on an \"as is\" basis without warranties of any kind, either expressed or implied.</li>\r\n                    <li>2.7.2. Information obtained on the website may not always be accurate. Winztime uses other providers to provide data on which Winztime bases the information detailed on the website. We try to make sure that the data is correct and up-to-date together with our partners, but there is no guarantee that it will always be.</li>\r\n                    <li>2.7.3. In no event will Winztime nor will any of our data providers be liable for any incidental, indirect, special, punitive, exemplary, or consequential damages, arising out of members use of or inability, including without limitation, loss of revenue or anticipated profits, loss of goodwill, loss of business, loss of data, computer failure or malfunction, or any other damages.</li>\r\n                    <li>2.7.4. WE EXPRESSLY DISCLAIM ALL WARRANTIES AND CONDITIONS OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO THE IMPLIED WARRANTIES AND CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.</li>\r\n                    <li>2.7.5. In conjunction with the limitation of warranties as explained herein, one must humbly understand and agree that any claim against Winztime shall be limited to the amount they paid to us, if any, for use of our website and/or Services.</li>\r\n                </ul>\r\n                <h4>2.8. No Spam Policy</h4>\r\n                <ul>\r\n                    <li>2.8.1. You understand and agree that sending unsolicited email advertisements or other unsolicited communications to Winztime email addresses or through Winztime information systems are expressly prohibited by these Terms. Any unauthorized use of Winztime computer systems is a violation of our User Agreement and certain applicable laws, in particular the UAE Cybercrime legislation. Such violations may subject the sender and his or her agents to civil and criminal penalties. Please note that the UAE Cybercrime legislation carries significant penalties including imprisonment. In case members intend to solicit, or contact our other members by obtaining their email or phone numbers via our website, we may report this behavior to the relevant authorities, who then may decide to prosecute the culprit under the relevant UAE laws.</li>\r\n                </ul>\r\n                <h4>2.9. General Information</h4>\r\n                <ul>\r\n                    <li>2.9.1. The failure of Winztime to exercise or enforce any right or provision of this User Agreement shall not constitute a waiver of such right or provision.</li>\r\n                    <li>2.9.2. If any provision of this User Agreement is found by a court of competent jurisdiction to be invalid (including, without limitation, because such provision is inconsistent with the laws of another jurisdiction) or inapplicable, Winztime and the Member nevertheless agree that the court should endeavor to give effect to our intentions as reflected in this User Agreement. If any provision or provisions of this User Agreement is held to be invalid, illegal or unenforceable, the validity, legality and enforceability of the remaining provisions of this User Agreement shall not in any way be affected or be impaired.</li>\r\n                    <li>2.9.3. One must agree that any cause of action brought by them or arising out of /or related to their use of the service and/or the website must commence within a reasonable time. In any event, within one (1) year after the cause of action accrues.</li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>', NULL, NULL, NULL, 1, 5),
(16, 'Terms & Conditions', '<section class=\"main-section terms-section\">\r\n    <div class=\"container\">\r\n        <h2>Winztime Terms & Conditions</h2>\r\n        <div class=\"termWrap\">\r\n            <h3>Overview</h3>\r\n            <p>This website is operated by Winztime, the terms \"we\", \"us\" and \"our\" refers to Winztime offers on our website, including all information, tools and services available from this site to you. The user, conditions upon acceptance of all terms, conditions, policies and notices are stated here.</p>\r\n            <p>By visiting our site and/ or purchasing something from us, you engage in our \"Service\" and agree to be bound by the following terms and conditions (\"Terms of Service\", \"Terms\"), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\r\n            <p>Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any other services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>General Conditions</h3>\r\n            <p>We reserve the right to refuse service to anyone for any reason at any time.\r\n            You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\r\n            <p>You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without written permission by us.</p>\r\n            <p>The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Modifications Of the Service and Prices</h3>\r\n            <p>Prices for our products are subject to change without notice.</p>\r\n            <p>We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.</p>\r\n            <p>We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Products Or Services (If Applicable)</h3>\r\n            <p>Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.</p>\r\n            <p>We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor\'s display of any color will be accurate.</p>\r\n            <p>We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at any time without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time.</p>\r\n            <p>Any offer for any product or service made on this site is void where prohibited. We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Accuracy Of Billing and Account Information</h3>\r\n            <p>We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. </p>\r\n            <p>In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</p>\r\n            <p>You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.</p>\r\n            <p>For more detail, please review our Returns Policy.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Personal Information</h3>\r\n            <p>Your submission of personal information through the store is governed by our Privacy Policy.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Termination</h3>\r\n            <p>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.</p>\r\n            <p>These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.</p>\r\n            <p>If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Entire Agreement</h3>\r\n            <p>The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.</p>\r\n            <p>These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).</p>\r\n            <p>Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Governing Law</h3>\r\n            <p>These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of the United Arab Emirates.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Changes To Terms of Services</h3>\r\n            <p>You can review the most current version of the Terms of Service at any time at this page. We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.</p>\r\n        </div>\r\n        <div class=\"termWrap\">\r\n            <h3>Contact Information</h3>\r\n            <p>Questions about the Terms of Service should be sent to us at <a href=\"mailto:info@winztime.com\">info@winztime.com</a></p>\r\n        </div>\r\n    </div>\r\n</section>', NULL, NULL, NULL, 1, 6),
(19, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', NULL, NULL, NULL, 1, 7),
(22, 'About Us', '<div class=\"container\">\r\n  <div class=\"row\">\r\n    <h2>About Us</h2>\r\n    <p><b>\"The home of a perfect win.\"</b> This notion was, is, and will remain the reason why we exist. To make everyone feel like a winner, we came up with Winztime.com.</p> \r\n    <p>We are a sports and gym accessories E-commerce store with a twist. The twist is to kick off with an incredible giveaway, astonishing surprises, and exclusive deals that are available 24/7. The best part of these giveaways and deals is to benefit the consumer and people who are less fortunate globally.</p> \r\n    <p>Shop with Winztime, donate our products to charity or refer a friend and increase your chances of winning with us. With us, you get the band for your choice! Don\'t wait anymore. Winning is easy with Winztime, please register today.</p>\r\n    <div class=\"about-video\">\r\n<iframe width=\"100%\" height=\"645px\" src=\"https://www.youtube.com/embed/0oKHxrKP6po\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>\r\n    </div>\r\n  </div>\r\n</div>', 'Winztime UAE | The Home of Perfect Win', NULL, 'Shop with Winztime UAE, donate our products to charity or refer a friend and increase your chances of winning. Get the prize of your choice with us! ', 1, 8),
(35, 'Community Support', '<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>For the most amazing people on Earth,</p>\r\n<br>\r\n<br>\r\n<p>It is only through caring people like you that we can keep our promise support the people who need us the most, whenever and wherever the need us. Your contribution will help to sustain and enlarge the safety net for families and make a real difference in their quality of life. In that spirit, Lucramania has designed a win-for-all experience to further its mission.</p>\r\n<br>\r\n<br>\r\n<p>Your generous contribution allows you to give-away the purchased product, or a percentage of its sale, and in return you will receive an additional free ticket that will increase your chances of winning a highly sought-after prize! Lucramania will ensure that your support arrives in time to make a difference.</p>\r\n<br>\r\n<br>\r\n<p>Thank you, for your support, and for being there for people in-need!</p>\r\n<br>\r\n<br>\r\n<p>Lucramania’s Team</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<figure><img src=\"web/assets/images/sec1Logo.png\" /></figure>\r\n</div>\r\n</div>', NULL, NULL, NULL, 1, 11);
INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `language_id`, `page_id`) VALUES
(37, 'Frequently Asked Questions', '<section class=\"main-section faq-section\">\r\n    <div class=\"container\">\r\n        <h2>Frequently Asked Questions</h2>\r\n        <hr>\r\n        <div class=\"accordions\">\r\n\r\n            <div class=\"row\">\r\n                <div class=\"col-md-6\">\r\n                    <h3>About Us:</h3>\r\n                    <button class=\"accordion\">What Is Winztime?</button>\r\n                    <div class=\"panel\">\r\n                      <p>Winztime is a sports and gym accessories ecommerce store with a twist. Our customers receive a complimentary Prize Draw ticket with every purchase made, that could win you a luxury prize.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">How can I access Winztime.com?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Winztime is available on desktop, smartphone, tablet, and via our website. The site has a very good filter system that allows customers to view products based on Brands, subcategories, and other attributes.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">How To Find Us?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Winztime HQ is based in UAE, Dubai and does service to customers in UAE, GCC countries and globally. Outlet stores are coming soon to the region. Meanwhile, please go to our \'Contact Us page if you have any inquiries.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">I\'m new to Winztime. How does it work?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Our website has a full tutorial. You can use it easily at any time by clicking the link.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">What countries Does Winztime Operate in?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Winztime can be accessed globally. Please see our ‘Draw Terms &amp; Conditions’ for all the details on product/prize collection for international users. Please get in touch with us for details.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">Why buy from Winztime.com?</button>\r\n                  <div class=\"panel\">\r\n                      <p>We provide elite fitness products at a faster pace to market that are not easily available at affordable prices. Our dedicated team with passion for fitness knows what we are selling and what our eager customers are looking for.</p>\r\n                  </div>\r\n                  <h3>Z points:</h3>\r\n                  <button class=\"accordion\">What are Z points?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Our loyal members receive 1 Z point on every 10 AED spent. These points can be collected and then used to make purchases.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">Can I transfer my Z points?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Currently Z points cannot be transferred.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">Can a member purchase Z points?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Our members cannot purchase Z points at the moment.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">How can a member earn more Z points?</button>\r\n                  <div class=\"panel\">\r\n                      <p>One can earn more Z points earned on every purchase by improving their tier status.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">Can we combine Z points with cash to make purchases?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Z points can be combined with cash to complete a purchase. This option is only available when members have insufficient points to make a purchase.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">What is the minimum amount of points a member can withdraw/use?</button>\r\n                  <div class=\"panel\">\r\n                      <p>If a member has 125 points then they can use only 100 points otherwise they can wait and use 200 points in one go.</p>\r\n                  </div>\r\n                  <h3>Account:</h3>\r\n                  <button class=\"accordion\">Why should I register an account with Winztime?</button>\r\n                  <div class=\"panel\">\r\n                      <p>To complete a purchase with Winztime, you must have a registered account. The account is for our customer\'s security and privacy.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">How do I edit my Winztime account?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Click on your photo or name icon located in the main menu to edit your account. Tap the profile section to edit and click “Save Changes” to complete.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">How do I \'Logout\' of my Winztime account?</button>\r\n                  <div class=\"panel\">\r\n                      <p>To \'Logout,\' click on your name/photo in the top right-hand corner and select \'Logout\' from the drop-down menu.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">I can\'t remember my Winztime account password!</button>\r\n                  <div class=\"panel\">\r\n                      <p>At \'Login,\' select \'Forgot Password\' and follow the instructions on the screen for a password reset.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">Is there post purchase support?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Yes, if you need help in understanding how to use the product. Please get in touch and we will advise you.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">What Credit Cards does Winztime accept?</button>\r\n                  <div class=\"panel\">\r\n                      <p>We accept all major cards, including MasterCard, Visa, and Amex.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">Why am I receiving \'push notifications’/emails from Winztime?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Winztime does not like spamming or bombarding its users with irrelevant push notifications/emails. Any notices sent by us have been deemed relevant to your user experience.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">How do I set up my Winztime account?</button>\r\n                  <div class=\"panel\">\r\n                      <p>To create an account, click ‘Login/Register’ in the top right-hand corner of your screen and enter your details in the fields highlighted.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">In my Winztime account, to complete a purchase, can I use someone else\'s credit card?</button>\r\n                  <div class=\"panel\">\r\n                      <p>Based on your consent, you can use/save any credit card to complete your purchase.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">Will I receive \'push notifications\' if I \'Log Out\'?</button>\r\n                  <div class=\"panel\">\r\n                      <p>You will receive general notifications when logged out. To receive account-related information, you must \'Login.\'</p>\r\n                  </div>\r\n                  <button class=\"accordion\">My account\'s password needs to get changed.</button>\r\n                  <div class=\"panel\">\r\n                      <p>To change your password, click on your photo/name in the top right-hand corner and select \'My Account. From this tab, select the \'Account\' tab to change your password.</p>\r\n                  </div>\r\n                  <button class=\"accordion\">How do I close my Winztime account?</button>\r\n                  <div class=\"panel\">\r\n                      <p>To close your account, you need to notify us in writing (from your registered email account) at: <a href=\"mailto:info@winztime.com\">info@winztime.com</a>.</p>\r\n                      <p>Hereafter, a member of our support team will assist you within 48 hours.</p>\r\n                  </div>\r\n              </div>\r\n              <div class=\"col-md-6\">\r\n                <h3>Questions Regarding Purchases:</h3>\r\n                <button class=\"accordion\">Are there any unseen charges I should know of?</button>\r\n                <div class=\"panel\">\r\n                  <p>There are no hidden charges on any Winztime purchase. However, we recommend checking with your bank to see if they apply any transaction/processing fees.</p>\r\n              </div>\r\n              <button class=\"accordion\">Will I be charged VAT?</button>\r\n              <div class=\"panel\">\r\n                  <p>Yes! From January 1st, 2018, all purchases will incur 5% VAT.</p>\r\n              </div>\r\n              <button class=\"accordion\">What currencies can I use to purchase a Winztime product?</button>\r\n              <div class=\"panel\">\r\n                  <p>Winztime currently only accepts Dirhams and US Dollars. You can purchase Winztime products via any bank account with any currency. However, Winztime won\'t take responsibility for final billings affected by exchange rates or fees imposed by your branch.</p>\r\n              </div>\r\n              <button class=\"accordion\">Can I pay in installments?</button>\r\n              <div class=\"panel\">\r\n                  <p>We will be adding this attribute very soon. Please stay tuned for further updates.</p>\r\n              </div>\r\n              <button class=\"accordion\">Can I cancel/refund a Winztime purchase order?</button>\r\n              <div class=\"panel\">\r\n                  <p>As per the \'User Agreement,\' all sales purchases are final, and no refunds are given under any circumstances.</p>\r\n              </div>\r\n              <h3>Winztime Products:</h3>\r\n              <button class=\"accordion\">Where can I collect my Winztime products?</button>\r\n              <div class=\"panel\">\r\n                  <p>All Winztime products can be collected by you directly from Winztime HQ. Please read the \'User Agreement\' before making/managing your purchase.</p>\r\n              </div>\r\n              <button class=\"accordion\">Can I send somebody else to collect my Winztime products?</button>\r\n              <div class=\"panel\">\r\n                  <p>Only the registered holder of the account, or (and at our discretion), an individual with \'Power of Attorney (POA) can collect the registered account holders\' purchase from Winztime. Passport or Emirates ID are the only acceptable forms of identification (please ensure your title is up to date).</p>\r\n              </div>\r\n              <h3>Refer a Friend:</h3>\r\n              <button class=\"accordion\">What is the refer a friend program?</button>\r\n              <div class=\"panel\">\r\n                <p>The refer a friend program is made to reward. Every time you refer a friend to Winztime using the invitation code generated, you will be rewarded with a complimentary Draw Voucher once they make their first transaction.</p>\r\n            </div>\r\n            <button class=\"accordion\">A friend referred me. Will the referral program reward me?</button>\r\n              <div class=\"panel\">\r\n                <p>Winztime Yes, once you have successfully registered with Winztime, one Draw Voucher will be added to your account.</p>\r\n            </div>\r\n            <h3>Prizes:</h3>\r\n              <button class=\"accordion\">Where can I collect my Winztime Prize?</button>\r\n              <div class=\"panel\">\r\n                <p>Details regarding prize collection will be sent to the Winner through email. For more information, please refer to the \'Draw Terms &amp; Conditions.</p>\r\n            </div>\r\n            <button class=\"accordion\">What if I do not want people to know I have won the Winztime prize draw?</button>\r\n              <div class=\"panel\">\r\n                <p>As per the \'Draw Terms &amp; Conditions\', Winztime has the right to use your image, name, or any statements made across all our marketing channels.</p>\r\n            </div>\r\n            <button class=\"accordion\">How do we get notified about the status of the Campaign: \'Coming Soon\'/\'Launched\'/\'Ending\'/\'Closed\'.?</button>\r\n              <div class=\"panel\">\r\n                <p>Winztime sends \'Push Notifications’/emails to notify all ticket holders regarding the status of each Campaign.</p>\r\n            </div>\r\n            <button class=\"accordion\">Can I send somebody else to collect my Prize?</button>\r\n              <div class=\"panel\">\r\n                <p>Only the registered account holder or any individual with \'Power of Attorney\' can collect the registered account holders\' Winztime Prize. Emirate’s passports or ID are the only acceptable forms of identification. Please ensure your title is up to date.</p>\r\n            </div>\r\n            <button class=\"accordion\">Can I view past winners of the Winztime Campaign draws?</button>\r\n              <div class=\"panel\">\r\n                <p>You can view past winners of Winztime campaigns via our social media channels, as well as our up-and-coming \'News\' segment.</p>\r\n            </div>\r\n            <h3>Security FAQ:</h3>\r\n            <button class=\"accordion\">Are my details secure with Winztime?</button>\r\n              <div class=\"panel\">\r\n                <p>Winztime does not store or save any sensitive and Credit Card information on its servers. Credit Card details registered with us are stored securely through the \'Checkout\' secure online payment gateway. For further information, please reach us out.</p>\r\n            </div>\r\n            <button class=\"accordion\">Will I be spammed by Winztime?</button>\r\n              <div class=\"panel\">\r\n                <p>No! We do not enjoy spamming our valuable customers. </p>\r\n            </div>\r\n             <h3>Other Inquiries:</h3>\r\n            <button class=\"accordion\">Careers</button>\r\n              <div class=\"panel\">\r\n                <p>Click \'Help Centre\' in the Main Menu of the Website and select \'Inquiries\' from the list for job vacancy related inquiries. We keep updating our website to keep you informed about any updates. </p>\r\n            </div>\r\n            <button class=\"accordion\">Need to ask us something?</button>\r\n              <div class=\"panel\">\r\n                <p>If you have any inquiries regarding any characteristic of your Winztime experience, please head onto the Main Menu and select \'Help Centre\' from the list. From there, you can choose to contact us via phone/email with any questions you may have.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, NULL, 1, 12),
(23, 'cccd', '<p>ccddcdc</p>', NULL, NULL, NULL, 1, 9);
INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `language_id`, `page_id`) VALUES
(39, 'Terms & Conditions', '<section class=\"main-section\">\r\n    <div class=\"container\">\r\n<section class=\"terms-section\">\r\n\r\n\r\n\r\n    <p class=\"wow fadeIn\">These campaign draw terms and conditions (“Draw Terms”) govern the terms and conditions applicable to Lucramania Fitness Equipments (“Lucramania”, “We”, “Us”, “Our”) campaign draws (“Campaign Draws”) that relate to Our website (“Site”) and Our mobile app (“App”) (together the “Platform”).</p>\r\n\r\n    <p class=\"wow fadeIn\">Any party using the Platform and/or participating in a Campaign Draw (“User”, “You”, “Your”) agrees to be bound by these Draw Terms, as well as the user agreement published on the Site (“User Agreement”). If You do not agree to these Draw Terms, or any of its terms (including any amendments), then You should immediately cease using the Platform, and not enter any Campaign Draw.</p>\r\n\r\n    <p class=\"wow fadeIn\">These Draw Terms are effective as of 01 December 2020. We may amend these Draw Terms at any point in time without notice and the amendments will take effect once they have been displayed on the Platform. You acknowledge and agree that it is Your responsibility to review these Draw Terms periodically to familiarize Yourself with any modifications. Your continued use of the Platform and/or entry into Campaign Draws following any amendments shall be construed as acceptance of those amendments.</p>\r\n\r\n    <div class=\"termWrap\">\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">1.   Cam\r\n            paign Draws will be approved by Dubai Economy Department (“DED”) and are in accordance with the Commercial Permit Guidebook (as such may be amended from time to time). A valid permit number will be issued for each respective campaign. Where Campaigns are being run from any other jurisdiction We operate from, Lucramania will obtain the necessary regulatory requirements and permits as stipulated by the law in such jurisdiction.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.   Only Users with a valid membership to the Platform (“PlatformMembers”) that satisfies all the terms of the User Agreement are eligible to enter into our Campaign Draws.</li>\r\n\r\n            <li class=\"wow fadeIn\">3.   Each product purchased from a campaign by a Platform Member is awarded a single complimentary ticket per product to a specified Campaign Draw.</li>\r\n\r\n            <li class=\"wow fadeIn\">4.   A Platform Member will have the option to either receive the purchased product or have such contributed to a charity of Our choice. If a Platform Member opts tocontribute their purchased product to charity, Lucramania will double their ticket entry into the specified Campaign Draws.</li>\r\n\r\n            <li class=\"wow fadeIn\">5.   Complimentary ticket numbers are computer generated and sequential to the order in which the products they are associated with are purchased. Platform Members cannot choose ticket numbers as they are generated only upon checkout and completion of purchase of the associated products.</li>\r\n\r\n            <li class=\"wow fadeIn\">6.   Product and the Complimentary tickets awarded to Platform Members are neither refundable nor transferable and are owned solely and exclusively by the Platform Member who they have been awarded to.</li>\r\n\r\n            <li class=\"wow fadeIn\">7.   Campaign Raffle Draws will occur within seven (7) business days after the completion of any campaign. Campaign Draws shall occur in the presence of a regulatory representative, unless the regulator approves otherwise, and as such are not subject to negotiation, interference, challenge, or argument by a Platform Member. The draw date will be subject to the representative’s availability.</li>\r\n\r\n            <li class=\"wow fadeIn\">8.   Lucramania has the right to close a Campaign Draw at any time. In the event that a campaign is oversubscribed for any reason, we will forthwith reimburse to the oversubscribed Platform Members the payment they have made for the associated produced based on the sequential ticket numbers representing the oversubscribed number of tickets.</li>\r\n\r\n            <li class=\"wow fadeIn\">9.   Winners of Campaign Draws (“Winners”) are selected by the regulatory representative and will be notified on the day the draw occurs. The names of Winners may also be announced in the local and regional press as well as on the Platform and our associated social (online) media profiles, unless You specifically advise us otherwise in writing.</li>\r\n\r\n            <li class=\"wow fadeIn\">10.  All Platform Members consent to the use of their name in the event they are the Winner of any of the Campaign Draws. This includes but is not limited to use of their name in the local and regional press, on the Platform and on any social (online) media profile associated with Us.</li>\r\n\r\n            <li class=\"wow fadeIn\">11.  Post notifying the Winner of their win on the day of the draw, an email will be sent to the registered email on the Platform detailing the next steps and how the Winner can claim the prize (“Prize”).</li>\r\n\r\n            <li class=\"wow fadeIn\">12.  All Platform Members consent that We have the right to use any and all digital records made by Us including, but not limited to, photographs, videos and call recordings of, the Prize, the Campaign Draw, the winning phone call and the collection of the Prize, on the Platform and on any social (online) media profile associated with Us. These digital records may include imagery and/or voice recordings of the Winner and/or their name.</li>\r\n\r\n            <li class=\"wow fadeIn\">13.  In the event the Winner is based in the United Arab Emirates, then he/she needs to collect the Prize fromwithin 60 calendar days and present valid identification as may be required in Our sole discretion. Lucramania may, at its sole discretion, allow an individual who has been given Power of Attorney (POA) by the account holder to collect the Prize having presented the necessary identification, Lucramania will evaluate such instances on a case by case basis and cannot guarantee that an individual with POA will be allowed to collect the Prize on behalf of the account holder. Failure to collect the Prize within this time period WILL result in Us transferring the Prize to the regulator where-after Lucramania will have no further responsibility with respect to the Prize. Post transfer, the Winner must liaise with the regulator whereupon he/she will be subject to the regulator’s own terms and conditions.</li>\r\n\r\n            <li class=\"wow fadeIn\">14.  In the event a Winner does not reside in the United Arab Emirates, We will either courier the Prize to the Winner by air or land in the case of smaller items (for a charge), or ship the Prize to the Winner’s country of residence (nearest seaport as selected by Us in Our sole discretion, for a charge), and We will insure shipment of the Prize (for a charge) until delivery thereof at the port. Collection from the port and clearance through the port and customs shall be the responsibility, and at the cost, of the Winner. Accordingly, all local taxes, custom duties, and any other form of expense beyond shipping and delivery at the port will be paid by the Winner.</li>\r\n\r\n            <li class=\"wow fadeIn\">15.  Once a Prize is handed to/collected by the courier/handler for international delivery, risk and responsibility will transfer to the Winner and We no longer hold claim nor responsibility for any damage/injury incurred in transit, or upon delivery.</li>\r\n\r\n            <li class=\"wow fadeIn\">16.  All Prizes represented on our Platform, will be awarded as displayed. Minor changes, including but not limited to color, may occur, however, no major changes, including but not limited to, specification, brand or value, will occur.</li>\r\n\r\n            <li class=\"wow fadeIn\">17.  Lucramania is not responsible for any bank charges, including but not limited to processing fees from Your local bank.</li>\r\n\r\n            <li class=\"wow fadeIn\">18.  By entering the Campaign Draw, Winners confirm their agreement to take part in any associated publicity.</li>\r\n\r\n            <li class=\"wow fadeIn\">19.  If any Winner is subsequently found ineligible to participate in the Campaign Draw, we may at Our sole discretion forfeit or reclaim the Prize or dispose of the same in such manner and to such person as We deem fit. All such decisions will be in line with DED regulations as well as UAE law.</li>\r\n\r\n            <li class=\"wow fadeIn\">20.  Winners are responsible for any and all tax liability where applicable.</li>\r\n\r\n            <li class=\"wow fadeIn\">21.  We will not be responsible for arranging insurance, including travel insurance, medical insurance, transport expenses, meal expenses, or any expenses of a personal nature, in the collection of the Prize unless otherwise stated.</li>\r\n\r\n            <li class=\"wow fadeIn\">22.  We will not be responsible for the inability of any Winner to utilize the Prize, for any reason whatsoever, including but not limited to non-issuance of a visa.</li>\r\n\r\n            <li class=\"wow fadeIn\">23.  We will not be responsible for claims, damages, or expenses of any nature whatsoever for any loss, illness, bodily injury, including death, of or to any Winner and/or any third party during and/or in course of usage of any Prize or due to any defects in any Prize.</li>\r\n\r\n        </ul>\r\n\r\n    </div>\r\n\r\n</section> \r\n\r\n<section class=\"terms-section privacy-section\">\r\n\r\n    <h2 class=\"wow fadeIn\">Privacy Policy</h2>\r\n\r\n    <div class=\"termWrap privacyWrap\">\r\n\r\n        <h4 class=\"wow fadeIn\">1. Your Information</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">1.1. The type of information we collect from you is either personal to you, or is general in nature:</li>\r\n\r\n            <li class=\"wow fadeIn\">1.2. Personal Information: When you register on the Platform as a member, update your information, purchase any goods or services, take part in promotions or send emails to Us, you provide Us with information that We store and process. Such information may include your name, address, phone number, email address, purchase and transaction history, interests, and other such \'Personal Information\'.</li>\r\n\r\n            <li class=\"wow fadeIn\">1.3. General Information: We also receive more general information from you as a result of your visits to, and use of, the Platform. This general information does not identify you personally, and can include information such as your IP address, the date and time you access the Platform, length of time you spend on the Platform, your browsing history (recorded by the text and graphics files that compose that page), the Internet address of the website from which you linked directly to our Platform, and other such \'General Information\'.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.   Collecting and Using Information</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.1. All credit/debit cards details and personally identifiable information will NOT be stored, sold, shared, rented or leased to any third parties.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.2. Most of the Platform can be used without giving Us any information. However, certain services may involve collection of information from you. We use this information to provide you with a better service, and in particular to: keep internal records; improve our products, services and the Platform; communicate with you if you have ordered, purchased or participated in anything on the Platform; contact you for market research purposes; and provide you with information about new opportunities, promotions, special offers and other information that We may feel is relevant to you. If you contact Us via the Platform, or via email to the contacts set out on the Platform, we may keep a record of that correspondence.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.3. We use General Information to help Us make the Platform more useful to visitors (including to help Us assess content of interest to visitors), and for other purposes such as determining the Platform’s technical design specifications and identifying system performance or problem areas, for tracking activity on the Platform, preparing reports, assessing trends, and otherwise monitoring the way in which the Platform is being used none of which would be in a way that personally identifies any users.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4. Some of the advertisements you see on the Platform are selected and delivered by third parties, such as ad networks, advertising agencies, advertisers, and audience segment providers. These third parties may collect information about you and your online activities, either on the Platform or on other websites, through cookies, web beacons, and other technologies in an effort to understand your interests and deliver to your advertisements that are tailored to your interests. Please remember that We do not have access to, or control over, the information these third parties may collect. The information practices of these third parties are not covered by this privacy policy.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">3.   Non-Disclosure of Personal Information</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">3.1. You agree that We may share your Personal Information within Our company. We will not share, sell or rent your Personal Information in any manner to any third parties outside Our company except when we have your permission; or if required to do so by law or any governing authority; or to protect our own legitimate interests.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">4.   Security</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">4.1. Keeping your Personal Information secure and preventing unauthorized access is of utmost priority to Us, and We take all steps reasonably necessary to protect your Personal Information against any unauthorized access, use, alteration, disclosure or destruction. Whilst We have put in place physical, electronic and managerial procedures to secure and safeguard your Personal Information, We will not be held responsible for any unauthorized access by third parties and We cannot guarantee that the Personal Information provided by you or that is transmitted via the Platform or by e-mail is totally secure and safe.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">5.   Use of Cookies</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">5.1. Like many websites, the Platform uses cookies, which are files that store information on your hard drive. Cookies allow the Platform to identify account holders, track new users, record session information, and generally to optimize your experience. Most browsers accept cookies automatically but if you choose you can disable the cookies from your browser. For online advertising campaigns, cookies are automatically deleted after one (1) month.</li>\r\n\r\n            <li class=\"wow fadeIn\">5.2. We recommend that you leave cookies “turned on” so that you can enjoy a better experience on the Platform. You may occasionally get cookies from companies advertising on Our behalf or on behalf of Our subsidiaries. We do not control these cookies, and these cookies are not subject to this Privacy Policy.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">6.   Use of Google Analytics and Google Tracking Pixels</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">6.1. This Website uses Google Analytics, a web analytics service of Google Inc. (“Google”). Google Analytics uses cookies and/or text files to analyze website traffic. Information generated by cookies with your details (including your IP address) is transferred to a Google server in the United States of America. Google processes this information to evaluate your use of the Platform, compile reports about the Platform’s activity on Our behalf, and deliver other related services regarding website and Internet use. Google may also share this information with third parties insofar as this is necessary or if these third parties process the information on behalf of Google. Under no circumstances will Google use your IP address in connection with other data supplied by Google.</li>\r\n\r\n            <li class=\"wow fadeIn\">6.2. You may disable the cookies from your browser by adjusting your browser settings. However, in this scenario, you may not be able to make full use of all the functions available on the Platform. By using the Platform, you agree to Google’s processing of the type of information discussed in this section in the manner contemplated in this Policy. Us, and our respective suppliers, and any of our shareholders, subsidiaries, parent companies, and any of Our and their officers, directors, managers, members, agents, and employees, are not liable for any direct, indirect, punitive, incidental, special, or consequential damages or loss (including, without limitation, incidental and consequential damages, lost profits, or damages resulting from lost data or business interruption) arising out of, or in way connected with, the use of the type of information discussed in this section.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">7.   Tracking Pixels</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">7.1. Facebook and Google tracking pixels are used on the Platform. This means that third parties may use cookies, web beacons, and similar technologies to collect or receive information from the Platform and elsewhere on the internet and use that information to provide measurement services and targeted adverts. If you wish to opt out of the use of these tracking pixels please adjust your browser settings.</li>\r\n\r\n        </ul>\r\n\r\n    </div>\r\n\r\n</section>\r\n\r\n<section class=\"terms-section privacy-section\">\r\n\r\n    <h2 class=\"wow fadeIn\">Delivery Policy</h2>\r\n\r\n    <div class=\"termWrap privacyWrap\">\r\n\r\n        <ul>\r\n\r\n            <li>1.  Delivery Costs: The costs of delivery will be as displayed to you on our Site.</li>\r\n\r\n            <li>2.  Delivery Date: This information will be displayed to you on our Site.</li>\r\n\r\n            <li>3.  Delivery Delays:<ul>\r\n\r\n                <li>a.  If our supply of the product is delayed by an event outside of our control, then we will contact you as soon as possible to let you know and we will take steps to minimise the effect of the delay.</li>\r\n\r\n                <li>b.  If no one is available at your address to take delivery and the products cannot be posted through your letterbox, we will notify you of how to rearrange delivery or collect the product.</li>\r\n\r\n                <li>c.  If you do not collect the product from us as arranged or if, after a failed delivery to you, you do not re-arrange delivery or collect them from a delivery depot, we will contact you for further instructions. If, despite our reasonable efforts, we are unable to contact you or re-arrange delivery or collection, we will cancel your order.</li>\r\n\r\n            </ul></li>\r\n\r\n\r\n            <li>4.  ID Requirement Upon Delivery: We may, at our sole discretion, make any inquiry we deem necessary to verify your identity and/or ownership of your financial instruments by requesting that you provide us with further information or documentation, including, but not limited to requesting a form of identification and/or credit card. If we are unable to verify or authenticate any information you provide, we have the right to refuse delivery and cancel the order.</li>\r\n\r\n            <li>5.  Delivery from Overseas: Note that you might be considered the importer of record in the event that your order requires delivery from overseas. In such instance, you are required to ensure that your ordered products can be lawfully imported, comply with all laws and regulations and to pay all fees and customs duties relevant to your purchase.</li>\r\n\r\n            <li>6.  Title to Products: A product will be considered owned by you and your responsibility from the time we deliver the product to the delivery address and you have paid for the product.</li>\r\n\r\n            <li>7.  Invoice: We will issue an electronic invoice for your purchase and send such invoice to the email address you provided to us.</li>\r\n\r\n        </ul>\r\n\r\n    </div>\r\n\r\n</section>\r\n\r\n<section class=\"terms-section privacy-section\" id=\"agreement\">\r\n\r\n    <h2 class=\"wow fadeIn\">User Agreement</h2>\r\n\r\n    <div class=\"termWrap privacyWrap\">\r\n\r\n        <p>\r\n\r\n            The below preamble and general terms and conditions (“General Terms”), along with the privacy policy (“Privacy Policy”), and draw terms and conditions (“Draw Terms”) (together the “User Agreement”) constitute the contract between You and Lucramania Fitness Equipments (“Lucramania”, “We”, “Us”, “Our”) relating to the use of Our website (“Site”) and Our mobile app (“App”) (together the “Platform”) and Your participation in Our campaign draws (“Campaign Draws”).\r\n\r\n        </p>\r\n\r\n        <h4 class=\"wow fadeIn\">1.   Preamble</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">1.1. Any party using the Platform and/or participating in a Campaign Draw (“User”, “You”, “Your”), agrees to be bound by this User Agreement. If You do not agree to this User Agreement, or any of its terms (including any amendments), then You should immediately cease using the Platform and not enter any Campaign Draw.</li>\r\n\r\n            <li class=\"wow fadeIn\"> 1.2. This User Agreement is in effect as of 01 December 2020. We may amend this User Agreement at any point in time without notice and the amendments will take effect once they have been displayed on the Platform. You acknowledge and agree that it is Your responsibility to review this User Agreement periodically to familiarize Yourself with any modifications. Your continued use of the Platform or any of Our products, offerings and services, including, but not limited to, Campaign Draws (“Services”) following any amendments shall be construed as acceptance of those amendments.</li>\r\n\r\n        </ul>\r\n\r\n        <h3 class=\"wow fadeIn\">2. General Terms and Conditions</h3>\r\n\r\n        <h4 class=\"wow fadeIn\">2.1. Eligibility for Membership </h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.1.1. It is imperative for Lucramania to ensure that its members are able to enter into legally binding contracts and that minors do not purchase, use, or have access to unsuitable content. Membership and/or use of the Platform is not available to persons under the age of 18 years old. By using the Platform, you represent and warrant that You are 18 years of age or over and that all information You submit is accurate and truthful when registering any information with the Platform or providing any information to Us.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.1.2. Lucramania reserves the right and at its sole discretion to refuse, limit, suspend or withdraw access to the Platform or the membership of any person if Lucramania believes that person is under the age of 18 years or that any information given is not accurate or truthful, or for any other reason.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.1.3. The Platform is not available to persons whose membership has been refused, limited, suspended or withdrawn by Lucramania.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.1.4. No person may register as a member on the Platform more than once.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.2. Registration and Membership Obligations </h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.2.1. In order to access the Services and utilize the Platform You will be required to create an account and register information with Us in order to create a membership (“Membership”). You agree that any information provided to Us in pursuant thereto will be complete and accurate, that You will not register under the name of, nor attempt to enter the Membership under the name of, another person, and that You will not adopt a username that We in Our sole discretion, deem offensive. We reserve the right to not allow You to register if We believe that You will not comply with these Terms.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.2.2. You are responsible to promptly update details of Your Membership such that they are at all times considered true, accurate, current and complete. If You provide any information that is untrue, inaccurate, not current or incomplete or if Lucramania suspects in Our sole discretion that such information is untrue, inaccurate, not current or incomplete, or not in accordance with this User Agreement, We have the right to suspend indefinitely, limit or withdraw Your Membership and/or Your access to the Platform.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.2.3. When registering Your account on the Platform in order to create Your Membership, you will be required to provide certain information and register a username and password for use of the Platform. To keep Your account secure You have to protect Your account with reasonable means, and You are responsible at all times for maintaining the confidentiality of, and restricting access to and use of, Your account and password to the Platform. You agree to accept responsibility for all activities that occur under Your account with Us. If someone other than Yourself uses the Platform with Your login information You will be held accountable for all actions made in Your name. In the event of termination, you will no longer be authorized to access the Platform or Your Membership, and We reserve the right to use any means possible to enforce this termination. You undertake to immediately notify Lucramania of any unauthorized use of Your Membership or any other security breach.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.2.4. You may not, at any point in time, use any other person’s Membership. You agree to reimburse Lucramania in full for any costs, expenses and damages caused by improper, unauthorized or illegal use of Your Membership and password by You or any person obtaining access to the Platform.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.2.5. You may not transfer or sell Your Membership with Lucramania to another party and You undertake that You are solely responsible for all activity of the Membership.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.3. Electronic Communication</h4>\r\n\r\n        <ul><li class=\"wow fadeIn\">2.3.1. In order to access the Services and utilize the Platform You will be required to create an account and submit personal information with Us in order to create a membership (“Membership”). You agree that any information provided to Us in these areas will be complete and accurate, that You will not register under the name of, nor attempt to enter the Membership under the name of, another person, and that You will not adopt a username that We in Our sole discretion, deem offensive. We reserve the right to not allow You to register if We believe that You will not comply with these Terms.</li></ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.4. Conduct</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.1. You may not access or use the Platform or the Services provided via the Platform for any purpose other than the purpose for which we make it available to You. We may prohibit certain activities in connection with the Platform and Services in our discretion. These prohibited activities include, without limitation, the following:</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.2. Criminal, delictual or tortious activity, including fraud, trafficking in obscene material, drug dealing, gambling, harassment, stalking, spamming, copyright infringement, patent infringement, or theft of trade secrets.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.3. Advertising to, or solicitation of, any User to buy or sell any products or services, except with the express written approval of Lucramania.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.4. Transmitting chain letters or junk email to other Users.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.5.Using any information obtained from the service in order to contact, advertise to, solicit or sell any products or services to any User without their prior explicit consent.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.6. Engaging in any automated use of the Service, such as using scripts to send comments or messages.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.7. Interfering with, disrupting or creating an undue burden on the service or the networks or services connected to the Service.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.8. Attempting to impersonate another User or person.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.9. Using the username or account of another User.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.10. Using any information obtained from the Service in order to harass, abuse or harm another person.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.11. Accepting payment of anything of value from a third person in exchange for Your performance of any commercial activity on or through the Service on behalf of that person.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.12. Using the Service in a manner inconsistent with any and all applicable laws and regulations.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.13. Activities which are harmful, abusive, unlawful, threatening, harassing, blasphemous, immoral, defamatory, obscene, pornographic, pedophilic, libelous, invasive of another\'s privacy or other rights, hateful, or racially, ethnically objectionable, disparaging, relating or encouraging money laundering or illegal gambling or harms or could harm minors in any way or otherwise unlawful in any manner whatsoever.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.14. Any activity which harasses, degrades, intimidates or is hateful towards any individual or group of individuals on the basis of religion, gender, sexual orientation, race, ethnicity, age, or disability.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.15. Any activity which violates any applicable equal employment laws, including but not limited to those prohibiting the stating, in any advertisement for employment, a preference or requirement based on race, color, religion, sex, national origin, age, or disability of the applicant.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.16. Any activity which includes personal or identifying information about another person without that person\'s explicit consent.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.17. Any activity which impersonates any person or entity, including, but not limited to, a Lucramania employee, or falsely states or otherwise misrepresents an affiliation with a person or entity.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.18. Any activity which deceives or misleads the addressee about the origin of such messages or communicates any information which is grossly offensive or menacing in nature.</li>\r\n\r\n            <li class=\"wow fadeIn\"><span>Additionally, you agree not to:</span></li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.19. Contact anyone who has asked not to be contacted, or make unsolicited contact with anyone for any commercial purpose;</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.20. Use automated means, including spiders, robots, crawlers, data mining tools, or the like to download or scrape data from the Service, except for internet search engines (e.g. Google) and non-commercial public archives (e.g. archive.org) that comply with our robots.txt file; and,</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.1.21. Attempt to gain unauthorized access to computer systems owned or controlled by Lucramania or engage in any activity that disrupts, diminishes the quality of, interferes with the performance of, or impairs the functionality of, the Platform.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.2. Any content uploaded by You shall be subject to applicable laws and may be disabled, or may be subject to investigation under applicable laws. Furthermore, if You are found to be in non-compliance with such laws and regulations, we may terminate Your account/block Your access to the Platform, or any part thereof, and we reserve the right to remove any non-compliant content uploaded by You.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.4.3. You are solely responsible for the consequences, losses or damages we may incur, directly or indirectly, or suffer due to any activities conducted by You.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.5. Payment Gateway</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.5.1. If You make a payment for Our Services on our Platform, the details You are asked to submit will be provided directly to our payment provider via a secured connection.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.5.2. The cardholder must retain a copy of transaction records and merchant policies and rules.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.5.3. Multiple transactions may result in multiple postings to the cardholder’s monthly statement.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.5.4. The product prices per unit displayed on Our Platform are inclusive of VAT.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.5.5. Users may be charged in US Dollar (United States Dollar) or any other currency depending on where they are using the platform from and what type of Credit Card they are using. In such cases, there may be slight discrepancies in values due to changes in foreign exchange rates.</li>   \r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.6. Refund & Cancellation Policy</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.6.1. All sales are final with no cancellation options.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.6.2. For any defective products, Lucramania will offer You replacement of the defective product only, subject to any warranties and/or guarantees provided by the manufacturer of the product. Lucramania shall have no liability or responsibility in relation to any defect regarding a prize awarded as a result of a Campaign Draw.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.6.3. No other form of refund is permissible.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.7. Intellectual Property Rights</h4>\r\n\r\n        <ul><li class=\"wow fadeIn\">2.7.1. The Platform and the materials on the Platform, including without limitation, the text, software, scripts, graphics, photos, sounds, music, videos, interactive features and the like (\"Materials\") and the trademarks, service marks and logos contained therein (\"Marks\"), are owned by or licensed to Lucramania, and are subject to copyright and other intellectual property rights under UAE and foreign laws and international conventions. In connection with the Services, the Platform may display certain intellectual property goods belonging to third parties. Use of these goods may be subject to license granted by third parties to Lucramania. You shall, in no event, reverse engineer, decompile, or disassemble such goods and nothing herein shall be construed to grant You any right in relation to such goods. Materials on the Platform are provided to You AS IS for Your information and personal use only and may not be used, copied, reproduced, distributed, transmitted, broadcast, displayed, sold, licensed, or otherwise exploited for any other purposes whatsoever without the prior written consent of the respective owners. Lucramania reserves all rights not expressly granted herein to the Platform and the Materials. You agree to not engage in the use, copying, or distribution of any of the Materials other than as expressly permitted herein, including any use, copying, or distribution of Materials of third parties obtained through the Platform for any commercial purposes. You agree not to circumvent, disable or otherwise interfere with security related features of the Platform or features that prevent or restrict use or copying of any Materials or enforce limitations on use of the Platform or the Materials therein. Content displayed on or through the provision of the services is protected by copyright as a collective work and/or compilation, pursuant to copyrights laws, other laws, and international conventions. Any reproduction, modification, creation of derivative works from or redistribution of the Platform, the Materials, or the collective work or compilation is expressly prohibited. Copying or reproducing the Platform, the Materials, or any portion thereof for further reproduction or redistribution is expressly prohibited.</li></ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.8. User Submissions</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.8.1. You accept that various things can go wrong when using the Platform and the Services provided through the Platform. You take on the responsibility and liability of these events happening and will have no claim against Lucramania if they happen. When using the Platform, you will be exposed to Materials from a variety of sources, and that, as far as applicable law allows, Lucramania is not responsible for the accuracy, usefulness, safety, or intellectual property rights of or relating to such Materials, and You agree and assume all liability for Your use. You further may be exposed to Materials that are inaccurate, offensive, indecent, objectionable, defamatory or libelous and, as far as the law allows, You agree to waive, and hereby do waive, any legal or equitable rights or remedies You have or may have against Lucramania with respect thereto.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.9. Digital Media</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.9.1. You consent to the use of Your name in the event You are the Winner of any of the Campaign Draws. This includes but is not limited to use of Your name in the local and regional press, on the Platform and on any social (online) media profile associated with Us.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.9.1. You consent that We have the right to use any and all digital records made by Us including, but not limited to, photographs, videos and call recordings of, the Prize, the Campaign Draw, the winning phone call and the collection of the Prize, on the Platform and on any social (online) media profile associated with Us. These digital records may include imagery and/or voice recordings of the Winner and/or their name.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.10. Disclaimer for Third Party Applications</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.10.1. The use of any third-party application is subject to any terms and conditions provided with such third-party application and is not governed by Us. The use of third-party applications is solely Your responsibility since Lucramania does not govern the use of such third-party applications. Lucramania is not responsible for any third-party applications and You acknowledge that such applications may be modified or removed by their original publisher and/or respective rights owner at any time. You assume all responsibility and risk of use of any third-party applications (including any content therein) and Lucramania hereby disclaims any and all liability to You or any third party related thereto.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.10.2. Lucramania does not have any obligation to examine or scan third party applications, for any purpose, and is not responsible for the accuracy, completeness, appropriateness or legality of any third-party applications. The fact that a third party application is available via any online platform or otherwise is not an endorsement, authorization or representation of Lucramania’s affiliation with any third party, nor is it an endorsement of such third party application and You hereby waive, any legal or equitable rights or remedies You have or may have against Lucramania with respect thereto. Lucramania exercises no control over third party applications, products, services, software or any online platform and We are not responsible for their performance, do not endorse them, and are not responsible or liable for any content, advertising, or other materials available through any third party applications, products, services, software and any online platform. We are not responsible or liable, directly or indirectly, for any damage or loss caused to You by Your use of or reliance on any goods or services available through the third-party applications, products, services, software and any online platform.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.11. Limitations of Liability</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.11.1. To offer a reliable and enjoyable service We need to fix bugs, install updates and perform general diagnosis and maintenance. We, cannot warrant that the Platform and Services will always be uninterrupted, problem-free, free of omission, or error-free. To the extent allowed by law, content and function of the Platform, and Services, are provided on an \"as is\" basis without warranties of any kind, either expressed or implied.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.11.2. Information obtained on the Platform may not always be accurate. We use other providers to provide data on which We base the information detailed on the Platform. We try to make sure that the data is correct and up to-date together with Our partners, but We cannot guarantee that it will always be.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.11.3. In no event will Lucramania nor will any of Our data providers be liable for any incidental, indirect, special, punitive, exemplary, or consequential damages, arising out of Your use of or inability to use the App, including without limitation, loss of revenue or anticipated profits, loss of goodwill, loss of business, loss of data, computer failure or malfunction, or any other damages.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.11.4. WE EXPRESSLY DISCLAIM ALL WARRANTIES AND CONDITIONS OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO THE IMPLIED WARRANTIES AND CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.11.5. In conjunction with the limitation of warranties as explained herein, you expressly understand and agree that any claim against Us shall be limited to the amount You paid to Us, if any, for use of our Platform and/or Services.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.12.  Indemnity</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.12.1. You agree to defend, indemnify and hold harmless Lucramania and its affiliates and subsidiaries, and its and their, officers, directors, shareholders, successors, assigns, agents, service providers, suppliers and employees, from and against any and all claims, damages, obligations, losses (whether direct, indirect or consequential), liabilities, costs or debt, and expenses (including but not limited to attorneys\' fees) arising from: (i) Your breach of any provision of this User Agreement; (ii) Your breach of any third party right, including without limitation any copyright, trademark, trade secret or other property, or privacy right; (iii) Your use of the Platform or the Service, or (iv) any claim that the Platform, Services or any Materials caused damage to You or a third party. This defense and indemnification obligation will survive termination, modification or expiration of this User Agreement and Your use of the Service and the Platform.</li>\r\n\r\n        </ul>   \r\n\r\n        <h4 class=\"wow fadeIn\">2.13. No Spam Policy</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.13.1. You understand and agree that sending unsolicited email advertisements or other unsolicited communications to Lucramania email addresses or through Lucramania information systems are expressly prohibited by these Terms. Any unauthorized use of Lucramania computer systems is a violation of this User Agreement and certain applicable laws, in particular the UAE Cybercrimes legislation. Such violations may subject the sender and his or her agents to civil and criminal penalties. Please note that the UAE Cybercrimes legislation carries significant penalties including imprisonment. In case You intend to solicit, or contact Our Users by obtaining their email or phone numbers from Our Platform, we may report this behavior to the relevant authorities, who then may decide to prosecute You under the relevant UAE laws.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.14. Limitation and Termination of Service</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.14.1. Lucramania may establish limits from time to time concerning use of the Service, including among others, the maximum number of days that content will be maintained or retained by the Service, the maximum number and size of postings, e-mail messages, or other Content that may be transmitted or stored by the Service, and the frequency with which You may access the Service or the Platform.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.14.2. Lucramania reserves the right at any time to modify or discontinue the Service on the Platform (or any part thereof) with or without notice, and that Lucramania shall not be liable to You or to any third party for any such modification, suspension or discontinuance of the Service.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.14.3. You acknowledge and agree that Lucramania, in its sole and absolute discretion, has the right (but not the obligation) to delete or deactivate Your account, block Your e-mail or IP address, or otherwise terminate Your access to or use of the Service or Platform (or any part thereof), immediately and without notice for any reason or no reason at all. Further, you agree that Lucramania shall not be liable to you or any third-party for any termination of Your access to the Platform or the Service.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.15. Assignment</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.15.1. These Terms, and any rights and licenses granted hereunder, may not be transferred or assigned by You, but may be assigned by Lucramania without restriction. Any assignment or transfer by You shall be null and void.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.16. General Information</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.16.1. The failure of Lucramania to exercise or enforce any right or provision of this User Agreement shall not constitute a waiver of such right or provision. </li>\r\n\r\n            <li class=\"wow fadeIn\">2.16.2. If any provision of this User Agreement is found by a court of competent jurisdiction to be invalid (including, without limitation, because such provision is inconsistent with the laws of another jurisdiction) or inapplicable, We and You nevertheless agree that the court should endeavor to give effect to Our intentions as reflected in this User Agreement. If any provision or provisions of this User Agreement is held to be invalid, illegal or unenforceable, the validity, legality and enforceability of the remaining provisions of this User Agreement shall not in any way be affected or be impaired.</li>\r\n\r\n            <li class=\"wow fadeIn\">2.16.3. YOU AGREE THAT ANY CAUSE OF ACTION BROUGHT BY YOU AND ARISING OUT OF OR RELATED TO YOUR USE OF THE SERVICE AND/OR THE PLATFORM MUST COMMENCE WITHIN A REASONABLE TIME AND IN ANY EVENT WITHIN ONE (1) YEAR AFTER THE CAUSE OF ACTION ACCRUES.</li>\r\n\r\n        </ul>\r\n\r\n        <h4 class=\"wow fadeIn\">2.17. Governing law and Dispute Resolution</h4>\r\n\r\n        <ul>\r\n\r\n            <li class=\"wow fadeIn\">2.17.1. Any dispute arising out of or in connection with this User Agreement, including any question regarding its existence, validity or termination, shall be subject to the exclusive jurisdiction of the Courts of the Dubai International Financial Centre. This Agreement shall be governed by and construed in accordance with the laws of the Dubai International Financial Centre.</li>\r\n\r\n        </ul>\r\n\r\n    </div>\r\n\r\n</section>\r\n</div>\r\n</section>', NULL, NULL, NULL, 1, 13);
INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `language_id`, `page_id`) VALUES
(44, 'Contact Us', '<div class=\"row\">\r\n   <div class=\"col-md-12 wow fadeIn\">\r\n      <p>Please fill in the form below and a dedicated member of our team will be in touch within 48 hours.</p>\r\n   </div>\r\n   <div class=\"col-md-8\">\r\n      <div class=\"contctForm wow fadeIn\">\r\n         <form enctype=\"multipart/form-data\" id=\"contact-us\" action=https://www.winztime.com/web/public/processContactUs\" class=\"contact-us-form-validate\"  method=\"post\">\r\n         <input type=\"hidden\" name=\"_token\">\r\n            <div class=\"row\">\r\n               <div class=\"col-md-6\">\r\n                  <div class=\"form-group\">\r\n                    <input type=\"text\" name=\"name\" placeholder=\"Name\" class=\"form-control contact-us-field-validate\" onkeypress=\"return /^[ A-Za-z-_@./#${}<>,?=;\'|\\!%*()&+-]*$/.test(event.key)\">                                 \r\n                  </div>\r\n               </div>\r\n               <div class=\"col-md-6\">\r\n                  <div class=\"form-group\">                                    \r\n                    <input type=\"email\" name=\"email\" placeholder=\"Email\" class=\"form-control contact-us-field-validate contact-us-email\">                              \r\n                  </div>\r\n               </div>\r\n               <div class=\"col-md-12\">\r\n                  <div class=\"form-group\">\r\n                     <select name=\"dropoptions\" class=\"form-control contact-us-field-validate\">\r\n                        <option value=\"\"></option>\r\n                        <option value=\"General Enquiries\">General Enquiries</option>\r\n                        <option value=\"Technical Issues\">Technical Issues</option>\r\n                        <option value=\"Payment Issues\">Payment Issues</option>\r\n                     </select>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-md-12\">\r\n                  <div class=\"form-group\">                                    <textarea cols=\'60\' rows=\'8\' name=\"message\" id=\"messagecontact\" placeholder=\"Message\" class=\"form-control contact-us-field-validate\"></textarea>                                </div>\r\n               </div>\r\n               <div class=\"col-md-offset-8 col-md-4\">                              <input type=\"button\" onclick=\"contactuscontactfieldvalidate();\" name=\"submitBtn\"  value=\"Send Message\" class=\"btn contctBtn\">                           </div>\r\n            </div>\r\n         </form>\r\n      </div>\r\n   </div>\r\n   <div class=\"col-md-4\">\r\n      <div class=\"contctInfo wow fadeIn\">\r\n      <h3>Lucramania Fitness Equipments</h3>\r\n         <ul>\r\n          <li><i class=\"fas fa-map-marker\"></i><p>Office 904-68B<br>\r\n               Sapphire Tower, 8 Al Ittihad Road<br>\r\n               Port Saeed, Deira<br>\r\n               Dubai, United Arab Emirates</p>\r\n            </li>\r\n            <li><i class=\"fas fa-envelope\"></i><p>hello@lucramania.com</p></li>\r\n            <li><i class=\"fas fa-phone\"></i><p>+971 55 946 1406</p></li>\r\n         </ul>\r\n      </div>\r\n   </div>\r\n</div>\r\n<div class=\"mapWrap wow fadeIn\">\r\n   <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3608.2787266463365!2d55.33046711501071!3d25.26120758386646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f5cdc5c335b91%3A0x320f640cbe53cfad!2sSapphire%20Tower!5e0!3m2!1sen!2s!4v1603023272351!5m2!1sen!2s\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>         \r\n</div>\r\n', NULL, NULL, NULL, 1, 15),
(32, 'How It Works', '<div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-7 col-md-7  col-sm-6\">\r\n          <h2>How It Works</h2>\r\n          <p>Winning with us is as easy as A, B, C. Here is how our website works:</p>\r\n          <ol>\r\n            <li>First, create an account/login.</li>\r\n            <li>Search/browse through our product selection.</li>\r\n            <li>Check if the Product has a campaign or promotion going on. </li>\r\n            <li>Select the product/s you wish to buy and proceed to the checkout.</li>\r\n            <li>Once the payment is confirmed, you shall be notified about your order details and draw entries via email.</li>\r\n            <li>You will also receive your tax invoice via email.</li>\r\n            <li>Once a campaign ends and the draw is complete, the prize winner will be announced on our social media channels: Facebook &amp; Instagram.</li>\r\n            <li>Donate your product/s to charity and you will receive an extra complimentary ticket for the prize draw.</li>\r\n            <li>All draws are regulated under the Dubai economy department.</li>  \r\n          </ol>\r\n        </div>\r\n        <div class=\"col-lg-5 col-md-5  col-sm-6\">\r\n          <img src=\"images/media/2021/07/tVllU05905.png\" class=\"img-fluid\" alt=\"*\">\r\n        </div>\r\n\r\n        <div class=\"about-video\">\r\n          <iframe width=\"100%\" height=\"645px\" src=\"https://www.youtube.com/embed/0oKHxrKP6po\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>\r\n        </div>\r\n      </div>\r\n    </div>', 'Gold rewards in UAE | Chance to Win a prize in Dubai', 'Chance to Win a prize in Dubai\r\n\r\nGold rewards in UAE', 'Winztime is a winning platform for you to get Gold rewards in UAE. Not only that, we give you an enormous chance to win a prize in Dubai. Stay tuned to Winztime.', 1, 10),
(50, 'Charities', '<div class=\"container\">\r\n\r\n			<div class=\"row\">\r\n\r\n				<div class=\"col-lg-7 col-md-7 col-sm-6\">\r\n\r\n					<h2>Charities</h2>\r\n\r\n					<p>Our main objective at Winztime is to transform lives. We do not just want our customers to lead a better life but also children and less fortunate people. To achieve this we have partnered with Friends of Cancer Patients charity organization. Through this you can donate our products, or a percentage of the sales, to our charity partner.</p>\r\n\r\n					<p>To reward your generosity, Winztime will reward every donation by increasing the number of complimentary entries one receives for the prize draw. Through this we hope to achieve our dream: a win-win situation for everyone.</p>\r\n\r\n					<p>Friends of Cancer Patients is a non-profit organization, founded in 1999 under the directives and patronage of Her Highness Sheikha Jawaher bint Mohammed Al Qasimi, Wife of the Ruler of Sharjah, Founder and Patron of the Friends of Cancer Patients, International Ambassador of the World Cancer Declaration for Union for International Cancer Control (UICC), International Ambassador for Childhood Cancer for UICC and Patron of the Global NCD Alliance Forum.</p><p>FoCP is committed to help cancer patients and their families get through their long and arduous journey of cancer treatment. Since its inception, FoCP has delivered moral and financial support to cancer patients and their families, irrespective of their nationality, gender, age, religion or ethnicity.</p>\r\n\r\n				</div>\r\n\r\n				<div class=\"col-lg-5 col-md-5 col-sm-6\">\r\n\r\n					<img src=\"images/charityImg5.webp\" class=\"img-fluid\" alt=\"*\">\r\n\r\n				</div>\r\n\r\n			</div>\r\n\r\n		</div>', NULL, NULL, NULL, 1, 17),
(42, 'COVID-19 Response', '<div class=\\\"row\\\">\r\n<div class=\\\"col-md-6\\\">\r\n<p>Dear Community,<br><br>\r\n\r\nOn behalf of all of us at Lucramania, please allow us to honor those on the front lines during these unprecedented times. Today we honor our heroes, starting with nurses, doctors, and healthcare providers around the world who are fighting the spread of COVID-19.<br> <br>\r\n\r\nAt home, Lucramania remains enduringly committed to the well-being of our community. We ensure highest sanitization of all of our products and packages before we ship them to our eager customers.<br>  <br>  \r\n\r\nStay safe, wash your hands, help others, keep exercising, eat healthy, and remain positive!<br><br>\r\n\r\nBest wishes,<br><br>\r\n\r\nLucramania’s Team</p>\r\n</div>\r\n<div class=\\\"col-md-6\\\">\r\n<figure><img src=\\\"images/covid.png\\\" /></figure>\r\n</div>\r\n</div>', NULL, NULL, NULL, 1, 14),
(47, 'Winners', '<section class=\"pro-content main-section product-section \">\r\n  <h2 class=\"wow fadeIn animated\" style=\"visibility: visible;\">Winners</h2>\r\n  <div class=\"row\">\r\n    <div class=\"col-md-6 wow fadeIn\">\r\n      <a href=\"javascript:;\" class=\"productWrap swipe-to-top\" products_id=\"13\" data-toggle=\"tooltip\" data-placement=\"bottom\" data-original-title=\"\" title=\"\">\r\n        <h3>congratulations, John Doe!</strong></h3>\r\n        <h5>on winning Cash AED 40,000</h5>\r\n        <figure>\r\n          <img src=\"http://134.119.189.170:90/lucramania/public/images/media/2020/10/dpYLj04806.jpg\" alt=\"Europa Water Bottle\">\r\n          <img class=\"winnerIconWrp\" src=\"http://134.119.189.170:90/lucramania/public/images/media/2020/10/winnerIcon.png\" alt=\"*\">\r\n        </figure>\r\n        <figcaption>\r\n          <h4>Coupon no. CC-00001-00001-D</h4>\r\n          <p>Announced on January 09, 2021</p>\r\n        </figcaption>\r\n      </a>\r\n    </div>\r\n    <div class=\"col-md-6 wow fadeIn\">\r\n      <a href=\"javascript:;\" class=\"productWrap swipe-to-top\" products_id=\"12\" data-toggle=\"tooltip\" data-placement=\"bottom\" data-original-title=\"\" title=\"\">\r\n        <h3>congratulations, John Doe!</strong></h3>\r\n        <h5>on winning Cash AED 40,000</h5>\r\n        <figure>\r\n          <img src=\"http://134.119.189.170:90/lucramania/public/images/media/2020/10/HaUQb04306.jpg\" alt=\"Tachyon Jump Rope\">\r\n          <img class=\"winnerIconWrp\" src=\"http://134.119.189.170:90/lucramania/public/images/media/2020/10/winnerIcon.png\" alt=\"*\">\r\n        </figure>\r\n        <figcaption>\r\n          <h4>Coupon no. CC-00001-00001-D</h4>\r\n          <p>Announced on January 09, 2021</p>\r\n        </figcaption>\r\n      </a>\r\n    </div>\r\n  </div>\r\n</section>', NULL, NULL, NULL, 1, 16),
(51, 'Z points', '<div class=\"container\">\r\n  <div class=\"row\">\r\n    <h2>Z points</h2>\r\n    <h4>What are Z points?</h4>\r\n    <p>Our loyal members receive 1 Z point on every 10 AED spent. These points can be collected and then used to make purchases.</p>\r\n    <h4>Can I transfer my Z points?</h4>\r\n    <p>Currently Z points cannot be transferred.</p>\r\n    <h4>Can a member purchase Z points?</h4>\r\n    <p>Our members cannot purchase Z points at the moment.</p>\r\n    <h4>How can a member earn more Z points?</h4>\r\n    <p>One can earn more Z points earned on every purchase by improving their tier status.</p>\r\n    <h4>Can we combine Z points with cash to make purchases?</h4>\r\n    <p>Z points can be combined with cash to complete a purchase. This option is only available when members have insufficient points to make a purchase.</p>\r\n    <h4>What is the minimum amount of points a member can withdraw/use?</h4>\r\n    <p>If a member has 125 points then they can use only 100 points otherwise they can wait and use 200 points in one go.</p>\r\n  </div>\r\n</div>', NULL, NULL, NULL, 1, 18),
(52, 'Charities', '<section class=\\\"about-sec\\\" id=\\\"how-it-works-sec\\\">\r\n\r\n		<div class=\\\"container\\\">\r\n\r\n			<div class=\\\"row\\\">\r\n\r\n				<div class=\\\"col-lg-7 col-md-7 col-sm-6\\\">\r\n\r\n					<h2>Charities</h2>\r\n\r\n					<p>Our main objective at Winztime is to transform lives. We do not just want our customers to lead a better life but also children and less fortunate people. To achieve this we have partnered with Friends of Cancer Patients charity organization. Through this you can donate our products, or a percentage of the sales, to our charity partner.</p>\r\n\r\n					<p>To reward your generosity, Winztime will reward every donation by increasing the number of complimentary entries one receives for the prize draw. Through this we hope to achieve our dream: a win-win situation for everyone.</p>\r\n\r\n					<p>Friends of Cancer Patients is a non-profit organization, founded in 1999 under the directives and patronage of Her Highness Sheikha Jawaher bint Mohammed Al Qasimi, Wife of the Ruler of Sharjah, Founder and Patron of the Friends of Cancer Patients, International Ambassador of the World Cancer Declaration for Union for International Cancer Control (UICC), International Ambassador for Childhood Cancer for UICC and Patron of the Global NCD Alliance Forum.</p>\r\n\r\n					<p>FoCP is committed to help cancer patients and their families get through their long and arduous journey of cancer treatment. Since its inception, FoCP has delivered moral and financial support to cancer patients and their families, irrespective of their nationality, gender, age, religion or ethnicity.</p>\r\n\r\n				</div>\r\n\r\n				<div class=\\\"col-lg-5 col-md-5 col-sm-6\\\">\r\n\r\n					<img src=\\\"assets/images/charityImg5.webp\\\" class=\\\"img-fluid\\\" alt=\\\"*\\\">\r\n\r\n				</div>\r\n\r\n			</div>\r\n\r\n		</div>\r\n\r\n	</section>', NULL, NULL, NULL, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, '', ''),
(5, 3, 'Paypal', 1, '', ''),
(6, 4, 'Cash on Delivery', 1, '', ''),
(7, 5, 'Instamojo', 1, '', ''),
(8, 0, 'Cybersoure', 1, '', ''),
(9, 6, 'Hyperpay', 1, '', ''),
(10, 7, 'Razor Pay', 1, '', ''),
(11, 8, 'PayTm', 1, '', ''),
(12, 9, 'Direct Bank Transfer', 1, 'Make your payment directly into our bank account. Please use your Order ID as the payment reference.', ''),
(13, 10, 'Paystack', 1, '', ''),
(14, 11, 'Midtrans', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_methods_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `environment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 0, 0, '2019-09-18 11:40:13', '0000-00-00 00:00:00'),
(2, 'stripe', 0, 0, '2019-09-18 11:56:17', '0000-00-00 00:00:00'),
(3, 'paypal', 1, 0, '2019-09-18 11:56:04', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, '2019-09-18 11:56:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 0, 0, '2019-09-18 11:57:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 0, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(7, 'razor_pay', 0, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 0, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(9, 'banktransfer', 0, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(10, 'paystack', 0, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(11, 'midtrans', 0, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

CREATE TABLE `payment_methods_detail` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', ''),
(4, 1, 'public_key', ''),
(5, 1, 'private_key', ''),
(9, 2, 'secret_key', ''),
(10, 2, 'publishable_key', ''),
(15, 3, 'id', ''),
(18, 3, 'payment_currency', 'USD'),
(21, 5, 'api_key', ''),
(22, 5, 'auth_token', ''),
(23, 5, 'client_id', ''),
(24, 5, 'client_secret', ''),
(32, 6, 'userid', ''),
(33, 6, 'password', ''),
(34, 6, 'entityid', ''),
(35, 7, 'RAZORPAY_KEY', ''),
(36, 7, 'RAZORPAY_SECRET', ''),
(37, 8, 'paytm_mid', ''),
(39, 8, 'paytm_key', 'w#'),
(40, 8, 'current_domain_name', ''),
(41, 9, 'account_name', 'SHaroz ALam kahn'),
(42, 9, 'account_number', '123 32132132132'),
(43, 9, 'bank_name', 'TEST TSEs'),
(44, 9, 'short_code', '123123'),
(45, 9, 'iban', '123'),
(46, 9, 'swift', 'qw'),
(47, 10, 'secret_key', ''),
(48, 10, 'public_key', ''),
(49, 11, 'merchant_id', ''),
(50, 11, 'server_key', ''),
(51, 11, 'client_key', '');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image` text COLLATE utf8mb4_unicode_ci,
  `products_video_link` text COLLATE utf8mb4_unicode_ci,
  `products_price` int(200) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_weight_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) DEFAULT '0',
  `products_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT '0',
  `products_min_order` int(11) DEFAULT '1',
  `products_max_stock` int(11) DEFAULT NULL,
  `sku` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_video_link`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `sku`, `created_at`, `updated_at`, `currency`) VALUES
(7, -5, NULL, '641', NULL, 30, '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 6, 2, 0, 0, '0', 0, 1, 0, 'W-NGU-B', '2019-09-17 16:18:31', '2021-07-18 03:50:20', ''),
(9, 0, NULL, '647', NULL, 20, '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, '0', 0, 1, 0, 'SB-Y', '2019-09-17 16:30:05', '2021-07-18 07:44:58', ''),
(12, 0, NULL, '637', NULL, 75, '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 3, 0, 0, '0', 0, 1, 0, 'SKU#: Bag-1-B', '2019-09-17 16:50:49', '2021-08-26 09:21:53', ''),
(13, 0, NULL, '639', NULL, 95, '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 2, 1, 0, 0, '0', 0, 1, 0, 'GB-2.2L-B', '2019-09-17 16:55:20', '2021-08-26 09:18:36', ''),
(44, 0, NULL, '655', NULL, 50, '2020-04-05 01:10:00', NULL, NULL, '10', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, '0', 0, NULL, NULL, 'GT-B', '2021-07-01 07:39:32', '2021-08-26 09:20:16', ''),
(42, 0, NULL, '638', NULL, 40, '2020-04-05 01:10:00', NULL, NULL, '10', NULL, 1, 1, 2, NULL, 0, 1, 0, 0, '0', 0, NULL, NULL, 'SR-B', '2021-06-26 21:14:48', '2021-08-26 09:21:14', ''),
(43, 0, NULL, '648', NULL, 50, '2021-07-04 11:54:57', NULL, NULL, '10', NULL, 1, 1, 0, NULL, 0, 1, 0, 0, '0', 0, NULL, NULL, 'GT-P', '2021-06-26 21:18:55', '2021-08-26 09:20:52', ''),
(45, 0, NULL, '639', NULL, 95, '0000-00-00 00:00:00', NULL, NULL, '10', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, '0', 0, NULL, NULL, 'GB-2.2L-B', '2021-07-08 10:21:42', '2021-08-26 09:15:32', ''),
(46, 0, 'eeee', '550', NULL, 10, '0000-00-00 00:00:00', NULL, NULL, '10', NULL, 0, 1, 0, NULL, 0, 0, 0, 0, '0', 0, 1, 10, 'SKU#: GT-B', '2021-07-11 04:32:09', '2021-07-24 23:27:39', ''),
(47, 0, NULL, '675', NULL, 5, '0000-00-00 00:00:00', NULL, NULL, '10', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, '0', 0, NULL, NULL, 'PY-1', '2021-08-24 08:48:20', '2021-08-24 10:14:17', '');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(11, 13, 2, 5, 0.00, '+', 1),
(12, 13, 2, 6, 0.00, '+', 1),
(13, 13, 2, 8, 0.00, '+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(11) DEFAULT '0',
  `products_attributes_maxcount` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8mb4_unicode_ci,
  `products_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_viewed` int(11) DEFAULT '0',
  `products_left_banner` text COLLATE utf8mb4_unicode_ci,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text COLLATE utf8mb4_unicode_ci,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(96, 44, 1, 'Gym Towel With Bag', '<p><span style=\"color: rgb(14, 16, 26); font-family: Arial, &quot;Arial Unicode MS&quot;, Arimo, &quot;Microsoft Sans serif&quot;, sans-serif; font-size: 14.6667px; white-space: pre-wrap;\">Ultra absorbent, soft and antibacterial, our microfiber Gym Towel is a convenience product. It soaks up three times more water than cotton. You can use it at the gym or even while doing yoga.</span><br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(7, 7, 1, 'Wrist Band', '<p data-pm-slice=\"1 1 []\"><b>Never Give Up Wristband:</b></p><p data-pm-slice=\"1 1 []\">Some days we also don\'t want to workout. Our stylish and eye-catching \"Never Give Up\" Motivational Wristband can help you stay motivated. It is entirely waterproof and comfortable to wear. Thus, you can use it 24/7.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(94, 42, 1, 'Skipping Rope', '<p>Love doing cardio? Then you will love our skipping rope too. Made of foam, it absorbs sweat and prevents slipping. Its length can get adjusted freely for convenient use.<br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(95, 43, 1, 'Purple Gym Towel', '<p><span style=\"color: rgb(14, 16, 26); font-family: Arial, &quot;Arial Unicode MS&quot;, Arimo, &quot;Microsoft Sans serif&quot;, sans-serif; font-size: 14.6667px; white-space: pre-wrap;\">Ultra absorbent, soft and antibacterial, our microfiber Gym Towel is a convenience product. It soaks up three times more water than cotton. You can use it at the gym or even while doing yoga.</span><br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(9, 9, 1, 'Anti Stress Ball', '<p data-pm-slice=\"1 1 []\">Tired after a long day? Use a Winztime Stress Relieving Ball to relax the muscles of your hands. They\'re soft, squeezable, and easy to catch, thus being an excellent way to relieve stress.<br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(97, 45, 1, 'Gym Bottle', '<p data-pm-slice=\"1 1 []\">Carry your protein shake, water, or other sports supplements on your way to the gym with our cool Gym Bottle. With its large capacity of 2.2 liters, you can effortlessly meet your water needs during sports. It is the perfect companion to your daily gym visits. Made of sturdy and high-quality materials, it offers impact resistance, low-temperature resistance, environmental protection, and leakage-proof. Plus, it is safe to use and easy to clean.<br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(12, 12, 1, 'Gym Bag', '<p data-pm-slice=\"1 1 []\">A multi-functional drawstring backpack, our Gym Bag makes a perfect sports bag, travel bag, and so on. It is lightweight so that one can easily carry it anywhere you want to. Made of waterproof fabric, it\'s perfect for people who enjoy trekking or swimming. Plus, it is unisex. So convenient that you can\'t miss it!<br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(13, 13, 1, 'Gym Bottle', '<p data-pm-slice=\"1 1 []\">Carry your protein shake, water, or other sports supplements on your way to the gym with our cool Gym Bottle. With its large capacity of 2.2 liters, you can effortlessly meet your water needs during sports. It is the perfect companion to your daily gym visits. Made of sturdy and high-quality materials, it offers impact resistance, low-temperature resistance, environmental protection, and leakage-proof. Plus, it is safe to use and easy to clean.<br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(98, 46, 1, 'TEST TYEST', '<p>asdasd</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(99, 47, 1, 'Winztime Pencil', '<p>Do you always write to remember things? The Winztime Pencil is here to help you. It\'s clean-grip and relaxed for writing. Use for writing and sketching and made of satisfactory high-quality wood and graphite lead.<br></p>', NULL, 0, NULL, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `htmlcontent` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(261, 10, '639', NULL, 1),
(153, 36, '', NULL, 1),
(160, 2, '558', '<p>CAR2</p>', 1),
(161, 3, '558', '<p>CAR3</p>', 1),
(174, 4, '565', '<p>q</p>', 1),
(175, 4, '565', '<p>1</p>', 2),
(172, 5, '564', '<p>2</p>', 1),
(154, 36, '503', '<p>wewedewdef</p>', 2),
(158, 1, '558', '<p>CAr</p>', 1),
(173, 5, '564', '<p>1</p>', 2),
(24, 6, '390', NULL, 1),
(25, 6, '393', NULL, 2),
(26, 6, '394', NULL, 3),
(27, 6, '392', NULL, 4),
(28, 6, '391', NULL, 5),
(176, 37, '563', '<p>asdasd</p>', 1),
(34, 8, '383', NULL, 1),
(35, 8, '384', NULL, 2),
(36, 8, '381', NULL, 3),
(37, 8, '382', NULL, 4),
(270, 46, '549', NULL, 1),
(44, 11, '372', NULL, 1),
(45, 11, '374', NULL, 2),
(46, 11, '373', NULL, 3),
(47, 11, '371', NULL, 4),
(266, 12, '637', NULL, 1),
(55, 14, '359', NULL, 1),
(56, 14, '361', NULL, 2),
(57, 14, '363', NULL, 3),
(58, 14, '360', NULL, 4),
(59, 14, '362', NULL, 5),
(60, 15, '355', NULL, 1),
(61, 15, '356', NULL, 2),
(62, 15, '358', NULL, 3),
(63, 15, '357', NULL, 4),
(64, 16, '350', NULL, 1),
(65, 16, '349', NULL, 2),
(66, 16, '352', NULL, 3),
(67, 16, '353', NULL, 4),
(68, 16, '354', NULL, 5),
(69, 16, '351', NULL, 6),
(70, 17, '344', NULL, 1),
(71, 17, '347', NULL, 2),
(72, 17, '348', NULL, 3),
(73, 17, '345', NULL, 4),
(74, 17, '346', NULL, 5),
(75, 18, '339', NULL, 1),
(76, 18, '341', NULL, 2),
(77, 18, '340', NULL, 3),
(78, 18, '342', NULL, 4),
(79, 18, '343', NULL, 5),
(80, 19, '337', NULL, 1),
(81, 19, '338', NULL, 2),
(82, 19, '336', NULL, 3),
(83, 20, '333', NULL, 1),
(84, 20, '334', NULL, 2),
(85, 20, '335', NULL, 3),
(86, 21, '330', NULL, 1),
(87, 21, '328', NULL, 2),
(88, 21, '329', NULL, 3),
(89, 21, '331', NULL, 4),
(90, 21, '332', NULL, 5),
(91, 22, '324', NULL, 1),
(92, 22, '325', NULL, 2),
(93, 22, '326', NULL, 3),
(94, 22, '327', NULL, 4),
(95, 23, '218', NULL, 1),
(96, 23, '219', NULL, 2),
(97, 23, '220', NULL, 3),
(98, 23, '217', NULL, 4),
(99, 23, '221', NULL, 5),
(100, 24, '319', NULL, 1),
(101, 24, '320', NULL, 2),
(102, 24, '321', NULL, 3),
(103, 24, '322', NULL, 4),
(104, 24, '323', NULL, 5),
(105, 25, '313', NULL, 1),
(106, 25, '314', NULL, 2),
(107, 25, '316', NULL, 3),
(108, 25, '312', NULL, 4),
(109, 25, '317', NULL, 5),
(110, 25, '318', NULL, 6),
(111, 25, '315', NULL, 7),
(112, 26, '310', NULL, 1),
(113, 26, '309', NULL, 2),
(114, 26, '308', NULL, 3),
(115, 26, '311', NULL, 4),
(116, 27, '307', NULL, 1),
(117, 27, '306', NULL, 2),
(118, 27, '305', NULL, 3),
(119, 28, '301', NULL, 1),
(120, 28, '303', NULL, 2),
(121, 28, '304', NULL, 3),
(122, 28, '302', NULL, 4),
(123, 29, '300', NULL, 1),
(124, 29, '298', NULL, 2),
(125, 29, '298', NULL, 3),
(144, 30, '297', NULL, 1),
(145, 30, '295', NULL, 2),
(140, 31, '292', NULL, 1),
(141, 31, '291', NULL, 2),
(137, 32, '288', NULL, 1),
(138, 32, '287', NULL, 2),
(139, 32, '289', NULL, 3),
(142, 31, '290', NULL, 3),
(143, 31, '293', NULL, 4),
(146, 30, '294', NULL, 3),
(147, 30, '296', NULL, 4),
(260, 9, '647', NULL, 1),
(177, 3, '558', NULL, 2),
(178, 2, '558', NULL, 2),
(263, 43, '648', NULL, 1),
(264, 42, '638', NULL, 1),
(262, 7, '641', NULL, 1),
(257, 39, '621', NULL, 1),
(267, 44, '655', NULL, 1),
(268, 45, '639', NULL, 1),
(269, 13, '639', NULL, 2),
(272, 47, '675', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, 'Color'),
(2, 'Size'),
(3, 'Waist');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'Color', 1),
(2, 1, 'Size', 2),
(3, 1, 'Waist', 3),
(5, 4, 'اللون', 1),
(6, 4, 'بحجم', 2),
(7, 4, 'وسط', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`) VALUES
(1, 1, 'Red'),
(2, 1, 'Pink'),
(3, 1, 'Sky Blue'),
(4, 1, 'Purple'),
(5, 2, 'Small'),
(6, 2, 'Medium'),
(7, 2, 'Large'),
(8, 2, 'XL'),
(9, 3, '28W'),
(10, 3, '30W'),
(11, 3, '32W'),
(12, 3, '34W'),
(13, 3, '36W'),
(14, 3, '38W');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(1, 1, 'Red', 1),
(2, 1, 'Pink', 2),
(3, 1, 'Sky Blue', 3),
(4, 1, 'Purple', 4),
(5, 1, 'Small', 5),
(6, 1, 'Medium', 6),
(7, 1, 'Large', 7),
(8, 1, 'XL', 8),
(9, 1, '28W', 9),
(10, 1, '30W', 10),
(11, 1, '32W', 11),
(12, 1, '34W', 12),
(13, 1, '36W', 13),
(14, 1, '38W', 14);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL,
  `weight_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(483, 44, 1),
(467, 7, 1),
(461, 9, 1),
(486, 12, 1),
(482, 13, 1),
(485, 42, 1),
(484, 43, 1),
(481, 45, 1),
(472, 46, 1),
(480, 47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `reviews_status`, `reviews_read`, `created_at`, `updated_at`) VALUES
(17, 4, 14, 'Rehan', 5, 1, 1, '2020-04-05 05:10:00', NULL),
(18, 4, 14, 'Rehan', 5, 1, 1, '2020-04-05 05:10:00', NULL),
(19, 24, 608, 'mubasher', 5, 0, 0, '2020-02-17 19:52:00', NULL),
(20, 5, 454, 'Angelo', 5, 0, 0, '2020-02-24 08:12:45', NULL),
(21, 14, 658, 'benito', 3, 0, 0, '2020-03-09 02:16:17', NULL),
(22, 12, 666, 'Mubasher', 3, 1, 1, '2020-04-01 18:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews_description`
--

INSERT INTO `reviews_description` (`id`, `review_id`, `language_id`, `reviews_text`) VALUES
(20, 17, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s'),
(21, 18, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s'),
(22, 19, 1, 'nice'),
(23, 20, 1, 'dwddsadsadsadsa'),
(24, 21, 1, 'oxsdcfvgbhjnk'),
(25, 22, 1, 'Nice');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `reward_image` varchar(225) NOT NULL,
  `reward_description` text NOT NULL,
  `inventory` int(11) NOT NULL DEFAULT '0',
  `purchase_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `title`, `reward_image`, `reward_description`, `inventory`, `purchase_date`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Mobile S21', '85.png', '<p>Designed with a unique contour-cut camera to create a revolution in photography. 100% Color Volume. Eye Comfort Shield. Super Smooth 60fps Video. 8K Video. These qualities make the Samsung Mobile S21 a powerhouse of a phone. </p>', 120, '2021-06-29', '2021-06-28 14:15:33', '2021-06-30 08:15:19'),
(2, 'TAG HEUER AQUARACER Watch', '12.png', '<p>A sportwatch that is waterproof and doesn\'t even look like one? Yes it exists with the latest TAG HEUER Aquaracer Watch. Engineered to withstand heavy duty and water activities, this watch is the first amongst its kind to exist. </p>', 75, '2021-06-29', '2021-06-28 14:14:07', '2021-06-30 08:15:14'),
(3, 'Gucci Bag (Gucci GG)', '53.png', '<p>Every woman dreams of owning a Gucci bag made from 100% pure Italian leather. Be it in black or in white, it makes the perfect handbag to take to a party or even at work. </p>', 70, '2021-06-29', '2021-06-28 13:43:29', '2021-06-30 12:00:51'),
(4, 'Skydiving Voucher', '23.png', '<p>SkyDiving, also known as parachuting, is one of the most thrilling sports to exist. Every thrill seekers wish is to experience this thrilling sport at least once in their life. The adrenaline rush is surely not to be missed. </p>', 30, '2021-06-29', '2021-06-28 13:24:11', '2021-06-30 08:14:28'),
(5, 'AED 10,000 worth of Gold', '60.png', '<p>Probably the most sought after currency in the world is gold. It is a welcomed addition to an investors portfolio. Not only investors but every person understands the need to have it as a form of investment or securing your money. Estimated worth: AED 10,000. \r\n</p>', 5, '2021-03-11', '2021-03-28 03:54:59', '2021-06-30 08:13:59'),
(6, 'AED 5,000 worth of Gold', '22.png', '<p>Probably the most sought after currency in the world is gold. It is a welcomed addition to an investors portfolio. Not only investors but every person understands the need to have it as a form of investment or securing your money. Estimated worth: AED 5000.</p>', 5, '2021-03-18', '2021-03-18 02:40:16', '2021-07-13 07:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', '1845026802325568', '2018-04-26 19:00:00', '2021-08-26 07:32:03'),
(2, 'facebook_secret_id', 'c00ca65e5d79d9e065779f7619ae703c', '2018-04-26 19:00:00', '2021-08-26 07:32:03'),
(3, 'facebook_login', '0', '2018-04-26 19:00:00', '2021-08-26 07:32:03'),
(4, 'contact_us_email', 'info@winztime.com', '2018-04-26 19:00:00', '2021-07-07 04:41:24'),
(5, 'address', '', '2018-04-26 19:00:00', '2021-07-07 04:41:25'),
(6, 'city', 'Dubai', '2018-04-26 19:00:00', '2021-07-07 04:41:25'),
(7, 'state', 'UAE', '2018-04-26 19:00:00', '2021-07-07 04:41:25'),
(8, 'zip', '70005', '2018-04-26 19:00:00', '2021-07-07 04:41:25'),
(9, 'country', 'UAE', '2018-04-26 19:00:00', '2021-07-07 04:41:25'),
(10, 'latitude', 'Latitude', '2018-04-26 19:00:00', '2021-07-07 04:41:25'),
(11, 'longitude', 'Longitude', '2018-04-26 19:00:00', '2021-07-07 04:41:25'),
(12, 'phone_no', '+971552801120', '2018-04-26 19:00:00', '2021-07-07 04:41:24'),
(13, 'fcm_android', '', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(14, 'fcm_ios', NULL, '2018-04-26 19:00:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 19:00:00', NULL),
(16, 'website_logo', 'images/media/2021/05/ewfXD24212.png', '2018-04-26 19:00:00', '2021-05-25 21:30:31'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 19:00:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(19, 'app_name', 'Winztime', '2018-04-26 19:00:00', '2021-07-07 04:41:24'),
(20, 'currency_symbol', 'AED', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(21, 'new_product_duration', '20', '2018-04-26 19:00:00', '2021-07-07 04:41:24'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 19:00:00', NULL),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(25, 'footer_button', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(26, 'cart_button', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(27, 'featured_category', NULL, '2018-04-26 19:00:00', NULL),
(28, 'notification_duration', 'year', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(29, 'home_style', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(30, 'wish_list_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(31, 'edit_profile_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(32, 'shipping_address_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(33, 'my_orders_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(34, 'contact_us_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(35, 'about_us_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(36, 'news_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(37, 'intro_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(38, 'setting_page', '1', '2018-04-26 19:00:00', NULL),
(39, 'share_app', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(40, 'rate_app', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(41, 'site_url', 'URL', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(42, 'admob', '0', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(43, 'admob_id', 'ID', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(46, 'category_style', '4', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(47, 'package_name', 'package name', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(48, 'google_analytic_id', 'test', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(49, 'themes', 'themeone', '2018-04-26 19:00:00', NULL),
(50, 'company_name', '#', '2018-04-26 19:00:00', '2019-10-07 04:52:24'),
(51, 'facebook_url', 'https://www.facebook.com/Winztime-110445164590731', '2018-04-26 19:00:00', '2021-06-26 23:29:20'),
(52, 'google_url', 'https://wa.me/+971552801120', '2018-04-26 19:00:00', '2021-06-26 23:29:20'),
(53, 'twitter_url', 'twitter', '2018-04-26 19:00:00', '2021-06-26 23:29:20'),
(54, 'linked_in', 'https://instagram.com/winztimeuae', '2018-04-26 19:00:00', '2021-06-26 23:29:20'),
(55, 'default_notification', 'onesignal', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(57, 'onesignal_sender_id', '', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(58, 'ios_admob', '0', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(62, 'google_login', '1', NULL, '2021-08-29 01:54:18'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '0', NULL, '2018-05-03 22:24:44'),
(68, 'is_web_purchased', '1', NULL, '2018-05-03 22:24:44'),
(69, 'consumer_key', 'dadb7a7c1557917902724bbbf5', NULL, '2019-05-15 05:58:22'),
(70, 'consumer_secret', '3ba77f821557917902b1d57373', NULL, '2019-05-15 05:58:22'),
(71, 'order_email', 'support@winztime.com', NULL, '2021-07-07 04:41:24'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', 'Winztime UAE | Raffle Draw in Dubai', NULL, '2021-08-15 09:45:25'),
(74, 'seo_metatag', 'Winztime,  UAE,  Raffle,  Draw in Dubai,', NULL, '2021-08-15 09:45:25'),
(75, 'seo_keyword', 'Winztime UAE, Raffle Draw in Dubai,', NULL, '2021-08-15 09:45:25'),
(76, 'seo_description', 'Winning a raffle draw in Dubai is easier than it seems. Winztime UAE offers amazing gifts and prizes. Hurry up and grab them now.', NULL, '2021-08-15 09:45:25'),
(77, 'before_head_tag', '', NULL, '2018-11-19 02:22:15'),
(78, 'end_body_tag', 'name', NULL, '2019-10-11 06:57:29'),
(79, 'sitename_logo', 'name', NULL, '2021-06-26 23:29:20'),
(80, 'website_name', 'WinzTime', NULL, '2021-06-26 23:29:20'),
(81, 'web_home_pages_style', 'two', NULL, '2018-11-19 02:22:25'),
(82, 'web_color_style', 'app.theme.15', NULL, '2020-07-14 11:12:35'),
(83, 'free_shipping_limit', '9999', NULL, '2021-07-07 04:41:24'),
(84, 'app_icon_image', 'icon', NULL, '2019-02-05 05:12:59'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', '', NULL, NULL),
(87, 'favicon', 'images/media/2021/05/9ahXv30905.png', NULL, '2021-06-22 21:29:29'),
(88, 'Thumbnail_height', '150', NULL, NULL),
(89, 'Thumbnail_width', '150', NULL, NULL),
(90, 'Medium_height', '400', NULL, NULL),
(91, 'Medium_width', '400', NULL, NULL),
(92, 'Large_height', '900', NULL, NULL),
(93, 'Large_width', '900', NULL, NULL),
(94, 'environmentt', 'local', NULL, '2021-07-07 04:41:24'),
(95, 'maintenance_text', 'Website is under maintenance', NULL, '2021-07-07 04:41:24'),
(96, 'package_charge_taxt', '0', NULL, NULL),
(97, 'order_commission', '0', NULL, NULL),
(98, 'all_items_price_included_tax', 'yes', NULL, NULL),
(99, 'all_items_price_included_tax_value', '0', NULL, NULL),
(100, 'driver_accept_multiple_order', '1', NULL, NULL),
(101, 'min_order_price', '20', NULL, '2021-07-07 04:41:24'),
(102, 'youtube_link', '0', NULL, NULL),
(103, 'external_website_link', 'https://winztime.com/', NULL, '2021-07-07 04:41:24'),
(104, 'google_map_api', '', NULL, '2021-07-07 04:41:24'),
(105, 'is_pos_purchased', '0', NULL, NULL),
(106, 'admin_version', '4.0.17', NULL, NULL),
(107, 'app_version', '4.0.17', NULL, NULL),
(108, 'web_version', '4.0.17', NULL, NULL),
(109, 'pos_version', '0', NULL, NULL),
(110, 'android_app_link', '#', NULL, NULL),
(111, 'iphone_app_link', '#', NULL, NULL),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2021-06-26 23:29:20'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2021-06-26 23:29:20'),
(114, 'contents', NULL, NULL, NULL),
(115, 'fb_redirect_url', 'https://winztime.com/login/facebook/callback', NULL, '2021-08-26 07:32:03'),
(116, 'google_client_id', '237419119552-1236g8084gtgru94fo998a9et6ag1om5.apps.googleusercontent.com', NULL, '2021-08-29 01:54:18'),
(117, 'google_client_secret', 'Mdg-aI8-LCrMbF8dRSL8Ibbe', NULL, '2021-08-29 01:54:18'),
(118, 'google_redirect_url', 'https://winztime.com/login/google/callback', NULL, '2021-08-29 01:54:18'),
(119, 'newsletter', '0', NULL, '2019-11-01 01:58:36'),
(120, 'allow_cookies', '0', NULL, '2021-06-26 23:29:20'),
(121, 'card_style', '1', NULL, '2019-11-01 01:58:36'),
(122, 'banner_style', '1', NULL, '2019-11-01 01:58:36'),
(123, 'mail_chimp_api', '', NULL, '2019-11-01 01:58:36'),
(124, 'mail_chimp_list_id', '', NULL, '2019-11-01 01:58:36'),
(125, 'newsletter_image', 'images/media/2019/10/newsletter.jpg', NULL, '2019-11-01 01:58:36'),
(126, 'instauserid', '', NULL, '2019-11-01 01:58:36'),
(127, 'web_card_style', '6', NULL, '2020-09-22 14:45:05'),
(128, 'youtube', 'https://youtube.com/channel/UCF_-XYC6abqSxypR4RW1gEg', '2018-04-26 19:00:00', '2021-06-26 23:29:20'),
(129, 'redeem_covertion', '10', '2021-02-10 21:24:29', '2021-07-07 04:41:24'),
(130, 'referral_lpoints', '100', NULL, '2021-07-07 04:41:24'),
(131, 'order_lpoints_percent', '10', NULL, '2021-07-07 04:41:24'),
(132, 'order_lpoints_percent_gold', '12.5', NULL, '2021-07-07 04:41:24'),
(133, 'order_lpoints_percent_platinum', '15', NULL, '2021-07-07 04:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_labels` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Normal Delivery', 1, 'local_pickup', ''),
(7, 'Shipping', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{\"nextDayAir\":\"Next Day Air\",\"secondDayAir\":\"2nd Day Air\",\"ground\":\"Ground\",\"threeDaySelect\":\"3 Day Select\",\"nextDayAirSaver\":\"Next Day AirSaver\",\"nextDayAirEarlyAM\":\"Next Day Air Early A.M.\",\"secondndDayAirAM\":\"2nd Day Air A.M.\"}'),
(13, 'Shipping Price', 1, 'shipping_by_weight', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 0, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_html_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(46, 'Full Page Slider (1170x420)', '0', 2, '664', '', '', '2021-08-31 00:00:00', '2021-07-06 15:59:44', 1, 'product', '2021-07-06 15:59:44', 1),
(47, 'Full Page Slider (1170x420)', '0', 2, '665', '', '', '2021-09-01 00:00:00', '2021-07-06 15:59:58', 1, 'product', '2021-07-06 15:59:58', 1),
(48, 'Full Page Slider (1170x420)', '0', 2, '666', '', '', '2021-08-31 00:00:00', '2021-07-06 16:00:13', 1, 'product', '2021-07-06 16:00:13', 1),
(52, 'Full Page Slider (1170x420)', '0', 2, '670', '', '', '2021-08-31 00:00:00', '2021-07-06 16:02:16', 1, 'product', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`, `created_at`, `updated_at`) VALUES
(2, 'VAT', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley', NULL, '2020-04-05 01:10:00', '2019-09-18 15:33:25', '2021-07-11 10:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `ticket_number` int(222) DEFAULT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `reward_id` int(111) NOT NULL DEFAULT '3',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `custom_name` varchar(222) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `type`, `ticket_number`, `customers_id`, `products_id`, `campaign_id`, `orders_id`, `reward_id`, `status`, `custom_name`, `created_at`, `updated_at`) VALUES
(1, 'O', 1, 64, 43, 6, 1, 3, '1', NULL, '2021-07-13 14:29:43', '2021-07-13 12:29:43'),
(2, 'D', 1, 64, 43, 6, 1, 3, '1', NULL, '2021-07-13 14:29:43', '2021-07-13 12:29:43'),
(3, 'E', 1, 64, 43, 6, 1, 3, '1', NULL, '2021-07-13 14:29:43', '2021-07-13 12:29:43'),
(7, 'E', 2, 69, 42, 11, 2, 4, '1', 'Nikhil Shetty', '2021-07-15 13:53:24', '2021-08-26 07:24:52'),
(8, 'O', 3, 69, 42, 11, 2, 4, '1', 'Nikhil Shetty', '2021-07-15 13:53:24', '2021-08-26 07:24:54'),
(9, 'E', 3, 69, 42, 11, 2, 4, '1', 'Nikhil Shetty', '2021-07-15 13:53:24', '2021-08-26 07:24:56'),
(10, 'O', 1, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(11, 'E', 1, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(12, 'O', 2, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(13, 'E', 2, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(14, 'O', 3, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(15, 'E', 3, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(16, 'O', 4, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(17, 'E', 4, 69, 13, 7, 3, 2, '1', NULL, '2021-07-15 13:54:41', '2021-07-15 11:54:41'),
(18, 'O', 1, 65, 7, 8, 4, 1, '1', 'Abir Ahmed', '2021-07-15 13:55:48', '2021-08-26 10:28:15'),
(19, 'D', 1, 65, 7, 8, 4, 1, '1', 'Abir Ahmed', '2021-07-15 13:55:48', '2021-08-26 10:28:17'),
(20, 'E', 1, 65, 7, 8, 4, 1, '1', 'Abir Ahmed', '2021-07-15 13:55:48', '2021-08-26 10:28:18'),
(21, 'O', 2, 65, 7, 8, 4, 1, '1', 'Sheheryar Khan', '2021-07-15 13:55:48', '2021-08-26 10:30:12'),
(22, 'D', 2, 65, 7, 8, 4, 1, '1', 'Sheheryar Khan', '2021-07-15 13:55:48', '2021-08-26 10:30:14'),
(23, 'E', 2, 65, 7, 8, 4, 1, '1', 'Sheheryar Khan', '2021-07-15 13:55:48', '2021-08-26 10:30:16'),
(24, 'O', 3, 65, 7, 8, 4, 1, '1', 'Mena Abdel Fattah', '2021-07-15 13:55:48', '2021-08-26 10:34:56'),
(25, 'D', 3, 65, 7, 8, 4, 1, '1', 'Mena Abdel Fattah', '2021-07-15 13:55:48', '2021-08-26 10:34:59'),
(26, 'E', 3, 65, 7, 8, 4, 1, '1', 'Mena Abdel Fattah', '2021-07-15 13:55:48', '2021-08-26 10:35:15'),
(33, 'O', 1, 62, 45, 10, 5, 6, '1', NULL, '2021-07-15 13:56:58', '2021-07-15 11:56:58'),
(34, 'D', 1, 62, 45, 10, 5, 6, '1', NULL, '2021-07-15 13:56:58', '2021-07-15 11:56:58'),
(35, 'E', 1, 62, 45, 10, 5, 6, '1', NULL, '2021-07-15 13:56:58', '2021-07-15 11:56:58'),
(36, 'O', 2, 62, 45, 10, 5, 6, '1', NULL, '2021-07-15 13:56:58', '2021-07-15 11:56:58'),
(37, 'D', 2, 62, 45, 10, 5, 6, '1', NULL, '2021-07-15 13:56:58', '2021-07-15 11:56:58'),
(38, 'E', 2, 62, 45, 10, 5, 6, '1', NULL, '2021-07-15 13:56:58', '2021-07-15 11:56:58'),
(39, 'O', 2, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(40, 'E', 2, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(41, 'O', 3, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(42, 'E', 3, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(43, 'O', 4, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(44, 'E', 4, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(45, 'O', 5, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(46, 'E', 5, 69, 43, 6, 6, 3, '1', NULL, '2021-07-15 13:57:40', '2021-07-15 11:57:40'),
(59, 'O', 7, 64, 7, 8, 9, 1, '1', NULL, '2021-07-26 11:31:04', '2021-07-26 09:31:04'),
(60, 'D', 7, 64, 7, 8, 9, 1, '1', NULL, '2021-07-26 11:31:04', '2021-07-26 09:31:04'),
(61, 'E', 7, 64, 7, 8, 9, 1, '1', NULL, '2021-07-26 11:31:04', '2021-07-26 09:31:04'),
(65, 'O', 5, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 09:34:16'),
(66, 'D', 5, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 09:34:18'),
(67, 'E', 5, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 09:34:20'),
(68, 'O', 6, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 09:34:23'),
(69, 'D', 6, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 09:34:25'),
(70, 'E', 6, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 09:34:22'),
(71, 'O', 7, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 07:57:44'),
(72, 'D', 7, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 07:57:43'),
(73, 'E', 7, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 07:57:41'),
(74, 'O', 8, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:51', '2021-08-26 07:57:37'),
(75, 'D', 8, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:52', '2021-08-26 07:57:35'),
(76, 'E', 8, 54, 12, 9, 10, 5, '1', 'Hira Razzak', '2021-08-10 11:23:52', '2021-08-26 07:57:33'),
(77, 'O', 9, 54, 12, 9, 10, 5, '1', 'Abir Ahmed', '2021-08-10 11:23:52', '2021-08-26 07:47:44'),
(78, 'D', 9, 54, 12, 9, 10, 5, '1', 'Abir Ahmed', '2021-08-10 11:23:52', '2021-08-26 07:47:47'),
(79, 'E', 9, 54, 12, 9, 10, 5, '1', 'Abir Ahmed', '2021-08-10 11:23:52', '2021-08-26 07:47:48'),
(80, 'O', 4, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:23:49'),
(81, 'D', 4, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:23:51'),
(82, 'E', 4, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:23:54'),
(83, 'O', 5, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:23:59'),
(84, 'D', 5, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:24:02'),
(85, 'E', 5, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:24:05'),
(86, 'O', 6, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:24:07'),
(87, 'D', 6, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:24:10'),
(88, 'E', 6, 54, 42, 11, 10, 4, '1', 'Nikhil Shetty', '2021-08-10 11:23:52', '2021-08-26 07:24:12'),
(89, 'O', 7, 54, 42, 11, 10, 4, '1', 'Sheheryar Khan', '2021-08-10 11:23:52', '2021-08-25 14:16:55'),
(90, 'D', 7, 54, 42, 11, 10, 4, '1', 'Sheheryar Khan', '2021-08-10 11:23:52', '2021-08-25 14:16:57'),
(91, 'E', 7, 54, 42, 11, 10, 4, '1', 'Sheheryar Khan', '2021-08-10 11:23:52', '2021-08-25 14:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_types`
--

CREATE TABLE `tickets_types` (
  `id` int(11) NOT NULL,
  `inner_type` varchar(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `top_offers`
--

CREATE TABLE `top_offers` (
  `top_offers_id` int(11) NOT NULL,
  `top_offers_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_offers`
--

INSERT INTO `top_offers` (`top_offers_id`, `top_offers_text`, `created_at`, `updated_at`, `language_id`) VALUES
(1, 'Get<strong> UPTO 40% OFF </strong>on your 1st order\r\n <div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n <a href=\\\"/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\nSHOP NOW\r\n</a>\r\n</div>', '2020-04-02 15:56:52', '2020-04-02 16:10:12', 1),
(2, '<p>Get<strong> UPTO 40% OFF </strong>on your 1st order <strong> <a href=\\\"#\\\"> More details </a> </strong></p>', '2020-04-02 15:56:52', '2020-02-04 01:26:53', 2),
(3, 'احصل على <strong> خصم يصل إلى 40٪ </ strong> على طلبك الأول\r\n <div class = \\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n <a href=\\\"/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\nتسوق الآن\r\n</a>\r\n</div>', '2020-04-02 15:56:52', '2020-04-02 16:10:12', 4);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `is_active`, `date_added`, `last_modified`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '2019-01-01 13:04:18', '2019-01-01 13:04:18'),
(2, 1, NULL, NULL, '2019-01-01 13:04:18', '2019-01-01 13:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

CREATE TABLE `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL,
  `units_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_descriptions`
--

INSERT INTO `units_descriptions` (`units_description_id`, `units_name`, `languages_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'kg', 1, 3, NULL, NULL),
(2, 'Gram', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(11) NOT NULL,
  `pickup_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDisplayCal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `redeem_points` int(111) NOT NULL DEFAULT '0',
  `level_id` int(11) NOT NULL DEFAULT '1',
  `user_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marry_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `country_res` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT '0',
  `country_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(33) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `refered_by` int(11) NOT NULL DEFAULT '0',
  `refered_by_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 means reffered ticket is given \r\n1 means have to give referred ticket on 1st purchase',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `redeem_points`, `level_id`, `user_name`, `first_name`, `last_name`, `gender`, `marry_status`, `nationality`, `country_res`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `address`, `refered_by`, `refered_by_status`, `created_at`, `updated_at`) VALUES
(3, 1, 0, 1, 'Admin_admin1594650498', 'Admin', 'admin', NULL, NULL, '', '', 0, NULL, '12345679', 'admin@gmail.com', '$2y$10$takIbmm1LpuT8fyuuX7z1OoH2b73p3zhNk/EfyKId3d/Gmons2LRW', '', '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL),
(4, 14, 0, 1, NULL, 'client', 'client', '1', NULL, '', '', 0, NULL, '312312332', 'client@winztime.com', '$2y$10$takIbmm1LpuT8fyuuX7z1OoH2b73p3zhNk/EfyKId3d/Gmons2LRW', NULL, '0', 1, NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2021-07-06 15:50:45'),
(57, 2, 0, 1, NULL, 'Ali', 'Jaber', NULL, NULL, '', '', 0, NULL, '502801120', 'ali.jaber@winztime.com', '$2y$10$16Arw72OEzWKFK6R/dDO..bmsiKmoi1fDPlxiOS7J7nRojwsjDQvS', NULL, '1', 1, NULL, NULL, NULL, NULL, '', 0, 0, '2021-06-29 05:09:07', '2021-08-14 23:21:01'),
(64, 2, 41, 1, NULL, 'Abir', 'Jaber', NULL, NULL, '', '', 0, NULL, '567594147', 'abirjaber24@gmail.com', '$2y$10$CDRW3Kcx2JLRIl/pPkliYOCf4hMCPazpxG3vzUkB0cBxAW3lZepMW', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-06 04:32:55', '2021-07-12 23:57:13'),
(67, 2, 0, 1, NULL, 'Islam', 'Hafez', NULL, NULL, '', '', 0, NULL, '552801120', 'islam.hafezzz@gmail.com', '$2y$10$xjvVGZDEODOUMFxIRbIk4uoysrVWI6o22JNo4Ri8l2x05F.AJtnvi', NULL, '1', 1, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-06 06:52:01', '2021-07-06 06:52:01'),
(68, 2, 0, 1, NULL, 'Ali', 'Jaber', '0', '0', 'United Kingdom', 'United Arab Emirates', 0, NULL, '+971502801120', 'a_j48@hotmail.com', '$2y$10$iYbD91m5WtylhRvX.go4CubvboacNLAI52l5hJqHr/uAju.3F9.Ra', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-07 07:39:27', '2021-07-07 07:45:29'),
(78, 2, 0, 1, NULL, 'Mohamed', 'Ali', NULL, NULL, '', '', 0, NULL, '+971538952406', 'martel_9@yahoo.com', '$2y$10$vQHmZysTLNSxPSeP18I2ve4o4TyKQy65rSGo1hzfTLHrEElV7BVIe', NULL, '1', 1, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-12 23:46:25', '2021-07-12 23:46:25'),
(79, 2, 0, 1, NULL, 'SYED MINHAJUDDIN', 'MINHAJUDDIN', NULL, NULL, '', '', 0, NULL, '+971566345185', 'mahzoozminhaj@gmail.com', '$2y$10$B5htMnweBXHyAfZdp4BmTepXbrXlsej0kyHHq3SFWTKDVVCt6Q1VS', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-14 00:10:37', '2021-07-14 00:10:37'),
(80, 2, 0, 1, NULL, 'Ricardo', 'Carza', NULL, NULL, '', '', 0, NULL, '+971501974685', 'Ricardocarza46@gmail.com', '$2y$10$dEV7zNTrKr447oLhObtGOOyL7V.wC6dER.xARa.rTtz1SmIQd55l2', NULL, '1', 1, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-14 23:32:47', '2021-07-14 23:32:47'),
(81, 2, 0, 1, NULL, 'Majid Ali', 'Khan', NULL, NULL, '', '', 0, NULL, '+971528378448', 'Alimajid539@Gmail.com', '$2y$10$viC78RUFCTZqvgoS/kHSQexAEIsFyaK.aLSZDMwHX.pBgHV9qWMFW', NULL, '1', 1, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-17 00:25:30', '2021-07-17 00:25:30'),
(82, 2, 0, 1, NULL, 'Haidar', 'Ali', NULL, NULL, '', '', 0, NULL, '+971525312859', 'ha2562726@gmail.com', '$2y$10$3J/TA4pR9Lv6LMBxhpyWUO.VWmIsfgJvjP2Jv3BZJ6.kOTzgYTk9G', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-20 23:57:55', '2021-07-20 23:57:55'),
(83, 2, 0, 1, NULL, 'David', 'Ndidi', NULL, NULL, '', '', 0, NULL, '+971567469472', 'davendidi1978@gmail.com', '$2y$10$47xbt59h1ZHskduztZzwO.t28x0ezCpYrUFf8oHvOWDCJjSvPB3F6', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-21 07:33:58', '2021-07-21 07:33:58'),
(84, 2, 3, 1, NULL, 'Sydney', 'Fernandes', NULL, NULL, '', '', 0, NULL, '+971509903867', 'kingali24@hotmail.com', '$2y$10$zuzDdTrU0R6IVv0NaJ8UZ.6mBjjV5gVVJEM/eBI38y25a0/6NRpGm', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-22 03:29:05', '2021-08-02 01:53:07'),
(85, 2, 0, 1, NULL, 'Mohammed', 'Ershad', NULL, NULL, '', '', 0, NULL, '+971561047773', 'mohdershad90@gmail.com', '$2y$10$kpzwswM.DALdzHDewgCZkuqvF9ehGFFd3Lt854SLoBU1vrwk0Bfi2', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-25 09:39:11', '2021-07-25 09:39:11'),
(86, 2, 0, 1, NULL, 'AnAm', 'Chowdhury', NULL, NULL, '', '', 0, NULL, '+971581440597', 'anamchy1122@gmail.com', '$2y$10$FjC0tHJHqR6Kfl9WvGhN0unbzcGFxQHr.zFE5gvslyHwhADkj1dFO', NULL, '1', 1, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-27 05:11:59', '2021-07-27 05:11:59'),
(87, 2, 0, 1, NULL, 'jaydip', 'tandel', NULL, NULL, '', '', 0, NULL, '0529202001', 'jaydip221122@gmail.com', '$2y$10$qjtoRE734ilJaAUZGLANtOiGMdd90xFk4uVq1S0.2Tino7Xq9OeLy', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-27 03:28:11', '2021-07-27 03:28:11'),
(89, 2, 0, 1, NULL, 'Nour', 'Jaber', NULL, NULL, '', '', 0, NULL, '01000900537', 'njaber22@gmail.com', '$2y$10$h4LZqdj2wG5VwVvz329GOeD/6SqW8YsnqiCRupwar/V29JypcQYs2', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-28 09:24:57', '2021-07-28 09:24:57'),
(90, 2, 0, 1, NULL, 'Sharon', 'Nalukwago', NULL, NULL, '', '', 0, NULL, '522414306', 'sharonnalukwago20@gmail.com', '$2y$10$9k8g3JhKt5.mV3NDoWQOKOeyWrvDBMoUsEkPTvhj5ec9hBgABfL6K', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-29 01:37:30', '2021-07-29 01:37:30'),
(91, 2, 0, 1, NULL, 'Pearl', 'Sharma', NULL, NULL, '', '', 0, NULL, '7973465670', 'pearlsharma1238@gmail.com', '$2y$10$knp0qEYEWDaUnKnxj7Nne.OicWzmHcJ0KIuKpd4wY9/00yiDQzVZO', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-29 01:44:49', '2021-07-29 01:44:49'),
(93, 2, 0, 1, NULL, 'RahulKumar', 'Sharma', NULL, NULL, '', '', 0, NULL, '9803150996', 'rahuldream43@gmail.com', '$2y$10$KNodgxqdHsoHJnAa0/ao0.X9Y7FvErYPqqHsIDkvTRSl5J.U9QKLG', NULL, '1', 1, NULL, NULL, NULL, NULL, '', 0, 0, '2021-07-29 03:12:39', '2021-07-29 03:12:39'),
(105, 2, 0, 1, NULL, 'Saiju', 'Ninan', '0', NULL, '', '', 0, NULL, '503467290', 'Saijuottethu@gmail.com', '$2y$10$F825ARrSEf1IoNRzXDc8g.aMZkyN1IQBr1lkIod9pnM.mr/n/hEzm', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-08-12 01:57:17', '2021-08-12 01:57:17'),
(106, 2, 0, 1, NULL, 'omair', 'ahmed', '0', NULL, '', '', 0, NULL, '+971545580042', 'omairahmed1986@gmail.com', '$2y$10$zz0NvVeFzfbUDxzdkfPwuemcYEpRScwQgva0QLFrFnf2.fuveCo9q', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '2021-08-15 08:38:24', '2021-08-15 08:38:24'),
(111, 2, 250, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'shahrooz.devronix@gmail.com', '$2y$10$kAQMeJ/BdFnW2ZZsgcvdx.oPIrf6ryG0QR/PaDv.d6PqIxGMFokdG', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL),
(112, 2, 0, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'farhan.devronix@gmail.com', '$2y$10$fEGyOJSBB2Hh1AmL/BpFyeBp25uNQUEMXHi4MEuGT9u1nQmLWhEO2', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL),
(114, 2, 0, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'alijaber1981@gmail.com', '$2y$10$6dpn142.RH2D1E3EorvfwuMeE1pZpescqGBex92/vgRQc14dNM67q', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL),
(115, 2, 0, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'omair@digitalsetgo.com', '$2y$10$uJ4TZEkAVoOZkV2j82u8H.jTHU6ueirIvZbIdmTgAEwThutdIFyTe', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL),
(117, 2, 0, 1, NULL, 'Test', 'Test', '0', '1', 'United Arab Emirates', 'United Arab Emirates', 0, NULL, '03102450220', 'testdeveloper69@gmail.com', '$2y$10$A1Z6/TKmc78vCMifLaAahO8qB/BMvNNOiwlB2SR4jUPPm1jcEaPe.', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', '2021-08-24 11:19:00'),
(122, 2, 0, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'abdulhaseeb.devronix@gmail.com', '$2y$10$YeavL0SndV.GJjrr76yazeWSxDvbH9ZH9MRYY0sQheBqdv.JTLv1W', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL),
(123, 2, 0, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'webnappdesigner@gmail.com', '$2y$10$SoPJ4ZrdLV2XejpAjV7WH.XHxdQaDoQKDWPi8f9AwZhbDaUYZmbPC', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL),
(124, 2, 0, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'sheheryar.dev@gmail.com', '$2y$10$XaxJakXn77.lWWdU3K9AHu51EhfOxeE1D1AM/7SAbsjwOEediutuu', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL),
(125, 2, 0, 1, NULL, '', '', NULL, NULL, '', '', 0, NULL, NULL, 'production@digitalsetgo.com', '$2y$10$g2.O0pZy3gK0riTTLQi5BeR78ntSRvmPJS46kyQCgwyZbAyKoiCSi', NULL, '1', 0, NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_export_2021_01_25_11_17_49`
--

CREATE TABLE `user_export_2021_01_25_11_17_49` (
  `COL 1` varchar(5) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL,
  `COL 3` varchar(39) DEFAULT NULL,
  `COL 4` varchar(35) DEFAULT NULL,
  `COL 5` varchar(39) DEFAULT NULL,
  `COL 6` varchar(69) DEFAULT NULL,
  `COL 7` varchar(55) DEFAULT NULL,
  `COL 8` varchar(19) DEFAULT NULL,
  `COL 9` varchar(39) DEFAULT NULL,
  `COL 10` varchar(39) DEFAULT NULL,
  `COL 11` varchar(15) DEFAULT NULL,
  `COL 12` varchar(11) DEFAULT NULL,
  `COL 13` varchar(25) DEFAULT NULL,
  `COL 14` varchar(39) DEFAULT NULL,
  `COL 15` varchar(177) DEFAULT NULL,
  `COL 16` varchar(12) DEFAULT NULL,
  `COL 17` varchar(19) DEFAULT NULL,
  `COL 18` varchar(11) DEFAULT NULL,
  `COL 19` varchar(7) DEFAULT NULL,
  `COL 20` varchar(20) DEFAULT NULL,
  `COL 21` varchar(6) DEFAULT NULL,
  `COL 22` varchar(13) DEFAULT NULL,
  `COL 23` varchar(295) DEFAULT NULL,
  `COL 24` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

CREATE TABLE `user_to_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_types_id` int(11) NOT NULL,
  `user_types_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Customers', 1534777027, NULL, 1),
(3, 'Vendors', 1538390209, NULL, 1),
(4, 'Delivery Guy', 1542965906, NULL, 1),
(5, 'Test 1', 1542965906, NULL, 1),
(6, 'Test 2', 1542965906, NULL, 1),
(7, 'Test 3', 1542965906, NULL, 1),
(8, 'Test 4', 1542965906, NULL, 1),
(9, 'Test 5', 1542965906, NULL, 1),
(10, 'Test 6', 1542965906, NULL, 1),
(11, 'Admin', 1542965906, NULL, 1),
(12, 'Manager', 1542965906, NULL, 1),
(13, 'Data Entry', 1542965906, NULL, 1),
(14, 'Sub Admin', 1594655372, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(3, 'Admin admin', '', '', '2021-08-22 15:', '', ''),
(4, 'client client', '', '', '2021-08-22 16:', '', ''),
(7, '', '', '', '2021-08-23 15:', '', ''),
(8, '', '', '', '2021-08-23 16:', '', ''),
(9, '', '', '', '2021-08-24 10:', '', ''),
(10, '', '', '', '2021-08-24 12:', '', ''),
(12, '', '', '', '2021-08-24 15:', '', ''),
(13, '', '', '', '2021-08-24 16:', '', ''),
(14, '', '', '', '2021-08-24 17:', '', ''),
(15, '', '', '', '2021-08-24 17:', '', ''),
(16, '', '', '', '2021-08-29 16:', '', ''),
(108, ' ', '', '', '2021-08-23 10:', '', ''),
(109, '', '', '', '2021-08-24 12:', '', ''),
(110, ' ', '', '', '2021-08-22 15:', '', ''),
(111, ' ', '', '', '2021-08-24 10:', '', ''),
(112, ' ', '', '', '2021-08-23 10:', '', ''),
(113, ' ', '', '', '2021-08-24 13:', '', ''),
(117, '', '', '', '2021-08-30 17:', '', ''),
(118, '', '', '', '2021-08-24 12:', '', ''),
(120, '', '', '', '2021-08-29 16:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` int(11) NOT NULL,
  `campaigns_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`id`, `campaigns_id`, `customers_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 52, 1, '2021-06-30 11:11:59', '2021-07-06 14:44:34'),
(2, 10, 52, 1, '2021-07-01 12:50:30', '2021-07-01 12:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`user_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `block_ips`
--
ALTER TABLE `block_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `currency_record`
--
ALTER TABLE `currency_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_theme`
--
ALTER TABLE `current_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `delivery_instructions`
--
ALTER TABLE `delivery_instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `http_call_record`
--
ALTER TABLE `http_call_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `lpoints`
--
ALTER TABLE `lpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translation`
--
ALTER TABLE `menu_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_methods_id`);

--
-- Indexes for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_to_categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_types`
--
ALTER TABLE `tickets_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_offers`
--
ALTER TABLE `top_offers`
  ADD PRIMARY KEY (`top_offers_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  ADD PRIMARY KEY (`units_description_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_to_address`
--
ALTER TABLE `user_to_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_types_id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `block_ips`
--
ALTER TABLE `block_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `currency_record`
--
ALTER TABLE `currency_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `current_theme`
--
ALTER TABLE `current_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52892;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1370;

--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `delivery_instructions`
--
ALTER TABLE `delivery_instructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `http_call_record`
--
ALTER TABLE `http_call_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;

--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1034;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=945;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1827;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `lpoints`
--
ALTER TABLE `lpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menu_translation`
--
ALTER TABLE `menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `orders_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  MODIFY `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reviews_description`
--
ALTER TABLE `reviews_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tickets_types`
--
ALTER TABLE `tickets_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_offers`
--
ALTER TABLE `top_offers`
  MODIFY `top_offers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  MODIFY `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `user_to_address`
--
ALTER TABLE `user_to_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
