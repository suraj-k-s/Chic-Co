-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 12:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chic&co`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'liya ', 'liyamarybiju@gmail.com', '12345'),
(2, 'diya', 'diyadaniel@gmail.com', '7894');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(11) NOT NULL,
  `booking_date` varchar(100) NOT NULL DEFAULT '0',
  `booking_status` varchar(100) NOT NULL DEFAULT '0',
  `booking_amount` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `booking_date`, `booking_status`, `booking_amount`, `user_id`) VALUES
(1, '2023-10-07', '1', 3100, 1),
(2, '2023-10-07', '1', 3100, 1),
(3, '2023-10-07', '1', 3100, 1),
(4, '2023-10-07', '1', 3100, 1),
(5, '2023-10-07', '1', 3100, 1),
(6, '2023-10-07', '1', 3100, 1),
(7, '2023-10-07', '1', 3100, 1),
(8, '2023-10-07', '1', 3100, 1),
(9, '2023-10-07', '1', 3100, 1),
(10, '2023-10-07', '1', 3100, 1),
(11, '2023-10-07', '1', 3100, 1),
(12, '2023-10-07', '1', 3100, 1),
(13, '2023-10-10', '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_quantity` varchar(100) NOT NULL DEFAULT '1',
  `product_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `cart_status` int(11) NOT NULL DEFAULT 0,
  `cart_size` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `cart_quantity`, `product_id`, `booking_id`, `cart_status`, `cart_size`) VALUES
(1, '1', 1, 1, 1, ''),
(2, '1', 2, 2, 1, ''),
(3, '1', 5, 3, 1, ''),
(4, '1', 5, 4, 1, ''),
(5, '1', 12, 5, 1, ''),
(8, '1', 8, 6, 1, ''),
(9, '1', 5, 7, 1, 'M'),
(10, '1', 9, 8, 1, 'L'),
(11, '4', 7, 9, 1, 'S'),
(12, '1', 7, 10, 1, 'XS'),
(13, '1', 23, 11, 1, 'XS'),
(14, '1', 5, 12, 1, 'XS'),
(15, '1', 8, 12, 1, 'XS'),
(16, '1', 5, 13, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(2, 'Womens'),
(3, 'Mens');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complainttype_id` int(11) NOT NULL,
  `complaint_content` varchar(100) NOT NULL,
  `complaint_date` varchar(100) NOT NULL,
  `complaint_reply` varchar(100) NOT NULL DEFAULT 'Not Yet Replyed',
  `user_id` int(11) NOT NULL,
  `complaint_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`complaint_id`, `complainttype_id`, `complaint_content`, `complaint_date`, `complaint_reply`, `user_id`, `complaint_status`) VALUES
(1, 2, 'Too High', '2023-10-10', 'Not Yet Replyed', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complainttype`
--

