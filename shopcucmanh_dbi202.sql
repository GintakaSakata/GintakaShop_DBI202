-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 28, 2021 at 05:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopcucmanh_dbi202`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cusID` int(11) NOT NULL,
  `cusName` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `typeOfCustomer` int(11) DEFAULT 0,
  `username` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cusID`, `cusName`, `address`, `phone`, `typeOfCustomer`, `username`, `password`) VALUES
(30, 'Đức Độ', 'Huế', '0827299123', 0, 'boboyso2013', 'docute333'),
(35, 'Thu Hoài', 'Đà Nẵng', '0455116258451', 0, 'thuhoaichan', 'thuhoai123'),
(36, 'Dương Nguyễn Thuỳ Zung', 'Quảng Bình', '0252525252525', 0, 'dungcute', 'dungxuong'),
(37, 'Hoàng Thịnh', 'Đà Nẵng', '0125842258', 0, 'thinhbaba', 'hoangthinh'),
(38, 'Trung Dũng ', 'Quảng Bình', '0165826555', 0, 'phophephu', 'trungdung'),
(39, 'Đắc Thiện', 'Đà Nẵng', '092815426', 0, 'dacthienchan', 'dacthien123'),
(40, 'Quốc Anh', 'Quảng Trị', '058425621', 0, 'quocanhte', 'quocanh');

-- --------------------------------------------------------

--
-- Table structure for table `orderdeal`
--

CREATE TABLE `orderdeal` (
  `orderDealId` varchar(8) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `orderDealIdBuy` int(11) DEFAULT NULL,
  `orderDealName` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `orderDealAddress` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `orderDealPhone` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `orderDealPrice` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `orderDealDate` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `orderdeal`
--

INSERT INTO `orderdeal` (`orderDealId`, `orderDealIdBuy`, `orderDealName`, `orderDealAddress`, `orderDealPhone`, `orderDealPrice`, `orderDealDate`, `status`) VALUES
('10NSRnYl', 30, 'Đức Độ', 'Huế', '0827299123', '360.000', '2021-06-27 05:17:23', 1),
('2mqLgeHb', 30, 'Đức Độ', 'Huế', '0827299123', '49.000', '2021-06-27 06:13:59', 1),
('7meqr2Wo', 30, 'Đức Độ', 'Huế', '0827299123', '1.920.000', '2021-06-26 23:00:00', 1),
('81XR6miG', 35, 'Thu Hoài', 'Đà Nẵng', '0455116258451', '978.000', '2021-06-27 03:28:50', 1),
('9LF5TisG', 30, 'Đức Độ', 'Huế', '0827299123', '259.000', '2021-06-26 03:00:00', 1),
('B4l5V12K', 30, 'Đức Độ', 'Huế', '0827299123', '310.000', '2021-06-27 07:24:30', 1),
('bg9nAFEc', 30, 'Gin', 'Huế', '0827299123', '6.850.000', '2021-06-27 07:35:30', 1),
('CHxVNRv3', 30, 'Đức Độ', 'Huế', '0827299123', '119.000', '2021-06-27 02:00:00', 1),
('dWLt7hsn', 30, 'Đức Độ', 'Huế', '0827299123', '387.000', '2021-06-26 06:00:00', 1),
('E2ODbaxt', 30, 'Đức Độ', 'Huế', '0827299123', '4.521.000', '2021-06-28 05:43:42', 1),
('fkxDvUTS', 30, 'Đức Độ', 'Huế', '0827299123', '6.000.000', '2021-06-27 06:12:58', 1),
('hbcJQ5Gg', 30, 'Đức Độ', 'Huế', '0827299123', '2.983.000', '2021-06-27 05:00:00', 1),
('ijMQRkYf', 35, 'Thu Hoài', 'Đà Nẵng', '0455116258451', '1.584.000', '2021-06-27 03:30:13', 1),
('irzSBlR8', 30, 'Đức Độ', 'Huế', '0827299123', '58.799.994', '2021-06-27 07:32:56', 1),
('KpY0dfBD', 30, 'Đức Độ', 'Huế', '0827299123', '2.629.491', '2021-06-28 06:02:54', 1),
('OSUBr5FR', 30, 'Đức Độ', 'Huế', '0827299123', '982.000', '2021-06-28 05:18:56', 1),
('PQ81clUq', 30, 'Đức Độ', 'Huế', '0827299123', '8.320.000', '2021-06-26 05:28:32', 1),
('sDkhzcn3', 30, 'Đức Độ', 'Huế', '0827299123', '356.000', '2021-06-27 04:00:00', 1),
('yQUMugGF', 30, 'Thu Hoài', 'Đà Nẵng', '0827299123', '3.760.000', '2021-06-26 23:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordersingle`
--

CREATE TABLE `ordersingle` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `productNumber` int(11) DEFAULT NULL,
  `productTotalSingle` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `productOrderDealId` varchar(8) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `ordersingle`
--

INSERT INTO `ordersingle` (`id`, `productId`, `productNumber`, `productTotalSingle`, `productOrderDealId`) VALUES
(10, 229, 3, '1200000', 'yQUMugGF'),
(11, 226, 4, '2560000', 'yQUMugGF'),
(12, 246, 4, '1200000', 'yQUMugGF'),
(13, 239, 3, '450000', 'yQUMugGF'),
(14, 395, 3, '387000', 'dWLt7hsn'),
(15, 374, 1, '259000', '9LF5TisG'),
(16, 226, 3, '1920000', '7meqr2Wo'),
(17, 226, 13, '8320000', 'PQ81clUq'),
(18, 510, 5, '1800000', 'hbcJQ5Gg'),
(19, 508, 7, '1183000', 'hbcJQ5Gg'),
(20, 149, 4, '160000', 'sDkhzcn3'),
(21, 151, 4, '196000', 'sDkhzcn3'),
(22, 510, 1, '360000', 'K8vuClJ4'),
(23, 405, 1, '119000', 'CHxVNRv3'),
(24, 510, 1, '360000', '10NSRnYl'),
(25, 194, 1, '6000000', 'fkxDvUTS'),
(26, 470, 1, '49000', '2mqLgeHb'),
(27, 274, 1, '310000', 'B4l5V12K'),
(28, 221, 6, '9000000', 'irzSBlR8'),
(29, 213, 6, '13800000', 'irzSBlR8'),
(30, 219, 6, '17999994', 'irzSBlR8'),
(31, 215, 6, '18000000', 'irzSBlR8'),
(32, 207, 10, '850000', 'bg9nAFEc'),
(33, 211, 10, '6000000', 'bg9nAFEc'),
(34, 471, 20, '978000', '81XR6miG'),
(35, 511, 4, '1584000', 'ijMQRkYf'),
(36, 145, 3, '270000', 'OSUBr5FR'),
(37, 445, 8, '712000', 'OSUBr5FR'),
(38, 298, 10, '2590000', 'E2ODbaxt'),
(39, 304, 5, '436000', 'E2ODbaxt'),
(40, 299, 5, '1495000', 'E2ODbaxt'),
(41, 353, 5, '249500', 'KpY0dfBD'),
(42, 360, 4, '1079996', 'KpY0dfBD'),
(43, 358, 5, '1299995', 'KpY0dfBD');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `proCode` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `proTypeName` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `proName` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`proCode`, `proTypeName`, `proName`) VALUES
('BHO1', 'BHO', 'Kẹo'),
('BHO2', 'BHO', 'Thuốc'),
('BHO3', 'BHO', 'Mì tôm'),
('BHO4', 'BHO', 'Bánh'),
('BHO5', 'BHO', 'Thức ăn '),
('BHO6', 'BHO', 'Sữa'),
('BHO7', 'BHO', 'Trà thảo dược'),
('BHO8', 'BHO', 'Đồ uống có cồn'),
('BOK1', 'BOK', 'Sách tham khảo'),
('BOK2', 'BOK', 'Sách Selfhelp'),
('BOK3', 'BOK', 'Sách học ngôn ngữ'),
('CLO1', 'CLO', 'Áo tay lỡ'),
('CLO2', 'CLO', 'Áo sơ mi'),
('CLO3', 'CLO', 'Quần thể thao'),
('DDT1', 'DDT', 'Chuột'),
('DDT2', 'DDT', 'Bàn phím'),
('DDT3', 'DDT', 'Laptop'),
('DDT4', 'DDT', 'Quạt tản nhiệt'),
('DDT5', 'DDT', 'RAM'),
('DDT6', 'DDT', 'Điện Thoại'),
('DGD1', 'DGD', 'Nồi cơm điện'),
('DGD2', 'DGD', 'Quạt'),
('DGD3', 'DGD', 'ROBO hút bụi'),
('DGD4', 'DGD', 'Ấm siêu tốc'),
('DGD5', 'DGD', 'Đồ làm bếp'),
('DGD6', 'DGD', 'Máy điều hoà'),
('DGD7', 'DGD', 'Bếp gia dụng'),
('DTD1', 'DTD', 'Son'),
('DTD2', 'DTD', 'Bản phấn mắt'),
('DTD3', 'DTD', 'Tẩy Trang'),
('DTD4', 'DTD', 'Sữa Rửa Mặt'),
('NCD1', 'NCD', 'Thùng rác'),
('NCD2', 'NCD', 'Bàn'),
('NCD3', 'NCD', 'Ghế'),
('NCD4', 'NCD', 'Đồ linh tinh trong nhà'),
('THE1', 'THE', 'Giày thể thao'),
('THE2', 'THE', 'Bóng đá'),
('THE3', 'THE', 'Áo quần thể thao'),
('THE4', 'THE', 'Kính bơi'),
('TNA1', 'TNA', 'Áo thun nam'),
('TNA2', 'TNA', 'Áo polo nam'),
('TNA3', 'TNA', 'Ví cho nam'),
('TNA4', 'TNA', 'Mũ lưỡi trai'),
('TNA5', 'TNA', 'Thắt lưng nam'),
('TNU1', 'TNU', 'CROPTOP'),
('TNU2', 'TNU', 'Áo 2 dây'),
('TNU3', 'TNU', 'Chân váy'),
('TNU4', 'TNU', 'Váy xoè'),
('TNU5', 'TNU', 'Áo sơ mi nữ'),
('TOY1', 'TOY', 'Rubik'),
('TOY2', 'TOY', 'Gundam'),
('TOY3', 'TOY', 'Bộ cờ'),
('TOY4', 'TOY', 'Board game');

-- --------------------------------------------------------

--
-- Table structure for table `productinfo`
--

