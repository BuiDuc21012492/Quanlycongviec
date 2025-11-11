-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 12:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlcv 1`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Machatbox` varchar(10) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `Noidung` text NOT NULL,
  `Ngaygui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatbox`
--

CREATE TABLE `chatbox` (
  `Machatbox` varchar(10) NOT NULL,
  `Tenchatbox` varchar(50) NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `congviec`
--

CREATE TABLE `congviec` (
  `MaCV` varchar(10) NOT NULL,
  `Tieude` text NOT NULL,
  `Noidung` text NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL,
  `mucdocv` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `congviec`
--

INSERT INTO `congviec` (`MaCV`, `Tieude`, `Noidung`, `Ngaytao`, `MaDV`, `mucdocv`) VALUES
('CV1', 'Làm đồ án', 'Làm đồ án', '2025-02-09', 7, 2),
('CV10', 'Test luận văn 11', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \nBartłomiej Sobieszek\n Jun 15, 2017 at 22:55', '2025-02-09', 7, 1),
('CV11', 'Test luận văn 12', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2025-02-09', 7, 1),
('CV12', 'Test luận văn 13', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2025-02-09', 7, 1),
('CV13', 'Test luận văn 14', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2025-02-09', 7, 1),
('CV14', 'Làm đồ án 1', 'Đồ án tốt nghiệp', '2025-03-06', 2, 2),
('CV15', 'Làm đồ án 2', 'Đồ án tốt nghiệp 2', '2025-03-06', 1, 2),
('CV2', 'Đồ án tin học', 'Làm đồ án', '2025-02-09', 7, 1),
('CV3', 'test luận văn', 'Test web quản lý đánh giá nhân viên', '2025-02-09', 7, 1),
('CV4', 'Test web final', 'Test web final', '2025-02-09', 7, 0),
('CV5', 'Lập trình web bán hàng', 'Lập trình web bán hàng', '2025-02-09', 7, 2),
('CV6', 'Test data', 'Test data', '2025-02-09', 7, 0),
('CV7', 'Thu phí đoàn sinh viên', 'Thu phí đoàn sinh viên', '2025-02-09', 8, 1),
('CV8', 'Test luận văn 9', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2025-02-09', 7, 1),
('CV9', 'Test luận văn 10', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2025-02-09', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `congviec_nhanvien`
--

CREATE TABLE `congviec_nhanvien` (
  `magiao` int(11) NOT NULL,
  `MaCV` varchar(10) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `NgayGiao` date NOT NULL,
  `HanDK` date NOT NULL,
  `HanTT` date DEFAULT NULL,
  `Nhanxet` text DEFAULT NULL,
  `diem` int(10) DEFAULT NULL,
  `Trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `congviec_nhanvien`
--

INSERT INTO `congviec_nhanvien` (`magiao`, `MaCV`, `MaNV`, `NgayGiao`, `HanDK`, `HanTT`, `Nhanxet`, `diem`, `Trangthai`) VALUES
(1, 'CV1', 'NV7', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(2, 'CV2', 'NV7', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(3, 'CV3', 'NV3', '2025-02-09', '2025-02-12', NULL, 'tốt', 8, 3),
(4, 'CV4', 'NV8', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(5, 'CV5', 'NV8', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 1),
(6, 'CV6', 'NV7', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(7, 'CV7', 'NV10', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(8, 'CV8', 'NV3', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 1),
(9, 'CV9', 'NV3', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(10, 'CV10', 'NV7', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(11, 'CV11', 'NV7', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(12, 'CV12', 'NV7', '2025-02-09', '2025-02-12', NULL, NULL, NULL, 0),
(13, 'CV13', 'NV3', '2022-08-09', '2025-02-12', '2025-02-10', NULL, NULL, 2),
(14, 'CV14', 'NV5', '2025-03-06', '2025-03-15', NULL, NULL, NULL, 0),
(15, 'CV15', 'NV11', '2025-03-06', '2000-03-20', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

CREATE TABLE `donvi` (
  `MaDV` int(10) NOT NULL,
  `TenPhong` varchar(50) NOT NULL,
  `Mota` text DEFAULT NULL,
  `Matruongphong` varchar(10) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donvi`
--

INSERT INTO `donvi` (`MaDV`, `TenPhong`, `Mota`, `Matruongphong`, `Logo`) VALUES
(1, 'Phòng quản lý nhân sự', 'quản lý đơn vị và nhân viên', 'NV12', 'phenikaa1.jpg'),
(2, 'Phòng quản lý dự án', 'Quản lý dự án', 'NV13', 'phenikaa1.jpg'),
(7, 'Phòng hành chính', 'Phòng Tổ chức hành chính là Phòng chức năng thuộc bộ máy quản lý.', 'NV6', 'phenikaa1.jpg'),
(8, 'Phòng công tác sinh viên', 'Phòng công tác sinh viên', 'NV9', 'phenikaa1.jpg'),
(9, 'Phòng đoàn', 'Các công tác đoàn, hội.', NULL, 'phenikaa1.jpg'),
(10, 'Phòng thiết bị', 'Phòng thiết bị', NULL, 'phenikaa1.jpg'),
(11, 'Quản lý nhân sự 2', 'Quản lý nhân sự ver 2', NULL, 'phenikaa1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hosocongviec`
--

CREATE TABLE `hosocongviec` (
  `mahs` int(11) NOT NULL,
  `MaCV` varchar(10) NOT NULL,
  `duongdan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hosocongviec`
--

INSERT INTO `hosocongviec` (`mahs`, `MaCV`, `duongdan`) VALUES
(8, 'CV8', 'CV8_Chức năng.txt'),
(9, 'CV9', 'CV9_Chức năng.txt'),
(10, 'CV10', 'CV10_Chức năng.txt'),
(11, 'CV11', 'CV11_Chức năng.txt'),
(12, 'CV12', 'CV12_Chức năng.txt'),
(13, 'CV13', 'CV13_Chức năng.txt'),
(14, 'CV3', 'CV3_Chức năng.txt');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(10) NOT NULL,
  `TenNV` varchar(150) NOT NULL,
  `Gt` tinyint(1) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(150) NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `DiaChi` varchar(300) NOT NULL,
  `TenDN` varchar(50) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `MaQuyen` varchar(10) NOT NULL,
  `MaDV` int(10) NOT NULL,
  `Avt` varchar(255) DEFAULT NULL,
  `Is_deleted` date DEFAULT NULL,
  `trangthai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Gt`, `NgaySinh`, `Email`, `SDT`, `DiaChi`, `TenDN`, `MatKhau`, `MaQuyen`, `MaDV`, `Avt`, `Is_deleted`, `trangthai`) VALUES
('NV0', 'ADMIN ', 0, '2003-07-25', 'buitrungduc257@gmail.com', '0796037114', 'Nam Từ Liêm, Hà Nội', 'Bduc257', '$2y$10$JOeYu/RfPipxaNy/CH/KrO/BywlgyN1oxW.ZUjickoOJ8r62a1022', '000', 1, 'admin.jpg', NULL, 1),
('NV1', 'Chính Huy', 1, '2003-04-03', 'huynguyen01@gmail.com', '0985509812', 'Nam Từ Liêm, Hà Nội', 'huynguyen01', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '002', 1, 'female.jpg', NULL, 1),
('NV10', 'NV phòng đoàn', 0, '2003-09-05', 'nhanviendoan@gmail.com', '0983233812', 'Nam Từ Liêm, Hà Nội', 'minhthy04', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 8, 'male.jpg', NULL, 1),
('NV11', 'Nguyễn Văn Nam', 0, '2003-01-01', 'Namnguyen01@gmail.com', '0797036344', 'Nam Từ Liêm, Hà Nội', 'NguyenNam', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 1, 'female.jpg', NULL, 1),
('NV12', 'Nguyễn Minh', 0, '2003-02-02', 'minhnguyen203@gmail.com', '0985567815', 'Nam Từ Liêm, Hà Nội', 'Minhnguyen', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '002', 1, 'female.jpg', NULL, 1),
('NV13', 'The Anh', 0, '2003-03-03', 'theanh0303@gmail.com', '0796845673', 'Nam Từ Liêm, Hà Nội', 'TheAnh0303', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '002', 2, 'female.jpg', NULL, 1),
('NV2', 'Minh Ng', 1, '2003-03-02', 'nhminhthy630@gmai.com', '0985509812', 'Nam Từ Liêm, Hà Nội', 'minhthy01', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 1, 'male.jpg', NULL, 1),
('NV3', 'Lê quốc khánh', 0, '2003-01-01', 'lequockhanh@gmail.com', '0123456789', 'Nam Từ Liêm, Hà Nội', 'quockhanh', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 7, 'female.jpg', NULL, 1),
('NV4', 'Tường An', 1, '2003-02-01', 'tuongan@gmail.com', '0985549812', 'Nam Từ Liêm, Hà Nội', 'tanan01', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 1, 'female.jpg', NULL, 1),
('NV5', 'Tường An 2', 1, '2003-02-01', 'tuongan@gmail.com', '0985559812', 'Nam Từ Liêm, Hà Nội', 'tanan02', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 2, 'female.jpg', NULL, 1),
('NV6', 'Minh 2', 0, '2003-02-01', 'minh02@gmail.com', '0985345112', 'Nam Từ Liêm, Hà Nội', 'minhthy02', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '002', 7, 'male.jpg', NULL, 1),
('NV7', 'Hoàng Anh', 0, '2003-02-01', 'hoanganh@gmail.com', '0985509812', 'Nam Từ Liêm, Hà Nội', 'hoanganh01', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 7, 'female.jpg', NULL, 1),
('NV8', 'Hoàng Anh 02', 0, '2003-02-01', 'hoanganh02@gmai.com', '0985509812', 'Nam Từ Liêm, Hà Nội', 'hoanganh02', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '001', 7, 'female.jpg', NULL, 1),
('NV9', 'Minh 3', 1, '2003-09-05', 'minh3@gmail.com', '0985509512', 'Nam Từ Liêm, Hà Nội', 'minhthy03', '$2y$10$vi8r5elWr5VHQRX56jInsuptTl6EXZN7VcFYwNoQ/7svoT63h.52O', '002', 8, 'male.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhatkycv`
--

CREATE TABLE `nhatkycv` (
  `Maghi` varchar(10) NOT NULL,
  `MaCV` varchar(10) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayTao` date NOT NULL,
  `sogio` tinyint(8) DEFAULT NULL,
  `loaink` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhatkycv`
--

INSERT INTO `nhatkycv` (`Maghi`, `MaCV`, `MaNV`, `NoiDung`, `NgayTao`, `sogio`, `loaink`) VALUES
('NK0', 'CV1', 'NV6', 'Giao công việc Làm đồ án', '2025-02-09', NULL, 1),
('NK1', 'CV2', 'NV6', 'Giao công việc Đồ án tin học', '2025-02-09', NULL, 1),
('NK10', 'CV10', 'NV6', 'Giao công việc Test luận văn 11', '2025-02-09', NULL, 1),
('NK11', 'CV11', 'NV6', 'Giao công việc Test luận văn 12', '2025-02-09', NULL, 1),
('NK12', 'CV12', 'NV6', 'Giao công việc Test luận văn 13', '2025-02-09', NULL, 1),
('NK13', 'CV13', 'NV6', 'Giao công việc Test luận văn 14', '2025-02-09', NULL, 1),
('NK14', 'CV8', 'NV3', 'testing', '2025-02-09', 4, 0),
('NK15', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành', '2025-02-10', NULL, 1),
('NK16', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành', '2025-02-10', NULL, 1),
('NK17', 'CV13', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2025-02-10', NULL, 1),
('NK18', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành', '2025-02-10', NULL, 1),
('NK19', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành', '2025-02-10', NULL, 1),
('NK2', 'CV3', 'NV6', 'Test luận văn', '2025-02-09', NULL, 1),
('NK20', 'CV3', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2025-02-10', NULL, 1),
('NK21', 'CV3', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành', '2025-05-10', NULL, 1),
('NK22', 'CV3', 'NV6', 'Nhận xét công việc\r\n Điểm: 8', '2025-02-10', NULL, 1),
('NK23', 'CV3', 'NV6', 'Nhận xét công việc\r\n Điểm: 8', '2025-02-10', NULL, 1),
('NK24', 'CV8', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2025-02-10', NULL, 1),
('NK25', 'CV14', 'NV13', 'Giao công việc Làm đồ án 1 cho Tấn an 02', '2025-03-06', NULL, 1),
('NK26', 'CV15', 'NV12', 'Giao công việc Làm đồ án 2 cho Nguyễn Văn Nam', '2025-03-06', NULL, 1),
('NK27', 'CV15', 'NV11', 'Đã hoàn thành', '2025-03-06', 4, 0),
('NK28', 'CV15', 'NV12', 'Cập nhật: Tên công việc: Làm đồ án 2, Noidung: Đồ án tốt nghiệp 2, , Thời hạn:2000-03-20', '2025-03-07', NULL, 1),
('NK29', 'CV15', 'NV11', 'Chuyển trạng thái -> Đang thực hiện', '2025-11-11', NULL, 1),
('NK3', 'CV4', 'NV6', 'Chuyển trạng thái -> Đã Hoàn thành', '2025-02-09', NULL, 1),
('NK4', 'CV5', 'NV6', 'Lập trình web bán hàng', '2025-02-09', NULL, 1),
('NK5', 'CV6', 'NV6', 'Giao công việc Test data', '2025-02-09', NULL, 1),
('NK6', 'CV5', 'NV8', 'Chuyển trạng thái -> Đang thực hiện', '2025-02-09', NULL, 1),
('NK7', 'CV7', 'NV9', 'Giao công việc Thu phí đoàn sinh viên cho NV phòng đoàn Minh Thy 04', '2022-08-09', NULL, 1),
('NK8', 'CV8', 'NV6', 'Giao công việc Test luận văn 9 cho Lê quốc khánh', '2022-08-09', NULL, 1),
('NK9', 'CV9', 'NV6', 'Giao công việc Test luận văn 10 cho Lê quốc khánh', '2022-08-09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` varchar(10) NOT NULL,
  `TenQuyen` varchar(50) NOT NULL,
  `Mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `Mota`) VALUES
('000', 'Admin', 'Quyền Quản trị hệ thống: có thể tạo đơn vị, tạo user'),
('001', 'Nhân Viên', 'Dành cho nhân viên bình thường: được quyền tạo QA, Báo cáo công việc, Nhận việc'),
('002', 'Trưởng Phòng', 'Quyền dành cho trưởng phòng: được phép tạo công việc, đánh giá công việc, chấm điểm\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `qa`
--

CREATE TABLE `qa` (
  `MaQA` varchar(10) NOT NULL,
  `MaCV` varchar(10) NOT NULL,
  `Noidungqa` text NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `ngayghiqa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD KEY `Machatbox` (`Machatbox`),
  ADD KEY `MaNd` (`MaNV`);

--
-- Indexes for table `chatbox`
--
ALTER TABLE `chatbox`
  ADD PRIMARY KEY (`Machatbox`),
  ADD KEY `MaDV` (`MaDV`);

--
-- Indexes for table `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`MaCV`),
  ADD KEY `Maphongban` (`MaDV`);

--
-- Indexes for table `congviec_nhanvien`
--
ALTER TABLE `congviec_nhanvien`
  ADD PRIMARY KEY (`magiao`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaCV` (`MaCV`);

--
-- Indexes for table `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`MaDV`);

--
-- Indexes for table `hosocongviec`
--
ALTER TABLE `hosocongviec`
  ADD PRIMARY KEY (`mahs`),
  ADD KEY `MaCV` (`MaCV`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `MaPhong` (`MaDV`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Indexes for table `nhatkycv`
--
ALTER TABLE `nhatkycv`
  ADD PRIMARY KEY (`Maghi`),
  ADD KEY `MaCV` (`MaCV`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Indexes for table `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`MaQA`),
  ADD KEY `Macongviec` (`MaCV`),
  ADD KEY `MaNguoiTao` (`MaNV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `congviec_nhanvien`
--
ALTER TABLE `congviec_nhanvien`
  MODIFY `magiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `donvi`
--
ALTER TABLE `donvi`
  MODIFY `MaDV` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hosocongviec`
--
ALTER TABLE `hosocongviec`
  MODIFY `mahs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`Machatbox`) REFERENCES `chatbox` (`Machatbox`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `chatbox`
--
ALTER TABLE `chatbox`
  ADD CONSTRAINT `chatbox_ibfk_1` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `congviec`
--
ALTER TABLE `congviec`
  ADD CONSTRAINT `congviec_ibfk_1` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `congviec_nhanvien`
--
ALTER TABLE `congviec_nhanvien`
  ADD CONSTRAINT `congviec_nhanvien_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `congviec_nhanvien_ibfk_2` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Constraints for table `hosocongviec`
--
ALTER TABLE `hosocongviec`
  ADD CONSTRAINT `hosocongviec_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhatkycv`
--
ALTER TABLE `nhatkycv`
  ADD CONSTRAINT `nhatkycv_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `nhatkycv_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `qa`
--
ALTER TABLE `qa`
  ADD CONSTRAINT `qa_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `qa_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
