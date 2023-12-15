-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2023 lúc 11:53 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile_store`
--
CREATE DATABASE mobile_store;
USE mobile_store;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `role` tinyint(1) DEFAULT 0,
  `Phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `email`, `password`, `display_name`, `address`, `role`, `Phone`) VALUES
(1, '123@gmail.com', '$2a$12$RzCfY8Nah9t.6tVMlKonY.mojrqap/z0eI7D7dYI8N/49TkeD34vy', 'Dang Minh Chau', 'Ho Chi Minh ', 0, '0399944574'),
(44, 'admin@gmail.com', '$2a$12$YK2lWgVZSHT5j1PSvfNKIOXAHarr3mr5wCoSu5e837WlNMgf6HEZS', 'Long', '44 Le Van Chi - Linh trung - Thu Duc', 1, '0816904167'),
(60, 'test@gmail.com', '$2a$12$6v2Py25ITQFwJ7KcnHDCu.CJ//x1NYh5nd29bauyeZoKbSDT9eG6e', 'Test ', 'Äáº¡i há»c SÆ° Pháº¡m Ká»¹ Thuáº­t TP.HCM ', 0, '0816904167'),
(61, '12345@gmail.com', '$2a$12$ZrpM2sbX1hMf9cO0EWOoXO7fr5prp.z4tHwDz1B/FcVhSKqC4LMRq', 'cam hanh', 'HCM', 0, '0909353535'),
(62, '123456@gmail.com', '$2a$12$I/Xop278e5Q1KE/k5W9Gne7ZPGGR3tF/e6y8MewKe3tokoZ3CyORy', 'Cam Hanh', 'HCM', 1, '0909353535'),
(65, 'camhong@gmail.com', '$2a$12$etx5uh37BJ7VE5sJp5rrAuuG0I7tBKFeFVFEEwAEiwSeYZ/4veq1W', 'Cam Hong', 'HCM', 0, '0816904167');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(16, 1, 11, 1, 368000),
(17, 33, 11, 1, 450000),
(18, 7, 11, 1, 461000),
(19, 3, 14, 6, 4710000),
(20, 4, 14, 7, 4676000),
(21, 5, 14, 1, 785000),
(22, 6, 14, 1, 539000),
(23, 7, 14, 1, 461000),
(24, 8, 14, 2, 716000),
(25, 10, 14, 3, 2943000),
(26, 11, 14, 1, 457000),
(27, 12, 14, 1, 457000),
(28, 13, 14, 1, 452000),
(29, 14, 14, 3, 1281000),
(30, 18, 14, 4, 3924000),
(31, 19, 14, 1, 1305000),
(32, 22, 14, 1, 1305000),
(33, 23, 14, 1, 814000),
(34, 27, 14, 1, 548000),
(35, 28, 14, 1, 489000),
(36, 30, 14, 2, 1096000),
(37, 32, 14, 2, 978000),
(38, 35, 14, 1, 750000),
(39, 38, 14, 1, 670000),
(40, 39, 14, 1, 670000),
(41, 40, 14, 2, 678000),
(42, 41, 14, 1, 457000),
(43, 43, 14, 2, 854000),
(44, 44, 14, 1, 500000),
(45, 46, 14, 1, 82000),
(46, 47, 14, 1, 265000),
(47, 49, 14, 2, 162000),
(48, 50, 14, 1, 460000),
(50, 38, 15, 1, 670000),
(51, 12, 15, 1, 457000),
(52, 44, 15, 1, 500000),
(53, 18, 16, 5, 4905000),
(54, 13, 16, 1, 452000),
(55, 1, 17, 1, 33890000),
(56, 56, 17, 1, 10490000),
(57, 27, 17, 1, 21990000),
(58, 29, 17, 1, 21990000),
(59, 48, 18, 1, 22990000),
(60, 19, 19, 1, 27490000),
(61, 5, 19, 1, 28290000),
(62, 46, 19, 1, 29990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text NOT NULL,
  `payments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `email`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`, `payments`) VALUES
