-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 02:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_googleauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2021_12_07_073735_create_preferences_table', 1),
(26, '2021_12_13_101004_create_units_table', 2),
(27, '2021_12_13_103012_create_visitor_table', 3),
(28, '2021_12_13_114047_create_orders_table', 4),
(29, '2021_12_13_123725_create_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_name`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Jeans 0', '1', '1500', '2018-12-05 11:46:12', NULL),
(2, 'Jeans 1', '2', '1700', '2018-12-10 11:46:12', NULL),
(3, 'Jeans 2', '3', '1500', '2018-12-05 11:46:12', NULL),
(4, 'Jeans 3', '4', '1700', '2018-12-10 11:46:12', NULL),
(5, 'Jeans 4', '5', '1500', '2018-12-05 11:46:12', NULL),
(6, 'Jeans 5', '6', '1700', '2018-12-10 11:46:12', NULL),
(7, 'Jeans 6', '7', '1500', '2018-12-05 11:46:12', NULL),
(8, 'Jeans 7', '8', '1700', '2018-12-10 11:46:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `year`, `product_type`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 1000, 2020, 'phone', '2021-12-01 12:41:26', NULL),
(2, 'Product 2', 1500, 2019, 'phone', '2020-12-09 12:41:33', NULL),
(3, 'Product 1', 1200, 2018, 'phone', '2019-12-04 12:41:50', NULL),
(4, 'Product 2', 13000, 2020, 'laptop', '2018-12-19 12:41:57', NULL),
(5, 'Product 1', 1400, 2019, 'laptop', '2017-12-20 12:42:07', NULL),
(6, 'Product 2', 1100, 2018, 'laptop', '2016-12-19 12:42:15', NULL),
(7, 'Product 1', 1700, 2020, 'tablet', '2015-12-15 12:42:23', NULL),
(8, 'Product 2', 1800, 2019, 'tablet', '2014-12-17 12:42:31', NULL),
(9, 'Product 2', 1800, 2018, 'tablet', '2014-12-17 12:42:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manglik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-image.jpg',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `dob`, `gender`, `occupation`, `income`, `family_type`, `manglik`, `email`, `email_verified_at`, `google_id`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'FirstnameNmLastname', 'User', '1995-03-26', 'Female', 'Private Job', '5 Lac', 'Joint family', 'No', 'UserU76@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$yJ2I2z4L17hUqRXLfjGcJOGbq3uo2ifIkouTztp3aruaY9b5ARYPG', NULL, NULL, NULL),
(2, 'Firstname9CLastname', 'User', '1993-07-06', 'Female', 'Private Job', '7 Lac', 'Joint family', 'No', 'UserKck@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$cHBVr0R6IUnAnvenkIQdwOmNFksMHBG9xFA8pT/wsxx1aFM22k7E.', NULL, NULL, NULL),
(3, 'FirstnameKOLastname', 'User', '1995-09-17', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'UserBSH@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$qM7qSFtz/bzJ9IU230M1xuOjHtXzPKtz3iBr9fQ0qcZw.B2k0ntP.', NULL, NULL, NULL),
(4, 'FirstnameMCLastname', 'User', '1994-08-11', 'Female', 'Private Job', '5 Lac', 'Joint family', 'No', 'UserfBg@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$fEn8jjmDg7sYQvHBjBykAeOgTWpbHjm3VflORsS/bnrmnInoF2w2m', NULL, NULL, NULL),
(5, 'FirstnamexzLastname', 'User', '1991-11-19', 'Female', 'Private Job', '6 Lac', 'Joint family', 'No', 'Userd6N@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$lb/grgZE5KF8vCtZULFmXOSEL6JRPhH3oNu7Xa/gMmB8uyd2U1Eba', NULL, NULL, NULL),
(6, 'FirstnamenkLastname', 'User', '1998-12-17', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'UserF6X@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$fmKfZAW9Oo.3w3fA6fO2nOVeO/tsF67wfSiGnl2gb9pUheiQtHmb.', NULL, NULL, NULL),
(7, 'Firstnamel3Lastname', 'User', '1993-08-28', 'Female', 'Private Job', '5 Lac', 'Joint family', 'No', 'User8km@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$cqRJC3DumnpFtR/vUOt3yeN0RGaNIwwDCIOiUWuOMgDerfPygrCY2', NULL, NULL, NULL),
(8, 'FirstnameAQLastname', 'User', '1992-03-04', 'Female', 'Private Job', '2 Lac', 'Joint family', 'No', 'Userz1L@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$m.rN9opTniYkorc.4fjzC.oULooe03Xf0cJ90pmNB3is511FTqvzG', NULL, NULL, NULL),
(9, 'FirstnameWtLastname', 'User', '1996-09-15', 'Female', 'Private Job', '9 Lac', 'Joint family', 'No', 'UserdkP@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$ejwd9kSnpsoYJk8YIVKufeDQj2/IJkfa05OSXWtW3WcMjdkcdMo6i', NULL, NULL, NULL),
(10, 'FirstnameiJLastname', 'User', '1992-02-04', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'UserGQo@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$0Pwse5jaWNOP2qmnEnGRS.KL7jmvlttEn9jn6YzGVsUkqlHJSSAkq', NULL, NULL, NULL),
(11, 'SuperAdmin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 'Admin@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$PNuVza7JnmYUcvxNp9jNNuk1MQPsHr1ujeLZkG4Kyr7D6aECRlu12', NULL, NULL, NULL),
(13, 'Eishwar Patley', 'User', '1990-10-24', 'Male', 'Private job', '7 Lac', 'Joint Family', 'No', 'eishwar9@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$K74kJFM0W25Ap64qwCFx6eU/QunETVJi0k6cLzEBfzShj8e/wOkUW', NULL, '2021-12-11 08:57:33', '2021-12-11 08:57:33'),
(14, 'FirstnameHwLastname', 'User', '1994-03-05', 'Female', 'Private Job', '4 Lac', 'Joint family', 'No', 'UserjmL@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$rsTYdR8wLd6IMhw/EqUagegMXCED.Ssx1OaZ3Iwamn37gCA6HrnRC', NULL, NULL, NULL),
(15, 'FirstnameoVLastname', 'User', '1997-04-23', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'UserZEC@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$5/Rnndt9X9YTTBDs8YknWu/usHO/rmXMer0PKgSCjptp0lb6DuIpS', NULL, NULL, NULL),
(16, 'FirstnameVVLastname', 'User', '1996-06-09', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'User7WO@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$e5JdPENMtyHZO/j5ZRuxVuMyxOYfV9wI57fO3fYXbA5hwnBLCSOMi', NULL, NULL, NULL),
(17, 'FirstnameO3Lastname', 'User', '1997-10-25', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'Userm5T@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$mJnEA7SCbjLrfb9AqhCTsuJ62jFhL.agwExreqKkrFGuqs8XnmWPa', NULL, NULL, NULL),
(18, 'FirstnameZXLastname', 'User', '1999-07-30', 'Female', 'Private Job', '7 Lac', 'Joint family', 'No', 'UserEvZ@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$iLiDn44NJoujLwRVdscpNesjd.Tv6gdoYqJFAyOinmmVKrk1DaMXG', NULL, NULL, NULL),
(19, 'FirstnameF0Lastname', 'User', '1996-06-06', 'Female', 'Private Job', '6 Lac', 'Joint family', 'No', 'UserNOt@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$WsISELBwQT1EKaDGnJU.ROdLeQ4mcNo.8xlgbu3QcusQlLUMQOmJq', NULL, NULL, NULL),
(20, 'FirstnameyZLastname', 'User', '1996-04-11', 'Female', 'Private Job', '4 Lac', 'Joint family', 'No', 'UserlUV@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$HNRB049SpNCRNT3fn9NjwOh3qrTMehcTsPlfKJyzzlLPJMYwbrbH2', NULL, NULL, NULL),
(21, 'FirstnamedWLastname', 'User', '1999-02-14', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'User6G7@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$UbO6BshsR6qWp9BSJBaEdOLbREI71E1eHDd4UY5edMuQ6kQyjq2d.', NULL, NULL, NULL),
(22, 'Firstname6yLastname', 'User', '1997-02-05', 'Female', 'Private Job', '4 Lac', 'Joint family', 'No', 'UserM8i@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$cQiomv8SADxHWpzaru/.QOUv0Yk/rx7EKiwTb34kWo/t6cYVi2CNq', NULL, NULL, NULL),
(23, 'FirstnameWfLastname', 'User', '1990-06-27', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'UsertgS@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$V2PWLmP44/wtidziVzV0oOwxe.4DAetAMcGHjLerDCZQ13LjOc.52', NULL, NULL, NULL),
(25, 'The Gamer', 'User', NULL, NULL, NULL, NULL, NULL, NULL, 'spikob@gmail.com', NULL, '103430450157395410582', 'no-image.jpg', '$2y$10$fHD7Bsoal5Z0zT.wlkx4b.6IvMepR2pqimLBKtQaPyNd688c8pfZC', NULL, '2021-12-12 01:26:37', '2021-12-12 01:26:37'),
(26, 'Firstname mc', 'User', '1994-07-29', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UserCve@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$OlJCZXMMoSeMltOO8A9aQezL3vcwbtOHnjp12UqSHDhdEC1L5fSMy', NULL, NULL, NULL),
(27, 'Firstname cZ', 'User', '1998-12-06', 'Female', 'Private Job', '2 Lac', 'Joint family', 'No', 'UserrBa@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$MS3BqvDNg8oBG.q/TPVCB.NHkD5JtnlW8y5rJQxCbg3pIeHJZpopW', NULL, NULL, NULL),
(28, 'Firstname D7', 'User', '1997-08-05', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'UserITQ@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$P828TYbBrMvXTrCpM1ZRZuICdf2sgkp5bbpFwMvUJPeruM.nOSRDu', NULL, NULL, NULL),
(29, 'Firstname ZL', 'User', '1999-08-16', 'Female', 'Private Job', '5 Lac', 'Joint family', 'No', 'UserFAu@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$s03wTsyX5JfXRgb5/qo0XOh93FqVwDZdduY2UJDjBQhFjV5pkNjuy', NULL, NULL, NULL),
(30, 'Firstname aX', 'User', '1990-11-28', 'Female', 'Private Job', '9 Lac', 'Joint family', 'No', 'Userqgy@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$6Rt1yIAHDRkD60P.BMlZeegr3hf0.LfTeXtLPEyq8lVBMmutv3QKC', NULL, NULL, NULL),
(31, 'Firstname bE', 'User', '1997-03-26', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UserGjC@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$4yMYt9OLr9g1oRXQka2YMOXgjf3hICjVCNNnkJsexcZiJ7HDLZ1ia', NULL, NULL, NULL),
(32, 'Firstname Zp', 'User', '1990-07-05', 'Female', 'Private Job', '6 Lac', 'Joint family', 'No', 'User470@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$8hJYu7yBZhglmJBkNzo2Kujx6Qxw9jSMGxHOFKG14XalxLppyUnAa', NULL, NULL, NULL),
(33, 'Firstname 4Z', 'User', '1995-01-25', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'User4LW@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$EDZm7MAgZJvqkBwmgSFqM.57FhtCnouGZhs1HCQ9jGC5aEp16HDw2', NULL, NULL, NULL),
(34, 'Firstname En', 'User', '1995-06-01', 'Female', 'Private Job', '4 Lac', 'Joint family', 'No', 'UserPoY@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$.ZCfeef8rzoxozmEgpbbkenIelMysaiQm0At0Vnws6LNq3be7.1di', NULL, NULL, NULL),
(35, 'Firstname Og', 'User', '1996-12-27', 'Female', 'Private Job', '4 Lac', 'Joint family', 'No', 'UserK5Q@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$I0cv0fOxYFgCUJN4/qTHleloutL360WPr5yNVkRjTUTSltPeU79Ua', NULL, NULL, NULL),
(37, 'Firstname 8B', 'User', '1998-09-30', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UserI2w@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$1q4.RFSRAWdbO73LXvAA3OsSuYxFZpGJbLVc8UmEIvxWE8nzSeChe', NULL, NULL, NULL),
(38, 'Firstname Aa', 'User', '1991-11-26', 'Female', 'Private Job', '4 Lac', 'Joint family', 'No', 'User1JY@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$HDDw5CBx71UH9KevZVJzNO18mLJ4ZnKGU.hjBuLyDDh3zKO7z3eO.', NULL, NULL, NULL),
(39, 'Firstname Vw', 'User', '1999-05-23', 'Female', 'Private Job', '9 Lac', 'Joint family', 'No', 'Usermvm@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$775jDQZ0ekSCNZI9fct4suEOo1TQskJxE.GjvqRAHlOAH8MXqdWJK', NULL, NULL, NULL),
(40, 'Firstname Qt', 'User', '1992-09-01', 'Female', 'Private Job', '6 Lac', 'Joint family', 'No', 'User8rI@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$V/bJX1U94PHmCPFBWFRxM.59qskbq53by1YHOHwH9LnuFKf62aCCa', NULL, NULL, NULL),
(41, 'Firstname l6', 'User', '1996-10-16', 'Female', 'Private Job', '4 Lac', 'Joint family', 'No', 'UsergKx@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$J9LDohbDTrqm.YLGKFpv3ODMdOEHXzdEU.QJJnVbUPtTvPY3CoMmu', NULL, NULL, NULL),
(42, 'Firstname F3', 'User', '1990-02-02', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'UserLks@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$TzkCNqLOIBT1rFpDkPrn5OFj4ZiVd948vcdx4mB2llcwd67UD8qum', NULL, NULL, NULL),
(43, 'Firstname we', 'User', '1997-08-01', 'Female', 'Private Job', '7 Lac', 'Joint family', 'No', 'Userqgx@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$GAmTn.JjKKS2UxPt5kxPx.dahaSU3OlUlr.uMMCd5vztcUoEKtOUC', NULL, NULL, NULL),
(44, 'Firstname uZ', 'User', '1996-05-11', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'UserXUx@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$j3PSTgArwMPa3YquH250ZuFfBb3BYkf7Upzy5JIte5UjlgTol4mx6', NULL, NULL, NULL),
(45, 'Firstname a9', 'User', '1997-09-02', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'Usery1F@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$ds2/34QZseqM.NHZIIQjleM0qIzLIZU4tnl4nmhUT/7VmZt0POPc6', NULL, NULL, NULL),
(46, 'Firstname Vk', 'User', '1998-04-11', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'UserR7e@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$/lpydjDBOlkQ8i2GD46laezI6qvWHfp4j2nj19Im0Pw/z5Z2AyBp6', NULL, NULL, NULL),
(48, 'Firstname N3', 'User', '1997-07-26', 'Female', 'Private Job', '6 Lac', 'Joint family', 'No', 'User8zs@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$sP9p7H2VTyt6VCAw4FaZP.LITK.z0w9M5UdfrdiGJYOMizAYgF8DS', NULL, NULL, NULL),
(49, 'Firstname Cb', 'User', '1999-09-07', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UsertWm@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$VkQTZmXiXHYigOLdzPXjBuD0GuC1y6qQqiUFF66QVyp2/8pGW6qna', NULL, NULL, NULL),
(50, 'Firstname po', 'User', '1992-08-01', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'Usert04@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$xBBYxApKrCBAMioXrUQsbOb0McRnI7SVAHT7TxV/7oZqPYQHHsI56', NULL, NULL, NULL),
(51, 'Firstname f7', 'User', '1992-08-13', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UsersPd@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$yZ3z5CLUXukQyeDP.pO.Qu0Hr7Du4LjyfkzuU6q5xMUGMV6UaXNuG', NULL, NULL, NULL),
(52, 'Firstname 3h', 'User', '1998-09-12', 'Female', 'Private Job', '5 Lac', 'Joint family', 'No', 'Usertpc@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$e29Yz7pUtnmW3aZIyEw3YOwFsMgDhOfXZjnzh0jgkutYprTIeA2Ni', NULL, NULL, NULL),
(53, 'Firstname YQ', 'User', '1997-11-03', 'Female', 'Private Job', '5 Lac', 'Joint family', 'No', 'UserT53@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$rQDyHRGk7DbbTTE33/Cg/O8QwuMvFPP0UturKKIjKAjHEJOTAuW7a', NULL, NULL, NULL),
(54, 'Firstname MF', 'User', '1997-11-14', 'Female', 'Private Job', '7 Lac', 'Joint family', 'No', 'UserrE0@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$uvVqWWJKyaFFpffsQrR5AOB/vZ0KFzArbCebzpNLXRcwkcNFKj7wa', NULL, NULL, NULL),
(55, 'Firstname rj', 'User', '1995-09-08', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'UserHJM@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$0MEisqZZZkUfFLfl.2BGz.SRYVD4M4rD9bH5YfTsjF1jjxYBn/g.i', NULL, NULL, NULL),
(56, 'Firstname hL', 'User', '1999-04-29', 'Female', 'Private Job', '9 Lac', 'Joint family', 'No', 'UserHww@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$GpQWN8YuF8HuiagPa5Ur5uH.pWQmYQoJql8U3H9FAahoub7jDlR3y', NULL, NULL, NULL),
(57, 'Firstname 4H', 'User', '1997-08-22', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'User8Hm@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$zS/9SHacThsk9Lxevs6PuOXCxfqn5eRXkbHoc5HFxX.ZJ0bOt.vD.', NULL, NULL, NULL),
(59, 'Firstname sd', 'User', '1999-06-29', 'Female', 'Private Job', '7 Lac', 'Joint family', 'No', 'Useriz3@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$a.Mlu5b2JJUD6k/XSjHmfeDD6Aq.D2bygiINsVn1ll5dvuiw60a6u', NULL, NULL, NULL),
(60, 'Firstname yz', 'User', '1999-04-14', 'Female', 'Private Job', '9 Lac', 'Joint family', 'No', 'UserxyE@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$mdqPqjuJPZDAU8/t.RmYjOyNb09Mpvf239hxSGpzDmiQ9LpKrPS52', NULL, NULL, NULL),
(61, 'Firstname J6', 'User', '1999-03-27', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UserQ1l@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$qoKEHx10iwnNkygsYhL1N.v2P4wHFu3r8RpoZhCgGMgodz66dDB3e', NULL, NULL, NULL),
(62, 'Firstname 4M', 'User', '1991-04-04', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UseraOn@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$woxnHRLidxFhsXIQz6Vhe.4kxlx3/ylyh3Lt37XxJRkPv40DEGPdC', NULL, NULL, NULL),
(63, 'Firstname BJ', 'User', '1998-11-29', 'Female', 'Private Job', '7 Lac', 'Joint family', 'No', 'UsernSz@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$/ApVfKTSr7.K08FxiVshnO3An4MX6SoBDYm4a8nNTxiot7/SEmePO', NULL, NULL, NULL),
(64, 'Firstname sg', 'User', '1994-10-28', 'Female', 'Private Job', '1 Lac', 'Joint family', 'No', 'UserHlX@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$iQ7XlYAi6KE.A5lau6iTD.FF.v/JVLNS7R8BU6sT9j54VvHKHtYyO', NULL, NULL, NULL),
(65, 'Firstname SN', 'User', '1993-07-21', 'Female', 'Private Job', '9 Lac', 'Joint family', 'No', 'UserLSk@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$szkcr15araFwM3Pot1nVQuqsyAxlb3n6WylAL/wcs8.8wRiyBjQNi', NULL, NULL, NULL),
(66, 'Firstname ng', 'User', '1991-11-13', 'Female', 'Private Job', '5 Lac', 'Joint family', 'No', 'UserJEz@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$tm1HnLsLrkmHVCmWxmAZ9.7QmNnnJsEgsLv0IMkk7o1WCN2WAdeyq', NULL, NULL, NULL),
(67, 'Firstname Uo', 'User', '1994-10-28', 'Female', 'Private Job', '8 Lac', 'Joint family', 'No', 'UserMmn@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$MjAKk/mtpwwv4FN/6crkpOmGu0cikkboOUxPR85pcfUQ/W/310yLm', NULL, NULL, NULL),
(68, 'Firstname zm', 'User', '1990-02-25', 'Female', 'Private Job', '3 Lac', 'Joint family', 'No', 'UserMtx@gmail.com', NULL, NULL, 'no-image.jpg', '$2y$10$cxMsDShJ0lyZUkLiSBqiUuHGQjXbuVaCxNKVpUUN1wjDLLPtVwcSe', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `click` int(11) NOT NULL,
  `viewer` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `click`, `viewer`, `created_at`, `updated_at`) VALUES
(1, 45, 30, '2021-12-17 10:41:03', NULL),
(2, 89, 56, '2020-12-09 10:41:03', NULL),
(3, 14, 30, '2019-12-11 10:41:03', NULL),
(4, 87, 52, '2018-12-13 10:41:03', NULL),
(5, 45, 30, '2017-12-07 10:41:03', NULL),
(6, 65, 75, '2016-12-06 10:41:03', NULL),
(7, 45, 30, '2015-12-07 10:41:03', NULL),
(8, 35, 84, '2021-12-01 10:41:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