CREATE TABLE `tbl_complainttype` (
  `complainttype_id` int(11) NOT NULL,
  `complainttype_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complainttype`
--

INSERT INTO `tbl_complainttype` (`complainttype_id`, `complainttype_name`) VALUES
(1, 'Size'),
(2, 'Price'),
(3, 'Quality'),
(4, 'Delivery ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(3, 'Kottayam'),
(4, 'Kollam'),
(5, 'Ernakulam'),
(6, 'Wayanad'),
(7, 'Idukki'),
(8, 'Trivandrum'),
(9, 'Kannur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_content` varchar(100) NOT NULL,
  `feedback_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(1, 'knajirapally', 3),
(2, 'mundakkal', 2),
(3, 'Vytilla', 5),
(4, 'palarivattom', 5),
(5, 'Kattakada', 8),
(6, 'Kowdiyar', 8),
(7, 'Manimala', 3),
(8, 'Kanjirappally', 3),
(9, 'Karunagapally', 4),
(10, 'Sakthikulankara', 4),
(11, 'Sulthan Bathery', 6),
(12, 'Pullpally', 6),
(13, 'Kuttikanam', 7),
(14, 'Vagamon', 7),
(15, 'Payyanur', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_photo` varchar(100) NOT NULL,
  `product_details` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_photo`, `product_details`, `product_price`, `shop_id`, `subcategory_id`) VALUES
(5, 'Oversized printed zip-through hoodie', 'hoodie f 3.jpeg', 'Oversized zip-through hoodie in sweatshirt fabric with a soft brushed inside and a print motif on th', 1600, 1, 10),
(7, 'Sweatshirt', 'hoodie f 5.jpeg', 'Top in soft sweatshirt fabric made from a cotton blend. Relaxed fit with a round neckline, dropped s', 2000, 1, 10),
(8, 'Printed Sweatshirt', 'hoodie f 6.jpeg', 'Short top in sweatshirt fabric with a soft brushed inside and a print motif on the front', 1500, 1, 10),
(9, 'Hoodie', 'hoodie f 9.jpeg', 'Hoodie in sweatshirt fabric made from a cotton blend with a print motif on the front. Jersey-lined, ', 9999, 1, 10),
(10, 'Hoodie Top', 'hoodie f 8.jpeg', 'Hoodie in sweatshirt fabric made from a cotton blend with a print motif on the front. ', 999, 1, 10),
(11, 'Motif-detail sweatshirt', 'hoodie f 10.jpeg', 'Top in sweatshirt fabric made from a cotton blend with a soft brushed inside and a motif on the fron', 2000, 1, 10),
(12, 'Twill overshirt', 'shirt m 1.jpeg', 'Overshirt in twill with a collar, buttons down the front and a yoke at the back. Flap chest pockets ', 1700, 1, 3),
(14, 'Regular Fit Rib-knit resort shirt', 'shirt m 2.jpeg', 'Shirt in a rib-knit viscose and cotton blend. Regular fit with a resort collar, short sleeves and bu', 2000, 1, 3),
(15, 'Relaxed Fit Corduroy shirt', 'shirt m 4.jpeg', 'Relaxed-fit shirt in soft cotton corduroy with a turn-down collar, classic front, an open chest pock', 2500, 1, 3),
(16, 'Cotton shirt Regular Fit', 'shirt m 3.jpeg', 'Short-sleeved shirt in a cotton weave with a turn-down collar and classic front. Yoke at the back, a', 1500, 1, 3),
(17, 'Twill overshirt', 'shirt m 5.jpeg', 'Overshirt in twill with a collar, buttons down the front and a yoke at the back.', 2350, 1, 3),
(18, 'Oversized Fit Resort shirt', 'shirt m 6.jpeg', 'This oversized shirt is made from a patterned viscose weave. Resort collar, a French front, yoke at ', 20000, 1, 3),
(19, 'Relaxed Fit Tailored trousers', 'trousers m 1.jpeg', 'Relaxed-fit trousers in twill with a zip fly with a concealed button and hook-and-eye fastening.', 4000, 1, 5),
(20, 'Loose Fit Cargo trousers', 'trousers m 2.jpeg', 'Loose-fit trousers in a cotton twill weave with a regular waist with covered elastication and a draw', 5000, 1, 5),
(21, 'Loose Fit Parachute trousers', 'trousers m 3.jpeg', 'Parachute trousers in a woven cotton blend. Loose fit with a fake fly, covered elastication at the w', 3000, 1, 5),
(22, 'Regular Fit Ripstop cargo trousers', 'trousers m 4.jpeg', 'Regular-fit cargo trousers in a hard-wearing ripstop weave.', 3000, 1, 5),
(23, 'Regular Fit Linen-blend trousers', 'trousers m 5.jpeg', 'Trousers in an airy cotton and linen weave. Regular fit with covered elastication and a drawstring a', 4000, 1, 5),
(24, 'Relaxed Fit Cotton cargo joggers', 'trousers m 6.jpeg', 'Joggers in cotton twill with covered elastication and a drawstring at the waist. ', 3000, 1, 5),
(25, 'Wide High Jeans', 'jeans f 1.jpeg', '5-pocket jeans in washed cotton denim with a high waist, zip fly and button and wide, straight legs.', 3000, 1, 8),
(26, 'Bootcut High Jeans', 'jeans f 2.jpeg', '5-pocket jeans in cotton denim with a slight stretch for good comfort. Bootcut leg with a slim fit f', 2500, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `request_id` int(11) NOT NULL,
  `request_fordate` varchar(222) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `request_address` varchar(222) NOT NULL,
  `request_details` varchar(222) NOT NULL,
  `request_time` varchar(222) NOT NULL,
  `request_date` varchar(222) NOT NULL,
  `request_image` varchar(222) NOT NULL,
  `request_contact` varchar(222) NOT NULL,
  `request_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`request_id`, `request_fordate`, `subcategory_id`, `request_address`, `request_details`, `request_time`, `request_date`, `request_image`, `request_contact`, `request_status`, `user_id`, `shop_id`) VALUES
(3, '2023-10-10', 7, 'Adddress', 'Details', '14:38', '2023-10-10', 'dc.png', '1236789', 5, 1, 1),
(5, '2023-06-14', 7, 'ffatftft', 'drda', '23:09', '2023-10-10', 'AtosaEDIT.jpg', '9867264156', 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `review_datetime` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_review` varchar(100) NOT NULL,
  `user_rating` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop`
--

CREATE TABLE `tbl_shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `shop_contact` varchar(100) NOT NULL,
  `shop_address` varchar(100) NOT NULL,
  `shop_email` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL,
  `shop_photo` varchar(100) NOT NULL,
  `shop_proof` varchar(100) NOT NULL,
  `shop_status` varchar(100) NOT NULL DEFAULT '0',
  `shop_password` varchar(100) NOT NULL,
  `shop_doj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shop`
--

INSERT INTO `tbl_shop` (`shop_id`, `shop_name`, `shop_contact`, `shop_address`, `shop_email`, `place_id`, `shop_photo`, `shop_proof`, `shop_status`, `shop_password`, `shop_doj`) VALUES
(1, 'Clara Crew', '9778509413', 'Kizhakemuri Kanjirapally Po Kottayam', 'sandrasunil@gmail.com', 1, 'shop1.jpg', 'OIP.jpg', '1', '123456', 20230911),
(2, 'Jovial ', '6237798603', 'Chalil House Kattakada Po,Trivandrum', 'joyalv@gmail.com', 5, 'Desert.jpg', 'dcsmat.jpg', '2', '09876', 20231010),
(3, 'You & Me', '8547203894', 'Madukkuzhi House Palarivattom PO,Ernakulam', 'abhijith12@gmail.com', 4, 'AtosaEDIT.jpg', 'dc.png', '0', '1234789', 20231010);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_quantity` varchar(100) NOT NULL,
  `stock_date` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `stock_quantity`, `stock_date`, `product_id`) VALUES
(1, '1000', '2023-09-11', 1),
(2, '15', '2023-09-11', 2),
(3, '5', '2023-09-11', 3),
(4, '10', '2023-09-11', 4),
(5, '15', '2023-09-11', 5),
(6, '11', '2023-09-18', 5),
(7, '5', '2023-09-18', 7),
(8, '10', '2023-09-18', 8),
(9, '15', '2023-09-18', 9),
(10, '14', '2023-09-18', 10),
(11, '10', '2023-09-18', 11),
(12, '6', '2023-09-18', 12),
(13, '5', '2023-09-18', 13),
(14, '17', '2023-09-18', 14),
(15, '10', '2023-09-18', 15),
(16, '5', '2023-09-18', 16),
(17, '2', '2023-09-18', 17),
(18, '5', '2023-09-18', 18),
(19, '15', '2023-09-18', 19),
(20, '13', '2023-09-18', 20),
(21, '10', '2023-09-18', 21),
(22, '15', '2023-09-18', 22),
(23, '10', '2023-09-18', 23),
(24, '15', '2023-09-18', 24),
(25, '10', '2023-09-18', 25),
(26, '15', '2023-09-18', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(1, 'T-shirts', 3),
(2, 'Jeans', 3),
(3, 'Shirt', 3),
(4, 'Hoodies', 3),
(5, 'Trousers', 3),
(7, 'Tops', 2),
(8, 'Jeans', 2),
(9, 'Dresses', 2),
(10, 'Hoodies', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_contact` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_proof` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_dob` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_contact`, `user_email`, `user_address`, `user_password`, `user_photo`, `user_proof`, `place_id`, `user_gender`, `user_dob`) VALUES
(1, 'Divya daniel', '9526622321', 'divyadaniel@gmail.com', 'Canaan House No148c Mundakkal West Po Kollam', '789456', 'OIP.jpg', 'four str.png', 2, 'female', 2004);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  ADD PRIMARY KEY (`complainttype_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_shop`
--
ALTER TABLE `tbl_shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  MODIFY `complainttype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shop`
--
ALTER TABLE `tbl_shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
