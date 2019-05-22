/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : proinforsystem

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 22/05/2019 12:46:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_attendance
-- ----------------------------
DROP TABLE IF EXISTS `t_attendance`;
CREATE TABLE `t_attendance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `attendancedate` datetime(0) NULL DEFAULT NULL,
  `attendanceflag` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_attendance
-- ----------------------------
INSERT INTO `t_attendance` VALUES (2, 2, '2019-01-11 00:00:00', 1);
INSERT INTO `t_attendance` VALUES (3, 2, '2019-01-11 00:00:00', 1);
INSERT INTO `t_attendance` VALUES (7, 1, '2019-01-15 22:36:42', 0);
INSERT INTO `t_attendance` VALUES (8, 1, '2019-02-09 22:36:51', 0);
INSERT INTO `t_attendance` VALUES (9, 2, '2019-01-11 00:00:00', 1);
INSERT INTO `t_attendance` VALUES (11, 2, '2019-01-12 00:00:00', 1);
INSERT INTO `t_attendance` VALUES (12, 1, '2019-01-12 00:00:00', 1);
INSERT INTO `t_attendance` VALUES (13, 1, '2019-01-12 16:39:06', 1);
INSERT INTO `t_attendance` VALUES (14, 1, '2019-01-13 08:45:06', 1);
INSERT INTO `t_attendance` VALUES (15, 1, '2019-01-14 13:40:42', 1);
INSERT INTO `t_attendance` VALUES (16, 1, '2019-01-14 14:11:22', 1);
INSERT INTO `t_attendance` VALUES (17, 1, '2019-01-14 14:11:30', 1);
INSERT INTO `t_attendance` VALUES (18, 1, '2019-01-14 14:16:24', 1);
INSERT INTO `t_attendance` VALUES (19, 1, '2019-01-14 14:17:34', 1);
INSERT INTO `t_attendance` VALUES (20, 1, '2019-01-14 15:00:53', 1);
INSERT INTO `t_attendance` VALUES (21, 1, '2019-01-14 15:01:28', 1);
INSERT INTO `t_attendance` VALUES (22, 1, '2019-01-14 15:02:29', 1);
INSERT INTO `t_attendance` VALUES (23, 1, '2019-01-14 15:02:53', 1);
INSERT INTO `t_attendance` VALUES (24, 1, '2019-01-14 15:47:48', 1);
INSERT INTO `t_attendance` VALUES (25, 1, '2019-01-14 15:48:02', 1);
INSERT INTO `t_attendance` VALUES (26, 1, '2019-01-14 15:49:57', 1);
INSERT INTO `t_attendance` VALUES (27, 1, '2019-01-14 16:26:08', 1);
INSERT INTO `t_attendance` VALUES (28, 1, '2019-01-14 16:27:55', 1);
INSERT INTO `t_attendance` VALUES (29, 1, '2019-01-14 16:29:06', 1);
INSERT INTO `t_attendance` VALUES (30, 1, '2019-01-14 16:30:39', 1);
INSERT INTO `t_attendance` VALUES (31, 1, '2019-01-14 16:32:19', 1);
INSERT INTO `t_attendance` VALUES (32, 1, '2019-01-14 16:33:03', 1);
INSERT INTO `t_attendance` VALUES (33, 1, '2019-01-14 16:41:23', 1);
INSERT INTO `t_attendance` VALUES (34, 1, '2019-01-14 16:42:42', 1);
INSERT INTO `t_attendance` VALUES (35, 1, '2019-01-14 16:46:27', 1);
INSERT INTO `t_attendance` VALUES (36, 1, '2019-01-14 16:47:12', 1);
INSERT INTO `t_attendance` VALUES (37, 1, '2019-01-14 16:48:56', 1);
INSERT INTO `t_attendance` VALUES (38, 1, '2019-01-14 16:49:43', 1);
INSERT INTO `t_attendance` VALUES (39, 1, '2019-01-14 16:53:15', 1);
INSERT INTO `t_attendance` VALUES (40, 1, '2019-01-14 16:54:51', 1);
INSERT INTO `t_attendance` VALUES (41, 1, '2019-01-14 20:57:06', 1);
INSERT INTO `t_attendance` VALUES (42, 1, '2019-01-15 09:44:53', 1);
INSERT INTO `t_attendance` VALUES (43, 2, '2019-01-16 08:07:47', 1);
INSERT INTO `t_attendance` VALUES (44, 1, '2019-01-17 12:43:17', 1);
INSERT INTO `t_attendance` VALUES (45, 2, '2019-01-18 18:12:06', 1);
INSERT INTO `t_attendance` VALUES (46, 2, '2019-01-18 18:14:18', 1);
INSERT INTO `t_attendance` VALUES (47, 3, '2019-01-18 18:19:33', 1);
INSERT INTO `t_attendance` VALUES (48, 3, '2019-01-18 18:22:26', 1);
INSERT INTO `t_attendance` VALUES (49, 2, '2019-01-18 18:24:26', 1);
INSERT INTO `t_attendance` VALUES (50, 4, '2019-01-18 18:26:52', 1);
INSERT INTO `t_attendance` VALUES (51, 1, '2019-01-18 18:30:15', 1);
INSERT INTO `t_attendance` VALUES (52, 1, '2019-01-18 18:32:44', 1);
INSERT INTO `t_attendance` VALUES (53, 1, '2019-01-20 12:13:45', 1);

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `departmentmember` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`departmentid`) USING BTREE,
  INDEX `departmentname`(`departmentname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (1, '销售部', 25);
