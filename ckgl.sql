/*
Navicat MySQL Data Transfer

Source Server         : ck
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ckgl

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-12-09 16:13:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ckb`
-- ----------------------------
DROP TABLE IF EXISTS `ckb`;
CREATE TABLE `ckb` (
  `ckid` varchar(20) COLLATE utf8_bin NOT NULL,
  `hno` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `gno` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ck_num` int(11) DEFAULT NULL,
  `ck_date` date DEFAULT NULL,
  `ck_zj` int(255) DEFAULT NULL,
  PRIMARY KEY (`ckid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ckb
-- ----------------------------
INSERT INTO `ckb` VALUES ('2022129102735', 'DB001', '101', '10', '2022-12-09', '13000');
INSERT INTO `ckb` VALUES ('2022129102811', 'DA001', '101', '10', '2022-11-09', '20000');
INSERT INTO `ckb` VALUES ('202212981646', 'DB001', '101', '30', '2022-12-09', '39000');
INSERT INTO `ckb` VALUES ('202212981711', 'DA001', '101', '10', '2022-12-09', '20000');

-- ----------------------------
-- Table structure for `glyb`
-- ----------------------------
DROP TABLE IF EXISTS `glyb`;
CREATE TABLE `glyb` (
  `gno` varchar(255) COLLATE utf8_bin NOT NULL,
  `gpass` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gsex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gcsrq` date DEFAULT NULL,
  `gtele` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`gno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of glyb
-- ----------------------------
INSERT INTO `glyb` VALUES ('101', '123', '张海', '男', '2022-12-01', '13412341233');
INSERT INTO `glyb` VALUES ('102', '123', '王晨', '女', null, '15814211112');
INSERT INTO `glyb` VALUES ('103', '123', '张海虹', '女', null, '15863597155');
INSERT INTO `glyb` VALUES ('104', '123', '赵红', '女', '2022-12-02', '13412344321');

-- ----------------------------
-- Table structure for `hpb`
-- ----------------------------
DROP TABLE IF EXISTS `hpb`;
CREATE TABLE `hpb` (
  `hno` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `hname` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `hsort` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `hfact` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of hpb
-- ----------------------------
INSERT INTO `hpb` VALUES ('DA001', '冰箱', '家电', '新飞电器集团有限公司', '2000');
INSERT INTO `hpb` VALUES ('DA002', '冰箱', '家电', '海尔电器集团有限公司', '2100');
INSERT INTO `hpb` VALUES ('DA003', '冰箱', '家电', '容声电器集团有限公司', '2200');
INSERT INTO `hpb` VALUES ('DB001', '彩电', '家电', '海尔电器集团有限公司', '1300');
INSERT INTO `hpb` VALUES ('DB002', '彩电', '家电', '长虹电器集团有限公司', '1400');
INSERT INTO `hpb` VALUES ('DB001', '洗衣机', '家电', '海尔电器集团有限公司', '30');
INSERT INTO `hpb` VALUES ('RA001', '洗衣粉', '日用品', '上海冬丽公司', '20');
INSERT INTO `hpb` VALUES ('RB001', '热水瓶', '日用品', '天津海河公司', '50');
INSERT INTO `hpb` VALUES ('RC001', '马桶', '日用品', '上海苏比可洁具公司', '1000');

-- ----------------------------
-- Table structure for `rkb`
-- ----------------------------
DROP TABLE IF EXISTS `rkb`;
CREATE TABLE `rkb` (
  `rkid` varchar(20) COLLATE utf8_bin NOT NULL,
  `hno` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `gno` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `rk_num` int(11) DEFAULT NULL,
  `rk_price` int(11) DEFAULT NULL,
  `rk_date` date DEFAULT NULL,
  `rk_zj` int(11) DEFAULT NULL,
  PRIMARY KEY (`rkid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rkb
-- ----------------------------
INSERT INTO `rkb` VALUES ('202109885628', 'DB001', '102', '15', '1400', '2021-09-07', '21000');
INSERT INTO `rkb` VALUES ('202110885628', 'DB001', '102', '15', '1400', '2021-10-07', '21000');
INSERT INTO `rkb` VALUES ('202212885526', 'DA001', '101', '10', '2200', '2022-12-05', '22000');
INSERT INTO `rkb` VALUES ('202212885553', 'DA001', '101', '10', '2300', '2022-12-06', '23000');
INSERT INTO `rkb` VALUES ('202212885613', 'DB001', '101', '10', '1400', '2022-12-07', '14000');
INSERT INTO `rkb` VALUES ('202212885628', 'DB001', '102', '15', '1400', '2022-12-07', '21000');
