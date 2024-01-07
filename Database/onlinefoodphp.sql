-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 01:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 6, 'CHICKEN SUBMARINE\r\n\r\n', 'Crispy bits of chicken, tomatoes and bell peppers covered in a lot of cheese', 1050.00, '658eef611c154.png'),
(18, 6, 'CHICKEN SNACKER BURGER', 'Signature chicken snacker made with a crunchy chicken fillet, lettuce & a delicious mayo sauce.', 600.00, '658ef0427704a.png'),
(19, 6, 'CHICKEN CHEESE KOTTU', 'Lankan Fried chicken tossed in a creamy Cheese Rotti base, mixed in with fresh vegetables, and topped with a cheesy Parmesan sauce.', 850.00, '658ef086ebafc.png'),
(20, 7, 'GARLIC PEPPER CUTTLEFISH', '1g cuttlefish cooked in garlic pepper sauce.', 1350.00, '658ef1b470f17.png'),
(21, 7, 'CELERY PAN FRIED CHICKEN\r\n\r\n', '250g of sliced chickren pan fried and mixed with ginger and celery', 1690.00, '658ef3aa0cfe2.png'),
(22, 7, 'PEPPER MASALA BEEF', '250g of sliced beef mixed with masala spices.', 1435.00, '658ef42eb795f.png'),
(25, 9, 'FISH & CHIPS', 'Fish and chips is a classic British dish that consists of deep-fried fish fillets and potato chips (thick-cut fries). The fish fillets are coated in a batter made from flour, water or beer, and seasonings ', 1375.00, '658ef56b52b1a.jpg'),
(26, 9, 'CHICKEN STROGANOFF PASTA', 'Chicken Stroganoff Pasta is a comforting and satisfying dish that can be enjoyed as a main course for lunch or dinner', 1225.00, '658ef5ab78fd8.jpg'),
(27, 9, 'VEGETABLE AND SWEET CORN SOUP', 'Vegetable and Sweet corn soup is a Indo Chinese style soup made with mixed veggies, sweet corn kernels & pepper.', 475.00, '658ef5cead56a.jpg'),
(28, 8, 'SINGAPORE CHILLIE CRAB', 'You’ve heard about it all your life, you might’ve even tried it on its home turf in Singapore. It is probably the most iconic crab dish in the world. It’s grand, it’s bold, it’s fun, and it’s an occasion.', 1250.00, '658ef72e47aa3.jpg'),
(29, 8, 'MIE GORENG', 'this is an Indonesian noodle dish that’s also found in Malaysia and other parts of South East Asia. With a sticky, savoury sweet sauce, noodles are tossed with chicken, prawns, vegetables and signature egg ribbons', 1270.00, '658ef7d2dd835.jpg'),
(30, 8, 'CHICKEN CHOW MEIN', 'A great Chow Mein comes down to the sauce, made of soy sauce, oyster sauce, sesame oil, sugar and cornstarch for thickening. Slippery noodles slick with the savoury sauce is noodle heaven! ', 1209.00, '658ef80e6a926.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(6, 4, 'Cafe Divine Street', 'cafedivinestreet@gmail.com', '+94776992799', 'www.devinestrt.lk', '7am', '8pm', '24hr-x7', 'No 137 Colombo_st Kandy', '658edc493dffc.jpg', '2023-12-30 09:11:32'),
(7, 5, 'Machan Kandy', '<none>', '0817 849 800', 'https://m.facebook.com/MachangPubs', '11am', '11pm', '24hr-x7', 'No 30 George E De Silva Mawatha, Kandy', '658edfebb87f4.jpg', '2023-12-30 09:18:53'),
(8, 3, 'New Flower Song', '<None>', '0812 208 979', '<None>', '10am', '10pm', '24hr-x7', '281 A9, Kandy', '658ee29cbde64.jpg', '2023-12-30 09:13:11'),
(9, 2, 'Open Rice', '<None>', '+94812239111', 'http://www.openrice.lk', '11am', '10pm', '24hr-x7', '855/C Peradeniya Rd, Kandy.', '658ee402b6884.jpg', '2023-12-30 09:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2022-05-27 08:07:35'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'American', '2021-04-07 08:45:28'),
(5, 'Local', '2023-12-30 09:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'shakya', 'Shakya', 'rathnayaka', 'shakya@gmail.com', '0774970885', '5b36eadf7755ea380d6c20ef9e03bf93', 'No 7/16 Uplands Road', 1, '2023-12-30 09:39:59'),

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(10, 1, 'CHICKEN SUBMARINE\r\n\r\n', 1, 1050.00, NULL, '2023-12-30 09:40:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