(11, '123@gmail.com', '123', 'abc', 'hcm', 0, 0, 'giao nhanh nhat co the ', 'Credit and Debit Cards'),
(12, '123@gmail.com', '123', 'abc', 'hcm', 0, 0, 'null', 'null'),
(13, '123@gmail.com', '123', 'abc', 'hcm', 0, 0, 'null', 'null'),
(14, '123@gmail.com', '123', 'abc', 'hcm', 0, 0, 'Giao nhanh nhat co the ', 'Credit and Debit Cards'),
(15, '12345@gmail.com', '0909353535', 'cam hanh', 'HCM', 0, 0, '', 'Bank Transfers'),
(16, 'camhong@gmail.com', '0909353535', 'CÃ¡ÂºÂ©m HÃ¡Â»Âng', 'HCM', 0, 0, 'KO giao vao chu nhat ', 'Cash On Delivery'),
(17, '12345@gmail.com', '0909353535', 'cam hanh', 'HCM', 0, 0, '', 'Cash On Delivery'),
(18, '12345@gmail.com', '0909353535', 'cam hanh', 'HCM', 0, 0, '', 'Cash On Delivery'),
(19, 'camhong@gmail.com', '0816904167', 'Cam Hong', 'HCM', 0, 0, '', 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(1, 'Apple', NULL),
(2, 'Samsung', NULL),
(3, 'Oppo', NULL),
(4, 'Xiaomi', NULL),
(5, 'Other', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `img`) VALUES
(1, 1, 'MidnightBlue', 'iphone_15_pro_max_blue.png'),
(2, 2, 'DarkGray', 'iphone-15-pro-max.png'),
(3, 3, 'White', 'iphone_15_pro_max_white.png'),
(4, 4, 'Black', 'iphone_15_pro_max_black.png'),
(5, 5, 'MidnightBlue', 'iphone_15_pro_blue.png'),
(6, 6, 'DarkGray', 'iphone-15-pro.png'),
(7, 7, 'White', 'iphone_15_pro_white.png'),
(8, 8, 'Black', 'iphone_15_pro_black.png'),
(9, 9, 'Pink', 'iphone-15-plus-pink.png'),
(10, 10, 'LimeGreen', 'iphone-15-plus-green.png'),
(11, 11, 'PowderBlue', 'iphone-15-plus-blue.png'),
(12, 12, 'Yellow', 'iphone-15-plus-yellow.png'),
(13, 13, 'Black', 'iphone-15-plus-black.png'),
(14, 14, 'Pink', 'iphone-15-pink.png'),
(15, 15, 'LimeGreen', 'iphone_15_green.png'),
(16, 16, 'PowderBlue', 'iphone_15_blue.png'),
(17, 17, 'Yellow', 'iphone_15_yellow.png'),
(18, 18, 'Black', 'iphone_15_black.png'),
(19, 19, 'MediumPurple', 'iphone-14-pro_max_tim.png'),
(20, 20, 'Black', 'iphone_14_pro_max_black.png'),
(21, 21, 'LemonChiffon', 'iphone_14_pro_max_yellow.png'),
(22, 22, 'White', 'iphone_14_pro_max_white.png'),
(23, 23, 'MediumPurple', 'iphone-14-pro-tim.png'),
(24, 24, 'Black', 'iphone-14-pro.png'),
(25, 25, 'LemonChiffon', 'iphone-14-pro-vang.png'),
(26, 26, 'White', 'iphone-14-pro-bac.png'),
(27, 27, 'PowderBlue', 'iphone-14-plus-xanh-duong.png'),
(28, 28, 'Black', 'iphone-14-plus-den.png'),
(29, 29, 'Lavender', 'iphone-14-plus-tim.png'),
(30, 30, 'Yellow', 'iphone-14-plus-vang.png'),
(31, 31, 'White', 'iphone-14-plus-trang.png'),
(32, 32, 'Red', 'iphone-14-plus-do.png'),
(33, 33, 'PowderBlue', 'iphone-14-xanh-duong.png'),
(34, 34, 'Black', 'iphone-14-den.png'),
(35, 35, 'Lavender', 'iphone-14-tim.png'),
(36, 36, 'Yellow', 'iphone-14-vang.png'),
(37, 37, 'White', 'iphone-14-trang.png'),
(38, 38, 'Red', 'iphone-14-do.png'),
(39, 39, 'Gold', 'iphone-13-pro-vang.png'),
(40, 40, 'White', 'iphone-13-pro-trang.png'),
(41, 41, 'Black', 'iphone-13-pro-den.png'),
(42, 42, 'Pink', 'iphone-13-hong.png'),
(43, 43, 'White', 'iphone-13-trang.png'),
(44, 44, 'Black', 'samsung_galaxy_z_fold5_den.png'),
(45, 45, 'LightSteelBlue', 'samsung_galaxy_z_fold5_xanh.png'),
(46, 46, 'Cornsilk', 'samsung_galaxy_z_fold5_kem.png'),
(47, 47, 'Aquamarine', 'samsung_galaxy_z_flip5_xanh.png'),
(48, 48, 'Lavender', 'samsung_galaxy_z_flip5_tim.png'),
(49, 49, 'Black', 'samsung_galaxy_z_flip5_den.png'),
(50, 50, 'Cornsilk', 'samsung_galaxy_z_flip5_kem.png'),
(51, 51, 'Black', 'samsung-galaxy-a54-den.png'),
(52, 52, 'GreenYellow', 'samsung-galaxy-a54-xanh.png'),
(53, 53, 'MediumPurple', 'samsung-galaxy-a54-tim.png'),
(54, 54, 'Black', 'oppo_find_n3_flip_den.png'),
(55, 55, 'Gold', 'oppo_find_n3_flip.png'),
(56, 56, 'Black', 'oppo_reno10_grey.png'),
(57, 57, 'SkyBlue', 'oppo_reno10_blue.png'),
(58, 58, 'Black', 'redmi_13c_den.png'),
(59, 59, 'Navy', 'redmi_13c_blue.png'),
(60, 60, 'LightGreen', 'redmi_13c_xanh.png'),
(61, 61, 'Gold', 'xiaomi_redmi_note_12_vang.png'),
(62, 62, 'Aquamarine', 'xiaomi-redmi-note-12-green.png'),
(63, 63, 'Black', 'xiaomi-redmi-note-12-black.png'),
(64, 64, 'SkyBlue', 'xiaomi-redmi-note-12-xanh-duong.png'),
(65, 65, 'SkyBlue', 'vivo-y22s.png'),
(66, 66, 'Cornsilk', 'realme_c55_mau_vang.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`) VALUES
(1, 'Home page', NULL),
(2, 'Products', NULL),
(3, 'Shopping-Cart', 'NULL'),
(4, 'Posts', 'NULL'),
(5, 'Contact', 'NULL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '256GB,512GB,1TB', 'iPhone 15 Pro Max', 33890000, 'iPhone 15 Pro Max là một chiếc điện thoại thông minh cao cấp được mong đợi nhất năm 2023', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4422 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:47:31'),
(2, 1, '256GB,512GB,1TB', 'iPhone 15 Pro Max', 33890000, 'iPhone 15 Pro Max là một chiếc điện thoại thông minh cao cấp được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro Max chắc chắn sẽ là một lựa chọn tuyệt vời.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4422 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(3, 1, '256GB,512GB,1TB', 'iPhone 15 Pro Max', 33890000, 'iPhone 15 Pro Max là một chiếc điện thoại thông minh cao cấp được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro Max chắc chắn sẽ là một lựa chọn tuyệt vời.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4422 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(4, 1, '256GB,512GB,1TB', 'iPhone 15 Pro Max', 33890000, 'iPhone 15 Pro Max là một chiếc điện thoại thông minh cao cấp được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro Max chắc chắn sẽ là một lựa chọn tuyệt vời.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4422 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(5, 1, '128GB,256GB,512GB,1TB', 'iPhone 15 Pro', 28290000, 'iPhone 15 Pro là một trong những chiếc điện thoại thông minh được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro chắc chắn sẽ là một chiếc điện thoại cao cấp tuyệt vời.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3274 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(6, 1, '128GB,256GB,512GB,1TB', 'iPhone 15 Pro ', 28290000, 'iPhone 15 Pro là một trong những chiếc điện thoại thông minh được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro chắc chắn sẽ là một chiếc điện thoại cao cấp tuyệt vời.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3274 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(7, 1, '128GB,256GB,512GB,1TB', 'iPhone 15 Pro', 28290000, 'iPhone 15 Pro là một trong những chiếc điện thoại thông minh được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro chắc chắn sẽ là một chiếc điện thoại cao cấp tuyệt vời.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3274 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(8, 1, '128GB,256GB,512GB,1TB', 'iPhone 15 Pro', 28290000, 'iPhone 15 Pro là một trong những chiếc điện thoại thông minh được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro chắc chắn sẽ là một chiếc điện thoại cao cấp tuyệt vời.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A17 Pro 6 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3274 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(9, 1, '128GB,256GB,512GB', 'iPhone 15 Plus', 25790000, 'iPhone 15 Plus thu hút mọi ánh nhìn ngay khi ra mắt nhờ có vẻ ngoài cao cấp, trang bị bộ xử lý mạnh mẽ, cụm camera kép đặc trưng cho khả năng chụp ảnh cực nét để bạn tận hưởng trải nghiệm sử dụng tuyệt vời.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4383 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(10, 1, '128GB,256GB,512GB', 'iPhone 15 Plus', 25790000, 'iPhone 15 Plus thu hút mọi ánh nhìn ngay khi ra mắt nhờ có vẻ ngoài cao cấp, trang bị bộ xử lý mạnh mẽ, cụm camera kép đặc trưng cho khả năng chụp ảnh cực nét để bạn tận hưởng trải nghiệm sử dụng tuyệt vời.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4383 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(11, 1, '128GB,256GB,512GB', 'iPhone 15 Plus', 25790000, 'iPhone 15 Plus thu hút mọi ánh nhìn ngay khi ra mắt nhờ có vẻ ngoài cao cấp, trang bị bộ xử lý mạnh mẽ, cụm camera kép đặc trưng cho khả năng chụp ảnh cực nét để bạn tận hưởng trải nghiệm sử dụng tuyệt vời.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4383 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(12, 1, '128GB,256GB,512GB', 'iPhone 15 Plus', 25790000, 'iPhone 15 Plus thu hút mọi ánh nhìn ngay khi ra mắt nhờ có vẻ ngoài cao cấp, trang bị bộ xử lý mạnh mẽ, cụm camera kép đặc trưng cho khả năng chụp ảnh cực nét để bạn tận hưởng trải nghiệm sử dụng tuyệt vời.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4383 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(13, 1, '128GB,256GB,512GB', 'iPhone 15 Plus', 25790000, 'iPhone 15 Plus thu hút mọi ánh nhìn ngay khi ra mắt nhờ có vẻ ngoài cao cấp, trang bị bộ xử lý mạnh mẽ, cụm camera kép đặc trưng cho khả năng chụp ảnh cực nét để bạn tận hưởng trải nghiệm sử dụng tuyệt vời.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4383 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(14, 1, '128GB,256GB', 'iPhone 15', 22390000, 'iPhone 15 là mẫu điện thoại cao cấp được Apple cho ra mắt vào tháng 09/2023, nhận được nhiều sự chú ý đến từ người dùng khi mang trong mình bộ cấu hình cực khủng, vẻ ngoài thu hút.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3349 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(15, 1, '128GB,256GB', 'iPhone 15', 22390000, 'iPhone 15 là mẫu điện thoại cao cấp được Apple cho ra mắt vào tháng 09/2023, nhận được nhiều sự chú ý đến từ người dùng khi mang trong mình bộ cấu hình cực khủng, vẻ ngoài thu hút.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3349 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(16, 1, '128GB,256GB', 'iPhone 15', 22390000, 'iPhone 15 là mẫu điện thoại cao cấp được Apple cho ra mắt vào tháng 09/2023, nhận được nhiều sự chú ý đến từ người dùng khi mang trong mình bộ cấu hình cực khủng, vẻ ngoài thu hút.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3349 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(17, 1, '128GB,256GB', 'iPhone 15', 22390000, 'iPhone 15 là mẫu điện thoại cao cấp được Apple cho ra mắt vào tháng 09/2023, nhận được nhiều sự chú ý đến từ người dùng khi mang trong mình bộ cấu hình cực khủng, vẻ ngoài thu hút.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3349 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(18, 1, '128GB,256GB', 'iPhone 15', 22390000, 'iPhone 15 là mẫu điện thoại cao cấp được Apple cho ra mắt vào tháng 09/2023, nhận được nhiều sự chú ý đến từ người dùng khi mang trong mình bộ cấu hình cực khủng, vẻ ngoài thu hút.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 17</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3349 mAh, 20 W </td>\r\n								</tr>', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(19, 1, '128GB,256GB,512GB,1TB', 'iPhone 14 Pro Max', 27490000, 'iPhone 14 Pro Max một siêu phẩm trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4323 mAh, 20 W </td>\r\n								</tr>', '2023-11-09 12:34:56', '2023-11-09 12:34:56'),
(20, 1, '128GB,256GB,512GB,1TB', 'iPhone 14 Pro Max', 27490000, 'iPhone 14 Pro Max một siêu phẩm trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4323 mAh, 20 W </td>\r\n								</tr>', '2023-11-09 12:34:56', '2023-11-09 12:34:56'),
(21, 1, '128GB,256GB,512GB,1TB', 'iPhone 14 Pro Max', 27490000, 'iPhone 14 Pro Max một siêu phẩm trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4323 mAh, 20 W </td>\r\n								</tr>', '2023-11-09 12:34:56', '2023-11-09 12:34:56'),
(22, 1, '128GB,256GB,512GB,1TB', 'iPhone 14 Pro Max', 27490000, 'iPhone 14 Pro Max một siêu phẩm trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4323 mAh, 20 W </td>\r\n								</tr>', '2023-11-09 12:34:56', '2023-11-09 12:34:56'),
(23, 1, '128GB,256GB,512GB', 'iPhone 14 Pro', 25190000, 'iPhone 14 Pro đến từ nhà Apple mang một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ nhờ con chip Apple A16 Bionic và cụm camera có độ phân giải được nâng cấp lên đến 48 MP.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3200 mAh, 20 W </td>\r\n								</tr>', '2023-11-09 12:34:56', '2023-11-09 12:34:56'),
(24, 1, '128GB,256GB,512GB', 'iPhone 14 Pro', 25190000, 'iPhone 14 Pro đến từ nhà Apple mang một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ nhờ con chip Apple A16 Bionic và cụm camera có độ phân giải được nâng cấp lên đến 48 MP.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3200 mAh, 20 W </td>\r\n								</tr>', '2023-11-09 12:34:56', '2023-11-09 12:34:56'),
(25, 1, '128GB,256GB,512GB', 'iPhone 14 Pro', 25190000, 'iPhone 14 Pro đến từ nhà Apple mang một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ nhờ con chip Apple A16 Bionic và cụm camera có độ phân giải được nâng cấp lên đến 48 MP.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3200 mAh, 20 W </td>\r\n								</tr>', '2023-11-09 12:34:56', '2023-11-09 12:34:56'),
(26, 1, '128GB,256GB,512GB', 'iPhone 14 Pro', 25190000, 'iPhone 14 Pro đến từ nhà Apple mang một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ nhờ con chip Apple A16 Bionic và cụm camera có độ phân giải được nâng cấp lên đến 48 MP.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A16 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3200 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(27, 1, '128GB,256GB', 'iPhone 14 Plus', 21990000, 'Sau nhiều thế hệ điện thoại của Apple thì chiếc iPhone 14 Plus, nổi trội với ngoại hình bắt trend cùng màn hình kích thước lớn để đem đến không gian hiển thị tốt hơn cùng cấu hình mạnh mẽ không đổi so với bản tiêu chuẩn.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4325 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(28, 1, '128GB,256GB', 'iPhone 14 Plus', 21990000, 'Sau nhiều thế hệ điện thoại của Apple thì chiếc iPhone 14 Plus, nổi trội với ngoại hình bắt trend cùng màn hình kích thước lớn để đem đến không gian hiển thị tốt hơn cùng cấu hình mạnh mẽ không đổi so với bản tiêu chuẩn.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4325 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(29, 1, '128GB,256GB', 'iPhone 14 Plus', 21990000, 'Sau nhiều thế hệ điện thoại của Apple thì chiếc iPhone 14 Plus, nổi trội với ngoại hình bắt trend cùng màn hình kích thước lớn để đem đến không gian hiển thị tốt hơn cùng cấu hình mạnh mẽ không đổi so với bản tiêu chuẩn.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4325 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(30, 1, '128GB,256GB', 'iPhone 14 Plus', 21990000, 'Sau nhiều thế hệ điện thoại của Apple thì chiếc iPhone 14 Plus, nổi trội với ngoại hình bắt trend cùng màn hình kích thước lớn để đem đến không gian hiển thị tốt hơn cùng cấu hình mạnh mẽ không đổi so với bản tiêu chuẩn.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4325 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(31, 1, '128GB,256GB', 'iPhone 14 Plus', 21990000, 'Sau nhiều thế hệ điện thoại của Apple thì chiếc iPhone 14 Plus, nổi trội với ngoại hình bắt trend cùng màn hình kích thước lớn để đem đến không gian hiển thị tốt hơn cùng cấu hình mạnh mẽ không đổi so với bản tiêu chuẩn.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4325 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(32, 1, '128GB,256GB', 'iPhone 14 Plus', 21990000, 'Sau nhiều thế hệ điện thoại của Apple thì chiếc iPhone 14 Plus, nổi trội với ngoại hình bắt trend cùng màn hình kích thước lớn để đem đến không gian hiển thị tốt hơn cùng cấu hình mạnh mẽ không đổi so với bản tiêu chuẩn.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4325 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(33, 1, '128GB,256GB', 'iPhone 14', 18990000, 'iPhone 14 gây ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3279 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(34, 1, '128GB,256GB', 'iPhone 14', 18990000, 'iPhone 14 gây ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3279 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(35, 1, '128GB,256GB', 'iPhone 14', 18990000, 'iPhone 14 gây ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3279 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(36, 1, '128GB,256GB', 'iPhone 14', 18990000, 'iPhone 14 gây ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3279 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(37, 1, '128GB,256GB', 'iPhone 14', 18990000, 'iPhone 14 gây ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3279 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(38, 1, '128GB,256GB', 'iPhone 14', 18990000, 'iPhone 14 gây ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 16</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3279 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(39, 1, '128GB,256GB,512GB', 'iPhone 13 Pro', 21990000, 'iPhone 13 Pro chính là chiếc siêu phẩm hứa hẹn mang đến trải nghiệm đỉnh cao với những công nghệ như màn hình 120Hz, chip A15 Bionic, camera cảm biến lớn mang lại ảnh chụp chất lượng hơn.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3095 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00');
INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`) VALUES
(40, 1, '128GB,256GB,512GB', 'iPhone 13 Pro', 21990000, 'iPhone 13 Pro chính là chiếc siêu phẩm hứa hẹn mang đến trải nghiệm đỉnh cao với những công nghệ như màn hình 120Hz, chip A15 Bionic, camera cảm biến lớn mang lại ảnh chụp chất lượng hơn.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3095 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(41, 1, '128GB,256GB,512GB', 'iPhone 13 Pro', 21990000, 'iPhone 13 Pro chính là chiếc siêu phẩm hứa hẹn mang đến trải nghiệm đỉnh cao với những công nghệ như màn hình 120Hz, chip A15 Bionic, camera cảm biến lớn mang lại ảnh chụp chất lượng hơn.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3095 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(42, 1, '512GB,256GB,128GB', 'iPhone 13', 15990000, 'Hãng điện thoại Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 với nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">4GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3240 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(43, 1, '512GB,256GB,128GB', 'iPhone 13', 15990000, 'Hãng điện thoại Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 với nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">OLED, 6.1\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">iOS 15</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Apple A15 Bionic</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">4GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3240 mAh, 20 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(44, 2, '256GB,512GB,1TB', 'Samsung Galaxy ZFold5', 29990000, 'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ quay chụp sắc nét.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Corning Gorilla Glass Victus 2\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 8 Gen 2 For Galaxy</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">12 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4400 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(45, 2, '256GB,512GB,1TB', 'Samsung Galaxy ZFold5', 29990000, 'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ quay chụp sắc nét.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Corning Gorilla Glass Victus 2\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 8 Gen 2 For Galaxy</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">12 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4400 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(46, 2, '256GB,512GB,1TB', 'Samsung Galaxy ZFold5', 29990000, 'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ quay chụp sắc nét.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Corning Gorilla Glass Victus 2\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 8 Gen 2 For Galaxy</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">12 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 4400 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(47, 2, '256GB,512GB', 'Samsung Galaxy ZFlip5', 22990000, 'Samsung Galaxy Z Flip5 tiếp tục theo đuổi phong cách gập độc đáo đã trở thành thương hiệu của dòng sản phẩm \"Z Flip\". Với thiết kế nhỏ gọn và hình dáng hộp phấn khi gập lại, chiếc điện thoại này rất dễ dàng cất đi.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Dynamic AMOLED 2X 6.7\",Super AMOLED 3.4\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 8 Gen 2 For Galaxy</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3700 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(48, 2, '256GB,512GB', 'Samsung Galaxy ZFlip5', 22990000, 'Samsung Galaxy Z Flip5 tiếp tục theo đuổi phong cách gập độc đáo đã trở thành thương hiệu của dòng sản phẩm \"Z Flip\". Với thiết kế nhỏ gọn và hình dáng hộp phấn khi gập lại, chiếc điện thoại này rất dễ dàng cất đi.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Dynamic AMOLED 2X 6.7\",Super AMOLED 3.4\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 8 Gen 2 For Galaxy</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3700 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(49, 2, '256GB,512GB', 'Samsung Galaxy ZFlip5', 22990000, 'Samsung Galaxy Z Flip5 tiếp tục theo đuổi phong cách gập độc đáo đã trở thành thương hiệu của dòng sản phẩm \"Z Flip\". Với thiết kế nhỏ gọn và hình dáng hộp phấn khi gập lại, chiếc điện thoại này rất dễ dàng cất đi.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Dynamic AMOLED 2X 6.7\",Super AMOLED 3.4\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 8 Gen 2 For Galaxy</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3700 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(50, 2, '256GB,512GB', 'Samsung Galaxy ZFlip5', 22990000, 'Samsung Galaxy Z Flip5 tiếp tục theo đuổi phong cách gập độc đáo đã trở thành thương hiệu của dòng sản phẩm \"Z Flip\". Với thiết kế nhỏ gọn và hình dáng hộp phấn khi gập lại, chiếc điện thoại này rất dễ dàng cất đi.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Dynamic AMOLED 2X 6.7\",Super AMOLED 3.4\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 8 Gen 2 For Galaxy</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 1 Nano SIM & 1 eSIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\"> 3700 mAh, 25 W </td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(51, 2, '128GB,256GB', 'Samsung Galaxy A54', 9290000, 'Samsung Galaxy A54 5G là mẫu điện thoại tầm trung đang làm mưa làm gió tại thị trường Việt Nam khi sở hữu những thông số ấn tượng với chip hiệu năng cao, màn hình chất lượng đi cùng hệ thống camera xịn sò trong phân khúc.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Super AMOLED 6.4\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Exynos 1380 8 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh,25 W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(52, 2, '128GB,256GB', 'Samsung Galaxy A54', 9290000, 'Samsung Galaxy A54 5G là mẫu điện thoại tầm trung đang làm mưa làm gió tại thị trường Việt Nam khi sở hữu những thông số ấn tượng với chip hiệu năng cao, màn hình chất lượng đi cùng hệ thống camera xịn sò trong phân khúc.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Super AMOLED 6.4\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Exynos 1380 8 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh,25 W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(53, 2, '128GB,256GB', 'Samsung Galaxy A54', 9290000, 'Samsung Galaxy A54 5G là mẫu điện thoại tầm trung đang làm mưa làm gió tại thị trường Việt Nam khi sở hữu những thông số ấn tượng với chip hiệu năng cao, màn hình chất lượng đi cùng hệ thống camera xịn sò trong phân khúc.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">Super AMOLED 6.4\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Exynos 1380 8 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh,25 W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(54, 3, '256GB', 'OPPO Find N3 Flip', 22990000, 'OPPO Find N3 Flip 5G đầu tư mạnh mẽ về camera với độ phân giải lên đến 50 MP, cấu hình sử dụng chip Dimensity 9200 5G và thiết kế được thay đổi với bản lề gập mở tốt hơn cùng màu hồng sang trọng và nữ tính.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.8\",3.26\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Dimensity 9200</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">12 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">4300 mAh, 44 W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(55, 3, '256GB', 'OPPO Find N3 Flip', 22990000, 'OPPO Find N3 Flip 5G đầu tư mạnh mẽ về camera với độ phân giải lên đến 50 MP, cấu hình sử dụng chip Dimensity 9200 5G và thiết kế được thay đổi với bản lề gập mở tốt hơn cùng màu hồng sang trọng và nữ tính.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.8\",3.26\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Dimensity 9200</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">12 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">4300 mAh, 44 W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(56, 3, '256GB,128GB', 'OPPO Reno10', 10490000, 'OPPO Reno10 5G mang trên mình bộ áo đẹp mắt, hiệu năng ổn định đi cùng với đó là khả năng nhiếp ảnh vượt trội, đáp ứng mượt mà hầu hết các nhu cầu của người dùng.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Dimensity 7050</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 67W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(57, 3, '256GB,128GB', 'OPPO Reno10', 10490000, 'OPPO Reno10 5G mang trên mình bộ áo đẹp mắt, hiệu năng ổn định đi cùng với đó là khả năng nhiếp ảnh vượt trội, đáp ứng mượt mà hầu hết các nhu cầu của người dùng.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.7\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Dimensity 7050</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 5G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 67W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(58, 4, '128GB', 'Xiaomi Redmi 13C', 3190000, 'Xiaomi là một trong những nhà sản xuất hàng đầu thế giới, và Xiaomi Redmi 13C là một ví dụ điển hình cho thấy nỗ lực của họ trong việc mang đến những sản phẩm chất lượng với giá cả phải chăng.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">LCD 6.74\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Helio G85</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">4 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 18W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(59, 4, '128GB', 'Xiaomi Redmi 13C', 3190000, 'Xiaomi là một trong những nhà sản xuất hàng đầu thế giới, và Xiaomi Redmi 13C là một ví dụ điển hình cho thấy nỗ lực của họ trong việc mang đến những sản phẩm chất lượng với giá cả phải chăng.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">LCD 6.74\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Helio G85</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">4 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 18W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(60, 4, '128GB', 'Xiaomi Redmi 13C', 3190000, 'Xiaomi là một trong những nhà sản xuất hàng đầu thế giới, và Xiaomi Redmi 13C là một ví dụ điển hình cho thấy nỗ lực của họ trong việc mang đến những sản phẩm chất lượng với giá cả phải chăng.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">LCD 6.74\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Helio G85</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">4 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 18W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(61, 4, '128GB,256GB', 'Xiaomi Redmi Note 12', 5590000, 'Xiaomi Redmi Note 12 được giới thiệu có vi xử lý Snapdragon 685 mạnh mẽ và camera 50 MP chất lượng cao, chiếc điện thoại này đã thu hút sự chú ý của người dùng trong phân khúc tầm trung.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.67\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 685 8 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 33W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(62, 4, '128GB,256GB', 'Xiaomi Redmi Note 12', 5590000, 'Xiaomi Redmi Note 12 được giới thiệu có vi xử lý Snapdragon 685 mạnh mẽ và camera 50 MP chất lượng cao, chiếc điện thoại này đã thu hút sự chú ý của người dùng trong phân khúc tầm trung.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.67\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 685 8 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 33W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(63, 4, '128GB,256GB', 'Xiaomi Redmi Note 12', 5590000, 'Xiaomi Redmi Note 12 được giới thiệu có vi xử lý Snapdragon 685 mạnh mẽ và camera 50 MP chất lượng cao, chiếc điện thoại này đã thu hút sự chú ý của người dùng trong phân khúc tầm trung.', 1, 0, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.67\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 685 8 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 33W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(64, 4, '128GB,256GB', 'Xiaomi Redmi Note 12', 5590000, 'Xiaomi Redmi Note 12 được giới thiệu có vi xử lý Snapdragon 685 mạnh mẽ và camera 50 MP chất lượng cao, chiếc điện thoại này đã thu hút sự chú ý của người dùng trong phân khúc tầm trung.', 0, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">AMOLED 6.67\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 685 8 cores</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 33W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(65, 5, '128GB', 'Vivo Y22S', 4990000, 'Vivo Y22s là mẫu điện thoại được hãng chú trọng nhiều vào phần thiết kế nhằm mang đến diện mạo đẹp mắt và sang trọng đối với những mẫu máy giá rẻ.', 1, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">LCD 6.55\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 12</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">Snapdragon 680</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">8 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 18W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00'),
(66, 5, '128GB,256GB', 'Realme C55', 4190000, 'realme C55 là mẫu máy dành được khá nhiều sự quan tâm của đông đảo người dùng khi mở bán với mức giá hấp dẫn, trang bị cấu hình tốt, camera AI 64 MP, màn hình lớn cùng khả năng sạc pin siêu nhanh.', 1, 1, '<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Screen:</td>\r\n									<td class=\"techSpecTD2\">LCD 6.72\"</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">OS:</td>\r\n									<td class=\"techSpecTD2\">Android 13</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">CPU:</td>\r\n									<td class=\"techSpecTD2\">MediaTek Helio G88</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">RAM:</td>\r\n									<td class=\"techSpecTD2\">6 GB</td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">SIM:</td>\r\n									<td class=\"techSpecTD2\"> 2 Nano SIM support 4G </td>\r\n								</tr>\r\n								<tr class=\"techSpecRow\">\r\n									<td class=\"techSpecTD1\">Battery, Adapter:</td>\r\n									<td class=\"techSpecTD2\">5000 mAh, 33W</td>\r\n								</tr>', '2023-11-10 14:30:00', '2023-11-10 14:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`, `content`) VALUES
(1, 'Slide1.png', 'Unleash innovation in the palm of your hand', '#MobileRevolution'),
(2, 'Slide2.png', 'Upgrade to the extraordinary. Elevate your mobile experience now', '#UpgradeYourLife'),
(3, 'Slide3.png\r\n', 'Captivate every moment with our cutting-edge camera technology', '#PicturePerfect'),
(4, 'Slide4.png', 'Style meets performance with our latest smartphones', '#TechElegance'),
(5, 'Slide5.png', 'Seamless connectivity, boundless possibilities. Stay ahead with our smartphones', '#ConnectedLiving'),
(6, 'Slide6.png', 'Sleek design, powerful performance. Your perfect smartphone is just a click away', '#SleekTech'),
(7, 'Slide7.png', 'Empower your day with the latest in mobile innovation. Your life, your rules', '#EmpowerTech'),
(8, 'Slide8.png', 'Discover a world of features at your fingertips. Elevate, inspire, innovate', '#SmartLife'),
(9, 'Slide9.png', 'Where function meets fashion. Explore our stylish lineup of smartphones', '#FashionTech'),
(10, 'Slide10.png', 'Your journey to tech brilliance starts here. Explore our range of smart companions', '#TechJourney');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18914;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
