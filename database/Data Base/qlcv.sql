-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 13, 2022 lúc 09:09 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlcv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `Machatbox` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaygui` date NOT NULL,
  KEY `Machatbox` (`Machatbox`),
  KEY `MaNd` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatbox`
--

DROP TABLE IF EXISTS `chatbox`;
CREATE TABLE IF NOT EXISTS `chatbox` (
  `Machatbox` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tenchatbox` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL,
  PRIMARY KEY (`Machatbox`),
  KEY `MaDV` (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec`
--

DROP TABLE IF EXISTS `congviec`;
CREATE TABLE IF NOT EXISTS `congviec` (
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL,
  `mucdocv` tinyint(4) NOT NULL,
  PRIMARY KEY (`MaCV`),
  KEY `Maphongban` (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec_nhanvien`
--

DROP TABLE IF EXISTS `congviec_nhanvien`;
CREATE TABLE IF NOT EXISTS `congviec_nhanvien` (
  `magiao` int(11) NOT NULL AUTO_INCREMENT,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgayGiao` date NOT NULL,
  `HanDK` date NOT NULL,
  `HanTT` date DEFAULT NULL,
  `Nhanxet` text COLLATE utf8_unicode_ci,
  `diem` int(10) DEFAULT NULL,
  `Trangthai` tinyint(4) NOT NULL,
  PRIMARY KEY (`magiao`),
  KEY `MaNV` (`MaNV`),
  KEY `MaCV` (`MaCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvi`
--

DROP TABLE IF EXISTS `donvi`;
CREATE TABLE IF NOT EXISTS `donvi` (
  `MaDV` int(10) NOT NULL AUTO_INCREMENT,
  `TenPhong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci,
  `Matruongphong` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosocongviec`
--

DROP TABLE IF EXISTS `hosocongviec`;
CREATE TABLE IF NOT EXISTS `hosocongviec` (
  `mahs` int(11) NOT NULL AUTO_INCREMENT,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `duongdan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mahs`),
  KEY `MaCV` (`MaCV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Gt` tinyint(1) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `TenDN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaDV` int(10) NOT NULL,
  `Avt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_deleted` date DEFAULT NULL,
  `trangthai` int(5) NOT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `MaPhong` (`MaDV`),
  KEY `MaQuyen` (`MaQuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhatkycv`
--

DROP TABLE IF EXISTS `nhatkycv`;
CREATE TABLE IF NOT EXISTS `nhatkycv` (
  `Maghi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayTao` date NOT NULL,
  `sogio` tinyint(8) DEFAULT NULL,
  `loaink` tinyint(4) NOT NULL,
  PRIMARY KEY (`Maghi`),
  KEY `MaCV` (`MaCV`),
  KEY `MaNV` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MaQuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qa`
--

DROP TABLE IF EXISTS `qa`;
CREATE TABLE IF NOT EXISTS `qa` (
  `MaQA` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungqa` text COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngayghiqa` date NOT NULL,
  PRIMARY KEY (`MaQA`),
  KEY `Macongviec` (`MaCV`),
  KEY `MaNguoiTao` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`Machatbox`) REFERENCES `chatbox` (`Machatbox`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `chatbox`
--
ALTER TABLE `chatbox`
  ADD CONSTRAINT `chatbox_ibfk_1` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD CONSTRAINT `congviec_ibfk_1` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `congviec_nhanvien`
--
ALTER TABLE `congviec_nhanvien`
  ADD CONSTRAINT `congviec_nhanvien_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `congviec_nhanvien_ibfk_2` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Các ràng buộc cho bảng `hosocongviec`
--
ALTER TABLE `hosocongviec`
  ADD CONSTRAINT `hosocongviec_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhatkycv`
--
ALTER TABLE `nhatkycv`
  ADD CONSTRAINT `nhatkycv_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `nhatkycv_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `qa`
--
ALTER TABLE `qa`
  ADD CONSTRAINT `qa_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `qa_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
