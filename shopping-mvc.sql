-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2021 lúc 01:49 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `date` date NOT NULL,
  `total` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `id_user`, `date`, `total`, `status`) VALUES
(22, 105, '2021-10-08', '430', 2),
(23, 106, '2021-10-08', '229', 5),
(24, 105, '2021-10-08', '86', 5),
(25, 105, '2021-10-08', '164', 2),
(26, 105, '2021-10-08', '45', 1),
(27, 105, '2021-10-08', '920', 1),
(28, 105, '2021-10-09', '90', 1),
(29, 105, '2021-10-09', '32', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(15) NOT NULL,
  `id_bill` int(15) NOT NULL,
  `id_product` int(15) NOT NULL,
  `quantity` int(15) NOT NULL,
  `size` int(15) NOT NULL,
  `color` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `size`, `color`) VALUES
(19, 22, 42, 5, 2, 1),
(20, 23, 44, 2, 2, 2),
(21, 23, 43, 1, 1, 2),
(22, 24, 42, 1, 2, 2),
(23, 25, 43, 1, 1, 2),
(24, 25, 46, 1, 2, 2),
(25, 26, 44, 1, 2, 2),
(26, 27, 44, 5, 2, 2),
(27, 27, 43, 5, 1, 2),
(28, 28, 44, 2, 2, 2),
(29, 29, 58, 1, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cat_parent` int(10) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `cat_parent`, `sort`, `status`) VALUES
(1, 'Home', 0, 2, '0'),
(3, 'Men', 0, 1, '0'),
(13, 'women', 0, 3, '1'),
(14, 'About', 0, 4, '1'),
(15, 'Contact', 0, 4, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id` int(10) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`id`, `title`, `name`) VALUES
(1, '#000000', 'Black'),
(2, '#FFFFFF	', 'White'),
(3, '#1DB9C3', 'Blue'),
(4, '#FF865E', 'orange');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `id_category` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_category`, `title`, `price`, `img`, `size`, `color`, `short_description`, `description`, `manufacturer`, `sort`, `status`) VALUES
(42, 13, 'Women&#039s Boots Shoes Maca', 86, 'a:2:{i:0;s:10:\"item-1.jpg\";i:1;s:11:\"item-15.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic l', '<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n<ul>\r\n	<li>The Big Oxmox advised her not to do so</li>\r\n	<li>Because there were thousands of bad Commas</li>\r\n	<li>Wild Question Marks and devious Semikoli</li>\r\n	<li>She packed her seven versalia</li>\r\n	<li>tial into the belt and made herself on the way.</li>\r\n</ul>\r\n', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by ', 0, 1),
(43, 13, 'WOMEN&#039S BOOTS SHOES MACA', 139, 'a:2:{i:0;s:10:\"item-1.jpg\";i:1;s:11:\"item-11.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a', '<p>d</p>\r\n', 'd', 0, 1),
(44, 13, 'WOMEN&#039S MINAM MEAGHAN', 45, 'a:2:{i:0;s:10:\"item-2.jpg\";i:1;s:11:\"item-13.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:1:{i:0;s:1:\"2\";}', 'a', '<p>d</p>\r\n', 'd', 0, 1),
(45, 13, 'MEN&#039S TAJA COMMISSIONER', 42, 'a:3:{i:0;s:10:\"item-3.jpg\";i:1;s:10:\"item-4.jpg\";i:2;s:11:\"item-14.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:1:{i:0;s:1:\"2\";}', 'a', '<p>a</p>\r\n', 'd', 0, 1),
(46, 13, 'RUSS MEN&#039S SNEAKERS', 25, 'a:3:{i:0;s:10:\"item-3.jpg\";i:1;s:10:\"item-4.jpg\";i:2;s:11:\"item-13.jpg\";}', 'a:1:{i:0;s:1:\"2\";}', 'a:1:{i:0;s:1:\"2\";}', 'a', '<p>s</p>\r\n', 'c', 0, 1),
(47, 13, 'Women&#039s Jaki', 32, 'a:2:{i:0;s:10:\"item-1.jpg\";i:1;s:11:\"item-15.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic l', '<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n<ul>\r\n	<li>The Big Oxmox advised her not to do so</li>\r\n	<li>Because there were thousands of bad Commas</li>\r\n	<li>Wild Question Marks and devious Semikoli</li>\r\n	<li>She packed her seven versalia</li>\r\n	<li>tial into the belt and made herself on the way.</li>\r\n</ul>\r\n', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by ', 0, 1),
(48, 3, 'Men&#039s Nike Air Max Torch 4 Running Shoes', 250, 'a:5:{i:0;s:17:\"5258_156869_1.jpg\";i:1;s:17:\"5258_156869_2.jpg\";i:2;s:17:\"5258_156869_3.jpg\";i:3;s:17:\"5258_156869_6.jpg\";i:4;s:17:\"5258_156869_7.jpg\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'Mens Athletics and Sneakers Running Shoes Men&#039s Nike Air Max Torch 4 Running Shoes\r\nNikeYou&#039ll be tearing up the track and setting sky-high records with your new Nike Air Max Torch 4 Running Shoes. From the moment you slip them on and lace th', '<ul>\r\n	<li>You&#39;ll be tearing up the track and setting sky-high records with your new Nike Air Max Torch 4 Running Shoes. From the moment you slip them on and lace them up, you&#39;ll be enveloped in comfort and sleek style that you&#39;ll come running back to on the daily. The lightweight and breathable construction of the Air Max Tourch allows you to pick up the pace without being bogged down with sweaty toes or discomfort with the light and supportive Air Max midsole and a durable, yet flexible rubber traction outsole that ensures that every step is taken with confidence and comfort.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Breathable mesh uppers with synthetic overlays provide ventilation and support</li>\r\n	<li>Lace-up closure for a custom and secure fit</li>\r\n	<li>Cushioned insole for added comfort</li>\r\n	<li>Phylon midsoles with visible Max Air units in the heels provide lightweight cushioning</li>\r\n	<li>Full-length BRS 1000&reg; carbon fiber rubber Waffle outsole for durability and traction</li>\r\n	<li>Reflective elements help ensure visibility in low light</li>\r\n	<li>Padded tongue and collar for added comfort</li>\r\n	<li>Nike&reg; branding details</li>\r\n</ul>\r\n', 'The lightweight and breathable construction of the Air Max Tourch allows you to pick up the pace without being bogged down with sweaty toes or discomfort with the light and supportive Air Max midsole and a durable, yet flexible rubber traction outsol', 0, 1),
(49, 13, 'Women&#039s Nike Air Max Torch 4 HV Running Shoes', 96, 'a:3:{i:0;s:19:\"105124_209251_1.jpg\";i:1;s:19:\"105124_209251_3.jpg\";i:2;s:19:\"105124_209251_6.jpg\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}', 'Please select a size and color to view availability', '<ul>\r\n	<li>Breathable mesh uppers with synthetic overlays provide ventilation and support</li>\r\n	<li>Secure lace-up closure</li>\r\n	<li>Molded EVA sock liners offer comfort and support underfoot</li>\r\n	<li>Phylon midsoles with visible Max Air units in the heels provide lightweight cushioning</li>\r\n	<li>Full-length BRS 1000&reg; carbon fiber rubber Waffle outsole for durability and traction</li>\r\n	<li>Breathable shoe lining for added comfort</li>\r\n	<li>Padded collar and tongue</li>\r\n	<li>Nike branding details</li>\r\n</ul>\r\n', 'Please select a size and color to view availability', 0, 1),
(50, 3, 'Men&#039s Puma Pacer Future Running Shoes', 56, 'a:3:{i:0;s:19:\"111751_235724_1.jpg\";i:1;s:19:\"111751_235724_3.jpg\";i:2;s:19:\"111751_235724_6.jpg\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', 'Men&#039s Puma Pacer Future Running Shoes', '<ul>\r\n	<li>Combination upper</li>\r\n	<li>Secure lace-up closure</li>\r\n	<li>Cushioned SoftFoam insole</li>\r\n	<li>Durable outsole</li>\r\n	<li>Breathable shoe lining</li>\r\n	<li>Padded collar and attached tongue with a slight stretch</li>\r\n	<li>Pull loop at tongue for easier on and off</li>\r\n	<li>PUMA branding details</li>\r\n</ul>\r\n', 'Men&#039s Puma Pacer Future Running Shoes', 0, 1),
(51, 3, 'Women&#039s Puma Pacer Future Running Shoes', 36, 'a:3:{i:0;s:19:\"114419_235796_1.jpg\";i:1;s:19:\"114419_235796_3.jpg\";i:2;s:19:\"114419_235796_4.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:1:{i:0;s:1:\"2\";}', 'Women&#039s Puma Pacer Future Running Shoes', '<ul>\r\n	<li>Lightweight and breathable mesh and faux leather upper</li>\r\n	<li>Lace-up closure for a custom and secure fit</li>\r\n	<li>Flat heel</li>\r\n	<li>Classic round toe</li>\r\n	<li>Cushioned SoftFoam+ footbed for added comfort</li>\r\n	<li>Durable rubber traction outsole</li>\r\n	<li>PUMA&reg; branding details</li>\r\n</ul>\r\n', 'Women&#039s Puma Pacer Future Running Shoes', 0, 1),
(52, 3, 'Women&#039s Puma Pacer Future Kaleidoscope Sneaker', 45, 'a:4:{i:0;s:19:\"116085_240315_1.jpg\";i:1;s:19:\"116085_240315_2.jpg\";i:2;s:19:\"116085_240315_5.jpg\";i:3;s:19:\"116085_240315_6.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}', 'Women&#039s Puma Pacer Future Kaleidoscope Sneakers', '<ul>\r\n	<li>Lightweight and breathable mesh and synthetic upper</li>\r\n	<li>Easy slip-on design with a lace-up front for a custom and secure fit</li>\r\n	<li>Classic round toe</li>\r\n	<li>Cushioned SoftFoam+ insole for added comfort</li>\r\n	<li>Supportive midsole</li>\r\n	<li>Durable rubber traction outsole for added stability</li>\r\n	<li>Supportive TPU cage that supports the foot on both lateral and medial sides</li>\r\n	<li>Eye-catching kaleidoscopic graphics on the heel for added style</li>\r\n	<li>PUMA&reg; branding details</li>\r\n</ul>\r\n', 'Women&#039s Puma Pacer Future Kaleidoscope Sneakers', 0, 1),
(53, 13, 'Men&#039s Puma Softride Rift Bold Slip-On Sneakers', 57, 'a:4:{i:0;s:19:\"116085_240315_1.jpg\";i:1;s:19:\"116085_240315_2.jpg\";i:2;s:19:\"116085_240315_5.jpg\";i:3;s:19:\"116085_240315_6.jpg\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";}', 'Men&#039s Puma Softride Rift Bold Slip-On Sneakers', '<ul>\r\n	<li>Breathable combination upper</li>\r\n	<li>Easy slip-on design with lace detail for a secure-fit</li>\r\n	<li>SoftFoam cushioning insole</li>\r\n	<li>Durable outsole</li>\r\n	<li>Breathable shoe lining</li>\r\n	<li>Stretch collar and tongue for easier on and off</li>\r\n	<li>Pull loop at back</li>\r\n	<li>PUMA branding details</li>\r\n</ul>\r\n', 'Men&#039s Puma Softride Rift Bold Slip-On Sneakers', 0, 1),
(54, 3, 'Men&#039s Puma Axelion Interest Fade Sneakers', 83, 'a:6:{i:0;s:19:\"108731_228130_1.jpg\";i:1;s:19:\"108731_228130_2.jpg\";i:2;s:19:\"108731_228130_3.jpg\";i:3;s:19:\"111751_235724_3.jpg\";i:4;s:19:\"115603_239101_3.jpg\";i:5;s:19:\"116085_240315_2.jpg\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}', 'Men&#039s Puma Axelion Interest Fade Sneakers', '<ul>\r\n	<li>Breathable fabric upper</li>\r\n	<li>Unique lace-up closure for a snug fit</li>\r\n	<li>Durable rubber outsole</li>\r\n	<li>Pull tabs at heel and tongue</li>\r\n	<li>Comfort cushioning insole</li>\r\n</ul>\r\n', 'Men&#039s Puma Axelion Interest Fade Sneakers', 0, 1),
(55, 3, 'Men&#039s Nike Lebron Witness V Basketball Shoes', 57, 'a:2:{i:0;s:19:\"113638_241683_1.jpg\";i:1;s:19:\"113638_241683_4.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', 'Men&#039s Nike Lebron Witness V Basketball Shoes', '<ul>\r\n	<li>t&#39;s time to up your game with the Lebron Witness V Basketball Shoes by Nike. These durable, yet lightweight shoes feature a sculpted look that really is more than a pretty face. The rigid heel piece and forefoot lockdown system provides comfortable support, while the multidirectional traction outsole keeps your head in the game and your feet on the court.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lightweight and breathable mesh and synthetic upper</li>\r\n	<li>Lace-up closure for a custom and secure fit</li>\r\n	<li>Approx. 1 1/2 inch heel</li>\r\n	<li>Classic round toe</li>\r\n	<li>Padded footbed for added comfort</li>\r\n	<li>Supportive midsole</li>\r\n	<li>Durable traction outsole</li>\r\n	<li>Padded collar for added support and comfort</li>\r\n	<li>Nike&reg; branding details</li>\r\n</ul>\r\n', 'Men&#039s Nike Lebron Witness V Basketball Shoes', 0, 0),
(56, 3, 'Men&#039s Nike Renew Elevate II Basketball Shoes', 58, 'a:2:{i:0;s:19:\"113645_233779_1.jpg\";i:1;s:19:\"113645_233779_2.jpg\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', 'Players who feel good, play good - it&#039s just common sense! ', '<ul>\r\n	<li>Players who feel good, play good - it&#39;s just common sense! With Nike&#39;s Renew Elevate II Basketball Shoes you can own the court effortlessly and then seamlessly transition into the afterparty. The Renew Elevate II is built to perform and to provide responsive cushioning and plush comfort that only Nike could give you. With a slight update from the previous model, the Renew Elevate II features a repositioned Swoosh logo and a newly added TPU component that the laces feed through to help reduce in-shoe movement and provide you with additional support on the court.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lightweight and breathable mesh and fabric upper</li>\r\n	<li>Lace-up closure for a custom and secure fit</li>\r\n	<li>TPU component that the laces feed through to help reduce in-shoe movement</li>\r\n	<li>Classic round toe</li>\r\n	<li>Cushioned footbed for added comfort</li>\r\n	<li>Supportive Renew foam midsole that provides comfort, structure, and stability</li>\r\n	<li>Durable multidirection rubber traction outsole for added stability</li>\r\n	<li>Padded collar for added support and comfort</li>\r\n	<li>Nike&reg; branding details</li>\r\n</ul>\r\n', 'Players who feel good, play good - it&#039s just common sense! ', 0, 1),
(57, 3, 'Men&#039s Nike Court Legacy Canvas Mid Sneakers', 86, 'a:2:{i:0;s:19:\"113940_242673_1.jpg\";i:1;s:19:\"113940_242673_2.jpg\";}', 'a:1:{i:0;s:1:\"2\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', 'Men&#039s Nike Court Legacy Canvas Mid Sneakers', '<ul>\r\n	<li>Fabric upper</li>\r\n	<li>Lace-up closure for a custom and secure fit</li>\r\n	<li>Flat heel</li>\r\n	<li>Classic round toe</li>\r\n	<li>Cushioned footbed for added comfort</li>\r\n	<li>Durable traction outsole</li>\r\n	<li>High-top design</li>\r\n	<li>Nike&reg; branding details</li>\r\n</ul>\r\n', 'Men&#039s Nike Court Legacy Canvas Mid Sneakers', 0, 1),
(58, 3, 'Men&#039s New Balance MT481 Trail Running Shoes', 32, 'a:2:{i:0;s:18:\"79154_187082_1.jpg\";i:1;s:18:\"79154_187082_2.jpg\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}', 'Men&#039s New Balance MT481 Trail Running Shoes', '<ul>\r\n	<li>Hit the trail in confident comfort wearing the New Balance&reg; MT481! These durable running shoes have a removable UltraSoft Ortholite cushioned insole for long-lasting comfort, a stabilizing polyurethane midsole for added cushioning comfort, and an all-terrain non-marking rubber traction outsole. The breathable mesh lining helps to keep your foot cool and comfortable as the miles tick down.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Durable fabric upper with synthetic overlays</li>\r\n	<li>Lace-up front for a secure fit</li>\r\n	<li>Removable UltraSoft Ortholite cushioning insole for all-day comfort</li>\r\n	<li>Polyurethane midsole provides stable cushioning</li>\r\n	<li>All-terrain non-marking rubber traction outsole</li>\r\n	<li>Breathable mesh lining</li>\r\n	<li>Padded tongue and collar</li>\r\n	<li>CUSH+ heel pad for comfort and cushioning</li>\r\n	<li>Pull tab at the rear for easy on wear</li>\r\n	<li>New Balance&reg; branding details on sides and front</li>\r\n</ul>\r\n', 'Men&#039s New Balance MT481 Trail Running Shoes', 0, 1),
(59, 3, 'Men&#039s Puma', 12, 'a:2:{i:0;s:19:\"113645_233779_2.jpg\";i:1;s:19:\"113940_242673_2.jpg\";}', 'a:1:{i:0;s:1:\"1\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}', 'Men&#039s Puma Axelion Break Running Shoes', '<ul>\r\n	<li>Breathable knit upper</li>\r\n	<li>Lace-up closure for a custom and secure fit</li>\r\n	<li>Flat heel</li>\r\n	<li>Classic round toe</li>\r\n	<li>SoftFoam+ insole for added comfort</li>\r\n	<li>TPU shanks in the midfoot for added support</li>\r\n	<li>Supportive midsole</li>\r\n	<li>Durable rubber outsole for added comfort and traction</li>\r\n	<li>PUMA&reg; branding details</li>\r\n</ul>\r\n', 'Men&#039s Puma Axelion Break Running Shoes', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id`, `title`) VALUES
(1, 'M'),
(2, 'L');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`id`, `title`, `color`) VALUES
(1, 'Pending', '#F78812'),
(2, 'Processing', '#FEC260'),
(3, 'Success', '95DAC1'),
(5, 'Fail', '#FF4C29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `mail` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(5) NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `mail`, `pass`, `first_name`, `last_name`, `img`, `sex`, `phone`, `address`, `level`) VALUES
(104, 'ad@gmail.com', '123', '', '', '', 0, '', '', 0),
(105, 'van@gmail.com', '123', 'Van', 'Thanh', '', 0, '0379085518', 'Thanh Hóa - Việt Nam', 1),
(106, 'ly@gmail.com', '123', 'Nguyen', 'Ly', '', 0, '', 'Thái Nguyên', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `user_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
