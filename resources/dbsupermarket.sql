/*
 Navicat Premium Data Transfer

 Source Server         : lxj
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : myweb

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 20/09/2019 10:34:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dbsupermarket
-- ----------------------------
DROP TABLE IF EXISTS `dbsupermarket`;
CREATE TABLE `dbsupermarket`  (
  `GID` int(255) NOT NULL AUTO_INCREMENT,
  `GNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GPRICE` float NULL DEFAULT NULL,
  PRIMARY KEY (`GID`) USING BTREE,
  UNIQUE INDEX `GNAME`(`GNAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dbsupermarket
-- ----------------------------
INSERT INTO `dbsupermarket` VALUES (19, '阿斯顿撒', 555);
INSERT INTO `dbsupermarket` VALUES (22, '熊熊八号', 9);
INSERT INTO `dbsupermarket` VALUES (23, '熊熊9号', 10);
INSERT INTO `dbsupermarket` VALUES (24, '熊熊六号', 10);

SET FOREIGN_KEY_CHECKS = 1;
