/*
 Navicat Premium Data Transfer

 Source Server         : loosk
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : nhom_baitaplon

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 16/11/2021 08:45:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `tb_danhmuc`;
CREATE TABLE `tb_danhmuc`  (
  `maloaisp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tenloaisp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`maloaisp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_danhmuc
-- ----------------------------
INSERT INTO `tb_danhmuc` VALUES ('mal001', 'điện tử');
INSERT INTO `tb_danhmuc` VALUES ('ml002', 'đồ gia dụng');
INSERT INTO `tb_danhmuc` VALUES ('ml003', 'điện thoại');
INSERT INTO `tb_danhmuc` VALUES ('ml004', 'laptop');
INSERT INTO `tb_danhmuc` VALUES ('ml005', 'đồ ăn');

-- ----------------------------
-- Table structure for tb_dondathang
-- ----------------------------
DROP TABLE IF EXISTS `tb_dondathang`;
CREATE TABLE `tb_dondathang`  (
  `mathanhtoan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `masp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `makhachhang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tensp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soluong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ngaymuahang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tongtien` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `manv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`mathanhtoan`) USING BTREE,
  INDEX `manv`(`manv`) USING BTREE,
  INDEX `masp`(`masp`) USING BTREE,
  INDEX `makhachhang`(`makhachhang`) USING BTREE,
  CONSTRAINT `tb_dondathang_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `tb_nvbanhang` (`manv`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_dondathang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `tb_sanpham` (`masp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_dondathang_ibfk_3` FOREIGN KEY (`makhachhang`) REFERENCES `tb_khachhang` (`makhachhang`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_dondathang
-- ----------------------------
INSERT INTO `tb_dondathang` VALUES ('5666', 'ml002', 'mkh007', 'Ô tô', '50', '11/11/2021', '100000', 'nv002');
INSERT INTO `tb_dondathang` VALUES ('dn002', 'ml002', 'mk002', 'Ô tô', '50', '10/11/2021', '10000000', 'nv001');
INSERT INTO `tb_dondathang` VALUES ('lt003', 'ml007', 'mkh009', 'CPU and GPU', '55', '10/11/2021', '1820610', 'nv003');
INSERT INTO `tb_dondathang` VALUES ('vn002', 'ml002', 'mkh001', 'Ô tô', '26', '10/11/2021', '10788320', 'nv002');

-- ----------------------------
-- Table structure for tb_khachhang
-- ----------------------------
DROP TABLE IF EXISTS `tb_khachhang`;
CREATE TABLE `tb_khachhang`  (
  `makhachhang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tenkhachhang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tengiaodich` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dienthoai` int NULL DEFAULT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`makhachhang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_khachhang
-- ----------------------------
INSERT INTO `tb_khachhang` VALUES ('mk002', 'đại nam ', 'mua bán điện tử', 'Bình Dương', 'dainamoffical', 516165, 'NO AVT');
INSERT INTO `tb_khachhang` VALUES ('mkh001', 'tập đoàn vinphot', 'mua ô tô ', 'Hà Nội', 'vinfake@gmail.com', 5645656, 'home-32.png');
INSERT INTO `tb_khachhang` VALUES ('mkh003', 'avtconfess', 'mua đồ gia dụng', 'Thái Nguyên', 'cnffes@gmail.com', 161515, 'NO AVT');
INSERT INTO `tb_khachhang` VALUES ('mkh004', 'tập đoàn du lịch SL', 'mua bán đất', 'Thái Bình', 'tb@gmail.com', 9416651, 'NO AVT');
INSERT INTO `tb_khachhang` VALUES ('mkh005', 'facebook', 'mua bản quyền', 'Mỹ', 'abcd@gmail.com', 6595989, 'NO AVT');
INSERT INTO `tb_khachhang` VALUES ('mkh006', 'Microsoft', 'Mua lại amazon', 'Hoa Kỳ', 'bill@gmail.com', 16515, 'NO AVT');
INSERT INTO `tb_khachhang` VALUES ('mkh007', 'alibaba', 'sàn điện tử', 'Trung Quốc', 'jackma@gmail.com', 16516, '765a715aad0e64503d1f.jpg');
INSERT INTO `tb_khachhang` VALUES ('mkh009', 'Nhưa Long Thành', 'mua bán cổ phần', 'Hồ Chí Minh', 'minh@gmail.com', 165166, 'NO AVT');

-- ----------------------------
-- Table structure for tb_nhacc
-- ----------------------------
DROP TABLE IF EXISTS `tb_nhacc`;
CREATE TABLE `tb_nhacc`  (
  `manhacc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tennhacc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tengiaodich` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sodienthoai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`manhacc`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_nhacc
-- ----------------------------
INSERT INTO `tb_nhacc` VALUES ('mancc001', 'samsung', 'muabandienthoai', 'Seoul', '565994', 'samsung@gmail.com', 'icons8-add-35.png');
INSERT INTO `tb_nhacc` VALUES ('mancc002', 'meta', 'mualike', 'California', '1698498', 'face@gmail.com', 'NO AVT');
INSERT INTO `tb_nhacc` VALUES ('mancc003', 'vinfact', 'mua xe', 'Việt Nam', '684984', 'vin@gmail.com', 'NO AVT');
INSERT INTO `tb_nhacc` VALUES ('mancc004', 'amazon', 'mua bàn ghế, đồ gia dụng', 'Mỹ', '59849', 'amazon@gmail.com', 'NO AVT');

-- ----------------------------
-- Table structure for tb_nvbanhang
-- ----------------------------
DROP TABLE IF EXISTS `tb_nvbanhang`;
CREATE TABLE `tb_nvbanhang`  (
  `manv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gioitinh` bit(1) NOT NULL,
  `diachi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `luongcoban` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `chucvu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`manv`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_nvbanhang
-- ----------------------------
INSERT INTO `tb_nvbanhang` VALUES ('nv001', 'Lê Xuân Sơn', b'1', 'Thanh Hóa', '28102001', 'Leader', 'NO AVT');
INSERT INTO `tb_nvbanhang` VALUES ('nv002', 'Vũ Thị Ngọc Bích', b'0', 'Thái Bình', '4000000', 'quản lý', '');
INSERT INTO `tb_nvbanhang` VALUES ('nv003', 'Vũ Hữu Thắng', b'1', 'Quảng Ninh', '1500000', 'trưởng phòng', 'NO AVT');
INSERT INTO `tb_nvbanhang` VALUES ('nv004', 'Nguyễn Thanh ngân', b'0', 'Đan phượng', '1656516', 'Maketting', 'NO AVT');
INSERT INTO `tb_nvbanhang` VALUES ('nv005', 'Trần Đức Tuấn', b'1', 'Thườn Tín', '16516', 'Giám đốc nhấn sự', 'NO AVT');

-- ----------------------------
-- Table structure for tb_qlnguoidung
-- ----------------------------
DROP TABLE IF EXISTS `tb_qlnguoidung`;
CREATE TABLE `tb_qlnguoidung`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `manv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `loaitk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `manv`(`manv`) USING BTREE,
  CONSTRAINT `tb_qlnguoidung_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `tb_nvbanhang` (`manv`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_qlnguoidung
-- ----------------------------
INSERT INTO `tb_qlnguoidung` VALUES (' 2810', 'nv001', 'admin', '112233 ', ' sonhq28@gmail.com', 'Admin');
INSERT INTO `tb_qlnguoidung` VALUES (' mdn001', 'nv004', 'nhom5', '123456', '16516@gmail.com', 'User');
INSERT INTO `tb_qlnguoidung` VALUES (' mdn002', 'nv002', 'user', '112233', ' user@gmail.com', 'User');
INSERT INTO `tb_qlnguoidung` VALUES (' mdn003', 'nv003', 'java', ' 12345', ' java@gmail.com', 'Admin');

-- ----------------------------
-- Table structure for tb_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `tb_sanpham`;
CREATE TABLE `tb_sanpham`  (
  `masp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tensp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `manhacc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `maloaisp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soluong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ghichu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`masp`) USING BTREE,
  INDEX `manhacc`(`manhacc`) USING BTREE,
  INDEX `maloaisp`(`maloaisp`) USING BTREE,
  CONSTRAINT `tb_sanpham_ibfk_1` FOREIGN KEY (`manhacc`) REFERENCES `tb_nhacc` (`manhacc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_sanpham_ibfk_2` FOREIGN KEY (`maloaisp`) REFERENCES `tb_danhmuc` (`maloaisp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sanpham
-- ----------------------------
INSERT INTO `tb_sanpham` VALUES ('12412', 'tủ lạnh', 'mancc002', 'ml002', '2850', 'sản xuất tại Japan', 'NO AVT');
INSERT INTO `tb_sanpham` VALUES ('ml002', 'Ô tô', 'mancc003', 'ml002', '850', 'đẹp, tiết kiệm nhiên liệu', 'conference-64.png');
INSERT INTO `tb_sanpham` VALUES ('ml003', 'oppo', 'mancc004', 'ml003', '540', 'đẹp', 'NO AVT');
INSERT INTO `tb_sanpham` VALUES ('ml004', 'samsung', 'mancc001', 'ml003', '500', 'đẹp', 'NO AVT');
INSERT INTO `tb_sanpham` VALUES ('ml005', 'tivi', 'mancc001', 'mal001', '50', 'đẹp bền', 'NO AVT');
INSERT INTO `tb_sanpham` VALUES ('ml006', 'điện thoại', 'mancc001', 'ml003', '900', 'đẹp bền khỏe', 'NO AVT');
INSERT INTO `tb_sanpham` VALUES ('ml007', 'CPU and GPU', 'mancc003', 'ml003', '4545', 'Sản xuất năm 2021, thế hệ 11', 'NO AVT');
INSERT INTO `tb_sanpham` VALUES ('ml008', 'intel', 'mancc003', 'ml003', '1500', 'thế hệ 11', 'NO AVT');
INSERT INTO `tb_sanpham` VALUES ('ml009', 'máy lọc không khí', 'mancc004', 'ml003', '500', 'bảo hành 12 tháng, tiết kiệm điện', 'home-48.png');

SET FOREIGN_KEY_CHECKS = 1;