CREATE TABLE `productinfo` (
  `productID` int(11) NOT NULL,
  `productCode` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `shopID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sold` int(11) NOT NULL DEFAULT 0,
  `productRating` float DEFAULT NULL,
  `describlePro` varchar(300) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `productImage` varchar(300) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `productDiscount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `productinfo`
--

INSERT INTO `productinfo` (`productID`, `productCode`, `shopID`, `price`, `sold`, `productRating`, `describlePro`, `productImage`, `productDiscount`) VALUES
(1, 'BHO1', 2, 160000, 55, 4.9, 'Kẹo Dẻo Bổ Sung DHA Unimat Riken 90 viên Nhật Bản', 'https://cf.shopee.vn/file/219d7423f9f249fda54671f797c40a18', 24),
(2, 'BHO1', 2, 14500, 4402, 5, 'KẸO ALPENLIEBE HƯƠNG XOÀI NHÂN MUỐI ỚT(TÚI 87gr_30VIÊN/1GÓI)', 'https://cf.shopee.vn/file/c2a28fec3fd3d51ba5b96c8de745239e', 26),
(3, 'BHO1', 2, 15000, 4425, 5, 'KẸO ALPENLIEBE HƯƠNG XOÀI NHÂN MUỐI ỚT', 'https://cf.shopee.vn/file/644d6a7f96180f335dd7a476ffb5bfd7', 0),
(4, 'BHO1', 2, 20000, 6285, 4.8, 'Kẹo Alpenliebe hương vị xòai nhân muối ớt ', 'https://cf.shopee.vn/file/03695ce10184a81e346f710c57f98370', 8),
(5, 'BHO1', 2, 9500, 85, 5, 'Kẹo Alpenliebe Hương Xoài Nhân Muối Ớt', 'https://cf.shopee.vn/file/87a2b0cfb85dc0c876acaff1500460a8', 45),
(6, 'BHO1', 2, 8000, 0, 5, 'Kẹo con mắt Halloween Big Eye Ball Funny Castle HongKong', 'https://cf.shopee.vn/file/9db3e0391ac0f13592ae10174a367618', 36),
(7, 'BHO1', 2, 3300, 8845, 4.8, 'Kẹo Que Mạch Nha Nhân Ô Mai/ Xí Muội - Bánh Kẹo Tuổi Thơ', 'https://cf.shopee.vn/file/45730a87aac5261d9b988e903ba4d335', 98),
(8, 'BHO1', 2, 25000, 1452, 5, 'Kẹo sỏi đá nhân socola Lon 500gr [FREE SHIP] TỪ ĐƠN 50K, [Loại Đặc Biệt] Hàng ngon nhà làm', 'https://cf.shopee.vn/file/edeab3e9a5556930066ca2ddc53a9568', 2),
(9, 'BHO1', 2, 25000, 999, 5, 'Kẹo the Play More hũ 22g', 'https://cf.shopee.vn/file/fe9d9c5ba68ba1d461a3f0de51e4dd7a', 0),
(10, 'BHO1', 2, 328000, 15230, 4.7, '[Date 10/2021] Tách lẻ 100g (50-55 viên) Kẹo Socola sữa Nho Khô/ Hạnh Nhân Kirkland Mỹ', 'https://cf.shopee.vn/file/5a138690b4924f27484b030bbc1e9072', 8),
(11, 'BHO1', 2, 136000, 157, 5, 'Một hủ kẹo dẻo viên/ kẹo dẻo jelly hình quả địa cầu/quả banh/ con mắt Maiorli Hongkong viên 15g', 'https://cf.shopee.vn/file/a4f3fe4581f3fcc681c4991af6679f6a', 10),
(12, 'BHO1', 2, 4600, 1984, 4.8, 'Lẻ một viên kẹo sô cô la chip đắng nhân phomai tan chảy Hongkong viên lớn y hình', 'https://cf.shopee.vn/file/3a3c90a475b5c35b01dbde045afe40e9', 15),
(13, 'BHO1', 2, 60000, 69, 5, 'Kẹo Cafe Sữa Pamiriter Hộp 70g', 'https://cf.shopee.vn/file/a1e1012ae6c05fe64dd681909aad0e94', 0),
(14, 'BHO1', 2, 48000, 14000, 4.9, 'Kẹo socola sỏi 500 gram', 'https://cf.shopee.vn/file/e9b8d80448be6caaf7d4fb813168f87d', 9),
(15, 'BHO4', 2, 250000, 1547, 4.9, 'Bánh đậu xanh Nguyên Hương Hải Dương hộp to( gồm 5 hộp nhỏ mỗi hộp 320g)', 'https://cf.shopee.vn/file/9a29bcd17354d2c8346fa8f4c6db399f', 65),
(16, 'BHO4', 2, 246000, 36, 5, 'Bánh Mì Ý Madi Gran Panettone 1000gr', 'https://cf.shopee.vn/file/cd112e1d30080cda52b8c8b80f16f783', 5),
(22, 'BHO4', 4, 34000, 70, 4.9, 'CƠM CHÁY NẾP CÁI HOA VÀNG ĐẶC SẢN NINH BÌNH', 'https://cf.shopee.vn/file/9a69e9a3dea594d17baec9a93f81ce12', 0),
(23, 'BHO4', 4, 135000, 2500, 4.9, 'Bánh Đài Loan Mix Đủ Vị 1kg (không trùng vị ,không mix mochi)', 'https://cf.shopee.vn/file/798bb9d8a2df005b55f395819abdda19', 5),
(24, 'BHO4', 4, 30000, 11200, 4.9, 'BÁNH TRỨNG CHÀ BÔNG THỊT GÀ TƯƠI KARO - TÚI 6 CÁI', 'https://cf.shopee.vn/file/4e92d1141804abbe5a3582c6981100e6', 10),
(25, 'BHO4', 4, 15000, 5301, 5, '1 BÁNH BÔNG LAN PHÔ MAI ĐÀI LOAN - BÁNH SHOUGONG MÔNG TO (120g/chiếc)', 'https://cf.shopee.vn/file/b8caf0986aaeaea20bb8ef632b159e15', 0),
(26, 'BHO4', 4, 8000, 523, 4.9, '【 CHỌN VỊ】Bánh Pía Kim Sa tan chảy 10 vị mới nhất Tân Huê Viên 2020', 'https://cf.shopee.vn/file/423906e56c62dab97994149ea8c51777', 8),
(27, 'BHO4', 4, 9000, 5862, 5, '[SALE SỐC] Bánh Sữa Chua HORSH - Mix Đủ 5 Vị Cực Ngon', 'https://cf.shopee.vn/file/2511215cac9834cab261be76e3b09ecc', 0),
(28, 'BHO4', 4, 12000, 4852, 5, '[Date mới] 24 cái- Bánh trứng tươi chà bông Karo Richy', 'https://cf.shopee.vn/file/52f2619cb0907b97a9c07e0a500eb2d8', 20),
(29, 'BHO4', 4, 15000, 15222, 5, 'bánh dừa nướng quynh trân- đặc sản quảng nam', 'https://cf.shopee.vn/file/7f34629d03e6830830fe9b433ad9d317', 0),
(30, 'BHO4', 4, 18000, 5200, 4.9, 'Đặc sản bánh phồng sữa khoai mì cao cấp - bánh tráng sữa miền tây [ 5 VỊ ]', 'https://cf.shopee.vn/file/c163989d67bfac4a347464273a486d2f', 60),
(31, 'BHO4', 4, 12000, 8625, 5, 'Bánh tránh phơi sương sốt me, ớt rim, muối hành phi', 'https://cf.shopee.vn/file/d45339823671b8ce1bb2e50efe84d18e', 30),
(32, 'BHO4', 4, 13000, 1528, 5, '[Chính hãng] BÁNH BÔNG LAN SHOUGONG MÔNG TO RANLI MÔNG LỚN', 'https://cf.shopee.vn/file/7757a165bb81a6b786a5bce8a68a701d', 20),
(33, 'BHO4', 4, 60000, 1528, 5, 'BÁNH OREO SOCOLA NHÂN SỮA KEM TAN CHẢY SIÊU HOT', 'https://cf.shopee.vn/file/8b58e99cadd3370762aa3fe22646dde0', 10),
(34, 'BHO4', 4, 25800, 152, 4.8, 'Bánh Peppie Richy phủ socola trắng hộp 3 (45g)', 'https://cf.shopee.vn/file/5a72a5a10fc65289a85f2a83362650d2', 0),
(35, 'BHO4', 4, 120000, 205, 4.7, '1kg bánh gấu nhân kem siêu ngon', 'https://cf.shopee.vn/file/57898f7ec650a32046203122bfadf52d', 10),
(36, 'BHO4', 4, 60000, 60, 4.7, 'Bánh Chocopie Sữa Chua Yogurt Hộp 12 Cái (360g)', 'https://cf.shopee.vn/file/99fb3d5d7d39d5763a71360d72437d3a', 10),
(37, 'BHO2', 4, 100000, 152, 5, 'Hà Thủ Ô Đỏ Tây Bắc', 'https://cf.shopee.vn/file/2ca9fa56deb71f669c7098cf3029dd55', 10),
(38, 'BHO2', 4, 30000, 12001, 4.7, 'Gốc măng tây 10 tháng tuổi đang thu măng', 'https://cf.shopee.vn/file/7e50363fd3d3cf00abaad23e353bdc8f', 24),
(39, 'BHO2', 4, 152000, 5, 5, 'Thuốc xông toàn thân Tây Bắc, ngâm chân.', 'https://cf.shopee.vn/file/73f9e2468a32a1b5d515d4adee8c3b97', 0),
(40, 'BHO2', 4, 12500, 15222, 4.9, '1 Dải Đèn Led Panadol Paracetamol', 'https://cf.shopee.vn/file/1c71ae8dfebfaca7c492c97b440b57b7', 0),
(41, 'BHO2', 4, 15000, 0, 5, 'Gói bọc thuốc', 'https://cf.shopee.vn/file/fd21451f536468190d8b5c897e4971e9', 0),
(42, 'BHO2', 4, 180000, 12, 4.5, 'Gói 12 Túi Mùi Hương Gilus Bonus 5 + 1', 'https://cf.shopee.vn/file/6ba8b79cf2f12df9a78bb910c472dfff', 0),
(43, 'BHO2', 4, 350000, 3, 3, '(hàng Mới Về) Tinh Dầu Chăm Sóc Da 12 Dung Tích 60ml Tiện Dụng', 'https://cf.shopee.vn/file/8d79a4bccda58a421e50f4299a4f7cf2', 0),
(44, 'BHO2', 4, 30000, 12, 4.6, '(hàng Mới Về) Phấn Làm Trắng Vùng Da Dưới Cánh Tay 12 Ngăn Mbk', 'https://cf.shopee.vn/file/28ebc866e42e233a95494d5c038ae69d', 30),
(45, 'BHO3', 4, 100000, 37056, 4.8, 'THÙNG MÌ TÔM CHUA CAY HẢO HẢO 30 GÓI', 'https://cf.shopee.vn/file/128356306e041124e072bd49b7017a6c', 0),
(46, 'BHO3', 4, 80000, 1520, 5, 'Thùng 30 Gói Mì Tôm Chua Cay VIFON 60g/gói', 'https://cf.shopee.vn/file/df7995aabadfb93ab6eeae4d33d48d01', 0),
(47, 'BHO3', 4, 80000, 3610, 5, 'Mì Tôm Kokomi Tôm Chua Cay Dai Ngon Từng Sợi 65g 30 gói', 'https://cf.shopee.vn/file/32afc13f1173b4a10b307bc415a3f5a5', 10),
(48, 'BHO3', 4, 4000, 9153, 4.6, 'Mì tôm viên vị gà cay Thái Lan 38g FUNNY CASTLE', 'https://cf.shopee.vn/file/7aac8a662623c5b795a7d6e4eb2ee77b', 0),
(49, 'BHO3', 4, 100000, 125, 4.8, 'Thùng 30 Gói Mì Tôm Phun Lửa Omachi', 'https://cf.shopee.vn/file/1440dabe0dac343c8fb02231182dc514', 20),
(50, 'BHO3', 4, 125000, 9, 5, 'MÌ TÔM KOKOMI 90 MỚI THÙNG 30 GÓI', 'https://cf.shopee.vn/file/ea5e5d936877b6eedab0b173b0d03a8e', 0),
(51, 'BHO3', 4, 16000, 125, 4.9, 'Mỳ Tôm Chua Cay DưA bò', 'https://cf.shopee.vn/file/8892876898cba3c8ed52857974a752ce', 10),
(52, 'BHO3', 4, 80000, 52, 5, '[Lốc 4 gói] Mì sốt trứng muối MAMA - hàng xách tay Thailand', 'https://cf.shopee.vn/file/9f689eeeab1aed70afac698c6e2678d5', 0),
(53, 'BHO3', 4, 90000, 29, 4.8, 'Set 10 gói mì gói mama chua cay thái lan', 'https://cf.shopee.vn/file/4df878a571b1071dcd50fc45566c183e', 20),
(54, 'BHO3', 4, 50000, 148, 4.9, 'Mực Rim Me ( ăn liền ) HSD 6 tháng. Sản phẩm chính hãng mua nhiều giảm giá liên hệ Đặc Sản Biển Phan Thiết NGỌC DŨNG', 'https://cf.shopee.vn/file/8652c81fdddc655a21b910bd107ee073', 10),
(55, 'BHO3', 4, 50000, 154, 4.9, 'MÌ SIU CAY 7 CẤP ĐỘ VỊ HẢI SẢN', 'https://cf.shopee.vn/file/d87ab0692395005a955725070457c254', 3),
(56, 'BHO3', 4, 30000, 168, 4.9, 'Mỳ Cay Hàn Quốc Samyang Gói 140gr Cay Cấp Độ 3 💝FREE SHIP💝 Mì Cay Hàn Quốc Nhập Khẩu Ăn Vặt Siêu Cay Siêu Ngon', 'https://cf.shopee.vn/file/0774df6210fb43f2fe95215da46702fd', 30),
(57, 'BHO3', 4, 16000, 265, 4.9, 'Mỳ cay samyang hàn quốc 1 gói/140g- mỳ gà cay samyang', 'https://cf.shopee.vn/file/900672ef38d33c0d6e5f086da2f365ab', 0),
(58, 'BHO3', 4, 72000, 125, 4.6, 'Miến cay trùng khánh thùng 6 hộp', 'https://cf.shopee.vn/file/8751e30bf0fd89f176dd3892d8fcee45', 42),
(59, 'BHO3', 4, 30000, 123, 5, 'MÌ TRỘN CAY SADAAP LỐC 5 GÓI', 'https://cf.shopee.vn/file/54f2eec1f7f57fc57795edc5b1faf893', 20),
(60, 'BHO3', 4, 99000, 280, 5, 'Lốc 5 Mì cay Samyang Hàn Quốc đủ vị (140g / Gói)', 'https://cf.shopee.vn/file/c5de0207757b20a5e122f98bfb30c32b', 0),
(61, 'BHO3', 4, 6000, 616, 4.6, 'Mì Tôm Viên Vị Gà Cay Thái Lan 38gr❤️FREESHIP-Ăn Vặt Ngon', 'https://cf.shopee.vn/file/8ceab77a5dbf4e6d9d7879640a1e679f', 56),
(62, 'BHO3', 4, 50000, 3, 5, '[ Xả Lỗ ] MIẾN CAY TRÙNG KHÁNH_ 1 THÙNG 6 HỘP( LOẠI NGON NHẤT)', 'https://cf.shopee.vn/file/1b4e823dfd2cd1906074c251d91f9d63', 0),
(63, 'BHO5', 4, 60000, 12350, 5, 'Khô gà lá chanh 300g DumBum đồ ăn vặt Hà Nội', 'https://cf.shopee.vn/file/cc83294175f17e884534429a4e39c061', 8),
(64, 'BHO5', 4, 40000, 2536, 4.9, 'Vải thiều sấy khô Vinafruits (túi 500g) Đồ ăn vặt, Món ăn đến từ quê hương', 'https://cf.shopee.vn/file/6cc7914d2bd32721b5ca692f5a852032', 91),
(65, 'BHO5', 4, 70000, 210, 5, 'Set 5 Ly Trà Sữa tự pha tại nhà 17 phút Hàn Quốc JUCIMIN siêu đẹp, siêu ngon, siêu tiết kiệm, đảm bảo an toàn.', 'https://cf.shopee.vn/file/5ff071996d5a394c55fd1fb18a7db744', 20),
(66, 'BHO5', 4, 50000, 1254, 4.6, 'combo 8 loại gói thanh cay đỏ đặc sản Hồ Nam thanh đỏ cay 125g / 1 túi đóng gói đồ ăn nhẹ cay cay tuổi thơ hiệu về', 'https://cf.shopee.vn/file/5e8e941469a5b869d910c7528415fc2f', 20),
(67, 'BHO5', 4, 3000, 321, 5, 'GÓI TĂM CAY ĐEN VỊ CAY ĐẶC BIỆT ĐỒ ĂN CAY SIÊU HOT CỔNG TRƯỜNG', 'https://cf.shopee.vn/file/f244515b35c03bf16679b39092648e1d', 0),
(68, 'BHO5', 4, 70000, 2651, 4.5, '[CÓ SẴN] Lẩu tự sôi lẩu tự sôi bò cay tê cơm tự sôi đồ ăn nhanh lau tu soi đồ ăn vặt nội địa', 'https://cf.shopee.vn/file/fe17c960e9f8c48134dd077befcb66e4', 20),
(69, 'BHO5', 4, 15000, 67, 5, 'Tổng Hợp 20 Loại Đồ Ăn Cần Thiết Cho Chuột Hamster ăn mỗi ngày ( Chai Nhỏ ) Hạt Ngũ cốc dinh dưỡng Thức Ăn Cho Hamters', 'https://cf.shopee.vn/file/3a34cce1821d0934388891123bd7bdff', 0),
(70, 'BHO5', 4, 100000, 316, 5, '[ Rẻ Vô Địch ] Sẵn THỨC ĂN ĐÔNG KHÔ/đồ ăn sấy khô/ thịt sấy khô 650g hỗn hợp 11 loại dinh dưỡng cho mèo / chó', 'https://cf.shopee.vn/file/71404c18153f24ddb64229e9f1a15260', 20),
(71, 'BHO5', 4, 59000, 3, 5, 'Mực Rim Me 210g Đệ Nhất Khô Chua Ngọt Ít Cay, đồ ăn vặt vừa ngon vừa rẻ, Đặc Sản Phan Thiết', 'https://cf.shopee.vn/file/0b34817c09f2922f21d90ee2d0bccab2', 0),
(72, 'BHO6', 4, 250000, 46, 5, 'SỮA BẦU MATILIA SOCOLA DATE MỚI NHẤT 2022', 'https://cf.shopee.vn/file/2fffce1a2a9345234eed5b5266d2e3bd', 0),
(73, 'BHO6', 4, 1500000, 46, 5, 'MASS GAINER | Sữa Tăng Cân Tăng Cơ | Labrada Muscle Mass Gainer [5.4kg] - Chính Hãng Tại Shape Store', 'https://cf.shopee.vn/file/919e7aa37818e5c76e282896b39549e3', 0),
(74, 'BHO6', 4, 30000, 2651, 4.8, 'Sữa Cho Chó Mèo BIO MILK FOR PET 100g Bổ sung Vitamin, Đạm, Béo và Khoáng', 'https://cf.shopee.vn/file/372949a4ea65ea7a183afe40e9bbce67', 0),
(75, 'BHO6', 4, 185000, 140, 4.6, 'Sữa GOLDLAY GLUCARE dành cho người TIỂU ĐƯỜNG VÀ TIỀN TIỂU ĐƯỜNG 900G (date 2023)', 'https://cf.shopee.vn/file/01cf477ad15978603be1944a1097de91', 20),
(76, 'BHO7', 4, 19000, 21805, 4.9, 'Trà Hoa Ngũ Cốc ngủ ngon mát gan thanh lọc cơ thể cho bà bầu sau sinh - TNC', 'https://cf.shopee.vn/file/103591737ae73fc60bb824763c73876b', 0),
(77, 'BHO7', 4, 8000, 1350, 5, '[Eo Thon Dáng Đẹp] Gói 30gr Trà Mầm Ngũ Cốc X5 :Tan Mỡ Bụng, Mỡ Nội Tạng, Chống Lão Hóa,Thải Độc, Đẹp Da', 'https://cf.shopee.vn/file/6e117fb2d54f56f0f0f586bf68c60f22', 50),
(78, 'BHO7', 4, 149000, 152, 5, 'Trà thảo mộc organic An Sinh 100%Tự nhiên với hơn 15 loại thảo mộc, Giảm cân, Thanh lọc cơ thể - Hộp 500g', 'https://cf.shopee.vn/file/a290b9022949923026a25d936f28f1f6', 12),
(79, 'BHO7', 4, 8000, 546, 5, 'Trà Thảo Dược tốt cho sức khỏe - Trà thảo mộc DaysTea', 'https://cf.shopee.vn/file/156f65b1a51853019b9e6f14b05b0367', 0),
(80, 'BHO7', 4, 50000, 42, 5, 'Trà nụ hoa nhài (nụ hoa lài) 200g khô thơm-Dược Liệu Quý', 'https://cf.shopee.vn/file/156f65b1a51853019b9e6f14b05b0367', 30),
(81, 'BHO7', 4, 215000, 152, 4.3, 'Trà Shan Tuyết Yên Bái cổ thụ loại ngon đặc biệt - Kho thảo dược 24h', 'https://cf.shopee.vn/file/6da9d17da3f26994d71f7329384b9a8e', 20),
(83, 'BHO7', 4, 215000, 152, 4.3, 'Trà Shan Tuyết Yên Bái cổ thụ loại ngon đặc biệt - Kho thảo dược 24h', 'https://cf.shopee.vn/file/6da9d17da3f26994d71f7329384b9a8e', 20),
(85, 'BHO7', 4, 16000, 228, 5, 'Trà thảo dược Kolenda', 'https://cf.shopee.vn/file/223052029424f2c194ebc9cdb9a82957', 20),
(86, 'BHO7', 4, 160000, 78, 5, 'Hoa cúc sấy khô 500g trà hoa cúc tăng cường sức khỏe ngủ ngon - Dược Liệu Quý', 'https://cf.shopee.vn/file/8966aa0d4b62641e82c4b3525aa292c0', 0),
(87, 'BHO7', 4, 160000, 78, 5, 'Hoa cúc sấy khô 500g trà hoa cúc tăng cường sức khỏe ngủ ngon - Dược Liệu Quý', 'https://cf.shopee.vn/file/8966aa0d4b62641e82c4b3525aa292c0', 0),
(93, 'BHO7', 4, 4700, 16, 4.7, 'TRÀ HOA KHÔ TRÀ THẢO MỘC TỔNG HỢP sản phẩm Thảo dược thiên nhiên', 'https://cf.shopee.vn/file/73cf341909b1bf366a41a2dbee3a2239', 0),
(94, 'BHO7', 4, 5000, 123, 4, 'Trà Sâm Bí Đao Thảo Dược( sâm túi lọc+ táo đỏ+bí đao+hạt chia+ lá nếp)', 'https://cf.shopee.vn/file/356dd7d572d82bd41c799c47664a4597', 50),
(95, 'BHO7', 4, 80000, 65, 4.9, 'Trà Phổ Nhĩ Nở Hoa (10 Viên Tự Chọn)| Thảo Dược Hạnh Nguyên', 'https://cf.shopee.vn/file/00d1a492ef19b7c9cd7322c6f38a6146', 0),
(96, 'BHO7', 4, 65000, 8, 5, 'Trà Ngủ Ngon Trường Thọ - Trà dễ ngủ - Trà thảo dược', 'https://cf.shopee.vn/file/0f8b928e51ce256e77192b583a910226', 0),
(97, 'BHO7', 4, 150000, 7895, 4.6, 'Trà hoa cúc vàng gói 100g (tặng 1 gói hoa nhài khi mua từ 200g)', 'https://cf.shopee.vn/file/656e690406eb3e506a0f5ba4980d8f6b', 0),
(98, 'BHO8', 4, 40000, 158, 4.8, 'COCKTAIL HOA QUẢ CAO CẤP - HÃNG RIO | VƯƠNG PHỦ TỈNH', 'https://cf.shopee.vn/file/9a7e24fb8a312d4d6f28049eb5e9b13f', 20),
(99, 'BHO8', 4, 65000, 251, 4.8, 'Soju Gooday Hàn quốc có 5 vị-thức uống có cồn', 'https://cf.shopee.vn/file/20cfc99b3bfb9c4df93fe23eff15174e', 20),
(100, 'BHO8', 4, 60000, 52, 5, 'Bia Viiking Extra Strong 12% – Lon 500ml', 'https://cf.shopee.vn/file/8d7729908c507d6d5e9a6c7aba4d67d4', 0),
(101, 'BHO8', 4, 51000, 12, 5, 'Nước trái cây có ga không cồn Vivazz nhiều vị 720ml XUẤT XỨ TỪ ÚC', 'https://cf.shopee.vn/file/d1d61481ce815ad5676b72d8feb44f7c', 22),
(102, 'BHO8', 4, 32000, 25, 5, '[Nowship]Bia thủ công Barett - Red Smoky (chai 330ml)', 'https://cf.shopee.vn/file/c02ee2856f84516ac553bee8948d5c57', 40),
(103, 'BHO8', 4, 180000, 125, 5, 'Thùng 24 Lon Nước Giải Khát Vị Lúa Mạch ALL-FREE (330ml/Lon)', 'https://cf.shopee.vn/file/2ad68b836139a4fbf39a805a9c5fbf94', 20),
(104, 'BHO8', 4, 230000, 288, 5, 'Thùng 24lon bia Hà Nội 330ml', 'https://cf.shopee.vn/file/62c8e1d5805b51fb709cd6ff3e1034f1', 0),
(105, 'BHO8', 4, 62000, 312, 4.6, '[Combo] 𝙇𝙞𝙫𝙞𝙣𝙜 𝙩𝙝𝙚 𝙈𝙤𝙢𝙚𝙣𝙩 - 2 chai bia thủ công Barett mix vị Smoky/Weizen/Pilsner', 'https://cf.shopee.vn/file/bd1852955863167fa26bab2aa27c8216', 0),
(106, 'BHO8', 4, 190000, 141, 4.8, '[09/2021] Lốc 12 Lon Bia Corona Extra 355ml', 'https://cf.shopee.vn/file/8a33469190d4e0c451017836fd48c25e', 0),
(107, 'BHO8', 4, 190000, 141, 5, 'Bia trái cây Vola (Thái Lan)', 'https://cf.shopee.vn/file/8a33469190d4e0c451017836fd48c25e', 20),
(108, 'BHO8', 4, 240000, 4142, 5, 'Thùng 24 lon bia Tiger 330ml', 'https://cf.shopee.vn/file/694ca6bb05ce8b2705582fe53b99e897', 0),
(109, 'BHO8', 4, 350000, 1200, 5, 'Bia Tiger (nâu) Thùng 24 lon x 330ml', 'https://cf.shopee.vn/file/9d06a4825bac5952beff05cad098422b', 30),
(110, 'BHO8', 4, 340000, 152, 4.9, 'Bia Đen Đức Kaiserin thùng 24 lon, 330ml, HSD:T4/2022', 'https://cf.shopee.vn/file/ea602ce631eb2f61a6939f13c897c583', 20),
(111, 'BOK2', 1, 140000, 2105, 5, 'Sách - Bạn Đắt Giá Bao Nhiêu + Khí Chất Bao Nhiêu Hạnh Phúc Bấy Nhiêu', 'https://cf.shopee.vn/file/1dc5ad49e5fe9170615f6a810e4d78f0', 20),
(112, 'BOK2', 1, 53810, 1522, 5, 'Sách Tô Bình Yên Vẽ Hạnh Phúc (Tái Bản 2021)', 'https://cf.shopee.vn/file/de18517efadefc0f60b2d990818024e2', 31),
(113, 'BOK2', 1, 80000, 52, 5, 'Sách - Đắc nhân tâm (Top 10 cuốn sách hay nhất mọi thời đại)', 'https://cf.shopee.vn/file/2348436015220c13807ac67446a17601', 0),
(114, 'BOK2', 1, 40, 51, 5, 'Sách - Tôi Nợ Tương Lai Một Ngày Hạnh Phúc', 'https://cf.shopee.vn/file/63ccfaa9738ecb6c430a7a7767ca711c', 0),
(115, 'BOK2', 1, 61, 369, 5, 'Sách - Tuổi Trẻ Đáng Giá Bao Nhiêu? (Tái Bản 2018)', 'https://cf.shopee.vn/file/e38ed5421675044ed91f9b06e6560104', 24),
(116, 'BOK2', 1, 55, 1120, 5, 'Sách - Một Cuốn Sách Buồn… Cười - Vui Vẻ Không Quạu 2', 'https://cf.shopee.vn/file/0442d360ed50534e7ce505d2ec2a0ca0', 24),
(117, 'BOK2', 1, 52000, 584, 5, 'Sách - Cứ Khóc, Cứ Tan Vỡ Và Trưởng Thành (Kèm Bookmark)', 'https://cf.shopee.vn/file/0fe2c2349bb961faf8a8674527d7b4a4', 30),
(118, 'BOK2', 1, 56000, 123, 5, 'Sách - Tư Duy Logic - 1980Books', 'https://cf.shopee.vn/file/80ac4ce9dfbc39ba89527370d8f04ee4', 20),
(119, 'BOK2', 1, 176, 2545, 5, 'Sách - Câu Chuyện Cocktail (Bartender\'s Guide)', 'https://cf.shopee.vn/file/0633cfd80c7dbca9c940bfc55b452ff7', 20),
(120, 'BOK2', 1, 77, 154, 5, 'Sách - 13 Nguyên tắc nghĩ giàu, làm giàu - Think and Grow Rich - Napoleon Hill (Tái bản 2020)', 'https://cf.shopee.vn/file/ba53d4477591eb93698880dad1547731', 30),
(121, 'BOK1', 1, 180000, 51, 5, 'Sách - Giải mã đề thi dành cho bài thi đánh giá năng lực ĐHQGHN - Tài liệu ôn luyện đạt điểm cao kỳ thi đại học', 'https://cf.shopee.vn/file/29fd815a68ad2e7cc931528c4cc993d1', 20),
(122, 'BOK1', 1, 344444, 321, 5, 'Sách – [Sách tham khảo] Chinh Phục Ngữ Pháp Và Bài Tập Tiếng Anh Lớp 9 - Tập 2', 'https://cf.shopee.vn/file/3f01901fe6e3eea8644b4e498644ae4c', 30),
(123, 'BOK1', 1, 100000, 152, 5, 'Sách ID ôn thi THPT quốc gia môn Toán Tuyển chọn 3000 bài tập Khảo sát hàm số và ứng dụng', 'https://cf.shopee.vn/file/e2d06f785206544ae500344fb97ce89c', 25),
(124, 'BOK1', 1, 180000, 22, 5, 'Sách ID luyện thi THPT QG 2021 theo chuyên đề Tự Học Mũ và Logarit mới nhất', 'https://cf.shopee.vn/file/a9ee960ea930e8d466c4df1f0c5d5b13', 50),
(125, 'BOK1', 1, 120000, 152, 5, '[ Sách cô Trang Anh ] Trọng tâm kiến thức ôn thi THPT Quốc gia môn Tiếng Anh', 'https://cf.shopee.vn/file/c7510417f1996168992e97c4e4bd8e39', 33),
(126, 'BOK1', 1, 100000, 256, 5, 'Sách ID 3000 bài tập Nâng cao luyện thi đại học môn Toán.', 'https://cf.shopee.vn/file/055acb3f652d50fc0b7bee7f05b088c0', 20),
(127, 'BOK1', 1, 100000, 100, 5, 'Sách - 25 chuyên đề ngữ pháp tiếng Anh trọng tâm (bộ 2 quyển, lẻ tùy chọn)', 'https://cf.shopee.vn/file/271c325d89a94c7d092b7a5acb655269', 30),
(128, 'BOK1', 1, 68000, 24, 5, 'Sách - Cùng Học Cấu Trúc Tiếng Anh Trung Học Phổ Thông', 'https://cf.shopee.vn/file/fc5e62a8e549d88dd0999f98a685e99f', 15),
(129, 'BOK1', 1, 115000, 133, 5, '[ Sách Tiếng Anh cô Trang Anh ] 2000 English Collocation and Idioms', 'https://cf.shopee.vn/file/2d3dd3e7fa2514b5d7be88f648148651', 13),
(130, 'BOK1', 1, 129000, 1520, 5, 'Sách Chinh phục luyện thi vào 10 môn Ngữ Văn theo chủ đề', 'https://cf.shopee.vn/file/2b5aacb23de29dfe7e2e5097b01d337a', 12),
(131, 'BOK1', 1, 100000, 23, 5, 'Sách ID Vật Lý ôn thi thpt quôc gia 2022: Tuyển chọn 3000 bài tập Dao động cơ học và sóng cơ học', 'https://cf.shopee.vn/file/14dc60044a7de3324223991d237df95a', 50),
(132, 'BOK1', 1, 615, 100, 5, 'Sách: Sổ tay toán học và sổ tay khoa học - sách tham khảo cho trẻ từ 9 tuổi', 'https://cf.shopee.vn/file/fe5043f2387272c02c77fbeb10f666a6', 10),
(133, 'BOK1', 1, 180000, 1525, 5, 'Sách - Combo Bứt Phá Điểm Thi Môn Hóa Học (Chinh phục kì thi THPTQG và Đại học, Cao đẳng)', 'https://cf.shopee.vn/file/f10725549bb7e9b4fa211d65e0b38f7b', 20),
(134, 'BOK1', 1, 617800, 456, 5, 'Sách - Mukbang 1200 Từ Vựng Tiếng Hàn Tổng Hợp Học - Bộ Giải Pháp Học Từ Vựng Tiếng Hàn', 'https://cf.shopee.vn/file/a3684e8aeaec6d91c3623af7ead56c28', 20),
(135, 'BOK3', 1, 57000, 123, 5, 'Sách - Combo Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Sơ Cấp 1 ( SBT + GTR)', 'https://cf.shopee.vn/file/090fc006e0542b173c4e11d48af29da5', 0),
(136, 'BOK3', 1, 162000, 363, 5, 'Sách - Ngữ Pháp Tiếng Hàn Thông Dụng (Sơ Cấp) – Korean Grammar In Use - MCBooks', 'https://cf.shopee.vn/file/105164dcb7a700c4df353bd78806be25', 20),
(137, 'BOK3', 1, 14000, 123, 5, 'Sách - Vòng Quanh Thế Giới: Hàn Quốc (Tái Bản 2019)', 'https://cf.shopee.vn/file/69d23ee544ba6a4a63dd4fa5c8bac4e0', 0),
(138, 'BOK3', 1, 108000, 23, 5, 'Sách - Tiếng Hàn Tổng Hợp Dành Cho Người VIệt Nam - Sơ cấp 1 (bản đen trắng)', 'https://cf.shopee.vn/file/695e55cdb0a2db675162cf64460ed329', 10),
(139, 'BOK3', 1, 47570, 175, 5, 'Sách - Không Phải Chưa Đủ Năng Lực, Mà Là Chưa Đủ Kiên Định (Kèm Bookmark) - Hàn Xuân Trạch', 'https://cf.shopee.vn/file/039373200c0ce5d6490bd47cdfdf87f7', 0),
(140, 'BOK3', 1, 240000, 352, 5, 'Sách - Combo 28 ngày tự học tiếng Nhật', 'https://cf.shopee.vn/file/4f7cd4ba7033c0f63732221c6b484601', 0),
(141, 'BOK3', 1, 30000, 574, 5, 'Sách - Tự học viết tiếng Nhật căn bản - Hiragana', 'https://cf.shopee.vn/file/c7441fdc83258784f75090574b4b4d56', 10),
(142, 'BOK3', 1, 15000, 246, 5, 'Sách Từ Điển Mẫu Câu Tiếng Nhật', 'https://cf.shopee.vn/file/3ae829e5ef18aa89649da5a35104eb17', 30),
(143, 'BOK3', 1, 110000, 2568, 4.9, 'Sách - Tổng Hợp Đề Thi Năng Lực Tiếng Nhật N3 - N2: Luyện Nghe Trung Cấp', 'https://cf.shopee.vn/file/219ae0e030029931b9741a3f7ec0b45c', 25),
(144, 'BOK3', 1, 50000, 3, 4, 'Sách - Keep It Up Tập Viết Chữ Hán – Học Tiếng Trung Cho Người Mới Bắt Đầu', 'https://cf.shopee.vn/file/fbf3b9715422aa12d8e752e290f0be9f', 0),
(145, 'CLO1', 1, 90000, 1523, 4.9, 'Áo thun cổ tròn tay ngắn phong cách Hàn Quốc năng động trẻ trung cho nam', 'https://cf.shopee.vn/file/bfc7189a7526c6cd7504bf93f9b5dc01', 0),
(146, 'CLO1', 1, 30000, 23, 5, 'Áo Thun Bò Sữa [VIDEO + ẢNH THẬT] Áo thun tay lỡ form rộng Unisex 38-65kg Nam Nữ', 'https://cf.shopee.vn/file/d10792fed1338f630a3d8e7478969c56', 10),
(147, 'CLO1', 1, 20000, 1235, 4.8, '[RẺ VÔ ĐỊCH Áo Thun Tay Lỡ Unisex COSTA RICA 2 Màu Đen Trắng', 'https://cf.shopee.vn/file/805e6569624d8522d6dce247ea351741', 12),
(148, 'CLO1', 1, 30000, 5498, 5, 'Trùm sỉ áo thun tay lỡ form rộng 2x 3x (chọn mẫu trên live)', 'https://cf.shopee.vn/file/b54acafcee7e74599ca888c65c08e71a', 2),
(149, 'CLO1', 1, 40000, 3684, 5, 'Áo thun tay lỡ nữ SAM CLO freesize phông form rộng dáng Unisex, mặc lớp, nhóm, cặp in hình MÂY CẦU VỒNG KEEP SMILING', 'https://cf.shopee.vn/file/473ba72028a311cf5e13774e64baa506', 10),
(150, 'CLO1', 1, 50000, 25493, 4.6, 'Áo phông nam nữ Tay Lỡ form rộng oversize Mùa Hè Unisex hình smile', 'https://cf.shopee.vn/file/ee42d039188231657f247d3b3654b2f5', 50),
(151, 'CLO1', 1, 49000, 213, 4.8, 'Áo thun nữ form rộng tay lỡ Unisex me don\'t freesize 45 - 70kg ML243', 'https://cf.shopee.vn/file/38e01a8567517bb866fd48968bd9c8c5', 25),
(152, 'CLO2', 1, 65000, 1503, 5, 'áo sơ mi nam nữ đủ màu trắng, đen, xanh dương, đỏ, xám ghi đơn giãn mẫu đang hot nhất cubis shop', 'https://cf.shopee.vn/file/46c7254a5ab2830f9982c53fbead73dd', 10),
(153, 'CLO2', 1, 80000, 2589, 5, 'Áo sơ mi nữ cộc tay cổ viền free size 2 màu be trắng chất đũi siêu mát dưới 58kg Có 2 màu be, trắng', 'https://cf.shopee.vn/file/5178918763f6e4989958336a3361820b', 0),
(154, 'CLO2', 1, 56000, 13569, 5, '[Ảnh thật/Video] Áo sơ mi dạ khoác ullzang, Áo sơ mi dạ kẻ - Dorita Boutique', 'https://cf.shopee.vn/file/195c150d1740fe4f9dc5a56da093351c', 0),
(155, 'CLO2', 1, 40000, 1353, 5, 'Áo sơ mi nữ trắng dài tay chất lụa hàn oversize tay dài form rộng suông (ảnh thật) - Áo sơ mi cộc tay chất đũi cổ vest', 'https://cf.shopee.vn/file/643cba0ba5e67b88edeb7b16b0d1230d', 19),
(156, 'CLO2', 1, 120000, 2654, 4.8, 'Áo Sơ Mi Dài Tay Unisex Form Rộng Siêu Hot Chất Kaki Cực Đẹp (SP4) kiểu áo sơ mi nữ dáng dài mẫu mới 2021 Zuca Shop', 'https://cf.shopee.vn/file/4f84e0b12b5c1215fca44e5fa33b766c', 0),
(157, 'CLO2', 1, 115000, 8905, 5, 'Áo sơ mi Đen Cổ Vest ngắn tay form rộng unisex nam nữ vải lụa', 'https://cf.shopee.vn/file/a16bce6a715e2fdae9cfd97a8f4769d4', 10),
(158, 'CLO2', 1, 162000, 258, 5, 'Áo sơ mi cộc tay Pocket, JACKLANE , Áo sơ mi basic unisex dáng rộng có túi ngực thời trang Hàn Quốc', 'https://cf.shopee.vn/file/a6a6113c2f77f19b64e19be18dd38102', 10),
(159, 'CLO2', 1, 133000, 3454, 5, 'Áo Sơ Mi Chiffon Tay Dài Form Rộng Họa Tiết Sọc Vằn Hợp Thời Trang Nữ', 'https://cf.shopee.vn/file/606c414db606562d052d047b807da005', 30),
(160, 'CLO2', 1, 130000, 589, 4.9, '[HÀNG THIẾT KẾ CAO CẤP] Áo Sơ Mi Trắng Kiểu Lệch Tà Freesize Dễ Thương Đi Học', 'https://cf.shopee.vn/file/7ab9b21f85b9d0585ef27e5149c23787', 25),
(161, 'CLO2', 1, 150000, 3434, 4.3, 'Áo Sơ Mi Tay Dài Họa Tiết Cổ Điển Cho Nữ', 'https://cf.shopee.vn/file/7fc928995bfb8395a349ff388b90c172', 0),
(162, 'CLO3', 1, 59000, 15684, 4.8, 'Sét áo quây + quần bom chun gấu, áo đen quần trắng thể thao cá tính HBTD388', 'https://cf.shopee.vn/file/e5399e9abfbdcf27fe9d73248a11adc5', 10),
(163, 'CLO3', 1, 39000, 251, 4.9, 'Áo bóng rổ số 26 phối tay trắng dáng rộng dấu quần unisex/ Áo thun thể thao nam nữ tay lỡ phom thụng ulzzang_veestore', 'https://cf.shopee.vn/file/174dfb63a18536b5870756648a3d4bb7', 22),
(164, 'CLO3', 1, 365000, 256, 4.8, '🍇order🍇 set áo quần thể thao 3 món', 'https://cf.shopee.vn/file/4756cecb35c6dec8bebda8e1c33b0c4d', 0),
(165, 'CLO3', 1, 59000, 625, 4.9, 'Áo quần legging nữ Lana nâng mông tập thể thao, Quần legging lửng cạp cao co giãn 4 chiều che bụng ulzzang Hàn Quốc', 'https://cf.shopee.vn/file/2bb20ffe6f44c21ee2d62eccfe501dd1', 0),
(166, 'CLO3', 1, 130000, 585, 4.8, '[Mã SKAMSALE06 giảm 10% tối đa 100K đơn 150K] Set Thể Thao Nữ PM Quần Lỡ Biker Áo Croptop Form Rộng Siêu Kute', 'https://cf.shopee.vn/file/66c18668a49b0086a74442805e4a900c', 0),
(167, 'CLO3', 1, 50000, 1526, 4.8, 'Áo Thun SIXTEEN BACE Thể Thao Nữ [FREESHIP] 🌸 Phông dài tay in số 16 form giấu quần màu ĐEN | TRẮNG | XANH Ulzzang 🌸 ', 'https://cf.shopee.vn/file/83dd372f8220b550966d456db8d4b77a', 20),
(168, 'CLO3', 1, 169000, 5, 5, '(Hà Nội) (Loại Polyeste Dày)Quần Dài Jogger Có Túi Thể Thao Nữ HE-Cadoit (Đồ Tập Gym)(Không Áo) II VIỆT NAM', 'https://cf.shopee.vn/file/6109e39ede020f808f4a33123c3813c3', 20),
(169, 'CLO3', 1, 150000, 152, 5, 'Áo Thun Thể Thao Nữ Summan (Đồ Tập Gym,Yoga) (Không Quần) II Annerun Việt Nam', 'https://cf.shopee.vn/file/266f24ec7cad326f85cf307439bf4b7d', 0),
(170, 'CLO3', 1, 300000, 594, 5, 'Set Bộ Quần Babies Gym Và Áo Croptop Misshine SET06 Tập Gym Yoga Nữ Chất Dệt Kim, Quần Lưng Cao, Nâng Mông, Áo Co Giãn', 'https://cf.shopee.vn/file/98e8fa2d316cdd640e41e00b2dfe828a', 25),
(171, 'CLO3', 1, 185000, 596, 5, 'Áo thun phông ngắn thể thao nữ Graphic (Đồ tập gym,yoga)(Không Quần) II Cửa hàng KIT SPORT VIỆT NAM', 'https://cf.shopee.vn/file/a62d6e2f687ed4b1d20c265795ee243f', 10),
(172, 'CLO3', 1, 130000, 5899, 5, '(Zencib Store) Áo Thun Thể Thao Nữ QA_Summer (Đồ Tập Gym,Yoga) (Không Quần) - Cửa Hàng Việt Nam', 'https://cf.shopee.vn/file/7d5ecf606ad83033b70a8e1e50f85e7c', 20),
(173, 'DDT1', 1, 90000, 2548, 4.9, 'Chuột Máy Tính Laptop Sky9 Có LED Nhiều Màu Phong Cách Hiện Đại Ấn Tượng', 'https://cf.shopee.vn/file/252d49ce0f444365385b27920ed06784', 12),
(174, 'DDT1', 1, 80000, 1356, 4.8, '[CHUẨN GAMING] Chuột máy tính Q7 LED 7 màu lung linh, siêu nhạy để chơi game hay làm việc văn phòng BH 6 tháng', 'https://cf.shopee.vn/file/c34f67a4971957cf7b1ccbe9dc6d81f8', 10),
(175, 'DDT1', 1, 100000, 1005, 4.8, 'Chuột game cao cấp K-SNAKE Q7 dành PUBG & FPS', 'https://cf.shopee.vn/file/10fb1806bd50aa71c20026304fa23f5a', 10),
(176, 'DDT1', 1, 65000, 593, 5, 'SIÊU HOT - GIÁ CỰC RẺ - Chuột Máy Tính Led Limei S1 Mouse Gaming Chơi Game, Dùng Văn Phòng Cực Tốt', 'https://cf.shopee.vn/file/5ae01018b2f877060fb86fe357cff716', 24),
(177, 'DDT1', 1, 90000, 596, 4.9, 'Chuột chơi game máy tính có đèn led đổi màu G5 Gaming thiết kế 6D, chỉnh được DPI, tương thích pc, laptop, máy tính bàn', 'https://cf.shopee.vn/file/cfb461d36e92b62cd5d1ea737ac0f029', 20),
(178, 'DDT1', 1, 80000, 695, 4.9, 'Chuột gaming YINDI-G12, chuột máy tính có dây ,tùy chỉnh DPI 4 cấp độ, dùng cho laptop, máy tính, pc- Bảo hành 6 tháng', 'https://cf.shopee.vn/file/9e37ffa6ff840837563e66f352e9a183', 10),
(179, 'DDT1', 1, 65000, 695, 5, 'Chuột fuhlen l102 tặng lót chuột bảo hành 24 tháng', 'https://cf.shopee.vn/file/9e22aa7c8a362eec342fbd152e9a2c69', 0),
(180, 'DDT1', 1, 70000, 59, 5, 'Chuột cơ chơi game 4800DPI 6 nút có đèn LED 4 màu & dây USB', 'https://cf.shopee.vn/file/be300aed1a09c81675ea738a470a9cb9', 0),
(181, 'DDT1', 1, 100000, 5943, 4.9, 'Chuột Game DIVIPARD G502 Led đa màu DPI 3200', 'https://cf.shopee.vn/file/21e0f7ab631ee262bed8693a7f737523', 20),
(182, 'DDT2', 1, 85000, 5398, 4.8, 'Bộ Bàn Phím Gaming có dây Kèm Chuột Máy Tính Con Báo Có LED 7 Màu Ấn Tượng', 'https://cf.shopee.vn/file/e26394e62abc77979e3870d3e2126a33', 15),
(183, 'DDT2', 1, 100000, 2594, 5, '[ 𝗠𝗨𝗔 𝟭 ĐƯỢ𝗖 𝟰 ] Bàn Phím Máy Tính Con Báo Tặng Kèm Chuột Phím Gaming Hoặc Văn Phòng - BH 1 Đổi 1 Hoàn Tiền Nếu Có Lỗi', 'https://cf.shopee.vn/file/e08c37aa84bc7937959e9eaa488d5605', 15),
(184, 'DDT2', 1, 325000, 6224, 4.9, 'Bàn Phím Chuyên Game K100 CAO CẤP Siêu đẹp, Siêu êm sánh ngang bàn phím Cơ máy tính', 'https://cf.shopee.vn/file/70996f6850df88a84fa58e35462636ac', 46),
(185, 'DDT2', 1, 850000, 1584, 5, '[Hàng Chính Hãng] Bàn Phím Cơ Bluetooth E-DRA EK361W Màu Trắng,Bàn Phím Gaming Bluetooth E-DRA EK361W Trắng- Bh 24 tháng', 'https://cf.shopee.vn/file/b38ae239683b4ba87af0818d7f63003b', 15),
(186, 'DDT2', 1, 850000, 265, 5, 'Bàn Phím Gaming RK 918 Led RGB (Có Sẵn)', 'https://cf.shopee.vn/file/9a2785edff717688b6bd84719188a8f7', 0),
(187, 'DDT2', 1, 150000, 628, 5, 'Bàn Phím Cơ Gaming ZK4 Gaming cao cấp, nhiều chế độ led, phím tạch tạch cảm giác chơi game cực đã BH 6 tháng', 'https://cf.shopee.vn/file/132d2463684bf559be2c270d512fbca8', 45),
(188, 'DDT2', 1, 550000, 58, 5, 'Bàn phím cơ Fuhlen G900L [Bảo hành 24 tháng] ♥️Freeship♥️ Phím cơ Fuhlen G900L Ninza phân phối', 'https://cf.shopee.vn/file/11ed5915c22ec67b968b768cb433b73f', 0),
(189, 'DDT2', 1, 650000, 598, 4.8, 'Bàn phím cơ Fuhlen Subverter - Bàn phím cơ RGB', 'https://cf.shopee.vn/file/f60813ad3be92d34b2a2b5655df1599f', 15),
(190, 'DDT2', 1, 250000, 694, 5, 'Bộ Bàn Phím Chuột Báo Đêm, Phím Giả Cơ, LED Rainbow, Chuột DPI 3 Cấp', 'https://cf.shopee.vn/file/ddc353932500cb0f959c7bdcffcedc0f', 25),
(191, 'DDT3', 1, 23000000, 4, 5, '[ELHPJUN GIẢM 5%+ HPFL300K GIẢM 300K]Laptop HP Envy 13-ba1028TU 2K0B2PA i5-1135G7 8G 512G 13.3\'\' W10+Office', 'https://cf.shopee.vn/file/4e041f69cecfa709b5e468e672ec2265', 6),
(192, 'DDT3', 1, 9000000, 9, 5, 'Laptop ASUS X507MA - 15.6 inch, Nhỏ gọn, siêu mỏng, siêu nhẹ, chính hãng', 'https://cf.shopee.vn/file/b2fd934092830d1e0e3858449a67dab8', 5),
(193, 'DDT3', 1, 6000000, 59, 5, 'Laptop Gtab Ultrabook siêu mỏng nhẹ, Pin trâu', 'https://cf.shopee.vn/file/b0a46ba8d2bfc831912e0b0ebb444cd3', 5),
(194, 'DDT3', 1, 6000000, 8, 5, 'Laptop Đồ Họa Chơi Game Hp 8440 Core i5 Ram 4Gb Ổ SSD 120Gb - Tặng Phụ Kiện', 'https://cf.shopee.vn/file/e81c211d6fe629e47a0141fddf5740cc', 0),
(195, 'DDT3', 1, 7000000, 0, 5, 'Laptop NEC Versapro VB 12.1 inch Core i5 - i7 đời 2, đời 3', 'https://cf.shopee.vn/file/93bf003dae76d11f66d3633cb7314de7', 0),
(196, 'DDT3', 1, 22000000, 6, 5, '[HPFL300K GIẢM 300K]Laptop HP Envy 13-ba1027TU 2K0B1PA i5-1135G7 8G 256G 13.3\'\'W10+Office', 'https://cf.shopee.vn/file/fa5a770b137a779a79701fd323456ff6', 10),
(197, 'DDT3', 1, 20000000, 41, 5, 'Laptop Acer Swift 3 SF313-53-503A i5-1135G7 | 8GB | 512GB | Intel Iris Xe Graphics| 13.5\'\' QHD | Win 10', 'https://cf.shopee.vn/file/2a529568c1f1eb04c20e4d1580bf47cd', 2),
(198, 'DDT3', 1, 5000000, 55, 5, 'Laptop siêu mỏng siêu nhẹ Nhật Bản NEC VersaPro PC-VK17T Core i5-4210U, 4gb Ram, 128gb SSD 13.3inch 2K 2560x1440', 'https://cf.shopee.vn/file/df39abeb695f296c607a5773bfee2eaf', 0),
(199, 'DDT4', 1, 180000, 261, 5, 'Quạt tản nhiệt gaming cho điện thoại, tản nhiệt sò lạnh siêu mát DL01 DL TECH', 'https://cf.shopee.vn/file/def74b8233883dc8a00c28d8418b2ed9', 0),
(200, 'DDT4', 1, 80000, 56, 5, '[Xả Hàng] Quạt tản nhiệt cho điện thoại H15 và G6 chính hãng giúp máy mát tránh hại pin chiến game mượt', 'https://cf.shopee.vn/file/ed91586d55bacef545f1491f0e8a7dcc', 0),
(201, 'DDT4', 1, 265000, 56, 4.9, 'Tản nhiệt điện thoại MEMO DL-02 bản nâng cấp kèm sạc TYPE C + Lightning cho điện thoại', 'https://cf.shopee.vn/file/72224b5ca6b6816f3556cfd5cdebbf31', 5),
(202, 'DDT4', 1, 360000, 52, 5, 'Memo DL05 | Quạt tản nhiệt sò lạnh cho điện thoại, Màn hình LED hiển thị nhiệt độ, LED RGB, Tặng kèm bao tay chơi game', 'https://cf.shopee.vn/file/2b7866b8d5a461ec1eb959c94d9ebf9c', 10),
(203, 'DDT4', 1, 180000, 52, 5, 'Memo FL05 - LED RGB | Quạt tản nhiệt gaming cho điện thoại', 'https://cf.shopee.vn/file/702366c91eccff4b08ca6845f00b9ce8', 0),
(204, 'DDT4', 1, 150000, 25, 5, 'FAN CASE MÁY TÍNH coolmoon rainbow không dùng hub LED 5 MÀU - LED ĐƠN XANH/ĐỎ SIÊU ĐẸP NEW', 'https://cf.shopee.vn/file/42288618dc75661b8e76fa5f2f3ea43c', 0),
(205, 'DDT4', 1, 150000, 256, 5, '[Chính Hãng] Đế giá đỡ quạt tản hút nhiệt N99 laptop máy tính bền tốt - quạt tản nhiệt to chạy êm làm mát cực nhanh', 'https://cf.shopee.vn/file/dc6b3b445373733ddc6ea416432e787e', 10),
(206, 'DDT4', 1, 40000, 364, 4.9, '[Xả hàng] Quạt tản nhiệt máy tính, Fan Coolmoon RGB, led tĩnh, kích thước 12cm', 'https://cf.shopee.vn/file/36685ca6fee380922d40e55371d745ea', 20),
(207, 'DDT5', 1, 85000, 1506, 5, 'Ram ddr2 2g bus800 dùng cho máy tính để bàn', 'https://cf.shopee.vn/file/3aa22c54e5e35265d786bd5d310d7427', 0),
(208, 'DDT5', 1, 150000, 265, 4.9, 'Ram DDR2 và DDR3 2gb 4gb 8gb bus 1600 và 1333 dùng cho các đời main pc', 'https://cf.shopee.vn/file/5c5a6ead9417458a71e741c3e983e746', 0),
(209, 'DDT5', 1, 700000, 658, 5, 'Ram 8G DDR4 8G/2800 GSKILL Ripjaws tản thép đỏ đẹp xịn sò', 'https://cf.shopee.vn/file/f560545fe291ea6c9ea387c0d6a51fe7', 10),
(210, 'DDT5', 1, 650000, 51, 5, 'Ram DDr4 8GB buss 2400 chạy main socket 1151, 1151v2, amd am4', 'https://cf.shopee.vn/file/fafd5e4dcdc44d0653521468fdd8adfe', 12),
(211, 'DDT5', 1, 600000, 406, 4.9, 'RAM Kingston HyperX Fury Red 8GB (1x8GB) DDR3 Bus 1600Mhz', 'https://cf.shopee.vn/file/1ae2bfc22cf62a7dc5f91ae1131a4782', 10),
(212, 'DDT5', 1, 650000, 1564, 4.9, 'Ram máy tính để bàn hyper ddr3-8gb buss 1600mhz!', 'https://cf.shopee.vn/file/2e181daff4297afcd454190c67ac954b', 12),
(213, 'DDT6', 1, 2300000, 45, 5, 'Điện Thoại Xiaomi Redmi 9A 2GB/32GB - Hàng Chính Hãng', 'https://cf.shopee.vn/file/c3f3320d86c2a7225060e05d62a76534', 23),
(214, 'DDT6', 1, 4800000, 625, 5, '[ MÁY CHÍNH HÃNG ] điện thoại Apple Iphone 8 bản Quốc Tế 64G, Full Vân tay - Bảo hành 12 tháng', 'https://cdn.tgdd.vn/Products/Images/42/114113/iphone-8-64gb-hh-600x600.jpg', 12),
(215, 'DDT6', 1, 3000000, 25, 5, 'Điện thoại Google Pixel 3 3XL 2sim ram 4G/64G mới Chính hãng, Chiến Game mượt', 'https://cf.shopee.vn/file/b9c65d5286b2616b97e4d5ac938aef6c', 0),
(216, 'DDT6', 1, 2000000, 378, 5, 'Điện thoại Vsmart Joy 4 - Hàng Chính Hãng Mới 100%', 'https://cf.shopee.vn/file/55b39d71751886b9eb41dd1dbdc3cc96', 15),
(217, 'DDT6', 1, 12000000, 152, 5, ' Điện thoại iPhone 11 Quốc tế 128GB Mới 99% Bảo Hành 12 Tháng', 'https://cf.shopee.vn/file/d1e61db6fc8ce60aaabaa8d44fcc0afd', 15),
(218, 'DDT6', 1, 25000000, 6, 5, 'Điện thoại Apple iPhone 12 256GB (VN/A) - Hàng chính hãn', 'https://cf.shopee.vn/file/2b0d6c7ace8866699c406878bf8763db', 3),
(219, 'DDT6', 1, 2999999, 15, 5, 'Điện Thoại Vsmart Live 4 6GB/64GB - Hàng Chính Hãng', 'https://cf.shopee.vn/file/6584f1edd6f72068089f77d53aa5111f', 25),
(220, 'DDT6', 1, 1750000, 36, 5, 'điện thoại Xiaomi Redmi 5 Plus 2sim ram 3G/32G /ram4/64g mới Chính Hãng, có Tiếng Việt', 'https://cf.shopee.vn/file/2fb36b6340ca7fc940b6b4fb9652bde0', 36),
(221, 'DDT6', 1, 1500000, 36, 5, 'điện thoại LG G7 ThinQ 2sim ram 4G/64G mới Chính Hãng, Snapdragon 855 8nhân, Chiến Game mượt', 'https://cf.shopee.vn/file/0db06623c16a02aa83489bf15eb37087', 25),
(222, 'DDT6', 1, 3450000, 25, 5, 'điện thoại Oppo F9 Pro 128G ram 6G CHÍNH HÃNG Full, Bảo hành 12 tháng', 'https://cf.shopee.vn/file/fbd0cb956f7c3eb2c52c875d260597d6', 12),
(223, 'DGD1', 1, 250000, 26, 5, 'Nồi Cơm Điện Mini Đa Năng JIASHI 1,2L (Nấu Cháo, Hầm, Chưng, Hấp, Luộc) Cho 1 Đến 2 Người', 'https://cf.shopee.vn/file/5d677a404af4207958962b622c342348', 0),
(224, 'DGD1', 1, 270000, 26, 5, 'Nồi cơm điện nắp rời Comet CM8021 (1.8L)', 'https://cf.shopee.vn/file/89561c9b880ad0ca79191bdf925736d9', 0),
(225, 'DGD1', 1, 380000, 25, 4.9, 'Nồi Cơm Điện 1.8L Sunhouse SHD8602, Nồi Cơm Điện Sunhouse Siêu Bền, Bảo Hành Toàn Quốc, Lòng Nồi Chống Dính Whitford', 'https://cf.shopee.vn/file/fc7372cfe30472721470b6b2545b4c20', 12),
(226, 'DGD1', 1, 640000, 26, 5, '[ BẢO HÀNH 12 THÁNG ] Nồi Cơm Điện Cuckoo 3D 2 Dung Tích 1.2L - 2L Lòng Siêu Dày Cơm Ngon', 'https://cf.shopee.vn/file/478114398e46cf784bbc4013c2ac17af', 0),
(227, 'DGD1', 1, 390000, 12, 4.9, 'Nồi Cơm Điện Đa Năng Mini JIASHI 0.8L Nấu Cháo, Hầm xương, Nồi Hấp, Hàng Nội Địa Trung Cao Cấp, Tiện Ích', 'https://cf.shopee.vn/file/ed0e51b586cfbc1857d3193baac5a191', 25),
(228, 'DGD1', 1, 250000, 36, 5, 'Nồi Cơm Điện Nắp Gài Lock&Lock EJR445GRY (1.8 Lít), 700W, Kèm Xửng Hấp, Bảo Hành 12 Tháng - Hàng Chính Hãng - JoyMall', 'https://cf.shopee.vn/file/7d337f16be338669f494b7bfe41a2317', 36),
(229, 'DGD1', 1, 400000, 369, 4.5, 'Nồi Cơm Điện CUCKOO 3D Bền Đẹp 2 Dung Tích, Lòng Siêu Dày - Bảo Hành 12 Tháng', 'https://cf.shopee.vn/file/412070bb0a5e3b16f6f3cf08366767c8', 36),
(230, 'DGD2', 1, 395000, 365, 4.9, 'Máy Điều Hòa Mini - Quạt Điều Hòa Mini', 'https://cf.shopee.vn/file/548473c37a172d96f21cf1afd3f0497a', 12),
(231, 'DGD2', 1, 600000, 36, 4.6, 'Quạt đứng Senko DR1608 có Điều Khiển', 'https://cf.shopee.vn/file/60365aefd71432e4dd55b278affb35ba', 23),
(232, 'DGD2', 1, 180000, 136, 5, 'Quạt điện cơ X19 (5 cánh)', 'https://cf.shopee.vn/file/5dd931f1996256808813147e76142f13', 36),
(233, 'DGD2', 1, 450000, 369, 5, '💔Sạc Tích Điện 3H💔 Quạt Để Bàn Sạc Tích Điện Super Fan, 3 Chế Độ Mát, Để Bàn Làm Việc, Ô Tô... Bảo Hành 12 Tháng', 'https://cf.shopee.vn/file/2bfd4e8321a0a7604f6e752fea4d8b17', 12),
(234, 'DGD2', 1, 450000, 365, 4.8, 'Quạt sàn Tico - SB4, cánh 400, rẻ vô địch, quạt chân quỳ Điện cơ Việt Nhật', 'https://cf.shopee.vn/file/94e93e3f3e5cf44dad1c5e530658ccab', 12),
(235, 'DGD2', 1, 365000, 321, 4.5, 'Quạt gió nhỏ Lifan GN-4(hàng chính hãng, mới 100%)', 'https://cf.shopee.vn/file/ee2dc73b883cf2190aed50e2d4eded45', 0),
(236, 'DGD2', 1, 800000, 2, 4.6, 'Quạt tích điện, quạt sạc điện năng lượng mặt trời Korichi chính hãng bảo hành 12 tháng', 'https://cf.shopee.vn/file/81fe7739d139f586af9c06b323e38ee3', 32),
(237, 'DGD2', 1, 80000, 36, 5, '🚗Quạt xe điện mini 12V 360 độ Xoay 3 tốc độ Đầu kép Tiếng ồn thấp Xe hơi cho Van SUV RV Boat Auto', 'https://cf.shopee.vn/file/b787a4333dc90122f6d113ee22069fdf', 36),
(238, 'DGD4', 1, 125999, 25, 5, 'Bình đun siêu tốc 1,5L COMET - CM8215', 'https://cf.shopee.vn/file/ec5319d097110d2e478ff01df0e9cd8b', 12),
(239, 'DGD4', 1, 150000, 36, 5, 'Ấm Siêu Tốc Tự Ngắt 1.5 Lít Bear ZDH-C15C1- Bảo hành 12 thángẤm Siêu Tốc Tự Ngắt 1.5 Lít Bear ZDH-C15C1- Bảo hành 12 tháng', 'https://cf.shopee.vn/file/7f188f76b10018d1dcefe25fc86da1e7', 15),
(240, 'DGD4', 1, 250000, 26, 5, 'Ấm siêu tốc thủy tinh trong suốt CAO CẤP KAW Dung tích 2.0L - tiết kiệm điện, đun siêu tốc, có đèn LED - HÀNG CHÍNH HÃNG', 'https://cf.shopee.vn/file/963085fcf32d95cea01c7f9859c227b5', 32),
(241, 'DGD4', 1, 90000, 36, 4.6, 'Ấm Siêu Tốc Đun Nước Electric Kettle Dung Tích 1.8 Lít - Nồi Siêu Tốc Hàng Chính Hãng sản xuất và lắp ráp tại Việt Nam', 'https://cf.shopee.vn/file/1c83f65e54e531d9e8ab04b1c864f122', 23),
(242, 'DGD4', 1, 159000, 26, 5, 'Ấm Siêu Tốc Đun Nước Thái Lan Jiplai 2 Lớp Bình 2.5 Lít Chống Nóng Chống Giật Bảo Hành 12 Tháng Tự Động Ngắt Khi Sôi', 'https://cf.shopee.vn/file/453fa4d3f7a8b21877d9c5c9672acbef', 12),
(243, 'DGD4', 1, 360000, 25, 5, 'Ấm siêu tốc sunhouse [FREESHIP] bình siêu tốc thuỷ tinh Sunhouse 1215 sôi nhanh, tiết kiệm điện, an toàn', 'https://cf.shopee.vn/file/5773cc439f22e80e21c085256afc2b33', 0),
(244, 'DGD4', 1, 350000, 365, 4.8, 'ẤM ĐUN NƯỚC SIÊU TỐC THUỶ TINH RAPIDO 1.8L/ BÌNH ĐUN NƯỚC SIÊU TỐC THUỶ TINH RAPIDO [CHÍNH HÃNG ĐỨC, LỖI 1 ĐỔI 1]', 'https://cf.shopee.vn/file/b1048abdb8703ddcb314d883282f2e36', 6),
(245, 'DGD4', 1, 250000, 26, 4.2, 'Ấm Siêu Tốc 2 Lớp Inox 304 Elmich 0219 1.2L', 'https://cf.shopee.vn/file/172dd0216a7c6ece2e34ba9871cc737e', 0),
(246, 'DGD4', 1, 300000, 265, 4.6, 'Ấm siêu tốc âm Đạt Tường 5L tự ngắt điện khi sôi cực bền', 'https://cf.shopee.vn/file/376a9b424d6403d6a0b7ddb35255c7ed', 0),
(247, 'DGD4', 1, 290000, 36, 5, 'Ấm siêu tốc chính hãng 2 lớp MEIYUN, Ấm đun siêu tốc 2 lớp chính hãng loại 1.8 lít tốt cao cấp - Aka mart', 'https://cf.shopee.vn/file/376a9b424d6403d6a0b7ddb35255c7ed', 5),
(248, 'DGD5', 1, 80000, 36, 4.9, 'Giá để đồ đa chức năng bằng thép không gỉ nhà bếp, giá để dao và giá để đũa', 'https://cf.shopee.vn/file/17f1e2fb919352dc08c9d09220159f7f', 12),
(249, 'DGD5', 1, 91000, 259, 5, '[Đồ Nhà Bếp] Bộ chày giã cối gỗ cao cấp Bộ chày cối gỗ hình lu tiện dụng trong nhà bếp T4B1', 'https://cf.shopee.vn/file/01b35e1e2e3eb855fd4840b0fc1b4d46', 12),
(250, 'DGD5', 1, 600000, 3650, 4.8, 'Máy làm sữa đậu nành tiện lợi an toàn Supor Easy Cleaning DJ14B', 'https://cf.shopee.vn/file/fa3165348ee7864de428d83632c1258c', 12),
(251, 'DGD5', 1, 280000, 265, 4.6, 'Bộ Dụng Cụ Nhà Bếp Silicon Nấu Ăn Làm Bánh 11 12 Món - Dụng Cụ Nấu Ăn - Cây Đánh Trứng Vá Muôi', 'https://cf.shopee.vn/file/95cfedf7cca7d616d239702170d210d2', 2),
(252, 'DGD5', 1, 58000, 268, 5, 'Bếp Điện Đôi Mâm Nhiệt Perfect HP789 | Công Suất 2000W | Chất Liệu Gang Cao Cấp | Tặng Bộ Dao Làm Bếp 8 Món', 'https://cf.shopee.vn/file/6dd97e4fc6967655bb983a29c55f0d60', 12),
(253, 'DGD5', 1, 80000, 265, 4.6, 'Xẻng Xúc Bánh INOX DÀY KHÔNG RỈ- CÁN GỖ CAO CẤP- Đồ dùng làm bánh, kem cuộn, pizza , dụng cụ nhà bếp đa năng', 'https://cf.shopee.vn/file/356da33def5ebf2c40522a3111cd3643', 0),
(254, 'DGD5', 1, 360000, 45, 5, 'Cân tiểu ly điện tử nhà bếp mini định lượng 1g - 5kg, Cân tiểu ly làm bánh độ chính xác cao kèm 2 viên pin AAA', 'https://cf.shopee.vn/file/184007706df2ef1cd8c0a7f1776f1889', 4),
(255, 'DGD5', 1, 49000, 264, 4.8, 'Khuôn hấp trứng, làm bánh cho bé (bộ 4 khuôn nhựa kèm chổi silicon quét dầu)', 'https://cf.shopee.vn/file/2e0d8a2025bcecbd1c44e3a600b91818', 0),
(256, 'DGD5', 1, 249000, 365, 4.8, 'KỆ ĐA NĂNG ĐỂ ĐỒ, DAO, THỚT TÍCH HỢP TÍNH NĂNG TREO TƯỜNG TIỆN LỢI CHO PHÒNG BẾP', 'https://cf.shopee.vn/file/f38f0083c2058f8d04186ef57553b0ba', 12),
(257, 'DGD6', 1, 7890000, 26, 5, 'V13ENS1-MIỄN PHÍ CÔNG LẮP ĐẶT-Máy lạnh LG Inverter 1.5 HP V13ENS1', 'https://cf.shopee.vn/file/b41c4f113fdd2f023e71ff0db0f2448d', 0),
(258, 'DGD6', 1, 1500000, 26, 4.8, 'Quạt điều hoà không khí , Quạt cây đứng để phòng ngủ 115cm', 'https://cf.shopee.vn/file/607ac648b3cdc97382f214b002d74564', 25),
(259, 'DGD6', 1, 4990000, 26, 4.9, 'Miễn phí công lắp đặt_ Điều hòa không khí một chiều SUNHOUSE SHR-AW09C120/AW12C120', 'https://cf.shopee.vn/file/13c8dbbfeda7153157ae1671c631f858', 2),
(260, 'DGD6', 1, 1390000, 26, 4.5, 'Quạt làm mát bằng hơi nước điều hoà 40 lít SAKURA 2021 tặng đá khô', 'https://cf.shopee.vn/file/47363a4546299c118d2ac9bcb7bfb258', 0),
(261, 'DGD6', 1, 4050000, 158, 5, 'S09N66 - MIỄN PHÍ CÔNG LẮP ĐẶT - Máy Lạnh ASANZO 1.0 HP S09N66 - HCM', 'https://cf.shopee.vn/file/ccd93a6a69b354a5eccacc3c220f1e26', 6),
(262, 'DGD6', 1, 5800000, 26, 5, 'Điều hòa di động thông minh Xiaomi New Widetech - kết nối app Mihome', 'https://cf.shopee.vn/file/57ad6e8992d4778adffb171daaf4617b', 3),
(263, 'DGD6', 1, 1870000, 598, 5, 'Quạt điều hòa không khí siêu mát, Quạt làm mát Mobell-3116A - Công suất 130W- Dung tích 12L . Bảo hành lên đến 12 tháng.', 'https://cf.shopee.vn/file/bf013d81a1ace3d6efec81a9b0a8e42c', 5),
(264, 'DGD6', 1, 1635000, 266, 5, '[Mẫu mới 2021] Quạt điều hòa VS 5500-Công suất 130-Dung tích 40L-Làm lạnh 4 chiều-Tặng 2 viên đá khô-Bảo hành 2 năm', 'https://cf.shopee.vn/file/e9302c526cd87bac36009fd873a2567f', 0),
(265, 'DGD6', 1, 5290000, 152, 4.8, 'MIỄN PHÍ CÔNG LẮPMáy lạnh Hitachi 1 HP RAS-EJ10CKV', 'https://cf.shopee.vn/file/cff9c274a7361bc4f1b01564a589d9c2', 3),
(266, 'DGD7', 1, 580000, 59, 5, 'Nồi lẩu điện LOTOR 3L chống dính cao cấp, tự động ngắt khi đạt đủ nhiệt độ', 'https://cf.shopee.vn/file/cfe65bbbd9f7af5a2d377791e2989d97', 2),
(267, 'DGD7', 1, 560000, 58, 5, 'Nồi Lẩu Đa Năng ✔️bếp điện đa năng nồi lẩu mini đa năng vừa ăn lẩu và nướng chống dính cao cấp 2 núm chỉnh nhiệt NL03', 'https://cf.shopee.vn/file/54d70a935f2173dd5a8d93e6968bae96', 40),
(268, 'DGD7', 1, 356000, 658, 4.5, 'NỒI LẨU ĐIỆN MINI ĐA NĂNG KÈM GIÁ HẤP .', 'https://cf.shopee.vn/file/227c6593eb7d0a231bdde0f0bae6974f', 26),
(269, 'DGD7', 1, 153000, 2654, 5, '[] Bếp Hồng Ngoại Sanaky SNK-2101HG Tặng Kèm 1 Vỉ Nướng + 1 Nồi Lẩu', 'https://cf.shopee.vn/file/5032efdba7cab291c5efd389f6da95eb', 0),
(270, 'DGD7', 1, 350000, 265, 5, '[HÀNG THÁI LAN] Nồi Lẩu Điện Bếp Nướng Đa Năng Mini 2 In 1 - Vừa Nấu Lẩu Vừa Nướng', 'https://cf.shopee.vn/file/d445786bc4d64287940f79bd9e6b1b2c', 35),
(271, 'DGD7', 1, 359000, 625, 5, 'Bếp lẩu nướng đa năng 2 in 1 cao cấp chính hãng Tiết kiệm điện năng an toàn khi sử dụng', 'https://cf.shopee.vn/file/15854f21efbf29d65fd37f34f32bbb09', 3),
(272, 'DGD7', 1, 153000, 62, 5, 'Bếp Từ Đôi [𝗖𝗔𝗠 𝗞𝗘̂́𝗧 𝗖𝗛𝗜́𝗡𝗛 𝗛𝗔̃𝗡𝗚] Bếp Từ Đôi Genny 555T-Inverter Siêu Tiết Kiệm Điện, Mặt Kính Siêu Bền', 'https://cf.shopee.vn/file/4b5cda7687f4de4249af33fd746f9433', 12),
(273, 'DGD7', 1, 829000, 356, 4.8, '[UY TÍN] Kệ Để Đồ Đa Năng INOX 304 Sơn đen tĩnh điện 3 lớp an toàn, Giá để đồ nặng nhà bếp có bánh xe', 'https://cf.shopee.vn/file/e2f7fec415ce28be704040236e166eea', 5),
(274, 'DGD7', 1, 310000, 268, 4.8, 'Bếp lẩu nướng điện 2 ngăn Heysmart đa năng tiện dụng, nồi điện mini ngăn riêng biệt nhỏ gọn', 'https://cf.shopee.vn/file/c451cec5f33acd07bfe1e534ff50c12f', 26),
(275, 'DGD7', 1, 499000, 265, 4.6, 'Nồi Lẩu Điện Đa Năng Chống Dính Công Suất 1000W Dung Tích 3 Lít - Bếp Đa Năng Ăn Lẩu Và Nướng 💥FREESHIP💥', 'https://cf.shopee.vn/file/4855633bd031191426481fa15df57e51', 0),
(276, 'DGD7', 1, 239000, 365, 5, 'Bếp nướng lẩu 2 in 1 Mini Hàn Quốc🍢🥘 - Bếp Điện Đa Năng Cofy -Nồi Đôi Mini Nướng và Lẩu Cofy 2 trong 1 - BEPNL2IN1', 'https://cf.shopee.vn/file/46c0d0136352d5d7873529ee7357c7df', 5),
(277, 'DGD7', 1, 459000, 49, 4.6, 'Bếp nướng điện Sunhouse SHD4607 tốc độ nướng nhanh, an toàn cho sức khỏe và tiết kiệm điện năng - Bảo hành 12 tháng', 'https://cf.shopee.vn/file/fc40402688b3a3fc503b634baaf601dd', 3),
(278, 'DTD1', 5, 256000, 495, 5, 'Son Kem Perfect Diary ReadMe Weightless Velvet Stain Matte Lâu trôi 14 màu 4g', 'https://cf.shopee.vn/file/a4a5e7da8585bd2d681ae3807404770c', 23),
(279, 'DTD1', 5, 139000, 2354, 4.8, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Son Black Rouge Ver5 Son kem lì Air Fit Velvet Ver5 + Black ver6', 'https://cf.shopee.vn/file/d79464a328c2d83e6288ddbe0c3a1f06', 12),
(280, 'DTD1', 5, 125000, 2569, 4.9, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] (Sẵn Ver 1-Ver 7) Son Black Rouge Air Fit Velvet Tint', 'https://cf.shopee.vn/file/72a682aa46522933e19588e884f5a9cd', 12),
(281, 'DTD1', 5, 95000, 2654, 4.8, 'Mã 156FMCGSALE hoàn 8% xu đơn 500K] [HÀNG CHÍNH HÃNG] Son BERNICE 2021.', 'https://cf.shopee.vn/file/846e4fd7191898367a5bca157820cbcb', 5),
(282, 'DTD1', 5, 80000, 2568, 4.9, 'Son Maffick , Son Nội Địa Trung siêu lì màu trắng MẪU MỚI 2021 4.9', 'https://cf.shopee.vn/file/f3a64e2ac1cccf280c9a6cea05fbbd98', 20),
(283, 'DTD1', 5, 125000, 654, 5, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] (Sẵn Ver 1-Ver 7) Son Black Rouge Air Fit Velvet Tint', 'https://cf.shopee.vn/file/72a682aa46522933e19588e884f5a9cd', 25),
(284, 'DTD1', 5, 53000, 154, 4.8, '[ 𝐒𝐚𝐥𝐞 𝟓𝟎% ] Son Black Rouge A12 ⚡️𝑪𝒉𝒖𝒂̂̉𝒏 𝑪𝒉𝒊́𝒏𝒉 𝑯𝒂̃𝒏𝒈 ⚡️ Son Màu Đỏ Nâu Trầm Siêu Hót', 'https://cf.shopee.vn/file/a7a83e7fd3989d1466460991584b6f42', 36),
(285, 'DTD1', 5, 300000, 594, 4.8, 'Bảng Son Carmela Dupe 18 Ô Cao Cấp Với Chất Son Lì', 'https://cf.shopee.vn/file/96cccf656b784c48a3972c6a851b2665', 0),
(286, 'DTD1', 5, 148000, 965, 5, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] SON ROMAND JUICY LASTING TINT RIPE FRUIT 2020 (MÀU 18.19.20.21)', 'https://cf.shopee.vn/file/0d57f12e5cf23a7fbd10835ae0ba17a8', 25),
(287, 'DTD1', 5, 125000, 362, 5, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Son Black Rouge Ver 6 Airfit Velvet Tint Version 6 - [Coco Shop]', 'https://cf.shopee.vn/file/44c928571fcb736de73dac2fb31753d8', 28),
(288, 'DTD1', 5, 95000, 9585, 5, 'Son Kem Lì Hero Orange Thiết Kế Vỏ Trong Suốt MMS', 'https://cf.shopee.vn/file/508e5da323bd8df514e63debec1865c7', 15),
(289, 'DTD2', 5, 299000, 1554, 4.9, '[Mã FMCGMALL giảm 8% Tối đa 40K đơn 250K] Bảng Phấn Mắt Perfect Diary 12 Màu 14g Hiệu Ứng Ánh Kim Mịn Kèm Cọ Trang Điểm', 'https://cf.shopee.vn/file/c3e5f8af3905de7afc49ffe955328939', 12),
(290, 'DTD2', 5, 20000, 265, 4.9, 'Bảng Phấn Mắt 9 Màu Lì Và Ánh Nhũ Kháng Nước Lâu Trôi', 'https://cf.shopee.vn/file/a8413f1d514ae26a9bf5d9970da7264b', 26),
(291, 'DTD2', 5, 65000, 165, 4.8, 'Bảng phấn mắt FOCALLURE 9 màu chống thấm nước lâu trôi', 'https://cf.shopee.vn/file/5cc9daaa7df8d51504ca1eda839b01b0', 35),
(292, 'DTD2', 5, 18000, 598, 5, '(Hàng Mới Về) 1 Bảng Phấn Mắt Bốn Màu Lấp Lánh Chống Thấm Nước', 'https://cf.shopee.vn/file/4a785d2a924be20fb6ffff1cd17ca3bd', 12),
(293, 'DTD2', 5, 56000, 654, 4.9, 'Bảng Phấn Mắt 42 Ô Muge Leen Love Story -Bảng Mắt Màu Kèm Nhũ Sang Trọng -Bảng Mắt Cổ Trang - Màu Mắt Đẹp - HotTrend', 'https://cf.shopee.vn/file/a85341c8e564b06140109cc9b5c11fc2', 26),
(294, 'DTD2', 5, 70000, 265, 4.9, '[Auth Thái] Bảng Phấn Mắt Kèm Má Hồng Tông Đỏ Cam Cháy Có Nhũ Odbo OD1022 2 Tầng', 'https://cf.shopee.vn/file/28455557ef1e291821400f2337d80a58', 3),
(295, 'DTD2', 5, 19000, 165, 4.9, 'Bảng mắt Dilaku Coco 9 ô tone cam đất lấp lánh', 'https://cf.shopee.vn/file/ef88bd1f9d5940a4cc1300baf8fa6b0d', 16),
(296, 'DTD3', 5, 198000, 266, 4.9, '[ 𝑪𝒉𝒖𝒂̂̉𝒏 𝑪𝒉𝒊́𝒏𝒉 𝑯𝒂̃𝒏𝒈 ] Nước Tây Trang Bioderma 500ml ⚡️ Hàng Nội Địa Pháp Có Nút Nhấn', 'https://cf.shopee.vn/file/3ccaae5e13bf16e56129ac7f7c8f09bc', 26),
(297, 'DTD3', 5, 19500, 6768, 4.9, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Bông Tẩy Trang 3 Lớp Cotton Pads 222 Miếng Tẩy Trang Da Mặt', 'https://cf.shopee.vn/file/3fa34b1e71108eca54d9f02ee9c38a17', 5),
(298, 'DTD3', 5, 259000, 265, 4.8, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Nước tẩy trang Bielenda Botanical Clays/ Green Tea làm sạch sâu da', 'https://cf.shopee.vn/file/06a8140b5306e7123a625d2318323b78', 5),
(299, 'DTD3', 5, 299000, 54, 4.9, '[ Chuẩn auth 100%, đầy đủ bill, date mới] Tẩy trang Bioderma Pháp chai 500ml', 'https://cf.shopee.vn/file/a357682e00aa024bbc9ebea28e69cf37', 5);
INSERT INTO `productinfo` (`productID`, `productCode`, `shopID`, `price`, `sold`, `productRating`, `describlePro`, `productImage`, `productDiscount`) VALUES
(300, 'DTD3', 5, 337000, 154, 5, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Tẩy trang Xanh Hồng Pháp 500ml và 850ml', 'https://cf.shopee.vn/file/d13499191d45d26e15d732649f47c261', 15),
(301, 'DTD3', 5, 152000, 15, 4.9, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] TẨY TRANG GARNIER SKIN ACTIVE 400ML MÀU VÀNG Pháp', 'https://cf.shopee.vn/file/9d848dd2066d8058523325aaf3bfd801', 36),
(302, 'DTD3', 5, 370000, 361, 5, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] (CÓ BILL) TẨY TRANG CHACOTT NHẬT 500ML.', 'https://cf.shopee.vn/file/f022844c88e23672f8696e66e56cb26c', 0),
(303, 'DTD3', 5, 79000, 625, 4.8, 'Nước tẩy trang dưỡng trắng Senka All Clear Water Micellar Formula White 230ml', 'https://cf.shopee.vn/file/5c47bf882490f116167a3e684da76e8f', 1),
(304, 'DTD3', 5, 87200, 268, 4.9, 'Nước tẩy trang Seimy - Micellar Cleansing Water làm sạch da chỉ với 1 bước , an toàn lành tính, dùng cho mọi loại da', 'https://cf.shopee.vn/file/ecae0f6c147fd9793e31cbae361d2a5b', 26),
(305, 'DTD4', 5, 97000, 9845, 5, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Sữa Rửa Mặt Simple Gel Kind To Skin Refreshing Facial Wash Gel 150ml', 'https://cf.shopee.vn/file/f4ef95901e9d8ce2957463c025aa0c09', 3),
(306, 'DTD4', 5, 89000, 6254, 5, 'Sữa rửa mặt rau củ thải độc Super vegitoks cleanser Wonder bath Full size - 300 ml chính hãng Hàn Quốc, NPP Shoptido 5.0', 'https://cf.shopee.vn/file/bf2f1c6b79bdb3d012136b0b53597357', 36),
(307, 'DTD4', 5, 78000, 1569, 4.9, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Sữa rửa mặt đầu cọ tạo bọt Seimy - Face Cleanser Foam Collagen', 'https://cf.shopee.vn/file/4378e7227ccdebe29a0e6a72258dc67e', 30),
(308, 'DTD4', 5, 78900, 654, 4.9, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Sữa rửa mặt đầu cọ tạo bọt Seimy - Face Cleanser Foam Collagen', 'https://cf.shopee.vn/file/4378e7227ccdebe29a0e6a72258dc67e', 3),
(309, 'DTD4', 5, 76000, 684, 4.6, '[Mã 156FMCGSALE hoàn 8% xu đơn 500K] Sửa Rửa Mặt Ý Dĩ Hatomugi Naturie 130g Nhật Bản - Cleasing & facial washing 5.0', 'https://cf.shopee.vn/file/257d6d1b7c56d7443c6257ab0b4eab6e', 8),
(310, 'DTD4', 5, 97800, 625, 5, 'Sửa Rửa Mặt Simple Cho Da Dầu Mụn, Da Khô, Da Nhạy Cảm BAO CHECK CHÍNH HÃNG UK- Srm Gel Sữa Rửa Mặt Simple Skincare', 'https://cf.shopee.vn/file/2a1e8fd6f847b7d25e0133d15d0903ff', 30),
(311, 'DTD4', 5, 49000, 985, 4.6, '💞HOT💞 Sửa rửa mặt chiết xuất trà xanh innisfree', 'https://meihao.shopping/wp-content/uploads/2020/03/Innisfree-Green-Tea-Foam-Cleanser-1.jpg', 36),
(312, 'DTD4', 5, 36000, 1548, 4.8, '{Chính Hãng - Ảnh Thật} Sửa Rửa Mặt Trà Xanh 3w Clinic Green Tea 100ml Hàn Quốc', 'https://cf.shopee.vn/file/e8368f7335da0a5cc13ab6dc0e807081', 3),
(313, 'DTD4', 5, 75000, 462, 5, '[Auth] Sửa Rửa Mặt Gạo - Rice Water Bright Cleansing Foam The Face Shop ( Kèm Bill )', 'https://cf.shopee.vn/file/28b976ff0045e33b52e3121faef82c29', 4),
(314, 'DTD4', 5, 152000, 65, 4.8, 'CAO MỤN SÂM ĐỎ & SỬA RỬA MẶT NHÂN SÂM MEEA ORGANIC', 'https://cf.shopee.vn/file/bbd563ae56ad3eda0d71d878ec247b8d', 5),
(315, 'DTD4', 5, 53000, 1589, 5, 'Sửa rửa mặt E100 nghệ thường tuýp 100g', 'https://cf.shopee.vn/file/c7892a9fcb267401ef771e93ccda4a8a', 5),
(316, 'DTD4', 5, 46000, 5145, 4.6, 'Mẫu Mới - Sửa Rửa Mặt Tẩy Tế Bào Chết ST.IVES', 'https://cf.shopee.vn/file/6b2fbb8a6cdd8d3bb0e9cd78ec551754', 4),
(317, 'DTD4', 5, 85000, 514, 5, 'Sữa rửa mặt simple - 150ml Bill 4 date 2023 mới nhất', 'https://cf.shopee.vn/file/34ebba133808f2a76dbf41727f1e22d0', 0),
(318, 'DTD4', 5, 186000, 545, 4.6, 'Gel bí đao rửa mặt Cocoon (Winter melon cleanser) 140ml', 'https://cf.shopee.vn/file/bd7e5c6557f37d7cf0537aad0a0ef268', 6),
(319, 'NCD1', 5, 49000, 2655, 4.9, 'Thùng Rác Nắp Bật Nhấn Nút Thiết Kế Siêu Tiết Kiệm Không Gian Nhựa PP Loại 1', 'https://cf.shopee.vn/file/672893da558678d25b520195be8e2c98', 0),
(320, 'NCD1', 5, 359000, 5126, 4.9, 'Tổng kho thùng rác Inox cao cấp FITIS 12-15 - 22 lít - Chính hãng - Rẻ nhất sàn', 'https://cf.shopee.vn/file/248ac3ca1a59958ff1bc14a234978b4b', 14),
(321, 'NCD1', 5, 399000, 654, 4.5, 'Thùng rác thông minh, cảm ứng, tự động đóng mở nắp Zitada cho phòng khách, phòng ngủ, vệ sinh, văn phòng thể tích 13 lít', 'https://cf.shopee.vn/file/e3c933003ea3c2509441a5367b728526', 3),
(322, 'NCD1', 5, 12000, 15325, 4.9, 'Thùng Rác Đạp Chữ Nhật Hiro 10L-15L-20L-30L Chính Hãng Inochi', 'https://cf.shopee.vn/file/8b85563340145228d0f2ec79928afc21', 0),
(323, 'NCD1', 5, 0, 0, 0, 'Mấy thằng trẻ trâu chơi ys', 'https://cdn.vn.garenanow.com/web/lol-product/home/images/Lan_h3lpm3/09_2020/prestige_yasuo_aape_announcement.jpg', 0),
(324, 'NCD1', 5, 22000, 256, 4.6, 'Thùng rác mini để bàn đa năng thiết kế đáng yêu', 'https://cf.shopee.vn/file/a3910148e8b6cadda73fd28f8219b39c', 0),
(325, 'NCD1', 5, 159000, 596, 4.9, 'Thùng rác đạp chân -Nắp Đậy Chữ Nhật INOCHII thông minh Làm Sọt Rác Văn Phòng,Đựng Rác Gia Đình', 'https://cf.shopee.vn/file/d2cd908c3a9ae0527c5a550a3123bc28', 45),
(326, 'NCD1', 5, 159000, 125, 5, 'Thùng rác treo tủ bếp nắp đậy, thùng rác thông minh đa năng - Parroti Bin BN01', 'https://cf.shopee.vn/file/30ed9ce762aa9f3f59270bed981af32a', 30),
(327, 'NCD1', 5, 154800, 265, 5, 'Thiết bị nhà vệ sinh OENON cao cấp, Hộp giấy, Thùng rác, Bộ cây cọ nhà vệ sinh', 'https://cf.shopee.vn/file/2309cdf19cbf4890d91ccab626f2d089', 0),
(328, 'NCD2', 5, 256000, 65, 4.9, 'bàn làm việc ( full phụ kiện tu vít,lục giác, ốc vít lắp ráp)', 'https://cf.shopee.vn/file/f3f7c060e629d1af10d02e8a5dac3558', 45),
(329, 'NCD2', 5, 359000, 26, 5, '[𝗛𝗢𝗧 𝗦𝗔𝗟𝗘] Bàn làm việc kích thước 100x50cm và bàn học mặt gỗ mdf, chân sắt sơn tĩnh điện chắc chắn', 'https://cf.shopee.vn/file/cdb5e4584f3b7d364f038505032590af', 4),
(330, 'NCD2', 5, 60000, 590, 5, 'Bàn học gấp gọn thông minh có khe cắm ipad', 'https://cf.shopee.vn/file/127b0f6c2b03e14f421a8371cb16e923', 40),
(331, 'NCD2', 5, 159000, 163, 4.7, 'Bàn học và bàn làm việc thông minh đa năng nâng hạ chiều cao và có bánh xe di động thiết kế ngồi giường, ngồi sofa', 'https://cf.shopee.vn/file/020224697d6a79e34a647ea1aeedd722', 0),
(332, 'NCD2', 5, 152000, 154, 5, 'Bàn ngồi bệt kiểu Nhật hình tròn chân gỗ [HÀNG HIỆU] bàn trà, bàn cafe, bàn sofa Màu Trắng', 'https://cf.shopee.vn/file/18f914f5b7d24e0cb7c9122ca0c97ca3', 0),
(333, 'NCD2', 5, 169000, 65, 4.9, 'Bàn làm việc gỗ tre gấp thông minh, đa năng Vango V1, Bàn học gỗ tre tự nhiên cao cấp có kệ để Laptop & Sách', 'https://cf.shopee.vn/file/cd314d98587f18c77e69a6ea26baf91d', 0),
(334, 'NCD2', 5, 499000, 256, 4.6, 'Bàn học,Bàn Làm Việc Thông Minh Chống Gù Lưng Thương Hiệu IGEA - GP86 (KHÔNG GỒM GHẾ)', 'https://cf.shopee.vn/file/1699b7ccfeb9e0a77cf2c9887972b067', 36),
(335, 'NCD2', 5, 495000, 165, 4.6, '☄️🔥 MIỄN SHIP 20K Bàn học sinh ,sinh viên -Vân Gỗ - ĐEN kích thước 40/60 cm', 'https://cf.shopee.vn/file/19aafaa4a80ca42b8c57ed08a2f9dba7', 36),
(336, 'NCD2', 5, 299000, 159, 5, 'Bàn Xếp Đa Năng Gập Gọn Tùy Chỉnh Góc Độ, Để Laptop, Đọc Sách', 'https://cf.shopee.vn/file/d53fdf8fc4b216c97c60ca59209329cd', 36),
(337, 'NCD2', 5, 49999, 1563, 4, 'Bàn làm việc🍀 bànhọc 🍀Bàn máy tính kệ lửng BLK 01. 4.8', 'https://cf.shopee.vn/file/c47d9e0d676445243eac37d4c3c2ef52', 3),
(338, 'NCD2', 5, 129000, 365, 4.8, '𝐁𝐚̀𝐧 𝐭𝐫𝐚̀ 𝐭𝐫𝐨̀𝐧 ,chân gỗ tiện tự nhiên to 3cm chắc chắn cao tựa 30cm, 48cm ( loại pát sắt vặn nên tháo lắp dễ dàng )', 'https://cf.shopee.vn/file/a4b4e87bd7c5ac308d7fb2a05b91a36f', 26),
(339, 'NCD2', 5, 189000, 62, 4.8, 'Bàn gấp treo tường thông minh Diamond House CNC', 'https://cf.shopee.vn/file/2fd43dad99429360da437975e60b672d', 0),
(340, 'NCD3', 5, 2919000, 51, 4.9, 'Ghế Lười Cao Cấp, Ghế Sofa Bành Thư Giãn', 'https://cf.shopee.vn/file/08b879371cd6233e5837e31ebfc93ac1', 0),
(341, 'NCD3', 5, 135999, 156, 4.9, '[HOT]TE0041 Ghế xoay văn phòng - Ghế xoay văn phòng chống mỏi.', 'https://cf.shopee.vn/file/ebb02435eb2e759498084ef55c233478', 12),
(342, 'NCD3', 5, 1455000, 152, 4.9, '(MỚI) Ghế gaming, chơi game Dày dặn, nâng hạ, ngả lưng', 'https://cf.shopee.vn/file/6075c3281ee0320b4e35970acd38d069', 0),
(343, 'NCD3', 5, 95000, 1256, 4.8, 'Ghế xếp inox, ghế xếp cafe, câu cá lưng thấp giá rẻ tại xưởng sản', 'https://cf.shopee.vn/file/cfba5b3167cee89dd39ac7e62ebc3dbc', 5),
(344, 'NCD3', 5, 159000, 145, 5, 'Ghế Làm Việc EAMES Chân Gỗ SỒI Dành Cho Phòng ĂN,Phòng KHÁCH,Cafe,Văn Phòng,Học tập', 'https://cf.shopee.vn/file/29fbbab9e944b188982c553aa56c87b2', 4),
(345, 'NCD3', 5, 270000, 495, 5, 'GHẾ BỆT TỰA LƯNG Tatami 5 CẤP ĐỘ GẬP hàng loại 1', 'https://cf.shopee.vn/file/40eec2dfb5cad80a5eec81946b4aab12', 12),
(346, 'NCD3', 5, 1499999, 152, 4.9, 'Ghế Gaming Zero S Mẫu Mới Nhất', 'https://cf.shopee.vn/file/10f00c44f67092fee00c1d514af059d1', 26),
(347, 'NCD3', 5, 1699000, 1542, 4.8, 'Ghế Gaming Extreme Zero S', 'https://cf.shopee.vn/file/104cf6378728c2da9a39aeb48abaf0c6', 0),
(348, 'NCD3', 5, 1599000, 5, 5, 'Ghế xoay văn phòng tựa đầu, ghế văn phòng, Ghế làm việc cao cấp SALE nhẹ cuối năm', 'https://cf.shopee.vn/file/0fc641d65cbff9d452e5318ca7755805', 3),
(349, 'NCD3', 5, 2599000, 256, 5, 'RE0672 Ghế gaming - Ghế game bọc da cao cấp - Bảo hành 24 tháng', 'https://cf.shopee.vn/file/bdb06e61896730ff7f3a2621eb874ba2', 50),
(350, 'NCD3', 5, 1399000, 154, 4.9, 'GHẾ BỆT TỰA LƯNG DÀI PRAISE X2- ĐEM LẠI CHO BẠN CẢM GIÁC ĐƯỢC ÔM TRỌN-GHẾ LƯỜI TATAMI X2 KÈM GỐI', 'https://cf.shopee.vn/file/ae00fe0e0e23f1f919f2a833b22f52f1', 12),
(351, 'NCD3', 5, 2249000, 359, 4.9, '[Hàng Chính Hãng] Ghế Gaming E-Dra Jupiter M EGC204, Ghế Game E-Dra Jupiter M EGC204 - Bảo hành 24 tháng', 'https://cf.shopee.vn/file/ab948cee6e03ff50bea6461ad750321b', 5),
(352, 'NCD4', 5, 499000, 126, 4.8, '[ 𝐅𝐫𝐞𝐞𝐬𝐡𝐢𝐩 ] Giá Treo Quần Áo Hàn Quốc 2 Thanh, Kệ Giày Dép [CHUẨN LOẠI 1] Giá phơi đồ tiện ích', 'https://cf.shopee.vn/file/622eaa5e5521dd0c9d4e5b868c6c0410', 5),
(353, 'NCD4', 5, 49900, 156, 4.8, 'HPK0486 - TỦ ĐỰNG PHỤ KIỆN 9 NGĂN MINI ĐA NĂNG ĐỰNG KẸP TÓC, MỸ PHẨM LINH TINH...', 'https://cf.shopee.vn/file/e4c2f725aad0784e37fccabb63697ad0', 5),
(354, 'NCD4', 5, 59999, 45, 5, 'Túi nhỏ đựng máy đồ linh tinh nhỏ', 'https://cf.shopee.vn/file/fa4928e62ed2dd0b79600cea48dff09b', 0),
(355, 'NCD4', 5, 139000, 165, 5, 'Mô hình one piece wcf Stampede vs linh tinh', 'https://cf.shopee.vn/file/5ab7e6215481ba8c16628482eb0107fe', 5),
(356, 'NCD4', 5, 179999, 158, 4.8, 'Thùng đạn Nhật bãi (đựng đồ nghề linh tinh).', 'https://cf.shopee.vn/file/405acbc03b68fc120e66fb92cfef86b0', 0),
(357, 'NCD4', 5, 139999, 265, 4.8, 'Hộp nhựa đựng đồ linh tinh 37x22x21 cm (4 tầng 1 trệt 3 lầu có thang xếp) cốp nhựa thùng nhựa đa năng làm nail đồ nghề', 'https://cf.shopee.vn/file/74e4066a848ba0ba14bfaf2e9ab3fc34', 50),
(358, 'NCD4', 5, 259999, 2, 4.8, 'TỪ 22-25K.TỦ HỘP NHỎ ĐỰNG VẬT DỤNG LINH TINH', 'https://cf.shopee.vn/file/a2ef1657261e33e7ed8c550e65e0119a', 0),
(359, 'NCD4', 5, 159999, 158, 5, '<<< Hàng mới về - Sale sập sàn >>>Kệ 3Tầng Ngăn có ngăn kéo - Đựng Mỹ Phẩm Đồ Trang Điểm Trang Sức Phụ kiện linh tinh', 'https://cf.shopee.vn/file/595601a00439ffcd5f3560b82e16887f', 5),
(360, 'NCD4', 5, 269999, 451, 4.8, '♛◎Đặc biệt ưu đãi 4 hộp mô hình Gundam không lặp lại, có lính linh tinh, chỉ máy nhân vật chính, quà tặng đồ chơ', 'https://cf.shopee.vn/file/e8bb0bea47ed78603cd94b5474f4bc07', 10),
(361, 'NCD4', 5, 649999, 125, 4.8, 'Thanh Quang Xanh Men Chậu Hoa Cổ Cổ Sứ Đồ Trang Trí Cổ Linh Tinh', 'https://cf.shopee.vn/file/b9837f4e2b6c4fa5c9f3381dd200a7f7', 25),
(362, 'NCD4', 5, 454999, 259, 4.8, 'Mẫu chuồng pet có ngăn đựng thực phẩm, đồ vật linh tinh cho pet', 'https://cf.shopee.vn/file/be86fbb0259467c8d97b53e4c52fb669', 49),
(363, 'THE1', 5, 249000, 152, 4.9, '[Giày Nam + Tặng Chai Tẩy, Tất] + ⚡FULL BOX + ViDeo thật⚡ Giày Thể Thao Nam - Phong Cách Cực Ngầu Thời Trang Trẻ Trung', 'https://cf.shopee.vn/file/18e9cf4e27aec77ae155ec8754f37bcc', 15),
(364, 'THE1', 5, 154000, 154, 4.9, 'Giày thể thao nam Sneaker TBE đế êm, Vải thoáng khí dễ vận động, Mẫu mới 2021 - LEGEN SNEAKERS', 'https://cf.shopee.vn/file/62e49670e81baaa8072e064a7bad4c42', 0),
(365, 'THE1', 5, 66000, 125, 4.9, 'GIÀY NỮ, GIÀY THỂ THAO NỮ CỔ THUN HOTTREND GR 25', 'https://cf.shopee.vn/file/e16001cd414fee4131a0662649e36e44', 5),
(366, 'THE1', 5, 85000, 1548, 4.9, '(Video thật) Giày thể thao nữ dáng cơ bản 3 màu siêu trend chữ ký Jinai', 'https://cf.shopee.vn/file/1d53fff385e269747afdc667517c1a54', 15),
(367, 'THE1', 5, 265000, 492, 4.9, '[LOẠI 1] Giày thể thao nữ đế bằng bánh mì basic độn đế 4cm vải canvas bata mới hot phong cách retro ulzzang đẹp cá tính', 'https://cf.shopee.vn/file/0e5719468d6fcde3235256387784288c', 15),
(368, 'THE1', 5, 47000, 256, 4.9, '(Có 3 Màu) Giày thể thao nữ WEII 5G vải thoáng khí đế đan mới về', 'https://cf.shopee.vn/file/32a3031957660e162232d57e58c93956', 15),
(369, 'THE1', 5, 95000, 265, 5, '(3 MÀU) Giày thể thao nữ đế gồ chữ ký thấp cổ dáng học sinh sinh viên đều phù hợp mã C-2', 'https://cf.shopee.vn/file/79c826f607150b5b93072e3536b4d037', 0),
(370, 'THE1', 5, 119999, 2658, 4.56, 'HÀNG MỚI VỀ_Giày Thể Thao Đế Cao tem s15/ tem chữ Da đẹp Nữ Trắng', 'https://cf.shopee.vn/file/a711ed518905a477467a4781cad7579a', 15),
(371, 'THE1', 5, 125000, 1598, 5, 'GIÀY thể thao nữ hoa anh đào mẫu mới 2020 kiểu dáng mới lạ hottrend', 'https://cf.shopee.vn/file/cc5d63834cd8ebac70a6a8d11c98981e', 26),
(372, 'THE1', 5, 116000, 1523, 4.9, 'Giày Thể Thao Nữ Ulzzang Hàn Quốc viền phản quang hot nhất mã Yz', 'https://cf.shopee.vn/file/03975e817a75bfe3319c790661889029', 26),
(373, 'THE1', 5, 89000, 265, 4.8, '[BÁN CHẠY] Giày nam tăng chiều cao 5cm Phản Quang WATAHHH cực chất - giày thể thao nam', 'https://cf.shopee.vn/file/38ed27335f3d3c7b6a8a012d9b10cd75', 33),
(374, 'THE1', 6, 259000, 5, 5, 'Giày Sneaker Nam TKTMS19 Giày Thể Thao Nam Tăng Chiều Cao Đến 6cm Cá Tính Chính Hãng TKT STORE Size (39-43) 4.8', 'https://cf.shopee.vn/file/4e8f0dd6561b4edfac408c66a234ff46', 25),
(375, 'THE1', 6, 149000, 265, 5, '(3 MÀU) Giày thể thao nữ độn đế răng cưa viền phản quang hót hít cá tính', 'https://cf.shopee.vn/file/57b6ae78e9dccf7ceb4ebcd62f31f1fb', 23),
(376, 'THE1', 6, 269000, 265, 4.9, 'Giày Nam đế cao su độn Tăng 5cm chiều cao Giày Thể Thao Nam Sneaker Nam Phong cách, siêu phẩm mới 2021 mã SP01', 'https://cf.shopee.vn/file/9b2c533c82da1a7cf9071f53a1b66f85', 75),
(377, 'THE2', 6, 159000, 51, 4.9, '(CHÍNH HÃNG) Bóng đá Động Lực Cơ bắp UCV 3.05 số 5, số 4 (Tiêu chuẩn thi đấu)', 'https://cf.shopee.vn/file/cc29ad7f992f3a34533b55fcecc42033', 12),
(378, 'THE2', 6, 49999, 125, 4.6, 'Bóng Đá Chính Hãng Động Lực Galaxy UHV 2.05 Size Số 5 Tiêu Chuẩn Fifa Phù Hợp Sân Cỏ Nhân Tạo Và Sân Cỏ Tự Nhiên', 'https://cf.shopee.vn/file/12175842ca6514b082884ac777a3308d', 0),
(379, 'THE2', 6, 129000, 62, 5, 'Quả Bóng Đá Spectro UHV 2.07 Size 5 Thi Đấu V League 2019 Chính Hãng Động Lực', 'https://cf.shopee.vn/file/1bd51087372a4f7d04aa3bdaf44115e8', 5),
(380, 'THE2', 6, 39000, 899, 4.6, 'Quả bóng đá động lực UCV 3.127 số 5', 'https://cf.shopee.vn/file/93956ed5d70b4f8a99ca0cb0d378984e', 0),
(381, 'THE2', 6, 230000, 3633, 4.8, 'Bóng Đá Size 4 5 Krasava Confederations Cup Da PU Cao Cấp (Bóng Đúc Loại 1)', 'https://cf.shopee.vn/file/9d4afe107859124e8cd7942d381461fe', 0),
(382, 'THE2', 6, 129888, 25, 4.9, '[(Chính hãng) Quả bóng đá Động Lực ⚡️ 𝐅𝐑𝐄𝐄 𝐒𝐇𝐈𝐏 ⚡️ tiêu chuẩn thi đấu da PU UHV 2.05 Galaxy size 5-bảo hành miễn phí', 'https://cf.shopee.vn/file/430feb72825d2fe2b19de473d4e0b5f2', 0),
(383, 'THE2', 6, 100000, 265, 4.6, '[Sale hè 5.5] Bóng đá Ebet size 5 Động lực wolrd cup Việt Nam Vô Địch đỏ', 'https://cf.shopee.vn/file/4dfd96cb74611d81ea72010ea867fb75', 15),
(384, 'THE2', 6, 249000, 156, 4.8, 'Quả Bóng Đá Cúp C1 Châu Âu Champions League 2021 Size Số 4 5 Tiêu Chuẩn Thi Đấu (Bóng đúc cao cấp)', 'https://cf.shopee.vn/file/9110533fc64789ac0a099fe8daf84950', 46),
(385, 'THE2', 6, 59000, 256, 4.9, 'Bóng Đá Động Lực Chính Hãng EBET số 3 (Chọn màu theo ý)', 'https://cf.shopee.vn/file/e51c774b27253227904c3a557efe0905', 36),
(386, 'THE2', 6, 9900, 265, 4.8, 'Bóng Đá Hình Quả Dưa Hấu 22Cm (Shop Một Giá 9.9k)', 'https://cf.shopee.vn/file/bbeed6eb00e97d92ad7302c10e039a19', 20),
(387, 'THE2', 6, 219000, 265, 4.8, 'Quả Bóng Đá Mẫu Champions League Mùa Giải 2020 (Bóng đúc cao cấp loại 1)', 'https://cf.shopee.vn/file/83d014bec26c27f7c60d5593ce25ea0f', 26),
(388, 'THE2', 6, 249999, 156, 4.9, 'Bóng Đá Champions League Size Số 4 5 Cúp C1 Châu Âu Qua Các Mùa Giải Phù Hợp Sân Cỏ Nhân Tạo Và Sân Cỏ Tự Nhiên', 'https://cf.shopee.vn/file/8a79fb0e831df7e83659611a2fe2ccf9', 265),
(389, 'THE2', 6, 189000, 125, 4.9, 'Bóng Đá Ngoại Hạng Anh Fremier League Size Số 4 5 Phù Hợp Sân Cỏ Nhân Tạo Và Sân Cỏ Tự Nhiên (Bóng Đúc Da PU Cao Cấp)', 'https://cf.shopee.vn/file/60d19bfa3a364485586dbfc8480acf45', 12),
(390, 'THE3', 6, 89000, 1585, 4.9, '[Sale Sốc] ÁO BÓNG ĐÁ CLB THUN LẠNH CAO CẤP MU BARCA REAL JUVE CHELSEA ARSENAL MAN CITY,...', 'https://cf.shopee.vn/file/6a5af72d24e86de5c57cb55a57ce90aa', 0),
(391, 'THE3', 6, 49000, 1695, 4.8, 'Quần áo bóng đá thun thái cao cấp l1 - Manchester united 2020 sân nhà ( Áo Đỏ Quần Đen )', 'https://cf.shopee.vn/file/4fe71c64a2e0a1573c06081dc4fb2ff1', 25),
(392, 'THE3', 6, 59000, 156, 4.9, 'Bộ Quần Áo Bóng Đá Đội Tuyển Argentina 21-22- Áo Đá Bóng Đẹp', 'https://cf.shopee.vn/file/5ff3c58f9499c42f4d992e78c9bf4273', 20),
(393, 'THE3', 6, 89000, 599, 4.5, 'Bộ quần áo bóng đá MANCHESTER UNITED ⚡️HOT⚡️ áo đá banh thun thái cao cấp', 'https://cf.shopee.vn/file/395068ba9b1eb5280775a96c4125ca31', 5),
(394, 'THE3', 6, 99000, 451, 4.9, 'Quần Áo Đá Bóng 🏆 FREESHIP 🎯 Giảm 5k Đơn từ 159k Khi Nhập [NCVV5KK] Áo Đấu Liverpool Xanh Than Độc Lạ', 'https://cf.shopee.vn/file/50e00dcc2e14010cff9862fb0c5aee33', 5),
(395, 'THE3', 6, 129000, 126, 5, 'Áo Asenal 2022, bộ quần áo bóng đá clb Asenal sân nhà,sân khách mùa giải 2022 màu vàng chanh vải thái cực chất', 'https://cf.shopee.vn/file/6b952a25c3d65362933a7f9d7ed1a390', 20),
(396, 'THE3', 6, 89000, 2651, 4.8, 'Áo Đá Bóng 🏆 TẶNG QUÀ 🎯 Quần Áo Bóng Đá Ma_nu (MCTU) 2020 Cực Chất Vải Gai Thái Màu Đen PP bởi Be Happy Sport', 'https://cf.shopee.vn/file/3eb9fe97b2d83b7c4335f80aeef67661', 2),
(397, 'THE3', 6, 125000, 256, 4.8, 'Áo đấu CLB JUVENTUS CAO CẤP/ Freeship/ Bộ quần áo bóng đá ⚽️ CLB Juventus cao cấp mới mùa 2019/2020', 'https://cf.shopee.vn/file/0177d31eae204fbad20de410a336ac09', 15),
(398, 'THE3', 6, 84500, 156, 4.6, 'Bộ áo quần bóng đá trẻ em cực dễ thương - nhiều mẫu đa dạng', 'https://cf.shopee.vn/file/5234096d29877197f209417fc7359d13', 5),
(399, 'THE3', 6, 97000, 56, 4.7, 'Bộ Áo Đá Bóng Liverpool (Liver) Hồng Cực Chất Mới Nhất - Quần Áo Thể Thao Nam PP Bởi Be Happy Sport', 'https://cf.shopee.vn/file/96d3eb30a54b1efd085d697903fa41bb', 5),
(400, 'THE3', 6, 149000, 154, 4.8, 'ÁO ĐẤU TUYỂN BRAZIL/ BỘ QUẦN ÁO BÓNG ĐÁ ĐT BRAZIL CAO CẤP MỚI NHẤT 2020', 'https://cf.shopee.vn/file/558f3ab0fb92947f26f3c8147bf21df8', 25),
(401, 'THE4', 6, 129000, 256, 5, 'Kính bơi người lớn cho nam nữ thi đấu chuyên nghiệp chính hãng POPO mắt kiếng bơi nhỏ gọn chống tia UV', 'https://cf.shopee.vn/file/c6deb2912c920e0ae5d5c8b43da72e6c', 5),
(402, 'THE4', 6, 149000, 234, 4.8, 'Kính bơi người lớn mắt kính bơi tráng gương POPO1940 kèm mũ bơi và bịt tai kẹp mũi mắt kiếng bơi nam nữ, cho bé trẻ em', 'https://cf.shopee.vn/file/fdeff65827b4383a9a2945d7930bbd14', 56),
(403, 'THE4', 6, 99000, 369, 4.7, 'Set kính bơi chống mờ + nút bịt tai + kẹp mũi + mũ bơi', 'https://cf.shopee.vn/file/2035a5e582e56e700ccfd43e70e3d807', 23),
(404, 'THE4', 6, 139000, 26, 4.7, 'Kính bơi người lớn cho nam nữ thi đấu chuyên nghiệp chính hãng POPO mắt kiếng bơi nhỏ gọn chống tia UV', 'https://cf.shopee.vn/file/c6deb2912c920e0ae5d5c8b43da72e6c', 18),
(405, 'THE4', 6, 119000, 269, 4.7, 'Kính bơi thể thao chống tia UV & sương mù', 'https://cf.shopee.vn/file/55b84c85136cab1f59292f06b9a62b6e', 0),
(406, 'THE4', 6, 79000, 268, 4.8, 'Kính bơi chống nước,chống mờ,chống tia UV AL-5005', 'https://cf.shopee.vn/file/6cf7813cb03fd92f2605cec6214b2253', 19),
(407, 'THE4', 6, 129000, 268, 4.9, '[LOẠI CAO CẤP] Kính bơi trẻ em chính hãng INTEX 55915', 'https://cf.shopee.vn/file/97eab9196e70b3447c09b133f110b2b4', 25),
(408, 'THE4', 6, 73000, 268, 4.8, 'Kính bơi TRÁNG GƯƠNG chống TIA UV (Tặng 2 nút bịt tai cao cấp)', 'https://cf.shopee.vn/file/52f6b325062066ee3f21e91e6b6c07ac', 5),
(409, 'THE4', 6, 179000, 412, 4.9, 'Kính Bơi 361Degree Chống Thấm Nước Và Mồ Hôi Cao Cấp Thời Trang Nam Nữ', 'https://cf.shopee.vn/file/dc543085f349f6f00a9b49dbd8645085', 26),
(410, 'THE4', 6, 650000, 58, 5, 'Kính bơi chuyên nghiệp nhập khẩu từ Đức Aquafeel dòng Glide Mirrored siêu nhẹ (35g) dành cho người lớn và trẻ em', 'https://cf.shopee.vn/file/6e745fac3aafb4d3aab352078f9f80af', 5),
(411, 'TNA1', 6, 159000, 159, 4.5, 'Áo thun nam Dickies, áo cotton nam nữ tay lỡ full hộp, Dricco', 'https://cf.shopee.vn/file/ab491a10c5b8eab27e9e5e74b71d0dc6', 3),
(412, 'TNA1', 6, 59000, 615, 4.2, 'Áo thun nam ngắn tay cổ tròn chất tici phối hình nhỏ ở ngực CZ52', 'https://cf.shopee.vn/file/22887c40c631881eb074783cc879aca0', 0),
(413, 'TNA1', 6, 129000, 126, 5, 'Áo thun nam DOUBLE\'D vải cotton dệt mềm mịn TSTRANG00', 'https://cf.shopee.vn/file/5b41495082602023a1b136c2b1d3090b', 36),
(414, 'TNA1', 6, 134000, 146, 5, '[Mã FAMALLT5 giảm 15% đơn 150K] Áo Thun Nam Polo Có Cổ Tay Ngắn Cao Cấp BATINO 6 Màu Hàn Quốc', 'https://cf.shopee.vn/file/45c0b67f86f93969760d12fe4141c590', 15),
(415, 'TNA1', 6, 51999, 65, 4.8, 'Áo thun nam nữ unisex tay lỡ LF 84, áo phông tay lỡ unisex form rộng oversize streetwear', 'https://cf.shopee.vn/file/11091e0a02c6a4f9855fb40bfb8471f1', 26),
(416, 'TNA1', 6, 149000, 1522, 4.9, '[Áo thun unisex tay lỡ form rộng] Áo phông tay lỡ [Nam,Nữ] phom rộng, Thun Nam Nữ Alexander_Ap', 'https://cf.shopee.vn/file/7552539ee8da4a6a8e21644859f46578', 26),
(417, 'TNA1', 6, 129000, 285, 5, 'Áo thun tay lỡ SWE form rộng Unisex nam nữ phong cách Ulzzang - AT06', 'https://cf.shopee.vn/file/e65dac76742f9e573612463ee0669f2e', 5),
(418, 'TNA1', 6, 89000, 365, 5, 'Áo Thun Nam Tay Ngắn AD3XTG Nhiều Màu Cao Cấp Phong Cách Trẻ Trung Thời Trang hàng gỗc giá xưởng may (44-73KG)', 'https://cf.shopee.vn/file/b03fc2f3a64681cae8fb524925b6c919', 5),
(419, 'TNA1', 6, 50000, 251, 4.6, 'Áo thun nam nữ unisex tay lỡ AD69 Tom&Jerry, áo phông tay lỡ unisex form rộng oversize streetwear', 'https://cf.shopee.vn/file/ecdb93c7573c2fc65e0e13f99968d1f1', 50),
(420, 'TNA1', 6, 99000, 316, 4.9, 'Áo thun nam 💖FREESHIP💖 Áo tay lỡ nam mã TT5 form rộng thể thao cộc tay đẹp mùa hè ngắn tay tập gym vải cotton', 'https://cf.shopee.vn/file/c9d1c026b231f22f6aac73ebbec26bc6', 25),
(421, 'TNA1', 6, 169000, 154, 5, 'Áo Thun Nam , AP23HA2 Trắng Áo Ngắn Tay Không Cổ , Thun Nam ,Thun Không Cổ , vải Cotton co giãn,dày dặn không kén dáng.', 'https://cf.shopee.vn/file/22a50471f30dd270f32787ea25e1e31f', 25),
(422, 'TNA1', 6, 79000, 259, 5, 'Áo thun nhuộm màu cỡ lớn thời trang mùa hè dễ phối đồ cho nam size S-XXXL', 'https://cf.shopee.vn/file/63944536ae6c8929142b12f095b372aa', 18),
(423, 'TNA1', 6, 89000, 489, 5, 'Áo thun nam mã TT5 💖FREESHIP💖 Áo tay lỡ nam cotton chất đẹp thoáng mát mặc mùa hè tập gym thời trang trẻ trung', 'https://cf.shopee.vn/file/b604e310991e6347b029cbba5f49fb5b', 5),
(424, 'TNA1', 6, 68000, 651, 4.8, 'Áo Thun Nam Thể Thao Cổ Tròn Chiếc Lá Word Thun Cotton Lạnh Cao Cấp Nhiều Màu Cao Cấp Phong Cách Trẻ Trung(44 - 70KG)', 'https://cf.shopee.vn/file/60dbd13afe01fedb58adfe753f2d903f', 26),
(425, 'TNA1', 6, 59000, 174, 4.9, 'Áo phông nam tay ngắn cổ tròn chất cotton in 3D siêu anh hùng', 'https://cf.shopee.vn/file/eedf0d451dd795b7fcdc18ffda047886', 25),
(426, 'TNA2', 6, 89000, 599, 4.9, 'Áo PoLo Nam Trơn Có Cổ.Áo Phông Nam Cổ Bẻ Tay Ngắn.Vải Cá Sấu cotton Cao Cấp', 'https://cf.shopee.vn/file/9111d8e0e118f53a91d0518ba554bf5f', 25),
(427, 'TNA2', 6, 249000, 365, 4.8, 'Áo Polo nam cổ bẻ Rap-lăng DLO vải cá sấu Cotton xuất xịn,chuẩn form,sang trọng-lịch lãm màu Trắng P46 - POLOMAN', 'https://cf.shopee.vn/file/007fc8874dd9590b8f459c7974b6202e', 0),
(428, 'TNA2', 6, 265999, 265, 4.5, 'Áo Polo Nam Cao Cấp, Áo Phông Nam Cổ Bẻ Vải Cotton Cá Sấu Mềm Mịn Thoáng Mát - Azila', 'https://cf.shopee.vn/file/a9dcca565d51aaf402f577ef8977c326', 63),
(429, 'TNA2', 6, 98000, 265, 5, 'Áo Polo Nam, Áo Phông Cổ Bẻ In Hình 3D Game Phong Cách Trẻ Trung Chất Liệu Thun Cá Sấu Thoáng Mát - AC103', 'https://cf.shopee.vn/file/8237955c0059d65e28065ae36d731206', 36),
(430, 'TNA2', 6, 79000, 1569, 5, 'Áo polo nam NGẮN TAY cao cấp - Chất liệu lụa , không nhăn, thoáng mát, thấm hút mồ hôi', 'https://cf.shopee.vn/file/519ec61c23138a8dae835caf293c29cd', 0),
(431, 'TNA2', 6, 69000, 2651, 4.5, 'ÁO THUN NAM NGẮN TAY CỔ BẺ MẪU MỚI NHIỀU MÀU', 'https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a', 0),
(432, 'TNA2', 6, 60000, 745, 4.9, 'áo polo nam nữ dáng siêu rộng - áo thun có cổ form to bigsize - trẻ trung - phong cách bụi', 'https://cf.shopee.vn/file/923967db962af3dce9ea0acd8cfb6064', 30),
(433, 'TNA2', 6, 89000, 221, 5, 'Áo Polo nam đẹp thoáng mát thấm hút mồ hôi', 'https://cf.shopee.vn/file/76020d0bdfe5ae2305a14108a86eb858', 18),
(434, 'TNA2', 6, 99000, 251, 4.8, 'Áo Polo nam vải cá sấu Cotton cổ bẻ phối viền, chuẩn form, sang trọng, lịch lãm GRAMEN - MÀU GHI', 'https://cf.shopee.vn/file/2d64153cd0bb1f028218ac5d8fa60e14', 32),
(435, 'TNA2', 6, 229000, 956, 5, 'Áo Polo nam cổ bẻ họa tiết FEAER 100% chất Cotton thoáng mát, không nhăn Nikolas GYPSY |new arrival 2021|', 'https://cf.shopee.vn/file/de7a4c47fd44597f4d36e4a0ad4e4086', 45),
(436, 'TNA3', 6, 89000, 251, 4.9, 'Ví Da Nam Mini Chất Da Lộn Sang Nhỏ Gọn Bỏ Túi Nhiều Ngăn Dáng Đẹp', 'https://cf.shopee.vn/file/9a302c5d4da6bf29f0a26e865c781e86', 25),
(437, 'TNA3', 6, 259000, 651, 5, '[DA THẬT] Ví da nam, ví dáng đứng nhỏ gọn, da Safiano cao cấp Cosmos - thời trang OLUX.', 'https://cf.shopee.vn/file/495a450c08bf97512a7110c8012d11e3', 25),
(438, 'TNA3', 6, 29000, 2654, 4.5, 'Ví nam chất đẹp thời trang cao cấp Bóp da PU nhiều ngăn phong cách trẻ sành điệu gu nam tính nhập khẩu chính hãng', 'https://cf.shopee.vn/file/310bdc4af5b365a61562120e90a54182', 36),
(439, 'TNA3', 6, 66000, 256, 4.8, 'Ví Da Nam Mini Chất Da Lộn Sang Nhỏ Gọn Bỏ Túi Nhiều Ngăn Dáng Đẹp', 'https://cf.shopee.vn/file/9a302c5d4da6bf29f0a26e865c781e86', 25),
(440, 'TNA3', 6, 85000, 365, 4.6, 'Ví nam chất đẹp hàng hiệu thời trang cao cấp Bóp da PU nhiều ngăn đẳng cấp nam tính nhập khẩu chính hãng', 'https://cf.shopee.vn/file/1cb3e56c51727ea57343db7526255a7b', 5),
(441, 'TNA3', 6, 295000, 251, 4.9, '(da thật 100%)ví nam kiểu đứng mini cao cấp, ví nam đứng nhỏ gọn phong cách thời trang hiện đại TV029', 'https://cf.shopee.vn/file/530d51562adb0ec1b7fe216d5c6672f2', 30),
(442, 'TNA3', 6, 256000, 265, 5, 'Bóp da nam,ví da nam cao cấp MENBENSE dáng ngang, ngăn riêng để giấy tờ quan trọng - MB03', 'https://cf.shopee.vn/file/cf23a1ac3a40bf2c809b4759e5fc051f', 85),
(443, 'TNA3', 6, 159000, 251, 5, '[ Da Bò Thật ] Ví Nam Da Bò Dáng Đứng Ngang - Bóp Nam Có Khe Sim Siêu Bền Đẹp - BH 12 tháng', 'https://cf.shopee.vn/file/14cd5bef91dda0d93ecbead3f7b0c546', 56),
(444, 'TNA3', 6, 99000, 995, 5, 'Ví da nam dáng ngang da Pu chống nước, ví 3 lá có ngăn khóa và ngăn thẻ', 'https://cf.shopee.vn/file/4bd30b8c86bf8dfc8323966c74747860', 56),
(445, 'TNA3', 6, 89000, 265, 4.6, 'Ví da nam cầm tay ngăn kéo khóa, ví ngắn dáng ngang chất da cao cấp chống xước, chống nổ', 'https://cf.shopee.vn/file/6c713d66aacda4f21b40bba34ef0d973', 25),
(446, 'TNA4', 6, 42000, 528, 4.9, 'Mũ lưỡi trai nam nữ đa dạng họa tiết thêu chữ ,Nón kết phong cách Ulzzang form unisex nam nữ', 'https://cf.shopee.vn/file/f8958b9c6c21085f999bbc031281fa80', 45),
(447, 'TNA4', 6, 99000, 512, 4.8, '[Siêu Phẩm Chính Hãng] Mũ lưỡi trai JKOS chính hãng, nón kết thêu logo gold độc đáo (bright future)', 'https://cf.shopee.vn/file/99a7f279672380f72daac3d0d557e06f', 25),
(448, 'TNA4', 6, 59000, 568, 4.1, 'Mũ lưỡi trai ❤️ Nón kết thêu chữ Memorie phong cách Ulzzang form unisex nam nữ N01', 'https://cf.shopee.vn/file/b2612c1a8242069aced2f2f26b592f38', 25),
(449, 'TNA4', 6, 49000, 2651, 5, 'Mũ Lưỡi Trai Màu Trơn Thêu Chữ Phong Cách Hàn Quốc', 'https://cf.shopee.vn/file/11e91fc1e47f7aa3117e468415606862', 30),
(450, 'TNA4', 6, 42000, 365, 4.8, 'Mũ lưỡi trai nam nữ đa dạng họa tiết thêu chữ ,Nón kết phong cách Ulzzang form unisex nam nữ', 'https://cf.shopee.vn/file/f8958b9c6c21085f999bbc031281fa80', 25),
(451, 'TNA4', 6, 78000, 654, 4.7, 'BÁN SỈ MŨ LƯỠI TRAI THÊU CHỮ CÁ TÍNH CHO NAM NỮ', 'https://cf.shopee.vn/file/d6c34476477d58a7e899ae507700dbe2', 25),
(452, 'TNA4', 6, 49000, 512, 4.9, 'Nón lưỡi trai trơn, mũ lưỡi trai bóng chày chuẩn phom, lưới chống khuẩn cho da đầu - MU114 LOPDOP OFFICIAL', 'https://cf.shopee.vn/file/3725faa762f9c787929dda7600b1ab7d', 52),
(453, 'TNA4', 6, 45000, 95, 4.9, 'Mũ lưỡi trai Memorie,Nón kết nhiều màu phong cách Ulzzang form unisex nam nữ', 'https://cf.shopee.vn/file/b2364f9f7bd315d73a0aed739cd0f920', 10),
(454, 'TNA4', 6, 49000, 95, 4.6, 'Mũ Lưỡi Trai Thêu Chữ Phong Cách Hàn Quốc 2020 Cho Nữ', 'https://cf.shopee.vn/file/cc30c0f43488c8478259148ba0b35698', 25),
(455, 'TNA4', 6, 49000, 152, 4.8, '[Mã SKAMA06 giảm 8% tối đa 50K đơn 250K] Mũ lưỡi trai nhung gân Over Come', 'https://cf.shopee.vn/file/3c8a590b0dfd5022f814a069a8bf6f11', 25),
(456, 'TNA4', 6, 9000, 152, 5, 'Mũ lưỡi trai trơn đủ màu 🌸🌸🌸', 'https://cf.shopee.vn/file/10b6518138ad3fdc9b87522f1660cbb4', 25),
(457, 'TNA4', 6, 89000, 954, 4.7, 'Mũ Lưỡi Trai GOLF Nón Kết Thể Thao Nam Cao Cấp AB-30030', 'https://cf.shopee.vn/file/0e5c09eb511ff01e6761b23de8bcb216', 5),
(458, 'TNA4', 6, 15400, 29, 4.8, 'Mũ lưỡi trai ❤️ Nón kết thêu chữ Everyday phong cách Ulzzang form unisex nam nữ N10', 'https://cf.shopee.vn/file/b48589f72931bb10aa76091a47005c0c', 85),
(459, 'TNA4', 6, 49000, 258, 4.9, 'Mũ Lưỡi Trai Thời Trang Hàn Quốc 2020', 'https://cf.shopee.vn/file/f73cde40dc0460a5f1e7a8ce1d1b78a9', 53),
(460, 'TNA5', 6, 145000, 512, 4.9, 'Thắt Lưng Nam Cao Cấp Nhiều Mẫu Để Chọn Cam kết 1 đổi 1 - Thắt lưng da', 'https://cf.shopee.vn/file/5bd01cc09310d745a3c2725b559c3777', 15),
(461, 'TNA5', 6, 89000, 251, 4.9, 'Thắt lưng nam da thật Anh Tho Leather - P110(T)', 'https://cf.shopee.vn/file/9e2c213569c02cf372c74e96e6a7434a', 5),
(462, 'TNA5', 6, 252000, 495, 4.9, 'Thắt lưng nam dây nịt nam chất liệu da bò thật khóa tự động hàng hiệu cao cấp NT279 - Nutushop', 'https://cf.shopee.vn/file/d3defcd4bfd230e1a4a28522c606f7cd', 0),
(463, 'TNA5', 6, 145900, 256, 4.9, 'Thắt Lưng Nam Cao Cấp Nhiều Mẫu Để Chọn Cam kết 1 đổi 1 - Thắt lưng da', 'https://cf.shopee.vn/file/5bd01cc09310d745a3c2725b559c3777', 95),
(464, 'TNA5', 6, 99000, 985, 4.8, 'Thắt lưng nam DETU khóa tự động đầu đen cao cấp', 'https://cf.shopee.vn/file/791721dbb61e1288aa7f5c9d57e84fa0', 1),
(465, 'TNA5', 6, 123000, 256, 4.8, 'Thắt Lưng Nam Miz Da Thật Màu Đen Sang Trọng Đơn Giản Sang Trọng - Dây Nịt Lưng Phong Cách Hàn Quốc Da Bò - Kuu Clothes', 'https://cf.shopee.vn/file/70ffb089715476066c6a0b861dcc66e2', 58),
(466, 'TNA5', 6, 56800, 854, 5, 'Thắt lưng CHAIN xích nhiều lỗ tròn - Dây nịt lỗ tròn 1 hàng kèm Chain xích 3 kiểu', 'https://cf.shopee.vn/file/2b7e6af465de05d4ba4374d82a00c6a0', 15),
(467, 'TNA5', 6, 289000, 85, 4.2, 'Thắt lưng nam Manticano da bò nguyên miếng cam kết da thật 100%, dây nịt da nam Cao Cấp', 'https://cf.shopee.vn/file/1fa044ea4680d97235a71a983bb489d3', 0),
(468, 'TNA5', 6, 240000, 632, 4.9, '[Thắt Lưng Da Bò Thật] Với Mặt Hợp Kim Cao Cấp Giảm Tới 40% Tiết Kiêm 140K', 'https://cf.shopee.vn/file/3635ab874f1de472606e176e083d9649', 5),
(469, 'TNU1', 6, 45900, 512, 4.9, 'Áo croptop MADELA nữ có cổ tay ngắn, Croptop nữ kiểu HOT TREND - ACTN01', 'https://cf.shopee.vn/file/d33feb7f406810e811472ce5fb03cbfb', 85),
(470, 'TNU1', 6, 49000, 955, 5, 'Áo Thun Lửng Tay Ngắn Thời Trang Dành Cho Nữ áo Croptop Size S-2Xl', 'https://cf.shopee.vn/file/2797b80a432c2ab62a84cac86171c348', 85),
(471, 'TNU1', 6, 48900, 8955, 4.6, 'Áo croptop nữ kiểu tay dài và tay ngắn MADELA, croptop nữ phong cách Hàn Quốc', 'https://cf.shopee.vn/file/7e6f309ced165db6da602ed508615a1e', 51),
(472, 'TNU1', 6, 24000, 9566, 5, 'Áo croptop cổ tim cài cúc tay ngắn form rộng xinh xắn', 'https://cf.shopee.vn/file/f27d681263f6a2283588582e9a6f91e3', 0),
(473, 'TNU1', 6, 98000, 956, 5, 'Áo croptop dệt kim tay ngắn thiết kế cổ chữ V quyến rũ', 'https://cf.shopee.vn/file/38981d7be2df814eddd7acd95b6f8c56', 2),
(474, 'TNU1', 6, 69000, 859, 4.6, 'Áo Croptop Ulazzang Xẻ Cổ Chất Gân Đũa Xịn Tuyết\'s House', 'https://cf.shopee.vn/file/13d4cc643a030898d45e131fd256acdb', 65),
(475, 'TNU1', 6, 50000, 6522, 4.9, 'Áo croptop, áo kiểu croptop from rộng tay lỡ chất cotton mát mịn in hình bướm xinh', 'https://cf.shopee.vn/file/1a7dc82080d25291c4be801b3bc805dc', 5),
(476, 'TNU1', 6, 29000, 6152, 4.8, 'Áo Croptop Nữ Kiểu Hai Dây Sexy Bandana Hở Lưng Họa Tiết AT59', 'https://cf.shopee.vn/file/aebbec31c262e22639dc6ecc75179b16', 5),
(477, 'TNU1', 6, 34000, 5136, 4.9, 'Áo croptop nữ D.G Butterfly, áo crt ôm tay ngắn chất thun bozip co giãn nhẹ - VIETCEN', 'https://cf.shopee.vn/file/e65a9cf0dc077cd38f6e0a05ec859cac', 5),
(478, 'TNU1', 6, 43000, 854, 4.6, 'Áo croptop Tay Phồng ngắn cổ vuông nhún ngực A2 - ENTYTY', 'https://cf.shopee.vn/file/0f00b6fe7f38792d93ec1c79b2a126d5', 0),
(479, 'TNU1', 6, 34000, 621, 4.9, 'FS 0Đ_Áo croptop thun tăm cúc cài cổ V viền bánh bèo HOT', 'https://cf.shopee.vn/file/8cafe7e851b3dce09b35c13fca962c02', 8),
(480, 'TNU1', 6, 117000, 855, 4.9, '[Mã SKAMA06 giảm 8% tối đa 50K đơn 250K] BASIC CROPTOP 🔥 Áo basic kiểu', 'https://cf.shopee.vn/file/f51547d14e3180c0af3b5ddb320f66e7', 0),
(481, 'TNU1', 6, 45000, 4344, 5, 'Áo Croptop cột nơ ngực cuốn biên buộc nơ trước - Z7Nz32', 'https://cf.shopee.vn/file/cc3259ae6152efa6bf07015acb9106c4', 0),
(482, 'TNU1', 6, 56000, 651, 4.8, 'Áo croptop 2 dây nữ ren hoa - Áo 2 dây lụa mảnh siêu hot hàng cao cấp sexy M24', 'https://cf.shopee.vn/file/f6521b8448e380d600cbc8770cda03e4', 0),
(483, 'TNU1', 6, 63000, 612, 5, 'Áo Croptop Nữ Siêu Xinh, Chất Thun Co Giãn, Hàng Cao cấp Loại 1, Thoáng Mát', 'https://cf.shopee.vn/file/9b55b455befd944a90ec312188754841', 52),
(484, 'TNU1', 6, 45900, 2651, 4.6, 'Áo Croptop nữ tay ngắn Molento áo polo croptop có cổ cotton mềm mịn co giãn 4 chiều nhẹ nhàng thoải mái - X16', 'https://cf.shopee.vn/file/4964860cf3108f663528dc66a28ac019', 52),
(485, 'TNU2', 7, 54000, 591, 5, 'Áo 2 dây nữ dáng ôm 92WEAR sexy Croptop ADW1154', 'https://cf.shopee.vn/file/1ccbfd4dbbd036213971c2abe5ac93d5', 5),
(486, 'TNU2', 7, 26000, 94, 5, 'Áo hai dây vải Thun Cotton co giãn tốt, chất đẹp dáng ôm, dây có chốt điều chỉnh Xuu Design - AD02', 'https://cf.shopee.vn/file/cfaaff3863e5400c23f148acaea551c3', 5),
(487, 'TNU2', 7, 45000, 654, 4.9, 'Áo 2 dây gợi cảm, thích hợp đi biển, dạo phố - Dánh cho nàng chuộng phong cách sexy, cá tính', 'https://cf.shopee.vn/file/8947235fa0a938735a8e268006904c95', 50),
(488, 'TNU2', 7, 25900, 5145, 4.9, 'Áo 2 dây nữ lụa dáng croptop , áo bra nữ đúc su hot hit hai màu đen và trắng thể thao tập gym, yoga M05', 'https://cf.shopee.vn/file/adc78db606ef274e6242207b6d0fbf38', 50),
(489, 'TNU2', 7, 39000, 514, 4.9, 'Áo hai dây tăm, áo 2 dây thun croptop ôm sợi bún tím/trắng/đen CAMA STORE', 'https://cf.shopee.vn/file/18b6694657a9b24472087084977764ed', 51),
(490, 'TNU2', 7, 51000, 5145, 4.7, 'Áo 2 dây bún thun gân', 'https://cf.shopee.vn/file/02a83c0d8eb0466168620d14292d41f3', 85),
(491, 'TNU2', 7, 135000, 514, 4.6, 'Set style Hàn Quốc S.047, Set áo babydoll hai dây thắt nơ kẻ xanh và quần short trắng cực xinh', 'https://cf.shopee.vn/file/86d56b0c8e40aaa629341cc4d0ca3772', 25),
(492, 'TNU2', 7, 49000, 512, 4.6, 'Áo hai dây chun ngực form xoè', 'https://cf.shopee.vn/file/263cbaa344f16130530bfd3c9a131bde', 50),
(493, 'TNU2', 7, 13300, 514, 4.9, 'Áo Hai Dây Croptop Màu Trắng Màu Đen Áo Dây Bún Chất Thun Cotton Mịn Mát Freesize 53kg Quay Đầu', 'https://cf.shopee.vn/file/526376dbf08c72dd18a412a41991f473', 51),
(494, 'TNU2', 7, 89000, 512, 4.9, 'Áo lụa 2 dây nữ cổ đổ thiết kế cao cấp lụa satin ngoc trai, Áo 2 dây lụa nữ cổ trễ thiết kế hàng đẹp Daudoo QATE A11', 'https://cf.shopee.vn/file/436dc5640008fb300656ddd033cf2a4f', 5),
(495, 'TNU2', 7, 99000, 154, 4.6, 'Áo hai dây nữ cơ bản KAMONG chất liệu áo 2 dây nữ lụa nhung A130', 'https://cf.shopee.vn/file/fe26b3fca6a9a2bf427a20f589b7f08c', 5),
(496, 'TNU2', 7, 30000, 265, 4.9, '[Mã TAMUG15K giảm 15k đơn 3 áo] Áo hai dây nữ ôm body 🔥 áo hai dây trơn, áo dây nữ nhiều màu', 'https://cf.shopee.vn/file/b86cf93472d59217c72f09ac7c0934da', 51),
(497, 'TNU3', 7, 72000, 651, 5, 'Chân váy chữ a Goness lưng cao hoạ tiết caro nhiều màu thời trang cho nữ', 'https://cf.shopee.vn/file/8f693202323f6b0aeacca3ecafaf54e2', 32),
(498, 'TNU3', 7, 85000, 154, 4.9, 'Chân váy ngắn xếp ly xòe sang chảnh kèm túi hot 2020 CV299', 'https://cf.shopee.vn/file/0dcc1e3171aeb0b2a5c432964b688c86', 15),
(499, 'TNU3', 7, 134000, 516, 4.9, 'Chân váy dài uzzlang gấp ly một bên JDW0657 - 92wear', 'https://cf.shopee.vn/file/8cca6a807c24445335bc6dee45a48593', 0),
(500, 'TNU3', 7, 158000, 521, 4.8, '[Mã SKAMA06 giảm 8% tối đa 50K đơn 250K] Chân váy bút chì thắt nơ', 'https://cf.shopee.vn/file/759d1d95899385eba4e7234d66d76898', 15),
(501, 'TNU3', 7, 198000, 262, 4.6, '[Mã FashionT10 Giảm 10k đơn 50k] Chân váy hoạ tiết caro Hot Trend', 'https://cf.shopee.vn/file/0b31c0874b65ae762425eabfcf41c7ec', 52),
(502, 'TNU3', 7, 126000, 451, 5, 'Chân váy ngắn , chân váy Xếp ly 2 tầng cạp khóa quảng châu [ Kèm video sp + Ảnh ]', 'https://cf.shopee.vn/file/e51914222265325c0a341de8506dfb27', 45),
(503, 'TNU3', 7, 154000, 952, 4.9, 'Chân váy ngắn công sở chữ a Madela, Váy ngắn chữ A công sở đen trắng kẻ caro nhiều màu', 'https://cf.shopee.vn/file/18086817d1f8962bbe8ca627f28c364e', 45),
(504, 'TNU3', 7, 149000, 152, 4.9, 'Chân váy ngắn 2 tầng xếp ly ulzzang, chân váy ngắn 2 lớp vải voan có hai màu đen, trắng', 'https://cf.shopee.vn/file/5ac92c28b5cd01d6c24b3887199fae91', 52),
(505, 'TNU3', 7, 139000, 624, 5, 'chân váy dài ulzzang phong cách Hàn Quốc, Váy dài chữ A công sở dài xẻ tà - CVAD03', 'https://cf.shopee.vn/file/bef4ca4ce600a288f91f31eb49e41789', 0),
(506, 'TNU3', 7, 139000, 615, 5, 'Váy babydoll xếp ly ở chân váy , đầm công sở nữ trắng kẻ caro siêu xinh mặc dự tiệc, đi chơi, đi biển đều đẹp M04', 'https://cf.shopee.vn/file/7345750fd3349e7e0871de0f89990e9a', 5),
(507, 'TNU3', 7, 149000, 152, 4.6, '[Mã SKAMA06 giảm 8% tối đa 50K đơn 250K] CHÂN VÁY VẠT LỆCH XẾP LY EO DÁNG NGẮN', 'https://cf.shopee.vn/file/16830d0c2e1d7847c047237975d2655a', 6),
(508, 'TNU3', 7, 169000, 154, 4.9, 'Chân váy xoè xếp ly tennis skirt - chân váy xếp ly ngắn -Chân váy xếp li ngắn lưng cao , váy xếp ly đẹp 2021', 'https://cf.shopee.vn/file/9e43772f1dc9f61c2c393c4f1a966a1e', 67),
(509, 'TNU3', 7, 150000, 1548, 4.9, '[Có video thật + đánh giá] Set Áo Thun Chân Váy Caro 2XD Shop Dễ Thương Cá Tính Bao Chất Khi Nhận Hàng', 'https://cf.shopee.vn/file/8b336c5da5678fb27644755322b1506d', 5),
(510, 'TNU3', 7, 360000, 154, 4.9, 'SET LUCY BABYDOLL + CHÂN VÁY. SET VÁY JAMOO (ảnh thật/sẵn)', 'https://cf.shopee.vn/file/a4655c7f423ced5b2fcfb3295114cb29', 50),
(511, 'TNU4', 7, 396000, 15, 4.6, '[ HÀNG CÓ SẴN] Váy sau sinh có khóa kéo cho con ti che mỡ bụng hàng thiết kế - Váy đỏ & đen suông ngắn tay cổ sen kèm nơ', 'https://cf.shopee.vn/file/a94b99fe7dd35af0fd9d8a0aeb3301ad', 2),
(512, 'TNU4', 7, 699000, 265, 5, 'Đầm Xòe Dự Tiệc Xinh Xắn Dành Cho Nữ', 'https://cf.shopee.vn/file/aa51ae5a2cf3fbb4288f9593ecf6f59b', 21),
(513, 'TNU4', 7, 265000, 154, 4.9, 'Đầm suông dáng dài cổ vuông lệch tầng đan dây eo xinh xắn/ Váy xòe nữ trễ vai mặc 2 kiểu phong cách ulzzang_ranstore', 'https://cf.shopee.vn/file/b498f81a16fc4bd643d2ecf0ee6d5328', 5),
(514, 'TNU4', 7, 265000, 154, 4.8, 'Đầm tiểu thư xoè cột nơ cao cấp, Đầm Váy Xoè Đi Chơi Du Lịch', 'https://cf.shopee.vn/file/07c68902becf0fe319a047fc3c6f3729', 62),
(515, 'TNU4', 7, 159000, 651, 5, 'Váy xoè cổ vuông tay cộc❤️Đầm dáng xoè cổ vuông ngắn tay❤️{free ship}', 'https://cf.shopee.vn/file/410b91536ea372439dae106655dd641b', 52),
(516, 'TNU4', 7, 349000, 512, 5, 'Váy Babydoll Tay Phồng Cổ Vuông Cup Ngực, Đầm Dáng Xoè Tay Phồng Siêu Xinh Có Ảnh Thật Kèm Video', 'https://cf.shopee.vn/file/037d030cc74fad657b2d35d28e413ec7', 51),
(517, 'TNU4', 7, 39000, 1542, 4.9, '🌈ĐẦM BODY ÔM CỔ SƠMI POLO VÁY XOÈ THÂN NHÚN ĐI CHƠI ĐI BIỂN ĐI DẠO🌈', 'https://cf.shopee.vn/file/bd81259f79d95c66b5f19d9acf1f497f', 8),
(518, 'TNU4', 7, 154000, 154, 4.8, 'Váy chữ a dáng xòe đuôi cá form chuẩn ôm dáng khóa kéo', 'https://cf.shopee.vn/file/456db6ed04fce0c55ee8d61115312368', 62),
(519, 'TNU4', 7, 36100, 1542, 4.5, 'Đầm Trễ Vai Màu Trắng, Váy Xòe Hở Vai Màu Trắng Tinh Khôi, Váy Sống Ảo (Ảnh Thật Video Shop Tự Chụp)', 'https://cf.shopee.vn/file/b4fcd8786db7d803e640684a61809a96', 51),
(520, 'TNU4', 7, 69000, 265, 4.6, '  Chia sẻ:  Đã thích (25) Váy xoè hở ngực nơ cổ KA63', 'https://cf.shopee.vn/file/40860dece51edb5fb3212aff0022306c', 20),
(521, 'TNU4', 7, 255000, 614, 4.6, 'Đầm Váy Bông Xòe Phối Tay Lỡ Cực Xinh Họa Tiết Vai Beo Nơ Đen Thời Trang - Winchois', 'https://cf.shopee.vn/file/ebf72633dac9790199a6c7986ddc8858', 5),
(522, 'TNU4', 7, 298000, 154, 4.8, 'Đầm dự tiệc dáng xòe tay phồng cổ V nút gỗ - Váy nữ dự tiệc Gumi trẻ trung xinh đẹp GM2068', 'https://cf.shopee.vn/file/3819f0e9ed8af5b6def5c80ebe856adf', 51),
(523, 'TNU4', 7, 459000, 12, 5, 'Váy 2 Dây Hoạ Tiết Sơn Dầu Phong Cách Retro -FREESHIP-Hàng Quảng Châu Cao Cấp-V22-Váy xoè đi chơi đi tiệc sang trọng', 'https://cf.shopee.vn/file/ed63e5e4678556c70a8e461818d9b5b2', 5),
(524, 'TNU4', 7, 89000, 429, 4.6, 'Váy xòe tầng cổ tròn nhiều màu fom rộng', 'https://cf.shopee.vn/file/b06581706df4f97a4a62f18c47d4b3fd', 0),
(525, 'TNU4', 7, 369000, 685, 4.9, 'Váy xòe lụa in hoa cột nơ eo ⚡𝑺𝑰𝑬̂𝑼 𝑺𝑨𝑳𝑬⚡ chất lụa kiểu dáng trẻ trung thanh lịch dễ phối đồ', 'https://cf.shopee.vn/file/21efabc253c5f83f50c048c86dbf8251', 5),
(526, 'TNU4', 7, 119000, 154, 4.9, 'Set áo croptop sơ mi bèo trắng dài tay mix váy 2 dây xòe thời trang nữ diện thu', 'https://cf.shopee.vn/file/2b57b5f57630acb7e45f428cf564ff61', 53),
(527, 'TNU5', 7, 119000, 265, 5, 'Áo sơ mi nữ trắng thời trang tay bồng Rosara SP84', 'https://cf.shopee.vn/file/d1757aa881481f8c3d1b0c6861373b59', 23),
(528, 'TNU5', 7, 59000, 265, 4.8, 'áo sơ mi nam nữ đủ màu trắng, đen, xanh dương, đỏ, xám ghi đơn giãn mẫu đang hot nhất cubis shop', 'https://cf.shopee.vn/file/46c7254a5ab2830f9982c53fbead73dd', 15),
(529, 'TNU5', 7, 48600, 298, 4.7, 'ÁO SƠ MI THÊU LOGO CỘC TAY KẺ - Áo sơ mi cổ đức thêu logo', 'https://cf.shopee.vn/file/88e8fd42d84aee46c5bf002d8c909bf2', 52),
(530, 'TNU5', 7, 59000, 94, 5, 'Áo Sơ Mi Trắng Nữ Basic Tay Lỡ Form Rộng Style Học Sinh , Sinh Viên', 'https://cf.shopee.vn/file/a55f365427b84ed0651cb156b812f5f3', 5),
(531, 'TNU5', 7, 159000, 154, 4.9, 'Áo sơ mi tay ngắn cổ vest nữ kiểu form rộng đẹp hàn quốc màu trắng đen kem xanh hồng cộc tay vintage ulzzang SM33 kozoda', 'https://cf.shopee.vn/file/b67e895e2f287c877b743c6d77217bb1', 6),
(532, 'TNU5', 7, 59000, 478, 4.8, 'Áo sơ mi <Freeship> Áo sơ mi hoạ tiết loang màu be/ trắng/đen freesize form rộng kate', 'https://cf.shopee.vn/file/dfa875b01709116fae22b9fb2a6b8971', 51),
(533, 'TNU5', 7, 69000, 495, 5, 'Áo sơ mi nữ cổ vest phong cách Retro - Áo sơ mi nữ cổ vest trơn quốc dân nhiều màu Vintage', 'https://cf.shopee.vn/file/d85546b4a17c9e35538b88a6a45810f4', 42),
(534, 'TNU5', 7, 133000, 785, 4.6, 'Áo Sơ Mi Chiffon Tay Dài Form Rộng Họa Tiết Sọc Vằn Hợp Thời Trang Nữ', 'https://cf.shopee.vn/file/606c414db606562d052d047b807da005', 6),
(535, 'TNU5', 7, 42600, 365, 4.9, 'Áo sơ mi nữ cổ trụ viền bèo PC cực xinh💋', 'https://cf.shopee.vn/file/bc51f93a967b635b7340af32f55360bf', 52),
(536, 'TNU5', 7, 89000, 956, 4.7, '[Mã FATHANG5 giảm 10K đơn 50K] Áo sơ mi tay bồng cộc tay thân xếp tầng 2 lớp chất tơ nến - áo sơ mi công sở nữ', 'https://cf.shopee.vn/file/789ebeac0d329e7ea7980e10474932de', 5),
(537, 'TNU5', 7, 89000, 625, 4.9, '[Ảnh thật/Video] Áo sơ mi tay dài họa tiết da báo Áo somi báo 2 màu hợp thời trang cho phái nữ', 'https://cf.shopee.vn/file/cf10dac5da18319c292a1e2325fb11e7', 51),
(538, 'TNU5', 7, 199000, 785, 4.5, 'Áo Sơ Mi Nữ Form Rộng 💖 𝘍𝘳𝘦𝘦𝘴𝘩𝘪𝘱 💖 Áo Sơ Mi Khoác Nhung Tăm Ulzzang Hàn Quốc Dáng Rộng ( Ảnh Thật / Có Sẵn )', 'https://cf.shopee.vn/file/4a700c515ba2aeaf834db1ad3ff48b85', 25),
(539, 'TOY1', 7, 229000, 152, 5, '[FREESHIP] Rubik Gan 356 RS Stickerless 3x3x3 - [SHOP YÊU THÍCH]', 'https://cf.shopee.vn/file/536108136a78f64c8eb54bfdb2630875', 23),
(540, 'TOY1', 7, 86000, 256, 5, 'Bộ Sưu Tập Khối Rubik Carbon MoYu Meilong 2x2 3x3 4x4 5x5 Tam Giác 12 Mặt Skewb Square-1 SQ-1 Megaminx Pyranminx Cube', 'https://cf.shopee.vn/file/bd037b83d576d1a107061bc4b66e0fdd', 51),
(541, 'TOY1', 7, 89000, 365, 4.6, 'Rubik 3x3 RS3M 2020 MF3RS3 M Rubic Nam Châm 3 Tầng Stickerless MF3RS V3 M (Hãng Mod)', 'https://cf.shopee.vn/file/c64fb5836cd47276734476737b573021', 15),
(542, 'TOY1', 7, 35000, 95, 5, 'Rubik 3x3 Qiyi Sail W Rubic 3 Tầng Khối Lập Phương Ma Thuật Xoay Mượt , Lõi Cứng Cáp, Bền', 'https://cf.shopee.vn/file/4e1d8e7c7c9bd880f3b19a28346640fc', 6),
(543, 'TOY1', 7, 62500, 95, 5, 'Bộ Sưu Tập Rubic Khối Lập Phương Rubik Cube 2x2 3x3 4x4 5x5', 'https://cf.shopee.vn/file/83f760a206425ffb5b59538bd9a3957f', 15),
(544, 'TOY1', 7, 99000, 256, 4.8, 'Rubik 2x2, 3x3, 4x4, 5x5, Megaminx, Pyraminx, Skewb, Mirror, Square-1, Mastermorphix - Trọn Bộ Rubik Magic Cube Cao Cấp', 'https://cf.shopee.vn/file/062751a9e78a25a581daeedb1def0944', 25),
(545, 'TOY1', 7, 98000, 695, 5, 'Khối Đồ Chơi Rubik 3x3 HDY Qiyi 2x2 4x4 5x5 Dành Cho Trẻ Em', 'https://cf.shopee.vn/file/129db5cf3547750cf21576dada38b132', 6),
(546, 'TOY1', 7, 76500, 95, 5, 'Rubik meilong/qiyi 2x2 3x3 4x4 5x5 6x6 7x7 2x3 Skewb Dino Pyraminx Megaminx cao cấp nhiều biến thể xoay trơn không giắt', 'https://cf.shopee.vn/file/7179417730c7def22279bba928acea2e', 25),
(547, 'TOY1', 7, 85000, 52, 5, 'Rubik Zcube 3x3x3 - Rubik Dạ Quang Phát Sáng Trong Bóng Tối', 'https://cf.shopee.vn/file/c35ac787988b41a8633bf051259e1a3b', 5),
(548, 'TOY2', 7, 459000, 512, 4.9, 'Đồ Chơi Lắp Ráp Anime Mô Hình Gundam Jijia 1/100 Mg Red Astray Kai', 'https://cf.shopee.vn/file/1cb4b16901a3c868860721c8d38ada6b', 5),
(549, 'TOY2', 7, 149000, 258, 4.9, 'Mô hình gundam hg build strike gundam full package', 'https://cf.shopee.vn/file/aed1d0aac345a63d5f7673f5e0c35d32', 5),
(550, 'TOY2', 7, 390000, 251, 4.8, 'Mô hình Gundam MG Astray Red Frame Kai Jijia 1/100 Topgundam', 'https://cf.shopee.vn/file/4311f3e009789579083a3836980a7d82', 5),
(551, 'TOY2', 7, 123000, 516, 4.8, '[Giá sốc] Mô hình Gundam HG 1/144 OO, Exia, Kyrios giá tốt nhiều mẫu tùy chọn', 'https://cf.shopee.vn/file/c854d89dc5f937db71997d1083bf55d8', 5),
(552, 'TOY2', 7, 395000, 152, 4.9, 'Daban 8820 Gundam Mg Wing Zero Custom Ew HIRES HIRM 1/100 Mô Hình Đồ Chơi Lắp Ráp Anime', 'https://cf.shopee.vn/file/1edb6c2ca8e7178784ae98f0b780f9ca', 51),
(553, 'TOY2', 7, 230000, 154, 4.8, 'MÔ HÌNH GUNDAM BANDAI ENTRY GRADE 05 1/144 GUNDAM RX-78-2', 'https://cf.shopee.vn/file/b694698457ed85f846bb94c12d741cd7', 8),
(554, 'TOY2', 7, 349000, 521, 4.8, 'Bandai Mô Hình Gundam HG Barbatos Lupus Rex Hgibo Iron Blooded Orphans Đồ Chơi Lắp Ráp Anime Nhật Tỷ lệ 1/144 5.0', 'https://cf.shopee.vn/file/a2dd1eb7f5e53ea2ba433492c0193db0', 23),
(555, 'TOY2', 7, 185000, 512, 4.8, '[NEW RELEASE] Mô hình Gundam Entry Grade Gundam RX-78-2', 'https://cf.shopee.vn/file/fc7425860b34abdbee29ab54a5a72c8f', 5),
(556, 'TOY3', 8, 89000, 74, 4.8, 'Bộ cờ vua nam châm Cao cấp U3-3810 Cực đẹp', 'https://cf.shopee.vn/file/94d458fe30be318a82f23fe45001f634', 52),
(557, 'TOY3', 8, 419000, 546, 4.8, 'Bộ Cờ Tướng Làm Từ Gỗ Trắc, Hương Cao Cấp Và Quà Tặng Bàn Vải Da Cao Cấp', 'https://cf.shopee.vn/file/a0cf42a05092aa66b4de5d1080e20f19', 50),
(558, 'TOY3', 8, 98000, 845, 4.8, 'Bộ Cờ Đua Ngựa LIÊN HIỆP THÀNH - Cờ Cá Ngựa Bằng Nhựa Cao Cấp - Kích Thước 45 x 45 cm', 'https://cf.shopee.vn/file/0cf03922785fc0a0fcb204f214c42d9f', 5),
(559, 'TOY3', 8, 26500, 1524, 4.5, 'Bộ cờ vua mini hít nam châm bỏ túi', 'https://cf.shopee.vn/file/d1764db35ddaa0454db1b69e961740f5', 8),
(560, 'TOY3', 8, 85000, 215, 4.9, 'Bộ Đồ Chơi Cờ Lô Tô Bingo Lotto Việt Nhựa Cao Cấp', 'https://cf.shopee.vn/file/24a8c12fc12d6d56c033cb4a681f3eaa', 51),
(561, 'TOY3', 8, 91000, 514, 4.9, 'Cờ Cá Ngựa Nam Châm Cỡ Lớn Hàng Xịn 42X42cm - Đỗ Gia', 'https://cf.shopee.vn/file/842ad3ab8167b0e74b4fa9f1376bf7c1', 5),
(562, 'TOY3', 8, 66000, 512, 4.8, 'Bộ Đồ Chơi Bàn Cờ Tỷ Phú Bằng Nhựa Gấp', 'https://cf.shopee.vn/file/15526bc67df1c1061651ddeab69e9e9b', 0),
(563, 'TOY3', 8, 49000, 251, 4.8, 'Bài tú lơ khơ nhựa Classic bền đẹp chống nước', 'https://cf.shopee.vn/file/ac43024335774e3c58a4a31166dadea5', 5),
(564, 'TOY3', 8, 44900, 562, 4.9, 'Bộ bài Drinking Game Ừng Ực I 52 lá thách thức', 'https://cf.shopee.vn/file/712a64f74cfed635fc671683f8982e20', 0),
(565, 'TOY3', 8, 60000, 512, 4.6, 'bài 52 lá Xiaomi Mijia', 'https://cf.shopee.vn/file/3f1bc064dd35ce7835d49db5d1222d45', 5),
(566, 'TOY3', 8, 39000, 528, 4.8, 'Bài Tây Nhựa ROYAL Cao Cấp - Bộ Bài 52 Lá, Đẹp, Made In Đài Loan - Đồ Chơi Trẻ Em BFUN', 'https://cf.shopee.vn/file/4196261350d65c1b89e3298ab6a3981d', 5),
(567, 'TOY3', 8, 52000, 45, 5, 'Bộ Bài Tây Naruto Akatsuki 52-54 Lá Dễ Thương manga anime', 'https://cf.shopee.vn/file/3f5636ed4abcde46994ef59a6906b085', 50),
(568, 'TOY4', 8, 44000, 51, 4.8, 'Board game-Đi tìm kho báu Mini 4 Foxi-trò chơi phát triển khả năng nhớ-logic-suy luận-phán đoán', 'https://cf.shopee.vn/file/24296b38faa87d79ddf1ad37a0924fe2', 5),
(569, 'TOY4', 8, 30000, 52, 4.1, 'bộ board game ma sói mini/ lầy / kem chảy', 'https://cf.shopee.vn/file/745cef29561329b86c22c569cfe606cb', 0),
(570, 'TOY4', 8, 155000, 51, 4.8, '[COMBO 2 IN 1] Trò chơi Ma sói bản đầy đủ 78 lá + Board game Mèo Nổ Việt hóa cơ bản, vui nhộn, giải trí cùng bạn bè', 'https://cf.shopee.vn/file/b03b0ee1df85737b70f0a4cd4caac7b7', 5),
(571, 'TOY4', 8, 62500, 51, 4.9, '  Chia sẻ:  Đã thích (26) MA SÓI INFINITY (Giao diện cực đẹp) - 89 LÁ BÀI KHÁNG NƯỚC - Phiên bản đặc biệt chỉ có tại Board game infinity', 'https://cf.shopee.vn/file/06ce4fc7d4697f0945b58cbc68252f3f', 0),
(572, 'TOY4', 8, 359000, 651, 4.8, 'Boardgame Clue - Suy luận phá án - Phiên bản kinh điển', 'https://cf.shopee.vn/file/fa08e65ad7344187cd3dc1d3458ed33f', 6),
(573, 'TOY4', 8, 2300, 154, 4.8, '[BÀI IN YUGIOH] IN THEO YÊU CẦU', 'https://cf.shopee.vn/file/f4bb8421a30663375e635dd237b481d4', 0),
(574, 'TOY4', 8, 359855, 65, 4.9, 'Boardgame Clue - Suy luận phá án - Phiên bản kinh điển', 'https://cf.shopee.vn/file/fa08e65ad7344187cd3dc1d3458ed33f', 5),
(575, 'TOY4', 8, 44000, 51, 4.9, 'Board game-Đi tìm kho báu mini 3 Foxi-nâng cao khả năng xử lí tình huống-tranh luận-logic', 'https://cf.shopee.vn/file/cc54aad6c267897557d322c6762d2ce4', 50);
INSERT INTO `productinfo` (`productID`, `productCode`, `shopID`, `price`, `sold`, `productRating`, `describlePro`, `productImage`, `productDiscount`) VALUES
(576, 'TOY4', 8, 100000, 25, 4.8, 'Trò chơi Da Vinci Code - Board Games', 'https://cf.shopee.vn/file/884a014856c4446dbfd8aa69593d9948', 0),
(577, 'TOY4', 8, 149000, 28, 4.8, 'Bộ Trò Chơi Board Game Joking Hazard Vui Nhộn', 'https://cf.shopee.vn/file/41d9767e8ad87425efc2623591b1ba39', 5),
(578, 'TOY4', 8, 120000, 51, 4.9, 'READY!!!Bộ Bài Ma Sói One night ultimate Werewolf alien English board game Werewolfboardgame', 'https://cf.shopee.vn/file/c48a86c53a15aa52ebd2ad254318eb97', 5),
(579, 'TOY4', 8, 38000, 525, 4.1, 'Board Game Lớp Học Mật Ngữ - Cuộc đua sao chổi (MỚI 2020)', 'https://cf.shopee.vn/file/2e2eb05574b775bf13e9e8e1058c154d', 5),
(580, 'TOY4', 8, 145000, 51, 4.9, 'Avalon Card Game Lancelot | Bộ thẻ bài trò chơi Truyền Thuyết Vua Arthur | Board game nhập vai ẩn danh suy luận The Resistance: Avalon', 'https://cf.shopee.vn/file/ccd96fe885912dc12e458fd2db3f5d0c', 5),
(582, 'BOK2', 2, 110000, 0, 5, 'Đánh thức con người phi thường trong bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/3b/cd/4b/3b1dac084a5a25611935d664923c6306.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `productTypeCodeName` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `productTypeName` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`productTypeCodeName`, `productTypeName`) VALUES
('BHO', 'Bách hoá online'),
('BOK', 'Sách'),
('CLO', 'Quần áo'),
('DDT', 'Đồ Điện Tử'),
('DGD', 'Đồ gia dụng'),
('DTD', 'Đồ Trang Điểm Cho Nữ'),
('NCD', 'Nhà cửa và đời sống'),
('THE', 'Thể Thao'),
('TNA', 'Thời Trang Nam'),
('TNU', 'Thời Trang Nữ'),
('TOY', 'Đồ Chơi');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shopId` int(11) NOT NULL,
  `cusID` int(11) DEFAULT NULL,
  `shopName` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `shopRating` float DEFAULT 5,
  `shopAddress` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shopId`, `cusID`, `shopName`, `shopRating`, `shopAddress`) VALUES
(1, 35, 'yinnnnnnn', 5, 'Đà Nẵng'),
(2, 30, 'gin', 5, 'Huế'),
(4, 36, 'iamxuongxuong', 5, 'Quảng Bình'),
(5, 37, 'babababa', 5, 'Đà Nẵng'),
(6, 38, 'nucuoiのnole', 5, 'Quảng Bình'),
(7, 39, 'darkfriendly', 5, 'Đà Nẵng'),
(8, 40, 'quangtri_te', 5, 'Quảng Trị');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cusID`);