INSERT INTO `t_department` VALUES (2, '人事部', 0);
INSERT INTO `t_department` VALUES (3, '设计部', 0);
INSERT INTO `t_department` VALUES (4, '财务部', 0);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '系统菜单', 0, NULL, 'mdi mdi-file-document-box');
INSERT INTO `t_permission` VALUES (4, '人事管理系统', 1, NULL, 'mdi mdi-human-handsdown');
INSERT INTO `t_permission` VALUES (5, '职工信息管理', 4, '/user/index', NULL);
INSERT INTO `t_permission` VALUES (6, '部门信息管理', 4, '/department/index', NULL);
INSERT INTO `t_permission` VALUES (7, '工资管理系统', 1, NULL, 'mdi mdi-square-inc-cash');
INSERT INTO `t_permission` VALUES (10, '工资记录查询', 7, '/salary/index', NULL);
INSERT INTO `t_permission` VALUES (11, '销售管理系统', 1, '', 'mdi mdi-cart');
INSERT INTO `t_permission` VALUES (12, '销售产品管理', 11, '/product/index', NULL);
INSERT INTO `t_permission` VALUES (13, '员工销售记录管理', 11, '/saleRecord/index', NULL);
INSERT INTO `t_permission` VALUES (14, '产品销售', 11, '/product/sale', NULL);
INSERT INTO `t_permission` VALUES (15, '销售任务分配', 11, '/task/add', NULL);
INSERT INTO `t_permission` VALUES (16, '销售完成情况统计', 11, '/saleRecord/statistics', NULL);
INSERT INTO `t_permission` VALUES (17, '权限管理', 1, NULL, 'mdi mdi-settings');
INSERT INTO `t_permission` VALUES (18, '角色许可分配', 17, '/role/index', NULL);
INSERT INTO `t_permission` VALUES (19, '考勤信息管理', 4, '/attendance/index', NULL);
INSERT INTO `t_permission` VALUES (22, '个人所得税管理', 7, '/salary/taxIndex', NULL);
INSERT INTO `t_permission` VALUES (23, '销售库存查询', 11, '/product/query', NULL);
INSERT INTO `t_permission` VALUES (24, '工资发放', 7, '/salarySend/index', NULL);
INSERT INTO `t_permission` VALUES (25, '个人销售记录查询', 11, '/saleRecord/query', NULL);
INSERT INTO `t_permission` VALUES (26, '员工销售额统计', 11, '/saleRecord/volume', NULL);

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `departmentid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `departmentid`(`departmentid`) USING BTREE,
  INDEX `position`(`position`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES (1, '销售员', 6000.00, 1);
INSERT INTO `t_position` VALUES (2, '销售经理', 10000.00, 1);
INSERT INTO `t_position` VALUES (3, '人事经理', 10000.00, 2);
INSERT INTO `t_position` VALUES (4, '设计师', 8000.00, 3);
INSERT INTO `t_position` VALUES (5, '设计总监', 15000.00, 3);
INSERT INTO `t_position` VALUES (6, '财务总监', 12000.00, 4);

-- ----------------------------
-- Table structure for t_position_change
-- ----------------------------
DROP TABLE IF EXISTS `t_position_change`;
CREATE TABLE `t_position_change`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `oldposition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newposition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_user`(`userid`) USING BTREE,
  CONSTRAINT `position_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES (1, '手机', 2000.00, '一部手机', 0);
