/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : ishop

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-10-10 09:03:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tc_accreds
-- ----------------------------
DROP TABLE IF EXISTS `tc_accreds`;
CREATE TABLE `tc_accreds` (
  `accredId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `accredName` varchar(50) NOT NULL COMMENT '名称',
  `accredImg` varchar(150) NOT NULL DEFAULT '0' COMMENT '图标',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志 -1:删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`accredId`),
  KEY `dataFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商家认证项目表';

-- ----------------------------
-- Records of tc_accreds
-- ----------------------------
INSERT INTO `tc_accreds` VALUES ('1', '消保认证商家', 'upload/accreds/2016-09/57edd7551cf4a.png', '1', '2016-06-01 10:41:48');
INSERT INTO `tc_accreds` VALUES ('2', '七天无条件退款', 'upload/accreds/2016-09/57edd7428f5e1.png', '1', '2016-06-01 10:42:22');

-- ----------------------------
-- Table structure for tc_ad_positions
-- ----------------------------
DROP TABLE IF EXISTS `tc_ad_positions`;
CREATE TABLE `tc_ad_positions` (
  `positionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `positionType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '广告类型	1：PC版',
  `positionName` varchar(100) NOT NULL COMMENT '广告位置名称',
  `positionWidth` int(11) NOT NULL DEFAULT '0' COMMENT '建议宽度',
  `positionHeight` int(11) NOT NULL DEFAULT '0' COMMENT '建议高度',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '广告位置代码',
  `positionCode` varchar(20) DEFAULT NULL COMMENT '有效状态	1:有效 -1:无效',
  `apSort` int(11) NOT NULL COMMENT '排序号',
  PRIMARY KEY (`positionId`),
  KEY `dataFlag` (`positionType`) USING BTREE,
  KEY `positionCode` (`positionCode`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='广告位置表';

-- ----------------------------
-- Records of tc_ad_positions
-- ----------------------------
INSERT INTO `tc_ad_positions` VALUES ('4', '1', '首页分层1F顶部广告', '1200', '120', '1', 'ads-1-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('5', '1', '首页分层1F左侧广告', '240', '338', '1', 'ads-1-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('6', '1', '首页分层1F右侧广告', '480', '310', '1', 'ads-1-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('7', '1', '首页分层2F顶部广告', '1200', '120', '1', 'ads-2-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('8', '1', '首页分层2F左侧广告', '240', '338', '1', 'ads-2-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('9', '1', '首页分层2F右侧广告', '480', '310', '1', 'ads-2-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('10', '1', '首页分层3F顶部广告', '1200', '120', '1', 'ads-3-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('11', '1', '首页分层3F左侧广告', '240', '338', '1', 'ads-3-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('12', '1', '首页分层3F右侧广告', '480', '310', '1', 'ads-3-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('13', '1', '首页分层4F顶部广告', '1200', '120', '1', 'ads-4-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('14', '1', '首页分层4F左侧广告', '240', '338', '1', 'ads-4-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('15', '1', '首页分层4F右侧广告', '480', '310', '1', 'ads-4-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('16', '1', '首页分层5F顶部广告', '1200', '120', '1', 'ads-5-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('17', '1', '首页分层5F左侧广告', '240', '338', '1', 'ads-5-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('18', '1', '首页分层5F右侧广告', '480', '310', '1', 'ads-5-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('19', '1', '首页分层6F顶部广告', '1200', '120', '1', 'ads-6-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('20', '1', '首页分层6F左侧广告', '240', '338', '1', 'ads-6-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('21', '1', '首页分层6F右侧广告', '480', '310', '1', 'ads-6-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('22', '1', '首页分层7F顶部广告', '1200', '120', '1', 'ads-7-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('23', '1', '首页分层7F左侧广告', '240', '338', '1', 'ads-7-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('24', '1', '首页分层7F右侧广告', '480', '310', '1', 'ads-7-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('25', '1', '首页分层8F顶部广告', '1200', '120', '1', 'ads-8-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('26', '1', '首页分层8F左侧广告', '240', '338', '1', 'ads-8-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('27', '1', '首页分层8F右侧广告', '480', '310', '1', 'ads-8-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('28', '1', '首页分层9F顶部广告', '1200', '120', '1', 'ads-9-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('29', '1', '首页分层9F左侧广告', '240', '338', '1', 'ads-9-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('30', '1', '首页分层9F右侧广告', '480', '310', '1', 'ads-9-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('31', '1', '首页分层10F顶部广告', '1200', '120', '1', 'ads-10-1', '0');
INSERT INTO `tc_ad_positions` VALUES ('32', '1', '首页分层10F左侧广告', '240', '338', '1', 'ads-10-2', '0');
INSERT INTO `tc_ad_positions` VALUES ('33', '1', '首页分层10F右侧广告', '480', '310', '1', 'ads-10-3', '0');
INSERT INTO `tc_ad_positions` VALUES ('34', '1', '首页轮播广告', '1920', '420', '1', 'ads-index', '99');
INSERT INTO `tc_ad_positions` VALUES ('35', '1', '首页顶部广告', '1200', '100', '1', 'index-top-ads', '100');
INSERT INTO `tc_ad_positions` VALUES ('36', '1', '首页资讯下方广告', '210', '68', '1', 'index-art-bottom', '1');

-- ----------------------------
-- Table structure for tc_ads
-- ----------------------------
DROP TABLE IF EXISTS `tc_ads`;
CREATE TABLE `tc_ads` (
  `adId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `adPositionId` int(11) NOT NULL DEFAULT '0' COMMENT '广告位置ID',
  `adFile` varchar(150) NOT NULL COMMENT '广告文件',
  `adName` varchar(100) NOT NULL COMMENT '广告名称',
  `adURL` varchar(150) NOT NULL COMMENT '广告网址',
  `adStartDate` date NOT NULL COMMENT '广告开始日期',
  `adEndDate` date NOT NULL COMMENT '广告结束日期',
  `adSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `adClickNum` int(11) NOT NULL DEFAULT '0' COMMENT '广告点击数',
  `positionType` tinyint(4) DEFAULT '0' COMMENT '广告类型',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`adId`),
  KEY `adPositionId` (`adPositionId`,`adStartDate`,`adEndDate`),
  KEY `adPositionId_2` (`adPositionId`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of tc_ads
-- ----------------------------
INSERT INTO `tc_ads` VALUES ('15', '4', 'upload/adspic/2016-09/57eb93c940b03.jpg', '1F头部广告', '', '2016-09-09', '2017-09-30', '0', '0', '1', '-1', '2016-09-09 18:50:42');
INSERT INTO `tc_ads` VALUES ('16', '5', 'upload/adspic/2016-10/57f7281b79168.jpg', '1F左侧广告', '', '2016-09-09', '2017-09-30', '110', '0', '1', '1', '2016-09-09 18:51:30');
INSERT INTO `tc_ads` VALUES ('17', '6', 'upload/adspic/2016-09/57d29454d96d3.jpg', '1F右侧广告', '', '2016-09-09', '2017-09-30', '0', '0', '1', '-1', '2016-09-09 18:52:12');
INSERT INTO `tc_ads` VALUES ('18', '34', 'upload/adspic/2016-09/57d294c289e74.jpg', '首页广告1', '', '2016-09-09', '2017-09-30', '0', '0', '1', '-1', '2016-09-09 18:54:09');
INSERT INTO `tc_ads` VALUES ('19', '7', 'upload/adspic/2016-10/57f9c17be159b.gif', '2F头部广告', '', '2016-09-09', '2017-09-30', '200', '0', '1', '1', '2016-09-09 19:10:07');
INSERT INTO `tc_ads` VALUES ('20', '10', 'upload/adspic/2016-10/57f8bca4c8c3c.jpg', '3F头部广告', '', '2016-09-09', '2017-09-30', '0', '0', '1', '-1', '2016-09-09 19:10:41');
INSERT INTO `tc_ads` VALUES ('21', '8', 'upload/adspic/2016-10/57fa14787ab52.jpg', '2F左侧广告', '', '2016-09-09', '2017-09-30', '210', '0', '1', '1', '2016-09-09 19:11:51');
INSERT INTO `tc_ads` VALUES ('22', '11', 'upload/adspic/2016-10/57f9e4155fa99.jpg', '3F左侧广告', '', '2016-09-09', '2017-09-30', '310', '0', '1', '1', '2016-09-09 19:12:29');
INSERT INTO `tc_ads` VALUES ('23', '9', 'upload/adspic/2016-10/57f9cf1a694b8.jpg', '2F右侧广告1', '', '2016-09-09', '2017-09-30', '223', '0', '1', '1', '2016-09-09 19:12:59');
INSERT INTO `tc_ads` VALUES ('24', '12', 'upload/adspic/2016-10/57f8bdbcc9a3c.jpg', '3F右侧广告', '', '2016-09-09', '2017-09-30', '0', '0', '1', '-1', '2016-09-09 19:13:30');
INSERT INTO `tc_ads` VALUES ('25', '12', 'upload/adspic/2016-09/57eb95191deb7.jpg', '3242', '', '2016-09-28', '2016-09-30', '0', '0', '1', '-1', '2016-09-28 18:02:09');
INSERT INTO `tc_ads` VALUES ('26', '13', 'upload/adspic/2016-09/57ecbce01e6ad.jpg', '4楼横幅广告', '', '2016-09-29', '2020-09-11', '0', '0', '1', '-1', '2016-09-29 15:04:31');
INSERT INTO `tc_ads` VALUES ('27', '13', 'upload/adspic/2016-09/57ecbd8fd658c.jpg', '4楼横幅广告', '', '2016-09-14', '2020-09-11', '0', '0', '1', '-1', '2016-09-29 15:07:07');
INSERT INTO `tc_ads` VALUES ('28', '34', 'upload/adspic/2016-10/57f88f34d4550.jpg,upload/adspic/2016-10/57f88f34b5d07.jpg,upload/adspic/2016-10/57f88f3502862.jpg,upload/adspic/2016-10/57f88f35', '首页轮播广告', '', '2016-09-29', '2020-10-01', '0', '0', '1', '-1', '2016-09-29 19:49:11');
INSERT INTO `tc_ads` VALUES ('29', '34', 'upload/adspic/2016-09/57ed003634bef.jpg', '22', '', '2016-09-29', '2020-09-18', '0', '0', '1', '-1', '2016-09-29 19:51:28');
INSERT INTO `tc_ads` VALUES ('30', '6', 'upload/adspic/2016-10/57f8bbc7a1ed3.jpg', '1楼右侧广告位', '', '2016-09-30', '2020-09-17', '123', '0', '1', '1', '2016-09-30 15:07:33');
INSERT INTO `tc_ads` VALUES ('31', '6', 'upload/adspic/2016-09/57ee0fcfc5de3.jpg', '1楼右侧2', '', '2016-09-30', '2021-11-05', '0', '0', '1', '-1', '2016-09-30 15:08:34');
INSERT INTO `tc_ads` VALUES ('32', '6', 'upload/adspic/2016-09/57ee100c29a77.jpg', '1楼右侧3', '', '2016-09-30', '2020-09-03', '0', '0', '1', '-1', '2016-09-30 15:11:15');
INSERT INTO `tc_ads` VALUES ('33', '4', 'upload/adspic/2016-10/57f895cae2692.jpg', '1F顶部横幅', '', '2016-09-30', '2020-09-03', '100', '0', '1', '1', '2016-09-30 16:24:27');
INSERT INTO `tc_ads` VALUES ('34', '35', 'upload/adspic/2016-09/57ee2a4cca962.jpg', '首页顶部广告', '', '2013-09-25', '2022-09-09', '1', '0', '1', '1', '2016-09-30 17:03:30');
INSERT INTO `tc_ads` VALUES ('35', '36', 'upload/adspic/2016-10/57f9eb22c2618.jpg', '资讯下边广告', '', '2016-10-08', '2023-10-28', '2', '0', '1', '1', '2016-10-08 14:41:31');
INSERT INTO `tc_ads` VALUES ('36', '34', 'upload/adspic/2016-10/57f8c25cc1e53.jpg', '首页轮播广告1', '', '2016-10-08', '2025-10-10', '11', '0', '1', '1', '2016-10-08 17:54:48');
INSERT INTO `tc_ads` VALUES ('37', '34', 'upload/adspic/2016-10/57f8c2848c9d2.jpg', '首页轮播广告2', '', '2016-10-08', '2023-10-12', '12', '0', '1', '1', '2016-10-08 17:55:31');
INSERT INTO `tc_ads` VALUES ('38', '34', 'upload/adspic/2016-10/57f8c2f22d96c.jpg', '首页轮播广告3', '', '2016-10-08', '2022-10-14', '13', '0', '1', '1', '2016-10-08 17:56:03');
INSERT INTO `tc_ads` VALUES ('39', '34', 'upload/adspic/2016-10/57f8c306ec638.jpg', '首页轮播广告4', '', '2016-10-08', '2022-10-14', '14', '0', '1', '1', '2016-10-08 17:57:42');
INSERT INTO `tc_ads` VALUES ('40', '6', 'upload/adspic/2016-10/57f8c709293b4.jpg', '1F右侧广告2', '', '2016-10-08', '2020-10-16', '122', '0', '1', '1', '2016-10-08 18:14:42');
INSERT INTO `tc_ads` VALUES ('41', '6', 'upload/adspic/2016-10/57f8c9df2e4a8.jpg', '1F右侧广告3', '', '2016-10-08', '2021-10-07', '121', '0', '1', '1', '2016-10-08 18:17:42');
INSERT INTO `tc_ads` VALUES ('42', '9', 'upload/adspic/2016-10/57f9cf3519451.jpg', '2F右侧广告2', '', '2016-10-09', '2021-10-30', '222', '0', '1', '1', '2016-10-09 13:00:35');
INSERT INTO `tc_ads` VALUES ('43', '12', 'upload/adspic/2016-10/57f9e45639d1c.jpg', '3F右侧广告1', '', '2016-10-09', '2020-10-16', '311', '0', '1', '1', '2016-10-09 14:31:59');
INSERT INTO `tc_ads` VALUES ('44', '12', 'upload/adspic/2016-10/57f9e473bba85.jpg', '3F右侧广告2', '', '2016-10-09', '2022-10-13', '312', '0', '1', '1', '2016-10-09 14:32:40');
INSERT INTO `tc_ads` VALUES ('45', '12', 'upload/adspic/2016-10/57f9e49ecb1e3.jpg', '3F右侧广告3', '', '2016-10-09', '2022-10-21', '313', '0', '1', '1', '2016-10-09 14:33:22');
INSERT INTO `tc_ads` VALUES ('46', '12', 'upload/adspic/2016-10/57f9e4c3ed9fd.jpg', '3F右侧广告4', '', '2016-10-09', '2022-10-28', '314', '0', '1', '1', '2016-10-09 14:33:50');
INSERT INTO `tc_ads` VALUES ('47', '9', 'upload/adspic/2016-10/57f9f3910a63f.jpg', '2F右侧广告1', '', '2016-10-09', '2022-10-09', '221', '0', '1', '1', '2016-10-09 15:37:21');
INSERT INTO `tc_ads` VALUES ('48', '10', 'upload/adspic/2016-10/57f9f5376ee48.jpg', '3F横幅广告', '', '2016-10-09', '2026-10-09', '300', '0', '1', '-1', '2016-10-09 15:40:50');
INSERT INTO `tc_ads` VALUES ('49', '14', 'upload/adspic/2016-10/57fa17de69967.jpg', '4F左侧广告', '', '2016-10-09', '2020-10-31', '410', '0', '1', '1', '2016-10-09 18:12:06');
INSERT INTO `tc_ads` VALUES ('50', '18', 'upload/adspic/2016-10/57fa1dd60c0b8.jpg', '5F右侧广告1', '', '2016-10-09', '2021-10-30', '521', '0', '1', '1', '2016-10-09 18:37:33');
INSERT INTO `tc_ads` VALUES ('51', '18', 'upload/adspic/2016-10/57fa1dfed299c.jpg', '5F右侧广告2', '', '2016-10-09', '2022-10-31', '522', '0', '1', '1', '2016-10-09 18:38:15');
INSERT INTO `tc_ads` VALUES ('52', '18', 'upload/adspic/2016-10/57fa1e5ce9ee0.jpg', '5F右侧广告3', '', '2016-10-09', '2023-10-31', '523', '0', '1', '1', '2016-10-09 18:39:43');
INSERT INTO `tc_ads` VALUES ('53', '18', 'upload/adspic/2016-10/57fa1e882f365.jpg', '5F右侧广告4', '', '2016-10-09', '2022-10-28', '524', '0', '1', '1', '2016-10-09 18:41:04');
INSERT INTO `tc_ads` VALUES ('54', '17', 'upload/adspic/2016-10/57fa1f3702416.jpg', '5F左侧广告', '', '2016-10-09', '2025-10-31', '510', '0', '1', '1', '2016-10-09 18:43:27');
INSERT INTO `tc_ads` VALUES ('55', '15', 'upload/adspic/2016-10/57fa2174acca9.jpg', '4F右侧广告1', '', '2016-10-09', '2020-10-09', '420', '0', '1', '1', '2016-10-09 18:52:59');
INSERT INTO `tc_ads` VALUES ('56', '24', 'upload/adspic/2016-10/57fa21c496471.jpg', '7F右侧广告2', '', '2016-10-09', '2026-10-09', '722', '0', '1', '1', '2016-10-09 18:54:28');
INSERT INTO `tc_ads` VALUES ('57', '24', 'upload/adspic/2016-10/57fa21fbd3926.png', '7F右侧广告3', '', '2016-10-09', '2025-10-16', '721', '0', '1', '1', '2016-10-09 18:55:14');
INSERT INTO `tc_ads` VALUES ('58', '20', 'upload/adspic/2016-10/57fb70aad10f3.jpg', '6F左侧广告', '', '2016-10-09', '2027-10-01', '610', '0', '1', '1', '2016-10-09 22:19:28');
INSERT INTO `tc_ads` VALUES ('59', '26', 'upload/adspic/2016-10/57fa527d608c9.jpeg', '8F左侧广告', '', '2016-10-09', '2026-10-31', '810', '0', '1', '1', '2016-10-09 22:22:01');
INSERT INTO `tc_ads` VALUES ('60', '24', 'upload/adspic/2016-10/57fb04e076255.jpg', '7F右侧广告1', '', '2016-10-10', '2024-10-31', '720', '0', '1', '1', '2016-10-10 11:02:58');
INSERT INTO `tc_ads` VALUES ('61', '23', 'upload/adspic/2016-10/57fb06e78dd85.jpg', '7F左侧广告', '', '2016-10-10', '2025-10-31', '710', '0', '1', '1', '2016-10-10 11:11:48');
INSERT INTO `tc_ads` VALUES ('62', '15', 'upload/adspic/2016-10/57fb65a7e20ce.jpg', '4F右侧广告2', '', '2016-10-10', '2025-10-31', '420', '0', '1', '1', '2016-10-10 17:56:13');
INSERT INTO `tc_ads` VALUES ('63', '27', 'upload/adspic/2016-10/57fb6b01a8f8e.jpg', '8F右侧广告1', '', '2016-10-10', '2023-10-31', '821', '0', '1', '1', '2016-10-10 18:18:53');
INSERT INTO `tc_ads` VALUES ('64', '27', 'upload/adspic/2016-10/57fb71524840f.jpg', '8F右侧广告3', '', '2016-10-10', '2025-10-31', '820', '0', '1', '1', '2016-10-10 18:21:50');
INSERT INTO `tc_ads` VALUES ('65', '27', 'upload/adspic/2016-10/57fb6dad94d5a.jpg', '8F右侧广告2', '', '2016-10-10', '2026-10-10', '822', '0', '1', '1', '2016-10-10 18:30:30');
INSERT INTO `tc_ads` VALUES ('66', '15', 'upload/adspic/2016-10/57fb74d98fbdb.jpg', '4F右侧广告3', '', '2016-10-10', '2026-10-10', '423', '0', '1', '1', '2016-10-10 19:00:54');
INSERT INTO `tc_ads` VALUES ('67', '21', 'upload/adspic/2016-10/57fc66d54a25c.jpg', '6F右侧广告1', '', '2016-10-11', '2032-10-01', '620', '0', '1', '1', '2016-10-11 12:13:19');
INSERT INTO `tc_ads` VALUES ('68', '21', 'upload/adspic/2016-10/57fc66f0e2c75.jpg', '6F右侧广告2', '', '2016-10-11', '2028-10-19', '621', '0', '1', '1', '2016-10-11 12:13:55');
INSERT INTO `tc_ads` VALUES ('69', '21', 'upload/adspic/2016-10/57fc671fa9a19.jpg', '6F右侧广告3', '', '2016-10-11', '2026-10-11', '622', '0', '1', '1', '2016-10-11 12:14:29');
INSERT INTO `tc_ads` VALUES ('70', '21', 'upload/adspic/2016-10/57fc67352f983.jpg', '6F右侧广告4', '', '2016-10-11', '2026-10-11', '623', '0', '1', '1', '2016-10-11 12:14:53');

-- ----------------------------
-- Table structure for tc_areas
-- ----------------------------
DROP TABLE IF EXISTS `tc_areas`;
CREATE TABLE `tc_areas` (
  `areaId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `parentId` int(11) NOT NULL COMMENT '父ID',
  `areaName` varchar(100) NOT NULL COMMENT '地区名称',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	0:是 1:否',
  `areaSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `areaKey` char(10) NOT NULL COMMENT '地区首字母',
  `areaType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '级别标志	1:省 2:市 3:县区',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`areaId`),
  KEY `isShow` (`isShow`,`dataFlag`),
  KEY `areaType` (`areaType`),
  KEY `parentId` (`parentId`)
) ENGINE=InnoDB AUTO_INCREMENT=820302 DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of tc_areas
-- ----------------------------
INSERT INTO `tc_areas` VALUES ('110000', '0', '北京市', '1', '0', 'B', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('110100', '110000', '北京市', '1', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('110101', '110100', '东城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110102', '110100', '西城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110105', '110100', '朝阳区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110106', '110100', '丰台区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110107', '110100', '石景山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110108', '110100', '海淀区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110109', '110100', '门头沟区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110111', '110100', '房山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110112', '110100', '通州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110113', '110100', '顺义区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110114', '110100', '昌平区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110115', '110100', '大兴区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110116', '110100', '怀柔区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110117', '110100', '平谷区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('110228', '110200', '密云县', '1', '0', '', '2', '-1', null);
INSERT INTO `tc_areas` VALUES ('110229', '110200', '延庆县', '1', '0', '', '2', '-1', null);
INSERT INTO `tc_areas` VALUES ('120000', '0', '天津市', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('120101', '120100', '和平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120102', '120100', '河东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120103', '120100', '河西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120104', '120100', '南开区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120105', '120100', '河北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120106', '120100', '红桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120110', '120100', '东丽区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120111', '120100', '西青区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120112', '120100', '津南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120113', '120100', '北辰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120114', '120100', '武清区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120115', '120100', '宝坻区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120116', '120100', '滨海新区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120221', '120200', '宁河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120223', '120200', '静海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('120225', '120200', '蓟县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130000', '0', '河北省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('130100', '130000', '石家庄市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130102', '130100', '长安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130104', '130100', '桥西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130105', '130100', '新华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130107', '130100', '井陉矿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130108', '130100', '裕华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130109', '130100', '藁城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130110', '130100', '鹿泉区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130111', '130100', '栾城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130121', '130100', '井陉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130123', '130100', '正定县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130125', '130100', '行唐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130126', '130100', '灵寿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130127', '130100', '高邑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130128', '130100', '深泽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130129', '130100', '赞皇县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130130', '130100', '无极县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130131', '130100', '平山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130132', '130100', '元氏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130133', '130100', '赵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130181', '130100', '辛集市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130183', '130100', '晋州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130184', '130100', '新乐市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130200', '130000', '唐山市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130202', '130200', '路南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130203', '130200', '路北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130204', '130200', '古冶区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130205', '130200', '开平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130207', '130200', '丰南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130208', '130200', '丰润区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130209', '130200', '曹妃甸区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130223', '130200', '滦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130224', '130200', '滦南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130225', '130200', '乐亭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130227', '130200', '迁西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130229', '130200', '玉田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130281', '130200', '遵化市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130283', '130200', '迁安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130300', '130000', '秦皇岛市', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130302', '130300', '海港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130303', '130300', '山海关区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130304', '130300', '北戴河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130321', '130300', '青龙满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130322', '130300', '昌黎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130323', '130300', '抚宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130324', '130300', '卢龙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130400', '130000', '邯郸市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130402', '130400', '邯山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130403', '130400', '丛台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130404', '130400', '复兴区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130406', '130400', '峰峰矿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130421', '130400', '邯郸县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130423', '130400', '临漳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130424', '130400', '成安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130425', '130400', '大名县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130426', '130400', '涉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130427', '130400', '磁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130428', '130400', '肥乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130429', '130400', '永年县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130430', '130400', '邱县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130431', '130400', '鸡泽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130432', '130400', '广平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130433', '130400', '馆陶县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130434', '130400', '魏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130435', '130400', '曲周县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130481', '130400', '武安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130500', '130000', '邢台市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130502', '130500', '桥东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130503', '130500', '桥西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130521', '130500', '邢台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130522', '130500', '临城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130523', '130500', '内丘县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130524', '130500', '柏乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130525', '130500', '隆尧县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130526', '130500', '任县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130527', '130500', '南和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130528', '130500', '宁晋县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130529', '130500', '巨鹿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130530', '130500', '新河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130531', '130500', '广宗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130532', '130500', '平乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130533', '130500', '威县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130534', '130500', '清河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130535', '130500', '临西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130581', '130500', '南宫市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130582', '130500', '沙河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130600', '130000', '保定市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130602', '130600', '新市区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130603', '130600', '北市区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130604', '130600', '南市区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130621', '130600', '满城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130622', '130600', '清苑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130623', '130600', '涞水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130624', '130600', '阜平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130625', '130600', '徐水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130626', '130600', '定兴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130627', '130600', '唐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130628', '130600', '高阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130629', '130600', '容城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130630', '130600', '涞源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130631', '130600', '望都县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130632', '130600', '安新县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130633', '130600', '易县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130634', '130600', '曲阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130635', '130600', '蠡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130636', '130600', '顺平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130637', '130600', '博野县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130638', '130600', '雄县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130681', '130600', '涿州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130682', '130600', '定州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130683', '130600', '安国市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130684', '130600', '高碑店市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130700', '130000', '张家口市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130702', '130700', '桥东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130703', '130700', '桥西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130705', '130700', '宣化区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130706', '130700', '下花园区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130721', '130700', '宣化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130722', '130700', '张北县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130723', '130700', '康保县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130724', '130700', '沽源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130725', '130700', '尚义县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130726', '130700', '蔚县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130727', '130700', '阳原县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130728', '130700', '怀安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130729', '130700', '万全县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130730', '130700', '怀来县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130731', '130700', '涿鹿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130732', '130700', '赤城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130733', '130700', '崇礼县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130800', '130000', '承德市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130802', '130800', '双桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130803', '130800', '双滦区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130804', '130800', '鹰手营子矿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130821', '130800', '承德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130822', '130800', '兴隆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130823', '130800', '平泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130824', '130800', '滦平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130825', '130800', '隆化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130826', '130800', '丰宁满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130827', '130800', '宽城满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130828', '130800', '围场满族蒙古族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130900', '130000', '沧州市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('130902', '130900', '新华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130903', '130900', '运河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130921', '130900', '沧县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130922', '130900', '青县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130923', '130900', '东光县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130924', '130900', '海兴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130925', '130900', '盐山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130926', '130900', '肃宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130927', '130900', '南皮县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130928', '130900', '吴桥县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130929', '130900', '献县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130930', '130900', '孟村回族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130981', '130900', '泊头市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130982', '130900', '任丘市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130983', '130900', '黄骅市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('130984', '130900', '河间市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131000', '130000', '廊坊市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('131002', '131000', '安次区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131003', '131000', '广阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131022', '131000', '固安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131023', '131000', '永清县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131024', '131000', '香河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131025', '131000', '大城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131026', '131000', '文安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131028', '131000', '大厂回族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131081', '131000', '霸州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131082', '131000', '三河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131100', '130000', '衡水市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('131102', '131100', '桃城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131121', '131100', '枣强县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131122', '131100', '武邑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131123', '131100', '武强县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131124', '131100', '饶阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131125', '131100', '安平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131126', '131100', '故城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131127', '131100', '景县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131128', '131100', '阜城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131181', '131100', '冀州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('131182', '131100', '深州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140000', '0', '山西省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('140100', '140000', '太原市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140105', '140100', '小店区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140106', '140100', '迎泽区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140107', '140100', '杏花岭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140108', '140100', '尖草坪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140109', '140100', '万柏林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140110', '140100', '晋源区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140121', '140100', '清徐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140122', '140100', '阳曲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140123', '140100', '娄烦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140181', '140100', '古交市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140200', '140000', '大同市', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140202', '140200', '城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140203', '140200', '矿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140211', '140200', '南郊区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140212', '140200', '新荣区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140221', '140200', '阳高县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140222', '140200', '天镇县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140223', '140200', '广灵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140224', '140200', '灵丘县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140225', '140200', '浑源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140226', '140200', '左云县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140227', '140200', '大同县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140300', '140000', '阳泉市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140302', '140300', '城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140303', '140300', '矿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140311', '140300', '郊区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140321', '140300', '平定县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140322', '140300', '盂县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140400', '140000', '长治市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140402', '140400', '城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140411', '140400', '郊区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140421', '140400', '长治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140423', '140400', '襄垣县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140424', '140400', '屯留县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140425', '140400', '平顺县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140426', '140400', '黎城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140427', '140400', '壶关县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140428', '140400', '长子县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140429', '140400', '武乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140430', '140400', '沁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140431', '140400', '沁源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140481', '140400', '潞城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140500', '140000', '晋城市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140502', '140500', '城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140521', '140500', '沁水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140522', '140500', '阳城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140524', '140500', '陵川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140525', '140500', '泽州县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140581', '140500', '高平市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140600', '140000', '朔州市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140602', '140600', '朔城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140603', '140600', '平鲁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140621', '140600', '山阴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140622', '140600', '应县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140623', '140600', '右玉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140624', '140600', '怀仁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140700', '140000', '晋中市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140702', '140700', '榆次区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140721', '140700', '榆社县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140722', '140700', '左权县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140723', '140700', '和顺县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140724', '140700', '昔阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140725', '140700', '寿阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140726', '140700', '太谷县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140727', '140700', '祁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140728', '140700', '平遥县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140729', '140700', '灵石县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140781', '140700', '介休市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140800', '140000', '运城市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140802', '140800', '盐湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140821', '140800', '临猗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140822', '140800', '万荣县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140823', '140800', '闻喜县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140824', '140800', '稷山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140825', '140800', '新绛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140826', '140800', '绛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140827', '140800', '垣曲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140828', '140800', '夏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140829', '140800', '平陆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140830', '140800', '芮城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140881', '140800', '永济市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140882', '140800', '河津市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140900', '140000', '忻州市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('140902', '140900', '忻府区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140921', '140900', '定襄县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140922', '140900', '五台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140923', '140900', '代县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140924', '140900', '繁峙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140925', '140900', '宁武县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140926', '140900', '静乐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140927', '140900', '神池县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140928', '140900', '五寨县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140929', '140900', '岢岚县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140930', '140900', '河曲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140931', '140900', '保德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140932', '140900', '偏关县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('140981', '140900', '原平市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141000', '140000', '临汾市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('141002', '141000', '尧都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141021', '141000', '曲沃县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141022', '141000', '翼城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141023', '141000', '襄汾县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141024', '141000', '洪洞县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141025', '141000', '古县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141026', '141000', '安泽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141027', '141000', '浮山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141028', '141000', '吉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141029', '141000', '乡宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141030', '141000', '大宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141031', '141000', '隰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141032', '141000', '永和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141033', '141000', '蒲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141034', '141000', '汾西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141081', '141000', '侯马市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141082', '141000', '霍州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141100', '140000', '吕梁市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('141102', '141100', '离石区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141121', '141100', '文水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141122', '141100', '交城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141123', '141100', '兴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141124', '141100', '临县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141125', '141100', '柳林县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141126', '141100', '石楼县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141127', '141100', '岚县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141128', '141100', '方山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141129', '141100', '中阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141130', '141100', '交口县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141181', '141100', '孝义市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('141182', '141100', '汾阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150000', '0', '内蒙古自治区', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('150100', '150000', '呼和浩特市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150102', '150100', '新城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150103', '150100', '回民区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150104', '150100', '玉泉区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150105', '150100', '赛罕区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150121', '150100', '土默特左旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150122', '150100', '托克托县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150123', '150100', '和林格尔县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150124', '150100', '清水河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150125', '150100', '武川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150200', '150000', '包头市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150202', '150200', '东河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150203', '150200', '昆都仑区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150204', '150200', '青山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150205', '150200', '石拐区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150206', '150200', '白云鄂博矿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150207', '150200', '九原区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150221', '150200', '土默特右旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150222', '150200', '固阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150223', '150200', '达尔罕茂明安联合旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150300', '150000', '乌海市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150302', '150300', '海勃湾区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150303', '150300', '海南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150304', '150300', '乌达区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150400', '150000', '赤峰市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150402', '150400', '红山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150403', '150400', '元宝山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150404', '150400', '松山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150421', '150400', '阿鲁科尔沁旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150422', '150400', '巴林左旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150423', '150400', '巴林右旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150424', '150400', '林西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150425', '150400', '克什克腾旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150426', '150400', '翁牛特旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150428', '150400', '喀喇沁旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150429', '150400', '宁城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150430', '150400', '敖汉旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150500', '150000', '通辽市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150502', '150500', '科尔沁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150521', '150500', '科尔沁左翼中旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150522', '150500', '科尔沁左翼后旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150523', '150500', '开鲁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150524', '150500', '库伦旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150525', '150500', '奈曼旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150526', '150500', '扎鲁特旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150581', '150500', '霍林郭勒市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150600', '150000', '鄂尔多斯市', '0', '0', 'E', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150602', '150600', '东胜区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150621', '150600', '达拉特旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150622', '150600', '准格尔旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150623', '150600', '鄂托克前旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150624', '150600', '鄂托克旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150625', '150600', '杭锦旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150626', '150600', '乌审旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150627', '150600', '伊金霍洛旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150700', '150000', '呼伦贝尔市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150702', '150700', '海拉尔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150703', '150700', '扎赉诺尔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150721', '150700', '阿荣旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150722', '150700', '莫力达瓦达斡尔族自治旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150723', '150700', '鄂伦春自治旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150724', '150700', '鄂温克族自治旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150725', '150700', '陈巴尔虎旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150726', '150700', '新巴尔虎左旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150727', '150700', '新巴尔虎右旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150781', '150700', '满洲里市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150782', '150700', '牙克石市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150783', '150700', '扎兰屯市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150784', '150700', '额尔古纳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150785', '150700', '根河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150800', '150000', '巴彦淖尔市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150802', '150800', '临河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150821', '150800', '五原县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150822', '150800', '磴口县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150823', '150800', '乌拉特前旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150824', '150800', '乌拉特中旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150825', '150800', '乌拉特后旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150826', '150800', '杭锦后旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150900', '150000', '乌兰察布市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('150902', '150900', '集宁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150921', '150900', '卓资县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150922', '150900', '化德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150923', '150900', '商都县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150924', '150900', '兴和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150925', '150900', '凉城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150926', '150900', '察哈尔右翼前旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150927', '150900', '察哈尔右翼中旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150928', '150900', '察哈尔右翼后旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150929', '150900', '四子王旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('150981', '150900', '丰镇市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152200', '150000', '兴安盟', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('152201', '152200', '乌兰浩特市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152202', '152200', '阿尔山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152221', '152200', '科尔沁右翼前旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152222', '152200', '科尔沁右翼中旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152223', '152200', '扎赉特旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152224', '152200', '突泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152500', '150000', '锡林郭勒盟', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('152501', '152500', '二连浩特市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152502', '152500', '锡林浩特市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152522', '152500', '阿巴嘎旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152523', '152500', '苏尼特左旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152524', '152500', '苏尼特右旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152525', '152500', '东乌珠穆沁旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152526', '152500', '西乌珠穆沁旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152527', '152500', '太仆寺旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152528', '152500', '镶黄旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152529', '152500', '正镶白旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152530', '152500', '正蓝旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152531', '152500', '多伦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152900', '150000', '阿拉善盟', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('152921', '152900', '阿拉善左旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152922', '152900', '阿拉善右旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('152923', '152900', '额济纳旗', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210000', '0', '辽宁省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('210100', '210000', '沈阳市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210102', '210100', '和平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210103', '210100', '沈河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210104', '210100', '大东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210105', '210100', '皇姑区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210106', '210100', '铁西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210111', '210100', '苏家屯区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210112', '210100', '浑南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210113', '210100', '沈北新区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210114', '210100', '于洪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210122', '210100', '辽中县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210123', '210100', '康平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210124', '210100', '法库县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210181', '210100', '新民市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210200', '210000', '大连市', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210202', '210200', '中山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210203', '210200', '西岗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210204', '210200', '沙河口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210211', '210200', '甘井子区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210212', '210200', '旅顺口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210213', '210200', '金州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210224', '210200', '长海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210281', '210200', '瓦房店市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210282', '210200', '普兰店市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210283', '210200', '庄河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210300', '210000', '鞍山市', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210302', '210300', '铁东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210303', '210300', '铁西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210304', '210300', '立山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210311', '210300', '千山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210321', '210300', '台安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210323', '210300', '岫岩满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210381', '210300', '海城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210400', '210000', '抚顺市', '0', '0', 'F', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210402', '210400', '新抚区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210403', '210400', '东洲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210404', '210400', '望花区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210411', '210400', '顺城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210421', '210400', '抚顺县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210422', '210400', '新宾满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210423', '210400', '清原满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210500', '210000', '本溪市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210502', '210500', '平山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210503', '210500', '溪湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210504', '210500', '明山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210505', '210500', '南芬区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210521', '210500', '本溪满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210522', '210500', '桓仁满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210600', '210000', '丹东市', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210602', '210600', '元宝区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210603', '210600', '振兴区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210604', '210600', '振安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210624', '210600', '宽甸满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210681', '210600', '东港市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210682', '210600', '凤城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210700', '210000', '锦州市', '0', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210702', '210700', '古塔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210703', '210700', '凌河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210711', '210700', '太和区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210726', '210700', '黑山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210727', '210700', '义县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210781', '210700', '凌海市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210782', '210700', '北镇市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210800', '210000', '营口市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210802', '210800', '站前区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210803', '210800', '西市区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210804', '210800', '鲅鱼圈区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210811', '210800', '老边区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210881', '210800', '盖州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210882', '210800', '大石桥市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210900', '210000', '阜新市', '0', '0', 'F', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('210902', '210900', '海州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210903', '210900', '新邱区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210904', '210900', '太平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210905', '210900', '清河门区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210911', '210900', '细河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210921', '210900', '阜新蒙古族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('210922', '210900', '彰武县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211000', '210000', '辽阳市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('211002', '211000', '白塔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211003', '211000', '文圣区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211004', '211000', '宏伟区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211005', '211000', '弓长岭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211011', '211000', '太子河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211021', '211000', '辽阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211081', '211000', '灯塔市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211100', '210000', '盘锦市', '0', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('211102', '211100', '双台子区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211103', '211100', '兴隆台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211121', '211100', '大洼县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211122', '211100', '盘山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211200', '210000', '铁岭市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('211202', '211200', '银州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211204', '211200', '清河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211221', '211200', '铁岭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211223', '211200', '西丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211224', '211200', '昌图县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211281', '211200', '调兵山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211282', '211200', '开原市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211300', '210000', '朝阳市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('211302', '211300', '双塔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211303', '211300', '龙城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211321', '211300', '朝阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211322', '211300', '建平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211324', '211300', '喀喇沁左翼蒙古族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211381', '211300', '北票市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211382', '211300', '凌源市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211400', '210000', '葫芦岛市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('211402', '211400', '连山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211403', '211400', '龙港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211404', '211400', '南票区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211421', '211400', '绥中县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211422', '211400', '建昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('211481', '211400', '兴城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220000', '0', '吉林省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('220100', '220000', '长春市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220102', '220100', '南关区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220103', '220100', '宽城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220104', '220100', '朝阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220105', '220100', '二道区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220106', '220100', '绿园区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220112', '220100', '双阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220113', '220100', '九台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220122', '220100', '农安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220182', '220100', '榆树市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220183', '220100', '德惠市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220200', '220000', '吉林市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220202', '220200', '昌邑区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220203', '220200', '龙潭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220204', '220200', '船营区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220211', '220200', '丰满区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220221', '220200', '永吉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220281', '220200', '蛟河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220282', '220200', '桦甸市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220283', '220200', '舒兰市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220284', '220200', '磐石市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220300', '220000', '四平市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220302', '220300', '铁西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220303', '220300', '铁东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220322', '220300', '梨树县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220323', '220300', '伊通满族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220381', '220300', '公主岭市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220382', '220300', '双辽市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220400', '220000', '辽源市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220402', '220400', '龙山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220403', '220400', '西安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220421', '220400', '东丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220422', '220400', '东辽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220500', '220000', '通化市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220502', '220500', '东昌区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220503', '220500', '二道江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220521', '220500', '通化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220523', '220500', '辉南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220524', '220500', '柳河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220581', '220500', '梅河口市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220582', '220500', '集安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220600', '220000', '白山市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220602', '220600', '浑江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220605', '220600', '江源区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220621', '220600', '抚松县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220622', '220600', '靖宇县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220623', '220600', '长白朝鲜族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220681', '220600', '临江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220700', '220000', '松原市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220702', '220700', '宁江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220721', '220700', '前郭尔罗斯蒙古族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220722', '220700', '长岭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220723', '220700', '乾安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220781', '220700', '扶余市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220800', '220000', '白城市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('220802', '220800', '洮北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220821', '220800', '镇赉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220822', '220800', '通榆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220881', '220800', '洮南市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('220882', '220800', '大安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222400', '220000', '延边朝鲜族自治州', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('222401', '222400', '延吉市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222402', '222400', '图们市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222403', '222400', '敦化市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222404', '222400', '珲春市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222405', '222400', '龙井市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222406', '222400', '和龙市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222424', '222400', '汪清县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('222426', '222400', '安图县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230000', '0', '黑龙江省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('230100', '230000', '哈尔滨市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230102', '230100', '道里区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230103', '230100', '南岗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230104', '230100', '道外区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230108', '230100', '平房区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230109', '230100', '松北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230110', '230100', '香坊区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230111', '230100', '呼兰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230112', '230100', '阿城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230113', '230100', '双城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230123', '230100', '依兰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230124', '230100', '方正县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230125', '230100', '宾县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230126', '230100', '巴彦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230127', '230100', '木兰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230128', '230100', '通河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230129', '230100', '延寿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230183', '230100', '尚志市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230184', '230100', '五常市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230200', '230000', '齐齐哈尔市', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230202', '230200', '龙沙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230203', '230200', '建华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230204', '230200', '铁锋区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230205', '230200', '昂昂溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230206', '230200', '富拉尔基区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230207', '230200', '碾子山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230208', '230200', '梅里斯达斡尔族区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230221', '230200', '龙江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230223', '230200', '依安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230224', '230200', '泰来县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230225', '230200', '甘南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230227', '230200', '富裕县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230229', '230200', '克山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230230', '230200', '克东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230231', '230200', '拜泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230281', '230200', '讷河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230300', '230000', '鸡西市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230302', '230300', '鸡冠区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230303', '230300', '恒山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230304', '230300', '滴道区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230305', '230300', '梨树区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230306', '230300', '城子河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230307', '230300', '麻山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230321', '230300', '鸡东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230381', '230300', '虎林市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230382', '230300', '密山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230400', '230000', '鹤岗市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230402', '230400', '向阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230403', '230400', '工农区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230404', '230400', '南山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230405', '230400', '兴安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230406', '230400', '东山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230407', '230400', '兴山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230421', '230400', '萝北县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230422', '230400', '绥滨县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230500', '230000', '双鸭山市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230502', '230500', '尖山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230503', '230500', '岭东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230505', '230500', '四方台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230506', '230500', '宝山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230521', '230500', '集贤县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230522', '230500', '友谊县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230523', '230500', '宝清县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230524', '230500', '饶河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230600', '230000', '大庆市', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230602', '230600', '萨尔图区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230603', '230600', '龙凤区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230604', '230600', '让胡路区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230605', '230600', '红岗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230606', '230600', '大同区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230621', '230600', '肇州县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230622', '230600', '肇源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230623', '230600', '林甸县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230624', '230600', '杜尔伯特蒙古族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230700', '230000', '伊春市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230702', '230700', '伊春区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230703', '230700', '南岔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230704', '230700', '友好区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230705', '230700', '西林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230706', '230700', '翠峦区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230707', '230700', '新青区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230708', '230700', '美溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230709', '230700', '金山屯区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230710', '230700', '五营区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230711', '230700', '乌马河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230712', '230700', '汤旺河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230713', '230700', '带岭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230714', '230700', '乌伊岭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230715', '230700', '红星区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230716', '230700', '上甘岭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230722', '230700', '嘉荫县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230781', '230700', '铁力市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230800', '230000', '佳木斯市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230803', '230800', '向阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230804', '230800', '前进区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230805', '230800', '东风区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230811', '230800', '郊区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230822', '230800', '桦南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230826', '230800', '桦川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230828', '230800', '汤原县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230833', '230800', '抚远县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230881', '230800', '同江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230882', '230800', '富锦市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230900', '230000', '七台河市', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('230902', '230900', '新兴区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230903', '230900', '桃山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230904', '230900', '茄子河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('230921', '230900', '勃利县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231000', '230000', '牡丹江市', '0', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('231002', '231000', '东安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231003', '231000', '阳明区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231004', '231000', '爱民区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231005', '231000', '西安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231024', '231000', '东宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231025', '231000', '林口县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231081', '231000', '绥芬河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231083', '231000', '海林市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231084', '231000', '宁安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231085', '231000', '穆棱市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231100', '230000', '黑河市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('231102', '231100', '爱辉区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231121', '231100', '嫩江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231123', '231100', '逊克县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231124', '231100', '孙吴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231181', '231100', '北安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231182', '231100', '五大连池市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231200', '230000', '绥化市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('231202', '231200', '北林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231221', '231200', '望奎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231222', '231200', '兰西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231223', '231200', '青冈县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231224', '231200', '庆安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231225', '231200', '明水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231226', '231200', '绥棱县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231281', '231200', '安达市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231282', '231200', '肇东市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('231283', '231200', '海伦市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('232700', '230000', '大兴安岭地区', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('232721', '232700', '呼玛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('232722', '232700', '塔河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('232723', '232700', '漠河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310000', '0', '上海市', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('310101', '310100', '黄浦区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310104', '310100', '徐汇区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310105', '310100', '长宁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310106', '310100', '静安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310107', '310100', '普陀区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310108', '310100', '闸北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310109', '310100', '虹口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310110', '310100', '杨浦区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310112', '310100', '闵行区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310113', '310100', '宝山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310114', '310100', '嘉定区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310115', '310100', '浦东新区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310116', '310100', '金山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310117', '310100', '松江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310118', '310100', '青浦区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310120', '310100', '奉贤区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('310230', '310200', '崇明县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320000', '0', '江苏省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('320100', '320000', '南京市', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320102', '320100', '玄武区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320104', '320100', '秦淮区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320105', '320100', '建邺区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320106', '320100', '鼓楼区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320111', '320100', '浦口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320113', '320100', '栖霞区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320114', '320100', '雨花台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320115', '320100', '江宁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320116', '320100', '六合区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320117', '320100', '溧水区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320118', '320100', '高淳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320200', '320000', '无锡市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320202', '320200', '崇安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320203', '320200', '南长区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320204', '320200', '北塘区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320205', '320200', '锡山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320206', '320200', '惠山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320211', '320200', '滨湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320281', '320200', '江阴市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320282', '320200', '宜兴市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320300', '320000', '徐州市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320302', '320300', '鼓楼区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320303', '320300', '云龙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320305', '320300', '贾汪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320311', '320300', '泉山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320312', '320300', '铜山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320321', '320300', '丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320322', '320300', '沛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320324', '320300', '睢宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320381', '320300', '新沂市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320382', '320300', '邳州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320400', '320000', '常州市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320402', '320400', '天宁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320404', '320400', '钟楼区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320405', '320400', '戚墅堰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320411', '320400', '新北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320412', '320400', '武进区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320481', '320400', '溧阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320482', '320400', '金坛市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320500', '320000', '苏州市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320505', '320500', '虎丘区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320506', '320500', '吴中区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320507', '320500', '相城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320508', '320500', '姑苏区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320509', '320500', '吴江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320581', '320500', '常熟市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320582', '320500', '张家港市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320583', '320500', '昆山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320585', '320500', '太仓市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320600', '320000', '南通市', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320602', '320600', '崇川区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320611', '320600', '港闸区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320612', '320600', '通州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320621', '320600', '海安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320623', '320600', '如东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320681', '320600', '启东市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320682', '320600', '如皋市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320684', '320600', '海门市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320700', '320000', '连云港市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320703', '320700', '连云区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320706', '320700', '海州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320707', '320700', '赣榆区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320722', '320700', '东海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320723', '320700', '灌云县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320724', '320700', '灌南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320800', '320000', '淮安市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320802', '320800', '清河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320803', '320800', '淮安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320804', '320800', '淮阴区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320811', '320800', '清浦区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320826', '320800', '涟水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320829', '320800', '洪泽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320830', '320800', '盱眙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320831', '320800', '金湖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320900', '320000', '盐城市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('320902', '320900', '亭湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320903', '320900', '盐都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320921', '320900', '响水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320922', '320900', '滨海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320923', '320900', '阜宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320924', '320900', '射阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320925', '320900', '建湖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320981', '320900', '东台市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('320982', '320900', '大丰市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321000', '320000', '扬州市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('321002', '321000', '广陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321003', '321000', '邗江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321012', '321000', '江都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321023', '321000', '宝应县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321081', '321000', '仪征市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321084', '321000', '高邮市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321100', '320000', '镇江市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('321102', '321100', '京口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321111', '321100', '润州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321112', '321100', '丹徒区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321181', '321100', '丹阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321182', '321100', '扬中市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321183', '321100', '句容市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321200', '320000', '泰州市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('321202', '321200', '海陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321203', '321200', '高港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321204', '321200', '姜堰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321281', '321200', '兴化市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321282', '321200', '靖江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321283', '321200', '泰兴市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321300', '320000', '宿迁市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('321302', '321300', '宿城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321311', '321300', '宿豫区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321322', '321300', '沭阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321323', '321300', '泗阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('321324', '321300', '泗洪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330000', '0', '浙江省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('330100', '330000', '杭州市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330102', '330100', '上城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330103', '330100', '下城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330104', '330100', '江干区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330105', '330100', '拱墅区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330106', '330100', '西湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330108', '330100', '滨江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330109', '330100', '萧山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330110', '330100', '余杭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330111', '330100', '富阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330122', '330100', '桐庐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330127', '330100', '淳安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330182', '330100', '建德市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330185', '330100', '临安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330200', '330000', '宁波市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330203', '330200', '海曙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330204', '330200', '江东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330205', '330200', '江北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330206', '330200', '北仑区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330211', '330200', '镇海区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330212', '330200', '鄞州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330225', '330200', '象山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330226', '330200', '宁海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330281', '330200', '余姚市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330282', '330200', '慈溪市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330283', '330200', '奉化市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330300', '330000', '温州市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330302', '330300', '鹿城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330303', '330300', '龙湾区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330304', '330300', '瓯海区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330322', '330300', '洞头县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330324', '330300', '永嘉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330326', '330300', '平阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330327', '330300', '苍南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330328', '330300', '文成县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330329', '330300', '泰顺县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330381', '330300', '瑞安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330382', '330300', '乐清市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330400', '330000', '嘉兴市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330402', '330400', '南湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330411', '330400', '秀洲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330421', '330400', '嘉善县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330424', '330400', '海盐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330481', '330400', '海宁市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330482', '330400', '平湖市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330483', '330400', '桐乡市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330500', '330000', '湖州市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330502', '330500', '吴兴区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330503', '330500', '南浔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330521', '330500', '德清县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330522', '330500', '长兴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330523', '330500', '安吉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330600', '330000', '绍兴市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330602', '330600', '越城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330603', '330600', '柯桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330604', '330600', '上虞区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330624', '330600', '新昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330681', '330600', '诸暨市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330683', '330600', '嵊州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330700', '330000', '金华市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330702', '330700', '婺城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330703', '330700', '金东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330723', '330700', '武义县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330726', '330700', '浦江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330727', '330700', '磐安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330781', '330700', '兰溪市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330782', '330700', '义乌市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330783', '330700', '东阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330784', '330700', '永康市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330800', '330000', '衢州市', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330802', '330800', '柯城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330803', '330800', '衢江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330822', '330800', '常山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330824', '330800', '开化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330825', '330800', '龙游县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330881', '330800', '江山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330900', '330000', '舟山市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('330902', '330900', '定海区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330903', '330900', '普陀区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330921', '330900', '岱山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('330922', '330900', '嵊泗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331000', '330000', '台州市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('331002', '331000', '椒江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331003', '331000', '黄岩区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331004', '331000', '路桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331021', '331000', '玉环县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331022', '331000', '三门县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331023', '331000', '天台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331024', '331000', '仙居县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331081', '331000', '温岭市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331082', '331000', '临海市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331100', '330000', '丽水市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('331102', '331100', '莲都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331121', '331100', '青田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331122', '331100', '缙云县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331123', '331100', '遂昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331124', '331100', '松阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331125', '331100', '云和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331126', '331100', '庆元县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331127', '331100', '景宁畲族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('331181', '331100', '龙泉市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340000', '0', '安徽省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('340100', '340000', '合肥市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340102', '340100', '瑶海区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340103', '340100', '庐阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340104', '340100', '蜀山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340111', '340100', '包河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340121', '340100', '长丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340122', '340100', '肥东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340123', '340100', '肥西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340124', '340100', '庐江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340181', '340100', '巢湖市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340200', '340000', '芜湖市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340202', '340200', '镜湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340203', '340200', '弋江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340207', '340200', '鸠江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340208', '340200', '三山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340221', '340200', '芜湖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340222', '340200', '繁昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340223', '340200', '南陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340225', '340200', '无为县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340300', '340000', '蚌埠市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340302', '340300', '龙子湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340303', '340300', '蚌山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340304', '340300', '禹会区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340311', '340300', '淮上区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340321', '340300', '怀远县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340322', '340300', '五河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340323', '340300', '固镇县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340400', '340000', '淮南市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340402', '340400', '大通区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340403', '340400', '田家庵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340404', '340400', '谢家集区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340405', '340400', '八公山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340406', '340400', '潘集区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340421', '340400', '凤台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340500', '340000', '马鞍山市', '0', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340503', '340500', '花山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340504', '340500', '雨山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340506', '340500', '博望区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340521', '340500', '当涂县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340522', '340500', '含山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340523', '340500', '和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340600', '340000', '淮北市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340602', '340600', '杜集区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340603', '340600', '相山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340604', '340600', '烈山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340621', '340600', '濉溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340700', '340000', '铜陵市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340702', '340700', '铜官山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340703', '340700', '狮子山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340711', '340700', '郊区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340721', '340700', '铜陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340800', '340000', '安庆市', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('340802', '340800', '迎江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340803', '340800', '大观区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340811', '340800', '宜秀区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340822', '340800', '怀宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340823', '340800', '枞阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340824', '340800', '潜山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340825', '340800', '太湖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340826', '340800', '宿松县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340827', '340800', '望江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340828', '340800', '岳西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('340881', '340800', '桐城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341000', '340000', '黄山市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341002', '341000', '屯溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341003', '341000', '黄山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341004', '341000', '徽州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341021', '341000', '歙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341022', '341000', '休宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341023', '341000', '黟县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341024', '341000', '祁门县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341100', '340000', '滁州市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341102', '341100', '琅琊区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341103', '341100', '南谯区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341122', '341100', '来安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341124', '341100', '全椒县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341125', '341100', '定远县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341126', '341100', '凤阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341181', '341100', '天长市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341182', '341100', '明光市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341200', '340000', '阜阳市', '0', '0', 'F', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341202', '341200', '颍州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341203', '341200', '颍东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341204', '341200', '颍泉区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341221', '341200', '临泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341222', '341200', '太和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341225', '341200', '阜南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341226', '341200', '颍上县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341282', '341200', '界首市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341300', '340000', '宿州市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341302', '341300', '埇桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341321', '341300', '砀山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341322', '341300', '萧县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341323', '341300', '灵璧县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341324', '341300', '泗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341500', '340000', '六安市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341502', '341500', '金安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341503', '341500', '裕安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341521', '341500', '寿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341522', '341500', '霍邱县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341523', '341500', '舒城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341524', '341500', '金寨县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341525', '341500', '霍山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341600', '340000', '亳州市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341602', '341600', '谯城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341621', '341600', '涡阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341622', '341600', '蒙城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341623', '341600', '利辛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341700', '340000', '池州市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341702', '341700', '贵池区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341721', '341700', '东至县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341722', '341700', '石台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341723', '341700', '青阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341800', '340000', '宣城市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('341802', '341800', '宣州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341821', '341800', '郎溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341822', '341800', '广德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341823', '341800', '泾县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341824', '341800', '绩溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341825', '341800', '旌德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('341881', '341800', '宁国市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350000', '0', '福建省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('350100', '350000', '福州市', '0', '0', 'F', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350102', '350100', '鼓楼区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350103', '350100', '台江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350104', '350100', '仓山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350105', '350100', '马尾区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350111', '350100', '晋安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350121', '350100', '闽侯县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350122', '350100', '连江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350123', '350100', '罗源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350124', '350100', '闽清县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350125', '350100', '永泰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350128', '350100', '平潭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350181', '350100', '福清市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350182', '350100', '长乐市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350200', '350000', '厦门市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350203', '350200', '思明区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350205', '350200', '海沧区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350206', '350200', '湖里区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350211', '350200', '集美区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350212', '350200', '同安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350213', '350200', '翔安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350300', '350000', '莆田市', '0', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350302', '350300', '城厢区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350303', '350300', '涵江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350304', '350300', '荔城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350305', '350300', '秀屿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350322', '350300', '仙游县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350400', '350000', '三明市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350402', '350400', '梅列区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350403', '350400', '三元区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350421', '350400', '明溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350423', '350400', '清流县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350424', '350400', '宁化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350425', '350400', '大田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350426', '350400', '尤溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350427', '350400', '沙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350428', '350400', '将乐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350429', '350400', '泰宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350430', '350400', '建宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350481', '350400', '永安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350500', '350000', '泉州市', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350502', '350500', '鲤城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350503', '350500', '丰泽区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350504', '350500', '洛江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350505', '350500', '泉港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350521', '350500', '惠安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350524', '350500', '安溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350525', '350500', '永春县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350526', '350500', '德化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350527', '350500', '金门县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350581', '350500', '石狮市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350582', '350500', '晋江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350583', '350500', '南安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350600', '350000', '漳州市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350602', '350600', '芗城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350603', '350600', '龙文区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350622', '350600', '云霄县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350623', '350600', '漳浦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350624', '350600', '诏安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350625', '350600', '长泰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350626', '350600', '东山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350627', '350600', '南靖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350628', '350600', '平和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350629', '350600', '华安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350681', '350600', '龙海市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350700', '350000', '南平市', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350702', '350700', '延平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350703', '350700', '建阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350721', '350700', '顺昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350722', '350700', '浦城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350723', '350700', '光泽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350724', '350700', '松溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350725', '350700', '政和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350781', '350700', '邵武市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350782', '350700', '武夷山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350783', '350700', '建瓯市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350800', '350000', '龙岩市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350802', '350800', '新罗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350803', '350800', '永定区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350821', '350800', '长汀县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350823', '350800', '上杭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350824', '350800', '武平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350825', '350800', '连城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350881', '350800', '漳平市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350900', '350000', '宁德市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('350902', '350900', '蕉城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350921', '350900', '霞浦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350922', '350900', '古田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350923', '350900', '屏南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350924', '350900', '寿宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350925', '350900', '周宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350926', '350900', '柘荣县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350981', '350900', '福安市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('350982', '350900', '福鼎市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360000', '0', '江西省', '1', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('360100', '360000', '南昌市', '1', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360102', '360100', '东湖区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360103', '360100', '西湖区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360104', '360100', '青云谱区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360105', '360100', '湾里区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360111', '360100', '青山湖区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360121', '360100', '南昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360122', '360100', '新建县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360123', '360100', '安义县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360124', '360100', '进贤县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360200', '360000', '景德镇市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360202', '360200', '昌江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360203', '360200', '珠山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360222', '360200', '浮梁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360281', '360200', '乐平市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360300', '360000', '萍乡市', '1', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360302', '360300', '安源区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360313', '360300', '湘东区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360321', '360300', '莲花县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360322', '360300', '上栗县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360323', '360300', '芦溪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360400', '360000', '九江市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360402', '360400', '庐山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360403', '360400', '浔阳区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360421', '360400', '九江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360423', '360400', '武宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360424', '360400', '修水县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360425', '360400', '永修县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360426', '360400', '德安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360427', '360400', '星子县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360428', '360400', '都昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360429', '360400', '湖口县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360430', '360400', '彭泽县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360481', '360400', '瑞昌市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360482', '360400', '共青城市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360500', '360000', '新余市', '1', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360502', '360500', '渝水区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360521', '360500', '分宜县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360600', '360000', '鹰潭市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360602', '360600', '月湖区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360622', '360600', '余江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360681', '360600', '贵溪市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360700', '360000', '赣州市', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360702', '360700', '章贡区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360703', '360700', '南康区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360721', '360700', '赣县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360722', '360700', '信丰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360723', '360700', '大余县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360724', '360700', '上犹县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360725', '360700', '崇义县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360726', '360700', '安远县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360727', '360700', '龙南县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360728', '360700', '定南县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360729', '360700', '全南县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360730', '360700', '宁都县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360731', '360700', '于都县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360732', '360700', '兴国县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360733', '360700', '会昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360734', '360700', '寻乌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360735', '360700', '石城县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360781', '360700', '瑞金市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360800', '360000', '吉安市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360802', '360800', '吉州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360803', '360800', '青原区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360821', '360800', '吉安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360822', '360800', '吉水县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360823', '360800', '峡江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360824', '360800', '新干县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360825', '360800', '永丰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360826', '360800', '泰和县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360827', '360800', '遂川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360828', '360800', '万安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360829', '360800', '安福县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360830', '360800', '永新县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360881', '360800', '井冈山市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360900', '360000', '宜春市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('360902', '360900', '袁州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360921', '360900', '奉新县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360922', '360900', '万载县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360923', '360900', '上高县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360924', '360900', '宜丰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360925', '360900', '靖安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360926', '360900', '铜鼓县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360981', '360900', '丰城市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360982', '360900', '樟树市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('360983', '360900', '高安市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361000', '360000', '抚州市', '1', '0', 'F', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('361002', '361000', '临川区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361021', '361000', '南城县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361022', '361000', '黎川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361023', '361000', '南丰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361024', '361000', '崇仁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361025', '361000', '乐安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361026', '361000', '宜黄县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361027', '361000', '金溪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361028', '361000', '资溪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361029', '361000', '东乡县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361030', '361000', '广昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361100', '360000', '上饶市', '1', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('361102', '361100', '信州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361103', '361100', '广丰区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361121', '361100', '上饶县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361123', '361100', '玉山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361124', '361100', '铅山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361125', '361100', '横峰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361126', '361100', '弋阳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361127', '361100', '余干县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361128', '361100', '鄱阳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361129', '361100', '万年县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361130', '361100', '婺源县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('361181', '361100', '德兴市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370000', '0', '山东省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('370100', '370000', '济南市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370102', '370100', '历下区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370103', '370100', '市中区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370104', '370100', '槐荫区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370105', '370100', '天桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370112', '370100', '历城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370113', '370100', '长清区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370124', '370100', '平阴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370125', '370100', '济阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370126', '370100', '商河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370181', '370100', '章丘市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370200', '370000', '青岛市', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370202', '370200', '市南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370203', '370200', '市北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370211', '370200', '黄岛区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370212', '370200', '崂山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370213', '370200', '李沧区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370214', '370200', '城阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370281', '370200', '胶州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370282', '370200', '即墨市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370283', '370200', '平度市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370285', '370200', '莱西市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370300', '370000', '淄博市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370302', '370300', '淄川区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370303', '370300', '张店区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370304', '370300', '博山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370305', '370300', '临淄区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370306', '370300', '周村区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370321', '370300', '桓台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370322', '370300', '高青县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370323', '370300', '沂源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370400', '370000', '枣庄市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370402', '370400', '市中区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370403', '370400', '薛城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370404', '370400', '峄城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370405', '370400', '台儿庄区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370406', '370400', '山亭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370481', '370400', '滕州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370500', '370000', '东营市', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370502', '370500', '东营区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370503', '370500', '河口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370521', '370500', '垦利县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370522', '370500', '利津县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370523', '370500', '广饶县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370600', '370000', '烟台市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370602', '370600', '芝罘区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370611', '370600', '福山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370612', '370600', '牟平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370613', '370600', '莱山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370634', '370600', '长岛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370681', '370600', '龙口市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370682', '370600', '莱阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370683', '370600', '莱州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370684', '370600', '蓬莱市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370685', '370600', '招远市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370686', '370600', '栖霞市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370687', '370600', '海阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370700', '370000', '潍坊市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370702', '370700', '潍城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370703', '370700', '寒亭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370704', '370700', '坊子区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370705', '370700', '奎文区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370724', '370700', '临朐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370725', '370700', '昌乐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370781', '370700', '青州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370782', '370700', '诸城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370783', '370700', '寿光市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370784', '370700', '安丘市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370785', '370700', '高密市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370786', '370700', '昌邑市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370800', '370000', '济宁市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370811', '370800', '任城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370812', '370800', '兖州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370826', '370800', '微山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370827', '370800', '鱼台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370828', '370800', '金乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370829', '370800', '嘉祥县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370830', '370800', '汶上县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370831', '370800', '泗水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370832', '370800', '梁山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370881', '370800', '曲阜市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370883', '370800', '邹城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370900', '370000', '泰安市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('370902', '370900', '泰山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370911', '370900', '岱岳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370921', '370900', '宁阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370923', '370900', '东平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370982', '370900', '新泰市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('370983', '370900', '肥城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371000', '370000', '威海市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371002', '371000', '环翠区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371081', '371000', '文登市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371082', '371000', '荣成市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371083', '371000', '乳山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371100', '370000', '日照市', '0', '0', 'R', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371102', '371100', '东港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371103', '371100', '岚山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371121', '371100', '五莲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371122', '371100', '莒县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371200', '370000', '莱芜市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371202', '371200', '莱城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371203', '371200', '钢城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371300', '370000', '临沂市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371302', '371300', '兰山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371311', '371300', '罗庄区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371312', '371300', '河东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371321', '371300', '沂南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371322', '371300', '郯城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371323', '371300', '沂水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371324', '371300', '兰陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371325', '371300', '费县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371326', '371300', '平邑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371327', '371300', '莒南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371328', '371300', '蒙阴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371329', '371300', '临沭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371400', '370000', '德州市', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371402', '371400', '德城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371403', '371400', '陵城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371422', '371400', '宁津县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371423', '371400', '庆云县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371424', '371400', '临邑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371425', '371400', '齐河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371426', '371400', '平原县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371427', '371400', '夏津县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371428', '371400', '武城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371481', '371400', '乐陵市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371482', '371400', '禹城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371500', '370000', '聊城市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371502', '371500', '东昌府区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371521', '371500', '阳谷县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371522', '371500', '莘县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371523', '371500', '茌平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371524', '371500', '东阿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371525', '371500', '冠县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371526', '371500', '高唐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371581', '371500', '临清市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371600', '370000', '滨州市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371602', '371600', '滨城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371603', '371600', '沾化区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371621', '371600', '惠民县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371622', '371600', '阳信县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371623', '371600', '无棣县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371625', '371600', '博兴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371626', '371600', '邹平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371700', '370000', '菏泽市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('371702', '371700', '牡丹区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371721', '371700', '曹县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371722', '371700', '单县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371723', '371700', '成武县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371724', '371700', '巨野县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371725', '371700', '郓城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371726', '371700', '鄄城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371727', '371700', '定陶县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('371728', '371700', '东明县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410000', '0', '河南省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('410100', '410000', '郑州市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410102', '410100', '中原区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410103', '410100', '二七区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410104', '410100', '管城回族区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410105', '410100', '金水区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410106', '410100', '上街区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410108', '410100', '惠济区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410122', '410100', '中牟县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410181', '410100', '巩义市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410182', '410100', '荥阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410183', '410100', '新密市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410184', '410100', '新郑市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410185', '410100', '登封市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410200', '410000', '开封市', '0', '0', 'K', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410202', '410200', '龙亭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410203', '410200', '顺河回族区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410204', '410200', '鼓楼区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410205', '410200', '禹王台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410212', '410200', '祥符区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410221', '410200', '杞县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410222', '410200', '通许县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410223', '410200', '尉氏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410225', '410200', '兰考县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410300', '410000', '洛阳市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410302', '410300', '老城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410303', '410300', '西工区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410304', '410300', '瀍河回族区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410305', '410300', '涧西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410306', '410300', '吉利区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410311', '410300', '洛龙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410322', '410300', '孟津县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410323', '410300', '新安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410324', '410300', '栾川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410325', '410300', '嵩县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410326', '410300', '汝阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410327', '410300', '宜阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410328', '410300', '洛宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410329', '410300', '伊川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410381', '410300', '偃师市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410400', '410000', '平顶山市', '0', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410402', '410400', '新华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410403', '410400', '卫东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410404', '410400', '石龙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410411', '410400', '湛河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410421', '410400', '宝丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410422', '410400', '叶县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410423', '410400', '鲁山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410425', '410400', '郏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410481', '410400', '舞钢市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410482', '410400', '汝州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410500', '410000', '安阳市', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410502', '410500', '文峰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410503', '410500', '北关区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410505', '410500', '殷都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410506', '410500', '龙安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410522', '410500', '安阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410523', '410500', '汤阴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410526', '410500', '滑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410527', '410500', '内黄县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410581', '410500', '林州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410600', '410000', '鹤壁市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410602', '410600', '鹤山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410603', '410600', '山城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410611', '410600', '淇滨区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410621', '410600', '浚县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410622', '410600', '淇县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410700', '410000', '新乡市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410702', '410700', '红旗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410703', '410700', '卫滨区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410704', '410700', '凤泉区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410711', '410700', '牧野区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410721', '410700', '新乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410724', '410700', '获嘉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410725', '410700', '原阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410726', '410700', '延津县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410727', '410700', '封丘县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410728', '410700', '长垣县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410781', '410700', '卫辉市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410782', '410700', '辉县市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410800', '410000', '焦作市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410802', '410800', '解放区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410803', '410800', '中站区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410804', '410800', '马村区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410811', '410800', '山阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410821', '410800', '修武县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410822', '410800', '博爱县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410823', '410800', '武陟县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410825', '410800', '温县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410882', '410800', '沁阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410883', '410800', '孟州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410900', '410000', '濮阳市', '0', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('410902', '410900', '华龙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410922', '410900', '清丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410923', '410900', '南乐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410926', '410900', '范县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410927', '410900', '台前县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('410928', '410900', '濮阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411000', '410000', '许昌市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411002', '411000', '魏都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411023', '411000', '许昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411024', '411000', '鄢陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411025', '411000', '襄城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411081', '411000', '禹州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411082', '411000', '长葛市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411100', '410000', '漯河市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411102', '411100', '源汇区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411103', '411100', '郾城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411104', '411100', '召陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411121', '411100', '舞阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411122', '411100', '临颍县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411200', '410000', '三门峡市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411202', '411200', '湖滨区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411203', '411200', '陕州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411221', '411200', '渑池县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411224', '411200', '卢氏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411281', '411200', '义马市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411282', '411200', '灵宝市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411300', '410000', '南阳市', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411302', '411300', '宛城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411303', '411300', '卧龙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411321', '411300', '南召县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411322', '411300', '方城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411323', '411300', '西峡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411324', '411300', '镇平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411325', '411300', '内乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411326', '411300', '淅川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411327', '411300', '社旗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411328', '411300', '唐河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411329', '411300', '新野县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411330', '411300', '桐柏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411381', '411300', '邓州市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411400', '410000', '商丘市', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411402', '411400', '梁园区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411403', '411400', '睢阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411421', '411400', '民权县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411422', '411400', '睢县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411423', '411400', '宁陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411424', '411400', '柘城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411425', '411400', '虞城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411426', '411400', '夏邑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411481', '411400', '永城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411500', '410000', '信阳市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411502', '411500', '浉河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411503', '411500', '平桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411521', '411500', '罗山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411522', '411500', '光山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411523', '411500', '新县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411524', '411500', '商城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411525', '411500', '固始县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411526', '411500', '潢川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411527', '411500', '淮滨县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411528', '411500', '息县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411600', '410000', '周口市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411602', '411600', '川汇区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411621', '411600', '扶沟县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411622', '411600', '西华县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411623', '411600', '商水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411624', '411600', '沈丘县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411625', '411600', '郸城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411626', '411600', '淮阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411627', '411600', '太康县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411628', '411600', '鹿邑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411681', '411600', '项城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411700', '410000', '驻马店市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('411702', '411700', '驿城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411721', '411700', '西平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411722', '411700', '上蔡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411723', '411700', '平舆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411724', '411700', '正阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411725', '411700', '确山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411726', '411700', '泌阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411727', '411700', '汝南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411728', '411700', '遂平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('411729', '411700', '新蔡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('419000', '410000', '省直辖县级行政区划', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('419001', '419000', '济源市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420000', '0', '湖北省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('420100', '420000', '武汉市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420102', '420100', '江岸区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420103', '420100', '江汉区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420104', '420100', '硚口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420105', '420100', '汉阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420106', '420100', '武昌区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420107', '420100', '青山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420111', '420100', '洪山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420112', '420100', '东西湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420113', '420100', '汉南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420114', '420100', '蔡甸区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420115', '420100', '江夏区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420116', '420100', '黄陂区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420117', '420100', '新洲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420200', '420000', '黄石市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420202', '420200', '黄石港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420203', '420200', '西塞山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420204', '420200', '下陆区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420205', '420200', '铁山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420222', '420200', '阳新县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420281', '420200', '大冶市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420300', '420000', '十堰市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420302', '420300', '茅箭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420303', '420300', '张湾区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420304', '420300', '郧阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420322', '420300', '郧西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420323', '420300', '竹山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420324', '420300', '竹溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420325', '420300', '房县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420381', '420300', '丹江口市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420500', '420000', '宜昌市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420502', '420500', '西陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420503', '420500', '伍家岗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420504', '420500', '点军区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420505', '420500', '猇亭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420506', '420500', '夷陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420525', '420500', '远安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420526', '420500', '兴山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420527', '420500', '秭归县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420528', '420500', '长阳土家族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420529', '420500', '五峰土家族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420581', '420500', '宜都市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420582', '420500', '当阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420583', '420500', '枝江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420600', '420000', '襄阳市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420602', '420600', '襄城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420606', '420600', '樊城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420607', '420600', '襄州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420624', '420600', '南漳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420625', '420600', '谷城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420626', '420600', '保康县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420682', '420600', '老河口市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420683', '420600', '枣阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420684', '420600', '宜城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420700', '420000', '鄂州市', '0', '0', 'E', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420702', '420700', '梁子湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420703', '420700', '华容区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420704', '420700', '鄂城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420800', '420000', '荆门市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420802', '420800', '东宝区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420804', '420800', '掇刀区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420821', '420800', '京山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420822', '420800', '沙洋县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420881', '420800', '钟祥市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420900', '420000', '孝感市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('420902', '420900', '孝南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420921', '420900', '孝昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420922', '420900', '大悟县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420923', '420900', '云梦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420981', '420900', '应城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420982', '420900', '安陆市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('420984', '420900', '汉川市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421000', '420000', '荆州市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('421002', '421000', '沙市区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421003', '421000', '荆州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421022', '421000', '公安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421023', '421000', '监利县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421024', '421000', '江陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421081', '421000', '石首市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421083', '421000', '洪湖市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421087', '421000', '松滋市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421100', '420000', '黄冈市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('421102', '421100', '黄州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421121', '421100', '团风县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421122', '421100', '红安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421123', '421100', '罗田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421124', '421100', '英山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421125', '421100', '浠水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421126', '421100', '蕲春县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421127', '421100', '黄梅县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421181', '421100', '麻城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421182', '421100', '武穴市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421200', '420000', '咸宁市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('421202', '421200', '咸安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421221', '421200', '嘉鱼县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421222', '421200', '通城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421223', '421200', '崇阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421224', '421200', '通山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421281', '421200', '赤壁市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421300', '420000', '随州市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('421303', '421300', '曾都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421321', '421300', '随县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('421381', '421300', '广水市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422800', '420000', '恩施土家族苗族自治州', '0', '0', 'E', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('422801', '422800', '恩施市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422802', '422800', '利川市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422822', '422800', '建始县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422823', '422800', '巴东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422825', '422800', '宣恩县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422826', '422800', '咸丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422827', '422800', '来凤县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('422828', '422800', '鹤峰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('429000', '420000', '省直辖县级行政区划', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('429004', '429000', '仙桃市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('429005', '429000', '潜江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('429006', '429000', '天门市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('429021', '429000', '神农架林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430000', '0', '湖南省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('430100', '430000', '长沙市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430102', '430100', '芙蓉区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430103', '430100', '天心区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430104', '430100', '岳麓区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430105', '430100', '开福区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430111', '430100', '雨花区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430112', '430100', '望城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430121', '430100', '长沙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430124', '430100', '宁乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430181', '430100', '浏阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430200', '430000', '株洲市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430202', '430200', '荷塘区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430203', '430200', '芦淞区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430204', '430200', '石峰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430211', '430200', '天元区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430221', '430200', '株洲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430223', '430200', '攸县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430224', '430200', '茶陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430225', '430200', '炎陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430281', '430200', '醴陵市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430300', '430000', '湘潭市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430302', '430300', '雨湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430304', '430300', '岳塘区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430321', '430300', '湘潭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430381', '430300', '湘乡市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430382', '430300', '韶山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430400', '430000', '衡阳市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430405', '430400', '珠晖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430406', '430400', '雁峰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430407', '430400', '石鼓区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430408', '430400', '蒸湘区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430412', '430400', '南岳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430421', '430400', '衡阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430422', '430400', '衡南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430423', '430400', '衡山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430424', '430400', '衡东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430426', '430400', '祁东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430481', '430400', '耒阳市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430482', '430400', '常宁市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430500', '430000', '邵阳市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430502', '430500', '双清区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430503', '430500', '大祥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430511', '430500', '北塔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430521', '430500', '邵东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430522', '430500', '新邵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430523', '430500', '邵阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430524', '430500', '隆回县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430525', '430500', '洞口县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430527', '430500', '绥宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430528', '430500', '新宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430529', '430500', '城步苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430581', '430500', '武冈市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430600', '430000', '岳阳市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430602', '430600', '岳阳楼区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430603', '430600', '云溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430611', '430600', '君山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430621', '430600', '岳阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430623', '430600', '华容县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430624', '430600', '湘阴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430626', '430600', '平江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430681', '430600', '汨罗市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430682', '430600', '临湘市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430700', '430000', '常德市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430702', '430700', '武陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430703', '430700', '鼎城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430721', '430700', '安乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430722', '430700', '汉寿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430723', '430700', '澧县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430724', '430700', '临澧县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430725', '430700', '桃源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430726', '430700', '石门县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430781', '430700', '津市市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430800', '430000', '张家界市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430802', '430800', '永定区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430811', '430800', '武陵源区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430821', '430800', '慈利县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430822', '430800', '桑植县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430900', '430000', '益阳市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('430902', '430900', '资阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430903', '430900', '赫山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430921', '430900', '南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430922', '430900', '桃江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430923', '430900', '安化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('430981', '430900', '沅江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431000', '430000', '郴州市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('431002', '431000', '北湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431003', '431000', '苏仙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431021', '431000', '桂阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431022', '431000', '宜章县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431023', '431000', '永兴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431024', '431000', '嘉禾县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431025', '431000', '临武县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431026', '431000', '汝城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431027', '431000', '桂东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431028', '431000', '安仁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431081', '431000', '资兴市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431100', '430000', '永州市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('431102', '431100', '零陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431103', '431100', '冷水滩区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431121', '431100', '祁阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431122', '431100', '东安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431123', '431100', '双牌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431124', '431100', '道县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431125', '431100', '江永县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431126', '431100', '宁远县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431127', '431100', '蓝山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431128', '431100', '新田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431129', '431100', '江华瑶族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431200', '430000', '怀化市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('431202', '431200', '鹤城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431221', '431200', '中方县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431222', '431200', '沅陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431223', '431200', '辰溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431224', '431200', '溆浦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431225', '431200', '会同县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431226', '431200', '麻阳苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431227', '431200', '新晃侗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431228', '431200', '芷江侗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431229', '431200', '靖州苗族侗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431230', '431200', '通道侗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431281', '431200', '洪江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431300', '430000', '娄底市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('431302', '431300', '娄星区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431321', '431300', '双峰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431322', '431300', '新化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431381', '431300', '冷水江市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('431382', '431300', '涟源市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433100', '430000', '湘西土家族苗族自治州', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('433101', '433100', '吉首市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433122', '433100', '泸溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433123', '433100', '凤凰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433124', '433100', '花垣县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433125', '433100', '保靖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433126', '433100', '古丈县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433127', '433100', '永顺县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('433130', '433100', '龙山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440000', '0', '广东省', '1', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('440100', '440000', '广州市', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440103', '440100', '荔湾区', '1', '1', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440104', '440100', '越秀区', '1', '2', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440105', '440100', '海珠区', '1', '3', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440106', '440100', '天河区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440111', '440100', '白云区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440112', '440100', '黄埔区', '1', '4', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440113', '440100', '番禺区', '1', '5', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440114', '440100', '花都区', '1', '6', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440115', '440100', '南沙区', '1', '7', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440117', '440100', '从化区', '1', '8', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440118', '440100', '增城区', '1', '9', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440200', '440000', '韶关市', '1', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440203', '440200', '武江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440204', '440200', '浈江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440205', '440200', '曲江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440222', '440200', '始兴县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440224', '440200', '仁化县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440229', '440200', '翁源县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440232', '440200', '乳源瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440233', '440200', '新丰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440281', '440200', '乐昌市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440282', '440200', '南雄市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440300', '440000', '深圳市', '1', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440303', '440300', '罗湖区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440304', '440300', '福田区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440305', '440300', '南山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440306', '440300', '宝安区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440307', '440300', '龙岗区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440308', '440300', '盐田区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440400', '440000', '珠海市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440402', '440400', '香洲区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440403', '440400', '斗门区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440404', '440400', '金湾区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440500', '440000', '汕头市', '1', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440507', '440500', '龙湖区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440511', '440500', '金平区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440512', '440500', '濠江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440513', '440500', '潮阳区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440514', '440500', '潮南区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440515', '440500', '澄海区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440523', '440500', '南澳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440600', '440000', '佛山市', '1', '0', 'F', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440604', '440600', '禅城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440605', '440600', '南海区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440606', '440600', '顺德区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440607', '440600', '三水区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440608', '440600', '高明区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440700', '440000', '江门市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440703', '440700', '蓬江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440704', '440700', '江海区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440705', '440700', '新会区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440781', '440700', '台山市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440783', '440700', '开平市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440784', '440700', '鹤山市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440785', '440700', '恩平市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440800', '440000', '湛江市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440802', '440800', '赤坎区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440803', '440800', '霞山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440804', '440800', '坡头区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440811', '440800', '麻章区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440823', '440800', '遂溪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440825', '440800', '徐闻县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440881', '440800', '廉江市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440882', '440800', '雷州市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440883', '440800', '吴川市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440900', '440000', '茂名市', '1', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('440902', '440900', '茂南区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440904', '440900', '电白区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440981', '440900', '高州市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440982', '440900', '化州市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('440983', '440900', '信宜市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441200', '440000', '肇庆市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('441202', '441200', '端州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441203', '441200', '鼎湖区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441223', '441200', '广宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441224', '441200', '怀集县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441225', '441200', '封开县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441226', '441200', '德庆县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441283', '441200', '高要市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441284', '441200', '四会市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441300', '440000', '惠州市', '1', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('441302', '441300', '惠城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441303', '441300', '惠阳区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441322', '441300', '博罗县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441323', '441300', '惠东县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441324', '441300', '龙门县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441400', '440000', '梅州市', '1', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('441402', '441400', '梅江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441403', '441400', '梅县区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441422', '441400', '大埔县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441423', '441400', '丰顺县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441424', '441400', '五华县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441426', '441400', '平远县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441427', '441400', '蕉岭县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441481', '441400', '兴宁市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441500', '440000', '汕尾市', '1', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('441502', '441500', '城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441521', '441500', '海丰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441523', '441500', '陆河县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441581', '441500', '陆丰市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441600', '440000', '河源市', '1', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('441602', '441600', '源城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441621', '441600', '紫金县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441622', '441600', '龙川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441623', '441600', '连平县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441624', '441600', '和平县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441625', '441600', '东源县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441700', '440000', '阳江市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('441702', '441700', '江城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441704', '441700', '阳东区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441721', '441700', '阳西县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441781', '441700', '阳春市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441800', '440000', '清远市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('441802', '441800', '清城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441803', '441800', '清新区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441821', '441800', '佛冈县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441823', '441800', '阳山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441825', '441800', '连山壮族瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441826', '441800', '连南瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441881', '441800', '英德市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441882', '441800', '连州市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('441900', '440000', '东莞市', '1', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('442000', '440000', '中山市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('445100', '440000', '潮州市', '1', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('445102', '445100', '湘桥区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445103', '445100', '潮安区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445122', '445100', '饶平县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445200', '440000', '揭阳市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('445202', '445200', '榕城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445203', '445200', '揭东区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445222', '445200', '揭西县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445224', '445200', '惠来县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445281', '445200', '普宁市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445300', '440000', '云浮市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('445302', '445300', '云城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445303', '445300', '云安区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445321', '445300', '新兴县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445322', '445300', '郁南县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('445381', '445300', '罗定市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450000', '0', '广西壮族自治区', '1', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('450100', '450000', '南宁市', '1', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450102', '450100', '兴宁区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450103', '450100', '青秀区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450105', '450100', '江南区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450107', '450100', '西乡塘区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450108', '450100', '良庆区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450109', '450100', '邕宁区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450110', '450100', '武鸣区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450123', '450100', '隆安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450124', '450100', '马山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450125', '450100', '上林县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450126', '450100', '宾阳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450127', '450100', '横县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450200', '450000', '柳州市', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450202', '450200', '城中区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450203', '450200', '鱼峰区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450204', '450200', '柳南区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450205', '450200', '柳北区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450221', '450200', '柳江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450222', '450200', '柳城县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450223', '450200', '鹿寨县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450224', '450200', '融安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450225', '450200', '融水苗族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450226', '450200', '三江侗族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450300', '450000', '桂林市', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450302', '450300', '秀峰区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450303', '450300', '叠彩区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450304', '450300', '象山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450305', '450300', '七星区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450311', '450300', '雁山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450312', '450300', '临桂区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450321', '450300', '阳朔县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450323', '450300', '灵川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450324', '450300', '全州县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450325', '450300', '兴安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450326', '450300', '永福县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450327', '450300', '灌阳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450328', '450300', '龙胜各族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450329', '450300', '资源县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450330', '450300', '平乐县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450331', '450300', '荔浦县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450332', '450300', '恭城瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450400', '450000', '梧州市', '1', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450403', '450400', '万秀区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450405', '450400', '长洲区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450406', '450400', '龙圩区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450421', '450400', '苍梧县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450422', '450400', '藤县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450423', '450400', '蒙山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450481', '450400', '岑溪市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450500', '450000', '北海市', '1', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450502', '450500', '海城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450503', '450500', '银海区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450512', '450500', '铁山港区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450521', '450500', '合浦县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450600', '450000', '防城港市', '1', '0', 'F', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450602', '450600', '港口区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450603', '450600', '防城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450621', '450600', '上思县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450681', '450600', '东兴市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450700', '450000', '钦州市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450702', '450700', '钦南区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450703', '450700', '钦北区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450721', '450700', '灵山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450722', '450700', '浦北县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450800', '450000', '贵港市', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450802', '450800', '港北区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450803', '450800', '港南区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450804', '450800', '覃塘区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450821', '450800', '平南县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450881', '450800', '桂平市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450900', '450000', '玉林市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('450902', '450900', '玉州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450903', '450900', '福绵区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450921', '450900', '容县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450922', '450900', '陆川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450923', '450900', '博白县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450924', '450900', '兴业县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('450981', '450900', '北流市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451000', '450000', '百色市', '1', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('451002', '451000', '右江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451021', '451000', '田阳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451022', '451000', '田东县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451023', '451000', '平果县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451024', '451000', '德保县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451025', '451000', '靖西县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451026', '451000', '那坡县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451027', '451000', '凌云县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451028', '451000', '乐业县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451029', '451000', '田林县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451030', '451000', '西林县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451031', '451000', '隆林各族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451100', '450000', '贺州市', '1', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('451102', '451100', '八步区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451119', '451100', '平桂管理区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451121', '451100', '昭平县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451122', '451100', '钟山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451123', '451100', '富川瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451200', '450000', '河池市', '1', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('451202', '451200', '金城江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451221', '451200', '南丹县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451222', '451200', '天峨县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451223', '451200', '凤山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451224', '451200', '东兰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451225', '451200', '罗城仫佬族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451226', '451200', '环江毛南族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451227', '451200', '巴马瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451228', '451200', '都安瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451229', '451200', '大化瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451281', '451200', '宜州市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451300', '450000', '来宾市', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('451302', '451300', '兴宾区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451321', '451300', '忻城县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451322', '451300', '象州县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451323', '451300', '武宣县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451324', '451300', '金秀瑶族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451381', '451300', '合山市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451400', '450000', '崇左市', '1', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('451402', '451400', '江州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451421', '451400', '扶绥县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451422', '451400', '宁明县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451423', '451400', '龙州县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451424', '451400', '大新县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451425', '451400', '天等县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('451481', '451400', '凭祥市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460000', '0', '海南省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('460100', '460000', '海口市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('460105', '460100', '秀英区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460106', '460100', '龙华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460107', '460100', '琼山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460108', '460100', '美兰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460200', '460000', '三亚市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('460202', '460200', '海棠区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460203', '460200', '吉阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460204', '460200', '天涯区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460205', '460200', '崖州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('460300', '460000', '三沙市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('460400', '460000', '儋州市', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('469000', '460000', '省直辖县级行政区划', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('469001', '469000', '五指山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469002', '469000', '琼海市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469005', '469000', '文昌市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469006', '469000', '万宁市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469007', '469000', '东方市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469021', '469000', '定安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469022', '469000', '屯昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469023', '469000', '澄迈县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469024', '469000', '临高县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469025', '469000', '白沙黎族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469026', '469000', '昌江黎族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469027', '469000', '乐东黎族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469028', '469000', '陵水黎族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469029', '469000', '保亭黎族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('469030', '469000', '琼中黎族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500000', '0', '重庆市', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('500101', '500100', '万州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500102', '500100', '涪陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500103', '500100', '渝中区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500104', '500100', '大渡口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500105', '500100', '江北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500106', '500100', '沙坪坝区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500107', '500100', '九龙坡区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500108', '500100', '南岸区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500109', '500100', '北碚区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500110', '500100', '綦江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500111', '500100', '大足区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500112', '500100', '渝北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500113', '500100', '巴南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500114', '500100', '黔江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500115', '500100', '长寿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500116', '500100', '江津区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500117', '500100', '合川区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500118', '500100', '永川区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500119', '500100', '南川区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500120', '500100', '璧山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500151', '500100', '铜梁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500223', '500200', '潼南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500226', '500200', '荣昌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500228', '500200', '梁平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500229', '500200', '城口县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500230', '500200', '丰都县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500231', '500200', '垫江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500232', '500200', '武隆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500233', '500200', '忠县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500234', '500200', '开县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500235', '500200', '云阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500236', '500200', '奉节县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500237', '500200', '巫山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500238', '500200', '巫溪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500240', '500200', '石柱土家族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500241', '500200', '秀山土家族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500242', '500200', '酉阳土家族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('500243', '500200', '彭水苗族土家族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510000', '0', '四川省', '1', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('510100', '510000', '成都市', '1', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510104', '510100', '锦江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510105', '510100', '青羊区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510106', '510100', '金牛区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510107', '510100', '武侯区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510108', '510100', '成华区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510112', '510100', '龙泉驿区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510113', '510100', '青白江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510114', '510100', '新都区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510115', '510100', '温江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510121', '510100', '金堂县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510122', '510100', '双流县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510124', '510100', '郫县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510129', '510100', '大邑县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510131', '510100', '蒲江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510132', '510100', '新津县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510181', '510100', '都江堰市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510182', '510100', '彭州市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510183', '510100', '邛崃市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510184', '510100', '崇州市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510300', '510000', '自贡市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510302', '510300', '自流井区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510303', '510300', '贡井区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510304', '510300', '大安区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510311', '510300', '沿滩区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510321', '510300', '荣县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510322', '510300', '富顺县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510400', '510000', '攀枝花市', '1', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510402', '510400', '东区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510403', '510400', '西区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510411', '510400', '仁和区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510421', '510400', '米易县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510422', '510400', '盐边县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510500', '510000', '泸州市', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510502', '510500', '江阳区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510503', '510500', '纳溪区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510504', '510500', '龙马潭区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510521', '510500', '泸县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510522', '510500', '合江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510524', '510500', '叙永县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510525', '510500', '古蔺县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510600', '510000', '德阳市', '1', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510603', '510600', '旌阳区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510623', '510600', '中江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510626', '510600', '罗江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510681', '510600', '广汉市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510682', '510600', '什邡市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510683', '510600', '绵竹市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510700', '510000', '绵阳市', '1', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510703', '510700', '涪城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510704', '510700', '游仙区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510722', '510700', '三台县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510723', '510700', '盐亭县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510724', '510700', '安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510725', '510700', '梓潼县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510726', '510700', '北川羌族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510727', '510700', '平武县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510781', '510700', '江油市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510800', '510000', '广元市', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510802', '510800', '利州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510811', '510800', '昭化区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510812', '510800', '朝天区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510821', '510800', '旺苍县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510822', '510800', '青川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510823', '510800', '剑阁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510824', '510800', '苍溪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510900', '510000', '遂宁市', '1', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('510903', '510900', '船山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510904', '510900', '安居区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510921', '510900', '蓬溪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510922', '510900', '射洪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('510923', '510900', '大英县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511000', '510000', '内江市', '1', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511002', '511000', '市中区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511011', '511000', '东兴区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511024', '511000', '威远县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511025', '511000', '资中县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511028', '511000', '隆昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511100', '510000', '乐山市', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511102', '511100', '市中区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511111', '511100', '沙湾区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511112', '511100', '五通桥区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511113', '511100', '金口河区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511123', '511100', '犍为县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511124', '511100', '井研县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511126', '511100', '夹江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511129', '511100', '沐川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511132', '511100', '峨边彝族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511133', '511100', '马边彝族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511181', '511100', '峨眉山市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511300', '510000', '南充市', '1', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511302', '511300', '顺庆区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511303', '511300', '高坪区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511304', '511300', '嘉陵区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511321', '511300', '南部县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511322', '511300', '营山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511323', '511300', '蓬安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511324', '511300', '仪陇县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511325', '511300', '西充县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511381', '511300', '阆中市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511400', '510000', '眉山市', '1', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511402', '511400', '东坡区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511403', '511400', '彭山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511421', '511400', '仁寿县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511423', '511400', '洪雅县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511424', '511400', '丹棱县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511425', '511400', '青神县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511500', '510000', '宜宾市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511502', '511500', '翠屏区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511503', '511500', '南溪区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511521', '511500', '宜宾县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511523', '511500', '江安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511524', '511500', '长宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511525', '511500', '高县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511526', '511500', '珙县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511527', '511500', '筠连县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511528', '511500', '兴文县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511529', '511500', '屏山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511600', '510000', '广安市', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511602', '511600', '广安区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511603', '511600', '前锋区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511621', '511600', '岳池县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511622', '511600', '武胜县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511623', '511600', '邻水县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511681', '511600', '华蓥市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511700', '510000', '达州市', '1', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511702', '511700', '通川区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511703', '511700', '达川区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511722', '511700', '宣汉县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511723', '511700', '开江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511724', '511700', '大竹县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511725', '511700', '渠县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511781', '511700', '万源市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511800', '510000', '雅安市', '1', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511802', '511800', '雨城区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511803', '511800', '名山区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511822', '511800', '荥经县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511823', '511800', '汉源县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511824', '511800', '石棉县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511825', '511800', '天全县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511826', '511800', '芦山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511827', '511800', '宝兴县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511900', '510000', '巴中市', '1', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('511902', '511900', '巴州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511903', '511900', '恩阳区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511921', '511900', '通江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511922', '511900', '南江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('511923', '511900', '平昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('512000', '510000', '资阳市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('512002', '512000', '雁江区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('512021', '512000', '安岳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('512022', '512000', '乐至县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('512081', '512000', '简阳市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513200', '510000', '阿坝藏族羌族自治州', '1', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('513221', '513200', '汶川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513222', '513200', '理县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513223', '513200', '茂县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513224', '513200', '松潘县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513225', '513200', '九寨沟县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513226', '513200', '金川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513227', '513200', '小金县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513228', '513200', '黑水县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513229', '513200', '马尔康县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513230', '513200', '壤塘县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513231', '513200', '阿坝县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513232', '513200', '若尔盖县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513233', '513200', '红原县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513300', '510000', '甘孜藏族自治州', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('513301', '513300', '康定市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513322', '513300', '泸定县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513323', '513300', '丹巴县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513324', '513300', '九龙县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513325', '513300', '雅江县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513326', '513300', '道孚县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513327', '513300', '炉霍县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513328', '513300', '甘孜县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513329', '513300', '新龙县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513330', '513300', '德格县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513331', '513300', '白玉县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513332', '513300', '石渠县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513333', '513300', '色达县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513334', '513300', '理塘县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513335', '513300', '巴塘县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513336', '513300', '乡城县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513337', '513300', '稻城县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513338', '513300', '得荣县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513400', '510000', '凉山彝族自治州', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('513401', '513400', '西昌市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513422', '513400', '木里藏族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513423', '513400', '盐源县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513424', '513400', '德昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513425', '513400', '会理县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513426', '513400', '会东县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513427', '513400', '宁南县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513428', '513400', '普格县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513429', '513400', '布拖县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513430', '513400', '金阳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513431', '513400', '昭觉县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513432', '513400', '喜德县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513433', '513400', '冕宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513434', '513400', '越西县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513435', '513400', '甘洛县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513436', '513400', '美姑县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('513437', '513400', '雷波县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520000', '0', '贵州省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('520100', '520000', '贵阳市', '0', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('520102', '520100', '南明区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520103', '520100', '云岩区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520111', '520100', '花溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520112', '520100', '乌当区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520113', '520100', '白云区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520115', '520100', '观山湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520121', '520100', '开阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520122', '520100', '息烽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520123', '520100', '修文县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520181', '520100', '清镇市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520200', '520000', '六盘水市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('520201', '520200', '钟山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520203', '520200', '六枝特区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520221', '520200', '水城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520222', '520200', '盘县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520300', '520000', '遵义市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('520302', '520300', '红花岗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520303', '520300', '汇川区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520321', '520300', '遵义县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520322', '520300', '桐梓县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520323', '520300', '绥阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520324', '520300', '正安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520325', '520300', '道真仡佬族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520326', '520300', '务川仡佬族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520327', '520300', '凤冈县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520328', '520300', '湄潭县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520329', '520300', '余庆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520330', '520300', '习水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520381', '520300', '赤水市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520382', '520300', '仁怀市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520400', '520000', '安顺市', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('520402', '520400', '西秀区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520403', '520400', '平坝区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520422', '520400', '普定县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520423', '520400', '镇宁布依族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520424', '520400', '关岭布依族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520425', '520400', '紫云苗族布依族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520500', '520000', '毕节市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('520502', '520500', '七星关区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520521', '520500', '大方县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520522', '520500', '黔西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520523', '520500', '金沙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520524', '520500', '织金县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520525', '520500', '纳雍县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520526', '520500', '威宁彝族回族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520527', '520500', '赫章县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520600', '520000', '铜仁市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('520602', '520600', '碧江区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520603', '520600', '万山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520621', '520600', '江口县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520622', '520600', '玉屏侗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520623', '520600', '石阡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520624', '520600', '思南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520625', '520600', '印江土家族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520626', '520600', '德江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520627', '520600', '沿河土家族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('520628', '520600', '松桃苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522300', '520000', '黔西南布依族苗族自治州', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('522301', '522300', '兴义市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522322', '522300', '兴仁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522323', '522300', '普安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522324', '522300', '晴隆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522325', '522300', '贞丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522326', '522300', '望谟县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522327', '522300', '册亨县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522328', '522300', '安龙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522600', '520000', '黔东南苗族侗族自治州', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('522601', '522600', '凯里市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522622', '522600', '黄平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522623', '522600', '施秉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522624', '522600', '三穗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522625', '522600', '镇远县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522626', '522600', '岑巩县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522627', '522600', '天柱县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522628', '522600', '锦屏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522629', '522600', '剑河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522630', '522600', '台江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522631', '522600', '黎平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522632', '522600', '榕江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522633', '522600', '从江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522634', '522600', '雷山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522635', '522600', '麻江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522636', '522600', '丹寨县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522700', '520000', '黔南布依族苗族自治州', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('522701', '522700', '都匀市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522702', '522700', '福泉市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522722', '522700', '荔波县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522723', '522700', '贵定县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522725', '522700', '瓮安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522726', '522700', '独山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522727', '522700', '平塘县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522728', '522700', '罗甸县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522729', '522700', '长顺县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522730', '522700', '龙里县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522731', '522700', '惠水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('522732', '522700', '三都水族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530000', '0', '云南省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('530100', '530000', '昆明市', '0', '0', 'K', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530102', '530100', '五华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530103', '530100', '盘龙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530111', '530100', '官渡区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530112', '530100', '西山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530113', '530100', '东川区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530114', '530100', '呈贡区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530122', '530100', '晋宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530124', '530100', '富民县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530125', '530100', '宜良县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530126', '530100', '石林彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530127', '530100', '嵩明县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530128', '530100', '禄劝彝族苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530129', '530100', '寻甸回族彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530181', '530100', '安宁市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530300', '530000', '曲靖市', '0', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530302', '530300', '麒麟区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530321', '530300', '马龙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530322', '530300', '陆良县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530323', '530300', '师宗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530324', '530300', '罗平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530325', '530300', '富源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530326', '530300', '会泽县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530328', '530300', '沾益县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530381', '530300', '宣威市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530400', '530000', '玉溪市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530402', '530400', '红塔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530421', '530400', '江川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530422', '530400', '澄江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530423', '530400', '通海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530424', '530400', '华宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530425', '530400', '易门县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530426', '530400', '峨山彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530427', '530400', '新平彝族傣族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530428', '530400', '元江哈尼族彝族傣族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530500', '530000', '保山市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530502', '530500', '隆阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530521', '530500', '施甸县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530522', '530500', '腾冲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530523', '530500', '龙陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530524', '530500', '昌宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530600', '530000', '昭通市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530602', '530600', '昭阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530621', '530600', '鲁甸县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530622', '530600', '巧家县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530623', '530600', '盐津县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530624', '530600', '大关县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530625', '530600', '永善县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530626', '530600', '绥江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530627', '530600', '镇雄县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530628', '530600', '彝良县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530629', '530600', '威信县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530630', '530600', '水富县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530700', '530000', '丽江市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530702', '530700', '古城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530721', '530700', '玉龙纳西族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530722', '530700', '永胜县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530723', '530700', '华坪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530724', '530700', '宁蒗彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530800', '530000', '普洱市', '0', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530802', '530800', '思茅区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530821', '530800', '宁洱哈尼族彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530822', '530800', '墨江哈尼族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530823', '530800', '景东彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530824', '530800', '景谷傣族彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530825', '530800', '镇沅彝族哈尼族拉祜族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530826', '530800', '江城哈尼族彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530827', '530800', '孟连傣族拉祜族佤族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530828', '530800', '澜沧拉祜族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530829', '530800', '西盟佤族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530900', '530000', '临沧市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('530902', '530900', '临翔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530921', '530900', '凤庆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530922', '530900', '云县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530923', '530900', '永德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530924', '530900', '镇康县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530925', '530900', '双江拉祜族佤族布朗族傣族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530926', '530900', '耿马傣族佤族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('530927', '530900', '沧源佤族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532300', '530000', '楚雄彝族自治州', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('532301', '532300', '楚雄市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532322', '532300', '双柏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532323', '532300', '牟定县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532324', '532300', '南华县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532325', '532300', '姚安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532326', '532300', '大姚县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532327', '532300', '永仁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532328', '532300', '元谋县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532329', '532300', '武定县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532331', '532300', '禄丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532500', '530000', '红河哈尼族彝族自治州', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('532501', '532500', '个旧市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532502', '532500', '开远市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532503', '532500', '蒙自市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532504', '532500', '弥勒市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532523', '532500', '屏边苗族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532524', '532500', '建水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532525', '532500', '石屏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532527', '532500', '泸西县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532528', '532500', '元阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532529', '532500', '红河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532530', '532500', '金平苗族瑶族傣族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532531', '532500', '绿春县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532532', '532500', '河口瑶族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532600', '530000', '文山壮族苗族自治州', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('532601', '532600', '文山市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532622', '532600', '砚山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532623', '532600', '西畴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532624', '532600', '麻栗坡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532625', '532600', '马关县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532626', '532600', '丘北县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532627', '532600', '广南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532628', '532600', '富宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532800', '530000', '西双版纳傣族自治州', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('532801', '532800', '景洪市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532822', '532800', '勐海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532823', '532800', '勐腊县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532900', '530000', '大理白族自治州', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('532901', '532900', '大理市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532922', '532900', '漾濞彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532923', '532900', '祥云县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532924', '532900', '宾川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532925', '532900', '弥渡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532926', '532900', '南涧彝族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532927', '532900', '巍山彝族回族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532928', '532900', '永平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532929', '532900', '云龙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532930', '532900', '洱源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532931', '532900', '剑川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('532932', '532900', '鹤庆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533100', '530000', '德宏傣族景颇族自治州', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('533102', '533100', '瑞丽市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533103', '533100', '芒市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533122', '533100', '梁河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533123', '533100', '盈江县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533124', '533100', '陇川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533300', '530000', '怒江傈僳族自治州', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('533321', '533300', '泸水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533323', '533300', '福贡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533324', '533300', '贡山独龙族怒族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533325', '533300', '兰坪白族普米族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533400', '530000', '迪庆藏族自治州', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('533401', '533400', '香格里拉市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533422', '533400', '德钦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('533423', '533400', '维西傈僳族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540000', '0', '西藏自治区', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('540100', '540000', '拉萨市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('540102', '540100', '城关区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540121', '540100', '林周县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540122', '540100', '当雄县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540123', '540100', '尼木县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540124', '540100', '曲水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540125', '540100', '堆龙德庆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540126', '540100', '达孜县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540127', '540100', '墨竹工卡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540200', '540000', '日喀则市', '0', '0', 'R', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('540202', '540200', '桑珠孜区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540221', '540200', '南木林县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540222', '540200', '江孜县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540223', '540200', '定日县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540224', '540200', '萨迦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540225', '540200', '拉孜县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540226', '540200', '昂仁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540227', '540200', '谢通门县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540228', '540200', '白朗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540229', '540200', '仁布县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540230', '540200', '康马县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540231', '540200', '定结县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540232', '540200', '仲巴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540233', '540200', '亚东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540234', '540200', '吉隆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540235', '540200', '聂拉木县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540236', '540200', '萨嘎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540237', '540200', '岗巴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540300', '540000', '昌都市', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('540302', '540300', '卡若区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540321', '540300', '江达县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540322', '540300', '贡觉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540323', '540300', '类乌齐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540324', '540300', '丁青县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540325', '540300', '察雅县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540326', '540300', '八宿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540327', '540300', '左贡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540328', '540300', '芒康县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540329', '540300', '洛隆县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540330', '540300', '边坝县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540400', '540000', '林芝市', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('540402', '540400', '巴宜区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540421', '540400', '工布江达县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540422', '540400', '米林县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540423', '540400', '墨脱县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540424', '540400', '波密县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540425', '540400', '察隅县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('540426', '540400', '朗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542200', '540000', '山南地区', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('542221', '542200', '乃东县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542222', '542200', '扎囊县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542223', '542200', '贡嘎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542224', '542200', '桑日县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542225', '542200', '琼结县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542226', '542200', '曲松县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542227', '542200', '措美县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542228', '542200', '洛扎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542229', '542200', '加查县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542231', '542200', '隆子县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542232', '542200', '错那县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542233', '542200', '浪卡子县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542400', '540000', '那曲地区', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('542421', '542400', '那曲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542422', '542400', '嘉黎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542423', '542400', '比如县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542424', '542400', '聂荣县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542425', '542400', '安多县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542426', '542400', '申扎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542427', '542400', '索县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542428', '542400', '班戈县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542429', '542400', '巴青县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542430', '542400', '尼玛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542431', '542400', '双湖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542500', '540000', '阿里地区', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('542521', '542500', '普兰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542522', '542500', '札达县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542523', '542500', '噶尔县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542524', '542500', '日土县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542525', '542500', '革吉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542526', '542500', '改则县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('542527', '542500', '措勤县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610000', '0', '陕西省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('610100', '610000', '西安市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610102', '610100', '新城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610103', '610100', '碑林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610104', '610100', '莲湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610111', '610100', '灞桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610112', '610100', '未央区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610113', '610100', '雁塔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610114', '610100', '阎良区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610115', '610100', '临潼区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610116', '610100', '长安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610117', '610100', '高陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610122', '610100', '蓝田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610124', '610100', '周至县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610125', '610100', '户县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610200', '610000', '铜川市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610202', '610200', '王益区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610203', '610200', '印台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610204', '610200', '耀州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610222', '610200', '宜君县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610300', '610000', '宝鸡市', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610302', '610300', '渭滨区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610303', '610300', '金台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610304', '610300', '陈仓区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610322', '610300', '凤翔县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610323', '610300', '岐山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610324', '610300', '扶风县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610326', '610300', '眉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610327', '610300', '陇县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610328', '610300', '千阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610329', '610300', '麟游县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610330', '610300', '凤县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610331', '610300', '太白县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610400', '610000', '咸阳市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610402', '610400', '秦都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610403', '610400', '杨陵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610404', '610400', '渭城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610422', '610400', '三原县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610423', '610400', '泾阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610424', '610400', '乾县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610425', '610400', '礼泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610426', '610400', '永寿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610427', '610400', '彬县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610428', '610400', '长武县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610429', '610400', '旬邑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610430', '610400', '淳化县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610431', '610400', '武功县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610481', '610400', '兴平市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610500', '610000', '渭南市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610502', '610500', '临渭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610521', '610500', '华县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610522', '610500', '潼关县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610523', '610500', '大荔县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610524', '610500', '合阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610525', '610500', '澄城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610526', '610500', '蒲城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610527', '610500', '白水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610528', '610500', '富平县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610581', '610500', '韩城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610582', '610500', '华阴市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610600', '610000', '延安市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610602', '610600', '宝塔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610621', '610600', '延长县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610622', '610600', '延川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610623', '610600', '子长县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610624', '610600', '安塞县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610625', '610600', '志丹县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610626', '610600', '吴起县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610627', '610600', '甘泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610628', '610600', '富县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610629', '610600', '洛川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610630', '610600', '宜川县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610631', '610600', '黄龙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610632', '610600', '黄陵县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610700', '610000', '汉中市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610702', '610700', '汉台区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610721', '610700', '南郑县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610722', '610700', '城固县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610723', '610700', '洋县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610724', '610700', '西乡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610725', '610700', '勉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610726', '610700', '宁强县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610727', '610700', '略阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610728', '610700', '镇巴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610729', '610700', '留坝县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610730', '610700', '佛坪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610800', '610000', '榆林市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610802', '610800', '榆阳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610821', '610800', '神木县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610822', '610800', '府谷县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610823', '610800', '横山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610824', '610800', '靖边县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610825', '610800', '定边县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610826', '610800', '绥德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610827', '610800', '米脂县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610828', '610800', '佳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610829', '610800', '吴堡县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610830', '610800', '清涧县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610831', '610800', '子洲县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610900', '610000', '安康市', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('610902', '610900', '汉滨区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610921', '610900', '汉阴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610922', '610900', '石泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610923', '610900', '宁陕县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610924', '610900', '紫阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610925', '610900', '岚皋县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610926', '610900', '平利县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610927', '610900', '镇坪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610928', '610900', '旬阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('610929', '610900', '白河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('611000', '610000', '商洛市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('611002', '611000', '商州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('611021', '611000', '洛南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('611022', '611000', '丹凤县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('611023', '611000', '商南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('611024', '611000', '山阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('611025', '611000', '镇安县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('611026', '611000', '柞水县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620000', '0', '甘肃省', '1', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('620100', '620000', '兰州市', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620102', '620100', '城关区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620103', '620100', '七里河区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620104', '620100', '西固区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620105', '620100', '安宁区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620111', '620100', '红古区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620121', '620100', '永登县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620122', '620100', '皋兰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620123', '620100', '榆中县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620200', '620000', '嘉峪关市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620300', '620000', '金昌市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620302', '620300', '金川区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620321', '620300', '永昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620400', '620000', '白银市', '1', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620402', '620400', '白银区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620403', '620400', '平川区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620421', '620400', '靖远县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620422', '620400', '会宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620423', '620400', '景泰县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620500', '620000', '天水市', '1', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620502', '620500', '秦州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620503', '620500', '麦积区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620521', '620500', '清水县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620522', '620500', '秦安县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620523', '620500', '甘谷县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620524', '620500', '武山县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620525', '620500', '张家川回族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620600', '620000', '武威市', '1', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620602', '620600', '凉州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620621', '620600', '民勤县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620622', '620600', '古浪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620623', '620600', '天祝藏族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620700', '620000', '张掖市', '1', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620702', '620700', '甘州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620721', '620700', '肃南裕固族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620722', '620700', '民乐县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620723', '620700', '临泽县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620724', '620700', '高台县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620725', '620700', '山丹县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620800', '620000', '平凉市', '1', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620802', '620800', '崆峒区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620821', '620800', '泾川县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620822', '620800', '灵台县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620823', '620800', '崇信县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620824', '620800', '华亭县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620825', '620800', '庄浪县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620826', '620800', '静宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620900', '620000', '酒泉市', '1', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('620902', '620900', '肃州区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620921', '620900', '金塔县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620922', '620900', '瓜州县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620923', '620900', '肃北蒙古族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620924', '620900', '阿克塞哈萨克族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620981', '620900', '玉门市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('620982', '620900', '敦煌市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621000', '620000', '庆阳市', '1', '0', 'Q', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('621002', '621000', '西峰区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621021', '621000', '庆城县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621022', '621000', '环县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621023', '621000', '华池县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621024', '621000', '合水县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621025', '621000', '正宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621026', '621000', '宁县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621027', '621000', '镇原县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621100', '620000', '定西市', '1', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('621102', '621100', '安定区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621121', '621100', '通渭县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621122', '621100', '陇西县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621123', '621100', '渭源县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621124', '621100', '临洮县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621125', '621100', '漳县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621126', '621100', '岷县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621200', '620000', '陇南市', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('621202', '621200', '武都区', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621221', '621200', '成县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621222', '621200', '文县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621223', '621200', '宕昌县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621224', '621200', '康县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621225', '621200', '西和县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621226', '621200', '礼县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621227', '621200', '徽县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('621228', '621200', '两当县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622900', '620000', '临夏回族自治州', '1', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('622901', '622900', '临夏市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622921', '622900', '临夏县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622922', '622900', '康乐县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622923', '622900', '永靖县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622924', '622900', '广河县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622925', '622900', '和政县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622926', '622900', '东乡族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('622927', '622900', '积石山保安族东乡族撒拉族自治县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623000', '620000', '甘南藏族自治州', '1', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('623001', '623000', '合作市', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623021', '623000', '临潭县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623022', '623000', '卓尼县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623023', '623000', '舟曲县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623024', '623000', '迭部县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623025', '623000', '玛曲县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623026', '623000', '碌曲县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('623027', '623000', '夏河县', '1', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630000', '0', '青海省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('630100', '630000', '西宁市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('630102', '630100', '城东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630103', '630100', '城中区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630104', '630100', '城西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630105', '630100', '城北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630121', '630100', '大通回族土族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630122', '630100', '湟中县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630123', '630100', '湟源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630200', '630000', '海东市', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('630202', '630200', '乐都区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630203', '630200', '平安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630222', '630200', '民和回族土族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630223', '630200', '互助土族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630224', '630200', '化隆回族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('630225', '630200', '循化撒拉族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632200', '630000', '海北藏族自治州', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('632221', '632200', '门源回族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632222', '632200', '祁连县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632223', '632200', '海晏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632224', '632200', '刚察县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632300', '630000', '黄南藏族自治州', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('632321', '632300', '同仁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632322', '632300', '尖扎县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632323', '632300', '泽库县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632324', '632300', '河南蒙古族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632500', '630000', '海南藏族自治州', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('632521', '632500', '共和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632522', '632500', '同德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632523', '632500', '贵德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632524', '632500', '兴海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632525', '632500', '贵南县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632600', '630000', '果洛藏族自治州', '0', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('632621', '632600', '玛沁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632622', '632600', '班玛县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632623', '632600', '甘德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632624', '632600', '达日县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632625', '632600', '久治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632626', '632600', '玛多县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632700', '630000', '玉树藏族自治州', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('632701', '632700', '玉树市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632722', '632700', '杂多县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632723', '632700', '称多县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632724', '632700', '治多县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632725', '632700', '囊谦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632726', '632700', '曲麻莱县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632800', '630000', '海西蒙古族藏族自治州', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('632801', '632800', '格尔木市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632802', '632800', '德令哈市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632821', '632800', '乌兰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632822', '632800', '都兰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('632823', '632800', '天峻县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640000', '0', '宁夏回族自治区', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('640100', '640000', '银川市', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('640104', '640100', '兴庆区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640105', '640100', '西夏区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640106', '640100', '金凤区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640121', '640100', '永宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640122', '640100', '贺兰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640181', '640100', '灵武市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640200', '640000', '石嘴山市', '0', '0', 'S', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('640202', '640200', '大武口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640205', '640200', '惠农区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640221', '640200', '平罗县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640300', '640000', '吴忠市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('640302', '640300', '利通区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640303', '640300', '红寺堡区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640323', '640300', '盐池县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640324', '640300', '同心县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640381', '640300', '青铜峡市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640400', '640000', '固原市', '0', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('640402', '640400', '原州区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640422', '640400', '西吉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640423', '640400', '隆德县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640424', '640400', '泾源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640425', '640400', '彭阳县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640500', '640000', '中卫市', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('640502', '640500', '沙坡头区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640521', '640500', '中宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('640522', '640500', '海原县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650000', '0', '新疆维吾尔自治区', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('650100', '650000', '乌鲁木齐市', '0', '0', 'W', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('650102', '650100', '天山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650103', '650100', '沙依巴克区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650104', '650100', '新市区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650105', '650100', '水磨沟区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650106', '650100', '头屯河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650107', '650100', '达坂城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650109', '650100', '米东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650121', '650100', '乌鲁木齐县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650200', '650000', '克拉玛依市', '0', '0', 'K', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('650202', '650200', '独山子区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650203', '650200', '克拉玛依区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650204', '650200', '白碱滩区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650205', '650200', '乌尔禾区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650400', '650000', '吐鲁番市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('650402', '650400', '高昌区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650421', '650400', '鄯善县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('650422', '650400', '托克逊县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652200', '650000', '哈密地区', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('652201', '652200', '哈密市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652222', '652200', '巴里坤哈萨克自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652223', '652200', '伊吾县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652300', '650000', '昌吉回族自治州', '0', '0', 'C', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('652301', '652300', '昌吉市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652302', '652300', '阜康市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652323', '652300', '呼图壁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652324', '652300', '玛纳斯县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652325', '652300', '奇台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652327', '652300', '吉木萨尔县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652328', '652300', '木垒哈萨克自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652700', '650000', '博尔塔拉蒙古自治州', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('652701', '652700', '博乐市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652702', '652700', '阿拉山口市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652722', '652700', '精河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652723', '652700', '温泉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652800', '650000', '巴音郭楞蒙古自治州', '0', '0', 'B', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('652801', '652800', '库尔勒市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652822', '652800', '轮台县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652823', '652800', '尉犁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652824', '652800', '若羌县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652825', '652800', '且末县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652826', '652800', '焉耆回族自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652827', '652800', '和静县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652828', '652800', '和硕县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652829', '652800', '博湖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652900', '650000', '阿克苏地区', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('652901', '652900', '阿克苏市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652922', '652900', '温宿县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652923', '652900', '库车县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652924', '652900', '沙雅县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652925', '652900', '新和县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652926', '652900', '拜城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652927', '652900', '乌什县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652928', '652900', '阿瓦提县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('652929', '652900', '柯坪县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653000', '650000', '克孜勒苏柯尔克孜自治州', '0', '0', 'K', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('653001', '653000', '阿图什市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653022', '653000', '阿克陶县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653023', '653000', '阿合奇县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653024', '653000', '乌恰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653100', '650000', '喀什地区', '0', '0', 'K', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('653101', '653100', '喀什市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653121', '653100', '疏附县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653122', '653100', '疏勒县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653123', '653100', '英吉沙县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653124', '653100', '泽普县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653125', '653100', '莎车县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653126', '653100', '叶城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653127', '653100', '麦盖提县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653128', '653100', '岳普湖县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653129', '653100', '伽师县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653130', '653100', '巴楚县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653131', '653100', '塔什库尔干塔吉克自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653200', '650000', '和田地区', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('653201', '653200', '和田市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653221', '653200', '和田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653222', '653200', '墨玉县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653223', '653200', '皮山县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653224', '653200', '洛浦县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653225', '653200', '策勒县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653226', '653200', '于田县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('653227', '653200', '民丰县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654000', '650000', '伊犁哈萨克自治州', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('654002', '654000', '伊宁市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654003', '654000', '奎屯市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654004', '654000', '霍尔果斯市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654005', '654000', '(新源市)', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654021', '654000', '伊宁县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654022', '654000', '察布查尔锡伯自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654023', '654000', '霍城县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654024', '654000', '巩留县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654025', '654000', '新源县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654026', '654000', '昭苏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654027', '654000', '特克斯县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654028', '654000', '尼勒克县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654200', '650000', '塔城地区', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('654201', '654200', '塔城市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654202', '654200', '乌苏市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654221', '654200', '额敏县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654223', '654200', '沙湾县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654224', '654200', '托里县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654225', '654200', '裕民县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654226', '654200', '和布克赛尔蒙古自治县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654300', '650000', '阿勒泰地区', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('654301', '654300', '阿勒泰市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654321', '654300', '布尔津县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654322', '654300', '富蕴县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654323', '654300', '福海县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654324', '654300', '哈巴河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654325', '654300', '青河县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('654326', '654300', '吉木乃县', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659000', '650000', '自治区直辖县级行政区划', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('659001', '659000', '石河子市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659002', '659000', '阿拉尔市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659003', '659000', '图木舒克市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659004', '659000', '五家渠市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659005', '659000', '北屯市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659006', '659000', '铁门关市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659007', '659000', '双河市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659008', '659000', '可克达拉市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('659009', '659000', '(胡杨河市)', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710000', '0', '台湾省', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('710100', '710000', '台北市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710101', '710100', '松山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710102', '710100', '信义区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710103', '710100', '大安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710104', '710100', '中山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710105', '710100', '中正区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710106', '710100', '大同区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710107', '710100', '万华区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710108', '710100', '文山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710109', '710100', '南港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710110', '710100', '内湖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710111', '710100', '士林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710112', '710100', '北投区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710200', '710000', '高雄市', '0', '0', 'G', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710201', '710200', '盐埕区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710202', '710200', '鼓山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710203', '710200', '左营区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710204', '710200', '楠梓区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710205', '710200', '三民区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710206', '710200', '新兴区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710207', '710200', '前金区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710208', '710200', '苓雅区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710209', '710200', '前镇区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710210', '710200', '旗津区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710211', '710200', '小港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710212', '710200', '凤山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710213', '710200', '林园区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710214', '710200', '大寮区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710215', '710200', '大树区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710216', '710200', '大社区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710217', '710200', '仁武区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710218', '710200', '鸟松区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710219', '710200', '冈山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710220', '710200', '桥头区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710221', '710200', '燕巢区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710222', '710200', '田寮区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710223', '710200', '阿莲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710224', '710200', '路竹区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710225', '710200', '湖内区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710226', '710200', '茄萣区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710227', '710200', '永安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710228', '710200', '弥陀区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710229', '710200', '梓官区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710230', '710200', '旗山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710231', '710200', '美浓区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710232', '710200', '六龟区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710233', '710200', '甲仙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710234', '710200', '杉林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710235', '710200', '内门区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710236', '710200', '茂林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710237', '710200', '桃源区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710238', '710200', '那玛夏区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710300', '710000', '基隆市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710301', '710300', '中正区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710302', '710300', '七堵区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710303', '710300', '暖暖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710304', '710300', '仁爱区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710305', '710300', '中山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710306', '710300', '安乐区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710307', '710300', '信义区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710400', '710000', '台中市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710401', '710400', '中区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710402', '710400', '东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710403', '710400', '南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710404', '710400', '西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710405', '710400', '北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710406', '710400', '西屯区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710407', '710400', '南屯区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710408', '710400', '北屯区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710409', '710400', '丰原区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710410', '710400', '东势区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710411', '710400', '大甲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710412', '710400', '清水区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710413', '710400', '沙鹿区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710414', '710400', '梧栖区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710415', '710400', '后里区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710416', '710400', '神冈区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710417', '710400', '潭子区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710418', '710400', '大雅区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710419', '710400', '新社区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710420', '710400', '石冈区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710421', '710400', '外埔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710422', '710400', '大安区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710423', '710400', '乌日区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710424', '710400', '大肚区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710425', '710400', '龙井区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710426', '710400', '雾峰区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710427', '710400', '太平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710428', '710400', '大里区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710429', '710400', '和平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710500', '710000', '台南市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710501', '710500', '东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710502', '710500', '南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710504', '710500', '北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710506', '710500', '安南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710507', '710500', '安平区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710508', '710500', '中西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710509', '710500', '新营区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710510', '710500', '盐水区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710511', '710500', '白河区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710512', '710500', '柳营区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710513', '710500', '后壁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710514', '710500', '东山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710515', '710500', '麻豆区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710516', '710500', '下营区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710517', '710500', '六甲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710518', '710500', '官田区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710519', '710500', '大内区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710520', '710500', '佳里区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710521', '710500', '学甲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710522', '710500', '西港区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710523', '710500', '七股区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710524', '710500', '将军区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710525', '710500', '北门区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710526', '710500', '新化区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710527', '710500', '善化区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710528', '710500', '新市区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710529', '710500', '安定区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710530', '710500', '山上区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710531', '710500', '玉井区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710532', '710500', '楠西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710533', '710500', '南化区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710534', '710500', '左镇区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710535', '710500', '仁德区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710536', '710500', '归仁区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710537', '710500', '关庙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710538', '710500', '龙崎区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710539', '710500', '永康区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710600', '710000', '新竹市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710601', '710600', '东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710602', '710600', '北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710603', '710600', '香山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710700', '710000', '嘉义市', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710701', '710700', '东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710702', '710700', '西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710800', '710000', '新北市', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710801', '710800', '板桥区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710802', '710800', '三重区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710803', '710800', '中和区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710804', '710800', '永和区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710805', '710800', '新庄区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710806', '710800', '新店区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710807', '710800', '树林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710808', '710800', '莺歌区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710809', '710800', '三峡区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710810', '710800', '淡水区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710811', '710800', '汐止区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710812', '710800', '瑞芳区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710813', '710800', '土城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710814', '710800', '芦洲区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710815', '710800', '五股区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710816', '710800', '泰山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710817', '710800', '林口区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710818', '710800', '深坑区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710819', '710800', '石碇区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710820', '710800', '坪林区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710821', '710800', '三芝区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710822', '710800', '石门区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710823', '710800', '八里区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710824', '710800', '平溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710825', '710800', '双溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710826', '710800', '贡寮区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710827', '710800', '金山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710828', '710800', '万里区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710829', '710800', '乌来区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710900', '710000', '桃园市', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('710901', '710900', '桃园区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710902', '710900', '中坜区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710903', '710900', '平镇区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710904', '710900', '八德区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710905', '710900', '杨梅区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710906', '710900', '大溪区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710907', '710900', '芦竹区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710908', '710900', '大园区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710909', '710900', '龟山区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710910', '710900', '龙潭区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710911', '710900', '新屋区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710912', '710900', '观音区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('710913', '710900', '复兴区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712200', '710000', '宜兰县', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('712201', '712200', '宜兰市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712221', '712200', '罗东镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712222', '712200', '苏澳镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712223', '712200', '头城镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712224', '712200', '礁溪乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712225', '712200', '壮围乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712226', '712200', '员山乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712227', '712200', '冬山乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712228', '712200', '五结乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712229', '712200', '三星乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712230', '712200', '大同乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712231', '712200', '南澳乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712400', '710000', '新竹县', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('712401', '712400', '竹北市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712421', '712400', '竹东镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712422', '712400', '新埔镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712423', '712400', '关西镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712424', '712400', '湖口乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712425', '712400', '新丰乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712426', '712400', '芎林乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712427', '712400', '橫山乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712428', '712400', '北埔乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712429', '712400', '宝山乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712430', '712400', '峨眉乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712431', '712400', '尖石乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712432', '712400', '五峰乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712500', '710000', '苗栗县', '0', '0', 'M', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('712501', '712500', '苗栗市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712521', '712500', '苑里镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712522', '712500', '通霄镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712523', '712500', '竹南镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712524', '712500', '头份镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712525', '712500', '后龙镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712526', '712500', '卓兰镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712527', '712500', '大湖乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712528', '712500', '公馆乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712529', '712500', '铜锣乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712530', '712500', '南庄乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712531', '712500', '头屋乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712532', '712500', '三义乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712533', '712500', '西湖乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712534', '712500', '造桥乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712535', '712500', '三湾乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712536', '712500', '狮潭乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712537', '712500', '泰安乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712700', '710000', '彰化县', '0', '0', 'Z', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('712701', '712700', '彰化市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712721', '712700', '鹿港镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712722', '712700', '和美镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712723', '712700', '线西乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712724', '712700', '伸港乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712725', '712700', '福兴乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712726', '712700', '秀水乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712727', '712700', '花坛乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712728', '712700', '芬园乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712729', '712700', '员林镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712730', '712700', '溪湖镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712731', '712700', '田中镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712732', '712700', '大村乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712733', '712700', '埔盐乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712734', '712700', '埔心乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712735', '712700', '永靖乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712736', '712700', '社头乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712737', '712700', '二水乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712738', '712700', '北斗镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712739', '712700', '二林镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712740', '712700', '田尾乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712741', '712700', '埤头乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712742', '712700', '芳苑乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712743', '712700', '大城乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712744', '712700', '竹塘乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712745', '712700', '溪州乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712800', '710000', '南投县', '0', '0', 'N', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('712801', '712800', '南投市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712821', '712800', '埔里镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712822', '712800', '草屯镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712823', '712800', '竹山镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712824', '712800', '集集镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712825', '712800', '名间乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712826', '712800', '鹿谷乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712827', '712800', '中寮乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712828', '712800', '鱼池乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712829', '712800', '国姓乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712830', '712800', '水里乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712831', '712800', '信义乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712832', '712800', '仁爱乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712900', '710000', '云林县', '0', '0', 'Y', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('712901', '712900', '斗六市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712921', '712900', '斗南镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712922', '712900', '虎尾镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712923', '712900', '西螺镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712924', '712900', '土库镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712925', '712900', '北港镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712926', '712900', '古坑乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712927', '712900', '大埤乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712928', '712900', '莿桐乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712929', '712900', '林内乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712930', '712900', '二仑乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712931', '712900', '仑背乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712932', '712900', '麦寮乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712933', '712900', '东势乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712934', '712900', '褒忠乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712935', '712900', '台西乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712936', '712900', '元长乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712937', '712900', '四湖乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712938', '712900', '口湖乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('712939', '712900', '水林乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713000', '710000', '嘉义县', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('713001', '713000', '太保市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713002', '713000', '朴子市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713023', '713000', '布袋镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713024', '713000', '大林镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713025', '713000', '民雄乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713026', '713000', '溪口乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713027', '713000', '新港乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713028', '713000', '六脚乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713029', '713000', '东石乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713030', '713000', '义竹乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713031', '713000', '鹿草乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713032', '713000', '水上乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713033', '713000', '中埔乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713034', '713000', '竹崎乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713035', '713000', '梅山乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713036', '713000', '番路乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713037', '713000', '大埔乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713038', '713000', '阿里山乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713300', '710000', '屏东县', '0', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('713301', '713300', '屏东市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713321', '713300', '潮州镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713322', '713300', '东港镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713323', '713300', '恒春镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713324', '713300', '万丹乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713325', '713300', '长治乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713326', '713300', '麟洛乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713327', '713300', '九如乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713328', '713300', '里港乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713329', '713300', '盐埔乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713330', '713300', '高树乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713331', '713300', '万峦乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713332', '713300', '内埔乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713333', '713300', '竹田乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713334', '713300', '新埤乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713335', '713300', '枋寮乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713336', '713300', '新园乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713337', '713300', '崁顶乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713338', '713300', '林边乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713339', '713300', '南州乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713340', '713300', '佳冬乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713341', '713300', '琉球乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713342', '713300', '车城乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713343', '713300', '满州乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713344', '713300', '枋山乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713345', '713300', '三地门乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713346', '713300', '雾台乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713347', '713300', '玛家乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713348', '713300', '泰武乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713349', '713300', '来义乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713350', '713300', '春日乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713351', '713300', '狮子乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713352', '713300', '牡丹乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713400', '710000', '台东县', '0', '0', 'T', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('713401', '713400', '台东市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713421', '713400', '成功镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713422', '713400', '关山镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713423', '713400', '卑南乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713424', '713400', '鹿野乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713425', '713400', '池上乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713426', '713400', '东河乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713427', '713400', '长滨乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713428', '713400', '太麻里乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713429', '713400', '大武乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713430', '713400', '绿岛乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713431', '713400', '海端乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713432', '713400', '延平乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713433', '713400', '金峰乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713434', '713400', '达仁乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713435', '713400', '兰屿乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713500', '710000', '花莲县', '0', '0', 'H', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('713501', '713500', '花莲市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713521', '713500', '凤林镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713522', '713500', '玉里镇', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713523', '713500', '新城乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713524', '713500', '吉安乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713525', '713500', '寿丰乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713526', '713500', '光复乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713527', '713500', '丰滨乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713528', '713500', '瑞穗乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713529', '713500', '富里乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713530', '713500', '秀林乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713531', '713500', '万荣乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713532', '713500', '卓溪乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713600', '710000', '澎湖县', '0', '0', 'P', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('713601', '713600', '马公市', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713621', '713600', '湖西乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713622', '713600', '白沙乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713623', '713600', '西屿乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713624', '713600', '望安乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('713625', '713600', '七美乡', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810000', '0', '香港特别行政区', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('810100', '810000', '香港岛', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('810101', '810100', '中西区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810102', '810100', '湾仔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810103', '810100', '东区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810104', '810100', '南区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810200', '810000', '九龙', '0', '0', 'J', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('810201', '810200', '油尖旺区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810202', '810200', '深水埗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810203', '810200', '九龙城区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810204', '810200', '黄大仙区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810205', '810200', '观塘区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810300', '810000', '新界', '0', '0', 'X', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('810301', '810300', '荃湾区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810302', '810300', '屯门区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810303', '810300', '元朗区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810304', '810300', '北区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810305', '810300', '大埔区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810306', '810300', '西贡区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810307', '810300', '沙田区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810308', '810300', '葵青区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('810309', '810300', '离岛区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('820000', '0', '澳门特别行政区', '0', '0', '', '0', '1', null);
INSERT INTO `tc_areas` VALUES ('820100', '820000', '澳门半岛', '0', '0', 'A', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('820101', '820100', '花地玛堂区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('820102', '820100', '圣安多尼堂区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('820103', '820100', '大堂区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('820104', '820100', '望德堂区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('820105', '820100', '风顺堂区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('820200', '820000', '氹仔岛', '0', '0', 'D', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('820201', '820200', '嘉模堂区', '0', '0', '', '2', '1', null);
INSERT INTO `tc_areas` VALUES ('820300', '820000', '路环岛', '0', '0', 'L', '1', '1', null);
INSERT INTO `tc_areas` VALUES ('820301', '820300', '圣方济各堂区 ', '0', '0', '', '2', '1', null);

-- ----------------------------
-- Table structure for tc_article_cats
-- ----------------------------
DROP TABLE IF EXISTS `tc_article_cats`;
CREATE TABLE `tc_article_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `parentId` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `catType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分类类型	0:普通类型 1:系统菜单',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	0:隐藏 1:显示',
  `catName` varchar(20) NOT NULL COMMENT '分类名称',
  `catSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`catId`),
  KEY `isShow` (`catType`,`dataFlag`,`isShow`) USING BTREE,
  KEY `parentId` (`dataFlag`,`parentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- ----------------------------
-- Records of tc_article_cats
-- ----------------------------
INSERT INTO `tc_article_cats` VALUES ('1', '7', '1', '1', '支付方式', '2', '1', '2016-08-16 00:09:50');
INSERT INTO `tc_article_cats` VALUES ('5', '7', '1', '1', '购物指南', '0', '1', '2016-08-25 09:45:45');
INSERT INTO `tc_article_cats` VALUES ('6', '7', '1', '1', '商城快讯', '5', '1', '2016-09-06 15:21:09');
INSERT INTO `tc_article_cats` VALUES ('7', '0', '1', '1', '帮助中心', '6', '1', '2016-09-06 15:21:24');
INSERT INTO `tc_article_cats` VALUES ('8', '0', '0', '1', '商城快讯', '4', '1', '2016-09-06 15:21:51');
INSERT INTO `tc_article_cats` VALUES ('9', '7', '1', '1', '售后服务', '1', '1', '2016-09-06 15:22:00');
INSERT INTO `tc_article_cats` VALUES ('10', '7', '1', '1', '商务合作', '3', '1', '2016-09-06 15:24:35');
INSERT INTO `tc_article_cats` VALUES ('11', '8', '0', '1', '商城公告', '0', '1', '2016-09-26 23:04:18');
INSERT INTO `tc_article_cats` VALUES ('12', '8', '0', '1', '促销信息', '0', '1', '2016-09-26 23:04:25');

-- ----------------------------
-- Table structure for tc_articles
-- ----------------------------
DROP TABLE IF EXISTS `tc_articles`;
CREATE TABLE `tc_articles` (
  `articleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `catId` int(11) NOT NULL COMMENT '分类ID',
  `articleTitle` varchar(200) NOT NULL COMMENT '文章标题',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	0:隐藏 1:显示',
  `articleContent` text NOT NULL COMMENT '文章内容',
  `articleKey` varchar(200) DEFAULT NULL COMMENT '关键字',
  `staffId` int(11) NOT NULL COMMENT '创建者',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1：有效 -1：无效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `solve` int(10) unsigned DEFAULT '0' COMMENT '觉得文章有帮助的次数',
  `unsolve` int(10) unsigned DEFAULT '0' COMMENT '觉得文章没帮助的次数',
  PRIMARY KEY (`articleId`),
  KEY `catId` (`catId`,`isShow`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='文章记录表';

-- ----------------------------
-- Records of tc_articles
-- ----------------------------
INSERT INTO `tc_articles` VALUES ('1', '5', '购物流程', '1', '<p>\n	<span style=\"font-size:16px;\">购物流程</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\">货到付款流程</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\">在线支付流程支持支付宝、微信在线支付</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:24px;\">\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span>\n	</p>\n<br />\n</span>\n</p>', '购物流程', '1', '1', '2016-09-06 15:28:05', '0', '1');
INSERT INTO `tc_articles` VALUES ('2', '5', '会员介绍', '1', '会员介绍', '会员介绍', '1', '1', '2016-09-06 15:30:54', '0', '0');
INSERT INTO `tc_articles` VALUES ('3', '5', '常见问题', '1', '常见问题', '常见问题', '1', '1', '2016-09-06 15:31:26', '1', '0');
INSERT INTO `tc_articles` VALUES ('4', '1', '在线支付', '1', '在线支付', '在线支付', '1', '1', '2016-09-06 15:34:30', '0', '1');
INSERT INTO `tc_articles` VALUES ('5', '1', '货到付款', '1', '<p>\n	<span style=\"font-size:16px;\">wstmart公司采购支持货到付款，具体政策：</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<span></span>\n</p>', '货到付款', '1', '1', '2016-09-06 15:34:44', '1', '0');
INSERT INTO `tc_articles` VALUES ('6', '1', '分期付款', '1', '分期付款', '分期付款', '1', '1', '2016-09-06 15:35:00', '0', '0');
INSERT INTO `tc_articles` VALUES ('7', '1', '邮局汇款', '1', '邮局汇款', '邮局汇款', '1', '1', '2016-09-06 15:35:34', '0', '0');
INSERT INTO `tc_articles` VALUES ('8', '9', '售后政策', '1', '售后政策', '售后政策', '1', '1', '2016-09-06 15:36:08', '1', '0');
INSERT INTO `tc_articles` VALUES ('9', '9', '退款/换货', '1', '退款/换货', '退款/换货', '1', '1', '2016-09-06 15:37:04', '0', '1');
INSERT INTO `tc_articles` VALUES ('10', '9', '退款维权流程', '1', '退款维权流程', '退款维权流程', '1', '1', '2016-09-06 15:37:42', '0', '1');
INSERT INTO `tc_articles` VALUES ('11', '6', '配送查询', '1', '<p>\n	<span style=\"font-size:16px;\">wstmart商城正式上线，配送查询渠道：</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"> </span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">详询</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\">客服QQ：153289970</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\">联系我们</span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span> \n</p>\n<span></span><br />\n<p>\n	<br />\n</p>', '商城正式上线', '1', '1', '2016-09-06 15:38:46', '0', '1');
INSERT INTO `tc_articles` VALUES ('12', '6', '211限时达', '1', '<p>\n	<span style=\"font-size:16px;\">商品详情有说明211限时达的商品，购买的时候可享受相关的政策。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', '商家入驻优惠', '1', '1', '2016-09-06 15:40:42', '0', '0');
INSERT INTO `tc_articles` VALUES ('13', '6', 'wstmart商城配送', '1', '<p>\n	wstmart商城具有自己的配送团队，如入驻商家选择了我们的配送，享受。。。服务\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', '商家免费服务推广', '1', '1', '2016-09-06 15:40:59', '2', '0');
INSERT INTO `tc_articles` VALUES ('14', '10', '商家加盟', '1', '商家加盟', '商家加盟', '1', '1', '2016-09-06 15:43:07', '0', '0');
INSERT INTO `tc_articles` VALUES ('15', '10', '广告推广', '1', '广告推广', '广告推广', '1', '1', '2016-09-06 15:43:21', '0', '0');
INSERT INTO `tc_articles` VALUES ('16', '10', 'wstmart线下推广', '1', '<p>\n	线下推广\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<span></span>\n</p>', '线下推广', '1', '1', '2016-09-06 15:43:41', '0', '0');
INSERT INTO `tc_articles` VALUES ('17', '10', '供货商合作', '1', '供货商合作', '供货商合作', '1', '1', '2016-09-06 15:43:55', '0', '0');
INSERT INTO `tc_articles` VALUES ('18', '10', '新闻媒体合作', '1', '新闻媒体合作', '新闻媒体合作', '1', '1', '2016-09-06 15:44:11', '1', '0');
INSERT INTO `tc_articles` VALUES ('19', '11', 'wstmart产品特色', '1', '<p>\n	产品特色\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<span></span>\n</p>', '产品特色', '1', '1', '2016-09-06 15:44:48', '0', '0');
INSERT INTO `tc_articles` VALUES ('20', '11', '促销文章1', '1', '未二次全文', '促销', '1', '1', '2016-09-29 19:56:48', '0', '0');
INSERT INTO `tc_articles` VALUES ('21', '11', 'wstmart商城上线了', '1', '<p>\n	<span style=\"font-size:16px;\">wstmart多用户商城上线了，发言一下</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://www.wstmart.net</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span>\n	</p>\n<br />\n</span>\n</p>', 'wstmart商城', '1', '1', '2016-09-29 19:57:04', '0', '0');
INSERT INTO `tc_articles` VALUES ('22', '11', 'wstmart商城，国庆促销', '1', 'wstmart商城，国庆促销了，来看看吧', 'wstmart商城', '1', '1', '2016-09-29 19:58:21', '0', '0');
INSERT INTO `tc_articles` VALUES ('23', '12', '错了这个村 没了这个店', '1', '<p>\n	<span style=\"font-size:16px;\">中秋，wstmart商城大闸蟹开放了</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">详询</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">客服QQ：153289970</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">联系我们</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">http://www.wstmart.net</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;line-height:24px;\">http://bbs.shangtaosoft.com</span><br />\n</span>\n</p>', 'wstmart商城快讯', '1', '1', '2016-09-29 19:58:55', '0', '0');
INSERT INTO `tc_articles` VALUES ('24', '11', 'WSTMart商城快讯', '1', 'wstmart商城正式运营了', 'WSTMart商城快讯', '1', '1', '2016-10-11 16:04:26', '0', '0');
INSERT INTO `tc_articles` VALUES ('25', '12', '双11 wstmart商城约定你', '1', '<p>\n	wstmart多用户商城，双11全球购物盛宴，wstmart约定你\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', 'wstmart多用户商城', '1', '1', '2016-10-11 16:08:02', '0', '0');
INSERT INTO `tc_articles` VALUES ('26', '11', '商淘软件多用户商城发布', '1', '<p>\n	<span style=\"font-size:16px;\">商淘软件WSTMart多用户商城发布</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\"><br />\n</span>\n</p>\n<p>\n	<span style=\"font-size:16px;\">\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://www.wstmart.net</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span>\n	</p>\n<br />\n</span>\n</p>', '商淘软件,WSTMart多用户商城', '1', '1', '2016-10-11 16:12:09', '0', '0');
INSERT INTO `tc_articles` VALUES ('27', '9', '价格保护', '1', '<p>\n	<span style=\"font-size:14px;\">购买wstmart享受价格保护，在购买后的1天内</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:14px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:14px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:14px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:14px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\"><span style=\"font-size:14px;\">http://www.wstmart.net</span></a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\"><span style=\"font-size:14px;\">http://bbs.shangtaosoft.com</span></a></span>\n	</p>\n<span></span>\n</p>', 'wstmart', '1', '1', '2016-10-20 10:11:27', '0', '0');
INSERT INTO `tc_articles` VALUES ('28', '1', '公司转账', '1', '<p>\n	<span style=\"font-size:16px;\">转账到广州商淘信息科技有限公司公账户后，请及时联系我们。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p>\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\"><span style=\"font-size:16px;\">http://www.wstmart.net</span></a></span>\n	</p>\n	<p>\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\"><span style=\"font-size:16px;\">http://bbs.shangtaosoft.com</span></a></span>\n	</p>\n<span></span><span style=\"font-size:16px;\"></span><span style=\"font-size:16px;\"></span>\n</p>', 'wstmart转账', '1', '1', '2016-10-20 10:14:28', '0', '0');
INSERT INTO `tc_articles` VALUES ('29', '9', '取消订单', '1', '<p>\n	<span style=\"font-size:16px;\">这里是wstmart的退款说明，一经授权，请勿退款。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<span style=\"font-size:16px;\"></span><span style=\"font-size:16px;\"></span>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', 'wstmart多商户开源系统', '1', '1', '2016-10-20 10:35:17', '0', '0');
INSERT INTO `tc_articles` VALUES ('30', '6', '配送费用说明', '1', '<p>\n	<span style=\"font-size:16px;line-height:24px;\">wstmart自营商城满99元免费配送。</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">详询</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">客服QQ：153289970</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">联系我们</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span> \n</p>\n<p>\n	<br />\n</p>', '入群有礼', '1', '1', '2016-10-20 10:36:43', '0', '0');
INSERT INTO `tc_articles` VALUES ('31', '6', '入驻商家配送说明', '1', '<p>\n	<span style=\"font-size:16px;line-height:24px;\">wstmart入驻商家使用自行联系的第三方配送</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">详询</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">客服QQ：153289970</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">用户QQ群：590755485</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><br />\n</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\">联系我们</span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span> \n</p>\n<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n	<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span> \n</p>\n<p>\n	<br />\n</p>', 'wstmart配送', '1', '1', '2016-10-20 10:57:50', '0', '0');
INSERT INTO `tc_articles` VALUES ('32', '5', '优惠政策', '1', '<p>\n	<span style=\"font-size:18px;\">购物享乐趣</span>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:18px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n</p>', 'wstmart', '1', '1', '2016-10-20 11:12:25', '0', '0');
INSERT INTO `tc_articles` VALUES ('33', '5', '发票制度', '1', '<p>\n	<strong><span style=\"font-size:14px;\">一、 发票开具</span></strong>\n</p>\n<p>\n	<span style=\"font-size:14px;\">1、所有商品发票均由所属销售商家负责开具，且所有开具的发票均为合法有效。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">2、顾客在结算过程中可以选择是否开具发票，商家会按照顾客的选择为顾客开具发票。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">3、所有商品仅按顾客实付现金金额开具发票，不包括抵用券、返利金额、礼品卡等金额部分。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">4、若顾客订购的是数码、手机、电脑、家电类商品，为了保证顾客能充分享受生产厂家提供的售后服务，无论顾客是否选择开具发票，商家均会随单为顾客开具普通发票，发票内容默认为顾客订购的商品全称和型号，且不支持发票内容修改，如给顾客带来不便，敬请谅解；如需将普通发票换开为增值税专用发票（电子发票不支持换开），则必须退回普通发票原件。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">5、若顾客选择预付卡或积分方式进行支付，则对于该部分支付金额，顾客仅可选择开具0元发票。</span>\n</p>\n<p>\n	<strong><span style=\"font-size:14px;\">二、普通发票</span></strong>\n</p>\n<p>\n	<span style=\"font-size:14px;\">1.发票抬头：</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（1）发票抬头不能为空；</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（2）您可填写：\"个人\"、您的姓名、或您的单位名称</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（3）由于税务局提供的开票软件字数限制（最多40个字）剩余字数会和纳税人识别号重叠而无法显示，请索要普票时抬头字数不要超过40个</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">2.发票内容：</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（1）1号店自营：可开具的发票内容：酒、饮料、食品、玩具、日用品、装修材料、化妆品、办公用品、学生用品、家居用品、饰品、服装、箱包、精品、家电、劳防用品。您可根据需要选择。</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">（2）入驻商家：发票内容将开具您所订商品的明细。</span>\n</p>\n<p>\n	<span style=\"font-size:14px;\">3. 如果您在收到货物时请检查发票，并在送货签收单上签字，一旦签字即代表您已收到发票，并且发票无误。对于顾客人为因素引起的发票遗失，我们无法为您补开发票。</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">请在提交订单页面，在\"索取发票\"前打钩，按提示填写发票抬头、选择发票内容，发票将会随您的订单商品一起送达：</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\"><br />\n</span>\n</p>\n<p class=\"txt_indent\" style=\"text-indent:2em;\">\n	<span style=\"font-size:14px;\">\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">详询</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">客服QQ：153289970</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">用户QQ群：590755485</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><br />\n</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\">联系我们</span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://www.wstmart.net/\" target=\"_blank\">http://www.wstmart.net</a></span>\n	</p>\n	<p style=\"font-size:13px;color:#666666;font-family:\'microsoft yahei\';text-indent:7px;background-color:#FFFFFF;\">\n		<span style=\"font-size:16px;\"><a href=\"http://bbs.wstmart.com/\" target=\"_blank\">http://bbs.shangtaosoft.com</a></span>\n	</p>\n<br />\n</span>\n</p>', '发票', '1', '1', '2016-10-20 11:16:00', '0', '0');

-- ----------------------------
-- Table structure for tc_attributes
-- ----------------------------
DROP TABLE IF EXISTS `tc_attributes`;
CREATE TABLE `tc_attributes` (
  `attrId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `goodsCatId` int(11) NOT NULL DEFAULT '0' COMMENT '最后一级商品分类ID',
  `goodsCatPath` varchar(100) NOT NULL COMMENT '商品分类路径',
  `attrName` varchar(100) NOT NULL COMMENT '属性名称',
  `attrType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '属性类型	0:输入框 1:多选项 2:下拉框',
  `attrVal` text COMMENT '属性值',
  `attrSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `isShow` tinyint(4) DEFAULT '1' COMMENT '是否显示	1:显示 0:不显示',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`attrId`),
  KEY `shopId` (`goodsCatId`,`isShow`,`dataFlag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of tc_attributes
-- ----------------------------

-- ----------------------------
-- Table structure for tc_banks
-- ----------------------------
DROP TABLE IF EXISTS `tc_banks`;
CREATE TABLE `tc_banks` (
  `bankId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `bankName` varchar(50) NOT NULL COMMENT '银行名称	',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`bankId`),
  KEY `bankFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='银行表';

-- ----------------------------
-- Records of tc_banks
-- ----------------------------
INSERT INTO `tc_banks` VALUES ('17', '中国工商银行', '1', '2016-05-20 11:19:27');
INSERT INTO `tc_banks` VALUES ('18', '中国农业银行', '1', '2016-05-20 11:19:27');
INSERT INTO `tc_banks` VALUES ('19', '中国人民银行', '1', '2016-05-20 11:19:27');
INSERT INTO `tc_banks` VALUES ('20', '招商银行', '1', '2016-05-20 11:19:27');
INSERT INTO `tc_banks` VALUES ('21', '中兴银行', '1', '2016-05-20 11:19:27');
INSERT INTO `tc_banks` VALUES ('22', '交通银行', '1', '2016-05-20 11:19:27');
INSERT INTO `tc_banks` VALUES ('23', '深圳发展银行', '1', '2016-05-20 11:19:27');
INSERT INTO `tc_banks` VALUES ('24', '中国光大银行', '1', '2016-05-20 11:19:27');

-- ----------------------------
-- Table structure for tc_brands
-- ----------------------------
DROP TABLE IF EXISTS `tc_brands`;
CREATE TABLE `tc_brands` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `brandName` varchar(100) NOT NULL COMMENT '品牌名称',
  `brandImg` varchar(150) NOT NULL COMMENT '品牌图标',
  `brandDesc` text COMMENT '品牌介绍',
  `createTime` datetime NOT NULL COMMENT '建立时间',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  PRIMARY KEY (`brandId`),
  KEY `brandFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of tc_brands
-- ----------------------------
INSERT INTO `tc_brands` VALUES ('1', '华为', 'upload/brands/2016-10/57f860e20d7ae.jpg', '华为 是华为公司旗下的一款手机品牌', '2016-10-08 10:59:01', '1');
INSERT INTO `tc_brands` VALUES ('2', '维达', 'upload/brands/2016-10/57fa2e3aeb270.png', '我是一个维达，wstmart下的维达', '2016-10-09 19:47:22', '1');
INSERT INTO `tc_brands` VALUES ('3', '威露士', 'upload/brands/2016-10/57fa441b3131f.jpg', '威露士 wstmart', '2016-10-09 21:20:36', '1');
INSERT INTO `tc_brands` VALUES ('4', '蓝月亮', 'upload/brands/2016-10/57fa464b09db9.jpg', 'wstmart 蓝月亮', '2016-10-09 21:30:02', '1');
INSERT INTO `tc_brands` VALUES ('5', '雕牌', 'upload/brands/2016-10/57fa4d66e1fe5.jpg', '<p>\n	这是一个wstmart开源商城的一个商品品牌\n</p>\n<p>\n	雕牌\n</p>', '2016-10-09 22:00:37', '1');
INSERT INTO `tc_brands` VALUES ('6', '青岛啤酒', 'upload/brands/2016-10/57faf58d010f9.jpg', 'wstmart青岛啤酒品牌', '2016-10-10 09:57:41', '1');
INSERT INTO `tc_brands` VALUES ('7', 'Sisley希思黎', 'upload/brands/2016-10/57fb4d8bb8c72.jpg', '<h1 style=\"font-size:16px;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\n	Sisley希思黎\n</h1>', '2016-10-10 16:13:04', '1');
INSERT INTO `tc_brands` VALUES ('8', '福临门', 'upload/brands/2016-10/57fb5673dadba.jpg', '福临门花生油', '2016-10-10 16:51:08', '1');
INSERT INTO `tc_brands` VALUES ('9', '鲁花花生油', 'upload/brands/2016-10/57fb56967f5c0.jpg', '鲁花花生油 wstmart', '2016-10-10 16:51:47', '1');
INSERT INTO `tc_brands` VALUES ('10', '金龙鱼', 'upload/brands/2016-10/57fb56b259418.jpg', '金龙鱼', '2016-10-10 16:52:07', '1');
INSERT INTO `tc_brands` VALUES ('11', '华为荣耀', 'upload/brands/2016-10/57fc8462e16f3.jpg', '荣耀，华为手机子品牌', '2016-10-11 14:19:28', '1');

-- ----------------------------
-- Table structure for tc_carts
-- ----------------------------
DROP TABLE IF EXISTS `tc_carts`;
CREATE TABLE `tc_carts` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userId` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `isCheck` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否选中',
  `goodsId` int(11) NOT NULL DEFAULT '0' COMMENT '商品Id',
  `goodsSpecId` varchar(200) NOT NULL DEFAULT '0' COMMENT '商品-规格ID',
  `cartNum` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  PRIMARY KEY (`cartId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of tc_carts
-- ----------------------------

-- ----------------------------
-- Table structure for tc_cash_configs
-- ----------------------------
DROP TABLE IF EXISTS `tc_cash_configs`;
CREATE TABLE `tc_cash_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现对象	0:用户 1:商家',
  `targetId` int(11) NOT NULL COMMENT '提现对象ID',
  `accType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现类型	3:银行卡',
  `accTargetId` int(11) NOT NULL DEFAULT '0' COMMENT '银行卡ID	-1:支付宝 -2:微信',
  `accAreaId` int(11) DEFAULT NULL COMMENT '开卡地区ID',
  `accNo` varchar(100) NOT NULL COMMENT '银行卡号',
  `accUser` varchar(100) NOT NULL COMMENT '持卡人',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效标志	1:有效 -1:删除',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `targetType` (`targetType`,`targetId`,`dataFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提现账号配置表';

-- ----------------------------
-- Records of tc_cash_configs
-- ----------------------------

-- ----------------------------
-- Table structure for tc_cash_draws
-- ----------------------------
DROP TABLE IF EXISTS `tc_cash_draws`;
CREATE TABLE `tc_cash_draws` (
  `cashId` int(11) NOT NULL AUTO_INCREMENT,
  `cashNo` varchar(50) NOT NULL COMMENT '提现单号',
  `targetType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现对象	0:用户 1:商家',
  `targetId` int(11) NOT NULL DEFAULT '0' COMMENT '提现对象id',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `accType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现类型',
  `accTargetName` varchar(100) DEFAULT NULL COMMENT '开卡银行名称',
  `accAreaName` varchar(100) DEFAULT NULL COMMENT '开卡地区名称',
  `accNo` varchar(100) NOT NULL COMMENT '卡号',
  `accUser` varchar(100) DEFAULT NULL COMMENT '持卡人',
  `cashSatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现状态	-1:提现失败 0:待处理 1:提现成功',
  `cashRemarks` varchar(255) DEFAULT NULL COMMENT '提现备注',
  `cashConfigId` int(11) NOT NULL COMMENT '提现设置对象的Id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`cashId`),
  KEY `targetType` (`targetType`,`targetId`),
  KEY `cashNo` (`cashNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提现记录表';

-- ----------------------------
-- Records of tc_cash_draws
-- ----------------------------

-- ----------------------------
-- Table structure for tc_cat_brands
-- ----------------------------
DROP TABLE IF EXISTS `tc_cat_brands`;
CREATE TABLE `tc_cat_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) DEFAULT NULL COMMENT '分类id',
  `brandId` int(11) DEFAULT NULL COMMENT '品牌id',
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='分类品牌表';

-- ----------------------------
-- Records of tc_cat_brands
-- ----------------------------
INSERT INTO `tc_cat_brands` VALUES ('2', '48', '2');
INSERT INTO `tc_cat_brands` VALUES ('3', '48', '3');
INSERT INTO `tc_cat_brands` VALUES ('4', '48', '4');
INSERT INTO `tc_cat_brands` VALUES ('5', '48', '5');
INSERT INTO `tc_cat_brands` VALUES ('6', '49', '6');
INSERT INTO `tc_cat_brands` VALUES ('7', '51', '7');
INSERT INTO `tc_cat_brands` VALUES ('8', '50', '8');
INSERT INTO `tc_cat_brands` VALUES ('9', '50', '9');
INSERT INTO `tc_cat_brands` VALUES ('10', '50', '10');
INSERT INTO `tc_cat_brands` VALUES ('11', '334', '1');
INSERT INTO `tc_cat_brands` VALUES ('12', '334', '11');

-- ----------------------------
-- Table structure for tc_cat_shops
-- ----------------------------
DROP TABLE IF EXISTS `tc_cat_shops`;
CREATE TABLE `tc_cat_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `catId` int(11) NOT NULL DEFAULT '0' COMMENT '所属分类id',
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`),
  KEY `shopId` (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='店铺表经营类目表';

-- ----------------------------
-- Records of tc_cat_shops
-- ----------------------------
INSERT INTO `tc_cat_shops` VALUES ('2', '2', '47');
INSERT INTO `tc_cat_shops` VALUES ('3', '3', '47');
INSERT INTO `tc_cat_shops` VALUES ('5', '4', '48');
INSERT INTO `tc_cat_shops` VALUES ('6', '5', '48');
INSERT INTO `tc_cat_shops` VALUES ('7', '6', '49');
INSERT INTO `tc_cat_shops` VALUES ('8', '7', '49');
INSERT INTO `tc_cat_shops` VALUES ('9', '8', '52');
INSERT INTO `tc_cat_shops` VALUES ('10', '9', '51');
INSERT INTO `tc_cat_shops` VALUES ('11', '10', '53');
INSERT INTO `tc_cat_shops` VALUES ('12', '11', '334');
INSERT INTO `tc_cat_shops` VALUES ('49', '1', '47');
INSERT INTO `tc_cat_shops` VALUES ('50', '1', '48');
INSERT INTO `tc_cat_shops` VALUES ('51', '1', '49');
INSERT INTO `tc_cat_shops` VALUES ('52', '1', '50');
INSERT INTO `tc_cat_shops` VALUES ('53', '1', '51');
INSERT INTO `tc_cat_shops` VALUES ('54', '1', '54');
INSERT INTO `tc_cat_shops` VALUES ('55', '1', '334');
INSERT INTO `tc_cat_shops` VALUES ('56', '1', '52');
INSERT INTO `tc_cat_shops` VALUES ('57', '1', '53');
INSERT INTO `tc_cat_shops` VALUES ('58', '1', '55');
INSERT INTO `tc_cat_shops` VALUES ('59', '1', '335');
INSERT INTO `tc_cat_shops` VALUES ('60', '1', '56');

-- ----------------------------
-- Table structure for tc_data_cats
-- ----------------------------
DROP TABLE IF EXISTS `tc_data_cats`;
CREATE TABLE `tc_data_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) NOT NULL COMMENT '数据分类名称',
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='基础数据分类表';

-- ----------------------------
-- Records of tc_data_cats
-- ----------------------------
INSERT INTO `tc_data_cats` VALUES ('1', '订单取消原因');
INSERT INTO `tc_data_cats` VALUES ('2', '订单投诉原因');
INSERT INTO `tc_data_cats` VALUES ('3', '上传目录列表');
INSERT INTO `tc_data_cats` VALUES ('4', '申请退款原因');
INSERT INTO `tc_data_cats` VALUES ('5', '广告类型');

-- ----------------------------
-- Table structure for tc_datas
-- ----------------------------
DROP TABLE IF EXISTS `tc_datas`;
CREATE TABLE `tc_datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `dataName` varchar(255) NOT NULL COMMENT '数据名称',
  `dataVal` varchar(255) NOT NULL COMMENT '数据值',
  `dataSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`),
  KEY `catId` (`catId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='基础数据表';

-- ----------------------------
-- Records of tc_datas
-- ----------------------------
INSERT INTO `tc_datas` VALUES ('1', '1', '下错单', '1', '0');
INSERT INTO `tc_datas` VALUES ('2', '1', '配送地址有误', '2', '0');
INSERT INTO `tc_datas` VALUES ('3', '1', '我有更好的商品想买', '3', '0');
INSERT INTO `tc_datas` VALUES ('4', '1', '商品信息与商家描述的不一致', '4', '0');
INSERT INTO `tc_datas` VALUES ('5', '1', '其他', '5', '0');
INSERT INTO `tc_datas` VALUES ('6', '2', '没有按照约定的时间送货', '1', '0');
INSERT INTO `tc_datas` VALUES ('7', '2', '商品质量与描述的不一致', '2', '0');
INSERT INTO `tc_datas` VALUES ('8', '2', '商品在运送过程中受到损坏', '3', '0');
INSERT INTO `tc_datas` VALUES ('9', '2', '其他', '10000', '0');
INSERT INTO `tc_datas` VALUES ('10', '3', '商品评价', 'appraises', '0');
INSERT INTO `tc_datas` VALUES ('11', '3', '商城广告', 'adspic', '0');
INSERT INTO `tc_datas` VALUES ('12', '3', '品牌', 'brands', '0');
INSERT INTO `tc_datas` VALUES ('13', '3', '商城配置', 'sysconfigs', '0');
INSERT INTO `tc_datas` VALUES ('14', '3', '临时目录', 'temp', '0');
INSERT INTO `tc_datas` VALUES ('15', '3', '职员信息', 'staffs', '0');
INSERT INTO `tc_datas` VALUES ('16', '3', '编辑器', 'image', '0');
INSERT INTO `tc_datas` VALUES ('17', '3', '友情链接', 'friendlinks', '0');
INSERT INTO `tc_datas` VALUES ('18', '3', '会员等级', 'userranks', '0');
INSERT INTO `tc_datas` VALUES ('19', '3', '会员信息', 'users', '0');
INSERT INTO `tc_datas` VALUES ('20', '3', '店铺认证', 'accreds', '0');
INSERT INTO `tc_datas` VALUES ('21', '3', '店铺信息', 'shops', '0');
INSERT INTO `tc_datas` VALUES ('22', '3', '商品信息', 'goods', '0');
INSERT INTO `tc_datas` VALUES ('23', '3', '商家广告', 'shopconfigs', '0');
INSERT INTO `tc_datas` VALUES ('24', '3', '订单投诉', 'complains', '0');
INSERT INTO `tc_datas` VALUES ('25', '4', '配送超时', '1', '0');
INSERT INTO `tc_datas` VALUES ('26', '4', '不喜欢/不想要', '2', '0');
INSERT INTO `tc_datas` VALUES ('27', '4', '货物破损已拒签', '3', '0');
INSERT INTO `tc_datas` VALUES ('28', '4', '空包裹', '4', '0');
INSERT INTO `tc_datas` VALUES ('29', '4', '快递/物流一直未送达', '5', '0');
INSERT INTO `tc_datas` VALUES ('30', '4', '快递/物流无跟踪记录', '6', '0');
INSERT INTO `tc_datas` VALUES ('31', '4', '其他', '10000', '0');
INSERT INTO `tc_datas` VALUES ('32', '5', 'PC版', '1', '0');

-- ----------------------------
-- Table structure for tc_express
-- ----------------------------
DROP TABLE IF EXISTS `tc_express`;
CREATE TABLE `tc_express` (
  `expressId` int(11) NOT NULL AUTO_INCREMENT,
  `expressName` varchar(50) NOT NULL COMMENT '快递id',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	1：有效 -1：删除',
  PRIMARY KEY (`expressId`),
  KEY `dataFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='快递表';

-- ----------------------------
-- Records of tc_express
-- ----------------------------
INSERT INTO `tc_express` VALUES ('1', '申通快递', '1');
INSERT INTO `tc_express` VALUES ('2', '顺丰快递', '1');
INSERT INTO `tc_express` VALUES ('3', '邮政快递', '1');
INSERT INTO `tc_express` VALUES ('4', '圆通快递', '1');
INSERT INTO `tc_express` VALUES ('5', '韵达快递', '1');
INSERT INTO `tc_express` VALUES ('6', '菜鸟快递', '1');
INSERT INTO `tc_express` VALUES ('7', '中通快递', '1');

-- ----------------------------
-- Table structure for tc_favorites
-- ----------------------------
DROP TABLE IF EXISTS `tc_favorites`;
CREATE TABLE `tc_favorites` (
  `favoriteId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `favoriteType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '收藏类型',
  `targetId` int(11) NOT NULL COMMENT '对象id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`favoriteId`),
  UNIQUE KEY `favoriteId` (`userId`,`favoriteType`,`targetId`) USING BTREE,
  KEY `userId` (`userId`,`favoriteType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注（店铺/商品）表·';

-- ----------------------------
-- Records of tc_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for tc_friendlinks
-- ----------------------------
DROP TABLE IF EXISTS `tc_friendlinks`;
CREATE TABLE `tc_friendlinks` (
  `friendlinkId` int(11) NOT NULL AUTO_INCREMENT,
  `friendlinkIco` varchar(150) DEFAULT '' COMMENT '图标',
  `friendlinkName` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `friendlinkUrl` varchar(150) NOT NULL DEFAULT '' COMMENT '网址',
  `friendlinkSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`friendlinkId`),
  KEY `dataFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of tc_friendlinks
-- ----------------------------
INSERT INTO `tc_friendlinks` VALUES ('1', '', 'WSTMart多商户商城', 'http://www.wstmart.net', '0', '1', '2016-10-20 11:53:56');
INSERT INTO `tc_friendlinks` VALUES ('2', '', '商淘软件', 'http://www.shangtao.net', '3', '1', '2016-10-20 11:53:56');
INSERT INTO `tc_friendlinks` VALUES ('3', '', 'WSTMall社区O2O系统', 'http://www.wstmall.net', '4', '1', '2016-10-20 11:53:56');
INSERT INTO `tc_friendlinks` VALUES ('4', '', 'WSTMart论坛', 'http://bbs.shangtao.net', '2', '1', '2016-10-20 11:53:56');
INSERT INTO `tc_friendlinks` VALUES ('5', '', 'WSTMall论坛', 'http://bbs.shangtao.net', '5', '1', '2016-10-20 11:53:56');

-- ----------------------------
-- Table structure for tc_goods
-- ----------------------------
DROP TABLE IF EXISTS `tc_goods`;
CREATE TABLE `tc_goods` (
  `GOODS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOODS_SN` varchar(20) DEFAULT NULL COMMENT '商品编号',
  `PRODUCT_NO` varchar(20) DEFAULT NULL COMMENT '商品货号',
  `GOODS_NAME` varchar(50) NOT NULL COMMENT '商品名称',
  `GOODS_IMG` varchar(150) NOT NULL COMMENT '商品图片',
  `SHOP_ID` int(11) DEFAULT NULL COMMENT '门店id',
  `MARKET_PRICE` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `SHOP_PRICE` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '门店价',
  `WARN_STOCK` int(11) DEFAULT '0' COMMENT '预警库存',
  `GOODS_STOCK` int(11) NOT NULL DEFAULT '0' COMMENT '商品总库存·',
  `GOODS_UNIT` char(10) NOT NULL COMMENT '单位',
  `GOODS_TIPS` text COMMENT '促销信息',
  `ISSALE` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否上架	0:不上架 1:上架',
  `ISBEST` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否精品	0:否 1:是',
  `ISHOT` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否热销产品	0:否 1:是',
  `ISNEW` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否新品	0:否 1:是',
  `ISRECOM` tinyint(4) DEFAULT '0' COMMENT '是否推荐	0:否 1:是',
  `GOODS_CATID_PATH` varchar(255) DEFAULT NULL COMMENT '商品分类ID路径	catId1_catId2_catId3',
  `GOODS_CATID` int(11) NOT NULL COMMENT '最后一级商品分类ID',
  `SHOP_CATID1` int(11) DEFAULT NULL COMMENT '门店商品分类第一级ID',
  `SHOP_CATID2` int(11) DEFAULT NULL COMMENT '门店商品第二级分类ID',
  `BRAND_ID` int(11) DEFAULT '0' COMMENT '品牌Id',
  `GOODS_DESC` text COMMENT '	商品描述',
  `GOODS_STATUS` tinyint(4) DEFAULT '0' COMMENT '商品状态	-1:违规 0:未审核 1:已审核',
  `SALE_NUM` int(11) DEFAULT '0' COMMENT '总销售量',
  `SALE_TIME` datetime NOT NULL COMMENT '	上架时间',
  `VISIT_NUM` int(11) DEFAULT '0' COMMENT '访问数',
  `APPRAISE_NUM` int(11) DEFAULT '0' COMMENT '评价数',
  `ISSPEC` tinyint(4) DEFAULT '0' COMMENT '是否有规格	0:没有 1:有',
  `GALLERY` text COMMENT '商品相册',
  `GOODS_SEO_KEYWORDS` varchar(200) DEFAULT NULL COMMENT '商品SEO关键字',
  `ILLEGAL_REMARKS` varchar(255) DEFAULT NULL COMMENT '状态说明	一般用于说明拒绝原因',
  `DATA_FLAG` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`GOODS_ID`),
  KEY `shopId` (`SHOP_ID`) USING BTREE,
  KEY `goodsStatus` (`GOODS_STATUS`,`DATA_FLAG`,`ISSALE`) USING BTREE,
  KEY `goodsCatIdPath` (`GOODS_CATID_PATH`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of tc_goods
-- ----------------------------
INSERT INTO `tc_goods` VALUES ('1', '147589527734432', '147589527734432', '测试案例数据', 'upload/shops/2016-10/57f8641d41b80.jpg', '1', '2999.00', '1099.00', '123', '720323', '个', '', '1', '1', '1', '1', '1', '334_348_351_', '3510', '1', '4', '1', '<img src=\"/upload/image/20161008/20161008050041_27424.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050049_53629.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050058_22485.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050110_19711.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050118_90005.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050126_78065.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050137_40890.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050147_48660.jpg\" alt=\"\" /><img src=\"/upload/image/20161008/20161008050247_54024.jpg\" alt=\"\" />', '1', '0', '2016-10-08 11:12:34', '15', '1', '1', 'upload/goods/2016-10/57f863ff76e45.jpg,upload/goods/2016-10/57f864006f452.jpg,upload/goods/2016-10/57f8640089f95.jpg', '', null, '1', '2016-10-08 11:12:34');
INSERT INTO `tc_goods` VALUES ('2', '', '', '三只松鼠坚果', 'view/images/20181008/01.jpg', null, '25.00', '20.00', null, '500', '包', '', '1', '0', '0', '0', '1', '3_13_106_', '106', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('3', '', '', '东北大苹果', 'view/images/20181008/02.jpg', null, '20.00', '18.00', null, '700', '斤', '', '1', '0', '0', '0', '1', '1_8_37_', '37', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('4', '', '', '台湾大红橙', 'view/images/20181008/03.jpg', null, '15.00', '14.00', null, '1500', '斤', '', '1', '0', '0', '0', '1', '1_8_39_', '39', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('5', '', '', '新鲜青提葡萄 赣南农家现摘大棚青提子清甜爽口 3斤', 'view/images/20181008/04.jpg', null, '10.00', '7.00', null, '1500', '斤', '', '1', '0', '0', '0', '1', '1_8_47_', '47', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('6', '', '', '山竹 水果之后', 'view/images/20181008/05.jpg', null, '35.00', '32.00', null, '700', '斤', '', '1', '0', '0', '0', '1', '1_8_57_', '57', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('7', '', '', '奶油草莓 章姬草莓 牛奶草莓 新鲜水果', 'view/images/20181008/06.jpg', null, '40.00', '39.00', null, '660', '盒', '', '1', '0', '0', '0', '0', '1_8_55_', '55', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('8', '', '', '农家散养土鸡 约3斤', 'view/images/20181008/07.jpg', null, '100.00', '90.00', null, '100', '只', '', '1', '0', '0', '0', '1', '2_10_80_', '80', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('9', '', '', '固城湖 大闸蟹礼券888型 5对10只 包邮', 'view/images/20181008/08.jpg', null, '380.00', '358.00', null, '1000', '只', '', '1', '0', '0', '0', '1', '2_11_91_', '91', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('10', '', '', '农家鸭子 5斤', 'view/images/20181008/09.jpg', null, '170.00', '155.00', null, '300', '只', '', '1', '0', '0', '0', '1', '2_11_81_', '81', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('11', '', '', '1号鲜客-冰冻海螺片', 'view/images/20181008/10.jpg', null, '35.00', '30.00', null, '600', '袋', '', '1', '0', '0', '0', '1', '2_11_96_', '96', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('12', '', '', '阿胶蜜枣500g 无核蜜枣蜜饯零食', 'view/images/20181008/11.jpg', null, '15.00', '12.00', null, '600', '件', '', '1', '0', '0', '0', '1', '3_13_116_', '116', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('13', '', '', '纯手工低温烘焙下午茶点心【烤甜甜圈蛋糕_南瓜味】宝宝零食美', 'view/images/20181008/12.jpg', null, '5.50', '4.00', null, '500', '个', '', '1', '0', '0', '0', '1', '3_15_147_', '147', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('14', '', '', '德芙巧克力什锦丝滑牛奶碗装 七夕情人节礼物', 'view/images/20181008/13.jpg', null, '45.00', '39.00', null, '450', '桶', '', '1', '0', '0', '0', '1', '3_16_163_', '163', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('15', '', '', '鲁花压榨玉米油5L', 'view/images/20181008/14.jpg', null, '100.00', '90.00', null, '188', '桶', '', '1', '0', '0', '0', '1', '4_17_172_', '172', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('16', '', '', '五谷六盘精选宁夏六盘山绿豆天然生态绿豆480克', 'view/images/20181008/15.jpg', null, '20.00', '19.00', null, '302', '袋', '', '1', '0', '0', '0', '1', '4_18_351_', '351', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('17', '', '', '双汇 马可波罗火腿肠 100g', 'view/images/20181008/16.jpg', null, '4.00', '3.50', null, '500', '袋', '', '1', '0', '0', '0', '1', '4_19_190_', '190', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('18', '', '', '白砂糖500g 细砂糖食用糖 甜味调剂', 'view/images/20181008/17.jpg', null, '5.50', '4.80', null, '650', '件', '', '1', '0', '0', '0', '1', '4_20_214_', '214', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('19', '', '', '胎菊王 500g', 'view/images/20181008/18.jpg', null, '45.00', '39.80', null, '300', '件', '', '1', '0', '0', '0', '1', '5_21_227_', '227', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('20', '', '', '海南特产 南国食品 椰子粉 营养早餐 纯椰子粉16g*20袋', 'view/images/20181008/19.jpg', null, '36.00', '35.00', null, '3000', '克', '', '1', '0', '0', '0', '1', '5_22_232_', '232', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('21', '', '', '甘肃陇西农家纯土蜂蜜 党参花蜜 滋养保健佳品 50g付邮免费试吃', 'view/images/20181008/20.jpg', null, '80.00', '75.00', null, '1500', '件', '', '1', '0', '0', '0', '1', '5_22_246_', '246', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('22', '', '', '内蒙古特产 河套奶茶粉咸味 老配方', 'view/images/20181008/21.jpg', null, '30.00', '26.00', null, '500', '件', '', '1', '0', '0', '0', '1', '5_23_252_', '252', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('23', '', '', '清酒 韩国烧酒 朝岛 时带 真露 烧酒 韩国酒4瓶套装', 'view/images/20181008/22.jpg', null, '70.00', '68.00', null, '420', '件', '', '1', '0', '0', '0', '1', '6_25_269_', '269', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('24', '', '', '洋酒SKYY VODKA深蓝伏特加 蓝天绝对伏特加 40度原味750ml', 'view/images/20181008/23.jpg', null, '45.00', '39.00', null, '350', '件', '', '1', '0', '0', '0', '1', '6_26_277_', '277', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('25', '', '', '红酒 火焰树酒庄-西拉干红葡萄酒', 'view/images/20181008/24.jpg', null, '300.00', '298.00', null, '250', '瓶', '', '1', '0', '0', '0', '1', '6_28_290_', '290', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('26', '', '', '信明脐橙汁500ml 一瓶果蔬汁 饮料', 'view/images/20181008/25.jpg', null, '5.00', '4.80', null, '500', '瓶', '', '1', '0', '0', '0', '1', '6_30_299_', '299', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('27', '', '', '长白山鲜人参林下参东北山参 趴货200g/支泡酒煲汤 滋补养生', 'view/images/20181008/26.jpg', null, '320.00', '299.00', null, '50', '件', '', '1', '0', '0', '0', '1', '7_31_307_', '307', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('28', '', '', '青海正宗黑枸杞 野生黑枸杞 特优 500g/瓶', 'view/images/20181008/27.jpg', null, '370.00', '365.00', null, '150', '罐', '', '1', '0', '0', '0', '1', '7_32_319_', '319', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('29', '', '', '马来西亚燕窝 初盏三角燕窝正品', 'view/images/20181008/28.jpg', null, '6.00', '5.00', null, '300', '克', '', '1', '0', '0', '0', '1', '7_33_328_', '328', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');
INSERT INTO `tc_goods` VALUES ('30', '', '', '新鲜鹿茸整枝二杠头茬长白山梅花鹿足干壮腰强肾泡酒包邮', 'view/images/20181008/29.jpg', null, '9.00', '8.50', null, '223', '克', '', '1', '0', '0', '0', '1', '7_34_340_', '340', null, null, null, '', null, null, '2018-10-08 17:48:30', null, null, null, '', '', '', '1', '2018-10-08 17:49:14');

-- ----------------------------
-- Table structure for tc_goods_appraises
-- ----------------------------
DROP TABLE IF EXISTS `tc_goods_appraises`;
CREATE TABLE `tc_goods_appraises` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `shopId` int(11) NOT NULL DEFAULT '0' COMMENT '门店ID',
  `orderId` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `goodsId` int(11) NOT NULL DEFAULT '0' COMMENT '评价对象ID',
  `goodsSpecId` int(11) NOT NULL DEFAULT '0' COMMENT '商品-规格Id',
  `userId` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `goodsScore` int(11) NOT NULL DEFAULT '0' COMMENT '商品评分',
  `serviceScore` int(11) NOT NULL DEFAULT '0' COMMENT '服务评分',
  `timeScore` int(11) NOT NULL DEFAULT '0' COMMENT '时效评分',
  `content` text NOT NULL COMMENT '点评内容',
  `shopReply` text COMMENT '店铺回复',
  `images` text COMMENT '上传图片',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	1:显示 0:隐藏',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `replyTime` date DEFAULT NULL COMMENT '商家回复时间',
  PRIMARY KEY (`id`),
  KEY `shopId` (`shopId`),
  KEY `goodsId` (`goodsId`,`goodsSpecId`,`dataFlag`,`isShow`) USING BTREE,
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评价表';

-- ----------------------------
-- Records of tc_goods_appraises
-- ----------------------------

-- ----------------------------
-- Table structure for tc_goods_attributes
-- ----------------------------
DROP TABLE IF EXISTS `tc_goods_attributes`;
CREATE TABLE `tc_goods_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `shopId` int(11) NOT NULL COMMENT '店铺ID',
  `goodsId` int(11) NOT NULL COMMENT '商品ID',
  `attrId` int(11) NOT NULL COMMENT '属性名称',
  `attrVal` text NOT NULL COMMENT '属性值',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `shopId` (`shopId`),
  KEY `goodsId` (`goodsId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of tc_goods_attributes
-- ----------------------------

-- ----------------------------
-- Table structure for tc_goods_cats
-- ----------------------------
DROP TABLE IF EXISTS `tc_goods_cats`;
CREATE TABLE `tc_goods_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `parentId` int(11) NOT NULL COMMENT '父ID',
  `catName` varchar(20) NOT NULL COMMENT '分类名称',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	0:隐藏 1:显示',
  `isFloor` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示楼层	0:不显示 1:显示',
  `catSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	1:有效 -1：删除',
  `createTime` datetime NOT NULL COMMENT '建立时间',
  `commissionRate` decimal(11,2) DEFAULT '-1.00' COMMENT '商品佣金比例	-1代表使用上级父类的佣金设置',
  PRIMARY KEY (`catId`),
  KEY `parentId` (`parentId`,`isShow`,`dataFlag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of tc_goods_cats
-- ----------------------------
INSERT INTO `tc_goods_cats` VALUES ('1', '0', '时蔬水果', '1', '1', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('2', '0', '肉类海鲜', '1', '1', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('3', '0', '休闲食品', '1', '1', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('4', '0', '米面粮油', '1', '1', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('5', '0', '茶叶冲饮', '1', '1', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('6', '0', '酒水饮料', '1', '1', '7', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('7', '0', '营养保健', '1', '1', '8', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('8', '1', '水果', '1', '2', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('9', '1', '蔬菜', '1', '2', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('10', '2', '蛋禽肉类', '1', '2', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('11', '2', '海鲜水产', '1', '2', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('12', '3', '坚果炒货', '1', '2', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('13', '3', '蜜饯果干', '1', '2', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('14', '3', '肉类豆干', '1', '2', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('15', '3', '膨化食品', '1', '2', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('16', '3', '其他', '1', '2', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('17', '4', '食用油', '1', '2', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('18', '4', '米面杂粮', '1', '2', '7', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('19', '4', '干货速食', '1', '2', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('20', '4', '厨房调料', '1', '2', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('21', '5', '国产茶', '1', '2', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('22', '5', '冲调饮品', '1', '2', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('23', '5', '牛奶乳品', '1', '2', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('24', '6', '白酒', '1', '2', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('25', '6', '啤酒', '1', '2', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('26', '6', '洋酒', '1', '2', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('27', '6', '黄酒', '1', '2', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('28', '6', '葡萄酒', '1', '2', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('29', '6', '养生酒', '1', '2', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('30', '6', '饮料类', '1', '2', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('31', '7', '补气类', '1', '2', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('32', '7', '补血类', '1', '2', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('33', '7', '补阴类', '1', '2', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('34', '7', '补阳类', '1', '2', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('35', '8', '葡萄', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('36', '8', '石榴', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('37', '8', '苹果', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('38', '8', '梨', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('39', '8', '脐橙', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('40', '8', '柑类', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('41', '8', '瓜类', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('42', '8', '柠檬', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('43', '8', '香蕉', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('44', '8', '火龙果', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('45', '8', '菠萝/凤梨', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('46', '8', '奇异果/猕猴桃', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('47', '8', '提子/葡萄', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('48', '8', '芒果', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('49', '8', '龙眼/荔枝', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('50', '8', '车厘子/樱桃', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('51', '8', '榴莲', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('52', '8', '山楂', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('53', '8', '枇杷', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('54', '8', '圣女果', '1', '3', '7', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('55', '8', '草莓', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('56', '8', '杨梅', '1', '3', '7', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('57', '8', '山竹', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('58', '8', '青枣', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('59', '8', '杨桃', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('60', '8', '李子', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('61', '8', '桃', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('62', '8', '柚子', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('63', '8', '其他', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('64', '9', '有机蔬菜', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('65', '9', '叶菜类', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('66', '9', '根菜类', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('67', '9', '菌菇类', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('68', '9', '茄类/瓜果类', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('69', '9', '花菜类', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('70', '9', '块茎类', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('71', '9', '豆荚类', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('72', '9', '蒜葱类', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('73', '9', '竹笋类', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('74', '9', '水生菜类', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('75', '9', '野生菜类', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('76', '9', '其他新鲜蔬菜', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('77', '10', '猪肉', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('78', '10', '牛肉', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('79', '10', '羊肉', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('80', '10', '鸡肉', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('81', '10', '鸭肉', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('82', '10', '鹅/鸽', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('83', '10', '鸭鹅蛋', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('84', '10', '鲜/土鸡蛋', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('85', '10', '皮/咸蛋', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('86', '10', '腌/腊肉', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('87', '10', '香/腊肠', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('88', '10', '其他', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('89', '11', '鱼类', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('90', '11', '虾类', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('91', '11', '蟹/贝类', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('92', '11', '龟鳖类', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('93', '11', '藻类', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('94', '11', '软体类', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('95', '11', '海产干货', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('96', '11', '其他', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('97', '12', '核桃', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('98', '12', '碧根果/长寿果', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('99', '12', '杏仁/巴旦木', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('100', '12', '夏威夷果', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('101', '12', '开心果', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('102', '12', '腰果', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('103', '12', '无花果', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('104', '12', '鲍鱼果', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('105', '12', '白果/银杏果', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('106', '12', '松子', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('107', '12', '榛子', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('108', '12', '瓜子', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('109', '12', '花生', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('110', '12', '栗类', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('111', '12', '兰花豆/蚕豆', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('112', '12', '青豆', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('113', '12', '胡桃', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('114', '12', '其他', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('115', '13', '柠檬片', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('116', '13', '枣类制品', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('117', '13', '葡萄干', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('118', '13', '芒果干', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('119', '13', '梅类制品', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('120', '13', '山楂类制品', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('121', '13', '笋类制品', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('122', '13', '蓝莓', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('123', '13', '薯类制品', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('124', '13', '杏仁干', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('125', '13', '无花果干', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('126', '13', '凤梨/菠萝蜜干', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('127', '13', '香蕉片', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('128', '13', '蔬果干', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('129', '13', '圣女果干', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('130', '13', '猕猴桃干', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('131', '13', '橄榄', '1', '1', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('132', '13', '桑果', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('133', '13', '杏干', '1', '3', '7', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('134', '13', '李柰干', '1', '3', '8', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('135', '13', '其他', '1', '3', '8', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('136', '14', '笋类制品', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('137', '14', '牛羊类', '1', '3', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('138', '14', '猪肉类', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('139', '14', '禽类', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('140', '14', '鱼虾制品', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('141', '14', '蟹贝制品', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('142', '14', '豆干制品', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('143', '14', '其他', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('144', '15', '饼干', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('145', '15', '传统糕点', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('146', '15', '西式糕点', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('147', '15', '甜甜圈', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('148', '15', '月饼', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('149', '15', '曲奇', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('150', '15', '果味派', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('151', '15', '薯片/薯条', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('152', '15', '巧克力派', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('153', '15', '面点', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('154', '15', '茶点', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('155', '15', '其他', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('156', '16', '糖果', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('157', '16', '果冻/布丁', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('158', '16', '口香糖', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('159', '16', '罐头', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('160', '16', '酱腌菜', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('161', '16', '脱水蔬菜', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('162', '16', '蔬菜制品', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('163', '16', '其他食品', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('164', '17', '山茶油', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('165', '17', '橄榄油', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('166', '17', '调和油', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('167', '17', '葵花籽油', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('168', '17', '菜籽油', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('169', '17', '花生油', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('170', '17', '大豆油', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('171', '17', '亚麻籽油', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('172', '17', '玉米油', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('173', '17', '葡萄籽油', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('174', '17', '核桃油', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('175', '17', '椰子油', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('176', '17', '动物油', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('177', '17', '其他食用油', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('178', '18', '八宝粥', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('179', '18', '黑豆/黄豆', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('180', '18', '红薯/玉米', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('181', '18', '国产大米', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('182', '18', '泰国香米', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('183', '18', '小米/薏仁米', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('184', '18', '糙米/糯米', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('185', '18', '黑米/红米', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('186', '18', '面/面制品', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('187', '18', '有机杂粮', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('188', '18', '米粉/米糊/汤', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('189', '18', '其他', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('190', '19', '火腿肠', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('191', '19', '银耳/白木耳', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('192', '19', '莲子', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('193', '19', '鱼干', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('194', '19', '黑木耳', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('195', '19', '香菇/食用菌', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('196', '19', '灰树花', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('197', '19', '竹荪', '1', '3', '8', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('198', '19', '猴头菇', '1', '3', '12', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('199', '19', '松茸', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('200', '19', '桂圆干/龙眼', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('201', '19', '百合', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('202', '19', '荔枝干', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('203', '19', '笋干', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('204', '19', '石耳', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('205', '19', '腐竹', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('206', '19', '速食面/粉', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('207', '19', '速食米粉', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('208', '19', '速食米线', '1', '3', '7', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('209', '19', '速食罐头', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('210', '19', '速食盒饭', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('211', '19', '其他干货', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('212', '20', '醋', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('213', '20', '酱油', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('214', '20', '食糖', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('215', '20', '鸡精/味精', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('216', '20', '料酒', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('217', '20', '花椒/八角/桂', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('218', '20', '调味酱', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('219', '20', '其他', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('220', '21', '红茶', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('221', '21', '绿茶', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('222', '21', '白茶', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('223', '21', '黑茶', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('224', '21', '青茶', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('225', '21', '黄茶', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('226', '21', '乌龙茶', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('227', '21', '花果茶', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('228', '21', '药用保健茶', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('229', '21', '其他', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('230', '22', '蜂蜜', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('231', '22', '红糖', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('232', '22', '麦片谷物', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('233', '22', '芝麻糊', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('234', '22', '核桃粉', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('235', '22', '藕粉', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('236', '22', '咖啡', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('237', '22', '咖啡伴侣/辅料', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('238', '22', '可可/巧克力粉', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('239', '22', '奶茶', '1', '3', '8', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('240', '22', '速溶茶', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('241', '22', '柚子茶', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('242', '22', '菊花茶', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('243', '22', '豆奶粉', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('244', '22', '果味冲饮', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('245', '22', '姜汤', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('246', '22', '其他', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('247', '23', '纯牛奶', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('248', '23', '豆奶', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('249', '23', '酸奶', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('250', '23', '婴儿奶粉', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('251', '23', '成人奶粉', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('252', '23', '含乳饮料', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('253', '23', '其他', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('254', '24', '茅台', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('255', '24', '五粮液', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('256', '24', '剑南春', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('257', '24', '洋河', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('258', '24', '郎酒', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('259', '24', '泸州老窖', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('260', '24', '牛栏山', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('261', '24', '古井贡酒', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('262', '24', '衡水老白干', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('263', '24', '习酒', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('264', '24', '洋河大曲', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('265', '24', '二锅头', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('266', '24', '山西汾酒', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('267', '24', '其他', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('268', '25', '黑啤', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('269', '25', '黄啤', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('270', '25', '白啤', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('271', '25', '果味啤酒', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('272', '25', '量贩装', '1', '3', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('273', '25', '青岛原浆', '1', '3', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('274', '25', '比利时啤酒', '1', '3', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('275', '26', '威士忌', '1', '3', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('276', '26', '白兰地', '1', '3', '10', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('277', '26', '伏特加', '1', '3', '5', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('278', '26', '立娇酒', '1', '3', '10', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('279', '26', '朗姆酒', '1', '3', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('280', '26', '清酒/烧酒', '1', '3', '20', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('281', '26', '鸡尾酒', '1', '3', '6', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('282', '26', '其他', '1', '3', '11', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('283', '27', '糯米黄酒', '1', '3', '13', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('284', '27', '大米黄酒', '1', '3', '14', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('285', '27', '黍米黄酒', '1', '3', '0', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('286', '27', '红曲黄酒', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('287', '27', '绍兴黄酒', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('288', '27', '即墨黄酒', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('289', '27', '客家黄酒', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('290', '28', '红葡萄酒', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('291', '28', '白葡萄酒', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('292', '28', '桃红葡萄酒', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('293', '28', '加度葡萄酒', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('294', '28', '起泡酒/香槟', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('295', '29', '动物类配制酒', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('296', '29', '植物类配制酒', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('297', '29', '动植物配制酒', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('298', '29', '果味酒', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('299', '30', '果蔬蔬汁', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('300', '30', '含乳饮料', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('301', '30', '碳酸饮料', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('302', '30', '茶饮料', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('303', '30', '功能饮料', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('304', '30', '咖啡饮料', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('305', '30', '其他', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('306', '30', '矿泉水', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('307', '31', '人参', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('308', '31', '海参', '1', '3', '4', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('309', '31', '乌鸡', '1', '3', '1', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('310', '31', '蜂蜜', '1', '3', '2', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('312', '31', '莲子', '1', '3', '3', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('313', '31', '大枣', '1', '3', '32', '1', '2018-10-08 13:53:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('314', '31', '山药', '1', '3', '0', '1', '2018-10-08 15:50:40', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('315', '31', '芡实', '1', '3', '0', '1', '2018-10-08 15:50:44', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('316', '31', '党参', '1', '3', '0', '1', '2018-10-08 15:53:12', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('317', '31', '黄芪', '1', '3', '0', '1', '2018-10-08 15:53:20', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('318', '31', '其他', '1', '3', '0', '1', '2018-10-08 15:54:12', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('319', '32', '枸杞', '1', '3', '0', '1', '2018-10-08 16:07:24', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('320', '32', '阿胶', '1', '3', '0', '1', '2018-10-08 16:08:02', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('321', '32', '三七', '1', '3', '0', '1', '2018-10-08 16:08:25', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('322', '32', '当归', '1', '3', '0', '1', '2018-10-08 16:08:40', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('323', '32', '何首乌', '1', '3', '0', '1', '2018-10-08 16:08:58', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('324', '32', '地黄', '1', '3', '0', '1', '2018-10-08 16:09:24', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('325', '32', '龙眼肉', '1', '3', '0', '1', '2018-10-08 16:09:59', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('326', '32', '桑椹', '1', '3', '0', '1', '2018-10-08 16:10:18', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('327', '32', '其他', '1', '3', '0', '1', '2018-10-08 16:10:36', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('328', '33', '燕窝', '1', '3', '0', '1', '2018-10-08 16:10:55', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('329', '33', '银耳', '1', '3', '0', '1', '2018-10-08 16:11:14', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('330', '33', '乌龟', '1', '3', '0', '1', '2018-10-08 16:11:34', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('331', '33', '鳖', '1', '3', '0', '1', '2018-10-08 16:11:54', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('332', '33', '百合', '1', '3', '0', '1', '2018-10-08 16:12:12', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('333', '33', '黑芝麻', '1', '3', '0', '1', '2018-10-08 16:12:28', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('334', '33', '玉竹', '1', '3', '0', '1', '2018-10-08 16:12:41', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('335', '33', '灵芝', '1', '3', '0', '1', '2018-10-08 16:12:59', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('336', '33', '麦冬', '1', '3', '0', '1', '2018-10-08 16:13:21', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('337', '33', '石斛', '1', '3', '0', '1', '2018-10-08 16:13:39', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('338', '33', '西洋参', '1', '3', '0', '1', '2018-10-08 16:14:04', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('339', '33', '其他', '1', '3', '0', '1', '2018-10-08 16:14:23', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('340', '34', '冬虫夏草', '1', '3', '0', '1', '2018-10-08 16:14:37', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('341', '34', '鹿茸', '1', '3', '0', '1', '2018-10-08 16:14:58', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('342', '34', '肉苁蓉', '1', '3', '0', '1', '2018-10-08 16:15:15', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('343', '34', '紫河车', '1', '3', '0', '1', '2018-10-08 16:15:35', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('344', '34', '杜仲', '1', '3', '0', '1', '2018-10-08 16:15:56', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('345', '34', '蛤蚧', '1', '3', '0', '1', '2018-10-08 16:16:10', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('346', '34', '胡桃肉', '1', '3', '0', '1', '2018-10-08 16:16:24', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('347', '34', '海马', '1', '3', '0', '1', '2018-10-08 16:16:37', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('348', '34', '海龙', '1', '3', '0', '1', '2018-10-08 16:17:00', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('349', '34', '狗肾', '1', '3', '0', '1', '2018-10-08 16:17:15', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('350', '34', '其他', '1', '3', '0', '1', '2018-10-08 16:17:29', '-1.00');
INSERT INTO `tc_goods_cats` VALUES ('351', '18', '红豆/绿豆', '1', '3', '0', '1', '2018-10-08 16:17:29', '-1.00');

-- ----------------------------
-- Table structure for tc_goods_parent_cats_details
-- ----------------------------
DROP TABLE IF EXISTS `tc_goods_parent_cats_details`;
CREATE TABLE `tc_goods_parent_cats_details` (
  `CAT_ID` int(11) NOT NULL COMMENT '父分类的id',
  `CAT_NAME` varchar(25) NOT NULL,
  `TITLE` varchar(30) NOT NULL COMMENT '分类头部内容',
  `SUBTITLE` varchar(30) NOT NULL COMMENT '分类头部小标题',
  `IMAGES_PATH` varchar(150) NOT NULL COMMENT '分类图片路径',
  PRIMARY KEY (`CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='父分类详情内容表';

-- ----------------------------
-- Records of tc_goods_parent_cats_details
-- ----------------------------
INSERT INTO `tc_goods_parent_cats_details` VALUES ('1', '时蔬水果', '抢鲜购', '便捷健康新生活，轻松享受烹饪乐趣', 'view/images/20181009/01.png');
INSERT INTO `tc_goods_parent_cats_details` VALUES ('2', '肉类海鲜', '好吃不腻', '生鲜鲜食味佳', 'view/images/20181009/02.jpg');
INSERT INTO `tc_goods_parent_cats_details` VALUES ('3', '休闲食品', '零食大礼包开枪了', '当小鱼儿恋上软豆腐', 'view/images/20181009/03.jpg');
INSERT INTO `tc_goods_parent_cats_details` VALUES ('4', '米面粮油', '民以食为天', '纯真自然  营养健康', 'view/images/20181009/04.jpg');
INSERT INTO `tc_goods_parent_cats_details` VALUES ('5', '茶叶冲饮', '好茶自有大益', '茶醇正  心纯粹', 'view/images/20181009/05.jpg');
INSERT INTO `tc_goods_parent_cats_details` VALUES ('6', '酒水饮料', '好喝看的见', '无畅饮  不夏天', 'view/images/20181009/06.jpg');
INSERT INTO `tc_goods_parent_cats_details` VALUES ('7', '营养保健', '养生灵药', '滋阴补阳  疏肝行气', 'view/images/20181009/07.jpg');

-- ----------------------------
-- Table structure for tc_goods_scores
-- ----------------------------
DROP TABLE IF EXISTS `tc_goods_scores`;
CREATE TABLE `tc_goods_scores` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `goodsId` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `shopId` int(11) NOT NULL DEFAULT '0' COMMENT '门店ID',
  `totalScore` int(11) NOT NULL DEFAULT '0' COMMENT '总评分',
  `totalUsers` int(11) NOT NULL DEFAULT '0' COMMENT '总评评分用户数',
  `goodsScore` int(11) NOT NULL DEFAULT '0' COMMENT '商品评分',
  `goodsUsers` int(11) NOT NULL DEFAULT '0' COMMENT '商品评分用户数',
  `serviceScore` int(11) NOT NULL DEFAULT '0' COMMENT '服务评分',
  `serviceUsers` int(11) NOT NULL DEFAULT '0' COMMENT '服务评分用户数',
  `timeScore` int(11) NOT NULL DEFAULT '0' COMMENT '时效评分',
  `timeUsers` int(11) NOT NULL DEFAULT '0' COMMENT '时效评分用户数',
  PRIMARY KEY (`scoreId`),
  KEY `goodsId` (`goodsId`,`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='商品评分表';

-- ----------------------------
-- Records of tc_goods_scores
-- ----------------------------
INSERT INTO `tc_goods_scores` VALUES ('1', '1', '1', '12', '1', '4', '1', '4', '1', '4', '1');
INSERT INTO `tc_goods_scores` VALUES ('2', '2', '2', '12', '1', '4', '1', '4', '1', '4', '1');
INSERT INTO `tc_goods_scores` VALUES ('3', '3', '2', '12', '1', '4', '1', '4', '1', '4', '1');
INSERT INTO `tc_goods_scores` VALUES ('4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('5', '5', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('6', '6', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('7', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('8', '8', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('9', '9', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('10', '10', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('11', '11', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('12', '12', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('13', '13', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('14', '14', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('15', '15', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('16', '16', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('17', '17', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('18', '18', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('19', '19', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('20', '20', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('21', '21', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('22', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('23', '23', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('24', '24', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('25', '25', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('26', '26', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('27', '27', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('28', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('29', '29', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('30', '30', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('31', '31', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('32', '32', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('33', '33', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('34', '34', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('35', '35', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('36', '36', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('37', '37', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('38', '38', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('39', '39', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('40', '40', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('41', '41', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('42', '42', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('43', '43', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('44', '44', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('45', '45', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('46', '46', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('47', '47', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('48', '48', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('49', '49', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('50', '50', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('51', '51', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('52', '52', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('53', '53', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('54', '54', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('55', '55', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('56', '56', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('57', '57', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('58', '58', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('59', '59', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('60', '60', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('61', '61', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('62', '62', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('63', '63', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('64', '64', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_goods_scores` VALUES ('65', '65', '1', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for tc_goods_specs
-- ----------------------------
DROP TABLE IF EXISTS `tc_goods_specs`;
CREATE TABLE `tc_goods_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `shopId` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `goodsId` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `productNo` varchar(20) NOT NULL COMMENT '商品货号',
  `specIds` varchar(255) NOT NULL COMMENT '规格ID格式  例如：specId:specId:specId:specId:specId',
  `marketPrice` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `specPrice` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '商品价',
  `specStock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `warnStock` int(11) NOT NULL DEFAULT '0' COMMENT '预警值',
  `saleNum` int(11) NOT NULL DEFAULT '0' COMMENT '销量',
  `isDefault` tinyint(4) DEFAULT '0' COMMENT '默认规格	1：默认规格 0：非默认规格',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  PRIMARY KEY (`id`),
  KEY `shopId` (`goodsId`,`dataFlag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Records of tc_goods_specs
-- ----------------------------
INSERT INTO `tc_goods_specs` VALUES ('1', '1', '1', '147589527734432-1', '1:2:3:4', '1199.00', '1099.00', '20008', '20', '0', '1', '1');
INSERT INTO `tc_goods_specs` VALUES ('2', '1', '1', '147589527734432-2', '1:2:3:5', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('3', '1', '1', '147589527734432-3', '1:2:3:6', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('4', '1', '1', '147589527734432-4', '1:2:7:4', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('5', '1', '1', '147589527734432-5', '1:2:7:5', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('6', '1', '1', '147589527734432-6', '1:2:7:6', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('7', '1', '1', '147589527734432-7', '1:8:3:4', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('8', '1', '1', '147589527734432-8', '1:8:3:5', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('9', '1', '1', '147589527734432-9', '1:8:3:6', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('10', '1', '1', '147589527734432-10', '1:8:7:4', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('11', '1', '1', '147589527734432-11', '1:8:7:5', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('12', '1', '1', '147589527734432-12', '1:8:7:6', '1199.00', '1099.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('13', '1', '1', '147589527734432-13', '9:2:3:4', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('14', '1', '1', '147589527734432-14', '9:2:3:5', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('15', '1', '1', '147589527734432-15', '9:2:3:6', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('16', '1', '1', '147589527734432-16', '9:2:7:4', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('17', '1', '1', '147589527734432-17', '9:2:7:5', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('18', '1', '1', '147589527734432-18', '9:2:7:6', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('19', '1', '1', '147589527734432-19', '9:8:3:4', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('20', '1', '1', '147589527734432-20', '9:8:3:5', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('21', '1', '1', '147589527734432-21', '9:8:3:6', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('22', '1', '1', '147589527734432-22', '9:8:7:4', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('23', '1', '1', '147589527734432-23', '9:8:7:5', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('24', '1', '1', '147589527734432-24', '9:8:7:6', '1099.00', '999.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('25', '1', '1', '147589527734432-25', '10:2:3:4', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('26', '1', '1', '147589527734432-26', '10:2:3:5', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('27', '1', '1', '147589527734432-27', '10:2:3:6', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('28', '1', '1', '147589527734432-28', '10:2:7:4', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('29', '1', '1', '147589527734432-29', '10:2:7:5', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('30', '1', '1', '147589527734432-30', '10:2:7:6', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('31', '1', '1', '147589527734432-31', '10:8:3:4', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('32', '1', '1', '147589527734432-32', '10:8:3:5', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('33', '1', '1', '147589527734432-33', '10:8:3:6', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('34', '1', '1', '147589527734432-34', '10:8:7:4', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('35', '1', '1', '147589527734432-35', '10:8:7:5', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('36', '1', '1', '147589527734432-36', '10:8:7:6', '1299.00', '1199.00', '20009', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('37', '11', '50', '147616746393900-1', '11:12:13:14', '2099.00', '1999.00', '3000', '20', '0', '1', '1');
INSERT INTO `tc_goods_specs` VALUES ('38', '11', '50', '147616746393900-2', '11:12:13:15', '2099.00', '1999.00', '2040', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('39', '11', '50', '147616746393900-3', '11:12:16:14', '2099.00', '1999.00', '400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('40', '11', '50', '147616746393900-4', '11:12:16:15', '2099.00', '1999.00', '50', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('41', '11', '50', '147616746393900-5', '11:17:13:14', '2299.00', '2199.00', '20044', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('42', '11', '50', '147616746393900-6', '11:17:13:15', '2299.00', '2199.00', '23000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('43', '11', '50', '147616746393900-7', '11:17:16:14', '2299.00', '2199.00', '20400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('44', '11', '50', '147616746393900-8', '11:17:16:15', '2299.00', '2199.00', '2005', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('45', '11', '50', '147616746393900-9', '11:18:13:14', '2399.00', '2299.00', '2400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('46', '11', '50', '147616746393900-10', '11:18:13:15', '2399.00', '2299.00', '5000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('47', '11', '50', '147616746393900-11', '11:18:16:14', '2399.00', '2299.00', '5400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('48', '11', '50', '147616746393900-12', '11:18:16:15', '2399.00', '2299.00', '2900', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('49', '11', '50', '147616746393900-13', '11:19:13:14', '2499.00', '2399.00', '2000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('50', '11', '50', '147616746393900-14', '11:19:13:15', '2499.00', '2399.00', '2400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('51', '11', '50', '147616746393900-15', '11:19:16:14', '2499.00', '2399.00', '2050', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('52', '11', '50', '147616746393900-16', '11:19:16:15', '2499.00', '2399.00', '2070', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('53', '11', '50', '147616746393900-17', '11:20:13:14', '2599.00', '2399.00', '2700', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('54', '11', '50', '147616746393900-18', '11:20:13:15', '2599.00', '2499.00', '2007', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('55', '11', '50', '147616746393900-19', '11:20:16:14', '2599.00', '2499.00', '2008', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('56', '11', '50', '147616746393900-20', '11:20:16:15', '2599.00', '2499.00', '2800', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('57', '11', '50', '147616746393900-21', '11:21:13:14', '2699.00', '2599.00', '8000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('58', '11', '50', '147616746393900-22', '11:21:13:15', '2699.00', '2599.00', '2900', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('59', '11', '50', '147616746393900-23', '11:21:16:14', '2699.00', '2599.00', '2020', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('60', '11', '50', '147616746393900-24', '11:21:16:15', '2699.00', '2599.00', '23000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('61', '11', '50', '147616746393900-25', '22:12:13:14', '2099.00', '1999.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('62', '11', '50', '147616746393900-26', '22:12:13:15', '2099.00', '1999.00', '52000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('63', '11', '50', '147616746393900-27', '22:12:16:14', '2099.00', '1999.00', '32000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('64', '11', '50', '147616746393900-28', '22:12:16:15', '2099.00', '1999.00', '20002', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('65', '11', '50', '147616746393900-29', '22:17:13:14', '2299.00', '2199.00', '20004', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('66', '11', '50', '147616746393900-30', '22:17:13:15', '2299.00', '2199.00', '20005', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('67', '11', '50', '147616746393900-31', '22:17:16:14', '2299.00', '2199.00', '20030', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('68', '11', '50', '147616746393900-32', '22:17:16:15', '2299.00', '2199.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('69', '11', '50', '147616746393900-33', '22:18:13:14', '2399.00', '2299.00', '24000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('70', '11', '50', '147616746393900-34', '22:18:13:15', '2399.00', '2299.00', '25000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('71', '11', '50', '147616746393900-35', '22:18:16:14', '2399.00', '2299.00', '20070', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('72', '11', '50', '147616746393900-36', '22:18:16:15', '2399.00', '2299.00', '20008', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('73', '11', '50', '147616746393900-37', '22:19:13:14', '2499.00', '2399.00', '92000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('74', '11', '50', '147616746393900-38', '22:19:13:15', '2499.00', '2399.00', '20005', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('75', '11', '50', '147616746393900-39', '22:19:16:14', '2499.00', '2399.00', '20200', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('76', '11', '50', '147616746393900-40', '22:19:16:15', '2499.00', '2399.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('77', '11', '50', '147616746393900-41', '22:20:13:14', '2599.00', '2499.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('78', '11', '50', '147616746393900-42', '22:20:13:15', '2599.00', '2499.00', '20090', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('79', '11', '50', '147616746393900-43', '22:20:16:14', '2599.00', '2499.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('80', '11', '50', '147616746393900-44', '22:20:16:15', '2599.00', '2499.00', '22000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('81', '11', '50', '147616746393900-45', '22:21:13:14', '2699.00', '2599.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('82', '11', '50', '147616746393900-46', '22:21:13:15', '2699.00', '2599.00', '20003', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('83', '11', '50', '147616746393900-47', '22:21:16:14', '2699.00', '2599.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('84', '11', '50', '147616746393900-48', '22:21:16:15', '2699.00', '2599.00', '42000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('85', '11', '50', '147616746393900-49', '23:12:13:14', '2099.00', '2599.00', '52000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('86', '11', '50', '147616746393900-50', '23:12:13:15', '2099.00', '1999.00', '22000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('87', '11', '50', '147616746393900-51', '23:12:16:14', '2099.00', '1999.00', '32000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('88', '11', '50', '147616746393900-52', '23:12:16:15', '2099.00', '1999.00', '42000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('89', '11', '50', '147616746393900-53', '23:17:13:14', '2299.00', '1999.00', '62000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('90', '11', '50', '147616746393900-54', '23:17:13:15', '2299.00', '2199.00', '20007', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('91', '11', '50', '147616746393900-55', '23:17:16:14', '2299.00', '2199.00', '20500', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('92', '11', '50', '147616746393900-56', '23:17:16:15', '2299.00', '2199.00', '23000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('93', '11', '50', '147616746393900-57', '23:18:13:14', '2399.00', '2299.00', '20400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('94', '11', '50', '147616746393900-58', '23:18:13:15', '2399.00', '2299.00', '20040', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('95', '11', '50', '147616746393900-59', '23:18:16:14', '2399.00', '2299.00', '20400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('96', '11', '50', '147616746393900-60', '23:18:16:15', '2399.00', '2299.00', '20500', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('97', '11', '50', '147616746393900-61', '23:19:13:14', '2499.00', '2399.00', '2060', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('98', '11', '50', '147616746393900-62', '23:19:13:15', '2499.00', '1999.00', '20070', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('99', '11', '50', '147616746393900-63', '23:19:16:14', '2499.00', '2399.00', '2750', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('100', '11', '50', '147616746393900-64', '23:19:16:15', '2499.00', '2399.00', '2040', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('101', '11', '50', '147616746393900-65', '23:20:13:14', '2599.00', '2499.00', '2500', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('102', '11', '50', '147616746393900-66', '23:20:13:15', '2599.00', '2499.00', '20320', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('103', '11', '50', '147616746393900-67', '23:20:16:14', '2599.00', '2499.00', '23200', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('104', '11', '50', '147616746393900-68', '23:20:16:15', '2599.00', '2499.00', '2090', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('105', '11', '50', '147616746393900-69', '23:21:13:14', '2699.00', '2599.00', '23000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('106', '11', '50', '147616746393900-70', '23:21:13:15', '2699.00', '2599.00', '29000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('107', '11', '50', '147616746393900-71', '23:21:16:14', '2699.00', '2599.00', '28000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('108', '11', '50', '147616746393900-72', '23:21:16:15', '2699.00', '2599.00', '20007', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('109', '11', '50', '147616746393900-73', '24:12:13:14', '2099.00', '1999.00', '20004', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('110', '11', '50', '147616746393900-74', '24:12:13:15', '2099.00', '1999.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('111', '11', '50', '147616746393900-75', '24:12:16:14', '2099.00', '1999.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('112', '11', '50', '147616746393900-76', '24:12:16:15', '2099.00', '1999.00', '20200', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('113', '11', '50', '147616746393900-77', '24:17:13:14', '2299.00', '2199.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('114', '11', '50', '147616746393900-78', '24:17:13:15', '2299.00', '2199.00', '20010', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('115', '11', '50', '147616746393900-79', '24:17:16:14', '2299.00', '2199.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('116', '11', '50', '147616746393900-80', '24:17:16:15', '2299.00', '2199.00', '23000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('117', '11', '50', '147616746393900-81', '24:18:13:14', '2399.00', '2299.00', '2000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('118', '11', '50', '147616746393900-82', '24:18:13:15', '2399.00', '2299.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('119', '11', '50', '147616746393900-83', '24:18:16:14', '2399.00', '2299.00', '20400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('120', '11', '50', '147616746393900-84', '24:18:16:15', '2399.00', '2299.00', '20030', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('121', '11', '50', '147616746393900-85', '24:19:13:14', '2499.00', '2399.00', '20040', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('122', '11', '50', '147616746393900-86', '24:19:13:15', '2499.00', '2399.00', '20200', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('123', '11', '50', '147616746393900-87', '24:19:16:14', '2499.00', '2399.00', '20020', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('124', '11', '50', '147616746393900-88', '24:19:16:15', '2499.00', '2399.00', '32000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('125', '11', '50', '147616746393900-89', '24:20:13:14', '2599.00', '2499.00', '24000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('126', '11', '50', '147616746393900-90', '24:20:13:15', '2599.00', '2499.00', '20002', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('127', '11', '50', '147616746393900-91', '24:20:16:14', '2599.00', '2499.00', '20300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('128', '11', '50', '147616746393900-92', '24:20:16:15', '2599.00', '2499.00', '20400', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('129', '11', '50', '147616746393900-93', '24:21:13:14', '2699.00', '2599.00', '20500', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('130', '11', '50', '147616746393900-94', '24:21:13:15', '2699.00', '2599.00', '20020', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('131', '11', '50', '147616746393900-95', '24:21:16:14', '2699.00', '2599.00', '12000', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('132', '11', '50', '147616746393900-96', '24:21:16:15', '2699.00', '2599.00', '120300', '20', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('133', '11', '51', '147616924742345-1', '25:26:27', '799.00', '699.00', '31000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('134', '11', '51', '147616924742345-2', '25:26:28', '799.00', '699.00', '2000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('135', '11', '51', '147616924742345-3', '25:26:29', '799.00', '699.00', '1200', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('136', '11', '51', '147616924742345-4', '25:30:27', '899.00', '799.00', '332', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('137', '11', '51', '147616924742345-5', '25:30:28', '899.00', '799.00', '34324', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('138', '11', '51', '147616924742345-6', '25:30:29', '899.00', '799.00', '2340', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('139', '11', '51', '147616924742345-7', '25:31:27', '950.00', '899.00', '4300', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('140', '11', '51', '147616924742345-8', '25:31:28', '950.00', '899.00', '2300', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('141', '11', '51', '147616924742345-9', '25:31:29', '950.00', '899.00', '323400', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('142', '11', '51', '147616924742345-10', '25:32:27', '960.00', '900.00', '323400', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('143', '11', '51', '147616924742345-11', '25:32:28', '960.00', '900.00', '323400', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('144', '11', '51', '147616924742345-12', '25:32:29', '960.00', '900.00', '23400', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('145', '11', '51', '147616924742345-13', '25:33:27', '980.00', '910.00', '300054', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('146', '11', '51', '147616924742345-14', '25:33:28', '980.00', '910.00', '30004', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('147', '11', '51', '147616924742345-15', '25:33:29', '980.00', '910.00', '30450', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('148', '11', '51', '147616924742345-16', '34:26:27', '899.00', '799.00', '354000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('149', '11', '51', '147616924742345-17', '34:26:28', '899.00', '799.00', '35000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('150', '11', '51', '147616924742345-18', '34:26:29', '899.00', '799.00', '34000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('151', '11', '51', '147616924742345-19', '34:30:27', '950.00', '899.00', '33000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('152', '11', '51', '147616924742345-20', '34:30:28', '950.00', '899.00', '30040', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('153', '11', '51', '147616924742345-21', '34:30:29', '950.00', '899.00', '33000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('154', '11', '51', '147616924742345-22', '34:31:27', '1000.00', '999.00', '30200', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('155', '11', '51', '147616924742345-23', '34:31:28', '1000.00', '999.00', '30800', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('156', '11', '51', '147616924742345-24', '34:31:29', '1000.00', '999.00', '30900', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('157', '11', '51', '147616924742345-25', '34:32:27', '1050.00', '999.00', '30007', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('158', '11', '51', '147616924742345-26', '34:32:28', '1050.00', '999.00', '30003', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('159', '11', '51', '147616924742345-27', '34:32:29', '1050.00', '999.00', '30002', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('160', '11', '51', '147616924742345-28', '34:33:27', '1060.00', '1050.00', '30005', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('161', '11', '51', '147616924742345-29', '34:33:28', '1060.00', '1050.00', '35000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('162', '11', '51', '147616924742345-30', '34:33:29', '1060.00', '1050.00', '30050', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('163', '11', '51', '147616924742345-31', '35:26:27', '1000.00', '699.00', '30400', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('164', '11', '51', '147616924742345-32', '35:26:28', '1000.00', '899.00', '30050', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('165', '11', '51', '147616924742345-33', '35:26:29', '1000.00', '899.00', '30003', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('166', '11', '51', '147616924742345-34', '35:30:27', '1050.00', '959.00', '30300', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('167', '11', '51', '147616924742345-35', '35:30:28', '1050.00', '959.00', '30060', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('168', '11', '51', '147616924742345-36', '35:30:29', '1050.00', '959.00', '37000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('169', '11', '51', '147616924742345-37', '35:31:27', '1060.00', '980.00', '30090', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('170', '11', '51', '147616924742345-38', '35:31:28', '1060.00', '980.00', '36000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('171', '11', '51', '147616924742345-39', '35:31:29', '1060.00', '980.00', '30000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('172', '11', '51', '147616924742345-40', '35:32:27', '1100.00', '1000.00', '30200', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('173', '11', '51', '147616924742345-41', '35:32:28', '1100.00', '1000.00', '30010', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('174', '11', '51', '147616924742345-42', '35:32:29', '1100.00', '1000.00', '30003', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('175', '11', '51', '147616924742345-43', '35:33:27', '1200.00', '1100.00', '30009', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('176', '11', '51', '147616924742345-44', '35:33:28', '1200.00', '1100.00', '30006', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('177', '11', '51', '147616924742345-45', '35:33:29', '1200.00', '1100.00', '30003', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('178', '11', '51', '147616924742345-46', '36:26:27', '999.00', '899.00', '30040', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('179', '11', '51', '147616924742345-47', '36:26:28', '999.00', '899.00', '30500', '30', '0', '1', '1');
INSERT INTO `tc_goods_specs` VALUES ('180', '11', '51', '147616924742345-48', '36:26:29', '999.00', '899.00', '30060', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('181', '11', '51', '147616924742345-49', '36:30:27', '1050.00', '950.00', '37000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('182', '11', '51', '147616924742345-50', '36:30:28', '1050.00', '950.00', '30800', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('183', '11', '51', '147616924742345-51', '36:30:29', '1050.00', '950.00', '30080', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('184', '11', '51', '147616924742345-52', '36:31:27', '1090.00', '980.00', '30400', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('185', '11', '51', '147616924742345-53', '36:31:28', '1090.00', '980.00', '30030', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('186', '11', '51', '147616924742345-54', '36:31:29', '1090.00', '980.00', '30040', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('187', '11', '51', '147616924742345-55', '36:32:27', '1290.00', '1099.00', '30300', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('188', '11', '51', '147616924742345-56', '36:32:28', '1290.00', '1099.00', '30020', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('189', '11', '51', '147616924742345-57', '36:32:29', '1290.00', '1099.00', '33000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('190', '11', '51', '147616924742345-58', '36:33:27', '1350.00', '1199.00', '30400', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('191', '11', '51', '147616924742345-59', '36:33:28', '1350.00', '1199.00', '30050', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('192', '11', '51', '147616924742345-60', '36:33:29', '1350.00', '1199.00', '30070', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('193', '11', '52', '147617084423590-1', '37:38:39', '2599.00', '2499.00', '30600', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('194', '11', '52', '147617084423590-2', '37:38:40', '2599.00', '2499.00', '34000', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('195', '11', '52', '147617084423590-3', '37:41:39', '2699.00', '2599.00', '3000', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('196', '11', '52', '147617084423590-4', '37:41:40', '2699.00', '2599.00', '3004', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('197', '11', '52', '147617084423590-5', '37:42:39', '2799.00', '2699.00', '33000', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('198', '11', '52', '147617084423590-6', '37:42:40', '2799.00', '2699.00', '30500', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('199', '11', '52', '147617084423590-7', '43:38:39', '2599.00', '2499.00', '30700', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('200', '11', '52', '147617084423590-8', '43:38:40', '2599.00', '2499.00', '30400', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('201', '11', '52', '147617084423590-9', '43:41:39', '2699.00', '2599.00', '43000', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('202', '11', '52', '147617084423590-10', '43:41:40', '2699.00', '2599.00', '30200', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('203', '11', '52', '147617084423590-11', '43:42:39', '2799.00', '2699.00', '30069', '29', '0', '1', '1');
INSERT INTO `tc_goods_specs` VALUES ('204', '11', '52', '147617084423590-12', '43:42:40', '2799.00', '2699.00', '30080', '29', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('205', '11', '53', '147617150373595-1', '44:45:46', '799.00', '699.00', '3000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('206', '11', '53', '147617150373595-2', '44:45:47', '799.00', '699.00', '92000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('207', '11', '53', '147617150373595-3', '44:48:46', '899.00', '799.00', '90200', '30', '0', '1', '1');
INSERT INTO `tc_goods_specs` VALUES ('208', '11', '53', '147617150373595-4', '44:48:47', '899.00', '799.00', '2000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('209', '11', '53', '147617150373595-5', '49:45:46', '799.00', '699.00', '19000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('210', '11', '53', '147617150373595-6', '49:45:47', '799.00', '699.00', '3000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('211', '11', '53', '147617150373595-7', '49:48:46', '899.00', '799.00', '42000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('212', '11', '53', '147617150373595-8', '49:48:47', '899.00', '799.00', '23000', '30', '0', '0', '1');
INSERT INTO `tc_goods_specs` VALUES ('213', '11', '54', '147617224839219-1', '50:51:52:53:54', '1799.00', '1399.00', '30002', '20', '0', '1', '1');

-- ----------------------------
-- Table structure for tc_home_menus
-- ----------------------------
DROP TABLE IF EXISTS `tc_home_menus`;
CREATE TABLE `tc_home_menus` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `parentId` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `menuName` varchar(100) NOT NULL COMMENT '菜单名称',
  `menuUrl` varchar(100) NOT NULL COMMENT '菜单Url',
  `menuOtherUrl` text COMMENT '关联url',
  `menuType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '菜单类型	0:用户中心 1:商家中心',
  `isShow` tinyint(4) DEFAULT '1' COMMENT '是否显示	0：隐藏 1：显示',
  `menuSort` int(11) NOT NULL DEFAULT '0' COMMENT '菜单排序',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`menuId`),
  KEY `parentId` (`parentId`,`isShow`,`dataFlag`),
  KEY `menuType` (`menuType`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='前台菜单表';

-- ----------------------------
-- Records of tc_home_menus
-- ----------------------------
INSERT INTO `tc_home_menus` VALUES ('1', '0', '买家中心', 'home/users/index', null, '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('2', '1', '我的订单', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('3', '2', '待付款订单', 'home/orders/waitPay', 'home/orders/waitPayByPage,home/orders/cancellation,home/orders/detail', '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('5', '2', '待收货订单', 'home/orders/waitReceive', 'home/orders/waitReceiveByPage,home/orders/cancellation,home/orders/detail,home/orders/receive,home/orders/toReject,home/ordercomplains/complain', '0', '1', '1', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('6', '2', '待评价订单', 'home/orders/waitAppraise', 'home/orders/waitAppraiseByPage,home/orders/detail,home/orders/orderAppraise,home/ordercomplains/complain', '0', '1', '2', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('7', '2', '已取消订单', 'home/orders/cancel', 'home/orders/cancelByPage,home/orders/detail', '0', '1', '4', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('8', '2', '拒收/退款', 'home/orders/abnormal', 'home/orders/abnormalByPage,home/ordercomplains/complain', '0', '1', '5', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('9', '2', '我的评价', 'home/goodsappraises/myAppraise', 'home/goodsappraises/userAppraise', '0', '1', '6', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('10', '1', '收藏管理', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('11', '43', '资金管理', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('13', '11', '积分管理', 'home/userscores/index', 'home/userscores/pageQuery', '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('14', '1', '帐户设置', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('15', '14', '用户资料', 'home/users/edit', 'home/users/toEdit,home/users/editUserPhoto', '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('16', '14', '安全设置', 'home/users/security', 'home/users/editPass,home/users/editEmail,home/users/editPhone', '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('17', '14', '用户地址', 'home/useraddress/index', 'home/useraddress/listQuery,home/useraddress/edit,home/useraddress/setDefault,home/useraddress/del', '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('19', '1', '客户管理', '#', null, '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('20', '19', '投诉管理', 'home/ordercomplains/index', 'home/ordercomplains/queryUserComplainByPage,home/ordercomplains/getUserComplainDetail', '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('22', '0', '卖家中心', 'home/shops/index', null, '1', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('23', '22', '交易管理', '#', null, '1', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('24', '23', '待发货订单', 'home/orders/waitdelivery', 'home/orders/waitDeliveryByPage,home/orders/deliver,home/orders/view,home/orders/getMoneyByOrder,home/orders/orderPrint', '1', '1', '2', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('25', '23', '投诉订单', 'home/ordercomplains/shopComplain', 'home/ordercomplains/queryShopComplainByPage,home/ordercomplains/getShopComplainDetail,home/ordercomplains/respond', '1', '1', '5', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('29', '22', '商品管理', '#', null, '1', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('30', '29', '商品分类', 'home/shopcats/index', 'home/shopcats/batchSaveCats,home/shopcats/del,home/shopcats/editName,home/shopcats/editSort,home/shopcats/changeCatStatus', '1', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('31', '29', '新增商品', 'home/goods/add', null, '1', '1', '1', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('32', '29', '出售中的商品', 'home/goods/sale', 'home/goods/saleByPage,home/goods/edit,home/goods/del,home/goods/batchDel,home/goods/changeGoodsStatus,home/goods/changeSale,home/goods/changSaleStatus', '1', '1', '2', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('33', '29', '审核中的商品', 'home/goods/audit', 'home/goods/auditByPage,home/goods/edit,home/goods/del,home/goods/batchDel,home/goods/changeGoodsStatus,home/goods/changeSale,home/goods/changSaleStatus', '1', '1', '3', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('34', '29', '仓库中的商品', 'home/goods/store', 'home/goods/storeByPage,home/goods/illegalByPage,home/goods/edit,home/goods/del,home/goods/batchDel,home/goods/changeGoodsStatus,home/goods/changeSale,home/goods/changSaleStatus', '1', '1', '4', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('35', '29', '评价管理', 'home/goodsappraises/index', 'home/goodsappraises/queryByPage,home/goodsappraises/shopReply', '1', '1', '8', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('36', '29', '数据导入', 'home/Imports/index', 'home/goods/importGoods', '1', '1', '7', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('38', '22', '店铺设置', '#', null, '1', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('39', '38', '店铺资料', 'home/shops/info', null, '1', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('40', '38', '店铺设置', 'home/shopconfigs/toShopCfg', null, '1', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('41', '10', '我关注的商品', 'home/favorites/goods', 'home/favorites/listGoodsQuery,home/favorites/cancel', '0', '1', '0', '1', '2016-08-14 18:37:18');
INSERT INTO `tc_home_menus` VALUES ('42', '38', '运费设置', 'home/Shopfreights/index', 'home/shopfreights/listProvince,home/shopfreights/index', '1', '1', '0', '1', '2016-08-24 15:29:21');
INSERT INTO `tc_home_menus` VALUES ('43', '0', '资金管理', 'home/users/index', '', '0', '1', '0', '1', '2016-09-18 10:24:47');
INSERT INTO `tc_home_menus` VALUES ('44', '23', '已收货订单', 'home/orders/finished', 'home/orders/finishedByPage,home/orders/view,home/orders/orderPrint', '1', '1', '1', '1', '2016-09-18 10:30:29');
INSERT INTO `tc_home_menus` VALUES ('45', '23', '取消/拒收订单', 'home/orders/failure', 'home/orders/failureByPage,home/orders/view,home/orders/confer,home/orders/confer,home/orders/orderPrint', '1', '1', '4', '1', '2016-09-18 10:31:01');
INSERT INTO `tc_home_menus` VALUES ('46', '10', '我关注的商家', 'home/favorites/shops', 'home/favorites/listShopQuery,home/favorites/cancel', '0', '1', '2', '1', '2016-09-24 00:09:34');
INSERT INTO `tc_home_menus` VALUES ('48', '2', '已完成订单', 'home/orders/finish', 'home/orders/finishByPage,home/orders/detail,home/orders/orderAppraise,home/ordercomplains/complain', '0', '1', '3', '1', '2016-09-22 10:18:16');
INSERT INTO `tc_home_menus` VALUES ('49', '19', '用户信息', 'home/messages/index', 'home/messages/queryByList,home/messages/showMsg,home/messages/batchRead,home/messages/del,home/messages/batchDel', '0', '1', '3', '1', '2016-09-22 10:54:49');
INSERT INTO `tc_home_menus` VALUES ('53', '23', '已发货订单', 'home/orders/delivered', 'home/orders/deliveredByPage,home/orders/view,home/orders/orderPrint', '1', '1', '3', '1', '2016-10-10 16:11:39');
INSERT INTO `tc_home_menus` VALUES ('54', '29', '库存预警', 'home/goods/stockWarnByPage', '', '1', '1', '5', '1', '2016-10-11 11:50:56');
INSERT INTO `tc_home_menus` VALUES ('55', '23', '待付款订单', 'home/orders/waituserPay', 'home/orders/waituserPayByPage,home/orders/editOrderMoney,home/orders/view', '1', '1', '1', '1', '2016-10-14 14:58:59');
INSERT INTO `tc_home_menus` VALUES ('56', '29', '违规商品', 'home/goods/illegal', '', '1', '1', '6', '1', '2016-10-14 22:13:33');
INSERT INTO `tc_home_menus` VALUES ('57', '0', '资金管理', 'home/shops/index', '', '1', '1', '1', '1', '2016-11-08 14:33:14');
INSERT INTO `tc_home_menus` VALUES ('58', '57', '资金管理', '#', '', '1', '1', '0', '1', '2016-11-08 15:14:33');
INSERT INTO `tc_home_menus` VALUES ('59', '58', '订单结算', 'home/settlements/index', 'home/settlements/pageQuery,home/settlements/pageUnSettledQuery,home/settlements/pageSettledQuery,home/settlements/settlement', '1', '1', '0', '1', '2016-11-08 15:34:38');
INSERT INTO `tc_home_menus` VALUES ('60', '11', '资金流水', 'home/logmoneys/usermoneys', 'home/logmoneys/pageUserQuery', '0', '1', '1', '1', '2016-11-09 23:53:50');
INSERT INTO `tc_home_menus` VALUES ('61', '58', '资金流水', 'home/logmoneys/shopmoneys', 'home/logmoneys/pageShopQuery', '1', '1', '3', '1', '2016-11-11 10:41:02');
INSERT INTO `tc_home_menus` VALUES ('62', '11', '提现管理', 'home/cashdraws/index', 'home/cashdraws/pageQuery,home/cashdraws/toEdit,home/cashdraws/drawMoney,home/cashconfigs/pageQuery,home/cashconfigs/toEdit,home/cashconfigs/add,home/cashconfigs/edit,home/cashconfigs/del', '0', '1', '5', '1', '2016-11-13 15:38:46');

-- ----------------------------
-- Table structure for tc_images
-- ----------------------------
DROP TABLE IF EXISTS `tc_images`;
CREATE TABLE `tc_images` (
  `imgId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `fromType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '来自哪	0：商家/用户 1：平台管理员',
  `dataId` int(11) NOT NULL DEFAULT '0' COMMENT '对象ID	该图片信息所在表的Id',
  `imgPath` varchar(150) NOT NULL COMMENT '图片路径',
  `imgSize` int(11) NOT NULL DEFAULT '0' COMMENT '图片大小	单位：字节',
  `isUse` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有使用	1:是 0：否',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `fromTable` varchar(50) DEFAULT NULL COMMENT '来自哪张表	该记录所在表',
  `ownId` int(11) DEFAULT NULL COMMENT '上传者Id	上传者Id',
  `dataFlag` tinyint(4) DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  PRIMARY KEY (`imgId`),
  KEY `isUse` (`isUse`,`fromTable`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8 COMMENT='图片记录表';

-- ----------------------------
-- Records of tc_images
-- ----------------------------
INSERT INTO `tc_images` VALUES ('1', '1', '0', 'upload/shops/2016-10/57f8594b0c0f0.jpg', '18404', '0', '2016-10-08 10:26:19', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('2', '1', '33', 'upload/adspic/2016-10/57f85b68ea286.jpg', '29650', '0', '2016-10-08 10:35:20', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('3', '1', '1', 'upload/brands/2016-10/57f860e20d7ae.jpg', '18404', '1', '2016-10-08 10:58:42', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('4', '0', '0', 'upload/goods/2016-10/57f8624a2ecfa.png', '604356', '0', '2016-10-08 11:04:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('5', '0', '0', 'upload/goods/2016-10/57f862509d7ce.png', '584473', '0', '2016-10-08 11:04:48', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('6', '0', '0', 'upload/goods/2016-10/57f8625d2383e.png', '638218', '0', '2016-10-08 11:05:01', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('7', '0', '0', 'upload/goods/2016-10/57f863fecacf6.jpg', '93548', '0', '2016-10-08 11:11:58', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('8', '0', '0', 'upload/goods/2016-10/57f863fecacf6.jpg', '93548', '0', '2016-10-08 11:11:59', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('9', '0', '0', 'upload/goods/2016-10/57f863ff76e45.jpg', '61188', '0', '2016-10-08 11:11:59', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('10', '0', '0', 'upload/goods/2016-10/57f864006f452.jpg', '97797', '0', '2016-10-08 11:12:00', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('11', '0', '0', 'upload/goods/2016-10/57f8640089f95.jpg', '71457', '0', '2016-10-08 11:12:00', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('12', '0', '0', 'upload/shops/2016-10/57f8641d41b80.jpg', '93548', '0', '2016-10-08 11:12:29', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('13', '1', '28', 'upload/adspic/2016-10/57f88f34b5d07.jpg', '62518', '0', '2016-10-08 14:16:20', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('14', '1', '28', 'upload/adspic/2016-10/57f88f34d4550.jpg', '82569', '0', '2016-10-08 14:16:20', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('15', '1', '28', 'upload/adspic/2016-10/57f88f3502862.jpg', '54221', '0', '2016-10-08 14:16:21', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('16', '1', '28', 'upload/adspic/2016-10/57f88f3537ee1.jpg', '55461', '1', '2016-10-08 14:16:21', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('17', '1', '35', 'upload/adspic/2016-10/57f8950fed900.jpg', '14722', '0', '2016-10-08 14:41:19', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('18', '1', '33', 'upload/adspic/2016-10/57f895cae2692.jpg', '29363', '1', '2016-10-08 14:44:26', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('19', '1', '30', 'upload/adspic/2016-10/57f89d5d2716b.jpg', '49904', '0', '2016-10-08 15:16:45', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('20', '1', '30', 'upload/adspic/2016-10/57f89d65f1563.jpg', '54683', '0', '2016-10-08 15:16:53', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('21', '1', '30', 'upload/adspic/2016-10/57f89d6e2ed9e.jpg', '83400', '0', '2016-10-08 15:17:02', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('22', '1', '0', 'upload/shops/2016-10/57f8a7a478ae3.jpg', '29577', '0', '2016-10-08 16:00:36', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('23', '1', '0', 'upload/shops/2016-10/57f8a7f3ef8ea.jpg', '45843', '0', '2016-10-08 16:01:55', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('24', '0', '0', 'upload/shops/2016-10/57f8ae5c37486.jpg', '161030', '0', '2016-10-08 16:29:16', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('25', '0', '0', 'upload/goods/2016-10/57f8ae7dd7a86.jpg', '136628', '0', '2016-10-08 16:29:49', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('26', '0', '0', 'upload/goods/2016-10/57f8ae7e1cbd1.jpg', '112582', '0', '2016-10-08 16:29:50', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('27', '0', '0', 'upload/goods/2016-10/57f8ae7e33a09.jpg', '88511', '0', '2016-10-08 16:29:50', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('28', '0', '0', 'upload/goods/2016-10/57f8ae7e7fec3.jpg', '94692', '0', '2016-10-08 16:29:50', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('29', '0', '0', 'upload/goods/2016-10/57f8ae7f33a1c.jpg', '139121', '0', '2016-10-08 16:29:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('30', '0', '0', 'upload/shops/2016-10/57f8b0ff55267.jpg', '48578', '0', '2016-10-08 16:40:31', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('31', '0', '0', 'upload/goods/2016-10/57f8b14010c9f.jpg', '62038', '0', '2016-10-08 16:41:36', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('32', '0', '0', 'upload/goods/2016-10/57f8b14027ad7.jpg', '42066', '0', '2016-10-08 16:41:36', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('33', '0', '0', 'upload/shops/2016-10/57f8b434e2549.jpg', '113836', '0', '2016-10-08 16:54:13', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('34', '0', '0', 'upload/goods/2016-10/57f8b4aa4e1b8.jpg', '84742', '0', '2016-10-08 16:56:10', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('35', '0', '0', 'upload/goods/2016-10/57f8b7a42f58a.jpg', '135846', '0', '2016-10-08 17:08:52', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('36', '0', '0', 'upload/goods/2016-10/57f8b7a48ae6a.jpg', '95680', '0', '2016-10-08 17:08:52', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('37', '0', '0', 'upload/goods/2016-10/57f8b7a4b10c7.jpg', '92040', '0', '2016-10-08 17:08:52', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('38', '0', '0', 'upload/goods/2016-10/57f8b7ab4273f.jpg', '135846', '0', '2016-10-08 17:08:59', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('39', '0', '0', 'upload/shops/2016-10/57f8b7ba3343a.jpg', '135846', '0', '2016-10-08 17:09:14', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('40', '1', '30', 'upload/adspic/2016-10/57f8b91188cc0.jpg', '70023', '0', '2016-10-08 17:14:57', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('41', '1', '0', 'upload/adspic/2016-10/57f8b9f54c8bc.jpg', '95739', '0', '2016-10-08 17:18:45', 'adspic', '1', '1');
INSERT INTO `tc_images` VALUES ('42', '1', '0', 'upload/adspic/2016-10/57f8bb2a2b2dc.jpg', '79312', '0', '2016-10-08 17:23:54', 'adspic', '1', '1');
INSERT INTO `tc_images` VALUES ('43', '1', '0', 'upload/adspic/2016-10/57f8bb7636dc4.jpg', '79312', '0', '2016-10-08 17:25:10', 'adspic', '1', '1');
INSERT INTO `tc_images` VALUES ('44', '1', '30', 'upload/adspic/2016-10/57f8bbc7a1ed3.jpg', '79312', '1', '2016-10-08 17:26:31', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('45', '1', '20', 'upload/adspic/2016-10/57f8bca4c8c3c.jpg', '79312', '0', '2016-10-08 17:30:12', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('46', '1', '0', 'upload/adspic/2016-10/57f8bcd6c8ebc.jpg', '79312', '0', '2016-10-08 17:31:02', 'adspic', '1', '1');
INSERT INTO `tc_images` VALUES ('47', '1', '0', 'upload/adspic/2016-10/57f8bd2697944.jpg', '79312', '0', '2016-10-08 17:32:22', 'adspic', '1', '1');
INSERT INTO `tc_images` VALUES ('48', '1', '0', 'upload/adspic/2016-10/57f8bd4dae96e.jpg', '79312', '0', '2016-10-08 17:33:01', 'adspic', '1', '1');
INSERT INTO `tc_images` VALUES ('49', '1', '0', 'upload/adspic/2016-10/57f8bd975714e.jpg', '79312', '0', '2016-10-08 17:34:15', 'adspic', '1', '1');
INSERT INTO `tc_images` VALUES ('50', '1', '24', 'upload/adspic/2016-10/57f8bdbcc9a3c.jpg', '61957', '0', '2016-10-08 17:34:52', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('51', '1', '36', 'upload/adspic/2016-10/57f8c25cc1e53.jpg', '82569', '1', '2016-10-08 17:54:36', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('52', '1', '37', 'upload/adspic/2016-10/57f8c2848c9d2.jpg', '62518', '1', '2016-10-08 17:55:16', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('53', '1', '38', 'upload/adspic/2016-10/57f8c2aa40701.jpg', '54221', '0', '2016-10-08 17:55:54', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('54', '1', '38', 'upload/adspic/2016-10/57f8c2f22d96c.jpg', '54221', '1', '2016-10-08 17:57:06', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('55', '1', '39', 'upload/adspic/2016-10/57f8c306ec638.jpg', '55461', '1', '2016-10-08 17:57:26', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('56', '1', '21', 'upload/adspic/2016-10/57f8c43bac80f.jpeg', '42500', '0', '2016-10-08 18:02:35', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('57', '1', '40', 'upload/adspic/2016-10/57f8c709293b4.jpg', '89254', '1', '2016-10-08 18:14:33', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('58', '1', '41', 'upload/adspic/2016-10/57f8c7b95f05e.gif', '141091', '0', '2016-10-08 18:17:29', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('59', '1', '41', 'upload/adspic/2016-10/57f8c9df2e4a8.jpg', '96275', '1', '2016-10-08 18:26:39', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('60', '0', '0', 'upload/shops/2016-10/57f8cbc5de871.jpg', '101534', '0', '2016-10-08 18:34:45', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('61', '0', '0', 'upload/goods/2016-10/57f8cbd9684d7.jpg', '120249', '0', '2016-10-08 18:35:05', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('62', '0', '0', 'upload/goods/2016-10/57f8cbd999e4d.jpg', '146506', '0', '2016-10-08 18:35:05', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('63', '0', '0', 'upload/shops/2016-10/57f8ce8feee6f.jpg', '117913', '0', '2016-10-08 18:46:39', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('64', '0', '0', 'upload/goods/2016-10/57f8cef461ea4.jpg', '121065', '0', '2016-10-08 18:48:20', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('65', '0', '0', 'upload/goods/2016-10/57f8cef4880ff.jpg', '188588', '0', '2016-10-08 18:48:20', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('66', '0', '0', 'upload/goods/2016-10/57f8cef537f47.jpg', '130054', '0', '2016-10-08 18:48:21', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('67', '0', '0', 'upload/goods/2016-10/57f8cef5d08b3.jpg', '105288', '0', '2016-10-08 18:48:21', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('68', '0', '0', 'upload/shops/2016-10/57f8d1c8af574.jpg', '169119', '0', '2016-10-08 19:00:24', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('69', '0', '0', 'upload/goods/2016-10/57f8d1d685669.jpg', '134751', '0', '2016-10-08 19:00:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('70', '0', '0', 'upload/goods/2016-10/57f8d1d68d07c.jpg', '84330', '0', '2016-10-08 19:00:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('71', '0', '0', 'upload/goods/2016-10/57f8d1d6c6404.jpg', '163586', '0', '2016-10-08 19:00:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('72', '0', '0', 'upload/goods/2016-10/57f8d1d71e67a.jpg', '107422', '0', '2016-10-08 19:00:39', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('73', '0', '0', 'upload/shops/2016-10/57f8f4aba605a.jpg', '152646', '0', '2016-10-08 21:29:15', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('74', '0', '0', 'upload/goods/2016-10/57f8f4d25608c.jpg', '136069', '0', '2016-10-08 21:29:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('75', '0', '0', 'upload/goods/2016-10/57f8f4d26cec3.jpg', '118971', '0', '2016-10-08 21:29:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('76', '0', '0', 'upload/goods/2016-10/57f8f4d2d3ebb.jpg', '157547', '0', '2016-10-08 21:29:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('77', '0', '0', 'upload/goods/2016-10/57f8f4d2ee9fc.jpg', '62910', '0', '2016-10-08 21:29:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('78', '0', '0', 'upload/goods/2016-10/57f8f4d370bd9.jpg', '132350', '0', '2016-10-08 21:29:55', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('79', '0', '0', 'upload/goods/2016-10/57f8f4d60d910.jpg', '140542', '0', '2016-10-08 21:29:58', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('80', '1', '0', 'upload/shops/2016-10/57f8f801ced69.jpg', '210464', '0', '2016-10-08 21:43:29', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('81', '0', '0', 'upload/shops/2016-10/57f8faf20ea3a.jpg', '91711', '0', '2016-10-08 21:56:02', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('82', '0', '0', 'upload/goods/2016-10/57f8fafe6a3b0.jpg', '69874', '0', '2016-10-08 21:56:14', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('83', '0', '0', 'upload/goods/2016-10/57f8fafe6a3b0.jpg', '69874', '0', '2016-10-08 21:56:14', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('84', '0', '0', 'upload/shops/2016-10/57f9b3bc43e83.jpg', '91711', '0', '2016-10-09 11:04:28', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('85', '0', '0', 'upload/goods/2016-10/57f9b3c8c1d4c.jpg', '69874', '0', '2016-10-09 11:04:40', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('86', '0', '0', 'upload/goods/2016-10/57f9b3c8d8b84.jpg', '43705', '0', '2016-10-09 11:04:40', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('87', '1', '19', 'upload/adspic/2016-10/57f9c17be159b.gif', '11715', '1', '2016-10-09 12:03:07', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('88', '1', '23', 'upload/adspic/2016-10/57f9ce0d5190e.jpg', '53017', '0', '2016-10-09 12:56:45', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('89', '1', '42', 'upload/adspic/2016-10/57f9cedbadc37.jpg', '77827', '0', '2016-10-09 13:00:11', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('90', '1', '23', 'upload/adspic/2016-10/57f9cf1a694b8.jpg', '53017', '1', '2016-10-09 13:01:14', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('91', '1', '42', 'upload/adspic/2016-10/57f9cf3519451.jpg', '77827', '1', '2016-10-09 13:01:41', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('92', '1', '22', 'upload/adspic/2016-10/57f9e4155fa99.jpg', '72896', '1', '2016-10-09 14:30:45', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('93', '1', '43', 'upload/adspic/2016-10/57f9e45639d1c.jpg', '121783', '1', '2016-10-09 14:31:50', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('94', '1', '44', 'upload/adspic/2016-10/57f9e473bba85.jpg', '153697', '1', '2016-10-09 14:32:19', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('95', '1', '45', 'upload/adspic/2016-10/57f9e49ecb1e3.jpg', '96830', '1', '2016-10-09 14:33:02', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('96', '1', '46', 'upload/adspic/2016-10/57f9e4c3ed9fd.jpg', '120182', '1', '2016-10-09 14:33:39', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('97', '1', '35', 'upload/adspic/2016-10/57f9eb22c2618.jpg', '19569', '1', '2016-10-09 15:00:50', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('98', '1', '47', 'upload/adspic/2016-10/57f9f3910a63f.jpg', '80044', '1', '2016-10-09 15:36:49', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('99', '1', '48', 'upload/adspic/2016-10/57f9f46b538d5.jpg', '31655', '0', '2016-10-09 15:40:27', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('100', '1', '48', 'upload/adspic/2016-10/57f9f5376ee48.jpg', '31339', '0', '2016-10-09 15:43:51', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('101', '1', '21', 'upload/adspic/2016-10/57fa12ff75b6f.jpg', '45142', '0', '2016-10-09 17:50:55', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('102', '1', '21', 'upload/adspic/2016-10/57fa14787ab52.jpg', '40350', '1', '2016-10-09 17:57:12', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('103', '1', '49', 'upload/adspic/2016-10/57fa17de69967.jpg', '76346', '1', '2016-10-09 18:11:42', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('104', '1', '50', 'upload/adspic/2016-10/57fa1dd60c0b8.jpg', '62321', '1', '2016-10-09 18:37:10', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('105', '1', '51', 'upload/adspic/2016-10/57fa1dfed299c.jpg', '52260', '1', '2016-10-09 18:37:50', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('106', '1', '52', 'upload/adspic/2016-10/57fa1e5ce9ee0.jpg', '42847', '1', '2016-10-09 18:39:24', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('107', '1', '53', 'upload/adspic/2016-10/57fa1e882f365.jpg', '118090', '1', '2016-10-09 18:40:08', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('108', '1', '54', 'upload/adspic/2016-10/57fa1f3702416.jpg', '60581', '1', '2016-10-09 18:43:03', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('109', '1', '55', 'upload/adspic/2016-10/57fa2174acca9.jpg', '94520', '1', '2016-10-09 18:52:36', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('110', '1', '56', 'upload/adspic/2016-10/57fa21c496471.jpg', '99067', '1', '2016-10-09 18:53:56', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('111', '1', '57', 'upload/adspic/2016-10/57fa21fbd3926.png', '269915', '1', '2016-10-09 18:54:51', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('112', '1', '0', 'upload/shops/2016-10/57fa2a93ec0ba.jpg', '198729', '0', '2016-10-09 19:31:31', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('113', '1', '0', 'upload/shops/2016-10/57fa2a9dba7c2.jpg', '81743', '0', '2016-10-09 19:31:41', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('114', '0', '0', 'upload/shopbanner/2016-10/57fa2aef25f75.jpg', '25104', '0', '2016-10-09 19:33:03', 'shopbanner', '0', '1');
INSERT INTO `tc_images` VALUES ('115', '0', '0', 'upload/shopbanner/2016-10/57fa2bef49194.jpg', '42524', '0', '2016-10-09 19:37:19', 'shopbanner', '0', '1');
INSERT INTO `tc_images` VALUES ('116', '0', '0', 'upload/shops/2016-10/57fa2dd120a49.jpg', '198729', '0', '2016-10-09 19:45:21', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('117', '1', '2', 'upload/brands/2016-10/57fa2e3aeb270.png', '9408', '1', '2016-10-09 19:47:06', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('118', '0', '0', 'upload/goods/2016-10/57fa2e7cb5f3c.jpg', '22679', '0', '2016-10-09 19:48:12', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('119', '0', '0', 'upload/goods/2016-10/57fa2e7e02aa6.jpg', '44742', '0', '2016-10-09 19:48:14', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('120', '0', '0', 'upload/goods/2016-10/57fa2e7e02aa6.jpg', '81743', '0', '2016-10-09 19:48:14', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('121', '0', '0', 'upload/goods/2016-10/57fa2e7e2ca0b.jpg', '81743', '0', '2016-10-09 19:48:14', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('122', '0', '0', 'upload/shops/2016-10/57fa37a377e96.jpg', '29102', '0', '2016-10-09 20:27:15', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('123', '0', '0', 'upload/goods/2016-10/57fa37b1ad56f.jpg', '31914', '0', '2016-10-09 20:27:29', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('124', '0', '0', 'upload/goods/2016-10/57fa37b1d74d3.jpg', '17684', '0', '2016-10-09 20:27:29', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('125', '0', '0', 'upload/goods/2016-10/57fa37b227d37.jpg', '23401', '0', '2016-10-09 20:27:30', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('126', '0', '0', 'upload/goods/2016-10/57fa37b227d37.jpg', '23401', '0', '2016-10-09 20:27:30', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('127', '0', '0', 'upload/shops/2016-10/57fa391b9ad4e.jpg', '171420', '0', '2016-10-09 20:33:31', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('128', '1', '0', 'upload/shops/2016-10/57fa3f8f4e126.jpg', '72700', '0', '2016-10-09 21:01:03', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('129', '1', '0', 'upload/shops/2016-10/57fa3f9855be5.jpg', '41380', '0', '2016-10-09 21:01:12', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('130', '1', '0', 'upload/shops/2016-10/57fa3fd1377e1.jpg', '13971', '0', '2016-10-09 21:02:09', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('131', '0', '0', 'upload/shops/2016-10/57fa40a79f7e9.jpg', '72700', '0', '2016-10-09 21:05:43', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('132', '0', '0', 'upload/goods/2016-10/57fa40b281072.jpg', '41380', '0', '2016-10-09 21:05:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('133', '0', '0', 'upload/goods/2016-10/57fa40b281072.jpg', '41380', '0', '2016-10-09 21:05:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('134', '0', '0', 'upload/goods/2016-10/57fa40b2c5b19.jpg', '31681', '0', '2016-10-09 21:05:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('135', '1', '3', 'upload/brands/2016-10/57fa441b3131f.jpg', '12149', '1', '2016-10-09 21:20:27', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('136', '0', '0', 'upload/shops/2016-10/57fa445eaf658.jpg', '70427', '0', '2016-10-09 21:21:34', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('137', '0', '0', 'upload/goods/2016-10/57fa446fa4083.jpg', '155427', '0', '2016-10-09 21:21:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('138', '0', '0', 'upload/goods/2016-10/57fa446fb71b1.jpg', '129458', '0', '2016-10-09 21:21:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('139', '0', '0', 'upload/goods/2016-10/57fa447000006.jpg', '113260', '0', '2016-10-09 21:21:52', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('140', '0', '0', 'upload/goods/2016-10/57fa44709c683.jpg', '139758', '0', '2016-10-09 21:21:52', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('141', '1', '4', 'upload/brands/2016-10/57fa464b09db9.jpg', '13623', '1', '2016-10-09 21:29:47', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('142', '0', '0', 'upload/shops/2016-10/57fa46d2c1997.jpg', '72245', '0', '2016-10-09 21:32:02', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('143', '0', '0', 'upload/goods/2016-10/57fa46e23857b.jpg', '71294', '0', '2016-10-09 21:32:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('144', '0', '0', 'upload/goods/2016-10/57fa46e2479a1.jpg', '13931', '0', '2016-10-09 21:32:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('145', '0', '0', 'upload/shops/2016-10/57fa4bf4315bd.jpg', '113022', '0', '2016-10-09 21:53:56', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('146', '0', '0', 'upload/goods/2016-10/57fa4c04d5716.jpg', '52818', '0', '2016-10-09 21:54:12', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('147', '0', '0', 'upload/goods/2016-10/57fa4c0540abc.jpg', '42111', '0', '2016-10-09 21:54:13', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('148', '0', '0', 'upload/goods/2016-10/57fa4c055b5fc.jpg', '59494', '0', '2016-10-09 21:54:13', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('149', '0', '0', 'upload/goods/2016-10/57fa4c056aa21.jpg', '45455', '0', '2016-10-09 21:54:13', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('150', '0', '0', 'upload/shops/2016-10/57fa4ccd2e38e.jpg', '172699', '0', '2016-10-09 21:57:33', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('151', '0', '0', 'upload/goods/2016-10/57fa4cddbf3b8.jpg', '116861', '0', '2016-10-09 21:57:50', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('152', '0', '0', 'upload/goods/2016-10/57fa4cde8da4d.jpg', '73396', '0', '2016-10-09 21:57:50', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('153', '0', '0', 'upload/goods/2016-10/57fa4cde8da4d.jpg', '73396', '0', '2016-10-09 21:57:50', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('154', '0', '0', 'upload/goods/2016-10/57fa4cdee5621.jpg', '60749', '0', '2016-10-09 21:57:50', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('155', '1', '5', 'upload/brands/2016-10/57fa4d66e1fe5.jpg', '13759', '1', '2016-10-09 22:00:06', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('156', '0', '0', 'upload/shops/2016-10/57fa4df4f1b23.jpg', '36014', '0', '2016-10-09 22:02:29', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('157', '0', '0', 'upload/goods/2016-10/57fa4dfe83198.jpg', '35660', '0', '2016-10-09 22:02:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('158', '0', '0', 'upload/goods/2016-10/57fa4dfe9dcd9.jpg', '44618', '0', '2016-10-09 22:02:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('159', '0', '0', 'upload/goods/2016-10/57fa4dfec022b.jpg', '36014', '0', '2016-10-09 22:02:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('160', '0', '0', 'upload/goods/2016-10/57fa4dff0166c.jpg', '35660', '0', '2016-10-09 22:02:39', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('161', '1', '58', 'upload/adspic/2016-10/57fa51e7d6566.jpg', '47867', '0', '2016-10-09 22:19:19', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('162', '1', '59', 'upload/adspic/2016-10/57fa527d608c9.jpeg', '19805', '1', '2016-10-09 22:21:49', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('163', '1', '0', 'upload/shops/2016-10/57faf4a944a87.jpg', '182582', '0', '2016-10-10 09:53:45', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('164', '1', '6', 'upload/brands/2016-10/57faf58d010f9.jpg', '157558', '1', '2016-10-10 09:57:33', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('165', '0', '0', 'upload/shops/2016-10/57faf6addb474.jpg', '124480', '0', '2016-10-10 10:02:21', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('166', '0', '0', 'upload/goods/2016-10/57faf6f5375ba.jpg', '159102', '0', '2016-10-10 10:03:33', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('167', '0', '0', 'upload/goods/2016-10/57faf6f5375ba.jpg', '159102', '0', '2016-10-10 10:03:33', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('168', '0', '0', 'upload/goods/2016-10/57faf6f5c8513.jpg', '124480', '0', '2016-10-10 10:03:33', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('169', '0', '0', 'upload/goods/2016-10/57faf6f659b12.jpg', '119656', '0', '2016-10-10 10:03:34', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('170', '0', '0', 'upload/shops/2016-10/57faf7843b656.jpg', '116479', '0', '2016-10-10 10:05:56', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('171', '0', '0', 'upload/goods/2016-10/57faf7c746f1e.jpg', '37308', '0', '2016-10-10 10:07:03', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('172', '0', '0', 'upload/goods/2016-10/57faf7c7a6501.jpg', '131213', '0', '2016-10-10 10:07:03', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('173', '0', '0', 'upload/shops/2016-10/57faf8b91d5c7.jpg', '190919', '0', '2016-10-10 10:11:05', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('174', '0', '0', 'upload/goods/2016-10/57faf8be0e1c2.jpg', '53671', '0', '2016-10-10 10:11:10', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('175', '0', '0', 'upload/goods/2016-10/57faf8be69a9d.jpg', '190509', '0', '2016-10-10 10:11:10', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('176', '0', '0', 'upload/goods/2016-10/57faf8be8bfef.jpg', '143347', '0', '2016-10-10 10:11:10', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('177', '0', '0', 'upload/shops/2016-10/57fafd4bd27b2.jpg', '45140', '0', '2016-10-10 10:30:35', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('178', '0', '0', 'upload/goods/2016-10/57fafd52a0e69.jpg', '60654', '0', '2016-10-10 10:30:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('179', '0', '0', 'upload/goods/2016-10/57fafd52cead6.jpg', '42764', '0', '2016-10-10 10:30:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('180', '0', '0', 'upload/goods/2016-10/57fafd52ed31f.jpg', '31979', '0', '2016-10-10 10:30:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('181', '0', '0', 'upload/goods/2016-10/57fafd531f33a.jpg', '37418', '0', '2016-10-10 10:30:43', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('182', '0', '0', 'upload/shops/2016-10/57faffd3b8ca6.jpg', '132873', '0', '2016-10-10 10:41:23', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('183', '0', '0', 'upload/goods/2016-10/57faffd951cd7.jpg', '102633', '0', '2016-10-10 10:41:29', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('184', '0', '0', 'upload/goods/2016-10/57faffd974228.jpg', '68083', '0', '2016-10-10 10:41:29', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('185', '0', '0', 'upload/goods/2016-10/57faffd98364d.jpg', '72955', '0', '2016-10-10 10:41:29', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('186', '0', '0', 'upload/shops/2016-10/57fb0076520c3.jpg', '140464', '0', '2016-10-10 10:44:06', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('187', '0', '0', 'upload/goods/2016-10/57fb00c40d813.jpg', '116305', '0', '2016-10-10 10:45:24', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('188', '0', '0', 'upload/goods/2016-10/57fb00c41cc37.jpg', '46367', '0', '2016-10-10 10:45:24', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('189', '0', '0', 'upload/goods/2016-10/57fb00c42c05c.jpg', '74940', '0', '2016-10-10 10:45:24', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('190', '1', '0', 'upload/shops/2016-10/57fb0185b1d6d.jpg', '17138', '0', '2016-10-10 10:48:37', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('191', '1', '60', 'upload/adspic/2016-10/57fb04e076255.jpg', '152051', '1', '2016-10-10 11:02:56', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('192', '1', '61', 'upload/adspic/2016-10/57fb06e78dd85.jpg', '194209', '1', '2016-10-10 11:11:35', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('193', '1', '0', 'upload/sysconfigs/2016-10/57fb08d8a1b20.png', '11748', '0', '2016-10-10 11:19:52', 'sysconfigs', '1', '1');
INSERT INTO `tc_images` VALUES ('194', '0', '0', 'upload/shops/2016-10/57fb096855a03.jpg', '205964', '0', '2016-10-10 11:22:16', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('195', '0', '0', 'upload/goods/2016-10/57fb096d7bc7e.jpg', '63736', '0', '2016-10-10 11:22:21', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('196', '0', '0', 'upload/goods/2016-10/57fb096e334d8.jpg', '29741', '0', '2016-10-10 11:22:22', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('197', '0', '0', 'upload/goods/2016-10/57fb096e3ebf3.jpg', '29946', '0', '2016-10-10 11:22:22', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('198', '0', '0', 'upload/shopbanner/2016-10/57fb0e2fd56c3.png', '274866', '0', '2016-10-10 11:42:39', 'shopbanner', '0', '1');
INSERT INTO `tc_images` VALUES ('199', '1', '0', 'upload/shops/2016-10/57fb39ff7f5e2.jpg', '23158', '0', '2016-10-10 14:49:35', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('200', '0', '0', 'upload/shops/2016-10/57fb3b80adbef.jpg', '34969', '0', '2016-10-10 14:56:00', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('201', '0', '0', 'upload/goods/2016-10/57fb3b9ff2759.jpg', '34969', '0', '2016-10-10 14:56:32', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('202', '0', '0', 'upload/goods/2016-10/57fb3ba0378a2.jpg', '49321', '0', '2016-10-10 14:56:32', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('203', '0', '0', 'upload/goods/2016-10/57fb3ba0378a2.jpg', '62084', '0', '2016-10-10 14:56:32', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('204', '0', '0', 'upload/shops/2016-10/57fb3d6b30a09.jpg', '64949', '0', '2016-10-10 15:04:11', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('205', '0', '0', 'upload/goods/2016-10/57fb3dad3c2cb.jpg', '48205', '0', '2016-10-10 15:05:17', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('206', '0', '0', 'upload/goods/2016-10/57fb3dad3c2cb.jpg', '48205', '0', '2016-10-10 15:05:17', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('207', '0', '0', 'upload/goods/2016-10/57fb3dad6dc41.jpg', '70509', '0', '2016-10-10 15:05:17', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('208', '0', '0', 'upload/shops/2016-10/57fb3e9975c3a.jpg', '53679', '0', '2016-10-10 15:09:13', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('209', '0', '0', 'upload/goods/2016-10/57fb3eb531249.jpg', '45379', '0', '2016-10-10 15:09:41', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('210', '0', '0', 'upload/goods/2016-10/57fb3eb54bd89.jpg', '32521', '0', '2016-10-10 15:09:41', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('211', '0', '0', 'upload/goods/2016-10/57fb3eb562bbf.jpg', '59233', '0', '2016-10-10 15:09:41', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('212', '0', '0', 'upload/shops/2016-10/57fb3f58baba4.jpg', '60782', '0', '2016-10-10 15:12:24', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('213', '0', '0', 'upload/goods/2016-10/57fb3f63dd13c.jpg', '62083', '0', '2016-10-10 15:12:35', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('214', '0', '0', 'upload/goods/2016-10/57fb3f63ec560.jpg', '61236', '0', '2016-10-10 15:12:35', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('215', '0', '0', 'upload/goods/2016-10/57fb3f6403a3c.jpg', '90237', '0', '2016-10-10 15:12:36', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('216', '0', '0', 'upload/shops/2016-10/57fb40d84cb35.jpg', '56008', '0', '2016-10-10 15:18:48', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('217', '0', '0', 'upload/shops/2016-10/57fb4188bf6ad.jpg', '48756', '0', '2016-10-10 15:21:44', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('218', '0', '0', 'upload/goods/2016-10/57fb418f50cd2.jpg', '54880', '0', '2016-10-10 15:21:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('219', '0', '0', 'upload/goods/2016-10/57fb418f73224.jpg', '43445', '0', '2016-10-10 15:21:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('220', '0', '0', 'upload/goods/2016-10/57fb418f9947f.jpg', '55351', '0', '2016-10-10 15:21:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('221', '1', '0', 'upload/sysconfigs/2016-10/57fb458fd41a1.png', '5442', '0', '2016-10-10 15:38:55', 'sysconfigs', '1', '1');
INSERT INTO `tc_images` VALUES ('222', '1', '0', 'upload/shops/2016-10/57fb4c1a9d7f8.jpg', '13296', '0', '2016-10-10 16:06:50', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('223', '1', '7', 'upload/brands/2016-10/57fb4d8bb8c72.jpg', '13296', '1', '2016-10-10 16:12:59', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('224', '0', '0', 'upload/shops/2016-10/57fb4e0ddb503.jpg', '24613', '0', '2016-10-10 16:15:09', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('225', '0', '0', 'upload/goods/2016-10/57fb4e15bccee.jpg', '35608', '0', '2016-10-10 16:15:17', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('226', '0', '0', 'upload/goods/2016-10/57fb4e15d782e.jpg', '34373', '0', '2016-10-10 16:15:17', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('227', '0', '0', 'upload/goods/2016-10/57fb4e15f236d.jpg', '15740', '0', '2016-10-10 16:15:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('228', '0', '0', 'upload/goods/2016-10/57fb4e163b1bf.jpg', '16610', '0', '2016-10-10 16:15:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('229', '1', '0', 'upload/sysconfigs/2016-10/57fb4f245a0c8.png', '7124', '0', '2016-10-10 16:19:48', 'sysconfigs', '1', '1');
INSERT INTO `tc_images` VALUES ('230', '0', '0', 'upload/shops/2016-10/57fb4f8565a50.jpg', '18898', '0', '2016-10-10 16:21:25', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('231', '0', '0', 'upload/goods/2016-10/57fb4f8db1f39.jpg', '10522', '0', '2016-10-10 16:21:33', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('232', '0', '0', 'upload/goods/2016-10/57fb4f8dc8d70.jpg', '10927', '0', '2016-10-10 16:21:33', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('233', '0', '0', 'upload/goods/2016-10/57fb4f8e1d2dc.jpg', '24002', '0', '2016-10-10 16:21:34', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('234', '0', '0', 'upload/goods/2016-10/57fb4f8e43537.jpg', '22450', '0', '2016-10-10 16:21:34', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('235', '0', '0', 'upload/shops/2016-10/57fb50adef6fe.jpg', '22069', '0', '2016-10-10 16:26:21', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('236', '0', '0', 'upload/goods/2016-10/57fb50b2e4002.jpg', '14866', '0', '2016-10-10 16:26:26', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('237', '0', '0', 'upload/shops/2016-10/57fb515a84e52.jpg', '23615', '0', '2016-10-10 16:29:14', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('238', '0', '0', 'upload/shops/2016-10/57fb52d4af729.jpg', '11399', '0', '2016-10-10 16:35:32', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('239', '0', '0', 'upload/goods/2016-10/57fb52de29f2b.jpg', '20531', '0', '2016-10-10 16:35:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('240', '0', '0', 'upload/goods/2016-10/57fb52de44a6b.jpg', '13024', '0', '2016-10-10 16:35:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('241', '0', '0', 'upload/goods/2016-10/57fb52de50186.jpg', '10624', '0', '2016-10-10 16:35:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('242', '0', '0', 'upload/goods/2016-10/57fb52dea404e.jpg', '19875', '0', '2016-10-10 16:35:42', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('243', '0', '0', 'upload/shops/2016-10/57fb54760fe1e.jpg', '25909', '0', '2016-10-10 16:42:30', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('244', '0', '0', 'upload/goods/2016-10/57fb547d9d09c.jpg', '36410', '0', '2016-10-10 16:42:37', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('245', '0', '0', 'upload/goods/2016-10/57fb547dbb8e5.jpg', '31130', '0', '2016-10-10 16:42:37', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('246', '0', '0', 'upload/goods/2016-10/57fb547e00a2d.jpg', '86632', '0', '2016-10-10 16:42:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('247', '0', '0', 'upload/goods/2016-10/57fb547e50bec.jpg', '74067', '0', '2016-10-10 16:42:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('248', '1', '8', 'upload/brands/2016-10/57fb5673dadba.jpg', '23118', '1', '2016-10-10 16:50:59', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('249', '1', '9', 'upload/brands/2016-10/57fb56967f5c0.jpg', '16434', '1', '2016-10-10 16:51:34', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('250', '1', '10', 'upload/brands/2016-10/57fb56b259418.jpg', '13823', '1', '2016-10-10 16:52:02', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('251', '0', '0', 'upload/shops/2016-10/57fb5e34d7904.jpg', '97225', '0', '2016-10-10 17:24:04', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('252', '0', '0', 'upload/goods/2016-10/57fb5e7d97654.jpg', '97225', '0', '2016-10-10 17:25:17', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('253', '0', '0', 'upload/shops/2016-10/57fb5ec0535b4.jpg', '32763', '0', '2016-10-10 17:26:24', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('254', '0', '0', 'upload/goods/2016-10/57fb5ec67d604.jpg', '32763', '0', '2016-10-10 17:26:30', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('255', '0', '0', 'upload/goods/2016-10/57fb5ec6c9ac4.jpg', '60208', '0', '2016-10-10 17:26:30', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('256', '0', '0', 'upload/shops/2016-10/57fb5f867f2d1.jpg', '36624', '0', '2016-10-10 17:29:42', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('257', '0', '0', 'upload/goods/2016-10/57fb5f92ad111.jpg', '33307', '0', '2016-10-10 17:29:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('258', '0', '0', 'upload/shops/2016-10/57fb60f80c627.jpg', '39840', '0', '2016-10-10 17:35:52', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('259', '0', '0', 'upload/shops/2016-10/57fb64067ab77.jpg', '43413', '0', '2016-10-10 17:48:54', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('260', '0', '0', 'upload/goods/2016-10/57fb640eda29a.jpg', '43413', '0', '2016-10-10 17:49:02', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('261', '1', '62', 'upload/adspic/2016-10/57fb65a7e20ce.jpg', '210112', '1', '2016-10-10 17:55:51', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('262', '1', '63', 'upload/adspic/2016-10/57fb6b01a8f8e.jpg', '74035', '1', '2016-10-10 18:18:41', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('263', '1', '64', 'upload/adspic/2016-10/57fb6ba58726e.jpg', '55131', '0', '2016-10-10 18:21:25', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('264', '1', '65', 'upload/adspic/2016-10/57fb6dad94d5a.jpg', '74735', '1', '2016-10-10 18:30:05', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('265', '1', '58', 'upload/adspic/2016-10/57fb70aad10f3.jpg', '28307', '1', '2016-10-10 18:42:50', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('266', '1', '64', 'upload/adspic/2016-10/57fb71524840f.jpg', '54258', '1', '2016-10-10 18:45:38', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('267', '1', '66', 'upload/adspic/2016-10/57fb74d98fbdb.jpg', '81756', '1', '2016-10-10 19:00:41', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('268', '1', '0', 'upload/shops/2016-10/57fb77a90c799.png', '128927', '0', '2016-10-10 19:12:41', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('269', '0', '0', 'upload/shops/2016-10/57fc6106c39d6.jpg', '59550', '0', '2016-10-11 11:48:22', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('270', '0', '0', 'upload/goods/2016-10/57fc610c7395f.jpg', '43246', '0', '2016-10-11 11:48:28', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('271', '0', '0', 'upload/goods/2016-10/57fc610c7395f.jpg', '43246', '0', '2016-10-11 11:48:28', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('272', '0', '0', 'upload/goods/2016-10/57fc610cb09fe.jpg', '45701', '0', '2016-10-11 11:48:28', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('273', '0', '0', 'upload/shops/2016-10/57fc61ccc6662.jpg', '205061', '0', '2016-10-11 11:51:40', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('274', '0', '0', 'upload/goods/2016-10/57fc61d194e02.jpg', '205061', '0', '2016-10-11 11:51:45', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('275', '0', '0', 'upload/goods/2016-10/57fc61d26ebd8.jpg', '162904', '0', '2016-10-11 11:51:46', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('276', '0', '0', 'upload/goods/2016-10/57fc61d3d1f13.jpg', '158810', '0', '2016-10-11 11:51:47', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('277', '0', '0', 'upload/goods/2016-10/57fc61d422785.jpg', '161545', '0', '2016-10-11 11:51:48', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('278', '0', '0', 'upload/goods/2016-10/57fc61d46352e.jpg', '215061', '0', '2016-10-11 11:51:48', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('279', '0', '0', 'upload/shops/2016-10/57fc628f19a7b.jpg', '108008', '0', '2016-10-11 11:54:55', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('280', '0', '0', 'upload/goods/2016-10/57fc629388580.jpg', '108008', '0', '2016-10-11 11:54:59', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('281', '0', '0', 'upload/goods/2016-10/57fc6293d4a46.jpg', '101251', '0', '2016-10-11 11:54:59', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('282', '0', '0', 'upload/shops/2016-10/57fc634c3ad51.jpg', '116774', '0', '2016-10-11 11:58:04', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('283', '0', '0', 'upload/goods/2016-10/57fc635168ae7.jpg', '95612', '0', '2016-10-11 11:58:09', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('284', '0', '0', 'upload/goods/2016-10/57fc6351b12a3.jpg', '67441', '0', '2016-10-11 11:58:09', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('285', '0', '0', 'upload/shops/2016-10/57fc6439009fc.jpg', '36424', '0', '2016-10-11 12:02:01', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('286', '0', '0', 'upload/goods/2016-10/57fc643d491c2.jpg', '28416', '0', '2016-10-11 12:02:05', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('287', '0', '0', 'upload/goods/2016-10/57fc643d8dc66.jpg', '43831', '0', '2016-10-11 12:02:05', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('288', '0', '0', 'upload/goods/2016-10/57fc643dbf5dc.jpg', '94436', '0', '2016-10-11 12:02:05', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('289', '0', '0', 'upload/shops/2016-10/57fc653082b5e.jpg', '83100', '0', '2016-10-11 12:06:08', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('290', '0', '0', 'upload/goods/2016-10/57fc653a6fa70.jpg', '43187', '0', '2016-10-11 12:06:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('291', '0', '0', 'upload/goods/2016-10/57fc653a7377a.jpg', '24184', '0', '2016-10-11 12:06:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('292', '0', '0', 'upload/goods/2016-10/57fc653a91fc2.jpg', '57527', '0', '2016-10-11 12:06:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('293', '0', '0', 'upload/goods/2016-10/57fc653ae5e8b.jpg', '64409', '0', '2016-10-11 12:06:18', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('294', '0', '0', 'upload/shops/2016-10/57fc65567382d.jpg', '83100', '0', '2016-10-11 12:06:46', 'shops', '0', '1');
INSERT INTO `tc_images` VALUES ('295', '0', '0', 'upload/goods/2016-10/57fc655bc3a0c.jpg', '43187', '0', '2016-10-11 12:06:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('296', '0', '0', 'upload/goods/2016-10/57fc655bed970.jpg', '24184', '0', '2016-10-11 12:06:51', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('297', '0', '0', 'upload/goods/2016-10/57fc655c2edaf.jpg', '57527', '0', '2016-10-11 12:06:52', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('298', '0', '0', 'upload/goods/2016-10/57fc655c498ef.jpg', '64409', '0', '2016-10-11 12:06:52', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('299', '1', '67', 'upload/adspic/2016-10/57fc66d54a25c.jpg', '86296', '1', '2016-10-11 12:13:09', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('300', '1', '68', 'upload/adspic/2016-10/57fc66f0e2c75.jpg', '72377', '1', '2016-10-11 12:13:36', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('301', '1', '69', 'upload/adspic/2016-10/57fc671fa9a19.jpg', '80739', '1', '2016-10-11 12:14:23', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('302', '1', '70', 'upload/adspic/2016-10/57fc67352f983.jpg', '85188', '1', '2016-10-11 12:14:45', 'ads', '1', '1');
INSERT INTO `tc_images` VALUES ('303', '1', '11', 'upload/brands/2016-10/57fc8462e16f3.jpg', '6236', '1', '2016-10-11 14:19:14', 'brands', '1', '1');
INSERT INTO `tc_images` VALUES ('304', '1', '0', 'upload/shops/2016-10/57fc85b7c6bb4.jpg', '88258', '0', '2016-10-11 14:24:55', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('305', '0', '0', 'upload/goods/2016-10/57fc8734005e0.jpg', '109331', '0', '2016-10-11 14:31:16', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('306', '0', '0', 'upload/goods/2016-10/57fc87bb31f55.jpg', '43670', '0', '2016-10-11 14:33:31', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('307', '0', '0', 'upload/goods/2016-10/57fc87bb45082.jpg', '17140', '0', '2016-10-11 14:33:32', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('308', '0', '0', 'upload/goods/2016-10/57fc87bb6b2dc.jpg', '34768', '0', '2016-10-11 14:33:32', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('309', '0', '0', 'upload/goods/2016-10/57fc87bc9523f.jpg', '22113', '0', '2016-10-11 14:33:33', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('310', '0', '0', 'upload/goods/2016-10/57fc884aa4663.png', '262526', '0', '2016-10-11 14:35:54', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('311', '0', '0', 'upload/goods/2016-10/57fc8850544a6.png', '174371', '0', '2016-10-11 14:36:00', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('312', '0', '0', 'upload/goods/2016-10/57fc8e279cc51.jpg', '57873', '0', '2016-10-11 15:00:55', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('313', '0', '0', 'upload/goods/2016-10/57fc8eb348d8b.png', '304628', '0', '2016-10-11 15:03:15', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('314', '0', '0', 'upload/goods/2016-10/57fc8eb5e16f3.png', '284497', '0', '2016-10-11 15:03:17', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('315', '0', '0', 'upload/goods/2016-10/57fc8eb939967.png', '396561', '0', '2016-10-11 15:03:21', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('316', '0', '0', 'upload/goods/2016-10/57fc91b77e409.jpg', '72362', '0', '2016-10-11 15:16:07', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('317', '0', '0', 'upload/goods/2016-10/57fc91b7bb499.jpg', '61253', '0', '2016-10-11 15:16:08', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('318', '0', '0', 'upload/goods/2016-10/57fc91b7c2eab.jpg', '100266', '0', '2016-10-11 15:16:09', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('319', '0', '0', 'upload/goods/2016-10/57fc91b8b7790.jpg', '65769', '0', '2016-10-11 15:16:09', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('320', '0', '0', 'upload/goods/2016-10/57fc946a2683a.jpg', '105351', '0', '2016-10-11 15:27:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('321', '0', '0', 'upload/goods/2016-10/57fc94714ca94.jpg', '84932', '0', '2016-10-11 15:27:45', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('322', '0', '0', 'upload/goods/2016-10/57fc9471769f7.jpg', '65814', '0', '2016-10-11 15:27:46', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('323', '0', '0', 'upload/goods/2016-10/57fc947198f48.jpg', '53609', '0', '2016-10-11 15:27:47', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('324', '0', '0', 'upload/goods/2016-10/57fc94729523f.jpg', '54694', '0', '2016-10-11 15:27:47', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('325', '0', '0', 'upload/goods/2016-10/57fc96fdf0b17.jpg', '40971', '0', '2016-10-11 15:38:38', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('326', '0', '0', 'upload/goods/2016-10/57fc97046efe5.jpg', '32361', '0', '2016-10-11 15:38:44', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('327', '0', '0', 'upload/goods/2016-10/57fc97047a700.jpg', '18409', '0', '2016-10-11 15:38:44', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('328', '0', '0', 'upload/goods/2016-10/57fc97048d82d.jpg', '19158', '0', '2016-10-11 15:38:45', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('329', '0', '0', 'upload/goods/2016-10/57fc97053d670.jpg', '13414', '0', '2016-10-11 15:38:45', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('330', '0', '0', 'upload/goods/2016-10/57fc98464ca94.png', '316919', '0', '2016-10-11 15:44:06', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('331', '0', '0', 'upload/goods/2016-10/57fc984a72cee.png', '336113', '0', '2016-10-11 15:44:10', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('332', '0', '0', 'upload/goods/2016-10/57fc99e2e53fc.jpg', '47510', '0', '2016-10-11 15:50:58', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('333', '0', '0', 'upload/goods/2016-10/57fc99e8d5fd8.jpg', '49538', '0', '2016-10-11 15:51:04', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('334', '0', '0', 'upload/goods/2016-10/57fc99e989b24.jpg', '27343', '0', '2016-10-11 15:51:05', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('335', '0', '0', 'upload/goods/2016-10/57fc99e9b3a87.jpg', '12909', '0', '2016-10-11 15:51:06', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('336', '0', '0', 'upload/goods/2016-10/57fc99eaac075.jpg', '8000', '0', '2016-10-11 15:51:07', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('337', '0', '0', 'upload/goods/2016-10/57fc9c1dc2eab.png', '301899', '0', '2016-10-11 16:00:29', 'goods', '0', '1');
INSERT INTO `tc_images` VALUES ('338', '1', '0', 'upload/shops/2016-10/57fef5f9b7b02.jpg', '21787', '0', '2016-10-13 10:48:25', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('339', '0', '0', 'upload/shopads/2016-10/57fefa2b76d69.jpg', '72636', '0', '2016-10-13 11:06:19', 'shopads', '0', '1');
INSERT INTO `tc_images` VALUES ('340', '0', '0', 'upload/shopads/2016-10/57fefa2ba0ccc.jpg', '79559', '0', '2016-10-13 11:06:19', 'shopads', '0', '1');
INSERT INTO `tc_images` VALUES ('341', '0', '0', 'upload/shopads/2016-10/57fefa2bac3e7.jpg', '89905', '0', '2016-10-13 11:06:19', 'shopads', '0', '1');
INSERT INTO `tc_images` VALUES ('342', '0', '0', 'upload/shopads/2016-10/57fefa2bce938.jpg', '68201', '0', '2016-10-13 11:06:19', 'shopads', '0', '1');
INSERT INTO `tc_images` VALUES ('343', '0', '0', 'upload/appraises/2016-10/57ff60da0d2f8.png', '107916', '0', '2016-10-13 18:24:26', 'appraises', '0', '1');
INSERT INTO `tc_images` VALUES ('344', '0', '0', 'upload/users/2016-10/580051297ff64.jpg', '119920', '0', '2016-10-14 11:29:45', 'users', '24', '1');
INSERT INTO `tc_images` VALUES ('345', '1', '1', 'upload/shops/2016-10/5800ac97d0c24.png', '2991', '1', '2016-10-14 17:59:51', 'shops', '1', '1');
INSERT INTO `tc_images` VALUES ('346', '0', '25', 'upload/users/2016-10/5800dde7459e5.jpg', '11555', '1', '2016-10-14 21:30:15', 'users', '25', '1');
INSERT INTO `tc_images` VALUES ('347', '0', '55', 'upload/goods/2016-10/5804338fbdff6.jpg', '31112', '1', '2016-10-17 10:12:31', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('348', '0', '55', 'upload/image/2016-10/580433c88cc2f.jpg', '32230', '1', '2016-10-17 10:13:28', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('349', '0', '55', 'upload/goods/2016-10/580433d4a78a4.jpg', '111220', '1', '2016-10-17 10:13:40', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('350', '0', '55', 'upload/goods/2016-10/580433d4d5515.jpg', '205494', '1', '2016-10-17 10:13:41', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('351', '0', '55', 'upload/goods/2016-10/580433d590a85.jpg', '205494', '1', '2016-10-17 10:13:41', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('352', '0', '56', 'upload/goods/2016-10/580436293ca47.jpg', '35018', '1', '2016-10-17 10:23:37', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('353', '0', '56', 'upload/goods/2016-10/58043630ec2aa.jpg', '187220', '1', '2016-10-17 10:23:44', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('354', '0', '56', 'upload/goods/2016-10/5804363135101.jpg', '145916', '1', '2016-10-17 10:23:45', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('355', '0', '56', 'upload/goods/2016-10/58043632074aa.jpg', '152777', '1', '2016-10-17 10:23:46', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('356', '0', '56', 'upload/goods/2016-10/58043632c2376.jpg', '157256', '1', '2016-10-17 10:23:46', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('357', '0', '56', 'upload/image/2016-10/5804365aa3f2b.jpg', '47550', '1', '2016-10-17 10:24:26', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('358', '0', '0', 'upload/goods/2016-10/58043e7855616.jpg', '35018', '0', '2016-10-17 10:59:04', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('359', '0', '57', 'upload/goods/2016-10/580440d1821f7.jpg', '110719', '1', '2016-10-17 11:09:05', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('360', '0', '57', 'upload/goods/2016-10/580440dac2fcb.jpg', '65025', '1', '2016-10-17 11:09:14', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('361', '0', '57', 'upload/goods/2016-10/580440daddb0b.jpg', '62797', '1', '2016-10-17 11:09:14', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('362', '0', '57', 'upload/goods/2016-10/580440db0440a.jpg', '206422', '1', '2016-10-17 11:09:15', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('363', '0', '57', 'upload/goods/2016-10/580440db2695c.jpg', '60978', '1', '2016-10-17 11:09:15', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('364', '0', '57', 'upload/goods/2016-10/580440dbe181a.jpg', '110719', '1', '2016-10-17 11:09:15', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('365', '0', '57', 'upload/image/2016-10/580440febf3a8.jpg', '74596', '1', '2016-10-17 11:09:51', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('366', '0', '58', 'upload/goods/2016-10/58044184bf702.jpg', '97250', '1', '2016-10-17 11:12:04', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('367', '0', '58', 'upload/goods/2016-10/5804418a0486a.jpg', '181717', '1', '2016-10-17 11:12:10', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('368', '0', '58', 'upload/goods/2016-10/5804418b361e7.jpg', '200456', '1', '2016-10-17 11:12:11', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('369', '0', '58', 'upload/goods/2016-10/5804418bceb53.jpg', '152284', '1', '2016-10-17 11:12:11', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('370', '0', '58', 'upload/goods/2016-10/5804418c0c289.jpg', '167693', '1', '2016-10-17 11:12:12', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('371', '0', '58', 'upload/image/2016-10/580441bfbf87c.jpg', '371984', '1', '2016-10-17 11:13:03', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('372', '0', '59', 'upload/goods/2016-10/5804423ed2cd6.jpg', '88078', '1', '2016-10-17 11:15:10', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('373', '0', '59', 'upload/goods/2016-10/58044244c75e1.jpg', '157781', '1', '2016-10-17 11:15:16', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('374', '0', '59', 'upload/goods/2016-10/580442458e25f.jpg', '161501', '1', '2016-10-17 11:15:17', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('375', '0', '59', 'upload/goods/2016-10/580442460c730.jpg', '159880', '1', '2016-10-17 11:15:18', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('376', '0', '59', 'upload/goods/2016-10/58044246605f8.jpg', '139498', '1', '2016-10-17 11:15:19', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('377', '0', '59', 'upload/image/2016-10/5804427ab0904.jpg', '477753', '1', '2016-10-17 11:16:10', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('378', '0', '60', 'upload/goods/2016-10/5804435292622.jpg', '100297', '1', '2016-10-17 11:19:46', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('379', '0', '60', 'upload/goods/2016-10/5804435a2f368.jpg', '46303', '1', '2016-10-17 11:19:54', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('380', '0', '60', 'upload/goods/2016-10/5804435a6c3fa.jpg', '132008', '1', '2016-10-17 11:19:54', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('381', '0', '60', 'upload/goods/2016-10/5804435a92655.jpg', '153554', '1', '2016-10-17 11:19:54', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('382', '0', '60', 'upload/goods/2016-10/5804435b1ff4a.jpg', '139864', '1', '2016-10-17 11:19:55', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('383', '0', '60', 'upload/image/2016-10/5804438264ae8.jpg', '195960', '1', '2016-10-17 11:20:34', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('384', '0', '61', 'upload/goods/2016-10/5804445b74479.jpg', '99741', '1', '2016-10-17 11:24:11', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('385', '0', '61', 'upload/goods/2016-10/580444605d662.jpg', '50993', '1', '2016-10-17 11:24:16', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('386', '0', '61', 'upload/goods/2016-10/58044460875c6.jpg', '35181', '1', '2016-10-17 11:24:16', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('387', '0', '61', 'upload/goods/2016-10/58044460c094f.jpg', '113472', '1', '2016-10-17 11:24:16', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('388', '0', '61', 'upload/goods/2016-10/58044460c094f.jpg', '159743', '1', '2016-10-17 11:24:17', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('389', '0', '61', 'upload/image/2016-10/580444a28b476.jpg', '44512', '1', '2016-10-17 11:25:22', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('390', '0', '62', 'upload/goods/2016-10/5804453811713.jpg', '103729', '1', '2016-10-17 11:27:52', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('391', '0', '62', 'upload/goods/2016-10/5804453d1ce4e.jpg', '211365', '1', '2016-10-17 11:27:57', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('392', '0', '62', 'upload/goods/2016-10/5804453d2c272.jpg', '139627', '1', '2016-10-17 11:27:57', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('393', '0', '62', 'upload/goods/2016-10/5804453e9326e.jpg', '196516', '1', '2016-10-17 11:27:58', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('394', '0', '62', 'upload/goods/2016-10/5804453f93275.jpg', '228263', '1', '2016-10-17 11:27:59', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('395', '0', '62', 'upload/image/2016-10/58044561693ea.jpg', '141795', '1', '2016-10-17 11:28:33', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('396', '0', '63', 'upload/goods/2016-10/580445efa2b00.jpg', '129538', '1', '2016-10-17 11:30:55', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('397', '0', '63', 'upload/goods/2016-10/580445f53411e.jpg', '39702', '1', '2016-10-17 11:31:01', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('398', '0', '63', 'upload/goods/2016-10/580445f5711b0.jpg', '178725', '1', '2016-10-17 11:31:01', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('399', '0', '63', 'upload/goods/2016-10/580445f60a1c0.jpg', '188464', '1', '2016-10-17 11:31:02', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('400', '0', '63', 'upload/goods/2016-10/580445f66d4ad.jpg', '163368', '1', '2016-10-17 11:31:02', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('401', '0', '63', 'upload/image/2016-10/5804462074fcc.jpg', '395572', '1', '2016-10-17 11:31:44', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('402', '0', '64', 'upload/goods/2016-10/5804489b75fac.jpg', '100347', '1', '2016-10-17 11:42:19', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('403', '0', '64', 'upload/goods/2016-10/580448a3a7955.jpg', '133629', '1', '2016-10-17 11:42:27', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('404', '0', '64', 'upload/goods/2016-10/580448a412cf9.jpg', '132640', '1', '2016-10-17 11:42:28', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('405', '0', '64', 'upload/goods/2016-10/580448a42211d.jpg', '140832', '1', '2016-10-17 11:42:28', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('406', '0', '64', 'upload/goods/2016-10/580448a50b2ed.jpg', '138724', '1', '2016-10-17 11:42:29', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('407', '0', '64', 'upload/image/2016-10/58044aa639c2e.jpg', '457661', '1', '2016-10-17 11:51:02', 'image', '1', '1');
INSERT INTO `tc_images` VALUES ('408', '0', '65', 'upload/goods/2016-10/58044b41a1003.jpg', '135991', '1', '2016-10-17 11:53:37', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('409', '0', '65', 'upload/goods/2016-10/58044b46ed4d9.jpg', '185505', '1', '2016-10-17 11:53:42', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('410', '0', '65', 'upload/goods/2016-10/58044b483a03a.jpg', '249339', '1', '2016-10-17 11:53:44', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('411', '0', '65', 'upload/goods/2016-10/58044b4954b80.jpg', '174578', '1', '2016-10-17 11:53:45', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('412', '0', '65', 'upload/goods/2016-10/58044b4963fa5.jpg', '207302', '1', '2016-10-17 11:53:45', 'goods', '1', '1');
INSERT INTO `tc_images` VALUES ('413', '0', '65', 'upload/image/2016-10/58044b6ebf96c.jpg', '376780', '1', '2016-10-17 11:54:22', 'image', '1', '1');

-- ----------------------------
-- Table structure for tc_log_moneys
-- ----------------------------
DROP TABLE IF EXISTS `tc_log_moneys`;
CREATE TABLE `tc_log_moneys` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `targetType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型	0:用户 1:商家',
  `targetId` int(11) NOT NULL DEFAULT '0' COMMENT '用户/商家ID',
  `dataId` int(11) NOT NULL DEFAULT '0' COMMENT '数据记录ID	1:交易订单 2：积分支出',
  `dataSrc` int(11) NOT NULL DEFAULT '0' COMMENT '流水来源	1:交易订单 2:订单结算 3:提现申请',
  `remark` text NOT NULL COMMENT '资金流水备注',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '流水标志	1:收入 0:支出',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `tradeNo` varchar(100) DEFAULT NULL COMMENT '外部流水号',
  `payType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付方式	0:平台 1:支付宝 2:微信',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:删除',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金流水表';

-- ----------------------------
-- Records of tc_log_moneys
-- ----------------------------

-- ----------------------------
-- Table structure for tc_log_operates
-- ----------------------------
DROP TABLE IF EXISTS `tc_log_operates`;
CREATE TABLE `tc_log_operates` (
  `operateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `staffId` int(11) NOT NULL DEFAULT '0' COMMENT '职员ID',
  `operateTime` datetime NOT NULL COMMENT '操作时间',
  `menuId` int(11) NOT NULL COMMENT '所属菜单ID',
  `operateDesc` varchar(255) NOT NULL COMMENT '操作说明',
  `operateUrl` varchar(255) NOT NULL COMMENT '操作连接地址',
  `content` text COMMENT '请求内容',
  `operateIP` varchar(20) DEFAULT NULL COMMENT '操作IP',
  PRIMARY KEY (`operateId`),
  KEY `operateTime` (`staffId`,`menuId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=700 DEFAULT CHARSET=utf8 COMMENT='操作记录表';

-- ----------------------------
-- Records of tc_log_operates
-- ----------------------------
INSERT INTO `tc_log_operates` VALUES ('1', '1', '2016-10-08 09:33:32', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('2', '1', '2016-10-08 09:33:33', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('3', '1', '2016-10-08 09:45:08', '44', '查看认证', '/index.php/admin/accreds/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('4', '1', '2016-10-08 09:45:11', '47', '查看停用店铺', '/index.php/admin/shops/stopIndex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('5', '1', '2016-10-08 09:45:12', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('6', '1', '2016-10-08 09:45:17', '50', '查看订单', '/index.php/admin/orders/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('7', '1', '2016-10-08 09:45:20', '52', '查看退款订单', '/index.php/admin/orders/refund.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('8', '1', '2016-10-08 09:45:22', '51', '查看投诉订单', '/index.php/admin/orderComplains/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('9', '1', '2016-10-08 09:54:31', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('10', '1', '2016-10-08 09:59:16', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u624b\\u673a\\u6570\\u7801\\u3001\\u5bb6\\u7528\\u7535\\u5668\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"11\",\"id\":\"334\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('11', '1', '2016-10-08 09:59:50', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u56fe\\u4e66\\u97f3\\u50cf\\u3001\\u7535\\u5b50\\u4e66\\u7c4d\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"12\",\"id\":\"335\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('12', '1', '2016-10-08 10:00:04', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"337\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('13', '1', '2016-10-08 10:00:11', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"337\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('14', '1', '2016-10-08 10:07:16', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u7ecf\\u7ba1\\u52b1\\u5fd7\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"335\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('15', '1', '2016-10-08 10:07:30', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u4eba\\u6587\\u793e\\u79d1\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"335\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('16', '1', '2016-10-08 10:07:48', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u7ba1\\u7406\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"339\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('17', '1', '2016-10-08 10:08:03', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u91d1\\u878d\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"339\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('18', '1', '2016-10-08 10:09:00', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u91d1\\u878d\\u4e0e\\u6295\\u8d44\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"342\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('19', '1', '2016-10-08 10:09:20', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u7ecf\\u6d4e\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"339\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('20', '1', '2016-10-08 10:09:39', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u52b1\\u5fd7\\u4e0e\\u6210\\u529f\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"4\",\"id\":\"339\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('21', '1', '2016-10-08 10:10:19', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u5386\\u53f2\\u5fc3\\u7406\\u5b66\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"340\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('22', '1', '2016-10-08 10:11:36', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u793e\\u4f1a\\u79d1\\u5b66\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"340\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('23', '1', '2016-10-08 10:12:00', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u6cd5\\u5f8b\\u6587\\u5316\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"340\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('24', '1', '2016-10-08 10:15:12', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u624b\\u673a\\u901a\\u8baf\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"334\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('25', '1', '2016-10-08 10:15:25', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"338\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('26', '1', '2016-10-08 10:15:48', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u624b\\u673a\\u914d\\u4ef6\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"334\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('27', '1', '2016-10-08 10:16:05', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u6444\\u5f71\\u6444\\u50cf\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"334\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('28', '1', '2016-10-08 10:16:48', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u624b\\u673a\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"348\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('29', '1', '2016-10-08 10:17:08', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u5bf9\\u8bb2\\u673a\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"348\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('30', '1', '2016-10-08 10:17:20', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u4ee5\\u65e7\\u6362\\u65b0\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"348\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('31', '1', '2016-10-08 10:17:31', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u624b\\u673a\\u7ef4\\u4fee\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"4\",\"id\":\"348\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('32', '1', '2016-10-08 10:17:58', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u624b\\u673a\\u5b58\\u50a8\\u5361\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"349\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('33', '1', '2016-10-08 10:18:11', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u6570\\u636e\\u7ebf\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"348\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('34', '1', '2016-10-08 10:18:23', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u5145\\u7535\\u5668\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"349\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('35', '1', '2016-10-08 10:18:40', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u6570\\u7801\\u76f8\\u673a\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"350\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('36', '1', '2016-10-08 10:18:53', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u5355\\u7535\\/\\u5fae\\u5355\\u76f8\\u673a\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"350\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('37', '1', '2016-10-08 10:19:08', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u62cd\\u7acb\\u5f97\\u8fd0\\u52a8\\u76f8\\u673a\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"350\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('38', '1', '2016-10-08 10:20:19', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u751f\\u6d3b\\u7535\\u5668\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"4\",\"id\":\"334\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('39', '1', '2016-10-08 10:20:42', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u7535\\u98ce\\u6247\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"361\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('40', '1', '2016-10-08 10:20:53', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u52a0\\u6e7f\\u5668\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"361\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('41', '1', '2016-10-08 10:21:50', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"catName\":\"\\u51c0\\u6c34\\u8bbe\\u5907\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"361\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('42', '1', '2016-10-08 10:22:00', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('43', '1', '2016-10-08 10:27:28', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"loginPwd\":\"ceshi123\",\"shopSn\":\"\",\"shopName\":\"\\u5f00\\u6e90\\u5546\\u57ce\\u7cfb\\u7edf\\u534e\\u4e3a\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"telephone\":\"13888888888\",\"shopCompany\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"shopTel\":\"13888888888\",\"isSelf\":\"0\",\"goodsCatIds\":\"334\",\"accredIds\":\"\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57f8594b0c0f0.jpg\",\"shopQQ\":\"153289970\",\"areaId1\":\"440000\",\"areaId2\":\"440100\",\"areaId3\":\"440106\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('44', '1', '2016-10-08 10:27:28', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('45', '1', '2016-10-08 10:35:07', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('46', '1', '2016-10-08 10:35:34', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"4\",\"adName\":\"1\\u697c\\u6a2a\\u5e45\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f85b68ea286.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-30\",\"adEndDate\":\"2020-09-03\",\"adSort\":\"0\",\"adId\":\"33\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('47', '1', '2016-10-08 10:35:35', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('48', '1', '2016-10-08 10:44:35', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('49', '1', '2016-10-08 10:44:40', '32', '查看商品规格', '/index.php/admin/speccats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('50', '1', '2016-10-08 10:56:57', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('51', '1', '2016-10-08 10:58:07', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('52', '1', '2016-10-08 10:59:01', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u534e\\u4e3a\\u8363\\u8000\",\"catId\":\"334\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57f860e20d7ae.jpg\",\"brandDesc\":\"\\u534e\\u4e3a\\u8363\\u8000\\u662f\\u534e\\u4e3a\\u65d7\\u4e0b\\u7684\\u4e00\\u6b3e\\u624b\\u673a\\u54c1\\u724c\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('53', '1', '2016-10-08 10:59:02', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('54', '1', '2016-10-08 11:12:58', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('55', '1', '2016-10-08 11:12:58', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('56', '1', '2016-10-08 11:13:11', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('57', '1', '2016-10-08 11:13:13', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('58', '1', '2016-10-08 11:13:34', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('59', '1', '2016-10-08 11:14:29', '4', '编辑角色', '/index.php/admin/roles/edit.html', '{\"roleId\":\"3\",\"roleName\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458\",\"roleDesc\":\"\",\"privileges\":\"SY_001,XTGL_00,CDGL_00,CDGL_01,CDGL_02,CDGL_03,QXGL_01,QXGL_02,QXGL_03,JSGL_00,JSGL_01,JSGL_02,JSGL_03,ZYGL_00,ZYGL_01,ZYGL_02,ZYGL_03,DLRZ_00,CZRZ_00,SCXX_00,SCXX_01,SCXX_03,SCSZ_00,GGGL_00,GGGL_01,GGGL_02,GGGL_03,YHGL_00,YHGL_01,YHGL_02,YHGL_03,GGWZ_00,GGWZ_01,GGWZ_02,GGWZ_03,SCPZ_00,SCPZ_02,DHGL_00,DHGL_01,DHGL_02,DHGL_03,ZFGL_00,ZFGL_02,ZFGL_03,YQGL_00,YQGL_01,YQGL_02,YQGL_03,QTCD_00,QTCD_01,QTCD_02,QTCD_03,KDGL_00,KDGL_01,KDGL_02,KDGL_03,DQSZ_00,SQGL_00,SQGL_01,SQGL_02,SQGL_03,DQGL_00,DQGL_01,DQGL_02,DQGL_03,HYSZ_00,HYGL_00,HYGL_01,HYGL_02,HYGL_03,HYDJ_00,HYDJ_01,HYDJ_02,HYDJ_03,ZHGL_00,ZHGL_02,WZSZ_00,WZGL_00,WZGL_01,WZGL_02,WZGL_03,WZFL_00,WZFL_01,WZFL_02,WZFL_03,SPTJ_00,SPTJ_04,DPTJ_00,DPTJ_04,PPTJ_00,PPTJ_04,DDGL_00,DDLB_00,TSDD_00,TKDD_00,DPXX_00,DPSZ_00,DPSQ_00,DPSQ_03,DPSQ_04,TYDP_00,RZGL_00,RZGL_01,RZGL_02,RZGL_03,DPGL_00,DPGL_01,DPGL_02,DPGL_03,SPXX_00,SPSZ_00,DSHSP_00,DSHSP_04,WGSP_00,SPFL_00,SPFL_01,SPFL_02,SPFL_03,SPSX_00,PPGL_00,PPGL_01,PPGL_02,PPGL_03,SPGG_00,SPGG_01,SPGG_02,SPGG_03,PJGL_00,PJGL_02,PJGL_03\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('60', '1', '2016-10-08 11:14:29', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('61', '1', '2016-10-08 11:14:42', '54', '查看待审核商品', '/index.php/admin/goods/auditIndex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('62', '1', '2016-10-08 11:14:46', '54', '查看待审核商品', '/index.php/admin/goods/auditIndex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('63', '1', '2016-10-08 11:14:53', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('64', '1', '2016-10-08 11:14:59', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('65', '1', '2016-10-08 11:15:06', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('66', '1', '2016-10-08 11:15:43', '4', '编辑角色', '/index.php/admin/roles/edit.html', '{\"roleId\":\"3\",\"roleName\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458\",\"roleDesc\":\"\",\"privileges\":\"SY_001,XTGL_00,CDGL_00,CDGL_01,CDGL_02,CDGL_03,QXGL_01,QXGL_02,QXGL_03,JSGL_00,JSGL_01,JSGL_02,JSGL_03,ZYGL_00,ZYGL_01,ZYGL_02,ZYGL_03,DLRZ_00,CZRZ_00,SCXX_00,SCXX_01,SCXX_03,SCSZ_00,GGGL_00,GGGL_01,GGGL_02,GGGL_03,YHGL_00,YHGL_01,YHGL_02,YHGL_03,GGWZ_00,GGWZ_01,GGWZ_02,GGWZ_03,SCPZ_00,SCPZ_02,DHGL_00,DHGL_01,DHGL_02,DHGL_03,ZFGL_00,ZFGL_02,ZFGL_03,YQGL_00,YQGL_01,YQGL_02,YQGL_03,QTCD_00,QTCD_01,QTCD_02,QTCD_03,KDGL_00,KDGL_01,KDGL_02,KDGL_03,DQSZ_00,SQGL_00,SQGL_01,SQGL_02,SQGL_03,DQGL_00,DQGL_01,DQGL_02,DQGL_03,HYSZ_00,HYGL_00,HYGL_01,HYGL_02,HYGL_03,HYDJ_00,HYDJ_01,HYDJ_02,HYDJ_03,ZHGL_00,ZHGL_02,WZSZ_00,WZGL_00,WZGL_01,WZGL_02,WZGL_03,WZFL_00,WZFL_01,WZFL_02,WZFL_03,SPTJ_00,SPTJ_04,DPTJ_00,DPTJ_04,PPTJ_00,PPTJ_04,DDGL_00,DDLB_00,TSDD_00,TKDD_00,DPXX_00,DPSZ_00,DPSQ_00,DPSQ_03,DPSQ_04,TYDP_00,RZGL_00,RZGL_01,RZGL_02,RZGL_03,DPGL_00,DPGL_01,DPGL_02,DPGL_03,SPXX_00,SPSZ_00,SJSP_00,SJSP_04,SJSP_03,DSHSP_00,DSHSP_04,WGSP_00,SPFL_00,SPFL_01,SPFL_02,SPFL_03,SPSX_00,PPGL_00,PPGL_01,PPGL_02,PPGL_03,SPGG_00,SPGG_01,SPGG_02,SPGG_03,PJGL_00,PJGL_02,PJGL_03\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('67', '1', '2016-10-08 11:15:43', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('68', '1', '2016-10-08 11:15:45', '33', '查看已上架商品', '/index.php/admin/goods/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('69', '1', '2016-10-08 11:22:44', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('70', '1', '2016-10-08 11:23:06', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u865a\\u62df\\u670d\\u52a1\\u3001\\u4f18\\u60e0\\u7968\\u5238\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"13\",\"id\":\"56\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('71', '1', '2016-10-08 11:23:28', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u624b\\u673a\\u6570\\u7801\\u3001\\u5bb6\\u7528\\u7535\\u5668\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"10\",\"id\":\"334\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('72', '1', '2016-10-08 11:23:36', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u56fe\\u4e66\\u97f3\\u50cf\\u3001\\u7535\\u5b50\\u4e66\\u7c4d\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"11\",\"id\":\"335\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('73', '1', '2016-10-08 11:23:44', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u865a\\u62df\\u670d\\u52a1\\u3001\\u4f18\\u60e0\\u7968\\u5238\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"12\",\"id\":\"56\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('74', '1', '2016-10-08 11:24:16', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"336\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('75', '1', '2016-10-08 11:26:10', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"336\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('76', '1', '2016-10-08 11:33:38', '58', '查看商品推荐', '/index.php/admin/recommends/goods.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('77', '1', '2016-10-08 11:36:40', '58', '查看商品推荐', '/index.php/admin/recommends/goods.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('78', '1', '2016-10-08 11:36:41', '59', '查看店铺推荐', '/index.php/admin/recommends/shops.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('79', '1', '2016-10-08 11:36:42', '60', '查看品牌推荐', '/index.php/admin/recommends/brands.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('80', '1', '2016-10-08 11:36:44', '58', '查看商品推荐', '/index.php/admin/recommends/goods.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('81', '1', '2016-10-08 11:38:13', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('82', '1', '2016-10-08 11:38:15', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('83', '1', '2016-10-08 11:47:22', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('84', '1', '2016-10-08 11:59:12', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('85', '1', '2016-10-08 11:59:26', '45', '查看开店申请', '/index.php/admin/shopapplys/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('86', '1', '2016-10-08 11:59:28', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('87', '1', '2016-10-08 14:14:30', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('88', '1', '2016-10-08 14:16:27', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"34\",\"adName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f88f34d4550.jpg,upload\\/adspic\\/2016-10\\/57f88f34b5d07.jpg,upload\\/adspic\\/2016-10\\/57f88f3502862.jpg,upload\\/adspic\\/2016-10\\/57f88f3537ee1.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-29\",\"adEndDate\":\"2020-10-01\",\"adSort\":\"0\",\"adId\":\"28\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('89', '1', '2016-10-08 14:16:28', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('90', '1', '2016-10-08 14:16:35', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"29\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('91', '1', '2016-10-08 14:18:18', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('92', '1', '2016-10-08 14:18:33', '42', '编辑广告位置', '/index.php/admin/Adpositions/edit.html', '{\"positionType\":\"1\",\"positionName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a\",\"positionCode\":\"ads-index\",\"positionWidth\":\"1920\",\"positionHeight\":\"420\",\"positionId\":\"34\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('93', '1', '2016-10-08 14:18:34', '42', '查看广告位置', '/index.php/Admin/Adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('94', '1', '2016-10-08 14:25:53', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('95', '1', '2016-10-08 14:26:15', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"71\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('96', '1', '2016-10-08 14:40:47', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('97', '1', '2016-10-08 14:41:31', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"36\",\"adName\":\"\\u8d44\\u8baf\\u4e0b\\u8fb9\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8950fed900.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2023-10-28\",\"adSort\":\"\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('98', '1', '2016-10-08 14:41:31', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('99', '1', '2016-10-08 14:44:28', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"4\",\"adName\":\"1\\u697c\\u6a2a\\u5e45\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f895cae2692.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-30\",\"adEndDate\":\"2020-09-03\",\"adSort\":\"0\",\"adId\":\"33\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('100', '1', '2016-10-08 14:44:28', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('101', '1', '2016-10-08 14:50:51', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('102', '1', '2016-10-08 14:50:55', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('103', '1', '2016-10-08 15:15:53', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('104', '1', '2016-10-08 15:15:55', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('105', '1', '2016-10-08 15:16:10', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"31\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('106', '1', '2016-10-08 15:16:18', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"32\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('107', '1', '2016-10-08 15:17:48', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"1\\u697c\\u53f3\\u4fa7\\u5e7f\\u544a\\u4f4d\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f89d6e2ed9e.jpg,upload\\/adspic\\/2016-10\\/57f89d5d2716b.jpg,upload\\/adspic\\/2016-10\\/57f89d65f1563.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-30\",\"adEndDate\":\"2020-09-17\",\"adSort\":\"0\",\"adId\":\"30\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('108', '1', '2016-10-08 15:17:49', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('109', '1', '2016-10-08 15:24:35', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"337\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('110', '1', '2016-10-08 15:24:41', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"336\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('111', '1', '2016-10-08 15:25:37', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('112', '1', '2016-10-08 15:25:40', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('113', '1', '2016-10-08 15:31:35', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('114', '1', '2016-10-08 15:31:57', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u8fdb\\u53e3\\u6c34\\u679c\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"1\",\"id\":\"61\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('115', '1', '2016-10-08 15:32:14', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u65b0\\u9c9c\\u852c\\u83dc\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"2\",\"id\":\"62\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('116', '1', '2016-10-08 15:32:55', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u7f8e\\u98df\\u51c0\\u83dc\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"3\",\"id\":\"63\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('117', '1', '2016-10-08 15:33:12', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u8089\\u7c7b\\u86cb\\u79bd\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"4\",\"id\":\"64\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('118', '1', '2016-10-08 15:33:29', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u6d77\\u9c9c\\u6c34\\u4ea7\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"5\",\"id\":\"65\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('119', '1', '2016-10-08 15:33:48', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u901f\\u51bb\\u98df\\u54c1\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"6\",\"id\":\"66\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('120', '1', '2016-10-08 15:34:02', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u5176\\u5b83\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"7\",\"id\":\"71\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('121', '1', '2016-10-08 15:43:29', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('122', '1', '2016-10-08 16:02:44', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"\\u65b0\\u9c9c\\u9c9c\\u679c\\u65d7\\u8230\\u5e97\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"\\u65b0\\u9c9c\\u9c9c\\u679c\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u65b0\\u9c9c\\u9c9c\\u679c\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"020-85289921\",\"isSelf\":\"0\",\"goodsCatIds\":\"47\",\"accredIds\":\"\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57f8a7f3ef8ea.jpg\",\"shopQQ\":\"153289970\",\"areaId1\":\"440000\",\"areaId2\":\"440100\",\"areaId3\":\"440106\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"234234234324\",\"bankUserName\":\"\\u8bf4\\u6cd5\",\"shopStatus\":\"1\",\"statusDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('123', '1', '2016-10-08 16:02:45', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('124', '1', '2016-10-08 16:03:55', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('125', '1', '2016-10-08 16:06:05', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('126', '1', '2016-10-08 16:06:16', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('127', '1', '2016-10-08 16:06:22', '33', '查看已上架商品', '/index.php/admin/goods/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('128', '1', '2016-10-08 16:06:28', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('129', '1', '2016-10-08 16:07:10', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('130', '1', '2016-10-08 16:08:17', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('131', '1', '2016-10-08 16:08:19', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('132', '1', '2016-10-08 16:10:52', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('133', '1', '2016-10-08 16:18:21', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('134', '1', '2016-10-08 16:18:39', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('135', '1', '2016-10-08 16:20:39', '58', '查看商品推荐', '/index.php/admin/recommends/goods.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('136', '1', '2016-10-08 16:21:56', '33', '查看已上架商品', '/index.php/admin/goods/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('137', '1', '2016-10-08 16:58:21', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('138', '1', '2016-10-08 16:58:26', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('139', '1', '2016-10-08 16:58:38', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('140', '1', '2016-10-08 17:12:34', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('141', '1', '2016-10-08 17:12:44', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('142', '1', '2016-10-08 17:15:00', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"1\\u697c\\u53f3\\u4fa7\\u5e7f\\u544a\\u4f4d\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f89d6e2ed9e.jpg,upload\\/adspic\\/2016-10\\/57f89d5d2716b.jpg,upload\\/adspic\\/2016-10\\/57f8b91188cc0.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-30\",\"adEndDate\":\"2020-09-17\",\"adSort\":\"0\",\"adId\":\"30\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('143', '1', '2016-10-08 17:15:01', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('144', '1', '2016-10-08 17:19:13', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('145', '1', '2016-10-08 17:19:16', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('146', '1', '2016-10-08 17:19:18', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('147', '1', '2016-10-08 17:19:23', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('148', '1', '2016-10-08 17:19:44', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('149', '1', '2016-10-08 17:21:47', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('150', '1', '2016-10-08 17:21:49', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('151', '1', '2016-10-08 17:21:51', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('152', '1', '2016-10-08 17:22:50', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('153', '1', '2016-10-08 17:22:53', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('154', '1', '2016-10-08 17:22:58', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('155', '1', '2016-10-08 17:24:56', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('156', '1', '2016-10-08 17:25:57', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('157', '1', '2016-10-08 17:26:35', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"1\\u697c\\u53f3\\u4fa7\\u5e7f\\u544a\\u4f4d\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8bbc7a1ed3.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-30\",\"adEndDate\":\"2020-09-17\",\"adSort\":\"0\",\"adId\":\"30\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('158', '1', '2016-10-08 17:26:36', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('159', '1', '2016-10-08 17:27:32', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('160', '1', '2016-10-08 17:30:02', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('161', '1', '2016-10-08 17:30:15', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"10\",\"adName\":\"3F\\u5934\\u90e8\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8bca4c8c3c.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"0\",\"adId\":\"20\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('162', '1', '2016-10-08 17:30:16', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('163', '1', '2016-10-08 17:32:10', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('164', '1', '2016-10-08 17:32:52', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('165', '1', '2016-10-08 17:33:59', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('166', '1', '2016-10-08 17:34:55', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"12\",\"adName\":\"3F\\u53f3\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8bdbcc9a3c.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"0\",\"adId\":\"24\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('167', '1', '2016-10-08 17:34:55', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('168', '1', '2016-10-08 17:37:06', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('169', '1', '2016-10-08 17:37:07', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('170', '1', '2016-10-08 17:37:55', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('171', '1', '2016-10-08 17:38:50', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('172', '1', '2016-10-08 17:39:01', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('173', '1', '2016-10-08 17:39:27', '20', '编辑会员管理', '/index.php/admin/Users/edit.html', '{\"userPhoto\":\"\",\"userName\":\"\\u65b0\\u9c9c\\u9c9c\\u679c\",\"userSex\":\"1\",\"userPhone\":\"18902295525\",\"userEmail\":\"sadf@qq.com\",\"userScore\":\"0\",\"userTotalScore\":\"2\",\"userQQ\":\"23234\",\"userId\":\"3\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('174', '1', '2016-10-08 17:39:28', '20', '查看会员管理', '/index.php/Admin/Users/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('175', '1', '2016-10-08 17:39:29', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('176', '1', '2016-10-08 17:46:41', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('177', '1', '2016-10-08 17:46:45', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('178', '1', '2016-10-08 17:46:51', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('179', '1', '2016-10-08 17:47:13', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('180', '1', '2016-10-08 17:47:22', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('181', '1', '2016-10-08 17:47:30', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('182', '1', '2016-10-08 17:50:58', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('183', '1', '2016-10-08 17:51:07', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('184', '1', '2016-10-08 17:51:07', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('185', '1', '2016-10-08 17:51:14', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"28\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('186', '1', '2016-10-08 17:51:32', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('187', '1', '2016-10-08 17:51:46', '42', '编辑广告位置', '/index.php/admin/Adpositions/edit.html', '{\"positionType\":\"1\",\"positionName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a\",\"positionCode\":\"ads-index\",\"positionWidth\":\"1920\",\"positionHeight\":\"420\",\"apSort\":\"99\",\"positionId\":\"34\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('188', '1', '2016-10-08 17:51:46', '42', '查看广告位置', '/index.php/Admin/Adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('189', '1', '2016-10-08 17:51:55', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('190', '1', '2016-10-08 17:54:47', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"34\",\"adName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c25cc1e53.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2025-10-10\",\"adSort\":\"1\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('191', '1', '2016-10-08 17:54:48', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('192', '1', '2016-10-08 17:55:31', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"34\",\"adName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c2848c9d2.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2023-10-12\",\"adSort\":\"2\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('193', '1', '2016-10-08 17:55:31', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('194', '1', '2016-10-08 17:56:03', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"34\",\"adName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c2aa40701.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2022-10-14\",\"adSort\":\"\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('195', '1', '2016-10-08 17:56:03', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('196', '1', '2016-10-08 17:57:09', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"34\",\"adName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c2f22d96c.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2022-10-14\",\"adSort\":\"3\",\"adId\":\"38\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('197', '1', '2016-10-08 17:57:09', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('198', '1', '2016-10-08 17:57:41', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"34\",\"adName\":\"\\u9996\\u9875\\u8f6e\\u64ad\\u5e7f\\u544a4\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c306ec638.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2022-10-14\",\"adSort\":\"4\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('199', '1', '2016-10-08 17:57:42', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('200', '1', '2016-10-08 18:02:38', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"8\",\"adName\":\"2F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c43bac80f.jpeg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"0\",\"adId\":\"21\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('201', '1', '2016-10-08 18:02:38', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('202', '1', '2016-10-08 18:13:40', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('203', '1', '2016-10-08 18:14:42', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"\\u9996\\u9875\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c709293b4.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2020-10-16\",\"adSort\":\"\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('204', '1', '2016-10-08 18:14:42', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('205', '1', '2016-10-08 18:17:42', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"1\\u697c\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c7b95f05e.gif\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2021-10-07\",\"adSort\":\"\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('206', '1', '2016-10-08 18:17:42', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('207', '1', '2016-10-08 18:26:42', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"1\\u697c\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c9df2e4a8.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2021-10-07\",\"adSort\":\"0\",\"adId\":\"41\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('208', '1', '2016-10-08 18:26:42', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('209', '1', '2016-10-08 18:51:23', '45', '查看开店申请', '/index.php/admin/shopapplys/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('210', '1', '2016-10-08 18:51:48', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('211', '1', '2016-10-08 18:51:50', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('212', '1', '2016-10-08 18:52:13', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('213', '1', '2016-10-08 19:15:16', '42', '查看广告位置', '/admin/adpositions/index.html', '{\"\\/admin\\/adpositions\\/index_html\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('214', '1', '2016-10-08 19:15:25', '42', '编辑广告位置', '/admin/Adpositions/edit.html', '{\"\\/admin\\/Adpositions\\/edit_html\":\"\",\"positionType\":\"1\",\"positionName\":\"\\u9996\\u9875\\u8d44\\u8baf\\u4e0b\\u65b9\\u5e7f\\u544a\",\"positionCode\":\"index-art-bottom\",\"positionWidth\":\"210\",\"positionHeight\":\"68\",\"apSort\":\"1\",\"positionId\":\"36\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('215', '1', '2016-10-08 19:15:26', '42', '查看广告位置', '/Admin/Adpositions/index.html', '{\"\\/Admin\\/Adpositions\\/index_html\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('216', '1', '2016-10-08 21:36:36', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '42.199.54.34');
INSERT INTO `tc_log_operates` VALUES ('217', '1', '2016-10-08 21:42:01', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '42.199.54.34');
INSERT INTO `tc_log_operates` VALUES ('218', '1', '2016-10-08 21:44:57', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"haiyuan\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"\\u6d77\\u6e90\\u6c34\\u679c\\u852c\\u83dc\\u5e97\",\"shopkeeper\":\"\\u6d77\\u6e90\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"18902295525\",\"isSelf\":\"0\",\"goodsCatIds\":\"47\",\"accredIds\":\"\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57f8f801ced69.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"4\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"234234234234324\",\"bankUserName\":\"\\u5730\\u65b9\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '42.199.54.34');
INSERT INTO `tc_log_operates` VALUES ('219', '1', '2016-10-08 21:44:58', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '42.199.54.34');
INSERT INTO `tc_log_operates` VALUES ('220', '1', '2016-10-09 09:46:27', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('221', '1', '2016-10-09 09:46:41', '43', '编辑前台菜单', '/index.php/admin/homemenus/edit.html', '{\"menuName\":\"\\u6269\\u5c55\\u83dc\\u5355\",\"menuUrl\":\"#\",\"menuOtherUrl\":\"\",\"menuType\":\"1\",\"menuSort\":\"0\",\"isShow\":\"1\",\"menuId\":\"50\",\"parentId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('222', '1', '2016-10-09 09:47:10', '43', '编辑前台菜单', '/index.php/admin/homemenus/edit.html', '{\"menuName\":\"\\u6269\\u5c55\\u83dc\\u5355\",\"menuUrl\":\"#\",\"menuOtherUrl\":\"\",\"menuType\":\"0\",\"menuSort\":\"0\",\"isShow\":\"1\",\"menuId\":\"43\",\"parentId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('223', '1', '2016-10-09 10:17:51', '50', '查看订单', '/index.php/admin/orders/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('224', '1', '2016-10-09 10:17:54', '50', '查看订单', '/index.php/admin/orders/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('225', '1', '2016-10-09 10:59:09', '47', '查看停用店铺', '/index.php/admin/shops/stopIndex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('226', '1', '2016-10-09 10:59:10', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('227', '1', '2016-10-09 11:22:59', '46', '编辑店铺', '/index.php/admin/shops/edit.html', '{\"shopId\":\"1\",\"applyId\":\"0\",\"shopSn\":\"S000000001\",\"shopName\":\"\\u5f00\\u6e90\\u5546\\u57ce\\u7cfb\\u7edf\\u534e\\u4e3a\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"telephone\":\"13888888888\",\"shopCompany\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"shopTel\":\"13888888888\",\"isSelf\":\"0\",\"goodsCatIds\":\"334\",\"accredIds\":\"1\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57f8594b0c0f0.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('228', '1', '2016-10-09 11:23:14', '46', '编辑店铺', '/index.php/admin/shops/edit.html', '{\"shopId\":\"1\",\"applyId\":\"0\",\"shopSn\":\"S000000001\",\"shopName\":\"\\u5f00\\u6e90\\u5546\\u57ce\\u7cfb\\u7edf\\u534e\\u4e3a\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"telephone\":\"13888888888\",\"shopCompany\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"shopTel\":\"13888888888\",\"isSelf\":\"0\",\"goodsCatIds\":\"334\",\"accredIds\":\"1\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57f8594b0c0f0.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('229', '1', '2016-10-09 11:24:02', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('230', '1', '2016-10-09 11:24:16', '46', '编辑店铺', '/index.php/admin/shops/edit.html', '{\"shopId\":\"1\",\"applyId\":\"0\",\"shopSn\":\"S000000001\",\"shopName\":\"\\u5f00\\u6e90\\u5546\\u57ce\\u7cfb\\u7edf\\u534e\\u4e3a\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"telephone\":\"13888888888\",\"shopCompany\":\"\\u534e\\u4e3a\\u624b\\u673a\\u65d7\\u8230\\u5e97\",\"shopTel\":\"13888888888\",\"isSelf\":\"0\",\"goodsCatIds\":\"334\",\"accredIds\":\"1\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57f8594b0c0f0.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('231', '1', '2016-10-09 11:24:17', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('232', '1', '2016-10-09 11:25:33', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('233', '1', '2016-10-09 11:25:34', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('234', '1', '2016-10-09 11:28:47', '33', '查看已上架商品', '/index.php/admin/goods/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('235', '1', '2016-10-09 11:39:00', '19', '查看会员等级', '/index.php/admin/userranks/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('236', '1', '2016-10-09 11:39:03', '50', '查看订单', '/index.php/admin/orders/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('237', '1', '2016-10-09 11:39:05', '51', '查看投诉订单', '/index.php/admin/orderComplains/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('238', '1', '2016-10-09 11:40:14', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('239', '1', '2016-10-09 12:03:00', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('240', '1', '2016-10-09 12:03:12', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"7\",\"adName\":\"2F\\u5934\\u90e8\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9c17be159b.gif\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"0\",\"adId\":\"19\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('241', '1', '2016-10-09 12:03:12', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('242', '1', '2016-10-09 12:56:22', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('243', '1', '2016-10-09 12:56:23', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('244', '1', '2016-10-09 12:56:49', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"9\",\"adName\":\"2F\\u53f3\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9ce0d5190e.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"0\",\"adId\":\"23\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('245', '1', '2016-10-09 12:56:50', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('246', '1', '2016-10-09 13:00:35', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"9\",\"adName\":\"2F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9cedbadc37.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2021-10-30\",\"adSort\":\"\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('247', '1', '2016-10-09 13:00:36', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('248', '1', '2016-10-09 13:01:17', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"9\",\"adName\":\"2F\\u53f3\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9cf1a694b8.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"1\",\"adId\":\"23\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('249', '1', '2016-10-09 13:01:18', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('250', '1', '2016-10-09 13:01:43', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"9\",\"adName\":\"2F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9cf3519451.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2021-10-30\",\"adSort\":\"3\",\"adId\":\"42\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('251', '1', '2016-10-09 13:01:43', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('252', '1', '2016-10-09 14:28:17', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('253', '1', '2016-10-09 14:28:25', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"24\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('254', '1', '2016-10-09 14:28:36', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"20\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('255', '1', '2016-10-09 14:30:47', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"11\",\"adName\":\"3F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9e4155fa99.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"0\",\"adId\":\"22\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('256', '1', '2016-10-09 14:30:47', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('257', '1', '2016-10-09 14:30:53', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('258', '1', '2016-10-09 14:30:54', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('259', '1', '2016-10-09 14:31:07', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('260', '1', '2016-10-09 14:31:15', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"25\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('261', '1', '2016-10-09 14:31:59', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"12\",\"adName\":\"3F\\u53f31\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9e45639d1c.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2020-10-16\",\"adSort\":\"311\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('262', '1', '2016-10-09 14:32:00', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('263', '1', '2016-10-09 14:32:40', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"12\",\"adName\":\"3F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9e473bba85.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2022-10-13\",\"adSort\":\"312\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('264', '1', '2016-10-09 14:32:41', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('265', '1', '2016-10-09 14:33:22', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"12\",\"adName\":\"3F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9e49ecb1e3.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2022-10-21\",\"adSort\":\"313\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('266', '1', '2016-10-09 14:33:22', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('267', '1', '2016-10-09 14:33:50', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"12\",\"adName\":\"3F\\u53f3\\u4fa7\\u5e7f\\u544a4\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9e4c3ed9fd.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2022-10-28\",\"adSort\":\"314\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('268', '1', '2016-10-09 14:33:51', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('269', '1', '2016-10-09 14:49:46', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('270', '1', '2016-10-09 14:50:58', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('271', '1', '2016-10-09 14:51:59', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('272', '1', '2016-10-09 14:56:54', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('273', '1', '2016-10-09 15:00:37', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"36\",\"adName\":\"\\u8d44\\u8baf\\u4e0b\\u8fb9\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8950fed900.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2023-10-28\",\"adSort\":\"0\",\"adId\":\"35\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('274', '1', '2016-10-09 15:00:38', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('275', '1', '2016-10-09 15:00:52', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"36\",\"adName\":\"\\u8d44\\u8baf\\u4e0b\\u8fb9\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9eb22c2618.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2023-10-28\",\"adSort\":\"0\",\"adId\":\"35\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('276', '1', '2016-10-09 15:00:52', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('277', '1', '2016-10-09 15:03:57', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"4\",\"adName\":\"1F\\u9876\\u90e8\\u6a2a\\u5e45\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f895cae2692.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-30\",\"adEndDate\":\"2020-09-03\",\"adSort\":\"100\",\"adId\":\"33\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('278', '1', '2016-10-09 15:03:57', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('279', '1', '2016-10-09 15:07:21', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"9\",\"adName\":\"2F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9cf1a694b8.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"221\",\"adId\":\"23\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('280', '1', '2016-10-09 15:07:21', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('281', '1', '2016-10-09 15:07:39', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"12\",\"adName\":\"3F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9e45639d1c.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2020-10-16\",\"adSort\":\"311\",\"adId\":\"43\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('282', '1', '2016-10-09 15:07:39', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('283', '1', '2016-10-09 15:08:46', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"1F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c709293b4.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2020-10-16\",\"adSort\":\"112\",\"adId\":\"40\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('284', '1', '2016-10-09 15:08:46', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('285', '1', '2016-10-09 15:09:25', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"6\",\"adName\":\"1F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f8c9df2e4a8.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-08\",\"adEndDate\":\"2021-10-07\",\"adSort\":\"123\",\"adId\":\"41\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('286', '1', '2016-10-09 15:09:25', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('287', '1', '2016-10-09 15:10:11', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('288', '1', '2016-10-09 15:15:42', '30', '查看文章分类', '/index.php/admin/articlecats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('289', '1', '2016-10-09 15:36:33', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('290', '1', '2016-10-09 15:37:21', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"9\",\"adName\":\"2F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9f3910a63f.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2022-10-09\",\"adSort\":\"221\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('291', '1', '2016-10-09 15:37:22', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('292', '1', '2016-10-09 15:38:18', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('293', '1', '2016-10-09 15:40:50', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"10\",\"adName\":\"3F\\u6a2a\\u5e45\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9f46b538d5.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2026-10-09\",\"adSort\":\"300\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('294', '1', '2016-10-09 15:40:50', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('295', '1', '2016-10-09 15:43:53', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"10\",\"adName\":\"3F\\u6a2a\\u5e45\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9f5376ee48.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2026-10-09\",\"adSort\":\"300\",\"adId\":\"48\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('296', '1', '2016-10-09 15:43:53', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('297', '1', '2016-10-09 16:01:24', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('298', '1', '2016-10-09 16:01:47', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('299', '1', '2016-10-09 16:01:48', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('300', '1', '2016-10-09 16:01:52', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('301', '1', '2016-10-09 16:01:55', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('302', '1', '2016-10-09 16:02:41', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('303', '1', '2016-10-09 16:02:47', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('304', '1', '2016-10-09 16:09:02', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('305', '1', '2016-10-09 16:09:10', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\",\"mallSlogan\":\"\\u591a\\u5546\\u6237\\u5546\\u57ce\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"\",\"visitStatistics\":\"\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"\",\"watermarkPosition\":\"0\",\"watermarkOpacity\":\"\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('306', '1', '2016-10-09 16:47:17', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('307', '1', '2016-10-09 16:48:10', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"25\",\"adName\":\"82F\\u5934\\u90e8\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9c17be159b.gif\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"800\",\"adId\":\"19\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('308', '1', '2016-10-09 16:48:11', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('309', '1', '2016-10-09 16:49:08', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('310', '1', '2016-10-09 17:48:45', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('311', '1', '2016-10-09 17:50:57', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"8\",\"adName\":\"2F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa12ff75b6f.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"210\",\"adId\":\"21\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('312', '1', '2016-10-09 17:50:57', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('313', '1', '2016-10-09 17:57:14', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"8\",\"adName\":\"2F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa14787ab52.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"210\",\"adId\":\"21\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('314', '1', '2016-10-09 17:57:14', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('315', '1', '2016-10-09 18:12:06', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"14\",\"adName\":\"4F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa17de69967.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2020-10-31\",\"adSort\":\"410\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('316', '1', '2016-10-09 18:12:06', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('317', '1', '2016-10-09 18:37:33', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"18\",\"adName\":\"5F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa1dd60c0b8.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2021-10-30\",\"adSort\":\"521\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('318', '1', '2016-10-09 18:37:34', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('319', '1', '2016-10-09 18:38:14', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"18\",\"adName\":\"5F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa1dfed299c.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2022-10-31\",\"adSort\":\"522\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('320', '1', '2016-10-09 18:38:15', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('321', '1', '2016-10-09 18:39:43', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"18\",\"adName\":\"5F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa1e5ce9ee0.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2023-10-31\",\"adSort\":\"523\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('322', '1', '2016-10-09 18:39:44', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('323', '1', '2016-10-09 18:41:04', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"18\",\"adName\":\"5F\\u53f3\\u4fa7\\u5e7f\\u544a4\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa1e882f365.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2022-10-28\",\"adSort\":\"524\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('324', '1', '2016-10-09 18:41:05', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('325', '1', '2016-10-09 18:43:27', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"17\",\"adName\":\"5F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa1f3702416.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2025-10-31\",\"adSort\":\"510\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('326', '1', '2016-10-09 18:43:28', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('327', '1', '2016-10-09 18:52:59', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"15\",\"adName\":\"4F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa2174acca9.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2020-10-09\",\"adSort\":\"420\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('328', '1', '2016-10-09 18:52:59', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('329', '1', '2016-10-09 18:54:28', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"15\",\"adName\":\"4F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21c496471.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2026-10-09\",\"adSort\":\"422\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('330', '1', '2016-10-09 18:54:28', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('331', '1', '2016-10-09 18:55:14', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"15\",\"adName\":\"4F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21fbd3926.png\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2025-10-16\",\"adSort\":\"423\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('332', '1', '2016-10-09 18:55:15', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('333', '1', '2016-10-09 18:56:11', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"21\",\"adName\":\"6F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21c496471.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2026-10-09\",\"adSort\":\"622\",\"adId\":\"56\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('334', '1', '2016-10-09 18:56:12', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('335', '1', '2016-10-09 18:56:27', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"21\",\"adName\":\"6F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21fbd3926.png\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2025-10-16\",\"adSort\":\"623\",\"adId\":\"57\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('336', '1', '2016-10-09 18:56:28', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('337', '1', '2016-10-09 19:20:33', '14', '查看友情链接', '/index.php/admin/friendlinks/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('338', '1', '2016-10-09 19:30:13', '47', '查看停用店铺', '/index.php/admin/shops/stopIndex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('339', '1', '2016-10-09 19:30:14', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('340', '1', '2016-10-09 19:32:17', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"vda123\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"\\u7ef4\\u8fbe\\u81ea\\u8425\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u7ef4\\u8fbe\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"020-85289921\",\"isSelf\":\"0\",\"goodsCatIds\":\"48\",\"accredIds\":\"\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fa2a9dba7c2.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"4\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"234234243234242\",\"bankUserName\":\"\\u6c34\\u7535\\u8d39\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('341', '1', '2016-10-09 19:32:17', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('342', '1', '2016-10-09 19:46:51', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('343', '1', '2016-10-09 19:47:22', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u7ef4\\u8fbe\",\"catId\":\"48\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fa2e3aeb270.png\",\"brandDesc\":\"\\u6211\\u662f\\u4e00\\u4e2a\\u7ef4\\u8fbe\\uff0cwstmart\\u4e0b\\u7684\\u7ef4\\u8fbe\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('344', '1', '2016-10-09 19:47:24', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('345', '1', '2016-10-09 21:03:01', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"weisheng\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"\\u4e50\\u5c45\\u5bb6\\u5177\\u65e5\\u7528\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u5546\\u6dd8\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"18902295525\",\"isSelf\":\"0\",\"goodsCatIds\":\"48\",\"accredIds\":\"1\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fa3fd1377e1.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"1\",\"invoiceRemarks\":\"\\u4ed4\\u7ec6\\u6838\\u5bf9\\uff0c\\u5f00\\u9519\\u65e0\\u8865\",\"shopAtive\":\"1\",\"freight\":\"0\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"23424234234\",\"bankUserName\":\"234\\u662f\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('346', '1', '2016-10-09 21:03:01', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('347', '1', '2016-10-09 21:03:18', '19', '查看会员等级', '/index.php/admin/userranks/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('348', '1', '2016-10-09 21:03:20', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('349', '1', '2016-10-09 21:20:13', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('350', '1', '2016-10-09 21:20:15', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('351', '1', '2016-10-09 21:20:36', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u5a01\\u9732\\u58eb\",\"catId\":\"48\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fa441b3131f.jpg\",\"brandDesc\":\"\\u5a01\\u9732\\u58eb wstmart\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('352', '1', '2016-10-09 21:20:37', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('353', '1', '2016-10-09 21:26:12', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('354', '1', '2016-10-09 21:30:02', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u84dd\\u6708\\u4eae\",\"catId\":\"48\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fa464b09db9.jpg\",\"brandDesc\":\"wstmart \\u84dd\\u6708\\u4eae\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('355', '1', '2016-10-09 21:30:03', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('356', '1', '2016-10-09 22:00:37', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u96d5\\u724c\",\"catId\":\"48\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fa4d66e1fe5.jpg\",\"brandDesc\":\"<p>\\n\\t\\u8fd9\\u662f\\u4e00\\u4e2awstmart\\u5f00\\u6e90\\u5546\\u57ce\\u7684\\u4e00\\u4e2a\\u5546\\u54c1\\u54c1\\u724c\\n<\\/p>\\n<p>\\n\\t\\u96d5\\u724c\\n<\\/p>\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('357', '1', '2016-10-09 22:00:39', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('358', '1', '2016-10-09 22:05:17', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('359', '1', '2016-10-09 22:05:29', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u5e8a\\u4e0a\\u7528\\u54c1\\u3001\\u73a9\\u5177\\u4e50\\u5668\",\"isShow\":\"0\",\"isFloor\":\"1\",\"catSort\":\"9\",\"id\":\"55\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('360', '1', '2016-10-09 22:05:59', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u5bb6\\u5c45\\u5bb6\\u7535\\u3001\\u53a8\\u5177\\u536b\\u6d74\",\"isShow\":\"0\",\"isFloor\":\"1\",\"catSort\":\"8\",\"id\":\"54\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('361', '1', '2016-10-09 22:06:38', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u865a\\u62df\\u670d\\u52a1\\u3001\\u4f18\\u60e0\\u7968\\u5238\",\"isShow\":\"0\",\"isFloor\":\"1\",\"catSort\":\"12\",\"id\":\"56\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('362', '1', '2016-10-09 22:06:45', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u56fe\\u4e66\\u97f3\\u50cf\\u3001\\u7535\\u5b50\\u4e66\\u7c4d\",\"isShow\":\"0\",\"isFloor\":\"1\",\"catSort\":\"11\",\"id\":\"335\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('363', '1', '2016-10-09 22:07:46', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u4f11\\u95f2\\u98df\\u54c1\\u3001\\u8fdb\\u53e3\\u98df\\u54c1\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"7\",\"id\":\"52\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('364', '1', '2016-10-09 22:07:57', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('365', '1', '2016-10-09 22:08:21', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u5bb6\\u5c45\\u5bb6\\u7535\\u3001\\u53a8\\u5177\\u536b\\u6d74\",\"isShow\":\"0\",\"isFloor\":\"1\",\"catSort\":\"6\",\"id\":\"54\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('366', '1', '2016-10-09 22:09:47', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u624b\\u673a\\u6570\\u7801\\u3001\\u5bb6\\u7528\\u7535\\u5668\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"6\",\"id\":\"334\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('367', '1', '2016-10-09 22:09:59', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u8425\\u517b\\u4fdd\\u5065\\u3001\\u8c03\\u7406\\u7528\\u54c1\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"7\",\"id\":\"53\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('368', '1', '2016-10-09 22:11:26', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('369', '1', '2016-10-09 22:11:44', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('370', '1', '2016-10-09 22:12:11', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21fbd3926.png\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2025-10-16\",\"adSort\":\"821\",\"adId\":\"57\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('371', '1', '2016-10-09 22:12:11', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('372', '1', '2016-10-09 22:12:28', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21c496471.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2026-10-09\",\"adSort\":\"822\",\"adId\":\"56\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('373', '1', '2016-10-09 22:12:28', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('374', '1', '2016-10-09 22:19:28', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"20\",\"adName\":\"6F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa51e7d6566.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2027-10-01\",\"adSort\":\"610\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('375', '1', '2016-10-09 22:19:28', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('376', '1', '2016-10-09 22:22:01', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"26\",\"adName\":\"8F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa527d608c9.jpeg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2026-10-31\",\"adSort\":\"810\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('377', '1', '2016-10-09 22:22:01', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('378', '1', '2016-10-09 22:25:57', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('379', '1', '2016-10-10 09:47:07', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('380', '1', '2016-10-10 09:47:18', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('381', '1', '2016-10-10 09:49:39', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('382', '1', '2016-10-10 09:53:49', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"jiushui\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"wstmart\\u9152\\u6c34\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u9152\\u6c34\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"18902295525\",\"isSelf\":\"0\",\"goodsCatIds\":\"49\",\"accredIds\":\"\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57faf4a944a87.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"0\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"234242322\",\"bankUserName\":\"\\u6492\\u65e6\\u6cd5\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('383', '1', '2016-10-10 09:53:50', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('384', '1', '2016-10-10 09:57:18', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('385', '1', '2016-10-10 09:57:41', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u9752\\u5c9b\\u5564\\u9152\",\"catId\":\"49\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57faf58d010f9.jpg\",\"brandDesc\":\"wstmart\\u9752\\u5c9b\\u5564\\u9152\\u54c1\\u724c\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('386', '1', '2016-10-10 09:57:43', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('387', '1', '2016-10-10 10:49:35', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"liangyou\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"wstmart\\u7cae\\u6cb9\\u98df\\u54c1\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u7cae\\u6cb9\\u98df\\u54c1\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"020-85289921\",\"isSelf\":\"0\",\"goodsCatIds\":\"49\",\"accredIds\":\"\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fb0185b1d6d.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"0\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2423234242\",\"bankUserName\":\"\\u7684\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('388', '1', '2016-10-10 10:49:36', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('389', '1', '2016-10-10 10:51:32', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('390', '1', '2016-10-10 10:52:04', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u5bb6\\u5c45\\u5bb6\\u7535\\u3001\\u53a8\\u5177\\u536b\\u6d74\",\"isShow\":\"1\",\"isFloor\":\"0\",\"catSort\":\"6\",\"id\":\"54\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('391', '1', '2016-10-10 11:02:06', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('392', '1', '2016-10-10 11:02:58', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb04e076255.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2024-10-31\",\"adSort\":\"820\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('393', '1', '2016-10-10 11:02:58', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('394', '1', '2016-10-10 11:03:44', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"24\",\"adName\":\"7F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb04e076255.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2024-10-31\",\"adSort\":\"720\",\"adId\":\"60\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('395', '1', '2016-10-10 11:03:45', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('396', '1', '2016-10-10 11:11:48', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"23\",\"adName\":\"7F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb06e78dd85.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2025-10-31\",\"adSort\":\"710\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('397', '1', '2016-10-10 11:11:48', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('398', '1', '2016-10-10 11:12:39', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"24\",\"adName\":\"7F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21fbd3926.png\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2025-10-16\",\"adSort\":\"721\",\"adId\":\"57\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('399', '1', '2016-10-10 11:12:39', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('400', '1', '2016-10-10 11:13:00', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"24\",\"adName\":\"7F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fa21c496471.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2026-10-09\",\"adSort\":\"722\",\"adId\":\"56\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('401', '1', '2016-10-10 11:13:00', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('402', '1', '2016-10-10 11:15:29', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('403', '1', '2016-10-10 11:20:16', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\",\"mallSlogan\":\"\\u591a\\u5546\\u6237\\u5546\\u57ce\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"\",\"visitStatistics\":\"\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb08d8a1b20.png\",\"watermarkPosition\":\"9\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('404', '1', '2016-10-10 11:23:55', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\",\"mallSlogan\":\"\\u591a\\u5546\\u6237\\u5546\\u57ce\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"\",\"visitStatistics\":\"\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb08d8a1b20.png\",\"watermarkPosition\":\"9\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('405', '1', '2016-10-10 11:28:14', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('406', '1', '2016-10-10 11:29:04', '24', '编辑商品分类', '/index.php/admin/goodscats/edit.html', '{\"catName\":\"\\u8425\\u517b\\u4fdd\\u5065\\u3001\\u8c03\\u7406\\u7528\\u54c1\",\"isShow\":\"1\",\"isFloor\":\"1\",\"catSort\":\"8\",\"id\":\"53\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('407', '1', '2016-10-10 12:21:53', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('408', '1', '2016-10-10 14:47:15', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('409', '1', '2016-10-10 14:50:07', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"songshu\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"wstmart\\u4e09\\u53ea\\u677e\\u9f20\\u5b98\\u65b9\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u677e\\u9f20\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"020-85289921\",\"isSelf\":\"0\",\"goodsCatIds\":\"52\",\"accredIds\":\"1,2\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fb39ff7f5e2.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"0\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"242342423\",\"bankUserName\":\"4\\u963f\\u8428\\u6cd5\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('410', '1', '2016-10-10 14:50:07', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('411', '1', '2016-10-10 14:58:52', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('412', '1', '2016-10-10 14:59:47', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('413', '1', '2016-10-10 15:32:22', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('414', '1', '2016-10-10 15:32:25', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('415', '1', '2016-10-10 15:32:49', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('416', '1', '2016-10-10 15:32:53', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('417', '1', '2016-10-10 15:32:55', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('418', '1', '2016-10-10 15:32:57', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('419', '1', '2016-10-10 15:32:58', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('420', '1', '2016-10-10 15:33:08', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('421', '1', '2016-10-10 15:33:10', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('422', '1', '2016-10-10 15:33:19', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('423', '1', '2016-10-10 15:33:33', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('424', '1', '2016-10-10 15:33:38', '12', '查看支付管理', '/index.php/admin/payments/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('425', '1', '2016-10-10 15:33:41', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('426', '1', '2016-10-10 15:35:24', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('427', '1', '2016-10-10 15:38:59', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\",\"mallSlogan\":\"\\u591a\\u5546\\u6237\\u5546\\u57ce\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"\",\"visitStatistics\":\"\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb458fd41a1.png\",\"watermarkPosition\":\"9\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('428', '1', '2016-10-10 15:39:52', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('429', '1', '2016-10-10 15:52:40', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('430', '1', '2016-10-10 15:52:43', '30', '查看文章分类', '/index.php/admin/articlecats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('431', '1', '2016-10-10 15:52:55', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('432', '1', '2016-10-10 15:53:07', '33', '查看已上架商品', '/index.php/admin/goods/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('433', '1', '2016-10-10 16:04:43', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('434', '1', '2016-10-10 16:07:38', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"sisley\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"Sisley\\u5e0c\\u601d\\u9ece\\u56fd\\u9645\\u4e13\\u8425\\u5e97\",\"shopkeeper\":\"\\u5e0c\\u601d\\u9ece\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"020-85289921\",\"isSelf\":\"0\",\"goodsCatIds\":\"51\",\"accredIds\":\"1,2\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fb4c1a9d7f8.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"0\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"324242323\",\"bankUserName\":\"\\u53d1\\u9001\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('435', '1', '2016-10-10 16:07:39', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('436', '1', '2016-10-10 16:12:38', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('437', '1', '2016-10-10 16:13:04', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"Sisley\\u5e0c\\u601d\\u9ece\",\"catId\":\"51\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fb4d8bb8c72.jpg\",\"brandDesc\":\"<h1 style=\\\"font-size:16px;font-family:\'microsoft yahei\';background-color:#FFFFFF;\\\">\\n\\tSisley\\u5e0c\\u601d\\u9ece\\n<\\/h1>\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('438', '1', '2016-10-10 16:13:06', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('439', '1', '2016-10-10 16:19:23', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('440', '1', '2016-10-10 16:19:24', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('441', '1', '2016-10-10 16:19:32', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('442', '1', '2016-10-10 16:19:51', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\",\"mallSlogan\":\"\\u591a\\u5546\\u6237\\u5546\\u57ce\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"\",\"visitStatistics\":\"\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb4f245a0c8.png\",\"watermarkPosition\":\"9\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('443', '1', '2016-10-10 16:44:26', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('444', '1', '2016-10-10 16:44:55', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('445', '1', '2016-10-10 16:51:08', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u798f\\u4e34\\u95e8\",\"catId\":\"50\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fb5673dadba.jpg\",\"brandDesc\":\"\\u798f\\u4e34\\u95e8\\u82b1\\u751f\\u6cb9\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('446', '1', '2016-10-10 16:51:10', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('447', '1', '2016-10-10 16:51:47', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u9c81\\u82b1\\u82b1\\u751f\\u6cb9\",\"catId\":\"50\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fb56967f5c0.jpg\",\"brandDesc\":\"\\u9c81\\u82b1\\u82b1\\u751f\\u6cb9 wstmart\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('448', '1', '2016-10-10 16:51:48', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('449', '1', '2016-10-10 16:52:07', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u91d1\\u9f99\\u9c7c\",\"catId\":\"50\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fb56b259418.jpg\",\"brandDesc\":\"\\u91d1\\u9f99\\u9c7c\",\"id\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('450', '1', '2016-10-10 16:52:08', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('451', '1', '2016-10-10 17:55:18', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('452', '1', '2016-10-10 17:56:13', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"15\",\"adName\":\"4F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb65a7e20ce.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2025-10-31\",\"adSort\":\"420\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('453', '1', '2016-10-10 17:56:13', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('454', '1', '2016-10-10 18:18:53', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb6b01a8f8e.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2023-10-31\",\"adSort\":\"\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('455', '1', '2016-10-10 18:18:54', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('456', '1', '2016-10-10 18:19:48', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('457', '1', '2016-10-10 18:20:26', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('458', '1', '2016-10-10 18:20:45', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"7\",\"adName\":\"2F\\u5934\\u90e8\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57f9c17be159b.gif\",\"adURL\":\"\",\"adStartDate\":\"2016-09-09\",\"adEndDate\":\"2017-09-30\",\"adSort\":\"200\",\"adId\":\"19\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('459', '1', '2016-10-10 18:20:45', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('460', '1', '2016-10-10 18:21:50', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb6ba58726e.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2025-10-31\",\"adSort\":\"821\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('461', '1', '2016-10-10 18:21:50', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('462', '1', '2016-10-10 18:29:35', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('463', '1', '2016-10-10 18:29:35', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('464', '1', '2016-10-10 18:29:54', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb6ba58726e.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2025-10-31\",\"adSort\":\"822\",\"adId\":\"64\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('465', '1', '2016-10-10 18:29:54', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('466', '1', '2016-10-10 18:30:30', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb6dad94d5a.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2026-10-10\",\"adSort\":\"821\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('467', '1', '2016-10-10 18:30:30', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('468', '1', '2016-10-10 18:42:52', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"20\",\"adName\":\"6F\\u5de6\\u4fa7\\u5e7f\\u544a\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb70aad10f3.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-09\",\"adEndDate\":\"2027-10-01\",\"adSort\":\"610\",\"adId\":\"58\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('469', '1', '2016-10-10 18:42:52', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('470', '1', '2016-10-10 18:45:40', '11', '修改广告', '/index.php/admin/Ads/edit.html', '{\"positionType\":\"1\",\"adPositionId\":\"27\",\"adName\":\"8F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb71524840f.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2025-10-31\",\"adSort\":\"822\",\"adId\":\"64\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('471', '1', '2016-10-10 18:45:40', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('472', '1', '2016-10-10 18:47:18', '42', '查看广告位置', '/index.php/admin/adpositions/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('473', '1', '2016-10-10 18:53:06', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('474', '1', '2016-10-10 18:53:08', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('475', '1', '2016-10-10 18:53:09', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('476', '1', '2016-10-10 18:53:10', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('477', '1', '2016-10-10 18:53:12', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('478', '1', '2016-10-10 18:53:21', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('479', '1', '2016-10-10 18:54:11', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('480', '1', '2016-10-10 18:54:14', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('481', '1', '2016-10-10 18:54:17', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('482', '1', '2016-10-10 18:54:18', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('483', '1', '2016-10-10 18:54:23', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('484', '1', '2016-10-10 18:54:28', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('485', '1', '2016-10-10 18:54:31', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('486', '1', '2016-10-10 18:55:26', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('487', '1', '2016-10-10 18:55:28', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('488', '1', '2016-10-10 18:55:29', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('489', '1', '2016-10-10 18:55:31', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('490', '1', '2016-10-10 18:55:32', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('491', '1', '2016-10-10 18:55:33', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('492', '1', '2016-10-10 18:55:35', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('493', '1', '2016-10-10 18:55:36', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('494', '1', '2016-10-10 19:00:20', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('495', '1', '2016-10-10 19:00:54', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"15\",\"adName\":\"4F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fb74d98fbdb.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-10\",\"adEndDate\":\"2026-10-10\",\"adSort\":\"423\",\"adId\":\"0\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('496', '1', '2016-10-10 19:00:55', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('497', '1', '2016-10-10 19:02:19', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('498', '1', '2016-10-10 19:02:21', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('499', '1', '2016-10-10 19:02:22', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('500', '1', '2016-10-10 19:02:24', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('501', '1', '2016-10-10 19:02:27', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('502', '1', '2016-10-10 19:02:28', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('503', '1', '2016-10-10 19:02:31', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('504', '1', '2016-10-10 19:02:32', '55', '查看违规商品', '/index.php/admin/goods/illegalIndex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('505', '1', '2016-10-10 19:02:37', '54', '查看待审核商品', '/index.php/admin/goods/auditIndex.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('506', '1', '2016-10-10 19:02:39', '33', '查看已上架商品', '/index.php/admin/goods/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('507', '1', '2016-10-10 19:02:52', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('508', '1', '2016-10-10 19:04:01', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('509', '1', '2016-10-10 19:05:50', '7', '查看操作日志', '/admin/logoperates/index.html', '{\"\\/admin\\/logoperates\\/index_html\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('510', '1', '2016-10-10 19:05:56', '6', '查看登录日志', '/admin/LogStaffLogins/index.html', '{\"\\/admin\\/LogStaffLogins\\/index_html\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('511', '1', '2016-10-10 19:06:01', '5', '查看职员管理', '/admin/staffs/index.html', '{\"\\/admin\\/staffs\\/index_html\":\"\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('512', '1', '2016-10-10 19:15:34', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"aodisite\",\"loginPwd\":\"test123\",\"shopSn\":\"\",\"shopName\":\"\\u5965\\u8482\\u65af\\u7279\\u4fdd\\u5065\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u5965\\u8482\\u65af\\u7279\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"020-85289921\",\"isSelf\":\"0\",\"goodsCatIds\":\"53\",\"accredIds\":\"1,2\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fb77a90c799.png\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"0\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343423432\",\"bankUserName\":\"\\u662f\\u7684\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('513', '1', '2016-10-10 19:15:34', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('514', '1', '2016-10-10 19:39:59', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('515', '1', '2016-10-10 19:40:00', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('516', '1', '2016-10-10 19:40:01', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('517', '1', '2016-10-10 19:40:02', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('518', '1', '2016-10-10 20:12:48', '11', '删除广告', '/index.php/admin/Ads/del.html', '{\"id\":\"48\"}', '116.22.12.172');
INSERT INTO `tc_log_operates` VALUES ('519', '1', '2016-10-11 09:14:26', '9', '查看商城配置', '/admin/sysconfigs/index.html', '{\"\\/admin\\/sysconfigs\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('520', '1', '2016-10-11 09:14:42', '41', '查看商城消息', '/admin/messages/index.html', '{\"\\/admin\\/messages\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('521', '1', '2016-10-11 09:16:56', '41', '查看商城消息', '/admin/messages/index.html', '{\"\\/admin\\/messages\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('522', '1', '2016-10-11 09:17:21', '41', '查看商城消息', '/admin/messages/index.html', '{\"\\/admin\\/messages\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('523', '1', '2016-10-11 09:18:46', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('524', '1', '2016-10-11 09:19:59', '41', '发送商城消息', '/index.php/admin/messages/add.html', '{\"sendType\":\"users\",\"htarget\":\"\",\"msgContent\":\"testsetffs<span style=\\\"color:#FF9900;\\\">dfsdfsdf<\\/span>dsfs<span style=\\\"background-color:#CC33E5;\\\">dfsd<img src=\\\"\\/upload\\/image\\/20161011\\/20161011031957_43027.jpg\\\" alt=\\\"\\\" \\/><\\/span>\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('525', '1', '2016-10-11 09:29:43', '34', '查看评价管理', '/index.php/admin/goodsappraises/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('526', '1', '2016-10-11 09:33:41', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('527', '1', '2016-10-11 09:33:43', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('528', '1', '2016-10-11 09:33:45', '55', '查看违规商品', '/index.php/admin/goods/illegalIndex.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('529', '1', '2016-10-11 09:33:46', '48', '查看商品属性', '/index.php/admin/attributes/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('530', '1', '2016-10-11 09:33:46', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('531', '1', '2016-10-11 09:33:47', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('532', '1', '2016-10-11 09:33:50', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('533', '1', '2016-10-11 09:33:51', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('534', '1', '2016-10-11 09:33:52', '32', '查看商品规格', '/index.php/admin/speccats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('535', '1', '2016-10-11 09:33:53', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('536', '1', '2016-10-11 09:34:07', '7', '查看操作日志', '/admin/logoperates/index.html', '{\"\\/admin\\/logoperates\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('537', '1', '2016-10-11 09:34:22', '6', '查看登录日志', '/admin/LogStaffLogins/index.html', '{\"\\/admin\\/LogStaffLogins\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('538', '1', '2016-10-11 09:34:24', '7', '查看操作日志', '/admin/logoperates/index.html', '{\"\\/admin\\/logoperates\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('539', '1', '2016-10-11 11:41:26', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('540', '1', '2016-10-11 11:55:36', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('541', '1', '2016-10-11 12:12:46', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('542', '1', '2016-10-11 12:13:19', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"21\",\"adName\":\"6F\\u53f3\\u4fa7\\u5e7f\\u544a1\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fc66d54a25c.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-11\",\"adEndDate\":\"2032-10-01\",\"adSort\":\"620\",\"adId\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('543', '1', '2016-10-11 12:13:19', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('544', '1', '2016-10-11 12:13:55', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"21\",\"adName\":\"6F\\u53f3\\u4fa7\\u5e7f\\u544a2\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fc66f0e2c75.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-11\",\"adEndDate\":\"2028-10-19\",\"adSort\":\"621\",\"adId\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('545', '1', '2016-10-11 12:13:55', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('546', '1', '2016-10-11 12:14:29', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"21\",\"adName\":\"6F\\u53f3\\u4fa7\\u5e7f\\u544a3\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fc671fa9a19.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-11\",\"adEndDate\":\"2026-10-11\",\"adSort\":\"622\",\"adId\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('547', '1', '2016-10-11 12:14:29', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('548', '1', '2016-10-11 12:14:53', '11', '新增广告', '/index.php/admin/Ads/add.html', '{\"positionType\":\"1\",\"adPositionId\":\"21\",\"adName\":\"6F\\u53f3\\u4fa7\\u5e7f\\u544a4\",\"adFile\":\"upload\\/adspic\\/2016-10\\/57fc67352f983.jpg\",\"adURL\":\"\",\"adStartDate\":\"2016-10-11\",\"adEndDate\":\"2026-10-11\",\"adSort\":\"623\",\"adId\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('549', '1', '2016-10-11 12:14:53', '11', '查看广告管理', '/index.php/Admin/Ads/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('550', '1', '2016-10-11 12:16:28', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('551', '1', '2016-10-11 14:17:34', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('552', '1', '2016-10-11 14:17:48', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('553', '1', '2016-10-11 14:18:16', '25', '编辑品牌', '/index.php/admin/brands/edit.html', '{\"brandName\":\"\\u534e\\u4e3a\",\"catId\":\"334\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57f860e20d7ae.jpg\",\"brandDesc\":\"\\u534e\\u4e3a \\u662f\\u534e\\u4e3a\\u516c\\u53f8\\u65d7\\u4e0b\\u7684\\u4e00\\u6b3e\\u624b\\u673a\\u54c1\\u724c\",\"id\":\"1\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('554', '1', '2016-10-11 14:18:17', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('555', '1', '2016-10-11 14:19:28', '25', '新增品牌', '/index.php/admin/brands/add.html', '{\"brandName\":\"\\u534e\\u4e3a\\u8363\\u8000\",\"catId\":\"334\",\"brandImg\":\"upload\\/brands\\/2016-10\\/57fc8462e16f3.jpg\",\"brandDesc\":\"\\u8363\\u8000\\uff0c\\u534e\\u4e3a\\u624b\\u673a\\u5b50\\u54c1\\u724c\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('556', '1', '2016-10-11 14:19:30', '25', '查看品牌管理', '/index.php/admin/brands/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('557', '1', '2016-10-11 14:20:23', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('558', '1', '2016-10-11 14:25:23', '46', '新增店铺', '/index.php/admin/shops/add.html', '{\"shopId\":\"0\",\"applyId\":\"0\",\"loginName\":\"honor1\",\"loginPwd\":\"tes123\",\"shopSn\":\"\",\"shopName\":\"\\u534e\\u4e3a\\u8363\\u8000\\u65d7\\u8230\\u5e97\",\"shopkeeper\":\"\\u8363\\u8000\",\"telephone\":\"18902295525\",\"shopCompany\":\"\\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"shopTel\":\"020-85289921\",\"isSelf\":\"0\",\"goodsCatIds\":\"334\",\"accredIds\":\"1\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fc85b7c6bb4.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"0\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"3242323423423\",\"bankUserName\":\"\\u963f\\u8428\\u5fb7\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('559', '1', '2016-10-11 14:25:24', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('560', '1', '2016-10-11 14:26:11', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('561', '1', '2016-10-11 14:26:13', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('562', '1', '2016-10-11 16:03:53', '30', '查看文章分类', '/index.php/admin/articlecats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('563', '1', '2016-10-11 16:03:54', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('564', '1', '2016-10-11 16:04:26', '31', '新增文章', '/index.php/admin/articles/add.html', '{\"articleTitle\":\"WSTMart\\u5546\\u57ce\\u5feb\\u8baf\",\"catId\":\"6\",\"isShow\":\"1\",\"articleKey\":\"WSTMart\\u5546\\u57ce\\u5feb\\u8baf\",\"articleContent\":\"wstmart\\u5546\\u57ce\\u6b63\\u5f0f\\u8fd0\\u8425\\u4e86\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('565', '1', '2016-10-11 16:04:27', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('566', '1', '2016-10-11 16:04:56', '31', '编辑文章', '/index.php/admin/articles/edit.html', '{\"articleTitle\":\"WSTMart\\u5546\\u57ce\\u5feb\\u8baf\",\"catId\":\"11\",\"isShow\":\"1\",\"articleKey\":\"WSTMart\\u5546\\u57ce\\u5feb\\u8baf\",\"articleContent\":\"wstmart\\u5546\\u57ce\\u6b63\\u5f0f\\u8fd0\\u8425\\u4e86\",\"id\":\"24\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('567', '1', '2016-10-11 16:04:57', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('568', '1', '2016-10-11 16:05:04', '30', '查看文章分类', '/index.php/admin/articlecats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('569', '1', '2016-10-11 16:05:24', '30', '编辑文章分类', '/index.php/admin/articlecats/edit.html', '{\"catName\":\"\\u5546\\u57ce\\u5feb\\u8baf\",\"isShow\":\"1\",\"catSort\":\"4\",\"id\":\"8\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('570', '1', '2016-10-11 16:05:44', '30', '编辑文章分类', '/index.php/admin/articlecats/edit.html', '{\"catName\":\"\\u5546\\u57ce\\u516c\\u544a\",\"isShow\":\"1\",\"catSort\":\"0\",\"id\":\"11\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('571', '1', '2016-10-11 16:05:58', '30', '编辑文章分类', '/index.php/admin/articlecats/edit.html', '{\"catName\":\"\\u4fc3\\u9500\\u4fe1\\u606f\",\"isShow\":\"1\",\"catSort\":\"0\",\"id\":\"12\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('572', '1', '2016-10-11 16:06:01', '30', '查看文章分类', '/index.php/admin/articlecats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('573', '1', '2016-10-11 16:06:02', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('574', '1', '2016-10-11 16:06:36', '14', '查看友情链接', '/index.php/admin/friendlinks/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('575', '1', '2016-10-11 16:06:58', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('576', '1', '2016-10-11 16:08:02', '31', '新增文章', '/index.php/admin/articles/add.html', '{\"articleTitle\":\"\\u53cc11 wstmart\\u5546\\u57ce\\u7ea6\\u5b9a\\u4f60\",\"catId\":\"12\",\"isShow\":\"1\",\"articleKey\":\"wstmart\\u591a\\u7528\\u6237\\u5546\\u57ce\",\"articleContent\":\"wstmart\\u591a\\u7528\\u6237\\u5546\\u57ce\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('577', '1', '2016-10-11 16:08:04', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('578', '1', '2016-10-11 16:09:07', '31', '编辑文章', '/index.php/admin/articles/edit.html', '{\"articleTitle\":\"\\u9519\\u4e86\\u8fd9\\u4e2a\\u6751 \\u6ca1\\u4e86\\u8fd9\\u4e2a\\u5e97\",\"catId\":\"12\",\"isShow\":\"1\",\"articleKey\":\"wstmart\\u5546\\u57ce\\u5feb\\u8baf\",\"articleContent\":\"\\u4e2d\\u79cb\\uff0cwstmart\\u5546\\u57ce\\u5927\\u95f8\\u87f9\\u5f00\\u653e\\u4e86\",\"id\":\"23\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('579', '1', '2016-10-11 16:09:08', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('580', '1', '2016-10-11 16:09:52', '31', '编辑文章', '/index.php/admin/articles/edit.html', '{\"articleTitle\":\"wstmart\\u5546\\u57ce\\uff0c\\u56fd\\u5e86\\u4fc3\\u9500\",\"catId\":\"11\",\"isShow\":\"1\",\"articleKey\":\"wstmart\\u5546\\u57ce\",\"articleContent\":\"wstmart\\u5546\\u57ce\\uff0c\\u56fd\\u5e86\\u4fc3\\u9500\\u4e86\\uff0c\\u6765\\u770b\\u770b\\u5427\",\"id\":\"22\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('581', '1', '2016-10-11 16:09:53', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('582', '1', '2016-10-11 16:10:43', '31', '编辑文章', '/index.php/admin/articles/edit.html', '{\"articleTitle\":\"wstmart\\u5546\\u57ce\\u4e0a\\u7ebf\\u4e86\",\"catId\":\"11\",\"isShow\":\"1\",\"articleKey\":\"wstmart\\u5546\\u57ce\",\"articleContent\":\"wstmart\\u591a\\u7528\\u6237\\u5546\\u57ce\\u4e0a\\u7ebf\\u4e86\\uff0c\\u53d1\\u8a00\\u4e00\\u4e0b\",\"id\":\"21\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('583', '1', '2016-10-11 16:10:44', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('584', '1', '2016-10-11 16:12:09', '31', '新增文章', '/index.php/admin/articles/add.html', '{\"articleTitle\":\"\\u5546\\u6dd8\\u8f6f\\u4ef6\\u591a\\u7528\\u6237\\u5546\\u57ce\\u53d1\\u5e03\",\"catId\":\"11\",\"isShow\":\"1\",\"articleKey\":\"\\u5546\\u6dd8\\u8f6f\\u4ef6,WSTMart\\u591a\\u7528\\u6237\\u5546\\u57ce\",\"articleContent\":\"\\u5546\\u6dd8\\u8f6f\\u4ef6WSTMart\\u591a\\u7528\\u6237\\u5546\\u57ce\\u53d1\\u5e03\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('585', '1', '2016-10-11 16:12:10', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('586', '1', '2016-10-11 17:05:43', '42', '查看广告位置', '/admin/adpositions/index.html', '{\"\\/admin\\/adpositions\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('587', '1', '2016-10-11 17:05:46', '11', '查看广告管理', '/admin/ads/index.html', '{\"\\/admin\\/ads\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('588', '1', '2016-10-11 17:06:02', '11', '查看广告管理', '/admin/ads/index.html', '{\"\\/admin\\/ads\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('589', '1', '2016-10-11 17:06:21', '11', '查看广告管理', '/admin/ads/index.html', '{\"\\/admin\\/ads\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('590', '1', '2016-10-12 17:50:26', '16', '查看地区管理', '/index.php/admin/areas/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('591', '1', '2016-10-12 17:50:35', '16', '查看地区管理', '/index.php/admin/areas/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('592', '1', '2016-10-12 17:50:38', '16', '查看地区管理', '/index.php/admin/areas/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('593', '1', '2016-10-12 17:50:59', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('594', '1', '2016-10-12 17:53:09', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\\u7535\\u5b50\\u5546\\u52a1\\u7cfb\\u7edf\",\"mallSlogan\":\"\\u6700\\u6613\\u7528\\u7684\\u591a\\u7528\\u6237\\u5546\\u57ce\\u7cfb\\u7edf\\uff01\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"\\u5e95\\u90e8\\u8bbe\\u7f6e\\u5185\\u5bb9\",\"visitStatistics\":\"<script language=\\\"javascript\\\" type=\\\"text\\/javascript\\\" src=\\\"http:\\/\\/js.users.51.la\\/19000537.js\\\"><\\/script>\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkPosition\":\"9\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb4f245a0c8.png\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('595', '1', '2016-10-12 17:54:35', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\\u7535\\u5b50\\u5546\\u52a1\\u7cfb\\u7edf\",\"mallSlogan\":\"\\u6700\\u6613\\u7528\\u7684\\u591a\\u7528\\u6237\\u5546\\u57ce\\u7cfb\\u7edf\\uff01\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"CROPYRIGHT 2013-2015 \\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 \\u7535\\u8bdd\\uff1a020-85289921\\n\\u516c\\u53f8\\u90ae\\u7bb1\\uff1awstmart@qq.com \\u5ba2\\u670dQQ:153289970  \\u7ca4ICP\\u590712082267\\u53f7-4\\n\\u6211\\u4eec\\u613f\\u4e0e\\u66f4\\u591a\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u4e00\\u8d77\\u52aa\\u529b\\uff0c\\u4e00\\u8d77\\u6210\\u529f We Success together\",\"visitStatistics\":\"<script language=\\\"javascript\\\" type=\\\"text\\/javascript\\\" src=\\\"http:\\/\\/js.users.51.la\\/19000537.js\\\"><\\/script>\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkPosition\":\"9\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb4f245a0c8.png\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('596', '1', '2016-10-12 17:55:55', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\\u7535\\u5b50\\u5546\\u52a1\\u7cfb\\u7edf\",\"mallSlogan\":\"\\u6700\\u6613\\u7528\\u7684\\u591a\\u7528\\u6237\\u5546\\u57ce\\u7cfb\\u7edf\\uff01\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"<br>CROPYRIGHT 2013-2015 \\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 \\u7535\\u8bdd\\uff1a020-85289921<br\\/>\\n<br>\\u516c\\u53f8\\u90ae\\u7bb1\\uff1awstmart@qq.com \\u5ba2\\u670dQQ:153289970  \\u7ca4ICP\\u590712082267\\u53f7-4<br\\/>\\n<br>\\u6211\\u4eec\\u613f\\u4e0e\\u66f4\\u591a\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u4e00\\u8d77\\u52aa\\u529b\\uff0c\\u4e00\\u8d77\\u6210\\u529f We Success together<br\\/>\",\"visitStatistics\":\"<script language=\\\"javascript\\\" type=\\\"text\\/javascript\\\" src=\\\"http:\\/\\/js.users.51.la\\/19000537.js\\\"><\\/script>\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkPosition\":\"9\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb4f245a0c8.png\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('597', '1', '2016-10-12 17:57:24', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\\u7535\\u5b50\\u5546\\u52a1\\u7cfb\\u7edf\",\"mallSlogan\":\"\\u6700\\u6613\\u7528\\u7684\\u591a\\u7528\\u6237\\u5546\\u57ce\\u7cfb\\u7edf\\uff01\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"CROPYRIGHT 2013-2015 \\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 \\u7535\\u8bdd\\uff1a020-85289921<br\\/>\\n\\u516c\\u53f8\\u90ae\\u7bb1\\uff1awstmart@qq.com \\u5ba2\\u670dQQ:153289970  \\u7ca4ICP\\u590712082267\\u53f7-4<br\\/>\\n\\u6211\\u4eec\\u613f\\u4e0e\\u66f4\\u591a\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u4e00\\u8d77\\u52aa\\u529b\\uff0c\\u4e00\\u8d77\\u6210\\u529f We Success together\",\"visitStatistics\":\"<script language=\\\"javascript\\\" type=\\\"text\\/javascript\\\" src=\\\"http:\\/\\/js.users.51.la\\/19000537.js\\\"><\\/script>\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkPosition\":\"9\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb4f245a0c8.png\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('598', '1', '2016-10-12 17:58:07', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\\u7535\\u5b50\\u5546\\u52a1\\u7cfb\\u7edf\",\"mallSlogan\":\"\\u6700\\u6613\\u7528\\u7684\\u591a\\u7528\\u6237\\u5546\\u57ce\\u7cfb\\u7edf\\uff01\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"\\u6211\\u4eec\\u613f\\u4e0e\\u66f4\\u591a\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u4e00\\u8d77\\u52aa\\u529b\\uff0c\\u4e00\\u8d77\\u6210\\u529f We Success together\",\"visitStatistics\":\"<script language=\\\"javascript\\\" type=\\\"text\\/javascript\\\" src=\\\"http:\\/\\/js.users.51.la\\/19000537.js\\\"><\\/script>\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkPosition\":\"9\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb4f245a0c8.png\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('599', '1', '2016-10-12 17:58:42', '9', '编辑商城配置', '/index.php/admin/sysconfigs/edit.html', '{\"mallName\":\"WSTMart\\u7535\\u5b50\\u5546\\u52a1\\u7cfb\\u7edf\",\"mallSlogan\":\"\\u6700\\u6613\\u7528\\u7684\\u591a\\u7528\\u6237\\u5546\\u57ce\\u7cfb\\u7edf\\uff01\",\"isGoodsVerify\":\"0\",\"mallFooter\":\"CROPYRIGHT 2013-2015 \\u5e7f\\u5dde\\u5546\\u6dd8\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709\",\"visitStatistics\":\"<script language=\\\"javascript\\\" type=\\\"text\\/javascript\\\" src=\\\"http:\\/\\/js.users.51.la\\/19000537.js\\\"><\\/script>\",\"serviceQQ\":\"153289970\",\"serviceTel\":\"020-85289921\",\"serviceEmail\":\"wstmart@qq.com\",\"hotWordsSearch\":\"WSTMart,b2c,\\u591a\\u5546\\u6237\",\"adsGoodsWordsSearch\":\"WSTMart\\u5546\\u54c1\",\"adsShopWordsSearch\":\"WSTMart\\u5e97\\u94fa\",\"registerLimitWords\":\"admin,system,fuck\",\"mailSmtp\":\"\",\"mailPort\":\"\",\"mailAuth\":\"1\",\"mailAddress\":\"\",\"mailUserName\":\"\",\"mailPassword\":\"\",\"mailSendTitle\":\"\",\"smsOpen\":\"1\",\"smsKey\":\"ee\",\"smsPass\":\"rrr\",\"smsLimit\":\"\",\"smsVerfy\":\"1\",\"isOpenScorePay\":\"0\",\"isOrderScore\":\"0\",\"isAppraisesScore\":\"0\",\"scoreCashRatio\":\"\",\"poundageRate\":\"\",\"settlementStartMoney\":\"\",\"autoReceiveDays\":\"\",\"autoAppraiseDays\":\"\",\"qqAppId\":\"\",\"qqAppKey\":\"\",\"wxAppId\":\"\",\"wxAppKey\":\"\",\"watermarkPosition\":\"9\",\"watermarkWord\":\"\",\"watermarkSize\":\"\",\"watermarkColor\":\"\",\"watermarkTtf\":\"\",\"watermarkFile\":\"upload\\/sysconfigs\\/2016-10\\/57fb4f245a0c8.png\",\"watermarkOpacity\":\"50\",\"mallLogo\":\"upload\\/mall\\/2016-09\\/57ec8f152fa6b.png\",\"shopLogo\":\"upload\\/mall\\/2016-09\\/57ece4b90745b.png\",\"userLogo\":\"upload\\/mall\\/2016-09\\/57ece4bd1a5d7.png\",\"goodsLogo\":\"upload\\/mall\\/2016-10\\/57f84a78432a1.png\",\"seoMallTitle\":\"WSTMall\",\"seoMallKeywords\":\"\",\"seoMallDesc\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('600', '1', '2016-10-13 10:44:01', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('601', '1', '2016-10-13 10:44:02', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('602', '1', '2016-10-13 10:44:03', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('603', '1', '2016-10-13 10:44:05', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('604', '1', '2016-10-13 10:44:59', '20', '查看会员管理', '/index.php/admin/users/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('605', '1', '2016-10-13 10:45:06', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('606', '1', '2016-10-13 10:47:27', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('607', '1', '2016-10-13 10:48:30', '46', '编辑店铺', '/index.php/admin/shops/edit.html', '{\"shopId\":\"1\",\"applyId\":\"0\",\"shopSn\":\"S000000001\",\"shopName\":\"WSTMart\\u81ea\\u8425\\u8d85\\u5e02\",\"shopkeeper\":\"wstmart\",\"telephone\":\"13888888888\",\"shopCompany\":\"WSTMart\\u81ea\\u8425\\u8d85\\u5e02\",\"shopTel\":\"13888888888\",\"isSelf\":\"1\",\"goodsCatIds\":\"47,48,49,50,51,54,334,52,53,55,335,56\",\"accredIds\":\"1,2\",\"shopImg\":\"upload\\/shops\\/2016-10\\/57fef5f9b7b02.jpg\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('608', '1', '2016-10-13 10:48:30', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('609', '1', '2016-10-13 12:55:04', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('610', '1', '2016-10-13 12:55:05', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('611', '1', '2016-10-13 12:55:05', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('612', '1', '2016-10-13 12:55:06', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('613', '1', '2016-10-13 12:55:08', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('614', '1', '2016-10-13 12:55:10', '41', '查看商城消息', '/index.php/admin/messages/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('615', '1', '2016-10-13 12:55:20', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('616', '1', '2016-10-13 12:55:22', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('617', '1', '2016-10-13 14:20:37', '11', '查看广告管理', '/index.php/admin/ads/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('618', '1', '2016-10-13 14:20:49', '10', '查看导航管理', '/index.php/admin/navs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('619', '1', '2016-10-13 14:21:05', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('620', '1', '2016-10-13 14:21:51', '16', '查看地区管理', '/index.php/admin/areas/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('621', '1', '2016-10-13 14:28:49', '41', '查看商城消息', '/admin/messages/index.html', '{\"\\/admin\\/messages\\/index_html\":\"\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('622', '1', '2016-10-13 17:14:50', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('623', '1', '2016-10-13 17:14:52', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('624', '1', '2016-10-13 18:06:05', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('625', '1', '2016-10-13 18:07:15', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('626', '1', '2016-10-13 18:07:50', '21', '编辑账号信息', '/index.php/admin/users/accountindex.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('627', '1', '2016-10-14 09:52:38', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('628', '1', '2016-10-14 09:52:44', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('629', '1', '2016-10-14 09:53:14', '4', '编辑角色', '/index.php/admin/roles/edit.html', '{\"roleId\":\"3\",\"roleName\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458\",\"roleDesc\":\"\",\"privileges\":\"SY_001,XTGL_00,CDGL_00,CDGL_01,CDGL_02,CDGL_03,QXGL_01,QXGL_02,QXGL_03,JSGL_00,JSGL_01,JSGL_02,JSGL_03,ZYGL_00,ZYGL_01,ZYGL_02,ZYGL_03,DLRZ_00,CZRZ_00,TPKJ_00,TPKJ_04,SCXX_00,SCXX_01,SCXX_03,SCSZ_00,DHGL_00,DHGL_01,DHGL_02,DHGL_03,ZFGL_00,ZFGL_02,ZFGL_03,YQGL_00,YQGL_01,YQGL_02,YQGL_03,GGWZ_00,GGWZ_01,GGWZ_02,GGWZ_03,SCPZ_00,SCPZ_02,GGGL_00,GGGL_01,GGGL_02,GGGL_03,YHGL_00,YHGL_01,YHGL_02,YHGL_03,DQGL_00,DQGL_01,DQGL_02,DQGL_03,QTCD_00,QTCD_01,QTCD_02,QTCD_03,KDGL_00,KDGL_01,KDGL_02,KDGL_03,HYSZ_00,HYDJ_00,HYDJ_01,HYDJ_02,HYDJ_03,ZHGL_00,ZHGL_02,HYGL_00,HYGL_01,HYGL_02,HYGL_03,WZSZ_00,WZGL_00,WZGL_01,WZGL_02,WZGL_03,WZFL_00,WZFL_01,WZFL_02,WZFL_03,SPTJ_00,SPTJ_04,DPTJ_00,DPTJ_04,PPTJ_00,PPTJ_04,DDGL_00,DDLB_00,TSDD_00,TKDD_00,DPXX_00,DPSZ_00,RZGL_00,RZGL_01,RZGL_02,RZGL_03,DPGL_00,DPGL_01,DPGL_02,DPGL_03,DPSQ_00,DPSQ_03,DPSQ_04,TYDP_00,SPXX_00,SPSZ_00,SJSP_00,SJSP_04,SJSP_03,DSHSP_00,DSHSP_04,WGSP_00,SPFL_00,SPFL_01,SPFL_02,SPFL_03,SPSX_00,PPGL_00,PPGL_01,PPGL_02,PPGL_03,SPGG_00,SPGG_01,SPGG_02,SPGG_03,PJGL_00,PJGL_02,PJGL_03\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('630', '1', '2016-10-14 09:53:15', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('631', '1', '2016-10-14 09:53:22', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('632', '1', '2016-10-14 09:55:05', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('633', '1', '2016-10-14 09:55:08', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('634', '1', '2016-10-14 09:57:49', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('635', '1', '2016-10-14 09:58:08', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('636', '1', '2016-10-14 09:58:26', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('637', '1', '2016-10-14 09:58:45', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('638', '1', '2016-10-14 09:58:46', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('639', '1', '2016-10-14 10:06:49', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u67e5\\u770b\\u8fd0\\u8425\\u7ba1\\u7406\",\"privilegeCode\":\"YYGL\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"56\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('640', '1', '2016-10-14 10:07:39', '3', '编辑权限', '/index.php/admin/privileges/edit.html', '{\"privilegeName\":\"\\u67e5\\u770b\\u9996\\u9875\",\"privilegeCode\":\"SY_001\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"#\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"1\",\"id\":\"35\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('641', '1', '2016-10-14 10:07:46', '3', '编辑权限', '/index.php/admin/privileges/edit.html', '{\"privilegeName\":\"\\u67e5\\u770b\\u7cfb\\u7edf\\u7ba1\\u7406\",\"privilegeCode\":\"XTGL_00\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"2\",\"id\":\"2\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('642', '1', '2016-10-14 10:08:16', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u67e5\\u770b\\u63a8\\u8350\\u7ba1\\u7406\",\"privilegeCode\":\"TJGL_00\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"57\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('643', '1', '2016-10-14 10:09:23', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u67e5\\u770b\\u8ba2\\u5355\\u7ba1\\u7406\",\"privilegeCode\":\"DDKZ_00\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"49\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('644', '1', '2016-10-14 10:10:07', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u5904\\u7406\\u6295\\u8bc9\\u8ba2\\u5355\",\"privilegeCode\":\"TSDD_04\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"51\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('645', '1', '2016-10-14 10:10:24', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u5904\\u7406\\u9000\\u6b3e\",\"privilegeCode\":\"TKDD\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"52\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('646', '1', '2016-10-14 10:10:32', '3', '编辑权限', '/index.php/admin/privileges/edit.html', '{\"privilegeName\":\"\\u5904\\u7406\\u9000\\u6b3e\",\"privilegeCode\":\"TKDD_04\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"52\",\"id\":\"164\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('647', '1', '2016-10-14 10:10:59', '47', '查看停用店铺', '/index.php/admin/shops/stopIndex.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('648', '1', '2016-10-14 10:13:15', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u65b0\\u589e\\u5546\\u54c1\\u5c5e\\u6027\",\"privilegeCode\":\"SPSX_01\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"48\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('649', '1', '2016-10-14 10:13:29', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u7f16\\u8f91\\u5546\\u54c1\\u5c5e\\u6027\",\"privilegeCode\":\"SPSX_02\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"48\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('650', '1', '2016-10-14 10:13:42', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u5220\\u9664\\u5546\\u54c1\\u5c5e\\u6027\",\"privilegeCode\":\"SPSX_03\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"48\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('651', '1', '2016-10-14 10:14:55', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u64cd\\u4f5c\\u8fdd\\u89c4\\u5546\\u54c1\",\"privilegeCode\":\"WGSP_04\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"55\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('652', '1', '2016-10-14 10:15:42', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u5220\\u9664\\u8fdd\\u89c4\\u5546\\u54c1\",\"privilegeCode\":\"WGSP_03\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"55\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('653', '1', '2016-10-14 10:16:34', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u7f16\\u8f91\\u505c\\u7528\\u5e97\\u94fa\",\"privilegeCode\":\"TYDP_02\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"47\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('654', '1', '2016-10-14 10:16:48', '3', '新增权限', '/index.php/admin/privileges/add.html', '{\"privilegeName\":\"\\u5220\\u9664\\u505c\\u7528\\u5e97\\u94fa\",\"privilegeCode\":\"TYDP_03\",\"isMenuPrivilege\":\"0\",\"privilegeUrl\":\"\",\"otherPrivilegeUrl\":\"\",\"menuId\":\"47\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('655', '1', '2016-10-14 10:18:19', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('656', '1', '2016-10-14 10:18:51', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('657', '1', '2016-10-14 10:19:50', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('658', '1', '2016-10-14 10:20:37', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('659', '1', '2016-10-14 10:20:45', '53', '查看快递管理', '/index.php/admin/express/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('660', '1', '2016-10-14 10:21:43', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('661', '1', '2016-10-14 10:22:39', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('662', '1', '2016-10-14 13:00:38', '24', '查看商品分类', '/index.php/admin/goodscats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('663', '1', '2016-10-14 13:00:50', '24', '新增商品分类', '/index.php/admin/goodscats/add.html', '{\"parentId\":\"71\",\"catName\":\"aaa\",\"isShow\":\"1\",\"isFloor\":\"0\",\"catSort\":\"32\",\"id\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('664', '1', '2016-10-14 13:01:33', '24', '删除商品分类', '/index.php/admin/goodscats/del.html', '{\"id\":\"365\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('665', '1', '2016-10-14 13:12:37', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('666', '1', '2016-10-14 14:41:11', '31', '查看文章管理', '/index.php/admin/articles/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('667', '1', '2016-10-14 14:41:13', '30', '查看文章分类', '/index.php/admin/articlecats/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('668', '1', '2016-10-14 14:58:14', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('669', '1', '2016-10-14 14:58:59', '43', '新增前台菜单', '/index.php/admin/homemenus/add.html', '{\"menuName\":\"\\u5f85\\u4ed8\\u6b3e\\u8ba2\\u5355\",\"menuUrl\":\"home\\/orders\\/waituserPayByPage\",\"menuOtherUrl\":\"home\\/orders\\/editOrderMoney,home\\/orders\\/view\",\"menuType\":\"1\",\"menuSort\":\"0\",\"isShow\":\"1\",\"menuId\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('670', '1', '2016-10-14 15:00:01', '43', '编辑前台菜单', '/index.php/admin/homemenus/edit.html', '{\"menuName\":\"\\u5f85\\u4ed8\\u6b3e\\u8ba2\\u5355\",\"menuUrl\":\"home\\/orders\\/waituserPay\",\"menuOtherUrl\":\"home\\/orders\\/waituserPayByPage,home\\/orders\\/editOrderMoney,home\\/orders\\/view\",\"menuType\":\"1\",\"menuSort\":\"0\",\"isShow\":\"1\",\"menuId\":\"55\",\"parentId\":\"0\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('671', '1', '2016-10-14 17:51:43', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('672', '1', '2016-10-14 17:52:04', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('673', '1', '2016-10-14 17:56:49', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('674', '1', '2016-10-14 17:59:43', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('675', '1', '2016-10-14 17:59:54', '46', '编辑店铺', '/index.php/admin/shops/edit.html', '{\"shopId\":\"1\",\"applyId\":\"0\",\"shopSn\":\"S000000001\",\"shopName\":\"WSTMart\\u81ea\\u8425\\u8d85\\u5e02\",\"shopkeeper\":\"wstmart\",\"telephone\":\"13888888888\",\"shopCompany\":\"WSTMart\\u81ea\\u8425\\u8d85\\u5e02\",\"shopTel\":\"13888888888\",\"isSelf\":\"1\",\"goodsCatIds\":\"47,48,49,50,51,54,334,52,53,55,335,56\",\"accredIds\":\"1,2\",\"shopImg\":\"upload\\/shops\\/2016-10\\/5800ac97d0c24.png\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('676', '1', '2016-10-14 17:59:55', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('677', '1', '2016-10-14 18:01:49', '46', '编辑店铺', '/index.php/admin/shops/edit.html', '{\"shopId\":\"1\",\"applyId\":\"0\",\"shopSn\":\"S000000001\",\"shopName\":\"WST\\u5546\\u57ce\\u81ea\\u8425\\u8d85\\u5e02\",\"shopkeeper\":\"wstmart\",\"telephone\":\"13888888888\",\"shopCompany\":\"WSTMart\\u81ea\\u8425\\u8d85\\u5e02\",\"shopTel\":\"13888888888\",\"isSelf\":\"1\",\"goodsCatIds\":\"47,48,49,50,51,54,334,52,53,55,335,56\",\"accredIds\":\"1,2\",\"shopImg\":\"upload\\/shops\\/2016-10\\/5800ac97d0c24.png\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('678', '1', '2016-10-14 18:01:49', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('679', '1', '2016-10-14 18:02:10', '46', '编辑店铺', '/index.php/admin/shops/edit.html', '{\"shopId\":\"1\",\"applyId\":\"0\",\"shopSn\":\"S000000001\",\"shopName\":\"WSTMart\\u81ea\\u8425\\u8d85\\u5e02\",\"shopkeeper\":\"wstmart\",\"telephone\":\"13888888888\",\"shopCompany\":\"WSTMart\\u81ea\\u8425\\u8d85\\u5e02\",\"shopTel\":\"13888888888\",\"isSelf\":\"1\",\"goodsCatIds\":\"47,48,49,50,51,54,334,52,53,55,335,56\",\"accredIds\":\"1,2\",\"shopImg\":\"upload\\/shops\\/2016-10\\/5800ac97d0c24.png\",\"shopQQ\":\"153289970\",\"area_0\":\"440000\",\"shopAddress\":\"\\u71d5\\u5cad\\u8def89\\u53f7\\u71d5\\u4fa8\\u5927\\u53a6\",\"isInvoice\":\"0\",\"invoiceRemarks\":\"\",\"shopAtive\":\"1\",\"freight\":\"5\",\"serviceStartTime\":\"8:30\",\"serviceEndTime\":\"22:30\",\"bankId\":\"24\",\"bankNo\":\"2343243124312412\",\"bankUserName\":\"\\u662f\\u6697\\u5ba4\\u9022\\u706f\",\"shopStatus\":\"1\",\"statusDesc\":\"\",\"areaId\":\"440106\"}', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('680', '1', '2016-10-14 18:02:10', '46', '查看店铺管理', '/index.php/admin/shops/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('681', '1', '2016-10-14 19:10:07', '9', '查看商城配置', '/index.php/admin/sysconfigs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('682', '1', '2016-10-14 19:10:20', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('683', '1', '2016-10-14 19:10:31', '5', '查看职员管理', '/index.php/admin/staffs/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('684', '1', '2016-10-14 19:10:40', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('685', '1', '2016-10-14 19:10:43', '7', '查看操作日志', '/index.php/admin/logoperates/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('686', '1', '2016-10-14 19:10:57', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('687', '1', '2016-10-14 19:10:59', '6', '查看登录日志', '/index.php/admin/LogStaffLogins/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('688', '1', '2016-10-14 19:11:21', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('689', '1', '2016-10-14 19:14:37', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.173.168');
INSERT INTO `tc_log_operates` VALUES ('690', '1', '2016-10-14 22:12:43', '43', '前台菜单管理', '/index.php/admin/homemenus/index.html', '', '116.22.12.53');
INSERT INTO `tc_log_operates` VALUES ('691', '1', '2016-10-14 22:13:33', '43', '新增前台菜单', '/index.php/admin/homemenus/add.html', '{\"menuName\":\"\\u8fdd\\u89c4\\u5546\\u54c1\",\"menuUrl\":\"home\\/goods\\/illegal\",\"menuOtherUrl\":\"\",\"menuType\":\"1\",\"menuSort\":\"4\",\"isShow\":\"1\",\"menuId\":\"0\",\"parentId\":\"29\"}', '116.22.12.53');
INSERT INTO `tc_log_operates` VALUES ('692', '1', '2016-10-14 22:26:32', '36', '查看图片空间', '/index.php/admin/images/index.html', '', '116.22.12.53');
INSERT INTO `tc_log_operates` VALUES ('693', '1', '2016-10-16 11:05:34', '3', '查看菜单权限', '/index.php/admin/menus/index.html', '', '42.199.54.83');
INSERT INTO `tc_log_operates` VALUES ('694', '1', '2016-10-16 11:05:36', '4', '查看角色管理', '/index.php/admin/roles/index.html', '', '42.199.54.83');
INSERT INTO `tc_log_operates` VALUES ('695', '1', '2016-10-17 08:52:12', '55', '查看违规商品', '/admin/goods/illegalIndex.html', '{\"\\/admin\\/goods\\/illegalIndex_html\":\"\"}', '113.109.180.6');
INSERT INTO `tc_log_operates` VALUES ('696', '1', '2016-10-17 08:52:13', '34', '查看评价管理', '/admin/goodsappraises/index.html', '{\"\\/admin\\/goodsappraises\\/index_html\":\"\"}', '113.109.180.6');
INSERT INTO `tc_log_operates` VALUES ('697', '1', '2016-10-17 08:52:18', '36', '查看图片空间', '/admin/images/index.html', '{\"\\/admin\\/images\\/index_html\":\"\"}', '113.109.180.6');
INSERT INTO `tc_log_operates` VALUES ('698', '1', '2016-10-17 08:53:16', '36', '查看图片空间', '/admin/images/index.html', '{\"\\/admin\\/images\\/index_html\":\"\"}', '113.109.180.6');
INSERT INTO `tc_log_operates` VALUES ('699', '1', '2016-10-17 08:53:44', '43', '前台菜单管理', '/admin/homemenus/index.html', '{\"\\/admin\\/homemenus\\/index_html\":\"\"}', '113.109.180.6');

-- ----------------------------
-- Table structure for tc_log_orders
-- ----------------------------
DROP TABLE IF EXISTS `tc_log_orders`;
CREATE TABLE `tc_log_orders` (
  `logId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `orderId` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `orderStatus` int(11) NOT NULL COMMENT '订单状态	0:待发货 1:待收货 2:已收货 -1:已取消 -2:待支付 -3:用户拒收 -4:商家同意拒收 -5:商家不同意拒收',
  `logContent` varchar(255) NOT NULL COMMENT '操作日志',
  `logUserId` int(11) NOT NULL DEFAULT '0' COMMENT '操作者Id',
  `logType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '操作者类型	0:顾客/门店 1:商城职员',
  `logTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`logId`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单日志表';

-- ----------------------------
-- Records of tc_log_orders
-- ----------------------------

-- ----------------------------
-- Table structure for tc_log_sms
-- ----------------------------
DROP TABLE IF EXISTS `tc_log_sms`;
CREATE TABLE `tc_log_sms` (
  `smsId` int(11) NOT NULL AUTO_INCREMENT,
  `smsSrc` tinyint(4) NOT NULL DEFAULT '0' COMMENT '消息類型	0:系统消息 ,扩展',
  `smsUserId` int(11) NOT NULL DEFAULT '0' COMMENT '发送者id',
  `smsContent` varchar(255) NOT NULL COMMENT '短信内容',
  `smsPhoneNumber` varchar(11) NOT NULL COMMENT '短信号码',
  `smsReturnCode` varchar(255) NOT NULL COMMENT '短信返回值',
  `smsCode` varchar(20) NOT NULL COMMENT '短信中的验证码',
  `smsFunc` varchar(50) NOT NULL COMMENT '调用短信的接口',
  `smsIP` varchar(16) NOT NULL COMMENT 'IP地址',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`smsId`),
  KEY `smsPhoneNumber` (`smsPhoneNumber`),
  KEY `smsIP` (`smsIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送记录表';

-- ----------------------------
-- Records of tc_log_sms
-- ----------------------------

-- ----------------------------
-- Table structure for tc_log_staff_logins
-- ----------------------------
DROP TABLE IF EXISTS `tc_log_staff_logins`;
CREATE TABLE `tc_log_staff_logins` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `staffId` int(11) NOT NULL DEFAULT '0' COMMENT '职员id',
  `loginTime` datetime NOT NULL COMMENT '登录时间',
  `loginIp` varchar(16) NOT NULL COMMENT '登陆ip',
  PRIMARY KEY (`loginId`),
  KEY `loginTime` (`loginTime`),
  KEY `staffId` (`staffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职员登陆记录表';

-- ----------------------------
-- Records of tc_log_staff_logins
-- ----------------------------

-- ----------------------------
-- Table structure for tc_log_user_logins
-- ----------------------------
DROP TABLE IF EXISTS `tc_log_user_logins`;
CREATE TABLE `tc_log_user_logins` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '职员ID',
  `loginTime` datetime NOT NULL COMMENT '登录时间',
  `loginIp` varchar(16) NOT NULL COMMENT '登录IP',
  `loginSrc` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0:商城  1:webapp  2:App',
  `loginRemark` varchar(30) DEFAULT NULL COMMENT '登录备注信息',
  PRIMARY KEY (`loginId`),
  KEY `loginTime` (`loginTime`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员登录记录表';

-- ----------------------------
-- Records of tc_log_user_logins
-- ----------------------------

-- ----------------------------
-- Table structure for tc_menus
-- ----------------------------
DROP TABLE IF EXISTS `tc_menus`;
CREATE TABLE `tc_menus` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL COMMENT '父ID',
  `menuName` varchar(100) NOT NULL COMMENT '菜单名称',
  `menuSort` int(11) NOT NULL DEFAULT '0' COMMENT '菜单排序',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '有效状态	1:有效 -1:无效',
  `menuUrl` varchar(100) NOT NULL COMMENT '菜单Url',
  `menuOtherUrl` text COMMENT '关联url',
  `menuType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '菜单类型	0:用户中心 1:商家中心',
  `isShow` tinyint(4) DEFAULT '1' COMMENT '是否显示	0：隐藏 1：显示',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`menuId`),
  KEY `parentId` (`parentId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of tc_menus
-- ----------------------------
INSERT INTO `tc_menus` VALUES ('1', '0', '首页', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('2', '1', '系统管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('3', '2', '菜单权限', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('4', '2', '角色管理', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('5', '2', '职员管理', '3', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('6', '2', '登录日志', '4', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('7', '2', '操作日志', '5', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('8', '1', '基础设置', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('9', '8', '商城配置', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('10', '8', '导航管理', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('11', '8', '广告管理', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('12', '8', '支付管理', '5', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('13', '8', '银行管理', '4', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('14', '8', '友情链接', '7', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('16', '8', '地区管理', '6', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('18', '1', '会员管理', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('19', '18', '会员等级', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('20', '18', '会员管理', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('21', '18', '账号管理', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('22', '0', '商品管理', '3', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('23', '22', '商品管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('24', '23', '商品分类', '3', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('25', '23', '品牌管理', '4', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('29', '1', '文章管理', '3', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('30', '29', '文章分类', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('31', '29', '文章管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('32', '23', '商品规格', '5', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('33', '23', '已上架商品', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('34', '23', '评价管理', '6', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('35', '0', '订单管理', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('36', '2', '图片空间', '6', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('38', '0', '店铺管理', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('39', '38', '店铺管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('41', '2', '商城消息', '7', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('42', '8', '广告位置', '3', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('43', '2', '前台菜单', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('44', '39', '店铺认证', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('45', '39', '开店申请', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('46', '39', '店铺管理', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('47', '39', '停用店铺', '3', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('48', '23', '商品属性', '3', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('49', '35', '订单管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('50', '49', '订单管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('51', '49', '投诉订单', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('52', '49', '退款订单', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('53', '8', '快递管理', '8', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('54', '23', '待审核商品', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('55', '23', '违规商品', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('56', '0', '运营管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('57', '56', '推荐管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('58', '57', '商品推荐', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('59', '57', '店铺推荐', '1', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('60', '57', '品牌推荐', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('61', '2', '风格管理', '10', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('62', '56', '财务管理', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('63', '62', '提现申请', '0', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('64', '62', '结算申请', '2', '1', '', null, '0', '1', null);
INSERT INTO `tc_menus` VALUES ('65', '62', '商家结算', '4', '1', '', null, '0', '1', null);

-- ----------------------------
-- Table structure for tc_messages
-- ----------------------------
DROP TABLE IF EXISTS `tc_messages`;
CREATE TABLE `tc_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '消息類型	0:后台手工发送的消息 1:系统自动发的消息',
  `sendUserId` int(11) NOT NULL DEFAULT '0' COMMENT '发送者ID',
  `receiveUserId` int(11) NOT NULL DEFAULT '0' COMMENT '接受者ID',
  `msgContent` text NOT NULL COMMENT '消息内容',
  `msgStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '阅读状态	0:未读 1:已读',
  `msgJson` varchar(255) DEFAULT NULL COMMENT '存放json数据	默认{from:1,dataId} from:0:普通消息 1:订单 2:商品 3:订单投诉 dataId:关联的记录id',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  `createTime` datetime NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`),
  KEY `receiveUserId` (`receiveUserId`,`dataFlag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	\r\n商城信息表';

-- ----------------------------
-- Records of tc_messages
-- ----------------------------

-- ----------------------------
-- Table structure for tc_navs
-- ----------------------------
DROP TABLE IF EXISTS `tc_navs`;
CREATE TABLE `tc_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '导航类型	0:顶部 1：底部',
  `navTitle` varchar(50) NOT NULL COMMENT '导航标题',
  `navUrl` varchar(100) NOT NULL COMMENT '导航网址',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	0:隐藏 1：显示',
  `isOpen` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否新开窗口	0:页面跳转 1：新开窗口',
  `navSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `createTime` datetime NOT NULL COMMENT '排序号',
  PRIMARY KEY (`id`),
  KEY `navType` (`navType`,`isShow`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商城导航表';

-- ----------------------------
-- Records of tc_navs
-- ----------------------------
INSERT INTO `tc_navs` VALUES ('1', '0', '品牌街', 'home/brands/index.html', '1', '1', '2', '2015-07-12 20:08:22');
INSERT INTO `tc_navs` VALUES ('2', '0', '首页', 'index.php', '1', '0', '0', '2015-07-12 20:08:36');
INSERT INTO `tc_navs` VALUES ('3', '0', '店铺街', 'home/shops/shopstreet.html', '1', '0', '3', '2015-07-12 20:10:00');
INSERT INTO `tc_navs` VALUES ('4', '0', '自营超市', 'home/shops/selfshop', '1', '0', '4', '2015-07-12 20:11:21');
INSERT INTO `tc_navs` VALUES ('5', '1', '关于我们', '#', '1', '0', '0', '2015-07-12 20:25:58');
INSERT INTO `tc_navs` VALUES ('7', '1', 'WST百科', '#', '1', '0', '0', '2015-07-12 23:02:39');
INSERT INTO `tc_navs` VALUES ('8', '1', '帮助中心', '#', '1', '0', '0', '2015-07-12 23:03:43');
INSERT INTO `tc_navs` VALUES ('9', '1', '交易条款', '#', '1', '0', '0', '2015-07-12 23:03:55');
INSERT INTO `tc_navs` VALUES ('10', '1', '诚征英才', '#', '1', '0', '0', '2015-07-12 23:04:41');
INSERT INTO `tc_navs` VALUES ('11', '1', '网站地图', '#', '1', '0', '0', '2015-07-12 23:04:51');
INSERT INTO `tc_navs` VALUES ('12', '1', '友情链接', '#', '0', '0', '0', '2015-07-12 23:05:08');
INSERT INTO `tc_navs` VALUES ('13', '1', '店铺管理', 'shop.php', '0', '0', '0', '2015-07-12 23:05:42');
INSERT INTO `tc_navs` VALUES ('15', '0', '时蔬水果', 'home/goods/lists/cat/47.html', '1', '0', '1', '2016-09-06 14:22:36');
INSERT INTO `tc_navs` VALUES ('16', '0', '厨房清洁', 'home/goods/lists/cat/48.html', '1', '0', '2', '2016-09-06 14:23:08');
INSERT INTO `tc_navs` VALUES ('17', '0', '床上家居', 'home/goods/lists/cat/54.html', '1', '0', '3', '2016-09-06 14:23:38');
INSERT INTO `tc_navs` VALUES ('18', '0', '养生之道', '2', '1', '1', '5', '2016-09-06 14:24:28');

-- ----------------------------
-- Table structure for tc_order_complains
-- ----------------------------
DROP TABLE IF EXISTS `tc_order_complains`;
CREATE TABLE `tc_order_complains` (
  `complainId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `complainType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '投诉类型	1:承诺的没有做到 2:未按约定时间发货 3:未按成交价格进行交易 4:恶意骚扰',
  `complainTargetId` int(11) NOT NULL DEFAULT '0' COMMENT '投诉人ID',
  `respondTargetId` int(11) NOT NULL DEFAULT '0' COMMENT '应诉人ID	如果是店铺则为店铺ID',
  `needRespond` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否需要应付	0:不需要 1:需要',
  `deliverRespondTime` datetime DEFAULT NULL COMMENT '移交应诉时间',
  `complainContent` text NOT NULL COMMENT '投诉内容',
  `complainAnnex` varchar(255) DEFAULT NULL COMMENT '投诉附件	最多5张图片',
  `complainStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '	投诉状态	0:新投诉 1:转给应诉人 2:应诉人回应 3:等待仲裁 4:已仲裁',
  `complainTime` datetime NOT NULL COMMENT '创建时间',
  `respondContent` text COMMENT '应诉内容',
  `respondAnnex` varchar(255) DEFAULT NULL COMMENT '应付附件',
  `respondTime` datetime DEFAULT NULL COMMENT '应诉时间',
  `finalResult` text COMMENT '仲裁结果',
  `finalResultTime` datetime DEFAULT NULL COMMENT '仲裁时间',
  `finalHandleStaffId` int(11) DEFAULT '0' COMMENT '仲裁人ID',
  PRIMARY KEY (`complainId`),
  KEY `complainStatus` (`complainStatus`),
  KEY `complainType` (`complainTargetId`,`complainType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品投诉表';

-- ----------------------------
-- Records of tc_order_complains
-- ----------------------------

-- ----------------------------
-- Table structure for tc_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tc_order_goods`;
CREATE TABLE `tc_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL COMMENT '订单id',
  `goodsId` int(11) NOT NULL COMMENT '商品ID',
  `goodsNum` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `goodsPrice` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goodsSpecId` varchar(200) DEFAULT NULL COMMENT '商品-规格ID',
  `goodsSpecNames` varchar(500) DEFAULT NULL COMMENT '商品-规格值列表',
  `goodsName` varchar(50) NOT NULL COMMENT '商品名称',
  `goodsImg` varchar(150) NOT NULL COMMENT '商品图',
  `commissionRate` decimal(11,2) DEFAULT '0.00' COMMENT '商品佣金比率',
  PRIMARY KEY (`id`),
  KEY `goodsId` (`goodsId`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品表';

-- ----------------------------
-- Records of tc_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for tc_order_refunds
-- ----------------------------
DROP TABLE IF EXISTS `tc_order_refunds`;
CREATE TABLE `tc_order_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `orderId` int(11) NOT NULL COMMENT '订单Id',
  `refundTo` int(11) NOT NULL DEFAULT '0' COMMENT '接收退款用户',
  `refundReson` int(11) NOT NULL DEFAULT '0' COMMENT '用户申请退款原因ID	',
  `refundOtherReson` varchar(255) DEFAULT NULL COMMENT '用户申请退款原因',
  `backMoney` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '用户退款金额',
  `refundTradeNo` varchar(100) DEFAULT NULL COMMENT '退款流水号',
  `refundRemark` varchar(400) NOT NULL COMMENT '退款备注',
  `refundTime` datetime NOT NULL COMMENT '退款时间',
  `shopRejectReason` varchar(255) DEFAULT NULL COMMENT '店铺不同意拒收原因',
  `refundStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '退款状态',
  `createTime` datetime NOT NULL COMMENT '用户申请退款时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderId_2` (`orderId`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单退款记录表';

-- ----------------------------
-- Records of tc_order_refunds
-- ----------------------------

-- ----------------------------
-- Table structure for tc_orderids
-- ----------------------------
DROP TABLE IF EXISTS `tc_orderids`;
CREATE TABLE `tc_orderids` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `rnd` float(16,2) NOT NULL COMMENT '毫秒数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000001 DEFAULT CHARSET=utf8 COMMENT='订单ID表';

-- ----------------------------
-- Records of tc_orderids
-- ----------------------------
INSERT INTO `tc_orderids` VALUES ('10000000', '1476879616.00');

-- ----------------------------
-- Table structure for tc_orders
-- ----------------------------
DROP TABLE IF EXISTS `tc_orders`;
CREATE TABLE `tc_orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) NOT NULL COMMENT '订单号',
  `shopId` int(11) NOT NULL COMMENT '门店ID',
  `userId` int(11) NOT NULL COMMENT '用户ID  	0：为0则说明是闪电购，游客直接下单',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '-2' COMMENT '订单状态	-3:用户拒收 -2:未付款的订单 -1：用户取消 0:待发货 1:配送中 2:用户确认收货',
  `goodsMoney` decimal(11,2) NOT NULL COMMENT '	商品总金额	商品总价格--未进行任何折扣的总价格',
  `deliverType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '收货方式	0:送货上门 1:自提',
  `deliverMoney` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '运费	运费规则按照每家店的规则算',
  `totalMoney` decimal(11,2) NOT NULL COMMENT '订单总金额	包括运费',
  `realTotalMoney` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '实际订单总金额	进行各种折扣之后的金额',
  `payType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付方式	0:货到付款 1:在线支付',
  `payFrom` int(11) NOT NULL DEFAULT '0' COMMENT '支付来源	1:支付宝，2：微信',
  `isPay` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支付	0:未支付 1:已支付',
  `areaId` int(11) NOT NULL COMMENT '最后一级区域Id',
  `areaIdPath` varchar(255) DEFAULT NULL COMMENT '区域Id路径	省级id_市级id_县级Id_ 例如:110000_110100_110101_',
  `userName` varchar(20) NOT NULL COMMENT '收货人名称',
  `userAddress` varchar(255) NOT NULL COMMENT '收件人地址',
  `userPhone` char(11) DEFAULT NULL COMMENT '收件人手机',
  `orderScore` int(11) NOT NULL DEFAULT '0' COMMENT '所得积分',
  `isInvoice` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否需要发票	1:需要 0:不需要',
  `invoiceClient` varchar(255) DEFAULT NULL COMMENT '发票抬头	1:需要 0:不需要',
  `orderRemarks` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `orderSrc` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单来源	0:商城 1:微信 2:手机版 3:安卓App 4:苹果App',
  `needPay` decimal(11,2) DEFAULT '0.00' COMMENT '需缴费用',
  `isRefund` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否退款	0:否 1：是',
  `isAppraise` tinyint(4) DEFAULT '0' COMMENT '是否点评	0:未点评 1:已点评',
  `cancelReason` int(11) DEFAULT '0' COMMENT '取消原因ID',
  `rejectReason` int(11) DEFAULT '0' COMMENT '拒收原因ID',
  `rejectOtherReason` varchar(255) DEFAULT NULL COMMENT '拒收原因',
  `isClosed` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否订单已完结	0：未完结 1:已完结',
  `goodsSearchKeys` text,
  `orderunique` varchar(50) NOT NULL COMMENT '订单流水号',
  `receiveTime` datetime DEFAULT NULL COMMENT '收货时间',
  `deliveryTime` datetime DEFAULT NULL COMMENT '发货时间',
  `expressId` int(11) DEFAULT NULL COMMENT '快递公司ID',
  `expressNo` varchar(20) DEFAULT NULL COMMENT '快递号',
  `tradeNo` varchar(100) DEFAULT NULL COMMENT '在线支付交易流水',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单有效标志	-1：删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '下单时间',
  `settlementId` int(11) DEFAULT '0' COMMENT '是否结算，大于0的话则是结算ID',
  `commissionFee` decimal(11,2) DEFAULT '0.00' COMMENT '订单应收佣金',
  PRIMARY KEY (`orderId`),
  KEY `shopId` (`shopId`,`dataFlag`),
  KEY `userId` (`userId`,`dataFlag`),
  KEY `isRefund` (`isRefund`),
  KEY `orderStatus` (`orderStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of tc_orders
-- ----------------------------

-- ----------------------------
-- Table structure for tc_payments
-- ----------------------------
DROP TABLE IF EXISTS `tc_payments`;
CREATE TABLE `tc_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `payCode` varchar(255) DEFAULT NULL COMMENT '支付code',
  `payName` varchar(255) DEFAULT NULL COMMENT '支付方式名称',
  `payDesc` text COMMENT '支付方式描述',
  `payOrder` int(11) DEFAULT '0' COMMENT '排序号',
  `payConfig` text COMMENT '参数配置',
  `enabled` tinyint(4) DEFAULT '0' COMMENT '是否启用	0:不启用 1:启用',
  `isOnline` tinyint(4) DEFAULT '0' COMMENT '是否在线支付	0:否 1:在线支付',
  PRIMARY KEY (`id`),
  KEY `payCode` (`payCode`,`enabled`,`isOnline`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='支付方式表';

-- ----------------------------
-- Records of tc_payments
-- ----------------------------
INSERT INTO `tc_payments` VALUES ('1', 'cod', '货到付款', '开通城市', '1', '', '1', '0');
INSERT INTO `tc_payments` VALUES ('2', 'alipays', '支付宝(及时到帐)', '支付宝(及时到帐)', '4', '', '0', '1');
INSERT INTO `tc_payments` VALUES ('3', 'weixinpays', '微信支付', '微信支付', '0', '', '0', '1');

-- ----------------------------
-- Table structure for tc_privileges
-- ----------------------------
DROP TABLE IF EXISTS `tc_privileges`;
CREATE TABLE `tc_privileges` (
  `privilegeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `menuId` int(11) NOT NULL COMMENT '父ID',
  `privilegeCode` varchar(20) NOT NULL COMMENT '权限代码',
  `privilegeName` varchar(30) NOT NULL COMMENT '权限名称',
  `isMenuPrivilege` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否菜单权限',
  `privilegeUrl` varchar(255) DEFAULT NULL COMMENT '主权限URL',
  `otherPrivilegeUrl` text COMMENT '其他权限URL',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  PRIMARY KEY (`privilegeId`),
  UNIQUE KEY `privilegeCode` (`privilegeCode`),
  KEY `menuId` (`menuId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COMMENT='后台权限表';

-- ----------------------------
-- Records of tc_privileges
-- ----------------------------
INSERT INTO `tc_privileges` VALUES ('2', '2', 'XTGL_00', '查看系统管理', '1', null, null, '1');
INSERT INTO `tc_privileges` VALUES ('3', '3', 'CDGL_00', '查看菜单权限', '1', 'admin/menus/index', 'admin/menus/listQuery,admin/menus/get,admin/privileges/listQuery,admin/privileges/get', '1');
INSERT INTO `tc_privileges` VALUES ('4', '3', 'CDGL_01', '新增菜单', '0', 'admin/menus/add', null, '1');
INSERT INTO `tc_privileges` VALUES ('5', '3', 'CDGL_02', '编辑菜单', '0', 'admin/menus/edit', null, '1');
INSERT INTO `tc_privileges` VALUES ('6', '3', 'CDGL_03', '删除菜单', '0', 'admin/menus/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('7', '3', 'QXGL_01', '新增权限', '0', 'admin/privileges/add', null, '1');
INSERT INTO `tc_privileges` VALUES ('8', '3', 'QXGL_02', '编辑权限', '0', 'admin/privileges/edit', null, '1');
INSERT INTO `tc_privileges` VALUES ('9', '3', 'QXGL_03', '删除菜单', '0', 'admin/privileges/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('29', '4', 'JSGL_00', '查看角色管理', '1', 'admin/roles/index', 'admin/roles/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('30', '4', 'JSGL_01', '新增角色', '0', 'admin/roles/add', 'admin/roles/toEdit,admin/privileges/listQueryByRole', '1');
INSERT INTO `tc_privileges` VALUES ('31', '4', 'JSGL_02', '编辑角色', '0', 'admin/roles/edit', 'admin/roles/toEdit,admin/privileges/listQueryByRole', '1');
INSERT INTO `tc_privileges` VALUES ('32', '4', 'JSGL_03', '删除角色', '0', 'admin/roles/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('35', '1', 'SY_001', '查看首页', '1', '#', null, '1');
INSERT INTO `tc_privileges` VALUES ('36', '5', 'ZYGL_00', '查看职员管理', '1', 'admin/staffs/index', 'admin/staffs/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('37', '5', 'ZYGL_01', '新增职员', '0', 'admin/staffs/add', 'admin/staffs/toAdd', '1');
INSERT INTO `tc_privileges` VALUES ('38', '5', 'ZYGL_02', '编辑职员', '0', 'admin/staffs/edit', 'admin/staffs/toEdit,admin/staffs/editPass', '1');
INSERT INTO `tc_privileges` VALUES ('39', '5', 'ZYGL_03', '删除职员', '0', 'admin/staffs/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('40', '10', 'DHGL_00', '查看导航管理', '1', 'admin/navs/index', 'admin/navs/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('41', '10', 'DHGL_01', '新增导航', '0', 'admin/nav/add', 'admin/nav/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('42', '11', 'GGGL_00', '查看广告管理', '1', 'admin/ads/index', 'admin/ads/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('43', '12', 'ZFGL_00', '查看支付管理', '1', 'admin/payments/index', 'admin/payments/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('44', '13', 'YHGL_00', '查看银行管理', '1', 'admin/banks/index', 'admin/banks/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('45', '14', 'YQGL_00', '查看友情链接', '1', 'admin/friendlinks/index', 'admin/friendlinks/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('46', '10', 'DHGL_02', '修改导航', '0', 'admin/nav/edit', 'admin/nav/toEdit,admin/nav/editiIsShow', '1');
INSERT INTO `tc_privileges` VALUES ('47', '10', 'DHGL_03', '删除导航', '0', 'admin/nav/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('48', '11', 'GGGL_01', '新增广告', '0', 'admin/ads/add', 'admin/ads/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('49', '11', 'GGGL_02', '修改广告', '0', 'admin/ads/edit', 'admin/ads/toEdit,admin/ads/changeSort', '1');
INSERT INTO `tc_privileges` VALUES ('50', '11', 'GGGL_03', '删除广告', '0', 'admin/ads/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('51', '12', 'ZFGL_02', '编辑支付', '0', 'admin/payments/edit', 'admin/payments/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('52', '12', 'ZFGL_03', '卸载支付', '0', 'admin/payments/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('53', '13', 'YHGL_01', '新增银行', '0', 'admin/banks/add', null, '1');
INSERT INTO `tc_privileges` VALUES ('54', '13', 'YHGL_02', '修改银行', '0', 'admin/banks/edit', null, '1');
INSERT INTO `tc_privileges` VALUES ('55', '13', 'YHGL_03', '删除银行', '0', 'admin/banks/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('56', '14', 'YQGL_01', '新增友情链接', '0', 'admin/friendlinks/add', 'admin/friendlinks/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('57', '14', 'YQGL_02', '修改友情链接', '0', 'admin/friendlinks/edit', 'admin/friendlinks/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('58', '14', 'YQGL_03', '删除友情链接', '0', 'admin/friendlinks/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('59', '16', 'DQGL_00', '查看地区管理', '1', 'admin/areas/index', 'admin/areas/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('60', '16', 'DQGL_01', '新增地区', '0', 'admin/areas/add', null, '1');
INSERT INTO `tc_privileges` VALUES ('61', '16', 'DQGL_02', '编辑地区', '0', 'admin/areas/edit', 'admin/areas/editiIsShow', '1');
INSERT INTO `tc_privileges` VALUES ('62', '16', 'DQGL_03', '删除地区', '0', 'admin/areas/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('67', '24', 'SPFL_00', '查看商品分类', '1', 'admin/goodscats/index', 'admin/goodscats/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('68', '19', 'HYDJ_00', '查看会员等级', '1', 'admin/userranks/index', 'admin/userranks/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('69', '19', 'HYDJ_01', '新增会员等级', '0', 'admin/userranks/add', 'admin/userranks/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('70', '19', 'HYDJ_02', '编辑会员等级', '0', 'admin/userranks/edit', 'admin/userranks/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('71', '19', 'HYDJ_03', '删除会员等级', '0', 'admin/userranks/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('72', '20', 'HYGL_00', '查看会员管理', '1', 'admin/users/index', 'admin/users/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('73', '20', 'HYGL_01', '新增会员管理', '0', 'admin/users/add', 'admin/users/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('74', '20', 'HYGL_02', '编辑会员管理', '0', 'admin/users/edit', 'admin/users/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('75', '20', 'HYGL_03', '删除会员管理', '0', 'admin/users/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('76', '24', 'SPFL_01', '新增商品分类', '0', 'admin/goodscats/add', null, '1');
INSERT INTO `tc_privileges` VALUES ('77', '24', 'SPFL_02', '编辑商品分类', '0', 'admin/goodscats/edit', 'admin/goodscats/editiIsFloor,admin/goodscats/editiIsShow', '1');
INSERT INTO `tc_privileges` VALUES ('78', '24', 'SPFL_03', '删除商品分类', '0', 'admin/goodscats/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('79', '25', 'PPGL_00', '查看品牌管理', '1', 'admin/brands/index', 'admin/brands/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('80', '25', 'PPGL_01', '新增品牌', '0', 'admin/brands/add', 'admin/brands/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('81', '25', 'PPGL_02', '编辑品牌', '0', 'admin/brands/edit', 'admin/brands/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('82', '25', 'PPGL_03', '删除品牌', '0', 'admin/brands/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('83', '34', 'PJGL_00', '查看评价管理', '1', 'admin/goodsappraises/index', 'admin/goodsappraises/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('84', '34', 'PJGL_02', '编辑评价', '0', 'admin/goodsappraises/edit', 'admin/goodsappraises/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('85', '34', 'PJGL_03', '删除评价', '0', 'admin/goodsappraises/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('86', '6', 'DLRZ_00', '查看登录日志', '1', 'admin/LogStaffLogins/index', 'admin/LogStaffLogins/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('87', '35', 'DDGL_00', '查看订单管理', '0', '#', '', '1');
INSERT INTO `tc_privileges` VALUES ('88', '7', 'CZRZ_00', '查看操作日志', '1', 'admin/logoperates/index', 'admin/logoperates/pageQuery,admin/logoperates/toView', '1');
INSERT INTO `tc_privileges` VALUES ('89', '42', 'GGWZ_00', '查看广告位置', '1', 'admin/adpositions/index', 'admin/adpositions/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('90', '42', 'GGWZ_01', '新增广告位置', '0', 'admin/adpositions/add', 'admin/adpositions/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('91', '42', 'GGWZ_02', '编辑广告位置', '0', 'admin/adpositions/edit', 'admin/adpositions/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('92', '42', 'GGWZ_03', '删除广告位置', '0', 'admin/adpositions/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('93', '31', 'WZGL_00', '查看文章管理', '1', 'admin/articles/index', 'admin/articles/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('94', '31', 'WZGL_01', '新增文章', '0', 'admin/articles/add', 'admin/articles/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('95', '31', 'WZGL_02', '编辑文章', '0', 'admin/articles/edit', 'admin/articles/toEdit,admin/articles/editiIsShow', '1');
INSERT INTO `tc_privileges` VALUES ('96', '31', 'WZGL_03', '删除文章', '0', 'admin/articles/del', 'admin/articles/delByBatch', '1');
INSERT INTO `tc_privileges` VALUES ('97', '30', 'WZFL_00', '查看文章分类', '1', 'admin/articlecats/index', 'admin/articlecats/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('98', '30', 'WZFL_01', '新增文章分类', '0', 'admin/articlecats/add', '', '1');
INSERT INTO `tc_privileges` VALUES ('99', '30', 'WZFL_02', '编辑文章分类', '0', 'admin/articlecats/edit', 'admin/articlecats/editiIsShow', '1');
INSERT INTO `tc_privileges` VALUES ('100', '30', 'WZFL_03', '删除文章分类', '0', 'admin/articlecats/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('101', '43', 'QTCD_00', '前台菜单管理', '1', 'admin/homemenus/index', 'admin/homemenus/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('102', '21', 'ZHGL_00', '查看账号管理', '1', 'admin/users/accountindex', 'admin/users/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('103', '9', 'SCPZ_00', '查看商城配置', '1', 'admin/sysconfigs/index', '', '1');
INSERT INTO `tc_privileges` VALUES ('104', '9', 'SCPZ_02', '编辑商城配置', '0', 'admin/sysconfigs/edit', '', '1');
INSERT INTO `tc_privileges` VALUES ('105', '44', 'RZGL_00', '查看认证', '1', 'admin/accreds/index', 'admin/accreds/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('106', '44', 'RZGL_01', '新增认证', '0', 'admin/accreds/add', '', '1');
INSERT INTO `tc_privileges` VALUES ('107', '44', 'RZGL_02', '编辑认证', '0', 'admin/accreds/edit', '', '1');
INSERT INTO `tc_privileges` VALUES ('108', '44', 'RZGL_03', '删除认证', '0', 'admin/accreds/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('109', '1', '3434', '3434', '0', '', '', '-1');
INSERT INTO `tc_privileges` VALUES ('110', '15', 'DQSZ_00', '查看地区管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('111', '8', 'SCSZ_00', '查看商城设置', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('112', '43', 'QTCD_01', '新增前台菜单', '0', 'admin/homemenus/add', '', '1');
INSERT INTO `tc_privileges` VALUES ('113', '43', 'QTCD_02', '编辑前台菜单', '0', 'admin/homemenus/edit', 'admin/homemenus/setToggle', '1');
INSERT INTO `tc_privileges` VALUES ('114', '43', 'QTCD_03', '删除前台菜单', '0', 'admin/homemenus/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('115', '18', 'HYSZ_00', '查看会员管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('116', '29', 'WZSZ_00', '查看文章管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('117', '21', 'ZHGL_02', '编辑账号信息', '0', 'admin/users/editAccount', 'admin/users/changeUserStatus', '1');
INSERT INTO `tc_privileges` VALUES ('118', '39', 'DPSZ_00', '店铺管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('119', '38', 'DPXX_00', '查看店铺管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('120', '22', 'SPXX_00', '查看商品管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('121', '23', 'SPSZ_00', '查看商品管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('122', '45', 'DPSQ_00', '查看开店申请', '1', 'admin/shopapplys/index', 'admin/shopapplys/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('123', '45', 'DPSQ_03', '删除开店申请', '0', 'admin/shopapplys/del', null, '1');
INSERT INTO `tc_privileges` VALUES ('124', '45', 'DPSQ_04', '审核开店申请', '0', 'admin/shopapplys/handle', 'admin/shopapplys/toHandle,admin/shops/toAddByApply', '1');
INSERT INTO `tc_privileges` VALUES ('125', '46', 'DPGL_00', '查看店铺管理', '1', 'admin/shops/index', 'admin/shops/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('126', '46', 'DPGL_01', '新增店铺', '0', 'admin/shops/add', 'admin/shops/toAddByApply', '1');
INSERT INTO `tc_privileges` VALUES ('127', '46', 'DPGL_02', '编辑店铺', '0', 'admin/shops/edit', 'admin/shops/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('128', '46', 'DPGL_03', '删除店铺', '0', 'admin/shops/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('129', '41', 'SCXX_00', '查看商城消息', '1', 'admin/messages/index', 'admin/messages/showFullMsg,admin/messages/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('130', '41', 'SCXX_01', '发送商城消息', '0', 'admin/messages/add', 'admin/messages/userQuery', '1');
INSERT INTO `tc_privileges` VALUES ('131', '41', 'SCXX_03', '删除商城消息', '0', 'admin/messages/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('132', '47', 'TYDP_00', '查看停用店铺', '1', 'admin/shops/stopIndex', 'admin/shops/pageStopQuery', '1');
INSERT INTO `tc_privileges` VALUES ('133', '47', 'TYDP_04', '启用店铺', '0', 'admin/shops/start', '', '-1');
INSERT INTO `tc_privileges` VALUES ('134', '32', 'SPGG_00', '查看商品规格', '1', 'admin/speccats/index', 'admin/speccats/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('135', '32', 'SPGG_01', '新增商品规格', '0', 'admni/speccats/add', 'admni/speccats/toEdit', '1');
INSERT INTO `tc_privileges` VALUES ('136', '32', 'SPGG_02', '编辑商品规格', '0', 'admni/speccats/edit', 'admni/speccats/toEdit,admni/speccats/setToggle', '1');
INSERT INTO `tc_privileges` VALUES ('137', '32', 'SPGG_03', '删除商品规格', '0', 'admni/speccats/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('138', '48', 'SPSX_00', '查看商品属性', '1', 'admin/attributes/index', 'admin/attributes/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('139', '50', 'DDLB_00', '查看订单', '1', 'admin/orders/index', 'admin/orders/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('140', '51', 'TSDD_00', '查看投诉订单', '1', 'admin/orderComplains/index', 'admin/orderComplains/view,admin/orderComplains/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('141', '52', 'TKDD_00', '查看退款订单', '1', 'admin/orderrefunds/refund', 'admin/orderrefunds/refundPageQuery,admin/orders/view', '1');
INSERT INTO `tc_privileges` VALUES ('142', '53', 'KDGL_00', '查看快递管理', '1', 'admin/express/index', 'admin/express/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('143', '53', 'KDGL_01', '新增快递', '0', 'admin/express/add', '', '1');
INSERT INTO `tc_privileges` VALUES ('144', '53', 'KDGL_02', '编辑快递', '0', 'admin/express/edit', '', '1');
INSERT INTO `tc_privileges` VALUES ('145', '53', 'KDGL_03', '删除快递', '0', 'admin/express/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('146', '33', 'SJSP_00', '查看已上架商品', '1', 'admin/goods/index', 'admin/goods/saleByPage', '1');
INSERT INTO `tc_privileges` VALUES ('147', '33', 'SJSP_04', '商品操作', '0', 'admin/goods/illegal', '', '1');
INSERT INTO `tc_privileges` VALUES ('148', '33', 'SJSP_03', '删除商品', '0', 'admin/goods/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('149', '54', 'DSHSP_00', '查看待审核商品', '1', 'admin/goods/auditIndex', 'admin/goods/auditByPage', '1');
INSERT INTO `tc_privileges` VALUES ('150', '54', 'DSHSP_04', '商品审核', '0', 'admin/goods/allow', '', '1');
INSERT INTO `tc_privileges` VALUES ('151', '55', 'WGSP_00', '查看违规商品', '1', 'admin/goods/illegalIndex', '', '1');
INSERT INTO `tc_privileges` VALUES ('152', '58', 'SPTJ_00', '查看商品推荐', '1', 'admin/recommends/goods', 'admin/recommends/editgoods', '1');
INSERT INTO `tc_privileges` VALUES ('153', '59', 'DPTJ_00', '查看店铺推荐', '1', 'admin/recommends/shops', 'admin/recommends/editshops', '1');
INSERT INTO `tc_privileges` VALUES ('154', '59', 'DPTJ_04', '推荐操作', '0', 'admin/recommends/editshops', '', '1');
INSERT INTO `tc_privileges` VALUES ('155', '58', 'SPTJ_04', '推荐操作', '0', 'admin/recommends/editgoods', '', '1');
INSERT INTO `tc_privileges` VALUES ('156', '60', 'PPTJ_00', '查看品牌推荐', '1', 'admin/recommends/brands', 'admin/recommends/editbrands', '1');
INSERT INTO `tc_privileges` VALUES ('157', '60', 'PPTJ_04', '推荐操作', '0', 'admin/recommends/editbrands', '', '1');
INSERT INTO `tc_privileges` VALUES ('158', '36', 'TPKJ_00', '查看图片空间', '1', 'admin/images/index', 'admin/images/summary,admin/images/lists,admin/images/pageQuery,admin/images/checkImages', '1');
INSERT INTO `tc_privileges` VALUES ('159', '36', 'TPKJ_04', '图片管理', '0', 'admin/images/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('160', '56', 'YYGL_00', '查看运营管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('161', '57', 'TJGL_00', '查看推荐管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('162', '49', 'DDSZ_00', '查看订单管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('163', '51', 'TSDD_04', '处理订单投诉', '0', 'admin/orderComplains/toHandle', 'admin/orderComplains/finalHandle,admin/orderComplains/deliverRespond', '1');
INSERT INTO `tc_privileges` VALUES ('164', '52', 'TKDD_04', '处理退款订单', '0', 'admin/orders/toRefund', 'admin/orders/orderRefund', '1');
INSERT INTO `tc_privileges` VALUES ('165', '55', 'WGSP_04', '商品审核', '0', 'admin/goods/allow', '', '1');
INSERT INTO `tc_privileges` VALUES ('166', '48', 'SPSX_01', '新增商品属性', '0', 'admin/attributes/add', '', '1');
INSERT INTO `tc_privileges` VALUES ('167', '48', 'SPSX_02', '编辑商品属性', '0', 'admin/attributes/edit', 'admin/attributes/setToggle', '1');
INSERT INTO `tc_privileges` VALUES ('168', '48', 'SPSX_03', '删除商品属性', '0', 'admin/attributes/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('169', '2', 'HHQL_04', '清理缓存', '0', 'admin/index/clearcache', '', '1');
INSERT INTO `tc_privileges` VALUES ('170', '54', 'DSHSP_03', '删除商品', '0', 'admin/goods/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('171', '55', 'WGSP_03', '删除商品', '0', 'admin/goods/del', '', '1');
INSERT INTO `tc_privileges` VALUES ('172', '2', 'ZYDP_00', '登录自营店铺', '0', 'admin/shops/inself', '', '1');
INSERT INTO `tc_privileges` VALUES ('173', '61', 'FGGL_00', '查看风格管理', '1', 'admin/styles/index', '', '1');
INSERT INTO `tc_privileges` VALUES ('174', '61', 'FGGL_04', '风格管理', '0', 'admin/styles/edit', '', '1');
INSERT INTO `tc_privileges` VALUES ('175', '62', 'CWGL_00', '查看财务管理', '0', '', '', '1');
INSERT INTO `tc_privileges` VALUES ('176', '63', 'TXSQ_00', '查看提现申请', '1', 'admin/cashdraws/index', 'admin/cashdraws/pageQuery', '1');
INSERT INTO `tc_privileges` VALUES ('177', '63', 'TXSQ_04', '处理提现申请', '0', 'admin/cashdraws/handle', 'admin/cashdraws/toHandle', '1');
INSERT INTO `tc_privileges` VALUES ('178', '64', 'JSSQ_00', '查看结算申请', '1', 'admin/settlements/index', 'admin/settlements/pageQuery,admin/settlements/toView,admin/settlements/pageGoodsQuery', '1');
INSERT INTO `tc_privileges` VALUES ('179', '64', 'JSSQ_04', '处理结算申请', '0', 'admin/settlements/handle', 'admin/settlements/toHandle', '1');
INSERT INTO `tc_privileges` VALUES ('180', '65', 'SJJS_00', '查看商家结算', '1', 'admin/settlements/toShopIndex', 'admin/settlements/pageShopQuery,admin/settlements/pageShopOrderQuery,admin/settlements/toOrders', '1');
INSERT INTO `tc_privileges` VALUES ('181', '65', 'SJJS_04', '生成结算单', '0', 'admin/settlements/generateSettleByShop', '', '1');

-- ----------------------------
-- Table structure for tc_recommends
-- ----------------------------
DROP TABLE IF EXISTS `tc_recommends`;
CREATE TABLE `tc_recommends` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `goodsCatId` int(11) NOT NULL DEFAULT '0' COMMENT '商品分类ID',
  `dataType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据类型	',
  `dataSrc` tinyint(4) DEFAULT '0' COMMENT '数据来源',
  `dataId` int(11) NOT NULL DEFAULT '0' COMMENT '数据在其表中的主键',
  `dataSort` int(11) NOT NULL DEFAULT '0' COMMENT '数据排序号',
  PRIMARY KEY (`id`),
  KEY `goodsCatId` (`goodsCatId`,`dataType`,`dataSrc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐记录表';

-- ----------------------------
-- Records of tc_recommends
-- ----------------------------

-- ----------------------------
-- Table structure for tc_roles
-- ----------------------------
DROP TABLE IF EXISTS `tc_roles`;
CREATE TABLE `tc_roles` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `roleName` varchar(30) NOT NULL COMMENT '角色名称',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `privileges` text COMMENT '权限列表',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	-1:删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`roleId`),
  KEY `roleFlag` (`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tc_roles
-- ----------------------------
INSERT INTO `tc_roles` VALUES ('1', '商品管理员', null, 'spfl_00,spfl_01,spfl_02,spfl_03,ppgl_00,ppgl_01,ppgl_02,ppgl_03,splb_00,splb_04,splb_03,spsh_00,spsh_04,spsh_03,sppl_00,sppl_04,sppl_03', '1', '2014-11-02 12:07:12');
INSERT INTO `tc_roles` VALUES ('2', '门店管理员', null, 'dplb_00,dplb_01,dplb_02,dplb_03,dpsh_00,dpsh_04,dpsh_03', '1', '2014-11-02 12:09:05');
INSERT INTO `tc_roles` VALUES ('3', '系统管理员', '', 'SY_001,HHQL,XTGL_00,CDGL_00,CDGL_01,CDGL_02,CDGL_03,QXGL_01,QXGL_02,QXGL_03,QTCD_00,QTCD_01,QTCD_02,QTCD_03,JSGL_00,JSGL_01,JSGL_02,JSGL_03,ZYGL_00,ZYGL_01,ZYGL_02,ZYGL_03,DLRZ_00,CZRZ_00,TPKJ_00,TPKJ_04,SCXX_00,SCXX_01,SCXX_03,SCSZ_00,SCPZ_00,SCPZ_02,DHGL_00,DHGL_01,DHGL_02,DHGL_03,GGGL_00,GGGL_01,GGGL_02,GGGL_03,GGWZ_00,GGWZ_01,GGWZ_02,GGWZ_03,YHGL_00,YHGL_01,YHGL_02,YHGL_03,ZFGL_00,ZFGL_02,ZFGL_03,DQGL_00,DQGL_01,DQGL_02,DQGL_03,YQGL_00,YQGL_01,YQGL_02,YQGL_03,KDGL_00,KDGL_01,KDGL_02,KDGL_03,HYSZ_00,HYDJ_00,HYDJ_01,HYDJ_02,HYDJ_03,HYGL_00,HYGL_01,HYGL_02,HYGL_03,ZHGL_00,ZHGL_02,WZSZ_00,WZGL_00,WZGL_01,WZGL_02,WZGL_03,WZFL_00,WZFL_01,WZFL_02,WZFL_03,SPTJ_00,SPTJ_04,DPTJ_00,DPTJ_04,PPTJ_00,PPTJ_04,DDGL_00,DDLB_00,TSDD_00,TKDD_00,DPXX_00,DPSZ_00,RZGL_00,RZGL_01,RZGL_02,RZGL_03,DPSQ_00,DPSQ_03,DPSQ_04,DPGL_00,DPGL_01,DPGL_02,DPGL_03,TYDP_00,SPXX_00,SPSZ_00,SJSP_00,SJSP_04,SJSP_03,DSHSP_00,DSHSP_04,WGSP_00,SPFL_00,SPFL_01,SPFL_02,SPFL_03,SPSX_00,PPGL_00,PPGL_01,PPGL_02,PPGL_03,SPGG_00,SPGG_01,SPGG_02,SPGG_03,PJGL_00,PJGL_02,PJGL_03', '1', '2014-11-02 12:09:09');
INSERT INTO `tc_roles` VALUES ('4', '客服', null, 'sppl_00,sppl_04,sppl_03', '-1', '2014-12-20 00:08:53');
INSERT INTO `tc_roles` VALUES ('5', '测试管理员', 'test', 'SY_001,XTGL_00,CDGL_00,CDGL_01,CDGL_02,CDGL_03,QXGL_01,QXGL_02,QXGL_03,23', '-1', '0000-00-00 00:00:00');
INSERT INTO `tc_roles` VALUES ('6', '', '', '', '-1', '0000-00-00 00:00:00');
INSERT INTO `tc_roles` VALUES ('7', 'vvv', '', '', '-1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tc_settlements
-- ----------------------------
DROP TABLE IF EXISTS `tc_settlements`;
CREATE TABLE `tc_settlements` (
  `settlementId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `settlementNo` varchar(20) NOT NULL COMMENT '结算单号',
  `settlementType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '结算类型	0：手工结算 1:即时结算',
  `shopId` int(11) NOT NULL COMMENT '店铺ID',
  `accName` varchar(100) NOT NULL COMMENT '商家开卡银行',
  `accNo` varchar(50) NOT NULL COMMENT '商家卡号',
  `accUser` varchar(100) NOT NULL COMMENT '商家持卡人姓名',
  `areaName` varchar(100) NOT NULL COMMENT '商家开卡地区',
  `settlementMoney` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '商品总金额',
  `commissionFee` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '结算应收的佣金（不含运费）',
  `backMoney` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '应返还给商家的金额',
  `settlementStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '结算状态	0:申请结算 1:已结算',
  `settlementTime` datetime DEFAULT NULL COMMENT '结算处理时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '结算备注（商城填写）',
  `createTime` datetime NOT NULL COMMENT '结算单申请时间',
  PRIMARY KEY (`settlementId`),
  KEY `shopId` (`shopId`),
  KEY `settlementStatus` (`settlementStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单结算表';

-- ----------------------------
-- Records of tc_settlements
-- ----------------------------

-- ----------------------------
-- Table structure for tc_shop_accreds
-- ----------------------------
DROP TABLE IF EXISTS `tc_shop_accreds`;
CREATE TABLE `tc_shop_accreds` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `accredId` int(11) NOT NULL DEFAULT '0' COMMENT '认证ID',
  `shopId` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  PRIMARY KEY (`id`),
  KEY `shopId` (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='店铺认证信息表';

-- ----------------------------
-- Records of tc_shop_accreds
-- ----------------------------
INSERT INTO `tc_shop_accreds` VALUES ('2', '2', '3');
INSERT INTO `tc_shop_accreds` VALUES ('3', '2', '4');
INSERT INTO `tc_shop_accreds` VALUES ('5', '1', '5');
INSERT INTO `tc_shop_accreds` VALUES ('6', '1', '8');
INSERT INTO `tc_shop_accreds` VALUES ('7', '2', '8');
INSERT INTO `tc_shop_accreds` VALUES ('8', '1', '9');
INSERT INTO `tc_shop_accreds` VALUES ('9', '2', '9');
INSERT INTO `tc_shop_accreds` VALUES ('10', '1', '10');
INSERT INTO `tc_shop_accreds` VALUES ('11', '2', '10');
INSERT INTO `tc_shop_accreds` VALUES ('12', '1', '11');
INSERT INTO `tc_shop_accreds` VALUES ('19', '1', '1');
INSERT INTO `tc_shop_accreds` VALUES ('20', '2', '1');

-- ----------------------------
-- Table structure for tc_shop_applys
-- ----------------------------
DROP TABLE IF EXISTS `tc_shop_applys`;
CREATE TABLE `tc_shop_applys` (
  `applyId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userId` int(11) DEFAULT '0' COMMENT '申请用户ID',
  `linkman` varchar(50) NOT NULL COMMENT '联系人',
  `phoneNo` varchar(20) NOT NULL COMMENT '手机号码',
  `applyDesc` varchar(255) NOT NULL COMMENT '申请说明',
  `applyStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态	-1:申请失败 0:申请中 1:已处理',
  `handleDesc` text COMMENT '处理结果说明',
  `shopId` int(11) DEFAULT '0' COMMENT '申请开通的店铺Id',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`applyId`),
  KEY `applyStatus` (`applyStatus`,`dataFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开店申请表';

-- ----------------------------
-- Records of tc_shop_applys
-- ----------------------------

-- ----------------------------
-- Table structure for tc_shop_cats
-- ----------------------------
DROP TABLE IF EXISTS `tc_shop_cats`;
CREATE TABLE `tc_shop_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `shopId` int(11) NOT NULL COMMENT '门店ID',
  `parentId` int(11) NOT NULL COMMENT '父ID',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	0:隐藏 1:显示',
  `catName` varchar(100) NOT NULL COMMENT '分类名称',
  `catSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	1:有效 -1:删除',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`catId`),
  KEY `parentId` (`isShow`,`dataFlag`) USING BTREE,
  KEY `shopId` (`shopId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='店铺分类表';

-- ----------------------------
-- Records of tc_shop_cats
-- ----------------------------
INSERT INTO `tc_shop_cats` VALUES ('1', '1', '0', '1', '手机电器', '5', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('2', '1', '0', '1', '食品饮料', '1', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('3', '1', '0', '1', '生鲜品类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('4', '1', '1', '1', '手机', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('5', '1', '1', '1', '畅玩', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('6', '1', '1', '1', '华为', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('7', '1', '1', '1', 'Mate/P系列', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('8', '1', '1', '1', '华为', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('9', '1', '1', '1', 'G系列', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('10', '1', '1', '1', '畅享系列', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('11', '1', '1', '1', '运营商合约', '0', '-1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('12', '2', '0', '1', '进口水果', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('13', '2', '12', '1', '苹果类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('14', '2', '12', '1', '梨子类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('15', '2', '12', '1', '柑橘类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('16', '2', '12', '1', '橙柚类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('17', '2', '12', '1', '葡提类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('18', '2', '12', '1', '桃李类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('19', '2', '12', '1', '浆果类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('20', '2', '0', '1', '国产水果', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('21', '2', '0', '1', '水果礼盒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('22', '2', '20', '1', '苹果类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('23', '2', '20', '1', '梨子类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('24', '2', '20', '1', '柑橘类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('25', '2', '20', '1', '橙柚类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('26', '2', '20', '1', '葡提类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('27', '2', '20', '1', '桃李类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('28', '2', '20', '1', '浆果类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('29', '2', '21', '1', '三合一礼盒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('30', '2', '21', '1', '四合一礼盒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('31', '2', '21', '1', '其它礼盒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('32', '3', '0', '1', '有机蔬菜', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('33', '3', '0', '1', '根茎•瓜类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('34', '3', '0', '1', '茄果•花菜•豆', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('35', '3', '0', '1', '加工蔬菜', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('36', '3', '0', '1', '礼盒/券', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('37', '3', '32', '1', '茄子/豆角/辣椒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('38', '3', '32', '1', '番茄类', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('39', '3', '32', '1', '叶菜/生菜', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('40', '3', '32', '1', '土豆/山药', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('41', '3', '32', '1', '胡萝卜/洋葱', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('42', '4', '0', '1', '卷纸', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('43', '4', '42', '1', '有芯', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('44', '4', '42', '1', '无芯', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('45', '4', '0', '1', '纸抽', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('46', '4', '0', '1', '湿巾', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('47', '4', '45', '1', '软抽', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('48', '4', '45', '1', '盒抽', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('49', '4', '46', '1', '成人湿巾', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('50', '4', '46', '1', '儿童湿巾', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('51', '4', '46', '1', '婴儿湿巾', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('52', '6', '0', '1', '白酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('53', '6', '0', '1', '红酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('54', '6', '0', '1', '洋酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('55', '6', '0', '1', '啤酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('56', '6', '0', '1', '黄酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('57', '6', '0', '1', '保健酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('58', '6', '0', '1', '预调酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('59', '6', '0', '1', '配制酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('60', '6', '55', '1', '黄啤酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('61', '6', '55', '1', '白啤酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('62', '6', '55', '1', '黑啤酒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('63', '7', '0', '1', '食用油', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('64', '7', '63', '1', '橄榄油', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('65', '7', '63', '1', '葵花籽油', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('66', '7', '63', '1', '大豆油', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('67', '7', '63', '1', '玉米油', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('68', '7', '63', '1', '花生油', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('69', '7', '63', '1', '调和油', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('70', '7', '0', '1', '大米面粉', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('71', '7', '0', '1', '调味品', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('72', '7', '0', '1', '方便速食', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('73', '7', '0', '1', '菌菇干货', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('74', '8', '0', '1', '坚果/炒货', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('75', '8', '0', '1', '果干/蜜饯', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('76', '8', '0', '1', '糕点/点心', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('77', '8', '0', '1', '饼干/膨化', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('78', '8', '0', '1', '素食/卤味', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('79', '8', '0', '1', '海味/河鲜', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('80', '8', '74', '1', '碧根果', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('81', '8', '74', '1', '开口松子', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('82', '8', '74', '1', '夏威夷果', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('83', '8', '74', '1', '开心果', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('84', '8', '74', '1', '纸皮核桃', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('85', '8', '74', '1', '手剥巴旦木', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('86', '8', '74', '1', '瓜子', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('87', '8', '75', '1', '芒果干', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('88', '8', '75', '1', '冻干榴莲干', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('89', '8', '75', '1', '草莓干', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('90', '8', '75', '1', '猕猴桃干', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('91', '8', '75', '1', '木瓜干', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('92', '9', '0', '1', '彩妆', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('93', '9', '0', '1', '护肤', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('94', '9', '0', '1', '唇膏', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('95', '9', '0', '1', '香水', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('96', '9', '92', '1', '面部', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('97', '9', '92', '1', '脸部', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('98', '9', '92', '1', '唇部', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('99', '9', '92', '1', '卸妆', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('100', '9', '95', '1', '女士香水', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('101', '9', '95', '1', '男士香水', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('102', '9', '95', '1', '香水礼盒', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('103', '10', '0', '1', '安神保健', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('104', '10', '0', '1', '营养补充剂', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('105', '10', '0', '1', '芦荟玛卡', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('106', '10', '0', '1', '维生素', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('107', '10', '0', '1', '安神补脑', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('108', '10', '103', '1', '阿胶', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('109', '10', '103', '1', '三楂', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('110', '10', '103', '1', '蜜枣', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('111', '11', '0', '1', '手机专区', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('112', '11', '0', '1', '平板电脑', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('113', '11', '0', '1', '穿戴设备', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('114', '11', '0', '1', '精品配件', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('115', '11', '111', '1', '荣耀手机', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('116', '1', '0', '1', '个人护理', '2', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('117', '1', '0', '1', '清洁用品', '3', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('118', '1', '0', '1', '母婴用品', '4', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('119', '1', '0', '1', '中外名酒', '7', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('120', '1', '2', '1', '坚果零食', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('121', '1', '2', '1', '糖果饼干', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('122', '1', '2', '1', '水饮茶冲', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('123', '1', '3', '1', '新鲜水果', '1', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('124', '1', '3', '1', '禽类蛋品', '2', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('125', '1', '3', '1', '饮品甜品', '3', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('126', '1', '3', '1', '新鲜蔬菜', '4', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('127', '1', '3', '1', '海鲜水产', '5', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('128', '1', '3', '1', '猪牛羊肉', '6', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('129', '1', '3', '1', '冷冻速食', '7', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('130', '1', '3', '1', '冷冻速食', '8', '-1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('131', '1', '3', '1', '冷冻速食', '9', '-1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('132', '1', '3', '1', '冷冻速食', '10', '-1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('133', '1', '3', '1', '冷冻速食', '11', '-1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('134', '1', '116', '1', '洗发护发', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('135', '1', '116', '1', '卫生护理', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('136', '1', '116', '1', '身体护理', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('137', '1', '116', '1', '口腔护理', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('138', '1', '116', '1', '洗护沐浴', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('139', '1', '117', '1', '纸品湿巾', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('140', '1', '117', '1', '衣物清洁', '1', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('141', '1', '117', '1', '清洁工具', '2', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('142', '1', '117', '1', '家庭清洁', '3', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('143', '1', '117', '1', '一次性用品', '4', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('144', '1', '117', '1', '驱虫用品', '5', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('145', '1', '117', '1', '皮具护理', '6', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('146', '1', '118', '1', '营养辅食', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('147', '1', '118', '1', '尿裤湿巾', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('148', '1', '118', '1', '喂养用品', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('149', '1', '118', '1', '洗护用品', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('150', '1', '118', '1', '寝居服饰', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('151', '1', '118', '1', '妈妈专区', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('152', '1', '118', '1', '童车童床', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('153', '1', '118', '1', '儿童乐器', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('154', '1', '118', '1', '儿童玩具', '0', '1', '2016-09-28 13:53:41');
INSERT INTO `tc_shop_cats` VALUES ('155', '1', '2', '1', '牛奶饮品', '0', '1', '2016-09-28 13:53:41');

-- ----------------------------
-- Table structure for tc_shop_configs
-- ----------------------------
DROP TABLE IF EXISTS `tc_shop_configs`;
CREATE TABLE `tc_shop_configs` (
  `configId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL COMMENT '门店ID',
  `shopTitle` varchar(255) DEFAULT NULL COMMENT '门店标题',
  `shopKeywords` varchar(255) DEFAULT NULL COMMENT '门店关键字',
  `shopDesc` varchar(255) DEFAULT NULL COMMENT '门店描述',
  `shopBanner` varchar(150) DEFAULT NULL COMMENT '门店顶部图片',
  `shopAds` text COMMENT '门店广告',
  `shopAdsUrl` text COMMENT '门店广告对应的url',
  `shopServicer` varchar(100) DEFAULT NULL COMMENT '门店客服',
  `shopHotWords` varchar(255) DEFAULT NULL COMMENT '店铺热搜',
  PRIMARY KEY (`configId`),
  KEY `shopId` (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='店铺配置表';

-- ----------------------------
-- Records of tc_shop_configs
-- ----------------------------
INSERT INTO `tc_shop_configs` VALUES ('1', '1', '', 'WSTMart官方自营', '', '', 'upload/shopads/2016-10/57fefa2ba0ccc.jpg,upload/shopads/2016-10/57fefa2bac3e7.jpg,upload/shopads/2016-10/57fefa2bce938.jpg', ',,', '', 'wstmart自营,维达纸巾,美食');
INSERT INTO `tc_shop_configs` VALUES ('2', '2', '', '', '', '', '', '', '', null);
INSERT INTO `tc_shop_configs` VALUES ('3', '3', '', '', '', '', '', '', '', null);
INSERT INTO `tc_shop_configs` VALUES ('4', '4', '', '维达旗舰店', '', 'upload/shopbanner/2016-10/57fa2bef49194.jpg', '', '', '', '');
INSERT INTO `tc_shop_configs` VALUES ('5', '5', '', '', '', '', '', '', '', null);
INSERT INTO `tc_shop_configs` VALUES ('6', '6', '', '', '', '', '', '', '', null);
INSERT INTO `tc_shop_configs` VALUES ('7', '7', '', 'wstmart粮油食品旗舰店', '', 'upload/shopbanner/2016-10/57fb0e2fd56c3.png', '', '', '', '');
INSERT INTO `tc_shop_configs` VALUES ('8', '8', '', '', '', '', '', '', '', null);
INSERT INTO `tc_shop_configs` VALUES ('9', '9', '', '', '', '', '', '', '', null);
INSERT INTO `tc_shop_configs` VALUES ('10', '10', '', '', '', '', '', '', '', null);
INSERT INTO `tc_shop_configs` VALUES ('11', '11', '', '', '', '', '', '', '', null);

-- ----------------------------
-- Table structure for tc_shop_ferights
-- ----------------------------
DROP TABLE IF EXISTS `tc_shop_ferights`;
CREATE TABLE `tc_shop_ferights` (
  `freightId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL COMMENT '店铺id',
  `areaId2` int(11) NOT NULL COMMENT '市级Id',
  `freight` int(11) NOT NULL DEFAULT '0' COMMENT '运费',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`freightId`),
  KEY `shopId` (`shopId`,`areaId2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺运费表';

-- ----------------------------
-- Records of tc_shop_ferights
-- ----------------------------

-- ----------------------------
-- Table structure for tc_shop_scores
-- ----------------------------
DROP TABLE IF EXISTS `tc_shop_scores`;
CREATE TABLE `tc_shop_scores` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL COMMENT '门店ID',
  `totalScore` int(11) NOT NULL DEFAULT '0' COMMENT '总评分',
  `totalUsers` int(11) NOT NULL DEFAULT '0' COMMENT '总评评分用户数',
  `goodsScore` int(11) NOT NULL DEFAULT '0' COMMENT '商品评分',
  `goodsUsers` int(11) NOT NULL DEFAULT '0' COMMENT '商品评分用户数',
  `serviceScore` int(11) NOT NULL DEFAULT '0' COMMENT '服务评分',
  `serviceUsers` int(11) NOT NULL DEFAULT '0' COMMENT '服务评分用户数',
  `timeScore` int(11) NOT NULL DEFAULT '0' COMMENT '时效评分',
  `timeUsers` int(11) NOT NULL DEFAULT '0' COMMENT '	时效评分用户数',
  PRIMARY KEY (`scoreId`),
  UNIQUE KEY `shopId` (`shopId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='店铺评分表';

-- ----------------------------
-- Records of tc_shop_scores
-- ----------------------------
INSERT INTO `tc_shop_scores` VALUES ('1', '1', '12', '1', '4', '1', '4', '1', '4', '1');
INSERT INTO `tc_shop_scores` VALUES ('2', '2', '24', '2', '8', '2', '8', '2', '8', '2');
INSERT INTO `tc_shop_scores` VALUES ('3', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('4', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('5', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('6', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('7', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('8', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('9', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('10', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tc_shop_scores` VALUES ('11', '11', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for tc_shops
-- ----------------------------
DROP TABLE IF EXISTS `tc_shops`;
CREATE TABLE `tc_shops` (
  `shopId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `shopSn` varchar(20) NOT NULL COMMENT '门店编号',
  `userId` int(11) NOT NULL COMMENT '门店所有人ID',
  `areaIdPath` varchar(255) NOT NULL COMMENT '区域路径',
  `areaId` int(11) NOT NULL COMMENT '最终所属区域ID',
  `isSelf` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否自营	1:自营 0:非自营',
  `shopName` varchar(100) NOT NULL COMMENT '门店名称',
  `shopkeeper` varchar(50) NOT NULL COMMENT '店主',
  `telephone` varchar(20) NOT NULL COMMENT '店主手机号',
  `shopCompany` varchar(255) NOT NULL COMMENT '公司名称',
  `shopImg` varchar(150) NOT NULL COMMENT '门店图标	',
  `shopTel` varchar(40) NOT NULL COMMENT '门店电话',
  `shopQQ` varchar(50) DEFAULT NULL COMMENT 'QQ号',
  `shopWangWang` varchar(50) DEFAULT NULL COMMENT '旺旺号',
  `shopAddress` varchar(255) NOT NULL COMMENT '门店地址',
  `bankId` int(11) NOT NULL COMMENT '银行ID',
  `bankNo` varchar(20) NOT NULL COMMENT '银行卡号',
  `bankUserName` varchar(50) NOT NULL COMMENT '银行卡所有人名称',
  `isInvoice` tinyint(4) NOT NULL DEFAULT '0' COMMENT '能否开发票	1:能 0:不能',
  `invoiceRemarks` varchar(255) DEFAULT NULL COMMENT '发票说明',
  `serviceStartTime` time NOT NULL DEFAULT '08:30:00' COMMENT '服务营业时间',
  `serviceEndTime` time NOT NULL DEFAULT '22:30:00' COMMENT '服务营业时间',
  `freight` int(11) DEFAULT '0' COMMENT '默认运费',
  `shopAtive` tinyint(4) NOT NULL DEFAULT '1' COMMENT '门店状态	1:营业中 0：休息中',
  `shopStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '门店状态	-2:已停止 -1:拒绝 0：未审核 1:已审核',
  `statusDesc` varchar(255) DEFAULT NULL COMMENT '状态说明	一般用于停止和拒绝说明',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `shopMoney` decimal(11,2) DEFAULT '0.00' COMMENT '商家钱包',
  `lockMoney` decimal(11,2) DEFAULT '0.00' COMMENT '冻结金额',
  `noSettledOrderNum` int(11) DEFAULT '0' COMMENT '未结算的订单数',
  `noSettledOrderFee` decimal(11,2) DEFAULT '0.00' COMMENT '未结算的订单佣金',
  `paymentMoney` decimal(11,2) DEFAULT '0.00' COMMENT '需缴纳的佣金',
  `bankAreaId` int(11) DEFAULT '0' COMMENT '银行账号开卡地区',
  `bankAreaIdPath` varchar(100) DEFAULT NULL COMMENT '银行账号开卡地区ID路径',
  PRIMARY KEY (`shopId`),
  KEY `shopStatus` (`shopStatus`,`dataFlag`) USING BTREE,
  KEY `areaIdPath` (`areaIdPath`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='店铺表';

-- ----------------------------
-- Records of tc_shops
-- ----------------------------
INSERT INTO `tc_shops` VALUES ('1', 'S000000001', '1', '440000_440100_440106_', '440106', '1', 'WSTMart自营超市', 'wstmart', '13888888888', 'WSTMart自营超市', 'upload/shops/2016-10/5800ac97d0c24.png', '13888888888', '153289970', null, '燕岭路89号燕侨大厦', '24', '2343243124312412', '是暗室逢灯', '0', '', '08:30:00', '22:30:00', '5', '1', '1', '', '1', '2016-10-08 10:27:28', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('2', 'S000000002', '3', '440000_440100_440106_', '440106', '0', '新鲜鲜果旗舰店', '新鲜鲜果', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57f8a7f3ef8ea.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '234234234324', '说法', '0', '', '08:30:00', '22:30:00', '5', '1', '1', '', '1', '2016-10-08 16:02:44', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('3', 'S000000003', '4', '440000_440100_440106_', '440106', '0', '海源水果蔬菜店', '海源', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57f8f801ced69.jpg', '18902295525', '153289970', null, '燕岭路89号燕侨大厦', '24', '234234234234324', '地方', '0', '', '08:30:00', '22:30:00', '4', '1', '1', '', '1', '2016-10-08 21:44:57', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('4', 'S000000004', '7', '440000_440100_440106_', '440106', '0', '维达自营旗舰店', '维达', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fa2a9dba7c2.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '234234243234242', '水电费', '0', '', '08:30:00', '22:30:00', '4', '1', '1', '', '1', '2016-10-09 19:32:17', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('5', 'S000000005', '8', '440000_440100_440106_', '440106', '0', '乐居家具日用旗舰店', '商淘', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fa3fd1377e1.jpg', '18902295525', '153289970', null, '燕岭路89号燕侨大厦', '24', '23424234234', '234是', '1', '仔细核对，开错无补', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-09 21:03:01', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('6', 'S000000006', '9', '440000_440100_440106_', '440106', '0', 'wstmart酒水旗舰店', '酒水', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57faf4a944a87.jpg', '18902295525', '153289970', null, '燕岭路89号燕侨大厦', '24', '234242322', '撒旦法', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 09:53:50', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('7', 'S000000007', '10', '440000_440100_440106_', '440106', '0', 'wstmart粮油食品旗舰店', '粮油食品', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb0185b1d6d.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '2423234242', '的', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 10:49:35', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('8', 'S000000008', '11', '440000_440100_440106_', '440106', '0', 'wstmart三只松鼠官方旗舰店', '松鼠', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb39ff7f5e2.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '242342423', '4阿萨法', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 14:50:07', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('9', 'S000000009', '12', '440000_440100_440106_', '440106', '0', 'Sisley希思黎国际专营店', '希思黎', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb4c1a9d7f8.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '324242323', '发送', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 16:07:38', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('10', 'S000000010', '13', '440000_440100_440106_', '440106', '0', '奥蒂斯特保健旗舰店', '奥蒂斯特', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fb77a90c799.png', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '2343423432', '是的', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-10 19:15:34', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');
INSERT INTO `tc_shops` VALUES ('11', 'S000000011', '14', '440000_440100_440106_', '440106', '0', '华为荣耀旗舰店', '荣耀', '18902295525', '广州商淘信息科技有限公司', 'upload/shops/2016-10/57fc85b7c6bb4.jpg', '020-85289921', '153289970', null, '燕岭路89号燕侨大厦', '24', '3242323423423', '阿萨德', '0', '', '08:30:00', '22:30:00', '0', '1', '1', '', '1', '2016-10-11 14:25:24', '0.00', '0.00', '0', '0.00', '0.00', '0', '440000_440100_440106_');

-- ----------------------------
-- Table structure for tc_spec_cats
-- ----------------------------
DROP TABLE IF EXISTS `tc_spec_cats`;
CREATE TABLE `tc_spec_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsCatId` int(11) NOT NULL DEFAULT '0' COMMENT '最后一级商品分类ID',
  `goodsCatPath` varchar(100) NOT NULL COMMENT '	商品分类路径',
  `catName` varchar(255) NOT NULL COMMENT '类型名称',
  `isAllowImg` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否允许上传图片	0:不允许 1:允许',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示	1:是 0：否',
  `catSort` int(11) DEFAULT '0' COMMENT '排序号',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	1:有效 -1:无效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`catId`),
  KEY `shopId` (`goodsCatPath`,`dataFlag`),
  KEY `isShow` (`isShow`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品规格分类表';

-- ----------------------------
-- Records of tc_spec_cats
-- ----------------------------
INSERT INTO `tc_spec_cats` VALUES ('1', '351', '334_348_351_', '手机版本', '0', '1', '0', '1', '2016-10-08 10:46:20');
INSERT INTO `tc_spec_cats` VALUES ('2', '351', '334_348_351_', '屏幕大小', '0', '1', '0', '1', '2016-10-08 10:47:05');
INSERT INTO `tc_spec_cats` VALUES ('3', '351', '334_348_351_', '内存大小', '0', '1', '0', '1', '2016-10-08 10:47:35');
INSERT INTO `tc_spec_cats` VALUES ('4', '351', '334_348_351_', '套装', '0', '1', '0', '1', '2016-10-08 10:51:01');
INSERT INTO `tc_spec_cats` VALUES ('5', '351', '334_348_351_', '购买方式', '0', '1', '0', '1', '2016-10-08 10:51:22');
INSERT INTO `tc_spec_cats` VALUES ('6', '351', '334_348_351_', '选择颜色', '1', '1', '0', '1', '2016-10-08 10:52:02');

-- ----------------------------
-- Table structure for tc_spec_items
-- ----------------------------
DROP TABLE IF EXISTS `tc_spec_items`;
CREATE TABLE `tc_spec_items` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `catId` int(11) NOT NULL DEFAULT '0' COMMENT '类型Id',
  `goodsId` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `itemName` varchar(100) NOT NULL COMMENT '项名称',
  `itemDesc` varchar(255) DEFAULT NULL,
  `itemImg` varchar(150) NOT NULL COMMENT '规格图片',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1:有效 -1:无效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`itemId`),
  KEY `goodsId` (`goodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='商品规格值表';

-- ----------------------------
-- Records of tc_spec_items
-- ----------------------------
INSERT INTO `tc_spec_items` VALUES ('1', '1', '1', '1', '双4G版', null, '', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('2', '1', '4', '1', '官方标配', null, '', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('3', '1', '5', '1', '全款购买', null, '', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('4', '1', '6', '1', '深夜灰', null, 'upload/goods/2016-10/57f8624a2ecfa.png', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('5', '1', '6', '1', '破晓银', null, 'upload/goods/2016-10/57f862509d7ce.png', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('6', '1', '6', '1', '落日灰', null, 'upload/goods/2016-10/57f8625d2383e.png', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('7', '1', '5', '1', '分期购买', null, '', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('8', '1', '4', '1', '豪华套餐', null, '', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('9', '1', '1', '1', '移动版', null, '', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('10', '1', '1', '1', '全网通版', null, '', '1', '2016-10-08 11:12:34');
INSERT INTO `tc_spec_items` VALUES ('11', '11', '1', '50', '移动4G版', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('12', '11', '4', '50', '官方标配', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('13', '11', '5', '50', '全款购买', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('14', '11', '6', '50', '铂光金', null, 'upload/goods/2016-10/57fc884aa4663.png', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('15', '11', '6', '50', '冰河银', null, 'upload/goods/2016-10/57fc8850544a6.png', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('16', '11', '5', '50', '12月免息购买', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('17', '11', '4', '50', '套装1', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('18', '11', '4', '50', '套装2', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('19', '11', '4', '50', '套装3', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('20', '11', '4', '50', '套装4', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('21', '11', '4', '50', '套装5', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('22', '11', '1', '50', '移动联通双4G', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('23', '11', '1', '50', '电信4G版', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('24', '11', '1', '50', '全网通版', null, '', '1', '2016-10-11 14:52:05');
INSERT INTO `tc_spec_items` VALUES ('25', '11', '1', '51', '移动4G版', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('26', '11', '4', '51', '官方标配', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('27', '11', '6', '51', '白色', null, 'upload/goods/2016-10/57fc8eb348d8b.png', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('28', '11', '6', '51', '黑色', null, 'upload/goods/2016-10/57fc8eb5e16f3.png', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('29', '11', '6', '51', '金色', null, 'upload/goods/2016-10/57fc8eb939967.png', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('30', '11', '4', '51', '套餐1', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('31', '11', '4', '51', '套餐2', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('32', '11', '4', '51', '套餐3', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('33', '11', '4', '51', '套餐4', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('34', '11', '1', '51', '移动联通双4G版', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('35', '11', '1', '51', '电信4G版', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('36', '11', '1', '51', '全网通版', null, '', '1', '2016-10-11 15:18:53');
INSERT INTO `tc_spec_items` VALUES ('37', '11', '1', '52', '移动4G', null, '', '1', '2016-10-11 15:32:24');
INSERT INTO `tc_spec_items` VALUES ('38', '11', '4', '52', '官方标配', null, '', '1', '2016-10-11 15:32:24');
INSERT INTO `tc_spec_items` VALUES ('39', '11', '6', '52', '铂光金', null, '', '1', '2016-10-11 15:32:24');
INSERT INTO `tc_spec_items` VALUES ('40', '11', '6', '52', '冰河银', null, '', '1', '2016-10-11 15:32:24');
INSERT INTO `tc_spec_items` VALUES ('41', '11', '4', '52', '入门套餐', null, '', '1', '2016-10-11 15:32:24');
INSERT INTO `tc_spec_items` VALUES ('42', '11', '4', '52', '豪华套餐', null, '', '1', '2016-10-11 15:32:24');
INSERT INTO `tc_spec_items` VALUES ('43', '11', '1', '52', '电信4G', null, '', '1', '2016-10-11 15:32:24');
INSERT INTO `tc_spec_items` VALUES ('44', '11', '1', '53', '移动4G', null, '', '1', '2016-10-11 15:47:30');
INSERT INTO `tc_spec_items` VALUES ('45', '11', '4', '53', '官方标配', null, '', '1', '2016-10-11 15:47:30');
INSERT INTO `tc_spec_items` VALUES ('46', '11', '6', '53', '白色', null, 'upload/goods/2016-10/57fc98464ca94.png', '1', '2016-10-11 15:47:30');
INSERT INTO `tc_spec_items` VALUES ('47', '11', '6', '53', '金色', null, 'upload/goods/2016-10/57fc984a72cee.png', '1', '2016-10-11 15:47:30');
INSERT INTO `tc_spec_items` VALUES ('48', '11', '4', '53', '套餐版', null, '', '1', '2016-10-11 15:47:30');
INSERT INTO `tc_spec_items` VALUES ('49', '11', '1', '53', '联通4G', null, '', '1', '2016-10-11 15:47:30');
INSERT INTO `tc_spec_items` VALUES ('50', '11', '1', '54', '荣耀7移动增强版', null, '', '1', '2016-10-11 16:01:41');
INSERT INTO `tc_spec_items` VALUES ('51', '11', '3', '54', '32G', null, '', '1', '2016-10-11 16:01:41');
INSERT INTO `tc_spec_items` VALUES ('52', '11', '4', '54', '官方标配', null, '', '1', '2016-10-11 16:01:41');
INSERT INTO `tc_spec_items` VALUES ('53', '11', '5', '54', '全款', null, '', '1', '2016-10-11 16:01:41');
INSERT INTO `tc_spec_items` VALUES ('54', '11', '6', '54', '晨曦金', null, 'upload/goods/2016-10/57fc9c1dc2eab.png', '1', '2016-10-11 16:01:41');

-- ----------------------------
-- Table structure for tc_staffs
-- ----------------------------
DROP TABLE IF EXISTS `tc_staffs`;
CREATE TABLE `tc_staffs` (
  `staffId` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(40) NOT NULL COMMENT '账号',
  `loginPwd` varchar(50) NOT NULL COMMENT '密码',
  `secretKey` int(32) NOT NULL COMMENT '安全码	安全码用于和用户密码混合在一起加密',
  `staffName` varchar(50) NOT NULL COMMENT '职员名称',
  `staffNo` varchar(20) DEFAULT NULL COMMENT '职员编号',
  `staffPhoto` varchar(150) DEFAULT NULL COMMENT '职员头像',
  `staffRoleId` int(11) NOT NULL COMMENT '职员角色ID',
  `workStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '工作状态	0：离职 1:在职',
  `staffStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '职员状态	1:正常 0:停用',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	1:有效 -1：删除',
  `createTime` datetime NOT NULL COMMENT '建立时间',
  `lastTime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `lastIP` char(16) DEFAULT NULL COMMENT '最后登录IP',
  PRIMARY KEY (`staffId`),
  KEY `loginName` (`loginName`),
  KEY `staffStatus` (`staffStatus`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='商城职员表';

-- ----------------------------
-- Records of tc_staffs
-- ----------------------------
INSERT INTO `tc_staffs` VALUES ('1', 'admin', 'd2f99c5faf90fcf28bdac65d81a6e741', '9365', 'admin', '001', 'Upload/staffs/2015-04/55306cf76bc1f.jpg', '3', '1', '1', '1', '2014-04-06 11:47:20', '2016-10-17 10:03:54', '113.109.180.6');
INSERT INTO `tc_staffs` VALUES ('2', 'system', 'a0da805e0b77f6cc05cdf0ef6ca8caad', '2508', '系统管理员', 'sn001', null, '3', '1', '1', '1', '2014-12-20 00:13:36', null, null);
INSERT INTO `tc_staffs` VALUES ('3', 'goodsAdmin', '1600195af828b21c1f586b1e01cb89fc', '1729', '商品管理员', 'sn001', 'Upload/staffs/2014-12/5496376a7ff89.jpg', '1', '1', '1', '1', '2014-12-21 10:58:40', null, null);
INSERT INTO `tc_staffs` VALUES ('4', 'rrr', '07835ecd178ee79ef0cfdb8240c18364', '8871', 'rrr', 'rrr', '\\upload\\staffs\\2016-08\\88\\e3b5fcacf9fb3c51b8cb5a036a2bf8.jpg', '0', '1', '1', '-1', '2016-08-12 23:57:41', null, null);
INSERT INTO `tc_staffs` VALUES ('5', 'ttt', '84199b9eb283d7c5be45a1f590d4a08f', '7982', 'ttt', 'ttt', '/upload/staffs/2016-08\\59\\099bfb349c4a7694c477aa94f23664.jpg', '0', '1', '1', '1', '2016-08-12 23:59:19', null, null);
INSERT INTO `tc_staffs` VALUES ('6', 'rrrcc', '17059e82870edb4e0320d52a40096519', '8333', 'rrr', 'rrr', '/upload/staffs/2016-08\\c2\\28f39b9a0cdd5839613f8aa6ef8256.jpg', '0', '1', '1', '1', '2016-08-13 00:20:48', null, null);
INSERT INTO `tc_staffs` VALUES ('7', 'rrr', 'd1ddbff25d00debf3ec48dcd541b7604', '5173', 'rrr', 'rr', '', '0', '1', '1', '1', '2016-08-13 00:23:02', null, null);
INSERT INTO `tc_staffs` VALUES ('8', 'rrrv', '79a65611f151432a56aca6cf291f3aff', '2294', 'rr', 'rr', '', '0', '1', '1', '1', '2016-08-13 00:23:15', null, null);
INSERT INTO `tc_staffs` VALUES ('9', 'dddddddddddddddddddd', 'c54a53d5764e413b33cfaba89a06d164', '4832', 'ddd--', 'dd--', '/upload/staffs/2016-08\\88\\e3b5fcacf9fb3c51b8cb5a036a2bf8.jpg', '2', '1', '1', '-1', '2016-08-13 00:24:32', null, null);
INSERT INTO `tc_staffs` VALUES ('10', 'fffff', '561429601f590b45f65e150b6a1daf5f', '3408', 'ffff', '', '', '0', '1', '1', '1', '2016-08-18 12:50:55', null, null);

-- ----------------------------
-- Table structure for tc_styles
-- ----------------------------
DROP TABLE IF EXISTS `tc_styles`;
CREATE TABLE `tc_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `styleSys` varchar(20) DEFAULT NULL COMMENT '系统类型	home：PC',
  `styleName` varchar(255) NOT NULL COMMENT '风格名称',
  `styleAuthor` varchar(255) DEFAULT NULL COMMENT '风格开发者',
  `styleShopSite` varchar(11) DEFAULT NULL COMMENT '风格开发者站点',
  `styleShopId` int(11) DEFAULT '0' COMMENT '店铺风格id',
  `stylePath` varchar(255) NOT NULL COMMENT '风格目录名称',
  `isUse` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否使用  1：使用中  0：未使用',
  PRIMARY KEY (`id`),
  KEY `isUse` (`isUse`,`styleSys`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商城风格表';

-- ----------------------------
-- Records of tc_styles
-- ----------------------------
INSERT INTO `tc_styles` VALUES ('1', 'home', '默认模板', 'WSTMart开发组', '', '1', 'default', '1');

-- ----------------------------
-- Table structure for tc_sys_configs
-- ----------------------------
DROP TABLE IF EXISTS `tc_sys_configs`;
CREATE TABLE `tc_sys_configs` (
  `configId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `fieldName` varchar(50) DEFAULT NULL COMMENT '字段名称',
  `fieldCode` varchar(20) DEFAULT NULL COMMENT '字段代码',
  `fieldValue` text COMMENT '字段值',
  PRIMARY KEY (`configId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='商城配置表';

-- ----------------------------
-- Records of tc_sys_configs
-- ----------------------------
INSERT INTO `tc_sys_configs` VALUES ('1', '商城名称', 'mallName', 'WSTMart电子商务系统');
INSERT INTO `tc_sys_configs` VALUES ('2', '商城标题', 'seoMallTitle', 'WSTMart');
INSERT INTO `tc_sys_configs` VALUES ('3', '商城描述', 'seoMallDesc', '');
INSERT INTO `tc_sys_configs` VALUES ('4', '商城关键字', 'seoMallKeywords', '');
INSERT INTO `tc_sys_configs` VALUES ('5', '联系邮箱', 'serviceEmail', 'wstmart@qq.com');
INSERT INTO `tc_sys_configs` VALUES ('6', '当前系统版本号', 'wstVersion', 'wstmart_v2.0.6_180726');
INSERT INTO `tc_sys_configs` VALUES ('7', '系统版本MD5', 'wstMd5', '97dd135bd07acd2fbac16e2d430d99d8');
INSERT INTO `tc_sys_configs` VALUES ('8', '移动端图片后缀', 'wstMobileImgSuffix', null);
INSERT INTO `tc_sys_configs` VALUES ('13', '商品是否需要审核', 'isGoodsVerify', '0');
INSERT INTO `tc_sys_configs` VALUES ('14', '访问统计', 'visitStatistics', '&lt;script src=&quot;https://s13.cnzz.com/z_stat.php?id=1263804910&amp;web_id=1263804910&quot; language=&quot;JavaScript&quot;&gt;&lt;/script&gt;');
INSERT INTO `tc_sys_configs` VALUES ('15', 'SMTP服务器', 'mailSmtp', '');
INSERT INTO `tc_sys_configs` VALUES ('16', 'SMTP端口', 'mailPort', '');
INSERT INTO `tc_sys_configs` VALUES ('17', '是否验证SMTP', 'mailAuth', '1');
INSERT INTO `tc_sys_configs` VALUES ('18', 'SMTP发件人邮箱', 'mailAddress', '');
INSERT INTO `tc_sys_configs` VALUES ('19', 'SMTP登录账号', 'mailUserName', '');
INSERT INTO `tc_sys_configs` VALUES ('20', 'SMTP登录密码', 'mailPassword', '');
INSERT INTO `tc_sys_configs` VALUES ('21', '发件人名称', 'mailSendTitle', '');
INSERT INTO `tc_sys_configs` VALUES ('22', '短信账号', 'smsKey', 'ee');
INSERT INTO `tc_sys_configs` VALUES ('23', '短信密码', 'smsPass', 'rrr');
INSERT INTO `tc_sys_configs` VALUES ('24', '号码每日发送数', 'smsLimit', '');
INSERT INTO `tc_sys_configs` VALUES ('26', '授权码', 'mallLicense', null);
INSERT INTO `tc_sys_configs` VALUES ('27', '商城Logo', 'mallLogo', 'upload/sysconfigs/2016-10/580480413c986.png');
INSERT INTO `tc_sys_configs` VALUES ('28', '商品默认图片', 'goodsLogo', 'upload/sysconfigs/2016-10/5804802a4b162.png');
INSERT INTO `tc_sys_configs` VALUES ('29', '底部设置', 'mallFooter', 'CROPYRIGHT 2013-2015 广州商淘信息科技有限公司 版权所有');
INSERT INTO `tc_sys_configs` VALUES ('30', '联系电话', 'serviceTel', '020-85289921');
INSERT INTO `tc_sys_configs` VALUES ('31', 'QQ', 'serviceQQ', '153289970');
INSERT INTO `tc_sys_configs` VALUES ('33', '热搜关键词', 'hotWordsSearch', 'WSTMart,b2c,多商户');
INSERT INTO `tc_sys_configs` VALUES ('34', '开启短信发送验证码', 'smsVerfy', '1');
INSERT INTO `tc_sys_configs` VALUES ('35', '开启手机验证', 'smsOpen', '1');
INSERT INTO `tc_sys_configs` VALUES ('37', '商城禁用关键字', 'registerLimitWords', 'admin,system,fuck');
INSERT INTO `tc_sys_configs` VALUES ('38', '结算金额设置', 'settlementStartMoney', '');
INSERT INTO `tc_sys_configs` VALUES ('39', '开启积分支付', 'isOpenScorePay', '0');
INSERT INTO `tc_sys_configs` VALUES ('40', '开启下单获取积分', 'isOrderScore', '0');
INSERT INTO `tc_sys_configs` VALUES ('41', '开启评价获取积分', 'isAppraisesScore', '0');
INSERT INTO `tc_sys_configs` VALUES ('42', '积分与金钱兑换比例', 'scoreCashRatio', '');
INSERT INTO `tc_sys_configs` VALUES ('43', '自动收货期限', 'autoReceiveDays', '');
INSERT INTO `tc_sys_configs` VALUES ('44', '自动评价期限', 'autoAppraiseDays', '');
INSERT INTO `tc_sys_configs` VALUES ('45', '订单佣金比例', 'poundageRate', null);
INSERT INTO `tc_sys_configs` VALUES ('46', '开启QQ登录', 'isOpenQQLogin', null);
INSERT INTO `tc_sys_configs` VALUES ('47', 'QQ APP ID', 'qqAppId', null);
INSERT INTO `tc_sys_configs` VALUES ('48', 'QQ APP KEY', 'qqAppKey', null);
INSERT INTO `tc_sys_configs` VALUES ('49', '开启微信登录', 'isOpenWxLogin', null);
INSERT INTO `tc_sys_configs` VALUES ('50', '微信 APP ID', 'wxAppId', null);
INSERT INTO `tc_sys_configs` VALUES ('51', '微信 APP KEY', 'wxAppKey', null);
INSERT INTO `tc_sys_configs` VALUES ('52', '店铺默认头像', 'shopLogo', 'upload/sysconfigs/2016-10/58048008993ed.png');
INSERT INTO `tc_sys_configs` VALUES ('53', '会员默认头像', 'userLogo', 'upload/sysconfigs/2016-10/5804800d5841e.png');
INSERT INTO `tc_sys_configs` VALUES ('54', '默认省份', 'defaultProvince', null);
INSERT INTO `tc_sys_configs` VALUES ('55', '水印文字', 'watermarkWord', '');
INSERT INTO `tc_sys_configs` VALUES ('56', '水印文字大小', 'watermarkSize', '');
INSERT INTO `tc_sys_configs` VALUES ('57', '水印文字颜色', 'watermarkColor', '');
INSERT INTO `tc_sys_configs` VALUES ('58', '水印文件', 'watermarkFile', '');
INSERT INTO `tc_sys_configs` VALUES ('59', '水印位置', 'watermarkPosition', '9');
INSERT INTO `tc_sys_configs` VALUES ('60', '水印透明度', 'watermarkOpacity', '50');
INSERT INTO `tc_sys_configs` VALUES ('61', '水印字体', 'watermarkTtf', '');
INSERT INTO `tc_sys_configs` VALUES ('62', '商城口号', 'mallSlogan', '实用的多用户商城系统！');
INSERT INTO `tc_sys_configs` VALUES ('63', '热搜广告词(商品)', 'adsGoodsWordsSearch', 'WSTMart商品');
INSERT INTO `tc_sys_configs` VALUES ('64', '热搜广告词(店铺)', 'adsShopWordsSearch', 'WSTMart店铺');
INSERT INTO `tc_sys_configs` VALUES ('65', '未付款订单有效期', 'autoCancelNoPayDays', '24');

-- ----------------------------
-- Table structure for tc_user_address
-- ----------------------------
DROP TABLE IF EXISTS `tc_user_address`;
CREATE TABLE `tc_user_address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '会员id',
  `userName` varchar(50) NOT NULL COMMENT '收货人名称',
  `userPhone` varchar(20) DEFAULT NULL COMMENT '收货人手机',
  `areaIdPath` varchar(255) NOT NULL DEFAULT '0' COMMENT '区域id路径	省Id_市Id_县Id 例如:440000_440100_440106_',
  `areaId` int(11) NOT NULL DEFAULT '0' COMMENT '最后一级区域id',
  `userAddress` varchar(255) NOT NULL COMMENT '详细地址',
  `isDefault` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认地址	0:否 1:是',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '有效状态	1：有效 -1：无效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`addressId`),
  KEY `userId` (`userId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='会员地址表';

-- ----------------------------
-- Records of tc_user_address
-- ----------------------------
INSERT INTO `tc_user_address` VALUES ('1', '2', '张无忌', '138733232342', '440000_440100_440106_', '440106', '燕岭路燕侨大厦1708', '0', '1', '2016-10-09 10:36:51');
INSERT INTO `tc_user_address` VALUES ('2', '19', '胡世春', '18710786643', '110000_110100_110105_', '110105', '望京启明国际大厦', '0', '1', '2016-10-12 16:06:19');
INSERT INTO `tc_user_address` VALUES ('3', '21', '马生', '123123123', '440000_440100_440106_', '440106', 'asfas', '0', '1', '2016-10-13 18:04:21');
INSERT INTO `tc_user_address` VALUES ('4', '21', '马生二', '189099999999', '440000_440100_440118_', '440118', '这个是第二个测试地址', '0', '1', '2016-10-13 18:48:40');
INSERT INTO `tc_user_address` VALUES ('5', '21', '测试的第三个', '189099999999', '360000_361000_361002_', '361002', '测试的第三个地址', '0', '1', '2016-10-13 18:49:28');
INSERT INTO `tc_user_address` VALUES ('6', '22', 'test', '112343434', '110000_110100_', '110100', 'tett', '0', '1', '2016-10-13 20:30:07');
INSERT INTO `tc_user_address` VALUES ('7', '25', 'Marky', '13788888888', '110000_110100_110116_', '110116', '天安门8号', '1', '1', '2016-10-14 11:00:47');

-- ----------------------------
-- Table structure for tc_user_ranks
-- ----------------------------
DROP TABLE IF EXISTS `tc_user_ranks`;
CREATE TABLE `tc_user_ranks` (
  `rankId` int(11) NOT NULL AUTO_INCREMENT,
  `rankName` varchar(20) NOT NULL COMMENT '等级名称',
  `startScore` int(11) NOT NULL DEFAULT '0' COMMENT '开始积分   大于积分',
  `endScore` int(11) NOT NULL DEFAULT '0' COMMENT '结束积分  包含开始积分',
  `userrankImg` varchar(150) DEFAULT NULL COMMENT '折扣',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志  -1：删除  1：有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`rankId`),
  KEY `startScore` (`startScore`,`endScore`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员等级表·';

-- ----------------------------
-- Records of tc_user_ranks
-- ----------------------------
INSERT INTO `tc_user_ranks` VALUES ('1', '初级会员', '0', '500', 'upload/userranks/2016-09/57edd6ae5d8b8.png', '1', '2016-08-14 19:26:18');
INSERT INTO `tc_user_ranks` VALUES ('2', '中级会员', '501', '1000', 'upload/userranks/2016-09/57edd6d446b75.png', '1', '2016-08-14 19:26:28');
INSERT INTO `tc_user_ranks` VALUES ('3', '高级会员', '1001', '3000', 'upload/userranks/2016-09/57edd6efc8757.png', '1', '2016-08-16 17:00:35');
INSERT INTO `tc_user_ranks` VALUES ('4', '钻石会员', '3001', '100000', 'upload/userranks/2016-09/57edd70cbd0f5.png', '1', '2016-08-24 10:40:13');

-- ----------------------------
-- Table structure for tc_user_scores
-- ----------------------------
DROP TABLE IF EXISTS `tc_user_scores`;
CREATE TABLE `tc_user_scores` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分数',
  `dataSrc` int(11) NOT NULL DEFAULT '0' COMMENT '来源   1：订单 2:评价 3：订单取消返还 4：拒收返还',
  `dataId` int(11) NOT NULL DEFAULT '0' COMMENT '来源记录ID	orderId',
  `dataRemarks` text COMMENT '描述	1:收入 2：支出',
  `scoreType` int(11) NOT NULL DEFAULT '0' COMMENT '积分标识	1:收入 2：支出',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`scoreId`),
  KEY `userId` (`userId`),
  KEY `userId_2` (`userId`,`dataSrc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分表';

-- ----------------------------
-- Records of tc_user_scores
-- ----------------------------

-- ----------------------------
-- Table structure for tc_users
-- ----------------------------
DROP TABLE IF EXISTS `tc_users`;
CREATE TABLE `tc_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_NAME` varchar(20) NOT NULL COMMENT '账号',
  `LOGIN_SECRET` int(11) NOT NULL COMMENT '安全码',
  `LOGIN_PWD` varchar(50) NOT NULL COMMENT '密码',
  `USER_TYPE` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型0:普通会员 1:门店用户',
  `USER_SEX` tinyint(4) DEFAULT '0' COMMENT '性别	0:保密 1：男 2：女',
  `USER_NAME` varchar(20) DEFAULT NULL COMMENT '用户名称',
  `TRUE_NAME` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `BRITHDAY` date DEFAULT NULL COMMENT '生日',
  `USER_PHOTO` varchar(150) DEFAULT '' COMMENT '会员头像',
  `USER_QQ` varchar(20) DEFAULT NULL COMMENT '会员qq',
  `USER_PHONE` char(11) DEFAULT '' COMMENT '手机',
  `USER_EMAIL` varchar(50) DEFAULT '' COMMENT '邮箱',
  `USER_SCORE` int(11) DEFAULT '0' COMMENT '用户积分',
  `USER_TOTAL_SCORE` int(11) DEFAULT '0' COMMENT '用户历史消费积分	跟会员等级有关',
  `LAST_IP` varchar(16) DEFAULT NULL COMMENT '最后登录IP',
  `LAST_TIME` datetime DEFAULT NULL COMMENT '最后登录时间',
  `USER_FROM` tinyint(4) DEFAULT '0' COMMENT '第三方标识	0:系统本身；1:QQ登录',
  `USER_MONEY` decimal(11,2) DEFAULT '0.00' COMMENT '用户钱包金额',
  `LOCK_MONEY` decimal(11,2) DEFAULT '0.00' COMMENT '冻结金额',
  `USER_STATUS` tinyint(4) NOT NULL DEFAULT '1' COMMENT '账号状态	0:停用 1:启用',
  `DATA_FLAG` tinyint(4) NOT NULL DEFAULT '1' COMMENT '删除标志	-1:删除 1:有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `PAY_PWD` varchar(100) DEFAULT NULL COMMENT '支付密码',
  PRIMARY KEY (`USER_ID`),
  KEY `userStatus` (`USER_STATUS`,`DATA_FLAG`),
  KEY `loginName` (`LOGIN_NAME`),
  KEY `userPhone` (`USER_PHONE`),
  KEY `userEmail` (`USER_EMAIL`),
  KEY `userType` (`USER_TYPE`,`DATA_FLAG`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of tc_users
-- ----------------------------
INSERT INTO `tc_users` VALUES ('1', 'wstmart', '5937', '33c67f436e38cfa964f1fde58a5213cc', '1', '0', null, null, null, '', null, '', '', '0', '0', '113.109.180.6', '2016-10-17 10:04:44', '0', '0.00', '0.00', '1', '1', '2016-10-08 10:27:28', null);
INSERT INTO `tc_users` VALUES ('2', 'test', '8860', 'bf9156c6c4cc320de14c4a3fd2839616', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.22.173.168', '2016-10-11 19:05:05', '0', '0.00', '0.00', '1', '1', '2016-10-08 11:20:42', null);
INSERT INTO `tc_users` VALUES ('3', '新鲜鲜果旗舰店', '9096', '4a0eda0f97c3da3e6d9ce42256c3d887', '1', '1', '新鲜鲜果', null, null, '', '23234', '18902295525', 'sadf@qq.com', '0', '2', '116.22.12.53', '2016-10-14 22:01:10', '0', '0.00', '0.00', '1', '1', '2016-10-08 16:02:44', null);
INSERT INTO `tc_users` VALUES ('4', 'haiyuan', '7413', '760c16148d35bf403e455fd7aafc3f35', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.12.172', '2016-10-09 10:59:56', '0', '0.00', '0.00', '1', '1', '2016-10-08 21:44:57', null);
INSERT INTO `tc_users` VALUES ('5', 'maysh1009', '6326', '9df7f105ab4f096958e74c2008733c65', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.22.12.172', '2016-10-09 11:06:53', '0', '0.00', '0.00', '1', '1', '2016-10-09 11:06:53', null);
INSERT INTO `tc_users` VALUES ('6', 'zhangfaguang', '5152', 'f59eac75fafe3a5dae279d5510c5ff71', '0', '0', null, null, null, '', '', '', '', '0', '0', '60.13.219.25', '2016-10-09 19:00:02', '0', '0.00', '0.00', '1', '1', '2016-10-09 19:00:02', null);
INSERT INTO `tc_users` VALUES ('7', 'vda123', '6640', 'e6b43a8ec3abf125e4808c08b2f7682b', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.12.53', '2016-10-14 22:12:07', '0', '0.00', '0.00', '1', '1', '2016-10-09 19:32:17', null);
INSERT INTO `tc_users` VALUES ('8', 'weisheng', '9840', '2d52a8859152143a6ae3099af02f50f7', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.12.172', '2016-10-09 21:27:48', '0', '0.00', '0.00', '1', '1', '2016-10-09 21:03:01', null);
INSERT INTO `tc_users` VALUES ('9', 'jiushui', '7789', '55d4131f13d29a8fd716a44858c0d3e6', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.12.172', '2016-10-10 09:54:16', '0', '0.00', '0.00', '1', '1', '2016-10-10 09:53:50', null);
INSERT INTO `tc_users` VALUES ('10', 'liangyou', '8964', '15335b0063ff9974df4b8afaded54bd1', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.12.172', '2016-10-10 16:45:07', '0', '0.00', '0.00', '1', '1', '2016-10-10 10:49:35', null);
INSERT INTO `tc_users` VALUES ('11', 'songshu', '7576', '21d917b9434892bb0846d7c0d905e94a', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.12.172', '2016-10-10 14:50:29', '0', '0.00', '0.00', '1', '1', '2016-10-10 14:50:07', null);
INSERT INTO `tc_users` VALUES ('12', 'sisley', '5139', '4b53be1961c187abf4258c5d0a6cae29', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.12.172', '2016-10-10 16:08:27', '0', '0.00', '0.00', '1', '1', '2016-10-10 16:07:38', null);
INSERT INTO `tc_users` VALUES ('13', 'aodisite', '7761', 'fdcd139ac6b01fd12bfff41aee70a196', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.173.168', '2016-10-11 11:41:41', '0', '0.00', '0.00', '1', '1', '2016-10-10 19:15:34', null);
INSERT INTO `tc_users` VALUES ('14', 'honor1', '7412', '43225a3e24aa6cb309db9e295d552759', '1', '0', null, null, null, '', null, '', '', '0', '0', '116.22.173.168', '2016-10-11 14:26:47', '0', '0.00', '0.00', '1', '1', '2016-10-11 14:25:24', null);
INSERT INTO `tc_users` VALUES ('15', 'ceshi1011', '4323', '8c697ca89e74b22a4dc53352a3d66aa6', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.22.173.168', '2016-10-11 18:55:57', '0', '0.00', '0.00', '1', '1', '2016-10-11 18:55:57', null);
INSERT INTO `tc_users` VALUES ('16', 'ceshi1010', '1063', '8e37f5001b9bca610bbd699b908ab0de', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.22.173.168', '2016-10-11 19:02:07', '0', '0.00', '0.00', '1', '1', '2016-10-11 19:02:07', null);
INSERT INTO `tc_users` VALUES ('17', 'test1', '3454', 'e42e0ac9893c62802af5e47433bd86b2', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.22.173.168', '2016-10-11 19:11:18', '0', '0.00', '0.00', '1', '1', '2016-10-11 19:10:47', null);
INSERT INTO `tc_users` VALUES ('18', 'ceshi111', '9440', 'a8725a52ea26d65956f201c3b7059679', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.22.173.168', '2016-10-11 19:12:32', '0', '0.00', '0.00', '1', '1', '2016-10-11 19:11:22', null);
INSERT INTO `tc_users` VALUES ('19', 'hushichun', '5513', '6a6ae583b6001aad3ed5aacfc184a0ce', '0', '0', null, null, null, '', '', '', '', '0', '0', '113.208.116.106', '2016-10-12 16:04:42', '0', '0.00', '0.00', '1', '1', '2016-10-12 16:04:42', null);
INSERT INTO `tc_users` VALUES ('20', 'dfdfdsf', '1189', '0058d330018760ca1c4e79a69fb151e0', '0', '0', null, null, null, '', '', '', '', '0', '0', '113.107.234.101', '2016-10-12 16:59:32', '0', '0.00', '0.00', '1', '1', '2016-10-12 16:59:32', null);
INSERT INTO `tc_users` VALUES ('21', 'maysh1013', '6825', '2a46c2a5fd65a633db3ab2720e03b9d0', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.22.12.53', '2016-10-14 20:42:17', '0', '0.00', '0.00', '1', '1', '2016-10-13 18:01:02', null);
INSERT INTO `tc_users` VALUES ('22', 'test@qq.com', '2974', '7615c6b6cd874f8f33ce73e39f6e57dc', '0', '0', null, null, null, '', '', '', '', '0', '0', '49.223.185.240', '2016-10-13 20:23:55', '0', '0.00', '0.00', '1', '1', '2016-10-13 20:23:55', null);
INSERT INTO `tc_users` VALUES ('23', 'ro1058029', '4245', 'e93bbc57ca254c5bcb535f2892d28437', '0', '0', null, null, null, '', '', '', '', '0', '0', '61.140.122.29', '2016-10-14 10:42:49', '0', '0.00', '0.00', '1', '1', '2016-10-14 01:57:25', null);
INSERT INTO `tc_users` VALUES ('24', 'zzzzzzzzzz', '7647', '32c3db12927569bebee24e8d32dae5b4', '0', '0', null, null, null, '', '', '', '', '0', '0', '116.25.76.27', '2016-10-14 11:29:13', '0', '0.00', '0.00', '1', '1', '2016-10-14 11:29:13', null);
INSERT INTO `tc_users` VALUES ('25', 'Marky', '3994', 'c19d1870ad5242a37c5c72cc863d6ee0', '0', '1', 'Marky', 'Marky', '1989-01-08', 'upload/users/2016-10/5800dde7459e5.jpg', '', '', '', '0', '0', '113.119.38.118', '2016-10-15 10:10:26', '0', '0.00', '0.00', '1', '1', '2016-10-14 21:22:17', null);
INSERT INTO `tc_users` VALUES ('26', 'haihai', '9980', 'd3f5e693f5038b3366d3b6e9e9a40c04', '0', '0', null, null, null, '', '', '', '', '0', '0', '27.38.29.11', '2016-10-16 23:20:42', '0', '0.00', '0.00', '1', '1', '2016-10-16 23:20:42', null);
INSERT INTO `tc_users` VALUES ('27', 'demotest', '3752', '2fa0e6e9dd780c6c8db86be3eec83227', '0', '0', null, null, null, '', '', '', '', '0', '0', '123.161.250.74', '2016-10-17 10:46:42', '0', '0.00', '0.00', '1', '1', '2016-10-17 10:46:42', null);
INSERT INTO `tc_users` VALUES ('28', 'testgq', '9660', 'ec72d43233595fd8754fc8ec52c656e7', '0', '0', null, null, null, '', '', '', '', '0', '0', '112.226.160.141', '2016-10-17 14:19:26', '0', '0.00', '0.00', '1', '1', '2016-10-17 12:54:35', null);