--
-- Indexes for table `orderdeal`
--
ALTER TABLE `orderdeal`
  ADD PRIMARY KEY (`orderDealId`),
  ADD KEY `orderDealIdBuy` (`orderDealIdBuy`);

--
-- Indexes for table `ordersingle`
--
ALTER TABLE `ordersingle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `productOrderDealId` (`productOrderDealId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`proCode`),
  ADD KEY `proTypeName` (`proTypeName`);

--
-- Indexes for table `productinfo`
--
ALTER TABLE `productinfo`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `productCode` (`productCode`),
  ADD KEY `shopID` (`shopID`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`productTypeCodeName`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopId`),
  ADD KEY `cusID` (`cusID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ordersingle`
--
ALTER TABLE `ordersingle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `productinfo`
--
ALTER TABLE `productinfo`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shopId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdeal`
--
ALTER TABLE `orderdeal`
  ADD CONSTRAINT `orderdeal_ibfk_1` FOREIGN KEY (`orderDealIdBuy`) REFERENCES `customer` (`cusID`);

--
-- Constraints for table `ordersingle`
--
ALTER TABLE `ordersingle`
  ADD CONSTRAINT `ordersingle_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `productinfo` (`productID`),
  ADD CONSTRAINT `ordersingle_ibfk_2` FOREIGN KEY (`productOrderDealId`) REFERENCES `orderdeal` (`orderDealId`),
  ADD CONSTRAINT `ordersingle_ibfk_3` FOREIGN KEY (`productOrderDealId`) REFERENCES `orderdeal` (`orderDealId`),
  ADD CONSTRAINT `ordersingle_ibfk_4` FOREIGN KEY (`productOrderDealId`) REFERENCES `orderdeal` (`orderDealId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`proTypeName`) REFERENCES `producttype` (`productTypeCodeName`);

--
-- Constraints for table `productinfo`
--
ALTER TABLE `productinfo`
  ADD CONSTRAINT `productinfo_ibfk_1` FOREIGN KEY (`productCode`) REFERENCES `product` (`proCode`),
  ADD CONSTRAINT `productinfo_ibfk_2` FOREIGN KEY (`shopID`) REFERENCES `shop` (`shopId`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`cusID`) REFERENCES `customer` (`cusID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