INSERT INTO `t_product` VALUES (2, '电脑', 6000.00, '一部电脑', 20);
INSERT INTO `t_product` VALUES (5, '法拉利', 4500000.00, '一辆跑车', 6);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员');
INSERT INTO `t_role` VALUES (2, '人事经理');
INSERT INTO `t_role` VALUES (3, '财务总监');
INSERT INTO `t_role` VALUES (4, '销售经理');
INSERT INTO `t_role` VALUES (5, '销售人员');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NULL DEFAULT NULL,
  `permissionid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permissionid`(`permissionid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 449 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES (380, 4, 1);
INSERT INTO `t_role_permission` VALUES (381, 4, 11);
INSERT INTO `t_role_permission` VALUES (382, 4, 12);
INSERT INTO `t_role_permission` VALUES (383, 4, 13);
INSERT INTO `t_role_permission` VALUES (384, 4, 14);
INSERT INTO `t_role_permission` VALUES (385, 4, 15);
INSERT INTO `t_role_permission` VALUES (386, 4, 16);
INSERT INTO `t_role_permission` VALUES (387, 4, 23);
INSERT INTO `t_role_permission` VALUES (388, 4, 25);
INSERT INTO `t_role_permission` VALUES (389, 4, 26);
INSERT INTO `t_role_permission` VALUES (390, 3, 1);
INSERT INTO `t_role_permission` VALUES (391, 3, 7);
INSERT INTO `t_role_permission` VALUES (392, 3, 10);
INSERT INTO `t_role_permission` VALUES (393, 3, 22);
INSERT INTO `t_role_permission` VALUES (394, 3, 24);
INSERT INTO `t_role_permission` VALUES (400, 1, 1);
INSERT INTO `t_role_permission` VALUES (401, 1, 4);
INSERT INTO `t_role_permission` VALUES (402, 1, 5);
INSERT INTO `t_role_permission` VALUES (403, 1, 6);
INSERT INTO `t_role_permission` VALUES (404, 1, 19);
INSERT INTO `t_role_permission` VALUES (405, 1, 7);
INSERT INTO `t_role_permission` VALUES (406, 1, 10);
INSERT INTO `t_role_permission` VALUES (407, 1, 22);
INSERT INTO `t_role_permission` VALUES (408, 1, 24);
INSERT INTO `t_role_permission` VALUES (409, 1, 11);
INSERT INTO `t_role_permission` VALUES (410, 1, 12);
INSERT INTO `t_role_permission` VALUES (411, 1, 13);
INSERT INTO `t_role_permission` VALUES (412, 1, 14);
INSERT INTO `t_role_permission` VALUES (413, 1, 15);
INSERT INTO `t_role_permission` VALUES (414, 1, 16);
INSERT INTO `t_role_permission` VALUES (415, 1, 23);
INSERT INTO `t_role_permission` VALUES (416, 1, 25);
INSERT INTO `t_role_permission` VALUES (417, 1, 26);
INSERT INTO `t_role_permission` VALUES (418, 1, 17);
INSERT INTO `t_role_permission` VALUES (419, 1, 18);
INSERT INTO `t_role_permission` VALUES (420, 5, 1);
INSERT INTO `t_role_permission` VALUES (421, 5, 11);
INSERT INTO `t_role_permission` VALUES (422, 5, 14);
INSERT INTO `t_role_permission` VALUES (423, 5, 23);
INSERT INTO `t_role_permission` VALUES (424, 5, 25);
INSERT INTO `t_role_permission` VALUES (445, 2, 1);
INSERT INTO `t_role_permission` VALUES (446, 2, 4);
INSERT INTO `t_role_permission` VALUES (447, 2, 5);
INSERT INTO `t_role_permission` VALUES (448, 2, 6);
INSERT INTO `t_role_permission` VALUES (449, 2, 19);

-- ----------------------------
-- Table structure for t_salary
-- ----------------------------
DROP TABLE IF EXISTS `t_salary`;
CREATE TABLE `t_salary`  (
  `userid` int(11) NOT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workagesalary` decimal(10, 2) NULL DEFAULT NULL,
  `positionsalary` decimal(10, 2) NULL DEFAULT NULL,
  `achievementsalary` decimal(10, 2) NULL DEFAULT NULL,
  `absencefine` decimal(10, 2) NULL DEFAULT NULL,
  `old` decimal(10, 2) NULL DEFAULT NULL,
  `medical` decimal(10, 2) NULL DEFAULT NULL,
  `unemployment` decimal(10, 2) NULL DEFAULT NULL,
  `injury` decimal(10, 2) NULL DEFAULT NULL,
  `bear` decimal(10, 2) NULL DEFAULT NULL,
  `house` decimal(10, 2) NULL DEFAULT NULL,
  `insurance` decimal(10, 2) NULL DEFAULT NULL,
  `tax` decimal(10, 2) NULL DEFAULT NULL,
  `shouldsalary` decimal(10, 2) NULL DEFAULT NULL,
  `realsalary` decimal(10, 2) NULL DEFAULT NULL,
  `month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`, `month`) USING BTREE,
  CONSTRAINT `t_salary_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_salary
-- ----------------------------
INSERT INTO `t_salary` VALUES (1, 'admin', 200.00, 0.00, 18000.00, 0.00, 364.00, 1456.00, 182.00, 0.00, 0.00, 637.00, 2639.00, 846.10, 15561.00, 14714.90, '2019-01');
INSERT INTO `t_salary` VALUES (2, 'HRD', 1100.00, 10000.00, 0.00, 8666.67, 48.67, 194.67, 24.33, 0.00, 0.00, 85.17, 352.84, 0.00, 2080.49, 2080.49, '2019-01');
INSERT INTO `t_salary` VALUES (3, 'cfo', 100.00, 12000.00, 0.00, 12000.00, 2.00, 8.00, 1.00, 0.00, 0.00, 3.50, 14.50, 0.00, 85.50, 85.50, '2019-01');
INSERT INTO `t_salary` VALUES (4, 'salemanager', 100.00, 10000.00, 0.00, 10000.00, 2.00, 8.00, 1.00, 0.00, 0.00, 3.50, 14.50, 0.00, 85.50, 85.50, '2019-01');

-- ----------------------------
-- Table structure for t_salerecord
-- ----------------------------
DROP TABLE IF EXISTS `t_salerecord`;
CREATE TABLE `t_salerecord`  (
  `salerecordid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productid` int(11) NULL DEFAULT NULL,
  `productname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saletime` datetime(0) NOT NULL,
  `salecount` int(11) NOT NULL,
  `salemoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`salerecordid`) USING BTREE,
  INDEX `product_id`(`productid`) USING BTREE,
  INDEX `producname`(`productname`) USING BTREE,
  INDEX `realname`(`realname`) USING BTREE,
  INDEX `t_salerecord_ibfk_1`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_salerecord
