-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2021 at 03:53 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookcar`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerNumber`, `customerName`, `dob`, `sex`, `email`, `password`, `phone`, `address`, `trip_id`, `updated_at`, `created_at`) VALUES
(1, 'Trân Văn Tuấn', NULL, 'Nam', 'trantuan12@gmail.com', NULL, '0123456789', 'Nam Trực, Nam Định', 4, NULL, NULL),
(2, 'Nguyễn Văn Tuấn', NULL, 'Nam', 'nguyentuan12@gmail.com', NULL, '0855899856', 'Nam Trực, Nam Định', 1, NULL, NULL),
(3, 'Phan Văn Tài', NULL, 'Nam', 'phantai12@gmail.com', NULL, '0123456789', 'Phú Thọ', 1, NULL, NULL),
(4, 'Nguyễn Thị Linh', NULL, 'Nữ', 'linh1234@gmail.com', NULL, '0865999865', 'Nghi Sơn, Thanh Hóa', 2, NULL, NULL),
(5, 'Đỗ Hồng Quân', NULL, 'Nam', 'hongquan3010@gmail.com', NULL, '0895885623', 'Nam Trực, Nam ĐỊnh', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `employeeNumber` int(11) NOT NULL,
  `employeeName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phoneNumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gara_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`employeeNumber`, `employeeName`, `sex`, `dob`, `phoneNumber`, `gara_id`) VALUES
(1, 'Phan Văn Hợp', 'Nam', '0000-00-00', '0865888555', 1),
(2, 'Lê Văn Hiếu Trung', 'Nam', '0000-00-00', '0868888999', 1),
(3, 'Phan Văn Bảo', 'Nam', '0000-00-00', '08955556895', 1),
(4, 'Đào Trọng Tấn', 'Nam', '0000-00-00', '0856999225', 1),
(5, 'Đỗ Hồng Quân', 'Nam', NULL, '0865888555', 1),
(6, 'Phan Minh Tú', 'Nam', NULL, '0868888999', 2),
(7, 'Nguyễn Kim Tiến', 'Nam', '0000-00-00', '08955556895', 2),
(8, 'Nguyễn Kim Sơn', 'Nam', '0000-00-00', '0856999225', 2),
(9, 'Phan Minh Tú', 'Nam', '0000-00-00', '0865888555', 2),
(10, 'Đỗ Kim Sơn', 'Nam', '0000-00-00', '0895666222', 2),
(11, 'Phan Kim Hoàng Anh', 'Nam', '0000-00-00', '09856665885', 3),
(12, 'Phan Văn Tuấn', 'Nam', '0000-00-00', '0958555625', 3),
(13, 'Lê Văn Tuấn Anh', 'Nam', '0000-00-00', '0865880885', 3),
(14, 'Trần Trung Hiếu', 'Nam', '0000-00-00', '0895586254', 3),
(15, 'Phan Đình Đan Anh', 'Nam', '0000-00-00', '0859555865', 3),
(16, 'Phạm Tuấn Nghĩa', 'Nam', '0000-00-00', '0865888566', 4),
(17, 'Phạm Tuấn Anh', 'Nam', '0000-00-00', '0987856823', 4),
(18, 'Lê Đình Ngọc', 'Nam', '0000-00-00', '0986588852', 4),
(19, 'Đỗ Trung Hiếu', 'Nam', '0000-00-00', '0865808566', 4),
(20, 'Lê Văn Tuấn', 'Nam', '0000-00-00', '0895886856', 4),
(21, 'Đỗ Trung Quân', 'Nam', NULL, '0865888555', 5),
(22, 'Võ Văn Anh', 'Nam', NULL, '0868888999', 5),
(23, 'Nguyễn Khánh Việt', 'Nam', NULL, '09496352142', 5),
(24, 'Võ Nhật Hạ', 'Nam', NULL, '01699271212', 5),
(25, 'Từ Khắc Hiếu', 'Nam', NULL, '01643241728', 5),
(26, 'Phạm Quốc Đức', 'Nam', NULL, '01649088188', 6),
(27, 'Phạm Duy Bình', 'Nam', NULL, '01629178625', 6),
(28, 'Nguyễn Tùng Dương', 'Nam', NULL, '0962806801', 6),
(29, 'Bùi Anh Tú', 'Nam', NULL, '01699271212', 6),
(30, 'Bùi Trung Hiếu', 'Nam', NULL, '01643241728', 6),
(31, 'Đỗ Quang Hiệp', 'Nam', NULL, '01649088188', 7),
(32, 'Đỗ Văn Tuấn', 'Nam', NULL, '0868455987', 7),
(33, 'Dương Xuân Hòa', 'Nam', NULL, '01629178625', 7),
(34, 'Hà Thị Ngọc Lưu Ly', 'Nữ', NULL, '0962806805', 7),
(35, 'Hồ Khánh Vũ', 'Nam', NULL, '01652543111', 7),
(36, 'Hoàng Lê Tuấn Anh', 'Nam', NULL, '0973820537', 8),
(37, 'Hoàng Văn Thắng', 'Nam', NULL, '0963733142', 8),
(38, 'Lê Thành Công', 'Nam', NULL, '0969981028', 8),
(39, 'Lê Thiện Văn', 'Nam', NULL, '01675956599', 8),
(40, 'Nguyễn Đăng Kiên', 'Nam', NULL, '0967548699', 8),
(41, 'Nguyễn Hữu Hoài Nam', 'Nam', NULL, '0903482860', 9),
(42, 'Nguyễn Mạnh Cường', 'Nam', NULL, '01675703256', 9),
(43, 'Nguyễn Quang Linh', 'Nam', NULL, '01246819963', 9),
(44, 'Nguyễn Quang Trường', 'Nam', NULL, '0916289175', 9),
(45, 'Nguyễn Thái Bảo', 'Nam', NULL, '01653754567', 9),
(46, 'Nguyễn Tiến Mạnh', 'Nam', NULL, '0968429906', 10),
(47, 'Phạm Ngọc Hòa', 'Nam', NULL, '0968038714', 10),
(48, 'Lê Văn Anh', 'Nam', NULL, '0895866256', 10),
(49, 'Thiều Bảo Trâm', 'Nam', NULL, '0865888555', 10),
(50, 'Thiều Bảo Trâm', 'Nam', NULL, '0865888555', 10),
(51, 'Nguyễn Sơn Tùng', 'Nam', NULL, '0865888555', 11),
(52, 'Phan Bảo An', 'Nam', NULL, '0865888555', 11),
(54, 'Phan Đình Bách', 'Nam', NULL, '0865888555', 11),
(55, 'Nhâm Đình Phan', 'Nam', NULL, '0865888555', 11),
(56, 'Lê Văn Hiếu', 'Nam', NULL, '0865888555', 12),
(57, 'Lê Văn Công', 'Nam', NULL, '0865888555', 12),
(58, 'Nguyễn Trọng Toàn', 'Nam', NULL, '0865888555', 12),
(59, 'Trần Văn Hiếu', 'Nam', NULL, '0865888555', 12),
(60, 'Tạ Việt Cường', 'Nam', NULL, '0865888555', 12),
(61, 'Lê Bảo', 'Nam', NULL, '0865888555', 13),
(62, 'Khá Bảnh', 'Nam', NULL, '0865888555', 13),
(63, 'Dũng Trọc Hà Đông', 'Nam', NULL, '0865888555', 13),
(64, 'Lê Văn Luyện', 'Nam', NULL, '0865888555', 13),
(65, 'Khánh Sky', 'Nam', NULL, '0865888555', 13),
(66, 'Đỗ Trung Quân Anh', 'Nam', NULL, '0865888555', 14),
(67, 'Võ Chí Anh', 'Nam', NULL, '0868888677', 14),
(68, 'Việt Khắc', 'Nam', NULL, '0865888555', 14),
(69, 'Soobin Hoàng Sơn', 'Nam', NULL, '0865888555', 14),
(70, 'Akira Phan', 'Nam', NULL, '0865888555', 14),
(71, 'Sơn Tùng', 'Nam', NULL, '0865888555', 15),
(72, 'Jack', 'Nam', NULL, '0865888555', 15),
(73, 'BinZ', 'Nam', NULL, '0865888555', 15),
(74, 'Đen Vâu', 'Nam', NULL, '0865888555', 15),
(75, 'Trấn Thành', 'Nam', NULL, '0865888555', 15),
(76, 'Lê Công Vinh', 'Nam', NULL, '0865888555', 16),
(77, 'Nguyễn Công Phượng', 'Nam', NULL, '0865888555', 16),
(78, 'Nguyễn Quang Hải', 'Nam', NULL, '0865888555', 16),
(79, 'Phan Đình Trọng', 'Nam', NULL, '0865888555', 16),
(80, 'Lê Văn Lâm', 'Nam', NULL, '0865888555', 16),
(81, 'Bùi Tiến Dũng', 'Nam', NULL, '0865888555', 17),
(82, 'Nguyễn Tiến Linh', 'Nam', NULL, '0865888555', 17),
(83, 'Nguyễn Văn Toàn', 'Nam', NULL, '0865888555', 17),
(84, 'Phạm Đức Mạnh', 'Nam', NULL, '0865888555', 17),
(85, 'Phan Văn Tài Em', 'Nam', NULL, '0865888555', 17),
(86, 'Nguyễn Minh Tiến', 'Nam', NULL, '0865888555', 18),
(87, 'Hải Gắt', 'Nam', NULL, '0865888555', 18),
(88, 'Anh Bẩy', 'Nam', NULL, '0865888555', 18),
(89, 'Miss Pen', 'Nam', NULL, '0865888555', 18),
(90, 'Lê Văn Đốt Ky', 'Nam', NULL, '0865888555', 18),
(91, 'Em Pa Pê', 'Nam', NULL, '0865888555', 19),
(92, 'Ga Rét Bêu', 'Nam', NULL, '0865888555', 19),
(93, 'Phạm Anh Tuấn Nam', 'Nữ', NULL, '0865888555', 19),
(98, 'Phan Lê Đình Dũng', 'Nam', NULL, '0865888555', 20),
(99, 'Nguyễn Bảo An', 'Nam', NULL, '0865888555', 20),
(100, 'Trần Văn Ngọc', 'Nam', NULL, '0865888555', 20),
(101, 'Tạ Bảo Toàn', 'Nam', NULL, '0865888555', 20),
(102, 'Phan Đình Học', 'Nam', NULL, '0123468256', 20),
(103, 'Phan Trường Trinh', 'Nam', NULL, '0123468256', 20);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_detail`
-- (See below for the actual view)
--
CREATE TABLE `employee_detail` (
`gara_id` int(11)
,`name` varchar(100)
,`phone` varchar(100)
,`address` varchar(100)
,`rate_garage` int(1)
,`garageDescription` text
,`employeeNumber` int(11)
,`employeeName` varchar(50)
,`sex` varchar(20)
,`dob` date
,`phoneNumber` varchar(30)
,`trip_id` int(11)
,`productCode` int(11)
,`productDate` date
);

-- --------------------------------------------------------

--
-- Table structure for table `garage`
--

CREATE TABLE `garage` (
  `gara_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_garage` int(1) NOT NULL,
  `garageDescription` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garage`
--

INSERT INTO `garage` (`gara_id`, `name`, `phone`, `address`, `image`, `rate_garage`, `garageDescription`) VALUES
(1, 'Thành Long', '08658888562', 'số 19 đường Phạm Văn Đồng Nam Từ Liêm Hà Nội', '/img/xe1.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(2, 'Trọng Tuấn', '0869855833', 'Số 11 ngõ 142, Cổ Nhuế 2, Nam Từ Liêm, Hà Nội', '/img/xe2.jpg', 4, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(3, 'Bảo Long', '0869888566', 'số 18,Xuân Thủy,Cầu Giấy,Hà Nội', '/img/xe3.jpg', 4, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(4, 'Nghĩa Tuấn', '0865888959', 'Số 65, Trường Chinh, Hai Bà Trưng, Hà Nội', '/img/xe4.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(5, 'Phan Bảo', '08655800899', 'Số 17, Tôn Đức Thắng, Cầu Giấy, Hà Nội', '/img/xe5.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(6, 'Vũ Tuấn', '0865808568', 'số 223, Nguyễn Khánh Toàn, Cầu Giấy, Hà Nội', '/img/xe6.jpg', 3, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(7, 'Bảo Long', '09456666222', 'Xuân La, Tây Hồ, Hà Nội', '/img/xe7.jpg', 2, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(8, 'Bảo Minh', '0866655588', 'số 38, Hồ Tùng Mậu, Cầu Giấy,Hà Nội', '/img/xe8.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(9, 'Tuấn Nghĩa', '0899566225', 'số 234, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '/img/xe9.jpg', 4, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(10, 'Hải Long', '08665229987', 'Số 234, Xuân Thủy, Cầu Giấy, Hà Nội', '/img/xe10.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(11, 'Minh Tuấn', '0865995256', 'số 13, Phạm Hùng, Cầu Giấy, Hà Nội', '/img/xe11.jpg', 4, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(12, 'Minh Nghĩa', '0865855298', 'số 23, Nguyễn Trãi, Hà Đông, Hà Nội', '/img/xe12.jpg', 3, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(13, 'Dương Huy', '0865589125', 'số 123, Hoàng Mai, Hai Bà Trưng, Hà Nội', '/img/xe13.jpg', 4, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(14, 'Hải Tuấn', '0865888895', 'Số 145, Lạc Long Quân, Tây Hồ, Hà Nội', '/img/xe14.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(15, 'Long Hải', '0865888959', 'Số 167, Thanh Nhàn, Hai Bà Trưng, Hà Nội', '/img/xe15.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(16, 'Phan Tuấn', '0865899599', 'Số 20, Tân Triều, Thanh Trì, Hà Nội', '/img/xe16.jpg', 4, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(17, 'Hải Nghĩa', '0965999888', 'số 12, Dịch Vọng Hậu, Cầu Giấy, Hà Nội', '/img/xe17.jpg', 3, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(18, 'Tân Thành', '0869855823', 'Số 12, Văn Quán, Hà Đông, Hà Nội', '/img/xe18.jpg', 4, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(19, 'Chương Nam', '0895899866', 'Số 13 đường Bắc Nam, Thạch Thán, Quốc Oai, Hà Nội', '/img/xe19.jpg', 5, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....'),
(20, 'Minh Nghĩa', '0865088566', 'số 234 đường Giải Phóng, Thanh Trì, Hà Nội', '/img/xe20.jpg', 2, '- An toàn,tiện lợi nhanh chóng/Thông tin rõ ràng/Chạy xe đúng giờ/Nhân viên thân thiện/vvv....');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `address_pick` varchar(255) NOT NULL,
  `address_pay` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `address_pick`, `address_pay`) VALUES
(1, 'Bến Xe Cửa Nam', 'Bến Xe Thọ Xuân'),
(2, 'Bến Xe Mỹ Đình', 'Bến Xe Thọ Xuân'),
(3, 'Bến Xe Mỹ Đình', 'Bến Xe Bãi Cháy'),
(4, 'Bến Xe Giáp Bát', 'Bến Xe Quảng Yên'),
(5, 'Bến Xe Mỹ Đình', 'Bến Xe Cửa Nam'),
(6, 'Bến Xe Giáp Bát', 'Bến Xe Nghĩa Hưng'),
(7, 'Bến xe Giáp Bát', 'Bến Xe Thái Bình'),
(9, 'Bến Xe Mỹ Đình', 'Bến Xe Thái Bình'),
(10, 'Bến Xe Mỹ Đình', 'Bến Xe Sapa'),
(11, 'Bến Xe Giáp Bát', 'Bến Xe Sapa'),
(12, 'Bến Xe Mỹ Đình', 'Bến Xe Cầu Rào'),
(13, 'Bến Xe Giáp Bát', 'Bến Xe Cầu Rào'),
(14, 'Bến Xe Giáp Bát', 'QL3 TP.Thái Nguyên');

-- --------------------------------------------------------

--
-- Table structure for table `media_type`
--

CREATE TABLE `media_type` (
  `id` int(11) NOT NULL,
  `media_type_name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media_type`
--

INSERT INTO `media_type` (`id`, `media_type_name`) VALUES
(1, '50 chỗ'),
(2, 'Limousine'),
(3, '29 chỗ'),
(4, '50 chỗ giường nằm'),
(5, '30 chỗ'),
(6, '30 chỗ giường nằm'),
(7, '40 chỗ'),
(8, '40 chỗ giường nằm'),
(9, '29 chỗ giường nằm');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `quantityOrder` int(11) NOT NULL,
  `price` float NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `productCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`quantityOrder`, `price`, `orderNumber`, `productCode`) VALUES
(5, 2000, 2, 1),
(10, 1000, 3, 2),
(5, 5000, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `requiredDate` date DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNumber`, `orderDate`, `requiredDate`, `status`, `comment`, `customerNumber`) VALUES
(1, NULL, NULL, 'pending', NULL, 1),
(2, NULL, NULL, 'shipped', NULL, 2),
(3, NULL, NULL, 'pending', NULL, 5),
(4, NULL, NULL, 'pending', NULL, 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_detail`
-- (See below for the actual view)
--
CREATE TABLE `order_detail` (
`orderNumber` int(11)
,`orderDate` date
,`status` varchar(15)
,`comment` varchar(1000)
,`customerNumber` int(11)
,`quantityOrder` int(11)
,`price` float
);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `checkNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentDate` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `customerNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productCode` int(11) NOT NULL,
  `productDate` date DEFAULT NULL,
  `buyPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productCode`, `productDate`, `buyPrice`) VALUES
(1, '2021-11-14', 100000),
(2, '2021-11-15', 100000),
(3, '2021-11-14', 90000),
(4, '2021-11-15', 80000),
(5, '2021-11-14', 85000),
(6, '2021-11-15', 80000),
(7, '2021-11-14', 110000),
(8, '2021-11-15', 100000),
(9, '2021-11-14', 100000),
(10, '2021-11-15', 80000),
(11, '2021-11-14', 120000),
(12, '2021-11-15', 110000),
(13, '2021-11-14', 100000),
(14, '2021-11-15', 75000),
(15, '2021-11-14', 90000),
(16, '2021-11-15', 95000),
(17, '2021-11-14', 110000),
(18, '2021-11-15', 100000),
(19, '2021-11-14', 100000),
(20, '2021-11-15', 120000),
(21, '2021-11-14', 75000),
(22, '2021-11-15', 90000),
(23, '2021-11-15', 80000),
(24, '2021-11-14', 90000),
(25, '2021-11-15', 100000),
(26, '2021-11-14', 90000),
(27, '2021-11-15', 80000),
(28, '2021-11-14', 110000),
(29, '2021-11-15', 100000),
(30, '2021-11-14', 120000),
(31, '2021-11-15', 85000),
(32, '2021-11-14', 100000),
(33, '2021-11-15', 150000),
(34, '2021-11-14', 130000),
(35, '2021-11-15', 170000),
(36, '2021-11-14', 180000),
(37, '2021-11-15', 200000),
(38, '2021-11-14', 180000),
(39, '2021-11-15', 70000),
(40, '2021-11-14', 90000),
(41, '2021-11-15', 75000),
(42, '2021-11-14', 80000),
(43, '2021-11-15', 100000),
(44, '2021-11-14', 85000),
(45, '2021-11-15', 90000),
(46, '2021-11-14', 70000),
(47, '2021-11-15', 100000),
(48, '2021-11-14', 90000),
(49, '2021-11-15', 80000),
(50, '2021-11-14', 85000),
(51, '2021-11-15', 80000),
(52, '2021-11-14', 90000),
(53, '2021-11-15', 80000),
(54, '2021-11-14', 70000),
(55, '2021-11-14', 70000),
(56, '2021-11-15', 80000),
(57, '2021-11-14', 90000),
(58, '2021-11-15', 70000),
(59, '2021-11-14', 75000),
(60, '2021-11-15', 80000),
(61, '2021-11-14', 85000),
(62, '2021-11-15', 90000),
(63, '2021-11-14', 70000),
(64, '2021-11-15', 80000),
(65, '2021-11-14', 70000),
(66, '2021-11-15', 90000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ticket`
-- (See below for the actual view)
--
CREATE TABLE `ticket` (
`trip_id` int(11)
,`tripName_id` int(11)
,`time` varchar(50)
,`time_arrival` varchar(50)
,`media_type_name` varchar(70)
,`id` int(11)
,`quantity_customer` int(11)
,`quantityInStock` int(11)
,`departure` varchar(255)
,`destination` varchar(255)
,`image_trip` varchar(255)
,`productDate` date
,`buyPrice` float
,`address_pick` varchar(255)
,`address_pay` varchar(255)
,`gara_id` int(11)
,`name` varchar(100)
,`phone` varchar(100)
,`address` varchar(100)
,`image` varchar(100)
,`garageDescription` text
,`rate_garage` int(1)
,`employeeName` varchar(50)
,`phoneNumber` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ticketfavorite`
-- (See below for the actual view)
--
CREATE TABLE `ticketfavorite` (
`trip_id` int(11)
,`tripName_id` int(11)
,`time` varchar(50)
,`time_arrival` varchar(50)
,`media_type_name` varchar(70)
,`quantity_customer` int(11)
,`quantityInStock` int(11)
,`departure` varchar(255)
,`destination` varchar(255)
,`image_trip` varchar(255)
,`productDate` date
,`buyPrice` float
,`address_pick` varchar(255)
,`address_pay` varchar(255)
,`gara_id` int(11)
,`name` varchar(100)
,`phone` varchar(100)
,`address` varchar(100)
,`image` varchar(100)
,`garageDescription` text
,`rate_garage` int(1)
,`employeeName` varchar(50)
,`phoneNumber` varchar(30)
,`minTicket` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ticket_detail`
-- (See below for the actual view)
--
CREATE TABLE `ticket_detail` (
`trip_id` int(11)
,`tripName_id` int(11)
,`quantityInStock` int(11)
,`media_type_id` int(11)
,`productCode` int(11)
,`productDate` date
,`buyPrice` float
,`departure` varchar(255)
,`destination` varchar(255)
,`media_type_name` varchar(70)
,`location_id` int(11)
,`address_pick` varchar(255)
,`address_pay` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `tripName_id` int(11) NOT NULL,
  `time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_arrival` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type_id` int(11) NOT NULL,
  `quantity_customer` int(11) NOT NULL,
  `quantityInStock` int(11) NOT NULL,
  `employeeNumber` int(11) NOT NULL,
  `productCode` int(3) DEFAULT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `tripName_id`, `time`, `time_arrival`, `media_type_id`, `quantity_customer`, `quantityInStock`, `employeeNumber`, `productCode`, `location_id`) VALUES
(1, 1, '12:0:0', '14:30:0', 1, 100, 14, 1, 1, 1),
(2, 1, '5:00', '7:00', 2, 16, 4, 1, 1, 1),
(3, 1, '13:00', '15:00', 3, 29, 9, 6, 2, 1),
(4, 1, '15:00', '17:00', 9, 29, 25, 6, 2, 1),
(5, 1, '15:00', '17:00', 3, 46, 26, 21, 3, 1),
(6, 1, '6:00', '8:00', 3, 29, 17, 11, 3, 1),
(7, 1, '13:00', '15:00', 3, 29, 16, 11, 4, 1),
(8, 1, '7:00', '9:00', 3, 29, 8, 16, 4, 1),
(9, 1, '17:00', '19:00', 3, 29, 20, 16, 5, 1),
(10, 1, '5:00', '7:00', 3, 29, 8, 21, 6, 1),
(11, 1, '3:00', '5:00', 2, 16, 17, 21, 6, 1),
(12, 1, '19:00', '21:00', 2, 16, 5, 26, 7, 1),
(13, 1, '9:00', '11:00', 3, 29, 21, 26, 7, 1),
(14, 1, '15:00', '17:00', 3, 29, 26, 31, 8, 1),
(15, 1, '9:00', '11:00', 3, 29, 7, 31, 8, 1),
(16, 1, '15:00', '17:00', 3, 29, 11, 36, 9, 1),
(17, 1, '9:00', '11:00', 3, 29, 15, 36, 9, 1),
(18, 1, '5:00', '7:00', 9, 29, 17, 41, 10, 1),
(19, 1, '15:00', '17:00', 9, 29, 21, 41, 10, 1),
(20, 1, '5:00', '7:00', 3, 29, 26, 46, 11, 1),
(21, 1, '5:00', '7:00', 3, 29, 9, 46, 11, 1),
(22, 2, '6:00', '8:30', 9, 29, 12, 2, 12, 2),
(23, 2, '6:00', '8:30', 9, 29, 6, 2, 12, 2),
(24, 2, '13:00', '15:30', 9, 29, 21, 7, 13, 2),
(25, 2, '5:00', '7:30', 2, 16, 6, 7, 13, 2),
(26, 2, '4:00', '6:30', 2, 16, 15, 12, 14, 2),
(27, 2, '12:00', '14:30', 9, 29, 17, 12, 14, 2),
(28, 2, '6:00', '8:30', 9, 29, 12, 17, 15, 2),
(29, 2, '15:00', '17:30', 3, 29, 9, 17, 15, 2),
(30, 2, '6:00', '8:30', 3, 29, 11, 22, 16, 2),
(31, 2, '13:00', '15:30', 2, 29, 21, 22, 16, 2),
(32, 2, '6:00', '8:30', 2, 29, 20, 27, 17, 2),
(33, 2, '13:00', '15:30', 9, 29, 9, 27, 17, 2),
(34, 2, '8:00', '10:30', 9, 29, 14, 32, 18, 2),
(35, 2, '16:00', '18:30', 3, 29, 14, 32, 18, 2),
(36, 2, '6:00', '8:30', 3, 29, 14, 37, 19, 2),
(37, 2, '12:00', '14:30', 8, 29, 14, 37, 19, 2),
(38, 2, '6:00', '8:30', 8, 29, 14, 42, 20, 2),
(39, 2, '15:00', '17:30', 7, 29, 14, 42, 20, 2),
(40, 3, '14:00', '16:00', 3, 29, 14, 46, 21, 3),
(41, 3, '6:00', '8:00', 1, 50, 14, 46, 21, 3),
(42, 3, '8:00', '10:00', 5, 30, 14, 51, 22, 3),
(43, 3, '14:00', '16:00', 5, 30, 14, 51, 22, 3),
(44, 3, '10:00', '12:00', 1, 50, 14, 56, 23, 3),
(45, 3, '17:00', '19:00', 1, 50, 14, 56, 23, 3),
(46, 3, '12:00', '14:00', 7, 40, 14, 61, 24, 4),
(47, 3, '4:00', '6:00', 1, 50, 14, 61, 24, 4),
(48, 3, '16:00', '18:00', 7, 40, 14, 66, 25, 4),
(49, 3, '7:00', '9:00', 5, 30, 14, 66, 25, 4),
(50, 3, '4:00', '6:00', 5, 30, 14, 71, 26, 4),
(52, 3, '8:00', '10:00', 7, 40, 14, 71, 26, 4),
(53, 4, '5:00', '7:00', 5, 30, 14, 47, 27, 5),
(54, 4, '17:00', '19:00', 6, 30, 14, 47, 27, 5),
(55, 4, '6:00', '8:00', 5, 30, 14, 52, 28, 5),
(56, 4, '16:00', '18:00', 7, 40, 14, 52, 28, 5),
(57, 4, '5:00', '7:00', 8, 40, 14, 57, 29, 5),
(58, 4, '11:00', '13:00', 7, 40, 14, 57, 29, 6),
(59, 4, '13:00', '15:00', 7, 40, 14, 62, 30, 6),
(60, 4, '3:00', '5:00', 7, 40, 14, 62, 30, 6),
(61, 4, '15:00', '17:00', 1, 50, 14, 67, 31, 6),
(62, 4, '5:00', '7:00', 1, 50, 14, 67, 31, 6),
(63, 4, '19:00', '21:00', 1, 50, 14, 72, 32, 6),
(64, 4, '9:00', '11:00', 1, 50, 14, 72, 32, 6),
(65, 1, '3:00', '5:00', 1, 50, 14, 48, 5, 1),
(66, 5, '1:00', '5:00', 6, 30, 14, 76, 33, 10),
(67, 5, '12:00', '16:00', 6, 30, 14, 76, 33, 10),
(68, 5, '1:00', '5:00', 6, 30, 14, 81, 34, 10),
(69, 5, '13:00', '17:00', 6, 30, 14, 81, 34, 10),
(70, 5, '5:00', '9:00', 6, 30, 14, 86, 35, 10),
(71, 5, '13:00', '17:00', 6, 30, 14, 86, 35, 10),
(72, 5, '8:00', '12:00', 6, 30, 14, 91, 36, 10),
(73, 5, '16:00', '20:00', 6, 30, 14, 91, 36, 10),
(74, 5, '13:00', '17:00', 7, 40, 14, 98, 37, 11),
(75, 5, '13:00', '17:00', 7, 40, 14, 98, 37, 11),
(76, 5, '15:00', '19:00', 7, 40, 14, 99, 38, 11),
(77, 5, '17:00', '21:00', 5, 30, 14, 100, 38, 11),
(78, 5, '18:00', '20:00', 7, 40, 14, 101, 38, 11),
(79, 5, '18:00', '20:00', 7, 40, 14, 102, 38, 11),
(80, 5, '2:00', '6:00', 6, 30, 14, 103, 38, 11),
(81, 6, '5:00', '6:30', 3, 50, 14, 3, 39, 7),
(82, 6, '15:00', '16:30', 3, 29, 14, 3, 39, 7),
(83, 6, '6:00', '7:30', 2, 16, 14, 8, 40, 7),
(84, 6, '13:00', '14:30', 2, 16, 14, 8, 40, 7),
(85, 6, '7:00', '8:30', 3, 29, 14, 13, 41, 7),
(86, 6, '14:00', '15:30', 5, 30, 14, 13, 41, 7),
(87, 6, '13:00', '14:30', 7, 40, 14, 18, 42, 7),
(88, 6, '7:00', '8:30', 3, 29, 14, 18, 42, 7),
(89, 6, '14:00', '15:30', 3, 29, 14, 23, 43, 7),
(90, 6, '9:00', '10:30', 2, 16, 14, 23, 43, 9),
(91, 6, '17:00', '18:30', 2, 16, 14, 28, 44, 9),
(92, 6, '9:00', '10:30', 5, 30, 14, 28, 44, 9),
(93, 6, '18:00', '19:30', 7, 40, 14, 33, 45, 9),
(94, 6, '12:00', '13:30', 7, 40, 14, 33, 45, 9),
(95, 6, '4:00', '5:30', 2, 16, 14, 33, 45, 9),
(96, 1, '7:00', '8:30', 3, 29, 19, 4, 46, 1),
(97, 7, '7:00', '8:30', 3, 29, 19, 4, 46, 12),
(98, 7, '7:00', '8:30', 2, 16, 11, 9, 47, 12),
(99, 7, '7:00', '8:30', 2, 16, 9, 9, 47, 12),
(100, 7, '7:00', '8:30', 7, 40, 29, 14, 48, 12),
(101, 7, '7:00', '8:30', 7, 40, 19, 14, 48, 12),
(102, 7, '7:00', '8:30', 9, 29, 19, 4, 49, 13),
(103, 7, '7:00', '8:30', 9, 29, 19, 4, 49, 13),
(104, 7, '7:00', '8:30', 3, 29, 13, 24, 50, 13),
(105, 7, '7:00', '8:30', 3, 29, 15, 24, 50, 13),
(106, 7, '7:00', '8:30', 2, 16, 5, 29, 51, 13),
(107, 7, '7:00', '8:30', 2, 16, 1, 29, 51, 13),
(108, 7, '7:00', '8:30', 3, 29, 19, 34, 52, 13),
(109, 7, '7:00', '8:30', 3, 29, 21, 34, 52, 13),
(110, 8, '7:00', '8:30', 2, 16, 3, 5, 53, 14),
(111, 8, '7:00', '8:30', 2, 16, 3, 5, 54, 14),
(112, 8, '7:00', '8:30', 2, 16, 5, 10, 55, 14),
(113, 8, '17:00', '18:30', 2, 16, 7, 10, 56, 14),
(114, 8, '7:00', '8:30', 3, 29, 3, 20, 57, 14),
(115, 8, '7:00', '8:30', 3, 29, 12, 20, 58, 14),
(116, 8, '13:00', '14:30', 7, 40, 22, 30, 59, 14),
(117, 8, '14:00', '15:30', 7, 40, 12, 30, 60, 14),
(118, 8, '7:00', '8:30', 2, 16, 15, 40, 61, 14),
(119, 8, '9:00', '10:30', 2, 16, 14, 40, 62, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tripdetail`
--

CREATE TABLE `tripdetail` (
  `tripName_id` int(11) NOT NULL,
  `departure` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `image_trip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tripdetail`
--

INSERT INTO `tripdetail` (`tripName_id`, `departure`, `destination`, `image_trip`) VALUES
(1, 'Nam Định', 'Thanh Hóa', '/img/ThanhHoa.jpg'),
(2, 'Hà Nội', 'Thanh Hóa', '/img/ThanhHoa.jpg'),
(3, 'Hà Nội', 'Quảng Ninh', '/img/QuangNinh.jpg'),
(4, 'Hà Nội', 'Nam Định', '/img/NamDinh.jpg'),
(5, 'Hà Nội', 'Lào Cai', '/img/LaoCai.jpg'),
(6, 'Hà Nội', 'Thái Bình', '/img/ThaiBinh.jpg'),
(7, 'Hà Nội', 'Hải Phòng', '/img/HaiPhong.jpg'),
(8, 'Hà Nội', 'Thái Nguyên', '/img/ThaiNguyen.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_detail`
-- (See below for the actual view)
--
CREATE TABLE `user_detail` (
`customerNumber` int(11)
,`customerName` varchar(50)
,`sex` varchar(20)
,`dob` date
,`email` varchar(50)
,`phone` varchar(50)
,`address` varchar(50)
,`orderNumber` int(11)
,`orderDate` date
,`status` varchar(15)
,`comment` varchar(1000)
,`quantityOrder` int(11)
,`price` float
,`productCode` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `employee_detail`
--
DROP TABLE IF EXISTS `employee_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_detail`  AS SELECT `garage`.`gara_id` AS `gara_id`, `garage`.`name` AS `name`, `garage`.`phone` AS `phone`, `garage`.`address` AS `address`, `garage`.`rate_garage` AS `rate_garage`, `garage`.`garageDescription` AS `garageDescription`, `driver`.`employeeNumber` AS `employeeNumber`, `driver`.`employeeName` AS `employeeName`, `driver`.`sex` AS `sex`, `driver`.`dob` AS `dob`, `driver`.`phoneNumber` AS `phoneNumber`, `trip`.`trip_id` AS `trip_id`, `product`.`productCode` AS `productCode`, `product`.`productDate` AS `productDate` FROM (((`driver` join `garage`) join `trip`) join `product`) WHERE `garage`.`gara_id` = `driver`.`gara_id` AND `driver`.`employeeNumber` = `trip`.`employeeNumber` AND `product`.`productCode` = `trip`.`productCode` ORDER BY `garage`.`gara_id` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `order_detail`
--
DROP TABLE IF EXISTS `order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_detail`  AS SELECT `orders`.`orderNumber` AS `orderNumber`, `orders`.`orderDate` AS `orderDate`, `orders`.`status` AS `status`, `orders`.`comment` AS `comment`, `orders`.`customerNumber` AS `customerNumber`, `orderdetail`.`quantityOrder` AS `quantityOrder`, `orderdetail`.`price` AS `price` FROM ((`orders` join `customer`) join `orderdetail`) WHERE `customer`.`customerNumber` = `orders`.`customerNumber` AND `orders`.`orderNumber` = `orderdetail`.`orderNumber` ORDER BY `orders`.`orderNumber` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `ticket`
--
DROP TABLE IF EXISTS `ticket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ticket`  AS SELECT `trip`.`trip_id` AS `trip_id`, `trip`.`tripName_id` AS `tripName_id`, `trip`.`time` AS `time`, `trip`.`time_arrival` AS `time_arrival`, `media_type`.`media_type_name` AS `media_type_name`, `media_type`.`id` AS `id`, `trip`.`quantity_customer` AS `quantity_customer`, `trip`.`quantityInStock` AS `quantityInStock`, `tripdetail`.`departure` AS `departure`, `tripdetail`.`destination` AS `destination`, `tripdetail`.`image_trip` AS `image_trip`, `product`.`productDate` AS `productDate`, `product`.`buyPrice` AS `buyPrice`, `location`.`address_pick` AS `address_pick`, `location`.`address_pay` AS `address_pay`, `garage`.`gara_id` AS `gara_id`, `garage`.`name` AS `name`, `garage`.`phone` AS `phone`, `garage`.`address` AS `address`, `garage`.`image` AS `image`, `garage`.`garageDescription` AS `garageDescription`, `garage`.`rate_garage` AS `rate_garage`, `driver`.`employeeName` AS `employeeName`, `driver`.`phoneNumber` AS `phoneNumber` FROM ((((((`trip` left join `media_type` on(`trip`.`media_type_id` = `media_type`.`id`)) left join `tripdetail` on(`trip`.`tripName_id` = `tripdetail`.`tripName_id`)) join `product` on(`trip`.`productCode` = `product`.`productCode`)) join `location` on(`trip`.`location_id` = `location`.`location_id`)) join `driver` on(`trip`.`employeeNumber` = `driver`.`employeeNumber`)) left join `garage` on(`driver`.`gara_id` = `garage`.`gara_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `ticketfavorite`
--
DROP TABLE IF EXISTS `ticketfavorite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ticketfavorite`  AS SELECT `ticket`.`trip_id` AS `trip_id`, `ticket`.`tripName_id` AS `tripName_id`, `ticket`.`time` AS `time`, `ticket`.`time_arrival` AS `time_arrival`, `ticket`.`media_type_name` AS `media_type_name`, `ticket`.`quantity_customer` AS `quantity_customer`, `ticket`.`quantityInStock` AS `quantityInStock`, `ticket`.`departure` AS `departure`, `ticket`.`destination` AS `destination`, `ticket`.`image_trip` AS `image_trip`, `ticket`.`productDate` AS `productDate`, `ticket`.`buyPrice` AS `buyPrice`, `ticket`.`address_pick` AS `address_pick`, `ticket`.`address_pay` AS `address_pay`, `ticket`.`gara_id` AS `gara_id`, `ticket`.`name` AS `name`, `ticket`.`phone` AS `phone`, `ticket`.`address` AS `address`, `ticket`.`image` AS `image`, `ticket`.`garageDescription` AS `garageDescription`, `ticket`.`rate_garage` AS `rate_garage`, `ticket`.`employeeName` AS `employeeName`, `ticket`.`phoneNumber` AS `phoneNumber`, min(`ticket`.`quantityInStock`) AS `minTicket` FROM `ticket` GROUP BY `ticket`.`tripName_id` ;

-- --------------------------------------------------------

--
-- Structure for view `ticket_detail`
--
DROP TABLE IF EXISTS `ticket_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ticket_detail`  AS SELECT `trip`.`trip_id` AS `trip_id`, `trip`.`tripName_id` AS `tripName_id`, `trip`.`quantityInStock` AS `quantityInStock`, `trip`.`media_type_id` AS `media_type_id`, `product`.`productCode` AS `productCode`, `product`.`productDate` AS `productDate`, `product`.`buyPrice` AS `buyPrice`, `tripdetail`.`departure` AS `departure`, `tripdetail`.`destination` AS `destination`, `media_type`.`media_type_name` AS `media_type_name`, `location`.`location_id` AS `location_id`, `location`.`address_pick` AS `address_pick`, `location`.`address_pay` AS `address_pay` FROM ((((`trip` join `product`) join `tripdetail`) join `media_type`) join `location`) WHERE `product`.`productCode` = `trip`.`productCode` AND `trip`.`tripName_id` = `tripdetail`.`tripName_id` AND `media_type`.`id` = `trip`.`media_type_id` AND `location`.`location_id` = `trip`.`location_id` ORDER BY `trip`.`trip_id` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `user_detail`
--
DROP TABLE IF EXISTS `user_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_detail`  AS SELECT `customer`.`customerNumber` AS `customerNumber`, `customer`.`customerName` AS `customerName`, `customer`.`sex` AS `sex`, `customer`.`dob` AS `dob`, `customer`.`email` AS `email`, `customer`.`phone` AS `phone`, `customer`.`address` AS `address`, `orders`.`orderNumber` AS `orderNumber`, `orders`.`orderDate` AS `orderDate`, `orders`.`status` AS `status`, `orders`.`comment` AS `comment`, `orderdetail`.`quantityOrder` AS `quantityOrder`, `orderdetail`.`price` AS `price`, `orderdetail`.`productCode` AS `productCode` FROM (`customer` left join (`orders` join `orderdetail`) on(`orders`.`orderNumber` = `orderdetail`.`orderNumber` and `orders`.`customerNumber` = `customer`.`customerNumber`)) WHERE 1 ORDER BY `customer`.`customerNumber` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerNumber`),
  ADD KEY `trip_id` (`trip_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `gara_id` (`gara_id`);

--
-- Indexes for table `garage`
--
ALTER TABLE `garage`
  ADD PRIMARY KEY (`gara_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `media_type`
--
ALTER TABLE `media_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `orderNumber` (`orderNumber`),
  ADD KEY `productCode` (`productCode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`checkNumber`),
  ADD KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productCode`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`),
  ADD KEY `employeeNumber` (`employeeNumber`),
  ADD KEY `trip_ibfk_2` (`productCode`),
  ADD KEY `trip_ibfk_4` (`tripName_id`),
  ADD KEY `trip_ibfk_3` (`location_id`),
  ADD KEY `trip_ibfk_5` (`media_type_id`);

--
-- Indexes for table `tripdetail`
--
ALTER TABLE `tripdetail`
  ADD PRIMARY KEY (`tripName_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`trip_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`gara_id`) REFERENCES `garage` (`gara_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`productCode`) REFERENCES `product` (`productCode`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customer` (`customerNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customer` (`customerNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`employeeNumber`) REFERENCES `driver` (`employeeNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`productCode`) REFERENCES `product` (`productCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_ibfk_4` FOREIGN KEY (`tripName_id`) REFERENCES `tripdetail` (`tripName_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_ibfk_5` FOREIGN KEY (`media_type_id`) REFERENCES `media_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
