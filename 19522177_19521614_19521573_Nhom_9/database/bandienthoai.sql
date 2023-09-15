-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2021 lúc 06:57 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandiemmayii`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'tnt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Bài 1 : Đây là bài viết về điện thoại', 'Với sự đa dạng về các mẫu điện thoại Smartphone giá cả cạnh cạnh tranh đã giúp cho người dùng có nhiều sự chọn hơn khi mua điện thoại. Tuy nhiên trước khi mua một chiếc điện thoại bạn tìm hiểu qua thông tin có bản về điện thoại thông mình để có những lựa chọn hợp lý.', 'Đây là nội dung', 1, 'm2.jpg'),
(2, 'Bài 2: Lorem Ipsum is simply dummy text of the ', '', 'test', 2, 'm3.jpg'),
(3, 'Bài 3:Đây là bài viết về laptop', 'Hiện nay, khi có quá nhiều các thương hiệu laptop cùng mẫu mã, mức giá thì việc tìm kiếm cho mình một chiếc máy sao cho phù hợp nhất với túi tiền và công việc của mình là một việc hết sức khó khăn. Ngoài ra, một chiếc laptop cho việc di chuyển nhiều cũng sẽ rất khác với việc ít di chuyển như đối với sinh viên hay nhân viên văn phòng…', 'Hiện nay, khi có quá nhiều các thương hiệu laptop cùng mẫu mã, mức giá thì việc tìm kiếm cho mình một chiếc máy sao cho phù hợp nhất với túi tiền và công việc của mình là một việc hết sức khó khăn. Ngoài ra, một chiếc laptop cho việc di chuyển nhiều cũng sẽ rất khác với việc ít di chuyển như đối với sinh viên hay nhân viên văn phòng…', 3, 'mk4.jpg'),
(4, 'Bài 4 :', '', '', 4, 'b4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'Tủ lạnh'),
(3, 'Máy giặt'),
(4, 'Điện thoại'),
(5, 'Tivi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức điện thoại'),
(2, 'Kiến thức máy giặt'),
(3, 'Kiến thức laptop'),
(4, 'Kiến thức Tivi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(70, 21, 2, '4842', 39, '2021-07-06 02:43:40', 0, 0),
(71, 27, 1, '4842', 39, '2021-07-06 02:43:40', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(37, 20, 3, '4616', '2021-07-06 02:46:24', 39, 1, 0),
(38, 36, 1, '4616', '2021-07-06 02:46:24', 39, 1, 0),
(39, 20, 2, '3611', '2021-07-06 02:47:13', 39, 1, 1),
(40, 36, 3, '3611', '2021-07-06 02:47:13', 39, 1, 1),
(41, 21, 1, '3611', '2021-07-06 02:47:13', 39, 1, 1),
(42, 21, 2, '4842', '2021-07-06 02:43:40', 39, 0, 0),
(43, 27, 1, '4842', '2021-07-06 02:43:40', 39, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(37, 'Tân', '123123123', 'hakshdasd', 'ádasdasdasd', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(38, 'ngọc hùng', '123123', 'adasdasdas', 'ádasdasdasd', 'hung@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(39, 'ngochung', '123123123', 'hakshdasd', 'ádasd', 'hung@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(40, 'Duong', '0915193496', 'qưeqweqwe', 'asdasdasd', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(41, 'Duong', '0915193496', 'qưeqweqwe', 'qwewe12e2e', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0),
(48, 'thuy', '0915193496', 'sơn hòa', 'ádasdasd', 'thuy@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Tủ lạnh A10', 'Thiết kế hình khối, màu sắc đa dạng cùng bề mặt thép, gương nguyên khối, gương Uniglass. 2 Dàn lạnh độc lập Twin Cooling Plus giữ thực phẩm tươi lâu gấp 2 lần và không lẫn mùi. Dịch vụ CSKH Tận Tình. Thiết Kế Đẹp Mắt, Hài Hòa. Giữ Thực Phẩm Tươi Ngon.', 'dasdasddsadasds', '6000000', '5500000', 0, 0, 10, 'k3.jpg'),
(20, 4, 'Galaxy A10', 'Mua điện thoại Samsung Galaxy mới nhất - Giá rẻ, trả góp 0%, thu cũ đổi mới, bảo hành 12 tháng, đổi mới 30 ngày. Mua ngay đt Samsung tại đây.', 'dasdas', '15000000', '14000000', 0, 0, 10, 'mk2.jpg'),
(21, 4, 'Galaxy A15', 'Mua điện thoại Samsung Galaxy mới nhất - Giá rẻ, trả góp 0%, thu cũ đổi mới, bảo hành 12 tháng, đổi mới 30 ngày. Mua ngay đt Samsung tại đây.', 'dasdas', '15000000', '14000000', 0, 0, 10, 'mk3.jpg'),
(22, 2, 'Tủ lạnh sony ', 'Thiết kế hình khối, màu sắc đa dạng cùng bề mặt thép, gương nguyên khối, gương Uniglass. 2 Dàn lạnh độc lập Twin Cooling Plus giữ thực phẩm tươi lâu gấp 2 lần và không lẫn mùi. Dịch vụ CSKH Tận Tình. Thiết Kế Đẹp Mắt, Hài Hòa. Giữ Thực Phẩm Tươi Ngon.', 'dasdas', '75000000', '68000000', 0, 0, 5, 'k3.jpg'),
(23, 2, 'Tủ lạnh Samsung', 'Thiết kế hình khối, màu sắc đa dạng cùng bề mặt thép, gương nguyên khối, gương Uniglass. 2 Dàn lạnh độc lập Twin Cooling Plus giữ thực phẩm tươi lâu gấp 2 lần và không lẫn mùi. Dịch vụ CSKH Tận Tình. Thiết Kế Đẹp Mắt, Hài Hòa. Giữ Thực Phẩm Tươi Ngon.', 'dasdasdasd', '105000000', '94000000', 0, 0, 10, 'k2.jpg'),
(24, 1, 'Laptop Sony', 'Mua laptop, máy tính giá rẻ chính hãng 100%, bảo hành hậu mãi chu đáo, trả góp 0%, miễn phí giao hàng 63 tỉnh, tặng balo laptop xịn 400.000đ!', 'adsf', '6000000', '5500000', 0, 0, 10, 'mk6.jpg'),
(25, 1, 'Laptop A15', 'Mua laptop, máy tính giá rẻ chính hãng 100%, bảo hành hậu mãi chu đáo, trả góp 0%, miễn phí giao hàng 63 tỉnh, tặng balo laptop xịn 400.000đ!', 'adsf', '6600000', '5300000', 0, 0, 10, 'mk6.jpg'),
(26, 3, 'Máy giặt Samsung', 'Trí Tuệ Nhân Tạo Mới 2021. 4 Cảm Biến phân tích độ bẩn, tự động phân bổ nước giặt xả, điều chỉnh thời gian giặt. Tự động đề xuất chế độ giặt. Bảo vệ sợi vải. Diệt khuẩn 99.9%. Êm ái bền bỉ 23 năm. Đề Xuất Chế Độ Giặt. Thêm Quần Áo Dễ Dàng.', 'dsadas', '105000000', '99000000', 0, 0, 10, 'm8.jpg'),
(27, 3, 'Máy giặt Shark', 'Trí Tuệ Nhân Tạo Mới 2021. 4 Cảm Biến phân tích độ bẩn, tự động phân bổ nước giặt xả, điều chỉnh thời gian giặt. Tự động đề xuất chế độ giặt. Bảo vệ sợi vải. Diệt khuẩn 99.9%. Êm ái bền bỉ 23 năm. Đề Xuất Chế Độ Giặt. Thêm Quần Áo Dễ Dàng.', 'dsadas', '75000000', '63000000', 0, 0, 10, 'm8.jpg'),
(35, 5, 'Tivi Sony 30\'', 'Mua tivi sony để trải nghiệm thế giới 4K công nghệ tương lai, hình ảnh sống động như thực. Thoải mái trải nghiệm chất lượng như trong rạp chiếu phim ngay tại phòng khách của bạn.', 'Mô tả ở đây', '6000000', '5500000', 0, 0, 10, 'm4.jpg'),
(36, 5, 'Tivi Panasonic', 'Mua tivi panasonic để trải nghiệm thế giới 4K công nghệ tương lai, hình ảnh sống động như thực. Thoải mái trải nghiệm chất lượng như trong rạp chiếu phim ngay tại phòng khách của bạn.', 'Mô tả ở đây', '7000000', '6500000', 0, 0, 10, 'm4.jpg'),
(37, 4, 'tivi sony', '123123', '123123', '123123', '123123', 0, 0, 1, 'ed594eea7778bb0c790e57c6a3d09715.jpg'),
(38, 5, 'tivi sony', 'qưeqw', 'qưeqw', '123123', '123123', 0, 0, 1, 'ed594eea7778bb0c790e57c6a3d09715.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'b2.jpg', 'Slider khuyến mãi ', 1),
(2, 'b3.jpg', 'Slider 50%', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`),
  ADD KEY `PK_BV` (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`),
  ADD KEY `FK_SPid` (`sanpham_id`),
  ADD KEY `FK_KH` (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`),
  ADD KEY `PK_IDSP` (`sanpham_id`),
  ADD KEY `FK_KHGD` (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`),
  ADD KEY `FK_GH` (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `FK_id` (`category_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `PK_BV` FOREIGN KEY (`danhmuctin_id`) REFERENCES `tbl_danhmuc_tin` (`danhmuctin_id`);

--
-- Các ràng buộc cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `FK_KH` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`),
  ADD CONSTRAINT `FK_SPid` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD CONSTRAINT `FK_KHGD` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`),
  ADD CONSTRAINT `PK_IDSP` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `FK_GH` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `FK_id` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