-- ----------------------------
INSERT INTO `t_salerecord` VALUES (1, 1, '黄文源', 1, '手机', '2019-01-16 00:00:00', 20, 100000.00);
INSERT INTO `t_salerecord` VALUES (11, 1, '1', 1, '手机', '2019-01-13 15:01:40', 5, 10000.00);
INSERT INTO `t_salerecord` VALUES (20, 1, '黄文源', 1, '手机', '2019-01-14 11:08:04', 10, 20000.00);
INSERT INTO `t_salerecord` VALUES (21, 1, 'admin', 1, '手机', '2019-01-17 15:48:00', 10, 20000.00);
INSERT INTO `t_salerecord` VALUES (23, 1, 'admin', 1, '手机', '2019-01-17 17:17:45', 10, 20000.00);
INSERT INTO `t_salerecord` VALUES (32, 1, 'admin', 1, '手机', '2019-01-17 17:30:22', 10, 20000.00);
INSERT INTO `t_salerecord` VALUES (35, 1, 'admin', 1, '手机', '2019-01-17 17:38:40', 2, 4000.00);
INSERT INTO `t_salerecord` VALUES (36, 1, 'admin', 1, '手机', '2019-01-17 17:39:01', 1, 2000.00);
INSERT INTO `t_salerecord` VALUES (37, 1, 'admin', 1, '手机', '2019-01-17 17:39:36', 2, 4000.00);
INSERT INTO `t_salerecord` VALUES (40, 1, 'admin', 1, '手机', '2019-01-17 23:20:18', 2, 4000.00);
INSERT INTO `t_salerecord` VALUES (50, 55, '黄文源', 1, '手机', '2019-02-18 00:22:17', 60, 120000.00);
INSERT INTO `t_salerecord` VALUES (52, 1, 'admin', 1, '手机', '2019-03-18 00:28:22', 110, 220000.00);
INSERT INTO `t_salerecord` VALUES (53, 4, 'salemanager', 6, '捷豹', '2019-03-01 15:02:12', 1, 1000000.00);
INSERT INTO `t_salerecord` VALUES (54, 4, 'salemanager', 5, '法拉利', '2019-03-17 15:02:24', 2, 9000000.00);
INSERT INTO `t_salerecord` VALUES (56, 1, 'admin', 5, '法拉利', '2019-01-18 17:47:11', 1, 4500000.00);
INSERT INTO `t_salerecord` VALUES (57, 4, 'salemanager', 1, '手机', '2019-01-18 18:28:07', 20, 40000.00);

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productid` int(11) NULL DEFAULT NULL,
  `productname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskassign` int(11) NOT NULL,
  `taskdate` date NULL DEFAULT NULL,
  `taskmoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE,
  INDEX `productid`(`productid`) USING BTREE,
  INDEX `username`(`realname`) USING BTREE,
  INDEX `productname`(`productname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES (1, 1, 'admin', 1, '手机', 20, '2019-01-16', 20000.00);
INSERT INTO `t_task` VALUES (5, 5, 'saler', 1, '手机', 1, '2019-01-16', 2000.00);
INSERT INTO `t_task` VALUES (6, 4, 'salemanager', 1, '手机', 1, '2019-01-17', 2000.00);
INSERT INTO `t_task` VALUES (7, 1, 'admin', 6, '捷豹', 1, '2019-01-17', 1000000.00);
INSERT INTO `t_task` VALUES (8, 4, 'salemanager', 6, '捷豹', 1, '2019-01-17', 1000000.00);
INSERT INTO `t_task` VALUES (9, 55, '黄文源', 6, '捷豹', 1, '2019-01-17', 1000000.00);
INSERT INTO `t_task` VALUES (10, 1, 'admin', 1, '手机', 110, '2019-01-18', 220000.00);
INSERT INTO `t_task` VALUES (11, 1, 'admin', 5, '法拉利', 1, '2019-01-18', 4500000.00);

-- ----------------------------
-- Table structure for t_tax
-- ----------------------------
DROP TABLE IF EXISTS `t_tax`;
CREATE TABLE `t_tax`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double(10, 2) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `interval` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tax
-- ----------------------------
INSERT INTO `t_tax` VALUES (2, 0.10, 2, '3000~12000');
INSERT INTO `t_tax` VALUES (3, 0.20, 3, '12000~25000');
INSERT INTO `t_tax` VALUES (4, 0.25, 4, '25000~3500');
INSERT INTO `t_tax` VALUES (5, 0.30, 5, '35000~55000');
INSERT INTO `t_tax` VALUES (6, 0.35, 6, '55500~80000');
INSERT INTO `t_tax` VALUES (7, 0.45, 7, '>80000');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(3) NOT NULL DEFAULT 0,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(1) NOT NULL DEFAULT 0,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workage` int(2) NOT NULL DEFAULT 0,
  `resume` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `departmentname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `username_2`(`username`, `realname`) USING BTREE,
  INDEX `realname`(`realname`) USING BTREE,
  INDEX `resumeid`(`resume`) USING BTREE,
  INDEX `departmentname`(`departmentname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '123', 20, 'admin', 1, '16c8c4d6.gif', 2, '', '销售部', '销售经理', NULL);
