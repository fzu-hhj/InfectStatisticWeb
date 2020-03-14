/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : infectstatistic

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-03-12 19:48:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cure`
-- ----------------------------
DROP TABLE IF EXISTS `cure`;
CREATE TABLE `cure` (
  `时间` char(12) NOT NULL,
  `全国` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `安徽` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `澳门` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `北京` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `重庆` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `福建` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `甘肃` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `广东` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `广西壮族` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `贵州` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `海南` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `河北` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `河南` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `黑龙江` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `湖北` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `湖南` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `江西` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `吉林` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `江苏` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `辽宁` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `内蒙古` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `宁夏回族` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `青海` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `山西` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `山东` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `陕西` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `上海` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `四川` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `天津` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `台湾` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `西藏` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `新疆` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `香港` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `云南` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `浙江` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  PRIMARY KEY (`时间`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cure
-- ----------------------------
INSERT INTO `cure` VALUES ('2020-01-19', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-20', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-21', '00000000025', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000025', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-22', '00000000028', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000028', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-23', '00000000030', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000028', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-24', '00000000034', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000031', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-25', '00000000037', '00000000000', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000032', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-26', '00000000047', '00000000000', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000042', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-27', '00000000051', '00000000000', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000004', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000044', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-28', '00000000059', '00000000000', '00000000000', '00000000004', '00000000000', '00000000000', '00000000000', '00000000005', '00000000000', '00000000001', '00000000000', '00000000000', '00000000000', '00000000000', '00000000044', '00000000000', '00000000002', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000003', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000');
INSERT INTO `cure` VALUES ('2020-01-29', '00000000066', '00000000000', '00000000000', '00000000004', '00000000000', '00000000000', '00000000000', '00000000006', '00000000000', '00000000001', '00000000001', '00000000000', '00000000001', '00000000000', '00000000044', '00000000000', '00000000003', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000004', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000002');
INSERT INTO `cure` VALUES ('2020-01-30', '00000000089', '00000000002', '00000000000', '00000000005', '00000000001', '00000000000', '00000000000', '00000000009', '00000000000', '00000000001', '00000000001', '00000000000', '00000000002', '00000000000', '00000000054', '00000000000', '00000000003', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000005', '00000000001', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000003');
INSERT INTO `cure` VALUES ('2020-01-31', '00000000134', '00000000003', '00000000000', '00000000005', '00000000001', '00000000000', '00000000000', '00000000010', '00000000000', '00000000002', '00000000001', '00000000000', '00000000003', '00000000000', '00000000080', '00000000002', '00000000007', '00000000001', '00000000002', '00000000001', '00000000000', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000005', '00000000001', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000001', '00000000008');
INSERT INTO `cure` VALUES ('2020-02-01', '00000000213', '00000000003', '00000000000', '00000000009', '00000000001', '00000000000', '00000000000', '00000000012', '00000000000', '00000000002', '00000000001', '00000000003', '00000000003', '00000000000', '00000000130', '00000000003', '00000000009', '00000000001', '00000000005', '00000000001', '00000000001', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000009', '00000000003', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000002', '00000000014');
INSERT INTO `cure` VALUES ('2020-02-02', '00000000293', '00000000005', '00000000000', '00000000009', '00000000003', '00000000000', '00000000003', '00000000014', '00000000000', '00000000002', '00000000004', '00000000003', '00000000003', '00000000002', '00000000179', '00000000008', '00000000010', '00000000001', '00000000006', '00000000001', '00000000001', '00000000000', '00000000000', '00000000001', '00000000000', '00000000000', '00000000010', '00000000003', '00000000000', '00000000000', '00000000000', '00000000000', '00000000000', '00000000003', '00000000022');