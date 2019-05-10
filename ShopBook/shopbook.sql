-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 10, 2019 lúc 03:43 PM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopbook`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8583vtevk8ufolxgwr0ajd8sx` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `description`, `img`, `name`, `news_id`) VALUES
(1, 'QC', 'images/banner1.jpg', 'QC', 1),
(2, 'QCC', 'images/banner5.png', 'QCC', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `book_category_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs8rqq96mvfrfsj9euw5mn973t` (`book_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `author`, `description`, `image`, `language`, `name`, `price`, `publisher`, `release_date`, `book_category_id`, `quantity`, `url`, `active`) VALUES
(1, 'Lâm Đặc Đặc', 'ĐỪNG MÔNG LUNG, VÌ CUỘC ĐỜI LÀ CỦA BẠN', 'images/dammo.jpg', 'images/dammo.jpg', 'Dám Mơ Ước Sẽ Không Còn Sợ Hãi', 78000, '	Thế Giới', '2019-04-16', 3, 4, 'dam+mo+uoc+se+khong+con+so+hai', 0),
(2, 'Khuynh Bắc', 'Ánh đèn êm dịu , hoa hồng rực rỡ và Kỉ Ngôn Tin đang quỳ 1 chân trước mặt cô, tất cả khiến Thích Niên sững sờ bối rối :', 'images/yeu.jpg', 'tieng việt', 'YÊU ANH TỪ CÁI NHÌN ĐẦU TIÊN', 214000, 'NXB Phụ Nữ', '2019-04-19', 5, 5, 'Yeu+anh+tu+Cai+Nhin+Dau+tien', 0),
(3, 'Asagiri Kafka - Harukawa Sango', 'Kyoka vừa chính thức trở thành nhân viên công ty thám tử thì có một yêu cầu công việc nặc danh đòi đích thân cô bé thực hiện.', 'images/vanhao11.jpg', 'tiếng việt', 'VĂN HÀO LƯU LẠC - TẬP 11', 35000, '	Hồng Đức', '2019-04-19', 4, 5, 'Van+Hao+Luu+lac+Tap+11', 0),
(4, 'Sengae', 'cũng giới thiệu đến độc giả những cặp anh chị em “bá đạo” khác:', 'images/anhvsem.jpg', 'tiếng việt', 'Anh Với Em Hay Chó Với Mèo - Tập 2', 107000, 'Hà Nội', '2019-04-20', 2, 5, 'Anh+Voi+Em+Hay+Cho+voi+Meo', 0),
(5, 'Lạc Tiểu Thất', 'Câu chuyện tình hài hước và lãng mạn của cô sinh viên Y khoa Vạn Quý Phi. ', 'images/emla1.jpg', 'tiếng việt', 'EM LÀ TIỂU TIÊN NỮ CỦA ANH (BỘ 2 TẬP)', 116000, 'Hà Nội', '2019-04-20', 1, 5, 'Em+La+Tieu+Tien+Nu+Cua+Anh', 0),
(6, 'Vương Vũ Thần', 'Một biên tập viên quèn của tòa soạn luôn vất vả bôn ba vì cuộc sống và một kẻ quái dị không chịu làm việc lại thích du lịch khắp nơi, có người gọi họ là Holmes và Watson của Trung Quốc, ', 'images/kinhdi1.jpg', 'tiếng việt', 'MỖI ĐÊM MỘT TRUYỆN KINH DỊ - TẬP 3', 110000, 'Văn học', '2019-04-20', 1, 5, 'Moi+Dem+Mot+Cuon+Truyen+Kinh+Di+Tap+3', 0),
(7, 'Vương Vũ Thần', 'Một biên tập viên quèn của tòa soạn luôn vất vả bôn ba vì cuộc sống và một kẻ quái dị không chịu làm việc lại thích du lịch khắp nơi, có người gọi họ là Holmes và Watson của Trung Quốc, ', 'images/kinhdi2.jpg', 'tiếng việt', 'Mỗi Đêm Một Truyện Kinh Dị - Tập 2', 115000, 'Văn học', '2019-04-20', 1, 5, 'Moi+Dem+Mot+Cuon+Truyen+Kinh+Di+Tap+2', 0),
(8, 'Vương Vũ Thần', 'Một biên tập viên quèn của tòa soạn luôn vất vả bôn ba vì cuộc sống và một kẻ quái dị không chịu làm việc lại thích du lịch khắp nơi, có người gọi họ là Holmes và Watson của Trung Quốc, ', 'images/kinhdi3.jpg', 'tiếng việt', 'Mỗi Đêm Một Truyện Kinh Dị - Tập 1', 116000, 'Văn học', '2019-04-20', 1, 5, 'Moi+Dem+Mot+Cuon+Truyen+Kinh+Di+Tap+1', 0),
(9, 'Chi Li Anh Chước', 'Có thể, bạn đã từng có những trải nghiệm kì lạ nhưng vẫn chưa tìm ra sự thật.', 'images/kinhdi4.jpg', 'tiếng việt', 'DẠ ĐỀ - TẶNG KÈM BOOKMARK (SỐ LƯỢNG CÓ HẠN)', 94000, 'Hà Nội', '2019-04-20', 1, 5, 'Da+De', 0),
(61, 'Tsugumi Ohba, Takeshi Obata', 'Rất hay ', 'images/comic1.jpg', 'images/comic1.jpg', 'DEATH NOTE - TẬP 6', 35000, 'Hồng Đức', '2019-04-21', 4, 0, 'DEATH+NOTE+TAP+6', 0),
(133, 'Mizushiro Mizuki', 'Tôi hoàn toàn không có mục đích sống, cho đến khi gặp cô ấy...', 'images/oka.jpg', 'tiếng việt', 'TÌNH ĐẦU LÚC LÂM CHUNG VỚI THIẾU NỮ THẦN CHẾT', 102000, 'Hội Nhà Văn', '2019-04-26', 5, 10, 'TINH+ĐAU+LUC+LAM+CHUNG+VOI+THIEU+NU+THAN+CHET', 0),
(145, 'Thiên Xuyên', 'VẬT LINH HỘI 3- LỰA CHỌN MÙ', 'images/vatlinh.jpg', 'tiếng việt', 'VẬT LINH HỘI 3- LỰA CHỌN MÙ', 73100, 'Hội Nhà Văn', '2019-05-01', 5, 10, 'VAT+LINH+HOI+3-+LUA+CHON+MU', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_category`
--

DROP TABLE IF EXISTS `book_category`;
CREATE TABLE IF NOT EXISTS `book_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `book_category`
--

INSERT INTO `book_category` (`id`, `name`) VALUES
(1, 'kinh di'),
(2, 'Truyện 18+'),
(3, 'Truyện ngắn - Tản văn'),
(4, 'Truyện Tranh - Comic'),
(5, 'Tiểu thuyết tình cảm - Lãng mạn'),
(185, 'Huyền bí - Giả tưởng'),
(186, 'Kỹ Năng Sống'),
(187, 'Light Novel');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE IF NOT EXISTS `cart_item` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `order_cartitems_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKis5hg85qbs5d91etr4mvd4tx6` (`book_id`),
  KEY `FKdc98dtm36hv8s64v5rl41vkb4` (`order_cartitems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart_item`
--

INSERT INTO `cart_item` (`id`, `price`, `quantity`, `book_id`, `order_cartitems_id`) VALUES
(125, 107000, 1, 4, 124),
(132, 35000, 1, 61, 131),
(135, 107000, 1, 4, 134),
(136, 204000, 2, 133, 134),
(138, 102000, 1, 133, 137),
(141, 78000, 1, 1, 140),
(142, 35000, 1, 61, 140),
(144, 315000, 9, 61, 143),
(177, 73100, 1, 145, 176),
(178, 510000, 5, 133, 176),
(180, 219300, 3, 145, 179);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkko96rdq8d82wm91vh2jsfak7` (`book_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `book_id`, `user_id`, `date`) VALUES
(189, 'bất ngờ vãi ', 133, 93, '2019-05-09'),
(190, 'cũng hay', 145, 92, '2019-05-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(191),
(191),
(191),
(191),
(191);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `content` text,
  `date` date DEFAULT NULL,
  `header` varchar(500) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKetu1r8ieiuhdh90s8hyauh7y8` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `content`, `date`, `header`, `img`, `banner_id`, `url`) VALUES
(1, 'Sinh nhật Lazada 2018 là sự kiện đang được rất nhiều tín đồ mua hàng online mòn mỏi mong chờ. Vì những năm trước, Lazada thường tổ chức sự kiện này vào các ngày từ 23/03 – 26/03. Thế nhưng năm nay đã đến hẹn mà vẫn không thấy Lazada có động tĩnh gì. Vậy là từ khoảng cuối tháng 3 đến giờ, sự háo hức về một bữa tiệc sinh nhật hoành tráng của Lazada càng trở nên mãnh liệt hơn bao giờ hết. Và hôm nay đây, chúng tôi hân hoan thông báo cho bạn một tin cực kỳ nóng hổi rằng: Sinh nhật Lazada 2018 này sẽ được tổ chức vào 3 ngày từ 09/05 – 11/05/2018. Hãy cùng theo dõi xem bữa đại tiệc Sinh nhật này Lazada có gì Hot không nhé!', '2019-06-05', 'Sinh nhật SHOPBOOK: Tưng Bừng Đại Tiệc Giảm Giá Mua Sắm Online', 'images/banner1.jpg', 1, 'Sinh+nhat+shop+book'),
(2, 'Sinh nhật Lazada 2018 là sự kiện đang được rất nhiều tín đồ mua hàng online mòn mỏi mong chờ. Vì những năm trước, Lazada thường tổ chức sự kiện này vào các ngày từ 23/03 – 26/03. Thế nhưng năm nay đã đến hẹn mà vẫn không thấy Lazada có động tĩnh gì. Vậy là từ khoảng cuối tháng 3 đến giờ, sự háo hức về một bữa tiệc sinh nhật hoành tráng của Lazada càng trở nên mãnh liệt hơn bao giờ hết. Và hôm nay đây, chúng tôi hân hoan thông báo cho bạn một tin cực kỳ nóng hổi rằng: Sinh nhật Lazada 2018 này sẽ được tổ chức vào 3 ngày từ 09/05 – 11/05/2018. Hãy cùng theo dõi xem bữa đại tiệc Sinh nhật này Lazada có gì Hot không nhé!', '2019-06-05', 'Sinh nhật SHOP: Tưng Bừng Đại Tiệc Giảm Giá Mua Sắm Online', 'images/banner5.png', 2, 'Sinh+nhat+shop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `price` double NOT NULL,
  `user_orders_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6phedqmdo4c02nqetq34goxu9_idx` (`user_orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `date`, `price`, `user_orders_id`, `status`) VALUES
(124, '2019-04-25 00:00:00', 107000, 52, 1),
(131, '2019-04-26 00:00:00', 35000, 52, 1),
(134, '2019-04-26 00:00:00', 311000, 52, 1),
(137, '2019-04-26 00:00:00', 102000, 52, 1),
(140, '2019-05-01 00:00:00', 113000, 52, 1),
(143, '2019-05-01 00:00:00', 315000, 52, 1),
(176, '2019-05-08 00:00:00', 583100, 93, 0),
(179, '2019-05-08 00:00:00', 219300, 52, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `address`, `firstname`, `lastname`, `password`, `phone`, `role`, `username`) VALUES
(52, 'Đông Hòa - Thị Trấn Hòa Hiệp trung', 'Nguyen Chi Tam', 'tam', '$2a$12$LtbYtEzOBdnsiD/E9Wtj2O9Y5dj8BGhbPzuSAt.40LuHhKFfcVuHC', '01234566667', 'ROLE_USER', 'xomrayno1'),
(53, NULL, 'Nguyen Chi', 'tam', '$2a$12$LtbYtEzOBdnsiD/E9Wtj2O9Y5dj8BGhbPzuSAt.40LuHhKFfcVuHC', NULL, 'ROLE_ADMIN', 'xomrayno5'),
(92, '', 'Nguyen Chi', 'tam', '$2a$12$LtbYtEzOBdnsiD/E9Wtj2O9Y5dj8BGhbPzuSAt.40LuHhKFfcVuHC', '', 'ROLE_USER', 'xomrayno2'),
(93, 'Đông Hòa', 'Nguyen Chi', 'tam', '$2a$12$LtbYtEzOBdnsiD/E9Wtj2O9Y5dj8BGhbPzuSAt.40LuHhKFfcVuHC', '', 'ROLE_USER', 'xomrayno3');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FKs8rqq96mvfrfsj9euw5mn973t` FOREIGN KEY (`book_category_id`) REFERENCES `book_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FKdc98dtm36hv8s64v5rl41vkb4` FOREIGN KEY (`order_cartitems_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FKis5hg85qbs5d91etr4mvd4tx6` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK6phedqmdo4c02nqetq34goxu9` FOREIGN KEY (`user_orders_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