INSERT INTO `t_user` VALUES (2, 'HRD', '123', 23, 'HRD', 1, '16c8c4d6.gif', 11, '', '人事部', '人事经理', '');
INSERT INTO `t_user` VALUES (3, 'CFO', '123', 20, 'cfo', 0, '16c8c4d6.gif', 1, '', '财务部', '财务总监', NULL);
INSERT INTO `t_user` VALUES (4, 'MD', '123', 20, 'salemanager', 0, '16c8c4d6.gif', 1, '', '销售部', '销售经理', NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `roleid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1, 1);
INSERT INTO `t_user_role` VALUES (2, 2, 2);
INSERT INTO `t_user_role` VALUES (3, 3, 3);
INSERT INTO `t_user_role` VALUES (4, 4, 4);
INSERT INTO `t_user_role` VALUES (5, 5, 5);
INSERT INTO `t_user_role` VALUES (22, 56, 2);
INSERT INTO `t_user_role` VALUES (24, 58, 5);

-- ----------------------------
-- Procedure structure for dept_yearsalary
-- ----------------------------
DROP PROCEDURE IF EXISTS `dept_yearsalary`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dept_yearsalary`(IN deptname varchar(50),IN year int)
BEGIN
select sum(t_salary.realsalary)
from t_user,t_salary
where  t_user.userid = t_salary.userid and DATE_FORMAT(`month`,'%Y') = year and t_user.departmentname = deptname
group by deptname;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_attendance
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_attendance`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_attendance`(IN userid int(11))
BEGIN
insert into t_attendance(id,userid,attendancedate,attendanceflag) 
values(default,userid,NOW(),1);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_dept
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_dept`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_dept`(IN username varchar(20),IN password varchar(20),IN age int,IN  realname varchar(20),In sex int(1),IN photo varchar(200),IN workage int(2),IN introduction varchar(2000),IN departmentid int(11),IN departmentname varchar(255),IN position varchar(50))
BEGIN
insert into t_user(userid,username,password,age,realname,sex,photo,workage,introduction,departmentid,departmentname,position,createtime) values(default,username,password,age,realname,sex,photo,workage,introduction,departmentid,departmentname,position,NOW());
	CASE 

      when departmentid = 1 
			
			THEN  update t_salary set positionsalary = 2000 where realname = t_salary.realname;

    END CASE;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for monthtop_sale
-- ----------------------------
DROP PROCEDURE IF EXISTS `monthtop_sale`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `monthtop_sale`(IN month VARCHAR(50),OUT userid int,OUT realname VARCHAR(50),OUT sum DECIMAL(10,2))
BEGIN

	DECLARE sum DECIMAL(10,2);
	DECLARE realname VARCHAR(50);
	
	select t_salerecord.userid,t_salerecord.realname,sum(salemoney) 
	from t_salerecord where DATE_FORMAT(saletime,'%Y-%m') = `month`  GROUP BY userid order by sum(salemoney) desc limit 0,3;
	
	SELECT userid,realname,sum;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for month_sale
-- ----------------------------
DROP PROCEDURE IF EXISTS `month_sale`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `month_sale`(IN userid int,IN month VARCHAR(50),OUT sum DECIMAL(10,2))
BEGIN
	DECLARE sum DECIMAL(10,2);
	select sum(salemoney) into sum
	from t_salerecord where t_salerecord.userid = userid and DATE_FORMAT(saletime,'%Y-%m') = month;
	SELECT sum;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for myp8
-- ----------------------------
DROP PROCEDURE IF EXISTS `myp8`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `myp8`(inout a int,inout b int)
BEGIN
	set a=a*2;
   set b=b*2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sale
-- ----------------------------
DROP PROCEDURE IF EXISTS `sale`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sale`(IN userid int,IN productid int,IN salecount int)
BEGIN

	DECLARE pname varchar(50);
	DECLARE price DECIMAL(10,2);
	DECLARE salemoney DECIMAL(10,2);
	DECLARE uname VARCHAR(50);
	SELECT t_product.`name` into pname
	from t_product where productid = t_product.id;
	
	SELECT t_product.price into price
	from t_product where productid = t_product.id;
	
	SELECT t_user.realname into uname
	from t_user WHERE t_user.userid = userid;
	
	set salemoney = price * salecount;
	
	insert into t_salerecord(salerecordid,userid,realname,productid,productname,saletime,salecount,salemoney) values(DEFAULT,userid,uname,productid,pname,NOW(),salecount,salemoney);
	update t_product set t_product.stock = t_product.stock - salecount
    where t_product.id = productid;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for user_monthsalary
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_monthsalary`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_monthsalary`(IN userid int,IN month date)
BEGIN
declare absencefine decimal(10,2) DEFAULT 0;#缺勤扣除
declare attendanceday int DEFAULT 0;#缺勤天数
declare positionsalary decimal(10,2) DEFAULT 0;#岗位工资
declare workagesalary decimal(10,2) DEFAULT 0;#工龄工资
declare workage int DEFAULT 0;#工龄
declare achievementsalary decimal(10,2) DEFAULT 0;#绩效工资
declare salemoney decimal(10,2) DEFAULT 0;#月销售业绩
declare taskmoney decimal(10,2) DEFAULT 0;#月规定业绩
declare old decimal(10,2) DEFAULT 0;#养老保险
declare medical decimal(10,2) DEFAULT 0;#医疗保险
declare unemployment decimal(10,2) DEFAULT 0;#失业保险
declare injury decimal(10,2) DEFAULT 0;#工商保险
declare bear decimal(10,2) DEFAULT 0;#生育保险
declare house decimal(10,2) DEFAULT 0;#住房公积金
declare insurance decimal(10,2) DEFAULT 0;#五险一金
declare beforetaxsalary decimal(10,2) DEFAULT 0;#税前工资
declare rate double DEFAULT 0;#所得税税率
declare tax decimal(10,2) DEFAULT 0;#个人所得税
declare taxbase decimal(10,2) DEFAULT 0;#个人所得税应交部分
declare shouldsalary decimal(10,2) DEFAULT 0;#税前工资
declare realsalary decimal(10,2) DEFAULT 0;#税后工资
declare realname varchar(50);#职工名

  
#查询出对应的职工名
SELECT t_user.realname into realname
from t_user WHERE t_user.userid = userid;


#设置工龄工资
select t_user.workage into workage#工龄
from t_user
where t_user.userid = userid;
set workagesalary = workage * 100;#工龄工资

select ifnull(sum(t_task.taskmoney),0) as sum into taskmoney#月规定业绩
from t_task 
where t_task.userid = userid and DATE_FORMAT(t_task.taskdate,'%Y-%m') = DATE_FORMAT(month,'%Y-%m');

select ifnull(sum(t_salerecord.salemoney),0) into salemoney #月实际销售业绩
from t_salerecord 
where t_salerecord.userid = userid and DATE_FORMAT(t_salerecord.saletime,'%Y-%m') = DATE_FORMAT(month,'%Y-%m');

#设置绩效工资
  IF salemoney >= taskmoney
  THEN set achievementsalary = 0.05 * (salemoney -taskmoney); #绩效工资
  ELSE 
  set achievementsalary = 0.1 * (salemoney-taskmoney); #绩效工资
  END IF;
  
  select ifnull(salary,0) into positionsalary#岗位工资
  from t_position,t_user
  where t_position.position = t_user.position and t_user.userid = userid;
	
	
	  
	select count(*) into attendanceday #出勤天数
	from t_attendance,t_salary 
	where t_attendance.userid = userid and  DATE_FORMAT(t_attendance.attendancedate,'%Y-%m') = DATE_FORMAT(month,'%Y-%m') and t_attendance.attendanceflag=1;
	
	#设置缺勤扣除
	set absencefine  = (1 - attendanceday / 30)* positionsalary;#缺勤扣除

 #设置税前、五险一金前工资
  set beforetaxsalary = positionsalary + achievementsalary + workagesalary - 
  absencefine ;
	
 #五险一金
 set old = beforetaxsalary*0.02;#养老保险
 set medical = beforetaxsalary*0.08;#医疗保险
 set unemployment = beforetaxsalary*0.01;#失业保险
 set injury = 0;#工商保险
 set bear =0;#生育保险
 set house = beforetaxsalary*0.035;#住房公积金
 set insurance = old+medical+unemployment+injury+bear+house;#五险一金总额
 
 set taxbase = beforetaxsalary-insurance-5000;#所得税应缴纳部分

  #个人所得税

	CASE 

       when taxbase >=0 and taxbase <=3000 
       THEN 
       SELECT t_tax.rate into rate from t_tax where t_tax.level = 1;
       set tax = rate*taxbase ; 

      when taxbase >3000 and taxbase <= 12000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 2;
      set tax = rate*taxbase-210;

      when taxbase >12000 and taxbase <= 25000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 3;
      set tax = rate*taxbase-1410;

     when taxbase >25000 and taxbase <= 35000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 4;
      set tax = rate*taxbase-2660;
      
     when taxbase >35000 and taxbase <= 55000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 5;
      set tax = rate*taxbase-4410;
      
            
     when taxbase >55000 and taxbase <= 80000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 6;
      set tax = rate*taxbase-4410;
      
       when taxbase > 80000
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 7;
      set tax = rate*taxbase-15160;
      
	ELSE
     set tax = 0;
    END CASE;
	

   #设置税前工资
   set shouldsalary = positionsalary + workagesalary + achievementsalary - absencefine - insurance;
   #设置税后工资
     set realsalary = positionsalary + workagesalary + achievementsalary - absencefine - insurance - tax;
     #插入到工资表
  insert ignore into t_salary(userid,realname,workagesalary,positionsalary,achievementsalary,absencefine,old,medical,unemployment,injury,bear,house,insurance,tax,shouldsalary,realsalary,month)
  values(userid,realname,workagesalary,positionsalary,achievementsalary,absencefine,old,medical,unemployment,injury,bear,house,insurance,tax,shouldsalary,realsalary,DATE_FORMAT(month,'%Y-%m'));
			#查出工资表中的所有数据
	select * from t_salary;
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for user_sale
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_sale`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_sale`(IN userid INT,IN saletime VARCHAR(50),OUT rate double)
BEGIN
	DECLARE
		salemoney DECIMAL ( 10, 2 );
	DECLARE
		taskmoney DECIMAL ( 10, 2 );

	SELECT
		sum(t_task.taskmoney) INTO taskmoney 
	FROM
		t_task 
	WHERE
		t_task.userid = userid 
		AND DATE_FORMAT(t_task.taskdate,'%Y-%m')=saletime;
		
	SELECT
		sum(t_salerecord.salemoney) INTO salemoney 
	FROM
		t_salerecord 
	WHERE
		t_salerecord.userid = userid 
		AND DATE_FORMAT( t_salerecord.saletime, '%Y-%m' ) =  saletime;
	
	SET rate = salemoney / taskmoney;
	SELECT rate;
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for user_yearsalary
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_yearsalary`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_yearsalary`(IN userid int,IN year int)
BEGIN
select sum(t_salary.realsalary)
from t_user,t_salary
where userid = t_user.userid and t_user.userid = t_salary.userid and DATE_FORMAT(month,'%Y') = year
group by t_user.realname;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for year_sale
-- ----------------------------
DROP PROCEDURE IF EXISTS `year_sale`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `year_sale`(IN userid int,IN year varchar(50),OUT sum DECIMAL(10,2))
BEGIN
  DECLARE sum DECIMAL(10,2);
	
	select sum(salemoney) into sum
	from t_salerecord where t_salerecord.userid = userid and DATE_FORMAT(saletime,'%Y') = year;
	SELECT sum;
	
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
