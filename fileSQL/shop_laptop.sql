-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2019 lúc 08:48 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_laptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(3) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `birthday`, `address`, `phone`, `password`, `position`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dương Huy Toàn', 'huytoana2k52@gmail.com', '1998-08-19', 'Triều Khúc - Hà Nội', '0354859494', '$2y$10$DiL7F0VMEPjj5BLkLfPJQ.pybXg/Jf9TOJzUprs1UtNTDILm.Wll.', 1, 0, '9zvAObEcShwkJG4CqmuF8xE7l6K5aYjhXdzv8eYaIaQRtMqS7LSOtzhG62Y7', '2019-04-10 18:19:48', '2019-05-07 02:29:17'),
(2, 'Trần Văn Lâm', 'tranvanlam@gmail.com', '1998-03-01', 'Hà Nội', '0125421593', '$2y$10$S3SsEpWX.RakkaP/Ddp7CetRKfOVlSAAS7rVmKy/HzRMp7yLXNgtO', 1, 0, 'l4pKhrZgILG1HwfbWeQCSmoswc9rca3d7muMap7Dw6jNeGawIkZdoD7bzkIi', '2019-04-10 18:20:42', '2019-04-13 12:59:32'),
(3, 'demo hahaha', 'demo@gmail.com', '1998-02-22', 'Hà Nội 2', '0121212123', '$2y$10$CQgce1L2qaieWJkVeP06feR1Xl32pcTJBuIhybrY7j1ZSbYm6sd1S', 1, 0, '0zEDW1VdHumNknGTRxXzJPYJVzM6SbMtVNaAQ5P02cxqfe9UBh6f6iM4R2yb', '2019-04-13 10:27:54', '2019-04-13 12:59:44'),
(6, 'demo2', 'demo2@gmail.com', '1998-08-19', 'Hà Nội', '0101010203', '$2y$10$./W5i..zPJtONQx81D8qa.fuAibPALeC1WuOr58N9SzgZI/H2Vn4u', 1, 1, NULL, '2019-04-13 13:00:21', '2019-04-13 13:02:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dell', 'dell', '<p><img alt=\"\" src=\"http://localhost/laravel/shop_laptop/public/ck_img/uploads/images/kisspng-dell-poweredge-laptop-computer-icons-%E6%AC%A7%E9%A3%8E%E8%BE%B9%E6%A1%86logo-5ae9b403f06603_7883729015252654119847.jpg\" style=\"height:920px; width:900px\" /></p>', 0, '2019-04-13 05:51:34', '2019-04-13 05:51:34'),
(2, 'HP', 'hp', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/laravel/shop_laptop/public/ck_img/uploads/images/brands/t%E1%BA%A3i%20xu%E1%BB%91ng.png\" style=\"height:225px; width:225px\" /></p>\r\n\r\n<p style=\"text-align:center\">HP</p>', 1, '2019-04-13 06:08:26', '2019-04-13 06:08:26'),
(3, 'ASUS', 'asus', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/laravel/shop_laptop/public/ck_img/uploads/images/brands/kisspng-laptop-logo-asus-zenfone-3-zoom-ze553kl-asus-logo-5b27bbc679dfd7_7404706415293306304992.jpg\" style=\"height:480px; width:900px\" /></p>', 0, '2019-04-13 06:13:23', '2019-04-13 06:13:23'),
(4, 'LENOVO', 'lenovo', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/laravel/shop_laptop/public/ck_img/uploads/images/brands/kisspng-logo-laptop-hewlett-packard-lenovo-mobile-phones-products-and-brands-we-trade-with-west-point-eur-5b6d32a0370647_1200651815338830402254.jpg\" style=\"height:460px; width:900px\" /></p>', 0, '2019-04-13 06:17:21', '2019-04-13 06:17:21'),
(5, 'ACER', 'acer', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/laravel/shop_laptop/public/ck_img/uploads/images/brands/m46_logo_acer.png\" style=\"height:208px; width:700px\" /></p>\r\n\r\n<p style=\"text-align:center\">hahahahah</p>', 0, '2019-04-19 01:51:40', '2019-04-27 08:23:14'),
(6, 'MACBOOK', 'macbook', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/laravel/shop_laptop/public/ck_img/uploads/images/brands/apple.png\" style=\"height:1200px; width:1200px\" /></p>', 0, '2019-04-19 01:52:16', '2019-04-19 01:52:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop văn phòng', 'laptop-van-phong', 0, 0, '2019-04-13 13:47:53', '2019-04-27 08:21:08'),
(2, 'Laptop gaming', 'laptop-gaming', 0, 0, '2019-04-13 13:47:53', '2019-04-27 08:21:19'),
(5, 'Laptop đồ họa', 'laptop-do-hoa', 0, 0, '2019-04-13 07:12:43', '2019-04-27 08:21:27'),
(6, 'Laptop cũ', 'laptop-cu', 0, 0, '2019-04-13 07:21:49', '2019-04-27 08:21:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(3) DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_name`, `user_email`, `user_phone`, `user_address`, `quantity`, `status`, `note`, `created_at`, `updated_at`) VALUES
(5, 'Nguyễn Minh Trang', 'trang@gmail.com', '0354859494', 'Hà Nội', 2, 0, NULL, '2019-04-24 09:18:48', '2019-04-24 09:18:48'),
(6, 'Linh', 'linh@gmail.com', '0354859494', 'Hà Nội', 2, 2, NULL, '2019-04-24 09:23:55', '2019-04-25 04:13:26'),
(7, 'Phong', 'phong@gmail.com', '0123123123', 'Hà Nội', 1, 0, NULL, '2019-04-24 09:34:32', '2019-04-24 09:34:32'),
(8, 'Tuyến', 'tuyen@gmail.com', '0147878485', 'Hà Nội', 1, 0, NULL, '2019-04-24 09:41:38', '2019-04-24 09:41:38'),
(9, 'Lam', 'lam@gmail.com', '0325416874', 'Hà Nội', 2, 0, NULL, '2019-04-24 09:44:41', '2019-04-24 09:44:41'),
(10, 'Thanh', 'thanh@gmail.com', '0454187952', 'Hà Nội', 1, 0, NULL, '2019-04-24 09:45:52', '2019-04-24 09:45:52'),
(11, 'Bích', 'bich@gmail.com', '0978475415', 'Hà Nội', 1, 3, 'Không liên hệ được với người nhận', '2019-04-24 09:52:07', '2019-04-25 03:58:48'),
(12, 'Trung', 'trung@gmail.com', '0147846988', 'Hà Nội', 2, 1, NULL, '2019-04-24 09:54:13', '2019-04-25 03:58:16'),
(13, 'Tuyen HT22', 'tuyen@gmail.com', '0978457157', 'Hà Nội', 1, 0, NULL, '2019-04-25 04:14:21', '2019-04-25 04:14:21'),
(14, 'công ngọc', 'ngocvinhphu@gmail.com', '03458686666', 'phùngkhoang', 5, 1, NULL, '2019-05-07 02:22:47', '2019-05-07 02:23:26'),
(15, 'Huế', 'hue@gmail.com', '0121241478', 'Hà nội', 1, 0, NULL, '2019-05-07 05:05:57', '2019-05-07 05:05:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float(15,3) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `orders_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 5, 6, 30900000.000, 1, '2019-04-24 09:18:48', '2019-04-24 09:18:48'),
(5, 5, 7, 17200000.000, 1, '2019-04-24 09:18:48', '2019-04-24 09:18:48'),
(6, 6, 8, 22300000.000, 2, '2019-04-24 09:23:55', '2019-04-24 09:23:55'),
(7, 7, 10, 15989999.000, 1, '2019-04-24 09:34:32', '2019-04-24 09:34:32'),
(8, 8, 4, 15499999.000, 1, '2019-04-24 09:41:38', '2019-04-24 09:41:38'),
(9, 9, 8, 22300000.000, 2, '2019-04-24 09:44:41', '2019-04-24 09:44:41'),
(10, 10, 8, 22300000.000, 1, '2019-04-24 09:45:52', '2019-04-24 09:45:52'),
(11, 11, 8, 22300000.000, 1, '2019-04-24 09:52:08', '2019-04-24 09:52:08'),
(12, 12, 10, 15989999.000, 2, '2019-04-24 09:54:13', '2019-04-24 09:54:13'),
(13, 13, 7, 17200000.000, 1, '2019-04-25 04:14:21', '2019-04-25 04:14:21'),
(14, 14, 6, 30900000.000, 5, '2019-05-07 02:22:47', '2019-05-07 02:22:47'),
(15, 15, 4, 10200000.000, 1, '2019-05-07 05:05:57', '2019-05-07 05:05:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(15,3) NOT NULL,
  `price_sale` float(15,3) DEFAULT NULL,
  `view` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `category_id`, `brand_id`, `image`, `price`, `price_sale`, `view`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Laptop HP 15 da0048TU N5000/4GB/500GB/Win10/(4ME63PA)', 'laptop-hp-15-da0048tu-n50004gb500gbwin104me63pa', 1, 2, '2019-04-19-03-49-13hp-15-da0048tu-4me63pa-33397-ava1-600x600.jpg', 16500000.000, 10200000.000, 0, 0, '2019-04-19 03:13:49', '2019-05-07 05:02:56'),
(6, 'Laptop Apple Macbook Air MREE2SA/A i5/8GB/128GB (2018)', 'laptop-apple-macbook-air-mree2saa-i58gb128gb-2018', 1, 6, '2019-04-19-04-34-53apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-600x600.jpg', 31990000.000, 30900000.000, 0, 0, '2019-04-19 04:53:34', '2019-04-19 04:53:34'),
(7, 'Laptop Asus A510UN i7 8550U/4GB/256GB/MX150/Win10/(EJ521T)', 'laptop-asus-a510un-i7-8550u4gb256gbmx150win10ej521t', 2, 3, '2019-04-19-04-26-56asus-a510un-i7-8550u-4gb-256gb-mx150-win10-ej521t-thumb-600x600.jpg', 18490000.000, 17200000.000, 0, 0, '2019-04-19 04:56:26', '2019-04-19 04:56:26'),
(8, 'Laptop Dell Inspiron 7373 i5 8250U/8GB/256GB/Win10/Office365/(C3TI501OW)', 'laptop-dell-inspiron-7373-i5-8250u8gb256gbwin10office365c3ti501ow', 5, 1, '2019-04-19-04-29-59dell-inspiron-7373-i5-8250u-8gb-256gb-win10-office-450-600x600.jpg', 26900000.000, 22300000.000, 0, 0, '2019-04-19 04:59:29', '2019-04-19 04:59:29'),
(9, 'Laptop Lenovo Yoga 520 14IKB i3 7130U/4GB/500GB/Win10/(80X80106VN)', 'laptop-lenovo-yoga-520-14ikb-i3-7130u4gb500gbwin1080x80106vn', 1, 4, '2019-04-19-05-24-02lenovo-yoga-520-14ikb-i3-7130u-8080106vn-450x300.jpg', 11190000.000, 0.000, 0, 0, '2019-04-19 05:02:24', '2019-04-22 02:47:56'),
(10, 'Laptop Acer Aspire E5 576G 88EP i7 8550U/4GB/1TB+16GB/2GB MX130/Win10/(NX.H2ESV.001)', 'laptop-acer-aspire-e5-576g-88ep-i7-8550u4gb1tb16gb2gb-mx130win10nxh2esv001', 5, 5, '2019-04-19-05-23-15acer-aspire-e5-576g-88ep-nxgwnsv001-33397-thumb333-600x600.jpg', 17990000.000, 15989999.000, 0, 0, '2019-04-19 05:15:23', '2019-04-19 21:00:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`id`, `product_id`, `amount`, `content`, `created_at`, `updated_at`) VALUES
(4, 4, 18, '<p style=\"text-align:center\">Đẹp</p>', '2019-04-19 03:13:49', '2019-05-07 05:05:57'),
(6, 6, 9, '<p style=\"text-align:center\">Đẹp</p>', '2019-04-19 04:53:34', '2019-05-07 02:22:47'),
(7, 7, 11, '<p style=\"text-align:center\">Đẹp</p>', '2019-04-19 04:56:26', '2019-04-25 04:14:22'),
(8, 8, 6, '<p style=\"text-align:center\">Đẹp</p>', '2019-04-19 04:59:29', '2019-04-24 09:52:08'),
(9, 9, 12, '<p style=\"text-align:center\">Đẹp</p>', '2019-04-19 05:02:24', '2019-04-24 08:54:59'),
(10, 10, 7, '<p style=\"text-align:center\">Đẹp</p>', '2019-04-19 05:15:24', '2019-04-24 09:54:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 4, '2019-04-19-03-59-20hp-15-da0048tu-4me63pa-1-5.jpg', 0, '2019-04-19 03:20:59', '2019-05-07 02:25:24'),
(6, 4, '2019-04-19-03-59-20hp-15-da0048tu-4me63pa-2-4.jpg', 0, '2019-04-19 03:20:59', '2019-04-19 03:20:59'),
(7, 4, '2019-04-19-03-59-20hp-15-da0048tu-4me63pa-3-4.jpg', 0, '2019-04-19 03:20:59', '2019-04-19 03:20:59'),
(8, 4, '2019-04-19-03-59-20hp-15-da0048tu-4me63pa-5-4.jpg', 0, '2019-04-19 03:20:59', '2019-04-19 03:20:59'),
(9, 4, '2019-04-19-03-59-20laptop-hp-15-da0048tu-4me63pa-3.jpg', 0, '2019-04-19 03:20:59', '2019-04-19 03:20:59'),
(10, 6, '2019-04-19-05-08-16apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-600x600.jpg', 0, '2019-04-19 05:16:08', '2019-04-19 05:16:08'),
(11, 6, '2019-04-19-05-08-16apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-banphimtgdd.jpg', 0, '2019-04-19 05:16:08', '2019-04-19 05:16:08'),
(12, 6, '2019-04-19-05-08-16apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-congketnoi.jpg', 0, '2019-04-19 05:16:08', '2019-04-19 05:16:08'),
(13, 7, '2019-04-19-05-57-16asus-a510un-i7-8550u-4gb-256gb-mx150-win10-ej521t-2-1.jpg', 0, '2019-04-19 05:16:57', '2019-04-19 05:16:57'),
(14, 7, '2019-04-19-05-58-16asus-a510un-i7-8550u-4gb-256gb-mx150-win10-ej521t-3-1.jpg', 0, '2019-04-19 05:16:58', '2019-04-19 05:16:58'),
(15, 7, '2019-04-19-05-58-16asus-a510un-i7-8550u-4gb-256gb-mx150-win10-ej521t-5-2.jpg', 0, '2019-04-19 05:16:58', '2019-04-19 05:16:58'),
(16, 8, '2019-04-19-05-39-17dell-inspiron-7373-i5-8250u-8gb-256gb-win10-office-10.jpg', 0, '2019-04-19 05:17:39', '2019-04-19 05:17:39'),
(17, 8, '2019-04-19-05-39-17dell-inspiron-7373-i5-8250u-8gb-256gb-win10-office-1010.jpg', 0, '2019-04-19 05:17:39', '2019-04-19 05:17:39'),
(18, 8, '2019-04-19-05-39-17dell-inspiron-7373-i5-8250u-c3ti501ow-1.jpg', 0, '2019-04-19 05:17:39', '2019-04-19 05:17:39'),
(19, 8, '2019-04-19-05-40-17dell-inspiron-7373-i5-8250u-c3ti501ow-5-1.jpg', 0, '2019-04-19 05:17:40', '2019-04-19 05:17:40'),
(20, 9, '2019-04-19-05-05-18lenovo-yoga-520-14ikb-i3-7130u-8080106vn-1-2.jpg', 0, '2019-04-19 05:18:05', '2019-04-19 05:18:05'),
(21, 9, '2019-04-19-05-05-18lenovo-yoga-520-14ikb-i3-7130u-8080106vn-2-2.jpg', 0, '2019-04-19 05:18:05', '2019-04-19 05:18:05'),
(22, 9, '2019-04-19-05-05-18lenovo-yoga-520-14ikb-i3-7130u-8080106vn-3-2.jpg', 0, '2019-04-19 05:18:05', '2019-04-19 05:18:05'),
(23, 9, '2019-04-19-05-05-18lenovo-yoga-520-14ikb-i3-7130u-8080106vn-4-2.jpg', 0, '2019-04-19 05:18:05', '2019-04-19 05:18:05'),
(24, 10, '2019-04-19-05-30-18acer-aspire-e5-576g-88ep-nxgwnsv001-tgdd-at.jpg', 0, '2019-04-19 05:18:30', '2019-04-19 05:18:30'),
(25, 10, '2019-04-19-05-30-18acer-aspire-e5-576g-88ep-nxgwnsv001-tgdd-bp.jpg', 0, '2019-04-19 05:18:30', '2019-04-19 05:18:30'),
(26, 10, '2019-04-19-05-30-18acer-aspire-e5-576g-88ep-nxgwnsv001-tgdd-ch-1.jpg', 0, '2019-04-19 05:18:30', '2019-04-19 05:18:30'),
(27, 10, '2019-04-19-05-30-18acer-aspire-e5-576g-88ep-nxgwnsv001-tgdd-ckn.jpg', 0, '2019-04-19 05:18:30', '2019-04-19 05:18:30'),
(28, 10, '2019-04-19-05-30-18acer-aspire-e5-576g-88ep-nxgwnsv001-tgdd-mh.jpg', 0, '2019-04-19 05:18:30', '2019-04-19 05:18:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_info`
--

CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cpu` text COLLATE utf8_unicode_ci,
  `ram` text COLLATE utf8_unicode_ci,
  `hard_drive` text COLLATE utf8_unicode_ci,
  `screen` text COLLATE utf8_unicode_ci,
  `graphic_card` text COLLATE utf8_unicode_ci,
  `connector` text COLLATE utf8_unicode_ci,
  `operating_system` text COLLATE utf8_unicode_ci,
  `design` text COLLATE utf8_unicode_ci,
  `size` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_info`
--

INSERT INTO `product_info` (`id`, `product_id`, `cpu`, `ram`, `hard_drive`, `screen`, `graphic_card`, `connector`, `operating_system`, `design`, `size`, `created_at`, `updated_at`) VALUES
(1, 4, 'Intel Pentium, N5000, 1.10 GHz', '4 GB, DDR4 (1 khe), 2400 MHz', 'HDD: 500 GB SATA3', '15.6 inch, HD (1366 x 768)', 'Card đồ họa tích hợp, Intel® HD Graphics', '2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0', 'Windows 10 Home SL', 'Vỏ nhựa, PIN liền', 'Dày 22.5 mm, 1.77 kg', '2019-04-19 03:13:49', '2019-05-07 05:02:56'),
(3, 6, 'Intel Core i5 Coffee Lake, 1.60 GHz', '8 GB, DDR3, 2133 MHz', 'SSD: 128 GB', '13.3 inch, Retina (2560 x 1600)', 'Card đồ họa tích hợp, Intel UHD Graphics 617', '2 x Thunderbolt 3 (USB-C)', 'Mac OS', 'Vỏ kim loại nguyên khối, PIN liền', 'Dày 4.1 đến 15.6 mm, 1.25 kg', '2019-04-19 04:53:34', '2019-04-19 04:53:34'),
(4, 7, 'Intel Core i7 Coffee Lake, 8550U, 1.80 GHz', '4 GB, DDR4 (2 khe), 2400 MHz', 'SSD: 256 GB, M.2 SATA3', '15.6 inch, Full HD (1920 x 1080)', 'Card đồ họa rời, NVIDIA Geforce MX150, 2GB', '2 x USB 2.0, HDMI, USB Type-C, USB 3.0', 'Windows 10 Home SL', 'Vỏ kim loại, PIN liền', 'Dày 19.4 mm, 1.65 kg', '2019-04-19 04:56:26', '2019-04-19 04:56:26'),
(5, 8, 'Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz', '8 GB, DDR4 (2 khe), 2400 MHz', 'SSD: 256 GB', '13.3 inch, Full HD (1920 x 1080', 'Card đồ họa tích hợp, Intel® UHD Graphics 620', '2 x USB 3.0, HDMI, USB Type-C', 'Windows 10 + Office 365 1 năm', 'Vỏ kim loại, PIN liền', 'Dày 15.2 mm, 1.6 kg', '2019-04-19 04:59:29', '2019-04-19 04:59:29'),
(6, 9, 'Intel Core i3 Kabylake, 7130U, 2.70 GHz', '4 GB, DDR4 (1 khe), 2133 MHz', 'HDD: 500 GB', '14 inch, HD (1366 x 768)', 'Card đồ họa tích hợp, Intel® HD Graphics 620', 'HDMI, USB 2.0, USB Type-C, USB 3.0', 'Windows 10 Home SL', 'Vỏ nhựa, PIN liền', 'Dày 19.9 mm, 1.7 kg', '2019-04-19 05:02:24', '2019-04-22 02:47:56'),
(7, 10, 'Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz', '4 GB, DDR3L (2 khe RAM), 2133 MHz', 'HDD: 1 TB, Intel Optane 16GB', '15.6 inch, Full HD (1920 x 1080)', 'Card đồ họa rời, NVIDIA Geforce MX130, 2GB', '2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, USB Type-C, VGA (D-Sub)', 'Windows 10 Home SL', 'Vỏ nhựa, PIN liền', 'Dày 30.4 mm, 2.23 kg', '2019-04-19 05:15:24', '2019-04-19 21:00:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_detail_orders` (`orders_id`),
  ADD KEY `FK_orders_detail_product` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_category` (`category_id`),
  ADD KEY `FK_product_brand` (`brand_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_detail_product` (`product_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_image_product` (`product_id`);

--
-- Chỉ mục cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_info_product` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `product_info`
--
ALTER TABLE `product_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_orders_detail_orders` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK_orders_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `FK_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `FK_product_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD CONSTRAINT `FK_product_info_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
